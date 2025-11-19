void sub_19D70()
{
  sub_13C8C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v42 = sub_50884();
  v6 = sub_569C(v42);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_5630();
  v11 = v10 - v9;
  v12 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v12);
  v14 = *(v13 + 64);
  sub_72A4();
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  v18 = sub_2208(&qword_6B988, &qword_530B0);
  v19 = sub_72B0(v18);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v41 - v25;
  v27 = v3[3];
  v28 = v3[4];
  v41[0] = sub_1FE8(v3, v27);
  v41[1] = v5;
  v30 = *(v5 + 96);
  v29 = *(v5 + 104);

  sub_1A4E4();
  sub_2970();
  sub_507F4();
  sub_50804();
  sub_13D50();
  sub_28E0(v31, v32, v33, v34);
  v35 = v1[3];
  v36 = v1[4];
  sub_1FE8(v1, v35);
  (*(v36 + 8))(v43, v35, v36);
  sub_1A3F4(v43, v44);
  v37 = 0;
  if ((sub_500B4() & 1) == 0)
  {
    sub_1A3F4(v43, v44);
    v37 = sub_50044() ^ 1;
  }

  sub_253C(v43);
  (*(v28 + 8))(v17, v37 & 1, v27, v28);
  sub_51C0(v17, &qword_6B998, qword_51850);
  sub_1A160(v26, v24, &qword_6B988, &qword_530B0);
  sub_23BC(v1, v43);
  sub_50994();
  sub_50874();
  sub_1A388();
  sub_1A318(v38, 255, v39);
  sub_4FF04();
  sub_1A370();
  sub_1A2C0(v11, v40);
  sub_51C0(v26, &qword_6B988, &qword_530B0);
  sub_8A94();
}

uint64_t sub_1A060()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  sub_1A498();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_1A0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationFlowConfigModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_2208(a3, a4);
  sub_569C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1A48C();
  v9(v8);
  return a2;
}

unint64_t sub_1A1BC()
{
  result = qword_6C7B8;
  if (!qword_6C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C7B8);
  }

  return result;
}

uint64_t sub_1A264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_569C(v4);
  v6 = *(v5 + 16);
  v7 = sub_1A48C();
  v8(v7);
  return a2;
}

uint64_t sub_1A2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1A318(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3C4()
{
  v1 = v0[77];
  v2 = v0[78];
  sub_1FE8(v0 + 74, v1);
  return v1;
}

void sub_1A4BC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_1A4F0()
{
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[151];
}

uint64_t sub_1A510(uint64_t a1)
{
  v2 = sub_50324();
  v3 = sub_8558(v2);
  v164 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v8);
  v169 = &v145 - v9;
  v163 = type metadata accessor for EmergencyNLIntent();
  v10 = sub_569C(v163);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1A3A0();
  sub_EE14(v13);
  v162 = sub_50654();
  v14 = sub_8558(v162);
  v160 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1A3A0();
  v174 = v18;
  v19 = sub_503A4();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  sub_1A3A0();
  sub_EE14(v21);
  v156 = sub_50A24();
  v22 = sub_569C(v156);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_1A3A0();
  sub_EE14(v25);
  v154 = sub_50354();
  v26 = sub_8558(v154);
  v153 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_1A3A0();
  sub_EE14(v30);
  v31 = sub_50334();
  v32 = sub_8558(v31);
  v170 = v33;
  v171 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_1A3A0();
  v168 = v36;
  v37 = sub_502E4();
  v38 = sub_8558(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  v44 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_50B04();
  v46 = sub_8558(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  __chkstk_darwin(v46);
  sub_5658();
  sub_EE04();
  __chkstk_darwin(v51);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v52);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v53);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v54);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v55);
  v57 = &v145 - v56;
  v58 = sub_50AE4();
  sub_56AC();
  v59 = *(v48 + 16);
  v167 = v58;
  v172 = v59;
  v173 = v48 + 16;
  v59(v57, v58, v45);
  v60 = *(v40 + 16);
  v166 = a1;
  v61 = v37;
  v60(v44, a1, v37);
  v62 = sub_50AF4();
  v63 = sub_50BD4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v148 = v48;
    v65 = v64;
    v66 = swift_slowAlloc();
    v149 = v45;
    v147 = v66;
    v175[0] = v66;
    *v65 = 136315138;
    sub_1C1C4(&qword_6C078, 255, &type metadata accessor for Input);
    v67 = sub_50CD4();
    v68 = v2;
    v70 = v69;
    (*(v40 + 8))(v44, v61);
    v71 = sub_4DE68(v67, v70, v175);
    v2 = v68;

    *(v65 + 4) = v71;
    _os_log_impl(&dword_0, v62, v63, "#OfflineFlow onInput: %s", v65, 0xCu);
    sub_253C(v147);
    v45 = v149;
    sub_5674();
    sub_5674();

    v72 = v148;
    v73 = v148;
  }

  else
  {

    (*(v40 + 8))(v44, v61);
    v73 = v48;
    v72 = v48;
  }

  v74 = *(v73 + 8);
  v74(v57, v45);
  v75 = v168;
  sub_502D4();
  v76 = (*(v170 + 88))(v75, v171);
  v77 = v169;
  if (v76 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v78 = sub_1C22C();
    v79(v78);
    v80 = v160;
    v81 = v75;
    v82 = v162;
    (*(v160 + 32))(v174, v81, v162);
    sub_1C20C();
    v83 = v158;
    sub_1C23C();
    v84();
    v85 = sub_50AF4();
    v86 = sub_50BD4();
    if (sub_EF00(v86))
    {
      v87 = sub_5718();
      sub_EEC8(v87);
      sub_EED4(&dword_0, v88, v89, "#OfflineFlow onInput .NLv3IntentOnly");
      sub_5674();
    }

    v74(v83, v45);
    v90 = v161;
    (*(v80 + 16))(v161, v174, v82);
    if (qword_6B5F8 != -1)
    {
      swift_once();
    }

    sub_1C1C4(&qword_6BD68, 255, type metadata accessor for EmergencyNLIntent);
    sub_50524();
    v91 = v177;
    if (qword_6B608 != -1)
    {
      swift_once();
    }

    sub_50524();
    sub_EC1C(v90, type metadata accessor for EmergencyNLIntent);
    (*(v80 + 8))(v174, v82);
    v92 = v91 | (v177 << 8);
    goto LABEL_12;
  }

  if (v76 == enum case for Parse.directInvocation(_:))
  {
    v94 = sub_1C22C();
    v95(v94);
    (*(v164 + 32))(v77, v75, v2);
    v96 = v167;
    sub_56AC();
    v172(v159, v96, v45);
    v97 = sub_50AF4();
    v98 = sub_50BD4();
    if (sub_EF00(v98))
    {
      v99 = sub_5718();
      sub_EEC8(v99);
      sub_EED4(&dword_0, v100, v101, "#OfflineFlow onInput .directInvocation");
      sub_5674();
    }

    v174 = v72 + 8;
    v74(v159, v45);
    if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v102)
    {

      sub_1C260();
    }

    else
    {
      v104 = sub_50CE4();

      sub_1C260();
      if ((v104 & 1) == 0)
      {
LABEL_28:
        sub_56AC();
        v172(v72, v96, v45);
        v121 = v164;
        v122 = *(v164 + 16);
        v122(0xD000000000000035, v77, v2);
        v123 = sub_50AF4();
        LODWORD(v173) = sub_50BE4();
        if (os_log_type_enabled(v123, v173))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v176 = v125;
          *v124 = 136315138;
          v122(v150, 0xD000000000000035, v2);
          v126 = sub_50B64();
          v128 = v127;
          v129 = v2;
          v146 = v2;
          v130 = *(v164 + 8);
          v130(0xD000000000000035, v129);
          v131 = sub_4DE68(v126, v128, &v176);

          *(v124 + 4) = v131;
          _os_log_impl(&dword_0, v123, v173, "Failed to get emergencySituation from DirectInvocation: %s", v124, 0xCu);
          sub_253C(v125);
          sub_5674();
          sub_5674();

          v132 = sub_1C24C();
          (v74)(v132);
          v130(v169, v146);
        }

        else
        {

          v143 = *(v121 + 8);
          v143(0xD000000000000035, v2);
          v144 = sub_1C24C();
          (v74)(v144);
          v143(v77, v2);
        }

        return 0;
      }
    }

    v120 = sub_2B6B0();
    if (v120 != 35)
    {
      v142 = v120;
      (*(v164 + 8))(v77, v2);
      v92 = v142 | 0x400;
LABEL_12:
      *(v165 + 176) = v92;
      return 1;
    }

    goto LABEL_28;
  }

  if (v76 == enum case for Parse.uso(_:))
  {
    v105 = sub_1C22C();
    v106(v105);
    v107 = v153;
    v108 = v152;
    v109 = v75;
    v110 = v154;
    (*(v153 + 32))(v152, v109, v154);
    sub_1C20C();
    sub_1C23C();
    v111();
    v112 = sub_50AF4();
    v113 = sub_50BD4();
    if (sub_EF00(v113))
    {
      v114 = sub_5718();
      sub_EEC8(v114);
      sub_EED4(&dword_0, v115, v116, "#OfflineFlow onInput .uso");
      sub_5674();
    }

    v74(v157, v45);
    sub_50344();
    v175[3] = &type metadata for EmergencyFeatureFlagsKey;
    v175[4] = sub_EB68();
    LOBYTE(v175[0]) = 2;
    sub_50374();
    sub_253C(v175);
    v117 = v155;
    sub_50A14();
    (*(v107 + 8))(v108, v110);
    v118 = *(v117 + *(v156 + 24));
    v119 = *(v117 + *(v156 + 28));
    sub_EC1C(v117, &type metadata accessor for EmergencyDialogAct);
    v92 = v118 | (v119 << 8);
    goto LABEL_12;
  }

  sub_1C20C();
  v133 = v151;
  sub_1C23C();
  v134();
  v135 = sub_50AF4();
  v136 = sub_50BE4();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v177 = v138;
    *v137 = 136315138;
    LOBYTE(v176) = 0;
    v139 = sub_50B64();
    v141 = sub_4DE68(v139, v140, &v177);
    v75 = v168;

    *(v137 + 4) = v141;
    _os_log_impl(&dword_0, v135, v136, "%s", v137, 0xCu);
    sub_253C(v138);
    sub_5674();
    sub_5674();
  }

  v74(v133, v45);
  (*(v170 + 8))(v75, v171);
  return 0;
}

uint64_t sub_1B39C()
{
  sub_EF64();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_50B04();
  v1[26] = v3;
  v4 = *(v3 - 8);
  v1[27] = v4;
  v5 = *(v4 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1B464, 0, 0);
}

uint64_t sub_1B464()
{
  v46 = v1;
  v2 = *(v1 + 232);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = sub_50AE4();
  sub_56AC();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = sub_50AF4();
  v8 = sub_50BD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_5718();
    sub_EEC8(v9);
    _os_log_impl(&dword_0, v7, v8, "#OfflineFlow execute", v0, 2u);
    sub_5674();
  }

  v10 = *(v1 + 232);
  v11 = *(v1 + 208);
  v12 = *(v1 + 216);
  v13 = *(v1 + 200);

  v14 = *(v12 + 8);
  v14(v10, v11);
  v15 = *(v13 + 176);
  if (v15 >> 8 == 5)
  {
    v17 = *(v1 + 192);
    v18 = *(v1 + 200);
    sub_E9D0();
    v19 = swift_allocError();
    *v20 = 2;
    sub_1D68(v19, v18 + 16, (v18 + 56), v17);

    goto LABEL_7;
  }

  if (v15 >> 8 == 6)
  {
    v16 = *(v1 + 192);
    sub_50194();
LABEL_7:
    v22 = *(v1 + 224);
    v21 = *(v1 + 232);

    v23 = *(v1 + 8);

    return v23();
  }

  v25 = *(v1 + 224);
  v26 = *(v1 + 208);
  sub_56AC();
  v6(v25, v5, v26);
  v27 = sub_50AF4();
  v28 = sub_50BD4();
  v29 = os_log_type_enabled(v27, v28);
  v31 = *(v1 + 216);
  v30 = *(v1 + 224);
  v32 = *(v1 + 208);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v33 = 136315394;
    *(v1 + 248) = v15;
    sub_2208(&qword_6C8C0, &qword_540E0);
    v34 = sub_50C14();
    v44 = v32;
    v36 = sub_4DE68(v34, v35, &v45);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    *(v1 + 249) = BYTE1(v15);
    sub_2208(&qword_6C8C8, qword_52840);
    v37 = sub_50C14();
    v39 = sub_4DE68(v37, v38, &v45);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_0, v27, v28, "#OfflineFlow needsExecution situation: %s, organization: %s", v33, 0x16u);
    swift_arrayDestroy();
    sub_5674();
    sub_5674();

    v40 = v30;
    v41 = v44;
  }

  else
  {

    v40 = v30;
    v41 = v32;
  }

  v14(v40, v41);
  v42 = *(v1 + 200);
  v43 = swift_task_alloc();
  *(v1 + 240) = v43;
  *v43 = v1;
  v43[1] = sub_1B81C;

  return sub_15100(v1 + 16, v42 + 136, v15, SBYTE1(v15));
}

uint64_t sub_1B81C()
{
  sub_EF64();
  v1 = *(*v0 + 240);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  return _swift_task_switch(sub_1B90C, 0, 0);
}

uint64_t sub_1B90C()
{
  sub_EF64();
  v1 = v0[24];
  v2 = v0[25];
  sub_1BA38(v0 + 2);
  sub_51C0((v0 + 2), &qword_6C050, &qword_51E00);
  sub_50184();

  v4 = v0[28];
  v3 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B9AC()
{
  type metadata accessor for OfflineFlow();
  sub_1C1C4(&qword_6C8B8, v0, type metadata accessor for OfflineFlow);
  return sub_4FF14();
}

uint64_t sub_1BA38(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1[8];
  v36[1] = a1[9];
  v36[2] = v4;
  v5 = sub_50884();
  v6 = sub_569C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2208(&qword_6B998, qword_51850);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_5658();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v36 - v17;
  v19 = sub_2208(&qword_6B988, &qword_530B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  sub_5658();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = v36 - v25;
  v27 = sub_1FE8((v2 + 56), *(v2 + 80))[13];
  memcpy(v39, v3, 0x80uLL);
  v28 = sub_E51C(v39);
  v36[3] = v27;
  if (v28 == 1)
  {
    v29 = sub_50804();
    sub_28E0(v18, 1, 1, v29);

    v30 = 0;
  }

  else
  {
    v36[0] = v3;

    v3 = v36[0];
    sub_50B74();
    v31 = sub_50804();
    sub_28E0(v18, 0, 1, v31);
    v30 = sub_50B84();
  }

  memcpy(v38, v3, sizeof(v38));
  if (sub_E51C(v38) == 1)
  {
    v32 = 1;
  }

  else
  {
    sub_50B74();
    v32 = 0;
  }

  v33 = sub_50804();
  sub_28E0(v15, v32, 1, v33);
  sub_A6C0(v18, v30, v15);

  sub_51C0(v15, &qword_6B998, qword_51850);
  sub_51C0(v18, &qword_6B998, qword_51850);
  sub_234C(v26, v23);
  sub_23BC(v2 + 16, &v37);
  sub_50874();
  sub_1C1C4(&qword_6B990, 255, &type metadata accessor for OutputFlow);
  v34 = sub_4FF04();
  sub_EC1C(v10, &type metadata accessor for OutputFlow);
  sub_51C0(v26, &qword_6B988, &qword_530B0);
  return v34;
}

uint64_t *sub_1BDE4()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 17);
  return v0;
}

uint64_t sub_1BE1C()
{
  sub_1BDE4();

  return _swift_deallocClassInstance(v0, 178, 7);
}

uint64_t getEnumTagSinglePayload for OfflineFlow.OfflineFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 65286;
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(a1 + 2);
        if (!*(a1 + 2))
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      case 2:
        v5 = a1[1];
        if (a1[1])
        {
          return (*a1 | (v5 << 16)) - 65286;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1BF40);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 16)) - 65286;
      default:
        break;
    }
  }

  v7 = *(a1 + 1);
  if (v7 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(a1 + 1);
  }

  v9 = v8 - 4;
  if (v7 >= 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= 3)
  {
    return v10 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OfflineFlow.OfflineFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65286;
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x1C028);
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C050(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 <= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = *(a1 + 1);
  }

  v3 = v2 - 4;
  if (v1 >= 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C070(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 4;
  }

  return result;
}

uint64_t sub_1C0F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_1B39C();
}

uint64_t sub_1C18C()
{
  type metadata accessor for OfflineFlow();

  return sub_4FF64();
}

uint64_t sub_1C1C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C20C()
{
  v2 = *(v0 - 248);

  return swift_beginAccess();
}

uint64_t sub_1C24C()
{
  result = *(v0 - 328);
  v2 = *(v0 - 192);
  return result;
}

uint64_t type metadata accessor for CommonModernCATs()
{
  result = qword_6C8D8;
  if (!qword_6C8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C0()
{
  result = sub_50864();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C364(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1C3B0(a1, a2);
}

uint64_t sub_1C3B0(uint64_t a1, void *a2)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208(&unk_6D680, &qword_515B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  *(v2 + qword_6C8D0) = a2;
  v14 = *(v6 + 16);
  v14(v2 + qword_6DE68, a1, v5);
  v15 = sub_4FD64();
  sub_28E0(v13, 1, 1, v15);
  v14(v9, a1, v5);
  v16 = a2;
  v17 = sub_50814();
  (*(v6 + 8))(a1, v5);
  return v17;
}

uint64_t sub_1C5B8()
{
  v1 = qword_6DE68;
  v2 = sub_50864();
  sub_327C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_1C624()
{
  v0 = sub_50834();

  v1 = qword_6DE68;
  v2 = sub_50864();
  sub_327C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1C690()
{
  v0 = sub_1C624();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SexualAssaultModernCATs()
{
  result = qword_6C928;
  if (!qword_6C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C778(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1C7CC(a1, a2);
}

uint64_t sub_1C7CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_1C928(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for DomesticViolenceCATs()
{
  result = qword_6C978;
  if (!qword_6C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CABC(uint64_t a1, char a2)
{
  v4 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v4);
  v6 = *(v5 + 64);
  sub_72A4();
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517A0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298(v11);
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0xD000000000000012;
  *(v10 + 88) = 0x8000000000054BF0;
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_1CC68(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7BAC(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_1CDAC(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7260(v7, xmmword_51780);
  sub_71A0(a1, v1, &qword_6B998, qword_51850);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_1CF04(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7BAC(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_1D06C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1D0C0(a1, a2);
}

uint64_t sub_1D0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t sub_1D300()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_50B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_50AE4();
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_50AF4();
  v13 = sub_50BD4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
    swift_beginAccess();
    sub_1F764(v1 + v16, v5);
    v17 = sub_1EE64();
    v19 = v18;
    sub_1F7C8(v5);
    v20 = sub_4DE68(v17, v19, &v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "#RedirectToCompanionFlow state: %s", v14, 0xCu);
    sub_253C(v15);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_1F968(a1, v1 + v3);
  swift_endAccess();
  sub_1D300();
  return sub_1F7C8(a1);
}

BOOL sub_1D5D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v5 = sub_72B0(v4);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = sub_50B04();
  v14 = sub_8558(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_5630();
  v21 = v20 - v19;
  v22 = sub_50AE4();
  sub_56AC();
  (*(v16 + 16))(v21, v22, v13);
  v23 = sub_50AF4();
  v24 = sub_50BD4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v32 = a1;
    v26 = v25;
    v33[0] = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_4DE68(0xD00000000000007DLL, 0x8000000000055680, v33);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_4DE68(0x7475706E69286E6FLL, 0xEA0000000000293ALL, v33);
    _os_log_impl(&dword_0, v23, v24, "%s:%s", v26, 0x16u);
    swift_arrayDestroy();
    sub_5674();
    a1 = v32;
    sub_5674();
  }

  (*(v16 + 8))(v21, v13);
  v27 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
  sub_56AC();
  sub_1F764(v2 + v27, v12);
  v28 = sub_502E4();
  v29 = sub_513C(v12, 4, v28);
  if (v29 == 1)
  {
    (*(*(v28 - 8) + 16))(v10, a1, v28);
    sub_28E0(v10, 0, 4, v28);
    sub_1D568(v10);
  }

  else
  {
    sub_1F7C8(v12);
  }

  return v29 == 1;
}

uint64_t sub_1D8D4()
{
  sub_EF64();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_502C4();
  v1[22] = v3;
  sub_1F9CC(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = sub_1F9DC();
  v7 = sub_2208(&qword_6CBF0, &qword_52AE8);
  sub_72B0(v7);
  v9 = *(v8 + 64);
  v1[25] = sub_1F9DC();
  v10 = sub_4FE34();
  v1[26] = v10;
  sub_1F9CC(v10);
  v1[27] = v11;
  v13 = *(v12 + 64);
  v1[28] = sub_1F9DC();
  v14 = sub_4FE14();
  v1[29] = v14;
  sub_1F9CC(v14);
  v1[30] = v15;
  v17 = *(v16 + 64);
  v1[31] = sub_1F9DC();
  v18 = sub_502B4();
  v1[32] = v18;
  sub_1F9CC(v18);
  v1[33] = v19;
  v21 = *(v20 + 64);
  v1[34] = sub_1F9DC();
  v22 = sub_4FF84();
  v1[35] = v22;
  sub_1F9CC(v22);
  v1[36] = v23;
  v25 = *(v24 + 64);
  v1[37] = sub_1F9DC();
  v26 = type metadata accessor for RedirectToCompanionFlow.State(0);
  sub_72B0(v26);
  v28 = *(v27 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v29 = sub_502E4();
  v1[40] = v29;
  sub_1F9CC(v29);
  v1[41] = v30;
  v32 = *(v31 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v33 = sub_50B04();
  v1[44] = v33;
  sub_1F9CC(v33);
  v1[45] = v34;
  v36 = *(v35 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_1DBE8, 0, 0);
}

uint64_t sub_1DBE8()
{
  v112 = v0;
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v4 = sub_50AE4();
  sub_56AC();
  v108 = *(v2 + 16);
  v108(v1, v4, v3);
  v5 = sub_50AF4();
  v6 = sub_50BD4();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  v9 = v0[44];
  v10 = v0[45];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v111[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_4DE68(0xD00000000000007DLL, 0x8000000000055680, v111);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_4DE68(0x2865747563657865, 0xE900000000000029, v111);
    _os_log_impl(&dword_0, v5, v6, "%s:%s", v11, 0x16u);
    swift_arrayDestroy();
    sub_5674();
    sub_5674();
  }

  v106 = *(v10 + 8);
  v106(v8, v9);
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[21];
  v15 = OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state;
  sub_56AC();
  sub_1F764(v14 + v15, v13);
  v16 = sub_513C(v13, 4, v12);
  if (v16)
  {
    if (v16 == 4)
    {
      v18 = v0[36];
      v17 = v0[37];
      v19 = v0[35];
      v20 = v0[20];
      (*(v18 + 104))(v17, enum case for FlowUnhandledReason.needsServerExecution(_:), v19);
      sub_501B4();
      (*(v18 + 8))(v17, v19);
    }

    else
    {
      v75 = v0[39];
      v76 = v0[20];
      sub_50194();
      sub_1F7C8(v75);
    }
  }

  else
  {
    v21 = v0[48];
    v22 = v0[43];
    v103 = v0[44];
    v23 = v0[41];
    v24 = v0[42];
    v25 = v0[40];
    v26 = v0[38];
    v27 = v0[21];
    (*(v23 + 32))(v24, v0[39], v25);
    v96 = *(v23 + 16);
    v96(v22, v24, v25);
    sub_28E0(v26, 2, 4, v25);
    sub_1D568(v26);
    v99 = *(v23 + 8);
    v99(v24, v25);
    sub_56AC();
    v100 = v4;
    v108(v21, v4, v103);
    v28 = sub_50AF4();
    v29 = sub_50BD4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "get the supported companions", v30, 2u);
      sub_5674();
    }

    v31 = v0[48];
    v33 = v0[44];
    v32 = v0[45];
    v35 = v0[33];
    v34 = v0[34];
    v36 = v0[32];
    v37 = v0[30];
    v89 = v0[31];
    v90 = v0[29];
    v91 = v0[28];
    v93 = v0[47];
    v38 = v0[25];

    v106(v31, v33);
    sub_4FEA4();
    (*(v35 + 104))(v34, enum case for CompanionDeviceInfoRequirement.supportsPeerToPeerHandoff(_:), v36);
    sub_4FE94();
    (*(v35 + 8))(v34, v36);
    v39 = type metadata accessor for SimpleHandoffStrategy();
    v40 = swift_allocObject();
    v111[3] = v39;
    v111[4] = sub_1F6E8(&qword_6CBF8, v41, type metadata accessor for SimpleHandoffStrategy);
    v111[0] = v40;

    sub_4FE04();
    (*(v37 + 16))(v38, v89, v90);
    sub_28E0(v38, 0, 1, v90);
    sub_4FDF4();
    sub_4FE24();
    sub_56AC();
    v108(v93, v100, v33);
    v42 = sub_50AF4();
    v43 = sub_50BD4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "going into executeOnRemoteFlow", v44, 2u);
      sub_5674();
    }

    v45 = v0[47];
    v47 = v0[44];
    v46 = v0[45];
    v48 = v0[42];
    v49 = v0[43];
    v50 = v0[40];
    v92 = v0[28];
    v94 = v0[46];
    v51 = v42;
    v53 = v0[23];
    v52 = v0[24];
    v54 = v0[22];

    v106(v45, v47);
    v96(v48, v49, v50);
    (*(v53 + 104))(v52, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v54);
    sub_502A4();
    v55 = sub_4FDD4();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v0[17] = sub_4FDC4();
    sub_2208(&qword_6CC00, &qword_52AF0);
    v58 = sub_4FEF4();
    sub_1F9CC(v58);
    v60 = *(v59 + 72);
    v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    *(swift_allocObject() + 16) = xmmword_517A0;
    sub_4FED4();
    sub_4FEE4();
    v63 = sub_4FDB4();

    v0[18] = v63;
    sub_4FEC4();
    v98 = sub_4FF44();

    sub_56AC();
    v108(v94, v100, v47);
    v64 = sub_50AF4();
    v65 = sub_50BD4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v64, v65, "finished creating the executeOnRemoteFlow", v66, 2u);
      sub_5674();
    }

    v68 = v0[45];
    v67 = v0[46];
    v69 = v0[44];
    v109 = v0[43];
    v70 = v0[30];
    v101 = v0[31];
    v104 = v0[40];
    v95 = v0[28];
    v97 = v0[29];
    v72 = v0[26];
    v71 = v0[27];
    v73 = v0[20];
    v74 = v0[21];

    v106(v67, v69);
    v0[19] = v98;

    sub_2208(&qword_6CC08, &qword_52AF8);
    sub_1F82C();
    sub_50164();

    (*(v71 + 8))(v95, v72);
    (*(v70 + 8))(v101, v97);
    v99(v109, v104);
  }

  v78 = v0[48];
  v77 = v0[49];
  v80 = v0[46];
  v79 = v0[47];
  v82 = v0[42];
  v81 = v0[43];
  v84 = v0[38];
  v83 = v0[39];
  v85 = v0[37];
  v86 = v0[34];
  v102 = v0[31];
  v105 = v0[28];
  v107 = v0[25];
  v110 = v0[24];

  v87 = v0[1];

  return v87();
}

uint64_t sub_1E578(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_50B04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v78 = &v72 - v10;
  __chkstk_darwin(v9);
  v77 = &v72 - v11;
  v82 = sub_4FDE4();
  v12 = *(v82 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v82);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v72 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = (&v72 - v21);
  __chkstk_darwin(v20);
  v24 = &v72 - v23;
  v25 = sub_2208(&qword_6CC18, &qword_52B00);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v72 - v27;
  v29 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v80 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v79 = &v72 - v33;
  sub_1F890(a1, v28);
  v34 = sub_2208(&qword_6CC20, &qword_52B08);
  if (sub_513C(v28, 1, v34) == 1)
  {
    v35 = sub_50AE4();
    swift_beginAccess();
    (*(v4 + 16))(v8, v35, v3);
    v36 = sub_50AF4();
    v37 = sub_50BE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v38, 2u);
    }

    (*(v4 + 8))(v8, v3);
    v39 = sub_502E4();
    v40 = v79;
    sub_28E0(v79, 3, 4, v39);
    sub_1F900(v28);
  }

  else
  {
    v41 = v82;
    (*(v12 + 32))(v24, v28, v82);
    v42 = *(v12 + 16);
    v42(v22, v24, v41);
    if ((*(v12 + 88))(v22, v41) == enum case for ExecuteOnRemoteFlowResult.remoteFlowFailure(_:))
    {
      v76 = v24;
      (*(v12 + 96))(v22, v82);
      v43 = *v22;
      v44 = sub_50AE4();
      swift_beginAccess();
      v45 = v77;
      v46 = v3;
      (*(v4 + 16))(v77, v44, v3);
      swift_errorRetain();
      v47 = sub_50AF4();
      v48 = sub_50BE4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v83 = v43;
        v84 = v50;
        *v49 = 136315138;
        swift_errorRetain();
        sub_2208(&qword_6B980, qword_52B10);
        v51 = sub_50B64();
        v75 = v46;
        v53 = sub_4DE68(v51, v52, &v84);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_0, v47, v48, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v49, 0xCu);
        sub_253C(v50);

        (*(v4 + 8))(v45, v75);
      }

      else
      {

        (*(v4 + 8))(v45, v3);
      }

      (*(v12 + 8))(v76, v82);
      v68 = sub_502E4();
      v40 = v79;
      sub_28E0(v79, 4, 4, v68);
    }

    else
    {
      v77 = v16;
      v54 = sub_50AE4();
      swift_beginAccess();
      v55 = *(v4 + 16);
      v75 = v3;
      v55(v78, v54, v3);
      v42(v19, v24, v82);
      v56 = sub_50AF4();
      v57 = sub_50BE4();
      v58 = v24;
      if (os_log_type_enabled(v56, v57))
      {
        v59 = swift_slowAlloc();
        v72 = v59;
        v74 = swift_slowAlloc();
        v84 = v74;
        *v59 = 136315138;
        v73 = v57;
        v60 = v82;
        v42(v77, v19, v82);
        v61 = sub_50B64();
        v76 = v58;
        v63 = v62;
        v64 = *(v12 + 8);
        v64(v19, v60);
        v65 = sub_4DE68(v61, v63, &v84);

        v66 = v72;
        *(v72 + 1) = v65;
        _os_log_impl(&dword_0, v56, v73, "ExecuteOnRemote flow completed with: %s", v66, 0xCu);
        sub_253C(v74);

        (*(v4 + 8))(v78, v75);
        v67 = v76;
      }

      else
      {

        v64 = *(v12 + 8);
        v60 = v82;
        v64(v19, v82);
        (*(v4 + 8))(v78, v75);
        v67 = v58;
      }

      v64(v67, v60);
      v69 = sub_502E4();
      v40 = v79;
      sub_28E0(v79, 3, 4, v69);
      v64(v22, v82);
    }
  }

  v70 = v80;
  sub_1F764(v40, v80);
  sub_1D568(v70);
  return sub_1F7C8(v40);
}

uint64_t sub_1EDD0()
{
  type metadata accessor for RedirectToCompanionFlow(0);
  sub_1F6E8(&qword_6CBE0, 255, type metadata accessor for RedirectToCompanionFlow);
  return sub_4FF14();
}

unint64_t sub_1EE64()
{
  v1 = sub_502E4();
  v2 = sub_8558(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_5630();
  v9 = v8 - v7;
  v10 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v11 = sub_72B0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_5630();
  v16 = v15 - v14;
  sub_1F764(v0, v15 - v14);
  v17 = 0x6E696765622ELL;
  switch(sub_513C(v16, 4, v1))
  {
    case 1u:
      return v17;
    case 2u:
      v17 = 0x676E696E6E75722ELL;
      break;
    case 3u:
      v17 = 0x74656C706D6F632ELL;
      break;
    case 4u:
      v17 = 0xD000000000000011;
      break;
    default:
      (*(v4 + 32))(v9, v16, v1);
      sub_50C64(18);

      sub_1F6E8(&qword_6C078, 255, &type metadata accessor for Input);
      v19._countAndFlagsBits = sub_50CD4();
      sub_50BA4(v19);

      v20._countAndFlagsBits = 41;
      v20._object = 0xE100000000000000;
      sub_50BA4(v20);
      v17 = 0x65527475706E692ELL;
      (*(v4 + 8))(v9, v1);
      break;
  }

  return v17;
}

uint64_t sub_1F0D8()
{
  sub_1F7C8(v0 + OBJC_IVAR____TtC19EmergencyFlowPlugin23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1F164()
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void (*sub_1F25C(void *a1))(void *a1)
{
  v3 = sub_1F730(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_50694();
  return sub_1F2D4;
}

void sub_1F2D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1F368()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_1D8D4();
}

uint64_t sub_1F404()
{
  type metadata accessor for RedirectToCompanionFlow(0);

  return sub_4FF64();
}

uint64_t sub_1F488(uint64_t a1, uint64_t a2)
{
  v4 = sub_502E4();
  v5 = sub_513C(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1F4E4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_502E4();

  return sub_28E0(a1, v5, a3, v6);
}

uint64_t sub_1F544()
{
  v0 = sub_502E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_CD54;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1, a2, a3);
}

uint64_t sub_1F6E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_1F730(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1F764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F7C8(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1F82C()
{
  result = qword_6CC10;
  if (!qword_6CC10)
  {
    sub_5218(&qword_6CC08, &qword_52AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6CC10);
  }

  return result;
}

uint64_t sub_1F890(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6CC18, &qword_52B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F900(uint64_t a1)
{
  v2 = sub_2208(&qword_6CC18, &qword_52B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F9DC()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for EmergencyPoisonControlBasicIntentModernCATs()
{
  result = qword_6CC28;
  if (!qword_6CC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1FA80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1FAD4(a1, a2);
}

uint64_t sub_1FAD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_1FC30(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

void sub_1FD38()
{
  sub_13C8C();
  v184 = v0;
  sub_24780();
  v190 = sub_50324();
  v1 = sub_8558(v190);
  v189 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_1A3A0();
  sub_EE14(v5);
  v6 = type metadata accessor for EmergencyNLIntent();
  v7 = sub_72B0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v10);
  sub_13C5C();
  sub_EE14(v11);
  v195 = sub_50654();
  v12 = sub_8558(v195);
  v194 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_1A3A0();
  sub_EE14(v16);
  v17 = sub_503A4();
  v18 = sub_72B0(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_1A3A0();
  sub_EE14(v21);
  v22 = sub_50A24();
  v23 = sub_72B0(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v26);
  sub_13C5C();
  sub_EE14(v27);
  v182 = sub_50354();
  v28 = sub_8558(v182);
  v181 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_1A3A0();
  sub_EE14(v32);
  v33 = sub_50334();
  v34 = sub_8558(v33);
  v198 = v35;
  v199 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_1A3A0();
  sub_EE14(v38);
  v39 = sub_502E4();
  v40 = sub_8558(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v40);
  sub_5630();
  v47 = v46 - v45;
  v48 = sub_50B04();
  v49 = sub_8558(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_5658();
  v56 = v54 - v55;
  __chkstk_darwin(v57);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v58);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v59);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v60);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v61);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v62);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v63);
  v65 = v178 - v64;
  v66 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v201 = v51;
  v67 = v51[2];
  v196 = v51 + 2;
  v197 = v66;
  v200 = v67;
  (v67)(v65, v66, v48);
  v68 = *(v42 + 16);
  v191 = v0;
  v68(v47, v0, v39);
  v69 = sub_50AF4();
  v70 = sub_50BD4();
  v71 = os_log_type_enabled(v69, v70);
  v185 = v56;
  if (v71)
  {
    v72 = sub_EFB0();
    v179 = v48;
    v73 = v72;
    v74 = sub_EFC8();
    *&v202 = v74;
    *v73 = 136315138;
    sub_24548(&qword_6C078, 255, &type metadata accessor for Input);
    v75 = sub_50CD4();
    v56 = v76;
    (*(v42 + 8))(v47, v39);
    v77 = sub_4DE68(v75, v56, &v202);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_0, v69, v70, "#EmergencyDirectCallFlow onInput: %s", v73, 0xCu);
    sub_253C(v74);
    sub_5674();
    v48 = v179;
    sub_5674();
  }

  else
  {

    (*(v42 + 8))(v47, v39);
  }

  v78 = *(v201 + 1);
  v78(v65, v48);
  v79 = v192;
  sub_502D4();
  v80 = (*(v198 + 88))(v79, v199);
  v81 = v197;
  v82 = v200;
  if (v80 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v83 = sub_246EC();
    v84(v83);
    (*(v194 + 32))(v193, v79, v195);
    sub_2970();
    swift_beginAccess();
    v85 = sub_245EC(&v209);
    v82(v85);
    v86 = sub_50AF4();
    v87 = sub_50BD4();
    if (sub_EF00(v87))
    {
      v88 = sub_5718();
      sub_EEC8(v88);
      sub_EED4(&dword_0, v89, v90, "EmergencyDirectCallFlow onInput .NLv3IntentOnly");
      sub_EE58();
    }

    v91 = sub_24768();
    v92 = v78;
    (v78)(v91);
    v93 = v194;
    sub_246FC();
    v94 = v187;
    v95 = v193;
    v96 = v195;
    v97(v187, v193, v195);
    sub_24490(v94, v186);
    sub_23FCC();
    v99 = v98;
    sub_24600();
    sub_1A2C0(v94, v100);
    (*(v93 + 8))(v95, v96);
    goto LABEL_8;
  }

  if (v80 == enum case for Parse.directInvocation(_:))
  {
    v108 = sub_246EC();
    v109(v108);
    (*(v189 + 32))(v188, v79, v190);
    sub_2970();
    swift_beginAccess();
    v110 = sub_245EC(&v207);
    v82(v110);
    v111 = sub_50AF4();
    v112 = sub_50BD4();
    if (sub_EF00(v112))
    {
      v113 = sub_5718();
      sub_EEC8(v113);
      sub_EED4(&dword_0, v114, v115, "EmergencyDirectCallFlow onInput .directInvocation");
      sub_EE58();
    }

    v116 = sub_24768();
    v201 = v78;
    (v78)(v116);
    v117 = v188;
    v118 = v188;
    if (sub_50304() == 0xD00000000000003FLL && 0x8000000000055790 == v119)
    {

      v121 = v183;
    }

    else
    {
      sub_50CE4();
      sub_247D8();
      v121 = v183;
      if ((v118 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v145 = sub_50314();
    if (v145)
    {
      v146 = v145;
      v147 = sub_50A84();
      sub_2B7EC(v147, v148, v146, &v202);

      if (*(&v203 + 1))
      {
        if (swift_dynamicCast())
        {
          v149 = sub_50974();
          if (v149 != 4)
          {
            LOBYTE(v99) = v149;
            LOWORD(v101) = 35;
            goto LABEL_52;
          }
        }

LABEL_41:
        if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v162)
        {
        }

        else
        {
          sub_50CE4();
          sub_247D8();
          if ((v117 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        v164 = sub_2B6B0();
        if (v164 == 35)
        {
LABEL_49:
          sub_2970();
          swift_beginAccess();
          (v200)(v121, v81, v48);
          v165 = sub_50AF4();
          sub_50BE4();
          sub_246B4();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = sub_EFB0();
            v168 = v48;
            v169 = sub_EFC8();
            v205 = v169;
            *v167 = 136315138;
            BYTE5(v207) = 0;
            v170 = sub_50B64();
            v172 = sub_4DE68(v170, v171, &v205);

            *(v167 + 4) = v172;
            _os_log_impl(&dword_0, v165, 0x35u, "%s", v167, 0xCu);
            sub_253C(v169);
            sub_24630();
            sub_5674();

            v201(v121, v168);
          }

          else
          {

            v201(v121, v48);
          }

          sub_246DC();
          v174 = v117;
          v177 = v190;
LABEL_58:
          v173(v174, v177);
          goto LABEL_59;
        }

        LOWORD(v101) = v164;
        LOBYTE(v99) = 4;
LABEL_52:
        sub_246DC();
        v175(v117, v190);
        goto LABEL_53;
      }
    }

    else
    {
      v202 = 0u;
      v203 = 0u;
    }

    sub_51C0(&v202, &qword_6C1A8, &qword_51FE0);
    goto LABEL_41;
  }

  if (v80 != enum case for Parse.uso(_:))
  {
    sub_2970();
    swift_beginAccess();
    v150 = v178[2];
    v151 = sub_2478C();
    v82(v151);
    v152 = sub_50AF4();
    sub_50BE4();
    sub_246B4();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = sub_EFB0();
      v155 = sub_EFC8();
      v179 = v48;
      v156 = v155;
      v208 = v155;
      *v154 = 136315138;
      LOBYTE(v205) = 0;
      v157 = sub_50B64();
      v159 = sub_4DE68(v157, v158, &v208);

      *(v154 + 4) = v159;
      _os_log_impl(&dword_0, v152, v56, "%s", v154, 0xCu);
      sub_253C(v156);
      sub_24630();
      sub_5674();

      v160 = v150;
      v161 = v179;
    }

    else
    {

      v160 = v150;
      v161 = v48;
    }

    v78(v160, v161);
    v177 = v199;
    v173 = *(v198 + 8);
    v174 = v79;
    goto LABEL_58;
  }

  v133 = sub_246EC();
  v134(v133);
  (*(v181 + 32))(v180, v79, v182);
  sub_2970();
  swift_beginAccess();
  v135 = sub_245EC(&v202 + 8);
  v82(v135);
  v136 = sub_50AF4();
  v137 = sub_50BD4();
  if (sub_EF00(v137))
  {
    v138 = sub_5718();
    sub_EEC8(v138);
    sub_EED4(&dword_0, v139, v140, "#EmergencyDirectCallFlow onInput .uso");
    sub_EE58();
  }

  v141 = sub_24768();
  v92 = v78;
  (v78)(v141);
  v142 = v180;
  sub_50344();
  *(&v203 + 1) = &type metadata for EmergencyFeatureFlagsKey;
  v204 = sub_EB68();
  LOBYTE(v202) = 2;
  sub_50374();
  sub_253C(&v202);
  v143 = v178[4];
  sub_50A14();
  sub_24490(v143, v178[3]);
  sub_23CC8();
  v99 = v144;
  sub_1A2C0(v143, &type metadata accessor for EmergencyDialogAct);
  (*(v181 + 8))(v142, v182);
LABEL_8:
  v101 = v99 >> 8;
  if (v99 != 4 || BYTE1(v99) != 35)
  {
    if ((v99 & 0x10000) == 0)
    {
      sub_2970();
      swift_beginAccess();
      v122 = sub_245EC(&v206);
      v82(v122);
      v123 = sub_50AF4();
      v124 = sub_50BE4();
      if (sub_EF4C(v124))
      {
        v125 = v48;
        v126 = sub_EFB0();
        v127 = sub_EFC8();
        v205 = v127;
        *v126 = 136315138;
        BYTE5(v207) = v99;
        HIWORD(v207) = BYTE1(v99);
        v128 = sub_50B64();
        v130 = sub_4DE68(v128, v129, &v205);

        *(v126 + 4) = v130;
        _os_log_impl(&dword_0, v123, v124, "#EmergencyDirectCallFlow Not a DirectCall intent. Aborting flow. Intent: [%s]", v126, 0xCu);
        sub_253C(v127);
        sub_5674();
        sub_24630();

        v131 = v92;
        v132 = v125;
      }

      else
      {

        v131 = sub_24768();
      }

      v92(v131, v132);
      goto LABEL_59;
    }

LABEL_53:
    v176 = v184;
    *(v184 + 218) = 1;
    *(v176 + 216) = v99 | (v101 << 8);
    goto LABEL_59;
  }

  sub_2970();
  swift_beginAccess();
  v102 = v185;
  (v82)(v185, v81, v48);
  v103 = sub_50AF4();
  v104 = sub_50BD4();
  if (sub_EF00(v104))
  {
    v105 = sub_5718();
    sub_EEC8(v105);
    sub_EED4(&dword_0, v106, v107, "#EmergencyDirectCallFlow Produced an empty intent. Ignoring input.");
    sub_EE58();
  }

  v92(v102, v48);
LABEL_59:
  sub_8A94();
}

uint64_t sub_20D28()
{
  sub_EF64();
  v1[130] = v0;
  v1[129] = v2;
  v3 = sub_50B04();
  v1[131] = v3;
  v4 = *(v3 - 8);
  v1[132] = v4;
  v5 = *(v4 + 64) + 15;
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();

  return _swift_task_switch(sub_20E00, 0, 0);
}

uint64_t sub_20E00()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = sub_50AE4();
  *(v0 + 1088) = v4;
  sub_2970();
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v0 + 1096) = v5;
  *(v0 + 1104) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = sub_50AF4();
  sub_50BD4();
  sub_246B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_5718();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v3, "#EmergencyDirectCallFlow execute", v8, 2u);
    sub_5674();
  }

  v9 = *(v0 + 1080);
  v10 = *(v0 + 1056);
  v11 = *(v0 + 1048);
  v12 = *(v0 + 1040);

  v13 = *(v10 + 8);
  *(v0 + 1112) = v13;
  v13(v9, v11);
  v14 = *(v12 + 218);
  if (v14 == 2)
  {
    v16 = *(v0 + 1040);
    v17 = *(v0 + 1032);
    sub_E9D0();
    v18 = swift_allocError();
    *v19 = 2;
    sub_1D68(v18, v16 + 16, (v16 + 56), v17);

    goto LABEL_17;
  }

  if (v14 == 3)
  {
    v15 = *(v0 + 1032);
    sub_50194();
LABEL_17:
    v38 = *(v0 + 1080);
    v39 = *(v0 + 1072);
    v40 = *(v0 + 1064);

    v41 = *(v0 + 8);

    return v41();
  }

  *(v12 + 218);
  v20 = *(v12 + 216);
  if (HIBYTE(v20) == 35 && v20 == 4)
  {
LABEL_14:
    v25 = *(v0 + 1064);
    v26 = *(v0 + 1048);
    sub_2970();
    swift_beginAccess();
    v5(v25, v4, v26);
    v27 = sub_50AF4();
    v28 = sub_50BE4();
    if (sub_EF4C(v28))
    {
      v29 = sub_5718();
      sub_EEC8(v29);
      sub_56D8(&dword_0, v30, v31, "#EmergencyDirectCallFlow Intent missing a situation or valid organization");
      sub_EE58();
    }

    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1048);
    v35 = *(v0 + 1040);
    v36 = *(v0 + 1032);

    v13(v32, v34);
    v37 = sub_1FE8((v35 + 56), *(v35 + 80));
    memcpy((v0 + 656), v37, 0x70uLL);
    sub_202C(v35 + 16, (v0 + 656));
    sub_50184();

    goto LABEL_17;
  }

  v21 = *(v0 + 1040);
  sub_87A8();
  if (!*(v0 + 944))
  {
    sub_51C0(v0 + 920, &qword_6C7A0, &unk_53C80);
    goto LABEL_14;
  }

  v22 = *(v0 + 1040);
  sub_546C((v0 + 920), v0 + 880);
  v23 = swift_task_alloc();
  *(v0 + 1120) = v23;
  *v23 = v0;
  v23[1] = sub_211A4;

  return sub_15100(v0 + 400, v22 + 136, SHIBYTE(v20), v20);
}

uint64_t sub_211A4()
{
  sub_EF64();
  v1 = *(*v0 + 1120);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  return _swift_task_switch(sub_21294, 0, 0);
}

uint64_t sub_21294()
{
  v27 = v0;
  memcpy(v0 + 34, v0 + 50, 0x80uLL);
  if (sub_E51C((v0 + 34)) == 1)
  {
    v1 = v0[129];
    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    sub_230D0();
    sub_50184();

    goto LABEL_14;
  }

  memcpy(v0 + 18, v0 + 34, 0x80uLL);
  memcpy(v26, v0 + 34, sizeof(v26));
  if (sub_509A4())
  {
    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    sub_21758();
  }

  else if (sub_509C4())
  {
    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    sub_223D8();
  }

  else
  {
    v2 = v0[31];
    if ((v2 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v3 = v0[30] & 0xFFFFFFFFFFFFLL;
    }

    if (!v3)
    {
      v10 = v0[138];
      v11 = v0[137];
      v12 = v0[136];
      v13 = v0[134];
      v14 = v0[131];
      sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
      sub_2970();
      swift_beginAccess();
      v11(v13, v12, v14);
      v15 = sub_50AF4();
      v16 = sub_50BE4();
      if (sub_EF4C(v16))
      {
        v17 = sub_5718();
        sub_EEC8(v17);
        sub_56D8(&dword_0, v18, v19, "#EmergencyDirectCallFlow OrgInfo had no usable info");
        sub_EE58();
      }

      v20 = v0[139];
      v21 = v0[134];
      v22 = v0[132];
      v23 = v0[131];
      v24 = v0[130];

      v20(v21, v23);
      v25 = sub_1FE8((v24 + 56), *(v24 + 80));
      memcpy(v0 + 96, v25, 0x70uLL);
      sub_202C(v24 + 16, v0 + 96);
      goto LABEL_13;
    }

    sub_1A3F4((v0[130] + 176), *(v0[130] + 200));
    memcpy(v0 + 66, v26, 0x80uLL);
    nullsub_1(v0 + 66);
    memcpy(v0 + 2, v0 + 66, 0x80uLL);
    sub_230D0();
  }

  sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
LABEL_13:
  v4 = v0[129];

  sub_50184();

LABEL_14:
  sub_253C(v0 + 110);
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21578()
{
  type metadata accessor for EmergencyDirectCallFlow();
  sub_24548(&qword_6CD70, v0, type metadata accessor for EmergencyDirectCallFlow);
  return sub_4FF14();
}

uint64_t sub_21638()
{
  v1 = *v0;
  sub_1FD38();
  return v2 & 1;
}

uint64_t sub_21684()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_20D28();
}

uint64_t sub_21720()
{
  type metadata accessor for EmergencyDirectCallFlow();

  return sub_4FF64();
}

void sub_21758()
{
  sub_13C8C();
  v2 = v0;
  v4 = v3;
  memcpy(v172, v3, sizeof(v172));
  v145 = sub_50884();
  v5 = sub_569C(v145);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1A3A0();
  v146 = v8;
  v9 = sub_2208(&qword_6B988, &qword_530B0);
  v10 = sub_72B0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_EE34();
  v143 = v13;
  sub_13B08();
  __chkstk_darwin(v14);
  sub_13C5C();
  v144 = v15;
  v16 = sub_2208(&qword_6B998, qword_51850);
  v17 = sub_72B0(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_EE34();
  v150 = v20;
  sub_13B08();
  __chkstk_darwin(v21);
  sub_13C5C();
  v147 = v22;
  sub_13B48();
  v148 = type metadata accessor for ConfirmationFlowConfigModel();
  v23 = sub_569C(v148);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_1A3A0();
  v149 = v26;
  sub_13B48();
  v27 = sub_50B04();
  v28 = sub_8558(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_EE34();
  v142 = v33;
  sub_13B08();
  v35 = __chkstk_darwin(v34);
  v37 = &v141 - v36;
  __chkstk_darwin(v35);
  v39 = &v141 - v38;
  v40 = sub_50804();
  v41 = sub_8558(v40);
  v154 = v42;
  v155 = v41;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_5630();
  sub_24798();
  v45 = v4[6];
  v46 = v4[7];

  v153 = v1;
  sub_2478C();
  sub_2970();
  sub_507F4();
  v47 = sub_50744();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_50734();
  v50 = v4[8];
  v51 = v4[9];
  v152 = v4;
  sub_2970();
  sub_50724();

  v151 = sub_50714();

  v53 = v2[3];
  v52 = v2[4];
  sub_1FE8(v2, v53);
  (*(v52 + 8))(&v166, v53, v52);
  v54 = v167;
  sub_1A3F4(&v166, v167);
  LOBYTE(v45) = sub_500D4();
  sub_253C(&v166);
  if (v45)
  {
    v55 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_246FC();
    v56(v39, v55, v27);
    v57 = sub_50AF4();
    v58 = sub_50BD4();
    if (sub_EF4C(v58))
    {
      v59 = sub_5718();
      sub_24774(v59);
      _os_log_impl(&dword_0, v57, v58, "#EmergencyDirectCallFlow Request made on HomePod. Confirm before calling.", v54, 2u);
      sub_24630();
    }

    (*(v30 + 8))(v39, v27);
    sub_23BC(v2, &v166);
    sub_23BC((v2 + 5), v169);
    memcpy(v171, v172, 0x80uLL);
    sub_1A058(v171);
    memcpy(v170, v171, sizeof(v170));
    sub_5484(v152, v165);
    sub_EA30();
    v60 = sub_4FF04();
    sub_EA84(&v166);
    v61 = sub_1FE8(v2 + 5, v2[8])[1];
    v62 = v147;
    v63 = v155;
    (*(v154 + 16))(v147, v153, v155);
    sub_13D50();
    sub_28E0(v64, v65, v66, v63);

    v67 = v149;
    sub_24EEC(v62);

    sub_51C0(v62, &qword_6B998, qword_51850);
    v68 = sub_1FE8(v2 + 5, v2[8])[1];
    v69 = v148;
    v70 = v148[5];

    sub_250F0();

    *(v67 + v69[6]) = v60;
    *(v67 + v69[7]) = 2;
    *(v67 + v69[8]) = 0;
    *(v67 + v69[9]) = 1;
    sub_23BC(v2, v163);
    sub_23BC((v2 + 5), v162);
    sub_5260((v2 + 10), v160);
    sub_52BC(v162, v162[3]);
    sub_24738();
    v150 = v71;
    sub_5620();
    v73 = *(v72 + 64);
    __chkstk_darwin(v74);
    sub_5630();
    v76 = sub_1A4A4(v75);
    v77(v76);
    memcpy(v164, v60, 0x70uLL);
    v158 = v69;
    v159 = &off_66AB0;
    sub_530C(v157);
    sub_1A40C();
    sub_24490(v67, v78);
    v156[3] = &type metadata for EmergencyCATProvider;
    v156[4] = &off_66C88;
    sub_1A498();
    v156[0] = swift_allocObject();
    memcpy((v156[0] + 16), v164, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v79 = swift_allocObject();
    v80 = v158;
    sub_52BC(v157, v158);
    sub_5620();
    v82 = *(v81 + 64);
    __chkstk_darwin(v83);
    sub_5630();
    v85 = sub_2464C(v84);
    v86(v85);
    sub_52BC(v156, &type metadata for EmergencyCATProvider);
    sub_5620();
    v88 = *(v87 + 64);
    __chkstk_darwin(v89);
    sub_5630();
    v91 = sub_247A4(v90);
    v92(v91);
    memcpy(v165, v80, 0x70uLL);
    v167 = v69;
    v168 = &off_66AB0;
    sub_530C(&v166);
    sub_245A0();
    sub_244EC(v2, v93);
    *(v79 + 256) = &type metadata for EmergencyCATProvider;
    *(v79 + 264) = &off_66C88;
    sub_1A498();
    v94 = swift_allocObject();
    *(v79 + 232) = v94;
    memcpy((v94 + 16), v165, 0x70uLL);
    v95 = v152;
    memcpy((v79 + 24), v152, 0x80uLL);
    sub_546C(&v166, v79 + 152);
    sub_546C(v163, v79 + 192);
    v96 = v160[1];
    *(v79 + 272) = v160[0];
    *(v79 + 288) = v96;
    v97 = v161;
    *(v79 + 16) = 0;
    *(v79 + 312) = 0;
    *(v79 + 320) = 0;
    *(v79 + 304) = v97;
    sub_5484(v95, &v166);
    sub_253C(v156);
    sub_253C(v157);
    sub_253C(v162);
    *&v166 = v79;
    sub_245D4();
    sub_24548(v98, 255, v99);
    sub_4FF04();

    sub_1A428();
    sub_1A2C0(v67, v100);
    (*(v154 + 8))(v153, v155);
  }

  else
  {
    v101 = v2[4];
    sub_1FE8(v2, v2[3]);
    v102 = *(v101 + 8);
    v103 = sub_24660();
    v104(v103);
    sub_1FE8(v164, v164[3]);
    sub_24660();
    if (sub_500B4() & 1) != 0 || (sub_1FE8(v164, v164[3]), sub_24660(), (sub_50044()))
    {
      v105 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      v106 = v27;
      v107(v37, v105, v27);
      v108 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      v110 = os_log_type_enabled(v108, v109);
      v111 = v153;
      v112 = v151;
      if (v110)
      {
        v113 = sub_5718();
        sub_24774(v113);
        sub_24694(&dword_0, v114, v115, "#EmergencyDirectCallFlow Request made on device that doesn't support calling. Give supportive dialog.");
        sub_24630();
      }

      (*(v30 + 8))(v37, v106);
      v116 = sub_1FE8(v2 + 5, v2[8])[1];
      v118 = v154;
      v117 = v155;
      sub_246FC();
      v119(v150, v111, v117);
      sub_13D50();
      sub_28E0(v120, v121, v122, v117);
      sub_1A3F4(v164, v164[3]);

      v123 = sub_500B4();
      v124 = 0;
      if ((v123 & 1) == 0)
      {
        sub_1A3F4(v164, v164[3]);
        v124 = sub_50044() ^ 1;
      }

      v125 = v144;
      v126 = v150;
      sub_24CDC(v150, v112, v124 & 1);

      sub_51C0(v126, &qword_6B998, qword_51850);
      sub_234C(v125, v143);
      sub_23BC(v2, &v166);
      v127 = v146;
      sub_50874();
      sub_245BC();
      sub_24548(v128, 255, v129);
      sub_4FF04();

      sub_1A370();
      sub_1A2C0(v127, v130);
      sub_51C0(v125, &qword_6B988, &qword_530B0);
      (*(v118 + 8))(v111, v117);
    }

    else
    {
      v131 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      sub_246FC();
      v132 = v142;
      v133(v142, v131, v27);
      v134 = sub_50AF4();
      sub_50BD4();
      sub_246B4();
      v136 = os_log_type_enabled(v134, v135);
      v137 = v153;
      if (v136)
      {
        v138 = sub_5718();
        sub_24774(v138);
        sub_24694(&dword_0, v139, v140, "#EmergencyDirectCallFlow Resource is available. Making the call.");
        sub_24630();
      }

      (*(v30 + 8))(v132, v27);
      sub_23BC(v2, &v166);
      sub_23BC((v2 + 5), v169);
      memcpy(v171, v172, 0x80uLL);
      sub_1A058(v171);
      memcpy(v170, v171, sizeof(v170));
      sub_5484(v152, v165);
      sub_EA30();
      sub_4FF04();

      sub_EA84(&v166);
      (*(v154 + 8))(v137, v155);
    }

    sub_253C(v164);
  }

  sub_8A94();
}

void sub_223D8()
{
  sub_13C8C();
  v153 = v0;
  v3 = v2;
  v5 = v4;
  memcpy(v170, v4, sizeof(v170));
  v147 = sub_50884();
  v6 = sub_569C(v147);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1A3A0();
  v146 = v9;
  sub_13B48();
  v141 = type metadata accessor for ConfirmationFlowConfigModel();
  v10 = sub_569C(v141);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1A3A0();
  v142 = v13;
  sub_13B48();
  v140 = sub_508C4();
  v14 = sub_569C(v140);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1A3A0();
  v139 = v17;
  sub_13B48();
  v18 = sub_50B04();
  v19 = sub_8558(v18);
  v152 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_EE34();
  v151 = v23;
  sub_13B08();
  __chkstk_darwin(v24);
  sub_13C5C();
  v138 = v25;
  v26 = sub_2208(&unk_6D680, &qword_515B0);
  v27 = sub_72B0(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v143 = &v137 - v30;
  sub_13B48();
  v144 = sub_4FD64();
  v31 = sub_8558(v144);
  v149 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_EE34();
  v137 = v35;
  sub_13B08();
  __chkstk_darwin(v36);
  sub_13C5C();
  v148 = v37;
  v38 = sub_2208(&qword_6B998, qword_51850);
  v39 = sub_72B0(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_24798();
  v42 = sub_2208(&qword_6B988, &qword_530B0);
  v43 = sub_72B0(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_EE34();
  v145 = v46;
  sub_13B08();
  __chkstk_darwin(v47);
  v49 = &v137 - v48;
  v50 = sub_50804();
  v51 = sub_8558(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  sub_5630();
  v58 = v57 - v56;
  v150 = v5;
  v60 = v5[6];
  v59 = v5[7];

  sub_2970();
  sub_507F4();
  v61 = *(v3 + 24);
  v62 = *(v3 + 32);
  v63 = sub_2478C();
  sub_1A3F4(v63, v64);
  v154 = v53;
  v65 = v53;
  v66 = v49;
  v67 = v18;
  (*(v65 + 16))(v1, v58, v50);
  sub_13D50();
  v155 = v50;
  v68 = v50;
  v69 = v152;
  sub_28E0(v70, v71, v72, v68);
  v73 = *(v62 + 32);
  v74 = v61;
  v75 = v153;
  v76 = v62;
  v77 = v151;
  v73(v1, v74, v76);
  sub_51C0(v1, &qword_6B998, qword_51850);
  memcpy(v171, v170, 0x80uLL);
  nullsub_1(v171);
  memcpy(v169, v171, sizeof(v169));
  if ((sub_22F54(v169) & 1) == 0)
  {
    goto LABEL_4;
  }

  v78 = v69;
  v79 = v143;
  sub_50984();
  v80 = v144;
  if (sub_513C(v79, 1, v144) == 1)
  {
    sub_51C0(v79, &unk_6D680, &qword_515B0);
    v69 = v78;
LABEL_4:
    v81 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v69 + 16))(v77, v81, v67);
    v82 = sub_50AF4();
    v83 = sub_50BD4();
    v84 = v69;
    if (sub_EF4C(v83))
    {
      v85 = sub_5718();
      *v85 = 0;
      _os_log_impl(&dword_0, v82, v83, "#EmergencyDirectCallFlow Only website available. Returning orgRequestOnlyWebsite.", v85, 2u);
      sub_5674();
    }

    (*(v84 + 8))(v77, v67);
    sub_234C(v66, v145);
    sub_23BC(v75, &v156);
    v86 = v146;
    sub_50874();
    sub_245BC();
    sub_24548(v87, 255, v88);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v86, v89);
    sub_51C0(v66, &qword_6B988, &qword_530B0);
    (*(v154 + 8))(v58, v155);
    goto LABEL_10;
  }

  v151 = v58;
  (*(v149 + 32))(v148, v79, v80);
  v90 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v91 = v138;
  (*(v78 + 16))(v138, v90, v67);
  v92 = sub_50AF4();
  sub_50BD4();
  sub_246B4();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = sub_5718();
    sub_24774(v94);
    sub_24694(&dword_0, v95, v96, "#EmergencyDirectCallFlow Only website available for VOX request. Offer to open the org's website.");
    sub_24630();
  }

  (*(v78 + 8))(v91, v67);
  v97 = v75[4];
  sub_1FE8(v75, v75[3]);
  v98 = *(v97 + 16);
  v99 = sub_24660();
  v100(v99);
  (*(v149 + 16))(v137, v148, v80);
  v101 = v139;
  sub_2970();
  sub_508B4();
  sub_24548(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow);
  v102 = sub_4FF04();
  sub_1A2C0(v101, &type metadata accessor for AppPunchOutFlow);
  v103 = v142;
  sub_234C(v66, v142);
  v104 = sub_1FE8(v75 + 5, v75[8])[1];
  v105 = v141;
  v106 = v141[5];

  sub_25110();

  *(v103 + v105[6]) = v102;
  *(v103 + v105[7]) = 3;
  *(v103 + v105[8]) = 2;
  *(v103 + v105[9]) = 1;
  sub_23BC(v75, v166);
  sub_23BC((v75 + 5), v165);
  sub_5260((v75 + 10), v163);
  sub_52BC(v165, v165[3]);
  sub_24738();
  v153 = v107;
  sub_5620();
  v109 = *(v108 + 64);
  __chkstk_darwin(v110);
  sub_5630();
  v112 = sub_1A4A4(v111);
  v113(v112);
  memcpy(v167, v102, sizeof(v167));
  v161 = v105;
  v162 = &off_66AB0;
  sub_530C(v160);
  sub_1A40C();
  sub_24490(v103, v114);
  v159[3] = &type metadata for EmergencyCATProvider;
  v159[4] = &off_66C88;
  sub_1A498();
  v159[0] = swift_allocObject();
  memcpy((v159[0] + 16), v167, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v115 = swift_allocObject();
  v116 = v161;
  sub_52BC(v160, v161);
  v152 = v66;
  sub_5620();
  v118 = *(v117 + 64);
  __chkstk_darwin(v119);
  sub_5630();
  v121 = sub_247A4(v120);
  v122(v121);
  sub_52BC(v159, &type metadata for EmergencyCATProvider);
  sub_5620();
  v124 = *(v123 + 64);
  __chkstk_darwin(v125);
  sub_5630();
  v127 = sub_2464C(v126);
  v128(v127);
  memcpy(v168, v116, sizeof(v168));
  v157 = v105;
  v158 = &off_66AB0;
  sub_530C(&v156);
  sub_245A0();
  sub_244EC(v75, v129);
  *(v115 + 256) = &type metadata for EmergencyCATProvider;
  *(v115 + 264) = &off_66C88;
  sub_1A498();
  v130 = swift_allocObject();
  *(v115 + 232) = v130;
  memcpy((v130 + 16), v168, 0x70uLL);
  v131 = v150;
  memcpy((v115 + 24), v150, 0x80uLL);
  sub_546C(&v156, v115 + 152);
  sub_546C(v166, v115 + 192);
  v132 = v163[1];
  *(v115 + 272) = v163[0];
  *(v115 + 288) = v132;
  v133 = v164;
  *(v115 + 16) = 0;
  *(v115 + 312) = 0;
  *(v115 + 320) = 0;
  *(v115 + 304) = v133;
  sub_5484(v131, &v156);
  sub_253C(v159);
  sub_253C(v160);
  sub_253C(v165);
  *&v156 = v115;
  sub_245D4();
  sub_24548(v134, 255, v135);
  sub_4FF04();

  sub_1A428();
  sub_1A2C0(v103, v136);
  (*(v149 + 8))(v148, v144);
  sub_51C0(v152, &qword_6B988, &qword_530B0);
  (*(v154 + 8))(v151, v155);
LABEL_10:
  sub_8A94();
}

uint64_t sub_22F54(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_E51C(__dst) != 1)
  {
    memcpy(v9, __dst, sizeof(v9));
    if (sub_509C4())
    {
      v2 = v1[3];
      v3 = v1[4];
      sub_1FE8(v1, v2);
      (*(v3 + 8))(v6, v2, v3);
      sub_1FE8(v6, v7);
      if ((sub_500D4() & 1) == 0)
      {
        sub_1FE8(v6, v7);
        if ((sub_500C4() & 1) == 0)
        {
          sub_1FE8(v6, v7);
          if ((sub_500A4() & 1) == 0)
          {
            sub_1FE8(v6, v7);
            if ((sub_500B4() & 1) == 0)
            {
              sub_1FE8(v6, v7);
              v4 = sub_500F4();
              sub_253C(v6);
              return v4 & 1;
            }
          }
        }
      }

      sub_253C(v6);
    }
  }

  v4 = 0;
  return v4 & 1;
}

void sub_230D0()
{
  sub_13C8C();
  v114 = v1;
  v3 = v2;
  sub_247F0(v136);
  v113 = sub_50884();
  v4 = sub_569C(v113);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1A3A0();
  v112 = v7;
  sub_13B48();
  v108 = type metadata accessor for ConfirmationFlowConfigModel();
  v8 = sub_569C(v108);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1A3A0();
  v109 = v11;
  v12 = sub_2208(&qword_6B998, qword_51850);
  v13 = sub_72B0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_5658();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  v22 = sub_2208(&qword_6B988, &qword_530B0);
  v23 = sub_72B0(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_EE34();
  v111 = v26;
  sub_13B08();
  v28 = __chkstk_darwin(v27);
  v30 = &v107 - v29;
  __chkstk_darwin(v28);
  sub_13C5C();
  v110 = v31;
  sub_13B48();
  v32 = sub_50B04();
  v33 = sub_8558(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_5658();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  v43 = &v107 - v42;
  v115 = v0;
  if ((sub_23AE8(v3) & 1) != 0 && (sub_247F0(v130), sub_E51C(v130) != 1))
  {
    memcpy(v135, v130, sizeof(v135));
    v57 = v131;
    v58 = v132;
    v134 = v133;
    memcpy(v129, v136, sizeof(v129));
    sub_5484(v129, v128);
    v59 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v35 + 16))(v43, v59, v32);
    v60 = sub_50AF4();
    v61 = sub_50BD4();
    if (sub_EF4C(v61))
    {
      v62 = sub_5718();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "#EmergencyDirectCallFlow No resource available for VOX request. Offer to search the web.", v62, 2u);
      sub_5674();
    }

    (*(v35 + 8))(v43, v32);
    v63 = v114[3];
    v64 = v114[4];
    sub_1A3F4(v114, v63);

    sub_2970();
    sub_507F4();
    sub_50804();
    v113 = v57;
    sub_13D50();
    sub_28E0(v65, v66, v67, v68);
    v69 = v110;
    (*(v64 + 24))(v21, v63, v64);
    sub_51C0(v21, &qword_6B998, qword_51850);
    v70 = v115;
    v71 = v115[3];
    v72 = v115[4];
    sub_1A3F4(v115, v71);
    v73 = *(v72 + 16);

    v73(&v128[2], v71, v72);
    v128[0] = v57;
    v128[1] = v58;
    sub_1A1BC();
    v74 = sub_4FF04();
    sub_1A210(v128);
    v75 = v109;
    sub_234C(v69, v109);
    v76 = sub_1FE8(v70 + 5, v70[8])[1];
    v77 = v108;
    v78 = v108[5];

    sub_25110();

    *(v75 + v77[6]) = v74;
    *(v75 + v77[7]) = 4;
    *(v75 + v77[8]) = 1;
    *(v75 + v77[9]) = 1;
    sub_23BC(v70, v126);
    sub_23BC((v70 + 5), v125);
    sub_5260((v70 + 10), v123);
    sub_52BC(v125, v125[3]);
    sub_24738();
    v115 = v79;
    sub_5620();
    v81 = *(v80 + 64);
    __chkstk_darwin(v82);
    sub_5630();
    sub_24798();
    (*(v83 + 16))(v74);
    memcpy(v127, v74, 0x70uLL);
    v121 = v77;
    v122 = &off_66AB0;
    sub_530C(v120);
    sub_1A40C();
    sub_24490(v75, v84);
    v119[3] = &type metadata for EmergencyCATProvider;
    v119[4] = &off_66C88;
    sub_1A498();
    v119[0] = swift_allocObject();
    memcpy((v119[0] + 16), v127, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v85 = swift_allocObject();
    v86 = v121;
    sub_52BC(v120, v121);
    sub_24738();
    v114 = v87;
    sub_5620();
    v89 = *(v88 + 64);
    __chkstk_darwin(v90);
    sub_5630();
    v92 = sub_2464C(v91);
    v93(v92);
    sub_52BC(v119, &type metadata for EmergencyCATProvider);
    sub_5620();
    v95 = *(v94 + 64);
    __chkstk_darwin(v96);
    sub_5630();
    v98 = sub_24708(v97);
    v99(v98);
    memcpy(v128, v86, 0x70uLL);
    v117 = v77;
    v118 = &off_66AB0;
    sub_530C(&v116);
    sub_245A0();
    sub_244EC(v73, v100);
    *(v85 + 256) = &type metadata for EmergencyCATProvider;
    *(v85 + 264) = &off_66C88;
    sub_1A498();
    v101 = swift_allocObject();
    *(v85 + 232) = v101;
    memcpy((v101 + 16), v128, 0x70uLL);
    memcpy((v85 + 24), v135, 0x60uLL);
    *(v85 + 120) = v113;
    *(v85 + 128) = v58;
    *(v85 + 136) = v134;
    sub_546C(&v116, v85 + 152);
    sub_546C(v126, v85 + 192);
    v102 = v123[1];
    *(v85 + 272) = v123[0];
    *(v85 + 288) = v102;
    v103 = v124;
    *(v85 + 16) = 0;
    *(v85 + 312) = 0;
    *(v85 + 320) = 0;
    *(v85 + 304) = v103;
    sub_253C(v119);
    sub_253C(v120);
    sub_253C(v125);
    *&v126[0] = v85;
    sub_245D4();
    sub_24548(v104, 255, v105);
    sub_4FF04();

    sub_1A428();
    sub_1A2C0(v75, v106);
    v56 = v110;
  }

  else
  {
    v44 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v35 + 16))(v40, v44, v32);
    v45 = sub_50AF4();
    v46 = sub_50BD4();
    if (sub_EF4C(v46))
    {
      v47 = sub_5718();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "#EmergencyDirectCallFlow No resource available. Returning orgRequestNoResource.", v47, 2u);
      sub_5674();
    }

    (*(v35 + 8))(v40, v32);
    v48 = v114[3];
    v49 = v114[4];
    sub_1A3F4(v114, v48);
    sub_247F0(v129);
    if (sub_E51C(v129) == 1)
    {
      v50 = 1;
    }

    else
    {
      sub_50B74();
      v50 = 0;
    }

    v51 = sub_50804();
    sub_28E0(v18, v50, 1, v51);
    (*(v49 + 24))(v18, v48, v49);
    sub_51C0(v18, &qword_6B998, qword_51850);
    sub_234C(v30, v111);
    sub_23BC(v115, v135);
    sub_247F0(v127);
    if (sub_E51C(v127) != 1)
    {
      memcpy(v128, v127, sizeof(v128));
      sub_50994();
    }

    v52 = v112;
    sub_50874();
    sub_245BC();
    sub_24548(v53, 255, v54);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v52, v55);
    v56 = v30;
  }

  sub_51C0(v56, &qword_6B988, &qword_530B0);
  sub_8A94();
}

uint64_t sub_23AE8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_E51C(__dst) != 1)
  {
    if ((__dst[13] & 0x2000000000000000) != 0 ? HIBYTE(__dst[13]) & 0xFLL : __dst[12] & 0xFFFFFFFFFFFFLL)
    {
      v3 = v1[3];
      v4 = v1[4];
      sub_1FE8(v1, v3);
      (*(v4 + 8))(v6, v3, v4);
      sub_1FE8(v6, v7);
      if ((sub_500D4() & 1) == 0)
      {
        sub_1FE8(v6, v7);
        if ((sub_500C4() & 1) == 0)
        {
          sub_1FE8(v6, v7);
          if ((sub_500A4() & 1) == 0)
          {
            sub_1FE8(v6, v7);
            if ((sub_500B4() & 1) == 0)
            {
              sub_253C(v6);
              return 1;
            }
          }
        }
      }

      sub_253C(v6);
    }
  }

  return 0;
}

uint64_t sub_23C2C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  sub_1A498();

  return _swift_deallocObject(v15, v16, v17);
}

void sub_23CC8()
{
  sub_13C8C();
  v1 = v0;
  v2 = sub_50B04();
  v3 = sub_8558(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_5630();
  v10 = v9 - v8;
  v11 = sub_50A24();
  v35[3] = v11;
  v35[4] = &protocol witness table for EmergencyDialogAct;
  v12 = sub_530C(v35);
  sub_244EC(v1, v12);
  v13 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  (*(v5 + 16))(v10, v13, v2);
  sub_23BC(v35, v34);
  v14 = sub_50AF4();
  v15 = sub_50BD4();
  if (os_log_type_enabled(v14, v15))
  {
    v31 = v2;
    v16 = sub_EFB0();
    v17 = sub_EFC8();
    v33 = v17;
    *v16 = 136315138;
    sub_23BC(v34, &v32);
    sub_2208(&qword_6C080, &qword_51E10);
    v18 = sub_50B64();
    v20 = v19;
    sub_253C(v34);
    v21 = sub_4DE68(v18, v20, &v33);

    *(v16 + 4) = v21;
    sub_247B8(&dword_0, v22, v23, "Converting EmergencyDialogAct to EmergencyCallIntent: %s");
    sub_253C(v17);
    sub_5674();
    sub_5674();

    (*(v5 + 8))(v10, v31);
  }

  else
  {

    sub_253C(v34);
    v24 = *(v5 + 8);
    v25 = sub_2478C();
    v27(v25, v26);
  }

  v28 = *(v12 + v11[7]);
  v29 = v11[5];
  v30 = *(v12 + v11[6]);
  switch(*(v12 + v29))
  {
    case 1:
    case 2:
    case 3:
    case 4:
      goto LABEL_9;
    case 5:
      sub_24720();
      goto LABEL_9;
    case 6:
      sub_246C0();
      goto LABEL_9;
    case 7:
      sub_24670();
LABEL_9:
      sub_24744();
      sub_247D8();
      break;
    case 8:
      break;
    default:

      break;
  }

  sub_253C(v35);
  sub_8A94();
}

void sub_23FCC()
{
  sub_13C8C();
  sub_24780();
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_5630();
  sub_24798();
  v35 = type metadata accessor for EmergencyNLIntent();
  sub_24618();
  v36 = sub_24548(v9, 255, v10);
  v11 = sub_530C(v34);
  sub_244EC(v0, v11);
  v12 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  (*(v6 + 16))(v1, v12, v3);
  sub_23BC(v34, v33);
  v13 = sub_50AF4();
  v14 = sub_50BD4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_EFB0();
    v16 = sub_EFC8();
    v32 = v16;
    *v15 = 136315138;
    sub_1FE8(v33, v33[3]);
    sub_24738();
    sub_5620();
    v18 = *(v17 + 64);
    __chkstk_darwin(v19);
    sub_5630();
    v21 = sub_24708(v20);
    v22(v21);
    v23 = sub_3DBF4();
    v25 = v24;
    sub_24600();
    sub_1A2C0(v2, v26);
    sub_253C(v33);
    v27 = sub_4DE68(v23, v25, &v32);

    *(v15 + 4) = v27;
    sub_247B8(&dword_0, v28, v29, "Converting EmergencyNLIntent: %s");
    sub_253C(v16);
    sub_5674();
    sub_5674();

    (*(v6 + 8))(v1, v3);
  }

  else
  {

    (*(v6 + 8))(v1, v3);
    sub_253C(v33);
  }

  sub_1A3F4(v34, v35);
  if (qword_6B608 != -1)
  {
    swift_once();
  }

  sub_24618();
  sub_24548(v30, 255, v31);
  sub_50524();
  sub_1A3F4(v34, v35);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_50524();
  sub_1A3F4(v34, v35);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  sub_50524();
  switch(LOBYTE(v33[0]))
  {
    case 1:
    case 2:
    case 3:
    case 4:
      goto LABEL_15;
    case 5:
      sub_24720();
      goto LABEL_15;
    case 6:
      sub_246C0();
      goto LABEL_15;
    case 7:
      sub_24670();
LABEL_15:
      sub_24744();
      sub_247D8();
      break;
    case 8:
      break;
    default:

      break;
  }

  sub_253C(v34);
  sub_8A94();
}

uint64_t sub_24490(uint64_t a1, uint64_t a2)
{
  v4 = sub_24780();
  v6 = v5(v4);
  sub_569C(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_244EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24780();
  v6 = v5(v4);
  sub_569C(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_24548(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24630()
{
}

void sub_24694(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_24744()
{

  return sub_50CE4();
}

void sub_247B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_247D8()
{
}

void *sub_247F0(void *a1)
{

  return memcpy(a1, v1, 0x80uLL);
}

uint64_t type metadata accessor for SirenCATs()
{
  result = qword_6CD78;
  if (!qword_6CD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_24A14(a1, a2);
}

uint64_t sub_24A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_8ED0(a1);
  return v12;
}

uint64_t type metadata accessor for EmergencyCATs()
{
  result = qword_6CDC8;
  if (!qword_6CDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24CDC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517D0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298(v11);
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x65626D754E67726FLL;
  *(v10 + 88) = 0xE900000000000072;
  if (a2)
  {
    v13 = sub_50754();
    v14 = a2;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v14;
  *(v10 + 120) = v13;
  *(v10 + 128) = 0xD000000000000012;
  *(v10 + 136) = 0x8000000000054BF0;
  *(v10 + 168) = &type metadata for Bool;
  *(v10 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_24EEC(uint64_t a1)
{
  v2 = sub_2208(&qword_6B998, qword_51850);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v6 = swift_allocObject();
  sub_7260(v6, xmmword_51780);
  sub_71A0(a1, v5, &qword_6B998, qword_51850);
  v7 = sub_50804();
  if (sub_513C(v5, 1, v7) == 1)
  {
    sub_7204(v5, &qword_6B998, qword_51850);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_530C((v6 + 48));
    sub_7298(v7);
    (*(v8 + 32))();
  }

  sub_50794();
}

uint64_t sub_25130(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_25184(a1, a2);
}

uint64_t sub_25184(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t type metadata accessor for EmergencySuicidePreventionBasicIntentModernCATs()
{
  result = qword_6CE18;
  if (!qword_6CE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_253F8(a1, a2);
}

uint64_t sub_253F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_25554(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t type metadata accessor for DomesticViolenceModernCATs()
{
  result = qword_6CE68;
  if (!qword_6CE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_256E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2573C(a1, a2);
}

uint64_t sub_2573C(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_25898(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_259A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v108 = a3;
  memcpy(__dst, a2, sizeof(__dst));
  v104 = sub_50884();
  v5 = sub_569C(v104);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_5630();
  v103 = v9 - v8;
  sub_50B04();
  sub_5620();
  v105 = v10;
  v106 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_5658();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v98 = &v97 - v18;
  v19 = sub_2208(&qword_6CEB8, &qword_530A8);
  v20 = sub_72B0(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v100 = &v97 - v23;
  v99 = type metadata accessor for ConfirmationFlowConfigModel();
  v24 = sub_569C(v99);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_5630();
  v101 = v28 - v27;
  v29 = sub_2208(&qword_6B988, &qword_530B0);
  v30 = sub_72B0(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_5658();
  sub_27838();
  __chkstk_darwin(v33);
  v35 = &v97 - v34;
  v36 = v3[14];
  sub_1FE8(v3 + 10, v3[13]);
  v37 = v3[3];
  v38 = v3[4];
  sub_1FE8(v3, v37);
  v39 = v37;
  v40 = v35;
  v41 = v105;
  (*(v38 + 8))(v123, v39, v38);
  v42 = *(v36 + 56);
  v43 = v106;
  v44 = v107;
  v45 = v16;
  v42();
  sub_253C(v123);
  memcpy(v122, v44, sizeof(v122));
  if (sub_E51C(v122) == 1)
  {
    goto LABEL_4;
  }

  v46 = v16;
  v47 = v41;
  memcpy(v123, v122, sizeof(v123));
  memcpy(v121, __dst, sizeof(v121));
  sub_5484(v121, v120);
  v48 = v100;
  sub_2636C(v123, v40, v100);
  v49 = v99;
  if (sub_513C(v48, 1, v99) == 1)
  {
    sub_51C0(v44, &qword_6C050, &qword_51E00);
    sub_51C0(v48, &qword_6CEB8, &qword_530A8);
    v41 = v47;
    v45 = v46;
LABEL_4:
    v50 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    (*(v43 + 16))(v45, v50, v41);
    v51 = sub_50AF4();
    v52 = sub_50BD4();
    if (sub_27800(v52))
    {
      *swift_slowAlloc() = 0;
      sub_24694(&dword_0, v53, v54, "Emergency followup flow preparing promptless output");
      sub_24630();
    }

    (*(v43 + 8))(v45, v41);
    sub_27568(v40, v102, &qword_6B988, &qword_530B0);
    v55 = v4[3];
    v56 = v4[4];
    sub_1FE8(v4, v55);
    (*(v56 + 8))(v121, v55, v56);
    v57 = sub_1FE8(v4 + 5, v4[8]);
    memcpy(v124, v57, sizeof(v124));
    sub_26F6C(v44, v121, v124);
    sub_253C(v121);
    sub_23BC(v4, v119);
    memcpy(v120, v44, sizeof(v120));
    if (sub_E51C(v120) != 1)
    {
      memcpy(v121, v120, sizeof(v121));
      sub_50994();
    }

    v58 = v103;
    sub_50874();
    sub_27618(&qword_6B990, &type metadata accessor for OutputFlow);
    v59 = sub_4FF04();
    sub_27660(v58, &type metadata accessor for OutputFlow);
    v60 = v40;
    goto LABEL_12;
  }

  v108 = v40;
  sub_1A0FC(v48, v101);
  v61 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v62 = v98;
  (*(v43 + 16))(v98, v61, v47);
  v63 = sub_50AF4();
  v64 = sub_50BD4();
  if (sub_27800(v64))
  {
    *swift_slowAlloc() = 0;
    sub_24694(&dword_0, v65, v66, "Emergency followup flow preparing for confirmation");
    sub_24630();
  }

  (*(v43 + 8))(v62, v47);
  sub_23BC(v4, v119);
  sub_23BC((v4 + 5), v118);
  sub_5260((v4 + 15), v116);
  sub_52BC(v118, v118[3]);
  v107 = &v97;
  sub_5620();
  v68 = *(v67 + 64);
  __chkstk_darwin(v69);
  sub_5630();
  v72 = (v71 - v70);
  (*(v73 + 16))(v71 - v70);
  memcpy(v124, v72, sizeof(v124));
  v114 = v49;
  v115 = &off_66AB0;
  v74 = sub_530C(v113);
  v75 = v101;
  sub_27468(v101, v74);
  v112[3] = &type metadata for EmergencyCATProvider;
  v112[4] = &off_66C88;
  sub_1A498();
  v112[0] = swift_allocObject();
  memcpy((v112[0] + 16), v124, 0x70uLL);
  type metadata accessor for EmergencyConfirmationFlow();
  v76 = swift_allocObject();
  sub_52BC(v113, v114);
  sub_5620();
  v78 = *(v77 + 64);
  __chkstk_darwin(v79);
  sub_5630();
  v80 = v49;
  v83 = v82 - v81;
  (*(v84 + 16))(v82 - v81);
  sub_52BC(v112, &type metadata for EmergencyCATProvider);
  sub_5620();
  v86 = *(v85 + 64);
  __chkstk_darwin(v87);
  sub_5630();
  v90 = (v89 - v88);
  (*(v91 + 16))(v89 - v88);
  memcpy(v120, v90, 0x70uLL);
  v110 = v80;
  v111 = &off_66AB0;
  v92 = sub_530C(&v109);
  sub_1A0FC(v83, v92);
  *(v76 + 256) = &type metadata for EmergencyCATProvider;
  *(v76 + 264) = &off_66C88;
  sub_1A498();
  v93 = swift_allocObject();
  *(v76 + 232) = v93;
  memcpy((v93 + 16), v120, 0x70uLL);
  memcpy((v76 + 24), v123, 0x80uLL);
  sub_546C(&v109, v76 + 152);
  sub_546C(v119, v76 + 192);
  v94 = v116[1];
  *(v76 + 272) = v116[0];
  *(v76 + 288) = v94;
  v95 = v117;
  *(v76 + 16) = 0;
  *(v76 + 312) = 0;
  *(v76 + 320) = 0;
  *(v76 + 304) = v95;
  sub_253C(v112);
  sub_253C(v113);
  sub_253C(v118);
  *&v119[0] = v76;
  sub_27618(&qword_6BB48, type metadata accessor for EmergencyConfirmationFlow);
  v59 = sub_4FF04();

  sub_27660(v75, type metadata accessor for ConfirmationFlowConfigModel);
  v60 = v108;
LABEL_12:
  sub_51C0(v60, &qword_6B988, &qword_530B0);
  return v59;
}

uint64_t sub_2636C@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v88 = a3;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_2208(&qword_6B988, &qword_530B0);
  v6 = sub_569C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v84 = &v82 - v9;
  v10 = sub_2208(&unk_6D680, &qword_515B0);
  v11 = sub_72B0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v82 - v14;
  v86 = sub_508C4();
  v16 = sub_569C(v86);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_5630();
  v83 = v20 - v19;
  v21 = sub_2208(&qword_6CEC0, &unk_53910);
  v22 = sub_72B0(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_5658();
  sub_27838();
  v26 = __chkstk_darwin(v25);
  v28 = &v82 - v27;
  __chkstk_darwin(v26);
  v30 = &v82 - v29;
  v31 = v3[3];
  v32 = v3[4];
  sub_1FE8(v3, v31);
  (*(v32 + 8))(v96, v31, v32);
  sub_28E0(v30, 1, 1, v5);
  v33 = v3[13];
  v34 = v3[14];
  sub_1FE8(v3 + 10, v33);
  v35 = *(v34 + 8);
  v89 = __src;
  if (v35(__src, v96, v33, v34))
  {
    sub_23BC(v3, v91);
    sub_23BC((v3 + 5), &v93);
    memcpy(v95, __dst, 0x80uLL);
    sub_1A058(v95);
    memcpy(v94, v95, sizeof(v94));
    v36 = v89;
    sub_5484(v89, &v90);
    sub_EA30();
    v86 = sub_4FF04();
    sub_EA84(v91);
    sub_277BC();
    sub_250F0();

    sub_277A0();
    sub_13D50();
    sub_28E0(v37, v38, v39, v5);
    sub_2781C(v28);
    sub_27778();
    v41 = (*(v40 + 32))(v36, v96, &unk_53910, __src);
    v42 = 0;
    v43 = 2;
    goto LABEL_8;
  }

  v82 = v5;
  v44 = v3[13];
  v45 = v3[14];
  sub_1FE8(v3 + 10, v44);
  if (((*(v45 + 16))(v89, v96, v44, v45) & 1) == 0)
  {
    v58 = v3[14];
    sub_1FE8(v3 + 10, v3[13]);
    v59 = *(v58 + 24);
    v60 = sub_277F0();
    if ((v61(v60) & 1) == 0)
    {
      sub_51C0(v30, &qword_6CEC0, &unk_53910);
      sub_253C(v96);
      goto LABEL_12;
    }

    v62 = v28;
    v63 = *(v89 + 13);
    v86 = *(v89 + 12);
    v64 = v3[3];
    v65 = v3[4];
    sub_1FE8(v3, v64);
    v66 = *(v65 + 16);

    v66(v92, v64, v65);
    v91[0] = v86;
    v91[1] = v63;
    sub_1A1BC();
    v86 = sub_4FF04();
    sub_1A210(v91);
    sub_277BC();
    sub_25110();

    sub_277A0();
    v42 = 1;
    sub_13D50();
    v5 = v82;
    sub_28E0(v67, v68, v69, v82);
    sub_2781C(v62);
    sub_27778();
    v71 = *(v70 + 48);
    v72 = sub_277F0();
    v41 = v73(v72);
    v43 = 4;
LABEL_8:
    v74 = v87;
    sub_27568(v30, v87, &qword_6CEC0, &unk_53910);
    if (sub_513C(v74, 1, v5) != 1)
    {
      v75 = v84;
      sub_275C8(v74, v84, &qword_6B988, &qword_530B0);
      v76 = type metadata accessor for ConfirmationFlowConfigModel();
      v77 = v88;
      sub_275C8(v75, v88 + v76[5], &qword_6B988, &qword_530B0);
      sub_51C0(v30, &qword_6CEC0, &unk_53910);
      sub_253C(v96);
      sub_27568(v85, v77, &qword_6B988, &qword_530B0);
      *(v77 + v76[6]) = v86;
      *(v77 + v76[7]) = v43;
      *(v77 + v76[8]) = v42;
      *(v77 + v76[9]) = v41 & 1;
      sub_13D50();
      v81 = v76;
      return sub_28E0(v78, v79, v80, v81);
    }

    sub_275B8(v43);
    sub_277A0();
    sub_253C(v96);
    sub_51C0(v74, &qword_6CEC0, &unk_53910);
LABEL_12:
    v81 = type metadata accessor for ConfirmationFlowConfigModel();
    v78 = v88;
    v79 = 1;
    v80 = 1;
    return sub_28E0(v78, v79, v80, v81);
  }

  v46 = v3[3];
  v47 = v3[4];
  sub_1FE8(v3, v46);
  (*(v47 + 16))(v91, v46, v47);
  sub_50984();
  v48 = sub_4FD64();
  result = sub_513C(v15, 1, v48);
  if (result != 1)
  {
    v50 = v83;
    sub_2970();
    sub_508B4();
    sub_27618(&qword_6C7B0, &type metadata accessor for AppPunchOutFlow);
    v86 = sub_4FF04();
    sub_27660(v50, &type metadata accessor for AppPunchOutFlow);
    sub_277BC();
    sub_25110();

    sub_277A0();
    sub_13D50();
    v5 = v82;
    sub_28E0(v51, v52, v53, v82);
    sub_2781C(v28);
    sub_27778();
    v55 = *(v54 + 40);
    v56 = sub_277F0();
    v41 = v57(v56);
    v42 = 2;
    v43 = 3;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *sub_26AF4(const char *a1, const void *a2, void (*a3)(uint64_t), const char *a4)
{
  v47[0] = a4;
  v47[1] = a1;
  v49 = sub_50B04();
  sub_5620();
  *&v48 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  sub_5630();
  v12 = v11 - v10;
  v13 = &qword_6B988;
  v14 = sub_2208(&qword_6B988, &qword_530B0);
  v15 = sub_569C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_5658();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v47 - v22;
  v52 = &type metadata for EmergencyCATProvider;
  v53 = &off_66C88;
  sub_1A498();
  v51[0] = swift_allocObject();
  memcpy((v51[0] + 16), a2, 0x70uLL);
  v24 = sub_1FE8(v51, &type metadata for EmergencyCATProvider)[1];

  v25 = sub_22F0(a2, v50);
  a3(v25);

  v26 = sub_50D64();
  v28 = v27;
  sub_51C0(v23, &qword_6B988, &qword_530B0);
  if (v28)
  {
    v29 = sub_1FE8(v51, v52)[12];

    sub_2F44();

    v13 = sub_50D64();
    v31 = v30;
    sub_51C0(v20, &qword_6B988, &qword_530B0);
    if (v31)
    {
      sub_2208(&qword_6C1C0, &unk_51FF0);
      inited = swift_initStackObject();
      v49 = v13;
      v33 = inited;
      v48 = xmmword_51780;
      *(inited + 16) = xmmword_51780;

      v33[4] = sub_50A84();
      v33[5] = v34;
      v33[9] = &type metadata for String;
      v33[6] = 0x656D7269666E6F63;
      v33[7] = 0xE900000000000064;
      v35 = sub_50B24();
      v54 = v26;
      v55 = v28;
      v56 = 0xD000000000000035;
      v57 = 0x80000000000551D0;
      v58 = v35;
      v36 = swift_initStackObject();
      *(v36 + 16) = v48;

      *(v36 + 32) = sub_50A84();
      *(v36 + 40) = v37;
      *(v36 + 72) = &type metadata for String;
      *(v36 + 48) = 0x64657463656A6572;
      *(v36 + 56) = 0xE800000000000000;
      v38 = sub_50B24();
      v50[0] = v49;
      v50[1] = v31;
      v50[2] = 0xD000000000000035;
      v50[3] = 0x80000000000551D0;
      v50[4] = v38;
      v39 = sub_50904();

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  v40 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v41 = v48;
  v42 = v49;
  (*(v48 + 16))(v12, v40, v49);
  v43 = sub_50AF4();
  v44 = sub_50BE4();
  if (sub_27800(v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v13, v47[0], v45, 2u);
    sub_24630();
  }

  (*(v41 + 8))(v12, v42);
  v39 = &_swiftEmptyArrayStorage;
LABEL_8:
  sub_253C(v51);
  return v39;
}

void *sub_26F6C(const void *a1, char *a2, const void *a3)
{
  v6 = sub_50B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v39 - v13;
  __chkstk_darwin(v12);
  v16 = v39 - v15;
  v40 = &type metadata for EmergencyCATProvider;
  v41 = &off_66C88;
  v39[0] = swift_allocObject();
  memcpy((v39[0] + 16), a3, 0x70uLL);
  memcpy(v42, a1, sizeof(v42));
  if (sub_E51C(v42) == 1)
  {
    sub_22F0(a3, v43);
    v17 = sub_50AE4();
    swift_beginAccess();
    (*(v7 + 16))(v16, v17, v6);
    v18 = sub_50AF4();
    v19 = sub_50BD4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "orgInfo is nil. Not making snippets.", v20, 2u);
    }

    (*(v7 + 8))(v16, v6);
  }

  else
  {
    memcpy(v43, v42, sizeof(v43));
    v21 = *(a2 + 4);
    sub_1FE8(a2, *(a2 + 3));
    sub_22F0(a3, __dst);
    if ((sub_500D4() & 1) == 0)
    {
      v22 = *(a2 + 4);
      sub_1FE8(a2, *(a2 + 3));
      if ((sub_500B4() & 1) == 0)
      {
        if (sub_509A4())
        {
          v29 = sub_1FE8(v39, v40);
          memcpy(__dst, v29, 0x70uLL);
          v30 = "Failed to execute label CATs for makeCallCancelButtons";
          v31 = sub_24C1C;
        }

        else if (sub_509C4())
        {
          v32 = sub_1FE8(v39, v40);
          memcpy(__dst, v32, 0x70uLL);
          v30 = "Failed to execute label CATs for makeOpenCancelButtons";
          v31 = sub_250B0;
        }

        else
        {
          if ((v43[13] & 0x2000000000000000) != 0)
          {
            v33 = HIBYTE(v43[13]) & 0xFLL;
          }

          else
          {
            v33 = v43[12] & 0xFFFFFFFFFFFFLL;
          }

          if (!v33)
          {
            v35 = sub_50AE4();
            swift_beginAccess();
            (*(v7 + 16))(v11, v35, v6);
            v36 = sub_50AF4();
            v37 = sub_50BE4();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&dword_0, v36, v37, "orgInfo is in an unknown state. Not making snippets.", v38, 2u);
            }

            (*(v7 + 8))(v11, v6);
            goto LABEL_10;
          }

          v34 = sub_1FE8(v39, v40);
          memcpy(__dst, v34, 0x70uLL);
          v30 = "Failed to execute label CATs for makeSearchCancelButtons";
          v31 = sub_250D0;
        }

        v27 = sub_26AF4(a2, __dst, v31, v30);
        goto LABEL_11;
      }
    }

    v23 = sub_50AE4();
    swift_beginAccess();
    (*(v7 + 16))(v14, v23, v6);
    v24 = sub_50AF4();
    v25 = sub_50BD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Device is HomePod or AppleTV. Not making snippets.", v26, 2u);
    }

    (*(v7 + 8))(v14, v6);
  }

LABEL_10:
  v27 = &_swiftEmptyArrayStorage;
LABEL_11:
  sub_253C(v39);
  return v27;
}

uint64_t sub_27468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationFlowConfigModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  sub_1A498();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_27568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2784C(a1, a2, a3, a4);
  sub_569C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_275B8(unint64_t result)
{
  if (result != 6)
  {
    return sub_1382C(result);
  }

  return result;
}

uint64_t sub_275C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2784C(a1, a2, a3, a4);
  sub_569C(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_27618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_276C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_277A0()
{

  return sub_51C0(v2, v0, v1);
}

uint64_t sub_277BC()
{
  v1 = sub_1FE8((v0 + 40), *(v0 + 64))[1];
}

BOOL sub_27800(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2781C(uint64_t a1)
{

  return sub_275C8(a1, v3, v1, v2);
}

uint64_t sub_2784C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2208(a3, a4);
}

uint64_t type metadata accessor for EmergencyGeneralEmergencyCATs()
{
  result = qword_6CEC8;
  if (!qword_6CEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27918(char a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_51780;
  *(v2 + 32) = 0xD00000000000001BLL;
  *(v2 + 40) = 0x8000000000055CF0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  sub_50794();
}

uint64_t sub_27A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_27A70(a1, a2);
}

uint64_t sub_27A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_8ED0(a1);
  return v12;
}

uint64_t getEnumTagSinglePayload for EmergencyFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmergencyFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27D38);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27D88()
{
  result = qword_6CF18;
  if (!qword_6CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6CF18);
  }

  return result;
}

uint64_t sub_27DEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_503A4();
  v5 = sub_72B0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1A3A0();
  sub_EE14(v8);
  v125 = sub_50A24();
  v9 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  sub_1A3A0();
  sub_EE14(v10);
  v126 = sub_50354();
  v11 = sub_8558(v126);
  v128 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1A3A0();
  sub_EE14(v15);
  v134 = sub_50334();
  v16 = sub_8558(v134);
  v136 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1A3A0();
  v135 = v20;
  v21 = sub_502E4();
  v22 = sub_8558(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_50B04();
  v30 = sub_8558(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v30);
  v132 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v37);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v38);
  sub_EEF4();
  v131 = v39;
  __chkstk_darwin(v40);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v41);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v42);
  v44 = &v120 - v43;
  v45 = sub_50AE4();
  swift_beginAccess();
  v46 = *(v32 + 16);
  v138 = v32 + 16;
  v139 = v45;
  v137 = v46;
  v46(v44, v45, v29);
  v47 = *(v24 + 16);
  v133 = a1;
  v48 = v21;
  v47(v28, a1, v21);
  v49 = sub_50AF4();
  v50 = sub_50BD4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v123 = v29;
    v52 = v51;
    v122 = swift_slowAlloc();
    v142[0] = v122;
    *v52 = 136315138;
    sub_2AAE4(&qword_6C078, 255, &type metadata accessor for Input);
    v53 = sub_50CD4();
    v121 = v32;
    v54 = v2;
    v56 = v55;
    v58 = *(v24 + 8);
    v57 = v24 + 8;
    v58(v28, v48);
    v59 = sub_4DE68(v53, v56, v142);
    v2 = v54;

    *(v52 + 4) = v59;
    _os_log_impl(&dword_0, v49, v50, "#StopSirenFlow onInput: %s", v52, 0xCu);
    sub_253C(v122);
    sub_5674();
    v29 = v123;
    sub_5674();

    v60 = *(v121 + 8);
  }

  else
  {

    v62 = *(v24 + 8);
    v57 = v24 + 8;
    v62(v28, v48);
    v60 = *(v32 + 8);
  }

  v61 = sub_2AE20();
  v60(v61);
  v63 = *(v2 + 40);
  v64 = *(v2 + 48);
  sub_1FE8((v2 + 16), v63);
  (*(v64 + 8))(v142, v63, v64);
  sub_1FE8(v142, v143);
  LOBYTE(v63) = sub_500A4();
  sub_253C(v142);
  if ((v63 & 1) == 0)
  {
    sub_2AC34();
    v75 = v132;
    sub_2AC58();
    v76();
    v77 = sub_50AF4();
    v78 = sub_50BD4();
    if (sub_EF00(v78))
    {
      v79 = sub_5718();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v75, "#StopSirenFlow Not on watch. Flagging for remote execution.", v79, 2u);
      sub_5674();
    }

    (v60)(v75, v29);
    v80 = 3;
    goto LABEL_11;
  }

  v65 = v135;
  sub_502D4();
  v66 = v134;
  v67 = (*(v136 + 88))(v65, v134);
  if (v67 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_2AC34();
    sub_2AC58();
    v68();
    v69 = sub_50AF4();
    v70 = sub_50BD4();
    if (sub_EF00(v70))
    {
      v71 = sub_5718();
      sub_EEC8(v71);
      v74 = "#StopSirenFlow onInput .NLv3IntentOnly";
LABEL_15:
      sub_EED4(&dword_0, v72, v73, v74);
      sub_EE58();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v67 == enum case for Parse.directInvocation(_:))
  {
    sub_2AC34();
    sub_2AC58();
    v81();
    v69 = sub_50AF4();
    v82 = sub_50BD4();
    if (sub_EF00(v82))
    {
      v83 = sub_5718();
      sub_EEC8(v83);
      v74 = "#StopSirenFlow onInput directInvocation";
      goto LABEL_15;
    }

LABEL_16:

    v84 = sub_2AE20();
    v60(v84);
    *(v2 + 136) = 2;
    (*(v136 + 8))(v135, v66);
    return 1;
  }

  if (v67 != enum case for Parse.uso(_:))
  {
    sub_2AC34();
    v98 = v124;
    sub_2AC58();
    v99();
    v100 = sub_50AF4();
    v101 = sub_50BE4();
    if (sub_27800(v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v140 = v103;
      *v102 = 136315138;
      v141 = 0;
      v104 = sub_50B64();
      v106 = sub_4DE68(v104, v105, &v140);

      *(v102 + 4) = v106;
      _os_log_impl(&dword_0, v100, v57, "%s", v102, 0xCu);
      sub_253C(v103);
      v66 = v134;
      sub_5674();
      sub_5674();
    }

    (v60)(v98, v29);
    (*(v136 + 8))(v135, v66);
    return 0;
  }

  v86 = v135;
  (*(v136 + 96))(v135, v66);
  (*(v128 + 32))(v130, v86, v126);
  sub_2AC68();
  sub_2AC58();
  v87();
  v88 = sub_50AF4();
  v89 = sub_50BD4();
  if (sub_EF00(v89))
  {
    v90 = sub_5718();
    sub_EEC8(v90);
    sub_EED4(&dword_0, v91, v92, "#StopSirenFlow onInput .uso");
    sub_EE58();
  }

  (v60)(v127, v29);
  sub_50344();
  v143 = &type metadata for EmergencyFeatureFlagsKey;
  v144 = sub_EB68();
  LOBYTE(v142[0]) = 2;
  sub_50374();
  sub_253C(v142);
  v93 = v129;
  sub_50A14();
  v94 = v125;
  if (*(v93 + *(v125 + 24)) != 35)
  {
    if (sub_50A44() == 0x6E65726973 && v95 == 0xE500000000000000)
    {
    }

    else
    {
      v97 = sub_50CE4();

      if ((v97 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    switch(*(v129 + *(v94 + 20)))
    {
      case 5:

        break;
      case 8:
        goto LABEL_36;
      default:
        v107 = sub_50CE4();

        if ((v107 & 1) == 0)
        {
          goto LABEL_36;
        }

        break;
    }

    sub_2AC94();
    v108 = sub_2AD48();
    v109(v108);
    v80 = 2;
LABEL_11:
    *(v2 + 136) = v80;
    return 1;
  }

LABEL_36:
  sub_2AC34();
  sub_2AC58();
  v110();
  v111 = sub_50AF4();
  v112 = sub_50BD4();
  if (sub_EF00(v112))
  {
    v113 = sub_5718();
    sub_EEC8(v113);
    sub_EED4(&dword_0, v114, v115, "#StopSirenFlow Received invalid input. Ignoring.");
    sub_EE58();
  }

  v116 = sub_2AE20();
  v60(v116);
  sub_2AC94();
  v117 = sub_2AD48();
  v119(v117, v118);
  return 0;
}

uint64_t sub_289B4()
{
  sub_EF64();
  v1[78] = v0;
  v1[77] = v2;
  v3 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v3);
  v5 = *(v4 + 64) + 15;
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v6 = sub_50884();
  v1[81] = v6;
  sub_72B0(v6);
  v8 = *(v7 + 64);
  v1[82] = sub_1F9DC();
  v9 = sub_4FD64();
  sub_72B0(v9);
  v11 = *(v10 + 64);
  v1[83] = sub_1F9DC();
  v12 = sub_508C4();
  v1[84] = v12;
  sub_72B0(v12);
  v14 = *(v13 + 64);
  v1[85] = sub_1F9DC();
  v15 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v15);
  v17 = *(v16 + 64);
  v1[86] = sub_1F9DC();
  v18 = sub_50104();
  v1[87] = v18;
  sub_1F9CC(v18);
  v1[88] = v19;
  v21 = *(v20 + 64);
  v1[89] = sub_1F9DC();
  v22 = sub_50B04();
  v1[90] = v22;
  sub_1F9CC(v22);
  v1[91] = v23;
  v25 = *(v24 + 64) + 15;
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v26 = sub_2AC10();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_28BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_2AD2C();
  a21 = v23;
  a22 = v24;
  sub_2AD74();
  a20 = v22;
  v25 = v22[96];
  v26 = v22[91];
  v27 = v22[90];
  sub_50AE4();
  swift_beginAccess();
  v30 = *(v26 + 16);
  v28 = v26 + 16;
  v29 = v30;
  v31 = sub_EF3C();
  v30(v31);
  v32 = sub_50AF4();
  v33 = sub_50BD4();
  if (sub_27800(v33))
  {
    *sub_5718() = 0;
    sub_EF90(&dword_0, v34, v35, "#StopSirenFlow execute");
    sub_5674();
  }

  v36 = v22[96];
  v37 = v22[91];
  v38 = v22[90];
  v39 = v22[78];

  v40 = *(v37 + 8);
  v41 = sub_5668();
  v40(v41);
  switch(*(v39 + 136))
  {
    case 1:
      sub_2ACDC();
      sub_4FFE4();
      v91 = v22[55];
      v92 = v22[56];
      sub_2ACF0(v22 + 52);
      v93 = sub_2AD80();
      v94(v93);
      v95 = sub_50014();
      sub_2AC20(v95);
      v97 = *(v96 + 104);
      v98 = sub_2AC84();
      v99(v98);
      v22[99] = sub_2AB60();
      v100 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
      v52 = swift_task_alloc();
      v22[100] = v52;
      *v52 = v22;
      v53 = sub_29684;
      goto LABEL_23;
    case 2:
      v54 = v22[95];
      v55 = v22[90];
      sub_2AC68();
      v56 = sub_EF3C();
      v29(v56);
      v57 = sub_50AF4();
      v58 = sub_50BD4();
      if (sub_27800(v58))
      {
        *sub_5718() = 0;
        sub_EF90(&dword_0, v59, v60, "#StopSirenFlow needsExecution");
        sub_5674();
      }

      v61 = v22[95];
      v62 = v22[91];
      v63 = v22[90];
      v64 = v22[78];

      v65 = sub_5668();
      v40(v65);
      sub_23BC(v64 + 144, (v22 + 12));
      v66 = sub_1FE8(v22 + 12, v22[15]);
      v67 = *(v64 + 40);
      v68 = *(v64 + 48);
      sub_1FE8((v64 + 16), v67);
      (*(v68 + 8))(v67, v68);
      v69 = *v66;
      LOBYTE(v69) = sub_2D45C(v22 + 17);
      sub_253C(v22 + 17);
      sub_253C(v22 + 12);
      if ((v69 & 1) == 0)
      {
        v101 = v22[93];
        v102 = v22[90];
        v103 = v22[78];
        sub_2AC68();
        v104 = sub_EF3C();
        v29(v104);

        v105 = sub_50AF4();
        v106 = sub_50BD4();

        v107 = os_log_type_enabled(v105, v106);
        v108 = v22[93];
        v109 = v22[91];
        v110 = v22[90];
        if (v107)
        {
          v111 = swift_slowAlloc();
          a10 = v110;
          a11 = swift_slowAlloc();
          v112 = a11;
          *v111 = 136315138;
          a9 = v109;
          v114 = *(v64 + 40);
          v113 = *(v64 + 48);
          sub_1FE8((v64 + 16), v114);
          (*(v113 + 8))(v114, v113);
          sub_2208(&unk_6D040, &qword_53408);
          v115 = sub_50B64();
          v117 = sub_4DE68(v115, v116, &a11);

          *(v111 + 4) = v117;
          _os_log_impl(&dword_0, v105, v106, "#StopSirenFlow Cannot route to Siren from this device: %s", v111, 0xCu);
          sub_253C(v112);
          sub_EE58();
          sub_5674();

          v118 = a10;
          v119 = v108;
        }

        else
        {

          v119 = v108;
          v118 = v110;
        }

        (v40)(v119, v118);
        sub_2ACDC();
        sub_4FFE4();
        v137 = v22[25];
        v138 = v22[26];
        sub_2ACF0(v22 + 22);
        v139 = sub_2AD80();
        v140(v139);
        v141 = sub_50014();
        sub_2AC20(v141);
        v143 = *(v142 + 104);
        v144 = sub_2AC84();
        v145(v144);
        v22[104] = sub_2AB60();
        v146 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v52 = swift_task_alloc();
        v22[105] = v52;
        *v52 = v22;
        v53 = sub_29DE8;
LABEL_23:
        v52[1] = v53;
        sub_2ACC0();

        return dispatch thunk of SiriKitEventSending.sendAsync(_:)(v147, v148, v149, v150, v151, v152, v153, v154, a9, a10, a11, a12, a13, a14);
      }

      v70 = *sub_1FE8((v64 + 144), *(v22[78] + 168));
      if ((sub_2D4D0() & 1) == 0)
      {
        v120 = v22[94];
        v121 = v22[90];
        sub_2AC68();
        v122 = sub_EF3C();
        v29(v122);
        sub_50AF4();
        v123 = sub_50BD4();
        if (sub_EF00(v123))
        {
          v124 = sub_5718();
          sub_EEC8(v124);
          sub_EED4(&dword_0, v125, v126, "#StopSirenFlow App not installed on this device nor companion.");
          sub_EE58();
        }

        v127 = v22[94];
        sub_2ADC4();
        v128 = sub_5668();
        v40(v128);
        sub_4FFE4();
        v129 = v22[40];
        v130 = v22[41];
        sub_2ACF0(v22 + 37);
        (*(v64 + 104))(v120, enum case for ActivityType.resolveApp(_:), v28);
        v131 = sub_50014();
        sub_2AC20(v131);
        v133 = *(v132 + 104);
        v134 = sub_2AC84();
        v135(v134);
        v22[102] = sub_2AB60();
        v136 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
        v52 = swift_task_alloc();
        v22[103] = v52;
        *v52 = v22;
        v53 = sub_29BC0;
        goto LABEL_23;
      }

      v71 = swift_task_alloc();
      v22[101] = v71;
      *v71 = v22;
      v71[1] = sub_29854;
      sub_2ACC0();

      return sub_2A340();
    case 3:
      v74 = v22[92];
      v75 = v22[90];
      sub_2AC68();
      v76 = sub_EF3C();
      v29(v76);
      sub_50AF4();
      v77 = sub_50BD4();
      if (sub_EF00(v77))
      {
        v78 = sub_5718();
        sub_EEC8(v78);
        sub_EED4(&dword_0, v79, v80, "#StopSirenFlow Phone to watch handoff not enabled.");
        sub_EE58();
      }

      v81 = v22[92];
      sub_2ADC4();
      v82 = sub_5668();
      v40(v82);
      sub_4FFE4();
      v83 = v22[5];
      v84 = v22[6];
      sub_2ACF0(v22 + 2);
      (*(v39 + 104))(v74, enum case for ActivityType.checkCompanionCompatibility(_:), v28);
      v85 = sub_50014();
      sub_2AC20(v85);
      v87 = *(v86 + 104);
      v88 = sub_2AC84();
      v89(v88);
      v22[106] = sub_2AB60();
      v90 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
      v52 = swift_task_alloc();
      v22[107] = v52;
      *v52 = v22;
      v53 = sub_2A010;
      goto LABEL_23;
    default:
      sub_2ACDC();
      sub_4FFE4();
      v42 = v22[60];
      v43 = v22[61];
      sub_2ACF0(v22 + 57);
      v44 = sub_2AD80();
      v45(v44);
      v46 = sub_50014();
      sub_2AC20(v46);
      v48 = *(v47 + 104);
      v49 = sub_2AC84();
      v50(v49);
      v22[97] = sub_2AB60();
      v51 = async function pointer to dispatch thunk of SiriKitEventSending.sendAsync(_:)[1];
      v52 = swift_task_alloc();
      v22[98] = v52;
      *v52 = v22;
      v53 = sub_29478;
      goto LABEL_23;
  }
}

uint64_t sub_29478()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 784);
  v3 = *(v1 + 776);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_29578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  v15 = v14[78];
  v16 = v14[77];
  sub_253C(v14 + 57);
  sub_E9D0();
  v17 = swift_allocError();
  *v18 = 2;
  sub_1D68(v17, v15 + 16, (v15 + 56), v16);

  sub_2AB2C();
  v30 = v20;
  v31 = v19;

  sub_2AD68();
  sub_2ACC0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_29684()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 800);
  v3 = *(v1 + 792);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_29784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  v15 = *(v14 + 616);
  sub_253C((v14 + 416));
  sub_50194();
  sub_2AB2C();
  v27 = v17;
  v28 = v16;

  sub_2AD68();
  sub_2ACC0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_29854()
{
  sub_EF64();
  sub_2AD20();
  v2 = v1;
  v3 = *(v1 + 808);
  v9 = *v0;
  *(v2 + 864) = v4;

  v5 = sub_2AC10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_29944()
{
  v18 = v0;
  if (*(v0 + 864) == 1)
  {
    v1 = *(v0 + 680);
    v2 = *(v0 + 672);
    v3 = *(v0 + 664);
    v4 = *(v0 + 624);
    v5 = *(v0 + 616);
    v6 = v4[5];
    v7 = v4[6];
    sub_1FE8(v4 + 2, v6);
    (*(v7 + 16))(v17, v6, v7);
    sub_2D1AC(v3);
    sub_508B4();
    sub_2AAE4(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow);
    sub_4FF04();
    v8 = &type metadata accessor for AppPunchOutFlow;
  }

  else
  {
    v1 = *(v0 + 656);
    v9 = *(v0 + 648);
    v10 = *(v0 + 640);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    sub_2AD90();
    sub_24900();

    sub_23BC(v11 + 16, v0 + 376);
    sub_50874();
    sub_2ABD0();
    sub_2AAE4(v13, 255, v14);
    sub_4FF04();
    v8 = &type metadata accessor for OutputFlow;
  }

  sub_2AA84(v1, v8);
  sub_50184();

  sub_2AB2C();

  sub_2AD68();

  return v15();
}

uint64_t sub_29BC0()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 824);
  v3 = *(v1 + 816);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_29CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  sub_2ADEC();
  sub_253C((v14 + 296));
  sub_2AD90();
  sub_248E0();

  sub_23BC(v15 + 16, v14 + 336);
  sub_2AE04();
  sub_2ABD0();
  sub_2AAE4(v16, 255, v17);
  sub_2AE2C();
  sub_2ABE8();
  sub_2AB2C();
  v29 = v19;
  v30 = v18;

  sub_2AD68();
  sub_2ACC0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_29DE8()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 840);
  v3 = *(v1 + 832);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_29EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  sub_2ADEC();
  sub_253C((v14 + 176));
  sub_2AD90();
  sub_249A0();

  sub_23BC(v15 + 16, v14 + 216);
  sub_2AE04();
  sub_2ABD0();
  sub_2AAE4(v16, 255, v17);
  sub_2AE2C();
  sub_2ABE8();
  sub_2AB2C();
  v29 = v19;
  v30 = v18;

  sub_2AD68();
  sub_2ACC0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_2A010()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 856);
  v3 = *(v1 + 848);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = sub_2AC10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_2A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2AD2C();
  sub_2AD74();
  v15 = v14[78];
  sub_253C(v14 + 2);
  v16 = *sub_1FE8(v15 + 18, v15[21]);
  LOBYTE(v16) = sub_2D4D0();
  v17 = sub_1FE8(v15 + 7, v15[10])[11];

  v18 = v14[79];
  if (v16)
  {
    sub_24920();
  }

  else
  {
    sub_249A0();
  }

  v19 = v14[82];
  v20 = v14[81];
  v21 = v14[80];
  v22 = v14[79];
  v23 = v14[78];
  v24 = v14[77];

  sub_234C(v22, v21);
  sub_23BC(v23 + 16, (v14 + 7));
  sub_2AE04();
  sub_2ABD0();
  sub_2AAE4(v25, 255, v26);
  sub_50174();
  sub_2ABE8();
  sub_24D4(v22);
  sub_2AB2C();
  v38 = v28;
  v39 = v27;

  sub_2AD68();
  sub_2ACC0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14);
}

uint64_t sub_2A2B4()
{
  type metadata accessor for StopSirenFlow();
  sub_2AAE4(&qword_6D038, v0, type metadata accessor for StopSirenFlow);
  return sub_4FF14();
}

uint64_t sub_2A340()
{
  sub_EF64();
  v1 = sub_50B04();
  v0[5] = v1;
  sub_1F9CC(v1);
  v0[6] = v2;
  v4 = *(v3 + 64);
  v0[7] = sub_1F9DC();
  v5 = sub_2AC10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_2A3E0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_50AE4();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_50AF4();
  v6 = sub_50BE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_5718();
    sub_EEC8(v7);
    _os_log_impl(&dword_0, v5, v6, "#StopSirenFlow Can't tell if Siren is running from this device.", v4, 2u);
    sub_EE58();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(1);
}

uint64_t *sub_2A4FC()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 18);
  return v0;
}

uint64_t sub_2A534()
{
  sub_2A4FC();

  return _swift_deallocClassInstance(v0, 184, 7);
}

_BYTE *storeEnumTagSinglePayload for StopSirenFlow.StopSirenFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2A658);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2A694()
{
  result = qword_6D030;
  if (!qword_6D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6D030);
  }

  return result;
}

uint64_t sub_2A710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2A7C0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_2A7C0()
{
  sub_EF64();
  v2 = v1;
  sub_2AD20();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_EF2C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2A8D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2A96C;

  return sub_289B4();
}

uint64_t sub_2A96C()
{
  sub_EF64();
  sub_2AD20();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_EF2C();
  *v4 = v3;

  sub_2AD68();

  return v5();
}

uint64_t sub_2AA4C()
{
  type metadata accessor for StopSirenFlow();

  return sub_4FF64();
}

uint64_t sub_2AA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2AAE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2AB2C()
{
  result = v0[96];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[93];
  v5 = v0[92];
  v6 = v0[89];
  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[80];
  v12 = v0[79];
  return result;
}

uint64_t sub_2AB60()
{
  sub_28E0(v0, 0, 1, v1);

  return sub_50024();
}

uint64_t sub_2ABE8()
{

  return sub_2AA84(v0, &type metadata accessor for OutputFlow);
}

uint64_t sub_2AC34()
{
  v2 = *(v0 - 192);

  return swift_beginAccess();
}

uint64_t sub_2AC68()
{

  return swift_beginAccess();
}

uint64_t sub_2AC94()
{
  v2 = *(v0 - 272);

  return sub_2AA84(v2, &type metadata accessor for EmergencyDialogAct);
}

void sub_2ACDC()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[86];
}

uint64_t sub_2ACF0(void *a1)
{
  sub_1FE8(a1, v1);

  return sub_50034();
}

uint64_t sub_2AD48()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 304);
  return result;
}

uint64_t sub_2AD68()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2AD90()
{
  v1 = sub_1FE8((v0 + 56), *(v0 + 80))[11];
}

void sub_2ADC4()
{
  v3 = v1[91];
  v4 = v1[90];
  v5 = v1[89];
  v6 = v1[88];
  v7 = v1[87];
  v8 = v1[86];
}

void sub_2ADEC()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[78];
  v5 = v0[77];
}

uint64_t sub_2AE04()
{

  return sub_50874();
}

uint64_t sub_2AE2C()
{

  return sub_50174();
}

uint64_t sub_2AE4C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2AE70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_2AF18(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t EmergencyOrganizationInfoProvider.init(flowConfig:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_50B04();
  v4 = sub_8558(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_4FDA4();
  v9 = sub_8558(v42);
  v40 = v10;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v41 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v19 = sub_1FE8(a1, v18);
  v20 = *(v17 + 8);
  v20(v45, v18, v17);
  sub_1FE8(v45, v46);
  sub_50084();
  if (v21)
  {
    sub_253C(v45);
    sub_4FD84();
  }

  else
  {
    v34 = v19;
    v35 = v16;
    v36 = v20;
    sub_253C(v45);
    v22 = sub_50AE4();
    swift_beginAccess();
    v23 = v37;
    v24 = v38;
    v25 = v39;
    (*(v38 + 16))(v37, v22, v39);
    v26 = sub_50AF4();
    v27 = sub_50BE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Failed to fetch preferencesLanguageCode. Falling back to siriLocale.", v28, 2u);
      v25 = v39;
    }

    (*(v24 + 8))(v23, v25);
    v36(v45, v18, v17);
    sub_1FE8(v45, v46);
    v16 = v35;
    sub_50054();
    sub_253C(v45);
  }

  v29 = v40;
  v30 = v42;
  (*(v40 + 16))(v41, v16, v42);
  v31 = a1[3];
  v32 = a1[4];
  sub_1FE8(a1, v31);
  (*(v32 + 24))(v44, v31, v32);
  [objc_allocWithZone(CLGeocoder) init];
  v46 = &type metadata for LocationService;
  v47 = &protocol witness table for LocationService;
  v45[0] = swift_allocObject();
  sub_508E4();
  sub_509E4();
  (*(v29 + 8))(v16, v30);
  return sub_253C(a1);
}

uint64_t sub_2B344()
{
  sub_253C((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2B384(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_2B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&unk_6D680, &qword_515B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_8E60(a3, v9);
  v11 = sub_4FD64();
  v13 = 0;
  if (sub_513C(v9, 1, v11) != 1)
  {
    sub_4FD44(v12);
    v13 = v14;
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  [v10 setPunchOutUri:v13];

  sub_2208(&unk_6D0C0, &qword_53500);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_51790;
  *(v15 + 32) = v10;
  v16 = sub_2B558(a1, a2, v15);
  sub_8ED0(a3);
  return v16;
}

id sub_2B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2B5CC(a1, a2, v6);
  sub_2B630(a3, v6);

  return v6;
}

void sub_2B5CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();

  [a3 setText:v4];
}

void sub_2B630(uint64_t a1, void *a2)
{
  sub_2208(&unk_6D0B0, &unk_534D8);
  isa = sub_50BC4().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_2B6B0()
{
  v0 = sub_50314();
  if (!v0)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  v1 = v0;
  v2 = sub_50A84();
  sub_2B7EC(v2, v3, v1, &v6);

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_2B784(&v6);
    return 35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 35;
  }

  v4 = sub_50A34();

  if (v4 == 35)
  {
    return 35;
  }

  return v4;
}

uint64_t sub_2B784(uint64_t a1)
{
  v2 = sub_2208(&qword_6C1A8, &qword_51FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2B7EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2C558(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2C5D0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2B850(const void *a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = sub_2208(&qword_6D0E0, &unk_534F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v51 - v12;
  memcpy(__dst, a1, 0x81uLL);
  v14 = sub_2C6F0(__dst);
  v51 = v7;
  v52 = a1;
  if (v14 > 1)
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v53 = v3;
    v15 = v2;
    v16 = nullsub_1(__dst);
    v17 = v16[8];
    v18 = v16[9];
    v20 = v16[6];
    v19 = v16[7];
    sub_2208(&unk_6D0C0, &qword_53500);
    v21 = swift_allocObject();
    v21[1] = xmmword_51790;
    v22 = objc_allocWithZone(INPersonHandle);

    v23 = sub_2C284(v17, v18, 2);
    v24 = sub_4FD34();
    sub_28E0(v13, 1, 1, v24);
    v25 = objc_allocWithZone(INPerson);

    *(v21 + 4) = sub_2C2F0(v23, v13, v20, v19, 0, 0, 0, 0, 0);
    v2 = v15;
    v3 = v53;
  }

  v26 = sub_50AE4();
  swift_beginAccess();
  v27 = v3[2];
  v27(v9, v26, v2);
  v28 = sub_50AF4();
  v29 = sub_50BD4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = v3 + 2;
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Creating INStartCallIntent", v30, 2u);
  }

  v31 = v3[1];
  v31(v9, v2);
  memcpy(v54, v52, 0x81uLL);
  v32 = sub_2C6F0(v54);
  v53 = v3 + 1;
  if (v32)
  {
    if (v32 == 1)
    {
      nullsub_1(v54);
      v33 = 2;
    }

    else
    {
      v33 = v32;
    }
  }

  else
  {
    nullsub_1(v54);
    v33 = 1;
  }

  v34 = objc_allocWithZone(INStartCallIntent);
  v35 = sub_2C474(0, 0, 0, v33, 1, v21, 0, 1);
  v36 = sub_2C708([v35 backingStore]);
  if (v37 >> 60 == 15)
  {
    swift_beginAccess();
    v38 = v51;
    v27(v51, v26, v2);
    v39 = sub_50AF4();
    v40 = sub_50BF4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Unable to serialize INStartCallIntent", v41, 2u);
    }

    else
    {
    }

    v31(v38, v2);
    return 0;
  }

  else
  {
    v42 = v36;
    v43 = v37;
    sub_2208(&qword_6C1C0, &unk_51FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_517D0;
    *(inited + 32) = 0x6449707061;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x8000000000055DA0;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 80), "intentTypeName");
    *(inited + 95) = -18;
    v45 = [v35 typeName];
    v46 = sub_50B54();
    v48 = v47;

    *(inited + 96) = v46;
    *(inited + 104) = v48;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0x6144746E65746E69;
    *(inited + 168) = &type metadata for Data;
    *(inited + 136) = 0xEA00000000006174;
    *(inited + 144) = v42;
    *(inited + 152) = v43;
    sub_2C778(v42, v43);
    v49 = sub_50B24();

    sub_2C7D0(v42, v43);
  }

  return v49;
}

id sub_2BE64(const void *a1, void *a2)
{
  sub_2C83C(0, &qword_6D0D0, SKIDirectInvocationPayload_ptr);
  v4 = sub_48F24();
  v5 = sub_2B850(a1);
  isa = v5;
  if (v5)
  {
    sub_2BFC0(v5);

    isa = sub_50B14().super.isa;
  }

  [v4 setUserData:isa];

  v7 = a2[4];
  sub_1FE8(a2, a2[3]);
  v8 = sub_500E4();
  v9 = objc_opt_self();
  v10 = [v9 runSiriKitExecutorCommandWithContext:v8 payload:v4];
  v11 = [v9 wrapCommandInStartLocalRequest:v10];

  return v11;
}

uint64_t sub_2BFC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2208(&qword_6D0D8, &qword_534E8);
    v2 = sub_50C94();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2C5D0(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2C6E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2C6E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2C6E0(v31, v32);
    result = sub_50C44(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2C6E0(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_2C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_50B44();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_2C2F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_4FD34();
  v17 = 0;
  if (sub_513C(a2, 1, v16) != 1)
  {
    v17 = sub_4FD24();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_50B44();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_50B44();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_50B44();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_2C474(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a6)
  {
    sub_2C83C(0, &qword_6D0E8, INPerson_ptr);
    v17.super.isa = sub_50BC4().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = [v9 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17.super.isa ttyType:a7 callCapability:a8];

  return v18;
}

unint64_t sub_2C558(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_50D34();
  sub_50B94();
  v6 = sub_50D54();

  return sub_2C62C(a1, a2, v6);
}

uint64_t sub_2C5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2C62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_50CE4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_2C6E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2C6F0(uint64_t a1)
{
  if (*(a1 + 128) <= 1u)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2C708(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_4FD74();

  return v3;
}

uint64_t sub_2C778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2C7D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2C7E4(a1, a2);
  }

  return a1;
}

uint64_t sub_2C7E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2C83C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2C87C(uint64_t a1)
{
  if ((*(a1 + 128) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 128) & 3;
  }
}

uint64_t sub_2C8A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 129))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 128);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2C8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t sub_2C948(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    LOBYTE(a2) = 2;
    *(result + 120) = 0;
  }

  *(result + 128) = a2;
  return result;
}

uint64_t type metadata accessor for EmergencyPoisonControlBasicIntentCATs()
{
  result = qword_6D0F0;
  if (!qword_6D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2CA8C(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_517A0;
  strcpy((v9 + 32), "webSearchQuery");
  *(v9 + 47) = -18;
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2CC3C(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  sub_7260(v9, xmmword_517A0);
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2CDC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  v8 = *(v7 + 64);
  sub_72A4();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v12 = swift_allocObject();
  sub_7260(v12, xmmword_517D0);
  sub_71A0(a1, v11, &qword_6B998, qword_51850);
  v13 = sub_50804();
  if (sub_513C(v11, 1, v13) == 1)
  {
    sub_7204(v11, &qword_6B998, qword_51850);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    sub_530C((v12 + 48));
    sub_7298(v13);
    (*(v14 + 32))();
  }

  *(v12 + 80) = 0x65626D754E67726FLL;
  *(v12 + 88) = 0xE900000000000072;
  if (a2)
  {
    v15 = sub_50754();
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v16;
  *(v12 + 120) = v15;
  *(v12 + 128) = 0xD000000000000012;
  *(v12 + 136) = 0x8000000000054BF0;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_2CFCC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2D020(a1, a2);
}

uint64_t sub_2D020(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t sub_2D1AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2208(&unk_6D680, &qword_515B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_4FCD4();
  v8 = sub_8558(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_2D684();
  sub_4FCC4();
  sub_4FCB4();
  sub_4FC94();
  sub_4FCA4();
  sub_2208(&qword_6D1E8, qword_53720);
  v13 = *(sub_4FC64() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_517A0;
  sub_4FC54();

  sub_4FC54();
  sub_4FC74();
  sub_4FC84();
  v16 = sub_4FD64();
  result = sub_513C(v6, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 8))(v1, v7);
    return (*(*(v16 - 8) + 32))(a1, v6, v16);
  }

  return result;
}

uint64_t sub_2D45C(void *a1)
{
  v2 = a1[4];
  sub_1FE8(a1, a1[3]);
  if (sub_500A4())
  {
    return 1;
  }

  v4 = a1[4];
  sub_1FE8(a1, a1[3]);
  return sub_50094() & 1;
}

id sub_2D4D0()
{
  v1 = sub_50B04();
  v2 = sub_8558(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_2D684();
  v7 = sub_50AE4();
  swift_beginAccess();
  (*(v4 + 16))(v0, v7, v1);
  v8 = sub_50AF4();
  v9 = sub_50BD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#SirenAppProvider Feature enabled. Checking active device for app.", v10, 2u);
  }

  (*(v4 + 8))(v0, v1);
  return [objc_opt_self() activeDeviceHasMandrake];
}

uint64_t sub_2D658(char a1)
{
  if (a1)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t type metadata accessor for EmergencyDomesticViolenceBasicIntentCATs()
{
  result = qword_6D1F0;
  if (!qword_6D1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D794(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_517A0;
  strcpy((v9 + 32), "webSearchQuery");
  *(v9 + 47) = -18;
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2D944(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  sub_7260(v9, xmmword_517A0);
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_2DAD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  v8 = *(v7 + 64);
  sub_72A4();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v12 = swift_allocObject();
  sub_7260(v12, xmmword_517D0);
  sub_71A0(a1, v11, &qword_6B998, qword_51850);
  v13 = sub_50804();
  if (sub_513C(v11, 1, v13) == 1)
  {
    sub_7204(v11, &qword_6B998, qword_51850);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    sub_530C((v12 + 48));
    sub_7298(v13);
    (*(v14 + 32))();
  }

  *(v12 + 80) = 0x65626D754E67726FLL;
  *(v12 + 88) = 0xE900000000000072;
  if (a2)
  {
    v15 = sub_50754();
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v16;
  *(v12 + 120) = v15;
  *(v12 + 128) = 0xD000000000000012;
  *(v12 + 136) = 0x8000000000054BF0;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_2DCD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2DD28(a1, a2);
}

uint64_t sub_2DD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t type metadata accessor for PoisonControlModernCATs()
{
  result = qword_6D240;
  if (!qword_6D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2DF40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2DF94(a1, a2);
}

uint64_t sub_2DF94(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_2E0F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2E1F8(uint64_t a1)
{
  v2 = sub_50324();
  v3 = sub_8558(v2);
  v182 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v8);
  sub_13C5C();
  v184 = v9;
  v10 = type metadata accessor for EmergencyNLIntent();
  v11 = sub_72B0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v14);
  sub_13C5C();
  sub_EE14(v15);
  v175 = sub_50654();
  v16 = sub_8558(v175);
  v173 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_1A3A0();
  sub_EE14(v20);
  v21 = sub_503A4();
  v22 = sub_72B0(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_1A3A0();
  sub_EE14(v25);
  v26 = sub_50A24();
  v27 = sub_72B0(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v30);
  sub_13C5C();
  sub_EE14(v31);
  v168 = sub_50354();
  v32 = sub_8558(v168);
  v165 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_1A3A0();
  sub_EE14(v36);
  v37 = sub_50334();
  v38 = sub_8558(v37);
  v185 = v39;
  v186 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_1A3A0();
  v183 = v42;
  v43 = sub_502E4();
  v44 = sub_8558(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  v50 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_50B04();
  v52 = sub_8558(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v52);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v57);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v58);
  sub_EEF4();
  v187 = v59;
  __chkstk_darwin(v60);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v61);
  v63 = &v159 - v62;
  v64 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v65 = *(v54 + 16);
  v180 = v64;
  v179 = v54 + 16;
  v178 = v65;
  v65(v63, v64, v51);
  v66 = *(v46 + 16);
  v181 = a1;
  v66(v50, a1, v43);
  v67 = sub_50AF4();
  v68 = sub_50BD4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = sub_EFB0();
    v160 = v51;
    v70 = v69;
    v71 = sub_EFC8();
    v159 = v54;
    v177 = v71;
    v188[0] = v71;
    *v70 = 136315138;
    sub_3134C(&qword_6C078, &type metadata accessor for Input);
    v72 = sub_50CD4();
    v73 = v2;
    v75 = v74;
    (*(v46 + 8))(v50, v43);
    sub_4DE68(v72, v75, v188);
    sub_31470();
    v2 = v73;

    *(v70 + 4) = v72;
    _os_log_impl(&dword_0, v67, v68, "#EmergencyCSAMFlow onInput: %s", v70, 0xCu);
    v76 = sub_EF84(&v193);
    sub_253C(v76);
    v54 = v159;
    sub_5674();
    v51 = v160;
    sub_5674();
  }

  else
  {

    (*(v46 + 8))(v50, v43);
  }

  v177 = *(v54 + 8);
  v177(v63, v51);
  v77 = v183;
  sub_502D4();
  v79 = v185;
  v78 = v186;
  v80 = (v185[11])(v77, v186);
  v81 = v182;
  v82 = v184;
  v83 = v187;
  if (v80 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v80 != enum case for Parse.directInvocation(_:))
    {
      v92 = v176;
      if (v80 != enum case for Parse.uso(_:))
      {
        sub_2970();
        swift_beginAccess();
        v142 = v162;
        sub_31394();
        v143();
        v144 = sub_50AF4();
        v145 = sub_50BE4();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = sub_EFB0();
          v147 = sub_EFC8();
          v191 = v147;
          *v146 = 136315138;
          LOBYTE(v190) = 0;
          v148 = sub_50B64();
          v150 = sub_4DE68(v148, v149, &v191);

          *(v146 + 4) = v150;
          sub_3147C(&dword_0, v151, v152, "%s");
          sub_253C(v147);
          v77 = v183;
          sub_5674();
          sub_5674();
        }

        v177(v142, v51);
        (v185[1])(v77, v186);
        return 0;
      }

      v122 = sub_31424();
      v123(v122);
      v124 = v165;
      v125 = v163;
      v126 = v77;
      v127 = v168;
      (*(v165 + 32))(v163, v126, v168);
      v79 = v166;
      v78 = v125;
      sub_50344();
      v188[3] = &type metadata for EmergencyFeatureFlagsKey;
      v188[4] = sub_EB68();
      LOBYTE(v188[0]) = 2;
      sub_50374();
      sub_253C(v188);
      v128 = v167;
      sub_50A14();
      v91 = v164;
      sub_EBBC(v128, v164, &type metadata accessor for EmergencyDialogAct);
      sub_3064C(v91);
      sub_31444();
      sub_EC1C(v128, &type metadata accessor for EmergencyDialogAct);
      (*(v124 + 8))(v125, v127);
      goto LABEL_7;
    }

    v103 = sub_31424();
    v104(v103);
    v105 = v81[4];
    v106 = sub_31464();
    v107 = v2;
    v108(v106);
    sub_2970();
    swift_beginAccess();
    sub_EF84(&v192);
    sub_31394();
    v109();
    v110 = sub_50AF4();
    v111 = sub_50BD4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = sub_5718();
      *v112 = 0;
      _os_log_impl(&dword_0, v110, v111, "EmergencyCSAMFlow onInput .directInvocation", v112, 2u);
      sub_5674();
    }

    sub_31434();
    v113();
    v78 = v82;
    v114 = sub_50304();
    v91 = v115;
    if (v114 == 0xD000000000000035 && 0x8000000000055140 == v115)
    {

      v79 = v169;
    }

    else
    {
      v78 = sub_50CE4();

      v79 = v169;
      if ((v78 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (sub_2B6B0() != 35)
    {
      sub_2970();
      sub_50944();
      sub_31444();
      v153 = v81[1];
      v154 = sub_31464();
      v155(v154);
      goto LABEL_6;
    }

LABEL_25:
    sub_2970();
    swift_beginAccess();
    sub_31394();
    v129();
    v130 = v83;
    v131 = v81[2];
    v131(v79, v82, v107);
    v132 = sub_50AF4();
    v133 = sub_50BE4();
    if (sub_EF00(v133))
    {
      v134 = sub_EFB0();
      v186 = v54 + 8;
      v135 = v134;
      v185 = sub_EFC8();
      v190 = v185;
      *v135 = 136315138;
      v131(v161, v79, v107);
      sub_31464();
      v136 = sub_50B64();
      v138 = v137;
      v139 = v81[1];
      v139(v79, v107);
      v140 = sub_4DE68(v136, v138, &v190);

      *(v135 + 4) = v140;
      _os_log_impl(&dword_0, v132, v130, "Failed to get emergencySituation from DirectInvocation: %s", v135, 0xCu);
      sub_253C(v185);
      sub_5674();
      sub_5674();

      sub_31434();
      v141();
      v139(v184, v107);
    }

    else
    {

      v156 = v81[1];
      v156(v79, v107);
      sub_31434();
      v157();
      v158 = sub_31464();
      (v156)(v158);
    }

    return 0;
  }

  v84 = sub_31424();
  v85(v84);
  v86 = v173;
  v87 = v171;
  v88 = v77;
  v89 = v175;
  (*(v173 + 32))(v171, v88, v175);
  v90 = v174;
  (*(v86 + 16))(v174, v87, v89);
  v91 = v172;
  sub_EBBC(v90, v172, type metadata accessor for EmergencyNLIntent);
  sub_30900(v91);
  sub_31444();
  sub_EC1C(v90, type metadata accessor for EmergencyNLIntent);
  (*(v86 + 8))(v87, v89);
LABEL_6:
  v92 = v176;
LABEL_7:
  if (v79 != (&dword_0 + 1))
  {
    v117 = v170;
    v118 = v170[17];
    v119 = v170[18];
    v120 = v170[19];
    v170[17] = v78;
    v117[18] = v91;
    v117[19] = v79;
    sub_30EA4(v118, v119, v120);
    return 1;
  }

  sub_2970();
  swift_beginAccess();
  sub_31394();
  v93();
  v94 = sub_50AF4();
  v95 = sub_50BE4();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = sub_EFB0();
    v97 = sub_EFC8();
    v190 = v97;
    *v96 = 136315138;
    v189 = 0;
    v98 = sub_50B64();
    v100 = sub_4DE68(v98, v99, &v190);

    *(v96 + 4) = v100;
    sub_3147C(&dword_0, v101, v102, "%s");
    sub_253C(v97);
    sub_5674();
    sub_5674();
  }

  v177(v92, v51);
  return 0;
}

uint64_t sub_2EFF8(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v143 = a2;
  v144 = a1;
  v4 = sub_4FF84();
  v5 = sub_8558(v4);
  v131 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1A3A0();
  sub_EE14(v9);
  v129 = sub_50884();
  v10 = sub_569C(v129);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_1A3A0();
  v130 = v13;
  v14 = sub_2208(&qword_6CEC0, &unk_53910);
  v15 = sub_72B0(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v134 = &v122 - v18;
  v133 = sub_2208(&qword_6B988, &qword_530B0);
  v19 = sub_569C(v133);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v22);
  sub_13C5C();
  sub_EE14(v23);
  v138 = sub_4FDA4();
  v24 = sub_8558(v138);
  v137 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_1A3A0();
  sub_EE14(v28);
  v29 = sub_501C4();
  v30 = sub_8558(v29);
  v142 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  v34 = sub_50B04();
  v35 = sub_8558(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v40);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v41);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v42);
  v44 = &v122 - v43;
  v45 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v46 = v37[2];
  v141 = v45;
  v140 = v37 + 2;
  v139 = v46;
  v46(v44, v45, v34);
  v47 = sub_50AF4();
  v48 = sub_50BD4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = sub_5718();
    v135 = v37;
    *v49 = 0;
    _os_log_impl(&dword_0, v47, v48, "#EmergencyCSAMFlow execute", v49, 2u);
    v37 = v135;
    sub_5674();
  }

  v50 = v37[1];
  v50(v44, v34);
  v51 = v3[19];
  if (v51 == 1)
  {
    sub_E9D0();
    v56 = swift_allocError();
    *v57 = 2;
    v58 = sub_1FE8(v3 + 7, v3[10]);
    memcpy(__dst, v58, sizeof(__dst));
    v59 = (v3 + 2);
    v60 = v56;
    v61 = v144;
    goto LABEL_7;
  }

  if (v51 != 2)
  {
    v125 = v50;
    v124 = v29;
    v63 = v3[17];
    v123 = v3[18];
    v64 = v3;
    v65 = v3[5];
    v66 = v3[6];
    v135 = v64;
    sub_1FE8(v64 + 2, v65);
    v67 = v51;
    v68 = *(v66 + 8);
    v126 = v67;

    v68(__dst, v65, v66);
    sub_1FE8(__dst, __dst[3]);
    sub_31470();
    sub_50084();
    if (v69)
    {
      sub_253C(__dst);
      v70 = v136;
      sub_4FD84();
      v71 = sub_30290();
      (*(v137 + 8))(v70, v138);
      if (v71)
      {
        v72 = v134;
        v73 = v63;
        v74 = v123;
        v75 = v126;
        v76 = v135;
        sub_2FBC8(v134);
        v77 = sub_513C(v72, 1, v133);
        v78 = v144;
        if (v77 != 1)
        {
          v117 = v128;
          sub_EAD8(v72, v128);
          sub_2FDC0(v73, v74);
          sub_30EA4(v73, v74, v75);
          sub_234C(v117, v127);
          sub_23BC((v76 + 2), __dst);
          v118 = v130;
          sub_50874();
          sub_3134C(&qword_6B990, &type metadata accessor for OutputFlow);
          sub_50174();
          v119 = sub_31414();
          v78(v119);
          v120 = sub_313CC();
          v121(v120, v124);
          sub_EC1C(v118, &type metadata accessor for OutputFlow);
          return sub_51C0(v117, &qword_6B988, &qword_530B0);
        }

        sub_30EA4(v73, v74, v75);
        sub_51C0(v72, &qword_6CEC0, &unk_53910);
        sub_E9D0();
        v79 = swift_allocError();
        *v80 = 2;
        v81 = sub_1FE8(v76 + 7, v76[10]);
        memcpy(__dst, v81, sizeof(__dst));
        v59 = (v76 + 2);
        v60 = v79;
        v61 = v78;
LABEL_7:
        sub_30EBC(v60, v59, __dst, v61, v143);
      }
    }

    else
    {
      sub_253C(__dst);
    }

    sub_2970();
    swift_beginAccess();
    sub_EF84(&v147);
    sub_313B0();
    v82();
    v83 = v135;

    v84 = sub_50AF4();
    v85 = sub_50BE4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = sub_EFB0();
      LODWORD(v137) = v85;
      v87 = v86;
      v88 = sub_EFC8();
      v145 = v88;
      *v87 = 136315138;
      v89 = v135[5];
      v138 = v34;
      v90 = v135[6];
      sub_1FE8(v135 + 2, v89);
      (*(v90 + 8))(__dst, v89, v90);
      sub_1FE8(__dst, __dst[3]);
      v83 = v135;
      v91 = sub_50084();
      if (v92)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0x3E6C696E3CLL;
      }

      if (v92)
      {
        v94 = v92;
      }

      else
      {
        v94 = 0xE500000000000000;
      }

      sub_253C(__dst);
      v95 = sub_4DE68(v93, v94, &v145);

      *(v87 + 4) = v95;
      _os_log_impl(&dword_0, v84, v137, "#EmergencyCSAMFlow execute unsupported locale: %s", v87, 0xCu);
      sub_253C(v88);
      sub_5674();
      sub_5674();
    }

    else
    {
    }

    sub_31454();
    v96();
    v97 = v144;
    if (v126)
    {
      sub_2970();
      swift_beginAccess();
      sub_313B0();
      v98();
      v99 = sub_50AF4();
      v100 = sub_50BE4();
      if (sub_EF00(v100))
      {
        *sub_5718() = 0;
        sub_EED4(&dword_0, v101, v102, "#EmergencyCSAMFlow Falling back to websearch");
        sub_5674();
      }

      sub_31454();
      v103();
      v104 = v83[6];
      sub_1FE8(v83 + 2, v83[5]);
      v105 = *(v104 + 16);
      v106 = sub_31470();
      v107(v106, v104);
      __dst[0] = v123;
      __dst[1] = v126;
      sub_1A1BC();
      sub_50174();
      sub_1A210(__dst);
    }

    else
    {
      sub_2970();
      swift_beginAccess();
      sub_EF84(&__dst[12]);
      sub_313B0();
      v108();
      v109 = sub_50AF4();
      v110 = sub_50BE4();
      if (sub_EF00(v110))
      {
        *sub_5718() = 0;
        sub_EED4(&dword_0, v111, v112, "#EmergencyCSAMFlow Falling back to server execution");
        sub_5674();
      }

      sub_31454();
      v113();
      v114 = v131;
      v115 = v132;
      (*(v131 + 104))(v132, enum case for FlowUnhandledReason.needsServerExecution(_:), v4);
      sub_501B4();
      (*(v114 + 8))(v115, v4);
    }

    v116 = sub_31414();
    v97(v116);
    v53 = sub_313CC();
    v55 = v124;
    return v54(v53, v55);
  }

  sub_50194();
  v52 = sub_31414();
  v144(v52);
  v53 = sub_313CC();
  v55 = v29;
  return v54(v53, v55);
}

uint64_t sub_2FBC8@<X0>(uint64_t a1@<X8>)
{
  if (sub_50954())
  {
    sub_313E0();
    sub_421C4();
    goto LABEL_21;
  }

  if (sub_50A44() == 0xD000000000000013 && 0x8000000000054DB0 == v2)
  {

    goto LABEL_20;
  }

  v4 = sub_50CE4();

  if (v4)
  {
LABEL_20:
    sub_313E0();
    sub_421A4();
    goto LABEL_21;
  }

  if (sub_50A44() == 0xD000000000000010 && 0x8000000000054DD0 == v5)
  {

    goto LABEL_26;
  }

  v7 = sub_50CE4();

  if (v7)
  {
LABEL_26:
    sub_313E0();
    sub_422B0();
    goto LABEL_21;
  }

  if (sub_50A44() == 0x7078655F6D617363 && v8 == 0xED0000746963696CLL)
  {
  }

  else
  {
    v10 = sub_50CE4();

    if ((v10 & 1) == 0)
    {
      v11 = 1;
      goto LABEL_22;
    }
  }

  sub_313E0();
  sub_50794();
LABEL_21:

  v11 = 0;
LABEL_22:
  v12 = sub_2208(&qword_6B988, &qword_530B0);

  return sub_28E0(a1, v11, 1, v12);
}

void *sub_2FDC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v4 = sub_50B04();
  v5 = sub_8558(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1A3A0();
  v64 = v9;
  v10 = sub_2208(&unk_6D680, &qword_515B0);
  v11 = sub_72B0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_EE34();
  v62 = v14;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v63 = sub_4FD64();
  v18 = sub_8558(v63);
  v61 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1A3A0();
  v60 = v22;
  v23 = sub_2208(&qword_6B988, &qword_530B0);
  v24 = sub_569C(v23);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v59 - v30;
  type metadata accessor for CsamSituation();

  v32 = sub_7C3C();
  v33 = *sub_1FE8(v3 + 7, v3[10]);

  sub_421E4(v32);

  v34 = sub_50D64();
  v36 = v35;
  sub_51C0(v31, &qword_6B988, &qword_530B0);
  if (v36)
  {
    v67 = v34;
    v37 = *sub_1FE8(v3 + 7, v3[10]);

    sub_422D0(v32);

    sub_50D64();
    v39 = v38;
    sub_51C0(v29, &qword_6B988, &qword_530B0);
    if (v39)
    {
      sub_4FD54();

      v40 = v63;
      if (sub_513C(v17, 1, v63) != 1)
      {
        v51 = v60;
        v52 = v61;
        (*(v61 + 32))(v60, v17, v40);
        v53 = v62;
        v54 = v51;
        (*(v52 + 16))(v62, v51, v40);
        sub_28E0(v53, 0, 1, v40);
        v55 = v3[6];
        sub_1FE8(v3 + 2, v3[5]);
        v56 = *(v55 + 8);
        v57 = sub_31470();
        v58(v57, v55);
        v49 = sub_375D0(v53, v68, v67, v36);

        sub_253C(v68);
        sub_51C0(v53, &unk_6D680, &qword_515B0);
        (*(v52 + 8))(v54, v40);
        return v49;
      }

      sub_51C0(v17, &unk_6D680, &qword_515B0);
    }

    else
    {
    }
  }

  v41 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v43 = v64;
  v42 = v65;
  v44 = v66;
  (*(v65 + 16))(v64, v41, v66);
  v45 = sub_50AF4();
  v46 = sub_50BD4();
  if (sub_EF00(v46))
  {
    *sub_5718() = 0;
    sub_EED4(&dword_0, v47, v48, "#EmergencyCSAMFlow Failed to execute CAT");
    sub_5674();
  }

  (*(v42 + 8))(v43, v44);

  return &_swiftEmptyArrayStorage;
}

BOOL sub_30290()
{
  v4[0] = sub_4FD94();
  v4[1] = v0;
  v3[2] = v4;
  v1 = sub_3059C(sub_30E84, v3, &off_65908);

  return v1;
}

uint64_t *sub_3030C()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_30EA4(v0[17], v0[18], v0[19]);
  return v0;
}

uint64_t sub_30348()
{
  sub_3030C();

  return _swift_deallocClassInstance(v0, 160, 7);
}

uint64_t sub_303A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

__n128 sub_303C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_303D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_30440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_30494(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_30520()
{
  type metadata accessor for EmergencyCSAMFlow();

  return sub_4FF64();
}

uint64_t sub_30558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_50CE4() & 1;
  }
}

BOOL sub_3059C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_3064C(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_50A24();
  v28[3] = v7;
  v28[4] = &protocol witness table for EmergencyDialogAct;
  v8 = sub_530C(v28);
  sub_312EC(a1, v8, &type metadata accessor for EmergencyDialogAct);
  v9 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v6, v9, v2);
  sub_23BC(v28, v27);
  v10 = sub_50AF4();
  v11 = sub_50BD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    sub_23BC(v27, v25);
    sub_2208(&qword_6C080, &qword_51E10);
    v15 = sub_50B64();
    v17 = v16;
    sub_253C(v27);
    v18 = sub_4DE68(v15, v17, &v26);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Converting EmergencyDialogAct to EmergencyCSAMIntent: %s", v13, 0xCu);
    sub_253C(v14);

    (*(v3 + 8))(v6, v24);
  }

  else
  {

    sub_253C(v27);
    (*(v3 + 8))(v6, v2);
  }

  v19 = *(v8 + *(v7 + 20));
  v20 = *(v8 + *(v7 + 24));
  v21 = sub_50944();
  sub_253C(v28);
  return v21;
}

uint64_t sub_30900(uint64_t a1)
{
  v2 = sub_50654();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_50B04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for EmergencyNLIntent();
  v41 = sub_3134C(&qword_6C088, type metadata accessor for EmergencyNLIntent);
  v33 = sub_530C(v39);
  sub_312EC(a1, v33, type metadata accessor for EmergencyNLIntent);
  v10 = sub_50AE4();
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  sub_23BC(v39, v37);
  v11 = sub_50AF4();
  v12 = sub_50BD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315138;
    v31 = v5;
    v16 = v38;
    v17 = sub_1FE8(v37, v38);
    v30[1] = v30;
    v18 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v17);
    v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20);
    v22 = sub_3DBF4();
    v24 = v23;
    sub_EC1C(v20, type metadata accessor for EmergencyNLIntent);
    sub_253C(v37);
    v25 = sub_4DE68(v22, v24, &v36);

    *(v14 + 4) = v25;
    _os_log_impl(&dword_0, v11, v12, "Converting EmergencyNLIntent: %s", v14, 0xCu);
    sub_253C(v15);

    v2 = v32;

    (*(v6 + 8))(v9, v31);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    sub_253C(v37);
  }

  sub_1FE8(v39, v40);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_3134C(&qword_6BD68, type metadata accessor for EmergencyNLIntent);
  sub_50524();
  sub_1FE8(v39, v40);
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  sub_50524();
  v27 = v34;
  v26 = v35;
  (*(v35 + 16))(v34, v33, v2);
  sub_50644();
  (*(v26 + 8))(v27, v2);
  v28 = sub_50944();
  sub_253C(v39);
  return v28;
}

uint64_t sub_30EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_30EBC(uint64_t a1, uint64_t a2, const void *a3, void (*a4)(void), uint64_t a5)
{
  v33 = a5;
  v31 = sub_501C4();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v31);
  v35 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_50B04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &type metadata for EmergencyCATProvider;
  v39 = &off_66C88;
  v37[0] = swift_allocObject();
  memcpy((v37[0] + 16), a3, 0x70uLL);
  sub_22F0(a3, __dst);
  v17 = sub_50AE4();
  swift_beginAccess();
  v32 = v13;
  v18 = *(v13 + 16);
  v34 = v12;
  v18(v16, v17, v12);
  swift_errorRetain();
  v19 = sub_50AF4();
  v20 = sub_50BF4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = a4;
    v23 = v22;
    __dst[0] = v22;
    *v21 = 136315138;
    v36 = a1;
    swift_errorRetain();
    sub_2208(&qword_6B980, qword_52B10);
    v24 = sub_50B64();
    v26 = sub_4DE68(v24, v25, __dst);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v19, v20, "Execution Error: %s", v21, 0xCu);
    sub_253C(v23);
    a4 = v30;
  }

  (*(v32 + 8))(v16, v34);
  v27 = sub_1FE8(v37, v38);
  memcpy(__dst, v27, 0x70uLL);
  sub_202C(a2, __dst);
  v28 = v35;
  sub_50184();

  a4(v28);
  (*(v9 + 8))(v28, v31);
  return sub_253C(v37);
}

uint64_t sub_3124C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_312EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_569C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_3134C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_313E0()
{
  v1 = *sub_1FE8((v0 + 56), *(v0 + 80));
}

uint64_t sub_31414()
{
  result = v0;
  v3 = *(v1 - 288);
  return result;
}

void sub_3147C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_3149C()
{
  v0 = swift_allocObject();
  sub_314D4();
  return v0;
}

void *sub_314D4()
{
  *(&__src[1] + 1) = &type metadata for FlowConfigModel;
  *&__src[2] = &protocol witness table for FlowConfigModel;
  *&__src[0] = swift_allocObject();
  sub_508D4();
  sub_546C(__src, (v0 + 2));
  sub_37084(__src);
  v0[10] = &type metadata for EmergencyCATProvider;
  v0[11] = &off_66C88;
  v1 = swift_allocObject();
  v0[7] = v1;
  memcpy((v1 + 16), __src, 0x70uLL);
  v0[15] = &type metadata for EmergencyFeatureFlags;
  v0[16] = &off_66A90;
  return v0;
}

uint64_t sub_315EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v207 = a1;
  v211 = a2;
  v208 = sub_50324();
  v2 = sub_8558(v208);
  v196 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v6);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v7);
  sub_13C5C();
  sub_EE14(v8);
  v204 = type metadata accessor for EmergencyNLIntent();
  v9 = sub_569C(v204);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v12);
  sub_13C5C();
  sub_EE14(v13);
  v214 = sub_50654();
  v14 = sub_8558(v214);
  v209 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v18);
  sub_13C5C();
  sub_EE14(v19);
  v193 = sub_50A24();
  v20 = sub_569C(v193);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v23);
  sub_13C5C();
  sub_EE14(v24);
  v188 = sub_503A4();
  v25 = sub_8558(v188);
  v187 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_5630();
  sub_EE14(v30 - v29);
  v199 = sub_50354();
  v31 = sub_8558(v199);
  v197 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v35);
  sub_13C5C();
  sub_EE14(v36);
  v37 = sub_50334();
  v38 = sub_8558(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_5630();
  v45 = v44 - v43;
  v46 = type metadata accessor for FlowRouter();
  v47 = sub_569C(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_5630();
  sub_EE14(v51 - v50);
  v52 = sub_50B04();
  v53 = sub_8558(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v53);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v58);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v59);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v60);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v61);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v62);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v63);
  v65 = &v186 - v64;
  v66 = sub_50AE4();
  sub_56AC();
  v67 = *(v55 + 16);
  v219 = v66;
  v215 = v52;
  v218 = (v55 + 16);
  v217 = v67;
  v67(v65, v66, v52);
  v68 = sub_50AF4();
  v69 = sub_50BD4();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_0, v68, v69, "Emergency Plugin activated", v70, 2u);
    sub_5674();
  }

  v72 = v55 + 8;
  v71 = *(v55 + 8);
  v73 = v215;
  v71(v65, v215);
  v74 = v220;
  v220[3] = 0u;
  v74[4] = 0u;
  v74[1] = 0u;
  v74[2] = 0u;
  *v74 = 0u;
  v194 = v46[6];
  v75 = v208;
  sub_28E0(v74 + v194, 1, 1, v208);
  v76 = v212;
  sub_23BC(v212 + 16, v74 + v46[7]);
  sub_23BC(v76 + 56, v74 + v46[8]);
  sub_5260(v76 + 96, v74 + v46[9]);
  (*(v40 + 16))(v45, v207, v37);
  v77 = (*(v40 + 88))(v45, v37);
  v213 = v71;
  if (v77 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v205 = v72;
    v78 = sub_32DE0();
    v79(v78);
    v80 = v209;
    v81 = v216;
    v82 = v214;
    (*(v209 + 32))(v216, v45, v214);
    sub_32E34(&v226);
    sub_56AC();
    sub_32D50();
    v83();
    v84 = v201;
    v208 = *(v80 + 16);
    v208(v201, v81, v82);
    v85 = sub_50AF4();
    v86 = sub_50BD4();
    if (os_log_type_enabled(v85, v86))
    {
      v73 = v80;
      v87 = sub_EFB0();
      v88 = sub_EFC8();
      __dst[0] = v88;
      *v87 = 136315138;
      sub_32B98(&qword_6C1B0, 255, &type metadata accessor for NLIntent);
      v89 = sub_50CD4();
      v91 = v90;
      v212 = *(v73 + 8);
      v212(v84, v214);
      v92 = sub_4DE68(v89, v91, __dst);
      v82 = v214;

      *(v87 + 4) = v92;
      _os_log_impl(&dword_0, v85, v86, "Parse had NL intent: %s", v87, 0xCu);
      sub_253C(v88);
      v93 = v215;
      sub_5674();
      sub_5674();
    }

    else
    {
      v93 = v73;

      v212 = *(v80 + 8);
      v212(v84, v82);
    }

    v114 = v205;
    v71(v206, v93);
    sub_32E28();
    v115 = v210;
    v208(v210, v216, v82);
    sub_32D94();
    sub_32D50();
    v116();
    sub_32D64();
    v117 = v203;
    sub_EBBC(v115, v203, v118);
    v119 = sub_50AF4();
    v120 = sub_50BD4();
    if (sub_13C1C(v120))
    {
      v114 = sub_EFB0();
      v121 = sub_EFC8();
      __dst[0] = v121;
      *v114 = 136315138;
      sub_3DBF4();
      sub_32D20();
      sub_32AE0(v117, v122);
      v123 = sub_32DF0();

      *(v114 + 4) = v123;
      sub_32E40(&dword_0, v124, v125, "Converting NL Intent → %s");
      sub_253C(v121);
      sub_5674();
      sub_5674();

      v82 = v214;
    }

    else
    {

      sub_32D20();
      sub_32AE0(v117, v146);
    }

    sub_32DB8();
    v126();
    __dst[3] = v204;
    __dst[4] = sub_32B98(&qword_6C088, 255, type metadata accessor for EmergencyNLIntent);
    sub_530C(__dst);
    sub_32D64();
    v147 = sub_32E34(&__dst[10]);
    sub_EBBC(v147, v148, v149);
    sub_32B38(__dst, v73, &qword_6D498, qword_539E0);
    sub_430D8();
    sub_32E0C();

    sub_32D20();
    sub_32AE0(v114, v150);
    v151 = v216;
    v152 = v82;
    v153 = &__dst[12];
LABEL_17:
    (*(v153 - 32))(v151, v152);
    return sub_32AE0(v73, type metadata accessor for FlowRouter);
  }

  if (v77 == enum case for Parse.directInvocation(_:))
  {
    v94 = sub_32DE0();
    v95(v94);
    v96 = v196;
    v97 = v202;
    (*(v196 + 32))(v202, v45, v75);
    sub_56AC();
    sub_32D50();
    v98();
    v99 = *(v96 + 16);
    v100 = v195;
    v99(v195, v97, v75);
    v101 = v75;
    v102 = sub_50AF4();
    v103 = sub_50BD4();
    if (sub_13C1C(v103))
    {
      v104 = sub_EFB0();
      v219 = v99;
      v105 = v104;
      v218 = sub_EFC8();
      v221 = v218;
      *v105 = 136315138;
      v219(v190, v100, v101);
      v106 = sub_50B64();
      v205 = v72;
      v107 = v106;
      v109 = v108;
      v110 = sub_32DC4();
      v111(v110);
      v112 = sub_4DE68(v107, v109, &v221);

      *(v105 + 4) = v112;
      _os_log_impl(&dword_0, v102, v103, "Parse had directInvocation: %s", v105, 0xCu);
      sub_253C(v218);
      sub_5674();
      v99 = v219;
      sub_5674();
    }

    else
    {

      v154 = sub_32DC4();
      v155(v154);
    }

    sub_32DB8();
    v113();
    sub_32E28();
    v156 = v194;
    sub_32A78(v73 + v194);
    v157 = v202;
    v99(v73 + v156, v202, v101);
    sub_28E0(v73 + v156, 0, 1, v101);
    sub_430D8();
    sub_32E0C();

    v100(v157, v101);
  }

  else
  {
    if (v77 == enum case for Parse.uso(_:))
    {
      v205 = v72;
      v127 = sub_32DE0();
      v128(v127);
      v129 = v197;
      v130 = v200;
      v131 = v199;
      (*(v197 + 32))(v200, v45, v199);
      sub_32D94();
      sub_32D50();
      v132();
      v133 = v189;
      (*(v129 + 16))(v189, v130, v131);
      v134 = sub_50AF4();
      v135 = sub_50BD4();
      sub_13C1C(v135);
      sub_32E28();
      if (v136)
      {
        v137 = sub_EFB0();
        v214 = sub_EFC8();
        __dst[0] = v214;
        *v137 = 136315138;
        v138 = v191;
        sub_50344();
        sub_32B98(&qword_6D4A8, 255, &type metadata accessor for Siri_Nlu_External_UserParse);
        v139 = v133;
        v140 = v188;
        sub_50AA4();
        (*(v187 + 8))(v138, v140);
        v216 = *(v129 + 8);
        v216(v139, v199);
        v141 = sub_32DF0();

        *(v137 + 4) = v141;
        v142 = v138;
        _os_log_impl(&dword_0, v134, v135, "Parse had a uso parse: %s", v137, 0xCu);
        v143 = sub_32E34(v224);
        sub_253C(v143);
        sub_5674();
        sub_5674();

        sub_32DB8();
        v144();
        v145 = v192;
      }

      else
      {

        v216 = *(v129 + 8);
        v216(v133, v131);
        sub_32DB8();
        v167();
        v145 = v192;
        v142 = v191;
      }

      v168 = v142;
      sub_50344();
      __dst[3] = &type metadata for EmergencyFeatureFlagsKey;
      __dst[4] = sub_EB68();
      LOBYTE(__dst[0]) = 2;
      sub_50374();
      sub_253C(__dst);
      v169 = v198;
      sub_50A14();
      sub_32D94();
      sub_32D50();
      v170();
      sub_32D7C();
      sub_EBBC(v169, v145, v171);
      v172 = sub_50AF4();
      v173 = sub_50BD4();
      if (sub_13C1C(v173))
      {
        v168 = sub_EFB0();
        v174 = sub_EFC8();
        __dst[0] = v174;
        *v168 = 136315138;
        sub_50A04();
        sub_32D38();
        sub_32AE0(v175, v176);
        v177 = sub_32DF0();

        *(v168 + 4) = v177;
        sub_32E40(&dword_0, v178, v179, "Converting EmergencyDialogAct: %s");
        sub_253C(v174);
        sub_5674();
        sub_5674();
      }

      else
      {

        sub_32D38();
        sub_32AE0(v145, v180);
      }

      sub_32DB8();
      v181();
      __dst[3] = v193;
      __dst[4] = &protocol witness table for EmergencyDialogAct;
      sub_530C(__dst);
      sub_32D7C();
      v182 = sub_32E34(v222);
      sub_EBBC(v182, v183, v184);
      sub_32B38(__dst, v73 + 40, &qword_6D4A0, &qword_54360);
      sub_430D8();
      sub_32E0C();

      sub_32D38();
      sub_32AE0(v168, v185);
      v151 = v200;
      v152 = v199;
      v153 = &v225;
      goto LABEL_17;
    }

    sub_56AC();
    sub_32D50();
    v158();
    v159 = sub_50AF4();
    v160 = sub_50BE4();
    sub_13C1C(v160);
    sub_32E28();
    if (v161)
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_0, v159, v160, "Emergency Plugin received unexpected parse", v162, 2u);
      sub_5674();
    }

    sub_32DB8();
    v163();
    v164 = v212;
    sub_23BC(v212 + 16, &v221);
    v165 = sub_1FE8(v164 + 7, v164[10]);
    memcpy(__dst, v165, sizeof(__dst));
    sub_202C(&v221, __dst);
    sub_253C(&v221);
    sub_4FF74();

    (*(v40 + 8))(v45, v37);
  }

  return sub_32AE0(v73, type metadata accessor for FlowRouter);
}