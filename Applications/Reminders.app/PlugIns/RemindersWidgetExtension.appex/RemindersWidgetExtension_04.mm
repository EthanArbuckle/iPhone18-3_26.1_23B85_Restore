uint64_t sub_10006D34C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v167 = a3;
  v168 = a4;
  v178 = a2;
  v154 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  v7 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v155 = (v153 - v8);
  v9 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v166 = v153 - v11;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v163 = *(Configuration - 1);
  v12 = *(v163 + 64);
  v13 = __chkstk_darwin(Configuration);
  v175 = v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v14;
  __chkstk_darwin(v13);
  v171 = v153 - v15;
  v179 = sub_1000C0C18();
  v16 = *(v179 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v179);
  v173 = v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v170 = v153 - v21;
  __chkstk_darwin(v20);
  v23 = v153 - v22;
  v24 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v153 - v26;
  v28 = sub_1000C1338();
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v172 = v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v162 = v153 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = v153 - v35;
  v161 = v37;
  __chkstk_darwin(v34);
  v176 = v153 - v38;
  v39 = v5;
  v41 = v40;
  sub_1000082B4(v5 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, v27, &qword_1000EFB88, &qword_1000C7C40);
  v180 = v28;
  v181 = v41;
  v42 = (*(v41 + 48))(v27, 1, v28);
  v177 = a1;
  if (v42 != 1)
  {
    v36 = v27;
    goto LABEL_6;
  }

  sub_1000084C0(v27, &qword_1000EFB88, &qword_1000C7C40);
  sub_1000C0BF8();
  v43 = v179;
  (*(v16 + 16))(v23, a1, v179);
  v44 = (*(v16 + 88))(v23, v43);
  v45 = v176;
  if (v44 != enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    if (v44 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:) || v44 == enum case for TTRListType.PredefinedSmartListType.all(_:))
    {
      goto LABEL_7;
    }

    if (v44 != enum case for TTRListType.PredefinedSmartListType.flagged(_:) && v44 != enum case for TTRListType.PredefinedSmartListType.assigned(_:))
    {
      if (v44 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) || v44 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
      {
        goto LABEL_7;
      }

      v111 = v16;
      if (qword_1000EC968 != -1)
      {
        swift_once();
      }

      v112 = sub_1000C1568();
      sub_10000D978(v112, qword_1000EF8E8);
      v113 = sub_1000C1558();
      v114 = sub_1000C2948();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "TTRNewWidgetInteractor unhandled predefinedSmartListType", v115, 2u);
      }

      v16 = v111;
      (*(v111 + 8))(v23, v179);
LABEL_6:
      v45 = v176;
      goto LABEL_7;
    }
  }

  v46 = *(v5 + 24);
  v47 = sub_1000C0BE8();
  if (v47)
  {
    v48 = v47;
    v49 = [v47 sortingStyle];
    v50 = v162;
    sub_1000C2988();

    v52 = v180;
    v51 = v181;
    (*(v181 + 8))(v36, v180);
    (*(v51 + 32))(v36, v50, v52);
  }

LABEL_7:
  v165 = v39;
  v53 = *(v181 + 32);
  v160 = v181 + 32;
  v159 = v53;
  v53(v45, v36, v180);
  v55 = v171;
  v54 = v172;
  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v56 = sub_1000C1568();
  v57 = sub_10000D978(v56, qword_1000EF8E8);
  v58 = v170;
  v59 = v177;
  v169 = *(v16 + 16);
  v169(v170, v177, v179);
  sub_10007E410(v178, v55, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  v60 = *(v181 + 16);
  v158 = v181 + 16;
  v157 = v60;
  v60(v54, v45, v180);
  v153[1] = v57;
  v61 = sub_1000C1558();
  v62 = sub_1000C2968();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v156 = v16;
    v64 = v63;
    v153[0] = swift_slowAlloc();
    v182[0] = v153[0];
    *v64 = 136315650;
    v65 = sub_1000C0C08();
    v67 = v66;
    v68 = *(v156 + 8);
    v68(v58, v179);
    v69 = sub_1000B7B58(v65, v67, v182);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2080;
    sub_10007E410(v55, v175, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v70 = sub_1000C26A8();
    v72 = v71;
    sub_10007E478(v55, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v73 = sub_1000B7B58(v70, v72, v182);

    *(v64 + 14) = v73;
    *(v64 + 22) = 2080;
    v74 = v180;
    v75 = sub_1000C1328();
    v77 = v76;
    Configuration = *(v181 + 8);
    v78 = v54;
    v79 = v68;
    Configuration(v78, v74);
    v80 = sub_1000B7B58(v75, v77, v182);
    v59 = v177;

    *(v64 + 24) = v80;
    _os_log_impl(&_mh_execute_header, v61, v62, "TTRNewWidgetInteractor fetching pre-defined smart list: %s configuration %s sortingStyle: %s", v64, 0x20u);
    swift_arrayDestroy();

    v16 = v156;
    v45 = v176;
  }

  else
  {

    Configuration = *(v181 + 8);
    Configuration(v54, v180);
    sub_10007E478(v55, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v79 = *(v16 + 8);
    v79(v58, v179);
  }

  v81 = v173;
  v82 = v179;
  v169(v173, v59, v179);
  v83 = (*(v16 + 88))(v81, v82);
  if (v83 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    v84 = v175;
    sub_10007E410(v178, v175, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v85 = v162;
    v86 = v180;
    v157(v162, v45, v180);
    v87 = (*(v163 + 80) + 24) & ~*(v163 + 80);
    v88 = (v164 + *(v181 + 80) + v87) & ~*(v181 + 80);
    v89 = swift_allocObject();
    v90 = v165;
    *(v89 + 16) = v165;
    sub_10007E4DC(v84, v89 + v87, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v159(v89 + v88, v85, v86);
    v91 = sub_1000C2868();
    v92 = v166;
    (*(*(v91 - 8) + 56))(v166, 1, 1, v91);
    sub_1000C2848();
    swift_retain_n();

    v93 = v168;

    v94 = sub_1000C2838();
    v95 = swift_allocObject();
    v95[2] = v94;
    v95[3] = &protocol witness table for MainActor;
    v95[4] = &unk_1000C7CD8;
    v95[5] = v89;
    v96 = v167;
    v95[6] = v90;
    v95[7] = v96;
    v95[8] = v93;
    v97 = &unk_1000C7CE0;
LABEL_14:
    sub_1000777E8(0, 0, v92, v97, v95);

    v98 = v45;
    v99 = v86;
    return (Configuration)(v98, v99);
  }

  if (v83 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:))
  {
    v100 = v175;
    sub_10007E410(v178, v175, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v101 = (*(v163 + 80) + 24) & ~*(v163 + 80);
    v102 = swift_allocObject();
    v103 = v165;
    *(v102 + 16) = v165;
    sub_10007E4DC(v100, v102 + v101, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v104 = sub_1000C2868();
    v105 = v166;
    (*(*(v104 - 8) + 56))(v166, 1, 1, v104);
    sub_1000C2848();
    swift_retain_n();
    v106 = v168;

    v107 = sub_1000C2838();
    v108 = swift_allocObject();
    v108[2] = v107;
    v108[3] = &protocol witness table for MainActor;
    v108[4] = &unk_1000C7CA8;
    v108[5] = v102;
    v109 = v167;
    v108[6] = v103;
    v108[7] = v109;
    v108[8] = v106;
    sub_1000777E8(0, 0, v105, &unk_1000C7CB0, v108);

LABEL_17:
    v99 = v180;
    v98 = v45;
    return (Configuration)(v98, v99);
  }

  if (v83 == enum case for TTRListType.PredefinedSmartListType.all(_:))
  {
    v116 = v175;
    sub_10007E410(v178, v175, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v117 = v162;
    v86 = v180;
    v157(v162, v45, v180);
    v118 = (*(v163 + 80) + 24) & ~*(v163 + 80);
    v119 = (v164 + *(v181 + 80) + v118) & ~*(v181 + 80);
    v120 = swift_allocObject();
    v121 = v165;
    *(v120 + 16) = v165;
    sub_10007E4DC(v116, v120 + v118, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v159(v120 + v119, v117, v86);
    v122 = sub_1000C2868();
    v92 = v166;
    (*(*(v122 - 8) + 56))(v166, 1, 1, v122);
    sub_1000C2848();
    swift_retain_n();
    v123 = v168;

    v124 = sub_1000C2838();
    v95 = swift_allocObject();
    v95[2] = v124;
    v95[3] = &protocol witness table for MainActor;
    v95[4] = &unk_1000C7C90;
    v95[5] = v120;
    v125 = v167;
    v95[6] = v121;
    v95[7] = v125;
    v95[8] = v123;
    v97 = &unk_1000C7C98;
    goto LABEL_14;
  }

  if (v83 == enum case for TTRListType.PredefinedSmartListType.flagged(_:))
  {
    v126 = v175;
    sub_10007E410(v178, v175, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v127 = v162;
    v86 = v180;
    v157(v162, v45, v180);
    v128 = (*(v163 + 80) + 24) & ~*(v163 + 80);
    v129 = (v164 + *(v181 + 80) + v128) & ~*(v181 + 80);
    v130 = swift_allocObject();
    v131 = v165;
    *(v130 + 16) = v165;
    sub_10007E4DC(v126, v130 + v128, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v159(v130 + v129, v127, v86);
    v132 = sub_1000C2868();
    v92 = v166;
    (*(*(v132 - 8) + 56))(v166, 1, 1, v132);
    sub_1000C2848();
    swift_retain_n();
    v133 = v168;

    v134 = sub_1000C2838();
    v95 = swift_allocObject();
    v95[2] = v134;
    v95[3] = &protocol witness table for MainActor;
    v95[4] = &unk_1000C7CC0;
    v95[5] = v130;
    v135 = v167;
    v95[6] = v131;
    v95[7] = v135;
    v95[8] = v133;
    v97 = &unk_1000C7CC8;
    goto LABEL_14;
  }

  if (v83 == enum case for TTRListType.PredefinedSmartListType.assigned(_:))
  {
    v136 = v175;
    sub_10007E410(v178, v175, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v137 = v162;
    v86 = v180;
    v157(v162, v45, v180);
    v138 = (*(v163 + 80) + 24) & ~*(v163 + 80);
    v139 = (v164 + *(v181 + 80) + v138) & ~*(v181 + 80);
    v140 = swift_allocObject();
    v141 = v165;
    *(v140 + 16) = v165;
    sub_10007E4DC(v136, v140 + v138, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    v159(v140 + v139, v137, v86);
    v142 = sub_1000C2868();
    v92 = v166;
    (*(*(v142 - 8) + 56))(v166, 1, 1, v142);
    sub_1000C2848();
    swift_retain_n();
    v143 = v168;

    v144 = sub_1000C2838();
    v95 = swift_allocObject();
    v95[2] = v144;
    v95[3] = &protocol witness table for MainActor;
    v95[4] = &unk_1000C7C70;
    v95[5] = v140;
    v145 = v167;
    v95[6] = v141;
    v95[7] = v145;
    v95[8] = v143;
    v97 = &unk_1000C7C80;
    goto LABEL_14;
  }

  if (v83 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) || v83 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
  {
    v146 = objc_opt_self();
    v147 = sub_1000C2638();
    v148 = [v146 internalErrorWithDebugDescription:v147];

    v149 = v155;
    *v155 = v148;
    swift_storeEnumTagMultiPayload();
    v167(v149);
    sub_1000084C0(v149, &qword_1000EFB98, &qword_1000C7C50);
    goto LABEL_17;
  }

  v150 = sub_1000C1558();
  v151 = sub_1000C2948();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *v152 = 0;
    _os_log_impl(&_mh_execute_header, v150, v151, "TTRNewWidgetInteractor unhandled predefinedSmartListType", v152, 2u);
  }

  Configuration(v45, v180);
  return (v79)(v81, v179);
}

uint64_t sub_10006E7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000C11F8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1000C0AF8();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = sub_100004D04(&qword_1000EFBA8, &qword_1000C7CE8);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = sub_1000C1458();
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = sub_1000C1388();
  v4[20] = v17;
  v18 = *(v17 - 8);
  v4[21] = v18;
  v19 = *(v18 + 64) + 15;
  v4[22] = swift_task_alloc();
  v20 = sub_1000C1338();
  v4[23] = v20;
  v21 = *(v20 - 8);
  v4[24] = v21;
  v22 = *(v21 + 64) + 15;
  v4[25] = swift_task_alloc();
  v23 = sub_1000C14A8();
  v4[26] = v23;
  v24 = *(v23 - 8);
  v4[27] = v24;
  v25 = *(v24 + 64) + 15;
  v4[28] = swift_task_alloc();
  v26 = sub_1000C1478();
  v4[29] = v26;
  v27 = *(v26 - 8);
  v4[30] = v27;
  v28 = *(v27 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v29 = sub_1000C13E8();
  v4[33] = v29;
  v30 = *(v29 - 8);
  v4[34] = v30;
  v31 = *(v30 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return _swift_task_switch(sub_10006EB8C, 0, 0);
}

uint64_t sub_10006EB8C()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v0[37] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_10006EC4C;
  v6 = v0[36];

  return sub_10007245C(v6, v1 + v4);
}

uint64_t sub_10006EC4C()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_10006ED48, 0, 0);
}

uint64_t sub_10006ED48()
{
  v2 = *(v0 + 288);
  v3 = **(v0 + 48);
  v4 = sub_100073338();
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    goto LABEL_34;
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 256);
  v76 = *(v0 + 264);
  v78 = *(v0 + 288);
  v9 = *(v0 + 240);
  v68 = *(v0 + 232);
  v89 = *(v0 + 224);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v72 = *(v0 + 184);
  v74 = *(v0 + 280);
  v80 = *(v0 + 248);
  v82 = *(v0 + 176);
  v12 = *(v0 + 168);
  v84 = *(v0 + 160);
  v92 = *(v0 + 104);
  v94 = *(v0 + 128);
  v95 = *(v0 + 96);
  v99 = *(v0 + 88);
  v13 = *(v0 + 48);
  v70 = *(v0 + 56);
  v86 = *(v0 + 40);
  v14 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v8 = v5;
  sub_1000082B4(v13 + *(v6 + 20), v8 + v14, &qword_1000EE310, &qword_1000C6380);
  (*(v9 + 104))(v8, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v68);
  (*(v10 + 16))(v11, v70, v72);
  (*(v7 + 16))(v74, v78, v76);
  (*(v9 + 16))(v80, v8, v68);
  (*(v12 + 104))(v82, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v84);
  sub_1000C1498();
  v15 = *(v86 + 24);
  sub_1000C0AE8();
  sub_1000C1488();
  (*(v95 + 8))(v92, v99);
  v16 = *(v0 + 152);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  sub_1000C14C8();
  (*(v18 + 8))(v17, v19);
  v20 = sub_1000C1418();
  v21 = sub_1000C1428();
  v101 = v20;
  v93 = v20;

  sub_100078138(v21, sub_10002245C, &type metadata accessor for REMRemindersListDataView.ReminderLite);
  v22 = *(v20 + 16);
  if (v22)
  {
    v98 = 0;
    v23 = *(v0 + 72);
    v25 = *(v23 + 16);
    v24 = v23 + 16;
    v1 = v25;
    v26 = v20 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v27 = *(v24 + 56);
    do
    {
      v28 = *(v0 + 80);
      v29 = *(v0 + 64);
      (v1)(v28, v26, v29);
      v5 = sub_1000C11B8();
      (*(v24 - 8))(v28, v29);
      if ((v5 & 1) == 0)
      {
        if (__OFADD__(v98, 1))
        {
          goto LABEL_33;
        }

        ++v98;
      }

      v26 += v27;
      --v22;
    }

    while (v22);
  }

  else
  {

    v98 = 0;
  }

  v30 = *(v0 + 288);
  v31 = *(v0 + 152);
  v1 = sub_1000C1438();
  v92 = sub_1000C1448();
  sub_10006F690();
  v5 = v32;
  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*(v32 + 16))
    {
      goto LABEL_12;
    }

LABEL_30:

    v45 = 0;
    goto LABEL_41;
  }

  if (!sub_1000C2AC8())
  {
    goto LABEL_30;
  }

LABEL_12:
  v101 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C2C38())
  {
    v87 = v5;
    v90 = i;
    v34 = 0;
    v35 = v1 & 0xC000000000000001;
    v36 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = &TTRBundleLookupObject__metaData;
    v96 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v35)
      {
        v38 = sub_1000C2B48();
      }

      else
      {
        if (v34 >= *(v36 + 16))
        {
          goto LABEL_32;
        }

        v38 = *(v1 + 8 * v34 + 32);
      }

      v39 = v38;
      v5 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (([v38 *&v37[22].ivar_base_size] & 1) != 0 || (objc_msgSend(v39, "isRecurrent") & 1) == 0)
      {
      }

      else
      {
        *(v0 + 16) = v39;
        sub_1000C1068();
        if (sub_1000C0DE8())
        {
        }

        else
        {
          sub_1000C2B68();
          v40 = v35;
          v41 = v37;
          v42 = v1;
          v43 = v101[2];
          sub_1000C2B88();
          v1 = v42;
          v37 = v41;
          v35 = v40;
          i = v90;
          sub_1000C2B98();
          sub_1000C2B78();
        }

        v36 = v96;
      }

      ++v34;
      if (v5 == i)
      {
        v44 = v101;
        v5 = v87;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_37:
  *(v0 + 24) = v44;
  sub_100004D04(&qword_1000EFBB8, &qword_1000C7CF8);
  sub_1000C1058();
  sub_10007FDB4(&qword_1000EFBC0, &qword_1000EFBB8, &qword_1000C7CF8);
  sub_10007CDD4(&qword_1000EFB78, &type metadata accessor for REMObjectID_Codable);
  v46 = sub_1000C2758();

  v47 = sub_100079DF0(v46, v5);

  if ((v47 & 0xC000000000000001) != 0)
  {
    v45 = sub_1000C2AC8();
  }

  else
  {
    v45 = *(v47 + 16);
  }

LABEL_41:
  v48 = *(v0 + 152);
  result = sub_1000C1408();
  if (__OFSUB__(v98, v45))
  {
    __break(1u);
  }

  else
  {
    v77 = *(v0 + 288);
    v79 = v98 - v45;
    v73 = *(v0 + 272);
    v75 = *(v0 + 264);
    v71 = *(v0 + 256);
    v50 = *(v0 + 240);
    v81 = *(v0 + 280);
    v83 = *(v0 + 248);
    v69 = *(v0 + 232);
    v51 = *(v0 + 216);
    v65 = *(v0 + 208);
    v66 = *(v0 + 224);
    v85 = *(v0 + 200);
    v88 = *(v0 + 176);
    v52 = *(v0 + 144);
    v64 = *(v0 + 152);
    v63 = *(v0 + 136);
    v91 = *(v0 + 128);
    v97 = *(v0 + 104);
    v100 = *(v0 + 80);
    v53 = *(v0 + 32);
    v67 = result;
    v54 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    v55 = v54[8];
    v56 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v57 = sub_1000C0E28();
    (*(*(v57 - 8) + 104))(&v53[v55], v56, v57);
    v58 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v59 = sub_1000C0E58();
    (*(*(v59 - 8) + 104))(&v53[v55], v58, v59);
    v60 = sub_100069FF8(v1);

    v61 = sub_100069FF8(v92);

    (*(v52 + 8))(v64, v63);
    (*(v51 + 8))(v66, v65);
    (*(v50 + 8))(v71, v69);
    (*(v73 + 8))(v77, v75);
    *v53 = v67;
    *(v53 + 1) = v79;
    *&v53[v54[9]] = v93;
    *&v53[v54[10]] = v60;
    *&v53[v54[11]] = v61;

    v62 = *(v0 + 8);

    return v62();
  }

  return result;
}

void sub_10006F690()
{
  v1 = sub_1000C13E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v2 + 8))(v6, v1);
LABEL_3:
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (sub_1000C2C38())
      {
        sub_10007F3D4(_swiftEmptyArrayStorage);
      }
    }

    return;
  }

  if (v7 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v2 + 96))(v6, v1);
    v8 = *v6;
    return;
  }

  if (v7 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v7 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    goto LABEL_3;
  }

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v10 = sub_1000C1568();
  sub_10000D978(v10, qword_1000EF8E8);
  v11 = sub_1000C1558();
  v12 = sub_1000C2948();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TTRNewWidgetInteractorFetchConfiguration.ShowCompleted.additionalVisibleRemindersSet: unhandled case", v13, 2u);
  }

  if (_swiftEmptyArrayStorage >> 62 && sub_1000C2C38())
  {
    sub_10007F3D4(_swiftEmptyArrayStorage);
  }

  (*(v2 + 8))(v6, v1);
}

void sub_10006F940(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 remObjectID];
  v4 = sub_1000C2918();

  *a2 = v4;
}

uint64_t sub_10006F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000C11F8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1000C0E58();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1000C1528();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_100004D04(&qword_1000EFBD0, &qword_1000C7D08);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = sub_1000C1318();
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  v20 = sub_1000C1478();
  v4[21] = v20;
  v21 = *(v20 - 8);
  v4[22] = v21;
  v22 = *(v21 + 64) + 15;
  v4[23] = swift_task_alloc();
  v23 = sub_1000C13E8();
  v4[24] = v23;
  v24 = *(v23 - 8);
  v4[25] = v24;
  v25 = *(v24 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10006FC94, 0, 0);
}

uint64_t sub_10006FC94()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v0[27] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_10006FD54;
  v6 = v0[26];

  return sub_10007245C(v6, v1 + v4);
}

uint64_t sub_10006FD54()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_10006FE50, 0, 0);
}

uint64_t sub_10006FE50()
{
  v1 = *(v0 + 208);
  v2 = **(v0 + 32);
  result = sub_100073338();
  v4 = v2 + result;
  if (__OFADD__(v2, result))
  {
    goto LABEL_21;
  }

  v5 = *(v0 + 216);
  v69 = *(v0 + 208);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);
  v9 = *(v0 + 136);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v6 = v4;
  sub_1000082B4(v11 + *(v5 + 20), v6 + v13, &qword_1000EE310, &qword_1000C6380);
  (*(v7 + 104))(v6, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v8);
  v14 = *(v12 + 24);
  sub_1000C1348();
  v15 = *(v0 + 160);
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  sub_1000C14C8();
  (*(v17 + 8))(v16, v18);
  sub_1000C1308();
  v20 = sub_1000C1508();
  v21 = v0;
  if (v20 == 2 || (v20 & 1) == 0)
  {
    v22 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
  }

  else
  {
    v22 = &enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForAllCompleted(_:);
  }

  v23 = *(v0 + 112);
  v25 = *(v0 + 80);
  v24 = *(v0 + 88);
  v26 = *(v0 + 72);
  v27 = *v22;
  v28 = sub_1000C0E28();
  (*(*(v28 - 8) + 104))(v24, v27, v28);
  (*(v25 + 104))(v24, enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:), v26);
  v29 = sub_1000C1518();
  v30 = *(v29 + 16);
  if (!v30)
  {

    v31 = 0;
LABEL_16:
    v66 = v21[24];
    v67 = v21[26];
    v64 = v21[23];
    v65 = v21[25];
    v62 = v21[22];
    v63 = v21[21];
    v58 = v21[20];
    v43 = v21;
    v56 = v21[19];
    v60 = v21[18];
    v68 = v21[17];
    v45 = v21[13];
    v44 = v21[14];
    v46 = v21[11];
    v59 = v21[12];
    v48 = v21[9];
    v47 = v21[10];
    v71 = v21[8];
    v49 = v21[2];
    v61 = sub_1000C12F8();
    v50 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    (*(v47 + 16))(v49 + v50[8], v46, v48);
    v57 = sub_1000C1518();
    v51 = sub_1000C14E8();
    v55 = sub_100069FF8(v51);

    v52 = sub_1000C14F8();
    v54 = sub_100069FF8(v52);

    (*(v47 + 8))(v46, v48);
    (*(v45 + 8))(v44, v59);
    (*(v56 + 8))(v58, v60);
    (*(v62 + 8))(v64, v63);
    (*(v65 + 8))(v67, v66);
    *v49 = v61;
    v49[1] = v31;
    *(v49 + v50[9]) = v57;
    *(v49 + v50[10]) = v55;
    *(v49 + v50[11]) = v54;

    v53 = v43[1];

    return v53();
  }

  v31 = 0;
  v32 = *(v0 + 56);
  v34 = *(v32 + 16);
  v32 += 16;
  v33 = v34;
  v35 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v36 = *(v32 + 56);
  v70 = (v32 - 8);
  while (1)
  {
    v33(v21[8], v35, v21[6]);
    result = sub_1000C11B8();
    if (result)
    {
      (*v70)(v21[8], v21[6]);
      goto LABEL_9;
    }

    v37 = __OFADD__(v31, 1);
    v38 = v31 + 1;
    if (v37)
    {
      break;
    }

    v39 = v21[8];
    v40 = v21;
    v41 = v21[6];
    v42 = sub_1000C11C8();
    result = (*v70)(v39, v41);
    v37 = __OFADD__(v38, v42);
    v31 = v38 + v42;
    if (v37)
    {
      goto LABEL_20;
    }

    v21 = v40;
LABEL_9:
    v35 += v36;
    if (!--v30)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000703A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000C11F8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100004D04(&qword_1000EFBD8, &qword_1000C7D10);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1000C1528();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_1000C1388();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1000C1338();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = sub_1000C14A8();
  v3[20] = v19;
  v20 = *(v19 - 8);
  v3[21] = v20;
  v21 = *(v20 + 64) + 15;
  v3[22] = swift_task_alloc();
  v22 = sub_1000C1478();
  v3[23] = v22;
  v23 = *(v22 - 8);
  v3[24] = v23;
  v24 = *(v23 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v25 = sub_1000C13E8();
  v3[27] = v25;
  v26 = *(v25 - 8);
  v3[28] = v26;
  v27 = *(v26 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100070714, 0, 0);
}

uint64_t sub_100070714()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v0[31] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1000707D4;
  v6 = v0[30];

  return sub_10007245C(v6, v1 + v4);
}

uint64_t sub_1000707D4()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_1000708D0, 0, 0);
}

uint64_t sub_1000708D0()
{
  v1 = *(v0 + 240);
  v2 = **(v0 + 32);
  result = sub_100073338();
  v4 = v2 + result;
  if (__OFADD__(v2, result))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v55 = *(v0 + 232);
    v7 = *(v0 + 208);
    v57 = *(v0 + 216);
    v59 = *(v0 + 240);
    v8 = *(v0 + 192);
    v61 = *(v0 + 200);
    v9 = *(v0 + 184);
    v69 = *(v0 + 176);
    v10 = *(v0 + 144);
    v51 = *(v0 + 152);
    v53 = *(v0 + 136);
    v11 = *(v0 + 120);
    v63 = *(v0 + 128);
    v65 = *(v0 + 112);
    v71 = *(v0 + 80);
    v12 = *(v0 + 32);
    v67 = *(v0 + 24);
    v13 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
    *v7 = v4;
    sub_1000082B4(v12 + *(v5 + 20), v7 + v13, &qword_1000EE310, &qword_1000C6380);
    (*(v8 + 104))(v7, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v9);
    (*(v10 + 104))(v51, enum case for REMRemindersListDataView.SortingStyle.default(_:), v53);
    (*(v6 + 16))(v55, v59, v57);
    (*(v8 + 16))(v61, v7, v9);
    (*(v11 + 104))(v63, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v65);
    sub_1000C1498();
    v14 = *(v67 + 24);
    sub_1000C14B8();
    v15 = *(v0 + 104);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    sub_1000C14C8();
    (*(v17 + 8))(v16, v18);
    v19 = sub_1000C1518();
    v20 = *(v19 + 16);
    v70 = v19;
    v21 = 0;
    if (v20)
    {
      v22 = *(v0 + 48);
      v24 = *(v22 + 16);
      v23 = v22 + 16;
      v72 = v24;
      v25 = v19 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v26 = *(v23 + 56);
      while (1)
      {
        v27 = *(v0 + 56);
        v28 = *(v0 + 40);
        v72(v27, v25, v28);
        v29 = sub_1000C11B8();
        (*(v23 - 8))(v27, v28);
        if ((v29 & 1) == 0 && __OFADD__(v21++, 1))
        {
          break;
        }

        v25 += v26;
        if (!--v20)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

LABEL_9:
    v58 = *(v0 + 240);
    v60 = *(v0 + 232);
    v54 = *(v0 + 224);
    v56 = *(v0 + 216);
    v31 = *(v0 + 192);
    v50 = *(v0 + 184);
    v52 = *(v0 + 208);
    v32 = *(v0 + 168);
    v48 = *(v0 + 160);
    v49 = *(v0 + 176);
    v62 = *(v0 + 200);
    v64 = *(v0 + 152);
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);
    v47 = *(v0 + 88);
    v66 = *(v0 + 128);
    v68 = *(v0 + 80);
    v73 = *(v0 + 56);
    v35 = *(v0 + 16);
    v36 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    v37 = v36[8];
    v38 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v39 = sub_1000C0E28();
    (*(*(v39 - 8) + 104))(&v35[v37], v38, v39);
    v40 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v41 = sub_1000C0E58();
    (*(*(v41 - 8) + 104))(&v35[v37], v40, v41);
    v42 = sub_1000C14E8();
    v46 = sub_100069FF8(v42);

    v43 = sub_1000C14F8();
    v44 = sub_100069FF8(v43);

    (*(v34 + 8))(v33, v47);
    (*(v32 + 8))(v49, v48);
    (*(v31 + 8))(v52, v50);
    (*(v54 + 8))(v58, v56);
    *v35 = 0;
    *(v35 + 1) = v21;
    *&v35[v36[9]] = v70;
    *&v35[v36[10]] = v46;
    *&v35[v36[11]] = v44;

    v45 = *(v0 + 8);

    return v45();
  }

  return result;
}

uint64_t sub_100070E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000C11F8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1000C12B8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_100004D04(&qword_1000EFBE0, &qword_1000C7D18);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1000C12C8();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = sub_1000C1478();
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  v20 = sub_1000C13E8();
  v4[21] = v20;
  v21 = *(v20 - 8);
  v4[22] = v21;
  v22 = *(v21 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10007111C, 0, 0);
}

uint64_t sub_10007111C()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v0[24] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1000711DC;
  v6 = v0[23];

  return sub_10007245C(v6, v1 + v4);
}

uint64_t sub_1000711DC()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_1000712D8, 0, 0);
}

uint64_t sub_1000712D8()
{
  v1 = *(v0 + 184);
  v2 = **(v0 + 32);
  result = sub_100073338();
  v4 = v2 + result;
  if (__OFADD__(v2, result))
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 192);
    v79 = *(v0 + 184);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = *(v0 + 112);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    v13 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
    *v6 = v4;
    sub_1000082B4(v11 + *(v5 + 20), v6 + v13, &qword_1000EE310, &qword_1000C6380);
    (*(v7 + 104))(v6, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v8);
    v14 = *(v12 + 24);
    sub_1000C14D8();
    v15 = *(v0 + 136);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);
    sub_1000C14C8();
    (*(v17 + 8))(v16, v18);
    v19 = sub_1000C1298();
    v20 = *(v19 + 16);
    v21 = v0;
    v80 = v0;
    if (v20)
    {
      v22 = *(v0 + 80);
      v23 = *(v0 + 56);
      v24 = *(v22 + 16);
      v22 += 16;
      v25 = v19 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v73 = *(v22 + 56);
      v75 = v24;
      v26 = (v22 - 8);
      v27 = _swiftEmptyArrayStorage;
      do
      {
        v28 = v21[11];
        v29 = v21[9];
        v75(v28, v25, v29);
        v30 = sub_1000C12A8();
        result = (*v26)(v28, v29);
        v31 = *(v30 + 16);
        v32 = v27[2];
        v33 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v33 > v27[3] >> 1)
        {
          if (v32 <= v33)
          {
            v34 = v32 + v31;
          }

          else
          {
            v34 = v32;
          }

          result = sub_10002245C(result, v34, 1, v27);
          v27 = result;
        }

        v21 = v0;
        if (*(v30 + 16))
        {
          if ((v27[3] >> 1) - v27[2] < v31)
          {
            goto LABEL_33;
          }

          v35 = *(v0 + 48);
          v36 = (*(v23 + 80) + 32) & ~*(v23 + 80);
          v37 = *(v23 + 72);
          swift_arrayInitWithCopy();

          if (v31)
          {
            v38 = v27[2];
            v39 = __OFADD__(v38, v31);
            v40 = v38 + v31;
            if (v39)
            {
              goto LABEL_36;
            }

            v27[2] = v40;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_32;
          }
        }

        v25 += v73;
        --v20;
      }

      while (v20);

      v41 = v27[2];
      if (v41)
      {
LABEL_19:
        v42 = 0;
        v43 = v21[7];
        v45 = *(v43 + 16);
        v43 += 16;
        v44 = v45;
        v46 = v27 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
        v47 = *(v43 + 56);
        v77 = (v43 - 8);
        while (1)
        {
          v44(v21[8], v46, v21[6]);
          result = sub_1000C11B8();
          if (result)
          {
            (*v77)(v21[8], v21[6]);
          }

          else
          {
            v48 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_34;
            }

            v49 = v21[8];
            v50 = v21[6];
            v51 = sub_1000C11C8();
            result = (*v77)(v49, v50);
            v42 = v48 + v51;
            if (__OFADD__(v48, v51))
            {
              goto LABEL_35;
            }

            v21 = v80;
          }

          v46 += v47;
          if (!--v41)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
      v41 = _swiftEmptyArrayStorage[2];
      if (v41)
      {
        goto LABEL_19;
      }
    }

    v42 = 0;
LABEL_28:
    v72 = v21[21];
    v74 = v21[23];
    v70 = v21[20];
    v71 = v21[22];
    v52 = v21;
    v53 = v21[19];
    v54 = v52[17];
    v55 = v52[16];
    v68 = v52[15];
    v69 = v52[18];
    v76 = v52[14];
    v78 = v52[11];
    v81 = v52[8];
    v56 = v52[2];
    v57 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
    v58 = v57[8];
    v59 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v60 = sub_1000C0E28();
    (*(*(v60 - 8) + 104))(&v56[v58], v59, v60);
    v61 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v62 = sub_1000C0E58();
    (*(*(v62 - 8) + 104))(&v56[v58], v61, v62);
    v63 = sub_1000C1268();
    v67 = sub_100069FF8(v63);

    v64 = sub_1000C1288();
    v65 = sub_100069FF8(v64);

    (*(v55 + 8))(v54, v68);
    (*(v53 + 8))(v70, v69);
    (*(v71 + 8))(v74, v72);
    *v56 = 0;
    *(v56 + 1) = v42;
    *&v56[v57[9]] = v27;
    *&v56[v57[10]] = v67;
    *&v56[v57[11]] = v65;

    v66 = v52[1];

    return v66();
  }

  return result;
}

uint64_t sub_1000718D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000C0E58();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1000C11F8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1000C12B8();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1000C12C8();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v17 = sub_100004D04(&qword_1000EFC18, &qword_1000C7D98);
  v4[19] = v17;
  v18 = *(v17 - 8);
  v4[20] = v18;
  v19 = *(v18 + 64) + 15;
  v4[21] = swift_task_alloc();
  v20 = sub_1000C1378();
  v4[22] = v20;
  v21 = *(v20 - 8);
  v4[23] = v21;
  v22 = *(v21 + 64) + 15;
  v4[24] = swift_task_alloc();
  v23 = sub_1000C1478();
  v4[25] = v23;
  v24 = *(v23 - 8);
  v4[26] = v24;
  v25 = *(v24 + 64) + 15;
  v4[27] = swift_task_alloc();
  v26 = sub_1000C13E8();
  v4[28] = v26;
  v27 = *(v26 - 8);
  v4[29] = v27;
  v28 = *(v27 + 64) + 15;
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100071C38, 0, 0);
}

uint64_t sub_100071C38()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v0[31] = Configuration;
  v4 = *(Configuration + 28);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_100071CF8;
  v6 = v0[30];

  return sub_10007245C(v6, v1 + v4);
}

uint64_t sub_100071CF8()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_100071DF4, 0, 0);
}

uint64_t sub_100071DF4()
{
  v1 = *(v0 + 240);
  v2 = **(v0 + 32);
  result = sub_100073338();
  v4 = v2 + result;
  if (__OFADD__(v2, result))
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 248);
  v81 = *(v0 + 240);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 24);
  v13 = *(sub_100004D04(&qword_1000EFBB0, &qword_1000C7CF0) + 48);
  *v6 = v4;
  sub_1000082B4(v11 + *(v5 + 20), v6 + v13, &qword_1000EE310, &qword_1000C6380);
  (*(v7 + 104))(v6, enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:), v8);
  v14 = *(v12 + 24);
  sub_1000C13F8();
  v15 = *(v0 + 192);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  sub_1000C14C8();
  (*(v17 + 8))(v16, v18);
  sub_1000C1368();
  v20 = sub_1000C1298();
  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v22 + 16);
  v22 += 16;
  v25 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v76 = *(v22 + 56);
  v78 = v24;
  v26 = (v22 - 8);
  v27 = _swiftEmptyArrayStorage;
  do
  {
    v28 = *(v0 + 112);
    v29 = *(v0 + 96);
    v78(v28, v25, v29);
    v30 = sub_1000C12A8();
    result = (*v26)(v28, v29);
    v31 = *(v30 + 16);
    v32 = v27[2];
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v33 <= v27[3] >> 1)
    {
      if (!*(v30 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v34 = v32 + v31;
      }

      else
      {
        v34 = v32;
      }

      result = sub_10002245C(result, v34, 1, v27);
      v27 = result;
      if (!*(v30 + 16))
      {
LABEL_4:

        if (v31)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      }
    }

    if ((v27[3] >> 1) - v27[2] < v31)
    {
      goto LABEL_33;
    }

    v35 = *(v0 + 72);
    v36 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v37 = *(v23 + 72);
    swift_arrayInitWithCopy();

    if (v31)
    {
      v38 = v27[2];
      v39 = __OFADD__(v38, v31);
      v40 = v38 + v31;
      if (v39)
      {
        goto LABEL_34;
      }

      v27[2] = v40;
    }

LABEL_5:
    v25 += v76;
    --v21;
  }

  while (v21);

  for (i = v27[2]; i; i = _swiftEmptyArrayStorage[2])
  {
    v42 = 0;
    v43 = *(v0 + 80);
    v45 = *(v43 + 16);
    v44 = v43 + 16;
    v46 = v27 + ((*(v44 + 64) + 32) & ~*(v44 + 64));
    v79 = *(v44 + 56);
    v82 = v45;
    while (1)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 72);
      v82(v47, v46, v48);
      v49 = sub_1000C11B8();
      (*(v44 - 8))(v47, v48);
      if ((v49 & 1) == 0)
      {
        v39 = __OFADD__(v42++, 1);
        if (v39)
        {
          break;
        }
      }

      v46 += v79;
      if (!--i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:

    v27 = _swiftEmptyArrayStorage;
  }

  v42 = 0;
LABEL_28:
  v73 = *(v0 + 224);
  v74 = *(v0 + 240);
  v71 = *(v0 + 216);
  v72 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 200);
  v66 = *(v0 + 184);
  v67 = *(v0 + 176);
  v75 = *(v0 + 168);
  v50 = *(v0 + 136);
  v51 = *(v0 + 128);
  v61 = *(v0 + 120);
  v62 = *(v0 + 144);
  v77 = *(v0 + 112);
  v80 = *(v0 + 88);
  v52 = *(v0 + 56);
  v83 = *(v0 + 64);
  v53 = *(v0 + 48);
  v54 = *(v0 + 16);
  v64 = *(v0 + 192);
  v68 = sub_1000C1358();
  sub_1000C1368();
  v55 = sub_1000C1278();
  v56 = *(v51 + 8);
  v56(v50, v61);
  *v83 = v55 & 1;
  (*(v52 + 104))();
  v57 = sub_1000C1268();
  v65 = sub_100069FF8(v57);

  v58 = sub_1000C1288();
  v63 = sub_100069FF8(v58);

  v56(v62, v61);
  (*(v66 + 8))(v64, v67);
  (*(v69 + 8))(v71, v70);
  (*(v72 + 8))(v74, v73);
  *v54 = v68;
  v54[1] = v42;
  v59 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
  (*(v52 + 32))(v54 + v59[8], v83, v53);
  *(v54 + v59[9]) = v27;
  *(v54 + v59[10]) = v65;
  *(v54 + v59[11]) = v63;

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_10007245C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_100004D04(&qword_1000EFB70, &qword_1000C7C30);
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100072500, v2, 0);
}

uint64_t sub_100072500()
{
  v1 = v0[7];
  v30 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v1 + 120) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v31 = *(v1 + 120);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = v32[9];
    v33 = v32[6];
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(v31 + 56);
    v0 = *(*(v31 + 48) + 8 * v14);
    v16 = (type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0) - 8);
    sub_10007E410(v15 + *(*v16 + 72) * v14, v12 + *(v30 + 48), type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    *v12 = v0;
    v17 = v16[7];
    v0;
    sub_1000C0AC8();
    if (v18 <= 2.0)
    {
      v19 = v32[9];
      sub_1000C2918();
      sub_1000084C0(v19, &qword_1000EFB70, &qword_1000C7C30);
      sub_1000C2798();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000C27D8();
      }

      sub_1000C27F8();
    }

    else
    {
      sub_1000084C0(v32[9], &qword_1000EFB70, &qword_1000C7C30);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v0 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v21 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_22:
  v21 = sub_1000C2C38();
LABEL_15:
  v22 = v32[5];
  if (v21)
  {
    v23 = sub_10007E248(v0);

    *v22 = v23;
    v24 = &enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:);
  }

  else
  {

    v24 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  v25 = *v24;
  v26 = sub_1000C13E8();
  (*(*(v26 - 8) + 104))(v22, v25, v26);
  v27 = v32[9];

  v28 = v32[1];

  return v28();
}

uint64_t sub_100072834(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 128) = a3;
  *(v4 + 136) = v3;
  *(v4 + 176) = a2;
  *(v4 + 120) = a1;
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  *(v4 + 144) = v5;
  v6 = *(v5 - 8);
  *(v4 + 152) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_100072908, v3, 0);
}

void sub_100072908()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  swift_beginAccess();
  v4 = *(v2 + 120);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  sub_10007C110(sub_100079C14, v5, v4);
  v7 = v6;

  v8 = *(v2 + 120);
  v55 = v2;
  *(v2 + 120) = v7;

  v9 = *(v0 + 120);
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000C2AB8();
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    sub_10007C290();
    sub_1000C2888();
    v3 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v12 = 0;
  }

  v54 = *(v0 + 144);
  v53 = *(v0 + 176);
  v17 = (v11 + 64) >> 6;
  v51 = v17;
  v52 = *(v0 + 152);
  while (1)
  {
    if (v3 < 0)
    {
      v24 = sub_1000C2AE8();
      if (!v24 || (*(v0 + 112) = v24, sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr), swift_dynamicCast(), v23 = *(v0 + 104), v21 = v12, v22 = v13, !v23))
      {
LABEL_29:
        v49 = *(v0 + 160);
        v48 = *(v0 + 168);
        sub_10007C2F8();

        v50 = *(v0 + 8);

        v50();
        return;
      }
    }

    else
    {
      v19 = v12;
      v20 = v13;
      v21 = v12;
      if (!v13)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v17)
          {
            goto LABEL_29;
          }

          v20 = *(v10 + 8 * v21);
          ++v19;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_15:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v3 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v23)
      {
        goto LABEL_29;
      }
    }

    v25 = v10;
    v26 = v3;
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v29 = *(v0 + 128);
    v30 = *(v54 + 20);
    v31 = sub_1000C0AF8();
    (*(*(v31 - 8) + 16))(&v28[v30], v29, v31);
    *v28 = v53;
    swift_beginAccess();
    sub_10007E4DC(v28, v27, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v32 = v23;
    v33 = *(v55 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v55 + 120);
    *(v55 + 120) = 0x8000000000000000;
    v36 = sub_1000799F0(v32);
    v38 = v35[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_36;
    }

    v42 = v37;
    if (v35[3] < v41)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v47 = v36;
    sub_10007C5E0();
    v36 = v47;
    v44 = *(v0 + 160);
    if (v42)
    {
LABEL_8:
      sub_10007C81C(v44, v35[7] + *(v52 + 72) * v36);

      goto LABEL_9;
    }

LABEL_25:
    v35[(v36 >> 6) + 8] |= 1 << v36;
    *(v35[6] + 8 * v36) = v32;
    sub_10007E4DC(v44, v35[7] + *(v52 + 72) * v36, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v45 = v35[2];
    v40 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v40)
    {
      goto LABEL_37;
    }

    v35[2] = v46;
LABEL_9:
    v18 = *(v55 + 120);
    *(v55 + 120) = v35;

    swift_endAccess();

    v12 = v21;
    v13 = v22;
    v3 = v26;
    v10 = v25;
    v17 = v51;
  }

  sub_10007BDC8(v41, isUniquelyReferenced_nonNull_native);
  v36 = sub_1000799F0(v32);
  if ((v42 & 1) == (v43 & 1))
  {
LABEL_24:
    v44 = *(v0 + 160);
    if (v42)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);

  sub_1000C2CF8();
}

BOOL sub_100072DEC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v29 = a2;
  v5 = sub_1000C0AF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v28 - v11;
  v12 = sub_100004D04(&qword_1000EFB70, &qword_1000C7C30);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  v20 = *a1;
  *(&v28 - v18) = *a1;
  sub_10007E410(v29, &v28 + *(v13 + 56) - v18, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
  sub_1000082B4(v19, v16, &qword_1000EFB70, &qword_1000C7C30);
  v21 = *v16;
  v22 = v20;

  v23 = v16 + *(v13 + 56);
  v24 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  (*(v6 + 16))(v9, v23 + *(v24 + 20), v5);
  sub_10007E478(v23, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
  v25 = v30;
  sub_1000C0A48();
  v26 = *(v6 + 8);
  v26(v9, v5);
  sub_10007CDD4(&qword_1000EE318, &type metadata accessor for Date);
  LOBYTE(a1) = sub_1000C25C8();
  v26(v25, v5);
  sub_1000084C0(v19, &qword_1000EFB70, &qword_1000C7C30);
  return (a1 & 1) == 0;
}

uint64_t sub_100073098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  swift_beginAccess();
  v13 = *(v2 + 120);
  if (*(v13 + 16))
  {
    v14 = *(v2 + 120);

    v15 = sub_1000799F0(a1);
    if (v16)
    {
      sub_10007E410(*(v13 + 56) + *(v6 + 72) * v15, v9, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);

      sub_10007E4DC(v9, v12, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
      if (*v12)
      {
        v17 = *(v5 + 20);
        v18 = sub_1000C0AF8();
        v19 = *(v18 - 8);
        (*(v19 + 32))(a2, &v12[v17], v18);
        return (*(v19 + 56))(a2, 0, 1, v18);
      }

      sub_10007E478(v12, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    }

    else
    {
    }
  }

  v21 = sub_1000C0AF8();
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

uint64_t sub_1000732F4()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100073338()
{
  v1 = sub_1000C13E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    goto LABEL_2;
  }

  if (v7 != enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    if (v7 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v7 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      return 0;
    }

    if (qword_1000EC968 != -1)
    {
      swift_once();
    }

    v14 = sub_1000C1568();
    sub_10000D978(v14, qword_1000EF8E8);
    v15 = sub_1000C1558();
    v16 = sub_1000C2948();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "TTRNewWidgetInteractorFetchConfiguration.ShowCompleted.additionalVisibleRemindersCount: unhandled case", v17, 2u);
    }

LABEL_2:
    (*(v2 + 8))(v6, v1);
    return 0;
  }

  (*(v2 + 96))(v6, v1);
  v9 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *v6;
    }

    v11 = *v6;
    v12 = sub_1000C2AC8();

    return v12;
  }

  else
  {
    v18 = *(v9 + 16);

    return v18;
  }
}

uint64_t sub_10007359C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[24] = a6;
  v10 = sub_100004D04(&qword_1000EFC20, &unk_1000C7DC0);
  v8[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v8[29] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v14 = sub_1000C11F8();
  v8[31] = v14;
  v15 = *(v14 - 8);
  v8[32] = v15;
  v16 = *(v15 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v17 = sub_100004D04(&qword_1000EFC30, &qword_1000C7DD0);
  v8[35] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[38] = v19;
  v8[39] = sub_1000C2848();
  v8[40] = sub_1000C2838();
  v23 = (a4 + *a4);
  v20 = a4[1];
  v21 = swift_task_alloc();
  v8[41] = v21;
  *v21 = v8;
  v21[1] = sub_1000737F8;

  return v23(v19);
}

uint64_t sub_1000737F8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 328);
  v5 = *v1;
  v3[42] = v0;

  v6 = v3[40];
  v7 = v3[39];
  v8 = sub_1000C2818();
  if (v2)
  {
    v10 = sub_10007395C;
  }

  else
  {
    v3[43] = v8;
    v3[44] = v9;
    v10 = sub_100073BA4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10007395C()
{
  v29 = v0;
  v1 = v0[40];

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = sub_1000C1568();
  sub_10000D978(v3, qword_1000EF8E8);
  swift_errorRetain();
  v4 = sub_1000C1558();
  v5 = sub_1000C2948();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1000C2D08();
    v14 = sub_1000B7B58(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Widget interactor: fetched failed {error %s}", v7, 0xCu);
    sub_10002285C(v8);
  }

  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  *v16 = v0[42];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v18(v16);

  sub_1000084C0(v16, &qword_1000EFC20, &unk_1000C7DC0);
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[36];
  v23 = v0[33];
  v22 = v0[34];
  v24 = v0[30];
  v25 = v0[28];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100073BA4()
{
  v63 = v0;
  v1 = *(*(v0 + 304) + *(*(v0 + 280) + 40));
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v62[0] = _swiftEmptyArrayStorage;
    sub_1000BA3A4(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 32;
    do
    {
      sub_1000239F4(v5, v0 + 24);
      v6 = *(v0 + 56);
      sub_100026D74((v0 + 24), *(v0 + 48));
      *(v0 + 16) = sub_1000C0DD8();
      v62[0] = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000BA3A4((v7 > 1), v8 + 1, 1);
        v4 = v62[0];
      }

      v4[2] = v8 + 1;
      v9 = &v4[6 * v8];
      v10 = *(v0 + 16);
      v11 = *(v0 + 48);
      v9[3] = *(v0 + 32);
      v9[4] = v11;
      v9[2] = v10;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4[2])
  {
    sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
    v12 = sub_1000C2C68();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v13 = *(v0 + 336);
  v62[0] = v12;
  sub_10007F790(v4, 1, v62);
  if (v13)
  {
  }

  v14 = *(v0 + 304);
  v15 = *(v0 + 280);

  v16 = v62[0];
  *(v0 + 360) = v62[0];
  v17 = *(v14 + *(v15 + 36));
  v18 = *(v17 + 16);
  v56 = v16;
  if (v18)
  {
    v19 = *(v0 + 256);
    v62[0] = _swiftEmptyArrayStorage;
    sub_1000BA384(0, v18, 0);
    v3 = v62[0];
    v20 = *(v19 + 16);
    v19 += 16;
    v55 = v17;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v57 = *(v19 + 56);
    v59 = v20;
    v22 = (v19 - 8);
    do
    {
      v23 = *(v0 + 272);
      v24 = *(v0 + 248);
      v59(v23, v21, v24);
      v25 = sub_1000C11D8();
      v26 = sub_1000C11C8();
      (*v22)(v23, v24);
      v62[0] = v3;
      v28 = v3[2];
      v27 = v3[3];
      if (v28 >= v27 >> 1)
      {
        sub_1000BA384((v27 > 1), v28 + 1, 1);
        v3 = v62[0];
      }

      v3[2] = v28 + 1;
      v29 = &v3[2 * v28];
      v29[4] = v25;
      v29[5] = v26;
      v21 += v57;
      --v18;
    }

    while (v18);
    v17 = v55;
    v16 = v56;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v30 = &_swiftEmptyDictionarySingleton;
    goto LABEL_21;
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v30 = sub_1000C2C68();
LABEL_21:
  v62[0] = v30;
  sub_10007FA98(v3, 1, v62);

  v58 = v62[0];
  *(v0 + 368) = v62[0];
  v31 = *(v17 + 16);
  if (v31)
  {
    v32 = *(v0 + 256);
    v33 = *(v32 + 16);
    v32 += 16;
    v34 = v17 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v60 = *(v32 + 56);
    v61 = v33;
    v35 = (v32 - 8);
    v36 = _swiftEmptyArrayStorage;
    v33(*(v0 + 264), v34, *(v0 + 248));
    while (1)
    {
      v39 = sub_1000C11D8();
      v40 = v39;
      if (v16[2] && (v41 = sub_1000799F0(v39), (v42 & 1) != 0))
      {
        v43 = *(v0 + 264);
        v44 = *(v0 + 248);
        sub_1000239F4(v16[7] + 40 * v41, v0 + 104);

        (*v35)(v43, v44);
        sub_100004E0C((v0 + 104), v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1000221E0(0, v36[2] + 1, 1, v36);
        }

        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          v36 = sub_1000221E0((v45 > 1), v46 + 1, 1, v36);
        }

        v36[2] = v46 + 1;
        sub_100004E0C((v0 + 64), &v36[5 * v46 + 4]);
        v16 = v56;
      }

      else
      {
        v37 = *(v0 + 264);
        v38 = *(v0 + 248);

        (*v35)(v37, v38);
      }

      v34 += v60;
      if (!--v31)
      {
        break;
      }

      v61(*(v0 + 264), v34, *(v0 + 248));
    }
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  *(v0 + 376) = v36;
  v62[0] = *(*(v0 + 304) + *(*(v0 + 280) + 44));

  sub_10007CE1C(v62);
  v48 = *(v0 + 192);
  *(v0 + 384) = v62[0];
  *(v0 + 176) = v36;
  v49 = swift_task_alloc();
  *(v0 + 392) = v49;
  *(v49 + 16) = v48;
  *(v49 + 24) = v58;
  v50 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  v52 = sub_100004D04(&qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 408) = v52;
  v53 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  *(v0 + 416) = v53;
  v54 = sub_10007FDB4(&qword_1000EFC08, &qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 424) = v54;
  *v51 = v0;
  v51[1] = sub_100074178;

  return Sequence.asyncMap<A>(_:)(&unk_1000C7DD8, v49, v52, v53, v54);
}

uint64_t sub_100074178(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v5 = *v2;
  *(*v2 + 432) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[49];

    v8 = v3[43];
    v9 = v3[44];

    return _swift_task_switch(sub_1000742B4, v8, v9);
  }
}

uint64_t sub_1000742B4()
{
  v1 = v0[46];
  v2 = v0[24];
  v0[23] = v0[48];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_100074394;
  v6 = v0[52];
  v7 = v0[53];
  v8 = v0[51];

  return Sequence.asyncMap<A>(_:)(&unk_1000C7DE0, v3, v8, v6, v7);
}

uint64_t sub_100074394(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[55];
    v9 = v4[48];
    v10 = v4[45];
    v11 = v4[46];

    v4[57] = a1;

    v12 = v4[43];
    v13 = v4[44];

    return _swift_task_switch(sub_100074500, v12, v13);
  }
}

uint64_t sub_100074500()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[35];
  v7 = v0[29];
  v6 = v0[30];

  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v5 + 32);
  v11 = v7[8];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 16))(&v6[v11], v4 + v10, v12);
  *v6 = v8;
  *(v6 + 1) = v9;
  *&v6[v7[9]] = v2;
  *&v6[v7[10]] = v1;
  v13 = qword_1000EC968;
  v14 = v8;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = v0[47];
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[36];
  v19 = sub_1000C1568();
  sub_10000D978(v19, qword_1000EF8E8);
  sub_1000082B4(v16, v17, &qword_1000EFC30, &qword_1000C7DD0);
  sub_1000082B4(v16, v18, &qword_1000EFC30, &qword_1000C7DD0);

  v20 = sub_1000C1558();
  v21 = sub_1000C2968();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[47];
  v24 = v0[36];
  v25 = v0[37];
  if (v22)
  {
    v26 = v0[35];
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    v28 = *(*(v25 + *(v26 + 36)) + 16);
    sub_1000084C0(v25, &qword_1000EFC30, &qword_1000C7DD0);
    *(v27 + 4) = v28;
    *(v27 + 12) = 2048;
    v29 = *(*(v24 + *(v26 + 40)) + 16);
    sub_1000084C0(v24, &qword_1000EFC30, &qword_1000C7DD0);
    *(v27 + 14) = v29;
    *(v27 + 22) = 2048;
    v30 = *(v23 + 16);

    *(v27 + 24) = v30;

    _os_log_impl(&_mh_execute_header, v20, v21, "Widget interactor: fetched total %ld reminders %ld result %ld", v27, 0x20u);
  }

  else
  {
    v31 = v0[47];

    sub_1000084C0(v24, &qword_1000EFC30, &qword_1000C7DD0);
    sub_1000084C0(v25, &qword_1000EFC30, &qword_1000C7DD0);
  }

  v32 = v0[38];
  v33 = v0[30];
  v34 = v0[28];
  v36 = v0[25];
  v35 = v0[26];
  sub_1000082B4(v33, v34, &qword_1000EFC28, &unk_1000C8CE0);
  swift_storeEnumTagMultiPayload();
  v36(v34);
  sub_1000084C0(v34, &qword_1000EFC20, &unk_1000C7DC0);
  sub_1000084C0(v33, &qword_1000EFC28, &unk_1000C8CE0);
  sub_1000084C0(v32, &qword_1000EFC30, &qword_1000C7DD0);
  v38 = v0[37];
  v37 = v0[38];
  v39 = v0[36];
  v41 = v0[33];
  v40 = v0[34];
  v42 = v0[30];
  v43 = v0[28];

  v44 = v0[1];

  return v44();
}

uint64_t sub_10007489C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[24] = a6;
  v10 = sub_100004D04(&qword_1000EFC58, &qword_1000C7E40);
  v8[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = sub_100004D04(&qword_1000EFC60, &qword_1000C7E48);
  v8[29] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v14 = sub_1000C11F8();
  v8[31] = v14;
  v15 = *(v14 - 8);
  v8[32] = v15;
  v16 = *(v15 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v17 = sub_100004D04(&qword_1000EFC68, &qword_1000C7E50);
  v8[35] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[38] = v19;
  v8[39] = sub_1000C2848();
  v8[40] = sub_1000C2838();
  v23 = (a4 + *a4);
  v20 = a4[1];
  v21 = swift_task_alloc();
  v8[41] = v21;
  *v21 = v8;
  v21[1] = sub_100074AF8;

  return v23(v19);
}

uint64_t sub_100074AF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 328);
  v5 = *v1;
  v3[42] = v0;

  v6 = v3[40];
  v7 = v3[39];
  v8 = sub_1000C2818();
  if (v2)
  {
    v10 = sub_100074C5C;
  }

  else
  {
    v3[43] = v8;
    v3[44] = v9;
    v10 = sub_100074EA4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100074C5C()
{
  v29 = v0;
  v1 = v0[40];

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = sub_1000C1568();
  sub_10000D978(v3, qword_1000EF8E8);
  swift_errorRetain();
  v4 = sub_1000C1558();
  v5 = sub_1000C2948();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1000C2D08();
    v14 = sub_1000B7B58(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Widget interactor: fetched failed {error %s}", v7, 0xCu);
    sub_10002285C(v8);
  }

  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  *v16 = v0[42];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v18(v16);

  sub_1000084C0(v16, &qword_1000EFC58, &qword_1000C7E40);
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[36];
  v23 = v0[33];
  v22 = v0[34];
  v24 = v0[30];
  v25 = v0[28];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100074EA4()
{
  v63 = v0;
  v1 = *(*(v0 + 304) + *(*(v0 + 280) + 40));
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v62[0] = _swiftEmptyArrayStorage;
    sub_1000BA3A4(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 32;
    do
    {
      sub_1000239F4(v5, v0 + 24);
      v6 = *(v0 + 56);
      sub_100026D74((v0 + 24), *(v0 + 48));
      *(v0 + 16) = sub_1000C0DD8();
      v62[0] = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000BA3A4((v7 > 1), v8 + 1, 1);
        v4 = v62[0];
      }

      v4[2] = v8 + 1;
      v9 = &v4[6 * v8];
      v10 = *(v0 + 16);
      v11 = *(v0 + 48);
      v9[3] = *(v0 + 32);
      v9[4] = v11;
      v9[2] = v10;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4[2])
  {
    sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
    v12 = sub_1000C2C68();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v13 = *(v0 + 336);
  v62[0] = v12;
  sub_10007F790(v4, 1, v62);
  if (v13)
  {
  }

  v14 = *(v0 + 304);
  v15 = *(v0 + 280);

  v16 = v62[0];
  *(v0 + 360) = v62[0];
  v17 = *(v14 + *(v15 + 36));
  v18 = *(v17 + 16);
  v56 = v16;
  if (v18)
  {
    v19 = *(v0 + 256);
    v62[0] = _swiftEmptyArrayStorage;
    sub_1000BA384(0, v18, 0);
    v3 = v62[0];
    v20 = *(v19 + 16);
    v19 += 16;
    v55 = v17;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v57 = *(v19 + 56);
    v59 = v20;
    v22 = (v19 - 8);
    do
    {
      v23 = *(v0 + 272);
      v24 = *(v0 + 248);
      v59(v23, v21, v24);
      v25 = sub_1000C11D8();
      v26 = sub_1000C11C8();
      (*v22)(v23, v24);
      v62[0] = v3;
      v28 = v3[2];
      v27 = v3[3];
      if (v28 >= v27 >> 1)
      {
        sub_1000BA384((v27 > 1), v28 + 1, 1);
        v3 = v62[0];
      }

      v3[2] = v28 + 1;
      v29 = &v3[2 * v28];
      v29[4] = v25;
      v29[5] = v26;
      v21 += v57;
      --v18;
    }

    while (v18);
    v17 = v55;
    v16 = v56;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v30 = &_swiftEmptyDictionarySingleton;
    goto LABEL_21;
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v30 = sub_1000C2C68();
LABEL_21:
  v62[0] = v30;
  sub_10007FA98(v3, 1, v62);

  v58 = v62[0];
  *(v0 + 368) = v62[0];
  v31 = *(v17 + 16);
  if (v31)
  {
    v32 = *(v0 + 256);
    v33 = *(v32 + 16);
    v32 += 16;
    v34 = v17 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v60 = *(v32 + 56);
    v61 = v33;
    v35 = (v32 - 8);
    v36 = _swiftEmptyArrayStorage;
    v33(*(v0 + 264), v34, *(v0 + 248));
    while (1)
    {
      v39 = sub_1000C11D8();
      v40 = v39;
      if (v16[2] && (v41 = sub_1000799F0(v39), (v42 & 1) != 0))
      {
        v43 = *(v0 + 264);
        v44 = *(v0 + 248);
        sub_1000239F4(v16[7] + 40 * v41, v0 + 104);

        (*v35)(v43, v44);
        sub_100004E0C((v0 + 104), v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1000221E0(0, v36[2] + 1, 1, v36);
        }

        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          v36 = sub_1000221E0((v45 > 1), v46 + 1, 1, v36);
        }

        v36[2] = v46 + 1;
        sub_100004E0C((v0 + 64), &v36[5 * v46 + 4]);
        v16 = v56;
      }

      else
      {
        v37 = *(v0 + 264);
        v38 = *(v0 + 248);

        (*v35)(v37, v38);
      }

      v34 += v60;
      if (!--v31)
      {
        break;
      }

      v61(*(v0 + 264), v34, *(v0 + 248));
    }
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  *(v0 + 376) = v36;
  v62[0] = *(*(v0 + 304) + *(*(v0 + 280) + 44));

  sub_10007CE1C(v62);
  v48 = *(v0 + 192);
  *(v0 + 384) = v62[0];
  *(v0 + 176) = v36;
  v49 = swift_task_alloc();
  *(v0 + 392) = v49;
  *(v49 + 16) = v48;
  *(v49 + 24) = v58;
  v50 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  v52 = sub_100004D04(&qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 408) = v52;
  v53 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  *(v0 + 416) = v53;
  v54 = sub_10007FDB4(&qword_1000EFC08, &qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 424) = v54;
  *v51 = v0;
  v51[1] = sub_100075478;

  return Sequence.asyncMap<A>(_:)(&unk_1000C7E58, v49, v52, v53, v54);
}

uint64_t sub_100075478(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v5 = *v2;
  *(*v2 + 432) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[49];

    v8 = v3[43];
    v9 = v3[44];

    return _swift_task_switch(sub_1000755B4, v8, v9);
  }
}

uint64_t sub_1000755B4()
{
  v1 = v0[46];
  v2 = v0[24];
  v0[23] = v0[48];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_100075694;
  v6 = v0[52];
  v7 = v0[53];
  v8 = v0[51];

  return Sequence.asyncMap<A>(_:)(&unk_1000C7E60, v3, v8, v6, v7);
}

uint64_t sub_100075694(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[55];
    v9 = v4[48];
    v10 = v4[45];
    v11 = v4[46];

    v4[57] = a1;

    v12 = v4[43];
    v13 = v4[44];

    return _swift_task_switch(sub_100075800, v12, v13);
  }
}

uint64_t sub_100075800()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[35];
  v7 = v0[29];
  v6 = v0[30];

  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v5 + 32);
  v11 = v7[8];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 16))(&v6[v11], v4 + v10, v12);
  *v6 = v8;
  *(v6 + 1) = v9;
  *&v6[v7[9]] = v2;
  *&v6[v7[10]] = v1;
  v13 = qword_1000EC968;
  v14 = v8;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = v0[47];
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[36];
  v19 = sub_1000C1568();
  sub_10000D978(v19, qword_1000EF8E8);
  sub_1000082B4(v16, v17, &qword_1000EFC68, &qword_1000C7E50);
  sub_1000082B4(v16, v18, &qword_1000EFC68, &qword_1000C7E50);

  v20 = sub_1000C1558();
  v21 = sub_1000C2968();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[47];
  v24 = v0[36];
  v25 = v0[37];
  if (v22)
  {
    v26 = v0[35];
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    v28 = *(*(v25 + *(v26 + 36)) + 16);
    sub_1000084C0(v25, &qword_1000EFC68, &qword_1000C7E50);
    *(v27 + 4) = v28;
    *(v27 + 12) = 2048;
    v29 = *(*(v24 + *(v26 + 40)) + 16);
    sub_1000084C0(v24, &qword_1000EFC68, &qword_1000C7E50);
    *(v27 + 14) = v29;
    *(v27 + 22) = 2048;
    v30 = *(v23 + 16);

    *(v27 + 24) = v30;

    _os_log_impl(&_mh_execute_header, v20, v21, "Widget interactor: fetched total %ld reminders %ld result %ld", v27, 0x20u);
  }

  else
  {
    v31 = v0[47];

    sub_1000084C0(v24, &qword_1000EFC68, &qword_1000C7E50);
    sub_1000084C0(v25, &qword_1000EFC68, &qword_1000C7E50);
  }

  v32 = v0[38];
  v33 = v0[30];
  v34 = v0[28];
  v36 = v0[25];
  v35 = v0[26];
  sub_1000082B4(v33, v34, &qword_1000EFC60, &qword_1000C7E48);
  swift_storeEnumTagMultiPayload();
  v36(v34);
  sub_1000084C0(v34, &qword_1000EFC58, &qword_1000C7E40);
  sub_1000084C0(v33, &qword_1000EFC60, &qword_1000C7E48);
  sub_1000084C0(v32, &qword_1000EFC68, &qword_1000C7E50);
  v38 = v0[37];
  v37 = v0[38];
  v39 = v0[36];
  v41 = v0[33];
  v40 = v0[34];
  v42 = v0[30];
  v43 = v0[28];

  v44 = v0[1];

  return v44();
}

uint64_t sub_100075B9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[24] = a6;
  v10 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  v8[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0);
  v8[29] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v14 = sub_1000C11F8();
  v8[31] = v14;
  v15 = *(v14 - 8);
  v8[32] = v15;
  v16 = *(v15 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v17 = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
  v8[35] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v19 = swift_task_alloc();
  v8[38] = v19;
  v8[39] = sub_1000C2848();
  v8[40] = sub_1000C2838();
  v23 = (a4 + *a4);
  v20 = a4[1];
  v21 = swift_task_alloc();
  v8[41] = v21;
  *v21 = v8;
  v21[1] = sub_100075DF8;

  return v23(v19);
}

uint64_t sub_100075DF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 328);
  v5 = *v1;
  v3[42] = v0;

  v6 = v3[40];
  v7 = v3[39];
  v8 = sub_1000C2818();
  if (v2)
  {
    v10 = sub_100075F5C;
  }

  else
  {
    v3[43] = v8;
    v3[44] = v9;
    v10 = sub_1000761A4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100075F5C()
{
  v29 = v0;
  v1 = v0[40];

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = sub_1000C1568();
  sub_10000D978(v3, qword_1000EF8E8);
  swift_errorRetain();
  v4 = sub_1000C1558();
  v5 = sub_1000C2948();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = sub_1000C2D08();
    v14 = sub_1000B7B58(v12, v13, &v28);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Widget interactor: fetched failed {error %s}", v7, 0xCu);
    sub_10002285C(v8);
  }

  v15 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v17 = v0[26];
  *v16 = v0[42];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v18(v16);

  sub_1000084C0(v16, &qword_1000EFB98, &qword_1000C7C50);
  v20 = v0[37];
  v19 = v0[38];
  v21 = v0[36];
  v23 = v0[33];
  v22 = v0[34];
  v24 = v0[30];
  v25 = v0[28];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000761A4()
{
  v63 = v0;
  v1 = *(*(v0 + 304) + *(*(v0 + 280) + 40));
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v62[0] = _swiftEmptyArrayStorage;
    sub_1000BA3A4(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 32;
    do
    {
      sub_1000239F4(v5, v0 + 24);
      v6 = *(v0 + 56);
      sub_100026D74((v0 + 24), *(v0 + 48));
      *(v0 + 16) = sub_1000C0DD8();
      v62[0] = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000BA3A4((v7 > 1), v8 + 1, 1);
        v4 = v62[0];
      }

      v4[2] = v8 + 1;
      v9 = &v4[6 * v8];
      v10 = *(v0 + 16);
      v11 = *(v0 + 48);
      v9[3] = *(v0 + 32);
      v9[4] = v11;
      v9[2] = v10;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4[2])
  {
    sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
    v12 = sub_1000C2C68();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v13 = *(v0 + 336);
  v62[0] = v12;
  sub_10007F790(v4, 1, v62);
  if (v13)
  {
  }

  v14 = *(v0 + 304);
  v15 = *(v0 + 280);

  v16 = v62[0];
  *(v0 + 360) = v62[0];
  v17 = *(v14 + *(v15 + 36));
  v18 = *(v17 + 16);
  v56 = v16;
  if (v18)
  {
    v19 = *(v0 + 256);
    v62[0] = _swiftEmptyArrayStorage;
    sub_1000BA384(0, v18, 0);
    v3 = v62[0];
    v20 = *(v19 + 16);
    v19 += 16;
    v55 = v17;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v57 = *(v19 + 56);
    v59 = v20;
    v22 = (v19 - 8);
    do
    {
      v23 = *(v0 + 272);
      v24 = *(v0 + 248);
      v59(v23, v21, v24);
      v25 = sub_1000C11D8();
      v26 = sub_1000C11C8();
      (*v22)(v23, v24);
      v62[0] = v3;
      v28 = v3[2];
      v27 = v3[3];
      if (v28 >= v27 >> 1)
      {
        sub_1000BA384((v27 > 1), v28 + 1, 1);
        v3 = v62[0];
      }

      v3[2] = v28 + 1;
      v29 = &v3[2 * v28];
      v29[4] = v25;
      v29[5] = v26;
      v21 += v57;
      --v18;
    }

    while (v18);
    v17 = v55;
    v16 = v56;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v30 = &_swiftEmptyDictionarySingleton;
    goto LABEL_21;
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v30 = sub_1000C2C68();
LABEL_21:
  v62[0] = v30;
  sub_10007FA98(v3, 1, v62);

  v58 = v62[0];
  *(v0 + 368) = v62[0];
  v31 = *(v17 + 16);
  if (v31)
  {
    v32 = *(v0 + 256);
    v33 = *(v32 + 16);
    v32 += 16;
    v34 = v17 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v60 = *(v32 + 56);
    v61 = v33;
    v35 = (v32 - 8);
    v36 = _swiftEmptyArrayStorage;
    v33(*(v0 + 264), v34, *(v0 + 248));
    while (1)
    {
      v39 = sub_1000C11D8();
      v40 = v39;
      if (v16[2] && (v41 = sub_1000799F0(v39), (v42 & 1) != 0))
      {
        v43 = *(v0 + 264);
        v44 = *(v0 + 248);
        sub_1000239F4(v16[7] + 40 * v41, v0 + 104);

        (*v35)(v43, v44);
        sub_100004E0C((v0 + 104), v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1000221E0(0, v36[2] + 1, 1, v36);
        }

        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          v36 = sub_1000221E0((v45 > 1), v46 + 1, 1, v36);
        }

        v36[2] = v46 + 1;
        sub_100004E0C((v0 + 64), &v36[5 * v46 + 4]);
        v16 = v56;
      }

      else
      {
        v37 = *(v0 + 264);
        v38 = *(v0 + 248);

        (*v35)(v37, v38);
      }

      v34 += v60;
      if (!--v31)
      {
        break;
      }

      v61(*(v0 + 264), v34, *(v0 + 248));
    }
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
  }

  *(v0 + 376) = v36;
  v62[0] = *(*(v0 + 304) + *(*(v0 + 280) + 44));

  sub_10007CE1C(v62);
  v48 = *(v0 + 192);
  *(v0 + 384) = v62[0];
  *(v0 + 176) = v36;
  v49 = swift_task_alloc();
  *(v0 + 392) = v49;
  *(v49 + 16) = v48;
  *(v49 + 24) = v58;
  v50 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  v52 = sub_100004D04(&qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 408) = v52;
  v53 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  *(v0 + 416) = v53;
  v54 = sub_10007FDB4(&qword_1000EFC08, &qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 424) = v54;
  *v51 = v0;
  v51[1] = sub_100076778;

  return Sequence.asyncMap<A>(_:)(&unk_1000C7D58, v49, v52, v53, v54);
}

uint64_t sub_100076778(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v5 = *v2;
  *(*v2 + 432) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[49];

    v8 = v3[43];
    v9 = v3[44];

    return _swift_task_switch(sub_1000768B4, v8, v9);
  }
}

uint64_t sub_1000768B4()
{
  v1 = v0[46];
  v2 = v0[24];
  v0[23] = v0[48];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_100076994;
  v6 = v0[52];
  v7 = v0[53];
  v8 = v0[51];

  return Sequence.asyncMap<A>(_:)(&unk_1000C7D70, v3, v8, v6, v7);
}

uint64_t sub_100076994(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[55];
    v9 = v4[48];
    v10 = v4[45];
    v11 = v4[46];

    v4[57] = a1;

    v12 = v4[43];
    v13 = v4[44];

    return _swift_task_switch(sub_100076B00, v12, v13);
  }
}

uint64_t sub_100076B00()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[35];
  v7 = v0[29];
  v6 = v0[30];

  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v5 + 32);
  v11 = v7[8];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 16))(&v6[v11], v4 + v10, v12);
  *v6 = v8;
  *(v6 + 1) = v9;
  *&v6[v7[9]] = v2;
  *&v6[v7[10]] = v1;
  v13 = qword_1000EC968;
  v14 = v8;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = v0[47];
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[36];
  v19 = sub_1000C1568();
  sub_10000D978(v19, qword_1000EF8E8);
  sub_1000082B4(v16, v17, &qword_1000EFBC8, &qword_1000C7D00);
  sub_1000082B4(v16, v18, &qword_1000EFBC8, &qword_1000C7D00);

  v20 = sub_1000C1558();
  v21 = sub_1000C2968();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[47];
  v24 = v0[36];
  v25 = v0[37];
  if (v22)
  {
    v26 = v0[35];
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    v28 = *(*(v25 + *(v26 + 36)) + 16);
    sub_1000084C0(v25, &qword_1000EFBC8, &qword_1000C7D00);
    *(v27 + 4) = v28;
    *(v27 + 12) = 2048;
    v29 = *(*(v24 + *(v26 + 40)) + 16);
    sub_1000084C0(v24, &qword_1000EFBC8, &qword_1000C7D00);
    *(v27 + 14) = v29;
    *(v27 + 22) = 2048;
    v30 = *(v23 + 16);

    *(v27 + 24) = v30;

    _os_log_impl(&_mh_execute_header, v20, v21, "Widget interactor: fetched total %ld reminders %ld result %ld", v27, 0x20u);
  }

  else
  {
    v31 = v0[47];

    sub_1000084C0(v24, &qword_1000EFBC8, &qword_1000C7D00);
    sub_1000084C0(v25, &qword_1000EFBC8, &qword_1000C7D00);
  }

  v32 = v0[38];
  v33 = v0[30];
  v34 = v0[28];
  v36 = v0[25];
  v35 = v0[26];
  sub_1000082B4(v33, v34, &qword_1000EFBE8, &unk_1000C8CB0);
  swift_storeEnumTagMultiPayload();
  v36(v34);
  sub_1000084C0(v34, &qword_1000EFB98, &qword_1000C7C50);
  sub_1000084C0(v33, &qword_1000EFBE8, &unk_1000C8CB0);
  sub_1000084C0(v32, &qword_1000EFBC8, &qword_1000C7D00);
  v38 = v0[37];
  v37 = v0[38];
  v39 = v0[36];
  v41 = v0[33];
  v40 = v0[34];
  v42 = v0[30];
  v43 = v0[28];

  v44 = v0[1];

  return v44();
}

uint64_t sub_100076E9C(void *a1, void *a2)
{
  v5 = sub_1000C0AF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  v13 = a1[4];
  sub_100026D74(a1, a1[3]);
  v14 = sub_1000C0D98();
  if (v14)
  {
    v15 = v14;
    v24[1] = v2;
    v16 = a2[4];
    sub_100026D74(a2, a2[3]);
    v17 = sub_1000C0D98();
    if (v17)
    {
      v18 = v17;
      v19 = [v15 date];
      sub_1000C0AA8();

      v20 = [v18 date];
      sub_1000C0AA8();

      v21 = sub_1000C0A98();
      v22 = *(v6 + 8);
      v22(v9, v5);
      v22(v12, v5);
    }

    else
    {

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_1000C2848();
  v4[12] = sub_1000C2838();
  v7 = sub_1000C2818();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100077158, v7, v6);
}

uint64_t sub_100077158()
{
  v1 = *(v0 + 64);
  v2 = v1[4];
  sub_100026D74(v1, v1[3]);
  if (sub_1000C0DF8())
  {
    v3 = *(v0 + 64);
    v4 = *(*(v0 + 72) + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
    *(v0 + 120) = v4;
    v6 = v1[3];
    v5 = v1[4];
    sub_100026D74(v3, v6);
    *(v0 + 128) = sub_1000C0DD8();

    return _swift_task_switch(sub_100077340, v4, 0);
  }

  else
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);

    v9 = sub_1000C0AF8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);
    sub_1000239F4(v11, v0 + 16);
    v12 = v11[4];
    sub_100026D74(v11, v11[3]);
    v13 = sub_1000C0DD8();
    v14 = v13;
    if (*(v10 + 16) && (v15 = *(v0 + 80), v16 = sub_1000799F0(v13), (v17 & 1) != 0))
    {
      v18 = *(*(*(v0 + 80) + 56) + 8 * v16);
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 88);
    v20 = *(v0 + 56);

    sub_100004E0C((v0 + 16), v20);
    *(v20 + 40) = v18;
    v21 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    sub_10007FEBC(v19, v20 + *(v21 + 24));

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100077340()
{
  v1 = v0[16];
  sub_100073098(v1, v0[11]);

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1000773B0, v2, v3);
}

uint64_t sub_1000773B0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_1000239F4(v3, v0 + 16);
  v4 = v3[4];
  sub_100026D74(v3, v3[3]);
  v5 = sub_1000C0DD8();
  v6 = v5;
  if (*(v2 + 16) && (v7 = *(v0 + 80), v8 = sub_1000799F0(v5), (v9 & 1) != 0))
  {
    v10 = *(*(*(v0 + 80) + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 56);

  sub_100004E0C((v0 + 16), v12);
  *(v12 + 40) = v10;
  v13 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  sub_10007FEBC(v11, v12 + *(v13 + 24));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000774BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_1000C2848();
  v4[12] = sub_1000C2838();
  v7 = sub_1000C2818();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100077590, v7, v6);
}

uint64_t sub_100077590()
{
  v1 = *(v0 + 64);
  v2 = v1[4];
  sub_100026D74(v1, v1[3]);
  if (sub_1000C0DF8())
  {
    v3 = *(v0 + 64);
    v4 = *(*(v0 + 72) + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
    *(v0 + 120) = v4;
    v6 = v1[3];
    v5 = v1[4];
    sub_100026D74(v3, v6);
    *(v0 + 128) = sub_1000C0DD8();

    return _swift_task_switch(sub_100077778, v4, 0);
  }

  else
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);

    v9 = sub_1000C0AF8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);
    sub_1000239F4(v11, v0 + 16);
    v12 = v11[4];
    sub_100026D74(v11, v11[3]);
    v13 = sub_1000C0DD8();
    v14 = v13;
    if (*(v10 + 16) && (v15 = *(v0 + 80), v16 = sub_1000799F0(v13), (v17 & 1) != 0))
    {
      v18 = *(*(*(v0 + 80) + 56) + 8 * v16);
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 88);
    v20 = *(v0 + 56);

    sub_100004E0C((v0 + 16), v20);
    *(v20 + 40) = v18;
    v21 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    sub_10007FEBC(v19, v20 + *(v21 + 24));

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100077778()
{
  v1 = v0[16];
  sub_100073098(v1, v0[11]);

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100083AE8, v2, v3);
}

uint64_t sub_1000777E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000082B4(a3, v27 - v11, &qword_1000EFBA0, &qword_1000C7C58);
  v13 = sub_1000C2868();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000084C0(v12, &qword_1000EFBA0, &qword_1000C7C58);
  }

  else
  {
    sub_1000C2858();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000C2818();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000C26B8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000084C0(a3, &qword_1000EFBA0, &qword_1000C7C58);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000084C0(a3, &qword_1000EFBA0, &qword_1000C7C58);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100077B14(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v73 = a2;
  v8 = sub_1000C11F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100004D04(&qword_1000EFC40, &qword_1000C7DF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v71 = &v57 - v18;
  v20 = __chkstk_darwin(v19);
  v21 = &v57;
  v23 = &v57 - v22;
  v24 = (a4 >> 1);
  v25 = __OFSUB__(a4 >> 1, a3);
  v26 = (a4 >> 1) - a3;
  if (v25)
  {
    __break(1u);
    goto LABEL_21;
  }

  v72 = v12;
  v74 = v9;
  v75 = a1;
  v12 = *v4;
  v27 = *(*v4 + 16);
  v28 = v27 + v26;
  if (__OFADD__(v27, v26))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v21 = (v12[3] >> 1), v21 < v28))
  {
    if (v27 <= v28)
    {
      v31 = v27 + v26;
    }

    else
    {
      v31 = v27;
    }

    v12 = sub_10002245C(isUniquelyReferenced_nonNull_native, v31, 1, v12);
    v21 = (v12[3] >> 1);
  }

  v32 = v12[2];
  v33 = &v21[-v32];
  if (v24 == a3)
  {
    if (v26 <= 0)
    {
      v26 = 0;
      v21 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v33 < v26)
  {
    __break(1u);
    goto LABEL_27;
  }

  v34 = v12 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v32;
  result = swift_arrayInitWithCopy();
  if (v26 <= 0)
  {
LABEL_16:
    v21 = v24;
LABEL_17:
    if (v26 != v33)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v12;
      return result;
    }

LABEL_23:
    v70 = v21;
    v26 = v12[2];
    v28 = v74;
    v59 = *(v74 + 56);
    v60 = v74 + 56;
    v59(v23, 1, 1, v8, v20);
    v38 = v71;
    sub_1000082B4(v23, v71, &qword_1000EFC40, &qword_1000C7DF0);
    v67 = *(v28 + 48);
    v68 = v28 + 48;
    if (v67(v38, 1, v8) == 1)
    {
      v39 = v71;
LABEL_25:
      sub_1000084C0(v23, &qword_1000EFC40, &qword_1000C7DF0);
      swift_unknownObjectRelease();
      result = sub_1000084C0(v39, &qword_1000EFC40, &qword_1000C7DF0);
      goto LABEL_19;
    }

LABEL_27:
    v63 = (v28 + 32);
    v57 = (v28 + 8);
    v58 = (v28 + 16);
    v40 = v26;
    v39 = v71;
    v65 = v23;
    v66 = v16;
    do
    {
      sub_1000084C0(v39, &qword_1000EFC40, &qword_1000C7DF0);
      v42 = v12[3];
      v43 = v42 >> 1;
      v44 = v40;
      if ((v42 >> 1) < v40 + 1)
      {
        v12 = sub_10002245C(v42 > 1, v40 + 1, 1, v12);
        v43 = v12[3] >> 1;
      }

      v45 = *(v74 + 80);
      sub_1000082B4(v23, v16, &qword_1000EFC40, &qword_1000C7DF0);
      if (v67(v16, 1, v8) == 1)
      {
        v40 = v44;
        v46 = v66;
LABEL_34:
        sub_1000084C0(v46, &qword_1000EFC40, &qword_1000C7DF0);
        v41 = v40;
        v39 = v71;
        v16 = v46;
      }

      else
      {
        v62 = v12 + ((v45 + 32) & ~v45);
        v47 = *v63;
        v40 = v44;
        if (v44 <= v43)
        {
          v48 = v43;
        }

        else
        {
          v48 = v44;
        }

        v64 = v48;
        v46 = v66;
        v61 = v47;
        while (1)
        {
          v52 = v72;
          v47(v72, v46, v8);
          if (v64 == v40)
          {
            break;
          }

          v53 = v65;
          sub_1000084C0(v65, &qword_1000EFC40, &qword_1000C7DF0);
          v54 = v40;
          v55 = *(v74 + 72);
          v69 = v54;
          result = (v47)(&v62[v55 * v54], v52, v8);
          if (v70 == v24)
          {
            v49 = 1;
            v70 = v24;
            v50 = v66;
          }

          else
          {
            v50 = v66;
            if (v70 < a3 || v70 >= v24)
            {
              goto LABEL_47;
            }

            v56 = v70;
            (*v58)(v53, v73 + v55 * v70, v8);
            v49 = 0;
            v70 = v56 + 1;
          }

          (v59)(v53, v49, 1, v8);
          sub_1000082B4(v53, v50, &qword_1000EFC40, &qword_1000C7DF0);
          v51 = v67(v50, 1, v8);
          v40 = v69 + 1;
          v46 = v50;
          v47 = v61;
          if (v51 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v57)(v52, v8);
        v41 = v64;
        v40 = v64;
        v39 = v71;
        v16 = v66;
      }

      v23 = v65;
      v12[2] = v41;
      sub_1000082B4(v23, v39, &qword_1000EFC40, &qword_1000C7DF0);
    }

    while (v67(v39, 1, v8) != 1);
    goto LABEL_25;
  }

  v36 = v12[2];
  v25 = __OFADD__(v36, v26);
  v37 = v36 + v26;
  if (!v25)
  {
    v12[2] = v37;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100078138(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10007827C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v57 = a2;
  v9 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v55 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004D04(&qword_1000EFC48, &qword_1000C7DF8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v56 = v49 - v18;
  __chkstk_darwin(v17);
  v19 = v49;
  v21 = v49 - v20;
  v22 = (a4 >> 1);
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v59 = a1;
  v5 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v5[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v29 = v25 + v24;
    }

    else
    {
      v29 = v25;
    }

    v5 = sub_100022484(isUniquelyReferenced_nonNull_native, v29, 1, v5);
    v19 = (v5[3] >> 1);
  }

  v30 = v5[2];
  v31 = v19 - v30;
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v31 < v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v32 = v5 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30;
  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v31)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v54 = v19;
    v24 = v5[2];
    v36 = v58;
    v49[0] = *(v58 + 56);
    v49[1] = v58 + 56;
    (v49[0])(v21, 1, 1, v9);
    v37 = v56;
    sub_1000082B4(v21, v56, &qword_1000EFC48, &qword_1000C7DF8);
    v38 = v36;
    v26 = v37;
    v52 = *(v38 + 48);
    v53 = v38 + 48;
    if (v52(v37, 1, v9) == 1)
    {
LABEL_24:
      sub_1000084C0(v21, &qword_1000EFC48, &qword_1000C7DF8);
      swift_unknownObjectRelease();
      result = sub_1000084C0(v26, &qword_1000EFC48, &qword_1000C7DF8);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_1000084C0(v26, &qword_1000EFC48, &qword_1000C7DF8);
      v40 = v5[3];
      v41 = v40 >> 1;
      if ((v40 >> 1) < v24 + 1)
      {
        v5 = sub_100022484(v40 > 1, v24 + 1, 1, v5);
        v41 = v5[3] >> 1;
      }

      v42 = *(v58 + 80);
      sub_1000082B4(v21, v16, &qword_1000EFC48, &qword_1000C7DF8);
      if (v52(v16, 1, v9) == 1)
      {
LABEL_32:
        sub_1000084C0(v16, &qword_1000EFC48, &qword_1000C7DF8);
        v39 = v24;
      }

      else
      {
        v50 = v5 + ((v42 + 32) & ~v42);
        if (v24 <= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v24;
        }

        v51 = v43;
        v44 = v55;
        while (1)
        {
          sub_10007E4DC(v16, v44, type metadata accessor for TTRNewWidgetPresenter.Division);
          if (v51 == v24)
          {
            break;
          }

          sub_1000084C0(v21, &qword_1000EFC48, &qword_1000C7DF8);
          v46 = *(v58 + 72);
          result = sub_10007E4DC(v44, &v50[v46 * v24], type metadata accessor for TTRNewWidgetPresenter.Division);
          if (v54 == v22)
          {
            v45 = 1;
            v54 = v22;
          }

          else
          {
            if (v54 < a3 || v54 >= v22)
            {
              goto LABEL_45;
            }

            v47 = v57 + v46 * v54;
            v48 = v54;
            sub_10007E410(v47, v21, type metadata accessor for TTRNewWidgetPresenter.Division);
            v45 = 0;
            v54 = v48 + 1;
          }

          (v49[0])(v21, v45, 1, v9);
          sub_1000082B4(v21, v16, &qword_1000EFC48, &qword_1000C7DF8);
          ++v24;
          if (v52(v16, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10007E478(v44, type metadata accessor for TTRNewWidgetPresenter.Division);
        v39 = v51;
        v24 = v51;
      }

      v5[2] = v39;
      v26 = v56;
      sub_1000082B4(v21, v56, &qword_1000EFC48, &qword_1000C7DF8);
    }

    while (v52(v26, 1, v9) != 1);
    goto LABEL_24;
  }

  v34 = v5[2];
  v23 = __OFADD__(v34, v24);
  v35 = v34 + v24;
  if (!v23)
  {
    v5[2] = v35;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100078884()
{
  sub_1000084C0(v0 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, &qword_1000EFB88, &qword_1000C7C40);
  v1 = *(v0 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v2, v3);
}

void sub_100078940()
{
  sub_100083A30(319, &unk_1000EF948, &type metadata accessor for REMRemindersListDataView.SortingStyle);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

char *sub_100078A3C(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t sub_100078B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_1000C0AF8();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_100078B68(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_100078BE0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_100078C58(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_100078CD0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t sub_100078D5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000C0AF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100078E1C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1000C0AF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100078EDC()
{
  result = sub_1000C0AF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100078F74(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 144) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;

  return _swift_task_switch(sub_10007900C, 0, 0);
}

uint64_t sub_10007900C()
{
  v1 = *(*(v0 + 72) + 24);
  *(v0 + 16) = 0;
  v2 = [v1 fetchReminderWithObjectID:*(v0 + 48) error:v0 + 16];
  *(v0 + 80) = v2;
  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = [v4 subtaskContext];
    if (!v6)
    {
LABEL_6:
      v12 = *(v0 + 64);
      v13 = *(v0 + 72);
      v14 = *(v0 + 144);
      v15 = [objc_allocWithZone(REMSaveRequest) initWithStore:v1];
      *(v0 + 88) = v15;
      sub_1000C0D38();
      *(v0 + 32) = v4;
      v16 = v12;
      v17 = v15;
      v18 = v4;
      sub_1000C0CE8();
      *(v0 + 96) = *(v0 + 24);
      v19 = sub_1000C0D18();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      *(v0 + 104) = sub_1000C0CF8();
      sub_1000C0D28();

      v22 = *(v13 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
      v23 = sub_1000C0D08();
      *(v0 + 112) = v23;
      v24 = swift_task_alloc();
      *(v0 + 120) = v24;
      *v24 = v0;
      v24[1] = sub_100079350;
      v25 = *(v0 + 56);
      v26 = *(v0 + 144);

      return sub_100072834(v23, v26, v25);
    }

    *(v0 + 40) = 0;
    v7 = v6;
    v8 = [v6 fetchRemindersWithError:v0 + 40];

    v9 = *(v0 + 40);
    if (v8)
    {
      sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
      sub_1000C27B8();
      v10 = v9;

      goto LABEL_6;
    }

    v28 = v9;
    sub_1000C0868();

    swift_willThrow();
  }

  else
  {
    v11 = v3;
    sub_1000C0868();

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100079350()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100079494, 0, 0);
}

uint64_t sub_100079494()
{
  v1 = *(v0[9] + 32);
  v2 = async function pointer to REMSaveRequest.saveAsync(with:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100079568;
  v4 = v0[11];

  return REMSaveRequest.saveAsync(with:)(v1);
}

uint64_t sub_100079568()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100079754;
  }

  else
  {
    v3 = sub_1000796A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000796A8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100079754()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[17];
  v6 = v0[1];

  return v6();
}

uint64_t sub_100079800(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000798F8;

  return v7(a1);
}

uint64_t sub_1000798F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1000799F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C2A38(*(v2 + 40));

  return sub_100079B40(a1, v4);
}

unint64_t sub_100079A34(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000C2678();
  sub_1000C2D68();
  sub_1000C26C8();
  v4 = sub_1000C2D88();

  return sub_100079C34(a1, v4);
}

unint64_t sub_100079AC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000C2D68();
  sub_1000C26C8();
  v6 = sub_1000C2D88();

  return sub_100079D38(a1, a2, v6);
}

unint64_t sub_100079B40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000C2A48();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100079C34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000C2678();
      v9 = v8;
      if (v7 == sub_1000C2678() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000C2CD8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100079D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000C2CD8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100079DF0(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1000C2AC8();
      a2 = sub_10007A014(v4, v5);
      goto LABEL_8;
    }

    sub_1000C1058();
    sub_1000C2AB8();
    if (sub_1000C2AE8())
    {
      v7 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v8 = sub_1000C2A38(*(a1 + 40)), v9 = -1 << *(a1 + 32), v10 = v8 & ~v9, ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
        {
          v11 = ~v9;
          while (1)
          {
            v12 = *(*(a1 + 48) + 8 * v10);
            v13 = sub_1000C2A48();

            if (v13)
            {
              break;
            }

            v10 = (v10 + 1) & v11;
            if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v14 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v14)
          {
            sub_10007A394(v14 + 1);
          }

          sub_10007A5BC(v15, &_swiftEmptySetSingleton);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_1000C2AE8());
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_10007A1F4(a1, a2);
    }

    return sub_10007A640(a1, a2);
  }
}

Swift::Int sub_10007A014(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
    v2 = sub_1000C2B18();
    v15 = v2;
    sub_1000C2AB8();
    if (sub_1000C2AE8())
    {
      sub_1000C1058();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10007A394(v9 + 1);
        }

        v2 = v15;
        result = sub_1000C2A38(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1000C2AE8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10007A1F4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_10007A804(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_10007EF1C(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_10007A394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  result = sub_1000C2B08();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1000C2A38(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10007A5BC(uint64_t a1, uint64_t a2)
{
  sub_1000C2A38(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_1000C2AA8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_10007A640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_10007AC60((&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_10007AB40(v12, v6, a2, a1);
  }

  return v10;
}

void sub_10007A804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000C2AB8();
    sub_1000C1058();
    sub_10007CDD4(&qword_1000EFB78, &type metadata accessor for REMObjectID_Codable);
    sub_1000C2888();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_1000C2AE8())
    {
      goto LABEL_28;
    }

    sub_1000C1058();
    swift_dynamicCast();
    v18 = v43;
    v7 = v13;
    v17 = v14;
    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = sub_1000C2A38(*(a4 + 40));
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_1000C1058();
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = sub_1000C2A48();

    if (v25)
    {
LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v4 = v35;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
      if ((v29 & v23) == 0)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_10007C2F8();

        sub_10007B014(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = sub_1000C2A48();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v35;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_10007AB40(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_10007AC60(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_10007ABD0(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void **, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10007C880(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_10007AC60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v25 = 0;
    v47 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v34 = v31 | (v25 << 6);
      v35 = *(v5 + 48);
      v50 = v34;
      v36 = *(v4 + 40);
      v37 = *(v35 + 8 * v34);
      v38 = sub_1000C2A38(v36);
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        sub_1000C1058();
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = sub_1000C2A48();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v28 = v53;
        v24 = __OFADD__(v51++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v28 = v53;
        v5 = a3;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v47 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = sub_1000C2A38(v14);
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      sub_1000C1058();
      v4 = *(*(v5 + 48) + 8 * v18);
      v21 = sub_1000C2A48();

      if ((v21 & 1) == 0)
      {
        v22 = ~v17;
        do
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v18);
          v4 = sub_1000C2A48();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v24 = __OFADD__(v51++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_10007B014(a1, a2, v51, v5);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_10007B014(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  result = sub_1000C2B28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1000C2A38(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10007B208(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1000C2AD8();

    if (v9)
    {

      sub_1000C1058();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_1000C2AC8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10007A014(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10007A394(v21 + 1);
    }

    v19 = v8;
    sub_10007A5BC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000C1058();
  v11 = sub_1000C2A38(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10007B420(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1000C2A48();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

void sub_10007B420(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10007A394(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10007B580();
      goto LABEL_12;
    }

    sub_10007B6D0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1000C2A38(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000C1058();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1000C2A48();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1000C2CE8();
  __break(1u);
}

id sub_10007B580()
{
  v1 = v0;
  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  v2 = *v0;
  v3 = sub_1000C2AF8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_10007B6D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  result = sub_1000C2B08();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1000C2A38(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_10007B8E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  result = sub_1000C2C58();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_1000C2A38(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10007BB48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
  result = sub_1000C2C58();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_100004E0C(v22, v33);
      }

      else
      {
        sub_1000239F4(v22, v33);
        v23 = v21;
      }

      result = sub_1000C2A38(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_100004E0C(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10007BDC8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100004D04(&qword_1000EFB68, &qword_1000C7C28);
  v41 = a2;
  result = sub_1000C2C58();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_10007E4DC(v28, v9, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
      }

      else
      {
        sub_10007E410(v28, v9, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
        v29 = v26;
      }

      result = sub_1000C2A38(*(v13 + 40));
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_10007E4DC(v9, *(v13 + 56) + v27 * v21, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

void sub_10007C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_10007ABD0(v10, v7, a3, v5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_10007C880(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

unint64_t sub_10007C290()
{
  result = qword_1000EFB60;
  if (!qword_1000EFB60)
  {
    sub_10007E3A8(255, &qword_1000EFB58, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFB60);
  }

  return result;
}

id sub_10007C300()
{
  v1 = v0;
  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v2 = *v0;
  v3 = sub_1000C2C48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10007C45C()
{
  v1 = v0;
  sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
  v2 = *v0;
  v3 = sub_1000C2C48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000239F4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100004E0C(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10007C5E0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004D04(&qword_1000EFB68, &qword_1000C7C28);
  v5 = *v0;
  v6 = sub_1000C2C48();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_10007E410(*(v5 + 56) + v24, v27, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        sub_10007E4DC(v23, *(v25 + 56) + v24, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
        result = v22;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10007C81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10007C880(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, uint64_t))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5 - 8);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v8 = 0;
  v35 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v32;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v36 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    v21 = v35[7];
    v38 = *(v35[6] + 8 * v20);
    v22 = v38;
    v23 = *(v33 + 72);
    v31 = v20;
    sub_10007E410(v21 + v23 * v20, v16, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v24 = v22;
    v25 = v37;
    v26 = v34(&v38, v16);
    sub_10007E478(v16, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);

    v37 = v25;
    if (v25)
    {
      return;
    }

    v14 = v36;
    if (v26)
    {
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_10007CAB8(v29, v28, v30, v35);
        return;
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v19 = v10[v8];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10007CAB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v39 - v13;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100004D04(&qword_1000EFB68, &qword_1000C7C28);
  result = sub_1000C2C68();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v40 = a4;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = a4[7];
    v24 = *(a4[6] + 8 * v22);
    v25 = v41;
    v44 = *(v42 + 72);
    sub_10007E410(v23 + v44 * v22, v41, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v26 = v25;
    v27 = v11;
    sub_10007E4DC(v26, v11, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v28 = *(v15 + 40);
    v29 = v24;
    result = sub_1000C2A38(v28);
    v30 = -1 << *(v15 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v11 = v27;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v11 = v27;
LABEL_26:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(*(v15 + 48) + 8 * v33) = v29;
    result = sub_10007E4DC(v11, *(v15 + 56) + v33 * v44, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v16 = v43;
    if (!a3)
    {
      return v15;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v43 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10007CDD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10007CE1C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10007E234(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10007CE88(v4);
  *a1 = v2;
}

void sub_10007CE88(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000C2C98(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004D04(&qword_1000ED948, &unk_1000C7D80);
        v5 = sub_1000C27E8();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10007D244(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10007CF90(0, v2, 1, a1);
  }
}

void sub_10007CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1000C0AF8();
  v8 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v29 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v33 = *a4;
    v15 = v33 + 40 * a3;
    v16 = a1 - a3;
LABEL_7:
    v31 = v15;
    v32 = a3;
    v30 = v16;
    while (1)
    {
      sub_1000239F4(v15, &v36);
      sub_1000239F4(v15 - 40, v35);
      sub_100026D74(&v36, v37);
      v17 = sub_1000C0D98();
      if (!v17)
      {
        goto LABEL_5;
      }

      v18 = v17;
      sub_100026D74(v35, v35[3]);
      v19 = sub_1000C0D98();
      if (!v19)
      {

LABEL_5:
        sub_10002285C(v35);
        sub_10002285C(&v36);
LABEL_6:
        a3 = v32 + 1;
        v15 = v31 + 40;
        v16 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return;
        }

        goto LABEL_7;
      }

      v20 = v19;
      v21 = [v18 date];
      sub_1000C0AA8();

      v22 = [v20 date];
      v23 = v34;
      sub_1000C0AA8();

      LOBYTE(v22) = sub_1000C0A98();
      v24 = *v14;
      v25 = v38;
      (*v14)(v23, v38);
      v24(v13, v25);
      sub_10002285C(v35);
      sub_10002285C(&v36);
      if ((v22 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v33)
      {
        break;
      }

      sub_100004E0C(v15, &v36);
      v26 = *(v15 - 24);
      *v15 = *(v15 - 40);
      *(v15 + 16) = v26;
      *(v15 + 32) = *(v15 - 8);
      sub_100004E0C(&v36, v15 - 40);
      v15 -= 40;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_10007D244(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v118 = sub_1000C0AF8();
  v8 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v117 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_99:
    v13 = *v110;
    if (!*v110)
    {
      goto LABEL_139;
    }

    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_101;
    }

    goto LABEL_133;
  }

  v106 = a4;
  v14 = 0;
  v116 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v16 = 40;
  while (1)
  {
    if (v14 + 1 >= v13)
    {
      v13 = v14 + 1;
    }

    else
    {
      v17 = *a3;
      sub_1000239F4(*a3 + 40 * (v14 + 1), &v122);
      sub_1000239F4(v17 + 40 * v14, v120);
      LODWORD(v115) = sub_100076E9C(&v122, v120);
      if (v5)
      {
        sub_10002285C(v120);
        sub_10002285C(&v122);
LABEL_111:

        return;
      }

      v107 = 0;
      v109 = v15;
      sub_10002285C(v120);
      sub_10002285C(&v122);
      v18 = v14 + 2;
      v108 = v14;
      v5 = 40 * v14;
      v19 = v17 + 40 * v14 + 80;
      v114 = v13;
      while (v13 != v18)
      {
        sub_1000239F4(v19, &v122);
        sub_1000239F4(v19 - 40, v120);
        sub_100026D74(&v122, v123);
        v21 = sub_1000C0D98();
        if (v21)
        {
          v22 = v21;
          sub_100026D74(v120, v121);
          v23 = sub_1000C0D98();
          if (v23)
          {
            v24 = v23;
            v25 = [v22 date];
            sub_1000C0AA8();

            v26 = [v24 date];
            v27 = v117;
            sub_1000C0AA8();

            v20 = sub_1000C0A98();
            v28 = *v116;
            v29 = v118;
            (*v116)(v27, v118);
            v28(v119, v29);
            v16 = 40;
          }

          else
          {

            v20 = 0;
          }

          v13 = v114;
        }

        else
        {
          v20 = 0;
        }

        sub_10002285C(v120);
        sub_10002285C(&v122);
        ++v18;
        v19 += 40;
        if ((v115 & 1) != (v20 & 1))
        {
          v13 = v18 - 1;
          break;
        }
      }

      v15 = v109;
      v14 = v108;
      if ((v115 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v13 < v108)
      {
        goto LABEL_132;
      }

      if (v108 < v13)
      {
        v30 = 40 * v13 - 40;
        v114 = v13;
        v31 = v13;
        v32 = v108;
        do
        {
          if (v32 != --v31)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            v34 = v33 + v5;
            v35 = v33 + v30;
            sub_100004E0C((v33 + v5), &v122);
            v36 = *(v35 + 32);
            v37 = *(v35 + 16);
            *v34 = *v35;
            *(v34 + 16) = v37;
            *(v34 + 32) = v36;
            sub_100004E0C(&v122, v35);
          }

          ++v32;
          v30 -= 40;
          v5 += 40;
        }

        while (v32 < v31);
        v15 = v109;
        v5 = v107;
        v13 = v114;
      }

      else
      {
LABEL_25:
        v5 = v107;
      }
    }

    v38 = a3[1];
    if (v13 < v38)
    {
      if (__OFSUB__(v13, v14))
      {
        goto LABEL_129;
      }

      if (v13 - v14 < v106)
      {
        break;
      }
    }

LABEL_48:
    if (v13 < v14)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1000220DC(0, *(v15 + 16) + 1, 1, v15);
    }

    v55 = *(v15 + 16);
    v54 = *(v15 + 24);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v15 = sub_1000220DC((v54 > 1), v55 + 1, 1, v15);
    }

    *(v15 + 16) = v56;
    v57 = v15 + 16 * v55;
    *(v57 + 32) = v14;
    *(v57 + 40) = v13;
    v58 = *v110;
    if (!*v110)
    {
      goto LABEL_138;
    }

    v111 = v13;
    if (v55)
    {
      while (1)
      {
        v13 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v15 + 32);
          v60 = *(v15 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_68:
          if (v62)
          {
            goto LABEL_117;
          }

          v75 = (v15 + 16 * v56);
          v77 = *v75;
          v76 = v75[1];
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_120;
          }

          v81 = (v15 + 32 + 16 * v13);
          v83 = *v81;
          v82 = v81[1];
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_124;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v13 = v56 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v85 = (v15 + 16 * v56);
        v87 = *v85;
        v86 = v85[1];
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_82:
        if (v80)
        {
          goto LABEL_119;
        }

        v88 = v15 + 16 * v13;
        v90 = *(v88 + 32);
        v89 = *(v88 + 40);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_122;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_89:
        v96 = v13 - 1;
        if (v13 - 1 >= v56)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v97 = *(v15 + 32 + 16 * v96);
        v98 = *(v15 + 32 + 16 * v13 + 8);
        sub_10007DC14((*a3 + 40 * v97), (*a3 + 40 * *(v15 + 32 + 16 * v13)), *a3 + 40 * v98, v58);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v98 < v97)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10007E220(v15);
        }

        if (v96 >= *(v15 + 16))
        {
          goto LABEL_114;
        }

        v99 = v15 + 16 * v96;
        *(v99 + 32) = v97;
        *(v99 + 40) = v98;
        v124 = v15;
        sub_10007E194(v13);
        v15 = v124;
        v56 = *(v124 + 16);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = v15 + 32 + 16 * v56;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_115;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_116;
      }

      v70 = (v15 + 16 * v56);
      v72 = *v70;
      v71 = v70[1];
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_118;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_121;
      }

      if (v74 >= v66)
      {
        v92 = (v15 + 32 + 16 * v13);
        v94 = *v92;
        v93 = v92[1];
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_125;
        }

        if (v61 < v95)
        {
          v13 = v56 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_3:
    v13 = a3[1];
    v14 = v111;
    if (v111 >= v13)
    {
      goto LABEL_99;
    }
  }

  if (__OFADD__(v14, v106))
  {
    goto LABEL_130;
  }

  if (v14 + v106 < v38)
  {
    v38 = v14 + v106;
  }

  if (v38 < v14)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    v15 = sub_10007E220(v15);
LABEL_101:
    v100 = v5;
    v124 = v15;
    v101 = *(v15 + 16);
    if (v101 >= 2)
    {
      while (*v16)
      {
        v102 = v15;
        v15 = *(v15 + 16 * v101);
        v5 = v102;
        v103 = *(v102 + 16 * (v101 - 1) + 40);
        sub_10007DC14((*v16 + 40 * v15), (*v16 + 40 * *(v102 + 16 * (v101 - 1) + 32)), *v16 + 40 * v103, v13);
        if (v100)
        {
          goto LABEL_111;
        }

        if (v103 < v15)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10007E220(v5);
        }

        if (v101 - 2 >= *(v5 + 16))
        {
          goto LABEL_127;
        }

        v104 = (v5 + 16 * v101);
        *v104 = v15;
        v104[1] = v103;
        v124 = v5;
        sub_10007E194(v101 - 1);
        v15 = v124;
        v101 = *(v124 + 16);
        if (v101 <= 1)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_111;
  }

  v111 = v38;
  if (v13 == v38)
  {
    goto LABEL_48;
  }

  v109 = v15;
  v107 = v5;
  v105 = a3;
  v115 = *a3;
  v39 = v115 + 40 * v13;
  v108 = v14;
  v40 = v14 - v13;
LABEL_39:
  v113 = v39;
  v114 = v13;
  v112 = v40;
  v41 = v39;
  while (1)
  {
    sub_1000239F4(v41, &v122);
    sub_1000239F4(v41 - 40, v120);
    sub_100026D74(&v122, v123);
    v42 = sub_1000C0D98();
    if (!v42)
    {
      goto LABEL_37;
    }

    v43 = v42;
    sub_100026D74(v120, v121);
    v44 = sub_1000C0D98();
    if (!v44)
    {

LABEL_37:
      sub_10002285C(v120);
      sub_10002285C(&v122);
LABEL_38:
      v13 = v114 + 1;
      v39 = v113 + 40;
      v40 = v112 - 1;
      if (v114 + 1 == v111)
      {
        v5 = v107;
        a3 = v105;
        v15 = v109;
        v16 = 40;
        v14 = v108;
        v13 = v111;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v45 = v44;
    v46 = [v43 date];
    v47 = v119;
    sub_1000C0AA8();

    v48 = [v45 date];
    v49 = v117;
    sub_1000C0AA8();

    LOBYTE(v48) = sub_1000C0A98();
    v50 = *v116;
    v51 = v118;
    (*v116)(v49, v118);
    v50(v47, v51);
    sub_10002285C(v120);
    sub_10002285C(&v122);
    if ((v48 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (!v115)
    {
      break;
    }

    sub_100004E0C(v41, &v122);
    v52 = *(v41 - 24);
    *v41 = *(v41 - 40);
    *(v41 + 16) = v52;
    *(v41 + 32) = *(v41 - 8);
    sub_100004E0C(&v122, v41 - 40);
    v41 -= 40;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_10007DC14(char *a1, char *a2, unint64_t a3, char *a4)
{
  v60 = sub_1000C0AF8();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v60);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v54 - v12;
  v13 = (a2 - a1) / 40;
  v65 = a2;
  v14 = (a3 - a2) / 40;
  if (v13 >= v14)
  {
    if (a4 != v65 || &v65[40 * v14] <= a4)
    {
      memmove(a4, v65, 40 * v14);
    }

    v15 = &a4[40 * v14];
    if ((a3 - a2) < 40 || v65 <= a1)
    {
LABEL_42:
      v31 = v65;
      goto LABEL_43;
    }

    v55 = (v8 + 8);
    v56 = a4;
    while (1)
    {
      v31 = v65 - 40;
      v32 = (v15 - 40);
      a3 -= 40;
      v57 = v65 - 40;
      while (1)
      {
        sub_1000239F4(v32, v63);
        sub_1000239F4(v31, v61);
        sub_100026D74(v63, v64);
        v35 = sub_1000C0D98();
        if (v35)
        {
          v36 = v35;
          sub_100026D74(v61, v62);
          v37 = sub_1000C0D98();
          if (v37)
          {
            v38 = v37;
            v39 = [v36 date];
            v40 = v58;
            sub_1000C0AA8();

            v41 = [v38 date];
            v42 = v59;
            sub_1000C0AA8();

            v43 = sub_1000C0A98();
            v44 = *v55;
            v45 = v42;
            a4 = v56;
            v46 = v60;
            (*v55)(v45, v60);
            v47 = v40;
            v31 = v57;
            v44(v47, v46);
            goto LABEL_34;
          }
        }

        v43 = 0;
LABEL_34:
        sub_10002285C(v61);
        sub_10002285C(v63);
        if (v43)
        {
          break;
        }

        if (a3 + 40 != v32 + 40)
        {
          v48 = *v32;
          v49 = *(v32 + 16);
          *(a3 + 32) = *(v32 + 32);
          *a3 = v48;
          *(a3 + 16) = v49;
        }

        v33 = v32 - 40;
        a3 -= 40;
        v34 = v32 > a4;
        v32 -= 40;
        if (!v34)
        {
          v15 = (v33 + 40);
          goto LABEL_42;
        }
      }

      if ((a3 + 40) != v65)
      {
        v50 = *v31;
        v51 = *(v31 + 1);
        *(a3 + 32) = *(v31 + 4);
        *a3 = v50;
        *(a3 + 16) = v51;
      }

      v15 = (v32 + 40);
      if (v32 + 40 > a4)
      {
        v65 = v31;
        if (v31 > a1)
        {
          continue;
        }
      }

      v15 = (v32 + 40);
      goto LABEL_43;
    }
  }

  if (a4 != a1 || &a1[40 * v13] <= a4)
  {
    memmove(a4, a1, 40 * v13);
  }

  v15 = &a4[40 * v13];
  if (a2 - a1 >= 40 && v65 < a3)
  {
    v57 = (v8 + 8);
    v55 = &a4[40 * v13];
    while (1)
    {
      sub_1000239F4(v65, v63);
      sub_1000239F4(a4, v61);
      sub_100026D74(v63, v64);
      v16 = sub_1000C0D98();
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = v16;
      sub_100026D74(v61, v62);
      v18 = sub_1000C0D98();
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v20 = [v17 date];
      v21 = v58;
      sub_1000C0AA8();

      v22 = [v19 date];
      v23 = v59;
      sub_1000C0AA8();

      LOBYTE(v22) = sub_1000C0A98();
      v24 = *v57;
      v25 = v60;
      (*v57)(v23, v60);
      v26 = v21;
      v15 = v55;
      v24(v26, v25);
      sub_10002285C(v61);
      sub_10002285C(v63);
      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }

      v27 = v65;
      v65 += 40;
      if (a1 != v27)
      {
        goto LABEL_16;
      }

LABEL_17:
      a1 += 40;
      if (a4 >= v15 || v65 >= a3)
      {
        goto LABEL_19;
      }
    }

LABEL_14:
    sub_10002285C(v61);
    sub_10002285C(v63);
LABEL_15:
    v27 = a4;
    v28 = a1 == a4;
    a4 += 40;
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = *v27;
    v30 = *(v27 + 1);
    *(a1 + 4) = *(v27 + 4);
    *a1 = v29;
    *(a1 + 1) = v30;
    goto LABEL_17;
  }

LABEL_19:
  v31 = a1;
LABEL_43:
  v52 = (v15 - a4) / 40;
  if (v31 != a4 || v31 >= &a4[40 * v52])
  {
    memmove(v31, a4, 40 * v52);
  }

  return 1;
}

uint64_t sub_10007E194(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007E220(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10007E248(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000C1058();
    sub_10007CDD4(&qword_1000EFB78, &type metadata accessor for REMObjectID_Codable);
    result = sub_1000C2878();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000C2B48();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10007B208(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1000C2C38();
  }

  v6 = result;
  v5 = sub_1000C2C38();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10007E3A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10007E410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007E478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007E4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007E544(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_1000718D8(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_10007E690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DC8C;

  return sub_100075B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007E76C()
{
  v1 = (type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000C1338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v18 = v2 | v7;
  v19 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = v0 + v3;
  v11 = v0 + v3 + v1[7];
  v12 = sub_1000C0AF8();
  v13 = *(*(v12 - 8) + 8);
  v13(v11, v12);
  v14 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v13(v11 + *(v14 + 36), v12);
  v15 = v1[8];
  v16 = sub_1000C1388();
  (*(*(v16 - 8) + 8))(v10 + v15, v16);
  v13(v10 + v1[9], v12);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v19, v18 | 7);
}

uint64_t sub_10007E978(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_100070E80(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_10007EAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000B028;

  return sub_100075B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007EBA0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DC8C;

  return sub_1000703A8(a1, v6, v1 + v5);
}

uint64_t sub_10007EC84(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_10006F99C(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_10007EDD0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_10006E7C4(a1, v10, v1 + v6, v1 + v9);
}

void sub_10007EF1C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10007A804(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

char *sub_10007EF50(char *a1, int64_t *a2)
{
  v4 = sub_1000C11F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_1000C1388();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) + 24);
  v18 = *(v13 + 16);
  v35 = a2;
  v18(v16, a2 + v17, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
LABEL_2:

    return a1;
  }

  if (v19 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    if (v19 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      if (qword_1000EC968 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    goto LABEL_2;
  }

  v16 = *(a1 + 2);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v34[0] = *(v5 + 16);
  v34[1] = v5 + 16;
  v20 = *(v5 + 72);
  v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v37 = v20;
  v12 = &a1[v36];
  v21 = (v5 + 32);
  v13 = v5 + 8;
  a1 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v34[0];
    (v34[0])(v11, v12, v4);
    v22(v8, v11, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10002245C(0, *(a1 + 2) + 1, 1, a1);
    }

    v24 = *(a1 + 2);
    v23 = *(a1 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      a1 = sub_10002245C(v23 > 1, v24 + 1, 1, a1);
    }

    *(a1 + 2) = v25;
    (*v21)(&a1[v36 + v24 * v37], v8, v4);
    v38 = a1;
    v26 = *v35;
    if (v25 >= *v35)
    {
      (*v13)(v11, v4);
      return a1;
    }

    v27 = sub_1000C11E8();
    if (!v27)
    {
      (*v13)(v11, v4);
      goto LABEL_7;
    }

    v28 = v26 - *(a1 + 2);
    if (v28 < 0)
    {
      break;
    }

    if (*(v27 + 16) < v28)
    {
      v28 = *(v27 + 16);
    }

    sub_100077B14(v27, v27 + v36, 0, (2 * v28) | 1);
    (*v13)(v11, v4);
    a1 = v38;
    if (*(v38 + 2) >= v26)
    {
      return a1;
    }

LABEL_7:
    v12 += v37;
    if (!--v16)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_21:
  v29 = sub_1000C1568();
  sub_10000D978(v29, qword_1000EF8E8);
  v30 = sub_1000C1558();
  v31 = sub_1000C2948();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Widget interactor: unknown fetch subtasks configuration", v32, 2u);
  }

  (*(v13 + 8))(v16, v12);
  return _swiftEmptyArrayStorage;
}

void sub_10007F3D4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1000C2C38())
    {
LABEL_3:
      sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
      v3 = sub_1000C2B28();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1000C2C38();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_1000C2B48();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1000C2A38(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000C1058();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_1000C2A48();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_1000C2A38(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000C1058();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_1000C2A48();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10007F6A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007F6D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_100079800(a1, v5);
}

unint64_t sub_10007F790(unint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1000082B4(result + 32, &v40, &qword_1000EFC10, &qword_1000C7D90);
  v7 = v40;
  sub_100004E0C(v41, v39);
  v8 = *a3;
  result = sub_1000799F0(v7);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v14) = v9;
  if (v8[3] < v13)
  {
    sub_10007BB48(v13, v5 & 1);
    v15 = *a3;
    result = sub_1000799F0(v7);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    result = sub_1000C2CF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
    *(v21[6] + 8 * result) = v7;
    result = sub_100004E0C(v39, v21[7] + 40 * result);
    v22 = v21[2];
    v12 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v21[2] = v23;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_10007C45C();
  result = v20;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = *a3;
  v18 = 40 * result;
  sub_1000239F4(*(*a3 + 56) + 40 * result, v38);
  sub_10002285C(v39);

  v19 = v17[7];
  sub_10002285C((v19 + v18));
  result = sub_100004E0C(v38, v19 + v18);
  if (--v3)
  {
LABEL_14:
    v6 += 80;
    v7 = &qword_1000EFC10;
    v14 = &qword_1000C7D90;
    while (1)
    {
      sub_1000082B4(v6, &v40, &qword_1000EFC10, &qword_1000C7D90);
      v5 = v40;
      sub_100004E0C(v41, v39);
      v27 = *a3;
      result = sub_1000799F0(v5);
      v29 = *(v27 + 16);
      v30 = (v28 & 1) == 0;
      v12 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v12)
      {
        goto LABEL_23;
      }

      v32 = v28;
      if (*(v27 + 24) < v31)
      {
        sub_10007BB48(v31, 1);
        v33 = *a3;
        result = sub_1000799F0(v5);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v32)
      {
        v24 = *a3;
        v25 = 40 * result;
        sub_1000239F4(*(*a3 + 56) + 40 * result, v38);
        sub_10002285C(v39);

        v26 = *(v24 + 56);
        sub_10002285C((v26 + v25));
        result = sub_100004E0C(v38, v26 + v25);
      }

      else
      {
        v35 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v35[6] + 8 * result) = v5;
        result = sub_100004E0C(v39, v35[7] + 40 * result);
        v36 = v35[2];
        v12 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v35[2] = v37;
      }

      v6 += 48;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_10007FA98(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = sub_1000799F0(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v8[3] < v15)
  {
    sub_10007B8E4(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1000799F0(v9);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    v10 = sub_1000C2CF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(v10 >> 6) + 8] |= 1 << v10;
    *(v19[6] + 8 * v10) = v9;
    *(v19[7] + 8 * v10) = v7;
    v23 = v19[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v19[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v22 = v10;
  sub_10007C300();
  v10 = v22;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = *(v19[7] + 8 * v10);
  v21 = v10;

  *(v19[7] + 8 * v21) = v20;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v7 = *v5;
      v27 = *a3;
      v6 = *(v5 - 1);
      v28 = sub_1000799F0(v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v9 = v29;
      if (v27[3] < v32)
      {
        sub_10007B8E4(v32, 1);
        v33 = *a3;
        v28 = sub_1000799F0(v6);
        if ((v9 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v35 = *a3;
      if (v9)
      {
        v25 = *(v35[7] + 8 * v28);
        v26 = v28;

        *(v35[7] + 8 * v26) = v25;
      }

      else
      {
        v35[(v28 >> 6) + 8] |= 1 << v28;
        *(v35[6] + 8 * v28) = v6;
        *(v35[7] + 8 * v28) = v7;
        v36 = v35[2];
        v14 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v35[2] = v37;
      }

      v5 += 2;
      if (!--v16)
      {
        return;
      }
    }
  }
}

uint64_t sub_10007FCE0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return sub_100077084(a1, a2, v7, v6);
}

uint64_t sub_10007FDB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007FE08(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return sub_1000774BC(a1, a2, v7, v6);
}

uint64_t sub_10007FEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FF2C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DC8C;

  return sub_10006A654(a1, v6, v7, v1 + v5);
}

uint64_t sub_10008001C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DC8C;

  return sub_10007359C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000800FC()
{
  v1 = (type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3 + v1[7];
  v7 = sub_1000C0AF8();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v8(v6 + *(v9 + 36), v7);
  v10 = v1[8];
  v11 = sub_1000C1388();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v8(v0 + v3 + v1[9], v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008027C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B028;

  return sub_100068EC4(a1, v6, v1 + v5);
}

uint64_t sub_100080368()
{
  v1 = (type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3 + v1[7];
  v7 = sub_1000C0AF8();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v8(v6 + *(v9 + 36), v7);
  v10 = v1[8];
  v11 = sub_1000C1388();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v8(v0 + v3 + v1[9], v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000804F0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DC8C;

  return sub_10006C160(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000805E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100080630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DC8C;

  return sub_10007489C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100080714(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1000C0E58();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000807FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((((((v11 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v18;
    (*(v9 + 16))(v19 + 1, v18 + 1, v17);
    v20 = ((((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    *((v22 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t sub_100080A00(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000C0E58();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v6 + 8))(v8, v5);
  v9 = *(v7 + 56) + v8 + 7;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 15;
  v10 = *(v9 & 0xFFFFFFFFFFFFFFF8);

  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;

  v13 = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_100080AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 16))(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100080C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14, v9);
  v15 = *(v11 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v15 + v14;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  v19 = *v16;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);

  v20 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 &= 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *v20 = *v18;
  v20 += 15;

  v22 = *(v20 & 0xFFFFFFFFFFFFFFF8);
  *(v20 & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}