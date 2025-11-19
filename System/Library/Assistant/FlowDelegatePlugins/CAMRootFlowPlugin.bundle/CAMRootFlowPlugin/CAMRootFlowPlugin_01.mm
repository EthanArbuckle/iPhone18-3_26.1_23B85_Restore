uint64_t sub_1B340(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2 || result == 3)
    {
      v4 = *(a1 + 8);
    }
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = sub_5A638();
    }

    else
    {
      v3 = sub_5A318();
    }

    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1B404(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v5 = sub_5A638();
    }

    else
    {
      v5 = sub_5A318();
    }

    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_1B528(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_1AF68(a1, type metadata accessor for AppNameDisambiguationError);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v5 = sub_5A638();
      }

      else
      {
        v5 = sub_5A318();
      }

      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1B680(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_5A638();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_5A318();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1B7A0(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1AF68(a1, type metadata accessor for AppNameDisambiguationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_5A638();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_5A318();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1B8E4()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_5A638();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for AppNameDisambiguationFlow.Card(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void *sub_1B9F4(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for AppNameDisambiguationFlow.Card(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  return a1;
}

__n128 initializeWithTake for AppNameDisambiguationFlow.Card(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AppNameDisambiguationFlow.Card(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppNameDisambiguationFlow.Card(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppNameDisambiguationFlow.Card(uint64_t result, int a2, int a3)
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

uint64_t sub_1BB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1BC04(uint64_t *a1)
{
  v2 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v157 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5B94(&qword_72530, &qword_5C660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v164 = &v141 - v7;
  v156 = sub_59E38();
  v155 = *(v156 - 8);
  v8 = *(v155 + 64);
  __chkstk_darwin(v156);
  v151 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A318();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_5A8E8();
  v147 = *(v148 - 8);
  v15 = *(v147 + 64);
  v16 = __chkstk_darwin(v148);
  v143 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v144 = &v141 - v18;
  v153 = sub_5A838();
  v152 = *(v153 - 8);
  v19 = *(v152 + 64);
  __chkstk_darwin(v153);
  v160 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_5A858();
  v170 = *(v172 - 8);
  v21 = *(v170 + 64);
  v22 = __chkstk_darwin(v172);
  v146 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v141 - v24;
  v26 = sub_5B94(&unk_72560, &qword_5E3E0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v161 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v142 = &v141 - v31;
  v32 = __chkstk_darwin(v30);
  v149 = &v141 - v33;
  __chkstk_darwin(v32);
  v169 = &v141 - v34;
  v35 = sub_5A7D8();
  v36 = *(v35 - 8);
  v37 = v36[8];
  v38 = __chkstk_darwin(v35);
  v154 = &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v150 = &v141 - v41;
  v42 = __chkstk_darwin(v40);
  v145 = &v141 - v43;
  __chkstk_darwin(v42);
  v45 = &v141 - v44;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v46 = sub_5B228();
  v47 = sub_5B44(v46, qword_763B8);
  v48 = v36[2];
  v174 = a1;
  v158 = v48;
  v159 = v36 + 2;
  v48(v45, a1, v35);
  v173 = v47;
  v49 = sub_5B218();
  v50 = sub_5B4B8();
  v51 = os_log_type_enabled(v49, v50);
  v168 = v10;
  v171 = v11;
  v165 = v35;
  v166 = v14;
  v163 = v36;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v175 = v53;
    *v52 = 136315138;
    sub_29850(&qword_71C90, &type metadata accessor for Input);
    v54 = sub_5B798();
    v56 = v55;
    v162 = v36[1];
    v162(v45, v35);
    v57 = sub_2DC10(v54, v56, &v175);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v49, v50, "AppShortcutEnablementFlow received input %s", v52, 0xCu);
    sub_5D00(v53);

    v10 = v168;
    v11 = v171;
  }

  else
  {

    v162 = v36[1];
    v162(v45, v35);
  }

  v58 = *(v11 + 56);
  v59 = v169;
  v58(v169, 1, 1, v10);
  sub_5A7C8();
  v60 = v170;
  v61 = v10;
  v62 = *(v170 + 88);
  v63 = v172;
  v64 = v62(v25, v172);
  if (v64 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_5D4C(v59, &unk_72560, &qword_5E3E0);
    v58(v59, 1, 1, v61);
    v65 = sub_5B218();
    v66 = sub_5B4C8();
    v67 = v61;
    if (os_log_type_enabled(v65, v66))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_0, v65, v66, "AppShortcutEnablementFlow received unsupported NLv3IntentOnly parse", v68, 2u);
    }

    (*(v170 + 8))(v25, v172);
    goto LABEL_10;
  }

  v141 = v58;
  if (v64 != enum case for Parse.directInvocation(_:))
  {
    if (v64 == enum case for Parse.uso(_:))
    {
      (*(v60 + 96))(v25, v63);
      v81 = v147;
      v82 = v143;
      v83 = v148;
      (*(v147 + 32))(v143, v25, v148);
      v84 = v142;
      sub_2647C(v82, v167 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction, v167 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction, v142);
      (*(v81 + 8))(v82, v83);
      sub_5D4C(v59, &unk_72560, &qword_5E3E0);
      sub_298FC(v84, v59, &unk_72560, &qword_5E3E0);
      v67 = v168;
    }

    else
    {
      sub_5D4C(v59, &unk_72560, &qword_5E3E0);
      v67 = v168;
      v141(v59, 1, 1, v168);
      (*(v60 + 8))(v25, v63);
    }

LABEL_10:
    v69 = v166;
    v70 = v164;
    v71 = v161;
    v72 = v171;
    goto LABEL_26;
  }

  v73 = *(v60 + 96);
  v73(v25, v63);
  (*(v152 + 32))(v160, v25, v153);
  v143 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction;
  v74 = v145;
  v142 = v167 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction;
  sub_5A2F8();
  v75 = v146;
  sub_5A7C8();
  v76 = v172;
  v162(v74, v165);
  if (v62(v75, v76) == enum case for Parse.uso(_:))
  {
    v73(v75, v76);
    v77 = v147;
    v78 = v144;
    v79 = v148;
    (*(v147 + 32))(v144, v75, v148);
    v80 = sub_5A8A8();
    (*(v77 + 8))(v78, v79);
  }

  else
  {
    (*(v60 + 8))(v75, v76);
    v80 = 0;
  }

  v85 = &v143[v167];
  v86 = sub_5A818();
  v88 = v87;
  v89 = sub_5A1A8();
  v90 = [v89 identifier];

  v91 = sub_5B348();
  v93 = v92;

  v70 = v164;
  if (v86 == v91 && v88 == v93)
  {

LABEL_21:
    (*(v152 + 8))(v160, v153);
    v59 = v169;
    sub_5D4C(v169, &unk_72560, &qword_5E3E0);
    if (v80)
    {
      v95 = v142;
    }

    else
    {
      v95 = v85;
    }

    v96 = v149;
    v67 = v168;
    (*(v171 + 16))(v149, v95, v168);
    v97 = 0;
    v98 = v141;
    goto LABEL_25;
  }

  v94 = sub_5B7A8();

  if (v94)
  {
    goto LABEL_21;
  }

  v131 = sub_5A818();
  v133 = v132;
  v134 = sub_5A198();
  v135 = [v134 identifier];

  v136 = sub_5B348();
  v138 = v137;

  if (v131 == v136 && v133 == v138)
  {

    (*(v152 + 8))(v160, v153);
    sub_5D4C(v169, &unk_72560, &qword_5E3E0);
    v98 = v141;
LABEL_45:
    if (v80)
    {
      v140 = v85;
    }

    else
    {
      v140 = v142;
    }

    v96 = v149;
    v67 = v168;
    (*(v171 + 16))(v149, v140, v168);
    v97 = 0;
    v59 = v169;
    goto LABEL_25;
  }

  v139 = sub_5B7A8();

  (*(v152 + 8))(v160, v153);
  sub_5D4C(v169, &unk_72560, &qword_5E3E0);
  v98 = v141;
  if (v139)
  {
    goto LABEL_45;
  }

  v97 = 1;
  v67 = v168;
  v59 = v169;
  v96 = v149;
LABEL_25:
  v98(v96, v97, 1, v67);
  sub_298FC(v96, v59, &unk_72560, &qword_5E3E0);
  v72 = v171;
  v69 = v166;
  v71 = v161;
LABEL_26:
  sub_1AE38(v59, v71, &unk_72560, &qword_5E3E0);
  LODWORD(v172) = (*(v72 + 48))(v71, 1, v67);
  if (v172 == 1)
  {
    sub_5D4C(v71, &unk_72560, &qword_5E3E0);
    v111 = v154;
    v112 = v165;
    v158(v154, v174, v165);
    v113 = sub_5B218();
    v114 = sub_5B4C8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *v115 = 136315394;
      *(v115 + 4) = sub_2DC10(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v175);
      *(v115 + 12) = 2080;
      sub_29850(&qword_71C90, &type metadata accessor for Input);
      v116 = sub_5B798();
      v117 = v59;
      v119 = v118;
      v162(v111, v112);
      v120 = sub_2DC10(v116, v119, &v175);
      v59 = v117;

      *(v115 + 14) = v120;
      _os_log_impl(&dword_0, v113, v114, "%s could not resolve action from %s", v115, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v162(v111, v112);
    }

    sub_5A6B8();
    sub_5A6A8();
    sub_5A678();
  }

  else
  {
    (*(v72 + 32))(v69, v71, v67);
    sub_5A308();
    v99 = v155;
    v100 = v156;
    if ((*(v155 + 48))(v70, 1, v156) == 1)
    {
      sub_5D4C(v70, &qword_72530, &qword_5C660);
      v101 = v150;
      v102 = v165;
      v158(v150, v174, v165);
      v103 = sub_5B218();
      v104 = sub_5B4C8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v175 = v174;
        *v105 = 136315138;
        sub_29850(&qword_71C90, &type metadata accessor for Input);
        v106 = sub_5B798();
        v107 = v59;
        v109 = v108;
        v162(v101, v102);
        v110 = sub_2DC10(v106, v109, &v175);
        v59 = v107;

        *(v105 + 4) = v110;
        _os_log_impl(&dword_0, v103, v104, "AppShortcutEnablementFlow could not extract loggingId from %s", v105, 0xCu);
        sub_5D00(v174);
        v67 = v168;
      }

      else
      {

        v162(v101, v102);
      }
    }

    else
    {
      v121 = v151;
      (*(v99 + 32))(v151, v70, v100);
      sub_5A6B8();
      sub_5A6A8();
      sub_5A698();

      (*(v99 + 8))(v121, v100);
    }

    v122 = v157;
    (*(v72 + 16))(v157, v69, v67);
    v123 = sub_5B94(&qword_71CA0, &unk_5C2B0);
    (*(*(v123 - 8) + 56))(v122, 0, 2, v123);
    v124 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state;
    v125 = v167;
    swift_beginAccess();
    sub_29898(v122, v125 + v124);
    swift_endAccess();
    v126 = sub_5B218();
    v127 = sub_5B4B8();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_0, v126, v127, "AppShortcutEnablementFlow input accepted", v128, 2u);
    }

    (*(v72 + 8))(v69, v67);
  }

  v129 = v172 != 1;
  sub_5D4C(v59, &unk_72560, &qword_5E3E0);
  return v129;
}

uint64_t sub_1D04C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_5A858();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_5A7D8();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = sub_5A8E8();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = *(*(sub_5B94(&unk_72520, &qword_5C320) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = sub_5A638();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v16 = sub_5A318();
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v19 = *(*(type metadata accessor for AppShortcutEnablementFlow.State(0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1D2F8, 0, 0);
}

uint64_t sub_1D2F8()
{
  v88 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[27] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppShortcutEnablementFlow called", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[7];

  v7 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state;
  swift_beginAccess();
  sub_297EC(v6 + v7, v5);
  v8 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v9 = (*(*(v8 - 8) + 48))(v5, 2, v8);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = swift_task_alloc();
      v0[28] = v10;
      *v10 = v0;
      v10[1] = sub_1DC38;
      v11 = v0[6];
      v12 = v0[7];

      return sub_1E184(v11);
    }

    v47 = sub_5B218();
    v48 = sub_5B4C8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "AppShortcutEnablementFlow got invalid respose", v49, 2u);
    }

    v50 = v0[6];

    sub_5A6C8();
    sub_5A148();
    type metadata accessor for CamErrorFlow();
    swift_allocObject();
    v0[5] = sub_3147C(0xD000000000000010, 0x800000000005E9C0, v86, v87);
    sub_29850(&qword_72550, type metadata accessor for CamErrorFlow);
    sub_5A088();

    sub_5A428();

    goto LABEL_24;
  }

  v15 = v0[12];
  v14 = v0[13];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[8];
  v19 = v0[9];
  v20 = v0[7];
  (*(v0[23] + 32))(v0[25], v0[26], v0[22]);
  sub_5A628();
  sub_5B288();

  sub_5A2F8();
  sub_5A7C8();
  (*(v15 + 8))(v14, v16);
  v21 = (*(v19 + 88))(v17, v18);
  v22 = v0[18];
  v23 = v0[19];
  v24 = v0[17];
  if (v21 != enum case for Parse.uso(_:))
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v23 + 56))(v24, 1, 1, v22);
    goto LABEL_18;
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v28 = v0[10];
  (*(v0[9] + 96))(v28, v0[8]);
  (*(v26 + 32))(v25, v28, v27);
  LOBYTE(v87[0]) = 1;
  sub_5A8B8();
  (*(v26 + 8))(v25, v27);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
LABEL_18:
    sub_5D4C(v0[17], &unk_72520, &qword_5C320);
    v51 = sub_5B218();
    v52 = sub_5B4B8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "App Shortcuts declined by user after ambiguous first run prompt", v53, 2u);
    }

    v54 = v0[27];
    (*(v0[23] + 16))(v0[24], v0[25], v0[22]);
    v55 = sub_5B218();
    v56 = sub_5B4C8();
    v57 = os_log_type_enabled(v55, v56);
    v59 = v0[23];
    v58 = v0[24];
    v60 = v0[22];
    if (v57)
    {
      v61 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v87[0] = v85;
      *v61 = 136315138;
      sub_29850(&qword_71C10, &type metadata accessor for PluginAction);
      v62 = sub_5B798();
      v64 = v63;
      v65 = *(v59 + 8);
      v65(v58, v60);
      v66 = sub_2DC10(v62, v64, v87);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_0, v55, v56, "AppShortcutEnablementFlow redirecting to resolved action %s", v61, 0xCu);
      sub_5D00(v85);
    }

    else
    {

      v65 = *(v59 + 8);
      v65(v58, v60);
    }

    v67 = v0[25];
    v68 = v0[22];
    v69 = v0[6];
    sub_5A448();
    v65(v67, v68);
LABEL_24:
    v71 = v0[25];
    v70 = v0[26];
    v72 = v0[24];
    v74 = v0[20];
    v73 = v0[21];
    v76 = v0[16];
    v75 = v0[17];
    v77 = v0[13];
    v78 = v0[10];

    v79 = v0[1];

    return v79();
  }

  v30 = v0[20];
  v29 = v0[21];
  v31 = v0[18];
  v32 = v0[19];
  (*(v32 + 32))(v29, v0[17], v31);
  (*(v32 + 16))(v30, v29, v31);
  v33 = sub_5B218();
  v34 = sub_5B4B8();
  v35 = os_log_type_enabled(v33, v34);
  v37 = v0[19];
  v36 = v0[20];
  v38 = v0[18];
  if (v35)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v87[0] = v40;
    *v39 = 136315138;
    v84 = sub_5A628();
    v42 = v41;
    v45 = *(v37 + 8);
    v44 = v37 + 8;
    v43 = v45;
    v45(v36, v38);
    v46 = sub_2DC10(v84, v42, v87);

    *(v39 + 4) = v46;
    _os_log_impl(&dword_0, v33, v34, "App Shortcuts for %s enabled after ambiguous first run prompt", v39, 0xCu);
    sub_5D00(v40);
  }

  else
  {

    v80 = *(v37 + 8);
    v44 = v37 + 8;
    v43 = v80;
    v80(v36, v38);
  }

  v0[29] = v44;
  v0[30] = v43;
  v81 = async function pointer to AppShortcutInvocation.enableAppShortcuts()[1];
  v82 = swift_task_alloc();
  v0[31] = v82;
  *v82 = v0;
  v82[1] = sub_1DE00;
  v83 = v0[21];

  return AppShortcutInvocation.enableAppShortcuts()();
}

uint64_t sub_1DC38()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_1DD34, 0, 0);
}

uint64_t sub_1DD34()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[13];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DE00()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_1DEFC, 0, 0);
}

uint64_t sub_1DEFC()
{
  v31 = v0;
  v1 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 168), *(v0 + 144));
  v2 = *(v0 + 216);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  v3 = sub_5B218();
  v4 = sub_5B4C8();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v9 = 136315138;
    sub_29850(&qword_71C10, &type metadata accessor for PluginAction);
    v10 = sub_5B798();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v6, v8);
    v14 = sub_2DC10(v10, v12, &v30);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "AppShortcutEnablementFlow redirecting to resolved action %s", v9, 0xCu);
    sub_5D00(v29);
  }

  else
  {

    v13 = *(v7 + 8);
    v13(v6, v8);
  }

  v15 = *(v0 + 200);
  v16 = *(v0 + 176);
  v17 = *(v0 + 48);
  sub_5A448();
  v13(v15, v16);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 192);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1E184(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = sub_5A718();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v9 = *(v8 + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = *(*(sub_5B94(&qword_72530, &qword_5C660) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_59E38();
  v2[26] = v11;
  v12 = *(v11 - 8);
  v2[27] = v12;
  v13 = *(v12 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1E36C, 0, 0);
}

uint64_t sub_1E36C()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[29] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppShortcutEnablementFlow attempting to render confirmation", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1E4C4;
  v6 = v0[17];

  return sub_1EDA0((v0 + 7));
}

uint64_t sub_1E4C4()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1EBAC;
  }

  else
  {
    v3 = sub_1E5D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1E5D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 136);
  sub_1BBFC((v0 + 56), v0 + 16);
  sub_5A308();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 232);
    sub_5D4C(*(v0 + 200), &qword_72530, &qword_5C660);
    v6 = sub_5B218();
    v7 = sub_5B4B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "AppShortcutEnablementFlow could not extract loggingIds for action. SELF message was not emitted as a result.", v8, 2u);
    }
  }

  else
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    (*(v10 + 32))(v9, *(v0 + 200), v11);
    sub_5A6B8();
    sub_5A6A8();
    sub_5B94(&unk_72540, &unk_5C670);
    v15 = *(v10 + 72);
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_5C390;
    (*(v10 + 16))(v17 + v16, v9, v11);
    (*(v13 + 104))(v12, enum case for CAMDisambiguationDialogType.shortcutEnablement(_:), v14);
    sub_5A688();

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 136);
  v19 = v18[31];
  v20 = v18[32];
  sub_5CBC(v18 + 28, v19);
  v21 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_1E8A0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v19, v20);
}

uint64_t sub_1E8A0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_29B68;
  }

  else
  {
    v3 = sub_1E9B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1E9B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v17 = v0[16];
  v6 = v5[17];
  sub_5CBC(v5 + 13, v5[16]);
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
  v10 = v0[28];
  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[21];
  v14 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1EBAC()
{
  v25 = v0;
  v1 = v0[31];
  v2 = v0[29];
  swift_errorRetain();
  v3 = sub_5B218();
  v4 = sub_5B4C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = sub_5B7E8();
    v13 = sub_2DC10(v11, v12, &v24);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "AppShortcutEnablementFlow will redirect to fall back action. Error: %s", v6, 0xCu);
    sub_5D00(v7);
  }

  v14 = v0[31];
  v15 = v0[16];
  v16 = v0[17];
  sub_5A448();

  v17 = v0[28];
  v18 = v0[24];
  v19 = v0[25];
  v20 = v0[21];
  v21 = v0[18];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1EDA0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_59E68();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1EE60, 0, 0);
}

uint64_t sub_1EE60()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v0[8] = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutInvocation;
  v5 = v4[7];
  sub_5CBC(v4 + 3, v4[6]);
  sub_5A208();
  v6 = sub_59E48();
  v8 = v7;
  v0[9] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = async function pointer to AppShortcutInvocation.getAppShortcuts(siriLanguage:provider:)[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1EF7C;

  return AppShortcutInvocation.getAppShortcuts(siriLanguage:provider:)(v6, v8, v4 + 18);
}

uint64_t sub_1EF7C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1F09C, 0, 0);
}

uint64_t sub_1F09C()
{
  if (qword_71A58 != -1)
  {
LABEL_42:
    swift_once();
  }

  v1 = p_weak_ivar_lyt[11];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  LOBYTE(v4) = sub_5B4B8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = p_weak_ivar_lyt[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      goto LABEL_47;
    }

    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
    v9 = p_weak_ivar_lyt[11];
    *(v7 + 4) = v8;

    _os_log_impl(&dword_0, v3, v4, "auto shortcuts count: %ld", v7, 0xCu);
  }

  else
  {
    v10 = p_weak_ivar_lyt[11];
  }

  v11 = p_weak_ivar_lyt[11];
  v12 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v49 = p_weak_ivar_lyt[11];
    }

    v3 = sub_5B678();
    v11 = p_weak_ivar_lyt[11];
  }

  else
  {
    v3 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v52 = p_weak_ivar_lyt;
  p_weak_ivar_lyt[12] = _swiftEmptyArrayStorage;
  if (!v3)
  {
    v53 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v4 = 0;
  v13 = v6 & 0xC000000000000001;
  v14 = v11 + 32;
  v53 = _swiftEmptyArrayStorage;
  p_weak_ivar_lyt = &GiveUpRepeatFlow.weak_ivar_lyt;
  do
  {
    v7 = v4;
    while (1)
    {
      if (v13)
      {
        v18 = v52[11];
        v15 = sub_5B5B8();
      }

      else
      {
        if (v7 >= *(v12 + 16))
        {
          goto LABEL_41;
        }

        v15 = *(v14 + 8 * v7);
      }

      v6 = v15;
      v4 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v16 = [v15 orderedPhrases];
      sub_29480();
      v17 = sub_5B3D8();

      if (v17 >> 62)
      {
        break;
      }

      if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_22;
      }

LABEL_18:

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_33;
      }
    }

    if (!sub_5B678())
    {
      goto LABEL_18;
    }

LABEL_22:
    if ((v17 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        v19 = *(v17 + 32);
        goto LABEL_25;
      }

      __break(1u);
LABEL_47:
      if (p_weak_ivar_lyt[11] < 0)
      {
        v50 = p_weak_ivar_lyt[11];
      }

      v8 = sub_5B678();
      goto LABEL_5;
    }

    v19 = sub_5B5B8();
LABEL_25:
    v20 = v19;

    v21 = [v20 localizedPhrase];

    v22 = sub_5B348();
    v24 = v23;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_585F4(0, *(v53 + 2) + 1, 1, v53);
    }

    v26 = *(v53 + 2);
    v25 = *(v53 + 3);
    if (v26 >= v25 >> 1)
    {
      v53 = sub_585F4((v25 > 1), v26 + 1, 1, v53);
    }

    *(v53 + 2) = v26 + 1;
    v27 = &v53[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v24;
    v52[12] = v53;
  }

  while (v4 != v3);
LABEL_33:
  v28 = v52[11];
  v29 = v52[8];
  v30 = v52[4];

  v31 = sub_5A628();
  v33 = sub_35C44(v31, v32);
  v35 = v34;

  v52[13] = v33;
  v52[14] = v35;
  v36 = v52[4];
  if (v35)
  {
    v37 = sub_5B94(&qword_728F0, &qword_5C8F0);
    v38 = swift_task_alloc();
    v52[15] = v38;
    *(v38 + 16) = v53;
    *(v38 + 24) = v36;
    v39 = sub_5B94(&qword_72500, &unk_5C640);
    v40 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v41 = swift_task_alloc();
    v52[16] = v41;
    *v41 = v52;
    v41[1] = sub_1F5DC;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v52 + 2, v37, v39, 0, 0, &unk_5C900, v38, v37);
  }

  else
  {
    v42 = v52[8];

    v43 = sub_5A628();
    v45 = v44;
    sub_294CC();
    swift_allocError();
    *v46 = v43;
    v46[1] = v45;
    swift_willThrow();
    v47 = v52[7];

    v48 = v52[1];

    return v48();
  }
}

uint64_t sub_1F5DC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_1F710, 0, 0);
}

uint64_t sub_1F710()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[17] = v2;
  v3 = v1[7];
  sub_5CBC(v1 + 3, v1[6]);
  if (sub_5A238())
  {
    v4 = v0[14];
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_1F910;
    v6 = v0[13];
    v7 = v0[3];
    v8 = v0[4];

    return sub_1FCF4(v7, v6, v4, v2);
  }

  else
  {
    v10 = v0[4];
    v11 = v10[7];
    sub_5CBC(v10 + 3, v10[6]);
    v12 = sub_5A228();
    v13 = v0[14];
    if (v12)
    {
      v14 = swift_task_alloc();
      v0[19] = v14;
      *v14 = v0;
      v14[1] = sub_1FA5C;
      v15 = v0[13];
      v16 = v0[3];
      v17 = v0[4];

      return sub_205D4(v16, v15, v13, v2);
    }

    else
    {
      v18 = swift_task_alloc();
      v0[20] = v18;
      *v18 = v0;
      v18[1] = sub_1FBA8;
      v19 = v0[13];
      v20 = v0[3];
      v21 = v0[4];

      return sub_2185C(v20, v19, v13, v2);
    }
  }
}

uint64_t sub_1F910()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v8 = *v0;

  v3 = v1[17];
  v4 = v1[14];

  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1FA5C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v8 = *v0;

  v3 = v1[17];
  v4 = v1[14];

  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1FBA8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v8 = *v0;

  v3 = v1[17];
  v4 = v1[14];

  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v7 = sub_5A488();
  v5[35] = v7;
  v8 = *(v7 - 8);
  v5[36] = v8;
  v9 = *(v8 + 64) + 15;
  v5[37] = swift_task_alloc();
  v10 = sub_5A648();
  v5[38] = v10;
  v11 = *(v10 - 8);
  v5[39] = v11;
  v12 = *(v11 + 64) + 15;
  v5[40] = swift_task_alloc();
  v13 = sub_5A588();
  v5[41] = v13;
  v14 = *(v13 - 8);
  v5[42] = v14;
  v15 = *(v14 + 64) + 15;
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_1FEAC, 0, 0);
}

uint64_t sub_1FEAC()
{
  v1 = v0[32];
  v2 = v1[2];
  if (v2)
  {
    v4 = v1[4];
    v3 = v1[5];

    if (v2 == 1)
    {
      v17 = 0;
      v5 = 0xE000000000000000;
    }

    else
    {
      v5 = v1[7];
      v17 = v1[6];
    }

    v2 = v4;
  }

  else
  {
    v17 = 0;
    v3 = 0xE000000000000000;
    v5 = 0xE000000000000000;
  }

  v6 = v0[39];
  v18 = v0[38];
  v19 = v0[40];
  v7 = v0[30];
  v8 = v0[31];
  v9 = sub_5CBC((*(v0[33] + 264) + 16), *(*(v0[33] + 264) + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C780;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7268507473726966;
  *(inited + 88) = 0xEB00000000657361;
  *(inited + 96) = v2;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "secondPhrase");
  *(inited + 168) = &type metadata for String;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v17;
  *(inited + 152) = v5;

  v11 = sub_3802C(inited);
  v0[44] = v11;
  swift_setDeallocating();
  sub_5B94(&unk_72450, &unk_5C470);
  swift_arrayDestroy();
  (*(v6 + 104))(v19, enum case for BehaviorAfterSpeaking.listen(_:), v18);
  v12 = *v9;
  v13 = swift_task_alloc();
  v0[45] = v13;
  *v13 = v0;
  v13[1] = sub_20110;
  v14 = v0[43];
  v15 = v0[40];

  return sub_3468C(v14, 0xD000000000000033, 0x800000000005EC00, v11);
}

uint64_t sub_20110()
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 352);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 312);
  v6 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 368) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_202A4;
  }

  else
  {
    v7 = sub_20334;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_202A4()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[34];

  v5 = v0[1];
  v6 = v0[46];

  return v5();
}

uint64_t sub_20334()
{
  v1 = *(v0 + 344);
  v15 = *(v0 + 336);
  v16 = *(v0 + 328);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v17 = *(v0 + 320);
  v18 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  sub_5A478();
  sub_5B94(&qword_72518, &unk_5C650);
  v7 = *(sub_5AA98() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5C390;
  sub_24F58(v10 + v9);
  sub_5A458();
  v11 = v5[7];
  sub_5CBC(v5 + 3, v5[6]);
  sub_5A218();
  sub_5A558(1);
  (*(v3 + 16))(v4, v2, v18);
  (*(v3 + 56))(v4, 0, 1, v18);
  v12 = sub_5A908();
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  v6[3] = v12;
  v6[4] = &protocol witness table for AceOutput;
  sub_5F2C(v6);
  sub_5A3D8();
  sub_5D4C(v0 + 192, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  (*(v3 + 8))(v2, v18);
  (*(v15 + 8))(v1, v16);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_205D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v7 = *(*(sub_5A298() - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v8 = sub_5A708();
  v5[31] = v8;
  v9 = *(v8 - 8);
  v5[32] = v9;
  v10 = *(v9 + 64) + 15;
  v5[33] = swift_task_alloc();
  v11 = sub_5A048();
  v5[34] = v11;
  v12 = *(v11 - 8);
  v5[35] = v12;
  v13 = *(v12 + 64) + 15;
  v5[36] = swift_task_alloc();
  v14 = sub_5A3B8();
  v5[37] = v14;
  v15 = *(v14 - 8);
  v5[38] = v15;
  v16 = *(v15 + 64) + 15;
  v5[39] = swift_task_alloc();
  v17 = sub_5A5B8();
  v5[40] = v17;
  v18 = *(v17 - 8);
  v5[41] = v18;
  v19 = *(v18 + 64) + 15;
  v5[42] = swift_task_alloc();
  v20 = sub_5A488();
  v5[43] = v20;
  v21 = *(v20 - 8);
  v5[44] = v21;
  v22 = *(v21 + 64) + 15;
  v5[45] = swift_task_alloc();
  v23 = sub_5A588();
  v5[46] = v23;
  v24 = *(v23 - 8);
  v5[47] = v24;
  v25 = *(v24 + 64) + 15;
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_208CC, 0, 0);
}

uint64_t sub_208CC()
{
  v1 = *(v0[28] + 264);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_2096C;
  v3 = v0[48];
  v4 = v0[25];
  v5 = v0[26];

  return sub_302E4(v3, v4, v5);
}

uint64_t sub_2096C()
{
  v2 = *(*v1 + 392);
  v3 = *v1;
  v3[50] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_29B6C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[51] = v4;
    *v4 = v3;
    v4[1] = sub_20AD8;
    v5 = v3[28];

    return sub_231FC();
  }
}

uint64_t sub_20AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 408);
  v10 = *v5;
  v6[52] = a1;
  v6[53] = a2;
  v6[54] = a3;
  v6[55] = a4;
  v6[56] = v4;

  if (v4)
  {
    v8 = sub_29B70;
  }

  else
  {
    v8 = sub_20BF4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_20BF4()
{
  v1 = *(v0[27] + 16);
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_20C90;
  v3 = v0[28];

  return sub_237E4(v1);
}

uint64_t sub_20C90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 456);
  v10 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v6 = v4[55];
    v7 = v4[53];

    v8 = sub_29B74;
  }

  else
  {
    v8 = sub_20DBC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_20DBC()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[45];
  v6 = v0[28];
  v17 = v0[26];
  v0[61] = sub_5A628();
  v0[62] = v7;

  sub_5A478();
  sub_5B94(&qword_72518, &unk_5C650);
  v8 = *(sub_5AA98() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5C390;
  sub_25964(v11 + v10);
  sub_5A458();

  v12 = *sub_5CBC((v6 + 272), *(v6 + 296));

  v13 = swift_task_alloc();
  v0[63] = v13;
  *v13 = v0;
  v13[1] = sub_20FAC;
  v14 = v0[25];
  v15 = v0[26];

  return sub_2FF00(0, v12, v14, v15);
}

uint64_t sub_20FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v13 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v5 = v3[62];
    v6 = v3[59];
    v7 = v3[55];
    v8 = v3[53];
    v9 = v3[26];

    v10 = sub_29B7C;
  }

  else
  {
    v11 = v3[26];

    v10 = sub_21114;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_21114()
{
  v1 = *(v0 + 384);
  v2 = sub_5A578();
  if (*(v2 + 16))
  {
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    sub_5A5A8();
    (*(v4 + 8))(v3, v5);
    v9 = sub_5A3A8();
    v11 = v10;
    (*(v8 + 8))(v6, v7);
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 440);
  v15 = *(v0 + 424);
  v16 = *(v0 + 416);
  *(v0 + 104) = *(v0 + 216);
  *(v0 + 112) = v16;
  *(v0 + 120) = v15;
  *(v0 + 136) = v14;
  *(v0 + 144) = *(v0 + 464);
  *(v0 + 160) = v9;
  *(v0 + 168) = v11;
  *(v0 + 176) = v13;
  *(v0 + 184) = v12;
  v17 = *(v0 + 136);
  v18 = *(v0 + 152);
  v19 = *(v0 + 168);
  *(v0 + 96) = v12;
  *(v0 + 64) = v18;
  *(v0 + 80) = v19;
  v20 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v17;
  *(v0 + 16) = v20;

  v21 = swift_task_alloc();
  *(v0 + 528) = v21;
  *v21 = v0;
  v21[1] = sub_212D0;
  v22 = *(v0 + 288);

  return sub_2AE90(v22);
}

uint64_t sub_212D0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v6 = *v1;
  *(v2 + 536) = v0;

  sub_2942C(v2 + 104);
  if (v0)
  {
    v4 = sub_29B80;
  }

  else
  {
    v4 = sub_213EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_213EC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_29850(&qword_728D8, &type metadata accessor for Response);
  v4 = sub_59FB8();
  if (v1)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 336);
    v15 = *(v0 + 312);
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 512);
    v23 = *(v0 + 384);
    v24 = *(v0 + 352);
    v39 = *(v0 + 344);
    v40 = *(v0 + 360);
    v25 = *(v0 + 264);
    v26 = *(v0 + 232);
    v27 = *(v0 + 240);
    v28 = v4;
    v29 = v5;
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    isa = sub_59E08().super.isa;
    sub_293D8(v28, v29);
    [v22 setVisual:isa];

    sub_5A268();
    sub_5A6D8();
    sub_5A558(1);
    sub_5A6F8();
    (*(v24 + 16))(v26, v40, v39);
    (*(v24 + 56))(v26, 0, 1, v39);
    sub_5A6E8();
    v31 = sub_5A4A8();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    *(v0 + 544) = sub_5A498();
    v34 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + 1);
    v41 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:));
    v35 = swift_task_alloc();
    *(v0 + 552) = v35;
    *v35 = v0;
    v35[1] = sub_21728;
    v36 = *(v0 + 512);
    v37 = *(v0 + 264);
    v38 = *(v0 + 192);

    return v41(v38, v36, v37);
  }
}

uint64_t sub_21728()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 544);

  if (v0)
  {
    v6 = sub_29B78;
  }

  else
  {
    v6 = sub_29B84;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v7 = *(*(sub_5A298() - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v8 = sub_5A708();
  v5[31] = v8;
  v9 = *(v8 - 8);
  v5[32] = v9;
  v10 = *(v9 + 64) + 15;
  v5[33] = swift_task_alloc();
  v11 = sub_5A048();
  v5[34] = v11;
  v12 = *(v11 - 8);
  v5[35] = v12;
  v13 = *(v12 + 64) + 15;
  v5[36] = swift_task_alloc();
  v14 = sub_5A3B8();
  v5[37] = v14;
  v15 = *(v14 - 8);
  v5[38] = v15;
  v16 = *(v15 + 64) + 15;
  v5[39] = swift_task_alloc();
  v17 = sub_5A5B8();
  v5[40] = v17;
  v18 = *(v17 - 8);
  v5[41] = v18;
  v19 = *(v18 + 64) + 15;
  v5[42] = swift_task_alloc();
  v20 = sub_5A488();
  v5[43] = v20;
  v21 = *(v20 - 8);
  v5[44] = v21;
  v22 = *(v21 + 64) + 15;
  v5[45] = swift_task_alloc();
  v23 = sub_5A588();
  v5[46] = v23;
  v24 = *(v23 - 8);
  v5[47] = v24;
  v25 = *(v24 + 64) + 15;
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_21B54, 0, 0);
}

uint64_t sub_21B54()
{
  v1 = *(v0[28] + 264);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_21BF4;
  v3 = v0[48];
  v4 = v0[25];
  v5 = v0[26];

  return sub_302E4(v3, v4, v5);
}

uint64_t sub_21BF4()
{
  v2 = *(*v1 + 392);
  v3 = *v1;
  v3[50] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_21E7C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[51] = v4;
    *v4 = v3;
    v4[1] = sub_21D60;
    v5 = v3[28];

    return sub_231FC();
  }
}

uint64_t sub_21D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 408);
  v10 = *v5;
  v6[52] = a1;
  v6[53] = a2;
  v6[54] = a3;
  v6[55] = a4;
  v6[56] = v4;

  if (v4)
  {
    v8 = sub_22EFC;
  }

  else
  {
    v8 = sub_21F48;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_21E7C()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];

  v10 = v0[1];

  return v10();
}

uint64_t sub_21F48()
{
  v1 = *(v0[27] + 16);
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_21FE4;
  v3 = v0[28];

  return sub_237E4(v1);
}

uint64_t sub_21FE4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 456);
  v10 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v6 = v4[55];
    v7 = v4[53];

    v8 = sub_22FE0;
  }

  else
  {
    v8 = sub_22110;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_22110()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[45];
  v6 = v0[28];
  v17 = v0[26];
  v0[61] = sub_5A628();
  v0[62] = v7;

  sub_5A478();
  sub_5B94(&qword_72518, &unk_5C650);
  v8 = *(sub_5AA98() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5C390;
  sub_25964(v11 + v10);
  sub_5A458();

  v12 = *sub_5CBC((v6 + 272), *(v6 + 296));

  v13 = swift_task_alloc();
  v0[63] = v13;
  *v13 = v0;
  v13[1] = sub_22300;
  v14 = v0[25];
  v15 = v0[26];

  return sub_2FF00(0, v12, v14, v15);
}

uint64_t sub_22300(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v13 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v5 = v3[62];
    v6 = v3[59];
    v7 = v3[55];
    v8 = v3[53];
    v9 = v3[26];

    v10 = sub_22624;
  }

  else
  {
    v11 = v3[26];

    v10 = sub_22468;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_22468()
{
  v1 = *(v0 + 384);
  v2 = sub_5A578();
  if (*(v2 + 16))
  {
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    sub_5A5A8();
    (*(v4 + 8))(v3, v5);
    v9 = sub_5A3A8();
    v11 = v10;
    (*(v8 + 8))(v6, v7);
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 440);
  v15 = *(v0 + 424);
  v16 = *(v0 + 416);
  *(v0 + 104) = *(v0 + 216);
  *(v0 + 112) = v16;
  *(v0 + 120) = v15;
  *(v0 + 136) = v14;
  *(v0 + 144) = *(v0 + 464);
  *(v0 + 160) = v9;
  *(v0 + 168) = v11;
  *(v0 + 176) = v13;
  *(v0 + 184) = v12;
  v17 = *(v0 + 136);
  v18 = *(v0 + 152);
  v19 = *(v0 + 168);
  *(v0 + 96) = v12;
  *(v0 + 64) = v18;
  *(v0 + 80) = v19;
  v20 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v17;
  *(v0 + 16) = v20;

  v21 = swift_task_alloc();
  *(v0 + 528) = v21;
  *v21 = v0;
  v21[1] = sub_22724;
  v22 = *(v0 + 288);

  return sub_29B8C(v22);
}

uint64_t sub_22624()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[65];
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[42];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22724()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v6 = *v1;
  *(v2 + 536) = v0;

  sub_29384(v2 + 104);
  if (v0)
  {
    v4 = sub_22B7C;
  }

  else
  {
    v4 = sub_22840;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_22840()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_29850(&qword_728D8, &type metadata accessor for Response);
  v4 = sub_59FB8();
  if (v1)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);

    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v12 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 336);
    v15 = *(v0 + 312);
    v16 = *(v0 + 288);
    v17 = *(v0 + 264);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 512);
    v23 = *(v0 + 384);
    v24 = *(v0 + 352);
    v39 = *(v0 + 344);
    v40 = *(v0 + 360);
    v25 = *(v0 + 264);
    v26 = *(v0 + 232);
    v27 = *(v0 + 240);
    v28 = v4;
    v29 = v5;
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    isa = sub_59E08().super.isa;
    sub_293D8(v28, v29);
    [v22 setVisual:isa];

    sub_5A268();
    sub_5A6D8();
    sub_5A558(1);
    sub_5A6F8();
    (*(v24 + 16))(v26, v40, v39);
    (*(v24 + 56))(v26, 0, 1, v39);
    sub_5A6E8();
    v31 = sub_5A4A8();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    *(v0 + 544) = sub_5A498();
    v34 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + 1);
    v41 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:));
    v35 = swift_task_alloc();
    *(v0 + 552) = v35;
    *v35 = v0;
    v35[1] = sub_22C8C;
    v36 = *(v0 + 512);
    v37 = *(v0 + 264);
    v38 = *(v0 + 192);

    return v41(v38, v36, v37);
  }
}

uint64_t sub_22B7C()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 384);
  v9 = *(v0 + 360);
  v10 = *(v0 + 336);
  v11 = *(v0 + 312);
  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 544);

  if (v0)
  {
    v6 = sub_230C4;
  }

  else
  {
    v6 = sub_22DC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_22DC0()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);
  v14 = *(v0 + 288);
  v15 = *(v0 + 240);
  v16 = *(v0 + 232);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22EFC()
{
  (*(v0[47] + 8))(v0[48], v0[46]);
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FE0()
{
  (*(v0[47] + 8))(v0[48], v0[46]);
  v1 = v0[60];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];

  v10 = v0[1];

  return v10();
}

uint64_t sub_230C4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 248);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 560);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 336);
  v14 = *(v0 + 312);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  v18 = *(v0 + 232);
  v17 = *(v0 + 240);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_231FC()
{
  v1[2] = v0;
  v2 = sub_5A3B8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_5A5B8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_5A588();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_23374, 0, 0);
}

uint64_t sub_23374()
{
  v1 = *(v0[2] + 264);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_23410;
  v3 = v0[11];

  return sub_30714(v3);
}

uint64_t sub_23410()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_23768;
  }

  else
  {
    v3 = sub_23524;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_23524()
{
  v1 = v0[11];
  v2 = *(sub_5A578() + 16);

  if (v2 != 2)
  {
    v23 = 0;
    v19 = 0;
    v24 = 0xE000000000000000;
    v21 = 0xE000000000000000;
    goto LABEL_6;
  }

  v3 = v0[11];
  result = sub_5A578();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v31 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v29 = *(v6 + 16);
  v29(v5, result + v11, v7);

  sub_5A5A8();
  v12 = *(v6 + 8);
  v12(v5, v7);
  v13 = sub_5A3A8();
  v30 = v14;
  v28 = *(v10 + 8);
  v28(v8, v9);
  result = sub_5A578();
  if (*(result + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  v32 = v13;
  v18 = v0[3];
  v29(v15, result + v11 + *(v0[7] + 72), v16);

  sub_5A5A8();
  v12(v15, v16);
  v19 = sub_5A3A8();
  v21 = v20;
  v22 = v18;
  v23 = v32;
  v28(v17, v22);
  v24 = v30;
LABEL_6:
  v25 = v0[8];
  v26 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v27 = v0[1];

  return v27(v23, v24, v19, v21);
}

uint64_t sub_23768()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_237E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_5A3B8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_5A5B8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_5A588();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_2395C, 0, 0);
}

uint64_t sub_2395C()
{
  v1 = v0[2];
  if (v1 < 4)
  {
    v7 = v0[12];
    v8 = v0[9];
    v9 = v0[6];

    v10 = v0[1];

    return v10(0, 0);
  }

  else
  {
    v2 = *(v0[3] + 264);
    v3 = (v1 - 3);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_23A78;
    v5 = v0[12];

    return sub_30B28(v5, v3);
  }
}

uint64_t sub_23A78()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23D18;
  }

  else
  {
    v3 = sub_23B8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_23B8C()
{
  v1 = v0[12];
  v2 = sub_5A578();
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  if (*(v2 + 16))
  {
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v19 = v0[4];
    (*(v7 + 16))(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_5A5A8();
    (*(v7 + 8))(v6, v8);
    v11 = sub_5A3A8();
    v13 = v12;
    (*(v10 + 8))(v9, v19);
    (*(v4 + 8))(v3, v5);
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v11 = 0;
    v13 = 0;
  }

  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[6];

  v17 = v0[1];

  return v17(v11, v13);
}

uint64_t sub_23D18()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_23D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_5A3B8();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = sub_5A5B8();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v11 = sub_5B94(&qword_728F0, &qword_5C8F0);
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v13 = *(v12 + 64) + 15;
  v4[22] = swift_task_alloc();
  v14 = sub_5A588();
  v4[23] = v14;
  v15 = *(v14 - 8);
  v4[24] = v15;
  v16 = *(v15 + 64) + 15;
  v4[25] = swift_task_alloc();
  v17 = *(*(sub_5B94(&qword_73CA0, &qword_5C910) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v18 = *(*(sub_5B94(&qword_728F8, &qword_5C918) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v19 = sub_5B94(&qword_72900, &qword_5C920);
  v4[29] = v19;
  v20 = *(v19 - 8);
  v4[30] = v20;
  v21 = *(v20 + 64) + 15;
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_2405C, 0, 0);
}

uint64_t sub_2405C()
{
  v1 = v0[12];
  v43 = *(v1 + 16);
  if (v43)
  {
    v39 = v0 + 2;
    v2 = 0;
    v42 = sub_5B468();
    v3 = *(v42 - 8);
    v41 = *(v3 + 56);
    v40 = (v3 + 48);
    v38 = (v3 + 8);
    v4 = (v1 + 40);
    v5 = &qword_73CA0;
    do
    {
      v10 = v0[26];
      v9 = v0[27];
      v11 = v0[13];
      v12 = v0;
      v13 = v5;
      v14 = v2;
      v15 = *(v4 - 1);
      v16 = *v4;
      v41(v9, 1, 1, v42);
      v17 = swift_allocObject();
      v17[2] = 0;
      v44 = v17 + 2;
      v17[3] = 0;
      v17[4] = v11;
      v17[5] = v15;
      v17[6] = v16;
      v18 = v14;
      v5 = v13;
      v0 = v12;
      v17[7] = v18;
      sub_1AE38(v9, v10, v5, &qword_5C910);
      LODWORD(v10) = (*v40)(v10, 1, v42);

      v19 = v12[26];
      if (v10 == 1)
      {
        sub_5D4C(v12[26], v5, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*v38)(v19, v42);
      }

      if (*v44)
      {
        v20 = v17[3];
        v21 = *v44;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_5B418();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = *v12[11];
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_5C930;
      *(v26 + 24) = v17;

      if (v24 | v22)
      {
        v6 = v39;
        *v39 = 0;
        v39[1] = 0;
        v12[4] = v22;
        v12[5] = v24;
      }

      else
      {
        v6 = 0;
      }

      v2 = v18 + 1;
      v4 += 2;
      v7 = v12[27];
      v8 = v12[20];
      v12[6] = 1;
      v12[7] = v6;
      v12[8] = v25;
      swift_task_create();

      sub_5D4C(v7, v5, &qword_5C910);
    }

    while (v43 != v2);
  }

  v27 = v0[31];
  v28 = v0[20];
  v29 = v0[11];
  v30 = sub_38458(_swiftEmptyArrayStorage);
  v31 = *v29;
  sub_5B428();
  v0[32] = v30;
  v0[33] = v30;
  v32 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v33 = swift_task_alloc();
  v0[34] = v33;
  *v33 = v0;
  v33[1] = sub_243EC;
  v34 = v0[31];
  v35 = v0[28];
  v36 = v0[29];

  return TaskGroup.Iterator.next(isolation:)(v35, 0, 0, v36);
}

uint64_t sub_243EC()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_244E8, 0, 0);
}

uint64_t sub_244E8()
{
  v72 = v0;
  v1 = *(v0 + 224);
  if ((*(*(v0 + 168) + 48))(v1, 1, *(v0 + 160)) == 1)
  {
    v2 = *(v0 + 264);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    v3 = *(v2 + 16);
    v4 = _swiftEmptyArrayStorage;
    if (!v3 || (v5 = *(v0 + 264), v4 = sub_28560(v3, 0), v6 = sub_29078(&v71, v4 + 4, v3, v5), LOBYTE(v7) = v71, , v8 = sub_297E0(), v6 == v3))
    {
      v71 = v4;
      sub_285F0(&v71);
      v29 = v71;
      v30 = v71[2];
      if (v30)
      {
        v70 = v0;
        v71 = _swiftEmptyArrayStorage;
        sub_37758(0, v30, 0);
        v31 = 0;
        v32 = v71;
        v33 = v71[2];
        v34 = 2 * v33;
        do
        {
          v35 = v29;
          v37 = v29[v31 + 5];
          v36 = v29[v31 + 6];
          v71 = v32;
          v38 = v32[3];
          v39 = v33 + 1;

          if (v33 >= v38 >> 1)
          {
            sub_37758((v38 > 1), v39, 1);
            v32 = v71;
          }

          v32[2] = v39;
          v40 = &v32[v34];
          v40[4] = v37;
          v40[5] = v36;
          v34 += 2;
          v31 += 3;
          ++v33;
          --v30;
          v29 = v35;
        }

        while (v30);
        v0 = v70;
        v41 = *(v70 + 264);
      }

      else
      {
        v49 = *(v0 + 264);

        v32 = _swiftEmptyArrayStorage;
      }

      v50 = *(v0 + 248);
      v51 = *(v0 + 216);
      v52 = *(v0 + 224);
      v54 = *(v0 + 200);
      v53 = *(v0 + 208);
      v55 = *(v0 + 176);
      v56 = *(v0 + 152);
      v57 = *(v0 + 128);
      **(v0 + 80) = v32;

      v58 = *(v0 + 8);

      return v58();
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(v0 + 176);
  sub_298FC(v1, v9, &qword_728F0, &qword_5C8F0);
  v10 = sub_5B94(&qword_72908, &qword_5C948);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_5D4C(*(v0 + 176), &qword_728F0, &qword_5C8F0);
    goto LABEL_32;
  }

  v11 = *(v0 + 176);
  v4 = *v11;
  (*(*(v0 + 192) + 32))(*(v0 + 200), &v11[*(v10 + 48)], *(v0 + 184));
  v12 = sub_5A578();
  if (!*(v12 + 16))
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v42 = *(v0 + 256);
LABEL_31:
    *(v0 + 256) = v42;
LABEL_32:
    v66 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v67 = swift_task_alloc();
    *(v0 + 272) = v67;
    *v67 = v0;
    v67[1] = sub_243EC;
    v68 = *(v0 + 248);
    v60 = *(v0 + 224);
    v63 = *(v0 + 232);
    v61 = 0;
    v62 = 0;

    return TaskGroup.Iterator.next(isolation:)(v60, v61, v62, v63);
  }

  v13 = *(v0 + 256);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v7 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  (*(v15 + 16))(v14, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v16);

  sub_5A5A8();
  (*(v15 + 8))(v14, v16);
  v6 = sub_5A3A8();
  v5 = v19;
  (*(v18 + 8))(v7, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v13;
  v8 = sub_37334(v4);
  v22 = *(v13 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    goto LABEL_36;
  }

  LOBYTE(v7) = v21;
  if (*(*(v0 + 256) + 24) >= v25)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v69 = v8;
      sub_419B0();
      v8 = v69;
    }

LABEL_22:
    v43 = *(v0 + 72);
    v44 = *(v0 + 200);
    v45 = *(v0 + 184);
    v46 = (*(v0 + 192) + 8);
    if (v7)
    {
      v47 = (v43[7] + 16 * v8);
      v48 = v47[1];
      *v47 = v6;
      v47[1] = v5;

      (*v46)(v44, v45);
    }

    else
    {
      v43[(v8 >> 6) + 8] |= 1 << v8;
      *(v43[6] + 8 * v8) = v4;
      v59 = (v43[7] + 16 * v8);
      *v59 = v6;
      v59[1] = v5;
      v60 = (*v46)(v44, v45);
      v64 = v43[2];
      v24 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v24)
      {
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v60, v61, v62, v63);
      }

      v43[2] = v65;
    }

    v42 = vdupq_n_s64(v43);
    goto LABEL_31;
  }

  sub_41588(v25, isUniquelyReferenced_nonNull_native);
  v26 = *(v0 + 72);
  v8 = sub_37334(v4);
  if ((v7 & 1) == (v27 & 1))
  {
    goto LABEL_22;
  }

  return sub_5B7D8();
}

uint64_t sub_24B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_5A588();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_24BFC, 0, 0);
}

uint64_t sub_24BFC()
{
  v1 = *(v0[3] + 264);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_24C9C;
  v3 = v0[9];
  v4 = v0[4];
  v5 = v0[5];

  return sub_30FBC(v3, v4, v5);
}

uint64_t sub_24C9C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24EA0;
  }

  else
  {
    v3 = sub_24DB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_24DB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  v6 = sub_5B94(&qword_72908, &qword_5C948);
  v7 = *(v6 + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v7], v1, v3);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24EA0()
{
  v1 = v0[11];
  v2 = v0[2];

  v3 = sub_5B94(&qword_72908, &qword_5C948);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F58@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v67 = sub_5A938();
  v66 = *(v67 - 8);
  v1 = *(v66 + 64);
  v2 = __chkstk_darwin(v67);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v59 - v4;
  v6 = sub_5A998();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v77 = sub_5AA18();
  v70 = *(v77 - 8);
  v13 = *(v70 + 64);
  v14 = __chkstk_darwin(v77);
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v76 = sub_5AAF8();
  v69 = *(v76 - 8);
  v18 = *(v69 + 64);
  v19 = __chkstk_darwin(v76);
  v63 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  v23 = sub_5B94(&qword_724B0, &unk_5C610);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v59 - v25;
  v27 = sub_5AA98();
  v73 = *(v27 - 8);
  v74 = v27;
  v28 = *(v73 + 64);
  __chkstk_darwin(v27);
  v68 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AA88();
  v30 = sub_5ADF8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_5ADE8();
  sub_5B94(&qword_72460, &unk_5C5E0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_5C4A0;
  *(v34 + 32) = v33;

  sub_5AC38();
  v35 = sub_5AC48();
  (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
  sub_5AC28();

  sub_5D4C(v26, &qword_724B0, &unk_5C610);
  v36 = v22;
  sub_5AAE8();
  v37 = v17;
  sub_5AA08();
  v38 = v12;
  sub_5A988();
  sub_5AB78();
  v39 = v66;
  v40 = *(v66 + 16);
  v61 = v5;
  v40(v65, v5, v67);
  v62 = v36;
  sub_5AAD8();
  v41 = v69;
  (*(v69 + 16))(v63, v36, v76);
  v42 = v37;
  v60 = v37;
  sub_5A9E8();
  v43 = v70;
  (*(v70 + 16))(v64, v42, v77);
  sub_5A978();
  v45 = v71;
  v44 = v72;
  (*(v71 + 16))(v10, v38, v72);
  v46 = v68;
  sub_5AA78();

  (*(v39 + 8))(v61, v67);
  (*(v45 + 8))(v38, v44);
  (*(v43 + 8))(v60, v77);
  (*(v41 + 8))(v62, v76);
  v47 = v74;
  v48 = v73;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v49 = sub_5B228();
  sub_5B44(v49, qword_763B8);
  v50 = sub_5B218();
  v51 = sub_5B4B8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = sub_2DC10(0xD000000000000029, 0x800000000005EBD0, v79);
    *(v52 + 12) = 2080;
    sub_5AB48();
    swift_beginAccess();
    v78[3] = v47;
    v78[4] = sub_29850(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    v53 = sub_5F2C(v78);
    (*(v48 + 16))(v53, v46, v47);
    v54 = sub_5AB38();
    v56 = v55;
    sub_5D00(v78);
    v57 = sub_2DC10(v54, v56, v79);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_0, v50, v51, "%s paraphrase systemDialogAct: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  (*(v48 + 16))(v75, v46, v47);
  return (*(v48 + 8))(v46, v47);
}

uint64_t sub_25964@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_5AAC8();
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = *(v60 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v55 - v6;
  v8 = sub_5AA18();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = v55 - v13;
  v63 = sub_5AA58();
  v65 = *(v63 - 8);
  v14 = v65[8];
  v15 = __chkstk_darwin(v63);
  v64 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v55 - v18;
  __chkstk_darwin(v17);
  v21 = v55 - v20;
  v22 = sub_5AA98();
  v68 = *(v22 - 8);
  v69 = v22;
  v23 = *(v68 + 64);
  __chkstk_darwin(v22);
  v67 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AA88();
  v25 = sub_291E8();
  v26 = sub_291E8();
  sub_2627C(v25, v21);
  v58 = v5;
  v57 = v7;
  v59 = v8;
  sub_5AA08();
  v27 = v65[2];
  v28 = v63;
  v27(v19, v21, v63);
  sub_5A9D8();
  sub_2627C(v26, v64);
  v56 = v12;
  sub_5AA08();
  v27(v19, v64, v28);
  v55[1] = v26;
  sub_5A9D8();
  v29 = v57;
  sub_5AAB8();
  sub_5B94(&unk_73CC0, &unk_5C8E0);
  v30 = v62;
  v31 = *(v62 + 72);
  v32 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_5C2D0;
  v34 = v33 + v32;
  v35 = *(v30 + 16);
  v36 = v59;
  v35(v34, v66, v59);
  v35(v34 + v31, v56, v36);
  sub_5AAA8();
  v38 = v60;
  v37 = v61;
  (*(v60 + 16))(v58, v29, v61);
  v39 = v67;
  sub_5AA68();

  (*(v38 + 8))(v29, v37);
  v40 = *(v30 + 8);
  v40(v56, v36);
  v41 = v65[1];
  v42 = v63;
  v41(v64, v63);
  v40(v66, v36);
  v41(v21, v42);
  v44 = v68;
  v43 = v69;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v45 = sub_5B228();
  sub_5B44(v45, qword_763B8);
  v46 = sub_5B218();
  v47 = sub_5B4B8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v48 = 136315394;
    *(v48 + 4) = sub_2DC10(0xD00000000000003ELL, 0x800000000005EB70, v72);
    *(v48 + 12) = 2080;
    sub_5AB48();
    swift_beginAccess();
    v71[3] = v43;
    v71[4] = sub_29850(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct);
    v49 = sub_5F2C(v71);
    (*(v44 + 16))(v49, v39, v43);
    v50 = sub_5AB38();
    v52 = v51;
    sub_5D00(v71);
    v53 = sub_2DC10(v50, v52, v72);

    *(v48 + 14) = v53;
    _os_log_impl(&dword_0, v46, v47, "%s paraphrase systemDialogAct: %s", v48, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  (*(v44 + 16))(v70, v39, v43);
  return (*(v44 + 8))(v39, v43);
}

uint64_t sub_2627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_5A938();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_5B94(&qword_724B0, &unk_5C610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  sub_5B94(&qword_72460, &unk_5C5E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5C4A0;
  *(v11 + 32) = a1;

  sub_5AC38();
  v12 = sub_5AC48();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  sub_5AC28();

  sub_5D4C(v10, &qword_724B0, &unk_5C610);
  sub_5AA48();
  sub_5AB78();
  if (v2)
  {
    v13 = sub_5AA58();
    (*(*(v13 - 8) + 8))(a2, v13);
  }

  else
  {
    sub_5AA38();
  }
}

uint64_t sub_2647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a3;
  v119 = a2;
  v121 = a4;
  v113 = sub_5B128();
  v98 = *(v113 - 8);
  v5 = *(v98 + 64);
  __chkstk_darwin(v113);
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_5AB28();
  v114 = *(v120 - 8);
  v7 = *(v114 + 64);
  __chkstk_darwin(v120);
  v122 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5A938();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  __chkstk_darwin(v9);
  v103 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_5AA58();
  v101 = *(v102 - 8);
  v12 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5A858();
  v117 = *(v14 - 8);
  v118 = v14;
  v15 = *(v117 + 64);
  __chkstk_darwin(v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A7D8();
  v115 = *(v18 - 8);
  v116 = v18;
  v19 = *(v115 + 8);
  __chkstk_darwin(v18);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_5A8E8();
  v109 = *(v22 - 8);
  v110 = v22;
  v23 = *(v109 + 64);
  __chkstk_darwin(v22);
  v108 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_5B94(&qword_728D0, &unk_5C8D0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v97 - v27;
  v29 = sub_5A968();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v106 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v97 - v34;
  v36 = sub_5AA18();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v99 = &v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v97 - v41;
  v107 = a1;
  sub_5A8D8();
  sub_5A948();
  v43 = *(v30 + 8);
  v44 = v35;
  v45 = v36;
  v46 = v37;
  v43(v44, v29);
  if ((*(v37 + 48))(v28, 1, v45) == 1)
  {
    sub_5D4C(v28, &qword_728D0, &unk_5C8D0);
LABEL_3:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v47 = sub_5B228();
    sub_5B44(v47, qword_763B8);
    v48 = sub_5B218();
    v49 = sub_5B4C8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v123 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2DC10(0xD000000000000028, 0x800000000005EB20, &v123);
      _os_log_impl(&dword_0, v48, v49, "%s could not resolve App Shortcut Ambiguous First Run response from USO parse", v50, 0xCu);
      sub_5D00(v51);
    }

LABEL_8:
    v52 = sub_5A318();
    return (*(*(v52 - 8) + 56))(v121, 1, 1, v52);
  }

  v97 = v43;
  (*(v37 + 32))(v42, v28, v45);
  v54 = v119;
  sub_5A2F8();
  sub_5A7C8();
  (*(v115 + 1))(v21, v116);
  v56 = v117;
  v55 = v118;
  v57 = v54;
  v58 = v42;
  if ((*(v117 + 88))(v17, v118) == enum case for Parse.uso(_:))
  {
    (*(v56 + 96))(v17, v55);
    v59 = v108;
    v60 = v109;
    v61 = v17;
    v62 = v110;
    (*(v109 + 32))(v108, v61, v110);
    v63 = sub_5A8A8();
    (*(v60 + 8))(v59, v62);
  }

  else
  {
    (*(v56 + 8))(v17, v55);
    v63 = 0;
  }

  if (sub_5A9A8())
  {
    (*(v46 + 8))(v58, v45);
    v64 = sub_5A318();
    v65 = *(v64 - 8);
    v66 = *(v65 + 16);
    if (v63)
    {
      v67 = v57;
    }

    else
    {
      v67 = v111;
    }

LABEL_20:
    v68 = v121;
    v66(v121, v67, v64);
    return (*(v65 + 56))(v68, 0, 1, v64);
  }

  if (sub_5A9B8())
  {
    (*(v46 + 8))(v58, v45);
    v64 = sub_5A318();
    v65 = *(v64 - 8);
    v66 = *(v65 + 16);
    if (v63)
    {
      v67 = v111;
    }

    else
    {
      v67 = v57;
    }

    goto LABEL_20;
  }

  v69 = v106;
  sub_5A8D8();
  v70 = sub_5A958();
  v97(v69, v29);
  if (!*(v70 + 16))
  {

    if (qword_71A58 != -1)
    {
LABEL_54:
      swift_once();
    }

    v89 = sub_5B228();
    sub_5B44(v89, qword_763B8);
    v90 = sub_5B218();
    v91 = sub_5B4B8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, ".appShortcutCollisionWithEnablement confirmation uso parse does not have identifiers", v92, 2u);
    }

    (*(v46 + 8))(v58, v45);
    goto LABEL_8;
  }

  v71 = v99;
  (*(v46 + 16))(v99, v70 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v45);

  v72 = v100;
  sub_5A9C8();
  v75 = *(v46 + 8);
  v74 = v46 + 8;
  v73 = v75;
  v75(v71, v45);
  v76 = v103;
  sub_5AA28();
  (*(v101 + 8))(v72, v102);
  v77 = sub_5A928();
  (*(v104 + 8))(v76, v105);
  v78 = *(v77 + 16);
  if (!v78)
  {

LABEL_44:
    v73(v58, v45);
    goto LABEL_3;
  }

  v110 = v73;
  LODWORD(v109) = v63;
  v115 = v58;
  v116 = v74;
  v79 = 0;
  v46 = 0x800000000005EB50;
  v80 = *(v114 + 80);
  v117 = v45;
  v118 = v77 + ((v80 + 32) & ~v80);
  v58 = (v98 + 8);
  v81 = (v114 + 8);
  while (1)
  {
    if (v79 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    (*(v114 + 16))(v122, v118 + *(v114 + 72) * v79, v120);
    v82 = v112;
    sub_5AB18();
    v83 = sub_5B118();
    v85 = v84;
    (*v58)(v82, v113);
    if (v83 == 0xD000000000000018 && 0x800000000005EB50 == v85)
    {
    }

    else
    {
      v45 = sub_5B7A8();

      if ((v45 & 1) == 0)
      {
        (*v81)(v122, v120);
        goto LABEL_25;
      }
    }

    if (sub_5AB08() == 0x747065636361 && v86 == 0xE600000000000000)
    {
      break;
    }

    v87 = sub_5B7A8();

    if (v87)
    {
      goto LABEL_46;
    }

    if (sub_5AB08() == 0x7463656A6572 && v88 == 0xE600000000000000)
    {

      (*v81)(v122, v120);
LABEL_50:
      v110(v115, v117);

      v64 = sub_5A318();
      v65 = *(v64 - 8);
      v66 = *(v65 + 16);
      if (v109)
      {
        v67 = v111;
      }

      else
      {
        v67 = v119;
      }

      goto LABEL_20;
    }

    v45 = sub_5B7A8();

    (*v81)(v122, v120);
    if (v45)
    {
      goto LABEL_50;
    }

LABEL_25:
    if (v78 == ++v79)
    {

      v45 = v117;
      v58 = v115;
      v73 = v110;
      goto LABEL_44;
    }
  }

LABEL_46:

  (*v81)(v122, v120);
  v110(v115, v117);
  if (v109)
  {
    v93 = v119;
  }

  else
  {
    v93 = v111;
  }

  v94 = sub_5A318();
  v95 = *(v94 - 8);
  v96 = v121;
  (*(v95 + 16))(v121, v93, v94);
  return (*(v95 + 56))(v96, 0, 1, v94);
}

uint64_t *sub_27338()
{
  sub_5D00(v0 + 3);
  sub_5D00(v0 + 8);
  sub_5D00(v0 + 13);
  sub_5D00(v0 + 18);
  sub_5D00(v0 + 23);
  sub_5D00(v0 + 28);
  v1 = v0[33];

  sub_5D00(v0 + 34);
  v2 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction;
  v3 = sub_5A318();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction, v3);
  v5 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutInvocation;
  v6 = sub_5A638();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_29964(v0 + OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state);
  return v0;
}

uint64_t sub_27458()
{
  sub_27338();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_274D8()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_5A638();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for AppShortcutEnablementFlow.State(319);
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *sub_27630(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v7 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = sub_5A318();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_277C0(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = sub_5A318();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_2787C(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_279D0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_5A318();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_5D4C(a1, &qword_71CA0, &unk_5C2B0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_27BAC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_27D00(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_5A318();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_5D4C(a1, &qword_71CA0, &unk_5C2B0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_27EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27F7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2800C(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_28080(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_280FC()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_2819C()
{
  v2 = *v0;
  type metadata accessor for AppShortcutEnablementFlow(0);
  return sub_5A098();
}

uint64_t sub_281FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_1D04C(a1);
}

uint64_t sub_28298(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppShortcutEnablementFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_282D4()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000025;
  }

  v2 = *v0;
  sub_5B5A8(22);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_5B388(v4);
  return 0xD000000000000014;
}

uint64_t sub_28370(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_28468;

  return v7(a1);
}

uint64_t sub_28468()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_28560(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_5B94(&qword_72918, &unk_5C960);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

Swift::Int sub_285F0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_291D4(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_5B788(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v11;
          *v13 = v14;
          v13[1] = v15;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_5B94(&qword_72910, &qword_5C950);
      v7 = sub_5B3F8();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_2875C(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2875C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_28F60(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_28D24((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_28F74(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_28F74((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
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
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_28D24((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_28D24(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

char *sub_28F74(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&unk_73CF0, &qword_5C958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_29078(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      v11[1] = v22;
      v11[2] = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_291E8()
{
  v0 = sub_5ABE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5ADD8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_5ADC8();
  sub_5ADB8();

  sub_5ABB8();
  sub_5ABA8();
  (*(v1 + 8))(v4, v0);
  v8 = sub_5ADF8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_5ADE8();
  sub_5AE08();

  return v11;
}

uint64_t sub_293D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_29480()
{
  result = qword_728E0;
  if (!qword_728E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_728E0);
  }

  return result;
}

unint64_t sub_294CC()
{
  result = qword_728E8;
  if (!qword_728E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_728E8);
  }

  return result;
}

uint64_t sub_29520(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BBF8;

  return sub_23D94(a1, a2, v7, v6);
}

uint64_t sub_295D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2961C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_5934;

  return sub_24B34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_296F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29728(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5934;

  return sub_28370(a1, v5);
}

uint64_t sub_297EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_298FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5B94(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29964(uint64_t a1)
{
  v2 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_s17CAMRootFlowPlugin26AppShortcutEnablementErrorOwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for AppShortcutEnablementError(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

__n128 initializeWithTake for AppShortcutEnablementError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for AppShortcutEnablementError(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutEnablementError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppShortcutEnablementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29B20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_29B38(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_29B8C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(sub_59F18() - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v4 = sub_59FC8();
  v2[31] = v4;
  v5 = *(v4 - 8);
  v2[32] = v5;
  v6 = *(v5 + 64) + 15;
  v2[33] = swift_task_alloc();
  v7 = sub_59F38();
  v2[34] = v7;
  v8 = *(v7 - 8);
  v2[35] = v8;
  v9 = *(v8 + 64) + 15;
  v2[36] = swift_task_alloc();
  v10 = sub_59FF8();
  v2[37] = v10;
  v11 = *(v10 - 8);
  v2[38] = v11;
  v12 = *(v11 + 64) + 15;
  v2[39] = swift_task_alloc();
  v13 = sub_59F98();
  v2[40] = v13;
  v14 = *(v13 - 8);
  v2[41] = v14;
  v15 = *(v14 + 64) + 15;
  v2[42] = swift_task_alloc();
  v16 = sub_59EF8();
  v2[43] = v16;
  v17 = *(v16 - 8);
  v2[44] = v17;
  v18 = *(v17 + 64) + 15;
  v2[45] = swift_task_alloc();
  v19 = sub_5A018();
  v2[46] = v19;
  v20 = *(v19 - 8);
  v2[47] = v20;
  v21 = *(v20 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v22 = sub_5A038();
  v2[52] = v22;
  v23 = *(v22 - 8);
  v2[53] = v23;
  v24 = *(v23 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v25 = sub_59F58();
  v2[56] = v25;
  v26 = *(v25 - 8);
  v2[57] = v26;
  v27 = *(v26 + 64) + 15;
  v2[58] = swift_task_alloc();
  v28 = *(*(sub_5B94(&qword_72920, &qword_5CA08) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v29 = *(*(sub_5B94(&qword_72928, &qword_5CA10) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v30 = sub_59F68();
  v2[62] = v30;
  v31 = *(v30 - 8);
  v2[63] = v31;
  v32 = *(v31 + 64) + 15;
  v2[64] = swift_task_alloc();
  v33 = sub_59F88();
  v2[65] = v33;
  v34 = *(v33 - 8);
  v2[66] = v34;
  v35 = *(v34 + 64) + 15;
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_2A060, 0, 0);
}

uint64_t sub_2A060()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 232);
  *v3 = 0xD000000000000013;
  v3[1] = 0x800000000005EC90;
  (*(v2 + 104))(v3, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v4);
  v9 = sub_59FA8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_59FE8();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  v11(v7, 1, 1, v10);
  sub_59F78();
  v12 = *v8;
  v13 = v8[9];
  v14 = v8[10];
  v15 = v8[7];
  v16 = v8[8];
  v17 = *(v8 + 5);
  if (qword_71A68 != -1)
  {
    v81 = *(v8 + 5);
    swift_once();
    v17 = v81;
  }

  *(v0 + 16) = v12;
  *(v0 + 24) = 3;
  *(v0 + 32) = v13;
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  *(v0 + 56) = v16;
  *(v0 + 64) = v17;
  sub_2AB10();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  sub_59DC8();
  v71 = *(v0 + 536);
  v74 = *(v0 + 528);
  v69 = *(v0 + 520);
  v57 = *(v0 + 512);
  v58 = *(v0 + 488);
  v59 = *(v0 + 480);
  v60 = *(v0 + 472);
  v53 = *(v0 + 464);
  v72 = *(v0 + 456);
  v70 = *(v0 + 448);
  v18 = *(v0 + 440);
  v61 = *(v0 + 432);
  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
  v52 = v19;
  v79 = *(v0 + 408);
  v80 = *(v0 + 400);
  v65 = *(v0 + 392);
  v67 = *(v0 + 384);
  v73 = *(v0 + 376);
  v64 = *(v0 + 368);
  v21 = *(v0 + 352);
  v62 = *(v0 + 360);
  v22 = *(v0 + 344);
  v77 = *(v0 + 336);
  v75 = *(v0 + 328);
  v49 = *(v0 + 320);
  v78 = *(v0 + 312);
  v76 = *(v0 + 304);
  v48 = *(v0 + 296);
  v63 = *(v0 + 288);
  v51 = *(v0 + 280);
  v50 = *(v0 + 272);
  v68 = *(v0 + 264);
  v55 = *(v0 + 256);
  v54 = *(v0 + 248);
  v23 = *(v0 + 232);
  v66 = *(v0 + 240);
  v56 = *(v0 + 224);
  BYTE2(v41) = 0;
  LOWORD(v41) = 0;
  sub_59F48();
  v24 = sub_5A1A8();
  v25 = [v24 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 128) = v20;
  *(v0 + 136) = &protocol witness table for Command;
  v26 = sub_5F2C((v0 + 104));
  v46 = *(v19 + 16);
  v46(v26, v18, v20);
  v45 = v23;
  v82 = *(v23 + 8);
  v84 = *(v23 + 16);
  v47 = *(v21 + 104);
  v47(v62, enum case for ButtonRole.preferred(_:), v22);
  v44 = enum case for _ProtoButton.FormAction.none(_:);
  v43 = *(v75 + 104);
  v43(v77);
  v42 = enum case for Button.LabelStyle.automatic(_:);
  v27 = *(v76 + 104);
  v27(v78);

  sub_5A008();
  v28 = sub_5A198();
  v29 = [v28 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 168) = v20;
  *(v0 + 176) = &protocol witness table for Command;
  v30 = sub_5F2C((v0 + 144));
  v46(v30, v61, v20);
  v83 = *(v45 + 24);
  v85 = *(v45 + 32);
  (v43)(v77, v44, v49);
  (v27)(v78, v42, v48);
  v47(v62, enum case for ButtonRole.standard(_:), v22);

  sub_5A008();
  v31 = *(v73 + 16);
  v31(v65, v79, v64);
  v31(v67, v80, v64);
  sub_59F28();
  *(v0 + 208) = v50;
  *(v0 + 216) = &protocol witness table for BinaryButton;
  v32 = sub_5F2C((v0 + 184));
  (*(v51 + 16))(v32, v63, v50);
  sub_59F08();
  sub_59FD8();
  sub_5B94(&qword_72938, &qword_5CA18);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_5C780;
  *(v33 + 56) = v69;
  *(v33 + 64) = &protocol witness table for SashStandard;
  v34 = sub_5F2C((v33 + 32));
  (*(v74 + 16))(v34, v71, v69);
  *(v33 + 96) = v70;
  *(v33 + 104) = &protocol witness table for CustomCanvas;
  v35 = sub_5F2C((v33 + 72));
  (*(v72 + 16))(v35, v53, v70);
  *(v33 + 136) = v54;
  *(v33 + 144) = &protocol witness table for ComponentWrapper;
  v36 = sub_5F2C((v33 + 112));
  (*(v55 + 16))(v36, v68, v54);
  sub_5A058();
  (*(v55 + 8))(v68, v54);
  (*(v51 + 8))(v63, v50);
  v37 = *(v73 + 8);
  v37(v80, v64);
  v38 = *(v52 + 8);
  v38(v61, v20);
  v37(v79, v64);
  v38(v18, v20);
  (*(v72 + 8))(v53, v70);
  (*(v74 + 8))(v71, v69);

  v39 = *(v0 + 8);

  return v39();
}

unint64_t sub_2AB10()
{
  result = qword_72930;
  if (!qword_72930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72930);
  }

  return result;
}

uint64_t destroy for AppShortcutFirstRunVisual(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[2];

  v4 = a1[4];

  v5 = a1[6];

  v6 = a1[8];

  v7 = a1[10];
}

void *initializeWithCopy for AppShortcutFirstRunVisual(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  a1[10] = a2[10];

  return a1;
}

uint64_t *assignWithCopy for AppShortcutFirstRunVisual(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  v5 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];
  v6 = a1[4];
  a1[4] = a2[4];

  a1[5] = a2[5];
  v7 = a1[6];
  a1[6] = a2[6];

  a1[7] = a2[7];
  v8 = a1[8];
  a1[8] = a2[8];

  a1[9] = a2[9];
  v9 = a2[10];
  v10 = a1[10];
  a1[10] = v9;

  return a1;
}

__n128 initializeWithTake for AppShortcutFirstRunVisual(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t *assignWithTake for AppShortcutFirstRunVisual(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = a1[2];
  a1[1] = a2[1];
  a1[2] = v5;

  v7 = a2[4];
  v8 = a1[4];
  a1[3] = a2[3];
  a1[4] = v7;

  v9 = a2[6];
  v10 = a1[6];
  a1[5] = a2[5];
  a1[6] = v9;

  v11 = a2[8];
  v12 = a1[8];
  a1[7] = a2[7];
  a1[8] = v11;

  v13 = a2[10];
  v14 = a1[10];
  a1[9] = a2[9];
  a1[10] = v13;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutFirstRunVisual(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for AppShortcutFirstRunVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2AE90(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(sub_59F18() - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v4 = sub_59FC8();
  v2[31] = v4;
  v5 = *(v4 - 8);
  v2[32] = v5;
  v6 = *(v5 + 64) + 15;
  v2[33] = swift_task_alloc();
  v7 = sub_59F38();
  v2[34] = v7;
  v8 = *(v7 - 8);
  v2[35] = v8;
  v9 = *(v8 + 64) + 15;
  v2[36] = swift_task_alloc();
  v10 = sub_59FF8();
  v2[37] = v10;
  v11 = *(v10 - 8);
  v2[38] = v11;
  v12 = *(v11 + 64) + 15;
  v2[39] = swift_task_alloc();
  v13 = sub_59F98();
  v2[40] = v13;
  v14 = *(v13 - 8);
  v2[41] = v14;
  v15 = *(v14 + 64) + 15;
  v2[42] = swift_task_alloc();
  v16 = sub_59EF8();
  v2[43] = v16;
  v17 = *(v16 - 8);
  v2[44] = v17;
  v18 = *(v17 + 64) + 15;
  v2[45] = swift_task_alloc();
  v19 = sub_5A018();
  v2[46] = v19;
  v20 = *(v19 - 8);
  v2[47] = v20;
  v21 = *(v20 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v22 = sub_5A038();
  v2[52] = v22;
  v23 = *(v22 - 8);
  v2[53] = v23;
  v24 = *(v23 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v25 = sub_59F58();
  v2[56] = v25;
  v26 = *(v25 - 8);
  v2[57] = v26;
  v27 = *(v26 + 64) + 15;
  v2[58] = swift_task_alloc();
  v28 = *(*(sub_5B94(&qword_72920, &qword_5CA08) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v29 = *(*(sub_5B94(&qword_72928, &qword_5CA10) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v30 = sub_59F68();
  v2[62] = v30;
  v31 = *(v30 - 8);
  v2[63] = v31;
  v32 = *(v31 + 64) + 15;
  v2[64] = swift_task_alloc();
  v33 = sub_59F88();
  v2[65] = v33;
  v34 = *(v33 - 8);
  v2[66] = v34;
  v35 = *(v34 + 64) + 15;
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_2B364, 0, 0);
}

uint64_t sub_2B364()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v7 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 232);
  *v3 = 0xD000000000000019;
  v3[1] = 0x800000000005ECF0;
  (*(v2 + 104))(v3, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v4);
  v9 = sub_59FA8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_59FE8();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  v11(v7, 1, 1, v10);
  sub_59F78();
  v12 = *v8;
  v13 = v8[9];
  v14 = v8[10];
  v15 = v8[7];
  v16 = v8[8];
  v17 = *(v8 + 5);
  if (qword_71A68 != -1)
  {
    v81 = *(v8 + 5);
    swift_once();
    v17 = v81;
  }

  *(v0 + 16) = v12;
  *(v0 + 24) = 3;
  *(v0 + 32) = v13;
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  *(v0 + 56) = v16;
  *(v0 + 64) = v17;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  sub_2AB10();
  sub_59DC8();
  v71 = *(v0 + 536);
  v74 = *(v0 + 528);
  v69 = *(v0 + 520);
  v57 = *(v0 + 512);
  v58 = *(v0 + 488);
  v59 = *(v0 + 480);
  v60 = *(v0 + 472);
  v53 = *(v0 + 464);
  v72 = *(v0 + 456);
  v70 = *(v0 + 448);
  v18 = *(v0 + 440);
  v61 = *(v0 + 432);
  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
  v52 = v19;
  v79 = *(v0 + 408);
  v80 = *(v0 + 400);
  v65 = *(v0 + 392);
  v67 = *(v0 + 384);
  v73 = *(v0 + 376);
  v64 = *(v0 + 368);
  v21 = *(v0 + 352);
  v62 = *(v0 + 360);
  v22 = *(v0 + 344);
  v77 = *(v0 + 336);
  v75 = *(v0 + 328);
  v49 = *(v0 + 320);
  v78 = *(v0 + 312);
  v76 = *(v0 + 304);
  v48 = *(v0 + 296);
  v63 = *(v0 + 288);
  v51 = *(v0 + 280);
  v50 = *(v0 + 272);
  v68 = *(v0 + 264);
  v55 = *(v0 + 256);
  v54 = *(v0 + 248);
  v23 = *(v0 + 232);
  v66 = *(v0 + 240);
  v56 = *(v0 + 224);
  BYTE2(v41) = 0;
  LOWORD(v41) = 0;
  sub_59F48();
  v24 = sub_5A1A8();
  v25 = [v24 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 128) = v20;
  *(v0 + 136) = &protocol witness table for Command;
  v26 = sub_5F2C((v0 + 104));
  v46 = *(v19 + 16);
  v46(v26, v18, v20);
  v45 = v23;
  v82 = *(v23 + 8);
  v84 = *(v23 + 16);
  v47 = *(v21 + 104);
  v47(v62, enum case for ButtonRole.preferred(_:), v22);
  v44 = enum case for _ProtoButton.FormAction.none(_:);
  v43 = *(v75 + 104);
  v43(v77);
  v42 = enum case for Button.LabelStyle.automatic(_:);
  v27 = *(v76 + 104);
  v27(v78);

  sub_5A008();
  v28 = sub_5A198();
  v29 = [v28 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 168) = v20;
  *(v0 + 176) = &protocol witness table for Command;
  v30 = sub_5F2C((v0 + 144));
  v46(v30, v61, v20);
  v83 = *(v45 + 24);
  v85 = *(v45 + 32);
  (v43)(v77, v44, v49);
  (v27)(v78, v42, v48);
  v47(v62, enum case for ButtonRole.standard(_:), v22);

  sub_5A008();
  v31 = *(v73 + 16);
  v31(v65, v79, v64);
  v31(v67, v80, v64);
  sub_59F28();
  *(v0 + 208) = v50;
  *(v0 + 216) = &protocol witness table for BinaryButton;
  v32 = sub_5F2C((v0 + 184));
  (*(v51 + 16))(v32, v63, v50);
  sub_59F08();
  sub_59FD8();
  sub_5B94(&qword_72938, &qword_5CA18);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_5C780;
  *(v33 + 56) = v69;
  *(v33 + 64) = &protocol witness table for SashStandard;
  v34 = sub_5F2C((v33 + 32));
  (*(v74 + 16))(v34, v71, v69);
  *(v33 + 96) = v70;
  *(v33 + 104) = &protocol witness table for CustomCanvas;
  v35 = sub_5F2C((v33 + 72));
  (*(v72 + 16))(v35, v53, v70);
  *(v33 + 136) = v54;
  *(v33 + 144) = &protocol witness table for ComponentWrapper;
  v36 = sub_5F2C((v33 + 112));
  (*(v55 + 16))(v36, v68, v54);
  sub_5A058();
  (*(v55 + 8))(v68, v54);
  (*(v51 + 8))(v63, v50);
  v37 = *(v73 + 8);
  v37(v80, v64);
  v38 = *(v52 + 8);
  v38(v61, v20);
  v37(v79, v64);
  v38(v18, v20);
  (*(v72 + 8))(v53, v70);
  (*(v74 + 8))(v71, v69);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2BE2C(uint64_t a1)
{
  v78 = sub_5A8E8();
  v2 = *(v78 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v78);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v62 = &v62 - v7;
  v8 = __chkstk_darwin(v6);
  v75 = &v62 - v9;
  __chkstk_darwin(v8);
  v66 = &v62 - v10;
  v73 = sub_5A7D8();
  v11 = *(v73 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v73);
  v71 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_5A318();
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v72);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A858();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v64 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v62 - v24;
  v26 = __chkstk_darwin(v23);
  v74 = &v62 - v27;
  v28 = *(a1 + 16);
  v29 = &_swiftEmptyArrayStorage;
  v65 = v2;
  v76 = v26;
  if (v28)
  {
    v79 = &_swiftEmptyArrayStorage;
    sub_375A8(0, v28, 0);
    v29 = v79;
    v31 = *(v14 + 16);
    v30 = v14 + 16;
    v32 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v68 = *(v30 + 56);
    v69 = v31;
    v70 = v30;
    v33 = (v30 - 8);
    v77 = v19;
    v67 = v19 + 32;
    do
    {
      v34 = v72;
      (v69)(v17, v32, v72);
      v35 = v71;
      sub_5A2F8();
      sub_5A7C8();
      (*(v11 + 8))(v35, v73);
      (*v33)(v17, v34);
      v79 = v29;
      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        sub_375A8(v36 > 1, v37 + 1, 1);
        v29 = v79;
      }

      v29[2] = v37 + 1;
      v38 = v29 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v37;
      v18 = v76;
      (*(v77 + 32))(v38, v25, v76);
      v32 += v68;
      --v28;
    }

    while (v28);
    v2 = v65;
    v19 = v77;
  }

  v39 = v29[2];
  if (v39)
  {
    v41 = *(v19 + 16);
    v40 = v19 + 16;
    v42 = v29 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v72 = *(v40 + 56);
    v73 = v41;
    v71 = (v40 + 16);
    v43 = (v40 + 72);
    LODWORD(v70) = enum case for Parse.uso(_:);
    v68 = (v40 + 80);
    v69 = (v40 - 8);
    v44 = (v2 + 32);
    v45 = &_swiftEmptyArrayStorage;
    v46 = v64;
    v77 = v40;
    do
    {
      v47 = v74;
      v73(v74, v42, v18);
      (*v71)(v46, v47, v18);
      v48 = (*v43)(v46, v18);
      if (v48 == v70)
      {
        (*v68)(v46, v18);
        v49 = *v44;
        v50 = v63;
        v51 = v78;
        (*v44)(v63, v46, v78);
        v52 = v62;
        v49(v62, v50, v51);
        v49(v75, v52, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_585A4(0, *(v45 + 2) + 1, 1, v45);
        }

        v54 = *(v45 + 2);
        v53 = *(v45 + 3);
        v46 = v64;
        if (v54 >= v53 >> 1)
        {
          v45 = sub_585A4(v53 > 1, v54 + 1, 1, v45);
        }

        *(v45 + 2) = v54 + 1;
        v49(&v45[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v54], v75, v78);
        v18 = v76;
      }

      else
      {
        (*v69)(v46, v18);
      }

      v42 += v72;
      --v39;
    }

    while (v39);

    v2 = v65;
  }

  else
  {

    v45 = &_swiftEmptyArrayStorage;
  }

  v56 = 0;
  v57 = *(v45 + 2);
  v58 = v78;
  while (1)
  {
    v59 = v56;
    if (v57 == v56)
    {
LABEL_23:

      return v57 != v59;
    }

    if (v56 >= *(v45 + 2))
    {
      break;
    }

    v60 = v66;
    (*(v2 + 16))(v66, &v45[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v56++], v58);
    v61 = sub_5A8A8();
    result = (*(v2 + 8))(v60, v58);
    if (v61)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2C53C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[41] = v4;
  v5 = *(v4 - 8);
  v2[42] = v5;
  v6 = *(v5 + 64) + 15;
  v2[43] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v8 = sub_5A908();
  v2[45] = v8;
  v9 = *(v8 - 8);
  v2[46] = v9;
  v10 = *(v9 + 64) + 15;
  v2[47] = swift_task_alloc();
  v11 = sub_5A488();
  v2[48] = v11;
  v12 = *(v11 - 8);
  v2[49] = v12;
  v13 = *(v12 + 64) + 15;
  v2[50] = swift_task_alloc();
  v14 = sub_5A648();
  v2[51] = v14;
  v15 = *(v14 - 8);
  v2[52] = v15;
  v16 = *(v15 + 64) + 15;
  v2[53] = swift_task_alloc();
  v17 = sub_5A588();
  v2[54] = v17;
  v18 = *(v17 - 8);
  v2[55] = v18;
  v19 = *(v18 + 64) + 15;
  v2[56] = swift_task_alloc();
  v20 = *(*(sub_5B94(&qword_72A10, &unk_5CB40) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v21 = sub_5AA98();
  v2[58] = v21;
  v22 = *(v21 - 8);
  v2[59] = v22;
  v23 = *(v22 + 64) + 15;
  v2[60] = swift_task_alloc();

  return _swift_task_switch(sub_2C870, 0, 0);
}

uint64_t sub_2C870()
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
    _os_log_impl(&dword_0, v2, v3, "AskRepeatFlow: execute called", v4, 2u);
  }

  v5 = v0[39];

  v6 = sub_5CBC((v5 + 16), *(v5 + 40));
  v7 = sub_38208(_swiftEmptyArrayStorage);
  v0[61] = v7;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v9 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v10 = sub_3802C(inited);
  v0[62] = v10;
  swift_setDeallocating();
  sub_5D4C(v9, &unk_72450, &unk_5C470);
  v11 = *v6;
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_2CAA8;

  return sub_3419C(0xD000000000000015, 0x800000000005ED40, v7, v10);
}

uint64_t sub_2CAA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v5 = *(*v2 + 496);
  v6 = *(*v2 + 488);
  v9 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v7 = sub_2D200;
  }

  else
  {
    v7 = sub_2CC04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2CC04()
{
  v52 = v0;
  v1 = sub_5A658();
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 456);
  if (v1)
  {
    swift_getObjectType();
    sub_5B4E8();
    swift_unknownObjectRelease();
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v5 = *(v0 + 512);
      v6 = *(v0 + 472);
      v7 = *(v0 + 464);
      v42 = v7;
      v43 = *(v0 + 480);
      v9 = *(v0 + 416);
      v8 = *(v0 + 424);
      v10 = *(v0 + 408);
      v41 = *(v0 + 400);
      v39 = *(v0 + 448);
      v40 = *(v0 + 392);
      v45 = *(v0 + 384);
      v46 = *(v0 + 376);
      v48 = *(v0 + 360);
      v49 = *(v0 + 368);
      v44 = *(v0 + 352);
      v47 = *(v0 + 312);
      (*(v6 + 32))();
      v11 = [v5 speak];
      sub_5B3D8();

      v12 = [v5 print];
      sub_5B3D8();

      (*(v9 + 104))(v8, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v10);
      v13 = [v5 print];
      v14 = sub_5B3D8();

      v15 = *(v14 + 16);

      sub_41CC4(0, 0xE000000000000000, v15);
      v16 = [v5 meta];
      sub_5B2F8();

      sub_5A528();
      sub_5A478();
      sub_5B94(&qword_72518, &unk_5C650);
      v17 = *(v6 + 72);
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_5C390;
      (*(v6 + 16))(v19 + v18, v43, v42);
      sub_5A458();
      sub_5A868();
      sub_5A868();
      v20 = *(v0 + 168);
      sub_5CBC((v0 + 136), *(v0 + 160));
      sub_5A218();
      (*(v40 + 16))(v44, v41, v45);
      (*(v40 + 56))(v44, 0, 1, v45);
      *(v0 + 208) = 0;
      *(v0 + 192) = 0u;
      *(v0 + 176) = 0u;
      sub_5A3E8();
      sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
      sub_5D4C(v44, &unk_72440, &unk_5C460);
      sub_5D00((v0 + 96));
      sub_5D00((v0 + 136));
      v21 = v47[10];
      v22 = v47[11];
      sub_5CBC(v47 + 7, v21);
      *(v0 + 240) = v48;
      *(v0 + 248) = &protocol witness table for AceOutput;
      v23 = sub_5F2C((v0 + 216));
      (*(v49 + 16))(v23, v46, v48);
      v24 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
      v25 = swift_task_alloc();
      *(v0 + 528) = v25;
      *v25 = v0;
      v25[1] = sub_2D3F0;

      return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v21, v22);
    }
  }

  else
  {
    (*(v3 + 56))(*(v0 + 456), 1, 1, *(v0 + 464));
  }

  v26 = *(v0 + 512);
  v27 = *(v0 + 304);
  sub_5D4C(*(v0 + 456), &qword_72A10, &unk_5CB40);
  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  *(v0 + 296) = sub_3147C(0xD00000000000002FLL, 0x800000000005ED90, v50, v51);
  sub_2EA8C(&qword_72550, type metadata accessor for CamErrorFlow);
  sub_5A418();

  v28 = *(v0 + 480);
  v29 = *(v0 + 448);
  v30 = *(v0 + 456);
  v31 = *(v0 + 424);
  v32 = *(v0 + 400);
  v33 = *(v0 + 376);
  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v36 = *(v0 + 320);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2D200()
{
  v19 = v0;
  v1 = v0[65];
  v2 = v0[38];
  sub_5B5A8(43);

  v18[0] = 0xD000000000000029;
  v18[1] = 0x800000000005ED60;
  swift_getErrorValue();
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[34];
  v21._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v21);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v0[36] = sub_3147C(0xD000000000000029, 0x800000000005ED60, v17, v18);
  sub_2EA8C(&qword_72550, type metadata accessor for CamErrorFlow);
  sub_5A418();

  v6 = v0[60];
  v7 = v0[56];
  v8 = v0[57];
  v9 = v0[53];
  v10 = v0[50];
  v11 = v0[47];
  v13 = v0[43];
  v12 = v0[44];
  v14 = v0[40];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2D3F0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_2D7C4;
  }

  else
  {
    sub_5D00((v2 + 216));
    v5 = sub_2D51C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2D51C()
{
  v27 = v0[64];
  v34 = v0[60];
  v32 = v0[59];
  v33 = v0[58];
  v1 = v0[55];
  v30 = v0[54];
  v31 = v0[56];
  v2 = v0[49];
  v28 = v0[48];
  v29 = v0[50];
  v3 = v0[46];
  v25 = v0[45];
  v26 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];
  v23 = v8[16];
  v24 = v0[38];
  sub_5CBC(v8 + 12, v8[15]);
  sub_5A1E8();
  (*(v5 + 104))(v4, enum case for ActivityType.askRepeat(_:), v7);
  v9 = enum case for SiriKitReliabilityCodes.normal(_:);
  v10 = sub_5A168();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v3 + 8))(v26, v25);
  (*(v2 + 8))(v29, v28);
  (*(v1 + 8))(v31, v30);
  (*(v32 + 8))(v34, v33);
  v12 = v0[60];
  v13 = v0[56];
  v14 = v0[57];
  v15 = v0[53];
  v16 = v0[50];
  v17 = v0[47];
  v19 = v0[43];
  v18 = v0[44];
  v20 = v0[40];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2D7C4()
{
  sub_5D00(v0 + 27);
  v27 = v0[64];
  v34 = v0[60];
  v32 = v0[59];
  v33 = v0[58];
  v1 = v0[55];
  v30 = v0[54];
  v31 = v0[56];
  v2 = v0[49];
  v28 = v0[48];
  v29 = v0[50];
  v3 = v0[46];
  v25 = v0[45];
  v26 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];
  v23 = v8[16];
  v24 = v0[38];
  sub_5CBC(v8 + 12, v8[15]);
  sub_5A1E8();
  (*(v5 + 104))(v4, enum case for ActivityType.askRepeat(_:), v7);
  v9 = enum case for SiriKitReliabilityCodes.normal(_:);
  v10 = sub_5A168();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v3 + 8))(v26, v25);
  (*(v2 + 8))(v29, v28);
  (*(v1 + 8))(v31, v30);
  (*(v32 + 8))(v34, v33);
  v12 = v0[60];
  v13 = v0[56];
  v14 = v0[57];
  v15 = v0[53];
  v16 = v0[50];
  v17 = v0[47];
  v19 = v0[43];
  v18 = v0[44];
  v20 = v0[40];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2DAE0()
{
  v2 = *v0;
  type metadata accessor for AskRepeatFlow();
  return sub_5A098();
}

uint64_t sub_2DB3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_2C53C(a1);
}

uint64_t sub_2DBD8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AskRepeatFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2DC10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2DCDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_C0A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5D00(v11);
  return v7;
}

unint64_t sub_2DCDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2DDE8(a5, a6);
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
    result = sub_5B5F8();
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

char *sub_2DDE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2DE34(a1, a2);
  sub_2DF64(&off_6DBB8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2DE34(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_2E050(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_5B5F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_5B398();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2E050(v10, 0);
        result = sub_5B598();
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

uint64_t sub_2DF64(uint64_t result)
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

  result = sub_2E0C4(result, v12, 1, v3);
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

void *sub_2E050(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_5B94(&qword_72A08, &qword_5CB28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2E0C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_72A08, &qword_5CB28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_2E1B8(uint64_t a1)
{
  v2 = sub_5B94(&qword_71C88, &qword_5C2A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v73 = &v59 - v4;
  v5 = type metadata accessor for CAMDirectInvocation();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = __chkstk_darwin(v5);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v59 - v9;
  v10 = sub_5A858();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  __chkstk_darwin(v10);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_5A838();
  v13 = *(v68 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v68);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5A7D8();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v67 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v23 = sub_5B228();
  v24 = sub_5B44(v23, qword_763B8);
  v64 = v17[2];
  v65 = v17 + 2;
  v64(v22, a1, v16);
  v70 = v24;
  v25 = sub_5B218();
  v26 = sub_5B4B8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v75 = v16;
    v28 = v27;
    v29 = swift_slowAlloc();
    v59 = v13;
    v30 = v29;
    v76 = v29;
    *v28 = 136315138;
    sub_2EA8C(&qword_71C90, &type metadata accessor for Input);
    v31 = sub_5B798();
    v32 = a1;
    v34 = v33;
    v66 = v17[1];
    v66(v22, v75);
    v35 = sub_2DC10(v31, v34, &v76);
    a1 = v32;

    *(v28 + 4) = v35;
    _os_log_impl(&dword_0, v25, v26, "AskRepeatFlow: on called with %s", v28, 0xCu);
    sub_5D00(v30);
    v13 = v59;

    v16 = v75;
  }

  else
  {

    v66 = v17[1];
    v66(v22, v16);
  }

  v36 = v69;
  sub_5A7C8();
  v38 = v71;
  v37 = v72;
  v39 = (*(v71 + 88))(v36, v72);
  v40 = v73;
  v41 = v74;
  if (v39 != enum case for Parse.directInvocation(_:))
  {
    (*(v38 + 8))(v36, v37);
    goto LABEL_10;
  }

  (*(v38 + 96))(v36, v37);
  (*(v13 + 32))(v41, v36, v68);
  sub_3601C(v40);
  if ((*(v62 + 48))(v40, 1, v63) == 1)
  {
    (*(v13 + 8))(v41, v68);
    sub_5D4C(v40, &qword_71C88, &qword_5C2A0);
LABEL_10:
    v42 = v67;
    v64(v67, a1, v16);
    v43 = sub_5B218();
    v44 = sub_5B4C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76 = v46;
      *v45 = 136315138;
      sub_2EA8C(&qword_71C90, &type metadata accessor for Input);
      v47 = sub_5B798();
      v49 = v48;
      v66(v42, v16);
      v50 = sub_2DC10(v47, v49, &v76);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_0, v43, v44, "AskRepeatFlow called with unexpected input %s", v45, 0xCu);
      sub_5D00(v46);
    }

    else
    {

      v66(v42, v16);
    }

    return 0;
  }

  v52 = v40;
  v53 = v61;
  sub_1AF04(v52, v61);
  v54 = v53;
  v55 = v60;
  sub_2E9CC(v54, v60);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2EA30(v61);
    (*(v13 + 8))(v41, v68);
    sub_2EA30(v55);
    goto LABEL_10;
  }

  sub_2EA30(v55);
  v56 = sub_5B218();
  v57 = sub_5B4B8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_0, v56, v57, "AskRepeatFlow: input accepted", v58, 2u);
  }

  sub_2EA30(v61);
  (*(v13 + 8))(v41, v68);
  return 1;
}

uint64_t sub_2E9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAMDirectInvocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EA30(uint64_t a1)
{
  v2 = type metadata accessor for CAMDirectInvocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2EA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t destroy for AutoShortcutAppPhrasesViewModel(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[7];

  v6 = a1[9];
}

uint64_t initializeWithCopy for AutoShortcutAppPhrasesViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t *assignWithCopy for AutoShortcutAppPhrasesViewModel(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  a1[6] = a2[6];
  v7 = a1[7];
  a1[7] = a2[7];

  a1[8] = a2[8];
  v8 = a2[9];
  v9 = a1[9];
  a1[9] = v8;

  return a1;
}

__n128 initializeWithTake for AutoShortcutAppPhrasesViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t *assignWithTake for AutoShortcutAppPhrasesViewModel(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  v5 = a1[3];
  a1[3] = a2[3];

  v6 = a2[5];
  v7 = a1[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v8 = a2[7];
  v9 = a1[7];
  a1[6] = a2[6];
  a1[7] = v8;

  v10 = a2[9];
  v11 = a1[9];
  a1[8] = a2[8];
  a1[9] = v10;

  return a1;
}

uint64_t getEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_2EDDC()
{
  v1 = *v0;
  sub_5B848();
  sub_5B858(v1);
  return sub_5B868();
}

Swift::Int sub_2EE50()
{
  v1 = *v0;
  sub_5B848();
  sub_5B858(v1);
  return sub_5B868();
}

uint64_t sub_2EE94()
{
  v1 = *v0;
  v2 = 0x74756374726F6873;
  v3 = 0x74706D6F7270;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x65746F6E746F6F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736172685078616DLL;
  if (v1 != 1)
  {
    v5 = 0x6449656C646E7562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2EF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2F32C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2EFAC(uint64_t a1)
{
  v2 = sub_2F2D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2EFE8(uint64_t a1)
{
  v2 = sub_2F2D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2F024(void *a1)
{
  v3 = v1;
  v5 = sub_5B94(&qword_72A18, &unk_5CBC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_5CBC(a1, a1[3]);
  sub_2F2D8();
  sub_5B888();
  v22 = *v3;
  v21[7] = 0;
  sub_5B94(&qword_72500, &unk_5C640);
  sub_2F99C(&qword_72A28);
  sub_5B778();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v21[6] = 1;
  sub_5B768();
  v12 = v3[2];
  v13 = v3[3];
  v21[5] = 2;
  sub_5B758();
  v14 = v3[4];
  v15 = v3[5];
  v21[4] = 3;
  sub_5B758();
  v16 = v3[6];
  v17 = v3[7];
  v21[3] = 4;
  sub_5B748();
  v19 = v3[8];
  v20 = v3[9];
  v21[2] = 5;
  sub_5B748();
  return (*(v6 + 8))(v9, v5);
}

__n128 sub_2F274@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2F544(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_2F2D8()
{
  result = qword_72A20;
  if (!qword_72A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A20);
  }

  return result;
}

uint64_t sub_2F32C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756374726F6873 && a2 == 0xEF73657361726850;
  if (v4 || (sub_5B7A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736172685078616DLL && a2 == 0xEA00000000007365 || (sub_5B7A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_5B7A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_5B7A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000000005EDF0 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xED00006C6562614CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_5B7A8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t *sub_2F544@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_5B94(&qword_72A30, &qword_5CBD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_5CBC(a1, a1[3]);
  sub_2F2D8();
  sub_5B878();
  if (v2)
  {
    return sub_5D00(a1);
  }

  sub_5B94(&qword_72500, &unk_5C640);
  LOBYTE(v34) = 0;
  sub_2F99C(&qword_72A38);
  sub_5B718();
  v11 = v39[0];
  LOBYTE(v39[0]) = 1;
  v12 = sub_5B708();
  LOBYTE(v39[0]) = 2;
  v31 = sub_5B6F8();
  v33 = v13;
  LOBYTE(v39[0]) = 3;
  v14 = sub_5B6F8();
  v32 = v15;
  v28 = v14;
  LOBYTE(v39[0]) = 4;
  v30 = 0;
  v27 = sub_5B6E8();
  v29 = v16;
  v40 = 5;
  v17 = sub_5B6E8();
  v18 = *(v6 + 8);
  v19 = v17;
  v30 = v20;
  v18(v9, v5);
  *&v34 = v11;
  *(&v34 + 1) = v12;
  *&v35 = v31;
  *(&v35 + 1) = v33;
  v21 = v32;
  *&v36 = v28;
  *(&v36 + 1) = v32;
  v22 = v29;
  *&v37 = v27;
  *(&v37 + 1) = v29;
  v23 = v30;
  *&v38 = v19;
  *(&v38 + 1) = v30;
  sub_2FA08(&v34, v39);
  sub_5D00(a1);
  v39[0] = v11;
  v39[1] = v12;
  v39[2] = v31;
  v39[3] = v33;
  v39[4] = v28;
  v39[5] = v21;
  v39[6] = v27;
  v39[7] = v22;
  v39[8] = v19;
  v39[9] = v23;
  result = sub_2FA40(v39);
  v25 = v37;
  a2[2] = v36;
  a2[3] = v25;
  a2[4] = v38;
  v26 = v35;
  *a2 = v34;
  a2[1] = v26;
  return result;
}

uint64_t sub_2F99C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A688(&qword_72500, &unk_5C640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2FBE4()
{
  result = qword_72A40;
  if (!qword_72A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A40);
  }

  return result;
}

unint64_t sub_2FC3C()
{
  result = qword_72A48;
  if (!qword_72A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A48);
  }

  return result;
}

unint64_t sub_2FC94()
{
  result = qword_72A50;
  if (!qword_72A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A50);
  }

  return result;
}

uint64_t sub_2FCE8()
{
  sub_5D00((v0 + 16));

  return swift_deallocClassInstance();
}

_OWORD *sub_2FD44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_37278(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_4180C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_412D0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_37278(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_5B7D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_5D00(v23);

    return sub_302D4(a1, v23);
  }

  else
  {
    sub_2FE94(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2FE94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_302D4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2FF00(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = a4;
  *(v4 + 160) = a2;
  *(v4 + 216) = a1;
  return _swift_task_switch(sub_2FF28, 0, 0);
}

uint64_t sub_2FF28()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 216);
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0xD000000000000017;
  v6 = inited + 32;
  *(inited + 40) = 0x800000000005EE50;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4;
  v7 = sub_3802C(inited);
  swift_setDeallocating();
  sub_3026C(v6);
  *(v0 + 120) = &type metadata for String;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_302D4((v0 + 96), (v0 + 128));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2FD44((v0 + 128), 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v9 = sub_5CBC((v3 + 16), *(v3 + 40));
  v10 = sub_33ED4(v7);
  *(v0 + 184) = v10;

  v11 = *v9;
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_300EC;

  return sub_350CC(0xD00000000000002CLL, 0x800000000005EE70, v10);
}

uint64_t sub_300EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v8 = sub_30254;
  }

  else
  {
    *(v4 + 208) = a1;
    v8 = sub_30238;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_3026C(uint64_t a1)
{
  v2 = sub_5B94(&unk_72450, &unk_5C470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_302D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_302E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_5A648();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_303A8, 0, 0);
}

uint64_t sub_303A8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = sub_5CBC((v0[15] + 16), *(v0[15] + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 7368801;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v8 = sub_3802C(inited);
  v0[19] = v8;
  swift_setDeallocating();
  sub_3026C(inited + 32);
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.listen(_:), v3);
  v9 = *v6;
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_3053C;
  v11 = v0[18];
  v12 = v0[12];

  return sub_3468C(v12, 0xD00000000000002CLL, 0x800000000005EE70, v8);
}

uint64_t sub_3053C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_31478, 0, 0);
  }

  else
  {
    v9 = *(v2 + 144);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_30714(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_5A648();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_307D4, 0, 0);
}

uint64_t sub_307D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_5CBC((v0[3] + 16), *(v0[3] + 40));
  v5 = sub_3802C(_swiftEmptyArrayStorage);
  v0[7] = v5;
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v6 = *v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_308EC;
  v8 = v0[6];
  v9 = v0[2];

  return sub_3468C(v9, 0xD00000000000002ALL, 0x800000000005EF30, v5);
}

uint64_t sub_308EC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_30AC4, 0, 0);
  }

  else
  {
    v9 = *(v2 + 48);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_30AC4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_30B28(uint64_t a1, double a2)
{
  *(v3 + 112) = v2;
  *(v3 + 104) = a2;
  *(v3 + 96) = a1;
  v4 = sub_5A648();
  *(v3 + 120) = v4;
  v5 = *(v4 - 8);
  *(v3 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_30BF0, 0, 0);
}

uint64_t sub_30BF0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = sub_5CBC((v0[14] + 16), *(v0[14] + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0xD000000000000011;
  v7 = inited + 32;
  *(inited + 40) = 0x800000000005EF10;
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = v4;
  v8 = sub_3802C(inited);
  v0[18] = v8;
  swift_setDeallocating();
  sub_3026C(v7);
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v9 = *v5;
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_30D80;
  v11 = v0[17];
  v12 = v0[12];

  return sub_3468C(v12, 0xD00000000000001DLL, 0x800000000005EEF0, v8);
}

uint64_t sub_30D80()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 160) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_30F58, 0, 0);
  }

  else
  {
    v9 = *(v2 + 136);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_30F58()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_30FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_5A648();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_31080, 0, 0);
}

uint64_t sub_31080()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = sub_5CBC((v0[15] + 16), *(v0[15] + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x657361726870;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v8 = sub_3802C(inited);
  v0[19] = v8;
  swift_setDeallocating();
  sub_3026C(inited + 32);
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v9 = *v6;
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_31218;
  v11 = v0[18];
  v12 = v0[12];

  return sub_3468C(v12, 0xD00000000000001FLL, 0x800000000005EED0, v8);
}

uint64_t sub_31218()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_313F0, 0, 0);
  }

  else
  {
    v9 = *(v2 + 144);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_313F0()
{
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_3147C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  sub_5F90(a3, v5 + 16);
  sub_5F90(a4, v5 + 56);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v10 = sub_5B228();
  sub_5B44(v10, qword_763B8);
  v11 = sub_5B218();
  v12 = sub_5B4B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "CamErrorFlow: new instance initialised", v13, 2u);
  }

  sub_5D00(a4);
  sub_5D00(a3);
  return v5;
}

uint64_t sub_315A0(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = sub_5A908();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = *(*(sub_5B94(&qword_72C90, &unk_5CE60) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v12 = sub_5A588();
  v2[33] = v12;
  v13 = *(v12 - 8);
  v2[34] = v13;
  v14 = *(v13 + 64) + 15;
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_317C0, 0, 0);
}

uint64_t sub_317C0()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[36] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "CamErrorFlow: execute called", v4, 2u);
  }

  v5 = async function pointer to static ErrorTemplates.genericError()[1];
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_31918;
  v7 = v0[32];

  return static ErrorTemplates.genericError()(v7);
}

uint64_t sub_31918()
{
  v2 = *(*v1 + 296);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_31F9C;
  }

  else
  {
    v3 = sub_31A30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_31A30()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 184);
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_5A868();
  sub_5A868();
  v10 = *(v0 + 88);
  sub_5CBC((v0 + 56), *(v0 + 80));
  sub_5A218();
  v11 = sub_5A488();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  sub_5A3F8();
  sub_5D4C(v0 + 96, &qword_721D8, &qword_5C480);
  sub_5D4C(v8, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 16));
  sub_5D00((v0 + 56));
  v12 = v9[5];
  v13 = v9[6];
  sub_5CBC(v9 + 2, v12);
  *(v0 + 160) = v7;
  *(v0 + 168) = &protocol witness table for AceOutput;
  v14 = sub_5F2C((v0 + 136));
  (*(v6 + 16))(v14, v5, v7);
  v15 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v16 = swift_task_alloc();
  *(v0 + 304) = v16;
  *v16 = v0;
  v16[1] = sub_31C7C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 136, v12, v13);
}

uint64_t sub_31C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_320F8;
  }

  else
  {
    sub_5D00((v2 + 136));
    v5 = sub_31DA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_31DA8()
{
  v1 = v0[34];
  v21 = v0[33];
  v22 = v0[35];
  v2 = v0[30];
  v19 = v0[29];
  v20 = v0[31];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v17 = v7[11];
  v18 = v0[22];
  sub_5CBC(v7 + 7, v7[10]);
  sub_5A1E8();
  (*(v3 + 104))(v4, enum case for ActivityType.failed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);

  sub_5A1C8();
  sub_5A158();

  sub_5A438();
  (*(v2 + 8))(v20, v19);
  (*(v1 + 8))(v22, v21);
  v9 = v0[35];
  v10 = v0[31];
  v11 = v0[32];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[24];

  v15 = v0[1];

  return v15();
}

uint64_t sub_31F9C()
{
  v1 = v0[36];
  v2 = v0[32];
  (*(v0[34] + 56))(v2, 1, 1, v0[33]);
  sub_5D4C(v2, &qword_72C90, &unk_5CE60);
  v3 = sub_5B218();
  v4 = sub_5B4C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Failure producing error dialog to present to user.", v5, 2u);
  }

  v6 = v0[22];

  sub_5A438();
  v7 = v0[35];
  v8 = v0[31];
  v9 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[24];

  v13 = v0[1];

  return v13();
}

uint64_t sub_320F8()
{
  sub_5D00(v0 + 17);
  v1 = v0[34];
  v21 = v0[33];
  v22 = v0[35];
  v2 = v0[30];
  v19 = v0[29];
  v20 = v0[31];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  v17 = v7[11];
  v18 = v0[22];
  sub_5CBC(v7 + 7, v7[10]);
  sub_5A1E8();
  (*(v3 + 104))(v4, enum case for ActivityType.failed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);

  sub_5A1C8();
  sub_5A158();

  sub_5A438();
  (*(v2 + 8))(v20, v19);
  (*(v1 + 8))(v22, v21);
  v9 = v0[35];
  v10 = v0[31];
  v11 = v0[32];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[24];

  v15 = v0[1];

  return v15();
}

uint64_t sub_322F4()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  v1 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_32364()
{
  v2 = *v0;
  type metadata accessor for CamErrorFlow();
  return sub_5A098();
}

uint64_t sub_323C0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_315A0(a1);
}

uint64_t sub_3245C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CamErrorFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_32494(uint64_t a1)
{
  v2 = sub_5A7D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v7 = sub_5B228();
  sub_5B44(v7, qword_763B8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_5B218();
  v9 = sub_5B4B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_326D8();
    v12 = sub_5B798();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_2DC10(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "CamErrorFlow: on called with %s", v10, 0xCu);
    sub_5D00(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

unint64_t sub_326D8()
{
  result = qword_71C90;
  if (!qword_71C90)
  {
    sub_5A7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C90);
  }

  return result;
}

uint64_t sub_32730(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);

  return sub_5A1B8();
}

uint64_t sub_32774(uint64_t a1)
{
  v107 = a1;
  v1 = sub_5B94(&qword_71C88, &qword_5C2A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v98 - v3);
  v102 = type metadata accessor for CAMDirectInvocation();
  v101 = *(v102 - 8);
  v5 = *(v101 + 64);
  v6 = __chkstk_darwin(v102);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v98 - v9;
  v106 = sub_5A858();
  v105 = *(v106 - 8);
  v11 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5A838();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5B94(&qword_72D40, &unk_5CF10);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v98 - v20;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v22 = sub_5B228();
  v103 = sub_5B44(v22, qword_763B8);
  v23 = sub_5B218();
  v24 = sub_5B4B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v100 = v8;
    v99 = v17;
    v26 = v10;
    v27 = v13;
    v28 = v25;
    v29 = swift_slowAlloc();
    *&v114 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_2DC10(0xD000000000000014, 0x800000000005EFC0, &v114);
    _os_log_impl(&dword_0, v23, v24, "%s", v28, 0xCu);
    sub_5D00(v29);

    v13 = v27;
    v10 = v26;
    v17 = v99;
    v8 = v100;
  }

  v30 = v107;
  sub_5A178();
  v31 = sub_5A188();
  v32 = (*(*(v31 - 8) + 48))(v21, 1, v31);
  sub_5D4C(v21, &qword_72D40, &unk_5CF10);
  if (v32 != 1)
  {
    sub_5A078();
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    *&v114 = sub_5A068();
LABEL_16:
    sub_5A088();

    sub_5A0E8();
  }

  if (sub_4916C(v30) != 3)
  {
    *(&v115 + 1) = &type metadata for CAMRootFlowPluginFeatureFlags;
    v116 = sub_339C4();
    v33 = sub_5A918();
    sub_5D00(&v114);
    if (v33)
    {
      sub_5A1F8();
      sub_5A6C8();
      v34 = type metadata accessor for DefaultCatExecutor();
      v35 = swift_allocObject();
      v110 = v34;
      v111 = &off_6E270;
      *&v109 = v35;
      type metadata accessor for RepeatRecentDialogFlow();
      v36 = swift_allocObject();
      v37 = sub_5EDC(&v109, v34);
      v38 = *(*(v34 - 8) + 64);
      __chkstk_darwin(v37);
      v40 = (&v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v41 + 16))(v40);
      v42 = *v40;
      v36[15] = v34;
      v36[16] = &off_6E270;
      v36[12] = v42;
      v36[17] = 4;
      sub_5B7C(&v114, (v36 + 2));
      sub_5B7C(v112, (v36 + 7));
      v36[18] = sub_4464C;
      v36[19] = 0;
      sub_5D00(&v109);
      *&v114 = v36;
      v43 = &unk_72D80;
      v44 = type metadata accessor for RepeatRecentDialogFlow;
LABEL_15:
      sub_33A18(v43, 255, v44);
      goto LABEL_16;
    }
  }

  if (sub_5A808() & 1) != 0 || (sub_5A7E8() & 1) != 0 || (sub_5A848() & 1) != 0 || (sub_5A7F8())
  {
    sub_5A1F8();
    sub_5A6C8();
    v45 = type metadata accessor for DefaultCatExecutor();
    v46 = swift_allocObject();
    sub_5A148();
    v108[3] = v45;
    v108[4] = &off_6E270;
    v108[0] = v46;
    type metadata accessor for UniversalActionTaskInterruptionFlow();
    v47 = swift_allocObject();
    v48 = sub_5EDC(v108, v45);
    v49 = *(*(v45 - 8) + 64);
    __chkstk_darwin(v48);
    v51 = (&v98 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51);
    v53 = *v51;
    *(v47 + 120) = v45;
    *(v47 + 128) = &off_6E270;
    *(v47 + 96) = v53;
    swift_getKeyPath();
    v54 = sub_5B94(&qword_72D68, &unk_5CF50);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    *(v47 + 184) = sub_5AF18();
    sub_5B7C(&v114, v47 + 16);
    sub_5B7C(v112, v47 + 56);
    *(v47 + 176) = 2;
    sub_5B7C(&v109, v47 + 136);
    sub_5D00(v108);
    *&v114 = v47;
    v43 = &unk_72D70;
    v44 = type metadata accessor for UniversalActionTaskInterruptionFlow;
    goto LABEL_15;
  }

  v58 = v105;
  v59 = v104;
  v60 = v106;
  (*(v105 + 16))();
  if ((*(v58 + 88))(v59, v60) != enum case for Parse.directInvocation(_:))
  {
    (*(v58 + 8))(v59, v60);
    goto LABEL_21;
  }

  (*(v58 + 96))(v59, v60);
  (*(v14 + 32))(v17, v59, v13);
  sub_3601C(v4);
  if ((*(v101 + 48))(v4, 1, v102) == 1)
  {
    (*(v14 + 8))(v17, v13);
    sub_5D4C(v4, &qword_71C88, &qword_5C2A0);
LABEL_21:
    v61 = sub_5B218();
    v62 = sub_5B4C8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v114 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_2DC10(0xD000000000000014, 0x800000000005EFC0, &v114);
      _os_log_impl(&dword_0, v61, v62, "%s: could not find any flow for this parse", v63, 0xCu);
      sub_5D00(v64);
    }

    return sub_5A0D8();
  }

  sub_1AF04(v4, v10);
  sub_2E9CC(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v70 = v17;
    if (EnumCaseMultiPayload)
    {
      v95 = sub_5B218();
      v96 = sub_5B4C8();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_0, v95, v96, "CAMRootFlowPlugin does not offer new flows for .disambiguationResponse DI", v97, 2u);
      }

      sub_5A0D8();
      sub_2EA30(v10);
      return (*(v14 + 8))(v70, v13);
    }

    else
    {
      v71 = *(sub_5B94(&qword_71C98, &qword_5C2A8) + 48);
      v72 = type metadata accessor for ActionDisambiguationEntryFlow(0);
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();
      *&v114 = sub_2290();
      sub_33A18(&qword_72D48, 255, type metadata accessor for ActionDisambiguationEntryFlow);
      sub_5A088();

      sub_5A0E8();

      sub_2EA30(v10);
      (*(v14 + 8))(v17, v13);
      v75 = sub_5A318();
      v76 = *(*(v75 - 8) + 8);
      v76(&v8[v71], v75);
      return (v76)(v8, v75);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v77 = type metadata accessor for DefaultCatExecutor();
      v66 = v17;
      v78 = swift_allocObject();
      sub_5A6C8();
      sub_5A148();
      v110 = v77;
      v111 = &off_6E270;
      *&v109 = v78;
      type metadata accessor for AskRepeatFlow();
      v79 = swift_allocObject();
      v80 = sub_5EDC(&v109, v77);
      v81 = *(*(v77 - 8) + 64);
      __chkstk_darwin(v80);
      v83 = (&v98 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v84 + 16))(v83);
      v85 = sub_33814(*v83, &v114, v112, v79, "AskRepeatFlow: new instance initialised");
      sub_5D00(&v109);
      *&v114 = v85;
      v68 = &unk_72D60;
      v69 = type metadata accessor for AskRepeatFlow;
    }

    else
    {
      v66 = v17;
      if (EnumCaseMultiPayload == 3)
      {
        type metadata accessor for FallbackEntryFlow();
        v67 = swift_allocObject();
        *(v67 + 56) = 0;
        *(v67 + 16) = 0u;
        *(v67 + 32) = 0u;
        *(v67 + 48) = 0;
        *(v67 + 64) = 7;
        *&v114 = v67;
        v68 = &unk_72D50;
        v69 = type metadata accessor for FallbackEntryFlow;
      }

      else
      {
        v86 = type metadata accessor for DefaultCatExecutor();
        v87 = swift_allocObject();
        sub_5A6C8();
        sub_5A148();
        v110 = v86;
        v111 = &off_6E270;
        *&v109 = v87;
        type metadata accessor for GiveUpRepeatFlow();
        v88 = swift_allocObject();
        v89 = sub_5EDC(&v109, v86);
        v90 = *(*(v86 - 8) + 64);
        __chkstk_darwin(v89);
        v92 = (&v98 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v93 + 16))(v92);
        v94 = sub_33814(*v92, &v114, v112, v88, "GiveUpRepeatFlow new instance initialised");
        sub_5D00(&v109);
        *&v114 = v94;
        v68 = &unk_72D58;
        v69 = type metadata accessor for GiveUpRepeatFlow;
      }
    }

    sub_33A18(v68, 255, v69);
    sub_5A088();

    sub_5A0E8();

    sub_2EA30(v10);
    return (*(v14 + 8))(v66, v13);
  }
}

uint64_t sub_33784@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAMRootFlowPlugin();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_33814(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v15[3] = type metadata accessor for DefaultCatExecutor();
  v15[4] = &off_6E270;
  v15[0] = a1;
  sub_5F90(v15, a4 + 16);
  sub_5F90(a2, a4 + 56);
  sub_5F90(a3, a4 + 96);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v10 = sub_5B228();
  sub_5B44(v10, qword_763B8);
  v11 = sub_5B218();
  v12 = sub_5B4B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a5, v13, 2u);
  }

  sub_5D00(a3);
  sub_5D00(a2);
  sub_5D00(v15);
  return a4;
}

uint64_t sub_3396C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_5AE98();
  *a2 = result;
  return result;
}

uint64_t sub_33998(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_5AEA8();
}

unint64_t sub_339C4()
{
  result = qword_72D78;
  if (!qword_72D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D78);
  }

  return result;
}

uint64_t sub_33A18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAMRootFlowPluginFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CAMRootFlowPluginFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_33B4C()
{
  result = qword_72D88;
  if (!qword_72D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D88);
  }

  return result;
}

Swift::Int sub_33BA8()
{
  sub_5B848();
  sub_5B858(0);
  return sub_5B868();
}

Swift::Int sub_33C14()
{
  sub_5B848();
  sub_5B858(0);
  return sub_5B868();
}

unint64_t sub_33C7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5B94(&qword_72E78, &unk_5D0B0);
    v2 = sub_5B6A8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_302D4(&v27, v29);
        sub_302D4(v29, v30);
        sub_302D4(v30, &v28);
        result = sub_37278(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_5D00(v12);
          result = sub_302D4(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_302D4(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_33ED4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5B94(&qword_72E70, &qword_5D0A8);
    v2 = sub_5B6A8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_C0A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_302D4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_302D4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_302D4(v31, v32);
    result = sub_5B548(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_302D4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}