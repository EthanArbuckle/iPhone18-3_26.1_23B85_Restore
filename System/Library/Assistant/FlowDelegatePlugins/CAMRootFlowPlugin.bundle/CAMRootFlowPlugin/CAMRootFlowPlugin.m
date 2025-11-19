uint64_t sub_1FF0()
{
  v1 = v0;
  v2 = sub_5A318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0) - 8) + 64);
  __chkstk_darwin();
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_5E14(v1, v9, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v9, v2);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_5B5A8(32);

    v15 = 0xD00000000000001ELL;
    v16 = 0x800000000005E620;
    sub_5FF4(&qword_71C10, &type metadata accessor for PluginAction);
    v17._countAndFlagsBits = sub_5B798();
    sub_5B388(v17);

    v10 = v15;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_5B7C(v9, &v15);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_5B5A8(31);

    v13 = 0xD00000000000001DLL;
    v14 = 0x800000000005E640;
    sub_5F90(&v15, v12);
    sub_5B94(&qword_71C18, &qword_5C290);
    v18._countAndFlagsBits = sub_5B358();
    sub_5B388(v18);

    v10 = v13;
    sub_5D00(&v15);
  }

  return v10;
}

uint64_t sub_2290()
{
  v1 = v0;
  v2 = sub_5B94(&qword_71C80, &qword_5C298);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
  v7 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v5, 1, 1, v7);
  swift_beginAccess();
  sub_5BDC(v5, v1 + v6);
  swift_endAccess();
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v9 = sub_5B228();
  sub_5B44(v9, qword_763B8);
  v10 = sub_5B218();
  v11 = sub_5B4B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "ActionDisambiguationEntryFlow: new instance initialised", v12, 2u);
  }

  return v1;
}

uint64_t sub_245C(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  v3 = sub_5A638();
  v2[134] = v3;
  v4 = *(v3 - 8);
  v2[135] = v4;
  v5 = *(v4 + 64) + 15;
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v6 = sub_5B94(&qword_71C80, &qword_5C298);
  v2[138] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[139] = swift_task_alloc();
  v8 = type metadata accessor for ActionDisambiguationStrategy();
  v2[140] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[141] = swift_task_alloc();
  v2[142] = swift_task_alloc();
  v2[143] = swift_task_alloc();
  v10 = sub_5A318();
  v2[144] = v10;
  v11 = *(v10 - 8);
  v2[145] = v11;
  v12 = *(v11 + 64) + 15;
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v13 = *(*(sub_5B94(&qword_71C88, &qword_5C2A0) - 8) + 64) + 15;
  v2[159] = swift_task_alloc();
  v14 = type metadata accessor for CAMDirectInvocation();
  v2[160] = v14;
  v15 = *(v14 - 8);
  v2[161] = v15;
  v16 = *(v15 + 64) + 15;
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  v17 = sub_5A858();
  v2[164] = v17;
  v18 = *(v17 - 8);
  v2[165] = v18;
  v19 = *(v18 + 64) + 15;
  v2[166] = swift_task_alloc();
  v20 = sub_5A838();
  v2[167] = v20;
  v21 = *(v20 - 8);
  v2[168] = v21;
  v22 = *(v21 + 64) + 15;
  v2[169] = swift_task_alloc();
  v23 = sub_5A7D8();
  v2[170] = v23;
  v24 = *(v23 - 8);
  v2[171] = v24;
  v25 = *(v24 + 64) + 15;
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();

  return _swift_task_switch(sub_285C, 0, 0);
}

uint64_t sub_285C()
{
  v91 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[173];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[132];
  v5 = sub_5B228();
  v0[174] = sub_5B44(v5, qword_763B8);
  v86 = *(v2 + 16);
  v86(v1, v4, v3);
  v6 = sub_5B218();
  v7 = sub_5B4B8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[173];
  v10 = v0[171];
  v11 = v0[170];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v90 = v83;
    *v12 = 136315138;
    sub_5FF4(&qword_71C90, &type metadata accessor for Input);
    v13 = sub_5B798();
    v15 = v14;
    v88 = *(v10 + 8);
    v88(v9, v11);
    v16 = sub_2DC10(v13, v15, &v90);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v6, v7, "ActionDisambiguationEntryFlow: on called with %s", v12, 0xCu);
    sub_5D00(v83);
  }

  else
  {

    v88 = *(v10 + 8);
    v88(v9, v11);
  }

  v17 = v0[166];
  v18 = v0[165];
  v19 = v0[164];
  v20 = v0[132];
  sub_5A7C8();
  if ((*(v18 + 88))(v17, v19) != enum case for Parse.directInvocation(_:))
  {
    (*(v0[165] + 8))(v0[166], v0[164]);
    goto LABEL_12;
  }

  v21 = v0[169];
  v22 = v0[168];
  v23 = v0[167];
  v24 = v0[166];
  v25 = v0[161];
  v26 = v0[160];
  v27 = v0[159];
  (*(v0[165] + 96))(v24, v0[164]);
  (*(v22 + 32))(v21, v24, v23);
  sub_3601C(v27);
  if ((*(v25 + 48))(v27, 1, v26) == 1)
  {
    v28 = v0[159];
    (*(v0[168] + 8))(v0[169], v0[167]);
    sub_5D4C(v28, &qword_71C88, &qword_5C2A0);
LABEL_12:
    v86(v0[172], v0[132], v0[170]);
    v36 = sub_5B218();
    v37 = sub_5B4C8();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[172];
    v40 = v0[171];
    v41 = v0[170];
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90 = v43;
      *v42 = 136315138;
      sub_5FF4(&qword_71C90, &type metadata accessor for Input);
      v44 = sub_5B798();
      v46 = v45;
      v88(v39, v41);
      v47 = sub_2DC10(v44, v46, &v90);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v36, v37, "ActionDisambiguationEntryFlow called with unexpected input %s", v42, 0xCu);
      sub_5D00(v43);
    }

    else
    {

      v88(v39, v41);
    }

    v48 = v0[173];
    v49 = v0[172];
    v50 = v0[169];
    v51 = v0[166];
    v52 = v0[163];
    v53 = v0[162];
    v54 = v0[159];
    v55 = v0[158];
    v56 = v0[157];
    v57 = v0[156];
    v71 = v0[155];
    v72 = v0[154];
    v73 = v0[153];
    v74 = v0[152];
    v75 = v0[151];
    v76 = v0[150];
    v77 = v0[149];
    v78 = v0[148];
    v79 = v0[147];
    v80 = v0[146];
    v81 = v0[143];
    v82 = v0[142];
    v84 = v0[141];
    v85 = v0[139];
    v87 = v0[137];
    v89 = v0[136];

    v58 = v0[1];

    return v58(0);
  }

  v29 = v0[163];
  v30 = v0[162];
  v31 = v0[160];
  sub_5DAC(v0[159], v29, type metadata accessor for CAMDirectInvocation);
  sub_5E14(v29, v30, type metadata accessor for CAMDirectInvocation);
  if (swift_getEnumCaseMultiPayload())
  {
    v32 = v0[169];
    v33 = v0[168];
    v34 = v0[167];
    v35 = v0[162];
    sub_5E7C(v0[163], type metadata accessor for CAMDirectInvocation);
    (*(v33 + 8))(v32, v34);
    sub_5E7C(v35, type metadata accessor for CAMDirectInvocation);
    goto LABEL_12;
  }

  v60 = v0[162];
  v61 = v0[158];
  v62 = v0[157];
  v63 = v0[145];
  v64 = v0[144];
  v65 = *(sub_5B94(&qword_71C98, &qword_5C2A8) + 48);
  v66 = *(v63 + 32);
  v0[175] = v66;
  v0[176] = (v63 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v66(v61, v60, v64);
  v66(v62, v60 + v65, v64);
  if (qword_71A40 != -1)
  {
    swift_once();
  }

  v67 = swift_task_alloc();
  v0[177] = v67;
  *v67 = v0;
  v67[1] = sub_3084;
  v68 = v0[158];
  v69 = v0[157];
  v70 = v0[143];

  return sub_603C(v70, v68, v69, qword_76340);
}

uint64_t sub_3084()
{
  v1 = *(*v0 + 1416);
  v3 = *v0;

  return _swift_task_switch(sub_3180, 0, 0);
}

uint64_t sub_3180()
{
  v247 = v0;
  v1 = v0[174];
  sub_5E14(v0[143], v0[142], type metadata accessor for ActionDisambiguationStrategy);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[142];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v246 = v7;
    *v6 = 136315138;
    v8 = sub_8160();
    v10 = v9;
    sub_5E7C(v5, type metadata accessor for ActionDisambiguationStrategy);
    v11 = sub_2DC10(v8, v10, &v246);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "ActionDisambiguationEntryFlow: disambiguations strategy is %s", v6, 0xCu);
    sub_5D00(v7);
  }

  else
  {

    sub_5E7C(v5, type metadata accessor for ActionDisambiguationStrategy);
  }

  v12 = v0[140];
  sub_5E14(v0[143], v0[141], type metadata accessor for ActionDisambiguationStrategy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v86 = v0[176];
      v87 = v0[175];
      v204 = v0[153];
      v208 = v0[174];
      v217 = v0[152];
      v88 = v0[151];
      v199 = v88;
      v226 = v0[150];
      v239 = v0[145];
      v221 = v0[144];
      v89 = v0[141];
      v90 = v0[137];
      v234 = v0[136];
      v91 = v0[135];
      v92 = v0[134];
      v93 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v94 = *(v93 + 48);
      v95 = *(v93 + 64);
      v201 = v92;
      (*(v91 + 32))(v90, v89, v92);
      v87(v204, v89 + v94, v221);
      v87(v217, v89 + v95, v221);
      v197 = *(v239 + 16);
      v197(v88, v204, v221);
      v197(v226, v217, v221);
      v205 = *(v91 + 16);
      v205(v234, v90, v92);
      sub_5A868();
      v96 = type metadata accessor for DefaultCatExecutor();
      v97 = swift_allocObject();
      sub_5A148();
      v0[50] = sub_5A5D8();
      v0[51] = &protocol witness table for AppShortcutProvider;
      sub_5F2C(v0 + 47);
      sub_5A5C8();
      v98 = type metadata accessor for CoreServicesProvider();
      v99 = swift_allocObject();
      sub_5A6C8();
      v0[60] = v96;
      v0[61] = &off_6E270;
      v0[57] = v97;
      v0[65] = v98;
      v0[66] = &off_6E328;
      v0[62] = v99;
      v100 = type metadata accessor for AppShortcutEnablementFlow(0);
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      v218 = v100;
      v103 = swift_allocObject();
      v104 = sub_5EDC((v0 + 57), v96);
      v105 = *(v96 - 8);
      v195 = *(v105 + 64) + 15;
      v106 = swift_task_alloc();
      v193 = *(v105 + 16);
      v193(v106, v104, v96);
      v107 = v0[65];
      v108 = sub_5EDC((v0 + 62), v107);
      v109 = *(v107 - 8);
      v110 = *(v109 + 64) + 15;
      v111 = swift_task_alloc();
      (*(v109 + 16))(v111, v108, v107);
      v112 = *v106;
      v113 = *v111;
      v0[70] = v96;
      v0[71] = &off_6E270;
      v0[67] = v112;
      v0[75] = v98;
      v0[76] = &off_6E328;
      v0[72] = v113;
      *(v103 + 2) = 3;
      v197(&v103[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction], v199, v221);
      v197(&v103[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction], v226, v221);
      v205(&v103[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutInvocation], v234, v201);
      sub_5F90((v0 + 37), (v103 + 24));
      sub_5F90((v0 + 67), (v103 + 64));
      sub_5F90((v0 + 42), (v103 + 104));
      sub_5F90((v0 + 47), (v103 + 144));
      sub_5F90((v0 + 72), (v103 + 184));
      sub_5F90((v103 + 64), (v0 + 77));
      v114 = v0[80];
      v115 = sub_5EDC((v0 + 77), v114);
      v116 = *(v114 - 8);
      v117 = *(v116 + 64) + 15;
      v118 = swift_task_alloc();
      (*(v116 + 16))(v118, v115, v114);
      v119 = *v118;
      v0[85] = v96;
      v0[86] = &off_6E270;
      v0[82] = v119;
      type metadata accessor for CAMDisambiguateCATs();
      v120 = swift_allocObject();
      v121 = sub_5EDC((v0 + 82), v96);
      v122 = swift_task_alloc();
      v193(v122, v121, v96);
      v123 = *v122;
      v120[5] = v96;
      v120[6] = &off_6E270;
      v120[2] = v123;
      sub_5D00(v0 + 82);

      sub_5D00(v0 + 77);

      *(v103 + 33) = v120;
      sub_5F90((v103 + 64), (v0 + 87));
      v124 = v0[90];
      v125 = sub_5EDC((v0 + 87), v124);
      v126 = *(v124 - 8);
      v127 = *(v126 + 64) + 15;
      v128 = swift_task_alloc();
      (*(v126 + 16))(v128, v125, v124);
      v129 = *v128;
      v0[95] = v96;
      v0[96] = &off_6E270;
      v0[92] = v129;
      v130 = type metadata accessor for CAMDisambiguateCATPatternsExecutor();
      v131 = swift_allocObject();
      v132 = sub_5EDC((v0 + 92), v96);
      v133 = swift_task_alloc();
      v193(v133, v132, v96);
      v134 = *v133;
      v131[5] = v96;
      v131[6] = &off_6E270;
      v131[2] = v134;
      sub_5D00(v0 + 92);

      sub_5D00(v0 + 87);

      *(v103 + 37) = v130;
      *(v103 + 38) = &off_6E1D0;
      *(v103 + 34) = v131;
      sub_5F90((v0 + 52), (v103 + 224));
      v135 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state;
      v136 = sub_5B94(&qword_71CA0, &unk_5C2B0);
      (*(*(v136 - 8) + 56))(&v103[v135], 1, 2, v136);
      v137 = sub_5B218();
      v138 = sub_5B4B8();
      v139 = os_log_type_enabled(v137, v138);
      v140 = v0[151];
      v141 = v0[150];
      v142 = v0[145];
      v143 = v0[144];
      v240 = v0[136];
      v144 = v0[135];
      v145 = v0[134];
      if (v139)
      {
        v227 = v0[150];
        v146 = swift_slowAlloc();
        v222 = v140;
        v147 = swift_slowAlloc();
        v246 = v147;
        *v146 = 136315138;
        *(v146 + 4) = sub_2DC10(0xD00000000000008FLL, 0x800000000005E660, &v246);
        _os_log_impl(&dword_0, v137, v138, "%s new instance", v146, 0xCu);
        sub_5D00(v147);

        sub_5D00(v0 + 52);
        sub_5D00(v0 + 42);
        sub_5D00(v0 + 37);
        v148 = v240;
        v241 = *(v144 + 8);
        v241(v148, v145);
        v149 = *(v142 + 8);
        v149(v227, v143);
        v150 = v222;
      }

      else
      {

        sub_5D00(v0 + 52);
        sub_5D00(v0 + 42);
        sub_5D00(v0 + 37);
        v151 = v240;
        v241 = *(v144 + 8);
        v241(v151, v145);
        v149 = *(v142 + 8);
        v149(v141, v143);
        v150 = v140;
      }

      v149(v150, v143);
      sub_5D00(v0 + 47);
      sub_5D00(v0 + 72);
      sub_5D00(v0 + 67);
      v152 = v0[153];
      v153 = v0[152];
      v154 = v0[144];
      v38 = v0[139];
      v155 = v0[137];
      v156 = v0[134];
      v228 = v0[133];
      sub_5D00(v0 + 62);

      sub_5D00(v0 + 57);

      v38[3] = v218;
      v38[4] = sub_5FF4(&qword_71CB8, type metadata accessor for AppShortcutEnablementFlow);
      *v38 = v103;
      v149(v153, v154);
      v149(v152, v154);
      v241(v155, v156);
      v157 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v157 - 8) + 56))(v38, 0, 1, v157);
      v41 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
      v42 = v228;
LABEL_19:
      swift_beginAccess();
      v83 = v42 + v41;
      goto LABEL_20;
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = v0[176];
      v231 = v0[174];
      v15 = v0[158];
      v16 = v0[157];
      v17 = v0[149];
      v18 = v0[148];
      v19 = v0[147];
      v20 = v0[146];
      v21 = v0[145];
      v22 = v0[144];
      (v0[175])(v17, v0[141], v22);
      v23 = *(v21 + 16);
      v23(v18, v15, v22);
      v23(v19, v16, v22);
      v23(v20, v17, v22);
      sub_5A148();
      sub_5A6C8();
      v0[25] = &type metadata for SNLGTemplatingSectionGenerator;
      v0[26] = &off_6E890;
      v24 = type metadata accessor for VerbEntityDisambiguationFlow(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      v237 = v24;
      v27 = swift_allocObject();
      sub_5EDC((v0 + 22), &type metadata for SNLGTemplatingSectionGenerator);
      v0[30] = &type metadata for SNLGTemplatingSectionGenerator;
      v0[31] = &off_6E890;
      v23(v27 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_firstAction, v18, v22);
      v23(v27 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_secondAction, v19, v22);
      v23(v27 + OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_fallBackAction, v20, v22);
      sub_5F90((v0 + 27), v27 + 16);
      sub_5F90((v0 + 12), v27 + 56);
      sub_5F90((v0 + 17), v27 + 96);
      v28 = OBJC_IVAR____TtC17CAMRootFlowPlugin28VerbEntityDisambiguationFlow_state;
      v29 = sub_5B94(&qword_71CA0, &unk_5C2B0);
      (*(*(v29 - 8) + 56))(v27 + v28, 1, 2, v29);
      v30 = sub_5B218();
      v31 = sub_5B4B8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "VerbEntityDisambiguationFlow: new instance initialised", v32, 2u);
      }

      v33 = v0[148];
      v34 = v0[147];
      v35 = v0[146];
      v36 = v0[145];
      v37 = v0[144];
      v38 = v0[139];
      v225 = v0[149];
      v232 = v0[133];

      sub_5D00(v0 + 17);
      sub_5D00(v0 + 12);
      v39 = *(v36 + 8);
      v39(v35, v37);
      v39(v34, v37);
      v39(v33, v37);
      sub_5D00(v0 + 27);
      sub_5D00(v0 + 22);
      v38[3] = v237;
      v38[4] = sub_5FF4(&qword_71CA8, type metadata accessor for VerbEntityDisambiguationFlow);
      *v38 = v27;
      v39(v225, v37);
      v40 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
      v41 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
      v42 = v232;
    }

    else
    {
      v84 = v0[176];
      v38 = v0[139];
      v42 = v0[133];
      (v0[175])(v38, v0[141], v0[144]);
      v85 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v85 - 8) + 56))(v38, 0, 1, v85);
      v41 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
    }

    goto LABEL_19;
  }

  v43 = v0[176];
  v233 = v0[174];
  v44 = v0[158];
  v45 = v0[157];
  v46 = v0[155];
  v210 = v46;
  v47 = v0[154];
  v213 = v47;
  v216 = v0[156];
  v48 = v0[145];
  v49 = v0[144];
  v50 = v0[141];
  (v0[175])();
  v207 = *(v48 + 16);
  v207(v46, v44, v49);
  v207(v47, v45, v49);
  sub_5A868();
  v51 = type metadata accessor for DefaultCatExecutor();
  v52 = swift_allocObject();
  sub_5A6C8();
  sub_5A148();
  v203 = type metadata accessor for CoreServicesProvider();
  v53 = swift_allocObject();
  v0[5] = v51;
  v0[6] = &off_6E270;
  v0[2] = v52;
  v0[100] = v203;
  v0[101] = &off_6E328;
  v0[97] = v53;
  v54 = type metadata accessor for AppNameDisambiguationFlow(0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v238 = v54;
  v57 = swift_allocObject();
  v58 = sub_5EDC((v0 + 2), v51);
  v59 = *(v51 - 8);
  v60 = *(v59 + 64) + 15;
  v61 = swift_task_alloc();
  (*(v59 + 16))(v61, v58, v51);
  v62 = v0[100];
  v63 = sub_5EDC((v0 + 97), v62);
  v64 = *(v62 - 8);
  v65 = *(v64 + 64) + 15;
  v66 = swift_task_alloc();
  (*(v64 + 16))(v66, v63, v62);
  v67 = *v61;
  v68 = *v66;
  v0[35] = v51;
  v0[36] = &off_6E270;
  v0[32] = v67;
  v0[10] = v203;
  v0[11] = &off_6E328;
  v0[7] = v68;
  v207(v57 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction, v210, v49);
  v207(v57 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction, v213, v49);
  v207(v57 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_fallBackAction, v216, v49);
  sub_5F90((v0 + 102), v57 + 16);
  sub_5F90((v0 + 32), v57 + 56);
  sub_5F90((v0 + 107), v57 + 96);
  sub_5F90((v0 + 112), v57 + 136);
  sub_5F90((v0 + 7), v57 + 176);
  v69 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
  v70 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  (*(*(v70 - 8) + 56))(v57 + v69, 1, 3, v70);
  v71 = sub_5B218();
  v72 = sub_5B4B8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_0, v71, v72, "AppNameDisambiguationFlow: new instance initialised", v73, 2u);
  }

  v74 = v0[156];
  v75 = v0[155];
  v76 = v0[154];
  v77 = v0[145];
  v78 = v0[144];
  v38 = v0[139];
  v79 = v0[133];

  sub_5D00(v0 + 112);
  sub_5D00(v0 + 107);
  sub_5D00(v0 + 102);
  v80 = *(v77 + 8);
  v80(v76, v78);
  v80(v75, v78);
  v80(v74, v78);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 32);
  sub_5D00(v0 + 97);

  sub_5D00(v0 + 2);

  v38[3] = v238;
  v38[4] = sub_5FF4(&qword_71CC8, type metadata accessor for AppNameDisambiguationFlow);
  *v38 = v57;
  v81 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v81 - 8) + 56))(v38, 0, 1, v81);
  v82 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
  swift_beginAccess();
  v83 = v79 + v82;
LABEL_20:
  sub_5BDC(v38, v83);
  swift_endAccess();
  v158 = v0[174];
  v159 = v0[133];

  v160 = sub_5B218();
  v161 = sub_5B4B8();

  v162 = os_log_type_enabled(v160, v161);
  v163 = v0[169];
  v164 = v0[168];
  v165 = v0[167];
  v166 = v0[163];
  v167 = v0[158];
  v168 = v0[145];
  v242 = v0[157];
  v244 = v0[144];
  v169 = v0[143];
  if (v162)
  {
    v229 = v0[163];
    v235 = v0[167];
    v170 = v0[139];
    v211 = v0[138];
    v171 = v0[133];
    v219 = v0[143];
    v172 = swift_slowAlloc();
    v223 = v163;
    v173 = swift_slowAlloc();
    v246 = v173;
    *v172 = 136315138;
    v214 = v167;
    v174 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
    swift_beginAccess();
    sub_5C4C(v171 + v174, v170);
    v175 = sub_5B358();
    v177 = sub_2DC10(v175, v176, &v246);

    *(v172 + 4) = v177;
    _os_log_impl(&dword_0, v160, v161, "ActionDisambiguationEntryFlow: execution decision is %s", v172, 0xCu);
    sub_5D00(v173);

    sub_5E7C(v219, type metadata accessor for ActionDisambiguationStrategy);
    v178 = *(v168 + 8);
    v178(v242, v244);
    v178(v214, v244);
    sub_5E7C(v229, type metadata accessor for CAMDirectInvocation);
    (*(v164 + 8))(v223, v235);
  }

  else
  {

    sub_5E7C(v169, type metadata accessor for ActionDisambiguationStrategy);
    v179 = *(v168 + 8);
    v179(v242, v244);
    v179(v167, v244);
    sub_5E7C(v166, type metadata accessor for CAMDirectInvocation);
    (*(v164 + 8))(v163, v165);
  }

  v180 = v0[173];
  v181 = v0[172];
  v182 = v0[169];
  v183 = v0[166];
  v184 = v0[163];
  v185 = v0[162];
  v186 = v0[159];
  v187 = v0[158];
  v188 = v0[157];
  v189 = v0[156];
  v192 = v0[155];
  v194 = v0[154];
  v196 = v0[153];
  v198 = v0[152];
  v200 = v0[151];
  v202 = v0[150];
  v206 = v0[149];
  v209 = v0[148];
  v212 = v0[147];
  v215 = v0[146];
  v220 = v0[143];
  v224 = v0[142];
  v230 = v0[141];
  v236 = v0[139];
  v243 = v0[137];
  v245 = v0[136];

  v190 = v0[1];

  return v190(1);
}

uint64_t sub_49B8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_5A318();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_5B94(&qword_71C80, &qword_5C298) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(0);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_4B18, 0, 0);
}

uint64_t sub_4B18()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ActionDisambiguationEntryFlow: execution called", v4, 2u);
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 88);

  v9 = OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision;
  swift_beginAccess();
  sub_5C4C(v8 + v9, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_5D4C(*(v0 + 120), &qword_71C80, &qword_5C298);
    v10 = sub_5B218();
    v11 = sub_5B4C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "ActionDisambiguationEntryFlow: calling execute with nill execution decision", v12, 2u);
    }

    v13 = *(v0 + 80);

    sub_5A438();
  }

  else
  {
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    sub_5DAC(*(v0 + 120), v15, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    sub_5E14(v15, v14, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    if (EnumCaseMultiPayload == 1)
    {
      v21 = *(v0 + 104);
      v20 = *(v0 + 112);
      v22 = *(v0 + 96);
      v23 = *(v0 + 80);
      (*(v21 + 32))(v20, *(v0 + 144), v22);
      sub_5A448();
      (*(v21 + 8))(v20, v22);
      sub_5E7C(v19, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    }

    else
    {
      v24 = *(v0 + 80);
      sub_5B7C(*(v0 + 144), v0 + 16);
      v25 = *(v0 + 48);
      sub_5CBC((v0 + 16), *(v0 + 40));
      sub_5A088();
      sub_5A428();

      sub_5E7C(v19, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
      sub_5D00((v0 + 16));
    }
  }

  v27 = *(v0 + 144);
  v26 = *(v0 + 152);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_4E7C()
{
  sub_5D4C(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin29ActionDisambiguationEntryFlow_executionDecision, &qword_71C80, &qword_5C298);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_4F18()
{
  sub_4FA8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_4FA8()
{
  if (!qword_71AB0)
  {
    type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision(255);
    v0 = sub_5B508();
    if (!v1)
    {
      atomic_store(v0, &qword_71AB0);
    }
  }
}

uint64_t sub_5020(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5058(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = v7 + ((v4 + 16) & ~v4);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_5A318();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v8 = *(a2 + 3);
      *(a1 + 24) = v8;
      (**(v8 - 8))(a1, a2);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_5184(uint64_t *a1)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_5D00(a1);
  }

  v2 = sub_5A318();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_5208(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_5A318();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_52E0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_5E7C(a1, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_5A318();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 32);
      (**(v5 - 8))(a1, a2);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_53E0(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5A318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_54B0(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_5E7C(a1, type metadata accessor for ActionDisambiguationEntryFlow.ExecutionDecision);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5A318();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_560C()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_56A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_573C;

  return sub_245C(a1);
}

uint64_t sub_573C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_5838()
{
  v2 = *v0;
  type metadata accessor for ActionDisambiguationEntryFlow(0);
  return sub_5A098();
}

uint64_t sub_5898(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_49B8(a1);
}

uint64_t sub_5934()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5A28(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionDisambiguationEntryFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_5A68()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4C8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "ActionDisambiguationEntryFlow: the synchronous version of on was unexpectedly called.", v3, 2u);
  }

  return 0;
}

uint64_t sub_5B44(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5B7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_5B94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71C80, &qword_5C298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71C80, &qword_5C298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_5CBC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_5D00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_5D4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5B94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5EDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_5F2C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_5F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_5B94(&unk_73C70, &unk_5C300) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_5B94(&qword_72030, &unk_5E370) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_5A4E8();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = sub_5A318();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_61D8, 0, 0);
}

uint64_t sub_61D8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[3];
  v5 = v0[4];
  sub_5B94(&qword_724F0, &qword_5C310);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_5C2D0;
  v79 = v8;
  v9 = v8 + v7;
  v10 = *(v3 + 16);
  v10(v8 + v7, v4, v2);
  v85 = v6;
  v10(v9 + v6, v5, v2);
  v87 = v9;
  v86 = v10;
  v10(v1, v9, v2);
  v11 = sub_41E68();
  v13 = v12;
  v84 = *(v3 + 8);
  v84(v1, v2);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_585F4(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1, &_swiftEmptyArrayStorage);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_585F4((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[16 * v16];
    *(v17 + 4) = v11;
    *(v17 + 5) = v13;
  }

  v18 = v0[14];
  v19 = v0[11];
  v86(v18, v9 + v6, v19);
  v20 = sub_41E68();
  v22 = v21;
  v84(v18, v19);
  if (v22)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_585F4(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = sub_585F4((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[16 * v24];
    *(v25 + 4) = v20;
    *(v25 + 5) = v22;
  }

  v26 = v0[9];
  v78 = sub_9D5C(v14);

  v27 = 0;
  v28 = 0;
  v82 = (v26 + 32);
  v83 = (v26 + 48);
  v80 = v26;
  v81 = (v26 + 56);
  v29 = &_swiftEmptyArrayStorage;
  do
  {
    v30 = v27;
    v31 = v0[6];
    v86(v0[13], v87 + v28 * v85, v0[11]);
    sub_5A2D8();
    v32 = sub_5A518();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 48))(v31, 1, v32);
    v35 = v0[13];
    v36 = v0[11];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v0[6];
    if (v34 == 1)
    {
      v84(v0[13], v0[11]);
      sub_5D4C(v39, &unk_73C70, &unk_5C300);
      (*v81)(v38, 1, 1, v37);
LABEL_15:
      sub_5D4C(v0[7], &qword_72030, &unk_5E370);
      goto LABEL_16;
    }

    v40 = v0[7];
    sub_5A4F8();
    v84(v35, v36);
    (*(v33 + 8))(v39, v32);
    if ((*v83)(v38, 1, v37) == 1)
    {
      goto LABEL_15;
    }

    v41 = *v82;
    (*v82)(v0[10], v0[7], v0[8]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_585CC(0, *(v29 + 2) + 1, 1, v29);
    }

    v43 = *(v29 + 2);
    v42 = *(v29 + 3);
    if (v43 >= v42 >> 1)
    {
      v29 = sub_585CC(v42 > 1, v43 + 1, 1, v29);
    }

    v44 = v0[10];
    v45 = v0[8];
    *(v29 + 2) = v43 + 1;
    v41(&v29[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v43], v44, v45);
LABEL_16:
    v27 = 1;
    v28 = 1;
  }

  while ((v30 & 1) == 0);
  v46 = sub_9DF4(v29);

  v47 = *(v46 + 16);

  if (v47 == 2)
  {
    v48 = v0[11];
    v50 = v0[2];
    v49 = v0[3];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v86(v50, v49, v48);
    type metadata accessor for ActionDisambiguationStrategy();
    goto LABEL_41;
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v51 = sub_5B228();
  sub_5B44(v51, qword_763B8);
  v52 = sub_5B218();
  v53 = sub_5B4B8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "ActionDisambiguationStrategy: no two distinct verb entity paraphrases", v54, 2u);
  }

  v55 = *(v78 + 16);

  v56 = v0[11];
  if (v55 == 2)
  {
    v57 = sub_2BE2C(v79);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v57)
    {
      v58 = swift_task_alloc();
      v0[15] = v58;
      *v58 = v0;
      v58[1] = sub_6AA8;
      v59 = v0[4];
      v60 = v0[5];
      v61 = v0[2];
      v62 = v0[3];

      return sub_6C78(v61, v62, v59, v60);
    }

    v64 = sub_5B218();
    v67 = sub_5B4B8();
    if (os_log_type_enabled(v64, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v64, v67, "ActionDisambiguationStrategy: no app shortcut detected", v68, 2u);
    }
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v64 = sub_5B218();
    v65 = sub_5B4B8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "ActionDisambiguationStrategy: no two distinct app bundle ids", v66, 2u);
    }
  }

  v69 = v0[11];
  v71 = v0[2];
  v70 = v0[3];

  v86(v71, v70, v69);
  type metadata accessor for ActionDisambiguationStrategy();
LABEL_41:
  swift_storeEnumTagMultiPayload();
  v73 = v0[13];
  v72 = v0[14];
  v74 = v0[10];
  v76 = v0[6];
  v75 = v0[7];

  v77 = v0[1];

  return v77();
}

uint64_t sub_6AA8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v10 = *v0;

  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[6];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_6C38()
{
  qword_76358 = sub_5A5D8();
  unk_76360 = &protocol witness table for AppShortcutProvider;
  sub_5F2C(qword_76340);
  return sub_5A5C8();
}

uint64_t sub_6C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_5B94(&unk_72520, &qword_5C320) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_5A638();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_5A318();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v12 = sub_5A858();
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v15 = sub_5A7D8();
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v18 = sub_5A8E8();
  v4[26] = v18;
  v19 = *(v18 - 8);
  v4[27] = v19;
  v20 = *(v19 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_6F5C, 0, 0);
}

uint64_t sub_6F5C()
{
  v139 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  *(v0 + 256) = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ActionDisambiguationStrategy: computing strategy for app shortcut collision", v4, 2u);
  }

  v6 = (v0 + 24);
  v5 = *(v0 + 24);
  v7 = *(v0 + 200);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);

  sub_5A2F8();
  sub_5A7C8();
  v13 = *(v8 + 8);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v130 = v13;
  v13(v7, v9);
  v14 = *(v12 + 88);
  *(v0 + 280) = v14;
  *(v0 + 288) = (v12 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v15 = v14(v10, v11);
  v16 = enum case for Parse.uso(_:);
  *(v0 + 312) = enum case for Parse.uso(_:);
  v129 = v16;
  if (v15 == v16)
  {
    v17 = *(v0 + 248);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 152);
    (*(*(v0 + 120) + 96))(v20, *(v0 + 112));
    (*(v19 + 32))(v17, v20, v18);
    v21 = sub_5A8A8();
    (*(v19 + 8))(v17, v18);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 152), *(v0 + 112));
    v21 = 0;
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = *(v0 + 112);
  v26 = *(v0 + 32);
  sub_5A2F8();
  sub_5A7C8();
  v130(v22, v23);
  v125 = v14;
  if (v14(v24, v25) == v129)
  {
    v27 = *(v0 + 240);
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v30 = *(v0 + 144);
    (*(*(v0 + 120) + 96))(v30, *(v0 + 112));
    (*(v29 + 32))(v27, v30, v28);
    v31 = sub_5A8A8();
    (*(v29 + 8))(v27, v28);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
    v31 = 0;
  }

  v32 = sub_5B218();
  v33 = sub_5B4B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67109376;
    *(v34 + 4) = v21;
    *(v34 + 8) = 1024;
    *(v34 + 10) = v31;
    _os_log_impl(&dword_0, v32, v33, "ActionDisambiguationStrategy: firstActionIsForAppShortcut=%{BOOL}d, secondActionIsForAppShortcut=%{BOOL}d ", v34, 0xEu);
  }

  if (v21 && v31)
  {
    v35 = sub_5B218();
    v36 = sub_5B4B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Disambiguating for App Shortcut vs App Shortcut", v37, 2u);
    }

    v38 = *(v0 + 88);

    v39 = *(v38 + 16);
    v40 = *(v0 + 16);
    goto LABEL_34;
  }

  v41 = *(v0 + 96);
  v42 = *(v0 + 184);
  v122 = *(v0 + 160);
  v43 = *(v0 + 136);
  v44 = *(v0 + 104);
  v127 = *(v0 + 112);
  v45 = *(v0 + 80);
  v47 = *(v0 + 24);
  v46 = *(v0 + 32);
  v48 = !v21;
  if (v21)
  {
    v49 = *(v0 + 32);
  }

  else
  {
    v49 = *(v0 + 24);
  }

  if (v48)
  {
    v50 = *(v0 + 32);
  }

  else
  {
    v50 = *(v0 + 24);
  }

  v51 = *(*(v0 + 88) + 16);
  *(v0 + 296) = v51;
  v51(v44, v50, v45);
  v51(v41, v49, v45);
  sub_5A2F8();
  sub_5A7C8();
  v130(v42, v122);
  if (v125(v43, v127) != v129)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    v60 = *(v0 + 256);
    v61 = sub_5B218();
    v62 = sub_5B4B8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v138 = v64;
      *v63 = 136315138;
      v65 = sub_2DC10(0x64656C6261736964, 0xE800000000000000, &v138);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_0, v61, v62, "App Shortcut (%s) vs NLV4/POMMES", v63, 0xCu);
      sub_5D00(v64);
    }

    v134 = *(v0 + 312);
    v66 = *(v0 + 280);
    v131 = *(v0 + 288);
    v68 = *(v0 + 264);
    v67 = *(v0 + 272);
    v69 = *(v0 + 176);
    v70 = *(v0 + 160);
    v71 = *(v0 + 128);
    v72 = *(v0 + 104);
    v73 = *(v0 + 112);
    sub_5A2F8();
    sub_5A7C8();
    v68(v69, v70);
    if (v66(v71, v73) == v134)
    {
      v75 = *(v0 + 216);
      v74 = *(v0 + 224);
      v76 = *(v0 + 208);
      v77 = *(v0 + 128);
      v78 = *(v0 + 56);
      v79 = *(v0 + 64);
      v80 = *(v0 + 48);
      (*(*(v0 + 120) + 96))(v77, *(v0 + 112));
      (*(v75 + 32))(v74, v77, v76);
      sub_5A8B8();
      (*(v75 + 8))(v74, v76);
      if ((*(v79 + 48))(v80, 1, v78) != 1)
      {
        v104 = *(v0 + 256);
        v137 = *(*(v0 + 64) + 32);
        v137(*(v0 + 72), *(v0 + 48), *(v0 + 56));
        v105 = sub_5B218();
        v106 = sub_5B4B8();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_0, v105, v106, "Returning appShortcutCollisionWithEnablement as the disambiguation strategy", v107, 2u);
        }

        v133 = *(v0 + 104);
        v108 = *(v0 + 80);
        v109 = *(v0 + 88);
        v110 = *(v0 + 72);
        v111 = *(v0 + 56);
        v112 = *(v0 + 16);

        v113 = sub_5B94(&qword_71CB0, &qword_5C2F0);
        v114 = *(v113 + 48);
        v115 = v112 + *(v113 + 64);
        v137(v112, v110, v111);
        v116 = *(v109 + 32);
        v116(v112 + v114, v133, v108);
        v93 = v115;
        v39 = v116;
        v117 = *(v0 + 16);
        v6 = (v0 + 96);
        goto LABEL_35;
      }

      v81 = *(v0 + 104);
      v82 = *(v0 + 80);
      v83 = *(*(v0 + 88) + 8);
      v83(*(v0 + 96), v82);
      v83(v81, v82);
    }

    else
    {
      v85 = *(v0 + 120);
      v84 = *(v0 + 128);
      v87 = *(v0 + 104);
      v86 = *(v0 + 112);
      v88 = *(v0 + 80);
      v89 = *(v0 + 64);
      v132 = v84;
      v135 = *(v0 + 56);
      v90 = *(v0 + 48);
      v91 = *(*(v0 + 88) + 8);
      v91(*(v0 + 96), v88);
      v91(v87, v88);
      (*(v85 + 8))(v132, v86);
      (*(v89 + 56))(v90, 1, 1, v135);
    }

    v92 = *(v0 + 88);
    sub_5D4C(*(v0 + 48), &unk_72520, &qword_5C320);
    v39 = *(v0 + 296);
    v40 = *(v0 + 16);
LABEL_34:
    v93 = v40;
LABEL_35:
    v94 = *v6;
    v96 = *(v0 + 240);
    v95 = *(v0 + 248);
    v98 = *(v0 + 224);
    v97 = *(v0 + 232);
    v100 = *(v0 + 192);
    v99 = *(v0 + 200);
    v101 = *(v0 + 184);
    v119 = *(v0 + 176);
    v120 = *(v0 + 152);
    v121 = *(v0 + 144);
    v123 = *(v0 + 136);
    v124 = *(v0 + 128);
    v126 = *(v0 + 104);
    v128 = *(v0 + 96);
    v102 = *(v0 + 72);
    v136 = *(v0 + 48);
    v39(v93, v94, *(v0 + 80));
    type metadata accessor for ActionDisambiguationStrategy();
    swift_storeEnumTagMultiPayload();

    v103 = *(v0 + 8);

    return v103();
  }

  v52 = *(v0 + 232);
  v53 = *(v0 + 208);
  v54 = *(v0 + 216);
  v55 = *(v0 + 136);
  (*(*(v0 + 120) + 96))(v55, *(v0 + 112));
  (*(v54 + 32))(v52, v55, v53);
  v56 = async function pointer to USOParse.isEnabledAppShortcutInvocation(provider:)[1];
  v57 = swift_task_alloc();
  *(v0 + 304) = v57;
  *v57 = v0;
  v57[1] = sub_7A00;
  v58 = *(v0 + 232);
  v59 = *(v0 + 40);

  return USOParse.isEnabledAppShortcutInvocation(provider:)(v59);
}

uint64_t sub_7A00(char a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 316) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_7B60, 0, 0);
}

uint64_t sub_7B60()
{
  v86 = v0;
  v1 = *(v0 + 316);
  v2 = *(v0 + 256);
  v3 = sub_5B218();
  v4 = sub_5B4B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v85 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 0x64656C62616E65;
    }

    else
    {
      v7 = 0x64656C6261736964;
    }

    if (v1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = sub_2DC10(v7, v8, &v85);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "App Shortcut (%s) vs NLV4/POMMES", v5, 0xCu);
    sub_5D00(v6);
  }

  if (v1)
  {
    v10 = *(v0 + 256);
    v11 = sub_5B218();
    v12 = sub_5B4B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Disambiguating between App Shortcut and NLv4/POMMES", v13, 2u);
    }

    v14 = *(v0 + 104);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);

    (*(v15 + 8))(v14, v16);
    v17 = *(v15 + 32);
    v18 = (v0 + 96);
    v19 = *(v0 + 16);
    goto LABEL_18;
  }

  v81 = *(v0 + 312);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);
  v24 = *(v0 + 176);
  v25 = *(v0 + 160);
  v26 = *(v0 + 128);
  v27 = *(v0 + 104);
  v28 = *(v0 + 112);
  sub_5A2F8();
  sub_5A7C8();
  v22(v24, v25);
  if (v21(v26, v28) != v81)
  {
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 80);
    v44 = *(v0 + 64);
    v82 = *(v0 + 56);
    v45 = *(v0 + 48);
    v46 = *(*(v0 + 88) + 8);
    v46(*(v0 + 96), v43);
    v46(v42, v43);
    (*(v40 + 8))(v39, v41);
    (*(v44 + 56))(v45, 1, 1, v82);
    goto LABEL_17;
  }

  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  v31 = *(v0 + 208);
  v32 = *(v0 + 128);
  v33 = *(v0 + 56);
  v34 = *(v0 + 64);
  v35 = *(v0 + 48);
  (*(*(v0 + 120) + 96))(v32, *(v0 + 112));
  (*(v30 + 32))(v29, v32, v31);
  sub_5A8B8();
  (*(v30 + 8))(v29, v31);
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    v36 = *(v0 + 104);
    v37 = *(v0 + 80);
    v38 = *(*(v0 + 88) + 8);
    v38(*(v0 + 96), v37);
    v38(v36, v37);
LABEL_17:
    v47 = *(v0 + 88);
    sub_5D4C(*(v0 + 48), &unk_72520, &qword_5C320);
    v17 = *(v0 + 296);
    v18 = (v0 + 24);
    v19 = *(v0 + 16);
LABEL_18:
    v48 = v19;
    goto LABEL_19;
  }

  v58 = *(v0 + 256);
  v84 = *(*(v0 + 64) + 32);
  v84(*(v0 + 72), *(v0 + 48), *(v0 + 56));
  v59 = sub_5B218();
  v60 = sub_5B4B8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "Returning appShortcutCollisionWithEnablement as the disambiguation strategy", v61, 2u);
  }

  v80 = *(v0 + 104);
  v62 = *(v0 + 80);
  v63 = *(v0 + 88);
  v64 = *(v0 + 72);
  v65 = *(v0 + 56);
  v66 = *(v0 + 16);

  v67 = sub_5B94(&qword_71CB0, &qword_5C2F0);
  v68 = *(v67 + 48);
  v69 = v66 + *(v67 + 64);
  v84(v66, v64, v65);
  v70 = *(v63 + 32);
  v70(v66 + v68, v80, v62);
  v17 = v70;
  v48 = v69;
  v18 = (v0 + 96);
  v71 = *(v0 + 16);
LABEL_19:
  v50 = *(v0 + 240);
  v49 = *(v0 + 248);
  v52 = *(v0 + 224);
  v51 = *(v0 + 232);
  v54 = *(v0 + 192);
  v53 = *(v0 + 200);
  v55 = *(v0 + 184);
  v72 = *(v0 + 176);
  v73 = *(v0 + 152);
  v74 = *(v0 + 144);
  v75 = *(v0 + 136);
  v76 = *(v0 + 128);
  v77 = *(v0 + 104);
  v78 = *(v0 + 96);
  v79 = *(v0 + 72);
  v83 = *(v0 + 48);
  v17(v48, *v18, *(v0 + 80));
  type metadata accessor for ActionDisambiguationStrategy();
  swift_storeEnumTagMultiPayload();

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_8160()
{
  v1 = sub_5A638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5A318();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for ActionDisambiguationStrategy() - 8) + 64);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_85FC(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v24 = *(v20 + 48);
      v21 = *(v20 + 64);
      (*(v2 + 32))(v5, v13, v1);
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      sub_5B5A8(45);

      v25[0] = 0xD00000000000002BLL;
      v25[1] = 0x800000000005E740;
      v27._countAndFlagsBits = sub_5A628();
      sub_5B388(v27);

      v18 = v25[0];
      (*(v2 + 8))(v5, v1);
      v22 = *(v7 + 8);
      v22(&v13[v21], v6);
      v22(&v13[v24], v6);
      return v18;
    }

    (*(v7 + 32))(v10, v13, v6);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_5B5A8(40);

    v15 = "appShortcutCollision with fallback to ";
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v7 + 32))(v10, v13, v6);
      v25[0] = 0;
      v25[1] = 0xE000000000000000;
      sub_5B5A8(28);

      v16 = 0x800000000005E720;
      v17 = 0xD00000000000001ALL;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 3)
    {
      (*(v7 + 32))(v10, v13, v6);
      strcpy(v25, "redirect to ");
      BYTE5(v25[1]) = 0;
      HIWORD(v25[1]) = -5120;
      goto LABEL_11;
    }

    (*(v7 + 32))(v10, v13, v6);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_5B5A8(40);

    v15 = "verbEntityParaphrase with fallback to ";
  }

  v16 = (v15 - 32) | 0x8000000000000000;
  v17 = 0xD000000000000026;
LABEL_9:
  v25[0] = v17;
  v25[1] = v16;
LABEL_11:
  sub_9F90(&qword_71C10, &type metadata accessor for PluginAction);
  v26._countAndFlagsBits = sub_5B798();
  sub_5B388(v26);

  v18 = v25[0];
  (*(v7 + 8))(v10, v6);
  return v18;
}

uint64_t type metadata accessor for ActionDisambiguationStrategy()
{
  result = qword_720C8;
  if (!qword_720C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_85FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionDisambiguationStrategy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8664(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_5A4E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
  v36 = a2;
  v13 = sub_5B318();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_9F90(&qword_72040, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
      v23 = sub_5B328();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_9050(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_8944(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_5B848();
  sub_5B378();
  v9 = sub_5B868();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_5B7A8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_92F4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_8A94(uint64_t a1)
{
  v2 = v1;
  v41 = sub_5A4E8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_5B94(&qword_72048, &qword_5C328);
  result = sub_5B588();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
      result = sub_5B318();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_8DF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_5B94(&qword_72050, &unk_5C330);
  result = sub_5B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_5B848();
      sub_5B378();
      result = sub_5B868();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_9050(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_5A4E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_8A94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_9474();
      goto LABEL_12;
    }

    sub_9808(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
  v15 = sub_5B318();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_9F90(&qword_72040, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
      v23 = sub_5B328();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_5B7C8();
  __break(1u);
  return result;
}

Swift::Int sub_92F4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_8DF0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_96AC();
      goto LABEL_16;
    }

    sub_9B24(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_5B848();
  sub_5B378();
  result = sub_5B868();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_5B7A8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_5B7C8();
  __break(1u);
  return result;
}

void *sub_9474()
{
  v1 = v0;
  v2 = sub_5A4E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B94(&qword_72048, &qword_5C328);
  v7 = *v0;
  v8 = sub_5B578();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_96AC()
{
  v1 = v0;
  sub_5B94(&qword_72050, &unk_5C330);
  v2 = *v0;
  v3 = sub_5B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_9808(uint64_t a1)
{
  v2 = v1;
  v37 = sub_5A4E8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_5B94(&qword_72048, &qword_5C328);
  v10 = sub_5B588();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
      result = sub_5B318();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_9B24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_5B94(&qword_72050, &unk_5C330);
  result = sub_5B588();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_5B848();

      sub_5B378();
      result = sub_5B868();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_9D5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_5B488();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_8944(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_9DF4(uint64_t a1)
{
  v2 = sub_5A4E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_9F90(&qword_72038, &type metadata accessor for ActionParaphrase.VerbEntityParaphrase);
  result = sub_5B488();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_8664(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_9F90(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_9FD8(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v9 = sub_5A638();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v11 = *(v10 + 48);
      v12 = sub_5A318();
      v13 = *(*(v12 - 8) + 16);
      v13(&a1[v11], &a2[v11], v12);
      v13(&a1[*(v10 + 64)], &a2[*(v10 + 64)], v12);
    }

    else
    {
      v7 = sub_5A318();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_A284(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = sub_5A638();
      (*(*(v3 - 8) + 8))(a1, v3);
      v4 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v5 = *(v4 + 48);
      v6 = sub_5A318();
      v11 = *(*(v6 - 8) + 8);
      (v11)((v6 - 8), a1 + v5, v6);
      v7 = a1 + *(v4 + 64);
      v8 = v6;
      v9 = v11;
      goto LABEL_10;
    }
  }

  else if (result != 2 && result != 3 && result != 4)
  {
    return result;
  }

  v10 = sub_5A318();
  v9 = *(*(v10 - 8) + 8);
  v8 = v10;
  v7 = a1;
LABEL_10:

  return v9(v7, v8);
}

uint64_t sub_A3EC(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
  {
    v7 = sub_5A638();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = sub_5B94(&qword_71CB0, &qword_5C2F0);
    v9 = *(v8 + 48);
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 16);
    v11(a1 + v9, a2 + v9, v10);
    v11(a1 + *(v8 + 64), a2 + *(v8 + 64), v10);
  }

  else
  {
    v5 = sub_5A318();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_A568(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_A6F4(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v7 = sub_5A638();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v9 = *(v8 + 48);
      v10 = sub_5A318();
      v11 = *(*(v10 - 8) + 16);
      v11(a1 + v9, a2 + v9, v10);
      v11(a1 + *(v8 + 64), a2 + *(v8 + 64), v10);
    }

    else
    {
      v5 = sub_5A318();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_A6F4(uint64_t a1)
{
  v2 = type metadata accessor for ActionDisambiguationStrategy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A750(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
  {
    v7 = sub_5A638();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = sub_5B94(&qword_71CB0, &qword_5C2F0);
    v9 = *(v8 + 48);
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 32);
    v11(a1 + v9, a2 + v9, v10);
    v11(a1 + *(v8 + 64), a2 + *(v8 + 64), v10);
  }

  else
  {
    v5 = sub_5A318();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_A8CC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_A6F4(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v7 = sub_5A638();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = sub_5B94(&qword_71CB0, &qword_5C2F0);
      v9 = *(v8 + 48);
      v10 = sub_5A318();
      v11 = *(*(v10 - 8) + 32);
      v11(a1 + v9, a2 + v9, v10);
      v11(a1 + *(v8 + 64), a2 + *(v8 + 64), v10);
    }

    else
    {
      v5 = sub_5A318();
      (*(*(v5 - 8) + 32))(a1, a2, v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_AA58()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    v6 = v2;
    result = sub_5A638();
    if (v3 <= 0x3F)
    {
      v4 = *(result - 8);
      swift_getTupleTypeLayout3();
      v7 = &v5;
      v8 = v2;
      v9 = v2;
      v10 = v2;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t sub_AB3C(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[57] = v4;
  v5 = *(v4 - 8);
  v2[58] = v5;
  v6 = *(v5 + 64) + 15;
  v2[59] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[60] = swift_task_alloc();
  v8 = sub_5A908();
  v2[61] = v8;
  v9 = *(v8 - 8);
  v2[62] = v9;
  v10 = *(v9 + 64) + 15;
  v2[63] = swift_task_alloc();
  v11 = sub_5A648();
  v2[64] = v11;
  v12 = *(v11 - 8);
  v2[65] = v12;
  v13 = *(v12 + 64) + 15;
  v2[66] = swift_task_alloc();
  v14 = sub_5A588();
  v2[67] = v14;
  v15 = *(v14 - 8);
  v2[68] = v15;
  v16 = *(v15 + 64) + 15;
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_AD80, 0, 0);
}

uint64_t sub_AD80()
{
  v19 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AirplaneModeFlow: execute called", v4, 2u);
  }

  sub_5B018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[70] = v6;
  sub_38208(&_swiftEmptyArrayStorage);
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = sub_5B338();
  v0[71] = v10;
  isa = sub_5B2E8().super.isa;
  v0[72] = isa;

  v12 = sub_5A2B8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_357CC(v9, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = objc_opt_self();
  v15 = sub_5B2E8().super.isa;
  v0[73] = v15;

  v0[2] = v0;
  v0[7] = v0 + 51;
  v0[3] = sub_B160;
  v16 = swift_continuation_init();
  v0[27] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_35658;
  v0[23] = &unk_6DCE8;
  v0[24] = v16;
  [v14 execute:v6 catId:v10 parameters:isa globals:v15 completion:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_B160()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 592) = v2;
  if (v2)
  {
    v3 = sub_B740;
  }

  else
  {
    v3 = sub_B270;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B270()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v24 = *(v0 + 552);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v25 = *(v0 + 504);
  v27 = *(v0 + 488);
  v28 = *(v0 + 496);
  v7 = *(v0 + 480);
  v26 = *(v0 + 440);

  v8 = *(v0 + 408);
  *(v0 + 600) = v8;

  v9 = v8;
  v10 = [v9 speak];
  sub_5B3D8();

  v11 = [v9 print];
  sub_5B3D8();

  (*(v5 + 104))(v4, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v6);
  v12 = [v9 print];
  v13 = sub_5B3D8();

  v14 = *(v13 + 16);

  sub_41CC4(0, 0xE000000000000000, v14);
  v15 = [v9 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  v16 = *(v0 + 296);
  sub_5CBC((v0 + 264), *(v0 + 288));
  sub_5A218();
  v17 = sub_5A488();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  *(v0 + 336) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 304, &qword_721D8, &qword_5C480);
  sub_5D4C(v7, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 224));
  sub_5D00((v0 + 264));
  v18 = v26[10];
  v19 = v26[11];
  sub_5CBC(v26 + 7, v18);
  *(v0 + 368) = v27;
  *(v0 + 376) = &protocol witness table for AceOutput;
  v20 = sub_5F2C((v0 + 344));
  (*(v28 + 16))(v20, v25, v27);
  v21 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v22 = swift_task_alloc();
  *(v0 + 608) = v22;
  *v22 = v0;
  v22[1] = sub_B614;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 344, v18, v19);
}

uint64_t sub_B614()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_BB0C;
  }

  else
  {
    sub_5D00((v2 + 344));
    v5 = sub_B900;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B740()
{
  v20 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[54];
  swift_willThrow();

  sub_5B5A8(46);

  v19[0] = 0xD00000000000002CLL;
  v19[1] = 0x800000000005E820;
  swift_getErrorValue();
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[50];
  v22._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v22);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v0[53] = sub_3147C(0xD00000000000002CLL, 0x800000000005E820, v18, v19);
  sub_C118();
  sub_5A418();

  v10 = v0[69];
  v11 = v0[66];
  v12 = v0[63];
  v14 = v0[59];
  v13 = v0[60];
  v15 = v0[56];

  v16 = v0[1];

  return v16();
}

uint64_t sub_B900()
{
  v1 = v0[68];
  v22 = v0[67];
  v23 = v0[69];
  v2 = v0[62];
  v20 = v0[75];
  v21 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[55];
  v18 = v0[54];
  v19 = v0[61];
  v17 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v21, v19);
  (*(v1 + 8))(v23, v22);
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[63];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[56];

  v15 = v0[1];

  return v15();
}

uint64_t sub_BB0C()
{
  sub_5D00(v0 + 43);
  v1 = v0[68];
  v22 = v0[67];
  v23 = v0[69];
  v2 = v0[62];
  v20 = v0[75];
  v21 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[55];
  v18 = v0[54];
  v19 = v0[61];
  v17 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v21, v19);
  (*(v1 + 8))(v23, v22);
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[63];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[56];

  v15 = v0[1];

  return v15();
}

uint64_t sub_BD64()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_573C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_BE84()
{
  v2 = *v0;
  type metadata accessor for AirplaneModeFlow();
  return sub_5A098();
}

uint64_t sub_BEE0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_AB3C(a1);
}

uint64_t sub_BF7C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirplaneModeFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_BFB4()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "AirplaneModeFlow input accepted", v3, 2u);
  }

  return 1;
}

uint64_t sub_C0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_C118()
{
  result = qword_72550;
  if (!qword_72550)
  {
    type metadata accessor for CamErrorFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72550);
  }

  return result;
}

uint64_t sub_C170()
{
  v0 = type metadata accessor for UserHistoryHelper();
  result = swift_allocObject();
  qword_76380 = v0;
  unk_76388 = &off_6E930;
  qword_76368 = result;
  return result;
}

uint64_t sub_C1BC()
{
  qword_763A8 = sub_5A5D8();
  unk_763B0 = &protocol witness table for AppShortcutProvider;
  sub_5F2C(qword_76390);
  return sub_5A5C8();
}

uint64_t sub_C1FC(char *a1)
{
  v2 = sub_5AE48();
  v180 = *(v2 - 8);
  v181 = v2;
  v3 = *(v180 + 64);
  __chkstk_darwin(v2);
  v185 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppNameDisambiguationFlow.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v160 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v182 = &v152 - v9;
  v10 = sub_5A318();
  v186 = *(v10 - 8);
  v11 = *(v186 + 64);
  v12 = __chkstk_darwin(v10);
  v179 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v155 = &v152 - v15;
  __chkstk_darwin(v14);
  v157 = &v152 - v16;
  v17 = sub_5A8E8();
  v172 = *(v17 - 8);
  v18 = *(v172 + 64);
  __chkstk_darwin(v17);
  v165 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5B94(&qword_71C88, &qword_5C2A0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v171 = (&v152 - v22);
  v170 = type metadata accessor for CAMDirectInvocation();
  v169 = *(v170 - 8);
  v23 = *(v169 + 64);
  v24 = __chkstk_darwin(v170);
  v164 = (&v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v163 = &v152 - v26;
  v168 = sub_5A838();
  v167 = *(v168 - 8);
  v27 = *(v167 + 64);
  __chkstk_darwin(v168);
  v166 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_5A858();
  v189 = *(v187 - 8);
  v29 = *(v189 + 64);
  v30 = __chkstk_darwin(v187);
  v156 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v159 = &v152 - v33;
  __chkstk_darwin(v32);
  v188 = &v152 - v34;
  v35 = sub_5B94(&unk_72560, &qword_5E3E0);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v184 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v173 = &v152 - v40;
  v41 = __chkstk_darwin(v39);
  v158 = &v152 - v42;
  v43 = __chkstk_darwin(v41);
  v162 = &v152 - v44;
  __chkstk_darwin(v43);
  v46 = &v152 - v45;
  v47 = sub_5A7D8();
  v48 = *(v47 - 8);
  v49 = v48[8];
  v50 = __chkstk_darwin(v47);
  v177 = &v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v152 - v52;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v54 = sub_5B228();
  v55 = sub_5B44(v54, qword_763B8);
  v56 = v48[2];
  v175 = v48 + 2;
  v174 = v56;
  v56(v53, a1, v47);
  v183 = v55;
  v57 = sub_5B218();
  v58 = sub_5B4B8();
  v59 = os_log_type_enabled(v57, v58);
  v178 = v48;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v154 = v10;
    v153 = v46;
    v61 = v60;
    v62 = swift_slowAlloc();
    v161 = v17;
    v63 = v62;
    v191 = v62;
    *v61 = 136315138;
    sub_1A95C(&qword_71C90, &type metadata accessor for Input);
    v64 = sub_5B798();
    v65 = a1;
    v67 = v66;
    v176 = v48[1];
    v176(v53, v47);
    v68 = sub_2DC10(v64, v67, &v191);
    a1 = v65;

    *(v61 + 4) = v68;
    _os_log_impl(&dword_0, v57, v58, "AppNameDisambiguationFlow: on called with input %s", v61, 0xCu);
    sub_5D00(v63);
    v17 = v161;

    v46 = v153;
    v10 = v154;
  }

  else
  {

    v176 = v48[1];
    v176(v53, v47);
  }

  v69 = v188;
  sub_5A7C8();
  v70 = v189;
  v71 = v187;
  v72 = (*(v189 + 88))(v69, v187);
  v74 = v185;
  v73 = v186;
  if (v72 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v70 + 96))(v69, v71);
    v75 = v180;
    v76 = v69;
    v77 = v181;
    (*(v180 + 32))(v74, v76, v181);
    v78 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
    v79 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction;
    v80 = sub_186D8();
    if (!v81)
    {
      (*(v75 + 8))(v74, v77);
      goto LABEL_21;
    }

    v82 = v190 + v79;
    v83 = v173;
    sub_F8F8(v80, v81, v190 + v78, v82, v173);

    (*(v75 + 8))(v74, v77);
    if ((*(v73 + 48))(v83, 1, v10) == 1)
    {
      sub_5D4C(v83, &unk_72560, &qword_5E3E0);
LABEL_21:
      v104 = v184;
      (*(v73 + 56))(v46, 1, 1, v10);
      goto LABEL_44;
    }

    (*(v73 + 32))(v46, v83, v10);
    goto LABEL_42;
  }

  if (v72 != enum case for Parse.directInvocation(_:))
  {
    if (v72 != enum case for Parse.uso(_:))
    {
      v109 = enum case for Parse.empty(_:);
      v110 = v72;
      (*(v186 + 56))(v46, 1, 1, v10);
      if (v110 == v109)
      {
        v111 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
        v112 = v190;
        swift_beginAccess();
        v113 = v112 + v111;
        v114 = v160;
        sub_1BB8C(v113, v160, type metadata accessor for AppNameDisambiguationFlow.State);
        v115 = sub_5B94(&qword_71CC0, &unk_5C2C0);
        if ((*(*(v115 - 8) + 48))(v114, 3, v115) == 1)
        {
          sub_5D4C(v46, &unk_72560, &qword_5E3E0);
          sub_1AF68(v114, type metadata accessor for AppNameDisambiguationFlow.State);
          return 1;
        }

        sub_1AF68(v114, type metadata accessor for AppNameDisambiguationFlow.State);
      }

      else
      {
        (*(v189 + 8))(v188, v71);
      }

      goto LABEL_43;
    }

    (*(v70 + 96))(v69, v71);
    v89 = v165;
    (*(v172 + 32))(v165, v69, v17);
    v90 = v190 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
    v91 = v190 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction;
    v92 = sub_3F9D8();
    v152 = v47;
    if (v93)
    {
LABEL_15:
      v188 = a1;
      v94 = *(v73 + 56);
      v95 = v162;
      v94(v162, 1, 1, v10);
      sub_5D4C(v95, &unk_72560, &qword_5E3E0);
      v96 = sub_FD9C();
      if (v97)
      {
        v98 = v158;
        sub_F8F8(v96, v97, v90, v91, v158);

        if ((*(v73 + 48))(v98, 1, v10) != 1)
        {
          (*(v172 + 8))(v165, v17);
          v123 = *(v73 + 32);
          v124 = v155;
          v123(v155, v98, v10);
          v123(v46, v124, v10);
          v94(v46, 0, 1, v10);
LABEL_55:
          a1 = v188;
          goto LABEL_56;
        }

        sub_5D4C(v98, &unk_72560, &qword_5E3E0);
      }

      v185 = v94;
      v161 = v17;
      v99 = v159;
      sub_5A7C8();
      v100 = sub_5A7E8();
      v101 = *(v189 + 8);
      v102 = v99;
      v103 = v187;
      v101(v102, v187);
      if (v100)
      {
        (*(v172 + 8))(v165, v161);
LABEL_39:
        v119 = sub_5B94(&qword_71CC0, &unk_5C2C0);
        v120 = v182;
        (*(*(v119 - 8) + 56))(v182, 3, 3, v119);
        v121 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
        v122 = v190;
        swift_beginAccess();
        sub_1AEA0(v120, v122 + v121);
        swift_endAccess();
        return 1;
      }

      v117 = v156;
      sub_5A7C8();
      v118 = sub_5A808();
      v101(v117, v103);
      (*(v172 + 8))(v165, v161);
      if (v118)
      {
        goto LABEL_39;
      }

      (v185)(v46, 1, 1, v10);
      goto LABEL_55;
    }

    if (v92 != 1)
    {
      if (v92)
      {
        if (v92 != -1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v91 = v90;
      }
    }

    (*(v172 + 8))(v89, v17);
    v148 = v162;
    (*(v73 + 16))(v162, v91, v10);
    v149 = *(v73 + 56);
    v149(v148, 0, 1, v10);
    v150 = *(v73 + 32);
    v151 = v157;
    v150(v157, v148, v10);
    v150(v46, v151, v10);
    v149(v46, 0, 1, v10);
LABEL_56:
    v47 = v152;
    goto LABEL_43;
  }

  (*(v70 + 96))(v69, v71);
  v84 = v167;
  v85 = v166;
  v86 = v168;
  (*(v167 + 32))(v166, v69, v168);
  v87 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
  v189 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction;
  v88 = v171;
  sub_3601C(v171);
  (*(v84 + 8))(v85, v86);
  if ((*(v169 + 48))(v88, 1, v170) != 1)
  {
    v105 = v88;
    v106 = v163;
    sub_1AF04(v105, v163);
    v107 = v106;
    v108 = v164;
    sub_1AF04(v107, v164);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1AF68(v108, type metadata accessor for CAMDirectInvocation);
      goto LABEL_35;
    }

    if (*v108)
    {
      if (*v108 != 1)
      {
        goto LABEL_35;
      }

      (*(v73 + 16))(v46, v190 + v189, v10);
    }

    else
    {
      (*(v73 + 16))(v46, v190 + v87, v10);
    }

LABEL_42:
    (*(v73 + 56))(v46, 0, 1, v10);
    goto LABEL_43;
  }

  sub_5D4C(v88, &qword_71C88, &qword_5C2A0);
LABEL_35:
  (*(v73 + 56))(v46, 1, 1, v10);
LABEL_43:
  v104 = v184;
LABEL_44:
  sub_1AE38(v46, v104, &unk_72560, &qword_5E3E0);
  if ((*(v73 + 48))(v104, 1, v10) == 1)
  {
    sub_5D4C(v104, &unk_72560, &qword_5E3E0);
    v125 = v177;
    v174(v177, a1, v47);
    v126 = sub_5B218();
    v127 = v47;
    v128 = sub_5B4C8();
    if (os_log_type_enabled(v126, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v191 = v130;
      *v129 = 136315138;
      sub_1A95C(&qword_71C90, &type metadata accessor for Input);
      v131 = sub_5B798();
      v133 = v132;
      v176(v125, v127);
      v134 = sub_2DC10(v131, v133, &v191);

      *(v129 + 4) = v134;
      _os_log_impl(&dword_0, v126, v128, "AppNameDisambiguationFlow: could not resolve action from %s", v129, 0xCu);
      sub_5D00(v130);
    }

    else
    {

      v176(v125, v127);
    }

    sub_5A6B8();
    sub_5A6A8();
    sub_5A678();

    v147 = v190[21];
    sub_5CBC(v190 + 17, v190[20]);
    sub_5A1E8();
    LOBYTE(v191) = 0;
    sub_5A1D8();
    sub_5A158();

    sub_5D4C(v46, &unk_72560, &qword_5E3E0);
    return 0;
  }

  else
  {
    v135 = v179;
    (*(v73 + 32))(v179, v104, v10);
    v136 = sub_5B94(&qword_71CC0, &unk_5C2C0);
    v137 = *(v136 + 48);
    v138 = *(v136 + 64);
    v139 = *(v73 + 16);
    v140 = v182;
    v139(v182, v135, v10);
    v141 = (v140 + v137);
    v142 = v190;
    v139(v141, v190 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction, v10);
    v139((v140 + v138), &v142[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction], v10);
    (*(*(v136 - 8) + 56))(v140, 0, 3, v136);
    v143 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
    swift_beginAccess();
    sub_1AEA0(v140, &v142[v143]);
    swift_endAccess();
    v144 = sub_5B218();
    v145 = sub_5B4B8();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_0, v144, v145, "AppShorcutCollisionFlow: input accepted", v146, 2u);
    }

    (*(v73 + 8))(v135, v10);
    sub_5D4C(v46, &unk_72560, &qword_5E3E0);
    return 1;
  }
}

uint64_t sub_D7D4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = *(*(sub_5B94(&qword_73CA0, &qword_5C910) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(sub_5B94(&qword_72530, &qword_5C660) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_59E38();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_5A318();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v2[16] = *(v9 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v10 = *(*(type metadata accessor for AppNameDisambiguationFlow.State(0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_DA04, 0, 0);
}

uint64_t sub_DA04()
{
  v97 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: execute called", v4, 2u);
  }

  v5 = v0[24];
  v6 = v0[7];

  v7 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state;
  swift_beginAccess();
  sub_1BB8C(v6 + v7, v5, type metadata accessor for AppNameDisambiguationFlow.State);
  v8 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v9 = (*(*(v8 - 8) + 48))(v5, 3, v8);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v21 = sub_5B218();
      v22 = sub_5B4C8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "AppNameDisambiguationFlow: invalid respose", v23, 2u);
      }

      v24 = v0[6];

      sub_5A6C8();
      sub_5A148();
      type metadata accessor for CamErrorFlow();
      swift_allocObject();
      v0[5] = sub_3147C(0xD000000000000010, 0x800000000005E9C0, v95, v96);
      sub_1A95C(&qword_72550, type metadata accessor for CamErrorFlow);
      sub_5A088();

      sub_5A428();

      goto LABEL_26;
    }

    v29 = [objc_allocWithZone(SAUICloseAssistant) init];
    v0[26] = v29;
    sub_5B94(&qword_72460, &unk_5C5E0);
    v30 = swift_allocObject();
    v0[27] = v30;
    *(v30 + 16) = xmmword_5C4A0;
    *(v30 + 32) = v29;
    v31 = v29;
    v32 = swift_task_alloc();
    v0[28] = v32;
    *v32 = v0;
    v32[1] = sub_E5C4;
    v33 = v0[6];
    v34 = v0[7];

    return sub_15828(v33, 0xD000000000000019, 0x800000000005E9A0, v30);
  }

  else
  {
    if (!v9)
    {
      v10 = v0[24];
      v91 = v0[21];
      v11 = v0[14];
      v12 = v0[11];
      v13 = v0[12];
      v87 = v12;
      v89 = v0[22];
      v14 = v0[10];
      v15 = *(v8 + 48);
      v16 = *(v8 + 64);
      v17 = *(v0[15] + 32);
      v17(v0[23], v10, v11);
      v17(v89, v10 + v15, v11);
      v90 = v17;
      v17(v91, v10 + v16, v11);
      sub_5A308();
      if ((*(v13 + 48))(v14, 1, v87) == 1)
      {
        sub_5D4C(v0[10], &qword_72530, &qword_5C660);
        v18 = sub_5B218();
        v19 = sub_5B4C8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_0, v18, v19, "AppShorcutCollisionFlow: could not extract loggingId from input", v20, 2u);
        }
      }

      else
      {
        v35 = v0[12];
        v36 = v0[13];
        v37 = v0[11];
        (*(v35 + 32))(v36, v0[10], v37);
        sub_5A6B8();
        sub_5A6A8();
        sub_5A698();

        (*(v35 + 8))(v36, v37);
      }

      v39 = v0[22];
      v38 = v0[23];
      v40 = v0[20];
      v85 = v0[21];
      v41 = v0[18];
      v42 = v0[19];
      v82 = v40;
      v83 = v42;
      v84 = v41;
      v43 = v0[16];
      v45 = v0[14];
      v44 = v0[15];
      v46 = v0[9];
      v86 = v0[8];
      v88 = v0[17];
      sub_5B448();
      v47 = sub_5B468();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      v48 = *(v44 + 16);
      v48(v40, v39, v45);
      v48(v42, v85, v45);
      v48(v41, v38, v45);
      v49 = *(v44 + 80);
      v50 = (v49 + 32) & ~v49;
      v51 = (v50 + v43 + v49) & ~v49;
      v52 = (v51 + v43 + v49) & ~v49;
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      v90(v53 + v50, v82, v45);
      v90(v53 + v51, v83, v45);
      v90(v53 + v52, v84, v45);
      *(v53 + ((v43 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v86;
      sub_E9C0(0, 0, v46, &unk_5C688, v53);

      sub_5D4C(v46, &qword_73CA0, &qword_5C910);
      v48(v88, v38, v45);
      v54 = sub_5B218();
      v55 = sub_5B4C8();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v0[17];
      v59 = v0[14];
      v58 = v0[15];
      if (v56)
      {
        v60 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v96[0] = v93;
        *v60 = 136315138;
        sub_1A95C(&qword_71C10, &type metadata accessor for PluginAction);
        v92 = v55;
        v61 = sub_5B798();
        v63 = v62;
        v64 = *(v58 + 8);
        v64(v57, v59);
        v65 = sub_2DC10(v61, v63, v96);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_0, v54, v92, "AppShorcutCollisionFlow: redirecting to resolved action %s", v60, 0xCu);
        sub_5D00(v93);
      }

      else
      {

        v64 = *(v58 + 8);
        v64(v57, v59);
      }

      v66 = v0[22];
      v67 = v0[23];
      v68 = v0[21];
      v69 = v0[14];
      v70 = v0[6];
      sub_5A448();
      v64(v68, v69);
      v64(v66, v69);
      v64(v67, v69);
LABEL_26:
      v72 = v0[23];
      v71 = v0[24];
      v74 = v0[21];
      v73 = v0[22];
      v76 = v0[19];
      v75 = v0[20];
      v78 = v0[17];
      v77 = v0[18];
      v79 = v0[13];
      v80 = v0[10];
      v94 = v0[9];

      v81 = v0[1];

      return v81();
    }

    v25 = swift_task_alloc();
    v0[25] = v25;
    *v25 = v0;
    v25[1] = sub_E3E0;
    v26 = v0[6];
    v27 = v0[7];

    return sub_EC2C(v26);
  }
}

uint64_t sub_E3E0()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_E4DC, 0, 0);
}

uint64_t sub_E4DC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[13];
  v10 = v0[10];
  v13 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_E5C4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_E6DC, 0, 0);
}

uint64_t sub_E6DC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 104);
  v10 = *(v0 + 80);
  v13 = *(v0 + 72);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_E7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_E7F0, 0, 0);
}

uint64_t sub_E7F0()
{
  if (qword_71A48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_E8CC;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_4F420(v4, v2, v3);
}

uint64_t sub_E8CC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_5B94(&qword_73CA0, &qword_5C910);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1AE38(a3, v24 - v10, &qword_73CA0, &qword_5C910);
  v12 = sub_5B468();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_5D4C(v11, &qword_73CA0, &qword_5C910);
  }

  else
  {
    sub_5B458();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_5B418();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_5B368() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_EC2C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = sub_5A718();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = *(*(sub_5B94(&qword_72530, &qword_5C660) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v11 = sub_59E38();
  v2[23] = v11;
  v12 = *(v11 - 8);
  v2[24] = v12;
  v13 = *(v12 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_EE2C, 0, 0);
}

uint64_t sub_EE2C()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[27] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: rendering disambiguation", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_EF84;
  v6 = v0[13];

  return sub_10F98((v0 + 7));
}

uint64_t sub_EF84()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_F744;
  }

  else
  {
    v3 = sub_F098;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F098()
{
  v2 = (v0 + 176);
  v1 = *(v0 + 176);
  v3 = v0 + 16;
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 104);
  sub_5B7C((v0 + 56), v0 + 16);
  sub_5A308();
  v7 = *(v5 + 48);
  if (v7(v1, 1, v4) != 1)
  {
    v2 = (v0 + 168);
    v8 = *(v0 + 168);
    v9 = *(v0 + 184);
    v10 = *(v0 + 104);
    v11 = *(*(v0 + 192) + 32);
    (v11)(*(v0 + 208), *(v0 + 176), v9);
    sub_5A308();
    if (v7(v8, 1, v9) != 1)
    {
      v16 = *(v0 + 192);
      v35 = *(v0 + 200);
      v17 = *(v0 + 184);
      v18 = *(v0 + 168);
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v36 = v19;
      v37 = *(v0 + 160);
      v21 = *(v0 + 208);
      v11();
      sub_5A6B8();
      sub_5A6A8();
      sub_5B94(&unk_72540, &unk_5C670);
      v22 = *(v16 + 72);
      v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_5C2D0;
      v25 = v24 + v23;
      v26 = *(v16 + 16);
      v26(v25, v21, v17);
      v26(v25 + v22, v35, v17);
      (*(v20 + 104))(v37, enum case for CAMDisambiguationDialogType.appName(_:), v36);
      sub_5A688();

      (*(v20 + 8))(v37, v36);
      v27 = *(v16 + 8);
      v27(v35, v17);
      v28 = v21;
      v3 = v0 + 16;
      v27(v28, v17);
      goto LABEL_8;
    }

    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
  }

  v12 = *(v0 + 216);
  sub_5D4C(*v2, &qword_72530, &qword_5C660);
  v13 = sub_5B218();
  v14 = sub_5B4B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "AppNameDisambiguationFlow: could not extract loggingIds for actions. SELF message was not emitted as a result.", v15, 2u);
  }

LABEL_8:
  v29 = *(v0 + 104);
  v30 = v29[15];
  v31 = v29[16];
  sub_5CBC(v29 + 12, v30);
  v32 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v33 = swift_task_alloc();
  *(v0 + 240) = v33;
  *v33 = v0;
  v33[1] = sub_F424;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v3, v30, v31);
}

uint64_t sub_F424()
{
  v2 = *(*v1 + 240);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1BBF4;
  }

  else
  {
    v3 = sub_F53C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F53C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v19 = v0[12];
  v6 = v5[21];
  sub_5CBC(v5 + 17, v5[20]);
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v4);
  v7 = enum case for SiriKitReliabilityCodes.disambiguationShortcutVsOther(_:);
  v8 = sub_5A168();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v3, v7, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A408();
  sub_5D00(v0 + 2);
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];

  v17 = v0[1];

  return v17();
}

uint64_t sub_F744()
{
  v1 = v0[29];
  v2 = v0[27];
  swift_errorRetain();
  v3 = sub_5B218();
  v4 = sub_5B4C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v3, v4, "AppNameDisambiguationFlow: Cannot create output for disambiguation, will redirect to fall back action. Error: %@", v6, 0xCu);
    sub_5D4C(v7, &qword_72538, &qword_5C668);
  }

  v9 = v0[29];
  v10 = v0[12];
  v11 = v0[13];

  sub_5A448();

  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  v17 = v0[17];
  v18 = v0[14];

  v19 = v0[1];

  return v19();
}

uint64_t sub_F8F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a3;
  v44 = a1;
  v45 = a2;
  v7 = sub_5A318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v12 = sub_5B228();
  v41 = sub_5B44(v12, qword_763B8);
  v13 = sub_5B218();
  v14 = sub_5B4B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a4;
    v17 = swift_slowAlloc();
    v46 = v17;
    *v15 = 136315138;
    *(v15 + 4) = sub_2DC10(0xD000000000000027, 0x800000000005E970, &v46);
    _os_log_impl(&dword_0, v13, v14, "AppNameDisambiguationFlow: %s", v15, 0xCu);
    sub_5D00(v17);
    a4 = v16;
  }

  sub_5B94(&qword_724F0, &qword_5C310);
  v18 = *(v8 + 72);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5C2D0;
  v21 = v20 + v19;
  v43 = v8;
  v24 = *(v8 + 16);
  v22 = v8 + 16;
  v23 = v24;
  v24(v21, v42, v7);
  v24((v21 + v18), a4, v7);
  v24(v11, v21, v7);
  v25 = sub_41E68();
  if (v26)
  {
    if (v25 == v44 && v26 == v45)
    {
      goto LABEL_15;
    }

    v28 = sub_5B7A8();

    if (v28)
    {
LABEL_16:
      v32 = v43;

      (*(v32 + 32))(a5, v11, v7);
      v33 = 0;
      return (*(v32 + 56))(a5, v33, 1, v7);
    }
  }

  v42 = a5;
  v29 = *(v22 - 8);
  v29(v11, v7);
  v23(v11, v21 + v18, v7);
  v30 = sub_41E68();
  if (v31)
  {
    if (v30 == v44 && v31 == v45)
    {
      a5 = v42;
LABEL_15:

      goto LABEL_16;
    }

    v34 = sub_5B7A8();

    if (v34)
    {
      a5 = v42;
      goto LABEL_16;
    }
  }

  v29(v11, v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35 = v45;

  v36 = sub_5B218();
  v37 = sub_5B4B8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_2DC10(v44, v35, &v46);
    _os_log_impl(&dword_0, v36, v37, "AppNameDisambiguationFlow: No match found for appBundleId %s", v38, 0xCu);
    sub_5D00(v39);
  }

  v33 = 1;
  a5 = v42;
  v32 = v43;
  return (*(v32 + 56))(a5, v33, 1, v7);
}

uint64_t sub_FD9C()
{
  v1 = v0;
  v2 = sub_5A318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5ABE8();
  v136 = *(v7 - 8);
  v8 = v136[8];
  v9 = __chkstk_darwin(v7);
  v134 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v135 = &v119 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v119 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v119 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v119 - v20;
  __chkstk_darwin(v19);
  v133 = &v119 - v22;
  v23 = sub_4FA30();
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = v23;
  v132 = v15;
  v25 = sub_5AE28();
  if (!*(v25 + 16) || (v26 = sub_37278(0x636E657265666572, 0xE900000000000065), (v27 & 1) == 0))
  {
LABEL_25:

LABEL_26:

LABEL_27:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v37 = sub_5B228();
    sub_5B44(v37, qword_763B8);
    v38 = sub_5B218();
    v39 = sub_5B4B8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v139[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v139);
      _os_log_impl(&dword_0, v38, v39, "%s: Cannot find node in USO tree that contains app name identifiers", v40, 0xCu);
      sub_5D00(v41);
    }

    return 0;
  }

  v28 = *(*(v25 + 56) + 8 * v26);

  if (v28 >> 62)
  {
    if (sub_5B678())
    {
      goto LABEL_6;
    }

LABEL_114:

    goto LABEL_27;
  }

  if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_114;
  }

LABEL_6:
  v131 = v7;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v7 = sub_5B5B8();
  }

  else
  {
    if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_117;
    }

    v7 = *(v28 + 32);
  }

  if (!sub_5AE78())
  {
    goto LABEL_34;
  }

  v29 = sub_5AE88();

  if (*(v29 + 16))
  {
    v30 = sub_37278(0xD000000000000010, 0x800000000005E950);
    if (v31)
    {
      v28 = *(*(v29 + 56) + 8 * v30);

      if (v28 >> 62)
      {
        goto LABEL_118;
      }

      if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_33:

  while (1)
  {
LABEL_34:
    if (!sub_5AE78())
    {

      goto LABEL_26;
    }

    v43 = sub_5AE88();

    if (!*(v43 + 16) || (v44 = sub_37278(1701667182, 0xE400000000000000), (v45 & 1) == 0))
    {

      goto LABEL_27;
    }

    v28 = *(*(v43 + 56) + 8 * v44);

    if (v28 >> 62)
    {
      if (sub_5B678())
      {
        goto LABEL_39;
      }

LABEL_121:

      goto LABEL_114;
    }

    if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_121;
    }

LABEL_39:
    if ((v28 & 0xC000000000000001) == 0)
    {
      if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_125;
      }

      goto LABEL_41;
    }

LABEL_122:
    v46 = sub_5B5B8();
LABEL_42:
    v123 = v3;
    v119 = v1;
    v124 = v7;
    v120 = v6;
    v125 = v24;
    v121 = v2;

    v122 = v46;
    v47 = sub_5AE68();
    v7 = v47;
    v130 = *(v47 + 16);
    if (v130)
    {
      break;
    }

    v48 = &_swiftEmptyArrayStorage;
    v49 = v131;
LABEL_60:

    if (v48[2])
    {
      v60 = v136;
      v61 = v133;
      (v136[2])(v133, v48 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v49);

      v62 = sub_5ABC8();

      (v60[1])(v61, v49);
      return v62;
    }

    v28 = v122;
    v21 = sub_5AE68();
    v6 = *(v21 + 2);
    v2 = v124;
    if (!v6)
    {
      v18 = &_swiftEmptyArrayStorage;
      v7 = v123;
LABEL_79:

      if (*(v18 + 2))
      {
        v73 = v136;
        v74 = v131;
        v75 = v132;
        (v136[2])(v132, &v18[(*(v73 + 80) + 32) & ~*(v73 + 80)], v131);

        v62 = sub_5ABC8();

        (v73[1])(v75, v74);
        return v62;
      }

      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v76 = sub_5B228();
      v77 = sub_5B44(v76, qword_763B8);
      v78 = sub_5B218();
      v79 = sub_5B4B8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v139[0] = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v139);
        _os_log_impl(&dword_0, v78, v79, "%s: No value can be derived for appBundleId", v80, 0xCu);
        sub_5D00(v81);
      }

      v82 = sub_5B218();
      v83 = sub_5B4B8();
      v84 = os_log_type_enabled(v82, v83);
      v135 = v77;
      if (v84)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v139[0] = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v139);
        _os_log_impl(&dword_0, v82, v83, "%s: Attempting string match", v85, 0xCu);
        sub_5D00(v86);
      }

      sub_5B94(&qword_724F0, &qword_5C310);
      v87 = *(v7 + 72);
      v88 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_5C2D0;
      v90 = v89 + v88;
      v93 = *(v7 + 16);
      v91 = v7 + 16;
      v92 = v93;
      v94 = v119;
      v95 = v121;
      v93(v90, &v119[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction], v121);
      v93((v90 + v87), &v94[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction], v95);
      v96 = (v91 - 8);
      v97 = v120;
      v123 = v91;
      v93(v120, v90, v95);
      v98 = sub_5CBC(v94 + 22, *(v94 + 25));
      v99 = sub_180B4(*v98);
      v136 = (v91 - 8);
      if (v100)
      {
        v101 = v99;
        v102 = v100;
        v103 = sub_5AE58();
        if (v104)
        {
          if (v101 == v103 && v102 == v104)
          {
            v3 = v121;
            goto LABEL_100;
          }

          v105 = sub_5B7A8();

          if (v105)
          {
            v3 = v121;
            goto LABEL_104;
          }
        }

        v21 = *v136;
        v97 = v120;
        v95 = v121;
        (*v136)(v120, v121);
      }

      else
      {
        v21 = *v96;
        (*v96)(v97, v95);
      }

      v92(v97, v90 + v87, v95);
      v106 = sub_5CBC(v119 + 22, *(v119 + 25));
      v107 = sub_180B4(*v106);
      if (!v108)
      {
        (v21)(v97, v95);
        goto LABEL_112;
      }

      v101 = v107;
      v102 = v108;
      v109 = sub_5AE58();
      if (!v110)
      {
        v111 = v97;
        v3 = v121;
        goto LABEL_111;
      }

      v3 = v121;
      if (v101 == v109 && v102 == v110)
      {
LABEL_100:
      }

      else
      {
        v112 = sub_5B7A8();

        if ((v112 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

LABEL_104:

      v113 = sub_5B218();
      v114 = sub_5B4B8();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v139[0] = swift_slowAlloc();
        *v115 = 136315394;
        *(v115 + 4) = sub_2DC10(0xD000000000000016, 0x800000000005E930, v139);
        *(v115 + 12) = 2080;
        v116 = sub_2DC10(v101, v102, v139);

        *(v115 + 14) = v116;
        _os_log_impl(&dword_0, v113, v114, "%s: Matched exact name %s", v115, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v117 = v136;
      v118 = v120;
      v62 = sub_41E68();

      (*v117)(v118, v3);
      return v62;
    }

    v1 = 0;
    v24 = v135;
    v133 = (v136 + 2);
    v129 = (v136 + 4);
    v18 = &_swiftEmptyArrayStorage;
    v130 = (v136 + 1);
    v128 = v6;
    while (v1 < *(v21 + 2))
    {
      v3 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v63 = v136[9];
      v64 = v131;
      (v136[2])(v24, &v21[v3 + v63 * v1], v131);
      v28 = v24;
      v65 = sub_5ABD8();
      if (v66)
      {
        if (v65 == 0x656D614E707061 && v66 == 0xE700000000000000)
        {

          v24 = v135;
        }

        else
        {
          v28 = v66;
          v67 = sub_5B7A8();

          v24 = v135;
          if ((v67 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v139[0] = sub_5ABC8();
        v139[1] = v68;
        v137 = 46;
        v138 = 0xE100000000000000;
        sub_1AB80();
        v28 = sub_5B528();

        if (v28)
        {
          v69 = *v129;
          (*v129)(v134, v24, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140[0] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v28 = v140;
            sub_375EC(0, *(v18 + 2) + 1, 1);
            v24 = v135;
            v18 = v140[0];
          }

          v72 = *(v18 + 2);
          v71 = *(v18 + 3);
          if (v72 >= v71 >> 1)
          {
            v28 = v140;
            sub_375EC(v71 > 1, v72 + 1, 1);
            v24 = v135;
            v18 = v140[0];
          }

          *(v18 + 2) = v72 + 1;
          v69(&v18[v3 + v72 * v63], v134, v131);
          v6 = v128;
          goto LABEL_65;
        }
      }

LABEL_64:
      (*v130)(v24, v64);
LABEL_65:
      ++v1;
      v7 = v123;
      v2 = v124;
      if (v6 == v1)
      {
        goto LABEL_79;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    if (!sub_5B678())
    {
      goto LABEL_33;
    }

LABEL_14:
    if ((v28 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        v32 = *(v28 + 32);

        goto LABEL_17;
      }

      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      if (!sub_5B678())
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    sub_5B5B8();
LABEL_17:

    v33 = sub_5AE78();

    if (v33)
    {
      v34 = sub_5AE88();

      if (!*(v34 + 16))
      {
        goto LABEL_33;
      }

      v35 = sub_37278(1701667182, 0xE400000000000000);
      if ((v36 & 1) == 0)
      {
        goto LABEL_33;
      }

      v28 = *(*(v34 + 56) + 8 * v35);

      if (v28 >> 62)
      {
        goto LABEL_126;
      }

      if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

LABEL_22:
      if ((v28 & 0xC000000000000001) != 0)
      {
        goto LABEL_122;
      }

      if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_25;
      }

LABEL_41:
      v46 = *(v28 + 32);

      goto LABEL_42;
    }
  }

  v3 = 0;
  v128 = (v136 + 4);
  v129 = (v136 + 2);
  v127 = (v136 + 1);
  v48 = &_swiftEmptyArrayStorage;
  v49 = v131;
  v126 = v47;
  while (v3 < *(v7 + 16))
  {
    v50 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v51 = v136[9];
    (v136[2])(v21, v7 + v50 + v51 * v3, v49);
    v52 = sub_5ABD8();
    if (v53)
    {
      if (v52 == 0x64695F6D657469 && v53 == 0xE700000000000000)
      {

LABEL_52:
        v55 = *v128;
        (*v128)(v18, v21, v49);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v139[0] = v48;
        if ((v56 & 1) == 0)
        {
          sub_375EC(0, v48[2] + 1, 1);
          v48 = v139[0];
        }

        v58 = v48[2];
        v57 = v48[3];
        if (v58 >= v57 >> 1)
        {
          sub_375EC(v57 > 1, v58 + 1, 1);
          v48 = v139[0];
        }

        v48[2] = v58 + 1;
        v59 = v48 + v50 + v58 * v51;
        v49 = v131;
        v55(v59, v18, v131);
        v7 = v126;
        goto LABEL_45;
      }

      v54 = sub_5B7A8();

      if (v54)
      {
        goto LABEL_52;
      }
    }

    (*v127)(v21, v49);
LABEL_45:
    if (v130 == ++v3)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_110:
  v111 = v120;
LABEL_111:
  (v21)(v111, v3);

LABEL_112:

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return 0;
}

uint64_t sub_10F98(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = *v1;
  v3 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v4 = sub_5A488();
  v2[42] = v4;
  v5 = *(v4 - 8);
  v2[43] = v5;
  v6 = *(v5 + 64) + 15;
  v2[44] = swift_task_alloc();
  v7 = sub_5AA98();
  v2[45] = v7;
  v8 = *(v7 - 8);
  v2[46] = v8;
  v9 = *(v8 + 64) + 15;
  v2[47] = swift_task_alloc();
  v10 = *(*(sub_5B94(&qword_724E8, &qword_5D090) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v11 = sub_5A3B8();
  v2[49] = v11;
  v12 = *(v11 - 8);
  v2[50] = v12;
  v13 = *(v12 + 64) + 15;
  v2[51] = swift_task_alloc();
  v14 = sub_5A5B8();
  v2[52] = v14;
  v15 = *(v14 - 8);
  v2[53] = v15;
  v16 = *(v15 + 64) + 15;
  v2[54] = swift_task_alloc();
  v17 = sub_5A648();
  v2[55] = v17;
  v18 = *(v17 - 8);
  v2[56] = v18;
  v19 = *(v18 + 64) + 15;
  v2[57] = swift_task_alloc();
  v20 = sub_5A588();
  v2[58] = v20;
  v21 = *(v20 - 8);
  v2[59] = v21;
  v22 = *(v21 + 64) + 15;
  v2[60] = swift_task_alloc();

  return _swift_task_switch(sub_112BC, 0, 0);
}

uint64_t sub_112BC()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: building output", v4, 2u);
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_5B94(&qword_724F0, &qword_5C310);
  v7 = sub_5A318();
  *(v0 + 488) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  *(v0 + 600) = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 496) = v12;
  *(v12 + 16) = xmmword_5C2D0;
  v13 = v12 + v11;
  v14 = *(v8 + 16);
  v14(v13, v5 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction, v7);
  v14(v13 + v9, v5 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction, v7);
  sub_5B638();
  sub_3856C(0);
  sub_5B618();
  v15 = _swiftEmptyArrayStorage[2];
  sub_5B648();
  sub_5B658();
  sub_5B628();
  sub_3856C(1);
  sub_5B618();
  v16 = _swiftEmptyArrayStorage[2];
  sub_5B648();
  sub_5B658();
  sub_5B628();
  *(v0 + 504) = _swiftEmptyArrayStorage;
  v17 = swift_allocObject();
  *(v0 + 512) = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v6;

  v18 = swift_task_alloc();
  *(v0 + 520) = v18;
  *v18 = v0;
  v18[1] = sub_11608;

  return sub_505A4(&unk_5C630, v17, v12);
}

uint64_t sub_11608(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(*v2 + 528) = a1;

  v7 = *(v3 + 512);
  if (v1)
  {
    v9 = *(v4 + 496);
    v8 = *(v4 + 504);
    v10 = *(v4 + 488);
    v11 = (*(v4 + 600) + 32) & ~*(v4 + 600);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v12 = *(v4 + 480);
    v13 = *(v4 + 456);
    v14 = *(v4 + 432);
    v15 = *(v4 + 408);
    v17 = *(v4 + 376);
    v16 = *(v4 + 384);
    v18 = *(v4 + 352);
    v19 = *(v4 + 328);

    v20 = *(v6 + 8);

    return v20();
  }

  else
  {

    return _swift_task_switch(sub_1182C, 0, 0);
  }
}

uint64_t sub_1182C()
{
  v1 = v0[66];
  sub_5F90(v0[39] + 56, (v0 + 25));
  v2 = sub_5CBC(v0 + 25, v0[28]);
  sub_5B94(&qword_724F8, &qword_5C638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  v0[35] = 0x73656D614E707061;
  v0[36] = 0xE800000000000000;
  sub_5B568();
  v4 = *(v1 + 16);
  if (v4)
  {
    v20 = inited;
    v21 = v2;
    v5 = v0[66];
    sub_37758(0, v4, 0);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 2 * v6;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = _swiftEmptyArrayStorage[3];

      if (v6 >= v11 >> 1)
      {
        sub_37758((v11 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v12 = &_swiftEmptyArrayStorage[v7];
      v12[4] = v9;
      v12[5] = v10;
      v7 += 2;
      v8 += 4;
      ++v6;
      --v4;
    }

    while (v4);
    inited = v20;
    v2 = v21;
  }

  *(inited + 96) = sub_5B94(&qword_72500, &unk_5C640);
  *(inited + 72) = _swiftEmptyArrayStorage;
  v13 = sub_38208(inited);
  v0[67] = v13;
  swift_setDeallocating();
  sub_5D4C(inited + 32, &qword_72508, &unk_5D130);
  sub_5B94(&qword_721C8, &unk_5CD60);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_5C390;
  *(v14 + 32) = 0x65736E6F70736572;
  v15 = v14 + 32;
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEC00000065646F4DLL;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0xE000000000000000;
  v16 = sub_3802C(v14);
  v0[68] = v16;
  swift_setDeallocating();
  sub_5D4C(v15, &unk_72450, &unk_5C470);
  v17 = *v2;
  v18 = swift_task_alloc();
  v0[69] = v18;
  *v18 = v0;
  v18[1] = sub_11B0C;

  return sub_3419C(0xD000000000000025, 0x800000000005E900, v13, v16);
}

uint64_t sub_11B0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(v4 + 560) = a1;
  *(v4 + 568) = v1;

  v7 = *(v3 + 544);
  v8 = *(v3 + 536);
  if (v1)
  {
    v9 = *(v4 + 528);
    v11 = *(v4 + 496);
    v10 = *(v4 + 504);
    v12 = *(v4 + 600);
    v13 = *(v4 + 488);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v14 = sub_12110;
  }

  else
  {

    v14 = sub_11CCC;
  }

  return _swift_task_switch(v14, 0, 0);
}

size_t sub_11CCC()
{
  v1 = v0[71];
  v2 = v0[70];
  sub_5D00(v0 + 25);
  v3 = [v2 print];
  v4 = sub_5B3D8();

  v5 = [v2 speak];
  v6 = sub_5B3D8();

  v7 = [v2 spokenOnly];
  sub_1AB38(0, &qword_72510, NSNumber_ptr);
  v8 = sub_5B3D8();

  v9 = sub_135B4(v4, v6, v8);

  v10 = v9[2];
  if (v10)
  {
    v11 = v0[53];
    v12 = v0[50];
    result = sub_376F4(0, v10, 0);
    v14 = 0;
    v36 = v9;
    v37 = v9[2];
    v15 = _swiftEmptyArrayStorage;
    v33 = (v12 + 56);
    v34 = v11;
    v16 = (v9 + 8);
    v35 = v10;
    while (v37 != v14)
    {
      if (v14 >= v9[2])
      {
        goto LABEL_12;
      }

      v17 = v0[51];
      v18 = v0[48];
      v40 = v0[49];
      v41 = v0[54];
      v19 = *(v16 - 3);
      v38 = *(v16 - 2);
      v39 = *(v16 - 4);
      v42 = v15;
      v21 = *(v16 - 1);
      v20 = *v16;

      v22 = v20;
      v44._countAndFlagsBits = 35;
      v44._object = 0xE100000000000000;
      sub_5B388(v44);
      v0[37] = v14;
      v45._countAndFlagsBits = sub_5B798();
      sub_5B388(v45);

      sub_5A398();
      (*v33)(v18, 1, 1, v40);
      [v22 BOOLValue];
      sub_5A598();

      v15 = v42;

      v24 = v42[2];
      v23 = v42[3];
      if (v24 >= v23 >> 1)
      {
        sub_376F4(v23 > 1, v24 + 1, 1);
        v15 = v42;
      }

      v25 = v0[54];
      v26 = v0[52];
      ++v14;
      v15[2] = v24 + 1;
      result = (*(v34 + 32))(v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24, v25, v26);
      v16 += 5;
      v9 = v36;
      if (v35 == v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:

    v27 = v0[60];
    (*(v0[56] + 104))(v0[57], enum case for BehaviorAfterSpeaking.listen(_:), v0[55]);
    sub_5A548();
    v28 = swift_task_alloc();
    v0[72] = v28;
    *v28 = v0;
    v28[1] = sub_121E4;
    v29 = v0[66];
    v30 = v0[63];
    v31 = v0[60];
    v32 = v0[39];

    return sub_14CD0(v29, v30, v31);
  }

  return result;
}

uint64_t sub_12110()
{
  sub_5D00(v0 + 25);
  v1 = v0[71];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];
  v9 = v0[41];

  v10 = v0[1];

  return v10();
}

uint64_t sub_121E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  *(v4 + 584) = a1;
  *(v4 + 592) = v1;

  v7 = *(v3 + 528);
  v8 = *(v3 + 504);
  if (v1)
  {
    v10 = *(v4 + 488);
    v9 = *(v4 + 496);
    v11 = (*(v4 + 600) + 32) & ~*(v4 + 600);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v12 = sub_12790;
  }

  else
  {

    v12 = sub_12394;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_12394()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 312);
  sub_139A8(*(v0 + 496), *(v0 + 376));
  if (v1)
  {
    v3 = *(v0 + 584);
    v4 = *(v0 + 560);
    v6 = *(v0 + 488);
    v5 = *(v0 + 496);
    v7 = *(v0 + 600);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v8 = *(v0 + 480);
    v9 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 408);
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = *(v0 + 352);
    v15 = *(v0 + 328);
  }

  else
  {
    v36 = *(v0 + 584);
    v37 = *(v0 + 560);
    v18 = *(v0 + 488);
    v17 = *(v0 + 496);
    v35 = *(v0 + 480);
    v38 = *(v0 + 472);
    v39 = *(v0 + 464);
    v40 = *(v0 + 456);
    v41 = *(v0 + 432);
    v19 = *(v0 + 376);
    v20 = *(v0 + 360);
    v21 = *(v0 + 368);
    v22 = *(v0 + 344);
    v23 = *(v0 + 352);
    v32 = *(v0 + 328);
    v33 = *(v0 + 336);
    v24 = (*(v0 + 600) + 32) & ~*(v0 + 600);
    v25 = *(v0 + 312);
    v34 = *(v0 + 304);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_5A478();
    sub_5B94(&qword_72518, &unk_5C650);
    v26 = *(v21 + 72);
    v27 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_5C390;
    (*(v21 + 16))(v28 + v27, v19, v20);
    sub_5A458();
    v29 = v25[6];
    sub_5CBC(v25 + 2, v25[5]);
    sub_5A218();
    (*(v22 + 16))(v32, v23, v33);
    (*(v22 + 56))(v32, 0, 1, v33);
    v30 = sub_5A908();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    v34[3] = v30;
    v34[4] = &protocol witness table for AceOutput;
    sub_5F2C(v34);
    sub_5A3E8();

    sub_5D4C(v0 + 240, &qword_721D8, &qword_5C480);
    sub_5D4C(v32, &unk_72440, &unk_5C460);
    (*(v22 + 8))(v23, v33);
    (*(v21 + 8))(v19, v20);
    (*(v38 + 8))(v35, v39);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_12790()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 592);
  v5 = *(v0 + 480);
  v6 = *(v0 + 456);
  v7 = *(v0 + 432);
  v8 = *(v0 + 408);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_12884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_59E68();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_5A858();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = sub_5A7D8();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v13 = sub_5A8E8();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v16 = *(*(sub_5B94(&unk_72520, &qword_5C320) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = sub_5A638();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_12B14, 0, 0);
}

uint64_t sub_12B14()
{
  v1 = v0[7];
  v0[2] = sub_41E68();
  v0[3] = v2;
  v0[28] = v2;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v0[7];
  v4 = sub_5CBC((v0[8] + 176), *(v0[8] + 200));
  v0[4] = sub_180B4(*v4);
  v0[5] = v5;
  v0[29] = v5;
  if (!v5)
  {

LABEL_7:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v27 = sub_5B228();
    sub_5B44(v27, qword_763B8);
    v28 = sub_5B218();
    v29 = sub_5B4C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "AppNameDisambiguationFlow: cannot map action to AppDisambiguationDisplayInfo", v30, 2u);
    }

    v31 = v0[7];

    type metadata accessor for AppNameDisambiguationError(0);
    sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError);
    swift_allocError();
    v33 = v32;
    v34 = sub_5A318();
    (*(*(v34 - 8) + 16))(v33, v31, v34);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v35 = v0[27];
    v37 = v0[23];
    v36 = v0[24];
    v38 = v0[22];
    v40 = v0[18];
    v39 = v0[19];
    v42 = v0[14];
    v41 = v0[15];
    v43 = v0[11];

    v44 = v0[1];
    goto LABEL_16;
  }

  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[7];
  sub_5A2F8();
  sub_5A7C8();
  v13 = *(v8 + 8);
  v13(v6, v7);
  v14 = *(v11 + 88);
  v15 = v14(v9, v10);
  if (v15 != enum case for Parse.uso(_:))
  {
    v45 = v0[25];
    v46 = v0[26];
    v47 = v0[24];
    (*(v0[13] + 8))(v0[15], v0[12]);
    (*(v46 + 56))(v47, 1, 1, v45);
LABEL_15:
    sub_5D4C(v0[24], &unk_72520, &qword_5C320);
    v55 = v0[28];
    v54 = v0[29];
    v56 = v0[2];
    v57 = v0[27];
    v58 = v0[23];
    v59 = v0[24];
    v60 = v0[22];
    v62 = v0[18];
    v61 = v0[19];
    v64 = v0[14];
    v63 = v0[15];
    v65 = v0[11];
    v66 = v0[6];
    *v66 = v0[4];
    v66[1] = v54;
    v66[2] = v56;
    v66[3] = v55;

    v44 = v0[1];
LABEL_16:

    return v44();
  }

  v16 = v15;
  v17 = v0[21];
  v80 = v0[20];
  v81 = v0[23];
  v18 = v0[18];
  v19 = v0[15];
  v83 = v0[14];
  v20 = v0[12];
  v84 = v20;
  v85 = v0[16];
  v21 = v0[7];
  v79 = *(v0[13] + 96);
  v79(v19);
  v22 = v81;
  v82 = *(v17 + 32);
  v82(v22, v19, v80);
  sub_5A2F8();
  sub_5A7C8();
  v13(v18, v85);
  if (v14(v83, v84) == v16)
  {
    v24 = v0[21];
    v23 = v0[22];
    v25 = v0[20];
    v26 = v0[14];
    (v79)(v26, v0[12]);
    v82(v23, v26, v25);
    sub_5A878();
    (*(v24 + 8))(v23, v25);
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  v48 = v0[25];
  v49 = v0[26];
  v50 = v0[23];
  v51 = v0[24];
  v52 = v0[20];
  v53 = v0[21];
  sub_5A8B8();
  (*(v53 + 8))(v50, v52);
  if ((*(v49 + 48))(v51, 1, v48) == 1)
  {
    goto LABEL_15;
  }

  v69 = v0[10];
  v68 = v0[11];
  v70 = v0[8];
  v71 = v0[9];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  v72 = v70[6];
  sub_5CBC(v70 + 2, v70[5]);
  sub_5A208();
  v73 = sub_59E48();
  v75 = v74;
  v0[30] = v74;
  (*(v69 + 8))(v68, v71);
  if (qword_71A50 != -1)
  {
    swift_once();
  }

  v76 = async function pointer to AppShortcutInvocation.exists(siriLanguage:provider:)[1];
  v77 = swift_task_alloc();
  v0[31] = v77;
  *v77 = v0;
  v77[1] = sub_131A0;
  v78 = v0[27];

  return AppShortcutInvocation.exists(siriLanguage:provider:)(v73, v75, qword_76390);
}

uint64_t sub_131A0(char a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_132C0, 0, 0);
}

uint64_t sub_132C0()
{
  if (*(v0 + 256) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v3 = *(v0 + 16);
    v4 = *(v0 + 216);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 88);
    v13 = *(v0 + 48);
    *v13 = *(v0 + 32);
    v13[1] = v1;
    v13[2] = v3;
    v13[3] = v2;

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v17 = sub_5B228();
    sub_5B44(v17, qword_763B8);
    v18 = sub_5B218();
    v19 = sub_5B4C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "AppNameDisambiguationFlow: appShortcut invocation does not exist", v20, 2u);
    }

    v22 = *(v0 + 208);
    v21 = *(v0 + 216);
    v23 = *(v0 + 200);

    type metadata accessor for AppNameDisambiguationError(0);
    sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError);
    swift_allocError();
    (*(v22 + 16))(v24, v21, v23);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    v25 = *(v0 + 216);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);
    v30 = *(v0 + 144);
    v29 = *(v0 + 152);
    v32 = *(v0 + 112);
    v31 = *(v0 + 120);
    v33 = *(v0 + 88);

    v14 = *(v0 + 8);
  }

  return v14();
}

void *sub_135B4(char *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 2);
  v42 = a3 >> 62;
  v43 = *(a2 + 2);
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_5B678())
  {
    v8 = i >= v43 ? v43 : i;
    v9 = v8 >= v6 ? v6 : v8;
    result = sub_37738(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v11 = v9;
    v32 = v8;
    v37 = v3;
    v41 = v6;
    v33 = v4;
    v34 = v5;
    if (v9)
    {
      v38 = v3 & 0xFFFFFFFFFFFFFF8;
      v39 = v3 & 0xC000000000000001;
      v35 = (v3 + 32);

      v12 = 0;
      v3 = (v4 + 40);
      v13 = (v5 + 40);
      v40 = v11;
      while (v6 != v12)
      {
        if (v43 == v12)
        {
          goto LABEL_45;
        }

        v5 = *(v13 - 1);
        v14 = *v13;
        v4 = *(v3 - 8);
        v15 = *v3;
        if (v42)
        {
          v16 = sub_5B678();
        }

        else
        {
          v16 = *(v38 + 16);
        }

        if (v12 == v16)
        {
          goto LABEL_46;
        }

        v44 = v4;
        v45 = v5;
        if (v39)
        {

          v17 = sub_5B5B8();
        }

        else
        {
          if (v12 >= *(v38 + 16))
          {
            goto LABEL_47;
          }

          v18 = v35[v12];

          v17 = v18;
        }

        v5 = v17;
        v20 = *(&_swiftEmptyArrayStorage + 2);
        v19 = *(&_swiftEmptyArrayStorage + 3);
        v4 = (v20 + 1);
        v11 = v40;
        if (v20 >= v19 >> 1)
        {
          sub_37738((v19 > 1), v20 + 1, 1);
          v11 = v40;
        }

        ++v12;
        *(&_swiftEmptyArrayStorage + 2) = v4;
        v21 = (&_swiftEmptyArrayStorage + 40 * v20);
        v21[4] = v45;
        v21[5] = v14;
        v21[6] = v44;
        v21[7] = v15;
        v21[8] = v5;
        v3 += 16;
        v13 += 2;
        v6 = v41;
        if (v11 == v12)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {

LABEL_27:
      if (v6 <= v32)
      {
LABEL_43:

        return &_swiftEmptyArrayStorage;
      }

      v22 = 16 * v11 + 40;
      v4 = &v34[v22];
      v23 = (v33 + v22);
      while (v11 < v6)
      {
        if (v43 == v11)
        {
          goto LABEL_43;
        }

        v25 = *(v4 - 1);
        v24 = *v4;
        v3 = *(v23 - 1);
        v26 = *v23;
        if (v42)
        {
          v5 = v11;
          if (v11 == sub_5B678())
          {
            goto LABEL_43;
          }
        }

        else if (v11 == *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_43;
        }

        v46 = v3;
        if ((v37 & 0xC000000000000001) != 0)
        {

          v27 = v11;
          v29 = sub_5B5B8();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_49;
          }

          v27 = v11;
          v28 = *(v37 + 32 + 8 * v11);

          v29 = v28;
        }

        v3 = *(&_swiftEmptyArrayStorage + 2);
        v30 = *(&_swiftEmptyArrayStorage + 3);
        v5 = (v3 + 1);
        if (v3 >= v30 >> 1)
        {
          v36 = v29;
          sub_37738((v30 > 1), v3 + 1, 1);
          v29 = v36;
        }

        v11 = v27 + 1;
        *(&_swiftEmptyArrayStorage + 2) = v5;
        v31 = (&_swiftEmptyArrayStorage + 40 * v3);
        v31[4] = v25;
        v31[5] = v24;
        v31[6] = v46;
        v31[7] = v26;
        v31[8] = v29;
        v4 += 16;
        v23 += 2;
        v6 = v41;
        if (v41 == v11)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_139A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = sub_5B94(&qword_72498, &qword_5C608);
  v6 = *(*(v82 - 8) + 64);
  v7 = __chkstk_darwin(v82);
  v80 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v64 - v9;
  v79 = sub_5AA18();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v79);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5AA98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v70 = &v64 - v20;
  v21 = sub_5AAC8();
  v65 = *(v21 - 8);
  v22 = *(v65 + 64);
  v23 = __chkstk_darwin(v21);
  v69 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v66 = a2;
  v68 = v15;
  v67 = v23;
  if (v25)
  {
    v64 = v14;
    v86[0] = &_swiftEmptyArrayStorage;
    v74 = v25;
    sub_376B0(0, v25, 0);
    v84 = v86[0];
    v26 = 0;
    v78 = sub_5A318();
    v27 = *(v78 - 8);
    v28 = *(v27 + 16);
    v76 = v27 + 16;
    v77 = v28;
    v29 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v75 = (v27 + 32);
    v71 = *(v27 + 72);
    v72 = v10 + 32;
    v73 = v10;
    while (1)
    {
      v85 = v3;
      v30 = v19;
      v32 = v81;
      v31 = v82;
      v33 = *(v82 + 48);
      v34 = v78;
      v77(&v81[v33], v29, v78);
      v35 = v80;
      *v80 = v26;
      v36 = *(v31 + 48);
      v37 = &v32[v33];
      v38 = v35;
      (*v75)(&v35[v36], v37, v34);
      v39 = v85;
      sub_1418C((v38 + v36), v83, v13);
      if (v39)
      {
        break;
      }

      v40 = v30;
      sub_5D4C(v38, &qword_72498, &qword_5C608);
      v41 = v84;
      v86[0] = v84;
      v43 = *(v84 + 16);
      v42 = *(v84 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_376B0(v42 > 1, v43 + 1, 1);
        v41 = v86[0];
      }

      ++v26;
      *(v41 + 16) = v43 + 1;
      v44 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v84 = v41;
      v23 = (*(v73 + 32))(v41 + v44 + *(v73 + 72) * v43, v13, v79);
      v29 += v71;
      v3 = 0;
      v19 = v40;
      if (v74 == v26)
      {
        v14 = v64;
        v15 = v68;
        goto LABEL_9;
      }
    }

    sub_5D4C(v38, &qword_72498, &qword_5C608);
  }

  else
  {
LABEL_9:
    __chkstk_darwin(v23);
    *(&v64 - 2) = v46;
    sub_1A95C(&qword_724A0, &type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
    v47 = v69;
    sub_5B138();

    __chkstk_darwin(v48);
    *(&v64 - 2) = v47;
    v49 = sub_1A95C(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    v50 = v70;
    sub_5B138();
    v85 = v3;
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v51 = sub_5B228();
    sub_5B44(v51, qword_763B8);
    v52 = *(v15 + 16);
    v52(v19, v50, v14);
    v53 = sub_5B218();
    v54 = sub_5B4B8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v19;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v87 = v57;
      *v56 = 136315138;
      sub_5AB48();
      LODWORD(v84) = v54;
      v86[3] = v14;
      v86[4] = v49;
      v58 = sub_5F2C(v86);
      v52(v58, v55, v14);
      v59 = sub_5AB38();
      v61 = v60;
      (*(v68 + 8))(v55, v14);
      sub_5D00(v86);
      v62 = sub_2DC10(v59, v61, &v87);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_0, v53, v84, "AppNameDisambiguationFlow: systemDialogAct: %s", v56, 0xCu);
      sub_5D00(v57);
      v15 = v68;
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    v63 = v67;
    (*(v15 + 32))(v66, v70, v14);
    return (*(v65 + 8))(v69, v63);
  }
}

uint64_t sub_1418C@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a3;
  v75 = sub_5A318();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v75);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_5AA58();
  v68 = *(v70 - 8);
  v9 = *(v68 + 64);
  __chkstk_darwin(v70);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5A938();
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  __chkstk_darwin(v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5B94(&qword_724B0, &unk_5C610);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v64 - v18;
  v20 = sub_5ABE8();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = *(v72 + 64);
  __chkstk_darwin(v20);
  v74 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41E68();
  if (v23)
  {
    v65 = v5;
    v24 = sub_5CBC((a2 + 176), *(a2 + 200));
    sub_180B4(*v24);
    if (v25)
    {
      sub_5ABB8();
      v26 = sub_5ACF8();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      sub_5ACE8();
      sub_5ACD8();

      if (sub_5ACC8())
      {
        sub_5ABA8();
      }

      v29 = sub_5AD78();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_5AD68();
      sub_5AD98();
      sub_5B94(&qword_72460, &unk_5C5E0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_5C4A0;
      *(v33 + 32) = v32;
      v34 = sub_5AC48();
      (*(*(v34 - 8) + 56))(v19, 1, 1, v34);

      v35 = sub_5AC28();

      sub_5D4C(v19, &qword_724B0, &unk_5C610);
      v36 = v71;
      v37 = sub_5AB78();
      v64[1] = v35;
      if (v36)
      {
        if (qword_71A58 != -1)
        {
          swift_once();
        }

        v71 = v32;
        v38 = sub_5B228();
        sub_5B44(v38, qword_763B8);
        swift_errorRetain();
        v39 = sub_5B218();
        v40 = sub_5B4C8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v77 = v42;
          *v41 = 136315138;
          v76 = v36;
          swift_errorRetain();
          sub_5B94(&qword_724C8, &qword_5E270);
          v43 = sub_5B358();
          v45 = sub_2DC10(v43, v44, &v77);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_0, v39, v40, "AppNameDisambiguationFlow: error building system dialog act for disambiguation: %s", v41, 0xCu);
          sub_5D00(v42);
        }

        v46 = v75;
        type metadata accessor for AppNameDisambiguationError(0);
        sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError);
        swift_allocError();
        (*(v65 + 16))(v47, a1, v46);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        return (*(v72 + 8))(v74, v73);
      }

      else
      {
        __chkstk_darwin(v37);
        v64[-2] = v15;
        sub_1A95C(&qword_724D0, &type metadata accessor for Siri_Nlu_External_UserStatedTask);
        v62 = v70;
        sub_5B138();
        v63 = sub_5AA18();
        __chkstk_darwin(v63);
        v64[-2] = v11;
        sub_1A95C(&qword_724D8, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
        sub_5B138();

        (*(v72 + 8))(v74, v73);
        (*(v68 + 8))(v11, v62);
        return (*(v66 + 8))(v15, v67);
      }
    }

    v5 = v65;
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v49 = sub_5B228();
  sub_5B44(v49, qword_763B8);
  v50 = *(v5 + 16);
  v74 = a1;
  v51 = v75;
  v50(v8, a1, v75);
  v52 = sub_5B218();
  v53 = sub_5B4C8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73 = v50;
    v56 = v55;
    v77 = v55;
    *v54 = 136315138;
    sub_1A95C(&qword_71C10, &type metadata accessor for PluginAction);
    v57 = sub_5B798();
    v59 = v58;
    (*(v5 + 8))(v8, v75);
    v60 = sub_2DC10(v57, v59, &v77);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_0, v52, v53, "AppNameDisambiguationFlow: failed to create SDA option for plugin action %s", v54, 0xCu);
    sub_5D00(v56);
    v50 = v73;

    v51 = v75;
  }

  else
  {

    (*(v5 + 8))(v8, v51);
  }

  type metadata accessor for AppNameDisambiguationError(0);
  sub_1A95C(&unk_724B8, type metadata accessor for AppNameDisambiguationError);
  swift_allocError();
  v50(v61, v74, v51);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_14BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = (*(*(a3(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

uint64_t sub_14CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_14CF4, 0, 0);
}

uint64_t sub_14CF4()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppNameDisambiguationFlow: Creating disambiguation views for non watchOS", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v0[6] = sub_1A23C();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v0[7] = v9;
  *(v9 + 16) = &unk_5C5C8;
  *(v9 + 24) = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_14EE4;
  v11 = v0[2];

  return (sub_4FCF4)(&unk_5C5D8, v9, v11);
}

uint64_t sub_14EE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v8 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v6 = sub_1529C;
  }

  else
  {
    v6 = sub_15018;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_15018()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_5B94(&qword_72460, &unk_5C5E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_5C4A0;
  *(v3 + 32) = v2;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v2;
    sub_5B638();
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      v6 += 3;
      v8 = v7;
      sub_5B618();
      v9 = _swiftEmptyArrayStorage[2];
      sub_5B648();
      sub_5B658();
      sub_5B628();
      --v4;
    }

    while (v4);
    v10 = v0[9];
  }

  else
  {
    v11 = v2;
  }

  v12 = v0[3];
  sub_17D0C(_swiftEmptyArrayStorage);
  if (v12 >> 62)
  {
    if (v0[3] < 0)
    {
      v19 = v0[3];
    }

    v20 = v0[3];

    sub_5B94(&qword_72468, &qword_5C5F0);
    sub_5B668();
  }

  else
  {

    sub_5B7B8();
    v13 = v0[3];
  }

  sub_1AB38(0, &unk_72470, SACardSnippet_ptr);
  v14 = sub_5B498();

  v15 = v14;
  sub_5B3B8();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v21 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_5B3E8();
  }

  v16 = v0[6];
  sub_5B408();

  v17 = v0[1];

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_1529C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_15300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  return _swift_task_switch(sub_15328, 0, 0);
}

unint64_t sub_15328()
{
  v1 = v0[7];
  result = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_5B5B8();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) <= result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 8 * result + 32);
LABEL_5:
  v4 = v3;
  v0[8] = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1540C;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  return sub_1A6D0(v9, v8, v6, v7, v4);
}

uint64_t sub_1540C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 72);
  v10 = *v4;
  *(*v4 + 80) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_15580, 0, 0);
  }

  else
  {

    v11 = *(v10 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_15580()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_155E4(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v12 = (a3 + *a3);
  v9 = a3[1];
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  *v10 = v3;
  v10[1] = sub_15704;

  return v12(v4, v5, v6, v7, v8);
}

uint64_t sub_15704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_15828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v7 = sub_5A2A8();
  v5[42] = v7;
  v8 = *(v7 - 8);
  v5[43] = v8;
  v9 = *(v8 + 64) + 15;
  v5[44] = swift_task_alloc();
  v10 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v11 = sub_5A908();
  v5[46] = v11;
  v12 = *(v11 - 8);
  v5[47] = v12;
  v13 = *(v12 + 64) + 15;
  v5[48] = swift_task_alloc();
  v14 = sub_5A648();
  v5[49] = v14;
  v15 = *(v14 - 8);
  v5[50] = v15;
  v16 = *(v15 + 64) + 15;
  v5[51] = swift_task_alloc();
  v17 = sub_5A588();
  v5[52] = v17;
  v18 = *(v17 - 8);
  v5[53] = v18;
  v19 = *(v18 + 64) + 15;
  v5[54] = swift_task_alloc();

  return _swift_task_switch(sub_15A74, 0, 0);
}

uint64_t sub_15A74()
{
  v1 = sub_5CBC((v0[40] + 56), *(v0[40] + 80));
  v2 = sub_38208(_swiftEmptyArrayStorage);
  v0[55] = v2;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v4 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v5 = sub_3802C(inited);
  v0[56] = v5;
  swift_setDeallocating();
  sub_5D4C(v4, &unk_72450, &unk_5C470);
  v6 = *v1;
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_15BE0;
  v9 = v0[37];
  v8 = v0[38];

  return sub_3419C(v9, v8, v2, v5);
}

uint64_t sub_15BE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v5 = *v2;
  *(*v2 + 464) = a1;

  v6 = *(v3 + 448);
  v7 = *(v3 + 440);
  if (v1)
  {

    v8 = sub_16150;
  }

  else
  {

    v8 = sub_15D54;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_15D54()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v17 = *(v0 + 392);
  v18 = *(v0 + 432);
  v22 = *(v0 + 368);
  v23 = *(v0 + 376);
  v4 = *(v0 + 360);
  v21 = *(v0 + 320);
  v19 = *(v0 + 384);
  v20 = *(v0 + 312);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);

  v7 = [v1 speak];
  sub_5B3D8();

  v8 = [v1 print];
  sub_5B3D8();

  (*(v3 + 104))(v2, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v17);
  sub_5A538();
  sub_5A868();
  sub_5A868();
  v9 = *(v0 + 168);
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v10 = sub_5A488();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3C8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v11 = v21[15];
  v12 = v21[16];
  sub_5CBC(v21 + 12, v11);
  *(v0 + 240) = v22;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v13 = sub_5F2C((v0 + 216));
  (*(v23 + 16))(v13, v19, v22);
  v14 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v15 = swift_task_alloc();
  *(v0 + 472) = v15;
  *v15 = v0;
  v15[1] = sub_16034;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v11, v12);
}

uint64_t sub_16034()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v6 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_1650C;
  }

  else
  {
    sub_5D00((v2 + 216));
    v4 = sub_1631C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_16150()
{
  v19 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  v4 = sub_5B4C8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[37];
    v5 = v0[38];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2DC10(v6, v5, &v18);
    _os_log_impl(&dword_0, v3, v4, "Couldn't create a dialog for %s.", v7, 0xCu);
    sub_5D00(v8);
  }

  v9 = v0[36];
  sub_5A438();
  v10 = v0[54];
  v11 = v0[51];
  v12 = v0[48];
  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[41];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1631C()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v5[21];
  sub_5CBC(v5 + 17, v5[20]);
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.canceled(_:), v3);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_5A1C8();
  sub_5A158();

  v8 = v0[58];
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];
  v13 = v0[47];
  v12 = v0[48];
  v14 = v0[46];
  v15 = v0[36];
  sub_5A438();

  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[48];
  v20 = v0[44];
  v19 = v0[45];
  v21 = v0[41];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1650C()
{
  v32 = v0;
  sub_5D00(v0 + 27);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);
  swift_errorRetain();
  v3 = sub_5B218();
  v4 = sub_5B4C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[32];
    v9 = v0[33];
    v11 = v0[34];
    v12 = sub_5B7E8();
    v14 = sub_2DC10(v12, v13, &v31);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Error publishing output %s.", v7, 0xCu);
    sub_5D00(v8);
  }

  else
  {
  }

  v15 = v0[58];
  v17 = v0[53];
  v16 = v0[54];
  v18 = v0[52];
  v20 = v0[47];
  v19 = v0[48];
  v21 = v0[46];
  v22 = v0[36];
  sub_5A438();

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  v23 = v0[54];
  v24 = v0[51];
  v25 = v0[48];
  v27 = v0[44];
  v26 = v0[45];
  v28 = v0[41];

  v29 = v0[1];

  return v29();
}

uint64_t sub_167A0()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  sub_5D00(v0 + 17);
  sub_5D00(v0 + 22);
  v1 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_firstAction;
  v2 = sub_5A318();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_secondAction, v2);
  v3(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_fallBackAction, v2);
  sub_1AF68(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppNameDisambiguationFlow_state, type metadata accessor for AppNameDisambiguationFlow.State);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_168FC()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AppNameDisambiguationFlow.State(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_16A00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 3, v7))
  {
    v12 = sub_5A318();
    v13 = *(*(v12 - 8) + 16);
    v13(a1, a2, v12);
    v13((a1 + *(v7 + 48)), (a2 + *(v7 + 48)), v12);
    v13((a1 + *(v7 + 64)), (a2 + *(v7 + 64)), v12);
    (*(v8 + 56))(a1, 0, 3, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_16BD8(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  result = (*(*(v2 - 8) + 48))(a1, 3, v2);
  if (!result)
  {
    v4 = sub_5A318();
    v6 = *(*(v4 - 8) + 8);
    (v6)((v4 - 8), a1, v4);
    v6(a1 + *(v2 + 48), v4);
    v5 = a1 + *(v2 + 64);

    return (v6)(v5, v4);
  }

  return result;
}

char *sub_16CF4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 3, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v11(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v10);
    v11(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v10);
    (*(v7 + 56))(a1, 0, 3, v6);
    return a1;
  }
}

char *sub_16E90(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 3, v6);
  v10 = v8(a2, 3, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      v12 = *(*(v11 - 8) + 16);
      v12(a1, a2, v11);
      v12(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v11);
      v12(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v11);
      (*(v7 + 56))(a1, 0, 3, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v15 = sub_5A318();
      v16 = *(*(v15 - 8) + 24);
      v16(a1, a2, v15);
      v16(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v15);
      v16(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v15);
      return a1;
    }

    sub_5D4C(a1, &qword_71CC0, &unk_5C2C0);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *sub_170E4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 3, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 32);
    v11(a1, a2, v10);
    v11(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v10);
    v11(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v10);
    (*(v7 + 56))(a1, 0, 3, v6);
    return a1;
  }
}

char *sub_17280(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 3, v6);
  v10 = v8(a2, 3, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      v12 = *(*(v11 - 8) + 32);
      v12(a1, a2, v11);
      v12(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v11);
      v12(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v11);
      (*(v7 + 56))(a1, 0, 3, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v15 = sub_5A318();
      v16 = *(*(v15 - 8) + 40);
      v16(a1, a2, v15);
      v16(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v15);
      v16(&a1[*(v6 + 64)], &a2[*(v6 + 64)], v15);
      return a1;
    }

    sub_5D4C(a1, &qword_71CC0, &unk_5C2C0);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_174E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_17574(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_17604(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 3, v2);
}

uint64_t sub_17678(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CC0, &unk_5C2C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 3, v4);
}

uint64_t sub_176F4()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout3();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_177B0()
{
  v2 = *v0;
  type metadata accessor for AppNameDisambiguationFlow(0);
  return sub_5A098();
}

uint64_t sub_17810(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_D7D4(a1);
}

uint64_t sub_178AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppNameDisambiguationFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_178E8()
{
  v1 = sub_5A638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_5A318();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppNameDisambiguationError(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BB8C(v0, v17, type metadata accessor for AppNameDisambiguationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v20 = *v17;
    v21 = v17[1];
    v23 = 0;
    v24 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 2)
    {
      sub_5B5A8(22);

      v23 = 0xD000000000000014;
      v24 = 0x800000000005E9E0;
    }

    else
    {
      sub_5B5A8(17);

      v23 = 0x20676E6973726150;
      v24 = 0xEF203A726F727265;
    }

    v27._countAndFlagsBits = v20;
    v27._object = v21;
    sub_5B388(v27);

    return v23;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v8, v17, v1);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_5B5A8(27);

    v23 = 0xD000000000000019;
    v24 = 0x800000000005EA00;
    (*(v2 + 16))(v6, v8, v1);
    v26._countAndFlagsBits = sub_5B358();
    sub_5B388(v26);

    v19 = v23;
    (*(v2 + 8))(v8, v1);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_5B5A8(36);

    v23 = 0xD000000000000022;
    v24 = 0x800000000005EA20;
    sub_1A95C(&qword_71C10, &type metadata accessor for PluginAction);
    v25._countAndFlagsBits = sub_5B798();
    sub_5B388(v25);

    v19 = v23;
    (*(v10 + 8))(v13, v9);
  }

  return v19;
}

uint64_t sub_17D0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_5B678();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_5B678();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_17DFC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_17E9C(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_17DFC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_5B678();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_5B5C8();
  *v1 = result;
  return result;
}

uint64_t sub_17E9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5B678();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_5B678();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A624();
          for (i = 0; i != v6; ++i)
          {
            sub_5B94(&qword_72480, &qword_5C5F8);
            v9 = sub_1802C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_1AB38(0, &unk_73CB0, SFCardSection_ptr);
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

void (*sub_1802C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_5B5B8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_180AC;
  }

  __break(1u);
  return result;
}

uint64_t sub_180B4(uint64_t a1)
{
  v2 = sub_5B94(&qword_724E0, &qword_5C620);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v43 - v4);
  v6 = sub_59E98();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A858();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_5A7D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;

  v20 = sub_41E68();
  if (!v21)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v28 = sub_5B228();
    sub_5B44(v28, qword_763B8);
    v29 = sub_5B218();
    v30 = sub_5B4C8();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_15;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "PluginAction: cannot convert to app name if it cannot be mapped to a appBundleId", v31, 2u);
LABEL_14:

LABEL_15:

LABEL_16:

    return 0;
  }

  v22 = v21;
  v44 = v20;
  v23 = sub_35C44(v20, v21);
  if (!v24)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v32 = sub_5B228();
    sub_5B44(v32, qword_763B8);

    v29 = sub_5B218();
    v33 = sub_5B4C8();

    if (!os_log_type_enabled(v29, v33))
    {

      goto LABEL_16;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136315138;
    v36 = sub_2DC10(v44, v22, &v48);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_0, v29, v33, "PluginAction: cannot get app bundle record for appBundleId %s", v34, 0xCu);
    sub_5D00(v35);

    goto LABEL_14;
  }

  v43 = v23;
  v44 = v24;

  sub_5A2F8();
  sub_5A7C8();
  (*(v16 + 8))(v19, v15);
  if ((*(v11 + 88))(v14, v10) != enum case for Parse.pommesResponse(_:))
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_18;
  }

  (*(v11 + 96))(v14, v10);
  v25 = *v14;
  sub_438F4(v5);
  v27 = v45;
  v26 = v46;
  if ((*(v45 + 48))(v5, 1, v46) == 1)
  {

    sub_5D4C(v5, &qword_724E0, &qword_5C620);
LABEL_18:

    return v43;
  }

  (*(v27 + 32))(v9, v5, v26);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v38 = sub_5B228();
  sub_5B44(v38, qword_763B8);
  v39 = sub_5B218();
  v40 = sub_5B4B8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "PluginAction: overriding to pommes sash instead of app name", v41, 2u);
  }

  v42 = sub_59E88();
  (*(v27 + 8))(v9, v26);

  return v42;
}

uint64_t sub_186D8()
{
  v0 = sub_5AC18();
  v171 = *(v0 - 8);
  v1 = *(v171 + 64);
  __chkstk_darwin(v0);
  v170 = &v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_5B94(&qword_72570, &qword_5C690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v159 - v5;
  v7 = sub_5ABF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v169 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v168 = &v159 - v12;
  v13 = sub_5B94(&qword_72578, &qword_5C698);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v173 = &v159 - v15;
  v175 = sub_5AC68();
  v174 = *(v175 - 8);
  v16 = *(v174 + 64);
  __chkstk_darwin(v175);
  v172 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5B94(&qword_72580, &qword_5C6A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v177 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v179 = &v159 - v23;
  v24 = __chkstk_darwin(v22);
  v181 = &v159 - v25;
  v26 = __chkstk_darwin(v24);
  v184 = &v159 - v27;
  v28 = __chkstk_darwin(v26);
  v191 = &v159 - v29;
  __chkstk_darwin(v28);
  v31 = &v159 - v30;
  v32 = sub_5AC98();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = __chkstk_darwin(v32);
  v176 = (&v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v178 = &v159 - v38;
  v39 = __chkstk_darwin(v37);
  v180 = &v159 - v40;
  v41 = __chkstk_darwin(v39);
  v182 = &v159 - v42;
  v43 = __chkstk_darwin(v41);
  v189 = (&v159 - v44);
  __chkstk_darwin(v43);
  v46 = &v159 - v45;
  sub_5AE38();
  v190 = sub_5B94(&qword_72588, &qword_5C6A8);
  v47 = swift_dynamicCast();
  v48 = v33[7];
  if ((v47 & 1) == 0)
  {
    v48(v31, 1, 1, v32);
LABEL_20:
    v62 = &qword_72580;
    v63 = &qword_5C6A0;
    v64 = v31;
    goto LABEL_30;
  }

  v162 = v0;
  v163 = v6;
  v164 = v8;
  v165 = v7;
  v187 = v33 + 7;
  v186 = v48;
  v48(v31, 0, 1, v32);
  v183 = v33;
  v49 = v33[4];
  v188 = v32;
  v167 = v33 + 4;
  v166 = v49;
  v49(v46, v31, v32);
  v185 = v46;
  v50 = v46;
  v51 = sub_5AC88();
  v52 = v51;
  v53 = *(v51 + 16);
  if (!v53)
  {
    v56 = &_swiftEmptyArrayStorage;
LABEL_22:

    if (v56[2])
    {
      sub_5F90((v56 + 4), v197);

      v7 = v191;
      v65 = v188;
      v66 = swift_dynamicCast();
      v186(v7, v66 ^ 1u, 1, v65);
      v67 = v183;
      v68 = v183 + 6;
      v69 = v183[6];
      if (v69(v7, 1, v65) == 1)
      {
        (v67[1])(v185, v65);
        goto LABEL_28;
      }

      v160 = v69;
      v161 = v68;
      v74 = v189;
      v166(v189, v7, v65);
      v75 = sub_5AC88();
      v76 = v75;
      v77 = *(v75 + 16);
      if (v77)
      {
        v78 = 0;
        v46 = 0x646E616D6D6F63;
        v31 = (v75 + 32);
        v79 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v78 >= *(v76 + 16))
          {
            __break(1u);
LABEL_125:
            v166(v176, v31, v74);
            result = sub_5AC88();
            v133 = result;
            v134 = *(result + 16);
            if (!v134)
            {
              v137 = &_swiftEmptyArrayStorage;
LABEL_143:

              if (v137[2])
              {
                sub_5F90((v137 + 4), v197);

                v93 = v173;
                v92 = v175;
                v144 = swift_dynamicCast();
                v46 = v174;
                (*(v174 + 56))(v93, v144 ^ 1u, 1, v92);
                v145 = (*(v46 + 48))(v93, 1, v92);
                v91 = v188;
                if (v145 != 1)
                {
                  goto LABEL_149;
                }

                v146 = v183[1];
                v146(v176, v188);
                v146(v178, v91);
                v146(v180, v91);
                v146(v182, v91);
                v146(v189, v91);
                v146(v79, v91);
              }

              else
              {

                v147 = v183[1];
                v148 = v188;
                v147(v176, v188);
                v147(v178, v148);
                v147(v180, v148);
                v147(v182, v148);
                v147(v189, v148);
                v147(v79, v148);
                v93 = v173;
                (*(v174 + 56))(v173, 1, 1, v175);
              }

              v62 = &qword_72578;
              v63 = &qword_5C698;
              v64 = v93;
              goto LABEL_30;
            }

            v135 = 0;
            v136 = result + 32;
            v137 = &_swiftEmptyArrayStorage;
            while (2)
            {
              if (v135 >= *(v133 + 16))
              {
                goto LABEL_158;
              }

              sub_5F90(v136, &v193);
              sub_5CBC(&v193, v194);
              if (sub_5AB98() != 0x746163696C707061 || v138 != 0xED000064496E6F69)
              {
                v140 = sub_5B7A8();

                if (v140)
                {
LABEL_137:
                  sub_5B7C(&v193, &v192);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v196 = v137;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_37630(0, v137[2] + 1, 1);
                    v137 = v196;
                  }

                  v143 = v137[2];
                  v142 = v137[3];
                  if (v143 >= v142 >> 1)
                  {
                    sub_37630((v142 > 1), v143 + 1, 1);
                    v137 = v196;
                  }

                  v137[2] = v143 + 1;
                  result = sub_5B7C(&v192, &v137[5 * v143 + 4]);
                }

                else
                {
                  result = sub_5D00(&v193);
                }

                v79 = v185;
                ++v135;
                v136 += 40;
                if (v134 == v135)
                {
                  goto LABEL_143;
                }

                continue;
              }

              break;
            }

            goto LABEL_137;
          }

          sub_5F90(v31, &v193);
          v74 = sub_5CBC(&v193, v194);
          if (sub_5AB98() == 0x646E616D6D6F63 && v80 == 0xE700000000000000)
          {
            break;
          }

          v74 = v80;
          v7 = sub_5B7A8();

          if (v7)
          {
            goto LABEL_44;
          }

          sub_5D00(&v193);
LABEL_35:
          ++v78;
          v31 += 40;
          if (v77 == v78)
          {
            goto LABEL_50;
          }
        }

LABEL_44:
        sub_5B7C(&v193, &v192);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v196 = v79;
        if ((v82 & 1) == 0)
        {
          v74 = &v196;
          sub_37630(0, v79[2] + 1, 1);
          v79 = v196;
        }

        v84 = v79[2];
        v83 = v79[3];
        v7 = v84 + 1;
        if (v84 >= v83 >> 1)
        {
          v74 = &v196;
          sub_37630((v83 > 1), v84 + 1, 1);
          v79 = v196;
        }

        v79[2] = v7;
        sub_5B7C(&v192, &v79[5 * v84 + 4]);
        goto LABEL_35;
      }

      v79 = &_swiftEmptyArrayStorage;
LABEL_50:

      if (!v79[2])
      {

        v87 = v183[1];
        v88 = v188;
        v87(v189, v188);
        v87(v185, v88);
        v89 = &v200;
        goto LABEL_78;
      }

      sub_5F90((v79 + 4), v197);

      v31 = v184;
      v74 = v188;
      v85 = swift_dynamicCast();
      v186(v31, v85 ^ 1u, 1, v74);
      if (v160(v31, 1, v74) == 1)
      {
        v86 = v183[1];
        v86(v189, v74);
LABEL_75:
        v100 = v185;
LABEL_76:
        v86(v100, v74);
        goto LABEL_20;
      }

      v166(v182, v31, v74);
      v90 = sub_5AC88();
      v91 = v90;
      v92 = *(v90 + 16);
      if (v92)
      {
        v79 = 0;
        v93 = v90 + 32;
        v94 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v79 >= *(v91 + 16))
          {
            __break(1u);
LABEL_149:
            v149 = v172;
            (*(v46 + 32))(v172, v93, v92);
            v150 = sub_5AC58();
            if (*(v150 + 16))
            {
              v151 = v171;
              v152 = v170;
              v153 = v162;
              (*(v171 + 16))(v170, v150 + ((*(v151 + 80) + 32) & ~*(v151 + 80)), v162);

              v7 = v163;
              sub_5AC08();
              (*(v46 + 8))(v149, v92);
              v154 = v183[1];
              v154(v176, v91);
              v154(v178, v91);
              v154(v180, v91);
              v154(v182, v91);
              v154(v189, v91);
              v154(v79, v91);
              (*(v151 + 8))(v152, v153);
              v106 = v164;
              v103 = v165;
              if ((*(v164 + 48))(v7, 1, v165) != 1)
              {
                v155 = *(v106 + 32);
                v156 = v168;
                v155(v168, v7, v103);
                v7 = v169;
                v155(v169, v156, v103);
                if ((*(v106 + 88))(v7, v103) == enum case for TerminalElement.Value.string(_:))
                {
                  (*(v106 + 96))(v7, v103);
                  result = *v7;
                  v157 = *(v7 + 8);
                  return result;
                }

LABEL_156:
                (*(v106 + 8))(v7, v103);
                return 0;
              }
            }

            else
            {

              (*(v46 + 8))(v149, v92);
              v158 = v183[1];
              v158(v176, v91);
              v158(v178, v91);
              v158(v180, v91);
              v158(v182, v91);
              v158(v189, v91);
              v158(v79, v91);
              v7 = v163;
              (*(v164 + 56))(v163, 1, 1, v165);
            }

            v62 = &qword_72570;
            v63 = &qword_5C690;
LABEL_29:
            v64 = v7;
LABEL_30:
            sub_5D4C(v64, v62, v63);
            return 0;
          }

          sub_5F90(v93, &v193);
          v46 = v195;
          sub_5CBC(&v193, v194);
          if (sub_5AB98() == 0x7463656A627573 && v95 == 0xE700000000000000)
          {
            break;
          }

          v7 = sub_5B7A8();

          if (v7)
          {
            goto LABEL_66;
          }

          sub_5D00(&v193);
LABEL_57:
          v79 = (v79 + 1);
          v93 += 40;
          if (v92 == v79)
          {
            goto LABEL_72;
          }
        }

LABEL_66:
        sub_5B7C(&v193, &v192);
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v196 = v94;
        if ((v97 & 1) == 0)
        {
          sub_37630(0, v94[2] + 1, 1);
          v94 = v196;
        }

        v46 = v94[2];
        v98 = v94[3];
        v7 = v46 + 1;
        if (v46 >= v98 >> 1)
        {
          sub_37630((v98 > 1), v46 + 1, 1);
          v94 = v196;
        }

        v94[2] = v7;
        sub_5B7C(&v192, &v94[5 * v46 + 4]);
        goto LABEL_57;
      }

      v94 = &_swiftEmptyArrayStorage;
LABEL_72:

      if (!v94[2])
      {

        v101 = v183[1];
        v88 = v188;
        v101(v182, v188);
        v101(v189, v88);
        v101(v185, v88);
        v89 = &v199;
        goto LABEL_78;
      }

      sub_5F90((v94 + 4), v197);

      v31 = v181;
      v74 = v188;
      v99 = swift_dynamicCast();
      v186(v31, v99 ^ 1u, 1, v74);
      if (v160(v31, 1, v74) == 1)
      {
        v86 = v183[1];
        v86(v182, v74);
        v86(v189, v74);
        goto LABEL_75;
      }

      v166(v180, v31, v74);
      v102 = sub_5AC88();
      v103 = v102;
      v104 = *(v102 + 16);
      if (v104)
      {
        v105 = 0;
        v106 = v102 + 32;
        v107 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v105 >= *(v103 + 16))
          {
            __break(1u);
            goto LABEL_156;
          }

          sub_5F90(v106, &v193);
          sub_5CBC(&v193, v194);
          if (sub_5AB98() == 0x636E75614C707061 && v108 == 0xE900000000000068)
          {
            break;
          }

          v7 = sub_5B7A8();

          if (v7)
          {
            goto LABEL_91;
          }

          sub_5D00(&v193);
LABEL_82:
          ++v105;
          v106 += 40;
          if (v104 == v105)
          {
            goto LABEL_97;
          }
        }

LABEL_91:
        sub_5B7C(&v193, &v192);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v196 = v107;
        if ((v110 & 1) == 0)
        {
          sub_37630(0, v107[2] + 1, 1);
          v107 = v196;
        }

        v112 = v107[2];
        v111 = v107[3];
        v7 = v112 + 1;
        if (v112 >= v111 >> 1)
        {
          sub_37630((v111 > 1), v112 + 1, 1);
          v107 = v196;
        }

        v107[2] = v7;
        sub_5B7C(&v192, &v107[5 * v112 + 4]);
        goto LABEL_82;
      }

      v107 = &_swiftEmptyArrayStorage;
LABEL_97:

      if (v107[2])
      {
        sub_5F90((v107 + 4), v197);

        v7 = v179;
        v50 = v188;
        v113 = swift_dynamicCast();
        v186(v7, v113 ^ 1u, 1, v50);
        v114 = v160(v7, 1, v50);
        v115 = v185;
        if (v114 != 1)
        {
          goto LABEL_102;
        }

        v116 = v183[1];
        v116(v180, v50);
        v116(v182, v50);
        v116(v189, v50);
        v116(v115, v50);
LABEL_28:
        v62 = &qword_72580;
        v63 = &qword_5C6A0;
        goto LABEL_29;
      }

      v117 = v183[1];
      v118 = v188;
      v117(v180, v188);
      v117(v182, v118);
      v117(v189, v118);
      v117(v185, v118);
      v7 = v179;
      v71 = v179;
      v72 = v118;
    }

    else
    {

      v70 = v188;
      (v183[1])(v185, v188);
      v7 = v191;
      v71 = v191;
      v72 = v70;
    }

    v186(v71, 1, 1, v72);
    goto LABEL_28;
  }

  v54 = 0;
  v46 = 0x6E6F69746361;
  v55 = v51 + 32;
  v56 = &_swiftEmptyArrayStorage;
  while (v54 < *(v52 + 16))
  {
    sub_5F90(v55, &v193);
    v50 = sub_5CBC(&v193, v194);
    if (sub_5AB98() == 0x6E6F69746361 && v57 == 0xE600000000000000)
    {

LABEL_14:
      sub_5B7C(&v193, &v192);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v196 = v56;
      if ((v59 & 1) == 0)
      {
        v50 = &v196;
        sub_37630(0, v56[2] + 1, 1);
        v56 = v196;
      }

      v61 = v56[2];
      v60 = v56[3];
      v7 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v50 = &v196;
        sub_37630((v60 > 1), v61 + 1, 1);
        v56 = v196;
      }

      v56[2] = v7;
      sub_5B7C(&v192, &v56[5 * v61 + 4]);
      goto LABEL_5;
    }

    v50 = v57;
    v7 = sub_5B7A8();

    if (v7)
    {
      goto LABEL_14;
    }

    sub_5D00(&v193);
LABEL_5:
    ++v54;
    v55 += 40;
    if (v53 == v54)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_102:
  v166(v178, v7, v50);
  result = sub_5AC88();
  v119 = result;
  v120 = *(result + 16);
  if (!v120)
  {
    v123 = &_swiftEmptyArrayStorage;
LABEL_120:

    if (v123[2])
    {
      sub_5F90((v123 + 4), v197);

      v31 = v177;
      v74 = v188;
      v130 = swift_dynamicCast();
      v186(v31, v130 ^ 1u, 1, v74);
      v131 = v160(v31, 1, v74);
      v79 = v185;
      if (v131 != 1)
      {
        goto LABEL_125;
      }

      v86 = v183[1];
      v86(v178, v74);
      v86(v180, v74);
      v86(v182, v74);
      v86(v189, v74);
      v100 = v79;
      goto LABEL_76;
    }

    v132 = v183[1];
    v88 = v188;
    v132(v178, v188);
    v132(v180, v88);
    v132(v182, v88);
    v132(v189, v88);
    v132(v185, v88);
    v89 = &v198;
LABEL_78:
    v31 = *(v89 - 32);
    v186(v31, 1, 1, v88);
    goto LABEL_20;
  }

  v121 = 0;
  v122 = result + 32;
  v123 = &_swiftEmptyArrayStorage;
  while (v121 < *(v119 + 16))
  {
    sub_5F90(v122, &v193);
    sub_5CBC(&v193, v194);
    if (sub_5AB98() == 7368801 && v124 == 0xE300000000000000)
    {

LABEL_114:
      sub_5B7C(&v193, &v192);
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v196 = v123;
      if ((v127 & 1) == 0)
      {
        sub_37630(0, v123[2] + 1, 1);
        v123 = v196;
      }

      v129 = v123[2];
      v128 = v123[3];
      if (v129 >= v128 >> 1)
      {
        sub_37630((v128 > 1), v129 + 1, 1);
        v123 = v196;
      }

      v123[2] = v129 + 1;
      result = sub_5B7C(&v192, &v123[5 * v129 + 4]);
      goto LABEL_105;
    }

    v126 = sub_5B7A8();

    if (v126)
    {
      goto LABEL_114;
    }

    result = sub_5D00(&v193);
LABEL_105:
    ++v121;
    v122 += 40;
    if (v120 == v121)
    {
      goto LABEL_120;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

id sub_1A23C()
{
  v0 = [objc_allocWithZone(SFTitleCardSection) init];
  v1 = sub_5A568();
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];

    v4 = sub_5B338();
  }

  else
  {

    v4 = 0;
  }

  [v0 setTitle:v4];

  [v0 setSeparatorStyle:5];
  return v0;
}

uint64_t sub_1A2F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1A410;

  return sub_15300(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_1A410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_1A524()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A55C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BBF8;

  return sub_155E4(a1, a2, v7);
}

unint64_t sub_1A624()
{
  result = qword_72488;
  if (!qword_72488)
  {
    sub_1A688(&qword_72480, &qword_5C5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72488);
  }

  return result;
}

uint64_t sub_1A688(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1A6F8, 0, 0);
}

uint64_t sub_1A6F8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = [objc_allocWithZone(SFRowCardSection) init];

  v7 = sub_5A358();
  [v6 setLeadingText:v7];

  sub_5B94(&qword_72460, &unk_5C5E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_5C4A0;
  v9 = v6;
  *(v8 + 32) = sub_5A368();
  sub_1AB38(0, &qword_72490, SFAbstractCommand_ptr);
  isa = sub_5B3C8().super.isa;

  [v9 setCommands:isa];

  v11 = [objc_allocWithZone(SFAppIconImage) init];
  v12 = sub_5B338();
  [v11 setBundleIdentifier:v12];

  v13 = v11;
  [v9 setImage:v13];

  [v9 setSeparatorStyle:2];
  v14 = v0[1];
  v15 = v0[2];
  v16 = v0[3];

  return v14(v9, v15, v16);
}

uint64_t sub_1A8E0()
{
  v1 = *(v0 + 16);

  return sub_5AAA8();
}

uint64_t sub_1A95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AA4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1AA84(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5934;

  return sub_12884(a1, a2, v7);
}

uint64_t sub_1AB38(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1AB80()
{
  result = qword_73CD0;
  if (!qword_73CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73CD0);
  }

  return result;
}

uint64_t sub_1ABD4()
{
  v1 = sub_5A318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = (v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  v10(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_1ACF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_5A318() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v7 + v8 + v6) & ~v6;
  v10 = (v9 + v8 + v6) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BBF8;

  return sub_E7CC(a1, v11, v12, v1 + v7, v1 + v9, v1 + v10);
}

uint64_t sub_1AE38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5B94(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppNameDisambiguationFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAMDirectInvocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

void *initializeWithCopy for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

__n128 initializeWithTake for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppNameDisambiguationFlow.AppDisambiguationDisplayInfo(uint64_t result, int a2, int a3)
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

uint64_t *sub_1B1D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v7 = sub_5A638();
      }

      else
      {
        v7 = sub_5A318();
      }

      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}