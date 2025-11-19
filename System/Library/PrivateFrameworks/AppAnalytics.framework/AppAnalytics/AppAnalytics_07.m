unint64_t sub_1B6A16B30()
{
  result = qword_1EDBCA3D8[0];
  if (!qword_1EDBCA3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCA3D8);
  }

  return result;
}

uint64_t sub_1B6A16B84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  sub_1B6A24908(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B6A16C38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  return sub_1B69AC2BC(a11, v12);
}

void sub_1B6A16C94(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v203 = a8;
  v188 = a7;
  v190 = a6;
  v189 = a5;
  v185 = a4;
  *&v202 = a1;
  *(&v202 + 1) = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v194 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v195 = (v173 - v13);
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  v176 = v14;
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v177 = v173 - v16;
  v17 = type metadata accessor for Sequence(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v181 = (v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v187 = v173 - v22;
  v193 = sub_1B6AB8DB0();
  v192 = *(v193 - 8);
  v23 = v192[8];
  MEMORY[0x1EEE9AC00](v193);
  v191 = v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1B6AB8E40();
  v183 = *(v184 - 1);
  v25 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for EventData();
  v27 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v29 = (v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for SessionManager.SessionState(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = v173 - v36;
  v38 = sub_1B6AB90F0();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x1EEE9AC00](v38);
  v42 = (v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = v9;
  v180 = *(v9 + 88);
  v179 = OBJC_IVAR___AAAccessQueue_queue;
  v43 = *&v180[OBJC_IVAR___AAAccessQueue_queue];
  *v42 = v43;
  v44 = v39[13];
  v196 = *MEMORY[0x1E69E8020];
  v198 = v39 + 13;
  v197 = v44;
  v44(v42);
  v45 = v43;
  v46 = sub_1B6AB9110();
  v47 = v39[1];
  v200 = v38;
  v199 = v47;
  v47(v42, v38);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  v201 = a9;
  if (a3)
  {
    if (*(&v202 + 1) >> 62)
    {
      if (*(&v202 + 1) >> 62 == 1)
      {
        v48 = [swift_getObjCClassFromMetadata() eventName];
        v49 = sub_1B6AB92E0();
        v51 = v50;
      }

      else
      {
        v49 = *(v202 + OBJC_IVAR___AARawEvent_name);
        v51 = *(v202 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v51 = 0xEC000000746E6576;
      v49 = 0x4564656764697242;
    }

    v52 = v204;
    swift_beginAccess();
    v53 = *(v52 + 112);
    if (!*(v53 + 16) || (, v54 = sub_1B6993940(v49, v51), v56 = v55, , (v56 & 1) == 0))
    {

      v78 = type metadata accessor for Tracker.Timer(0);
      (*(*(v78 - 8) + 56))(v37, 1, 1, v78);
      sub_1B6994FAC(v37, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
      v30 = v203;
      if (!v203)
      {
        return;
      }

      sub_1B6A16B30();
      v76 = swift_allocError();
      *v79 = xmmword_1B6AC0330;
      goto LABEL_25;
    }

    v57 = *(v53 + 56);
    v58 = type metadata accessor for Tracker.Timer(0);
    v59 = *(v58 - 8);
    v178 = v29;
    v60 = v59;
    sub_1B698A2A4(v57 + *(v59 + 72) * v54, v37, type metadata accessor for Tracker.Timer);

    (*(v60 + 56))(v37, 0, 1, v58);
    v29 = v178;
    sub_1B6994FAC(v37, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  }

  v61 = v204;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v63 = Strong;
  v178 = v29;
  v64 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v42 = v64;
  v65 = v200;
  v197(v42, v196, v200);
  v66 = v64;
  v67 = sub_1B6AB9110();
  v199(v42, v65);
  if ((v67 & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v68 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B698A2A4(v63 + v68, v33, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6995008(v33, type metadata accessor for SessionManager.SessionState);
    }

LABEL_16:
    v70 = swift_unknownObjectWeakLoadStrong();
    v30 = v203;
    if (!v70)
    {
LABEL_19:
      if (!v30)
      {
        return;
      }

      sub_1B6A16B30();
      v76 = swift_allocError();
      *v77 = 0;
      v77[1] = 0;
LABEL_25:
      v80 = v195;
      *v195 = v76;
      swift_storeEnumTagMultiPayload();
      (v30)(v80);
      goto LABEL_26;
    }

    v71 = v70;
    v72 = *(*(v70 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v42 = v72;
    v73 = v200;
    v197(v42, v196, v200);
    v74 = v72;
    LOBYTE(v72) = sub_1B6AB9110();
    v199(v42, v73);
    if (v72)
    {
      v75 = *(v71 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options);
      swift_unknownObjectRelease();
      if (v75)
      {
        sub_1B6A19D5C(v202, *(&v202 + 1), v189, v190, v188, v30, v201);
        return;
      }

      goto LABEL_19;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    swift_once();
    v204 = qword_1EDBCCB28;
    sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1B6ABF500;
    *&v208 = 0;
    *(&v208 + 1) = 0xE000000000000000;
    v205 = v202;
    sub_1B6A24908(0, &unk_1EDBC9570, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmit);
    sub_1B6AB9DF0();
    v131 = v208;
    v132 = MEMORY[0x1E69E6158];
    *(v130 + 56) = MEMORY[0x1E69E6158];
    v133 = sub_1B698CEC0();
    *(v130 + 64) = v133;
    *(v130 + 32) = v131;
    *&v208 = 0;
    *(&v208 + 1) = 0xE000000000000000;
    *&v205 = v30;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v134 = v208;
    *(v130 + 96) = v132;
    *(v130 + 104) = v133;
    *(v130 + 72) = v134;
    sub_1B6AB8F70();

    v135 = v203;
    if (!v203)
    {

      return;
    }

    v80 = v195;
    *v195 = v30;
    swift_storeEnumTagMultiPayload();
    v136 = v30;
    v135(v80);

LABEL_26:
    sub_1B6A16B84(v80, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return;
  }

  v81 = *v33;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B6A1B07C(v202, *(&v202 + 1), &v208);
    v205 = v208;
    v206 = v209;
    v207 = v210;
    v175 = sub_1B69B8DBC(&v205);
    swift_unknownObjectRelease();
  }

  else
  {
    v175 = 0;
  }

  v82 = v182;
  sub_1B6AB8E30();
  v174 = sub_1B6AB8DD0();
  v84 = v83;
  (*(v183 + 8))(v82, v184);
  v85 = v192[2];
  v86 = v185;
  v185 = (v192 + 2);
  v184 = v85;
  v85(v191, v86, v193);
  *&v208 = 47;
  *(&v208 + 1) = 0xE100000000000000;

  v87 = MEMORY[0x1E69E7CC0];
  v88 = v61;
  do
  {
    v91 = v88[3];
    if (v91)
    {
      v92 = v88[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1B69B5A00(0, *(v87 + 2) + 1, 1, v87);
      }

      v94 = *(v87 + 2);
      v93 = *(v87 + 3);
      if (v94 >= v93 >> 1)
      {
        v87 = sub_1B69B5A00((v93 > 1), v94 + 1, 1, v87);
      }

      *(v87 + 2) = v94 + 1;
      v89 = &v87[16 * v94];
      *(v89 + 4) = v92;
      *(v89 + 5) = v91;
    }

    v90 = v88[19];

    v88 = v90;
  }

  while (v90);
  *&v205 = sub_1B69B919C(v87);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v95 = sub_1B6AB9290();
  v97 = v96;

  MEMORY[0x1B8C97BE0](v95, v97);

  v98 = v208;
  v173[1] = v81;
  if (!v175)
  {
    v100 = *(v81 + 16);
    v99 = *(v81 + 24);

    v101 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
LABEL_43:
    v106 = v81 + v101;
    v104 = *(v81 + v101);
    v103 = *(v106 + 8);

    goto LABEL_44;
  }

  v100 = *(v175 + 16);
  v99 = *(v175 + 24);
  v101 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
  v102 = (v175 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
  v103 = *(v175 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
  if (!v103)
  {

    goto LABEL_43;
  }

  v104 = *v102;
  v105 = v102[1];

LABEL_44:
  v107 = v178;
  *v178 = v174;
  v107[1] = v84;
  v108 = v186;
  v109 = v192[4];
  v192 = *(v186 + 20);
  v109(v192 + v107, v191, v193);
  *(v107 + v108[6]) = v98;
  v110 = (v107 + v108[7]);
  *v110 = v100;
  v110[1] = v99;
  v111 = (v107 + v108[8]);
  *v111 = v104;
  v111[1] = v103;
  v37 = v187;
  v112 = v202;
  v113 = v107;
  v114 = *(&v202 + 1);
  sub_1B6A1B274(v202, *(&v202 + 1), v113, v187);
  v115 = v203;
  v116 = v201;
  if (!sub_1B6A201D0(v112, v114, v203) || (sub_1B6A23928(v112, v114, v115, v116, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868) & 1) == 0 || (sub_1B6A20C98(v112, v114, v115, v116) & 1) == 0)
  {

LABEL_49:
    v118 = v37;
    goto LABEL_50;
  }

  v117 = v204;
  sub_1B6A1BFD4(v202, v114, v178, v37, v189, v190, v181);
  v120 = *(v117 + 208);
  v119 = *(v117 + 216);
  ObjectType = swift_getObjectType();
  (*(v119 + 8))(&v208, ObjectType, v119);
  v122 = v208;
  v123 = v180;
  v124 = *&v180[v179];
  *v42 = v124;
  v125 = v200;
  v197(v42, v196, v200);
  v126 = v124;
  v127 = sub_1B6AB9110();
  v128 = (v199)(v42, v125);
  if ((v127 & 1) == 0)
  {
    __break(1u);
LABEL_107:
    swift_once();
LABEL_87:
    sub_1B6AB98D0();
    sub_1B6AB8F70();
    v46 = v181;
    if (v122)
    {
      v157 = *v181;
      v156 = v181[1];
      sub_1B6A23D80();
      v158 = swift_allocError();
      *v159 = v157;
      v159[1] = v156;
      v160 = v195;
      *v195 = v158;
      swift_storeEnumTagMultiPayload();

      v122(v160);

      sub_1B6A16B84(v160, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
LABEL_96:
      v172 = v46;
      goto LABEL_97;
    }

LABEL_95:

    goto LABEL_96;
  }

  MEMORY[0x1EEE9AC00](v128);
  v129 = v181;
  v173[-2] = v122;
  v173[-1] = v129;
  v137 = sub_1B69BF2DC(v123, sub_1B69BFCB4, &v173[-4]);

  if (!v137)
  {
    v122 = v203;
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_87;
    }

    goto LABEL_107;
  }

  v138 = v204;

  v139 = 0;
  v140 = 1;
  v141 = v177;
  do
  {
    swift_beginAccess();
    v30 = *(v138 + 168);
    if (v30 >> 62)
    {
      if (v30 < 0)
      {
        v151 = *(v138 + 168);
      }

      v142 = sub_1B6AB9E60();
      if (!v142)
      {
LABEL_76:

        v146 = 0;
        v30 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v142 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v142)
      {
        goto LABEL_76;
      }
    }

    v143 = v142 - 1;
    if (__OFSUB__(v142, 1))
    {
      goto LABEL_100;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {

      v145 = MEMORY[0x1B8C98510](v143, v30);
    }

    else
    {
      if ((v143 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if (v143 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v144 = *(v30 + 8 * v143 + 32);

      v145 = v144;
    }

    v146 = *&v145[OBJC_IVAR___AAGroup_name];
    v30 = *&v145[OBJC_IVAR___AAGroup_name + 8];

    v147 = *(v138 + 168);
    if (v147 >> 62)
    {
      if (v147 < 0)
      {
        v152 = *(v138 + 168);
      }

      v148 = sub_1B6AB9E60();
      if (!v148)
      {
LABEL_81:

        v139 = 0;
        v140 = 1;
        goto LABEL_82;
      }
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v148)
      {
        goto LABEL_81;
      }
    }

    v149 = v148 - 1;
    if (__OFSUB__(v148, 1))
    {
      goto LABEL_103;
    }

    if ((v147 & 0xC000000000000001) != 0)
    {

      v154 = MEMORY[0x1B8C98510](v149, v147);

      v155 = v154 + OBJC_IVAR___AAGroup_contentType;
      v139 = *(v154 + OBJC_IVAR___AAGroup_contentType);
      v140 = *(v155 + 8);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v149 & 0x8000000000000000) != 0)
      {
        goto LABEL_104;
      }

      if (v149 >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      v150 = *(v147 + 8 * v149 + 32) + OBJC_IVAR___AAGroup_contentType;
      v139 = *v150;
      v140 = *(v150 + 8);
    }

LABEL_82:
    v153 = *(v138 + 152);

    if (!v153)
    {
      goto LABEL_89;
    }

    v138 = v153;
  }

  while (!v30);

LABEL_89:
  v161 = *v181;
  v162 = v181[1];
  v163 = v176;
  v184(v141 + v176[11], v192 + v178, v193);
  sub_1B69C1678(v188, v141 + v163[14]);
  *v141 = v161;
  *(v141 + 8) = v162;
  *(v141 + 24) = 0x302E312E30;
  *(v141 + 32) = 0xE500000000000000;
  *(v141 + 16) = v137;
  v164 = (v141 + v163[12]);
  *v164 = v146;
  v164[1] = v30;
  v165 = v141 + v163[13];
  *v165 = v139;
  *(v165 + 8) = v140 & 1;
  *(v141 + v163[15]) = xmmword_1B6AC0320;
  v166 = swift_unknownObjectWeakLoadStrong();

  if (v166)
  {
    sub_1B6A11750(v141, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868);
    swift_unknownObjectRelease();
  }

  if (!v203)
  {

    sub_1B6A16B84(v141, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
    v172 = v181;
LABEL_97:
    sub_1B6995008(v172, type metadata accessor for Sequence);
    goto LABEL_49;
  }

  v167 = v203;
  v168 = v141;
  v169 = v141;
  v170 = v37;
  v171 = v195;
  sub_1B6A23DD4(v168, v195, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  swift_storeEnumTagMultiPayload();
  v167(v171);

  sub_1B6A16B84(v171, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  sub_1B6A16B84(v169, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  sub_1B6995008(v181, type metadata accessor for Sequence);
  v118 = v170;
LABEL_50:
  sub_1B6994FAC(v118, qword_1EDBC9BF0, type metadata accessor for TimedData);
  sub_1B6995008(v178, type metadata accessor for EventData);
}

void sub_1B6A184F8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v203 = a8;
  v188 = a7;
  v190 = a6;
  v189 = a5;
  v185 = a4;
  *&v202 = a1;
  *(&v202 + 1) = a2;
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  v194 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v195 = (v173 - v13);
  sub_1B6A24908(0, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
  v176 = v14;
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v177 = v173 - v16;
  v17 = type metadata accessor for Sequence(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v181 = (v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v187 = v173 - v22;
  v193 = sub_1B6AB8DB0();
  v192 = *(v193 - 8);
  v23 = v192[8];
  MEMORY[0x1EEE9AC00](v193);
  v191 = v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1B6AB8E40();
  v183 = *(v184 - 1);
  v25 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for EventData();
  v27 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v29 = (v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for SessionManager.SessionState(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = v173 - v36;
  v38 = sub_1B6AB90F0();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x1EEE9AC00](v38);
  v42 = (v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = v9;
  v180 = *(v9 + 88);
  v179 = OBJC_IVAR___AAAccessQueue_queue;
  v43 = *&v180[OBJC_IVAR___AAAccessQueue_queue];
  *v42 = v43;
  v44 = v39[13];
  v196 = *MEMORY[0x1E69E8020];
  v198 = v39 + 13;
  v197 = v44;
  v44(v42);
  v45 = v43;
  v46 = sub_1B6AB9110();
  v47 = v39[1];
  v200 = v38;
  v199 = v47;
  v47(v42, v38);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  v201 = a9;
  if (a3)
  {
    if (*(&v202 + 1) >> 62)
    {
      if (*(&v202 + 1) >> 62 == 1)
      {
        v48 = [swift_getObjCClassFromMetadata() eventName];
        v49 = sub_1B6AB92E0();
        v51 = v50;
      }

      else
      {
        v49 = *(v202 + OBJC_IVAR___AARawEvent_name);
        v51 = *(v202 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v51 = 0xEC000000746E6576;
      v49 = 0x457972616D6D7553;
    }

    v52 = v204;
    swift_beginAccess();
    v53 = *(v52 + 112);
    if (!*(v53 + 16) || (, v54 = sub_1B6993940(v49, v51), v56 = v55, , (v56 & 1) == 0))
    {

      v78 = type metadata accessor for Tracker.Timer(0);
      (*(*(v78 - 8) + 56))(v37, 1, 1, v78);
      sub_1B6994FAC(v37, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
      v30 = v203;
      if (!v203)
      {
        return;
      }

      sub_1B6A16B30();
      v76 = swift_allocError();
      *v79 = xmmword_1B6AC0330;
      goto LABEL_25;
    }

    v57 = *(v53 + 56);
    v58 = type metadata accessor for Tracker.Timer(0);
    v59 = *(v58 - 8);
    v178 = v29;
    v60 = v59;
    sub_1B698A2A4(v57 + *(v59 + 72) * v54, v37, type metadata accessor for Tracker.Timer);

    (*(v60 + 56))(v37, 0, 1, v58);
    v29 = v178;
    sub_1B6994FAC(v37, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  }

  v61 = v204;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v63 = Strong;
  v178 = v29;
  v64 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v42 = v64;
  v65 = v200;
  v197(v42, v196, v200);
  v66 = v64;
  v67 = sub_1B6AB9110();
  v199(v42, v65);
  if ((v67 & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v68 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B698A2A4(v63 + v68, v33, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6995008(v33, type metadata accessor for SessionManager.SessionState);
    }

LABEL_16:
    v70 = swift_unknownObjectWeakLoadStrong();
    v30 = v203;
    if (!v70)
    {
LABEL_19:
      if (!v30)
      {
        return;
      }

      sub_1B6A16B30();
      v76 = swift_allocError();
      *v77 = 0;
      v77[1] = 0;
LABEL_25:
      v80 = v195;
      *v195 = v76;
      swift_storeEnumTagMultiPayload();
      (v30)(v80);
      goto LABEL_26;
    }

    v71 = v70;
    v72 = *(*(v70 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v42 = v72;
    v73 = v200;
    v197(v42, v196, v200);
    v74 = v72;
    LOBYTE(v72) = sub_1B6AB9110();
    v199(v42, v73);
    if (v72)
    {
      v75 = *(v71 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options);
      swift_unknownObjectRelease();
      if (v75)
      {
        sub_1B6A1A6EC(v202, *(&v202 + 1), v189, v190, v188, v30, v201);
        return;
      }

      goto LABEL_19;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    swift_once();
    v204 = qword_1EDBCCB28;
    sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1B6ABF500;
    *&v208 = 0;
    *(&v208 + 1) = 0xE000000000000000;
    v205 = v202;
    sub_1B6A24908(0, &qword_1EB95B658, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmit);
    sub_1B6AB9DF0();
    v131 = v208;
    v132 = MEMORY[0x1E69E6158];
    *(v130 + 56) = MEMORY[0x1E69E6158];
    v133 = sub_1B698CEC0();
    *(v130 + 64) = v133;
    *(v130 + 32) = v131;
    *&v208 = 0;
    *(&v208 + 1) = 0xE000000000000000;
    *&v205 = v30;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v134 = v208;
    *(v130 + 96) = v132;
    *(v130 + 104) = v133;
    *(v130 + 72) = v134;
    sub_1B6AB8F70();

    v135 = v203;
    if (!v203)
    {

      return;
    }

    v80 = v195;
    *v195 = v30;
    swift_storeEnumTagMultiPayload();
    v136 = v30;
    v135(v80);

LABEL_26:
    sub_1B6A16B84(v80, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
    return;
  }

  v81 = *v33;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B6A1B07C(v202, *(&v202 + 1), &v208);
    v205 = v208;
    v206 = v209;
    v207 = v210;
    v175 = sub_1B69B8DBC(&v205);
    swift_unknownObjectRelease();
  }

  else
  {
    v175 = 0;
  }

  v82 = v182;
  sub_1B6AB8E30();
  v174 = sub_1B6AB8DD0();
  v84 = v83;
  (*(v183 + 8))(v82, v184);
  v85 = v192[2];
  v86 = v185;
  v185 = v192 + 2;
  v184 = v85;
  v85(v191, v86, v193);
  *&v208 = 47;
  *(&v208 + 1) = 0xE100000000000000;

  v87 = MEMORY[0x1E69E7CC0];
  v88 = v61;
  do
  {
    v91 = v88[3];
    if (v91)
    {
      v92 = v88[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_1B69B5A00(0, *(v87 + 2) + 1, 1, v87);
      }

      v94 = *(v87 + 2);
      v93 = *(v87 + 3);
      if (v94 >= v93 >> 1)
      {
        v87 = sub_1B69B5A00((v93 > 1), v94 + 1, 1, v87);
      }

      *(v87 + 2) = v94 + 1;
      v89 = &v87[16 * v94];
      *(v89 + 4) = v92;
      *(v89 + 5) = v91;
    }

    v90 = v88[19];

    v88 = v90;
  }

  while (v90);
  *&v205 = sub_1B69B919C(v87);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v95 = sub_1B6AB9290();
  v97 = v96;

  MEMORY[0x1B8C97BE0](v95, v97);

  v98 = v208;
  v173[1] = v81;
  if (!v175)
  {
    v100 = *(v81 + 16);
    v99 = *(v81 + 24);

    v101 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
LABEL_43:
    v106 = v81 + v101;
    v104 = *(v81 + v101);
    v103 = *(v106 + 8);

    goto LABEL_44;
  }

  v100 = *(v175 + 16);
  v99 = *(v175 + 24);
  v101 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
  v102 = (v175 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
  v103 = *(v175 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
  if (!v103)
  {

    goto LABEL_43;
  }

  v104 = *v102;
  v105 = v102[1];

LABEL_44:
  v107 = v178;
  *v178 = v174;
  v107[1] = v84;
  v108 = v186;
  v109 = v192[4];
  v192 = *(v186 + 20);
  v109(v192 + v107, v191, v193);
  *(v107 + v108[6]) = v98;
  v110 = (v107 + v108[7]);
  *v110 = v100;
  v110[1] = v99;
  v111 = (v107 + v108[8]);
  *v111 = v104;
  v111[1] = v103;
  v37 = v187;
  v112 = v202;
  v113 = v107;
  v114 = *(&v202 + 1);
  sub_1B6A1B924(v202, *(&v202 + 1), v113, v187);
  v115 = v203;
  v116 = v201;
  if (!sub_1B6A20734(v112, v114, v203) || (sub_1B6A23928(v112, v114, v115, v116, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830) & 1) == 0 || (sub_1B6A21108(v112, v114, v115, v116) & 1) == 0)
  {

LABEL_49:
    v118 = v37;
    goto LABEL_50;
  }

  v117 = v204;
  sub_1B6A1D710(v202, v114, v178, v37, v189, v190, v181);
  v120 = *(v117 + 208);
  v119 = *(v117 + 216);
  ObjectType = swift_getObjectType();
  (*(v119 + 8))(&v208, ObjectType, v119);
  v122 = v208;
  v123 = v180;
  v124 = *&v180[v179];
  *v42 = v124;
  v125 = v200;
  v197(v42, v196, v200);
  v126 = v124;
  v127 = sub_1B6AB9110();
  v128 = (v199)(v42, v125);
  if ((v127 & 1) == 0)
  {
    __break(1u);
LABEL_107:
    swift_once();
LABEL_87:
    sub_1B6AB98D0();
    sub_1B6AB8F70();
    v46 = v181;
    if (v122)
    {
      v157 = *v181;
      v156 = v181[1];
      sub_1B6A23D80();
      v158 = swift_allocError();
      *v159 = v157;
      v159[1] = v156;
      v160 = v195;
      *v195 = v158;
      swift_storeEnumTagMultiPayload();

      v122(v160);

      sub_1B6A16B84(v160, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
LABEL_96:
      v172 = v46;
      goto LABEL_97;
    }

LABEL_95:

    goto LABEL_96;
  }

  MEMORY[0x1EEE9AC00](v128);
  v129 = v181;
  v173[-2] = v122;
  v173[-1] = v129;
  v137 = sub_1B69BF2DC(v123, sub_1B69BFC98, &v173[-4]);

  if (!v137)
  {
    v122 = v203;
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_87;
    }

    goto LABEL_107;
  }

  v138 = v204;

  v139 = 0;
  v140 = 1;
  v141 = v177;
  do
  {
    swift_beginAccess();
    v30 = *(v138 + 168);
    if (v30 >> 62)
    {
      if (v30 < 0)
      {
        v151 = *(v138 + 168);
      }

      v142 = sub_1B6AB9E60();
      if (!v142)
      {
LABEL_76:

        v146 = 0;
        v30 = 0;
        goto LABEL_82;
      }
    }

    else
    {
      v142 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v142)
      {
        goto LABEL_76;
      }
    }

    v143 = v142 - 1;
    if (__OFSUB__(v142, 1))
    {
      goto LABEL_100;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {

      v145 = MEMORY[0x1B8C98510](v143, v30);
    }

    else
    {
      if ((v143 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      if (v143 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v144 = *(v30 + 8 * v143 + 32);

      v145 = v144;
    }

    v146 = *&v145[OBJC_IVAR___AAGroup_name];
    v30 = *&v145[OBJC_IVAR___AAGroup_name + 8];

    v147 = *(v138 + 168);
    if (v147 >> 62)
    {
      if (v147 < 0)
      {
        v152 = *(v138 + 168);
      }

      v148 = sub_1B6AB9E60();
      if (!v148)
      {
LABEL_81:

        v139 = 0;
        v140 = 1;
        goto LABEL_82;
      }
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v148)
      {
        goto LABEL_81;
      }
    }

    v149 = v148 - 1;
    if (__OFSUB__(v148, 1))
    {
      goto LABEL_103;
    }

    if ((v147 & 0xC000000000000001) != 0)
    {

      v154 = MEMORY[0x1B8C98510](v149, v147);

      v155 = v154 + OBJC_IVAR___AAGroup_contentType;
      v139 = *(v154 + OBJC_IVAR___AAGroup_contentType);
      v140 = *(v155 + 8);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v149 & 0x8000000000000000) != 0)
      {
        goto LABEL_104;
      }

      if (v149 >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      v150 = *(v147 + 8 * v149 + 32) + OBJC_IVAR___AAGroup_contentType;
      v139 = *v150;
      v140 = *(v150 + 8);
    }

LABEL_82:
    v153 = *(v138 + 152);

    if (!v153)
    {
      goto LABEL_89;
    }

    v138 = v153;
  }

  while (!v30);

LABEL_89:
  v161 = *v181;
  v162 = v181[1];
  v163 = v176;
  v184(v141 + v176[11], v192 + v178, v193);
  sub_1B69C1678(v188, v141 + v163[14]);
  *v141 = v161;
  *(v141 + 8) = v162;
  *(v141 + 24) = 0x302E312E30;
  *(v141 + 32) = 0xE500000000000000;
  *(v141 + 16) = v137;
  v164 = (v141 + v163[12]);
  *v164 = v146;
  v164[1] = v30;
  v165 = v141 + v163[13];
  *v165 = v139;
  *(v165 + 8) = v140 & 1;
  *(v141 + v163[15]) = xmmword_1B6AC0320;
  v166 = swift_unknownObjectWeakLoadStrong();

  if (v166)
  {
    sub_1B6A11750(v141, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830);
    swift_unknownObjectRelease();
  }

  if (!v203)
  {

    sub_1B6A16B84(v141, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
    v172 = v181;
LABEL_97:
    sub_1B6995008(v172, type metadata accessor for Sequence);
    goto LABEL_49;
  }

  v167 = v203;
  v168 = v141;
  v169 = v141;
  v170 = v37;
  v171 = v195;
  sub_1B6A23DD4(v168, v195, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
  swift_storeEnumTagMultiPayload();
  v167(v171);

  sub_1B6A16B84(v171, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  sub_1B6A16B84(v169, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
  sub_1B6995008(v181, type metadata accessor for Sequence);
  v118 = v170;
LABEL_50:
  sub_1B6994FAC(v118, qword_1EDBC9BF0, type metadata accessor for TimedData);
  sub_1B6995008(v178, type metadata accessor for EventData);
}

id sub_1B6A19D5C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v82 = a7;
  v83 = a1;
  v79 = a4;
  v80 = a6;
  v72 = a5;
  v78 = a3;
  v84 = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v73 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v69 - v11;
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v69 - v14;
  v15 = sub_1B6AB8E40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EventData();
  v71 = *(v20 - 1);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v69 - v23);
  sub_1B6AB8E30();
  v76 = sub_1B6AB8DD0();
  v77 = v25;
  (*(v16 + 8))(v19, v15);
  v26 = v24 + v20[5];
  sub_1B6AB8DA0();
  *&v85[0] = 47;
  *(&v85[0] + 1) = 0xE100000000000000;

  v27 = MEMORY[0x1E69E7CC0];
  v28 = v8;
  v29 = v8;
  do
  {
    v32 = v29[3];
    if (v32)
    {
      v33 = v29[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1B69B5A00(0, *(v27 + 2) + 1, 1, v27);
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        v27 = sub_1B69B5A00((v34 > 1), v35 + 1, 1, v27);
      }

      *(v27 + 2) = v35 + 1;
      v30 = &v27[16 * v35];
      *(v30 + 4) = v33;
      *(v30 + 5) = v32;
    }

    v31 = v29[19];

    v29 = v31;
  }

  while (v31);
  v86 = sub_1B69B919C(v27);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v36 = sub_1B6AB9290();
  v38 = v37;

  MEMORY[0x1B8C97BE0](v36, v38);

  v39 = v85[0];
  v40 = v77;
  *v24 = v76;
  v24[1] = v40;
  *(v24 + v20[6]) = v39;
  v41 = (v24 + v20[7]);
  *v41 = 0x6F69737365536F6ELL;
  v41[1] = 0xE90000000000006ELL;
  *(v24 + v20[8]) = xmmword_1B6AC0340;
  v42 = v81;
  v44 = v83;
  v43 = v84;
  sub_1B6A1B274(v83, v84, v24, v81);
  type metadata accessor for Sequence(0);
  v45 = swift_allocBox();
  sub_1B6A1BFD4(v44, v43, v24, v42, v78, v79, v46);
  v78 = v45;
  v73 = sub_1B6A23FB4();
  v70 = v47;
  v76 = v48;
  LODWORD(v74) = v49;
  v50 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v77 = v50;
  *(v50 + 16) = result;
  v79 = result;
  if (result)
  {
    type metadata accessor for AccessTracker();
    v52 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = sub_1B6A55214;
    v52[6] = 0;
    v53 = swift_allocObject();
    swift_weakInit();
    sub_1B698A2A4(v24, v75, type metadata accessor for EventData);
    sub_1B69C1678(v72, v85);
    v54 = *(v71 + 80);
    v72 = v28;
    v55 = (v54 + 56) & ~v54;
    v56 = (v21 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v80;
    v59[2] = v53;
    v59[3] = v60;
    v61 = v83;
    v59[4] = v82;
    v59[5] = v61;
    v59[6] = v84;
    sub_1B6994AF8(v75, v59 + v55, type metadata accessor for EventData);
    *(v59 + v56) = v78;
    v62 = (v59 + v57);
    v63 = v70;
    *v62 = v73;
    v62[1] = v63;
    v64 = v59 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v64 = v76;
    v64[8] = v74 & 1;
    v65 = (v59 + v58);
    v66 = v85[1];
    *v65 = v85[0];
    v65[1] = v66;
    *(v59 + ((v58 + 39) & 0xFFFFFFFFFFFFFFF8)) = v77;
    type metadata accessor for SessionObserver();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v67[3] = v52;
    v67[4] = sub_1B6A24784;
    v67[5] = v59;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B698BF94(v80);
    sub_1B6992B50(v83, v84);

    if (Strong)
    {
      sub_1B6A04C10(v67);
      swift_unknownObjectRelease();
    }

    sub_1B6994FAC(v81, qword_1EDBC9BF0, type metadata accessor for TimedData);
    sub_1B6995008(v24, type metadata accessor for EventData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B6A1A6EC(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v82 = a7;
  v83 = a1;
  v79 = a4;
  v80 = a6;
  v72 = a5;
  v78 = a3;
  v84 = a2;
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  v73 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v69 - v11;
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = &v69 - v14;
  v15 = sub_1B6AB8E40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EventData();
  v71 = *(v20 - 1);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v69 - v23);
  sub_1B6AB8E30();
  v76 = sub_1B6AB8DD0();
  v77 = v25;
  (*(v16 + 8))(v19, v15);
  v26 = v24 + v20[5];
  sub_1B6AB8DA0();
  *&v85[0] = 47;
  *(&v85[0] + 1) = 0xE100000000000000;

  v27 = MEMORY[0x1E69E7CC0];
  v28 = v8;
  v29 = v8;
  do
  {
    v32 = v29[3];
    if (v32)
    {
      v33 = v29[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1B69B5A00(0, *(v27 + 2) + 1, 1, v27);
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        v27 = sub_1B69B5A00((v34 > 1), v35 + 1, 1, v27);
      }

      *(v27 + 2) = v35 + 1;
      v30 = &v27[16 * v35];
      *(v30 + 4) = v33;
      *(v30 + 5) = v32;
    }

    v31 = v29[19];

    v29 = v31;
  }

  while (v31);
  v86 = sub_1B69B919C(v27);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v36 = sub_1B6AB9290();
  v38 = v37;

  MEMORY[0x1B8C97BE0](v36, v38);

  v39 = v85[0];
  v40 = v77;
  *v24 = v76;
  v24[1] = v40;
  *(v24 + v20[6]) = v39;
  v41 = (v24 + v20[7]);
  *v41 = 0x6F69737365536F6ELL;
  v41[1] = 0xE90000000000006ELL;
  *(v24 + v20[8]) = xmmword_1B6AC0340;
  v42 = v81;
  v44 = v83;
  v43 = v84;
  sub_1B6A1B924(v83, v84, v24, v81);
  type metadata accessor for Sequence(0);
  v45 = swift_allocBox();
  sub_1B6A1D710(v44, v43, v24, v42, v78, v79, v46);
  v78 = v45;
  v73 = sub_1B6A23FB4();
  v70 = v47;
  v76 = v48;
  LODWORD(v74) = v49;
  v50 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v77 = v50;
  *(v50 + 16) = result;
  v79 = result;
  if (result)
  {
    type metadata accessor for AccessTracker();
    v52 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = sub_1B6A55214;
    v52[6] = 0;
    v53 = swift_allocObject();
    swift_weakInit();
    sub_1B698A2A4(v24, v75, type metadata accessor for EventData);
    sub_1B69C1678(v72, v85);
    v54 = *(v71 + 80);
    v72 = v28;
    v55 = (v54 + 56) & ~v54;
    v56 = (v21 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v80;
    v59[2] = v53;
    v59[3] = v60;
    v61 = v83;
    v59[4] = v82;
    v59[5] = v61;
    v59[6] = v84;
    sub_1B6994AF8(v75, v59 + v55, type metadata accessor for EventData);
    *(v59 + v56) = v78;
    v62 = (v59 + v57);
    v63 = v70;
    *v62 = v73;
    v62[1] = v63;
    v64 = v59 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v64 = v76;
    v64[8] = v74 & 1;
    v65 = (v59 + v58);
    v66 = v85[1];
    *v65 = v85[0];
    v65[1] = v66;
    *(v59 + ((v58 + 39) & 0xFFFFFFFFFFFFFFF8)) = v77;
    type metadata accessor for SessionObserver();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v67[3] = v52;
    v67[4] = sub_1B6A24204;
    v67[5] = v59;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B698BF94(v80);
    sub_1B6992B50(v83, v84);

    if (Strong)
    {
      sub_1B6A04C10(v67);
      swift_unknownObjectRelease();
    }

    sub_1B6994FAC(v81, qword_1EDBC9BF0, type metadata accessor for TimedData);
    sub_1B6995008(v24, type metadata accessor for EventData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6A1B07C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_])
      {
        v5 = [ObjCClassFromMetadata sessionGroup];
        v6 = &v5[OBJC_IVAR___AASessionGroup_groupName];
        swift_beginAccess();
        v7 = *v6;
        v8 = *(v6 + 1);
        if (sub_1B6AB9340() == 0x746C7561666564 && v9 == 0xE700000000000000)
        {
        }

        else
        {
          v11 = sub_1B6ABA0F0();

          if ((v11 & 1) == 0)
          {
            v19 = *v6;
            v20 = *(v6 + 1);

            v21 = 1;
            goto LABEL_22;
          }
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
LABEL_22:
        *a3 = v19;
        *(a3 + 8) = v20;
        *(a3 + 16) = 0;
        *(a3 + 24) = v21;
        return;
      }
    }

    else
    {
      v12 = (*(a1 + OBJC_IVAR___AARawEvent_sessionGroup) + OBJC_IVAR___AASessionGroup_groupName);
      swift_beginAccess();
      v13 = *v12;
      v14 = v12[1];
      if (sub_1B6AB9340() == 0x746C7561666564 && v15 == 0xE700000000000000)
      {
      }

      else
      {
        v17 = sub_1B6ABA0F0();

        if ((v17 & 1) == 0)
        {
          v18 = v12[1];
          *a3 = *v12;
          *(a3 + 8) = v18;
          *(a3 + 16) = 0;
          *(a3 + 24) = 1;

          return;
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

uint64_t sub_1B6A1B274@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v60 = a3;
  v65 = a1;
  v8 = 0xEC000000746E6576;
  v9 = 0x4564656764697242;
  v10 = sub_1B6AB8DB0();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v58 - v14;
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for Tracker.Timer(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v58 - v25;
  v26 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v26 == 1)
    {
      v27 = [swift_getObjCClassFromMetadata() eventName];
      v9 = sub_1B6AB92E0();
      v8 = v28;
    }

    else
    {
      v9 = *(v65 + OBJC_IVAR___AARawEvent_name);
      v8 = *(v65 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  swift_beginAccess();
  v29 = *(v5 + 112);
  if (!*(v29 + 16))
  {

LABEL_12:
    v39 = type metadata accessor for TimedData();
    return (*(*(v39 - 8) + 56))(a4, 1, 1, v39);
  }

  v59 = v10;
  v30 = a4;

  v31 = sub_1B6993940(v9, v8);
  v33 = v32;

  if ((v33 & 1) == 0)
  {

    a4 = v30;
    goto LABEL_12;
  }

  sub_1B698A2A4(*(v29 + 56) + *(v20 + 72) * v31, v24, type metadata accessor for Tracker.Timer);

  v34 = v63;
  sub_1B6994AF8(v24, v63, type metadata accessor for Tracker.Timer);
  if (v26)
  {
    if (v26 == 1)
    {
      v35 = [swift_getObjCClassFromMetadata() eventName];
      v36 = sub_1B6AB92E0();
      v38 = v37;
    }

    else
    {
      v36 = *(v65 + OBJC_IVAR___AARawEvent_name);
      v38 = *(v65 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  else
  {
    v36 = 0x4564656764697242;
    v38 = 0xEC000000746E6576;
  }

  v41 = v30;
  swift_beginAccess();
  sub_1B6A96FA4(v36, v38, v18);
  sub_1B6994FAC(v18, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  swift_endAccess();

  v42 = v59;
  if (v26)
  {
    if (v26 == 1)
    {
      v43 = [swift_getObjCClassFromMetadata() eventName];
      v44 = sub_1B6AB92E0();
      v46 = v45;
    }

    else
    {
      v44 = *(v65 + OBJC_IVAR___AARawEvent_name);
      v46 = *(v65 + OBJC_IVAR___AARawEvent_name + 8);
    }

    v48 = v61;
    v47 = v62;
    v49 = v60;
  }

  else
  {
    v48 = v61;
    v47 = v62;
    v49 = v60;
    v44 = 0x4564656764697242;
    v46 = 0xEC000000746E6576;
  }

  swift_beginAccess();
  sub_1B6A96E90(v44, v46, v66);
  sub_1B6A23F44(v66, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
  swift_endAccess();

  v50 = *(v47 + 16);
  v51 = v64;
  v50(v64, v34, v42);
  v52 = type metadata accessor for EventData();
  v50(v48, v49 + *(v52 + 20), v42);
  v50(v41, v51, v42);
  v53 = type metadata accessor for TimedData();
  v50(&v41[*(v53 + 20)], v48, v42);
  sub_1B6AB8D00();
  v55 = v54;
  v56 = *(v47 + 8);
  v56(v48, v42);
  v56(v51, v42);
  result = sub_1B6995008(v34, type metadata accessor for Tracker.Timer);
  v57 = v55 * 1000.0;
  if (COERCE__INT64(fabs(v55 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v57 < 9.22337204e18)
  {
    *&v41[*(v53 + 24)] = v57;
    return (*(*(v53 - 8) + 56))(v41, 0, 1, v53);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B6A1B924@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v60 = a3;
  v65 = a1;
  v8 = 0xEC000000746E6576;
  v9 = 0x457972616D6D7553;
  v10 = sub_1B6AB8DB0();
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v58 - v14;
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for Tracker.Timer(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v58 - v25;
  v26 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v26 == 1)
    {
      v27 = [swift_getObjCClassFromMetadata() eventName];
      v9 = sub_1B6AB92E0();
      v8 = v28;
    }

    else
    {
      v9 = *(v65 + OBJC_IVAR___AARawEvent_name);
      v8 = *(v65 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  swift_beginAccess();
  v29 = *(v5 + 112);
  if (!*(v29 + 16))
  {

LABEL_12:
    v39 = type metadata accessor for TimedData();
    return (*(*(v39 - 8) + 56))(a4, 1, 1, v39);
  }

  v59 = v10;
  v30 = a4;

  v31 = sub_1B6993940(v9, v8);
  v33 = v32;

  if ((v33 & 1) == 0)
  {

    a4 = v30;
    goto LABEL_12;
  }

  sub_1B698A2A4(*(v29 + 56) + *(v20 + 72) * v31, v24, type metadata accessor for Tracker.Timer);

  v34 = v63;
  sub_1B6994AF8(v24, v63, type metadata accessor for Tracker.Timer);
  if (v26)
  {
    if (v26 == 1)
    {
      v35 = [swift_getObjCClassFromMetadata() eventName];
      v36 = sub_1B6AB92E0();
      v38 = v37;
    }

    else
    {
      v36 = *(v65 + OBJC_IVAR___AARawEvent_name);
      v38 = *(v65 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  else
  {
    v36 = 0x457972616D6D7553;
    v38 = 0xEC000000746E6576;
  }

  v41 = v30;
  swift_beginAccess();
  sub_1B6A96FA4(v36, v38, v18);
  sub_1B6994FAC(v18, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  swift_endAccess();

  v42 = v59;
  if (v26)
  {
    if (v26 == 1)
    {
      v43 = [swift_getObjCClassFromMetadata() eventName];
      v44 = sub_1B6AB92E0();
      v46 = v45;
    }

    else
    {
      v44 = *(v65 + OBJC_IVAR___AARawEvent_name);
      v46 = *(v65 + OBJC_IVAR___AARawEvent_name + 8);
    }

    v48 = v61;
    v47 = v62;
    v49 = v60;
  }

  else
  {
    v48 = v61;
    v47 = v62;
    v49 = v60;
    v44 = 0x457972616D6D7553;
    v46 = 0xEC000000746E6576;
  }

  swift_beginAccess();
  sub_1B6A96E90(v44, v46, v66);
  sub_1B6A23F44(v66, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
  swift_endAccess();

  v50 = *(v47 + 16);
  v51 = v64;
  v50(v64, v34, v42);
  v52 = type metadata accessor for EventData();
  v50(v48, v49 + *(v52 + 20), v42);
  v50(v41, v51, v42);
  v53 = type metadata accessor for TimedData();
  v50(&v41[*(v53 + 20)], v48, v42);
  sub_1B6AB8D00();
  v55 = v54;
  v56 = *(v47 + 8);
  v56(v48, v42);
  v56(v51, v42);
  result = sub_1B6995008(v34, type metadata accessor for Tracker.Timer);
  v57 = v55 * 1000.0;
  if (COERCE__INT64(fabs(v55 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v57 < 9.22337204e18)
  {
    *&v41[*(v53 + 24)] = v57;
    return (*(*(v53 - 8) + 56))(v41, 0, 1, v53);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B6A1BFD4@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v176 = a6;
  v175 = a5;
  v165 = a4;
  v167 = a3;
  v168 = a2;
  v166 = a1;
  v154 = a7;
  v182 = type metadata accessor for SequenceEntry.Kind(0);
  v9 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v184 = (&v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = type metadata accessor for EventData();
  v11 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v157 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for SequenceEntry(0);
  v173 = *(v181 - 8);
  v13 = *(v173 + 64);
  v14 = MEMORY[0x1EEE9AC00](v181);
  v183 = (&v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v178 = &v152 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v177 = (&v152 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v152 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v159 = (&v152 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v152 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v169 = (&v152 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v164 = &v152 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v163 = (&v152 - v30);
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v162 = &v152 - v33;
  v174 = type metadata accessor for TimedData();
  v153 = *(v174 - 8);
  v34 = *(v153 + 64);
  v35 = MEMORY[0x1EEE9AC00](v174);
  v155 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v161 = &v152 - v37;
  v172 = type metadata accessor for Sequence(0);
  v38 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172);
  v179 = (&v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = type metadata accessor for SessionManager.SessionState(0);
  v40 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v156 = (&v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1B6AB90F0();
  v43 = *(v42 - 8);
  v44 = v43[8];
  MEMORY[0x1EEE9AC00](v42);
  v46 = (&v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(*(v8 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v46 = v47;
  v48 = *MEMORY[0x1E69E8020];
  v49 = v43[13];
  v49(v46, v48, v42);
  v50 = v47;
  v51 = sub_1B6AB9110();
  v52 = v43[1];
  v52(v46, v42);
  if ((v51 & 1) == 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  sub_1B6A22150(v166, v168, &v193);
  LODWORD(v158) = v193;
  v180 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v54 = 0;
  if (!Strong)
  {
    v63 = v166;
    v62 = v172;
LABEL_9:
    v64 = v158;
    goto LABEL_10;
  }

  v51 = Strong;
  v55 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v46 = v55;
  v49(v46, v48, v42);
  v56 = v55;
  v57 = sub_1B6AB9110();
  v52(v46, v42);
  if ((v57 & 1) == 0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_77:
    sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1B6ABF500;
    if (v49)
    {
      if (v49 == 1)
      {
        v143 = [swift_getObjCClassFromMetadata() eventName];
        v144 = sub_1B6AB92E0();
        v146 = v145;
      }

      else
      {
        v144 = *(v51 + OBJC_IVAR___AARawEvent_name);
        v146 = *(v51 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v144 = 0x4564656764697242;
      v146 = 0xEC000000746E6576;
    }

    v149 = MEMORY[0x1E69E6158];
    *(v142 + 56) = MEMORY[0x1E69E6158];
    v150 = sub_1B698CEC0();
    *(v142 + 64) = v150;
    *(v142 + 32) = v144;
    *(v142 + 40) = v146;
    *&v193 = 0;
    *(&v193 + 1) = 0xE000000000000000;
    v189 = v168;
    v190 = v42;
    sub_1B6AB9DF0();

    v151 = v193;
    *(v142 + 96) = v149;
    *(v142 + 104) = v150;
    *(v142 + 72) = v151;
    sub_1B6AB8F70();
    goto LABEL_85;
  }

  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v59 = v51 + v58;
  v60 = v156;
  sub_1B698A2A4(v59, v156, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v172;
  if (!EnumCaseMultiPayload)
  {
    v54 = *(*v60 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);

    v63 = v166;
    goto LABEL_9;
  }

  v63 = v166;
  v64 = v158;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B6995008(v60, type metadata accessor for SessionManager.SessionState);
  }

LABEL_10:
  v65 = 0xEC000000746E6576;
  v66 = 0x4564656764697242;
  v67 = v168 >> 62;
  if (v168 >> 62)
  {
    if (v67 == 1)
    {
      v68 = [swift_getObjCClassFromMetadata() eventName];
      v66 = sub_1B6AB92E0();
      v65 = v69;
    }

    else
    {
      v66 = *(v63 + OBJC_IVAR___AARawEvent_name);
      v65 = *(v63 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  v70 = *(v171 + 20);
  v71 = v62[5];
  v72 = sub_1B6AB8DB0();
  v73 = v179;
  (*(*(v72 - 8) + 16))(v179 + v71, v167 + v70, v72);
  sub_1B6A22340(v63, v168, &v193);
  v74 = v193;
  v75 = BYTE1(v193);
  v172 = v62[7];
  *(v73 + v172) = MEMORY[0x1E69E7CC0];
  *v73 = v66;
  v73[1] = v65;
  v76 = v73 + v62[6];
  *v76 = v64;
  *(v76 + 1) = v54;
  v76[16] = v74;
  v76[17] = v75;
  v156 = v67;
  if (!v67)
  {
    v78 = sub_1B69BB800(&type metadata for BridgedEvent, &off_1F2E74868);
    v77 = v180;
    v79 = *(v78 + 16);
    if (!v79)
    {
      goto LABEL_61;
    }

LABEL_19:
    v152 = v78;
    v80 = v78 + 32;
    v158 = (v153 + 48);
    v81 = MEMORY[0x1E69E7CC0];
    v168 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B69BE328(v80, &v193);
      v82 = v193;
      sub_1B6980E70(&v194, &v189);
      v83 = v191;
      v84 = v192;
      __swift_project_boxed_opaque_existential_1(&v189, v191);
      if ((*(v84 + 16))(v83, v84))
      {
        v85 = v191;
        v86 = v192;
        __swift_project_boxed_opaque_existential_1(&v189, v191);
        v87 = (*(v86 + 8))(v85, v86);
        sub_1B69BEDE8(v87, v88, v175, v176, 0, &v185);

        if (v186)
        {
          sub_1B6980E70(&v185, &v187);
          sub_1B6982544(&v187, &v185);
          v89 = v177;
          *v177 = v82;
          sub_1B6980E70(&v185, v89 + *(v181 + 20));
          swift_storeEnumTagMultiPayload();
          sub_1B698A2A4(v89, v178, type metadata accessor for SequenceEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
          }

          v91 = v81[2];
          v90 = v81[3];
          if (v91 >= v90 >> 1)
          {
            v81 = sub_1B69BED6C(v90 > 1, v91 + 1, 1, v81);
          }

          sub_1B6995008(v177, type metadata accessor for SequenceEntry);
          __swift_destroy_boxed_opaque_existential_1(&v187);
          v81[2] = v91 + 1;
          v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v91;
          v93 = &v196;
          goto LABEL_51;
        }

        sub_1B6A23F44(&v185, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      }

      else
      {
        v94 = v191;
        v95 = v192;
        __swift_project_boxed_opaque_existential_1(&v189, v191);
        if (((*(v95 + 24))(v94, v95) & 1) == 0)
        {
          v96 = v191;
          v97 = v192;
          __swift_project_boxed_opaque_existential_1(&v189, v191);
          if (((*(v97 + 40))(v174, v174, v96, v97) & 1) == 0)
          {
            goto LABEL_33;
          }

          v98 = v162;
          sub_1B6994F40(v165, v162, qword_1EDBC9BF0, type metadata accessor for TimedData);
          if ((*v158)(v98, 1, v174) == 1)
          {
            sub_1B6994FAC(v98, qword_1EDBC9BF0, type metadata accessor for TimedData);
LABEL_33:
            v99 = v191;
            v100 = v192;
            __swift_project_boxed_opaque_existential_1(&v189, v191);
            if ((*(v100 + 40))(v171, v171, v99, v100))
            {
              v101 = v157;
              sub_1B698A2A4(v167, v157, type metadata accessor for EventData);
              v102 = v169;
              *v169 = v82;
              sub_1B6994AF8(v101, v102 + *(v181 + 20), type metadata accessor for EventData);
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v102, v170, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
              }

              v104 = v81[2];
              v103 = v81[3];
              if (v104 >= v103 >> 1)
              {
                v81 = sub_1B69BED6C(v103 > 1, v104 + 1, 1, v81);
              }

              sub_1B6995008(v169, type metadata accessor for SequenceEntry);
              v81[2] = v104 + 1;
              v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v104;
              v93 = &v194;
              goto LABEL_51;
            }

            v105 = v191;
            v106 = v192;
            __swift_project_boxed_opaque_existential_1(&v189, v191);
            v107 = (*(v106 + 8))(v105, v106);
            sub_1B69BEDE8(v107, v108, v175, v176, 0, &v185);

            if (v186)
            {
              sub_1B6980E70(&v185, &v187);
              sub_1B6982544(&v187, &v185);
              v109 = v159;
              *v159 = v82;
              sub_1B6980E70(&v185, v109 + *(v181 + 20));
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v109, v160, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
              }

              v111 = v81[2];
              v110 = v81[3];
              if (v111 >= v110 >> 1)
              {
                v81 = sub_1B69BED6C(v110 > 1, v111 + 1, 1, v81);
              }

              sub_1B6995008(v159, type metadata accessor for SequenceEntry);
              __swift_destroy_boxed_opaque_existential_1(&v187);
              v81[2] = v111 + 1;
              v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v111;
              v93 = &v188;
              goto LABEL_51;
            }

            sub_1B6A23F44(&v185, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
            v117 = v191;
            v118 = v192;
            __swift_project_boxed_opaque_existential_1(&v189, v191);
            v119 = (*(v118 + 32))(v117, v118);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v120 = v168;
            }

            else
            {
              v120 = sub_1B69E3EC4(0, *(v168 + 16) + 1, 1, v168);
            }

            v122 = *(v120 + 2);
            v121 = *(v120 + 3);
            if (v122 >= v121 >> 1)
            {
              v120 = sub_1B69E3EC4((v121 > 1), v122 + 1, 1, v120);
            }

            *(v120 + 2) = v122 + 1;
            v168 = v120;
            v123 = &v120[24 * v122];
            *(v123 + 2) = v82;
            *(v123 + 6) = v119;
          }

          else
          {
            v112 = v161;
            sub_1B6994AF8(v98, v161, type metadata accessor for TimedData);
            v113 = v155;
            sub_1B698A2A4(v112, v155, type metadata accessor for TimedData);
            v114 = v163;
            *v163 = v82;
            sub_1B6994AF8(v113, v114 + *(v181 + 20), type metadata accessor for TimedData);
            swift_storeEnumTagMultiPayload();
            sub_1B698A2A4(v114, v164, type metadata accessor for SequenceEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
            }

            v116 = v81[2];
            v115 = v81[3];
            if (v116 >= v115 >> 1)
            {
              v81 = sub_1B69BED6C(v115 > 1, v116 + 1, 1, v81);
            }

            sub_1B6995008(v163, type metadata accessor for SequenceEntry);
            sub_1B6995008(v161, type metadata accessor for TimedData);
            v81[2] = v116 + 1;
            v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v116;
            v93 = &v190;
LABEL_51:
            sub_1B6994AF8(*(v93 - 32), v92, type metadata accessor for SequenceEntry);
            *(v179 + v172) = v81;
          }

          v77 = v180;
          goto LABEL_21;
        }
      }

LABEL_21:
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v80 += 56;
      if (!--v79)
      {

        v124 = v168;
        goto LABEL_62;
      }
    }
  }

  v77 = v180;
  if (v67 == 1)
  {
    sub_1B69E1350();
    v79 = *(v78 + 16);
    if (!v79)
    {
      goto LABEL_61;
    }

    goto LABEL_19;
  }

  v78 = sub_1B6A43710();
  v79 = *(v78 + 16);
  if (v79)
  {
    goto LABEL_19;
  }

LABEL_61:

  v124 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
LABEL_62:
  LODWORD(v49) = v156;
  if (!*(v124 + 2))
  {
LABEL_85:

    return sub_1B6994AF8(v179, v154, type metadata accessor for Sequence);
  }

  v125 = v81[2];
  v42 = MEMORY[0x1E69E7CC0];
  v168 = v124;
  if (!v125)
  {
    goto LABEL_75;
  }

  v187 = MEMORY[0x1E69E7CC0];
  sub_1B69E4D4C(0, v125, 0);
  v42 = v187;
  v126 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
  v127 = *(v173 + 72);
  do
  {
    v128 = v183;
    sub_1B698A2A4(v126, v183, type metadata accessor for SequenceEntry);
    v129 = *v128;
    v130 = v128[1];
    sub_1B698A2A4(v128 + *(v181 + 20), v184, type metadata accessor for SequenceEntry.Kind);
    v131 = swift_getEnumCaseMultiPayload();
    if (!v131)
    {
      v191 = v174;
      v192 = sub_1B69ACD84(&qword_1EDBCB008, type metadata accessor for TimedData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
      v133 = type metadata accessor for TimedData;
      goto LABEL_69;
    }

    if (v131 == 1)
    {
      v191 = v171;
      v192 = sub_1B69ACD84(&qword_1EDBCAAC0, type metadata accessor for EventData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
      v133 = type metadata accessor for EventData;
LABEL_69:
      sub_1B6994AF8(v184, boxed_opaque_existential_1, v133);
      goto LABEL_71;
    }

    sub_1B6980E70(v184, &v189);
LABEL_71:
    v134 = v191;
    v135 = __swift_project_boxed_opaque_existential_1(&v189, v191);
    *(&v195 + 1) = v134;
    v136 = __swift_allocate_boxed_opaque_existential_1(&v194);
    (*(*(v134 - 8) + 16))(v136, v135, v134);

    sub_1B6995008(v183, type metadata accessor for SequenceEntry);
    *&v193 = v129;
    *(&v193 + 1) = v130;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    v187 = v42;
    v138 = *(v42 + 16);
    v137 = *(v42 + 24);
    if (v138 >= v137 >> 1)
    {
      sub_1B69E4D4C((v137 > 1), v138 + 1, 1);
      v42 = v187;
    }

    *(v42 + 16) = v138 + 1;
    v139 = (v42 + 48 * v138);
    v140 = v193;
    v141 = v195;
    v139[3] = v194;
    v139[4] = v141;
    v139[2] = v140;
    v126 += v127;
    --v125;
  }

  while (v125);
  v77 = v180;
  LODWORD(v49) = v156;
LABEL_75:
  v51 = v166;
  if (*(v77 + 201))
  {
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_77;
    }

    goto LABEL_88;
  }

  sub_1B6A16B30();
  swift_allocError();
  *v147 = v168;
  v147[1] = v42;
  swift_willThrow();
  return sub_1B6995008(v179, type metadata accessor for Sequence);
}

uint64_t sub_1B6A1D710@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v176 = a6;
  v175 = a5;
  v165 = a4;
  v167 = a3;
  v168 = a2;
  v166 = a1;
  v154 = a7;
  v182 = type metadata accessor for SequenceEntry.Kind(0);
  v9 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v184 = (&v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = type metadata accessor for EventData();
  v11 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v157 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for SequenceEntry(0);
  v173 = *(v181 - 8);
  v13 = *(v173 + 64);
  v14 = MEMORY[0x1EEE9AC00](v181);
  v183 = (&v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v178 = &v152 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v177 = (&v152 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v152 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v159 = (&v152 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v152 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v169 = (&v152 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v164 = &v152 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v163 = (&v152 - v30);
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v162 = &v152 - v33;
  v174 = type metadata accessor for TimedData();
  v153 = *(v174 - 8);
  v34 = *(v153 + 64);
  v35 = MEMORY[0x1EEE9AC00](v174);
  v155 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v161 = &v152 - v37;
  v172 = type metadata accessor for Sequence(0);
  v38 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172);
  v179 = (&v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = type metadata accessor for SessionManager.SessionState(0);
  v40 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v156 = (&v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1B6AB90F0();
  v43 = *(v42 - 8);
  v44 = v43[8];
  MEMORY[0x1EEE9AC00](v42);
  v46 = (&v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(*(v8 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v46 = v47;
  v48 = *MEMORY[0x1E69E8020];
  v49 = v43[13];
  v49(v46, v48, v42);
  v50 = v47;
  v51 = sub_1B6AB9110();
  v52 = v43[1];
  v52(v46, v42);
  if ((v51 & 1) == 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  sub_1B6A22244(v166, v168, &v193);
  LODWORD(v158) = v193;
  v180 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v54 = 0;
  if (!Strong)
  {
    v63 = v166;
    v62 = v172;
LABEL_9:
    v64 = v158;
    goto LABEL_10;
  }

  v51 = Strong;
  v55 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v46 = v55;
  v49(v46, v48, v42);
  v56 = v55;
  v57 = sub_1B6AB9110();
  v52(v46, v42);
  if ((v57 & 1) == 0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_77:
    sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1B6ABF500;
    if (v49)
    {
      if (v49 == 1)
      {
        v143 = [swift_getObjCClassFromMetadata() eventName];
        v144 = sub_1B6AB92E0();
        v146 = v145;
      }

      else
      {
        v144 = *(v51 + OBJC_IVAR___AARawEvent_name);
        v146 = *(v51 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v144 = 0x457972616D6D7553;
      v146 = 0xEC000000746E6576;
    }

    v149 = MEMORY[0x1E69E6158];
    *(v142 + 56) = MEMORY[0x1E69E6158];
    v150 = sub_1B698CEC0();
    *(v142 + 64) = v150;
    *(v142 + 32) = v144;
    *(v142 + 40) = v146;
    *&v193 = 0;
    *(&v193 + 1) = 0xE000000000000000;
    v189 = v168;
    v190 = v42;
    sub_1B6AB9DF0();

    v151 = v193;
    *(v142 + 96) = v149;
    *(v142 + 104) = v150;
    *(v142 + 72) = v151;
    sub_1B6AB8F70();
    goto LABEL_85;
  }

  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v59 = v51 + v58;
  v60 = v156;
  sub_1B698A2A4(v59, v156, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v172;
  if (!EnumCaseMultiPayload)
  {
    v54 = *(*v60 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);

    v63 = v166;
    goto LABEL_9;
  }

  v63 = v166;
  v64 = v158;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B6995008(v60, type metadata accessor for SessionManager.SessionState);
  }

LABEL_10:
  v65 = 0xEC000000746E6576;
  v66 = 0x457972616D6D7553;
  v67 = v168 >> 62;
  if (v168 >> 62)
  {
    if (v67 == 1)
    {
      v68 = [swift_getObjCClassFromMetadata() eventName];
      v66 = sub_1B6AB92E0();
      v65 = v69;
    }

    else
    {
      v66 = *(v63 + OBJC_IVAR___AARawEvent_name);
      v65 = *(v63 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  v70 = *(v171 + 20);
  v71 = v62[5];
  v72 = sub_1B6AB8DB0();
  v73 = v179;
  (*(*(v72 - 8) + 16))(v179 + v71, v167 + v70, v72);
  sub_1B6A22340(v63, v168, &v193);
  v74 = v193;
  v75 = BYTE1(v193);
  v172 = v62[7];
  *(v73 + v172) = MEMORY[0x1E69E7CC0];
  *v73 = v66;
  v73[1] = v65;
  v76 = v73 + v62[6];
  *v76 = v64;
  *(v76 + 1) = v54;
  v76[16] = v74;
  v76[17] = v75;
  v156 = v67;
  if (!v67)
  {
    v78 = sub_1B69BB800(&type metadata for SummaryEvent, &off_1F2E7C830);
    v77 = v180;
    v79 = *(v78 + 16);
    if (!v79)
    {
      goto LABEL_61;
    }

LABEL_19:
    v152 = v78;
    v80 = v78 + 32;
    v158 = (v153 + 48);
    v81 = MEMORY[0x1E69E7CC0];
    v168 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B69BE328(v80, &v193);
      v82 = v193;
      sub_1B6980E70(&v194, &v189);
      v83 = v191;
      v84 = v192;
      __swift_project_boxed_opaque_existential_1(&v189, v191);
      if ((*(v84 + 16))(v83, v84))
      {
        v85 = v191;
        v86 = v192;
        __swift_project_boxed_opaque_existential_1(&v189, v191);
        v87 = (*(v86 + 8))(v85, v86);
        sub_1B69BEDE8(v87, v88, v175, v176, 0, &v185);

        if (v186)
        {
          sub_1B6980E70(&v185, &v187);
          sub_1B6982544(&v187, &v185);
          v89 = v177;
          *v177 = v82;
          sub_1B6980E70(&v185, v89 + *(v181 + 20));
          swift_storeEnumTagMultiPayload();
          sub_1B698A2A4(v89, v178, type metadata accessor for SequenceEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
          }

          v91 = v81[2];
          v90 = v81[3];
          if (v91 >= v90 >> 1)
          {
            v81 = sub_1B69BED6C(v90 > 1, v91 + 1, 1, v81);
          }

          sub_1B6995008(v177, type metadata accessor for SequenceEntry);
          __swift_destroy_boxed_opaque_existential_1(&v187);
          v81[2] = v91 + 1;
          v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v91;
          v93 = &v196;
          goto LABEL_51;
        }

        sub_1B6A23F44(&v185, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      }

      else
      {
        v94 = v191;
        v95 = v192;
        __swift_project_boxed_opaque_existential_1(&v189, v191);
        if (((*(v95 + 24))(v94, v95) & 1) == 0)
        {
          v96 = v191;
          v97 = v192;
          __swift_project_boxed_opaque_existential_1(&v189, v191);
          if (((*(v97 + 40))(v174, v174, v96, v97) & 1) == 0)
          {
            goto LABEL_33;
          }

          v98 = v162;
          sub_1B6994F40(v165, v162, qword_1EDBC9BF0, type metadata accessor for TimedData);
          if ((*v158)(v98, 1, v174) == 1)
          {
            sub_1B6994FAC(v98, qword_1EDBC9BF0, type metadata accessor for TimedData);
LABEL_33:
            v99 = v191;
            v100 = v192;
            __swift_project_boxed_opaque_existential_1(&v189, v191);
            if ((*(v100 + 40))(v171, v171, v99, v100))
            {
              v101 = v157;
              sub_1B698A2A4(v167, v157, type metadata accessor for EventData);
              v102 = v169;
              *v169 = v82;
              sub_1B6994AF8(v101, v102 + *(v181 + 20), type metadata accessor for EventData);
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v102, v170, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
              }

              v104 = v81[2];
              v103 = v81[3];
              if (v104 >= v103 >> 1)
              {
                v81 = sub_1B69BED6C(v103 > 1, v104 + 1, 1, v81);
              }

              sub_1B6995008(v169, type metadata accessor for SequenceEntry);
              v81[2] = v104 + 1;
              v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v104;
              v93 = &v194;
              goto LABEL_51;
            }

            v105 = v191;
            v106 = v192;
            __swift_project_boxed_opaque_existential_1(&v189, v191);
            v107 = (*(v106 + 8))(v105, v106);
            sub_1B69BEDE8(v107, v108, v175, v176, 0, &v185);

            if (v186)
            {
              sub_1B6980E70(&v185, &v187);
              sub_1B6982544(&v187, &v185);
              v109 = v159;
              *v159 = v82;
              sub_1B6980E70(&v185, v109 + *(v181 + 20));
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v109, v160, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
              }

              v111 = v81[2];
              v110 = v81[3];
              if (v111 >= v110 >> 1)
              {
                v81 = sub_1B69BED6C(v110 > 1, v111 + 1, 1, v81);
              }

              sub_1B6995008(v159, type metadata accessor for SequenceEntry);
              __swift_destroy_boxed_opaque_existential_1(&v187);
              v81[2] = v111 + 1;
              v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v111;
              v93 = &v188;
              goto LABEL_51;
            }

            sub_1B6A23F44(&v185, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
            v117 = v191;
            v118 = v192;
            __swift_project_boxed_opaque_existential_1(&v189, v191);
            v119 = (*(v118 + 32))(v117, v118);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v120 = v168;
            }

            else
            {
              v120 = sub_1B69E3EC4(0, *(v168 + 16) + 1, 1, v168);
            }

            v122 = *(v120 + 2);
            v121 = *(v120 + 3);
            if (v122 >= v121 >> 1)
            {
              v120 = sub_1B69E3EC4((v121 > 1), v122 + 1, 1, v120);
            }

            *(v120 + 2) = v122 + 1;
            v168 = v120;
            v123 = &v120[24 * v122];
            *(v123 + 2) = v82;
            *(v123 + 6) = v119;
          }

          else
          {
            v112 = v161;
            sub_1B6994AF8(v98, v161, type metadata accessor for TimedData);
            v113 = v155;
            sub_1B698A2A4(v112, v155, type metadata accessor for TimedData);
            v114 = v163;
            *v163 = v82;
            sub_1B6994AF8(v113, v114 + *(v181 + 20), type metadata accessor for TimedData);
            swift_storeEnumTagMultiPayload();
            sub_1B698A2A4(v114, v164, type metadata accessor for SequenceEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_1B69BED6C(0, v81[2] + 1, 1, v81);
            }

            v116 = v81[2];
            v115 = v81[3];
            if (v116 >= v115 >> 1)
            {
              v81 = sub_1B69BED6C(v115 > 1, v116 + 1, 1, v81);
            }

            sub_1B6995008(v163, type metadata accessor for SequenceEntry);
            sub_1B6995008(v161, type metadata accessor for TimedData);
            v81[2] = v116 + 1;
            v92 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v116;
            v93 = &v190;
LABEL_51:
            sub_1B6994AF8(*(v93 - 32), v92, type metadata accessor for SequenceEntry);
            *(v179 + v172) = v81;
          }

          v77 = v180;
          goto LABEL_21;
        }
      }

LABEL_21:
      __swift_destroy_boxed_opaque_existential_1(&v189);
      v80 += 56;
      if (!--v79)
      {

        v124 = v168;
        goto LABEL_62;
      }
    }
  }

  v77 = v180;
  if (v67 == 1)
  {
    sub_1B69E1350();
    v79 = *(v78 + 16);
    if (!v79)
    {
      goto LABEL_61;
    }

    goto LABEL_19;
  }

  v78 = sub_1B6A43710();
  v79 = *(v78 + 16);
  if (v79)
  {
    goto LABEL_19;
  }

LABEL_61:

  v124 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
LABEL_62:
  LODWORD(v49) = v156;
  if (!*(v124 + 2))
  {
LABEL_85:

    return sub_1B6994AF8(v179, v154, type metadata accessor for Sequence);
  }

  v125 = v81[2];
  v42 = MEMORY[0x1E69E7CC0];
  v168 = v124;
  if (!v125)
  {
    goto LABEL_75;
  }

  v187 = MEMORY[0x1E69E7CC0];
  sub_1B69E4D4C(0, v125, 0);
  v42 = v187;
  v126 = v81 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
  v127 = *(v173 + 72);
  do
  {
    v128 = v183;
    sub_1B698A2A4(v126, v183, type metadata accessor for SequenceEntry);
    v129 = *v128;
    v130 = v128[1];
    sub_1B698A2A4(v128 + *(v181 + 20), v184, type metadata accessor for SequenceEntry.Kind);
    v131 = swift_getEnumCaseMultiPayload();
    if (!v131)
    {
      v191 = v174;
      v192 = sub_1B69ACD84(&qword_1EDBCB008, type metadata accessor for TimedData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
      v133 = type metadata accessor for TimedData;
      goto LABEL_69;
    }

    if (v131 == 1)
    {
      v191 = v171;
      v192 = sub_1B69ACD84(&qword_1EDBCAAC0, type metadata accessor for EventData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v189);
      v133 = type metadata accessor for EventData;
LABEL_69:
      sub_1B6994AF8(v184, boxed_opaque_existential_1, v133);
      goto LABEL_71;
    }

    sub_1B6980E70(v184, &v189);
LABEL_71:
    v134 = v191;
    v135 = __swift_project_boxed_opaque_existential_1(&v189, v191);
    *(&v195 + 1) = v134;
    v136 = __swift_allocate_boxed_opaque_existential_1(&v194);
    (*(*(v134 - 8) + 16))(v136, v135, v134);

    sub_1B6995008(v183, type metadata accessor for SequenceEntry);
    *&v193 = v129;
    *(&v193 + 1) = v130;
    __swift_destroy_boxed_opaque_existential_1(&v189);
    v187 = v42;
    v138 = *(v42 + 16);
    v137 = *(v42 + 24);
    if (v138 >= v137 >> 1)
    {
      sub_1B69E4D4C((v137 > 1), v138 + 1, 1);
      v42 = v187;
    }

    *(v42 + 16) = v138 + 1;
    v139 = (v42 + 48 * v138);
    v140 = v193;
    v141 = v195;
    v139[3] = v194;
    v139[4] = v141;
    v139[2] = v140;
    v126 += v127;
    --v125;
  }

  while (v125);
  v77 = v180;
  LODWORD(v49) = v156;
LABEL_75:
  v51 = v166;
  if (*(v77 + 201))
  {
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_77;
    }

    goto LABEL_88;
  }

  sub_1B6A16B30();
  swift_allocError();
  *v147 = v168;
  v147[1] = v42;
  swift_willThrow();
  return sub_1B6995008(v179, type metadata accessor for Sequence);
}

void sub_1B6A1EE4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), char *a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, unint64_t *a16, uint64_t a17, uint64_t a18, unint64_t *a19, void (*a20)(uint64_t), uint64_t (*a21)(_BYTE *, unint64_t, void (*)(void), char *), uint64_t (*a22)(_BYTE *, unint64_t, void (*)(void), char *))
{
  v168 = a8;
  v176 = a7;
  v175 = a6;
  v181 = a5;
  v185 = a2;
  v178 = a16;
  sub_1B6A24908(0, a16, a17, a18, type metadata accessor for EventSubmitResult);
  v173 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v174 = &v150[-v26];
  v165 = a19;
  v179 = a17;
  v180 = a18;
  sub_1B6A24908(0, a19, a17, a18, type metadata accessor for ProcessEvent);
  v162 = v27;
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v150[-v29];
  v167 = type metadata accessor for Sequence(0);
  v30 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v150[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v177 = type metadata accessor for TimedData();
  v32 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v183 = &v150[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v172 = sub_1B6AB8DB0();
  v171 = *(v172 - 8);
  v34 = v171[8];
  v35 = MEMORY[0x1EEE9AC00](v172);
  v170 = &v150[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v169 = &v150[-v38];
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v150[-v39];
  v41 = type metadata accessor for EventData();
  v42 = *(*(v41 - 1) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v184 = &v150[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for SessionObserverChange();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v150[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_1B6AB90F0();
  v49 = *(v48 - 8);
  v50 = v49[8];
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v150[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = swift_projectBox();
  swift_beginAccess();
  v163 = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v161 = v53;
    v160 = a4;
    v182 = Strong;
    v55 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v52 = v55;
    v56 = *MEMORY[0x1E69E8020];
    v57 = *MEMORY[0x1E69E8020];
    v159 = v49[13];
    v159(v52, v57, v48);
    v58 = v55;
    v59 = sub_1B6AB9110();
    v158 = v49[1];
    v158(v52, v48);
    if ((v59 & 1) == 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    sub_1B698A2A4(v185, v47, type metadata accessor for SessionObserverChange);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {

        return;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v151 = v56;
      v152 = v49 + 13;
      v61 = *v47;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B6A1B07C(v175, v176, &v191);
        v188 = v191;
        v189 = v192;
        v190 = v193;
        v62 = sub_1B69B8DBC(&v188);
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0;
      }

      v153 = v48;
      v68 = v168;
      v69 = v168[1];
      v157 = *v168;

      sub_1B6AB8DA0();
      v70 = (v68 + v41[6]);
      v71 = v70[1];
      v168 = *v70;
      v154 = v62;
      v185 = v61;
      if (v62)
      {
        v72 = *(v62 + 24);
        v156 = *(v62 + 16);
        v73 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
        v74 = *(v62 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
        if (v74)
        {
          v155 = *(v62 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
          v59 = v72;

          goto LABEL_19;
        }

        v59 = v72;

        v76 = v185;
      }

      else
      {
        v75 = *(v61 + 24);
        v156 = *(v61 + 16);
        v76 = v61;
        v59 = v75;

        v73 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
      }

      v74 = *(v76 + v73 + 8);
      v155 = *(v76 + v73);

LABEL_19:
      v77 = v184;
      *v184 = v157;
      v77[1] = v69;
      v78 = v41[5];
      v79 = v171;
      v80 = v40;
      v40 = v172;
      (v171[4])(&v78[v77], v80, v172);
      v81 = (v77 + v41[6]);
      *v81 = v168;
      v81[1] = v71;
      v82 = (v77 + v41[7]);
      *v82 = v156;
      v82[1] = v59;
      v83 = (v77 + v41[8]);
      *v83 = v155;
      v83[1] = v74;
      v84 = v79[2];
      v85 = v169;
      (v84)(v169, v185 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v40);
      v168 = v78;
      v86 = &v78[v77];
      v87 = v170;
      (v84)(v170, v86, v40);
      v88 = v183;
      (v84)(v183, v85, v40);
      v89 = &v88[*(v177 + 20)];
      v157 = v79 + 2;
      (v84)(v89, v87, v40);
      sub_1B6AB8D00();
      v91 = v90;
      v92 = v79[1];
      v92(v87, v40);
      v92(v85, v40);
      v93 = v91 * 1000.0;
      if (COERCE__INT64(fabs(v91 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v94 = v181;
        if (v93 > -9.22337204e18)
        {
          v171 = v84;
          if (v93 < 9.22337204e18)
          {
            v95 = v183;
            *&v183[*(v177 + 24)] = v93;
            v96 = v161;
            v97 = swift_beginAccess();
            v98 = *(v167 + 28);
            v99 = *(v96 + v98);
            MEMORY[0x1EEE9AC00](v97);
            *&v150[-16] = v184;
            *&v150[-8] = v95;
            v59 = 0;
            v101 = sub_1B6A115A8(a20, &v150[-32], v100);
            v102 = *(v96 + v98);
            *(v96 + v98) = v101;
            swift_endAccess();

            v103 = v175;
            v104 = v176;
            v105 = v160;
            v106 = v182;
            if ((a21(v175, v176, v160, v94) & 1) == 0 || (sub_1B6A23928(v103, v104, v105, v94, v178, v179, v180) & 1) == 0 || (a22(v103, v104, v105, v94) & 1) == 0)
            {
              goto LABEL_29;
            }

            v107 = v161;
            swift_beginAccess();
            v108 = v166;
            sub_1B698A2A4(v107, v166, type metadata accessor for Sequence);
            v110 = v106[26];
            v109 = v106[27];
            ObjectType = swift_getObjectType();
            (*(v109 + 8))(&v188, ObjectType, v109);
            v40 = v188;
            v112 = v106[11];
            v113 = *&v112[OBJC_IVAR___AAAccessQueue_queue];
            *v52 = v113;
            v114 = v153;
            v159(v52, v151, v153);
            v115 = v113;
            LOBYTE(v113) = sub_1B6AB9110();
            v116 = (v158)(v52, v114);
            if (v113)
            {
              MEMORY[0x1EEE9AC00](v116);
              *&v150[-16] = v40;
              *&v150[-8] = v108;
              v126 = sub_1B69BF2DC(v112, v117, &v150[-32]);

              sub_1B6995008(v108, type metadata accessor for Sequence);
              if (v126)
              {
                v127 = v161;
                swift_beginAccess();
                v129 = *v127;
                v128 = v127[1];
                v130 = v162;
                v131 = v164;
                (v171)(&v164[v162[11]], v168 + v184, v172);
                sub_1B69C1678(a14, v131 + v130[14]);
                *v131 = v129;
                *(v131 + 8) = v128;
                *(v131 + 24) = 0x302E312E30;
                *(v131 + 32) = 0xE500000000000000;
                *(v131 + 16) = v126;
                v132 = (v131 + v130[12]);
                *v132 = a10;
                v132[1] = a11;
                v133 = v131 + v130[13];
                *v133 = a12;
                *(v133 + 8) = a13 & 1;
                *(v131 + v130[15]) = xmmword_1B6AC0320;
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  v134 = swift_unknownObjectWeakLoadStrong();

                  v135 = v126;

                  v136 = v160;
                  v137 = v165;
                  if (v134)
                  {
                    sub_1B6A11750(v131, v165, v179, v180);
                    swift_unknownObjectRelease();
                  }
                }

                else
                {

                  v145 = v126;
                  v136 = v160;
                  v137 = v165;
                }

                if (v136)
                {
                  v146 = v174;
                  v147 = v179;
                  v148 = v180;
                  sub_1B6A23DD4(v131, v174, v137, v179, v180, type metadata accessor for ProcessEvent);
                  swift_storeEnumTagMultiPayload();
                  v136(v146);

                  sub_1B6A16B84(v146, v178, v147, v148, type metadata accessor for EventSubmitResult);
                  sub_1B6A16B84(v131, v137, v147, v148, type metadata accessor for ProcessEvent);
                  goto LABEL_47;
                }

                sub_1B6A16B84(v131, v137, v179, v180, type metadata accessor for ProcessEvent);

                goto LABEL_46;
              }

              v138 = v161;
              if (qword_1EDBCCEE0 != -1)
              {
                swift_once();
              }

              sub_1B6AB98D0();
              sub_1B6AB8F70();
              v139 = v160;
              if (v160)
              {
                swift_beginAccess();
                v141 = *v138;
                v140 = v138[1];
                sub_1B6A23D80();
                v142 = swift_allocError();
                *v143 = v141;
                v143[1] = v140;
                v144 = v174;
                *v174 = v142;
                swift_storeEnumTagMultiPayload();

                v139(v144);

                sub_1B6A16B84(v144, v178, v179, v180, type metadata accessor for EventSubmitResult);
                goto LABEL_30;
              }

LABEL_29:

LABEL_30:
              sub_1B6995008(v183, type metadata accessor for TimedData);
              v66 = type metadata accessor for EventData;
              v67 = v184;
              goto LABEL_31;
            }

LABEL_53:
            __break(1u);
            swift_once();
            v177 = qword_1EDBCCB28;
            sub_1B6AB98F0();
            sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v118 = swift_allocObject();
            *(v118 + 16) = xmmword_1B6ABF500;
            *&v188 = 0;
            *(&v188 + 1) = 0xE000000000000000;
            v186 = v175;
            v187 = v176;
            sub_1B6A24908(0, v40, v179, v180, type metadata accessor for EventSubmit);
            sub_1B6AB9DF0();
            v119 = v188;
            v120 = MEMORY[0x1E69E6158];
            *(v118 + 56) = MEMORY[0x1E69E6158];
            v121 = sub_1B698CEC0();
            *(v118 + 64) = v121;
            *(v118 + 32) = v119;
            *&v188 = 0;
            *(&v188 + 1) = 0xE000000000000000;
            v186 = v59;
            sub_1B697ED90(0, &qword_1EDBCBB00);
            sub_1B6AB9DF0();
            v122 = v188;
            *(v118 + 96) = v120;
            *(v118 + 104) = v121;
            *(v118 + 72) = v122;
            sub_1B6AB8F70();

            v123 = v160;
            if (v160)
            {
              v124 = v174;
              *v174 = v59;
              swift_storeEnumTagMultiPayload();
              v125 = v59;
              v123(v124);

              sub_1B6A16B84(v124, v178, v179, v180, type metadata accessor for EventSubmitResult);
LABEL_47:
              sub_1B6995008(v183, type metadata accessor for TimedData);
              sub_1B6995008(v184, type metadata accessor for EventData);
              swift_beginAccess();
              v149 = *(a15 + 16);
              *(a15 + 16) = 0;

              return;
            }

LABEL_46:

            goto LABEL_47;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v66 = type metadata accessor for SessionObserverChange;
    v67 = v47;
LABEL_31:
    sub_1B6995008(v67, v66);
    return;
  }

  if (a4)
  {
    sub_1B6A16B30();
    v63 = swift_allocError();
    *v64 = xmmword_1B6AC0310;
    v65 = v174;
    *v174 = v63;
    swift_storeEnumTagMultiPayload();
    a4(v65);
    sub_1B6A16B84(v65, v178, v179, v180, type metadata accessor for EventSubmitResult);
  }
}

BOOL sub_1B6A201D0(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v48 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v45 - v7);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = NSUserDefaults.overrideSamplingThreshold.getter();
  v16 = v15;

  v17 = a2 >> 62;
  if (v16)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        v14 = *(v48 + OBJC_IVAR___AARawEvent_samplingThreshold);
        goto LABEL_11;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_])
      {
        v14 = [ObjCClassFromMetadata samplingThreshold];
        goto LABEL_11;
      }
    }

    if (swift_unknownObjectWeakLoadStrong() && (v19 = sub_1B69BA028(), v21 = v20, swift_unknownObjectRelease(), (v21 & 1) == 0))
    {
      v14 = v19;
    }

    else
    {
      v14 = 100;
    }
  }

LABEL_11:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_14;
  }

  v22 = v14;
  sub_1B69BA084(v12);
  swift_unknownObjectRelease();
  v23 = sub_1B6AB8E40();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v12, 1, v23) == 1)
  {
    sub_1B6994FAC(v12, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    v14 = v22;
LABEL_14:
    v25 = -1;
    if (v14 >= -1)
    {
      return v14 >= v25;
    }

LABEL_17:
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6AB8F90();
    __swift_project_value_buffer(v27, qword_1EDBCFDA8);
    v28 = sub_1B6AB8F80();
    v29 = sub_1B6AB98D0();
    v30 = os_log_type_enabled(v28, v29);
    v47 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v46 = v17;
      v17 = v31;
      v45 = swift_slowAlloc();
      v49 = v25;
      v50 = v45;
      *v17 = 134218242;
      *(v17 + 4) = v14;
      *(v17 + 12) = 2080;
      v32 = sub_1B6ABA080();
      v34 = a3;
      v35 = sub_1B698F63C(v32, v33, &v50);

      *(v17 + 14) = v35;
      a3 = v34;
      _os_log_impl(&dword_1B697C000, v28, v29, "Event threshold of %ld is lower than the current sampling value of %s", v17, 0x16u);
      v36 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1B8C99550](v36, -1, -1);
      v37 = v17;
      LODWORD(v17) = v46;
      MEMORY[0x1B8C99550](v37, -1, -1);
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v38 = [swift_getObjCClassFromMetadata() eventName];
        v39 = sub_1B6AB92E0();
        v41 = v40;

        v14 = v47;
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v39 = *(v48 + OBJC_IVAR___AARawEvent_name);
      v41 = *(v48 + OBJC_IVAR___AARawEvent_name + 8);

      v14 = v47;
      if (!a3)
      {
LABEL_28:

        return v14 >= v25;
      }
    }

    else
    {
      v41 = 0xEC000000746E6576;
      v39 = 0x4564656764697242;
      v14 = v47;
      if (!a3)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    sub_1B6A23EF0();
    v42 = swift_allocError();
    *v43 = v39;
    v43[1] = v41;
    v43[2] = v14;
    v43[3] = v25;
    *v8 = v42;
    swift_storeEnumTagMultiPayload();
    a3(v8);
    sub_1B6A16B84(v8, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return v14 >= v25;
  }

  v26 = sub_1B6A6E548();
  (*(v24 + 8))(v12, v23);
  v14 = v22;
  v25 = v26;
  if (v14 < v26)
  {
    goto LABEL_17;
  }

  return v14 >= v25;
}

BOOL sub_1B6A20734(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v48 = a1;
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v45 - v7);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = NSUserDefaults.overrideSamplingThreshold.getter();
  v16 = v15;

  v17 = a2 >> 62;
  if (v16)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        v14 = *(v48 + OBJC_IVAR___AARawEvent_samplingThreshold);
        goto LABEL_11;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_])
      {
        v14 = [ObjCClassFromMetadata samplingThreshold];
        goto LABEL_11;
      }
    }

    if (swift_unknownObjectWeakLoadStrong() && (v19 = sub_1B69BA028(), v21 = v20, swift_unknownObjectRelease(), (v21 & 1) == 0))
    {
      v14 = v19;
    }

    else
    {
      v14 = 100;
    }
  }

LABEL_11:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_14;
  }

  v22 = v14;
  sub_1B69BA084(v12);
  swift_unknownObjectRelease();
  v23 = sub_1B6AB8E40();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v12, 1, v23) == 1)
  {
    sub_1B6994FAC(v12, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    v14 = v22;
LABEL_14:
    v25 = -1;
    if (v14 >= -1)
    {
      return v14 >= v25;
    }

LABEL_17:
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6AB8F90();
    __swift_project_value_buffer(v27, qword_1EDBCFDA8);
    v28 = sub_1B6AB8F80();
    v29 = sub_1B6AB98D0();
    v30 = os_log_type_enabled(v28, v29);
    v47 = v14;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v46 = v17;
      v17 = v31;
      v45 = swift_slowAlloc();
      v49 = v25;
      v50 = v45;
      *v17 = 134218242;
      *(v17 + 4) = v14;
      *(v17 + 12) = 2080;
      v32 = sub_1B6ABA080();
      v34 = a3;
      v35 = sub_1B698F63C(v32, v33, &v50);

      *(v17 + 14) = v35;
      a3 = v34;
      _os_log_impl(&dword_1B697C000, v28, v29, "Event threshold of %ld is lower than the current sampling value of %s", v17, 0x16u);
      v36 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1B8C99550](v36, -1, -1);
      v37 = v17;
      LODWORD(v17) = v46;
      MEMORY[0x1B8C99550](v37, -1, -1);
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v38 = [swift_getObjCClassFromMetadata() eventName];
        v39 = sub_1B6AB92E0();
        v41 = v40;

        v14 = v47;
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v39 = *(v48 + OBJC_IVAR___AARawEvent_name);
      v41 = *(v48 + OBJC_IVAR___AARawEvent_name + 8);

      v14 = v47;
      if (!a3)
      {
LABEL_28:

        return v14 >= v25;
      }
    }

    else
    {
      v41 = 0xEC000000746E6576;
      v39 = 0x457972616D6D7553;
      v14 = v47;
      if (!a3)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    sub_1B6A23EF0();
    v42 = swift_allocError();
    *v43 = v39;
    v43[1] = v41;
    v43[2] = v14;
    v43[3] = v25;
    *v8 = v42;
    swift_storeEnumTagMultiPayload();
    a3(v8);
    sub_1B6A16B84(v8, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
    return v14 >= v25;
  }

  v26 = sub_1B6A6E548();
  (*(v24 + 8))(v12, v23);
  v14 = v22;
  v25 = v26;
  if (v14 < v26)
  {
    goto LABEL_17;
  }

  return v14 >= v25;
}

uint64_t sub_1B6A20C98(_BYTE *a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - v11);
  v13 = *(v4 + 32);
  if (*(v13 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
  {
    return 1;
  }

  v14 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v14 == 1)
    {
      v38 = a4;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_] & 1) != 0 && (objc_msgSend(ObjCClassFromMetadata, sel_requiresDiagnosticsConsent))
      {
        return 1;
      }

      v16 = [ObjCClassFromMetadata respondsToSelector_];
      a4 = v38;
      if ((v16 & 1) != 0 && ![ObjCClassFromMetadata requiresTrackingConsent])
      {
        return 1;
      }
    }

    else if ((a1[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] & 1) != 0 || (a1[OBJC_IVAR___AARawEvent_requiresTrackingConsent] & 1) == 0)
    {
      return 1;
    }
  }

  v17 = *(v13 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v17 + 20));
  v18 = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));
  if (!v18)
  {
    return 1;
  }

  v37 = a3;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v19 = 0x4564656764697242;
  v20 = sub_1B6AB8F90();
  __swift_project_value_buffer(v20, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v21 = sub_1B6AB8F80();
  v22 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  if (os_log_type_enabled(v21, v22))
  {
    v38 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136446210;
    if (v14)
    {
      if (v14 == 1)
      {
        v36 = [swift_getObjCClassFromMetadata() eventName];
        v25 = sub_1B6AB92E0();
        v27 = v26;
      }

      else
      {
        v25 = *&a1[OBJC_IVAR___AARawEvent_name];
        v27 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v25 = 0x4564656764697242;
      v27 = 0xEC000000746E6576;
    }

    v30 = sub_1B698F63C(v25, v27, &v39);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1B697C000, v21, v22, "Tracking consent denied for event: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1B8C99550](v24, -1, -1);
    MEMORY[0x1B8C99550](v23, -1, -1);

    v19 = 0x4564656764697242;
    v29 = v37;
    if (!v37)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v29 = v37;
  if (v37)
  {
LABEL_24:
    if (v14)
    {
      if (v14 == 1)
      {
        v31 = [swift_getObjCClassFromMetadata() eventName];
        v19 = sub_1B6AB92E0();
        v33 = v32;
      }

      else
      {
        v19 = *&a1[OBJC_IVAR___AARawEvent_name];
        v33 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v33 = 0xEC000000746E6576;
    }

    sub_1B6A23E48();
    v34 = swift_allocError();
    *v35 = v19;
    v35[1] = v33;
    *v12 = v34;
    swift_storeEnumTagMultiPayload();
    v29(v12);
    sub_1B6A16B84(v12, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  }

  return 0;
}

uint64_t sub_1B6A21108(_BYTE *a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - v11);
  v13 = *(v4 + 32);
  if (*(v13 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
  {
    return 1;
  }

  v14 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v14 == 1)
    {
      v38 = a4;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_] & 1) != 0 && (objc_msgSend(ObjCClassFromMetadata, sel_requiresDiagnosticsConsent))
      {
        return 1;
      }

      v16 = [ObjCClassFromMetadata respondsToSelector_];
      a4 = v38;
      if ((v16 & 1) != 0 && ![ObjCClassFromMetadata requiresTrackingConsent])
      {
        return 1;
      }
    }

    else if ((a1[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] & 1) != 0 || (a1[OBJC_IVAR___AARawEvent_requiresTrackingConsent] & 1) == 0)
    {
      return 1;
    }
  }

  v17 = *(v13 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v17 + 20));
  v18 = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));
  if (!v18)
  {
    return 1;
  }

  v37 = a3;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v19 = 0x457972616D6D7553;
  v20 = sub_1B6AB8F90();
  __swift_project_value_buffer(v20, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v21 = sub_1B6AB8F80();
  v22 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  if (os_log_type_enabled(v21, v22))
  {
    v38 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136446210;
    if (v14)
    {
      if (v14 == 1)
      {
        v36 = [swift_getObjCClassFromMetadata() eventName];
        v25 = sub_1B6AB92E0();
        v27 = v26;
      }

      else
      {
        v25 = *&a1[OBJC_IVAR___AARawEvent_name];
        v27 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v25 = 0x457972616D6D7553;
      v27 = 0xEC000000746E6576;
    }

    v30 = sub_1B698F63C(v25, v27, &v39);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1B697C000, v21, v22, "Tracking consent denied for event: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1B8C99550](v24, -1, -1);
    MEMORY[0x1B8C99550](v23, -1, -1);

    v19 = 0x457972616D6D7553;
    v29 = v37;
    if (!v37)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v29 = v37;
  if (v37)
  {
LABEL_24:
    if (v14)
    {
      if (v14 == 1)
      {
        v31 = [swift_getObjCClassFromMetadata() eventName];
        v19 = sub_1B6AB92E0();
        v33 = v32;
      }

      else
      {
        v19 = *&a1[OBJC_IVAR___AARawEvent_name];
        v33 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v33 = 0xEC000000746E6576;
    }

    sub_1B6A23E48();
    v34 = swift_allocError();
    *v35 = v19;
    v35[1] = v33;
    *v12 = v34;
    swift_storeEnumTagMultiPayload();
    v29(v12);
    sub_1B6A16B84(v12, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  }

  return 0;
}

uint64_t sub_1B6A21578(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v50 = a8;
  v51 = a1;
  v52 = a7;
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*(v9 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  LOBYTE(v20) = sub_1B6AB9110();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v22 = *(a5 + 16);
    v23 = (a5 + 32);
    v24 = (a5 + 32);
    while (v22)
    {
      v25 = *v24++;
      --v22;
      if (v25 == 2)
      {
        sub_1B69BEDE8(a2, a3, 0, 0, 1, &v56);
        v26 = v58;
        result = sub_1B6A23F44(&v56, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
        if (v26)
        {
          return result;
        }

        break;
      }
    }

    swift_beginAccess();
    v28 = *(v9 + 128);
    if (*(v28 + 16))
    {
      v29 = *(v9 + 128);

      v30 = sub_1B6993940(a2, a3);
      if (v31)
      {
        sub_1B6982544(*(v28 + 56) + 40 * v30, &v56);

        sub_1B697ED90(0, &qword_1EDBCC3B0);
        sub_1B6A244C4();
        if (swift_dynamicCast())
        {
          v15 = v53;
          v32 = v54;
          v33 = v55;
LABEL_12:
          v34 = *(a5 + 16);
          v47 = v33;
          v48 = v32;
          while (v34)
          {
            v35 = *v23++;
            --v34;
            if (v35 == 1)
            {

              v15 = MEMORY[0x1E69E7CC0];
              break;
            }
          }

          LOBYTE(v19) = a4 & 1;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain_n();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v15 = MEMORY[0x1E69E7CC0];
    v32 = a2;
    v33 = a3;
    goto LABEL_12;
  }

  __break(1u);
LABEL_22:
  v15 = sub_1B69E41B4(0, v15[2] + 1, 1, v15);
LABEL_17:
  v46 = a3;
  v49 = a2;
  v37 = v15[2];
  v36 = v15[3];
  v38 = v19;
  v39 = a6;
  if (v37 >= v36 >> 1)
  {
    v15 = sub_1B69E41B4((v36 > 1), v37 + 1, 1, v15);
  }

  v40 = v52;

  v41 = v51;
  swift_unknownObjectRelease();
  v15[2] = v37 + 1;
  v42 = &v15[6 * v37];
  v42[4] = v41;
  v42[5] = a5;
  *(v42 + 48) = v38;
  *(v42 + 49) = HIBYTE(a4) & 1;
  v42[7] = v39;
  v42[8] = v40;
  v42[9] = v50;
  sub_1B6A244C4();
  v58 = v43;
  v59 = &off_1F2E77398;
  *&v56 = v15;
  *(&v56 + 1) = v48;
  v57 = v47;
  swift_beginAccess();
  v44 = v46;

  v45 = v49;
  sub_1B699A480(&v56, v49, v44);
  swift_endAccess();
  sub_1B6A4EDB4(v45, v44);
  return sub_1B6A4F44C(v45, v44);
}

uint64_t sub_1B6A2196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a5;
  v56 = a4;
  v54 = a3;
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  v10 = v9;
  v11 = *(v9 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v57 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = sub_1B6AB90F0();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(*(v6 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v23 = v22;
  v24 = sub_1B6AB9110();
  (*(v18 + 8))(v21, v17);
  if (v24)
  {
    v53 = v11;
    sub_1B6A225FC(0, &qword_1EB95B638, type metadata accessor for PushEvent);
    v26 = v25;
    v27 = a1 + *(v25 + 36);
    v21 = *v27;
    v24 = *(v27 + 8);
    v28 = *(a2 + 16);
    v29 = (a2 + 32);
    v30 = (a2 + 32);
    while (v28)
    {
      v31 = *v30++;
      --v28;
      if (v31 == 2)
      {
        sub_1B69BEDE8(v21, v24, 0, 0, 1, &v61);
        v32 = v63;
        result = sub_1B6A23F44(&v61, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
        if (v32)
        {
          return result;
        }

        break;
      }
    }

    swift_beginAccess();
    v34 = *(v6 + 128);
    if (*(v34 + 16))
    {
      v35 = *(v6 + 128);

      v36 = sub_1B6993940(v21, v24);
      if (v37)
      {
        sub_1B6982544(*(v34 + 56) + 40 * v36, &v61);

        sub_1B697ED90(0, &qword_1EDBCC3B0);
        sub_1B6A225FC(0, &qword_1EB95B640, type metadata accessor for DataEventStack);
        if (swift_dynamicCast())
        {
          v17 = v58;
          v38 = v59;
          v39 = v60;
LABEL_12:
          v40 = *(a2 + 16);
          v51 = v39;
          v52 = v38;
          while (v40)
          {
            v41 = *v29++;
            --v40;
            if (v41 == 1)
            {

              v17 = MEMORY[0x1E69E7CC0];
              break;
            }
          }

          v42 = *(a1 + *(v26 + 40));
          v43 = *(a1 + *(v26 + 44));
          sub_1B698A2A4(a1, v16, type metadata accessor for SummaryEventData);
          *&v16[v10[9]] = a2;
          v16[v10[10]] = v42;
          v16[v10[11]] = v43;
          v44 = &v16[v10[12]];
          v45 = v55;
          v46 = v56;
          *v44 = v54;
          *(v44 + 1) = v46;
          *&v16[v10[13]] = v45;
          v10 = v57;
          sub_1B6A22484(v16, v57);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
    v38 = v21;
    v39 = v24;
    goto LABEL_12;
  }

  __break(1u);
LABEL_22:
  v17 = sub_1B69E431C(0, v17[2] + 1, 1, v17);
LABEL_17:
  v47 = v53;
  v49 = v17[2];
  v48 = v17[3];
  if (v49 >= v48 >> 1)
  {
    v17 = sub_1B69E431C(v48 > 1, v49 + 1, 1, v17);
  }

  sub_1B6A22504(v16);
  v17[2] = v49 + 1;
  sub_1B6A2257C(v10, v17 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v49);
  sub_1B6A225FC(0, &qword_1EB95B640, type metadata accessor for DataEventStack);
  v63 = v50;
  v64 = &off_1F2E77398;
  *&v61 = v17;
  *(&v61 + 1) = v52;
  v62 = v51;
  swift_beginAccess();

  sub_1B699A480(&v61, v21, v24);
  swift_endAccess();
  sub_1B6A4EDB4(v21, v24);
  return sub_1B6A4F44C(v21, v24);
}

uint64_t sub_1B6A21EA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(*(v2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      sub_1B69E85A4();
      a1 = sub_1B6ABA330();
      v13 = v14;
    }

    swift_beginAccess();
    v15 = *(v2 + 128);
    v16 = *(v15 + 16);

    if (v16)
    {

      v17 = sub_1B6993940(a1, v13);
      if (v18)
      {
        sub_1B6982544(*(v15 + 56) + 40 * v17, &v22);

        sub_1B697ED90(0, &qword_1EDBCC3B0);
        sub_1B6A244C4();
        v20 = v19;
        if (swift_dynamicCast())
        {
          if (*(v26 + 16))
          {
            sub_1B6A16420();
            swift_unknownObjectRelease();
            v24 = v20;
            v25 = &off_1F2E77398;
            v22 = v26;
            v23 = v27;
            swift_beginAccess();
            sub_1B699A480(&v22, a1, v13);
            return swift_endAccess();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A22150@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 >> 62;
  if (!(a2 >> 62))
  {
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    v4 = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [ObjCClassFromMetadata respondsToSelector_];
    if ((result & 1) == 0)
    {
      LOBYTE(v3) = 0;
      goto LABEL_9;
    }

    result = [ObjCClassFromMetadata timestampGranularity];
    if (result < 5)
    {
      v3 = 0x302040100uLL >> (8 * result);
LABEL_9:
      a3 = v4;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
    if (v6 < 5)
    {
      v3 = 0x302040100uLL >> (8 * v6);
LABEL_10:
      *a3 = v3;
      return result;
    }

    v7 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

unint64_t sub_1B6A22244@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!(a2 >> 62))
  {
    LOBYTE(v5) = 2;
    goto LABEL_11;
  }

  if (a2 >> 62 != 1)
  {
    v6 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
    if (v6 >= 5)
    {
      v7 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
      goto LABEL_13;
    }

    v5 = 0x302040100uLL >> (8 * v6);
LABEL_11:
    *a3 = v5;
    return result;
  }

  v3 = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata respondsToSelector_];
  if ((result & 1) == 0)
  {
    LOBYTE(v5) = 0;
    goto LABEL_10;
  }

  result = [ObjCClassFromMetadata timestampGranularity];
  if (result < 5)
  {
    v5 = 0x302040100uLL >> (8 * result);
LABEL_10:
    a3 = v3;
    goto LABEL_11;
  }

LABEL_13:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

unint64_t sub_1B6A22340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 >> 62;
  if (!(a2 >> 62))
  {
    result = a2 >> 62;
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    result = *(a1 + OBJC_IVAR___AARawEvent_timeDurationGranularity);
    if (result >= 4)
    {
      goto LABEL_12;
    }

    LODWORD(v3) = 0x1010100u >> (8 * result);
LABEL_11:
    *a3 = v3;
    a3[1] = result;
    return result;
  }

  v4 = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {
    LOBYTE(v3) = 0;
    result = 0;
    goto LABEL_10;
  }

  result = [ObjCClassFromMetadata timeDurationGranularity];
  if (result < 4)
  {
    LODWORD(v3) = (0xEu >> (result & 0xF)) & 1;
LABEL_10:
    a3 = v4;
    goto LABEL_11;
  }

LABEL_12:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

void *sub_1B6A22434(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1B6A22454@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B6A22484(uint64_t a1, uint64_t a2)
{
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A22504(uint64_t a1)
{
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A2257C(uint64_t a1, uint64_t a2)
{
  sub_1B6A225FC(0, &qword_1EB95AE40, type metadata accessor for DataEventStack.Entry);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B6A225FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SummaryEventData();
    v7 = sub_1B69ACD84(&qword_1EDBC91F8, type metadata accessor for SummaryEventData);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B6A226C4(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  v39 = a2;
  v40 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v37[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v37 - v8);
  v10 = sub_1B6AB8DB0();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v38 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  v19 = *(a3 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v20 = *(a3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v43, 0, sizeof(v43));
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B6A24990;
  *(v21 + 24) = v18;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v35 = swift_allocError();
    *v36 = xmmword_1B6AC0310;
    *v9 = v35;
    swift_storeEnumTagMultiPayload();

    _Block_copy(a4);

    sub_1B6A232DC(v9, a4);

    sub_1B6A16B84(v9, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v23 = Strong;
  v24 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v24;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  _Block_copy(a4);

  v25 = v24;
  v26 = sub_1B6AB9110();
  result = (*(v14 + 8))(v17, v13);
  if (v26)
  {
    v28 = v38;
    sub_1B6AB8DA0();
    v29 = *(v20 + 24);
    v30 = MEMORY[0x1EEE9AC00](*(v23 + 88));
    v31 = v40;
    v37[-10] = v23;
    v37[-9] = v31;
    v37[-8] = v19 | 0x4000000000000000;
    LOBYTE(v37[-7]) = v32;
    v37[-6] = v28;
    *&v37[-5] = v33;
    v37[-3] = v43;
    v37[-2] = sub_1B6A249C8;
    v37[-1] = v21;
    sub_1B6995F94(v30, sub_1B6A249B0, &v37[-12], v34);

    (*(v41 + 8))(v28, v42);
LABEL_5:
    sub_1B6981634(v43);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A22B08(uint64_t a1, int a2, uint64_t a3, const void *a4)
{
  v37 = a2;
  v38 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v36 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v36 - v8);
  v10 = sub_1B6AB8DB0();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  v20 = *(a3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v41, 0, sizeof(v41));
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B6A24990;
  *(v21 + 24) = v19;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v34 = swift_allocError();
    *v35 = xmmword_1B6AC0310;
    *v9 = v34;
    swift_storeEnumTagMultiPayload();

    _Block_copy(a4);

    sub_1B6A232DC(v9, a4);

    sub_1B6A16B84(v9, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v23 = Strong;
  v24 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v24;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  _Block_copy(a4);

  v25 = v24;
  v26 = sub_1B6AB9110();
  result = (*(v15 + 8))(v18, v14);
  if (v26)
  {
    sub_1B6AB8DA0();
    v28 = *(v20 + 24);
    v29 = MEMORY[0x1EEE9AC00](*(v23 + 88));
    v30 = v38;
    *(&v36 - 10) = v23;
    *(&v36 - 9) = v30;
    *(&v36 - 8) = 0x8000000000000000;
    *(&v36 - 56) = v31;
    *(&v36 - 6) = v13;
    *(&v36 - 5) = v32;
    *(&v36 - 3) = v41;
    *(&v36 - 2) = sub_1B6A249C8;
    *(&v36 - 1) = v21;
    sub_1B6995F94(v29, sub_1B6A249B0, (&v36 - 12), v33);

    (*(v39 + 8))(v13, v40);
LABEL_5:
    sub_1B6981634(v41);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A22F28(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v36 = a1;
  v37 = a3;
  v35[3] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v35 - v9);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  v38 = a5;
  *(v16 + 16) = a5;
  v17 = *(a4 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v18 = *(a4 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v39, 0, sizeof(v39));
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6A24990;
  *(v19 + 24) = v16;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v32 = swift_allocError();
    *v33 = xmmword_1B6AC0310;
    *v10 = v32;
    swift_storeEnumTagMultiPayload();

    v34 = v38;
    _Block_copy(v38);

    sub_1B6A232DC(v10, v34);

    sub_1B6A16B84(v10, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v21 = Strong;
  v22 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v22;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  _Block_copy(v38);

  v23 = v22;
  v24 = sub_1B6AB9110();
  result = (*(v12 + 8))(v15, v11);
  if (v24)
  {
    v26 = *(v18 + 24);
    v27 = MEMORY[0x1EEE9AC00](*(v21 + 88));
    v28 = v36;
    *&v35[-20] = v21;
    *&v35[-18] = v28;
    *&v35[-16] = v29;
    LOBYTE(v35[-14]) = v30;
    *&v35[-12] = v37;
    *&v35[-10] = v31;
    *&v35[-6] = v39;
    *&v35[-4] = sub_1B6A249C8;
    *&v35[-2] = v19;
    sub_1B6995F94(v27, sub_1B6A249B0, &v35[-24], v39);

LABEL_5:
    sub_1B6981634(v39);
  }

  __break(1u);
  return result;
}

void sub_1B6A232DC(uint64_t a1, uint64_t a2)
{
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v31 - v7);
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v31.receiver - v11);
  sub_1B6A23DD4(a1, &v31 - v11, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = *v12;
    v15 = sub_1B6AB8A60();
    (*(a2 + 16))(a2, 0, v15);
  }

  else
  {
    sub_1B6A243B0(v12, v8);
    v17 = *v8;
    v16 = v8[1];
    v19 = v8[3];
    v18 = v8[4];
    v20 = v8[2];
    v21 = (v8 + *(v5 + 48));
    v23 = *v21;
    v22 = v21[1];
    v24 = type metadata accessor for BridgedProcessEvent();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR___AAProcessEvent_name];
    *v26 = v17;
    *(v26 + 1) = v16;
    v27 = &v25[OBJC_IVAR___AAProcessEvent_version];
    *v27 = v19;
    *(v27 + 1) = v18;
    *&v25[OBJC_IVAR___AAProcessEvent_json] = v20;
    v28 = &v25[OBJC_IVAR___AAProcessEvent_groupName];
    *v28 = v23;
    *(v28 + 1) = v22;
    v31.receiver = v25;
    v31.super_class = v24;

    v29 = v20;
    v30 = objc_msgSendSuper2(&v31, sel_init);
    (*(a2 + 16))(a2, v30, 0);

    sub_1B6A16B84(v8, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  }
}

uint64_t sub_1B6A23598(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v34 = a1;
  v35 = a3;
  v33[1] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v33 - v9);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v17 = *(a4 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v36, 0, sizeof(v36));
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B6A243A8;
  *(v18 + 24) = v16;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v31 = swift_allocError();
    *v32 = xmmword_1B6AC0310;
    *v10 = v31;
    swift_storeEnumTagMultiPayload();

    _Block_copy(a5);

    sub_1B6A232DC(v10, a5);

    sub_1B6A16B84(v10, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    goto LABEL_5;
  }

  v20 = Strong;
  v21 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v21;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  _Block_copy(a5);

  v22 = v21;
  v23 = sub_1B6AB9110();
  result = (*(v12 + 8))(v15, v11);
  if (v23)
  {
    v25 = *(v17 + 24);
    v26 = MEMORY[0x1EEE9AC00](*(v20 + 88));
    v27 = v34;
    *&v33[-20] = v20;
    *&v33[-18] = v27;
    *&v33[-16] = 0x8000000000000000;
    LOBYTE(v33[-14]) = v28;
    *&v33[-12] = v35;
    *&v33[-10] = v29;
    *&v33[-6] = v36;
    *&v33[-4] = sub_1B6A249C8;
    *&v33[-2] = v18;
    sub_1B6995F94(v26, sub_1B6A249B0, &v33[-24], v30);

LABEL_5:
    sub_1B6981634(v36);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A23928(_BYTE *a1, unint64_t a2, void (*a3)(void), char *a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  sub_1B6A24908(0, a5, a6, a7, type metadata accessor for EventSubmitResult);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v45 - v17);
  v19 = a2 >> 62;
  if (!(a2 >> 62))
  {
    return 1;
  }

  v50 = v16;
  if (v19 == 1)
  {
    v49 = (&v45 - v17);
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v23 = a3;
    v24 = a4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
    {
      return 1;
    }

    v26 = [ObjCClassFromMetadata requiresDiagnosticsConsent];
    a4 = v24;
    a3 = v23;
    v7 = v22;
    v8 = v21;
    v9 = v20;
    v18 = v49;
    if (!v26)
    {
      return 1;
    }
  }

  else if ((a1[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] & 1) == 0)
  {
    return 1;
  }

  result = sub_1B69A31EC(&v52);
  if (v52 != 2)
  {
    if (v52)
    {
      v49 = a4;
      if (qword_1EDBCAA78 != -1)
      {
        swift_once();
      }

      v28 = sub_1B6AB8F90();
      __swift_project_value_buffer(v28, qword_1EDBCFDA8);
      sub_1B6992B50(a1, a2);
      v29 = sub_1B6AB8F80();
      v30 = sub_1B6AB9900();
      sub_1B69C346C(a1, a2);
      if (os_log_type_enabled(v29, v30))
      {
        v48 = v30;
        v31 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51 = v46;
        v47 = v31;
        *v31 = 136446210;
        v45 = a1;
        if (v19 == 2)
        {
          v33 = *&a1[OBJC_IVAR___AARawEvent_name];
          v32 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
        }

        else
        {
          v34 = [swift_getObjCClassFromMetadata() eventName];
          v33 = sub_1B6AB92E0();
          v32 = v35;
        }

        v36 = sub_1B698F63C(v33, v32, &v51);

        v37 = v47;
        *(v47 + 1) = v36;
        _os_log_impl(&dword_1B697C000, v29, v48, "Discarding D&U-only event %{public}s", v37, 0xCu);
        v38 = v46;
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1B8C99550](v38, -1, -1);
        MEMORY[0x1B8C99550](v37, -1, -1);

        a1 = v45;
        if (!a3)
        {
          return 0;
        }
      }

      else
      {

        if (!a3)
        {
          return 0;
        }
      }

      if (v19 == 2)
      {
        v39 = *&a1[OBJC_IVAR___AARawEvent_name];
        v40 = *&a1[OBJC_IVAR___AARawEvent_name + 8];
      }

      else
      {
        v41 = [swift_getObjCClassFromMetadata() eventName];
        v39 = sub_1B6AB92E0();
        v40 = v42;
      }

      sub_1B6A23E9C();
      v43 = swift_allocError();
      *v44 = v39;
      v44[1] = v40;
      *v18 = v43;
      swift_storeEnumTagMultiPayload();
      a3(v18);
      sub_1B6A16B84(v18, v9, v8, v7, type metadata accessor for EventSubmitResult);
      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

void sub_1B6A23D18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B697ED90(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B6A23D80()
{
  result = qword_1EB95B660;
  if (!qword_1EB95B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B660);
  }

  return result;
}

uint64_t sub_1B6A23DD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t))
{
  sub_1B6A24908(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1B6A23E48()
{
  result = qword_1EB95B668;
  if (!qword_1EB95B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B668);
  }

  return result;
}

unint64_t sub_1B6A23E9C()
{
  result = qword_1EB95B670;
  if (!qword_1EB95B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B670);
  }

  return result;
}

unint64_t sub_1B6A23EF0()
{
  result = qword_1EB95B678;
  if (!qword_1EB95B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B678);
  }

  return result;
}

uint64_t sub_1B6A23F44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B6A23D18(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B6A23FB4()
{

  while (1)
  {
    swift_beginAccess();
    v1 = *(v0 + 168);
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v13 = *(v0 + 168);
      }

      result = sub_1B6AB9E60();
      if (!result)
      {
LABEL_19:

        v6 = 0;
        v7 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {

      v5 = MEMORY[0x1B8C98510](v3, v1);
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v4;
    }

    v6 = *&v5[OBJC_IVAR___AAGroup_name];
    v7 = *&v5[OBJC_IVAR___AAGroup_name + 8];

    v8 = *(v0 + 168);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v14 = *(v0 + 168);
      }

      result = sub_1B6AB9E60();
      if (!result)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_24;
      }
    }

    v9 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_33;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x1B8C98510](v9, v8);

      v17 = *(v16 + OBJC_IVAR___AAGroup_contentType);
      v18 = *(v16 + OBJC_IVAR___AAGroup_contentType + 8);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v10 = *(v8 + 8 * v9 + 32) + OBJC_IVAR___AAGroup_contentType;
      v11 = *v10;
      v12 = *(v10 + 8);
    }

LABEL_25:
    v15 = *(v0 + 152);

    if (!v15)
    {
      return v6;
    }

    v0 = v15;
    if (v7)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_1B6A24204(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EventData() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6A1EE4C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, &qword_1EB95B650, sub_1B6A24388, sub_1B6A20734, sub_1B6A21108);
}

uint64_t sub_1B6A243B0(uint64_t a1, uint64_t a2)
{
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A24440()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v9 = *(v0 + 56);
  v10 = v3;
  v11 = *(v0 + 80);
  return sub_1B69AC2BC(sub_1B6A2456C, v5);
}

void sub_1B6A244C4()
{
  if (!qword_1EDBC98E0[0])
  {
    sub_1B69E85A4();
    v0 = type metadata accessor for DataEventStack();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBC98E0);
    }
  }
}

uint64_t sub_1B6A24520(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6A24598(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v13 = *(v1 + 88);
  v11 = *(v1 + 16);
  return a1(v3, v4, v5, v6, v7, v8, v9, v10, v13);
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for EventData();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v8 = *(v0 + 32);
  }

  sub_1B69C346C(*(v0 + 40), *(v0 + 48));
  v9 = v0 + v3;
  v10 = *(v9 + 8);

  v11 = v1[5];
  v12 = sub_1B6AB8DB0();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v9 + v1[6] + 8);

  v14 = *(v9 + v1[7] + 8);

  v15 = *(v9 + v1[8] + 8);

  v16 = *(v0 + v4);

  v17 = *(v0 + v5 + 8);

  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v6));
  }

  v18 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18);

  return MEMORY[0x1EEE6BDD0](v0, v18 + 8, v2 | 7);
}

void sub_1B6A24784(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EventData() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6A1EE4C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, qword_1EDBC8B18, sub_1B6A24978, sub_1B6A201D0, sub_1B6A20C98);
}

void sub_1B6A24908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

BOOL sub_1B6A249CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B69C2598();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD530;
  if (qword_1EDBC8130 != -1)
  {
    v19 = inited;
    swift_once();
    inited = v19;
  }

  v10 = unk_1EDBC8140;
  v11 = qword_1EDBC8148;
  v12 = unk_1EDBC8150;
  v13 = qword_1EDBC8158;
  v14 = unk_1EDBC8160;
  *(inited + 32) = qword_1EDBC8138;
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 42;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 42;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = a1;
  *(inited + 136) = a2;
  *(inited + 144) = a3;
  *(inited + 152) = a4;
  *(inited + 160) = 42;
  *(inited + 168) = 0xE100000000000000;
  v15 = inited;
  swift_bridgeObjectRetain_n();

  v16 = sub_1B69C2608(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  v17 = sub_1B69C292C(v16, *(v4 + 16));

  return (v17 & 1) == 0;
}

uint64_t SessionObserver.deinit()
{
  sub_1B6988008(v0 + 16);
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1B6A24B80()
{
  if ((*(v0 + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___AADelayedToken_sealed) = 1;
    v1 = *(v0 + OBJC_IVAR___AADelayedToken_block);
    v2 = *(v0 + OBJC_IVAR___AADelayedToken_block + 8);
    return v1();
  }

  return result;
}

id DelayedToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DelayedToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelayedToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LoggingEventProcessor.__allocating_init(logFormat:subsystem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1B698D0B0(a1, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_1B6980E70(v11, &v13);
    }

    else
    {
      v14 = &type metadata for DefaultLoggingEventProcessorFormatter;
      v15 = &off_1F2E7AAF0;
    }
  }

  else
  {
    v6 = *&v11[0];
    v14 = &type metadata for JSONLoggingEventProcessorFormatter;
    v15 = &off_1F2E7AB00;
    v7 = swift_allocObject();
    *&v13 = v7;
    v7[6] = &type metadata for DefaultLoggingEventProcessorFormatter;
    v7[7] = &off_1F2E7AAF0;
    v7[2] = v6;
  }

  sub_1B6980E70(&v13, v5 + 16);
  if (a3)
  {
    sub_1B6980780();
    v8 = sub_1B6AB9B10();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDBCCB28;
  }

  v9 = v8;
  sub_1B698D128(a1);
  *(v5 + 56) = v9;
  return v5;
}

uint64_t LoggingEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[7];
  sub_1B6AB98D0();
  sub_1B69990B4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B6ABD890;
  v9 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
  v11 = (*(v10 + 8))(a1, a2, a3, v9, v10);
  v13 = v12;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1B698CEC0();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  sub_1B6AB8F70();
}

uint64_t LoggingEventProcessor.didEnterGroup(_:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  sub_1B6AB98D0();
  sub_1B69990B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B6ABF500;
  v6 = *(a1 + OBJC_IVAR___AAGroup_name);
  v5 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
  v7 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1B698CEC0();
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  sub_1B6AB8DB0();
  sub_1B69B6F38();

  v9 = sub_1B6ABA080();
  *(v4 + 96) = v7;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_1B6AB8F70();
}

uint64_t LoggingEventProcessor.didLeaveGroup(_:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  sub_1B6AB98D0();
  sub_1B69990B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B6ABD890;
  v6 = *(a1 + OBJC_IVAR___AAGroup_name);
  v5 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B698CEC0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  sub_1B6AB8F70();
}

uint64_t LoggingEventProcessor.didEndSession(_:endDate:)(uint64_t *a1)
{
  v18 = *(v1 + 56);
  sub_1B6AB98D0();
  sub_1B69990B4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B6ABD880;
  v4 = *a1;
  v5 = a1[1];
  v6 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B698CEC0();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v8 = type metadata accessor for Session();
  v9 = *(v8 + 28);
  sub_1B6AB8DB0();
  sub_1B69B6F38();

  v10 = sub_1B6ABA080();
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  v12 = sub_1B6ABA080();
  *(v3 + 136) = v6;
  *(v3 + 144) = v7;
  *(v3 + 112) = v12;
  *(v3 + 120) = v13;
  v14 = *(a1 + *(v8 + 32));
  v15 = sub_1B6AB9220();
  *(v3 + 176) = v6;
  *(v3 + 184) = v7;
  *(v3 + 152) = v15;
  *(v3 + 160) = v16;
  sub_1B6AB8F70();
}

uint64_t LoggingEventProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_1B6A253A4(uint64_t a1)
{
  v3 = *(v1 + 56);
  sub_1B6AB98D0();
  sub_1B69990B4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B6ABD890;
  v6 = *(a1 + OBJC_IVAR___AAGroup_name);
  v5 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B698CEC0();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  sub_1B6AB8F70();
}

unint64_t sub_1B6A254A8()
{
  result = qword_1EB95B690;
  if (!qword_1EB95B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B690);
  }

  return result;
}

uint64_t ExternalResult.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

void sub_1B6A256B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1B6A25A14();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B6A2572C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1B6A25844(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1B6A25A14()
{
  if (!qword_1EB95B698)
  {
    v0 = sub_1B69AC828();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B698);
    }
  }
}

uint64_t sub_1B6A25A5C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v10 = *(a8 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = type metadata accessor for DataEventStack.Entry();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v26 - v23;
  (*(v11 + 16))(v14, a1, v10);
  sub_1B6A25E20(v14, a2, v27, v28, v29, v30, v31, v10, v24);
  (*(v18 + 16))(v22, v24, v17);
  sub_1B6AB95D0();

  sub_1B6AB95A0();
  return (*(v18 + 8))(v24, v17);
}

uint64_t AnyDataEventEntry.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnyDataEventEntry.file.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B6A25D70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1B6A25DB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

int *sub_1B6A25E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  result = type metadata accessor for DataEventStack.Entry();
  *(a9 + result[9]) = a2;
  *(a9 + result[10]) = a3;
  *(a9 + result[11]) = a4;
  v17 = (a9 + result[12]);
  *v17 = a5;
  v17[1] = a6;
  *(a9 + result[13]) = a7;
  return result;
}

uint64_t sub_1B6A25EF0()
{
  type metadata accessor for DataEventStack.Entry();
  sub_1B6AB95D0();
  swift_getWitnessTable();
  return sub_1B6AB9830() & 1;
}

uint64_t sub_1B6A25F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DataEventStack.Entry();
  v10 = sub_1B6AB95D0();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8C97AC0](&v18, v10, WitnessTable);
  v17[8] = v18;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v12 = sub_1B6AB9E50();
  v13 = swift_getWitnessTable();
  v15 = sub_1B6A759E4(sub_1B6A26738, v17, v12, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  return v15;
}

uint64_t sub_1B6A260B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 16));
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v12 = type metadata accessor for DataEventStack.Entry();
  v13 = *(a1 + v12[9]);
  v14 = *(a1 + v12[10]);
  v15 = *(a1 + v12[11]);
  v16 = (a1 + v12[12]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(a1 + v12[13]);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 56) = v13;
  *(a6 + 64) = v14;
  *(a6 + 65) = v15;
  *(a6 + 72) = v17;
  *(a6 + 80) = v18;
  *(a6 + 88) = v19;
}

uint64_t sub_1B6A261AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for DataEventStack.Entry();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B6AB9860();
  v10 = *(v4 - 8);
  (*(v10 + 16))(a2, v9, v4);
  (*(v6 + 8))(v9, v5);
  return (*(v10 + 56))(a2, 0, 1, v4);
}

uint64_t sub_1B6A26344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B6A2638C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B6A263CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v34 = *(a1 + 16);
  v32 = v4;
  v5 = type metadata accessor for DataEventStack.Entry();
  v31 = sub_1B6AB9B30();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v31);
  v10 = &v30 - v9;
  v11 = *(v5 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v33 = v2;
  v35 = *v2;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  sub_1B6AB9270();
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    result = (*(v6 + 8))(v10, v31);
    v19 = 0;
    v20 = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    (*(v11 + 32))(v17, v10, v5);
    swift_getWitnessTable();
    v21 = v33;
    sub_1B6AB9860();
    v30 = *(v11 + 8);
    v30(v15, v5);
    v22 = v21[2];
    v31 = v21[1];
    v23 = v34;
    v24 = v32;
    *(a2 + 40) = v34;
    *(a2 + 48) = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 16));
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v17, v23);
    v26 = *&v17[v5[9]];
    LODWORD(v34) = v17[v5[10]];
    v27 = v5[12];
    v28 = v17[v5[11]];
    v29 = *&v17[v27];
    v19 = *&v17[v27 + 8];
    v20 = *&v17[v5[13]];

    result = (v30)(v17, v5);
    *a2 = v31;
    *(a2 + 8) = v22;
    *(a2 + 56) = v26;
    *(a2 + 64) = v34;
    *(a2 + 65) = v28;
    *(a2 + 72) = v29;
  }

  *(a2 + 80) = v19;
  *(a2 + 88) = v20;
  return result;
}

uint64_t sub_1B6A26710(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1B6A25EF0();
}

id BridgedProcessorManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedProcessorManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedProcessorManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BridgedProcessorManager.add(eventProcessor:)(uint64_t a1)
{
  v21 = a1;
  sub_1B6A26AB0();
  sub_1B69E8910(0, &unk_1EDBC9780);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B6980E70(v19, v22);
    v3 = *(v1 + OBJC_IVAR___AAProcessorManager_processorManager);
    v4 = v23;
    v5 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    type metadata accessor for ProxyEventProcessor();
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = v6;
    v9[4] = v8;
    v11 = *(v3 + 32);
    v10 = *(v3 + 40);
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = v9;
    v12[4] = &off_1F2E7CF98;
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_1B69877A4(v11, sub_1B69916A8, v12);

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B6A26DE8(v19, &qword_1EB95B6A0, &unk_1EDBC9780);
    v14 = *(v1 + OBJC_IVAR___AAProcessorManager_processorManager);
    type metadata accessor for BridgedEventProcessor();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v17 = *(v14 + 32);
    v16 = *(v14 + 40);
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = &off_1F2E74800;
    swift_retain_n();
    swift_unknownObjectRetain();

    sub_1B69877A4(v17, sub_1B698E578, v18);
  }
}

unint64_t sub_1B6A26AB0()
{
  result = qword_1EDBC9798;
  if (!qword_1EDBC9798)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBC9798);
  }

  return result;
}

uint64_t BridgedProcessorManager.remove(eventProcessor:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AAProcessorManager_processorManager);
  v3 = *(*(v2 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B69AB940();
  v24 = v2;
  result = sub_1B6AB99A0();
  v5 = v30[0];
  v6 = *(v30[0] + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = &qword_1EDBCCDA8;
  v9 = &protocol descriptor for EventProcessorType;
  v10 = &unk_1EB95B6B0;
  v11 = &protocol descriptor for BridgedEventProcessorProviderType;
  while (v7 < *(v5 + 16))
  {
    v29 = *(v5 + 16 * v7 + 32);
    v26 = v29;
    sub_1B69E8910(0, v8);
    sub_1B69E8910(0, v10);
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v12 = v5;
      v13 = v6;
      v14 = v11;
      v15 = v10;
      v16 = v9;
      v17 = v8;
      sub_1B6980E70(v27, v30);
      v18 = v31;
      v19 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v20 = (*(v19 + 8))(v18, v19);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v30);
      if (v20 == a1)
      {

        v21 = *(v24 + 32);
        v22 = *(v24 + 40);
        v23 = swift_allocObject();
        *(v23 + 16) = v24;
        *(v23 + 24) = v26;
        swift_unknownObjectRetain();

        sub_1B69877A4(v21, sub_1B69C8D18, v23);
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectRelease();
      v8 = v17;
      v9 = v16;
      v10 = v15;
      v11 = v14;
      v6 = v13;
      v5 = v12;
    }

    else
    {
      swift_unknownObjectRelease();
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      result = sub_1B6A26DE8(v27, &qword_1EB95B6B8, v10);
    }

    if (v6 == ++v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A26DE8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1B6994418(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B6A26E5C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id DefaultStartDateStorage.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for DefaultKeyValueStore;
  *(a1 + 32) = &off_1F2E74C50;
  *a1 = 0;
  *(a1 + 8) = 0;
  result = [objc_opt_self() standardUserDefaults];
  *(a1 + 40) = 0xD00000000000001BLL;
  *(a1 + 48) = 0x80000001B6AC9070;
  *(a1 + 72) = 2;
  *(a1 + 56) = 2;
  *(a1 + 64) = result;
  return result;
}

id DefaultStartDateStorage.init(syncRequirements:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for DefaultKeyValueStore;
  *(a2 + 32) = &off_1F2E74C50;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = [objc_opt_self() standardUserDefaults];
  *(a2 + 40) = 0xD00000000000001BLL;
  *(a2 + 48) = 0x80000001B6AC9070;
  *(a2 + 72) = 2;
  *(a2 + 56) = v3;
  *(a2 + 64) = result;
  return result;
}

void DefaultStartDateStorage.store(userStartDate:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, char a2, char a3)
{
  v5 = v3;
  v73 = a1;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v67 - v14;
  v69 = v9;
  v15 = *(v5 + 56);
  v70 = v4;
  if ((v15 & 1) != 0 && (a3 & 1) == 0 || (v15 & 2) != 0 && (a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v48 = *(v5 + 72);
  if (v48 == 2)
  {
    v49 = [objc_opt_self() defaultManager];
    v50 = [v49 ubiquityIdentityToken];

    if (!v50)
    {
LABEL_5:
      v16 = 0;
      v17 = 0x6C61636F6CLL;
      v19 = *(v5 + 40);
      v18 = *(v5 + 48);
      v71 = 59;
      v72 = 0xE100000000000000;
LABEL_6:
      v20 = 0xE500000000000000;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    v19 = *(v5 + 40);
    v18 = *(v5 + 48);
    v71 = 59;
    v72 = 0xE100000000000000;
  }

  else
  {
    v19 = *(v5 + 40);
    v18 = *(v5 + 48);
    v71 = 59;
    v72 = 0xE100000000000000;
    if ((v48 & 1) == 0)
    {
      v16 = 0;
      v17 = 0x6C61636F6CLL;
      goto LABEL_6;
    }
  }

  v20 = 0xE600000000000000;
  v16 = 1;
  v17 = 0x646572616873;
LABEL_7:
  MEMORY[0x1B8C97BE0](v17, v20);

  v22 = v71;
  v21 = v72;
  v71 = v19;
  v72 = v18;

  MEMORY[0x1B8C97BE0](v22, v21);

  v24 = v71;
  v23 = v72;
  if (v16)
  {
    v25 = *(v5 + 24);
    v26 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v25);
    v67 = *(v26 + 16);
    v27 = v8;
    v28 = sub_1B6A286D8(&qword_1EDBCCC38);
    v29 = sub_1B6A286D8(&qword_1EDBC8C70);
    v30 = sub_1B6A286D8(&qword_1EDBCB5B0);
    v31 = v70;
    v67(v73, v24, v23, 1, v27, v28, v29, v30, v25, v26);
    if (v31)
    {
    }

    else
    {
      v67 = v24;
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v51 = sub_1B6AB8F90();
      __swift_project_value_buffer(v51, qword_1EDBCFD80);
      v52 = v68;
      v53 = v69;
      (*(v69 + 16))(v68, v73, v27);

      v54 = sub_1B6AB8F80();
      v55 = sub_1B6AB98D0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v70 = v54;
        v71 = v57;
        v58 = v52;
        v73 = v57;
        *v56 = 136315394;
        v59 = sub_1B6ABA080();
        v60 = v55;
        v62 = v61;
        (*(v53 + 8))(v58, v27);
        v63 = sub_1B698F63C(v59, v62, &v71);

        *(v56 + 4) = v63;
        *(v56 + 12) = 2080;
        v64 = sub_1B698F63C(v67, v23, &v71);

        *(v56 + 14) = v64;
        v65 = v70;
        _os_log_impl(&dword_1B697C000, v70, v60, "Stored user start date: %s, with key: %s, in keychain", v56, 0x16u);
        v66 = v73;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v66, -1, -1);
        MEMORY[0x1B8C99550](v56, -1, -1);
      }

      else
      {

        (*(v53 + 8))(v52, v27);
      }
    }
  }

  else
  {
    v32 = *(v5 + 64);
    v33 = v73;
    v34 = sub_1B6AB8D20();
    v67 = v24;
    v35 = sub_1B6AB92B0();
    [v32 setObject:v34 forKey:v35];

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v36 = sub_1B6AB8F90();
    __swift_project_value_buffer(v36, qword_1EDBCFD80);
    v37 = v69;
    (*(v69 + 16))(v13, v33, v8);

    v38 = sub_1B6AB8F80();
    v39 = sub_1B6AB98D0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v71 = v41;
      *v40 = 136315394;
      sub_1B6A286D8(&qword_1EDBCCC38);
      v42 = sub_1B6ABA080();
      v43 = v37;
      v45 = v44;
      (*(v43 + 8))(v13, v8);
      v46 = sub_1B698F63C(v42, v45, &v71);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v47 = sub_1B698F63C(v67, v23, &v71);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_1B697C000, v38, v39, "Stored user start date: %s, with key: %s, in user defaults", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v41, -1, -1);
      MEMORY[0x1B8C99550](v40, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v13, v8);
    }
  }
}

uint64_t DefaultStartDateStorage.userStartDate(isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v110 = a3;
  sub_1B69B2128();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v100 - v13;
  v115 = sub_1B6AB8DB0();
  v15 = *(v115 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v115);
  v107 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v100 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v105 = &v100 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v100 - v24;
  v25 = *(v5 + 56);
  v111 = v4;
  v108 = v21;
  v109 = v15;
  if ((v25 & 1) != 0 && (a2 & 1) == 0 || (v25 & 2) != 0 && (a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  v45 = *(v5 + 72);
  if (v45 == 2)
  {
    v46 = [objc_opt_self() defaultManager];
    v47 = [v46 ubiquityIdentityToken];

    if (!v47)
    {
LABEL_5:
      v26 = 0;
      v27 = 0x6C61636F6CLL;
      v28 = *(v5 + 40);
      v29 = *(v5 + 48);
      *&v114[0] = 59;
      *(&v114[0] + 1) = 0xE100000000000000;
LABEL_6:
      v30 = 0xE500000000000000;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    v28 = *(v5 + 40);
    v29 = *(v5 + 48);
    *&v114[0] = 59;
    *(&v114[0] + 1) = 0xE100000000000000;
  }

  else
  {
    v28 = *(v5 + 40);
    v29 = *(v5 + 48);
    *&v114[0] = 59;
    *(&v114[0] + 1) = 0xE100000000000000;
    if ((v45 & 1) == 0)
    {
      v26 = 0;
      v27 = 0x6C61636F6CLL;
      goto LABEL_6;
    }
  }

  v30 = 0xE600000000000000;
  v26 = 1;
  v27 = 0x646572616873;
LABEL_7:
  MEMORY[0x1B8C97BE0](v27, v30);

  v31 = v114[0];
  *&v114[0] = v28;
  *(&v114[0] + 1) = v29;

  MEMORY[0x1B8C97BE0](v31, *(&v31 + 1));

  v32 = v114[0];
  if (v26)
  {
    v34 = *(v5 + 24);
    v33 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v34);
    v108 = *(v33 + 8);
    v35 = v14;
    v36 = sub_1B6A286D8(&qword_1EDBCCC38);
    v37 = sub_1B6A286D8(&qword_1EDBC8C70);
    v38 = sub_1B6A286D8(&qword_1EDBCB5B0);
    v39 = v115;
    v40 = v111;
    v108(v32, *(&v32 + 1), 1, v115, v36, v37, v38, v34, v33);
    if (v40)
    {
    }

    v108 = v36;
    v104 = v32;
    v48 = v109;
    if ((*(v109 + 48))(v35, 1, v39) == 1)
    {
      sub_1B69E9EBC(v35);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v49 = sub_1B6AB8F90();
      __swift_project_value_buffer(v49, qword_1EDBCFD80);

      v50 = sub_1B6AB8F80();
      v51 = sub_1B6AB98D0();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v114[0] = v53;
        *v52 = 136315138;
        v54 = sub_1B698F63C(v104, *(&v32 + 1), v114);

        *(v52 + 4) = v54;
        _os_log_impl(&dword_1B697C000, v50, v51, "No user start date found in keychain, with key: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1B8C99550](v53, -1, -1);
        v55 = v52;
        v39 = v115;
        MEMORY[0x1B8C99550](v55, -1, -1);
      }

      else
      {
      }

      return (*(v48 + 56))(v110, 1, 1, v39);
    }

    else
    {
      v81 = *(v48 + 32);
      v82 = v106;
      v107 = (v48 + 32);
      v103 = v81;
      v81(v106, v35, v39);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v83 = sub_1B6AB8F90();
      __swift_project_value_buffer(v83, qword_1EDBCFD80);
      v84 = v105;
      (*(v48 + 16))(v105, v82, v39);

      v85 = sub_1B6AB8F80();
      v86 = sub_1B6AB98D0();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v111 = 0;
        v88 = v87;
        v89 = swift_slowAlloc();
        *&v114[0] = v89;
        *v88 = 136315394;
        v90 = sub_1B6ABA080();
        v91 = v84;
        v92 = v90;
        v94 = v93;
        (*(v48 + 8))(v91, v32);
        v95 = sub_1B698F63C(v92, v94, v114);

        *(v88 + 4) = v95;
        *(v88 + 12) = 2080;
        v96 = sub_1B698F63C(v104, *(&v32 + 1), v114);

        *(v88 + 14) = v96;
        _os_log_impl(&dword_1B697C000, v85, v86, "Read user start date: %s, from keychain, with key: %s", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v89, -1, -1);
        v82 = v106;
        MEMORY[0x1B8C99550](v88, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v84, v39);
      }

      v99 = v110;
      v103(v110, v82, v39);
      return (*(v48 + 56))(v99, 0, 1, v39);
    }
  }

  v42 = *(v5 + 64);
  v104 = *&v114[0];
  v43 = sub_1B6AB92B0();
  v44 = [v42 objectForKey_];

  if (v44)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v56 = v115;
  v57 = v108;
  v58 = v109;
  v114[0] = v112;
  v114[1] = v113;
  if (*(&v113 + 1))
  {
    v59 = swift_dynamicCast();
    v60 = *(v58 + 56);
    (v60)(v12, v59 ^ 1u, 1, v56);
    if ((*(v58 + 48))(v12, 1, v56) != 1)
    {
      v103 = v60;
      v105 = *(v58 + 32);
      v106 = (v58 + 32);
      (v105)(v57, v12, v56);
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v61 = sub_1B6AB8F90();
      __swift_project_value_buffer(v61, qword_1EDBCFD80);
      v62 = v107;
      (*(v58 + 16))(v107, v57, v56);

      v63 = sub_1B6AB8F80();
      v64 = sub_1B6AB98D0();

      v102 = v64;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v114[0] = v66;
        *v65 = 136315394;
        sub_1B6A286D8(&qword_1EDBCCC38);
        v101 = v63;
        v67 = sub_1B6ABA080();
        v69 = v68;
        (*(v58 + 8))(v62, v115);
        v70 = sub_1B698F63C(v67, v69, v114);

        *(v65 + 4) = v70;
        *(v65 + 12) = 2080;
        v71 = sub_1B698F63C(v104, *(&v32 + 1), v114);

        *(v65 + 14) = v71;
        v72 = v101;
        _os_log_impl(&dword_1B697C000, v101, v102, "Read user start date: %s, from UserDefaults, with key: %s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v66, -1, -1);
        v73 = v65;
        v56 = v115;
        MEMORY[0x1B8C99550](v73, -1, -1);
      }

      else
      {

        (*(v58 + 8))(v62, v56);
      }

      v97 = v103;
      v98 = v110;
      (v105)(v110, v57, v56);
      return (v97)(v98, 0, 1, v56);
    }
  }

  else
  {
    sub_1B6981634(v114);
    v60 = *(v58 + 56);
    (v60)(v12, 1, 1, v56);
  }

  sub_1B69E9EBC(v12);
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v74 = sub_1B6AB8F90();
  __swift_project_value_buffer(v74, qword_1EDBCFD80);

  v75 = sub_1B6AB8F80();
  v76 = sub_1B6AB98D0();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v114[0] = v78;
    *v77 = 136315138;
    v79 = sub_1B698F63C(v104, *(&v32 + 1), v114);

    *(v77 + 4) = v79;
    _os_log_impl(&dword_1B697C000, v75, v76, "No user start date found in UserDefaults, with key: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x1B8C99550](v78, -1, -1);
    v80 = v77;
    v56 = v115;
    MEMORY[0x1B8C99550](v80, -1, -1);
  }

  else
  {
  }

  return (v60)(v110, 1, 1, v56);
}

uint64_t sub_1B6A28560(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B698F63C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1B6A285BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B6980A90(0, &qword_1EDBCAFB0, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1B6A286C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B6A286D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B6AB8DB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B6A28740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6A28788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A287EC(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8AB0();
  *&v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB8BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v63 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v63 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = v63 - v20;
  if (*(v1 + OBJC_IVAR___AATransparencyLogging_isEnabled) == 1)
  {
    result = sub_1B6A29130();
    if (result)
    {
      v70 = v3;
      v72 = v8;
      v73 = v21;
      sub_1B6A2A088();
      v22 = [objc_opt_self() mainBundle];
      v23 = [v22 bundleIdentifier];

      v71 = v7;
      v66 = v18;
      if (v23)
      {
        v24 = sub_1B6AB92E0();
        v26 = v25;
      }

      else
      {
        v26 = 0xE700000000000000;
        v24 = 0x6C6172656E6567;
      }

      v75 = v24;
      v76 = v26;
      MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
      v27 = *(a1 + 24);
      v68 = *(a1 + 16);
      v69 = v27;
      MEMORY[0x1B8C97BE0]();
      v64 = v75;
      v65 = v76;
      sub_1B6AB8AE0();
      v28 = *MEMORY[0x1E6968F58];
      v29 = v74;
      v67 = a1;
      v30 = *(v74 + 104);
      v31 = v70;
      v30(v6, v28, v70);
      v63[1] = sub_1B69830D8();
      sub_1B6AB8B90();
      *&v74 = *(v29 + 8);
      (v74)(v6, v31);
      v32 = v71;
      v33 = v72 + 8;
      v34 = *(v72 + 8);
      v34(v12, v71);
      v75 = v64;
      v76 = v65;
      v30(v6, *MEMORY[0x1E6968F70], v31);
      v35 = v66;
      sub_1B6AB8BA0();
      (v74)(v6, v31);
      v34(v15, v32);

      sub_1B6AB8B40();
      v34(v35, v32);
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB9900();
      sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
      v36 = swift_allocObject();
      v74 = xmmword_1B6ABD890;
      *(v36 + 16) = xmmword_1B6ABD890;
      *(v36 + 56) = MEMORY[0x1E69E6158];
      v37 = sub_1B698CEC0();
      *(v36 + 64) = v37;
      v38 = v69;
      *(v36 + 32) = v68;
      *(v36 + 40) = v38;

      sub_1B6AB8F70();

      v39 = Batch.toJSONObject()();
      v70 = v34;
      v72 = v33;
      v40 = objc_opt_self();
      v41 = MEMORY[0x1E69E6158];
      v42 = sub_1B6AB91F0();
      v43 = [v40 isValidJSONObject_];

      if (v43)
      {
        v44 = sub_1B6AB91F0();

        v75 = 0;
        v45 = [v40 dataWithJSONObject:v44 options:0 error:&v75];

        v46 = v75;
        if (v45)
        {
          v47 = sub_1B6AB8C80();
          v49 = v48;

          v50 = v73;
          sub_1B6AB8C90();
          v70(v50, v71);
          result = sub_1B6993C94(v47, v49);
          goto LABEL_14;
        }

        v56 = v46;
        v54 = sub_1B6AB8A70();
      }

      else
      {
        sub_1B6AB98F0();
        v51 = swift_allocObject();
        *(v51 + 16) = v74;
        v52 = sub_1B6AB9220();
        *(v51 + 56) = v41;
        *(v51 + 64) = v37;
        *(v51 + 32) = v52;
        *(v51 + 40) = v53;
        sub_1B6AB8F70();

        sub_1B6A2A954();
        v54 = swift_allocError();
        *v55 = v39;
        *(v55 + 8) = 0;
      }

      swift_willThrow();
      v57 = v71;
      v58 = v70;
      sub_1B6AB98E0();
      v59 = swift_allocObject();
      *(v59 + 16) = v74;
      swift_getErrorValue();
      v60 = sub_1B6ABA1A0();
      *(v59 + 56) = MEMORY[0x1E69E6158];
      *(v59 + 64) = v37;
      *(v59 + 32) = v60;
      *(v59 + 40) = v61;
      sub_1B6AB8F70();

      result = v58(v73, v57);
    }
  }

LABEL_14:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

id TransparencyLogging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransparencyLogging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6A29130()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B6AB8AB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = sub_1B6AB8BB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - v11 + 32;
  v13 = [objc_opt_self() defaultManager];
  sub_1B6AB8AE0();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F58], v0);
  sub_1B69830D8();
  v14 = MEMORY[0x1E69E6158];
  sub_1B6AB8B90();
  (*(v1 + 8))(v4, v0);
  v15 = *(v6 + 8);
  v15(v10, v5);
  v16 = sub_1B6AB8B20();
  v15(v12, v5);
  v28[0] = 0;
  v17 = [v13 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v28];

  if (v17)
  {
    v18 = v28[0];
  }

  else
  {
    v19 = v28[0];
    v20 = sub_1B6AB8A70();

    swift_willThrow();
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B6ABD890;
    swift_getErrorValue();
    v22 = sub_1B6ABA1A0();
    v24 = v23;
    *(v21 + 56) = v14;
    *(v21 + 64) = sub_1B698CEC0();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_1B6AB8F70();
  }

  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_1B6A29500(uint64_t a1)
{
  v67[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8EE0();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1B6AB8F00();
  v60 = *(v62 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A2A9A8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v53 - v12;
  v14 = sub_1B6AB8DB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v57 = v53 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v65 = v53 - v22;
  v55 = objc_opt_self();
  v23 = [v55 defaultManager];
  v56 = a1;
  sub_1B6AB8B70();
  v24 = sub_1B6AB92B0();

  v67[0] = 0;
  v25 = [v23 attributesOfItemAtPath:v24 error:v67];

  v26 = v67[0];
  if (!v25)
  {
    v33 = v67[0];
    v34 = sub_1B6AB8A70();

    swift_willThrow();
    goto LABEL_9;
  }

  v66 = v1;
  type metadata accessor for FileAttributeKey(0);
  sub_1B6A2AA0C();
  v27 = sub_1B6AB9210();
  v28 = v26;

  if (!v27)
  {
LABEL_9:
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
    sub_1B69E9EBC(v13);
    goto LABEL_11;
  }

  if (!*(v27 + 16) || (v29 = sub_1B69DA970(*MEMORY[0x1E696A308]), (v30 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1B698FE74(*(v27 + 56) + 32 * v29, v67);

  v31 = swift_dynamicCast();
  (*(v15 + 56))(v13, v31 ^ 1u, 1, v14);
  v32 = *(v15 + 48);
  if (v32(v13, 1, v14) == 1)
  {
    goto LABEL_10;
  }

  v53[0] = *(v15 + 32);
  v53[1] = v15 + 32;
  (v53[0])(v65, v13, v14);
  v54 = v32;
  v37 = v59;
  sub_1B6AB8EC0();
  v39 = v63;
  v38 = v64;
  v40 = v61;
  (*(v63 + 104))(v61, *MEMORY[0x1E6969A48], v64);
  sub_1B6AB8D90();
  v41 = v58;
  sub_1B6AB8EB0();
  v42 = v19;
  v43 = *(v15 + 8);
  v43(v42, v14);
  (*(v39 + 8))(v40, v38);
  (*(v60 + 8))(v37, v62);
  result = v54(v41, 1, v14);
  if (result != 1)
  {
    v44 = v57;
    (v53[0])(v57, v41, v14);
    v45 = v65;
    v46 = sub_1B6AB8D30();
    v43(v44, v14);
    if (v46)
    {
      v43(v45, v14);
      result = 1;
      goto LABEL_12;
    }

    v47 = [v55 defaultManager];
    v48 = sub_1B6AB8B20();
    v67[0] = 0;
    v49 = [v47 removeItemAtURL:v48 error:v67];

    if (v49)
    {
      v50 = v67[0];
    }

    else
    {
      v51 = v67[0];
      v52 = sub_1B6AB8A70();

      swift_willThrow();
    }

    v43(v65, v14);
LABEL_11:
    result = 0;
LABEL_12:
    v36 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A29BA0()
{
  v48[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B6AB8AB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = [objc_opt_self() defaultManager];
  sub_1B6AB8AE0();
  (*(v2 + 104))(v5, *MEMORY[0x1E6968F58], v1);
  sub_1B69830D8();
  sub_1B6AB8B90();
  (*(v2 + 8))(v5, v1);
  v19 = *(v7 + 8);
  v19(v15, v6);
  v20 = sub_1B6AB8B20();
  v41 = v19;
  v42 = v7 + 8;
  v19(v17, v6);
  v48[0] = 0;
  v21 = [v18 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:v48];

  v22 = v48[0];
  if (!v21)
  {
    v26 = v48[0];
    sub_1B6AB8A70();

    swift_willThrow();
LABEL_17:
    v36 = *MEMORY[0x1E69E9840];
    return v26;
  }

  v23 = sub_1B6AB9510();
  v24 = v22;

  v46 = *(v23 + 16);
  if (!v46)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_16:

    goto LABEL_17;
  }

  v25 = 0;
  v44 = (v7 + 32);
  v45 = v7 + 16;
  v26 = MEMORY[0x1E69E7CC0];
  v39 = v7;
  v40 = v6;
  v27 = v43;
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
    }

    v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v29 = *(v7 + 72);
    (*(v7 + 16))(v27, v23 + v28 + v29 * v25, v6);
    v30 = sub_1B6A29500(v27);
    if (v0)
    {
      break;
    }

    if (v30)
    {
      v31 = *v44;
      (*v44)(v47, v27, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B699D530(0, v26[2] + 1, 1);
        v26 = v48[0];
      }

      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        sub_1B699D530(v33 > 1, v34 + 1, 1);
        v26 = v48[0];
      }

      v26[2] = v34 + 1;
      v35 = v26 + v28 + v34 * v29;
      v6 = v40;
      v31(v35, v47, v40);
      v7 = v39;
      v27 = v43;
    }

    else
    {
      v41(v27, v6);
    }

    if (v46 == ++v25)
    {
      goto LABEL_16;
    }
  }

  v41(v27, v6);

  __break(1u);
  return result;
}

void sub_1B6A2A088()
{
  v0 = sub_1B6AB8EE0();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB8F00();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A2A9A8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - v13;
  v15 = sub_1B6AB8DB0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v48 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  v53 = objc_opt_self();
  v24 = [v53 standardUserDefaults];
  v54 = "to convert to JSON object, %@";
  v25 = sub_1B6AB92B0();
  v26 = [v24 objectForKey_];

  if (v26)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58[0] = v56;
  v58[1] = v57;
  if (!*(&v57 + 1))
  {
    sub_1B6981634(v58);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_10;
  }

  v27 = swift_dynamicCast();
  (*(v16 + 56))(v14, v27 ^ 1u, 1, v15);
  v28 = *(v16 + 48);
  if (v28(v14, 1, v15) == 1)
  {
LABEL_10:
    sub_1B69E9EBC(v14);
    sub_1B6A29BA0();

    v37 = [v53 standardUserDefaults];
    v38 = v55;
    sub_1B6AB8D90();
    v39 = sub_1B6AB8D20();
    (*(v16 + 8))(v38, v15);
    v40 = sub_1B6AB92B0();
    [v37 setObject:v39 forKey:v40];

    return;
  }

  v46 = v23;
  v47 = v28;
  v45 = *(v16 + 32);
  v45(v23, v14, v15);
  sub_1B6AB8EC0();
  v30 = v51;
  v29 = v52;
  (*(v51 + 104))(v3, *MEMORY[0x1E6969A48], v52);
  v31 = v55;
  sub_1B6AB8D90();
  sub_1B6AB8EB0();
  v32 = v31;
  v33 = *(v16 + 8);
  v33(v32, v15);
  (*(v30 + 8))(v3, v29);
  (*(v49 + 8))(v7, v50);
  if (v47(v12, 1, v15) == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v48;
    v45(v48, v12, v15);
    v35 = v46;
    v36 = sub_1B6AB8D40();
    v33(v34, v15);
    if (v36)
    {
      sub_1B6A29BA0();

      v41 = [v53 standardUserDefaults];
      v42 = v55;
      sub_1B6AB8D90();
      v43 = sub_1B6AB8D20();
      v33(v42, v15);
      v44 = sub_1B6AB92B0();
      [v41 setObject:v43 forKey:v44];
    }

    v33(v35, v15);
  }
}

uint64_t sub_1B6A2A6F8()
{
  v1 = sub_1B6A29BA0();
  if (v0)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B6ABD890;
    swift_getErrorValue();
    v3 = sub_1B6ABA1A0();
    v5 = v4;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1B698CEC0();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    sub_1B6AB8F70();

    swift_willThrow();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB9900();
    sub_1B6A2A9A8(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B6ABD890;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E65A8];
    *(v6 + 56) = MEMORY[0x1E69E6530];
    *(v6 + 64) = v8;
    *(v6 + 32) = v7;
    sub_1B6AB8F70();
  }

  return v1;
}

unint64_t sub_1B6A2A954()
{
  result = qword_1EB95B6C8;
  if (!qword_1EB95B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B6C8);
  }

  return result;
}

void sub_1B6A2A9A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B6A2AA0C()
{
  result = qword_1EB95AB00;
  if (!qword_1EB95AB00)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AB00);
  }

  return result;
}

id AccessQueue.__allocating_init(queue:)(void *a1)
{
  v3 = sub_1B6AB9090();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = objc_allocWithZone(v1);
  *&v11[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v12 = a1;
  sub_1B6AB9050();
  v13 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v4 + 16))(v8, v10, v3);
  sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v18 + 24) = 0x10000;
  (*(v4 + 8))(v10, v3);
  *(v17 + 2) = v18;
  (*(v4 + 32))(&v17[*(*v17 + 96)], v8, v3);
  *&v11[v13] = v17;
  swift_endAccess();
  v23.receiver = v11;
  v23.super_class = v1;
  v20 = objc_msgSendSuper2(&v23, sel_init);

  return v20;
}

uint64_t sub_1B6A2ACC8()
{
  v1 = sub_1B6AB9030();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1B6AB9090();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB9070();
  sub_1B6A2AED0(v6);
  sub_1B6AB9070();
  sub_1B6AB9020();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B698E534;
  aBlock[3] = &block_descriptor_5_0;
  _Block_copy(aBlock);
  v7 = sub_1B6AB90E0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B6AB90D0();
  v10 = *(v0 + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B6AB99C0();
}

id sub_1B6A2AE70(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1B6A2AED0(uint64_t a1)
{
  v3 = sub_1B6AB9090();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  v9 = *(v1 + v8);
  (*(v4 + 16))(v7, a1, v3);
  v10 = *(v9 + 2);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  os_unfair_lock_lock_with_options();
  v13 = *(*v9 + 96);
  swift_beginAccess();
  (*(v4 + 24))(&v9[v13], v7, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(*(v9 + 2) + 16));
  v14 = *(v4 + 8);
  v14(a1, v3);
  v14(v7, v3);
}

id AccessQueue.init(queue:)(void *a1)
{
  v2 = sub_1B6A2B6E8(a1);

  return v2;
}

unint64_t AccessQueue.debugDescription.getter()
{
  sub_1B6AB9CA0();

  v1 = *(v0 + OBJC_IVAR___AAAccessQueue_queue);
  v2 = sub_1B6AB99E0();
  MEMORY[0x1B8C97BE0](v2);

  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1B6A2B248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B6AB9030();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1B6AB9090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v15 = *(v14 + 2);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  os_unfair_lock_lock_with_options();
  v18 = *(*v14 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v12, &v14[v18], v8);
  os_unfair_lock_unlock(*(*(v14 + 2) + 16));

  sub_1B6AB9020();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B698E534;
  aBlock[3] = &block_descriptor_5;
  _Block_copy(aBlock);
  v19 = sub_1B6AB90E0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  sub_1B6AB90D0();

  v22 = *(v3 + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B6AB99C0();
}

BOOL AccessQueue.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B69C1678(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *&v6[OBJC_IVAR___AAAccessQueue_queue];

      v4 = *(v1 + OBJC_IVAR___AAAccessQueue_queue);
      return v3 == v4;
    }
  }

  else
  {
    sub_1B6981634(v7);
  }

  return 0;
}

id AccessQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6A2B6E8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1B6AB9090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  *&v1[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v12 = a1;
  sub_1B6AB9050();
  v13 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v5 + 16))(v9, v11, v4);
  sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  *(v18 + 24) = 0x10000;
  (*(v5 + 8))(v11, v4);
  *(v17 + 2) = v18;
  (*(v5 + 32))(&v17[*(*v17 + 96)], v9, v4);
  *&v1[v13] = v17;
  swift_endAccess();
  v22.receiver = v1;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t AppAnalyticsAppData.appVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppAnalyticsAppData.appVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B6A2BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A2BB3C(uint64_t a1)
{
  v2 = sub_1B6A2BD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2BB78(uint64_t a1)
{
  v2 = sub_1B6A2BD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAnalyticsAppData.encode(to:)(void *a1)
{
  sub_1B6A2BED8(0, &qword_1EB95B6E0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2BD00();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A2BD00()
{
  result = qword_1EB95B6E8;
  if (!qword_1EB95B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B6E8);
  }

  return result;
}

uint64_t AppAnalyticsAppData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A2BED8(0, &qword_1EB95B6F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2BD00();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v12 = sub_1B6AB9F50();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2BED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2BD00();
    v7 = a3(a1, &type metadata for AppAnalyticsAppData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2BF3C(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A2BF6C();
  result = sub_1B6A2BFC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2BF6C()
{
  result = qword_1EB95B6F8;
  if (!qword_1EB95B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B6F8);
  }

  return result;
}

unint64_t sub_1B6A2BFC0()
{
  result = qword_1EB95B700;
  if (!qword_1EB95B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B700);
  }

  return result;
}

uint64_t sub_1B6A2C02C(void *a1)
{
  sub_1B6A2BED8(0, &qword_1EB95B6E0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2BD00();
  sub_1B6ABA2D0();
  sub_1B6ABA000();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A2C19C()
{
  result = qword_1EB95B708;
  if (!qword_1EB95B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B708);
  }

  return result;
}

unint64_t sub_1B6A2C1F4()
{
  result = qword_1EB95B710;
  if (!qword_1EB95B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B710);
  }

  return result;
}

unint64_t sub_1B6A2C24C()
{
  result = qword_1EB95B718;
  if (!qword_1EB95B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B718);
  }

  return result;
}

uint64_t AppAnalyticsDeviceData.osVersion.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AppAnalyticsDeviceData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B6A2C380()
{
  if (*v0)
  {
    result = 0x6F6973726556736FLL;
  }

  else
  {
    result = 0x6C50656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_1B6A2C3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A2C4B8(uint64_t a1)
{
  v2 = sub_1B6A2C6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2C4F4(uint64_t a1)
{
  v2 = sub_1B6A2C6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAnalyticsDeviceData.encode(to:)(void *a1)
{
  sub_1B6A2C938(0, &qword_1EB95B720, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v14[0] = *(v1 + 2);
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2C6C0();
  sub_1B6ABA2D0();
  v17 = v10;
  v16 = 0;
  sub_1B6A2C714();
  sub_1B6ABA040();
  if (!v2)
  {
    v15 = 1;
    sub_1B6ABA000();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B6A2C6C0()
{
  result = qword_1EB95B728;
  if (!qword_1EB95B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B728);
  }

  return result;
}

unint64_t sub_1B6A2C714()
{
  result = qword_1EB95B730;
  if (!qword_1EB95B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B730);
  }

  return result;
}

uint64_t AppAnalyticsDeviceData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6A2C938(0, &qword_1EB95B738, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2C6C0();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v19 = 0;
    sub_1B6A2C99C();
    sub_1B6AB9F90();
    v12 = v20;
    v18 = 1;
    v14 = sub_1B6AB9F50();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2C938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2C6C0();
    v7 = a3(a1, &type metadata for AppAnalyticsDeviceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2C99C()
{
  result = qword_1EB95B740;
  if (!qword_1EB95B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B740);
  }

  return result;
}

unint64_t sub_1B6A2C9F0(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A2CA20();
  result = sub_1B6A2CA74();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2CA20()
{
  result = qword_1EB95B748;
  if (!qword_1EB95B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B748);
  }

  return result;
}

unint64_t sub_1B6A2CA74()
{
  result = qword_1EB95B750;
  if (!qword_1EB95B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B750);
  }

  return result;
}

uint64_t sub_1B6A2CAF8(uint64_t a1, int a2)
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

uint64_t sub_1B6A2CB40(uint64_t result, int a2, int a3)
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

unint64_t sub_1B6A2CBA4()
{
  result = qword_1EB95B758;
  if (!qword_1EB95B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B758);
  }

  return result;
}

unint64_t sub_1B6A2CBFC()
{
  result = qword_1EB95B760;
  if (!qword_1EB95B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B760);
  }

  return result;
}

unint64_t sub_1B6A2CC54()
{
  result = qword_1EB95B768;
  if (!qword_1EB95B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B768);
  }

  return result;
}

AppAnalytics::AppAnalyticsDevicePlatform_optional __swiftcall AppAnalyticsDevicePlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6AB9EF0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppAnalyticsDevicePlatform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x534F64615069;
  v4 = 0x534F63616DLL;
  if (v1 != 3)
  {
    v4 = 0x534F6E6F69736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5459817;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B6A2CDA0()
{
  result = qword_1EB95B770;
  if (!qword_1EB95B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B770);
  }

  return result;
}

uint64_t sub_1B6A2CDF4()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A2CEC8()
{
  *v0;
  *v0;
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A2CF88()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

void sub_1B6A2D064(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x534F64615069;
  v7 = 0xE500000000000000;
  v8 = 0x534F63616DLL;
  if (v2 != 3)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5459817;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1B6A2D1B4()
{
  result = qword_1EB95B778;
  if (!qword_1EB95B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B778);
  }

  return result;
}

uint64_t AppAnalyticsLocaleData.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppAnalyticsLocaleData.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppAnalyticsLocaleData.productType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppAnalyticsLocaleData.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AppAnalytics::AppAnalyticsLocaleData __swiftcall AppAnalyticsLocaleData.init(countryCode:productType:)(Swift::String countryCode, Swift::String productType)
{
  *v2 = countryCode;
  v2[1] = productType;
  result.productType = productType;
  result.countryCode = countryCode;
  return result;
}

uint64_t sub_1B6A2D334()
{
  if (*v0)
  {
    result = 0x54746375646F7270;
  }

  else
  {
    result = 0x437972746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_1B6A2D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A2D458(uint64_t a1)
{
  v2 = sub_1B6A2D650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2D494(uint64_t a1)
{
  v2 = sub_1B6A2D650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppAnalyticsLocaleData.encode(to:)(void *a1)
{
  sub_1B6A2D8B4(0, &qword_1EB95B780, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2D650();
  sub_1B6ABA2D0();
  v17 = 0;
  v13 = v15[3];
  sub_1B6ABA000();
  if (!v13)
  {
    v16 = 1;
    sub_1B6ABA000();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B6A2D650()
{
  result = qword_1EB95B788;
  if (!qword_1EB95B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B788);
  }

  return result;
}

uint64_t AppAnalyticsLocaleData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A2D8B4(0, &qword_1EB95B790, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A2D650();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v12 = sub_1B6AB9F50();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_1B6AB9F50();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A2D8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A2D650();
    v7 = a3(a1, &type metadata for AppAnalyticsLocaleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A2D918(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A2D948();
  result = sub_1B6A2D99C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A2D948()
{
  result = qword_1EB95B798;
  if (!qword_1EB95B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B798);
  }

  return result;
}

unint64_t sub_1B6A2D99C()
{
  result = qword_1EB95B7A0;
  if (!qword_1EB95B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7A0);
  }

  return result;
}

unint64_t sub_1B6A2DA44()
{
  result = qword_1EB95B7A8;
  if (!qword_1EB95B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7A8);
  }

  return result;
}

unint64_t sub_1B6A2DA9C()
{
  result = qword_1EB95B7B0;
  if (!qword_1EB95B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7B0);
  }

  return result;
}

unint64_t sub_1B6A2DAF4()
{
  result = qword_1EB95B7B8;
  if (!qword_1EB95B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7B8);
  }

  return result;
}

uint64_t EventData.eventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EventData.eventTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventData() + 20);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventData.eventPath.getter()
{
  v1 = (v0 + *(type metadata accessor for EventData() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EventData.sessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for EventData() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EventData.appSessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for EventData() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EventData.init(eventID:eventTimestamp:eventPath:sessionID:appSessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for EventData();
  v18 = v17[5];
  v19 = sub_1B6AB8DB0();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[7]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v17[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  return result;
}

uint64_t sub_1B6A2DD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A2E420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A2DDB8(uint64_t a1)
{
  v2 = sub_1B69C0248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A2DDF4(uint64_t a1)
{
  v2 = sub_1B69C0248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1B6AB8DB0();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69BFF70(0, &qword_1EDBC8958, MEMORY[0x1E69E6F48]);
  v36 = v7;
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - v9;
  v11 = type metadata accessor for EventData();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69C0248();
  v35 = v10;
  v16 = v37;
  sub_1B6ABA2A0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v33;
  v42 = 0;
  *v14 = sub_1B6AB9F50();
  v14[1] = v18;
  v37 = v18;
  v41 = 1;
  sub_1B69A8420(&qword_1EDBC8C70, MEMORY[0x1E6969530]);
  sub_1B6AB9F90();
  (*(v17 + 32))(v14 + v11[5], v6, v3);
  v40 = 2;
  v31[1] = 0;
  v19 = sub_1B6AB9F50();
  v20 = (v14 + v11[6]);
  *v20 = v19;
  v20[1] = v21;
  v39 = 3;
  v22 = sub_1B6AB9F50();
  v23 = (v14 + v11[7]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 4;
  v25 = sub_1B6AB9F30();
  v31[0] = v26;
  v27 = v25;
  (*(v34 + 8))(v35, v36);
  v28 = (v14 + v11[8]);
  v29 = v31[0];
  *v28 = v27;
  v28[1] = v29;
  sub_1B6A2E2B8(v14, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6A2E31C(v14);
}

uint64_t sub_1B6A2E2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A2E31C(uint64_t a1)
{
  v2 = type metadata accessor for EventData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A2E3CC()
{
  result = qword_1EB95B7C0;
  if (!qword_1EB95B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B7C0);
  }

  return result;
}

uint64_t sub_1B6A2E420(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xEE00706D61747365 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746150746E657665 && a2 == 0xE900000000000068 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t TimedData.startTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB8DB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimedData.endTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimedData() + 20);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B6A2E6F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73656D6954646E65;
  v4 = 0xEC000000706D6174;
  if (v2 != 1)
  {
    v3 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D69547472617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00706D61747365;
  }

  v7 = 0x73656D6954646E65;
  v8 = 0xEC000000706D6174;
  if (*a2 != 1)
  {
    v7 = 0x6E6F697461727564;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D69547472617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00706D61747365;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B6ABA0F0();
  }

  return v11 & 1;
}