char *sub_23DB48054()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v195 = *(v1 - 8);
  v196 = v1;
  v2 = *(v195 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v194 = &v167 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v192 = *(v5 - 8);
  v193 = v5;
  v6 = *(v192 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v186 = &v167 - v8;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v179 = *(v181 - 1);
  v9 = *(v179 + 64);
  MEMORY[0x28223BE20](v181, v10);
  v176 = &v167 - v11;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v174 = *(v175 - 8);
  v12 = *(v174 + 64);
  MEMORY[0x28223BE20](v175, v13);
  v171 = &v167 - v14;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v169 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v169, v17);
  v168 = &v167 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v167 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v191 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v167 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v167 - v36;
  v183 = sub_23DAC7D28(0xD000000000000018, 0x800000023DB8E940);
  v182 = v38;
  v197 = v0;
  v178 = sub_23DAC7D28(0xD000000000000017, 0x800000023DB8E960);
  v177 = v39;
  sub_23DB6EA7C();
  v40 = type metadata accessor for Page.PracticeUneditableText(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeUneditableText__exampleText;
  *&v198 = 0;
  *(&v198 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v20 + 32);
  v180 = v24;
  v46 = v24;
  v47 = v168;
  v185 = v19;
  v184 = v20 + 32;
  v170 = v45;
  v45(v43 + v44, v46, v19);
  v188 = v33;
  v189 = v26;
  v48 = *(v26 + 16);
  v187 = v37;
  v190 = v25;
  v173 = v26 + 16;
  v172 = v48;
  v48(v33, v37, v25);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v198) = 0;
  sub_23DB6EECC();
  v50 = *(v15 + 32);
  v51 = v169;
  v50(v43 + v49, v47);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v198 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v52;
  v56 = v171;
  sub_23DB6EECC();
  (*(v174 + 32))(v43 + v54, v56, v175);
  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v55;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v198 = 0;
  v58 = v176;
  sub_23DB6EECC();
  (*(v179 + 32))(v43 + v57, v58, v181);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v198) = 0;
  sub_23DB6EECC();
  (v50)(v43 + v59, v47, v51);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v179 = xmmword_23DB74320;
  v198 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v181 = v50;
  v61 = v186;
  sub_23DB6EECC();
  v62 = v193;
  v63 = *(v192 + 32);
  v63(v43 + v60, v61, v193);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v198 = v179;
  sub_23DB6EECC();
  v63(v43 + v64, v61, v62);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v198) = 0;
  sub_23DB6EECC();
  v181(v43 + v65, v47, v51);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v198 = 0;
  *(&v198 + 1) = 0xE000000000000000;
  v67 = v180;
  sub_23DB6EECC();
  v170(v43 + v66, v67, v185);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v198 = 0uLL;
  sub_23DB6EECC();
  v63(v43 + v68, v61, v62);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v198 = nullsub_1;
  *(&v198 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v70 = v194;
  sub_23DB6EECC();
  (*(v195 + 32))(v43 + v69, v70, v196);
  v72 = v190;
  v71 = v191;
  v73 = v188;
  v172(v191, v188, v190);
  v74 = Page.init(id:title:text:subPages:iconName:)(v71, v183, v182, v178, v177, MEMORY[0x277D84F90], 0, 0);
  v75 = *(v189 + 8);
  v75(v73, v72);
  v75(v187, v72);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v193 = qword_27E30A6B0;
  swift_retain_n();
  v76 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v78 = v77;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v198 = v76;
  *(&v198 + 1) = v78;

  sub_23DB6EF1C();
  v79 = sub_23DB3DDA4();
  v81 = v80;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v198 = v79;
  *(&v198 + 1) = v81;
  sub_23DB6EF1C();
  v82 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E980);
  v84 = v83;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v198 = v82;
  *(&v198 + 1) = v84;

  v191 = v74;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v198) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v85 = (type metadata accessor for CommandToPractice(0) - 8);
  v86 = *(*v85 + 72);
  v87 = (*(*v85 + 80) + 32) & ~*(*v85 + 80);
  v189 = 4 * v86;
  v88 = v86;
  v195 = v86;
  v89 = swift_allocObject();
  v190 = v89;
  *(v89 + 16) = xmmword_23DB7A0D0;
  v90 = v89 + v87;
  LOBYTE(v198) = 8;
  v91 = sub_23DAC7D28(0xD000000000000017, 0x800000023DB8E9A0);
  v93 = sub_23DAA67F0(&v198, v91, v92);
  v95 = v94;

  *v90 = 0;
  *(v90 + 8) = 0xE000000000000000;
  *(v90 + 17) = 186;
  *(v90 + 19) = 0;
  v96 = v90 + v85[11];
  sub_23DB6EA7C();
  v97 = v85[12];
  *(v90 + v97) = 1;
  v98 = v85[13];
  *(v90 + v98) = 1;
  v99 = v85[14];
  v192 = type metadata accessor for KeyboardKey(0);
  v100 = *(v192 - 8);
  v101 = *(v100 + 56);
  v196 = v100 + 56;
  v101(v90 + v99, 1, 1, v192);
  v194 = v101;
  v102 = (v90 + v85[15]);
  *v102 = 0;
  v102[1] = 0;
  v103 = *(v90 + 8);
  *v90 = v93;
  *(v90 + 8) = v95;

  *(v90 + 16) = -120;
  *(v90 + 19) = 0;
  v104 = v102[1];
  *v102 = 0;
  v102[1] = 0;

  *(v90 + v97) = 1;
  *(v90 + v98) = 1;
  v105 = v90 + v88;
  LOBYTE(v198) = 5;
  v106 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E760);
  v108 = sub_23DAA67F0(&v198, v106, v107);
  v110 = v109;

  *v105 = 0;
  *(v105 + 8) = 0xE000000000000000;
  *(v105 + 17) = 186;
  *(v105 + 19) = 0;
  v111 = v90 + v88 + v85[11];
  sub_23DB6EA7C();
  v112 = v85[12];
  *(v105 + v112) = 1;
  v113 = v85[13];
  *(v105 + v113) = 1;
  v114 = v192;
  v101(v90 + v88 + v85[14], 1, 1, v192);
  v115 = (v90 + v88 + v85[15]);
  *v115 = 0;
  v115[1] = 0;
  v116 = *(v90 + v88 + 8);
  *v105 = v108;
  *(v105 + 8) = v110;

  *(v105 + 16) = -123;
  *(v105 + 19) = 0;
  v117 = v115[1];
  *v115 = 0;
  v115[1] = 0;

  *(v105 + v112) = 1;
  *(v105 + v113) = 1;
  v188 = 2 * v195;
  v118 = v90 + 2 * v195;
  LOBYTE(v198) = 6;
  v119 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8E900);
  v121 = sub_23DAA67F0(&v198, v119, v120);
  v123 = v122;

  *v118 = 0;
  *(v118 + 8) = 0xE000000000000000;
  *(v118 + 17) = 186;
  *(v118 + 19) = 0;
  v124 = v118 + v85[11];
  sub_23DB6EA7C();
  v125 = v85[12];
  *(v118 + v125) = 1;
  v126 = v85[13];
  *(v118 + v126) = 1;
  (v194)(v118 + v85[14], 1, 1, v114);
  v127 = (v118 + v85[15]);
  *v127 = 0;
  v127[1] = 0;
  v128 = *(v118 + 8);
  *v118 = v121;
  *(v118 + 8) = v123;

  *(v118 + 16) = -122;
  *(v118 + 19) = 0;
  v129 = v127[1];
  *v127 = 0;
  v127[1] = 0;

  *(v118 + v125) = 1;
  *(v118 + v126) = 1;
  v130 = v90 + v188 + v195;
  LOBYTE(v198) = 10;
  v131 = sub_23DAA67F0(&v198, 0, 0);
  v133 = v132;
  *v130 = 0;
  *(v130 + 8) = 0xE000000000000000;
  *(v130 + 17) = 186;
  *(v130 + 19) = 0;
  v134 = v130 + v85[11];
  sub_23DB6EA7C();
  v135 = v85[12];
  *(v130 + v135) = 1;
  v136 = v85[13];
  *(v130 + v136) = 1;
  v137 = v114;
  v138 = v194;
  (v194)(v130 + v85[14], 1, 1, v137);
  v139 = (v130 + v85[15]);
  *v139 = 0;
  v139[1] = 0;
  v140 = *(v130 + 8);
  *v130 = v131;
  *(v130 + 8) = v133;

  *(v130 + 16) = -118;
  *(v130 + 19) = 0;
  v141 = v139[1];
  *v139 = 0;
  v139[1] = 0;

  *(v130 + v135) = 1;
  *(v130 + v136) = 1;
  v142 = v90 + v189;
  LOBYTE(v198) = 12;
  v143 = sub_23DAA67F0(&v198, 0, 0);
  v145 = v144;
  *v142 = 0;
  *(v142 + 8) = 0xE000000000000000;
  *(v142 + 17) = 186;
  *(v142 + 19) = 0;
  v146 = v142 + v85[11];
  sub_23DB6EA7C();
  v147 = v85[12];
  *(v142 + v147) = 1;
  v148 = v85[13];
  *(v142 + v148) = 1;
  v138(v142 + v85[14], 1, 1, v192);
  v149 = (v142 + v85[15]);
  *v149 = 0;
  v149[1] = 0;
  v150 = *(v142 + 8);
  *v142 = v143;
  *(v142 + 8) = v145;

  *(v142 + 16) = -116;
  *(v142 + 19) = 0;
  v151 = v149[1];
  *v149 = 0;
  v149[1] = 0;

  *(v142 + v147) = 1;
  *(v142 + v148) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v152 = v191;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v153 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v154 = *&v152[v153];
  *&v152[v153] = v190;

  v155 = swift_allocObject();
  swift_weakInit();
  v156 = swift_allocObject();
  v157 = v197;
  *(v156 + 16) = v155;
  *(v156 + 24) = v157;
  v158 = &v152[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState];
  swift_beginAccess();
  v159 = *v158;
  v160 = v158[1];
  *v158 = sub_23DB61068;
  v158[1] = v156;
  swift_retain_n();

  sub_23DA18BA0(v159);

  v161 = swift_allocObject();
  swift_weakInit();

  v162 = swift_allocObject();
  swift_weakInit();
  v163 = swift_allocObject();
  *(v163 + 16) = v161;
  *(v163 + 24) = v162;
  v164 = &v152[OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction];
  swift_beginAccess();
  v165 = v164[1];
  *v164 = sub_23DB60A78;
  v164[1] = v163;

  return v152;
}

uint64_t sub_23DB49278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v59 = (&v47 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v47 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      if (v62[0])
      {
        v56 = v17;
        v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
        swift_beginAccess();
        v55 = v18;
        v19 = *(v15 + v18);
        KeyPath = swift_getKeyPath();
        v21 = swift_getKeyPath();

        v54 = KeyPath;
        v53 = v21;
        v52 = sub_23DB6EEFC();
        v48 = v22;
        v23 = swift_getKeyPath();
        v24 = swift_getKeyPath();
        v57 = v15;
        v51 = v23;
        v50 = v24;
        v49 = sub_23DB6EEFC();
        v47 = v25;

        v26 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_5:
        v27 = 0;
        v28 = v1 + 7;
        v58 = v19;
        v29 = *(v19 + 16);
        v1 += 6;
        v30 = &qword_27E2FE1C8;
        if (!v29)
        {
LABEL_6:
          v31 = 1;
          v27 = v29;
          goto LABEL_10;
        }

        while (1)
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          v19 = v13;
          v13 = v1;
          v1 = v28;
          v32 = v29;
          v33 = v26;
          v34 = v30;
          v35 = v58;
          if (v27 >= *(v58 + 16))
          {
            goto LABEL_25;
          }

          v36 = *(type metadata accessor for CommandToPractice(0) - 8);
          v60 = v27 + 1;
          v37 = v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27;
          v38 = *(v0 + 48);
          v39 = v59;
          *v59 = v27;
          sub_23DAC962C(v37, v39 + v38);
          sub_23DA17A54(v39, v9, &qword_27E2FE1C0, &qword_23DB7A440);
          v31 = 0;
          v27 = v60;
          v30 = v34;
          v26 = v33;
          v29 = v32;
          v28 = v1;
          v1 = v13;
          v13 = v19;
LABEL_10:
          (*v28)(v9, v31, 1, v0);
          sub_23DA17A54(v9, v13, v30, &qword_23DB7A448);
          if ((*v1)(v13, 1, v0) == 1)
          {
            break;
          }

          v19 = *v13;
          if ((*v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            v26 = sub_23DAC8B24(v19);
            goto LABEL_5;
          }

          if (v19 >= *(v26 + 16))
          {
            goto LABEL_23;
          }

          v40 = *(type metadata accessor for CommandToPractice(0) - 8);
          v41 = v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v19;
          *(v41 + 18) = 0;
          *(v41 + 19) = v19 == 0;
          sub_23DB5F554(v13 + *(v0 + 48));
          if (v27 == v29)
          {
            goto LABEL_6;
          }
        }

        *v47 = 0;
        *v48 = 0;
        if (qword_27E2FBBE0 != -1)
        {
          swift_once();
        }

        sub_23DB6BB30(&unk_284FE7C88);
        sub_23DA17988(&unk_284FE7CA8, &qword_27E2FE318, &unk_23DB7BBD0);
        sub_23DAA66A8();

        v49(v61, 0);

        v52(v62, 0);

        type metadata accessor for Page.Practice(0);
        sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
        v42 = v57;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v43 = *(v42 + v55);
        *(v42 + v55) = v26;

        v44 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E980);
        v46 = v45;
        swift_getKeyPath();
        swift_getKeyPath();
        v62[0] = v44;
        v62[1] = v46;
        sub_23DB6EF1C();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_23DB49978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v181 = *(v1 - 8);
  v182 = v1;
  v2 = *(v181 + 8);
  MEMORY[0x28223BE20](v1, v3);
  v180 = &v153 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v178 = *(v5 - 8);
  v179 = v5;
  v6 = *(v178 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v172 = &v153 - v8;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v165 = *(v167 - 1);
  v9 = *(v165 + 64);
  MEMORY[0x28223BE20](v167, v10);
  v162 = &v153 - v11;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v160 = *(v161 - 8);
  v12 = *(v160 + 64);
  MEMORY[0x28223BE20](v161, v13);
  v157 = &v153 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v155 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v155, v17);
  v154 = &v153 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v153 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v173 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v153 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v153 - v36;
  v169 = sub_23DAC7D28(0xD00000000000001ALL, 0x800000023DB8E8C0);
  v168 = v38;
  v183 = v0;
  v164 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E8E0);
  v163 = v39;
  sub_23DB6EA7C();
  v40 = type metadata accessor for Page.PracticeUneditableText(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeUneditableText__exampleText;
  *&v186 = 0;
  *(&v186 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v20 + 32);
  v166 = v24;
  v46 = v24;
  v47 = v154;
  v171 = v19;
  v170 = v20 + 32;
  v156 = v45;
  v45(v43 + v44, v46, v19);
  v175 = v33;
  v176 = v26;
  v48 = *(v26 + 16);
  v174 = v37;
  v177 = v25;
  v159 = v26 + 16;
  v158 = v48;
  v48(v33, v37, v25);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v186) = 0;
  sub_23DB6EECC();
  v50 = *(v15 + 32);
  v51 = v155;
  v50(v43 + v49, v47);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v186 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v52;
  v56 = v157;
  sub_23DB6EECC();
  (*(v160 + 32))(v43 + v54, v56, v161);
  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v55;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v186 = 0;
  v58 = v162;
  sub_23DB6EECC();
  (*(v165 + 32))(v43 + v57, v58, v167);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v186) = 0;
  sub_23DB6EECC();
  (v50)(v43 + v59, v47, v51);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v165 = xmmword_23DB74320;
  v186 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v167 = v50;
  v61 = v172;
  sub_23DB6EECC();
  v62 = v179;
  v63 = *(v178 + 32);
  v63(v43 + v60, v61, v179);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v186 = v165;
  sub_23DB6EECC();
  v63(v43 + v64, v61, v62);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v186) = 0;
  sub_23DB6EECC();
  v167(v43 + v65, v47, v51);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v186 = 0;
  *(&v186 + 1) = 0xE000000000000000;
  v67 = v166;
  sub_23DB6EECC();
  v156(v43 + v66, v67, v171);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v186 = 0uLL;
  sub_23DB6EECC();
  v63(v43 + v68, v61, v62);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v186 = nullsub_1;
  *(&v186 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v70 = v180;
  sub_23DB6EECC();
  (*(v181 + 4))(v43 + v69, v70, v182);
  v71 = v173;
  v72 = v175;
  v73 = v177;
  v158(v173, v175, v177);
  v74 = Page.init(id:title:text:subPages:iconName:)(v71, v169, v168, v164, v163, MEMORY[0x277D84F90], 0, 0);
  v75 = *(v176 + 8);
  v75(v72, v73);
  v75(v174, v73);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v76 = qword_27E30A6B0;
  swift_retain_n();
  v77 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v79 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v186 = v77;
  *(&v186 + 1) = v79;

  sub_23DB6EF1C();
  v80 = sub_23DB3DDA4();
  v82 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v186 = v80;
  *(&v186 + 1) = v82;
  v179 = v74;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v186) = 0;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v83 = (type metadata accessor for CommandToPractice(0) - 8);
  v84 = *v83;
  v180 = *(*v83 + 72);
  v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v86 = swift_allocObject();
  v178 = v86;
  *(v86 + 16) = xmmword_23DB7A0B0;
  v87 = v86 + v85;
  LOBYTE(v186) = 13;
  v88 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E760);
  v176 = v76;
  v90 = sub_23DAA67F0(&v186, v88, v89);
  v92 = v91;

  *v87 = 0;
  *(v87 + 8) = 0xE000000000000000;
  *(v87 + 17) = 186;
  *(v87 + 19) = 0;
  v93 = v87 + v83[11];
  sub_23DB6EA7C();
  v94 = v83[12];
  *(v87 + v94) = 1;
  v95 = v83[13];
  *(v87 + v95) = 1;
  v96 = v83[14];
  v182 = type metadata accessor for KeyboardKey(0);
  v97 = *(v182 - 8);
  v98 = *(v97 + 56);
  v175 = (v97 + 56);
  v98(v87 + v96, 1, 1, v182);
  v181 = v98;
  v99 = (v87 + v83[15]);
  *v99 = 0;
  v99[1] = 0;
  v100 = *(v87 + 8);
  *v87 = v90;
  *(v87 + 8) = v92;

  *(v87 + 16) = -115;
  *(v87 + 19) = 1;
  v101 = v99[1];
  *v99 = 0;
  v99[1] = 0;

  *(v87 + v94) = 1;
  *(v87 + v95) = 1;
  v102 = v180;
  v103 = &v180[v87];
  LOBYTE(v186) = 14;
  v104 = sub_23DAA67F0(&v186, 0, 0);
  v106 = v105;
  *v103 = 0;
  *(v103 + 1) = 0xE000000000000000;
  *(v103 + 17) = 186;
  v103[19] = 0;
  v107 = &v103[v83[11]];
  sub_23DB6EA7C();
  v108 = v83[12];
  v103[v108] = 1;
  v109 = v83[13];
  v103[v109] = 1;
  v98(&v103[v83[14]], 1, 1, v182);
  v110 = &v103[v83[15]];
  *v110 = 0;
  *(v110 + 1) = 0;
  v111 = *(v103 + 1);
  *v103 = v104;
  *(v103 + 1) = v106;

  v103[16] = -114;
  v103[19] = 0;
  v112 = *(v110 + 1);
  *v110 = 0;
  *(v110 + 1) = 0;

  v103[v108] = 1;
  v103[v109] = 1;
  v177 = 2 * v102;
  v113 = v87 + 2 * v102;
  LOBYTE(v186) = 15;
  v114 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8E900);
  v116 = sub_23DAA67F0(&v186, v114, v115);
  v118 = v117;

  *v113 = 0;
  *(v113 + 8) = 0xE000000000000000;
  *(v113 + 17) = 186;
  *(v113 + 19) = 0;
  v119 = v113 + v83[11];
  sub_23DB6EA7C();
  v120 = v83[12];
  *(v113 + v120) = 1;
  v121 = v83[13];
  *(v113 + v121) = 1;
  v181(v113 + v83[14], 1, 1, v182);
  v122 = (v113 + v83[15]);
  *v122 = 0;
  v122[1] = 0;
  v123 = *(v113 + 8);
  *v113 = v116;
  *(v113 + 8) = v118;

  *(v113 + 16) = -113;
  *(v113 + 19) = 0;
  v124 = v122[1];
  *v122 = 0;
  v122[1] = 0;

  *(v113 + v120) = 1;
  *(v113 + v121) = 1;
  v125 = &v180[v177 + v87];
  LOBYTE(v186) = 16;
  v126 = sub_23DAA67F0(&v186, 0, 0);
  v128 = v127;
  *v125 = 0;
  *(v125 + 1) = 0xE000000000000000;
  *(v125 + 17) = 186;
  v125[19] = 0;
  v129 = &v125[v83[11]];
  sub_23DB6EA7C();
  v130 = v83[12];
  v125[v130] = 1;
  v131 = v83[13];
  v125[v131] = 1;
  v181(&v125[v83[14]], 1, 1, v182);
  v132 = &v125[v83[15]];
  *v132 = 0;
  *(v132 + 1) = 0;
  v133 = *(v125 + 1);
  *v125 = v126;
  *(v125 + 1) = v128;

  v125[16] = -112;
  v125[19] = 0;
  v134 = *(v132 + 1);
  *v132 = 0;
  *(v132 + 1) = 0;

  v125[v130] = 1;
  v125[v131] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v135 = v179;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v136 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v137 = *(v135 + v136);
  *(v135 + v136) = v178;

  v138 = v183;
  v139 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E920);
  v141 = v140;
  swift_getKeyPath();
  swift_getKeyPath();
  v184 = v139;
  v185 = v141;

  sub_23DB6EF1C();
  v142 = swift_allocObject();
  swift_weakInit();
  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = v138;
  v144 = (v135 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v145 = *v144;
  v146 = v144[1];
  *v144 = sub_23DB61068;
  v144[1] = v143;
  swift_retain_n();

  sub_23DA18BA0(v145);

  v147 = swift_allocObject();
  swift_weakInit();

  v148 = swift_allocObject();
  swift_weakInit();
  v149 = swift_allocObject();
  *(v149 + 16) = v147;
  *(v149 + 24) = v148;
  v150 = (v135 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v151 = v150[1];
  *v150 = sub_23DB60A70;
  v150[1] = v149;

  return v135;
}

uint64_t sub_23DB4AA90(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v39 = (&v38 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v38 - v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v43[0] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v40 = a2;
      sub_23DB6EF0C();

      LODWORD(v42) = v43[0];
      v19 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      v20 = 1;
      swift_beginAccess();
      v41 = v4;
      v44 = *(v18 + v19);
      swift_getKeyPath();
      swift_getKeyPath();

      v21 = sub_23DB6EEFC();
      sub_23DAC8040(&v44, v42, v22);
      v21(v43, 0);

      v23 = v44;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v24 = *(v18 + v19);
      *(v18 + v19) = v23;

      v42 = v18;
      v40 = v19;
      v25 = *(v18 + v19);
      v26 = *(v25 + 16);
      v27 = (v41 + 56);
      v28 = (v41 + 48);

      i = 0;
      v41 = v25;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_4:
      v30 = 1;
      for (i = v26; ; ++i)
      {
        (*v27)(v12, v30, 1, v3);
        sub_23DA17A54(v12, v16, &qword_27E2FE1C8, &qword_23DB7A448);
        result = (*v28)(v16, 1, v3);
        if (result == 1)
        {

          swift_getKeyPath();
          swift_getKeyPath();
          v43[0] = v20 & 1;
          sub_23DB6EF1C();
        }

        v35 = *v16;
        if ((*v16 & 0x8000000000000000) != 0)
        {
          break;
        }

        v36 = *(v42 + v40);
        if (v35 >= *(v36 + 16))
        {
          goto LABEL_18;
        }

        v37 = *(type metadata accessor for CommandToPractice(0) - 8);
        v20 &= *(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35 + 18);
        result = sub_23DB5F554(v16 + *(v3 + 48));
        v25 = v41;
        if (i == v26)
        {
          goto LABEL_4;
        }

LABEL_5:
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        if (i >= *(v25 + 16))
        {
          goto LABEL_20;
        }

        v31 = *(type metadata accessor for CommandToPractice(0) - 8);
        v32 = v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * i;
        v33 = *(v3 + 48);
        v34 = v39;
        *v39 = i;
        sub_23DAC962C(v32, v34 + v33);
        sub_23DA17A54(v34, v12, &qword_27E2FE1C0, &qword_23DB7A440);
        v30 = 0;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DB4B004()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v59 = (&v47 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v47 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      if (v62[0])
      {
        v56 = v17;
        v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
        swift_beginAccess();
        v55 = v18;
        v19 = *(v15 + v18);
        KeyPath = swift_getKeyPath();
        v21 = swift_getKeyPath();

        v54 = KeyPath;
        v53 = v21;
        v52 = sub_23DB6EEFC();
        v48 = v22;
        v23 = swift_getKeyPath();
        v24 = swift_getKeyPath();
        v57 = v15;
        v51 = v23;
        v50 = v24;
        v49 = sub_23DB6EEFC();
        v47 = v25;

        v26 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_5:
        v27 = 0;
        v28 = v1 + 7;
        v58 = v19;
        v29 = *(v19 + 16);
        v1 += 6;
        v30 = &qword_27E2FE1C8;
        if (!v29)
        {
LABEL_6:
          v31 = 1;
          v27 = v29;
          goto LABEL_10;
        }

        while (1)
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          v19 = v13;
          v13 = v1;
          v1 = v28;
          v32 = v29;
          v33 = v26;
          v34 = v30;
          v35 = v58;
          if (v27 >= *(v58 + 16))
          {
            goto LABEL_25;
          }

          v36 = *(type metadata accessor for CommandToPractice(0) - 8);
          v60 = v27 + 1;
          v37 = v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27;
          v38 = *(v0 + 48);
          v39 = v59;
          *v59 = v27;
          sub_23DAC962C(v37, v39 + v38);
          sub_23DA17A54(v39, v9, &qword_27E2FE1C0, &qword_23DB7A440);
          v31 = 0;
          v27 = v60;
          v30 = v34;
          v26 = v33;
          v29 = v32;
          v28 = v1;
          v1 = v13;
          v13 = v19;
LABEL_10:
          (*v28)(v9, v31, 1, v0);
          sub_23DA17A54(v9, v13, v30, &qword_23DB7A448);
          if ((*v1)(v13, 1, v0) == 1)
          {
            break;
          }

          v19 = *v13;
          if ((*v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            v26 = sub_23DAC8B24(v19);
            goto LABEL_5;
          }

          if (v19 >= *(v26 + 16))
          {
            goto LABEL_23;
          }

          v40 = *(type metadata accessor for CommandToPractice(0) - 8);
          v41 = v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v19;
          *(v41 + 18) = 0;
          *(v41 + 19) = v19 == 0;
          sub_23DB5F554(v13 + *(v0 + 48));
          if (v27 == v29)
          {
            goto LABEL_6;
          }
        }

        *v47 = 0;
        *v48 = 0;
        if (qword_27E2FBBE0 != -1)
        {
          swift_once();
        }

        sub_23DB6BB30(&unk_284FE7CC8);
        sub_23DA17988(&unk_284FE7CE8, &qword_27E2FE318, &unk_23DB7BBD0);
        sub_23DAA66A8();

        v49(v61, 0);

        v52(v62, 0);

        type metadata accessor for Page.Practice(0);
        sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
        v42 = v57;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v43 = *(v42 + v55);
        *(v42 + v55) = v26;

        v44 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E920);
        v46 = v45;
        swift_getKeyPath();
        swift_getKeyPath();
        v62[0] = v44;
        v62[1] = v46;
        sub_23DB6EF1C();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_23DB4B704()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v169 = *(v1 - 8);
  v170 = v1;
  v2 = *(v169 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v168 = &v141 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v166 = *(v5 - 8);
  v167 = v5;
  v6 = *(v166 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v161 = &v141 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v153 = *(v155 - 1);
  v9 = *(v153 + 64);
  MEMORY[0x28223BE20](v155, v10);
  v150 = &v141 - v11;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v148 = *(v149 - 8);
  v12 = *(v148 + 64);
  MEMORY[0x28223BE20](v149, v13);
  v145 = &v141 - v14;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v143 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v143, v17);
  v142 = &v141 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v141 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v160 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v141 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v141 - v36;
  v157 = sub_23DAC7D28(0xD000000000000023, 0x800000023DB8E7E0);
  v156 = v38;
  v171 = v0;
  v152 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E810);
  v151 = v39;
  sub_23DB6EA7C();
  v40 = type metadata accessor for Page.PracticeUneditableText(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page22PracticeUneditableText__exampleText;
  *&v174 = 0;
  *(&v174 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v20 + 32);
  v154 = v24;
  v46 = v24;
  v47 = v142;
  v159 = v19;
  v158 = v20 + 32;
  v144 = v45;
  v45(v43 + v44, v46, v19);
  v163 = v33;
  v164 = v26;
  v48 = *(v26 + 16);
  v162 = v37;
  v165 = v25;
  v147 = v26 + 16;
  v146 = v48;
  v48(v33, v37, v25);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v174) = 0;
  sub_23DB6EECC();
  v50 = *(v15 + 32);
  v51 = v143;
  v50(v43 + v49, v47);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v174 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v52;
  v56 = v145;
  sub_23DB6EECC();
  (*(v148 + 32))(v43 + v54, v56, v149);
  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v55;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v174 = 0;
  v58 = v150;
  sub_23DB6EECC();
  (*(v153 + 32))(v43 + v57, v58, v155);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v174) = 0;
  sub_23DB6EECC();
  v60 = v51;
  (v50)(v43 + v59, v47, v51);
  v155 = v50;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v153 = xmmword_23DB74320;
  v174 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v62 = v161;
  sub_23DB6EECC();
  v63 = v167;
  v64 = *(v166 + 32);
  v64(v43 + v61, v62, v167);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v174 = v153;
  sub_23DB6EECC();
  v64(v43 + v65, v62, v63);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v174) = 0;
  sub_23DB6EECC();
  v155(v43 + v66, v47, v60);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v174 = 0;
  *(&v174 + 1) = 0xE000000000000000;
  v68 = v154;
  sub_23DB6EECC();
  v144(v43 + v67, v68, v159);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v174 = 0uLL;
  sub_23DB6EECC();
  v64(v43 + v69, v62, v63);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v174 = nullsub_1;
  *(&v174 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v71 = v168;
  sub_23DB6EECC();
  (*(v169 + 32))(v43 + v70, v71, v170);
  v72 = v160;
  v73 = v163;
  v74 = v165;
  v146(v160, v163, v165);
  v75 = Page.init(id:title:text:subPages:iconName:)(v72, v157, v156, v152, v151, MEMORY[0x277D84F90], 0, 0);
  v76 = *(v164 + 8);
  v76(v73, v74);
  v76(v162, v74);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v165 = qword_27E30A6B0;
  swift_retain_n();
  v77 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v79 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v174 = v77;
  *(&v174 + 1) = v79;

  sub_23DB6EF1C();
  v80 = sub_23DB3DDA4();
  v82 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v174 = v80;
  *(&v174 + 1) = v82;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v174) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v83 = (type metadata accessor for CommandToPractice(0) - 8);
  v84 = *(*v83 + 72);
  v85 = (*(*v83 + 80) + 32) & ~*(*v83 + 80);
  v166 = 2 * v84;
  v86 = swift_allocObject();
  v167 = v86;
  *(v86 + 16) = xmmword_23DB76A80;
  v87 = v86 + v85;
  LOBYTE(v174) = 17;
  v88 = sub_23DAC7D28(0xD00000000000002ALL, 0x800000023DB8E840);
  v164 = sub_23DAA67F0(&v174, v88, v89);
  v91 = v90;

  *v87 = 0;
  *(v87 + 8) = 0xE000000000000000;
  *(v87 + 17) = 186;
  *(v87 + 19) = 0;
  v92 = v87 + v83[11];
  sub_23DB6EA7C();
  v93 = v83[12];
  *(v87 + v93) = 1;
  v94 = v83[13];
  *(v87 + v94) = 1;
  v95 = v83[14];
  v169 = type metadata accessor for KeyboardKey(0);
  v96 = *(v169 - 8);
  v168 = *(v96 + 56);
  v170 = v96 + 56;
  (v168)(v87 + v95, 1, 1, v169);
  v97 = (v87 + v83[15]);
  *v97 = 0;
  v97[1] = 0;
  v98 = *(v87 + 8);
  *v87 = v164;
  *(v87 + 8) = v91;

  *(v87 + 16) = -111;
  *(v87 + 19) = 1;
  v99 = v97[1];
  *v97 = 0;
  v97[1] = 0;

  *(v87 + v93) = 1;
  *(v87 + v94) = 1;
  v100 = v87 + v84;
  LOBYTE(v174) = 18;
  v101 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E760);
  v103 = sub_23DAA67F0(&v174, v101, v102);
  v105 = v104;

  *v100 = 0;
  *(v100 + 8) = 0xE000000000000000;
  *(v100 + 17) = 186;
  *(v100 + 19) = 0;
  v106 = v100 + v83[11];
  sub_23DB6EA7C();
  v107 = v83[12];
  *(v100 + v107) = 1;
  v108 = v83[13];
  *(v100 + v108) = 1;
  (v168)(v100 + v83[14], 1, 1, v169);
  v109 = (v100 + v83[15]);
  *v109 = 0;
  v109[1] = 0;
  v110 = *(v100 + 8);
  *v100 = v103;
  *(v100 + 8) = v105;

  *(v100 + 16) = -110;
  *(v100 + 19) = 0;
  v111 = v109[1];
  *v109 = 0;
  v109[1] = 0;

  *(v100 + v107) = 1;
  *(v100 + v108) = 1;
  v112 = v87 + v166;
  LOBYTE(v174) = 19;
  v113 = v171;
  v114 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E870);
  v116 = sub_23DAA67F0(&v174, v114, v115);
  v118 = v117;

  *v112 = 0;
  *(v112 + 8) = 0xE000000000000000;
  *(v112 + 17) = 186;
  *(v112 + 19) = 0;
  v119 = v112 + v83[11];
  sub_23DB6EA7C();
  v120 = v83[12];
  *(v112 + v120) = 1;
  v121 = v83[13];
  *(v112 + v121) = 1;
  (v168)(v112 + v83[14], 1, 1, v169);
  v122 = (v112 + v83[15]);
  *v122 = 0;
  v122[1] = 0;
  v123 = *(v112 + 8);
  *v112 = v116;
  *(v112 + 8) = v118;

  *(v112 + 16) = -109;
  *(v112 + 19) = 0;
  v124 = v122[1];
  *v122 = 0;
  v122[1] = 0;

  *(v112 + v120) = 1;
  *(v112 + v121) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v125 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v126 = *(v75 + v125);
  *(v75 + v125) = v167;

  v127 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E890);
  v129 = v128;
  swift_getKeyPath();
  swift_getKeyPath();
  v172 = v127;
  v173 = v129;

  sub_23DB6EF1C();
  v130 = swift_allocObject();
  swift_weakInit();
  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = v113;
  v132 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v133 = *v132;
  v134 = v132[1];
  *v132 = sub_23DB60A4C;
  v132[1] = v131;
  swift_retain_n();

  sub_23DA18BA0(v133);

  v135 = swift_allocObject();
  swift_weakInit();

  v136 = swift_allocObject();
  swift_weakInit();
  v137 = swift_allocObject();
  *(v137 + 16) = v135;
  *(v137 + 24) = v136;
  v138 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v139 = v138[1];
  *v138 = sub_23DB60A68;
  v138[1] = v137;

  return v75;
}

uint64_t sub_23DB4C7A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0, v3);
  v58 = (&v46 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v46 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v55 = Strong;
      v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v54 = v17;
      v18 = *(v15 + v17);
      KeyPath = swift_getKeyPath();
      v20 = swift_getKeyPath();

      v53 = KeyPath;
      v52 = v20;
      v51 = sub_23DB6EEFC();
      v47 = v21;
      v22 = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v56 = v15;
      v50 = v22;
      v49 = v23;
      v48 = sub_23DB6EEFC();
      v46 = v24;

      v25 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_4:
      v26 = 0;
      v27 = v1 + 7;
      v57 = v18;
      v28 = *(v18 + 16);
      v1 += 6;
      v29 = &qword_27E2FE1C8;
      if (!v28)
      {
LABEL_5:
        v30 = 1;
        v26 = v28;
        goto LABEL_8;
      }

      while (1)
      {
        v18 = v13;
        v13 = v1;
        v1 = v27;
        v31 = v28;
        v32 = v25;
        v33 = v29;
        v34 = v57;
        if (v26 >= *(v57 + 16))
        {
          goto LABEL_20;
        }

        v35 = *(type metadata accessor for CommandToPractice(0) - 8);
        v59 = v26 + 1;
        v36 = v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26;
        v37 = *(v0 + 48);
        v38 = v58;
        *v58 = v26;
        sub_23DAC962C(v36, v38 + v37);
        sub_23DA17A54(v38, v9, &qword_27E2FE1C0, &qword_23DB7A440);
        v30 = 0;
        v26 = v59;
        v29 = v33;
        v25 = v32;
        v28 = v31;
        v27 = v1;
        v1 = v13;
        v13 = v18;
LABEL_8:
        (*v27)(v9, v30, 1, v0);
        sub_23DA17A54(v9, v13, v29, &qword_23DB7A448);
        if ((*v1)(v13, 1, v0) == 1)
        {
          break;
        }

        v18 = *v13;
        if ((*v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v25 = sub_23DAC8B24(v18);
          goto LABEL_4;
        }

        if (v18 >= *(v25 + 16))
        {
          goto LABEL_19;
        }

        v39 = *(type metadata accessor for CommandToPractice(0) - 8);
        v40 = v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v18;
        *(v40 + 18) = 0;
        *(v40 + 19) = v18 == 0;
        sub_23DB5F554(v13 + *(v0 + 48));
        if (v26 == v28)
        {
          goto LABEL_5;
        }
      }

      *v46 = 0;
      *v47 = 0;
      if (qword_27E2FBBE0 != -1)
      {
        swift_once();
      }

      sub_23DB6BB30(&unk_284FE7D08);
      sub_23DA17988(&unk_284FE7D28, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();

      v48(v60, 0);

      v51(v61, 0);

      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      v41 = v56;
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v42 = *(v41 + v54);
      *(v41 + v54) = v25;

      v43 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E890);
      v45 = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      v61[0] = v43;
      v61[1] = v45;
      sub_23DB6EF1C();
    }
  }

  return result;
}

uint64_t sub_23DB4CE34()
{
  v1 = sub_23DB6EA8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v77[1] = qword_27E30A6B0;
  v6 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E700);
  v8 = v7;
  v81 = "leteWithSelect.title";
  v9 = v0;
  v10 = sub_23DAC7D28(0xD000000000000023, 0x800000023DB8E730);
  LOBYTE(v84[0]) = 31;
  v12 = sub_23DAA8EC0(v10, v11, v84);
  v14 = v13;

  sub_23DB6EA7C();
  v15 = type metadata accessor for Page.PracticeShortText(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_23DA24B98(v5, v6, v8, v12, v14, MEMORY[0x277D84F90], 0, 0);
  swift_retain_n();
  v19 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v84[0] = v19;
  *(&v84[0] + 1) = v21;

  sub_23DB6EF1C();
  v80 = v9;
  v22 = sub_23DB3DDA4();
  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v84[0] = v22;
  *(&v84[0] + 1) = v24;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v84[0] = xmmword_23DB82C30;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v84[0]) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v25 = (type metadata accessor for CommandToPractice(0) - 8);
  v26 = *v25;
  v78 = *(*v25 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v79 = v28;
  *(v28 + 16) = xmmword_23DB78D60;
  v29 = v28 + v27;
  LOBYTE(v84[0]) = 13;
  v30 = sub_23DAC7D28(0xD000000000000019, 0x800000023DB8E760);
  v77[0] = sub_23DAA67F0(v84, v30, v31);
  v33 = v32;

  *v29 = 0;
  *(v29 + 8) = 0xE000000000000000;
  *(v29 + 17) = 186;
  *(v29 + 19) = 0;
  v34 = v29 + v25[11];
  sub_23DB6EA7C();
  v35 = v25[12];
  *(v29 + v35) = 1;
  v36 = v25[13];
  *(v29 + v36) = 1;
  v37 = v25[14];
  v38 = type metadata accessor for KeyboardKey(0);
  v39 = *(*(v38 - 8) + 56);
  v39(v29 + v37, 1, 1, v38);
  v40 = (v29 + v25[15]);
  *v40 = 0;
  v40[1] = 0;
  v41 = *(v29 + 8);
  *v29 = v77[0];
  *(v29 + 8) = v33;

  *(v29 + 16) = -115;
  *(v29 + 19) = 1;
  v42 = v40[1];
  *v40 = 0;
  v40[1] = 0;

  *(v29 + v35) = 1;
  *(v29 + v36) = 1;
  v43 = v29 + v78;
  LOBYTE(v84[0]) = 32;
  v44 = sub_23DAA67F0(v84, 0, 0);
  v46 = v45;
  *v43 = 0;
  *(v43 + 8) = 0xE000000000000000;
  *(v43 + 17) = 186;
  *(v43 + 19) = 0;
  v47 = v43 + v25[11];
  sub_23DB6EA7C();
  v48 = v25[12];
  *(v43 + v48) = 1;
  v49 = v25[13];
  *(v43 + v49) = 1;
  v39(v43 + v25[14], 1, 1, v38);
  v50 = (v43 + v25[15]);
  *v50 = 0;
  v50[1] = 0;
  v51 = *(v43 + 8);
  *v43 = v44;
  *(v43 + 8) = v46;

  *(v43 + 16) = -96;
  *(v43 + 19) = 0;
  v52 = v50[1];
  *v50 = 0;
  v50[1] = 0;

  *(v43 + v48) = 1;
  *(v43 + v49) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v54 = *(v18 + v53);
  *(v18 + v53) = v79;

  v55 = v80;
  v56 = sub_23DAC7D28(0xD000000000000023, v81 | 0x8000000000000000);
  LOBYTE(v82) = 32;
  v58 = sub_23DAA8EC0(v56, v57, &v82);
  v60 = v59;

  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v58;
  v83 = v60;
  sub_23DB6EF1C();
  v61 = sub_23DAC7D28(0xD00000000000002DLL, 0x800000023DB8E780);
  v63 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v61;
  v83 = v63;

  sub_23DB6EF1C();
  v64 = sub_23DAC7D28(0xD00000000000002ELL, 0x800000023DB8E7B0);
  v66 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v64;
  v83 = v66;

  sub_23DB6EF1C();
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = v55;
  v69 = (v18 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  *v69 = sub_23DB609D8;
  v69[1] = v68;

  sub_23DA18BA0(v70);

  v72 = swift_allocObject();
  swift_weakInit();

  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  *(v73 + 24) = v55;
  v74 = (v18 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v75 = v74[1];
  *v74 = sub_23DB609F4;
  v74[1] = v73;

  return v18;
}

uint64_t sub_23DB4D67C()
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
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v16 = v63;
    v17 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v16;
    v64 = v17;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v63) = 0;

    sub_23DB6EF1C();
    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v58 = v18;
    v19 = *(v15 + v18);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v56 = v21;
    v57 = KeyPath;
    v55 = sub_23DB6EEFC();
    v51 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v59 = v15;
    v54 = v23;
    v53 = v24;
    v52 = sub_23DB6EEFC();
    v50 = v25;

    v26 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v27 = 0;
    v28 = (v1 + 56);
    v29 = v19[2];
    v1 += 48;
    if (!v29)
    {
LABEL_4:
      v30 = 1;
      v27 = v29;
      goto LABEL_7;
    }

    while (1)
    {
      if (v27 >= v19[2])
      {
        goto LABEL_18;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v61 = v27 + 1;
      v32 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v33 = *(v0 + 48);
      v34 = v1;
      v35 = v28;
      v36 = v13;
      v37 = v29;
      v38 = v0;
      v39 = v9;
      v40 = v26;
      v41 = v19;
      v42 = v60;
      *v60 = v27;
      sub_23DAC962C(v32, v42 + v33);
      v43 = v42;
      v19 = v41;
      v26 = v40;
      v9 = v39;
      v0 = v38;
      v29 = v37;
      v13 = v36;
      v28 = v35;
      v1 = v34;
      sub_23DA17A54(v43, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v61;
LABEL_7:
      (*v28)(v9, v30, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v44 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v26 = sub_23DAC8B24(v19);
        goto LABEL_3;
      }

      if (v44 >= *(v26 + 16))
      {
        goto LABEL_17;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DB5F554(v13 + *(v0 + 48));
      if (v27 == v29)
      {
        goto LABEL_4;
      }
    }

    *v50 = 0;
    *v51 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    sub_23DB6BB30(&unk_284FE7D48);
    sub_23DA17988(&unk_284FE7D68, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v52(v62, 0);

    v55(&v63, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v47 = v59;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v48 = *(v47 + v58);
    *(v47 + v58) = v26;
  }

  return result;
}

id sub_23DB4DD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECC0, &qword_23DB7CE58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v167 = &v165 - v4;
  v5 = type metadata accessor for CommandToPractice(0);
  v6 = *(v5 - 8);
  v177 = v5;
  v178 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v166 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCB28, &qword_23DB76220);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v165 - v14;
  v16 = sub_23DB6EA8C();
  v182 = *(v16 - 8);
  v183 = v16;
  v17 = *(v182 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v181 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v174 = &v165 - v22;
  v23 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8E590);
  v179 = v24;
  v180 = v23;
  v184 = v0;
  v25 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8E5B0);
  v175 = v26;
  v176 = v25;
  sub_23DB6EA7C();
  v27 = type metadata accessor for Page.PracticeShortTextFormatted(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCorrectPhrase;
  v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v33 = sub_23DB7087C();
  v34 = [v32 initWithString_];

  v187 = v34;
  sub_23DAA967C(0, &qword_27E2FC6A0, 0x277CCA898);
  sub_23DB6EECC();
  v35 = *(v11 + 32);
  v35(v30 + v31, v15, v10);
  v36 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedCurrentPhrase;
  v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v38 = sub_23DB7087C();
  v39 = [v37 initWithString_];

  v187 = v39;
  sub_23DB6EECC();
  v40 = v30 + v36;
  v41 = v10;
  v35(v40, v15, v10);
  v42 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page26PracticeShortTextFormatted__attributedStartingPhrase;
  v43 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v44 = sub_23DB7087C();
  v45 = [v43 initWithString_];

  v187 = v45;
  sub_23DB6EECC();
  v35(v30 + v42, v15, v41);
  v46 = v181;
  v47 = v182;
  v48 = v174;
  v49 = v183;
  (*(v182 + 16))(v181, v174, v183);
  v50 = sub_23DA24B98(v46, v180, v179, v176, v175, MEMORY[0x277D84F90], 0, 0);
  (*(v47 + 8))(v48, v49);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v183 = qword_27E30A6B0;
  v174 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E5E0);
  v175 = v51;
  v52 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E610);
  v54 = v53;
  v181 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8E640);
  v182 = v55;
  v179 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8E670);
  v180 = v56;
  swift_retain_n();
  v57 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v59 = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  v187 = v57;
  v188 = v59;

  sub_23DB6EF1C();
  v60 = sub_23DB3DDA4();
  v62 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v187 = v60;
  v188 = v62;
  v172 = v50;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v187 = 0xD000000000000015;
  v188 = 0x800000023DB8E6A0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v170 = *(v178 + 72);
  v63 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v64 = swift_allocObject();
  v173 = xmmword_23DB78D60;
  v171 = v64;
  *(v64 + 16) = xmmword_23DB78D60;
  v65 = v64 + v63;
  LOBYTE(v187) = 37;

  v168 = v52;
  v66 = sub_23DAA67F0(&v187, v52, v54);
  v169 = v67;
  v178 = v54;

  *v65 = 0;
  *(v65 + 8) = 0xE000000000000000;
  *(v65 + 17) = 186;
  *(v65 + 19) = 0;
  v68 = v177;
  v69 = v65 + *(v177 + 36);
  sub_23DB6EA7C();
  v70 = v68[10];
  *(v65 + v70) = 1;
  v71 = v68[11];
  *(v65 + v71) = 1;
  v72 = v68[12];
  v73 = type metadata accessor for KeyboardKey(0);
  v74 = *(v73 - 8);
  v176 = *(v74 + 56);
  v75 = v74 + 56;
  v176(v65 + v72, 1, 1, v73);
  v76 = (v65 + v68[13]);
  *v76 = 0;
  v76[1] = 0;
  v77 = *(v65 + 8);
  v78 = v169;
  *v65 = v66;
  *(v65 + 8) = v78;

  *(v65 + 16) = -91;
  *(v65 + 19) = 0;
  v79 = v76[1];
  *v76 = 0;
  v76[1] = 0;

  *(v65 + v70) = 1;
  *(v65 + v71) = 1;
  v80 = v65 + v170;
  LOBYTE(v187) = 39;
  v81 = v180;

  v82 = sub_23DAA67F0(&v187, v179, v81);
  v84 = v83;

  *v80 = 0;
  *(v80 + 8) = 0xE000000000000000;
  *(v80 + 17) = 186;
  *(v80 + 19) = 0;
  v85 = v80 + v68[9];
  sub_23DB6EA7C();
  v86 = v68[10];
  *(v80 + v86) = 1;
  v87 = v68[11];
  *(v80 + v87) = 1;
  v88 = v80 + v68[12];
  v169 = v75;
  v170 = v73;
  v176(v88, 1, 1, v73);
  v89 = (v80 + v68[13]);
  *v89 = 0;
  v89[1] = 0;
  v90 = *(v80 + 8);
  *v80 = v82;
  *(v80 + 8) = v84;

  *(v80 + 16) = -89;
  *(v80 + 19) = 0;
  v91 = v89[1];
  *v89 = 0;
  v89[1] = 0;

  *(v80 + v86) = 1;
  *(v80 + v87) = 1;
  type metadata accessor for Page.Practice(0);
  v92 = sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v93 = v172;
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v94 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v95 = *(v93 + v94);
  *(v93 + v94) = v171;

  LOBYTE(v185[0]) = 38;
  v96 = v182;

  v97 = sub_23DAA67F0(v185, v181, v96);
  v99 = v98;

  if (sub_23DB7092C() < 1)
  {
  }

  else
  {
    v183 = v92;
    v100 = v166;
    *(v166 + 17) = 186;
    v101 = v177;
    v102 = v100 + *(v177 + 36);
    sub_23DB6EA7C();
    v103 = v101[10];
    v104 = v101[11];
    v176(v100 + v101[12], 1, 1, v170);
    v105 = (v100 + v101[13]);
    *v100 = v97;
    *(v100 + 8) = v99;
    *(v100 + 16) = -90;
    *(v100 + 19) = 0;
    *v105 = 0;
    v105[1] = 0;
    *(v100 + v103) = 1;
    *(v100 + v104) = 1;
    v106 = *(v93 + v94);
    v107 = v167;
    sub_23DB60970(v100, v167, type metadata accessor for CommandToPractice);
    v108 = v106[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v185[0] = v106;
    if (!isUniquelyReferenced_nonNull_native || v108 >= v106[3] >> 1)
    {
      v106 = sub_23DAC8404(isUniquelyReferenced_nonNull_native, v108 + 1, 1, v106);
      v185[0] = v106;
    }

    sub_23DAC8B84(0, 0, 1, v107);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v110 = *(v93 + v94);
    *(v93 + v94) = v106;

    v111 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8E6C0);
    v113 = v112;
    swift_getKeyPath();
    swift_getKeyPath();
    v185[0] = v111;
    v185[1] = v113;

    sub_23DB6EF1C();
  }

  v114 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v115 = sub_23DB7087C();

  v116 = [v114 initWithString_];

  v186 = v116;
  v117 = v116;
  v118 = [v117 length];
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = v173;
  v120 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v121 = v120;
  v122 = sub_23DB5FB9C();
  v123 = sub_23DB7087C();
  v124 = objc_opt_self();
  v125 = [v124 fontWithName:v123 size:v122];

  *(inited + 64) = sub_23DAA967C(0, &qword_27E300DD0, 0x277D74300);
  if (!v125)
  {
    v125 = [v124 systemFontOfSize_];
  }

  *(inited + 40) = v125;
  v126 = *MEMORY[0x277D740C0];
  *(inited + 72) = *MEMORY[0x277D740C0];
  v127 = sub_23DAA967C(0, &qword_27E2FE8E8, 0x277D75348);
  v128 = v126;
  sub_23DB7020C();
  v129 = sub_23DB70B1C();
  *(inited + 104) = v127;
  *(inited + 80) = v129;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D8, &qword_23DB7A4F0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  v131 = v130;
  v132 = sub_23DB60828(&qword_27E2FBE30, type metadata accessor for Key);
  v183 = v131;
  v133 = sub_23DB7080C();

  [v117 addAttributes:v133 range:{0, v118}];

  v134 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  swift_getKeyPath();
  swift_getKeyPath();
  v185[0] = v134;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v135 = v185[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v185[0] = v135;

  sub_23DB6EF1C();
  result = [v117 string];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v137 = result;
  v176 = v132;
  v138 = sub_23DB7087C();
  v139 = [v137 rangeOfString_];
  v174 = v140;
  v175 = v139;

  result = [v117 string];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v141 = result;
  v142 = sub_23DB7087C();
  v143 = [v141 rangeOfString_];
  v145 = v144;

  result = [v117 string];
  if (result)
  {
    v146 = result;

    v147 = sub_23DB7087C();

    v148 = [v146 rangeOfString_];
    v150 = v149;

    sub_23DB5FC50(&v186, v175, v174);
    sub_23DB5FE4C(&v186, v143, v145);
    v151 = swift_initStackObject();
    v152 = *MEMORY[0x277D741F0];
    *(v151 + 32) = *MEMORY[0x277D741F0];
    *(v151 + 16) = xmmword_23DB73BA0;
    *(v151 + 64) = MEMORY[0x277D83B88];
    *(v151 + 40) = 1;
    v153 = v152;
    sub_23DB6BC44(v151);
    swift_setDeallocating();
    sub_23DA17988(v151 + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
    v154 = sub_23DB7080C();

    [v117 addAttributes:v154 range:{v148, v150}];

    swift_getKeyPath();
    swift_getKeyPath();
    v185[0] = v117;

    sub_23DB6EF1C();
    v155 = swift_allocObject();
    swift_weakInit();
    v156 = swift_allocObject();
    v157 = v184;
    *(v156 + 16) = v155;
    *(v156 + 24) = v157;
    v158 = (v93 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v159 = v158[1];
    *v158 = sub_23DB60960;
    v158[1] = v156;

    v160 = swift_allocObject();
    swift_weakInit();

    v161 = swift_allocObject();
    *(v161 + 16) = v160;
    *(v161 + 24) = v157;
    v162 = (v93 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v163 = *v162;
    v164 = v162[1];
    *v162 = sub_23DB60968;
    v162[1] = v161;

    sub_23DA18BA0(v163);

    return v93;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23DB4EEE0()
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
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v16 = v62[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v62[0] = v16;

    sub_23DB6EF1C();
    v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v57 = v17;
    v18 = *(v15 + v17);
    KeyPath = swift_getKeyPath();
    v20 = swift_getKeyPath();

    v55 = v20;
    v56 = KeyPath;
    v54 = sub_23DB6EEFC();
    v50 = v21;
    v22 = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v58 = v15;
    v53 = v22;
    v52 = v23;
    v51 = sub_23DB6EEFC();
    v49 = v24;

    v25 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v26 = 0;
    v27 = (v1 + 56);
    v28 = v18[2];
    v1 += 48;
    if (!v28)
    {
LABEL_4:
      v29 = 1;
      v26 = v28;
      goto LABEL_7;
    }

    while (1)
    {
      if (v26 >= v18[2])
      {
        goto LABEL_18;
      }

      v30 = *(type metadata accessor for CommandToPractice(0) - 8);
      v60 = v26 + 1;
      v31 = v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26;
      v32 = *(v0 + 48);
      v33 = v1;
      v34 = v27;
      v35 = v13;
      v36 = v28;
      v37 = v0;
      v38 = v9;
      v39 = v25;
      v40 = v18;
      v41 = v59;
      *v59 = v26;
      sub_23DAC962C(v31, v41 + v32);
      v42 = v41;
      v18 = v40;
      v25 = v39;
      v9 = v38;
      v0 = v37;
      v28 = v36;
      v13 = v35;
      v27 = v34;
      v1 = v33;
      sub_23DA17A54(v42, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v29 = 0;
      v26 = v60;
LABEL_7:
      (*v27)(v9, v29, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v43 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v25 = sub_23DAC8B24(v18);
        goto LABEL_3;
      }

      if (v43 >= *(v25 + 16))
      {
        goto LABEL_17;
      }

      v44 = *(type metadata accessor for CommandToPractice(0) - 8);
      v45 = v25 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43;
      *(v45 + 18) = 0;
      *(v45 + 19) = v43 == 0;
      sub_23DB5F554(v13 + *(v0 + 48));
      if (v26 == v28)
      {
        goto LABEL_4;
      }
    }

    *v49 = 0;
    *v50 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    sub_23DB6BB30(&unk_284FE7D88);
    sub_23DA17988(&unk_284FE7DA8, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v51(v61, 0);

    v54(v62, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v46 = v58;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v47 = *(v46 + v57);
    *(v46 + v57) = v25;
  }

  return result;
}

uint64_t sub_23DB4F544()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v8[0] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v2 = v8[0];
      v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v9 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();

      v4 = sub_23DB6EEFC();
      sub_23DAC8040(&v9, v2, v5);
      v4(v8, 0);

      v6 = v9;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v7 = *(v1 + v3);
      *(v1 + v3) = v6;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DB4F784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v225 = *(v1 - 8);
  v226 = v1;
  v2 = *(v225 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v224 = &v197 - v4;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v218 = *(v223 - 8);
  v5 = *(v218 + 64);
  MEMORY[0x28223BE20](v223, v6);
  v216 = &v197 - v7;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v209 = *(v213 - 1);
  v8 = *(v209 + 64);
  MEMORY[0x28223BE20](v213, v9);
  v206 = &v197 - v10;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v204 = *(v205 - 8);
  v11 = *(v204 + 64);
  MEMORY[0x28223BE20](v205, v12);
  v203 = &v197 - v13;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v14 = *(v199 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v199, v16);
  v198 = &v197 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v197 - v22;
  v24 = sub_23DB6EA8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v217 = &v197 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v197 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v197 - v35;
  v212 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8E4B0);
  v211 = v37;
  v227 = v0;
  v208 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E4D0);
  v207 = v38;
  sub_23DB6EA7C();
  v39 = type metadata accessor for Page.PracticeAppNavigationCommands(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v43 = (v42 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands__hiddenText;
  *&v230 = 0;
  *(&v230 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v19 + 32);
  v210 = v23;
  v46 = v23;
  v47 = v198;
  v215 = v18;
  v214 = v19 + 32;
  v200 = v45;
  v45(v42 + v44, v46, v18);
  v220 = v32;
  v221 = v25;
  v48 = *(v25 + 16);
  v219 = v36;
  v222 = v24;
  v202 = v25 + 16;
  v201 = v48;
  v48(v32, v36, v24);
  v49 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v230) = 0;
  sub_23DB6EECC();
  v50 = *(v14 + 32);
  v51 = v199;
  v50(v42 + v49, v47);
  v52 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v53 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v53 = MEMORY[0x277D84FA0];
  }

  *(v42 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v53;
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v230 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v55 = v52;
  v56 = v203;
  sub_23DB6EECC();
  (*(v204 + 32))(v42 + v54, v56, v205);
  *(v42 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v55;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v230 = 0;
  v58 = v206;
  sub_23DB6EECC();
  (*(v209 + 32))(v42 + v57, v58, v213);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v230) = 0;
  sub_23DB6EECC();
  (v50)(v42 + v59, v47, v51);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v209 = xmmword_23DB74320;
  v230 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v61 = v216;
  sub_23DB6EECC();
  v213 = v50;
  v62 = *(v218 + 32);
  v63 = v223;
  v62(v42 + v60, v61, v223);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v230 = v209;
  sub_23DB6EECC();
  v62(v42 + v64, v61, v63);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v230) = 0;
  sub_23DB6EECC();
  v213(v42 + v65, v47, v51);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v230 = 0;
  *(&v230 + 1) = 0xE000000000000000;
  v67 = v210;
  sub_23DB6EECC();
  v200(v42 + v66, v67, v215);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v230 = 0uLL;
  sub_23DB6EECC();
  v62(v42 + v68, v61, v63);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v230 = nullsub_1;
  *(&v230 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v70 = v224;
  sub_23DB6EECC();
  (*(v225 + 32))(v42 + v69, v70, v226);
  v71 = v217;
  v72 = v220;
  v73 = v222;
  v201(v217, v220, v222);
  v74 = Page.init(id:title:text:subPages:iconName:)(v71, v212, v211, v208, v207, MEMORY[0x277D84F90], 0, 0);
  v75 = *(v221 + 8);
  v75(v72, v73);
  v75(v219, v73);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v76 = qword_27E30A6B0;
  swift_retain_n();
  v77 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v79 = v78;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v230 = v77;
  *(&v230 + 1) = v79;

  sub_23DB6EF1C();
  v80 = sub_23DB3DDA4();
  v82 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v230 = v80;
  *(&v230 + 1) = v82;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v230) = 1;
  sub_23DB6EF1C();
  v83 = objc_opt_self();
  v84 = [v83 currentDevice];
  v85 = [v84 userInterfaceIdiom];

  if (v85)
  {
    v86 = [v83 currentDevice];
    v87 = [v86 userInterfaceIdiom];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
    v88 = type metadata accessor for CommandToPractice(0);
    v89 = (*(*(v88 - 1) + 80) + 32) & ~*(*(v88 - 1) + 80);
    v224 = *(*(v88 - 1) + 72);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_23DB78D60;
    v225 = v90;
    v91 = v90 + v89;
    if (v87 != 1)
    {
      LOBYTE(v230) = 1;
      v155 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E500);
      v226 = v76;
      v157 = sub_23DAA67F0(&v230, v155, v156);
      v159 = v158;

      *v91 = 0;
      *(v91 + 8) = 0xE000000000000000;
      *(v91 + 17) = 186;
      *(v91 + 19) = 0;
      v160 = v91 + v88[9];
      sub_23DB6EA7C();
      v161 = v88[10];
      *(v91 + v161) = 1;
      v162 = v88[11];
      *(v91 + v162) = 1;
      v163 = v88[12];
      v164 = type metadata accessor for KeyboardKey(0);
      v165 = *(v164 - 8);
      v222 = *(v165 + 56);
      v223 = v165 + 56;
      v222(v91 + v163, 1, 1, v164);
      v166 = (v91 + v88[13]);
      *v166 = 0;
      v166[1] = 0;
      v167 = *(v91 + 8);
      *v91 = v157;
      *(v91 + 8) = v159;

      *(v91 + 16) = -127;
      *(v91 + 19) = 1;
      v168 = v166[1];
      *v166 = 0;
      v166[1] = 0;

      *(v91 + v161) = 1;
      *(v91 + v162) = 1;
      v169 = &v224[v91];
      LOBYTE(v230) = 0;
      v170 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E500);
      v172 = sub_23DAA67F0(&v230, v170, v171);
      v174 = v173;

      *v169 = 0;
      *(v169 + 1) = 0xE000000000000000;
      *(v169 + 17) = 186;
      v169[19] = 0;
      v175 = &v169[v88[9]];
      sub_23DB6EA7C();
      v176 = v88[10];
      v169[v176] = 1;
      v177 = v88[11];
      v169[v177] = 1;
      v222(&v169[v88[12]], 1, 1, v164);
      v178 = &v169[v88[13]];
      *v178 = 0;
      *(v178 + 1) = 0;
      v179 = *(v169 + 1);
      *v169 = v172;
      *(v169 + 1) = v174;

      v169[16] = 0x80;
      v169[19] = 0;
      v180 = *(v178 + 1);
      *v178 = 0;
      *(v178 + 1) = 0;

      v169[v176] = 1;
      v169[v177] = 1;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v181 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v182 = *(v74 + v181);
      *(v74 + v181) = v225;

      goto LABEL_11;
    }

    LOBYTE(v230) = 1;
    v92 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E500);
    v94 = sub_23DAA67F0(&v230, v92, v93);
    v222 = v95;
    v223 = v94;

    *v91 = 0;
    *(v91 + 8) = 0xE000000000000000;
    *(v91 + 17) = 186;
    *(v91 + 19) = 0;
    v96 = v91 + v88[9];
    sub_23DB6EA7C();
    v97 = v88[10];
    *(v91 + v97) = 1;
    v98 = v88[11];
    *(v91 + v98) = 1;
    v99 = v88[12];
    v100 = type metadata accessor for KeyboardKey(0);
    v101 = *(*(v100 - 8) + 56);
    v101(v91 + v99, 1, 1, v100);
    v102 = (v91 + v88[13]);
    *v102 = 0;
    v102[1] = 0;
    v103 = *(v91 + 8);
    v104 = v222;
    *v91 = v223;
    *(v91 + 8) = v104;

    *(v91 + 16) = -127;
    *(v91 + 19) = 1;
    v105 = v102[1];
    *v102 = 0;
    v102[1] = 0;

    *(v91 + v97) = 1;
    *(v91 + v98) = 1;
    v106 = &v224[v91];
    LOBYTE(v230) = 2;
    v107 = sub_23DAA67F0(&v230, 0, 0);
    v109 = v108;
    *v106 = 0;
    *(v106 + 1) = 0xE000000000000000;
    *(v106 + 17) = 186;
    v106[19] = 0;
    v110 = &v106[v88[9]];
    sub_23DB6EA7C();
    v111 = v88[10];
    v106[v111] = 1;
    v112 = v88[11];
    v106[v112] = 1;
    v101(&v106[v88[12]], 1, 1, v100);
    v113 = &v106[v88[13]];
    *v113 = 0;
    *(v113 + 1) = 0;
    v114 = *(v106 + 1);
    *v106 = v107;
    *(v106 + 1) = v109;

    v106[16] = -126;
    v106[19] = 0;
    v115 = *(v113 + 1);
    *v113 = 0;
    *(v113 + 1) = 0;

    v106[v111] = 1;
    v106[v112] = 1;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v116 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v117 = *(v74 + v116);
    *(v74 + v116) = v225;

    v118 = 0x800000023DB8E530;
    v119 = 0xD000000000000022;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
    v120 = (type metadata accessor for CommandToPractice(0) - 8);
    v121 = *v120;
    v224 = *(*v120 + 72);
    v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v123 = swift_allocObject();
    v225 = v123;
    *(v123 + 16) = xmmword_23DB78D60;
    v124 = v123 + v122;
    LOBYTE(v230) = 1;
    v125 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E500);
    v226 = v76;
    v127 = sub_23DAA67F0(&v230, v125, v126);
    v222 = v128;

    *v124 = 0;
    *(v124 + 8) = 0xE000000000000000;
    *(v124 + 17) = 186;
    *(v124 + 19) = 0;
    v129 = v124 + v120[11];
    sub_23DB6EA7C();
    v130 = v120[12];
    *(v124 + v130) = 1;
    v131 = v120[13];
    *(v124 + v131) = 1;
    v132 = v120[14];
    v133 = type metadata accessor for KeyboardKey(0);
    v134 = *(v133 - 8);
    v135 = *(v134 + 56);
    v223 = v134 + 56;
    v135(v124 + v132, 1, 1, v133);
    v136 = (v124 + v120[15]);
    *v136 = 0;
    v136[1] = 0;
    v137 = *(v124 + 8);
    v138 = v222;
    *v124 = v127;
    *(v124 + 8) = v138;

    *(v124 + 16) = -127;
    *(v124 + 19) = 1;
    v139 = v136[1];
    *v136 = 0;
    v136[1] = 0;

    *(v124 + v130) = 1;
    *(v124 + v131) = 1;
    v140 = &v224[v124];
    LOBYTE(v230) = 2;
    v141 = sub_23DAA67F0(&v230, 0, 0);
    v143 = v142;
    *v140 = 0;
    *(v140 + 1) = 0xE000000000000000;
    *(v140 + 17) = 186;
    v140[19] = 0;
    v144 = &v140[v120[11]];
    sub_23DB6EA7C();
    v145 = v120[12];
    v140[v145] = 1;
    v146 = v120[13];
    v140[v146] = 1;
    v135(&v140[v120[14]], 1, 1, v133);
    v147 = &v140[v120[15]];
    *v147 = 0;
    *(v147 + 1) = 0;
    v148 = *(v140 + 1);
    *v140 = v141;
    *(v140 + 1) = v143;

    v140[16] = -126;
    v140[19] = 0;
    v149 = *(v147 + 1);
    *v147 = 0;
    *(v147 + 1) = 0;

    v140[v145] = 1;
    v140[v146] = 1;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v150 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v151 = *(v74 + v150);
    *(v74 + v150) = v225;

    v119 = 0xD000000000000024;
    v118 = 0x800000023DB8E560;
  }

  v152 = sub_23DAC7D28(v119, v118);
  v154 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v228 = v152;
  v229 = v154;
  sub_23DB6EF1C();
LABEL_11:
  v183 = swift_allocObject();
  swift_weakInit();
  v184 = swift_allocObject();
  swift_weakInit();
  v185 = swift_allocObject();
  *(v185 + 16) = v183;
  *(v185 + 24) = v184;
  v186 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v187 = *v186;
  v188 = v186[1];
  *v186 = sub_23DB60098;
  v186[1] = v185;
  swift_retain_n();

  sub_23DA18BA0(v187);

  v189 = swift_allocObject();
  swift_weakInit();

  v190 = swift_allocObject();
  swift_weakInit();
  v191 = swift_allocObject();
  *(v191 + 16) = v189;
  *(v191 + 24) = v190;
  v192 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v193 = v192[1];
  *v192 = sub_23DB600A0;
  v192[1] = v191;

  v194 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v195 = v194[1];
  *v194 = sub_23DB51B78;
  v194[1] = 0;

  return v74;
}

size_t sub_23DB50D90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if ((v44 & 1) == 0)
  {
  }

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v3 = (*qword_27E30A6D8 + 304);
  v4 = *v3;
  v5 = (*v3)(0xD00000000000001ELL, 0x800000023DB8ADD0);
  v41 = v4(0xD00000000000001ELL, 0x800000023DB8ADF0);
  v7 = v6;
  v8 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10 - 1;
  v12 = *(type metadata accessor for CommandToPractice(0) - 8);
  v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v43 = *(v12 + 72);
  v13 = (v9 + v40 + v43 * v11);
  v14 = *v13;
  v15 = v13[1];
  sub_23DB708DC();
  v5 = sub_23DA16E70();

  v16 = sub_23DB70BBC();
  v18 = v17;

  v44 = v16;
  v45 = v18;
  v48 = v41;
  v49 = v7;
  v46 = 0;
  v47 = 0xE000000000000000;
  v42 = sub_23DB70BBC();
  v20 = v19;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  LOBYTE(v16) = v44;
  v48 = *(v2 + v8);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();

  v21 = sub_23DB6EEFC();
  sub_23DAC8040(&v48, v16, v22);
  v21(&v44, 0);

  v23 = v48;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  v9 = sub_23DB6EE6C();
  sub_23DB6EEBC();

  v24 = *(v2 + v8);
  *(v2 + v8) = v23;

  v25 = *(v2 + v8);
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  KeyPath = v40;
  if (*(v25 + v40 + 18) == 1)
  {
    v27 = sub_23DB60750();
    v28 = (v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
    v29 = *(v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8);
    *v28 = v27;
    v28[1] = v30;

    v25 = *(v2 + v8);
    v26 = *(v25 + 16);
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  if (*(v25 + v40 + (v26 - 1) * v43 + 18) == 1)
  {

    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v31 = sub_23DB708DC();
  v33 = v32;

  v44 = v31;
  KeyPath = v40;
  v45 = v33;
  v48 = v42;
  v49 = v20;
  v34 = sub_23DB70BDC();

  if (v34)
  {
LABEL_15:
    v35 = sub_23DB60628();
    v36 = (v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
    v37 = *(v2 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8);
    *v36 = v35;
    v36[1] = v38;

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44) = 1;

    sub_23DB6EF1C();
    v5 = *(v2 + v8);
    v9 = v5[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    result = sub_23DAC8B24(v5);
    v5 = result;
    if (v9)
    {
LABEL_17:
      if (v9 <= v5[2])
      {
        *(v5 + KeyPath + (v9 - 1) * v43 + 18) = 1;
        sub_23DB6EE6C();
        sub_23DB6EEBC();

        v39 = *(v2 + v8);
        *(v2 + v8) = v5;
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }
}

uint64_t sub_23DB51448()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v64 = (&v52 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v52 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      if (qword_27E2FBBE0 == -1)
      {
        goto LABEL_4;
      }

LABEL_21:
      swift_once();
LABEL_4:
      v61 = qword_27E30A6B0;
      v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v60 = v17;
      v18 = *(v15 + v17);
      KeyPath = swift_getKeyPath();
      v20 = swift_getKeyPath();

      v59 = KeyPath;
      v58 = v20;
      v21 = v18;
      v57 = sub_23DB6EEFC();
      v53 = v22;
      v23 = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v63 = v15;
      v56 = v23;
      v55 = v24;
      v54 = sub_23DB6EEFC();
      v52 = v25;

      v26 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_23DAC8B24(v18);
      }

      v27 = 0;
      v28 = (v1 + 56);
      v15 = v18[2];
      v1 += 48;
      if (!v15)
      {
LABEL_7:
        v29 = 1;
        v27 = v15;
        goto LABEL_10;
      }

      while (1)
      {
        if (v27 >= v21[2])
        {
          goto LABEL_20;
        }

        v30 = *(type metadata accessor for CommandToPractice(0) - 8);
        v65 = v27 + 1;
        v31 = v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27;
        v32 = *(v0 + 48);
        v33 = v13;
        v34 = v1;
        v35 = v28;
        v36 = v0;
        v37 = v15;
        v38 = v9;
        v39 = v26;
        v40 = v21;
        v41 = v64;
        *v64 = v27;
        sub_23DAC962C(v31, v41 + v32);
        v42 = v41;
        v21 = v40;
        v26 = v39;
        v9 = v38;
        v15 = v37;
        v0 = v36;
        v28 = v35;
        v1 = v34;
        v13 = v33;
        sub_23DA17A54(v42, v9, &qword_27E2FE1C0, &qword_23DB7A440);
        v29 = 0;
        v27 = v65;
LABEL_10:
        (*v28)(v9, v29, 1, v0);
        sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
        if ((*v1)(v13, 1, v0) == 1)
        {
          break;
        }

        v43 = *v13;
        if ((*v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (v43 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v44 = *(type metadata accessor for CommandToPractice(0) - 8);
        v45 = v26 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43;
        *(v45 + 18) = 0;
        *(v45 + 19) = v43 == 0;
        sub_23DB5F554(v13 + *(v0 + 48));
        if (v27 == v15)
        {
          goto LABEL_7;
        }
      }

      *v52 = 0;
      *v53 = 0;
      sub_23DB6BB30(&unk_284FE7DC8);
      sub_23DA17988(&unk_284FE7DE8, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();

      v54(v66, 0);

      v57(v67, 0);

      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      v46 = v63;
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v47 = *(v46 + v60);
      *(v46 + v60) = v26;

      v48 = sub_23DB60628();
      v49 = (v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon);
      v50 = *(v46 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page29PracticeAppNavigationCommands_foregroundAppIcon + 8);
      *v49 = v48;
      v49[1] = v51;

      swift_getKeyPath();
      swift_getKeyPath();
      v67[0] = 0;
      v67[1] = 0xE000000000000000;

      sub_23DB6EF1C();
      sub_23DB6BB30(&unk_284FE7E08);
      sub_23DA17988(&unk_284FE7E28, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();

      sub_23DB6BB30(&unk_284FE7E48);
      sub_23DA17988(&unk_284FE7E68, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DB51B88(uint64_t a1, uint64_t a2)
{
  if (qword_27E2FBBE0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  sub_23DB6BB30(a1);
  sub_23DA17988(a2, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8();
}

uint64_t sub_23DB51C30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v167 = *(v1 - 8);
  v168 = v1;
  v2 = *(v167 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v165 = &v141 - v4;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v164 = *(v166 - 8);
  v5 = *(v164 + 64);
  MEMORY[0x28223BE20](v166, v6);
  v160 = &v141 - v7;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v155 = *(v156 - 8);
  v8 = *(v155 + 64);
  MEMORY[0x28223BE20](v156, v9);
  v154 = &v141 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v150 = *(v151 - 8);
  v11 = *(v150 + 64);
  MEMORY[0x28223BE20](v151, v12);
  v147 = &v141 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v141 - v18;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v20 = *(v170 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v170, v22);
  v24 = &v141 - v23;
  v25 = sub_23DB6EA8C();
  v169 = *(v25 - 8);
  v26 = v169[8];
  MEMORY[0x28223BE20](v25, v27);
  v157 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v141 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v141 - v35;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v171 = qword_27E30A6B0;
  LOBYTE(v175) = 50;
  v153 = sub_23DAA8EC0(16421, 0xE200000000000000, &v175);
  v152 = v37;
  v172 = v0;
  v38 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E430);
  LOBYTE(v175) = 50;
  v149 = sub_23DAA8EC0(v38, v39, &v175);
  v148 = v40;

  sub_23DB6EA7C();
  v41 = type metadata accessor for Page.PracticeGrid(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  v45 = (v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols);
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v45[2] = 0;
  v45[3] = 0xE000000000000000;
  v46 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__gridNumberDidChange;
  *&v175 = nullsub_1;
  *(&v175 + 1) = 0;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  sub_23DB6EECC();
  v47 = *(v20 + 32);
  v161 = v24;
  v162 = v20 + 32;
  v145 = v47;
  v47(v44 + v46, v24, v170);
  v48 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid__clickedButton;
  LOBYTE(v175) = 0;
  sub_23DB6EECC();
  v49 = *(v15 + 32);
  v49(v44 + v48, v19, v14);
  v50 = v169[2];
  v158 = v36;
  v144 = v169 + 2;
  v143 = v50;
  v50(v32, v36, v25);
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v175) = 0;
  sub_23DB6EECC();
  v142 = v49;
  v49(v44 + v51, v19, v14);
  v52 = MEMORY[0x277D84F90];
  v53 = v14;
  v163 = v25;
  v159 = v32;
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v54 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v54 = MEMORY[0x277D84FA0];
  }

  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v54;
  v55 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v175 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v56 = v147;
  sub_23DB6EECC();
  (*(v150 + 32))(v44 + v55, v56, v151);
  *(v44 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v52;
  v57 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v175 = 0;
  v58 = v154;
  sub_23DB6EECC();
  (*(v155 + 32))(v44 + v57, v58, v156);
  v59 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v175) = 0;
  sub_23DB6EECC();
  v60 = v142;
  v142(v44 + v59, v19, v53);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v155 = xmmword_23DB74320;
  v175 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v156 = v53;
  v62 = v160;
  sub_23DB6EECC();
  v63 = *(v164 + 32);
  v64 = v166;
  v63(v44 + v61, v62, v166);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v175 = v155;
  sub_23DB6EECC();
  v63(v44 + v65, v62, v64);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v175) = 0;
  sub_23DB6EECC();
  v60(v44 + v66, v19, v156);
  v67 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v175 = 0;
  *(&v175 + 1) = 0xE000000000000000;
  v68 = v165;
  sub_23DB6EECC();
  (*(v167 + 32))(v44 + v67, v68, v168);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v175 = 0uLL;
  sub_23DB6EECC();
  v63(v44 + v69, v62, v64);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v175 = nullsub_1;
  *(&v175 + 1) = 0;
  v71 = v161;
  sub_23DB6EECC();
  v145(v44 + v70, v71, v170);
  v72 = v157;
  v73 = v159;
  v74 = v163;
  v143(v157, v159, v163);
  v75 = Page.init(id:title:text:subPages:iconName:)(v72, v153, v152, v149, v148, MEMORY[0x277D84F90], 0, 0);
  v76 = v169[1];
  v76(v158, v74);
  v76(v73, v74);
  v77 = objc_opt_self();
  v78 = [v77 currentDevice];
  v79 = [v78 userInterfaceIdiom];

  if (!v79 || (v80 = [v77 currentDevice], v81 = objc_msgSend(v80, sel_userInterfaceIdiom), v80, v81 == 1))
  {

    v82 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E490);
    LOBYTE(v175) = 50;
    v84 = sub_23DAA8EC0(v82, v83, &v175);
    v86 = v85;

    swift_getKeyPath();
    swift_getKeyPath();
    *&v175 = v84;
    *(&v175 + 1) = v86;
    sub_23DB6EF1C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v175 = xmmword_23DB82C30;
  swift_retain_n();
  sub_23DB6EF1C();
  swift_retain_n();
  v87 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v89 = v88;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v175 = v87;
  *(&v175 + 1) = v89;

  sub_23DB6EF1C();
  v90 = sub_23DB3DDA4();
  v92 = v91;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v175 = v90;
  *(&v175 + 1) = v92;
  sub_23DB6EF1C();
  v93 = (v75 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols);
  v94 = *(v75 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols + 8);
  v95 = *(v75 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page12PracticeGrid_cardSymbols + 24);
  *v93 = 0x746567726174;
  v93[1] = 0xE600000000000000;
  v93[2] = 0xD000000000000010;
  v93[3] = 0x800000023DB8E450;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v175) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v96 = (type metadata accessor for CommandToPractice(0) - 8);
  v97 = *v96;
  v169 = *(*v96 + 72);
  v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v99 = swift_allocObject();
  v170 = v99;
  *(v99 + 16) = xmmword_23DB78D60;
  v100 = v99 + v98;
  LOBYTE(v175) = 50;
  v101 = sub_23DAA67F0(&v175, 0, 0);
  v167 = v102;
  v168 = v101;
  *v100 = 0;
  *(v100 + 8) = 0xE000000000000000;
  *(v100 + 17) = 186;
  *(v100 + 19) = 0;
  v103 = v100 + v96[11];
  sub_23DB6EA7C();
  v104 = v96[12];
  *(v100 + v104) = 1;
  v105 = v96[13];
  *(v100 + v105) = 1;
  v106 = v96[14];
  v107 = type metadata accessor for KeyboardKey(0);
  v108 = *(*(v107 - 8) + 56);
  v108(v100 + v106, 1, 1, v107);
  v109 = (v100 + v96[15]);
  *v109 = 0;
  v109[1] = 0;
  v110 = *(v100 + 8);
  v111 = v167;
  *v100 = v168;
  *(v100 + 8) = v111;

  *(v100 + 16) = -78;
  *(v100 + 19) = 1;
  v112 = v109[1];
  *v109 = 0;
  v109[1] = 0;

  *(v100 + v104) = 1;
  *(v100 + v105) = 1;
  v113 = v169 + v100;
  v114 = sub_23DAC7D28(0xD00000000000001ALL, 0x800000023DB8E470);
  v116 = v115;
  *v113 = 0;
  *(v113 + 1) = 0xE000000000000000;
  *(v113 + 17) = 186;
  v113[19] = 0;
  v117 = &v113[v96[11]];
  sub_23DB6EA7C();
  v118 = v96[12];
  v113[v118] = 1;
  v119 = v96[13];
  v113[v119] = 1;
  v108(&v113[v96[14]], 1, 1, v107);
  v120 = &v113[v96[15]];
  *v120 = 0;
  *(v120 + 1) = 0;
  v121 = *(v113 + 1);
  *v113 = v114;
  *(v113 + 1) = v116;

  v113[16] = -72;
  v113[19] = 0;
  v122 = *(v120 + 1);
  *v120 = 0;
  *(v120 + 1) = 0;

  v113[v118] = 1;
  v113[v119] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v123 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v124 = *(v75 + v123);
  *(v75 + v123) = v170;

  v125 = swift_allocObject();
  swift_weakInit();
  v126 = swift_allocObject();
  v127 = v172;
  *(v126 + 16) = v125;
  *(v126 + 24) = v127;
  v128 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v129 = *v128;
  v130 = v128[1];
  *v128 = sub_23DB5FAEC;
  v128[1] = v126;

  sub_23DA18BA0(v129);

  v131 = swift_allocObject();
  swift_weakInit();
  v132 = swift_allocObject();
  v133 = v171;
  *(v132 + 16) = v131;
  *(v132 + 24) = v133;
  swift_getKeyPath();
  swift_getKeyPath();
  v134 = swift_allocObject();
  *(v134 + 16) = sub_23DB5FAF4;
  *(v134 + 24) = v132;
  v173 = sub_23DA71148;
  v174 = v134;

  sub_23DB6EF1C();
  v135 = swift_allocObject();
  swift_weakInit();

  v136 = swift_allocObject();
  swift_weakInit();
  v137 = swift_allocObject();
  *(v137 + 2) = v135;
  *(v137 + 3) = v136;
  *(v137 + 4) = v133;
  v138 = (v75 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v139 = v138[1];
  *v138 = sub_23DB5FB88;
  v138[1] = v137;

  return v75;
}

uint64_t sub_23DB52DB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E30A6B0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  if (LOBYTE(aBlock[0]) != 1)
  {
  }

  v3 = v2[3];
  swift_beginAccess();
  if (*(v3 + 40) > 2u)
  {

LABEL_9:
    sleep(1u);
    v5 = v2[14];
    swift_beginAccess();
    v6 = v2[19];
    if (v6)
    {
      v8 = v5[7];
      v7 = v5[8];
      v10 = v5[5];
      v9 = v5[6];
      v11 = v2[19];
      swift_unknownObjectRetain();
      v12 = sub_23DAA93A0();
      v13 = v2[18];
      v14 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_23DB60090;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DB3C694;
      aBlock[3] = &block_descriptor_272;
      v15 = _Block_copy(aBlock);

      xpc_connection_send_message_with_reply(v6, v12, v13, v15);
      _Block_release(v15);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v4 = sub_23DB70DBC();

  if (v4)
  {
    goto LABEL_9;
  }

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C();

  v16 = aBlock[0];
  v17 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v23 = *(v1 + v17);
  swift_getKeyPath();
  swift_getKeyPath();

  v18 = sub_23DB6EEFC();
  sub_23DAC8040(&v23, v16, v19);
  v18(aBlock, 0);

  v20 = v23;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v21 = *(v1 + v17);
  *(v1 + v17) = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  if (LOBYTE(aBlock[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;
    sub_23DB6EF1C();
  }
}

uint64_t sub_23DB532A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(a2 + 120);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (v7 < 0)
  {
    v37 = *(v6 + 40);
  }

  if (!sub_23DB70C3C())
  {
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v8 = type metadata accessor for CommandToPractice(0);
  v9 = *(*(v8 - 1) + 72);
  v10 = (*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23DB78D60;
  v12 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v11 + v10;
  sub_23DAC962C(v13 + v10, v11 + v10);
  v14 = qword_27E2FBBE0;

  if (v14 != -1)
  {
LABEL_16:
    swift_once();
  }

  v15 = *(a2 + 128);
  swift_beginAccess();
  v40[0] = *(v15 + 40);
  v16 = *(a2 + 120);
  result = swift_beginAccess();
  v17 = *(v16 + 40);
  v38 = v12;
  v39 = v11;
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = MEMORY[0x23EEF70C0](0, v17);

    goto LABEL_9;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
LABEL_9:
    v19 = v2 + v9;
    v20 = [v18 description];
    v21 = sub_23DB708BC();
    v23 = v22;

    v24 = sub_23DAA904C(v40, v21, v23);
    v26 = v25;

    v27 = *(a2 + 128);
    swift_beginAccess();
    LOBYTE(v27) = *(v27 + 40) | 0x80;
    *v19 = 0;
    *(v19 + 8) = 0xE000000000000000;
    *(v19 + 17) = 186;
    *(v19 + 19) = 0;
    v28 = v19 + v8[9];
    sub_23DB6EA7C();
    v29 = v8[10];
    *(v19 + v29) = 1;
    v30 = v8[11];
    *(v19 + v30) = 1;
    v31 = v8[12];
    v32 = type metadata accessor for KeyboardKey(0);
    (*(*(v32 - 8) + 56))(v19 + v31, 1, 1, v32);
    v33 = (v19 + v8[13]);
    *v33 = 0;
    v33[1] = 0;
    v34 = *(v19 + 8);
    *v19 = v24;
    *(v19 + 8) = v26;

    *(v19 + 16) = v27;
    *(v19 + 19) = 1;
    v35 = v33[1];
    *v33 = 0;
    v33[1] = 0;

    *(v19 + v29) = 1;
    *(v19 + v30) = 1;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v36 = *(v5 + v38);
    *(v5 + v38) = v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB53698()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
      v2 = (type metadata accessor for CommandToPractice(0) - 8);
      v29 = *(*v2 + 72);
      v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_23DB78D60;
      v4 = v30 + v3;
      v31[0] = 50;

      v5 = sub_23DAA904C(v31, 0, 0);
      v27 = v6;
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      *(v4 + 17) = 186;
      *(v4 + 19) = 0;
      v7 = v4 + v2[11];
      sub_23DB6EA7C();
      v8 = v2[12];
      *(v4 + v8) = 1;
      v9 = v2[13];
      *(v4 + v9) = 1;
      v10 = v2[14];
      v11 = type metadata accessor for KeyboardKey(0);
      v28 = *(*(v11 - 8) + 56);
      v28(v4 + v10, 1, 1, v11);
      v12 = (v4 + v2[15]);
      *v12 = 0;
      v12[1] = 0;
      v13 = *(v4 + 8);
      *v4 = v5;
      *(v4 + 8) = v27;

      *(v4 + 16) = -78;
      *(v4 + 19) = 1;
      v14 = v12[1];
      *v12 = 0;
      v12[1] = 0;

      *(v4 + v8) = 1;
      *(v4 + v9) = 1;
      v15 = v4 + v29;
      v16 = sub_23DAC7D28(0xD00000000000001ALL, 0x800000023DB8E470);
      v18 = v17;
      *v15 = 0;
      *(v15 + 8) = 0xE000000000000000;
      *(v15 + 17) = 186;
      *(v15 + 19) = 0;
      v19 = v4 + v29 + v2[11];
      sub_23DB6EA7C();
      v20 = v2[12];
      *(v15 + v20) = 1;
      v21 = v2[13];
      *(v15 + v21) = 1;
      v28(v15 + v2[14], 1, 1, v11);
      v22 = (v15 + v2[15]);
      *v22 = 0;
      v22[1] = 0;
      v23 = *(v15 + 8);
      *v15 = v16;
      *(v15 + 8) = v18;

      *(v15 + 16) = -72;
      *(v15 + 19) = 0;
      v24 = v22[1];
      *v22 = 0;
      v22[1] = 0;

      *(v15 + v20) = 1;
      *(v15 + v21) = 1;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v26 = *(v1 + v25);
      *(v1 + v25) = v30;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF1C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF1C();
    }
  }

  return result;
}

uint64_t sub_23DB53A6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v152 = *(v1 - 8);
  v153 = v1;
  v2 = *(v152 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v151 = &v128 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v146 = *(v147 - 1);
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v147, v6);
  v143 = &v128 - v7;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v139 = *(v140 - 8);
  v8 = *(v139 + 64);
  MEMORY[0x28223BE20](v140, v9);
  v138 = &v128 - v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v157 = *(v133 - 8);
  v11 = *(v157 + 64);
  MEMORY[0x28223BE20](v133, v12);
  v132 = &v128 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v158 = *(v14 - 8);
  v15 = *(v158 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v128 - v17;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v19 = *(v154 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v154, v21);
  v23 = &v128 - v22;
  v24 = sub_23DB6EA8C();
  v155 = *(v24 - 8);
  v25 = v155[8];
  MEMORY[0x28223BE20](v24, v26);
  v144 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v128 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v128 - v34;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v156 = qword_27E30A6B0;
  LOBYTE(v160) = 49;
  v137 = sub_23DAA8EC0(16421, 0xE200000000000000, &v160);
  v136 = v36;
  v159 = v0;
  v37 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E3E0);
  LOBYTE(v160) = 49;
  v135 = sub_23DAA8EC0(v37, v38, &v160);
  v134 = v39;

  sub_23DB6EA7C();
  v40 = type metadata accessor for Page.PracticeSingleButton(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__buttonText;
  *&v160 = 0;
  *(&v160 + 1) = 0xE000000000000000;
  sub_23DB6EECC();
  v45 = *(v19 + 32);
  v141 = v23;
  v142 = v19 + 32;
  v129 = v45;
  v45(v43 + v44, v23, v154);
  v46 = v35;
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page20PracticeSingleButton__popoverText;
  v160 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v48 = *(v158 + 32);
  v149 = v14;
  v158 += 32;
  v128 = v48;
  v48(v43 + v47, v18, v14);
  v49 = v155[2];
  v145 = v46;
  v150 = v24;
  v131 = v155 + 2;
  v130 = v49;
  v49(v31, v46, v24);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v160) = 0;
  v51 = v132;
  sub_23DB6EECC();
  v52 = *(v157 + 32);
  v53 = v133;
  v157 += 32;
  v52(v43 + v50, v51, v133);
  v54 = MEMORY[0x277D84F90];
  v148 = v31;
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v55 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v55 = MEMORY[0x277D84FA0];
  }

  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v55;
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v160 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v57 = v138;
  sub_23DB6EECC();
  (*(v139 + 32))(v43 + v56, v57, v140);
  *(v43 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v54;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v160 = 0;
  v59 = v143;
  sub_23DB6EECC();
  (*(v146 + 32))(v43 + v58, v59, v147);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v160) = 0;
  sub_23DB6EECC();
  v52(v43 + v60, v51, v53);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v146 = xmmword_23DB74320;
  v160 = xmmword_23DB74320;
  sub_23DB6EECC();
  v147 = v52;
  v62 = v149;
  v63 = v128;
  v128(v43 + v61, v18, v149);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v160 = v146;
  sub_23DB6EECC();
  v63(v43 + v64, v18, v62);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v160) = 0;
  sub_23DB6EECC();
  v147(v43 + v65, v51, v53);
  v66 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v160 = 0;
  *(&v160 + 1) = 0xE000000000000000;
  v67 = v141;
  sub_23DB6EECC();
  v129(v43 + v66, v67, v154);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v160 = 0uLL;
  sub_23DB6EECC();
  v63(v43 + v68, v18, v62);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v160 = nullsub_1;
  *(&v160 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v70 = v151;
  sub_23DB6EECC();
  (*(v152 + 32))(v43 + v69, v70, v153);
  v71 = v144;
  v72 = v148;
  v73 = v150;
  v130(v144, v148, v150);
  v74 = Page.init(id:title:text:subPages:iconName:)(v71, v137, v136, v135, v134, MEMORY[0x277D84F90], 0, 0);
  v75 = v155[1];
  v75(v145, v73);
  v75(v72, v73);
  swift_retain_n();
  v76 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v78 = v77;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v160 = v76;
  *(&v160 + 1) = v78;

  sub_23DB6EF1C();
  v79 = sub_23DB3DDA4();
  v81 = v80;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v160 = v79;
  *(&v160 + 1) = v81;
  sub_23DB6EF1C();
  v157 = "onboarding.vc.showNames.text";
  v82 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8E400);
  v84 = v83;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v160 = v82;
  *(&v160 + 1) = v84;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v160) = 1;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v85 = (type metadata accessor for CommandToPractice(0) - 8);
  v86 = *v85;
  v155 = *(*v85 + 72);
  v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v88 = swift_allocObject();
  v158 = v88;
  *(v88 + 16) = xmmword_23DB78D60;
  v89 = v88 + v87;
  LOBYTE(v160) = 49;
  v90 = sub_23DAA67F0(&v160, 0, 0);
  v92 = v91;
  *v89 = 0;
  *(v89 + 8) = 0xE000000000000000;
  *(v89 + 17) = 186;
  *(v89 + 19) = 0;
  v93 = v89 + v85[11];
  sub_23DB6EA7C();
  v94 = v85[12];
  *(v89 + v94) = 1;
  v95 = v85[13];
  *(v89 + v95) = 1;
  v96 = v85[14];
  v97 = type metadata accessor for KeyboardKey(0);
  v98 = *(v97 - 8);
  v99 = *(v98 + 56);
  v154 = v98 + 56;
  v99(v89 + v96, 1, 1, v97);
  v100 = (v89 + v85[15]);
  *v100 = 0;
  v100[1] = 0;
  v101 = *(v89 + 8);
  *v89 = v90;
  *(v89 + 8) = v92;

  *(v89 + 16) = -79;
  *(v89 + 19) = 1;
  v102 = v100[1];
  *v100 = 0;
  v100[1] = 0;

  *(v89 + v94) = 1;
  *(v89 + v95) = 1;
  v103 = v155 + v89;
  LOBYTE(v160) = 54;
  v104 = sub_23DAC7D28(0xD000000000000024, v157 | 0x8000000000000000);
  v106 = sub_23DAA67F0(&v160, v104, v105);
  v108 = v107;

  *v103 = 0;
  *(v103 + 1) = 0xE000000000000000;
  *(v103 + 17) = 186;
  v103[19] = 0;
  v109 = &v103[v85[11]];
  sub_23DB6EA7C();
  v110 = v85[12];
  v103[v110] = 1;
  v111 = v85[13];
  v103[v111] = 1;
  v99(&v103[v85[14]], 1, 1, v97);
  v112 = &v103[v85[15]];
  *v112 = 0;
  *(v112 + 1) = 0;
  v113 = *(v103 + 1);
  *v103 = v106;
  *(v103 + 1) = v108;

  v103[16] = -74;
  v103[19] = 0;
  v114 = *(v112 + 1);
  *v112 = 0;
  *(v112 + 1) = 0;

  v103[v110] = 1;
  v103[v111] = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v115 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v116 = *(v74 + v115);
  *(v74 + v115) = v158;

  v117 = swift_allocObject();
  swift_weakInit();
  v118 = swift_allocObject();
  v119 = v159;
  *(v118 + 16) = v117;
  *(v118 + 24) = v119;
  v120 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v121 = *v120;
  v122 = v120[1];
  *v120 = sub_23DB5FABC;
  v120[1] = v118;
  swift_retain_n();

  sub_23DA18BA0(v121);

  v123 = swift_allocObject();
  swift_weakInit();

  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v119;
  v125 = (v74 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v126 = v125[1];
  *v125 = sub_23DB5FAC4;
  v125[1] = v124;

  return v74;
}

uint64_t sub_23DB54A1C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v2 = v12[0];
    v3 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v13 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = sub_23DB6EEFC();
    sub_23DAC8040(&v13, v2, v5);
    v4(v12, 0);

    v6 = v13;
    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v7 = *(v1 + v3);
    *(v1 + v3) = v6;

    v8 = *(v1 + v3);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = *(type metadata accessor for CommandToPractice(0) - 8);
      if (*(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10 + 18) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v12[0] = 1;
        sub_23DB6EF1C();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

size_t sub_23DB54CAC()
{
  v180 = type metadata accessor for KeyboardKey(0);
  v178 = *(v180 - 8);
  v1 = *(v178 + 8);
  MEMORY[0x28223BE20](v180, v2);
  v176 = (&v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v175 = *(v177 - 1);
  v4 = *(v175 + 64);
  MEMORY[0x28223BE20](v177, v5);
  v174 = &v147 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v172 = *(v7 - 8);
  v173 = v7;
  v8 = *(v172 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v171 = &v147 - v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  *&v161 = *(v162 - 1);
  v11 = *(v161 + 64);
  MEMORY[0x28223BE20](v162, v12);
  v158 = &v147 - v13;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v153 = *(v155 - 8);
  v14 = *(v153 + 64);
  MEMORY[0x28223BE20](v155, v15);
  v152 = &v147 - v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v147 = *(v148 - 8);
  v17 = *(v147 + 64);
  MEMORY[0x28223BE20](v148, v18);
  v20 = &v147 - v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v21 = *(v179 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v179, v23);
  v25 = &v147 - v24;
  v26 = sub_23DB6EA8C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v165 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v147 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v147 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v147 - v41;
  v169 = 0xD00000000000001CLL;
  v160 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E310);
  v159 = v43;
  v181 = v0;
  v157 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8E330);
  v156 = v44;
  sub_23DB6EA7C();
  v45 = type metadata accessor for Page.PracticeKeyboardCommands(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v170 = v27;
  v49 = *(v27 + 16);
  v151 = v49;
  v166 = v42;
  v49(v38, v42, v26);
  v50 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page25PracticeCommandsCheckmark__currentIcon;
  v182 = 0uLL;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  sub_23DB6EECC();
  v51 = *(v21 + 32);
  v164 = v21 + 32;
  v149 = v51;
  v51(v48 + v50, v25, v179);
  v168 = v34;
  v167 = v38;
  v163 = v26;
  v154 = v27 + 16;
  v49(v34, v38, v26);
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v182) = 0;
  sub_23DB6EECC();
  v53 = *(v147 + 32);
  v54 = v20;
  v55 = v148;
  v53(v48 + v52, v20);
  v56 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v57 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v57 = MEMORY[0x277D84FA0];
  }

  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v57;
  v58 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v182 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  v59 = v56;
  v60 = v152;
  sub_23DB6EECC();
  (*(v153 + 32))(v48 + v58, v60, v155);
  *(v48 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v59;
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v182 = 0;
  v62 = v158;
  sub_23DB6EECC();
  (*(v161 + 32))(v48 + v61, v62, v162);
  v63 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v182) = 0;
  v64 = v54;
  sub_23DB6EECC();
  (v53)(v48 + v63, v54, v55);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v161 = xmmword_23DB74320;
  v182 = xmmword_23DB74320;
  sub_23DB6EECC();
  v66 = v179;
  v162 = v53;
  v67 = v149;
  v149(v48 + v65, v25, v179);
  v68 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v182 = v161;
  sub_23DB6EECC();
  v67(v48 + v68, v25, v66);
  v69 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v182) = 0;
  sub_23DB6EECC();
  v162(v48 + v69, v64, v55);
  v70 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v182 = 0;
  *(&v182 + 1) = 0xE000000000000000;
  v71 = v171;
  sub_23DB6EECC();
  (*(v172 + 32))(v48 + v70, v71, v173);
  v72 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v182 = 0uLL;
  sub_23DB6EECC();
  v67(v48 + v72, v25, v66);
  v73 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v182 = nullsub_1;
  *(&v182 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v74 = v174;
  sub_23DB6EECC();
  (*(v175 + 32))(v48 + v73, v74, v177);
  v75 = v165;
  v76 = v168;
  v77 = v163;
  v151(v165, v168, v163);
  v78 = Page.init(id:title:text:subPages:iconName:)(v75, v160, v159, v157, v156, MEMORY[0x277D84F90], 0, 0);
  v79 = *(v170 + 8);
  v79(v76, v77);
  v79(v167, v77);
  v79(v166, v77);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v179 = qword_27E30A6B0;
  swift_retain_n();
  v80 = sub_23DAC7D28(v169, 0x800000023DB8E110);
  v82 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v182 = v80;
  *(&v182 + 1) = v82;

  sub_23DB6EF1C();
  v83 = sub_23DB3DDA4();
  v85 = v84;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v182 = v83;
  *(&v182 + 1) = v85;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v182 = xmmword_23DB7E100;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v86 = (type metadata accessor for CommandToPractice(0) - 8);
  v87 = *(*v86 + 72);
  v88 = (*(*v86 + 80) + 32) & ~*(*v86 + 80);
  v174 = (2 * v87);
  v89 = swift_allocObject();
  v175 = v89;
  *(v89 + 16) = xmmword_23DB76A80;
  v170 = v88;
  v90 = v89 + v88;
  LOBYTE(v182) = 20;
  v91 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E350);
  v93 = sub_23DAA67F0(&v182, v91, v92);
  v173 = v94;

  v95 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E350);
  v96 = v176;
  *v176 = v95;
  *(v96 + 8) = v97;
  *(v96 + 32) = 0;
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  v98 = v180;
  v99 = v96 + *(v180 + 28);
  sub_23DB6EA7C();
  *v90 = 0;
  *(v90 + 8) = 0xE000000000000000;
  *(v90 + 17) = 186;
  *(v90 + 19) = 0;
  v100 = v90 + v86[11];
  sub_23DB6EA7C();
  *(v90 + v86[12]) = 1;
  *(v90 + v86[13]) = 1;
  v101 = v86[14];
  v102 = *(v178 + 7);
  v102(v90 + v101, 1, 1, v98);
  v177 = v102;
  v103 = (v90 + v86[15]);
  *v103 = 0;
  v103[1] = 0;
  v104 = *(v90 + 8);
  v105 = v173;
  *v90 = v93;
  *(v90 + 8) = v105;

  *(v90 + 16) = -107;
  sub_23DA17988(v90 + v101, &qword_27E2FC4F0, &qword_23DB74AB8);
  v178 = type metadata accessor for KeyboardKey;
  sub_23DB60970(v96, v90 + v101, type metadata accessor for KeyboardKey);
  v102(v90 + v101, 0, 1, v98);
  v171 = v87;
  v106 = &v87[v90];
  LOBYTE(v182) = 20;
  v107 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E380);
  v109 = sub_23DAA67F0(&v182, v107, v108);
  v172 = v110;
  v173 = v109;

  *v96 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E380);
  *(v96 + 8) = v111;
  *(v96 + 32) = 0;
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  v112 = v180;
  v113 = v96 + *(v180 + 28);
  sub_23DB6EA7C();
  *v106 = 0;
  *(v106 + 1) = 0xE000000000000000;
  *(v106 + 17) = 186;
  v106[19] = 0;
  v114 = &v106[v86[11]];
  sub_23DB6EA7C();
  v106[v86[12]] = 1;
  v106[v86[13]] = 1;
  v115 = v86[14];
  v116 = v177;
  (v177)(&v106[v115], 1, 1, v112);
  v117 = &v106[v86[15]];
  *v117 = 0;
  *(v117 + 1) = 0;
  v118 = *(v106 + 1);
  v119 = v172;
  *v106 = v173;
  *(v106 + 1) = v119;

  v106[16] = -105;
  sub_23DA17988(&v106[v115], &qword_27E2FC4F0, &qword_23DB74AB8);
  sub_23DB60970(v96, &v106[v115], v178);
  v116(&v106[v115], 0, 1, v112);
  v120 = &v174[v90];
  LOBYTE(v182) = 20;
  v121 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E3B0);
  v179 = sub_23DAA67F0(&v182, v121, v122);
  v174 = v123;

  *v96 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E3B0);
  *(v96 + 8) = v124;
  *(v96 + 32) = 0;
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  v125 = v96 + *(v112 + 28);
  sub_23DB6EA7C();
  *v120 = 0;
  *(v120 + 1) = 0xE000000000000000;
  *(v120 + 17) = 186;
  v120[19] = 0;
  v126 = &v120[v86[11]];
  sub_23DB6EA7C();
  v120[v86[12]] = 1;
  v120[v86[13]] = 1;
  v127 = v86[14];
  v128 = v177;
  (v177)(&v120[v127], 1, 1, v112);
  v129 = &v120[v86[15]];
  *v129 = 0;
  *(v129 + 1) = 0;
  v130 = *(v120 + 1);
  v131 = v174;
  *v120 = v179;
  *(v120 + 1) = v131;

  v120[16] = -106;
  sub_23DA17988(&v120[v127], &qword_27E2FC4F0, &qword_23DB74AB8);
  sub_23DB60970(v96, &v120[v127], v178);
  v128(&v120[v127], 0, 1, v112);
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v132 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v133 = *(v78 + v132);
  *(v78 + v132) = v175;

  v134 = *(v78 + v132);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DAC8B24(v134);
    v134 = result;
  }

  if (*(v134 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v171[v134 + 17 + v170] = -104;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v136 = *(v78 + v132);
    *(v78 + v132) = v134;

    v137 = swift_allocObject();
    swift_weakInit();
    v138 = swift_allocObject();
    v139 = v181;
    *(v138 + 16) = v137;
    *(v138 + 24) = v139;
    v140 = (v78 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
    swift_beginAccess();
    v141 = *v140;
    v142 = v140[1];
    *v140 = sub_23DB5FA0C;
    v140[1] = v138;

    sub_23DA18BA0(v141);

    v143 = swift_allocObject();
    swift_weakInit();

    v144 = swift_allocObject();
    *(v144 + 16) = v143;
    *(v144 + 24) = v139;
    v145 = (v78 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
    swift_beginAccess();
    v146 = v145[1];
    *v145 = sub_23DB5FA14;
    v145[1] = v144;

    return v78;
  }

  return result;
}

uint64_t sub_23DB55F38()
{
  v0 = sub_23DB707AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB707CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DB707EC();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v43 = v7;
    v44 = v5;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (LOBYTE(aBlock[0]) == 1)
    {
      v42 = v20;
      v38 = v11;
      v39 = v6;
      v40 = v1;
      v41 = v0;
      v23 = swift_allocObject();
      *(v23 + 16) = 1;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v24 = aBlock[0];
      v25 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v48 = *(v22 + v25);
      swift_getKeyPath();
      swift_getKeyPath();

      v26 = sub_23DB6EEFC();
      sub_23DAC8040(&v48, v24, v27);
      v26(aBlock, 0);

      v28 = v48;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v29 = *(v22 + v25);
      *(v22 + v25) = v28;

      if (qword_27E2FBBE0 != -1)
      {
        swift_once();
      }

      sub_23DB6BB30(&unk_284FE7F08);
      sub_23DA17988(&unk_284FE7F28, &qword_27E2FE318, &unk_23DB7BBD0);
      sub_23DAA66A8();

      sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
      v37 = sub_23DB70AEC();
      sub_23DB707DC();
      sub_23DB707FC();
      v45 = *(v45 + 8);
      (v45)(v16, v46);
      v30 = swift_allocObject();
      *(v30 + 16) = v22;
      *(v30 + 24) = v23;
      aBlock[4] = sub_23DB5FA4C;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_9;
      v31 = _Block_copy(aBlock);

      v32 = v38;
      sub_23DB707BC();
      v48 = MEMORY[0x277D84F90];
      sub_23DB60828(&qword_27E2FE2F0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0);
      v33 = v44;
      v34 = v41;
      sub_23DB70C0C();
      v35 = v42;
      v36 = v37;
      MEMORY[0x23EEF6E80](v42, v32, v33, v31);
      _Block_release(v31);

      (*(v40 + 8))(v33, v34);
      (*(v43 + 8))(v32, v39);
      (v45)(v35, v46);
    }
  }

  return result;
}

uint64_t sub_23DB565E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v48 = (&v46 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = (&v46 - v22);
  v24 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v25 = *(*(a1 + v24) + 16);
  v50 = *(a1 + v24);

  v49 = a2;
  result = swift_beginAccess();
  v27 = 0;
  v57 = (v11 + 48);
  v58 = (v11 + 56);
  v55 = v9;
  v47 = a1;
  v54 = v10;
  v53 = v19;
  v52 = v23;
  v56 = v24;
  for (i = v25; ; v25 = i)
  {
    if (v27 == v25)
    {
      v28 = 1;
      v27 = v25;
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v27 >= *(v50 + 16))
      {
        goto LABEL_27;
      }

      v29 = v50 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v27;
      v30 = *(v10 + 48);
      v31 = v48;
      *v48 = v27;
      sub_23DAC962C(v29, v31 + v30);
      sub_23DA17A54(v31, v19, &qword_27E2FE1C0, &qword_23DB7A440);
      v28 = 0;
      ++v27;
    }

    (*v58)(v19, v28, 1, v10);
    sub_23DA17A54(v19, v23, &qword_27E2FE1C8, &qword_23DB7A448);
    result = (*v57)(v23, 1, v10);
    if (result == 1)
    {
      break;
    }

    v32 = *v23;
    if ((*v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v33 = *(a1 + v24);
    if (v32 >= *(v33 + 16))
    {
      goto LABEL_24;
    }

    v34 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v35 = *(v60 + 72) * v32;
    sub_23DAC962C(v33 + v34 + v35, v9);
    v36 = &v9[*(v59 + 48)];
    v37 = type metadata accessor for KeyboardKey(0);
    v38 = *(*(v37 - 8) + 48);
    if (v38(v36, 1, v37))
    {
      result = sub_23DB5F554(v9);
    }

    else
    {
      v39 = v36[32];
      result = sub_23DB5F554(v9);
      if (v39)
      {
        v40 = sub_23DA1FF60(v62);
        v41 = sub_23DB3C59C(v61, v32);
        v43 = v42 + *(v59 + 48);
        if (!v38(v43, 1, v37))
        {
          *(v43 + 32) = 0;
        }

        v41(v61, 0);
        result = (v40)(v62, 0);
        a1 = v47;
      }
    }

    v24 = v56;
    v44 = *(a1 + v56);
    if (v32 >= *(v44 + 16))
    {
      goto LABEL_25;
    }

    if ((*(v44 + v34 + v35 + 18) & 1) == 0)
    {
      *(v49 + 16) = 0;
    }

    v10 = v54;
    v23 = v52;
    result = sub_23DB5F554(v52 + *(v54 + 48));
    v9 = v55;
    v19 = v53;
  }

  v45 = v49;
  result = swift_beginAccess();
  if (*(v45 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v61[0]) = 1;

    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DB56B2C()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E220);
  v9 = v8;
  v10 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8E250);
  v12 = v11;
  sub_23DB6EA7C();
  v13 = type metadata accessor for Page.PracticeShortText(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_23DA24B98(v6, v7, v9, v10, v12, MEMORY[0x277D84F90], 0, 0);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v74[1] = qword_27E30A6B0;
  swift_retain_n();
  v17 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v17;
  v81 = v19;

  sub_23DB6EF1C();
  v77 = v1;
  v20 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8AED0);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v20;
  v81 = v22;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v80) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v80) = 0;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v23 = (type metadata accessor for CommandToPractice(0) - 8);
  v24 = *v23;
  v75 = *(*v23 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v76 = v26;
  *(v26 + 16) = xmmword_23DB78D60;
  v27 = v26 + v25;
  LOBYTE(v80) = 20;
  v28 = sub_23DAC7D28(0xD00000000000002BLL, 0x800000023DB8E280);
  v30 = sub_23DAA67F0(&v80, v28, v29);
  v32 = v31;

  *v27 = 0;
  *(v27 + 8) = 0xE000000000000000;
  *(v27 + 17) = 186;
  *(v27 + 19) = 0;
  v33 = v27 + v23[11];
  sub_23DB6EA7C();
  v34 = v23[12];
  *(v27 + v34) = 1;
  v35 = v23[13];
  *(v27 + v35) = 1;
  v36 = v23[14];
  v37 = type metadata accessor for KeyboardKey(0);
  v74[0] = *(*(v37 - 8) + 56);
  (v74[0])(v27 + v36, 1, 1, v37);
  v38 = (v27 + v23[15]);
  *v38 = 0;
  v38[1] = 0;
  v39 = *(v27 + 8);
  *v27 = v30;
  *(v27 + 8) = v32;

  *(v27 + 16) = -102;
  *(v27 + 19) = 1;
  v40 = v38[1];
  *v38 = 0;
  v38[1] = 0;

  *(v27 + v34) = 1;
  *(v27 + v35) = 1;
  v41 = v27 + v75;
  LOBYTE(v80) = 20;
  v42 = sub_23DAC7D28(0xD00000000000002BLL, 0x800000023DB8E2B0);
  v44 = sub_23DAA67F0(&v80, v42, v43);
  v46 = v45;

  *v41 = 0;
  *(v41 + 8) = 0xE000000000000000;
  *(v41 + 17) = 186;
  *(v41 + 19) = 0;
  v47 = v41 + v23[11];
  sub_23DB6EA7C();
  v48 = v23[12];
  *(v41 + v48) = 1;
  v49 = v23[13];
  *(v41 + v49) = 1;
  (v74[0])(v41 + v23[14], 1, 1, v37);
  v50 = (v41 + v23[15]);
  *v50 = 0;
  v50[1] = 0;
  v51 = *(v41 + 8);
  *v41 = v44;
  *(v41 + 8) = v46;

  *(v41 + 16) = -103;
  *(v41 + 19) = 1;
  v52 = v50[1];
  *v50 = 0;
  v50[1] = 0;

  *(v41 + v48) = 1;
  *(v41 + v49) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v53 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v54 = *(v16 + v53);
  *(v16 + v53) = v76;

  v55 = v77;
  v56 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8E2E0);
  v58 = v57;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v56;
  v79 = v58;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v59 = v78;
  v60 = v79;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v59;
  v79 = v60;

  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v61 = v78;
  v62 = v79;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v61;
  v79 = v62;

  sub_23DB6EF1C();
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v55;
  v65 = v55;
  v66 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  *v66 = sub_23DB61064;
  v66[1] = v64;
  swift_retain_n();

  sub_23DA18BA0(v67);

  v69 = swift_allocObject();
  swift_weakInit();

  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = v65;
  v71 = (v16 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v72 = v71[1];
  *v71 = sub_23DB5F9E4;
  v71[1] = v70;

  return v16;
}

uint64_t sub_23DB573C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v37 = (&v36 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v40 = &v36 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    if (v41[0] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      v36 = v1;
      v15 = v41[0];
      v16 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
      swift_beginAccess();
      v42 = *(v14 + v16);
      swift_getKeyPath();
      swift_getKeyPath();

      v17 = sub_23DB6EEFC();
      sub_23DAC8040(&v42, v15, v18);
      v17(v41, 0);

      v19 = v42;
      type metadata accessor for Page.Practice(0);
      sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
      sub_23DB6EE6C();
      sub_23DB6EEBC();

      v20 = *(v14 + v16);
      *(v14 + v16) = v19;

      v21 = *(v14 + v16);
      v22 = *(v21 + 16);
      v38 = v16;
      v39 = (v36 + 56);
      v23 = (v36 + 48);

      i = 0;
      v25 = v40;
      if (v22)
      {
        goto LABEL_5;
      }

LABEL_4:
      v26 = 1;
      for (i = v22; ; ++i)
      {
        (*v39)(v9, v26, 1, v0);
        sub_23DA17A54(v9, v25, &qword_27E2FE1C8, &qword_23DB7A448);
        result = (*v23)(v25, 1, v0);
        if (result == 1)
        {

          swift_getKeyPath();
          swift_getKeyPath();
          v41[0] = 1;
          return sub_23DB6EF1C();
        }

        v31 = *v25;
        if ((*v25 & 0x8000000000000000) != 0)
        {
          break;
        }

        v32 = *(v14 + v38);
        if (v31 >= *(v32 + 16))
        {
          goto LABEL_19;
        }

        v33 = v0;
        v34 = *(v0 + 48);
        v35 = *(type metadata accessor for CommandToPractice(0) - 8);
        if ((*(v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31 + 18) & 1) == 0)
        {

          return sub_23DB5F554(&v40[v34]);
        }

        v25 = v40;
        result = sub_23DB5F554(&v40[v34]);
        v0 = v33;
        if (i == v22)
        {
          goto LABEL_4;
        }

LABEL_5:
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (i >= *(v21 + 16))
        {
          goto LABEL_21;
        }

        v27 = *(type metadata accessor for CommandToPractice(0) - 8);
        v28 = v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * i;
        v29 = *(v0 + 48);
        v30 = v37;
        *v37 = i;
        sub_23DAC962C(v28, v30 + v29);
        sub_23DA17A54(v30, v9, &qword_27E2FE1C0, &qword_23DB7A440);
        v26 = 0;
        v25 = v40;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_23DB57960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6, v9);
  v63 = (&v51 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v51 - v18);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = a3;
    v60 = a4;
    v21 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    v22 = result;
    swift_beginAccess();
    v61 = v21;
    v23 = *(v22 + v21);
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();

    v58 = KeyPath;
    v57 = v25;
    v26 = v23;
    v56 = sub_23DB6EEFC();
    v52 = v27;
    v28 = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v62 = v22;
    v55 = v28;
    v54 = v29;
    v53 = sub_23DB6EEFC();
    v51 = v30;

    v31 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v32 = 0;
    v33 = v7 + 7;
    v64 = v26;
    v26 = v26[2];
    v7 += 6;
    v34 = &qword_27E2FE1C8;
    if (!v26)
    {
LABEL_4:
      v35 = 1;
      v32 = v26;
      goto LABEL_7;
    }

    while (1)
    {
      v36 = v19;
      v19 = v7;
      v7 = v33;
      v37 = v26;
      v26 = v31;
      v38 = v34;
      v39 = v64;
      if (v32 >= v64[2])
      {
        goto LABEL_18;
      }

      v40 = *(type metadata accessor for CommandToPractice(0) - 8);
      v65 = (v32 + 1);
      v41 = v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32;
      v42 = *(v6 + 48);
      v43 = v63;
      *v63 = v32;
      sub_23DAC962C(v41, v43 + v42);
      sub_23DA17A54(v43, v15, &qword_27E2FE1C0, &qword_23DB7A440);
      v35 = 0;
      v32 = v65;
      v34 = v38;
      v31 = v26;
      v26 = v37;
      v33 = v7;
      v7 = v19;
      v19 = v36;
LABEL_7:
      (*v33)(v15, v35, 1, v6);
      sub_23DA17A54(v15, v19, v34, &qword_23DB7A448);
      if ((*v7)(v19, 1, v6) == 1)
      {
        break;
      }

      v44 = *v19;
      if ((*v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v31 = sub_23DAC8B24(v26);
        goto LABEL_3;
      }

      if (v44 >= *(v31 + 16))
      {
        goto LABEL_17;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DB5F554(v19 + *(v6 + 48));
      if (v32 == v26)
      {
        goto LABEL_4;
      }
    }

    *v51 = 0;
    *v52 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    sub_23DB6BB30(v59);
    sub_23DA17988(v60, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v53(v66, 0);

    v56(&v67, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v47 = v62;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v48 = *(v47 + v61);
    *(v47 + v61) = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C();

    v49 = v67;
    v50 = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v49;
    v68 = v50;

    sub_23DB6EF1C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v67) = 0;
    return sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DB58010()
{
  v1 = v0;
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v91 - v10;
  v12 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8E0D0);
  v14 = v13;
  v15 = sub_23DAC7D28(0xD00000000000001DLL, 0x800000023DB8E0F0);
  v17 = v16;
  sub_23DB6EA7C();
  v18 = type metadata accessor for Page.PracticeShortTextCapitalization(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  (*(v3 + 16))(v7, v11, v2);
  v21 = sub_23DA24B98(v7, v12, v14, v15, v17, MEMORY[0x277D84F90], 0, 0);
  (*(v3 + 8))(v11, v2);
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v99 = qword_27E30A6B0;
  swift_retain_n();
  v22 = sub_23DAC7D28(0xD00000000000001CLL, 0x800000023DB8E110);
  v24 = v23;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v22;
  v103 = v24;

  sub_23DB6EF1C();
  v25 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8AED0);
  v27 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v25;
  v103 = v27;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v102) = 0;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v102) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1B8, &qword_23DB7A438);
  v28 = (type metadata accessor for CommandToPractice(0) - 8);
  v29 = *(*v28 + 72);
  v30 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
  v94 = 2 * v29;
  v31 = swift_allocObject();
  v95 = v31;
  *(v31 + 16) = xmmword_23DB76A80;
  v32 = v31 + v30;
  LOBYTE(v102) = 40;
  v33 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8E130);
  v35 = sub_23DAA67F0(&v102, v33, v34);
  v92 = v36;

  *v32 = 0;
  *(v32 + 8) = 0xE000000000000000;
  *(v32 + 17) = 186;
  *(v32 + 19) = 0;
  v37 = v32 + v28[11];
  sub_23DB6EA7C();
  v38 = v28[12];
  v93 = v1;
  *(v32 + v38) = 1;
  v39 = v28[13];
  *(v32 + v39) = 1;
  v40 = v28[14];
  v97 = type metadata accessor for KeyboardKey(0);
  v41 = *(v97 - 8);
  v96 = *(v41 + 56);
  v98 = v41 + 56;
  v96(v32 + v40, 1, 1, v97);
  v42 = (v32 + v28[15]);
  *v42 = 0;
  v42[1] = 0;
  v43 = *(v32 + 8);
  v44 = v92;
  *v32 = v35;
  *(v32 + 8) = v44;

  *(v32 + 16) = -88;
  *(v32 + 19) = 1;
  v45 = v42[1];
  *v42 = 0;
  v42[1] = 0;

  *(v32 + v38) = 1;
  *(v32 + v39) = 1;
  v46 = v32 + v29;
  LOBYTE(v102) = 41;
  v47 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E160);
  v49 = sub_23DAA67F0(&v102, v47, v48);
  v51 = v50;

  *v46 = 0;
  *(v46 + 8) = 0xE000000000000000;
  *(v46 + 17) = 186;
  *(v46 + 19) = 0;
  v52 = v46 + v28[11];
  sub_23DB6EA7C();
  v53 = v28[12];
  *(v46 + v53) = 1;
  v54 = v28[13];
  *(v46 + v54) = 1;
  v96(v46 + v28[14], 1, 1, v97);
  v55 = (v46 + v28[15]);
  *v55 = 0;
  v55[1] = 0;
  v56 = *(v46 + 8);
  *v46 = v49;
  *(v46 + 8) = v51;

  *(v46 + 16) = -87;
  *(v46 + 19) = 1;
  v57 = v55[1];
  *v55 = 0;
  v55[1] = 0;

  *(v46 + v53) = 1;
  *(v46 + v54) = 1;
  v58 = v93;
  v59 = v32 + v94;
  LOBYTE(v102) = 42;
  v60 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E190);
  v62 = sub_23DAA67F0(&v102, v60, v61);
  v64 = v63;

  *v59 = 0;
  *(v59 + 8) = 0xE000000000000000;
  *(v59 + 17) = 186;
  *(v59 + 19) = 0;
  v65 = v59 + v28[11];
  sub_23DB6EA7C();
  v66 = v28[12];
  *(v59 + v66) = 1;
  v67 = v28[13];
  *(v59 + v67) = 1;
  v96(v59 + v28[14], 1, 1, v97);
  v68 = (v59 + v28[15]);
  *v68 = 0;
  v68[1] = 0;
  v69 = *(v59 + 8);
  *v59 = v62;
  *(v59 + 8) = v64;

  *(v59 + 16) = -86;
  *(v59 + 19) = 1;
  v70 = v68[1];
  *v68 = 0;
  v68[1] = 0;

  *(v59 + v66) = 1;
  *(v59 + v67) = 1;
  type metadata accessor for Page.Practice(0);
  sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
  sub_23DB6EE6C();
  sub_23DB6EEBC();

  v71 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
  swift_beginAccess();
  v72 = *(v21 + v71);
  *(v21 + v71) = v95;

  v73 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8E1C0);
  v75 = v74;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v73;
  v101 = v75;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  v76 = v100;
  v77 = v101;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v76;
  v101 = v77;
  sub_23DB6EF1C();
  v78 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8E1F0);
  v80 = v79;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v78;
  v101 = v80;
  sub_23DB6EF1C();
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v58;
  v83 = (v21 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v84 = *v83;
  v85 = v83[1];
  *v83 = sub_23DB61064;
  v83[1] = v82;
  swift_retain_n();

  sub_23DA18BA0(v84);

  v86 = swift_allocObject();
  swift_weakInit();

  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  *(v87 + 24) = v58;
  v88 = (v21 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didStartAction);
  swift_beginAccess();
  v89 = v88[1];
  *v88 = sub_23DB5F97C;
  v88[1] = v87;

  return v21;
}

uint64_t sub_23DB589EC()
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
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C();

    v16 = v63;
    v17 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = v16;
    v64 = v17;

    sub_23DB6EF1C();
    v18 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands;
    swift_beginAccess();
    v58 = v18;
    v19 = *(v15 + v18);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v56 = v21;
    v57 = KeyPath;
    v55 = sub_23DB6EEFC();
    v51 = v22;
    v23 = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v59 = v15;
    v54 = v23;
    v53 = v24;
    v52 = sub_23DB6EEFC();
    v50 = v25;

    v26 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    v27 = 0;
    v28 = (v1 + 56);
    v29 = v19[2];
    v1 += 48;
    if (!v29)
    {
LABEL_4:
      v30 = 1;
      v27 = v29;
      goto LABEL_7;
    }

    while (1)
    {
      if (v27 >= v19[2])
      {
        goto LABEL_18;
      }

      v31 = *(type metadata accessor for CommandToPractice(0) - 8);
      v61 = v27 + 1;
      v32 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v33 = *(v0 + 48);
      v34 = v1;
      v35 = v28;
      v36 = v13;
      v37 = v29;
      v38 = v0;
      v39 = v9;
      v40 = v26;
      v41 = v19;
      v42 = v60;
      *v60 = v27;
      sub_23DAC962C(v32, v42 + v33);
      v43 = v42;
      v19 = v41;
      v26 = v40;
      v9 = v39;
      v0 = v38;
      v29 = v37;
      v13 = v36;
      v28 = v35;
      v1 = v34;
      sub_23DA17A54(v43, v9, &qword_27E2FE1C0, &qword_23DB7A440);
      v30 = 0;
      v27 = v61;
LABEL_7:
      (*v28)(v9, v30, 1, v0);
      sub_23DA17A54(v9, v13, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v1)(v13, 1, v0) == 1)
      {
        break;
      }

      v44 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v26 = sub_23DAC8B24(v19);
        goto LABEL_3;
      }

      if (v44 >= *(v26 + 16))
      {
        goto LABEL_17;
      }

      v45 = *(type metadata accessor for CommandToPractice(0) - 8);
      v46 = v26 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      *(v46 + 18) = 0;
      *(v46 + 19) = v44 == 0;
      sub_23DB5F554(v13 + *(v0 + 48));
      if (v27 == v29)
      {
        goto LABEL_4;
      }
    }

    *v50 = 0;
    *v51 = 0;
    if (qword_27E2FBBE0 != -1)
    {
      swift_once();
    }

    sub_23DB6BB30(&unk_284FE7FC8);
    sub_23DA17988(&unk_284FE7FE8, &qword_27E2FE318, &unk_23DB7BBD0);
    sub_23DAA66A8();

    v52(v62, 0);

    v55(&v63, 0);

    type metadata accessor for Page.Practice(0);
    sub_23DB60828(&qword_27E2FC3C0, type metadata accessor for Page.Practice);
    v47 = v59;
    sub_23DB6EE6C();
    sub_23DB6EEBC();

    v48 = *(v47 + v58);
    *(v47 + v58) = v26;

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v63) = 0;
    sub_23DB6EF1C();
  }

  return result;
}

uint64_t sub_23DB59088()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v28 - v8;
  v10 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8E040);
  v12 = v11;
  v13 = sub_23DAC7D28(0xD000000000000021, 0x800000023DB8E070);
  v15 = v14;
  sub_23DB6EA7C();
  v16 = type metadata accessor for Page.SecondaryTOC(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  (*(v1 + 16))(v5, v9, v0);
  v19 = Page.init(id:title:text:subPages:iconName:)(v5, v10, v12, v13, v15, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v9, v0);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28[0]) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v20 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8E0A0);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v28[0] = v20;
  *(&v28[0] + 1) = v22;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v28[0] = xmmword_23DB82C40;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23DB7A030;
  *(v23 + 32) = sub_23DB3F334();
  *(v23 + 40) = sub_23DB40E20();
  *(v23 + 48) = sub_23DB3E160();
  *(v23 + 56) = sub_23DB455D0();
  *(v23 + 64) = sub_23DB5A3A8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v28[0] = v23;
  sub_23DB6EF1C();
  v24 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  sub_23DB5A0A0();

  return v19;
}

uint64_t sub_23DB5940C()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v28 - v8;
  v10 = sub_23DAC7D28(0xD000000000000024, 0x800000023DB8DFB0);
  v12 = v11;
  v13 = sub_23DAC7D28(0xD000000000000023, 0x800000023DB8DFE0);
  v15 = v14;
  sub_23DB6EA7C();
  v16 = type metadata accessor for Page.SecondaryTOC(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  (*(v1 + 16))(v5, v9, v0);
  v19 = Page.init(id:title:text:subPages:iconName:)(v5, v10, v12, v13, v15, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v9, v0);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v28[0]) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v20 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8E010);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v28[0] = v20;
  *(&v28[0] + 1) = v22;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v28[0] = xmmword_23DB82C50;
  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23DB7A060;
  *(v23 + 32) = sub_23DB421CC();
  *(v23 + 40) = sub_23DB470A8();
  *(v23 + 48) = sub_23DB48054();
  *(v23 + 56) = sub_23DB49978();
  *(v23 + 64) = sub_23DB4B704();
  *(v23 + 72) = sub_23DB4CE34();
  *(v23 + 80) = sub_23DB5AC84();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v28[0] = v23;
  sub_23DB6EF1C();
  v24 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];

  sub_23DB5A0A0();

  return v19;
}

uint64_t sub_23DB597A0()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v33 - v8;
  v10 = sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8DF20);
  v12 = v11;
  v13 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8DF40);
  v15 = v14;
  sub_23DB6EA7C();
  v16 = type metadata accessor for Page.SecondaryTOC(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  (*(v1 + 16))(v5, v9, v0);
  v19 = Page.init(id:title:text:subPages:iconName:)(v5, v10, v12, v13, v15, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v9, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v34) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v20 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8DF60);
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v20;
  v35 = v22;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = 0xD000000000000016;
  v35 = 0x800000023DB8DF90;
  sub_23DB6EF1C();
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 shouldShowCapitalizationPage];

  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_23DB74310;
    *(v25 + 32) = sub_23DB58010();
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v25;

    sub_23DB6EF1C();
  }

  v26 = sub_23DA1C310(&v34);
  if (*v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DB7E110;
    *(inited + 32) = sub_23DB43FC0();
    *(inited + 40) = sub_23DB4DD20();
    *(inited + 48) = sub_23DB5B560();
    sub_23DB3C864(inited);
  }

  (v26)(&v34, 0);
  v29 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];

  sub_23DB5A0A0();

  return v19;
}

uint64_t sub_23DB59C0C()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v36 - v8;
  v10 = sub_23DAC7D28(0xD000000000000029, 0x800000023DB8DE20);
  v12 = v11;
  v13 = sub_23DAC7D28(0xD000000000000028, 0x800000023DB8DE50);
  v15 = v14;
  sub_23DB6EA7C();
  v16 = type metadata accessor for Page.SecondaryTOC(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  (*(v1 + 16))(v5, v9, v0);
  v19 = Page.init(id:title:text:subPages:iconName:)(v5, v10, v12, v13, v15, MEMORY[0x277D84F90], 0, 0);
  (*(v1 + 8))(v9, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v37) = 0;
  swift_retain_n();
  sub_23DB6EF1C();
  v20 = objc_opt_self();
  v21 = [v20 currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22)
  {
    v23 = [v20 currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if (v24 == 1)
    {
      v25 = sub_23DAC7D28(0xD000000000000031, 0x800000023DB8DEA0);
      v27 = v26;
      swift_getKeyPath();
      swift_getKeyPath();
      v37 = v25;
      v38 = v27;

      sub_23DB6EF1C();
    }
  }

  else
  {
    v28 = sub_23DAC7D28(0xD000000000000033, 0x800000023DB8DEE0);
    v30 = v29;
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v28;
    v38 = v30;

    sub_23DB6EF1C();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v37 = 0xD000000000000019;
  v38 = 0x800000023DB8DE80;

  sub_23DB6EF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23DB7A080;
  *(v31 + 32) = sub_23DB51C30();
  *(v31 + 40) = sub_23DB53A6C();
  *(v31 + 48) = sub_23DB4F784();
  *(v31 + 56) = sub_23DB54CAC();
  *(v31 + 64) = sub_23DB56B2C();
  *(v31 + 72) = sub_23DB5BE3C();
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v31;

  sub_23DB6EF1C();
  v32 = (v19 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];

  sub_23DB5A0A0();

  return v19;
}

uint64_t sub_23DB5A0A0()
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
          swift_getKeyPath();
          swift_getKeyPath();

          sub_23DB6EF1C();
          type metadata accessor for Page.Practice(0);
          if (swift_dynamicCastClass())
          {

            sub_23DAC7D28(0xD000000000000020, 0x800000023DB8DDD0);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_23DB6EF1C();
            sub_23DAC7D28(0xD00000000000001FLL, 0x800000023DB8DE00);
            swift_getKeyPath();
            swift_getKeyPath();

            sub_23DB6EF1C();
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

uint64_t sub_23DB5A3A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v98 = *(v0 - 8);
  v99 = v0;
  v1 = *(v98 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v97 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v92 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v82 = &v73 - v11;
  *&v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v13);
  v77 = &v73 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v16);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v73 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v87 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v73 - v36;
  v38 = sub_23DAC7D28(0xD00000000000002ALL, 0x800000023DB8DDA0);
  v85 = v39;
  v86 = v38;
  v40 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DD40);
  v83 = v41;
  v84 = v40;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.CollectionFinished(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v89 = v33;
  v90 = v26;
  v46 = *(v26 + 16);
  v88 = v37;
  v91 = v25;
  v79 = v26 + 16;
  v78 = v46;
  v46(v33, v37, v25);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v48 = v19;
  v74 = *(v20 + 32);
  v74(v45 + v47, v24, v19);
  v49 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v50 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v50 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v50;
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v100 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v75 + 32))(v45 + v51, v18, v76);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v49;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v100 = 0;
  v53 = v77;
  sub_23DB6EECC();
  (*(v80 + 32))(v45 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v73 = v48;
  v55 = v74;
  v74(v45 + v54, v24, v48);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v81 = xmmword_23DB74320;
  v100 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v57 = v82;
  sub_23DB6EECC();
  v58 = v94;
  v59 = *(v93 + 32);
  v59(v45 + v56, v57, v94);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v100 = v81;
  sub_23DB6EECC();
  v59(v45 + v60, v57, v58);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v55(v45 + v61, v24, v73);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v63 = v92;
  sub_23DB6EECC();
  (*(v95 + 32))(v45 + v62, v63, v96);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v100 = 0uLL;
  sub_23DB6EECC();
  v59(v45 + v64, v57, v58);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v100 = nullsub_1;
  *(&v100 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v66 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v45 + v65, v66, v99);
  v67 = v87;
  v68 = v89;
  v69 = v91;
  v78(v87, v89, v91);
  v70 = Page.init(id:title:text:subPages:iconName:)(v67, v86, v85, v84, v83, MEMORY[0x277D84F90], 0, 0);
  v71 = *(v90 + 8);
  v71(v68, v69);
  v71(v88, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v100 = 0xD000000000000013;
  *(&v100 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v70;
}

uint64_t sub_23DB5AC84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v98 = *(v0 - 8);
  v99 = v0;
  v1 = *(v98 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v97 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v92 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v82 = &v73 - v11;
  *&v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v13);
  v77 = &v73 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v16);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v73 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v87 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v73 - v36;
  v38 = sub_23DAC7D28(0xD00000000000002CLL, 0x800000023DB8DD70);
  v85 = v39;
  v86 = v38;
  v40 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DD40);
  v83 = v41;
  v84 = v40;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.CollectionFinished(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v89 = v33;
  v90 = v26;
  v46 = *(v26 + 16);
  v88 = v37;
  v91 = v25;
  v79 = v26 + 16;
  v78 = v46;
  v46(v33, v37, v25);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v48 = v19;
  v74 = *(v20 + 32);
  v74(v45 + v47, v24, v19);
  v49 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v50 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v50 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v50;
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v100 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v75 + 32))(v45 + v51, v18, v76);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v49;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v100 = 0;
  v53 = v77;
  sub_23DB6EECC();
  (*(v80 + 32))(v45 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v73 = v48;
  v55 = v74;
  v74(v45 + v54, v24, v48);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v81 = xmmword_23DB74320;
  v100 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v57 = v82;
  sub_23DB6EECC();
  v58 = v94;
  v59 = *(v93 + 32);
  v59(v45 + v56, v57, v94);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v100 = v81;
  sub_23DB6EECC();
  v59(v45 + v60, v57, v58);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v55(v45 + v61, v24, v73);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v63 = v92;
  sub_23DB6EECC();
  (*(v95 + 32))(v45 + v62, v63, v96);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v100 = 0uLL;
  sub_23DB6EECC();
  v59(v45 + v64, v57, v58);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v100 = nullsub_1;
  *(&v100 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v66 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v45 + v65, v66, v99);
  v67 = v87;
  v68 = v89;
  v69 = v91;
  v78(v87, v89, v91);
  v70 = Page.init(id:title:text:subPages:iconName:)(v67, v86, v85, v84, v83, MEMORY[0x277D84F90], 0, 0);
  v71 = *(v90 + 8);
  v71(v68, v69);
  v71(v88, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v100 = 0xD000000000000013;
  *(&v100 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v70;
}

uint64_t sub_23DB5B560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v98 = *(v0 - 8);
  v99 = v0;
  v1 = *(v98 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v97 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v92 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v82 = &v73 - v11;
  *&v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v13);
  v77 = &v73 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v16);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v73 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v87 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v73 - v36;
  v38 = sub_23DAC7D28(0xD000000000000027, 0x800000023DB8DD10);
  v85 = v39;
  v86 = v38;
  v40 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DD40);
  v83 = v41;
  v84 = v40;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.CollectionFinished(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v89 = v33;
  v90 = v26;
  v46 = *(v26 + 16);
  v88 = v37;
  v91 = v25;
  v79 = v26 + 16;
  v78 = v46;
  v46(v33, v37, v25);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v48 = v19;
  v74 = *(v20 + 32);
  v74(v45 + v47, v24, v19);
  v49 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v50 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v50 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v50;
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v100 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v75 + 32))(v45 + v51, v18, v76);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v49;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v100 = 0;
  v53 = v77;
  sub_23DB6EECC();
  (*(v80 + 32))(v45 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v73 = v48;
  v55 = v74;
  v74(v45 + v54, v24, v48);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v81 = xmmword_23DB74320;
  v100 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v57 = v82;
  sub_23DB6EECC();
  v58 = v94;
  v59 = *(v93 + 32);
  v59(v45 + v56, v57, v94);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v100 = v81;
  sub_23DB6EECC();
  v59(v45 + v60, v57, v58);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v55(v45 + v61, v24, v73);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v63 = v92;
  sub_23DB6EECC();
  (*(v95 + 32))(v45 + v62, v63, v96);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v100 = 0uLL;
  sub_23DB6EECC();
  v59(v45 + v64, v57, v58);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v100 = nullsub_1;
  *(&v100 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v66 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v45 + v65, v66, v99);
  v67 = v87;
  v68 = v89;
  v69 = v91;
  v78(v87, v89, v91);
  v70 = Page.init(id:title:text:subPages:iconName:)(v67, v86, v85, v84, v83, MEMORY[0x277D84F90], 0, 0);
  v71 = *(v90 + 8);
  v71(v68, v69);
  v71(v88, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v100 = 0xD000000000000013;
  *(&v100 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v70;
}

uint64_t sub_23DB5BE3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3D8, &unk_23DB7A300);
  v98 = *(v0 - 8);
  v99 = v0;
  v1 = *(v98 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v97 = &v73 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBD50, &unk_23DB73780);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v92 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2C8, &unk_23DB7A310);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v82 = &v73 - v11;
  *&v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEC0, &qword_23DB73C80);
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v81, v13);
  v77 = &v73 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3B0, &unk_23DB7A320);
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v76, v16);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBED8, &unk_23DB7E290);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v73 - v23;
  v25 = sub_23DB6EA8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v87 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v73 - v36;
  v38 = sub_23DAC7D28(0xD000000000000026, 0x800000023DB8DC90);
  v85 = v39;
  v86 = v38;
  v40 = sub_23DAC7D28(0xD000000000000025, 0x800000023DB8DCC0);
  v83 = v41;
  v84 = v40;
  sub_23DB6EA7C();
  v42 = type metadata accessor for Page.CollectionFinished(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v89 = v33;
  v90 = v26;
  v46 = *(v26 + 16);
  v88 = v37;
  v91 = v25;
  v79 = v26 + 16;
  v78 = v46;
  v46(v33, v37, v25);
  v47 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__finishedPractice;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v48 = v19;
  v74 = *(v20 + 32);
  v74(v45 + v47, v24, v19);
  v49 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v50 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v50 = MEMORY[0x277D84FA0];
  }

  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_subscribers) = v50;
  v51 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__practiceItems;
  *&v100 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC3F0, &unk_23DB74790);
  sub_23DB6EECC();
  (*(v75 + 32))(v45 + v51, v18, v76);
  *(v45 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice_commands) = v49;
  v52 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__currentCommandIndex;
  *&v100 = 0;
  v53 = v77;
  sub_23DB6EECC();
  (*(v80 + 32))(v45 + v52, v53, v81);
  v54 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__commandsOrdered;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v73 = v48;
  v55 = v74;
  v74(v45 + v54, v24, v48);
  v56 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextHeader;
  v81 = xmmword_23DB74320;
  v100 = xmmword_23DB74320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC358, &qword_23DB74690);
  v57 = v82;
  sub_23DB6EECC();
  v58 = v94;
  v59 = *(v93 + 32);
  v59(v45 + v56, v57, v94);
  v60 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__successTextBody;
  v100 = v81;
  sub_23DB6EECC();
  v59(v45 + v60, v57, v58);
  v61 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__showFeatureOffWarning;
  LOBYTE(v100) = 0;
  sub_23DB6EECC();
  v55(v45 + v61, v24, v73);
  v62 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningText;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v63 = v92;
  sub_23DB6EECC();
  (*(v95 + 32))(v45 + v62, v63, v96);
  v64 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonText;
  v100 = 0uLL;
  sub_23DB6EECC();
  v59(v45 + v64, v57, v58);
  v65 = OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page8Practice__featureOffWarningButtonAction;
  *&v100 = nullsub_1;
  *(&v100 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC428, &unk_23DB7A330);
  v66 = v97;
  sub_23DB6EECC();
  (*(v98 + 32))(v45 + v65, v66, v99);
  v67 = v87;
  v68 = v89;
  v69 = v91;
  v78(v87, v89, v91);
  v70 = Page.init(id:title:text:subPages:iconName:)(v67, v86, v85, v84, v83, MEMORY[0x277D84F90], 0, 0);
  v71 = *(v90 + 8);
  v71(v68, v69);
  v71(v88, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v100 = 0xD000000000000013;
  *(&v100 + 1) = 0x800000023DB8DCF0;

  sub_23DB6EF1C();
  return v70;
}

uint64_t sub_23DB5C718()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v43 - v9;
  v44 = v0;
  v11 = sub_23DAC7D28(0xD00000000000001BLL, 0x800000023DB8F040);
  v13 = v12;
  v14 = sub_23DAC7D28(0xD000000000000022, 0x800000023DB8EF30);
  v16 = v15;
  sub_23DB6EA7C();
  v17 = type metadata accessor for Page.PrimaryTOC(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = (swift_allocObject() + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v20 = 0;
  v20[1] = 0;
  (*(v2 + 16))(v6, v10, v1);
  v21 = Page.init(id:title:text:subPages:iconName:)(v6, v11, v13, v14, v16, MEMORY[0x277D84F90], 0, 0);
  (*(v2 + 8))(v10, v1);
  v22 = v21 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName;
  swift_beginAccess();
  v23 = *(v22 + 8);
  *v22 = xmmword_23DB82C60;

  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = xmmword_23DB7A020;
  swift_retain_n();
  sub_23DB6EF1C();
  v24 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8F060);
  v26 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v46 = v24;
  *(&v46 + 1) = v26;
  sub_23DB6EF1C();
  v27 = sub_23DAC7D28(0xD00000000000001ELL, 0x800000023DB8F080);
  v29 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v46 = v27;
  *(&v46 + 1) = v29;
  sub_23DB6EF1C();
  v30 = sub_23DAC7D28(0xD000000000000020, 0x800000023DB8F0A0);
  v32 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v46 = v30;
  *(&v46 + 1) = v32;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v46) = 1;
  sub_23DB6EF1C();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v46) = 1;
  sub_23DB6EF1C();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  v36 = (v21 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_updateFromExternalState);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  *v36 = sub_23DB60F7C;
  v36[1] = v35;

  sub_23DA18BA0(v37);

  v39 = (v21 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_didEndAction);
  swift_beginAccess();
  v40 = v39[1];
  *v39 = sub_23DB5CDD4;
  v39[1] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_23DB7E0F0;
  *(v41 + 32) = sub_23DB59088();
  *(v41 + 40) = sub_23DB5940C();
  *(v41 + 48) = sub_23DB597A0();
  *(v41 + 56) = sub_23DB59C0C();
  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v41;
  sub_23DB6EF1C();
  return v21;
}

uint64_t sub_23DB5CC8C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C();

      if (v1)
      {
        sub_23DB3D95C();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF1C();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_23DB5CDD4()
{
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 voiceControlEnabled];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 sharedInstance];
    [v3 enableVoiceControl_];
  }
}

uint64_t sub_23DB5CEC0(uint64_t *a1, unint64_t *a2)
{
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v39 - v8;
  if (qword_27E2FBBE0 != -1)
  {
    swift_once();
  }

  v10 = qword_27E30A6B0;
  v11 = *(qword_27E30A6B0 + 16);
  result = swift_beginAccess();
  if (*(v11 + 40) != 1)
  {
    return result;
  }

  v13 = *(v10 + 72);
  swift_beginAccess();
  v14 = *v43;
  if ((*v43 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = *a1;
  if (v14 >= *(*a1 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = *(v13 + 40);
  result = type metadata accessor for CommandToPractice(0);
  v40 = result;
  v15 = *(result - 8);
  v42 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v39 = *(v15 + 72);
  v3 = v39 * v14;
  v16 = v2 + v42 + v39 * v14;
  v17 = v16[16];
  v18 = v16[17];
  if (v17 < 0)
  {
    v41 = a1;
    LOBYTE(v44[0]) = v13;
    v45 = v17 & 0x7F;
    v25 = VCCommandIdentifier.rawValue.getter();
    v27 = v26;
    v28 = VCCommandIdentifier.rawValue.getter();
    v11 = v29;
    if (v25 == v28 && v27 == v29)
    {
LABEL_14:

      a1 = v41;
      goto LABEL_16;
    }

    v30 = sub_23DB70DBC();

    a1 = v41;
    if (v30)
    {
      goto LABEL_16;
    }
  }

  if ((v18 & 0x80000000) == 0)
  {
    return result;
  }

  v41 = a1;
  LOBYTE(v44[0]) = v13;
  v45 = v18 & 0x7F;
  v19 = VCCommandIdentifier.rawValue.getter();
  v21 = v20;
  v22 = VCCommandIdentifier.rawValue.getter();
  v11 = v23;
  if (v19 == v22 && v21 == v23)
  {
    goto LABEL_14;
  }

  v24 = sub_23DB70DBC();

  a1 = v41;
  if ((v24 & 1) == 0)
  {
    return result;
  }

LABEL_16:
  if (v14 < v2[2])
  {
    if (v16[18])
    {
      return result;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v2 = sub_23DAC8B24(v2);
LABEL_19:
  if (v14 >= v2[2])
  {
    __break(1u);
LABEL_34:
    result = sub_23DAC8B24(v11);
    v11 = result;
LABEL_26:
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v11 + v42 + v39 * v13 + 19) = 1;
      *a1 = v11;
    }

    return result;
  }

  v31 = v2 + v42 + v3;
  v31[18] = 1;
  *a1 = v2;
  v32 = v40;
  sub_23DB5F5B0(&v31[*(v40 + 48)], v9);
  v33 = type metadata accessor for KeyboardKey(0);
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v9, 1, v33);
  result = sub_23DA17988(v9, &qword_27E2FC4F0, &qword_23DB74AB8);
  if (v35 != 1)
  {
    v36 = sub_23DB3C59C(v44, v14);
    v38 = v37 + *(v32 + 48);
    if (!v34(v38, 1, v33))
    {
      *(v38 + 32) = 1;
    }

    result = v36(v44, 0);
  }

  v13 = v14 + 1;
  v11 = *a1;
  if (v14 + 1 < *(*a1 + 16))
  {
    *v43 = v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  return result;
}

size_t sub_23DB5D308(uint64_t a1, int a2)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v55 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C0, &qword_23DB7A440);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v56 = (&v55 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1C8, &qword_23DB7A448);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v55 - v19;
  if (qword_27E2FBBE0 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v63 = qword_27E30A6B0;
    v21 = *(qword_27E30A6B0 + 16);
    result = swift_beginAccess();
    if (*(v21 + 40) != 1)
    {
      return result;
    }

    v23 = *a1;
    v24 = *(*a1 + 16);
    v61 = (v8 + 48);
    v62 = (v8 + 56);

    v66 = 0;
    v25 = 0;
    v64 = a1;
    v59 = v7;
    v60 = v20;
    v58 = v16;
    v57 = v24;
    while (1)
    {
      if (v25 == v24)
      {
        v28 = 1;
        v8 = v24;
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v25 >= *(v23 + 16))
        {
          goto LABEL_48;
        }

        v29 = *(type metadata accessor for CommandToPractice(0) - 8);
        v30 = v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25;
        v31 = *(v7 + 48);
        v32 = v56;
        *v56 = v25;
        sub_23DAC962C(v30, v32 + v31);
        sub_23DA17A54(v32, v16, &qword_27E2FE1C0, &qword_23DB7A440);
        v28 = 0;
        v8 = v25 + 1;
      }

      (*v62)(v16, v28, 1, v7);
      sub_23DA17A54(v16, v20, &qword_27E2FE1C8, &qword_23DB7A448);
      if ((*v61)(v20, 1, v7) == 1)
      {
      }

      v33 = *v20;
      v34 = *(v7 + 48);
      if (v65 & v66)
      {

        v8 = *a1;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          goto LABEL_52;
        }

        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      v35 = *(v63 + 72);
      swift_beginAccess();
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      v68 = v8;
      v69 = v34;
      v34 = *a1;
      if (v33 >= *(*a1 + 16))
      {
        goto LABEL_46;
      }

      v36 = *(v35 + 40);
      v37 = type metadata accessor for CommandToPractice(0);
      v16 = ((*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80));
      v7 = *(*(v37 - 8) + 72) * v33;
      v38 = &v16[v34 + v7];
      v39 = v38[16];
      v20 = v38[17];
      v67 = v37;
      if ((v39 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      LOBYTE(v70[0]) = v36;
      v71 = v39 & 0x7F;
      v45 = VCCommandIdentifier.rawValue.getter();
      v47 = v46;
      if (v45 != VCCommandIdentifier.rawValue.getter() || v47 != v48)
      {
        v49 = sub_23DB70DBC();

        a1 = v64;
        v8 = v67;
        if (v49)
        {
          goto LABEL_28;
        }

LABEL_19:
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        LOBYTE(v70[0]) = v36;
        v71 = v20 & 0x7F;
        v40 = VCCommandIdentifier.rawValue.getter();
        v42 = v41;
        if (v40 != VCCommandIdentifier.rawValue.getter() || v42 != v43)
        {
          v44 = sub_23DB70DBC();

          a1 = v64;
          v8 = v67;
          if ((v44 & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }
      }

      a1 = v64;
      v8 = v67;
LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_23DAC8B24(v34);
      }

      if (v33 >= *(v34 + 16))
      {
        goto LABEL_49;
      }

      v50 = &v16[v34 + v7];
      v50[18] = 1;
      *a1 = v34;
      v51 = v55;
      sub_23DB5F5B0(&v50[*(v8 + 48)], v55);
      v8 = a1;
      a1 = type metadata accessor for KeyboardKey(0);
      v20 = *(*(a1 - 8) + 48);
      v52 = (v20)(v51, 1, a1);
      sub_23DA17988(v51, &qword_27E2FC4F0, &qword_23DB74AB8);
      if (v52 != 1)
      {
        v8 = sub_23DB3C59C(v70, v33);
        v27 = v26 + *(v67 + 48);
        if ((v20)(v27, 1, a1))
        {
          (v8)(v70, 0);
LABEL_6:
          v66 = 1;
        }

        else
        {
          v66 = 1;
          *(v27 + 32) = 1;
          (v8)(v70, 0);
        }

        a1 = v64;
        goto LABEL_8;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (v33 >= *(v34 + 16))
      {
        __break(1u);
LABEL_52:
        result = sub_23DAC8B24(v8);
        v8 = result;
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

LABEL_40:
        if (v33 < *(v8 + 16))
        {
          v53 = *(type metadata accessor for CommandToPractice(0) - 8);
          *(v8 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33 + 19) = 1;
          *a1 = v8;
          v54 = v20 + v34;
          return sub_23DB5F554(v54);
        }

        goto LABEL_54;
      }

      a1 = v64;
      if ((v50[18] & 1) == 0)
      {

        v54 = v60 + v69;
        return sub_23DB5F554(v54);
      }

      v66 = 1;
LABEL_8:
      v20 = v60;
      sub_23DB5F554(v60 + v69);
      v7 = v59;
      v16 = v58;
      v24 = v57;
      v25 = v68;
    }

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
    swift_once();
  }
}

uint64_t sub_23DB5DAA8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 != 9223407 || a2 != 0xA300000000000000) && (sub_23DB70DBC() & 1) == 0)
  {
    if (sub_23DAC7D28(0xD00000000000002DLL, 0x800000023DB8DC60) == v3 && v4 == a2)
    {
    }

    else
    {
      v6 = sub_23DB70DBC();

      if ((v6 & 1) == 0)
      {
        if ((v3 != 63 || a2 != 0xE100000000000000) && (sub_23DB70DBC() & 1) == 0)
        {
          if (sub_23DAC7D28(0xD000000000000034, 0x800000023DB8DC20) == v3 && v7 == a2)
          {
          }

          else
          {
            v11 = sub_23DB70DBC();

            if ((v11 & 1) == 0)
            {
              if (sub_23DAC7D28(0xD00000000000002FLL, 0x800000023DB8DBF0) == v3 && v13 == a2)
              {
              }

              else
              {
                v14 = sub_23DB70DBC();

                if ((v14 & 1) == 0)
                {
                  if (sub_23DAC7D28(0xD00000000000003CLL, 0x800000023DB8DBB0) == v3 && v15 == a2)
                  {
                  }

                  else
                  {
                    v16 = sub_23DB70DBC();

                    if ((v16 & 1) == 0)
                    {
                      if (sub_23DAC7D28(0xD00000000000003FLL, 0x800000023DB8DB70) == v3 && v17 == a2)
                      {
                      }

                      else
                      {
                        v18 = sub_23DB70DBC();

                        if ((v18 & 1) == 0)
                        {
                          if (sub_23DAC7D28(0xD000000000000037, 0x800000023DB8DB30) == v3 && v19 == a2)
                          {
                          }

                          else
                          {
                            v20 = sub_23DB70DBC();

                            if ((v20 & 1) == 0)
                            {

                              return v3;
                            }
                          }

                          v12 = ".string.invertedExclamationMark";
                          v9 = 0xD000000000000037;
                          goto LABEL_21;
                        }
                      }

                      v12 = ".string.invertedQuestionMark";
                      v9 = 0xD00000000000003FLL;
LABEL_21:
                      v8 = v12 | 0x8000000000000000;
                      return sub_23DAC7D28(v9, v8);
                    }
                  }

                  v12 = "nctuationCommand.string.newLine";
                  v9 = 0xD00000000000003CLL;
                  goto LABEL_21;
                }
              }

              v12 = ".string.questionMark";
              v9 = 0xD00000000000002FLL;
              goto LABEL_21;
            }
          }
        }

        v12 = "nctuationCommand.string.comma";
        v9 = 0xD000000000000034;
        goto LABEL_21;
      }
    }
  }

  v8 = 0x800000023DB8D9D0;
  v9 = 0xD00000000000002DLL;
  return sub_23DAC7D28(v9, v8);
}

uint64_t sub_23DB5DDFC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_23DAC7D28(0xD00000000000002DLL, 0x800000023DB8D9D0) == a1 && v4 == a2)
  {
  }

  else
  {
    v6 = sub_23DB70DBC();

    if ((v6 & 1) == 0)
    {
      if (sub_23DAC7D28(0xD000000000000034, 0x800000023DB8DA00) == v3 && v7 == a2)
      {
      }

      else
      {
        v10 = sub_23DB70DBC();

        if ((v10 & 1) == 0)
        {
          if (sub_23DAC7D28(0xD00000000000002FLL, 0x800000023DB8DA40) == v3 && v13 == a2)
          {
          }

          else
          {
            v14 = sub_23DB70DBC();

            if ((v14 & 1) == 0)
            {
              if (sub_23DAC7D28(0xD00000000000003CLL, 0x800000023DB8DA70) == v3 && v15 == a2)
              {
              }

              else
              {
                v16 = sub_23DB70DBC();

                if ((v16 & 1) == 0)
                {
                  if (sub_23DAC7D28(0xD00000000000003FLL, 0x800000023DB8DAB0) == v3 && v17 == a2)
                  {
                  }

                  else
                  {
                    v18 = sub_23DB70DBC();

                    if ((v18 & 1) == 0)
                    {
                      if (sub_23DAC7D28(0xD000000000000037, 0x800000023DB8DAF0) == v3 && v19 == a2)
                      {
                      }

                      else
                      {
                        v20 = sub_23DB70DBC();

                        if ((v20 & 1) == 0)
                        {

                          return v3;
                        }
                      }

                      v11 = ".string.exclamationMark";
                      v9 = 0xD000000000000037;
                      goto LABEL_13;
                    }
                  }

                  v11 = ".symbol.exclamationMark";
                  v9 = 0xD00000000000003FLL;
LABEL_13:
                  v8 = v11 | 0x8000000000000000;
                  return sub_23DAC7D28(v9, v8);
                }
              }

              v11 = ".symbol.invertedExclamationMark";
              v9 = 0xD00000000000003CLL;
              goto LABEL_13;
            }
          }

          v11 = ".symbol.invertedQuestionMark";
          v9 = 0xD00000000000002FLL;
          goto LABEL_13;
        }
      }

      v11 = "nctuationCommand.symbol.newLine";
      v9 = 0xD000000000000034;
      goto LABEL_13;
    }
  }

  v8 = 0x800000023DB8DC60;
  v9 = 0xD00000000000002DLL;
  return sub_23DAC7D28(v9, v8);
}

char *sub_23DB5E0E4(uint64_t a1, unint64_t a2, int a3)
{
  v47 = a3;
  v5 = sub_23DB6E92C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2FBC20 != -1)
  {
LABEL_32:
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27E30A748);
  v44 = v6;
  v45 = v5;
  (*(v6 + 16))(v10, v11, v5);
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  v48 = 4 * v12;
  v49 = v13 | (v12 << 16);
  v50 = a1;
  v51 = a2;
  v14 = MEMORY[0x277D84F90];
  v5 = 15;
  sub_23DA16E70();
  v15 = 0;
  v46 = v10;
  while (1)
  {
    v16 = sub_23DB70B9C();
    if (v18)
    {
      break;
    }

    v6 = v16;
    v19 = v17;
    if (v16 >> 14 != v15)
    {
      if (v16 >> 14 < v15)
      {
        goto LABEL_31;
      }

      v20 = sub_23DB709BC();
      v21 = MEMORY[0x23EEF6CA0](v20);
      v23 = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_23DAC82F8(0, *(v14 + 2) + 1, 1, v14);
      }

      v25 = *(v14 + 2);
      v24 = *(v14 + 3);
      if (v25 >= v24 >> 1)
      {
        v14 = sub_23DAC82F8((v24 > 1), v25 + 1, 1, v14);
      }

      *(v14 + 2) = v25 + 1;
      v26 = &v14[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      v10 = v46;
    }

    v27 = sub_23DB709BC();
    v6 = MEMORY[0x23EEF6CA0](v27);
    v29 = v28;

    if (v47)
    {
      v6 = sub_23DB5DAA8(v6, v29);
      v31 = v30;

      v29 = v31;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23DAC82F8(0, *(v14 + 2) + 1, 1, v14);
    }

    v33 = *(v14 + 2);
    v32 = *(v14 + 3);
    if (v33 >= v32 >> 1)
    {
      v14 = sub_23DAC82F8((v32 > 1), v33 + 1, 1, v14);
    }

    *(v14 + 2) = v33 + 1;
    v34 = &v14[16 * v33];
    *(v34 + 4) = v6;
    *(v34 + 5) = v29;
    v50 = a1;
    v51 = a2;
    v15 = v19 >> 14;
    v5 = v19;
    if (v48 < v19 >> 14)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  if (v15 == v48)
  {
    (*(v44 + 8))(v10, v45);
  }

  else
  {
    v35 = sub_23DB709BC();
    v36 = MEMORY[0x23EEF6CA0](v35);
    v38 = v37;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23DAC82F8(0, *(v14 + 2) + 1, 1, v14);
    }

    v40 = *(v14 + 2);
    v39 = *(v14 + 3);
    if (v40 >= v39 >> 1)
    {
      v14 = sub_23DAC82F8((v39 > 1), v40 + 1, 1, v14);
    }

    (*(v44 + 8))(v10, v45);
    *(v14 + 2) = v40 + 1;
    v41 = &v14[16 * v40];
    *(v41 + 4) = v36;
    *(v41 + 5) = v38;
  }

  return v14;
}

uint64_t AXOnboardingModelVoiceControl.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceControl_subscribers);

  return v0;
}

uint64_t AXOnboardingModelVoiceControl.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport29AXOnboardingModelVoiceControl_subscribers);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DB5E9C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C();

  *a2 = v5;
  return result;
}

uint64_t sub_23DB5EA48(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DB5EB0C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_23DB6EF1C();
}

uint64_t sub_23DB5EBF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23DB5EC5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DB5ED28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23DA16DC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23DB5ED28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23DB5EE34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23DB70D3C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23DB5EE34(uint64_t a1, unint64_t a2)
{
  v4 = sub_23DB5EE80(a1, a2);
  sub_23DB5EFB0(&unk_284FE56B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23DB5EE80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23DB5F09C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23DB70D3C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23DB7098C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DB5F09C(v10, 0);
        result = sub_23DB70CDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23DB5EFB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23DB5F110(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23DB5F09C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DE0, &qword_23DB83790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23DB5F110(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DE0, &qword_23DB83790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23DB5F204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23DB70C3C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23DB70C3C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23DA17B80(&qword_27E300DC8, &qword_27E2FDCF0, &qword_23DB830A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
            v9 = sub_23DAC2354(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Page(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23DB5F3A8(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_23DB7094C();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x2821FBD18](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v2);
  }

  return result;
}

uint64_t type metadata accessor for AXOnboardingModelVoiceControl()
{
  result = qword_27E300DB0;
  if (!qword_27E300DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23DB5F500()
{
  result = qword_27E300DC0;
  if (!qword_27E300DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E300DC0);
  }

  return result;
}

uint64_t sub_23DB5F554(uint64_t a1)
{
  v2 = type metadata accessor for CommandToPractice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DB5F5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC4F0, &qword_23DB74AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DB5F97C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB589EC();
}

uint64_t sub_23DB5FA0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB55F38();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DB5FABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB54A1C();
}

uint64_t sub_23DB5FAEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB52DB8();
}

uint64_t sub_23DB5FB4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23DB5FB88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23DB53698();
}

double sub_23DB5FB9C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = MEMORY[0x277D76A20];
  if (!v1)
  {
    v3 = MEMORY[0x277D76918];
  }

  v4 = [v2 preferredFontForTextStyle_];
  [v4 pointSize];
  v6 = v5;

  return v6;
}

void sub_23DB5FC50(void **a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_23DB5FB9C();
  v10 = sub_23DB7087C();
  v11 = objc_opt_self();
  v12 = [v11 fontWithName:v10 size:v9];

  *(inited + 64) = sub_23DAA967C(0, &qword_27E300DD0, 0x277D74300);
  if (!v12)
  {
    v12 = [v11 systemFontOfSize_];
  }

  *(inited + 40) = v12;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  v13 = *a1;
  type metadata accessor for Key(0);
  sub_23DB60828(&qword_27E2FBE30, type metadata accessor for Key);
  v14 = sub_23DB7080C();

  [v13 addAttributes:v14 range:{a2, a3}];
}

void sub_23DB5FE4C(void **a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE1D0, &unk_23DB7E160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_23DB5FB9C();
  v10 = sub_23DB7087C();
  v11 = objc_opt_self();
  v12 = [v11 fontWithName:v10 size:v9];

  *(inited + 64) = sub_23DAA967C(0, &qword_27E300DD0, 0x277D74300);
  if (!v12)
  {
    v12 = [v11 systemFontOfSize_];
  }

  *(inited + 40) = v12;
  sub_23DB6BC44(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE1D8, &qword_23DB7A4F0);
  v13 = *a1;
  type metadata accessor for Key(0);
  sub_23DB60828(&qword_27E2FBE30, type metadata accessor for Key);
  v14 = sub_23DB7080C();

  [v13 addAttributes:v14 range:{a2, a3}];
}

size_t sub_23DB60098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB50D90();
}

uint64_t sub_23DB600A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB51448();
}

uint64_t sub_23DB600A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE180, &qword_23DB7A2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v27 - v7;
  v27[1] = a1;
  v27[2] = a2;
  v28 = 0x3E5C2A2E3C5CLL;
  v29 = 0xE600000000000000;
  v9 = sub_23DB6EB1C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23DA16E70();
  sub_23DB70BCC();
  v11 = v10;
  sub_23DA17988(v8, &qword_27E2FE180, &qword_23DB7A2D0);
  if (v11)
  {
    return 0;
  }

  v13 = sub_23DB709BC();
  v14 = MEMORY[0x23EEF6CA0](v13);
  v16 = v15;

  v28 = v14;
  v29 = v16;
  sub_23DB43F58(v17);

  v18 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v18 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  result = sub_23DB3C728(v28, v29);
  if (!v19)
  {
    __break(1u);
    return result;
  }

  sub_23DB5F3A8(1);
  if (qword_27E2FBBE0 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = qword_27E30A6B0;
  v22 = v28;
  v21 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300DD8, &qword_23DB83668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DB73BA0;
  strcpy((inited + 32), "getCorrections");
  *(inited + 47) = -18;
  *(inited + 48) = v22;
  *(inited + 56) = v21;

  sub_23DB6BB30(inited);
  swift_setDeallocating();
  sub_23DA17988(inited + 32, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8();

  v24 = *(v20 + 104);
  swift_beginAccess();
  if (!*(v24 + 40) && *(v24 + 48) == 0xE000000000000000)
  {
    return v22;
  }

  v25 = *(v24 + 40);
  v26 = *(v24 + 48);
  if (sub_23DB70DBC())
  {
    return v22;
  }

  return v25;
}

uint64_t sub_23DB603BC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!sub_23DB600A8(a1, a2) && v3 == 0xE000000000000000 || (sub_23DB70DBC() & 1) != 0)
  {
  }

  else
  {
    sub_23DA16E70();
    sub_23DB70BBC();

    sub_23DB70BBC();

    sub_23DB70BBC();

    sub_23DB70BBC();

    v2 = sub_23DB70BBC();
  }

  return v2;
}

uint64_t sub_23DB60628()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    return 0x6870692E73707061;
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 0x6170692E73707061;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DB60750()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    return 0x656E6F687069;
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 1684107369;
  }

  else
  {
    return 0x7865742E65746F6ELL;
  }
}

uint64_t sub_23DB60828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DB60960()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB4EEE0();
}

uint64_t sub_23DB60968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB4F544();
}

uint64_t sub_23DB60970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DB609D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB573C8();
}

uint64_t sub_23DB609F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB4D67C();
}

uint64_t sub_23DB60A68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB4C7A0();
}

uint64_t sub_23DB60A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB4B004();
}

uint64_t sub_23DB60A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB49278();
}

uint64_t sub_23DB60B00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB465E0();
}

uint64_t sub_23DB60B08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB46A74();
}

uint64_t sub_23DB60B10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB44884();
}

uint64_t sub_23DB60B18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB44D5C();
}

uint64_t sub_23DB60BD0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_23DB60C38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_253Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_23DB60EA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23DB41738();
}

uint64_t sub_23DB60EB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB41B44();
}

uint64_t sub_23DB60F0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB403B4();
}

uint64_t sub_23DB60F3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB3F048();
}

uint64_t sub_23DB60F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23DB5CC8C();
}

uint64_t sub_23DB61074(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DB610BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DB61130(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DB61178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DB611E4()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 56);
  v7 = *(v0 + 48);
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

uint64_t sub_23DB61344@<X0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v2 = sub_23DB6F32C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v107 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FB0, &qword_23DB83EF8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v90 - v9;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FB8, &qword_23DB83F00);
  v11 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v12);
  v110 = &v90 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FC0, &qword_23DB83F08);
  v14 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109, v15);
  v108 = &v90 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FC8, &qword_23DB83F10);
  v17 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112, v18);
  v111 = &v90 - v19;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FD0, &qword_23DB83F18);
  v20 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113, v21);
  v23 = &v90 - v22;
  sub_23DB611E4();
  if (qword_27E2FBB68 != -1)
  {
    swift_once();
  }

  v24 = qword_27E30A640;
  sub_23DB611E4();
  sub_23DB611E4();
  if (qword_27E2FBB70 != -1)
  {
    swift_once();
  }

  v102 = qword_27E30A648;
  v25 = v1[1];
  v104 = *v1;
  *&v135 = v104;
  *(&v135 + 1) = v25;
  v26 = sub_23DA16E70();
  v103 = v25;

  v106 = v26;
  v100 = sub_23DB6FD8C();
  v99 = v27;
  LOBYTE(v26) = v28;
  v101 = v29;
  sub_23DB7063C();
  sub_23DB6F34C();
  v97 = v26 & 1;
  v132 = v26 & 1;
  v30 = sub_23DB611E4();
  v115 = v1;
  v114 = v23;
  if (v30)
  {
    v31 = sub_23DB6FBCC();
  }

  else
  {
    v31 = sub_23DB6FC3C();
  }

  v98 = v31;
  KeyPath = swift_getKeyPath();
  v96 = swift_getKeyPath();

  v93 = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v133 = 0;
  v92 = sub_23DB6FB2C();
  sub_23DB6EFAC();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v134 = 0;
  v94 = swift_getKeyPath();
  v48 = &v10[*(v6 + 36)];

  sub_23DB705CC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBF48, &qword_23DB73D90);
  v50 = v24;
  v51 = &v48[*(v49 + 52)];
  v52 = *(v2 + 20);
  v91 = v2;
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_23DB6F63C();
  v55 = *(*(v54 - 8) + 104);
  v55(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #8.0 }

  v90 = _Q0;
  *v51 = _Q0;
  *&v48[*(v49 + 56)] = 256;
  v61 = v99;
  *v10 = v100;
  *(v10 + 1) = v61;
  v10[16] = v97;
  *(v10 + 17) = *v124;
  *(v10 + 5) = *&v124[3];
  *(v10 + 3) = v101;
  v62 = v130;
  *(v10 + 6) = v129;
  *(v10 + 7) = v62;
  *(v10 + 8) = v131;
  v63 = v126;
  *(v10 + 2) = v125;
  *(v10 + 3) = v63;
  v64 = v128;
  *(v10 + 4) = v127;
  *(v10 + 5) = v64;
  v65 = v98;
  *(v10 + 18) = KeyPath;
  *(v10 + 19) = v65;
  *(v10 + 80) = 256;
  *(v10 + 162) = *&v122[7];
  *(v10 + 83) = v123;
  *(v10 + 21) = v96;
  *(v10 + 22) = v50;
  v10[184] = v93;
  *(v10 + 185) = *v122;
  *(v10 + 47) = *&v122[3];
  *(v10 + 24) = v33;
  *(v10 + 25) = v35;
  *(v10 + 26) = v37;
  *(v10 + 27) = v39;
  v10[224] = 0;
  *(v10 + 57) = *&v121[3];
  *(v10 + 225) = *v121;
  v10[232] = v92;
  *(v10 + 59) = *&v120[3];
  *(v10 + 233) = *v120;
  *(v10 + 30) = v41;
  *(v10 + 31) = v43;
  *(v10 + 32) = v45;
  *(v10 + 33) = v47;
  v10[272] = 0;
  *(v10 + 273) = *v119;
  *(v10 + 69) = *&v119[3];
  *(v10 + 35) = v94;
  *(v10 + 36) = v50;
  v66 = v107;
  v55(&v107[*(v91 + 20)], v53, v54);
  *v66 = v90;
  sub_23DB6F07C();
  v67 = v110;
  v68 = &v110[*(v105 + 36)];
  v69 = MEMORY[0x277CDFC08];
  sub_23DB64DAC(v66, v68, MEMORY[0x277CDFC08]);
  v70 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD8E0, &unk_23DB80390) + 36);
  v71 = v136;
  *v70 = v135;
  *(v70 + 16) = v71;
  *(v70 + 32) = v137;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC70, &unk_23DB83F80);
  *(v68 + *(v72 + 52)) = v102;
  *(v68 + *(v72 + 56)) = 256;

  v73 = sub_23DB7062C();
  v75 = v74;
  sub_23DB64E14(v66, v69);
  v76 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC78, &unk_23DB803A0) + 36));
  *v76 = v73;
  v76[1] = v75;
  *(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC80, &unk_23DB83F90) + 36)) = 0x3FD999999999999ALL;
  v77 = sub_23DB7062C();
  v79 = v78;
  v80 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FFC88, &qword_23DB803B0) + 36));
  *v80 = v77;
  v80[1] = v79;
  sub_23DA17A54(v10, v67, &qword_27E300FB0, &qword_23DB83EF8);
  v81 = v115;
  if (*(v115 + 40))
  {
    v82 = 0.5;
  }

  else
  {
    v82 = 1.0;
  }

  v83 = v108;
  sub_23DA17A54(v67, v108, &qword_27E300FB8, &qword_23DB83F00);
  *(v83 + *(v109 + 36)) = v82;
  v84 = MEMORY[0x23EEF6D40](v104, v103);
  v85 = v111;
  sub_23DA17A54(v83, v111, &qword_27E300FC0, &qword_23DB83F08);
  *(v85 + *(v112 + 52)) = v84;
  sub_23DA17B80(&qword_27E300FD8, &qword_27E300FC8, &qword_23DB83F10);
  v86 = v114;
  sub_23DB6FE7C();
  sub_23DA17988(v85, &qword_27E300FC8, &qword_23DB83F10);
  if (v81[4])
  {
    v87 = v81[3];
    v88 = v81[4];
  }

  else
  {
    v87 = 0;
    v88 = 0xE000000000000000;
  }

  v117 = v87;
  v118 = v88;

  sub_23DB6F28C();

  return sub_23DA17988(v86, &qword_27E300FD0, &qword_23DB83F18);
}

uint64_t sub_23DB61D38()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for CommandCardWithCheckmark() + 24);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23DB70ACC();
    v9 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v8, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23DB61E90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300ED8, &qword_23DB83E58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = (&v37 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EE0, &qword_23DB83E60);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  *v7 = sub_23DB7060C();
  v7[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EE8, &qword_23DB83E68);
  sub_23DB6208C(v1, v7 + *(v15 + 44));
  v16 = sub_23DB6FB2C();
  sub_23DB61D38();
  sub_23DB6EFAC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_23DA17A54(v7, v13, &qword_27E300ED8, &qword_23DB83E58);
  v25 = &v13[*(v9 + 44)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_23DB6FB5C();
  sub_23DB61D38();
  sub_23DB6EFAC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_23DA17A54(v13, a1, &qword_27E300EE0, &qword_23DB83E60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EF0, &qword_23DB83E70);
  v36 = a1 + *(result + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_23DB6208C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v31 = sub_23DB6F9FC();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300EF8, &qword_23DB83E78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F00, &qword_23DB83E80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F08, &qword_23DB83E88);
  v20 = *(v19 - 8);
  v32 = v19;
  v33 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v31 - v23;
  sub_23DB62438(a1, v12);
  sub_23DB6F9DC();
  v25 = sub_23DB64A20();
  sub_23DB6FF8C();
  (*(v3 + 8))(v7, v31);
  sub_23DA17988(v12, &qword_27E300EF8, &qword_23DB83E78);
  v35 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F28, &qword_23DB83E98);
  v36 = v8;
  v37 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_23DA17B80(&qword_27E300F30, &qword_27E300F28, &qword_23DB83E98);
  sub_23DB6FEFC();
  (*(v14 + 8))(v18, v13);
  v36 = v13;
  v37 = v26;
  v38 = OpaqueTypeConformance2;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  sub_23DB6FFDC();
  return (*(v33 + 8))(v24, v29);
}

uint64_t sub_23DB62438@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a2;
  v3 = sub_23DB702CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F48, &qword_23DB83EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v48 = &v45 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F50, &qword_23DB83EB8);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v14);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v45 - v22;
  v24 = a1[1];
  v51 = *a1;
  v52 = *(a1 + 18);
  if (v52)
  {
    v25 = 0;
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
    if (*(a1 + *(type metadata accessor for CommandCardWithCheckmark() + 20)) == 1)
    {
      v25 = *(a1 + 19) ^ 1;
    }

    else
    {
      v25 = 0;
    }
  }

  KeyPath = swift_getKeyPath();
  v45 = v24;
  v46 = KeyPath;
  v53 = v25 & 1;
  v63 = 0;

  sub_23DB702BC();
  sub_23DB61D38();
  (*(v4 + 104))(v8, *MEMORY[0x277CE0FE0], v3);
  v28 = sub_23DB702EC();
  (*(v4 + 8))(v8, v3);
  v29 = sub_23DB701AC();
  v30 = sub_23DB7019C();
  sub_23DB7062C();
  sub_23DB6F10C();
  v31 = sub_23DB7014C();

  *(v60 + 8) = v66;
  v58 = v28;
  LOWORD(v59) = 1;
  *(&v59 + 1) = v29;
  *&v60[0] = v30;
  *(&v60[1] + 8) = v67;
  *(&v60[2] + 8) = v68;
  *(&v60[3] + 8) = xmmword_23DB839E0;
  *(&v60[4] + 1) = v31;
  v61 = 0x4000000000000000uLL;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300F58, &qword_23DB83EC0);
  sub_23DB64AD8();
  v32 = v48;
  sub_23DB6FE7C();
  v69[6] = v60[4];
  v69[7] = v61;
  v70 = v62;
  v69[2] = v60[0];
  v69[3] = v60[1];
  v69[4] = v60[2];
  v69[5] = v60[3];
  v69[0] = v58;
  v69[1] = v59;
  sub_23DA17988(v69, &qword_27E300F58, &qword_23DB83EC0);
  sub_23DA17A54(v32, v19, &qword_27E300F48, &qword_23DB83EB0);
  *&v19[*(v47 + 36)] = v26;
  sub_23DA17A54(v19, v23, &qword_27E300F50, &qword_23DB83EB8);
  v33 = v63;
  LODWORD(v48) = v63;
  v34 = v50;
  sub_23DA0E2B4(v23, v50, &qword_27E300F50, &qword_23DB83EB8);
  v35 = v51;
  v36 = v45;
  *&v54 = v51;
  *(&v54 + 1) = v45;
  LOBYTE(v31) = v52;
  LOBYTE(v55) = v52;
  *(&v55 + 1) = *v65;
  HIDWORD(v55) = *&v65[3];
  v56 = 0;
  *&v57[0] = 0;
  BYTE8(v57[0]) = v53;
  *(v57 + 9) = *v64;
  HIDWORD(v57[0]) = *&v64[3];
  v37 = v23;
  v38 = v46;
  *&v57[1] = v46;
  BYTE8(v57[1]) = v33;
  v39 = v54;
  v40 = v55;
  v41 = v57[0];
  v42 = v49;
  *(v49 + 41) = *(v57 + 9);
  v42[1] = v40;
  v42[2] = v41;
  *v42 = v39;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E300FA8, &qword_23DB83EF0);
  sub_23DA0E2B4(v34, v42 + *(v43 + 48), &qword_27E300F50, &qword_23DB83EB8);
  sub_23DB64D34(&v54, &v58);
  sub_23DA17988(v37, &qword_27E300F50, &qword_23DB83EB8);
  sub_23DA17988(v34, &qword_27E300F50, &qword_23DB83EB8);
  *&v58 = v35;
  *(&v58 + 1) = v36;
  LOBYTE(v59) = v31;
  *(&v59 + 1) = *v65;
  DWORD1(v59) = *&v65[3];
  *(&v59 + 1) = 0;
  *&v60[0] = 0;
  BYTE8(v60[0]) = v53;
  *(v60 + 9) = *v64;
  HIDWORD(v60[0]) = *&v64[3];
  *&v60[1] = v38;
  BYTE8(v60[1]) = v48;
  return sub_23DB64D6C(&v58);
}