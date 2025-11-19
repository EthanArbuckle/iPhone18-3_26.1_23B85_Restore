void sub_29E681E7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E681ED0@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v106) = a2;
  v125 = a4;
  v6 = sub_29E751908();
  v123 = *(v6 - 8);
  v124 = v6;
  v7 = *(v123 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v122 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E750DC8();
  v119 = *(v9 - 8);
  v120 = v9;
  v10 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v121 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC9C68];
  sub_29E683BBC(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v118 = v96 - v15;
  v16 = sub_29E74F8B8();
  v113 = *(v16 - 8);
  v114 = v16;
  v17 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v110 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E752258();
  v116 = *(v19 - 8);
  v117 = v19;
  v20 = *(v116 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v104 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29E752108();
  v108 = *(v109 - 8);
  v22 = *(v108 + 64);
  MEMORY[0x2A1C7C4A8](v109);
  v107 = v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E683BBC(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v12);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v103 = v96 - v26;
  v99 = sub_29E7520B8();
  v98 = *(v99 - 8);
  v27 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v99);
  v97 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29E7520C8();
  v100 = *(v105 - 8);
  v29 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v105);
  v102 = v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E74ED88();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v35 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E74ED28();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x2A1C7C4A8](v36);
  v41 = v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39);
  v43 = v96 - v42;
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = a3;
  v115 = v44;
  sub_29E609B5C(0, &qword_2A1858550, 0x29EDB9F88);
  v45 = a1;
  v46 = a3;
  v47 = [v45 startDate];
  sub_29E74ECD8();

  v48 = [v45 endDate];
  sub_29E74ECD8();

  v101 = sub_29E754A08();
  v126 = v49;
  v50 = *(v37 + 8);
  v50(v41, v36);
  v50(v43, v36);
  v51 = [v45 UUID];
  sub_29E74ED68();

  v52 = sub_29E74ED48();
  v111 = v53;
  v112 = v52;
  (*(v32 + 8))(v35, v31);
  sub_29E683BBC(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v54 = *(sub_29E752128() - 8);
  v55 = *(v54 + 72);
  v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  if (v106)
  {
    v96[1] = v55;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_29E762F40;
    v57 = *MEMORY[0x29EDC7758];
    v58 = v100;
    v96[0] = *(v100 + 104);
    v59 = v102;
    v60 = v105;
    (v96[0])(v102, v57, v105);
    v61 = sub_29E7520D8();
    v62 = *(*(v61 - 8) + 56);
    v63 = v103;
    v62(v103, 1, 1, v61);
    v64 = v97;
    sub_29E7520A8();
    sub_29E752118();
    (*(v98 + 8))(v64, v99);
    v65 = *(v58 + 8);
    v65(v59, v60);
    (v96[0])(v59, *MEMORY[0x29EDC7760], v60);
    v62(v63, 1, 1, v61);
    v66 = v107;
    sub_29E7520F8();
    sub_29E7520E8();
    (*(v108 + 8))(v66, v109);
    v65(v59, v60);
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    v67 = v100;
    v68 = v102;
    v69 = v105;
    (*(v100 + 104))(v102, *MEMORY[0x29EDC7768], v105);
    v70 = sub_29E7520D8();
    (*(*(v70 - 8) + 56))(v103, 1, 1, v70);
    v71 = v107;
    sub_29E7520F8();
    sub_29E7520E8();
    (*(v108 + 8))(v71, v109);
    (*(v67 + 8))(v68, v69);
  }

  v72 = v104;
  sub_29E752188();
  v74 = v116;
  v73 = v117;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v75 = v110;
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v113 + 8))(v75, v114);
  sub_29E752228();

  sub_29E752198();
  sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
  v76 = *MEMORY[0x29EDC80E0];
  v77 = *MEMORY[0x29EDC76F8];
  sub_29E754AC8();
  v78 = sub_29E7521C8();
  sub_29E7521A8();
  v78(v127, 0);
  v79 = [objc_opt_self() secondaryLabelColor];
  v80 = sub_29E7521D8();
  sub_29E7521B8();
  v80(v127, 0);
  v81 = *MEMORY[0x29EDC8118];
  sub_29E754AC8();
  v82 = sub_29E7521D8();
  sub_29E7521A8();
  v82(v127, 0);
  v83 = sub_29E7521E8();
  *v84 = 0x4024000000000000;
  v83(v127, 0);
  v85 = sub_29E7521E8();
  *(v86 + 16) = 0x4024000000000000;
  v85(v127, 0);
  v87 = sub_29E7521E8();
  *(v88 + 8) = 0x4034000000000000;
  v87(v127, 0);
  v89 = sub_29E7521E8();
  *(v90 + 24) = 0x4034000000000000;
  v89(v127, 0);
  sub_29E752208();
  v127[3] = v73;
  v127[4] = MEMORY[0x29EDC7800];
  v91 = sub_29E5FEBF4(v127);
  (*(v74 + 16))(v91, v72, v73);
  v92 = sub_29E752178();
  (*(*(v92 - 8) + 56))(v118, 1, 1, v92);

  v93 = sub_29E7543D8();
  v94 = HKUIJoinStringsForAutomationIdentifier();

  if (v94)
  {
    sub_29E7541D8();
  }

  (*(v119 + 104))(v121, *MEMORY[0x29EDC22C8], v120);
  (*(v123 + 104))(v122, *MEMORY[0x29EDC2A38], v124);
  sub_29E750ED8();

  return (*(v74 + 8))(v72, v73);
}

uint64_t sub_29E682DB4(void *a1, void *a2, void *a3)
{
  v37 = a3;
  v38 = a1;
  v4 = type metadata accessor for SleepApneaEventSummaryView(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74ED28();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v18 = (v17 - 8);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a2 startDate];
  sub_29E74ECD8();

  v23 = [a2 endDate];
  sub_29E74ECD8();

  v24 = v10[2];
  v24(v21, v16, v9);
  v24(&v21[v18[7]], v14, v9);
  v25 = v37;
  *&v21[v18[8]] = v37;
  v21[v18[9]] = 2;
  v26 = v25;
  v27 = HKSPLogForCategory();
  v28 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v27 healthDataSource:v26];

  v29 = v10[1];
  v29(v14, v9);
  v29(v16, v9);
  *&v21[v18[10]] = v28;
  sub_29E5FEC58(v21, v8);
  v30 = *(v5 + 28);
  *&v8[v30] = swift_getKeyPath();
  v31 = MEMORY[0x29EDBC388];
  sub_29E683BBC(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v32 = *(v5 + 32);
  *&v8[v32] = swift_getKeyPath();
  sub_29E683BBC(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], v31);
  swift_storeEnumTagMultiPayload();
  sub_29E683C20();
  v34 = objc_allocWithZone(v33);
  v35 = sub_29E753038();
  [v38 presentViewController:v35 animated:1 completion:0];

  return sub_29E5FFC24(v21);
}

id sub_29E683144@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_29E751908();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v63 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750DC8();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v62 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E683BBC(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v59 = v55 - v11;
  v56 = sub_29E74F8B8();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v56);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E752258();
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E74ED28();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = v55 - v26;
  sub_29E609B5C(0, &qword_2A1858550, 0x29EDB9F88);
  [a1 startDate];
  v28 = HKDecodeDateForValue();
  sub_29E74ECD8();

  [a1 endDate];
  v29 = HKDecodeDateForValue();
  sub_29E74ECD8();

  v55[1] = sub_29E754A08();
  v30 = *(v21 + 8);
  v30(v25, v20);
  v30(v27, v20);
  result = [a1 sampleUUID];
  if (result)
  {
    v32 = result;
    sub_29E7541D8();
    v55[0] = v33;

    sub_29E752188();
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();
    (*(v12 + 8))(v15, v56);
    sub_29E752228();

    sub_29E752198();
    sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
    v34 = *MEMORY[0x29EDC80E0];
    v35 = *MEMORY[0x29EDC76F8];
    sub_29E754AC8();
    v36 = sub_29E7521C8();
    sub_29E7521A8();
    v36(v67, 0);
    v37 = [objc_opt_self() secondaryLabelColor];
    v38 = sub_29E7521D8();
    sub_29E7521B8();
    v38(v67, 0);
    v39 = *MEMORY[0x29EDC8118];
    sub_29E754AC8();
    v40 = sub_29E7521D8();
    sub_29E7521A8();
    v40(v67, 0);
    v41 = sub_29E7521E8();
    *v42 = 0x4024000000000000;
    v41(v67, 0);
    v43 = sub_29E7521E8();
    *(v44 + 16) = 0x4024000000000000;
    v43(v67, 0);
    v45 = sub_29E7521E8();
    *(v46 + 8) = 0x4034000000000000;
    v45(v67, 0);
    v47 = sub_29E7521E8();
    *(v48 + 24) = 0x4034000000000000;
    v47(v67, 0);
    sub_29E752208();
    v49 = v58;
    v67[3] = v58;
    v67[4] = MEMORY[0x29EDC7800];
    v50 = sub_29E5FEBF4(v67);
    v51 = v57;
    (*(v57 + 16))(v50, v19, v49);
    v52 = sub_29E752178();
    (*(*(v52 - 8) + 56))(v59, 1, 1, v52);
    v53 = sub_29E7543D8();
    v54 = HKUIJoinStringsForAutomationIdentifier();

    if (v54)
    {
      sub_29E7541D8();
    }

    (*(v60 + 104))(v62, *MEMORY[0x29EDC22C8], v61);
    (*(v64 + 104))(v63, *MEMORY[0x29EDC2A38], v65);
    sub_29E750ED8();

    return (*(v51 + 8))(v19, v49);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E683988(uint64_t a1)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v3 + 8))(v6, v2);
  sub_29E752228();
  v7 = [objc_opt_self() hk_wholeNumberFormatter];
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v9 = [v7 stringFromNumber_];

  if (v9)
  {
    sub_29E7541D8();
  }

  sub_29E752198();
  v10 = sub_29E7521E8();
  *(v11 + 8) = 0x4034000000000000;
  return v10(v13, 0);
}

void sub_29E683BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E683C20()
{
  if (!qword_2A1858558)
  {
    type metadata accessor for SleepApneaEventSummaryView(255);
    sub_29E683C84();
    v0 = sub_29E753048();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858558);
    }
  }
}

unint64_t sub_29E683C84()
{
  result = qword_2A1858560;
  if (!qword_2A1858560)
  {
    type metadata accessor for SleepApneaEventSummaryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858560);
  }

  return result;
}

uint64_t sub_29E683CDC(uint64_t a1, void *a2)
{
  v63 = a2;
  v4 = v2;
  v60 = *v2;
  v5 = sub_29E74FEB8();
  v54 = v5;
  v56 = *(v5 - 8);
  v6 = v56;
  v58 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6624DC();
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E74FE18();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74FE48();
  v51 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v6 + 16);
  v64 = a1;
  v55(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_context], a1, v5);
  v52 = sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v21 = sub_29E74FB98();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E762F30;
  (*(v22 + 104))(v25 + v24, *MEMORY[0x29EDC3780], v21);
  (*(v12 + 104))(v15, *MEMORY[0x29EDC3898], v53);
  sub_29E74FE28();
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain;
  v27 = v65;
  (*(v17 + 32))(v65 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain, v20, v16);
  v28 = *MEMORY[0x29EDBA748];
  v29 = v64;
  sub_29E74FE58();
  sub_29E601938(v66, v66[3]);
  v30 = sub_29E74FDD8();
  v31 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v28 healthStore:v30];

  sub_29E5FECBC(v66);
  v32 = v27 + v26;
  v33 = v51;
  (*(v17 + 16))(v20, v32, v51);
  v34 = v31;
  v35 = sub_29E74FE98();
  (*(v17 + 8))(v20, v33);
  v36 = v57;
  v37 = v54;
  v55(v57, v29, v54);
  v38 = v56;
  v39 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v40 = (v58 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v38 + 32))(v41 + v39, v36, v37);
  v42 = (v41 + v40);
  *v42 = v34;
  v42[1] = v35;
  *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v60;
  sub_29E64CD10();
  sub_29E685C10(&qword_2A1A7BFB0, sub_29E64CD10);
  v43 = v34;
  v44 = v35;
  v45 = v59;
  sub_29E752848();
  sub_29E685C10(&qword_2A1A7BF20, sub_29E6624DC);
  v46 = v61;
  v47 = v45;
  v48 = sub_29E7528E8();

  (*(v38 + 8))(v64, v37);
  (*(v62 + 8))(v47, v46);
  result = v65;
  *(v65 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_publisher) = v48;
  return result;
}

uint64_t sub_29E684348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74FEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  sub_29E685AB8();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  sub_29E662744();
  v20 = sub_29E7528C8();
  (*(v7 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19[1];
  sub_29E649310();
  sub_29E66257C();
  sub_29E685C10(&qword_2A1A7BF80, sub_29E649310);
  sub_29E752928();

  sub_29E685C10(&qword_2A1A7C038, sub_29E685AB8);
  v17 = sub_29E7528E8();
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_29E684618@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a3;
  sub_29E662A90(0);
  v76 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v75 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74FE18();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74FE48();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v73 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74FEB8();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E752098();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v61 - v22;
  sub_29E662AC4(0);
  v67 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v61 - v29;
  v31 = *a1;
  v68 = a2;
  v32 = sub_29E74FE78();
  v33 = sub_29E74FBC8();
  v35 = v34;

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_29E754D78();

  v77 = 0xD000000000000026;
  v78 = 0x800000029E75C440;
  MEMORY[0x29ED96C20](v33, v35);

  v63 = v78;
  v64 = v77;
  v36 = sub_29E74FDC8();
  (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
  if (v31 == 1)
  {
    sub_29E752048();
    v37 = sub_29E752088();
    v38 = sub_29E7546C8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v77 = v40;
      *v39 = 136446466;
      v41 = sub_29E755178();
      v43 = sub_29E6B9C90(v41, v42, &v77);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_29E6B9C90(0xD00000000000004ELL, 0x800000029E75C470, &v77);
      _os_log_impl(&dword_29E5ED000, v37, v38, "[%{public}s.%{public}s]: Creating sleep apnea notification settings feed item.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v40, -1, -1);
      MEMORY[0x29ED98410](v39, -1, -1);
    }

    (*(v61 + 8))(v23, v62);
    v44 = v68;
    sub_29E684E44(v68, v64, v63, v28);
    sub_29E662D48(v30);
    sub_29E662DA4(v28, v30);
  }

  else
  {
    sub_29E752048();
    v45 = sub_29E752088();
    v46 = sub_29E7546C8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v77 = v48;
      *v47 = 136446466;
      v49 = sub_29E755178();
      v51 = sub_29E6B9C90(v49, v50, &v77);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_29E6B9C90(0xD00000000000004ELL, 0x800000029E75C470, &v77);
      _os_log_impl(&dword_29E5ED000, v45, v46, "[%{public}s.%{public}s]: Not creating sleep apnea notification settings feed item because feature is not onboarded.", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v48, -1, -1);
      MEMORY[0x29ED98410](v47, -1, -1);
    }

    (*(v61 + 8))(v21, v62);
    v44 = v68;
  }

  (*(v65 + 16))(v69, v44, v66);
  sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v52 = sub_29E74FB98();
  v53 = *(v52 - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_29E762F30;
  (*(v53 + 104))(v56 + v55, *MEMORY[0x29EDC3780], v52);
  (*(v71 + 104))(v70, *MEMORY[0x29EDC3898], v72);
  sub_29E74FE28();
  sub_29E662CE4(v30, v28);
  sub_29E752818();
  v57 = sub_29E74FEE8();
  v58 = MEMORY[0x29EDC38C8];
  v59 = v74;
  v74[3] = v57;
  v59[4] = v58;
  sub_29E5FEBF4(v59);
  sub_29E685C10(&qword_2A1A7BF48, sub_29E662A90);
  sub_29E74FED8();
  return sub_29E662D48(v30);
}

uint64_t sub_29E684E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v47 = a2;
  v46 = a1;
  v62 = a4;
  v53 = sub_29E752098();
  v52 = *(v53 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v54 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_29E750358();
  v50 = *(v51 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v51);
  v49 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_29E74FB98();
  v59 = *(v63 - 8);
  v8 = *(v59 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v63);
  v45 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v58 = &v42[-v11];
  v12 = sub_29E74F8B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_29E7506D8();
  v43 = *(v44 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v44);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_29E750AD8();
  v60 = *(v20 - 8);
  v61 = v20;
  v21 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v42[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController();
  v55 = sub_29E74FBF8();
  v56 = v24;
  v57 = v25;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v26 = *(v13 + 8);
  v26(v16, v12);
  sub_29E7506B8();
  sub_29E74F8A8();
  sub_29E74F7C8();
  v26(v16, v12);
  sub_29E750AA8();
  v28 = v58;
  v27 = v59;
  v29 = v63;
  (*(v59 + 104))(v58, *MEMORY[0x29EDC3780], v63);
  v30 = sub_29E750AC8();
  v32 = v31;
  (*(v27 + 16))(v45, v28, v29);

  sub_29E64C7DC(v30, v32);
  sub_29E74FE78();
  v33 = v62;
  sub_29E74FCE8();
  sub_29E750AB8();
  sub_29E7506C8();
  v34 = v23;
  (*(v43 + 8))(v19, v44);
  sub_29E74FCD8();
  sub_29E662E20();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  *(inited + 32) = sub_29E74FF28();
  *(inited + 40) = v36;
  sub_29E5FF900(inited);
  swift_setDeallocating();
  sub_29E619D6C(inited + 32);
  sub_29E74FD88();
  v37 = v50;
  v38 = v49;
  v39 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x29EDC19B8], v51);
  sub_29E750348();
  (*(v37 + 8))(v38, v39);
  sub_29E74FDA8();
  sub_29E74FCB8();
  sub_29E643D20(v30, v32);
  (*(v27 + 8))(v28, v63);
  (*(v60 + 8))(v34, v61);
  v40 = sub_29E74FDC8();
  return (*(*(v40 - 8) + 56))(v33, 0, 1, v40);
}

uint64_t sub_29E685844()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29E74FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29E74FEB8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_publisher);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepApneaNotificationSettingsGeneratorPipeline()
{
  result = qword_2A1A7C870;
  if (!qword_2A1A7C870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E685998@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E685A14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = v1 + v4;
  v9 = *(v1 + v6);
  result = sub_29E684348(v8, *v7, v7[1]);
  *a1 = result;
  return result;
}

void sub_29E685AB8()
{
  if (!qword_2A1A7C030)
  {
    sub_29E649310();
    sub_29E66257C();
    sub_29E685C10(&qword_2A1A7BF80, sub_29E649310);
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C030);
    }
  }
}

uint64_t sub_29E685B64@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E74FEB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E684618(a1, v2 + v6, a2);
}

uint64_t sub_29E685C10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E685C78()
{
  sub_29E689470(319, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_29E685D58@<X0>(uint64_t a1@<X8>)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_29E751D98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_2A1858580;
  swift_beginAccess();
  sub_29E689380(v1 + v12, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_29E6895D8(v6, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
LABEL_5:
    v16 = MEMORY[0x29EDC1768];
    goto LABEL_6;
  }

  (*(v8 + 32))(v11, v6, v7);
  v13 = *MEMORY[0x29EDBA5A0];
  v14 = sub_29E751DA8();
  v15 = [v14 areAllRequirementsSatisfied];

  (*(v8 + 8))(v11, v7);
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = MEMORY[0x29EDC1760];
LABEL_6:
  v17 = *v16;
  v18 = sub_29E7501E8();
  return (*(*(v18 - 8) + 104))(a1, v17, v18);
}

uint64_t sub_29E685FA0()
{
  v15 = MEMORY[0x29EDCA298];
  sub_29E689470(0, &qword_2A1856860, MEMORY[0x29EDCA298]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v15 - v3;
  sub_29E6894C4();
  v16 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + qword_2A1858570 + 32);
  sub_29E601938((v0 + qword_2A1858570), *(v0 + qword_2A1858570 + 24));
  v17 = sub_29E751DC8();
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v11 = sub_29E754908();
  v18 = v11;
  v12 = sub_29E7548D8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_29E64C52C();
  sub_29E689590(&qword_2A1A7BFA0, sub_29E64C52C);
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6895D8(v4, &qword_2A1856860, v15);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29E689590(&qword_2A18585D0, sub_29E6894C4);
  v13 = v16;
  sub_29E7529A8();

  (*(v6 + 8))(v9, v13);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();
}

void sub_29E6862C4(uint64_t a1)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_29E751D98();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = qword_2A1858580;
    swift_beginAccess();
    sub_29E689300(v5, v7 + v10);
    swift_endAccess();
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11 + qword_2A1858568;
    v13 = v11;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = *(v12 + 8);

    if (v14)
    {
      swift_getObjectType();
      sub_29E751648();
      sub_29E751758();
    }
  }
}

uint64_t sub_29E6864B4@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v59 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v55 - v6;
  v8 = sub_29E751D98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v55 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v55 - v13;
  v57 = sub_29E7501E8();
  v15 = *(v57 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x2A1C7C4A8](v57);
  v58 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v55 - v19;
  v21 = qword_2A1858580;
  swift_beginAccess();
  v62 = v1;
  sub_29E689380(v1 + v21, v7);
  v56 = *(v9 + 48);
  v22 = v56(v7, 1, v8);
  v23 = MEMORY[0x29EDBA5A0];
  if (v22 == 1)
  {
    v24 = v9;
    sub_29E6895D8(v7, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
    v25 = MEMORY[0x29EDC1768];
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v26 = *v23;
    v27 = sub_29E751DA8();
    v28 = [v27 areAllRequirementsSatisfied];

    v24 = v9;
    (*(v9 + 8))(v14, v8);
    v25 = MEMORY[0x29EDC1768];
    if (v28)
    {
      v25 = MEMORY[0x29EDC1760];
    }
  }

  v29 = v15[13];
  v30 = v57;
  v29(v20, *v25, v57);
  sub_29E750268();
  v31 = sub_29E750228();
  v60 = v32;
  v61 = v31;
  v33 = v15[1];
  (v33)(v20, v30);
  v34 = v59;
  sub_29E689380(v62 + v21, v59);
  if (v56(v34, 1, v8) == 1)
  {
    sub_29E6895D8(v34, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
    v35 = MEMORY[0x29EDC1768];
  }

  else
  {
    v36 = v24;
    v37 = *(v24 + 32);
    v38 = v55;
    v37(v55, v34, v8);
    v39 = *MEMORY[0x29EDBA5A0];
    v40 = sub_29E751DA8();
    v41 = [v40 areAllRequirementsSatisfied];
    v59 = v33;
    v42 = v41;

    (*(v36 + 8))(v38, v8);
    v33 = v59;
    v35 = MEMORY[0x29EDC1768];
    if (v42)
    {
      v35 = MEMORY[0x29EDC1760];
    }
  }

  v43 = v58;
  v29(v58, *v35, v30);
  sub_29E686C44(v43);
  (v33)(v43, v30);
  v44 = objc_opt_self();
  v45 = [v44 configurationWithPointSize_];
  v46 = [objc_opt_self() hk_respiratoryKeyColor];
  v47 = [v44 configurationWithHierarchicalColor_];

  v48 = [v45 configurationByApplyingConfiguration_];
  v49 = v48;
  v50 = sub_29E754198();
  v51 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v51)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  v52 = v63;
  sub_29E7516F8();

  v53 = sub_29E751708();
  return (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
}

uint64_t sub_29E686AE0()
{
  v0 = objc_opt_self();
  v1 = sub_29E754198();
  v2 = [v0 groupSpecifierWithID_];

  v11[4] = v2;
  v3 = 0;
  v11[5] = sub_29E68762C();
  v4 = MEMORY[0x29EDCA190];
  v10 = MEMORY[0x29EDCA190];
  while (v3 != 2)
  {
    v5 = &v11[v3++];
    if (v5[4])
    {
      v6 = v5[4];
      v7 = swift_unknownObjectRetain();
      MEMORY[0x29ED96CE0](v7);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29E754418();
      }

      sub_29E754438();
      v4 = v10;
    }
  }

  sub_29E689420(0, &qword_2A18585C0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9C68]);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_29E686C44(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v82 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v81 = &v79 - v7;
  v88 = sub_29E74F8B8();
  v8 = *(v88 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v88);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E7501E8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v83 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v85 = &v79 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v79 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v79 - v22;
  v24 = v13[2];
  v24(&v79 - v22, a1, v12);
  v84 = v13;
  v25 = v13[11];
  v89 = v12;
  v26 = v25(v23, v12);
  if (v26 == *MEMORY[0x29EDC1760])
  {
    sub_29E689420(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29E762F40;
    if (qword_2A1A7D6F0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v28 = *MEMORY[0x29EDC1768];
  if (v26 == v28)
  {
    sub_29E689420(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29E762F40;
    if (qword_2A1A7D6F0 == -1)
    {
LABEL_6:
      sub_29E74F8A8();
      v29 = sub_29E74F7C8();
      v31 = v30;
      v32 = *(v8 + 8);
      v33 = v88;
      v32(v11, v88);
      *(v27 + 32) = v29;
      *(v27 + 40) = v31;
      sub_29E74F8A8();
      v34 = sub_29E74F7C8();
      v36 = v35;
      v32(v11, v33);
      *(v27 + 48) = v34;
      *(v27 + 56) = v36;
      return v27;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  v88 = v1;
  if (v26 == *MEMORY[0x29EDC1758] || v26 == *MEMORY[0x29EDC1750] || v26 == *MEMORY[0x29EDC1748])
  {
    LODWORD(v83) = v28;
    v40 = v81;
    sub_29E752048();
    v41 = v89;
    v42 = v24;
    v24(v21, a1, v89);
    v43 = sub_29E752088();
    v44 = sub_29E7546A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v90 = v82;
      *v45 = 136446466;
      v46 = sub_29E755178();
      v48 = sub_29E6B9C90(v46, v47, &v90);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      v49 = v85;
      v42(v85, v21, v89);
      v50 = v44;
      v51 = sub_29E7541F8();
      v53 = v52;
      v54 = v84;
      v55 = v84[1];
      v55(v21, v89);
      v56 = sub_29E6B9C90(v51, v53, &v90);

      *(v45 + 14) = v56;
      _os_log_impl(&dword_29E5ED000, v43, v50, "[%{public}s] Making header content for unsupported status %{public}s", v45, 0x16u);
      v57 = v82;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v57, -1, -1);
      v41 = v89;
      MEMORY[0x29ED98410](v45, -1, -1);

      (*(v86 + 8))(v81, v87);
    }

    else
    {

      v54 = v84;
      v55 = v84[1];
      v55(v21, v41);
      (*(v86 + 8))(v40, v87);
      v49 = v85;
    }

    (v54[13])(v49, v83, v41);
    v27 = sub_29E686C44(v49);
    v55(v49, v41);
  }

  else
  {
    v58 = v82;
    sub_29E752048();
    v59 = v89;
    v60 = v24;
    v24(v83, a1, v89);
    v61 = sub_29E752088();
    v62 = sub_29E7546A8();
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      v79 = v61;
      v65 = v64;
      v81 = swift_slowAlloc();
      v90 = v81;
      *v65 = 136446466;
      v66 = sub_29E755178();
      v68 = sub_29E6B9C90(v66, v67, &v90);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2082;
      v69 = v85;
      LODWORD(ObjectType) = v62;
      v70 = v83;
      v60(v85, v83, v89);
      v71 = sub_29E7541F8();
      v73 = v72;
      v74 = v84;
      v75 = v84[1];
      v75(v70, v89);
      v76 = sub_29E6B9C90(v71, v73, &v90);
      v59 = v89;

      *(v65 + 14) = v76;
      v77 = v79;
      _os_log_impl(&dword_29E5ED000, v79, ObjectType, "[%{public}s] Making header content for unknown status %{public}s", v65, 0x16u);
      v78 = v81;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v78, -1, -1);
      MEMORY[0x29ED98410](v65, -1, -1);

      (*(v86 + 8))(v82, v87);
    }

    else
    {

      v74 = v84;
      v75 = v84[1];
      v75(v83, v59);
      (*(v86 + 8))(v58, v87);
      v69 = v85;
    }

    (v74[13])(v69, v28, v59);
    v27 = sub_29E686C44(v69);
    v75(v69, v59);
    v75(v23, v59);
  }

  return v27;
}

id sub_29E68762C()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v2 + 8))(v5, v1);
  v6 = objc_opt_self();
  v7 = sub_29E754198();

  v8 = [v6 preferenceSpecifierNamed:v7 target:v0 set:sel_setNotificationsEnabled_ get:sel_isNotificationsEnabled detail:0 cell:6 edit:0];

  if (v8)
  {
    v9 = sub_29E754198();
    [v8 setIdentifier_];

    v10 = sub_29E754458();
    [v8 setProperty:v10 forKey:*MEMORY[0x29EDC62A0]];
  }

  return v8;
}

uint64_t sub_29E687850()
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_29E751D98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E7501E8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v27 - v16;
  v18 = qword_2A1858580;
  swift_beginAccess();
  sub_29E689380(v0 + v18, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E6895D8(v4, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
LABEL_5:
    v23 = v11[13];
    v23(v17, *MEMORY[0x29EDC1768], v10);
    v24 = *MEMORY[0x29EDC1760];
    goto LABEL_6;
  }

  (*(v6 + 32))(v9, v4, v5);
  v19 = *MEMORY[0x29EDBA5A0];
  v20 = sub_29E751DA8();
  v21 = [v20 areAllRequirementsSatisfied];

  (*(v6 + 8))(v9, v5);
  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *MEMORY[0x29EDC1760];
  v23 = v11[13];
  v23(v17, v22, v10);
  v24 = v22;
LABEL_6:
  v23(v15, v24, v10);
  sub_29E7501D8();
  v25 = v11[1];
  v25(v15, v10);
  v25(v17, v10);
  return sub_29E754458();
}

id sub_29E687BA8(void *a1)
{
  v1 = a1;
  v2 = sub_29E687850();

  return v2;
}

void sub_29E687BEC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = a1;
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v6;
    v14 = v13;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v14 = 136446466;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, aBlock);
    v37 = ObjectType;
    v18 = v17;

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = v10;
    v20 = [v19 description];
    v21 = v2;
    v22 = sub_29E7541D8();
    v34 = v5;
    v24 = v23;

    v25 = v22;
    v2 = v21;
    v26 = sub_29E6B9C90(v25, v24, aBlock);

    *(v14 + 14) = v26;
    ObjectType = v37;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Setting notifications enabled: %{public}s", v14, 0x16u);
    v27 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v27, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);

    (*(v36 + 8))(v9, v34);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v28 = *(v2 + qword_2A1858578);
  v29 = *MEMORY[0x29EDBA788];
  v30 = swift_allocObject();
  *(v30 + 16) = v10;
  *(v30 + 24) = ObjectType;
  aBlock[4] = sub_29E689400;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A25001E0;
  v31 = _Block_copy(aBlock);
  v32 = v10;
  v33 = v29;

  [v28 setFeatureSettingNumber:v32 forKey:v33 completion:v31];
  _Block_release(v31);
}

uint64_t sub_29E687F34(char a1, void *a2, void *a3)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v51 - v12;
  if (a1)
  {
    sub_29E752048();
    v14 = a3;
    v15 = sub_29E752088();
    v16 = sub_29E7546C8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54 = v18;
      *v17 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, &v54);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v22 = v14;
      v23 = [v22 description];
      v24 = sub_29E7541D8();
      v52 = v6;
      v26 = v25;

      v27 = sub_29E6B9C90(v24, v26, &v54);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Completed setting notifications enabled: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);

      return (*(v7 + 8))(v11, v52);
    }

    v49 = *(v7 + 8);
    v50 = v11;
  }

  else
  {
    sub_29E752048();
    v29 = a3;
    v30 = a2;
    v31 = sub_29E752088();
    v32 = sub_29E7546A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v33 = 136446722;
      v34 = sub_29E755178();
      v36 = sub_29E6B9C90(v34, v35, &v54);
      v52 = v6;
      v37 = v36;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v38 = v29;
      v39 = [v38 description];
      v40 = sub_29E7541D8();
      v42 = v41;

      v43 = sub_29E6B9C90(v40, v42, &v54);

      *(v33 + 14) = v43;
      *(v33 + 22) = 2082;
      v53 = a2;
      v44 = a2;
      sub_29E689470(0, &qword_2A1858A60, sub_29E66A61C);
      v45 = sub_29E7541F8();
      v47 = sub_29E6B9C90(v45, v46, &v54);

      *(v33 + 24) = v47;
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Error setting notifications enabled: %{public}s %{public}s", v33, 0x20u);
      v48 = v51;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v48, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);

      return (*(v7 + 8))(v13, v52);
    }

    v49 = *(v7 + 8);
    v50 = v13;
  }

  return v49(v50, v6);
}

void sub_29E688380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29E687BEC(v4);
}

uint64_t sub_29E688418()
{
  sub_29E5F0140(v0 + qword_2A1858568);
  sub_29E5FECBC((v0 + qword_2A1858570));
  v1 = *(v0 + qword_2A1858578);
  sub_29E751758();
  sub_29E6895D8(v0 + qword_2A1858580, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v2 = *(v0 + qword_2A1858588);
}

uint64_t sub_29E6884BC(uint64_t a1)
{
  sub_29E5F0140(a1 + qword_2A1858568);
  sub_29E5FECBC((a1 + qword_2A1858570));
  v2 = *(a1 + qword_2A1858578);
  sub_29E751758();
  sub_29E6895D8(a1 + qword_2A1858580, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v3 = *(a1 + qword_2A1858588);
}

uint64_t sub_29E6885BC()
{
  v1 = v0 + qword_2A1858568;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29E68860C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A1858568;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29E751758();
}

void (*sub_29E688678(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A1858568;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29E688718;
}

void sub_29E688718(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    sub_29E751758();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29E751758();
  }

  free(v3);
}

void (*sub_29E6887A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29E751738();
  return sub_29E688830;
}

void sub_29E688830(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29E688880()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

id sub_29E688980(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_29E6889C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v33 = a4;
  v34 = a3;
  v29[4] = swift_getObjectType();
  sub_29E689470(0, &qword_2A18585B8, MEMORY[0x29EDC1C10]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v32 = v29 - v10;
  v11 = sub_29E752098();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v29[5] = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v29[6] = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = v29 - v18;
  v35[3] = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
  v35[4] = MEMORY[0x29EDC2EA8];
  v35[0] = a1;
  *(a5 + qword_2A1858568 + 8) = 0;
  swift_unknownObjectWeakInit();
  v20 = qword_2A1858580;
  v21 = sub_29E751D98();
  v22 = *(*(v21 - 8) + 56);
  v22(a5 + v20, 1, 1, v21);
  *(a5 + qword_2A1858588) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(v35, a5 + qword_2A1858570);
  *(a5 + qword_2A1858578) = a2;
  swift_unknownObjectRetain();
  sub_29E751DD8();
  v22(v19, 0, 1, v21);
  swift_beginAccess();
  sub_29E689300(v19, a5 + v20);
  swift_endAccess();
  v23 = sub_29E750428();
  v24 = *(v23 - 8);
  v25 = v32;
  v26 = v34;
  (*(v24 + 16))(v32, v34, v23);
  (*(v24 + 56))(v25, 0, 1, v23);
  v27 = sub_29E750418();
  sub_29E685FA0();

  (*(v24 + 8))(v26, v23);
  sub_29E5FECBC(v35);
  return v27;
}

id sub_29E688FFC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = sub_29E74F8B8();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E750428();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = [v14 featureAvailabilityProviding];
  v16 = *(v10 + 16);
  v26 = a3;
  v16(v13, a3, v9);
  LODWORD(a3) = HKImproveHealthAndActivityAnalyticsAllowed();
  v17 = objc_allocWithZone(type metadata accessor for SleepApneaHealthChecklistSettingsDataSource(0));
  v18 = sub_29E6889C8(v14, v15, v13, a3, v17);
  sub_29E751758();
  sub_29E689590(&qword_2A18585B0, type metadata accessor for SleepApneaHealthChecklistSettingsDataSource);
  v19 = v18;
  v20 = sub_29E751558();
  v21 = qword_2A1A7D6F0;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v25);
  v23 = sub_29E754198();

  [v22 setTitle_];

  (*(v10 + 8))(v26, v9);
  return v22;
}

uint64_t sub_29E689300(uint64_t a1, uint64_t a2)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E689380(uint64_t a1, uint64_t a2)
{
  sub_29E689470(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E689408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E689420(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E689470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6894C4()
{
  if (!qword_2A18585C8)
  {
    sub_29E64C52C();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E689590(&qword_2A1A7BFA0, sub_29E64C52C);
    sub_29E63FE6C();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18585C8);
    }
  }
}

uint64_t sub_29E689590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6895D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E689470(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AddScheduleSection()
{
  result = qword_2A1858608;
  if (!qword_2A1858608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29E6896E0()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v3 = sub_29E754198();
  v4 = [v2 initWithString_];

  v5 = qword_2A1858600;
  v6 = *(v1 + qword_2A1858600);

  sub_29E7527B8();

  if (aBlock)
  {
    v7 = sub_29E68B83C(aBlock);

    v4 = v7;
  }

  aBlock = 0;
  v15 = 0xE000000000000000;
  sub_29E754D78();

  v16 = 0xD000000000000012;
  v17 = 0x800000029E7682F0;
  v8 = *(v1 + v5);

  sub_29E7527B8();

  MEMORY[0x29ED96C20](0x65736C6166, 0xE500000000000000);

  v9 = [v4 description];
  v10 = sub_29E7541D8();
  v12 = v11;

  MEMORY[0x29ED96C20](v10, v12);

  return v16;
}

uint64_t sub_29E6899BC(uint64_t a1)
{
  v3 = sub_29E74ED88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A18585F8) = 0;
  *(v1 + qword_2A1858600) = a1;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;

  sub_29E754D78();

  strcpy(v15, "MutableArray<");
  HIWORD(v15[1]) = -4864;
  sub_29E74ED78();
  v8 = sub_29E74ED48();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x29ED96C20](v8, v10);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v11 = sub_29E750D08();
  v15[0] = a1;
  swift_allocObject();
  swift_weakInit();
  sub_29E60990C();
  sub_29E68C450(&qword_2A18569F0, sub_29E60990C);

  v12 = sub_29E7529A8();

  v13 = *(v11 + qword_2A18585F8);
  *(v11 + qword_2A18585F8) = v12;

  return v11;
}

uint64_t sub_29E689C1C()
{
  v0 = sub_29E753D78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 96);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v4 = sub_29E754908();
  (*(v1 + 104))(v4, *MEMORY[0x29EDCA278], v0);
  v5 = sub_29E753DA8();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_29E68CF14();
      inited = swift_initStackObject();
      v15 = xmmword_29E762F30;
      inited[1] = xmmword_29E762F30;
      v10 = *(v8 + qword_2A1858600);

      sub_29E68BD9C(v16);

      v11 = v16[1];
      inited[2] = v16[0];
      inited[3] = v11;
      inited[4] = v16[2];
      sub_29E68CA04(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v12 = *(sub_29E750CA8() - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      *(swift_allocObject() + 16) = v15;
      sub_29E6CC6D0(inited);
      swift_setDeallocating();
      sub_29E68CF64((inited + 2));
      sub_29E6896E0();
      sub_29E750C98();
      sub_29E750D18();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E689F6C()
{
  v1 = *(v0 + qword_2A18585F8);

  v2 = *(v0 + qword_2A1858600);
}

uint64_t sub_29E689FAC()
{
  v0 = sub_29E750D58();
  v1 = *(v0 + qword_2A18585F8);

  v2 = *(v0 + qword_2A1858600);

  return swift_deallocClassInstance();
}

uint64_t sub_29E68A0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_29E74ED88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752258();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = *MEMORY[0x29EDC8048];
  if (sub_29E7541D8() == a1 && v15 == a2)
  {

    goto LABEL_13;
  }

  v17 = sub_29E755028();

  if (v17)
  {
LABEL_13:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    sub_29E7521F8();
    v23 = sub_29E750458();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_29E750438();
    a3[3] = v23;
    result = sub_29E68C450(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
    a3[4] = result;
    *a3 = v26;
    return result;
  }

  v18 = *MEMORY[0x29EDC8040];
  if (sub_29E7541D8() == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_29E755028();

    if ((v21 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E68C450(&qword_2A1856D80, MEMORY[0x29EDC1EC0]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  v27 = *(v3 + qword_2A1858600);

  sub_29E7527B8();

  v28 = v42;
  if (v42)
  {
    sub_29E68B83C(v42);
    v42 = 0x74497265746F6F46;
    v43 = 0xEB000000005F6D65;
    sub_29E74ED78();
    v29 = sub_29E74ED48();
    v31 = v30;
    (*(v8 + 8))(v11, v7);
    MEMORY[0x29ED96C20](v29, v31);

    v44 = sub_29E751628();
    v45 = sub_29E68C450(&qword_2A1858620, MEMORY[0x29EDC28B0]);
    sub_29E5FEBF4(&v42);
    sub_29E751608();
    v32 = v44;
    v33 = v45;
    v34 = sub_29E601938(&v42, v44);
    a3[3] = v32;
    a3[4] = *(v33 + 8);
    v35 = sub_29E5FEBF4(a3);
    (*(*(v32 - 8) + 16))(v35, v34, v32);

    return sub_29E5FECBC(&v42);
  }

  else
  {
    v36 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v37 = sub_29E754198();
    [v36 initWithString_];

    v42 = 0x74497265746F6F46;
    v43 = 0xEB000000005F6D65;
    sub_29E74ED78();
    v38 = sub_29E74ED48();
    v40 = v39;
    (*(v8 + 8))(v11, v7);
    MEMORY[0x29ED96C20](v38, v40);

    a3[3] = sub_29E751628();
    a3[4] = sub_29E68C450(&qword_2A1856D88, MEMORY[0x29EDC28B0]);
    sub_29E5FEBF4(a3);
    return sub_29E751608();
  }
}

uint64_t sub_29E68A654()
{
  type metadata accessor for LinkCollectionViewCell();
  sub_29E7547D8();
  sub_29E7515F8();
  sub_29E7547E8();
  sub_29E7518A8();
  sub_29E7547F8();
  sub_29E751638();
  return sub_29E7547F8();
}

uint64_t sub_29E68A704()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_29E68A734(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_29E68A78C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E754D78();

  MEMORY[0x29ED96C20](v1, v2);
  return 0xD000000000000010;
}

uint64_t sub_29E68A808(uint64_t a1)
{
  v2 = sub_29E68D12C();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E68A8A0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A18585D8 = result;
  unk_2A18585E0 = v1;
  return result;
}

uint64_t sub_29E68A938()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A18585E8 = result;
  unk_2A18585F0 = v1;
  return result;
}

unint64_t sub_29E68A9D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29E7550C8();
  sub_29E7542D8();
  v6 = sub_29E755108();

  return sub_29E68ABFC(a1, a2, v6);
}

unint64_t sub_29E68AA48(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29E754B78();

  return sub_29E68ACB4(a1, v5);
}

unint64_t sub_29E68AA90(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29E7541D8();
  sub_29E7550C8();
  sub_29E7542D8();
  v4 = sub_29E755108();

  return sub_29E68B010(a1, v4);
}

unint64_t sub_29E68AB20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29E754CE8();

  return sub_29E68AD88(a1, v5);
}

unint64_t sub_29E68AB64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_29E754048();
  sub_29E68C450(&qword_2A1857B78, MEMORY[0x29EDBA2F8]);
  v5 = sub_29E7540A8();

  return sub_29E68AE50(a1, v5);
}

unint64_t sub_29E68ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29E755028())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29E68ACB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29E609B5C(0, &qword_2A1856EC8, 0x29EDBA070);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29E754B88();

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

unint64_t sub_29E68AD88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29E68CE40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED97610](v9, a1);
      sub_29E68CE9C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29E68AE50(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_29E754048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_29E68C450(&qword_2A1857B80, MEMORY[0x29EDBA2F8]);
      v16 = sub_29E754108();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_29E68B010(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29E7541D8();
      v9 = v8;
      if (v7 == sub_29E7541D8() && v9 == v10)
      {
        break;
      }

      v12 = sub_29E755028();

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

unint64_t sub_29E68B114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68CF94();
    v3 = sub_29E754EB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29E68AA48(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC99B0];
    sub_29E68CD80(0, &qword_2A1859CE0);
    v4 = sub_29E754EB8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29E68CACC(v5, &v14, &qword_2A18586D0, v3, sub_29E68CDDC);
      v6 = v14;
      v7 = v15;
      result = sub_29E68A9D0(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_29E61FF28(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B34C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68CB3C();
    v3 = sub_29E754EB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29E68AA90(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC9D48];
    sub_29E68CD80(0, &qword_2A1858658);
    v4 = sub_29E754EB8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29E68CACC(v5, v14, &qword_2A1858660, v3, sub_29E68CDDC);
      result = sub_29E68AB20(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_29E61FF28(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68D180();
    v3 = sub_29E754EB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29E68AA90(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B710(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_29E754EB8();
    v9 = a1 + 32;

    while (1)
    {
      sub_29E68CACC(v9, &v16, a3, a4, sub_29E68CD18);
      v10 = v16;
      result = sub_29E68AA90(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_29E61FF28(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void *sub_29E68B83C(void *a1)
{
  v2 = sub_29E74F828();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = 0;
  [a1 weekdaysWithoutOccurrences];
  v7 = swift_allocObject();
  v7[2] = &v32;
  v8 = swift_allocObject();
  v8[2] = sub_29E68D250;
  v8[3] = v7;
  aBlock[4] = sub_29E68D244;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E68A6D4;
  aBlock[3] = &unk_2A25002F8;
  v9 = _Block_copy(aBlock);

  HKSPWeekdaysEnumerateDays();
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  v11 = v32;

  if (v11 < 1)
  {
    v28 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    isEscapingClosureAtFileLocation = sub_29E754198();
    v7 = [v28 initWithString_];
    goto LABEL_6;
  }

  v7 = [objc_allocWithZone(MEMORY[0x29EDBA038]) init];
  sub_29E68C498();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  v13 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v14 = sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
  v15 = *MEMORY[0x29EDC80F8];
  v16 = v13;
  v17 = sub_29E754AB8();
  *(inited + 64) = v14;
  *(inited + 40) = v17;
  sub_29E68B710(inited, sub_29E68C584, &qword_2A1858628, type metadata accessor for Key);
  swift_setDeallocating();
  sub_29E68C50C(inited + 32);
  v18 = a1;
  sub_29E74F818();
  sub_29E74F808();
  (v3[1])(v6, v2);
  v9 = 0x29EDB9000;
  v19 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v20 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E68C450(&qword_2A1856640, type metadata accessor for Key);
  v21 = sub_29E754068();

  isEscapingClosureAtFileLocation = [v19 initWithString:v20 attributes:v21];

  v8 = &off_29F370000;
  [v7 appendAttributedString_];
  v22 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v23 = sub_29E754198();
  v3 = &off_29F370000;
  v24 = [v22 initWithString_];

  [v7 appendAttributedString_];
  if (qword_2A1A7D6F0 != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_29E74E9D8();
  v25 = objc_allocWithZone(v9[486]);
  v26 = sub_29E754198();

  v27 = [v25 v3[350]];

  [v7 v8[427]];
LABEL_6:

  return v7;
}

void sub_29E68BD9C(uint64_t *a1@<X8>)
{
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LinkCollectionViewCell();
  v7 = sub_29E7506A8();
  v9 = v8;
  (*(v3 + 104))(v6, *MEMORY[0x29EDC6AC8], v2);
  v10 = sub_29E754258();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  sub_29E7527B8();
  v13 = v32;
  if (v32)
  {
    v31 = v12;
    v14 = [v32 occurrences];
    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v15 = sub_29E7543F8();

    v32 = MEMORY[0x29EDCA190];
    if (v15 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
    {
      v26 = v13;
      v27 = v10;
      v28 = v9;
      v29 = v7;
      v30 = a1;
      v10 = 0;
      v7 = v15 & 0xC000000000000001;
      v9 = v15 & 0xFFFFFFFFFFFFFF8;
      v13 = &off_29F370000;
      while (1)
      {
        if (v7)
        {
          v17 = MEMORY[0x29ED976A0](v10, v15);
        }

        else
        {
          if (v10 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v17 = *(v15 + 8 * v10 + 32);
        }

        v18 = v17;
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v17 isRepeating])
        {
          sub_29E754DE8();
          a1 = v32[2];
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
        }

        else
        {
        }

        ++v10;
        if (v19 == i)
        {
          v20 = v32;
          v7 = v29;
          a1 = v30;
          v10 = v27;
          v9 = v28;
          v13 = v26;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v20 = MEMORY[0x29EDCA190];
LABEL_22:

    v12 = v31;
    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      v23 = sub_29E754C98();
    }

    else
    {
      v23 = *(v20 + 16);
    }

    if (v23)
    {
      if (qword_2A1856218 != -1)
      {
        swift_once();
      }

      v24 = &qword_2A18585E8;
    }

    else
    {
      if (qword_2A1856210 != -1)
      {
        swift_once();
      }

      v24 = &qword_2A18585D8;
    }

    v21 = *v24;
    v22 = v24[1];
  }

  else
  {
    if (qword_2A1856218 != -1)
    {
      swift_once();
    }

    v21 = qword_2A18585E8;
    v22 = unk_2A18585F0;
  }

  *a1 = v21;
  a1[1] = v22;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v12;
}

uint64_t sub_29E68C144(uint64_t a1)
{
  v3 = sub_29E750E78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &aBlock[-1] - v9;
  v11 = *(v1 + qword_2A1858600);

  sub_29E7527B8();

  v12 = aBlock[0];
  if (!aBlock[0])
  {
    goto LABEL_5;
  }

  v23 = 0;
  [aBlock[0] weekdaysWithoutOccurrences];
  v13 = swift_allocObject();
  *(v13 + 16) = &v23;
  v14 = swift_allocObject();
  v14[2] = sub_29E68C40C;
  v14[3] = v13;
  aBlock[4] = sub_29E68C410;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E68A6D4;
  aBlock[3] = &unk_2A2500280;
  v15 = _Block_copy(aBlock);

  HKSPWeekdaysEnumerateDays();

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v18 = v23;

    if (v18 == 7)
    {
      sub_29E750E28();
LABEL_6:
      sub_29E750E18();
      v19 = *(v4 + 8);
      v19(v8, v3);
      sub_29E750E58();
      v20 = sub_29E750E68();
      v19(v10, v3);
      return v20;
    }

LABEL_5:
    sub_29E750E38();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E68C410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_29E68C438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E68C450(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E68C498()
{
  if (!qword_2A185A540)
  {
    sub_29E68CD18(255, &qword_2A1858628, type metadata accessor for Key);
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A540);
    }
  }
}

uint64_t sub_29E68C50C(uint64_t a1)
{
  sub_29E68CD18(0, &qword_2A1858628, type metadata accessor for Key);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E68C584()
{
  if (!qword_2A1858630)
  {
    type metadata accessor for Key(255);
    sub_29E68C450(&qword_2A1856640, type metadata accessor for Key);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858630);
    }
  }
}

uint64_t sub_29E68C624(void *a1)
{
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v25 - v8;
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_29E6B9C90(0xD000000000000010, 0x800000029E768430, v29);
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Add schedule button tapped", v12, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  v15 = [a1 viewController];
  if (v15 && (v25[1] = v15, sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8), sub_29E68CA68(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v27 + 1))
    {
      sub_29E60A040(&v26, v29);
      sub_29E601938(v29, v29[3]);
      sub_29E74F8C8();
      return sub_29E5FECBC(v29);
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  sub_29E6093D0(&v26);
  sub_29E752048();
  v17 = a1;
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_29E6B9C90(0xD000000000000010, 0x800000029E768430, v29);
    *(v20 + 12) = 2082;
    *&v26 = [v17 viewController];
    sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
    v22 = sub_29E754248();
    v24 = sub_29E6B9C90(v22, v23, v29);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);
  }

  return (v14)(v7, v2);
}

void sub_29E68CA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E68CA68()
{
  result = qword_2A18569E0;
  if (!qword_2A18569E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18569E0);
  }

  return result;
}

uint64_t sub_29E68CACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E68CB3C()
{
  if (!qword_2A1A7D408)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29E68C450(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D408);
    }
  }
}

void sub_29E68CBD8()
{
  if (!qword_2A1858638)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_29E68C450(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858638);
    }
  }
}

void sub_29E68CC78()
{
  if (!qword_2A1858648)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29E68C450(&qword_2A1856620, type metadata accessor for OpenURLOptionsKey);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858648);
    }
  }
}

void sub_29E68CD18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E68CD80(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E754EC8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29E68CDDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E68CEF0()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
  }
}

void sub_29E68CF14()
{
  if (!qword_2A1858668)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858668);
    }
  }
}

void sub_29E68CF94()
{
  if (!qword_2A1858670)
  {
    sub_29E609B5C(255, &qword_2A1856EC8, 0x29EDBA070);
    sub_29E609B5C(255, &qword_2A1856ED0, 0x29EDC46A0);
    sub_29E617428();
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858670);
    }
  }
}

uint64_t sub_29E68D030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29E68D078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E68D0D8()
{
  result = qword_2A1858678;
  if (!qword_2A1858678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858678);
  }

  return result;
}

unint64_t sub_29E68D12C()
{
  result = qword_2A1858680;
  if (!qword_2A1858680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858680);
  }

  return result;
}

void sub_29E68D180()
{
  if (!qword_2A1858688)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29E609B5C(255, &qword_2A1858690, 0x29EDBABA8);
    sub_29E68C450(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858688);
    }
  }
}

uint64_t type metadata accessor for SleepApneaEventEducationDataSource()
{
  result = qword_2A1858698;
  if (!qword_2A1858698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E68D2E0()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v10, "MutableArray<");
  HIWORD(v10[1]) = -4864;
  sub_29E74ED78();
  v5 = sub_29E74ED48();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  MEMORY[0x29ED96C20](v5, v7);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v8 = sub_29E750D08();

  sub_29E68D458();

  return v8;
}

uint64_t sub_29E68D458()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDCA190];
  sub_29E68DAAC(v3, &v11);
  sub_29E68E4E8(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v6 = *(sub_29E750CA8() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC108(v11);
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v1 + 8))(v5, v0);
  sub_29E750C98();
  sub_29E750D18();
}

void sub_29E68D658(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingEducationViewController());
    v4 = sub_29E6C7308(0);
    [v2 pushViewController:v4 animated:1];
  }
}

uint64_t sub_29E68D6F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E750458();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  sub_29E7521F8();
  v10 = sub_29E750448();
  a1[3] = v9;
  result = sub_29E68E54C(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_29E68D930()
{
  sub_29E750D58();

  return swift_deallocClassInstance();
}

uint64_t sub_29E68D9B8()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  sub_29E751098();
  v5 = sub_29E750E68();
  sub_29E751758();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E68DAAC(uint64_t a1, uint64_t *a2)
{
  v72 = a2;
  v71 = sub_29E751908();
  v69 = *(v71 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v71);
  v70 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750DC8();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E68E4E8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v62 = &v57 - v10;
  sub_29E68E4E8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v7);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v58 = &v57 - v13;
  v14 = sub_29E752108();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29E7520C8();
  v18 = *(v57 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v57);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E750EE8();
  v66 = *(v22 - 8);
  v67 = v22;
  v23 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v65 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E74F8B8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29E752258();
  v73 = *(v77 - 8);
  v30 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v77);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v61 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752218();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v26 + 8))(v29, v25);
  sub_29E752228();
  sub_29E68121C();
  v33 = *MEMORY[0x29EDC80E0];
  v34 = *MEMORY[0x29EDC76F8];
  sub_29E754AC8();
  v35 = sub_29E7521C8();
  sub_29E7521A8();
  v35(&v74, 0);
  v36 = [objc_opt_self() labelColor];
  v37 = sub_29E7521C8();
  sub_29E7521B8();
  v37(&v74, 0);
  v38 = v77;
  v75 = v77;
  v76 = MEMORY[0x29EDC7800];
  v39 = sub_29E5FEBF4(&v74);
  (*(v73 + 16))(v39, v32, v38);
  sub_29E68E4E8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v40 = *(sub_29E752128() - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v43 = v57;
  (*(v18 + 104))(v21, *MEMORY[0x29EDC7768], v57);
  v44 = sub_29E7520D8();
  (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v59 + 8))(v17, v60);
  (*(v18 + 8))(v21, v43);
  v45 = sub_29E752178();
  (*(*(v45 - 8) + 56))(v62, 1, 1, v45);
  (*(v63 + 104))(v68, *MEMORY[0x29EDC22C8], v64);
  (*(v69 + 104))(v70, *MEMORY[0x29EDC2A38], v71);
  v46 = v65;
  sub_29E750ED8();
  v47 = v72;
  v48 = *v72;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_29E6DAD84(0, v48[2] + 1, 1, v48);
    *v47 = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    *v47 = sub_29E6DAD84((v50 > 1), v51 + 1, 1, v48);
  }

  (*(v73 + 8))(v32, v77);
  v52 = v67;
  v75 = v67;
  v76 = sub_29E68E54C(&qword_2A1858328, MEMORY[0x29EDC23F8]);
  v53 = sub_29E5FEBF4(&v74);
  v54 = v66;
  (*(v66 + 16))(v53, v46, v52);
  v55 = *v47;
  *(v55 + 16) = v51 + 1;
  sub_29E5FAEE4(&v74, v55 + 40 * v51 + 32);
  (*(v54 + 8))(v46, v52);
}

void sub_29E68E4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E68E54C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E68E5C0()
{
  result = [objc_opt_self() sleepDurationGoalType];
  if (result)
  {
    v1 = result;
    if (qword_2A18561B0 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1857A88;
    v3 = unk_2A1857A90;
    v4 = qword_2A18561B8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2A1857A98;
    v6 = unk_2A1857AA0;
    v7 = type metadata accessor for SupplementaryTypeSection();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    sub_29E6CE418(v1, v2, v3, v5, v6);

    sub_29E750828();

    v10 = sub_29E750818();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E68E734()
{
  v1[45] = v0;
  v1[46] = *v0;
  sub_29E68FA44();
  v1[47] = v2;
  v3 = *(v2 - 8);
  v1[48] = v3;
  v4 = *(v3 + 64) + 15;
  v1[49] = swift_task_alloc();
  v5 = sub_29E74ED28();
  v1[50] = v5;
  v6 = *(v5 - 8);
  v1[51] = v6;
  v7 = *(v6 + 64) + 15;
  v1[52] = swift_task_alloc();
  sub_29E68FAB0();
  v1[53] = v8;
  v9 = *(v8 - 8);
  v1[54] = v9;
  v10 = *(v9 + 64) + 15;
  v1[55] = swift_task_alloc();
  v11 = sub_29E752098();
  v1[56] = v11;
  v12 = *(v11 - 8);
  v1[57] = v12;
  v13 = *(v12 + 64) + 15;
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E68E93C, 0, 0);
}

uint64_t sub_29E68E93C()
{
  v64 = v0;
  v1 = v0[45];
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = v0[59];
    v4 = *(v1 + 24);
    swift_unknownObjectRetain();
    sub_29E752048();
    v5 = sub_29E752088();
    v6 = sub_29E7546C8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[59];
    v10 = v0[56];
    v9 = v0[57];
    if (v7)
    {
      v11 = v0[46];
      v60 = v0[59];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v63 = v13;
      *v12 = 136315394;
      v14 = sub_29E755178();
      v16 = sub_29E6B9C90(v14, v15, &v63);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E75CC10, &v63);
      _os_log_impl(&dword_29E5ED000, v5, v6, "[%s.%s] Have existing country code", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v13, -1, -1);
      MEMORY[0x29ED98410](v12, -1, -1);

      (*(v9 + 8))(v60, v10);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v0[61] = v2;
    v35 = v0[45];
    sub_29E68FB9C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F30;
    v37 = *MEMORY[0x29EDBA788];
    *(inited + 32) = sub_29E7541D8();
    *(inited + 40) = v38;
    v39 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    swift_unknownObjectRetain();
    v40 = [v39 initWithBool_];
    *(inited + 72) = sub_29E648728();
    *(inited + 48) = v40;
    sub_29E68B200(inited);
    swift_setDeallocating();
    sub_29E68FC58(inited + 32);
    v41 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
    v42 = sub_29E754068();

    v59 = [v41 initWithDictionary_];
    v0[62] = v59;

    v62 = [*(v35 + 16) featureAvailabilityProviding];
    v0[63] = v62;
    v43 = [v2 ISOCode];
    if (!v43)
    {
      sub_29E7541D8();
      v43 = sub_29E754198();
    }

    v0[64] = v43;
    v45 = v0[51];
    v44 = v0[52];
    v46 = v0[50];
    v48 = v0[47];
    v47 = v0[48];
    v49 = v0[45];
    v58 = [v2 provenance];
    v50 = sub_29E751758();
    v51 = *(v49 + 32);
    v52 = *(v49 + 40);
    v51(v50);
    v57 = sub_29E74EC98();
    v0[65] = v57;
    (*(v45 + 8))(v44, v46);
    v0[10] = v0;
    v0[11] = sub_29E68F52C;
    swift_continuation_init();
    v0[43] = v48;
    v53 = sub_29E5FEBF4(v0 + 40);
    sub_29E66A61C();
    v54 = v59;
    sub_29E754478();
    (*(v47 + 32))(v53, v56, v48);
    v0[36] = MEMORY[0x29EDCA5F8];
    v0[37] = 1107296256;
    v0[38] = sub_29E68F940;
    v0[39] = &unk_2A2500500;
    [v62 setCurrentOnboardingVersionCompletedForCountryCode:v43 countryCodeProvenance:v58 date:v57 settings:v54 completion:?];
    (*(v47 + 8))(v53, v48);
    v34 = v0 + 10;
  }

  else
  {
    v17 = v0[58];
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546C8();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[57];
    v21 = v0[58];
    v23 = v0[56];
    if (v20)
    {
      v24 = v0[46];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63 = v26;
      *v25 = 136315394;
      v27 = sub_29E755178();
      v29 = sub_29E6B9C90(v27, v28, &v63);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E75CC10, &v63);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%s.%s] Fetching current country code", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v26, -1, -1);
      MEMORY[0x29ED98410](v25, -1, -1);
    }

    (*(v22 + 8))(v21, v23);
    v31 = v0[54];
    v30 = v0[55];
    v32 = v0[53];
    v61 = *(v0[45] + 48);
    v0[2] = v0;
    v0[7] = v0 + 44;
    v0[3] = sub_29E68F0A0;
    swift_continuation_init();
    v0[35] = v32;
    v33 = sub_29E5FEBF4(v0 + 32);
    sub_29E68FB20();
    sub_29E66A61C();
    sub_29E754478();
    (*(v31 + 32))(v33, v30, v32);
    v0[28] = MEMORY[0x29EDCA5F8];
    v0[29] = 1107296256;
    v0[30] = sub_29E68F89C;
    v0[31] = &unk_2A25004D8;
    [v61 fetchMobileCountryCodeFromCellularWithCompletion_];
    (*(v31 + 8))(v33, v32);
    v34 = v0 + 2;
  }

  return MEMORY[0x2A1C73CC0](v34);
}

uint64_t sub_29E68F0A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 480) = v2;
  if (v2)
  {
    v3 = sub_29E68F718;
  }

  else
  {
    v3 = sub_29E68F1B0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E68F1B0()
{
  v1 = v0[44];
  v2 = v0[45];
  v0[61] = v1;
  sub_29E68FB9C();
  swift_unknownObjectRetain();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  v4 = *MEMORY[0x29EDBA788];
  *(inited + 32) = sub_29E7541D8();
  *(inited + 40) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  *(inited + 72) = sub_29E648728();
  *(inited + 48) = v6;
  sub_29E68B200(inited);
  swift_setDeallocating();
  sub_29E68FC58(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
  v8 = sub_29E754068();

  v24 = [v7 initWithDictionary_];
  v0[62] = v24;

  v25 = [*(v2 + 16) featureAvailabilityProviding];
  v0[63] = v25;
  v9 = [v1 ISOCode];
  if (!v9)
  {
    sub_29E7541D8();
    v9 = sub_29E754198();
  }

  v0[64] = v9;
  v10 = v0[51];
  v11 = v0[52];
  v12 = v0[50];
  v21 = v0[49];
  v14 = v0[47];
  v13 = v0[48];
  v15 = v0[45];
  v23 = [v1 provenance];
  v16 = sub_29E751758();
  v17 = *(v15 + 40);
  (*(v15 + 32))(v16);
  v22 = sub_29E74EC98();
  v0[65] = v22;
  (*(v10 + 8))(v11, v12);
  v0[10] = v0;
  v0[11] = sub_29E68F52C;
  swift_continuation_init();
  v0[43] = v14;
  v18 = sub_29E5FEBF4(v0 + 40);
  sub_29E66A61C();
  v19 = v24;
  sub_29E754478();
  (*(v13 + 32))(v18, v21, v14);
  v0[36] = MEMORY[0x29EDCA5F8];
  v0[37] = 1107296256;
  v0[38] = sub_29E68F940;
  v0[39] = &unk_2A2500500;
  [v25 setCurrentOnboardingVersionCompletedForCountryCode:v9 countryCodeProvenance:v23 date:v22 settings:v19 completion:?];
  (*(v13 + 8))(v18, v14);

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29E68F52C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_29E68F7C0;
  }

  else
  {
    v3 = sub_29E68F63C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E68F63C()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[55];
  v9 = v0[52];
  v10 = v0[49];
  sub_29E751758();

  sub_29E751758();

  v11 = v0[1];

  return v11();
}

uint64_t sub_29E68F718()
{
  v1 = v0[60];
  swift_willThrow();
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[52];
  v7 = v0[49];

  v8 = v0[1];

  return v8();
}

uint64_t sub_29E68F7C0()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[62];
  swift_willThrow();
  sub_29E751758();

  sub_29E751758();
  v7 = v0[66];
  v9 = v0[58];
  v8 = v0[59];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[49];

  v13 = v0[1];

  return v13();
}

void sub_29E68F89C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29E68FAB0();
    v5 = a3;
    sub_29E754488();
  }

  else if (a2)
  {
    sub_29E68FAB0();
    swift_unknownObjectRetain();
    sub_29E754498();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E68F940(uint64_t a1, int a2, void *a3)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_29E68FA44();
    sub_29E754498();
  }

  else if (a3)
  {
    sub_29E68FA44();
    v5 = a3;
    sub_29E754488();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E68F9D0()
{
  v1 = *(v0 + 24);
  sub_29E751758();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  sub_29E751758();

  return swift_deallocClassInstance();
}

void sub_29E68FA44()
{
  if (!qword_2A18586A8)
  {
    sub_29E66A61C();
    v0 = sub_29E7544A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18586A8);
    }
  }
}

void sub_29E68FAB0()
{
  if (!qword_2A18586B8)
  {
    sub_29E68FB20();
    sub_29E66A61C();
    v0 = sub_29E7544A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18586B8);
    }
  }
}

unint64_t sub_29E68FB20()
{
  result = qword_2A18586C0;
  if (!qword_2A18586C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18586C0);
  }

  return result;
}

void sub_29E68FB9C()
{
  if (!qword_2A18586C8)
  {
    sub_29E68FBF4();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18586C8);
    }
  }
}

void sub_29E68FBF4()
{
  if (!qword_2A18586D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18586D0);
    }
  }
}

uint64_t sub_29E68FC58(uint64_t a1)
{
  sub_29E68FBF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E68FCD0()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC6B30], v0);
  v5 = sub_29E74F7E8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E68FE0C()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v5 = sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E68FF54()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v5 = sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void sub_29E6900A8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

void sub_29E69016C()
{
  v52 = sub_29E74F8B8();
  v54 = *(v52 - 8);
  v0 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v52);
  v2 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62F414();
  v3 = sub_29E750108();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v53 = *(v4 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E768780;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = qword_2A1A7FA18;
  v8 = sub_29E754198();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  if (v9)
  {
    v43[1] = v6;
    v10 = v6 + v5;
    v50 = v6 + v5;
    *v10 = v9;
    *(v10 + 8) = 0;
    v11 = *MEMORY[0x29EDC1608];
    v44 = *(v4 + 104);
    v44(v6 + v5, v11, v3);
    v12 = (v6 + v5 + v53);
    v47 = "ARTICLE_HEADLINE";
    v51 = v7;
    sub_29E74F8A8();
    v13 = v3;
    v14 = sub_29E74F7C8();
    v48 = v4 + 104;
    v16 = v15;
    v49 = *(v54 + 8);
    v54 += 8;
    v17 = v52;
    v49(v2, v52);
    *v12 = v14;
    v12[1] = v16;
    v18 = *MEMORY[0x29EDC1610];
    v46 = v13;
    v19 = v44;
    v44(v12, v18, v13);
    v20 = v53;
    v21 = v50 + 2 * v53;
    sub_29E74F8A8();
    v43[2] = 0xD000000000000013;
    v22 = sub_29E74F7C8();
    v24 = v23;
    v25 = v49;
    v49(v2, v17);
    *v21 = v22;
    *(v21 + 8) = v24;
    *(v21 + 16) = 0;
    v45 = *MEMORY[0x29EDC1630];
    v19(v21);
    v26 = v50 + 3 * v20;
    sub_29E74F8A8();
    v27 = sub_29E74F7C8();
    v29 = v28;
    v30 = v52;
    v25(v2, v52);
    *v26 = v27;
    *(v26 + 8) = v29;
    *(v26 + 16) = 0;
    (v19)(v26, v45, v46);
    v43[0] = 4 * v53;
    v31 = v50;
    v32 = v50 + 4 * v53;
    sub_29E74F8A8();
    v33 = sub_29E74F7C8();
    v35 = v34;
    v49(v2, v30);
    *v32 = v33;
    *(v32 + 8) = v35;
    *(v32 + 16) = 0;
    v36 = v45;
    v37 = v46;
    v38 = v44;
    v44(v32, v45, v46);
    v39 = v31 + v43[0] + v53;
    sub_29E74F8A8();
    v40 = sub_29E74F7C8();
    v42 = v41;
    v49(v2, v52);
    *v39 = v40;
    *(v39 + 8) = v42;
    *(v39 + 16) = 0;
    v38(v39, v36, v37);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for SleepApneaFeatureRegulatoryInfoTransformProvider()
{
  result = qword_2A18586D8;
  if (!qword_2A18586D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E690764()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_29E753F68();
}

uint64_t sub_29E690798()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v5 = sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E69090C()
{
  sub_29E753F78();

  return swift_deallocClassInstance();
}

void (*sub_29E690944(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_29E690B8C();
  v4 = sub_29E751B98();

  *a1 = v4;
  return sub_29E6909A4;
}

void sub_29E6909A4(uint64_t a1, char a2)
{
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
  if (a2)
  {
    v2 = *a1;
    v3 = v5;
    sub_29E751BA8();
  }

  else
  {
    v4 = v5;
    sub_29E751BA8();
  }
}

void sub_29E690A34()
{
  v1 = v0;
  v2 = sub_29E690B8C();
  v5 = sub_29E751BB8();

  if (v5)
  {
  }

  else
  {
    v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
    swift_beginAccess();
    sub_29E60BC20(v1 + v3, v6);
    if (v7)
    {
      sub_29E602F60();
      if (swift_dynamicCast())
      {
        if (*(&v8 + 1))
        {
          v13[2] = v10;
          v13[3] = v11;
          v14 = v12;
          v13[0] = v8;
          v13[1] = v9;
          v4 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
          sub_29E61BB78();
          sub_29E751BC8();

          sub_29E691794(v13);
          return;
        }
      }

      else
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        v8 = 0u;
        v9 = 0u;
      }
    }

    else
    {
      sub_29E6916B8(v6);
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0;
    }

    sub_29E691714(&v8);
  }
}

id sub_29E690B8C()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_29E751BD8()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E690C10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView] = 0;
  v16 = type metadata accessor for SleepOnboardingItemCell();
  v28.receiver = v5;
  v28.super_class = v16;
  v17 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E752048();
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446210;
    v22 = sub_29E755178();
    v24 = sub_29E6B9C90(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Initializing", v20, 0xCu);
    sub_29E5FECBC(v21);
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_29E690FFC();

  return v17;
}

void sub_29E690FFC()
{
  v1 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v0 setBackgroundColor_];

  sub_29E74F198();
  v2 = *MEMORY[0x29EDBBAF0];
  sub_29E754B08();
  v3 = [v0 contentView];
  v4 = sub_29E690B8C();
  [v3 addSubview_];

  v5 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView;
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  sub_29E6917E8(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E7678B0;
  v8 = [*&v0[v5] leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v11;
  v12 = [*&v0[v5] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v7 + 40) = v15;
  v16 = [v0 contentView];
  v17 = [v16 trailingAnchor];

  v18 = [*&v0[v5] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 48) = v19;
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [*&v0[v5] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v7 + 56) = v23;
  sub_29E66B09C();
  v24 = sub_29E7543D8();

  [v6 activateConstraints_];
}

id sub_29E691368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E69140C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
  swift_beginAccess();
  return sub_29E60BC20(v1 + v3, a1);
}

uint64_t sub_29E691464(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E690A34();
  return sub_29E6916B8(a1);
}

void (*sub_29E6914D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E691534;
}

void sub_29E691534(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_29E690A34();
  }
}

uint64_t sub_29E691568()
{
  v0 = sub_29E690B8C();
  v1 = sub_29E751B98();

  return v1;
}

void sub_29E69159C()
{
  v0 = sub_29E690B8C();
  sub_29E751BA8();
}

void (*sub_29E6915F0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E690944(v2);
  return sub_29E688830;
}

void sub_29E691660()
{
  if (!qword_2A1856AD0)
  {
    sub_29E602F60();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856AD0);
    }
  }
}

uint64_t sub_29E6916B8(uint64_t a1)
{
  sub_29E691660();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E691714(uint64_t a1)
{
  sub_29E6917E8(0, &qword_2A18586F8, &type metadata for SleepOnboardingItem, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6917E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E691838(uint64_t *a1)
{
  *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections] = &unk_2A24FCE60;
  sub_29E602E20(a1, &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_onboardingManager]);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SleepInternalSettingsViewController();
  v3 = objc_msgSendSuper2(&v7, sel_initWithStyle_, 1);
  v4 = [v3 tableView];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ActionTableViewCell();
    sub_29E693524();
    sub_29E7545D8();

    v6 = [v3 tableView];
    if (v6)
    {
      sub_29E69357C();
      sub_29E7545D8();

      sub_29E5FECBC(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_29E691AC4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_29E693C6C(0, &qword_2A18587B0, &qword_2A1858798, &protocol descriptor for Row, MEMORY[0x29EDC9E90]);
      v2 = swift_allocObject();
      *&result = 2;
      *(v2 + 16) = xmmword_29E762F40;
      *(v2 + 56) = &type metadata for SleepInternalSettingsViewController.LockScreenDebugMode;
      *(v2 + 64) = &off_2A2500990;
      *(v2 + 32) = 0xD000000000000017;
      *(v2 + 40) = 0x800000029E75CF50;
      *(v2 + 96) = &type metadata for SleepInternalSettingsViewController.LockScreenDemoMode;
      *(v2 + 104) = &off_2A2500978;
      *(v2 + 72) = 0xD000000000000016;
      *(v2 + 80) = 0x800000029E75CF70;
    }

    else
    {
      sub_29E693C6C(0, &qword_2A18587B0, &qword_2A1858798, &protocol descriptor for Row, MEMORY[0x29EDC9E90]);
      v4 = swift_allocObject();
      *&result = 1;
      *(v4 + 16) = xmmword_29E762F30;
      *(v4 + 56) = &type metadata for SleepInternalSettingsViewController.UseDemoData;
      *(v4 + 64) = &off_2A25009A8;
      *(v4 + 32) = 0xD000000000000016;
      *(v4 + 40) = 0x800000029E75CF30;
    }
  }

  else
  {

    sub_29E6CC80C(&unk_2A24FCEB0);
  }

  return result;
}

unint64_t sub_29E691CEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections);
  result = sub_29E74EED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v4 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_29E691AC4(*(v4 + result + 32));
  v7 = v6;
  result = sub_29E74EEB8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v7 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_29E602E20(v7 + 40 * result + 32, v19);

  v8 = v20;
  v9 = v21;
  sub_29E601938(v19, v20);
  (*(v9 + 8))(v8, v9);
  v10 = sub_29E754198();

  v11 = sub_29E74EE98();
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

  v13 = [v12 textLabel];
  if (v13)
  {
    v14 = v13;
    v15 = v20;
    v16 = v21;
    sub_29E601938(v19, v20);
    (*(v16 + 16))(v15, v16);
    v17 = sub_29E754198();

    [v14 setText_];
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    [v18 setDelegate_];
  }

  sub_29E5FECBC(v19);
  return v12;
}

unint64_t sub_29E6921E0(void *a1)
{
  v2 = v1;
  v4 = sub_29E74EE98();
  [a1 deselectRowAtIndexPath:v4 animated:1];

  v5 = *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections];
  result = sub_29E74EED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v5 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_29E691AC4(*(v5 + result + 32));
  v8 = v7;
  result = sub_29E74EEB8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < *(v8 + 16))
  {
    sub_29E602E20(v8 + 40 * result + 32, v33);

    sub_29E609CF8(0, &qword_2A1858798);
    sub_29E609CF8(0, &qword_2A18587B8);
    if (swift_dynamicCast())
    {
      sub_29E5FAEE4(v32, v29);
      v9 = sub_29E601938(v29, v30);
      v27 = type metadata accessor for SleepInternalSettingsViewController();
      v28 = &off_2A25005D8;
      v26[0] = v2;
      LOBYTE(v9) = *v9;
      v10 = *sub_29E601938(v26, v27);
      v11 = v2;
      sub_29E6935C8(v10, v9);
      sub_29E5FECBC(v26);
    }

    else
    {
      sub_29E609CF8(0, &qword_2A18587A0);
      if (!swift_dynamicCast())
      {
        return sub_29E5FECBC(v33);
      }

      sub_29E5FAEE4(v32, v29);
      v12 = sub_29E74EE98();
      v13 = [a1 cellForRowAtIndexPath_];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          [v14 setOn_];
          v16 = v30;
          v17 = v31;
          sub_29E601938(v29, v30);
          v18 = [v15 isOn];
          v19 = type metadata accessor for SleepInternalSettingsViewController();
          v27 = v19;
          v28 = &off_2A25005D8;
          v26[0] = v2;
          v20 = *(v17 + 24);
          v21 = v2;
          v20(v18, v26, v16, v17);
          sub_29E5FECBC(v26);
          v22 = v30;
          v23 = v31;
          sub_29E601938(v29, v30);
          v27 = v19;
          v28 = &off_2A25005D8;
          v26[0] = v21;
          v24 = *(v23 + 16);
          v25 = v21;
          LOBYTE(v21) = v24(v26, v22, v23);
          sub_29E5FECBC(v26);
          [v15 setOn_];
        }
      }
    }

    sub_29E5FECBC(v29);
    return sub_29E5FECBC(v33);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_29E692820(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_29E74EEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v34 - v12;
  v14 = [v3 tableView];
  if (!v14)
  {
    goto LABEL_17;
  }

  if (!a1)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 indexPathForCell_];

  if (!v16)
  {
    return;
  }

  sub_29E74EEA8();

  (*(v7 + 32))(v13, v11, v6);
  v17 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections];
  v18 = sub_29E74EED8();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 >= *(v17 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29E691AC4(*(v17 + v18 + 32));
  v20 = v19;
  v21 = sub_29E74EEB8();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v21 >= *(v20 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29E602E20(v20 + 40 * v21 + 32, v38);

  sub_29E609CF8(0, &qword_2A1858798);
  sub_29E609CF8(0, &qword_2A18587A0);
  if (swift_dynamicCast())
  {
    v34 = a1;
    v35 = v6;
    sub_29E5FAEE4(v36, v41);
    v22 = a2;
    v24 = v42;
    v23 = v43;
    sub_29E601938(v41, v42);
    v25 = type metadata accessor for SleepInternalSettingsViewController();
    v39 = v25;
    v40 = &off_2A25005D8;
    v38[0] = v3;
    v26 = *(v23 + 24);
    v27 = v3;
    v26(v22 & 1, v38, v24, v23);
    sub_29E5FECBC(v38);
    v28 = [v27 tableView];
    if (v28)
    {

      v29 = v42;
      v30 = v43;
      sub_29E601938(v41, v42);
      v39 = v25;
      v40 = &off_2A25005D8;
      v38[0] = v27;
      v31 = *(v30 + 16);
      v32 = v27;
      v33 = v31(v38, v29, v30);
      sub_29E5FECBC(v38);
      [v34 setOn_];
      (*(v7 + 8))(v13, v35);
      sub_29E5FECBC(v41);
      return;
    }

    goto LABEL_19;
  }

  (*(v7 + 8))(v13, v6);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_29E693BE4(v36);
}

uint64_t sub_29E692CA8(char a1, void *a2, const char *a3)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E752048();
    v12 = a2;
    v13 = sub_29E752088();
    v14 = sub_29E7546A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_29E6B9C90(0xD00000000000002FLL, 0x800000029E75D000, &v22);
      *(v15 + 12) = 2082;
      v21 = a2;
      v17 = a2;
      sub_29E609CF8(0, &qword_2A1A7BCD0);
      v18 = sub_29E754248();
      v20 = sub_29E6B9C90(v18, v19, &v22);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_29E5ED000, v13, v14, a3, v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

unint64_t sub_29E692F18()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = 0xD000000000000012;
  if (v2 != 4)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2 == 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

id sub_29E692FFC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [objc_opt_self() hksp_internalUserDefaults];
  v6 = [v5 *a4];

  return v6;
}

void sub_29E693060(char a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = [objc_opt_self() hksp_internalUserDefaults];
  [v7 *a5];
}

id sub_29E693190(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ActionTableViewCell();
  v3 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 textLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 tintColor];
      [v7 setTextColor_];
    }
  }

  return v4;
}

id sub_29E69342C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_29E6934D0()
{
  result = qword_2A1858780;
  if (!qword_2A1858780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858780);
  }

  return result;
}

unint64_t sub_29E693524()
{
  result = qword_2A1858788;
  if (!qword_2A1858788)
  {
    type metadata accessor for ActionTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858788);
  }

  return result;
}

unint64_t sub_29E69357C()
{
  result = qword_2A1858790;
  if (!qword_2A1858790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858790);
  }

  return result;
}

uint64_t sub_29E6935C8(void *a1, unsigned __int8 a2)
{
  v24 = type metadata accessor for SleepInternalSettingsViewController();
  v25 = &off_2A25005D8;
  v23[0] = a1;
  v4 = (*sub_29E601938(v23, v24) + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_onboardingManager);
  v5 = v4[4];
  sub_29E601938(v4, v4[3]);
  v6 = a1;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = sub_29E74F5A8();
      v21 = sub_29E692ED4;
      v22 = 0;
      aBlock = MEMORY[0x29EDCA5F8];
      v18 = 1107296256;
      v19 = sub_29E5FE860;
      v20 = &unk_2A2500638;
      v10 = _Block_copy(&aBlock);
      [v9 saveCurrentSleepSettings:0 completion:v10];
    }

    else
    {
      if (a2 != 4)
      {
        v12 = sub_29E74F5A8();
        v13 = [objc_opt_self() hksp_internalUserDefaults];
        v14 = objc_allocWithZone(type metadata accessor for SleepFocusPromotionStore(0));
        v15 = sub_29E70A79C(v12, v13);
        sub_29E70B294();

        return sub_29E5FECBC(v23);
      }

      v9 = sub_29E74F5A8();
      v21 = sub_29E692EE0;
      v22 = 0;
      aBlock = MEMORY[0x29EDCA5F8];
      v18 = 1107296256;
      v19 = sub_29E5FE860;
      v20 = &unk_2A2500610;
      v10 = _Block_copy(&aBlock);
      [v9 saveCurrentSleepEventRecord:0 completion:v10];
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    v7 = sub_29E74F5C8();
    v21 = sub_29E692C90;
    v22 = 0;
    aBlock = MEMORY[0x29EDCA5F8];
    v18 = 1107296256;
    v8 = &unk_2A25006B0;
    goto LABEL_9;
  }

  if (a2 != 1)
  {
    v9 = sub_29E74F5A8();
    v21 = sub_29E692EC8;
    v22 = 0;
    aBlock = MEMORY[0x29EDCA5F8];
    v18 = 1107296256;
    v19 = sub_29E5FE860;
    v20 = &unk_2A2500660;
    v10 = _Block_copy(&aBlock);
    [v9 saveCurrentSleepSchedule:0 completion:v10];
LABEL_12:
    _Block_release(v10);

    return sub_29E5FECBC(v23);
  }

  v7 = sub_29E74F5D8();
  v21 = sub_29E692C9C;
  v22 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v18 = 1107296256;
  v8 = &unk_2A2500688;
LABEL_9:
  v19 = sub_29E5FE860;
  v20 = v8;
  v11 = _Block_copy(&aBlock);
  [v7 resetOnboardingWithCompletion_];
  _Block_release(v11);
  sub_29E751758();
  return sub_29E5FECBC(v23);
}

unint64_t sub_29E693950()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections];
  result = sub_29E74EED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v1 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_29E691AC4(*(v1 + result + 32));
  v4 = v3;
  result = sub_29E74EEB8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_29E602E20(v4 + 40 * result + 32, v16);

  sub_29E609CF8(0, &qword_2A1858798);
  sub_29E609CF8(0, &qword_2A18587A0);
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4(&v15, v12);
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v6 = v13;
    v7 = v14;
    sub_29E601938(v12, v13);
    v11[3] = type metadata accessor for SleepInternalSettingsViewController();
    v11[4] = &off_2A25005D8;
    v11[0] = v0;
    v8 = *(v7 + 16);
    v9 = v0;
    v10 = v8(v11, v6, v7);
    sub_29E5FECBC(v11);
    [v5 setOn_];
    sub_29E5FECBC(v12);
  }

  return sub_29E5FECBC(v16);
}

id sub_29E693B08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_29E754198();
  }

  else
  {
    v3 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for ActionTableViewCell();
  v4 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, 0, v3);

  v5 = v4;
  v6 = [v5 textLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 tintColor];
    [v7 setTextColor_];
  }

  return v5;
}

uint64_t sub_29E693BE4(uint64_t a1)
{
  sub_29E693C6C(0, &qword_2A18587A8, &qword_2A18587A0, &protocol descriptor for SwitchableRow, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E693C6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609CF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E693CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for SleepInternalSettingsViewController.ResetRow(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepInternalSettingsViewController.ResetRow(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29E693E9C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E693EEC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E693EEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E754448();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_29E693F3C()
{
  result = qword_2A18587D0;
  if (!qword_2A18587D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18587D0);
  }

  return result;
}

uint64_t sub_29E693FB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E750508();
  v3 = sub_29E74FEF8();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v5 = sub_29E68A9D0(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:

    sub_29E754D78();

    v11 = sub_29E74FEF8();
    MEMORY[0x29ED96C20](v11);

    result = sub_29E754E48();
    __break(1u);
    return result;
  }

  v8 = *(v2 + 56);
  v9 = sub_29E750528();
  (*(*(v9 - 8) + 16))(a1, v8 + *(*(v9 - 8) + 72) * v5, v9);
}

uint64_t sub_29E69411C()
{
  sub_29E695850();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = (&v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29E695984();
  sub_29E751368();
  sub_29E601938(v23, v23[3]);
  v7 = sub_29E74FB58();
  v8 = [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v6 managedObjectContext:v7 sectionNameKeyPath:0 cacheName:0];

  sub_29E5FECBC(v23);
  sub_29E6958F0();
  v10 = objc_allocWithZone(v9);
  v11 = v8;
  v12 = sub_29E7517E8();
  *v5 = sub_29E695D80;
  v5[1] = 0;
  (*(v2 + 104))(v5, *MEMORY[0x29EDC2718], v1);
  sub_29E695D84();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v12;
  sub_29E750798();
  sub_29E695E18();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  sub_29E750B08();
  sub_29E695F4C(&qword_2A1858818, sub_29E695E18);
  v20 = sub_29E750958();

  return v20;
}

uint64_t sub_29E694398@<X0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E694444(a1);
}

void sub_29E694444(uint64_t a1@<X8>)
{
  v2 = sub_29E74ED88();
  v114 = *(v2 - 8);
  v115 = v2;
  v3 = v114[8];
  MEMORY[0x2A1C7C4A8](v2);
  v113 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v111 = *(v5 - 8);
  v112 = v5;
  v6 = *(v111 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v106 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v106 - v13;
  v15 = sub_29E750C88();
  v16 = sub_29E6EF1A0(v15);

  if (!v16)
  {
    sub_29E752048();
    v37 = sub_29E752088();
    v38 = sub_29E7546A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_29E5ED000, v37, v38, "Feed items not found from mapped data source; returning a blank section!", v39, 2u);
      MEMORY[0x29ED98410](v39, -1, -1);
    }

    (*(v111 + 8))(v9, v112);
    v40 = v113;
    sub_29E74ED78();
    sub_29E74ED48();
    (v114[1])(v40, v115);
    goto LABEL_75;
  }

  v106 = v14;
  v107 = v12;
  v17 = v16 & 0xFFFFFFFFFFFFFF8;
  v108 = a1;
  if (v16 >> 62)
  {
    goto LABEL_71;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_72:

    v101 = v107;
    sub_29E752048();
    v102 = sub_29E752088();
    v103 = sub_29E7546A8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_29E5ED000, v102, v103, "Breathing disturbances feed item not found in feed items; returning a blank section!", v104, 2u);
      MEMORY[0x29ED98410](v104, -1, -1);
    }

    (*(v111 + 8))(v101, v112);
    v105 = v113;
    sub_29E74ED78();
    sub_29E74ED48();
    (v114[1])(v105, v115);
LABEL_75:
    sub_29E750C98();
    return;
  }

LABEL_4:
  v19 = 0;
  v119 = v16 & 0xC000000000000001;
  v20 = v16 + 32;
  v21 = *MEMORY[0x29EDBA850];
  v117 = v18;
  v118 = v21;
  v116 = v16;
  v109 = v16 + 32;
  v110 = v17;
  while (1)
  {
    if (v119)
    {
      v24 = MEMORY[0x29ED976A0](v19, v16);
    }

    else
    {
      if (v19 >= *(v17 + 16))
      {
        goto LABEL_69;
      }

      v24 = *(v20 + 8 * v19);
    }

    v25 = v24;
    v26 = __OFADD__(v19++, 1);
    if (v26)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v18 = sub_29E754C98();
      if (!v18)
      {
        goto LABEL_72;
      }

      goto LABEL_4;
    }

    v27 = sub_29E750078();
    sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
    v28 = MEMORY[0x29ED97000](v118);
    sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v22 = v28;
      v23 = sub_29E754CD8();

      if (v23)
      {
        goto LABEL_23;
      }

      goto LABEL_6;
    }

    v29 = v25;
    if (*(v27 + 16))
    {
      v30 = *(v27 + 40);
      v31 = sub_29E754B78();
      v32 = -1 << *(v27 + 32);
      v33 = v31 & ~v32;
      if ((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        break;
      }
    }

LABEL_17:

    v25 = v29;
    v16 = v116;
    v18 = v117;
    v20 = v109;
    v17 = v110;
LABEL_6:

    if (v19 == v18)
    {
      goto LABEL_72;
    }
  }

  v34 = ~v32;
  while (1)
  {
    v35 = *(*(v27 + 48) + 8 * v33);
    v36 = sub_29E754B88();

    if (v36)
    {
      break;
    }

    v33 = (v33 + 1) & v34;
    if (((*(v27 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v25 = v29;
  v16 = v116;
  v18 = v117;
  v17 = v110;
LABEL_23:
  v118 = v25;
  v41 = [v25 userData];
  if (v41)
  {
    v42 = v41;
    v43 = sub_29E74EB18();
    v45 = v44;

    v46 = sub_29E74EB08();
    v47 = v45;
    v18 = v117;
    sub_29E643D20(v43, v47);
  }

  else
  {
    v46 = 0;
  }

  v48 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v48 || (v49 = [v48 chartModel], v48, !v49))
  {

    v66 = v106;
    sub_29E752048();
    v67 = sub_29E752088();
    v68 = sub_29E7546A8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_29E5ED000, v67, v68, "Breathing disturbances chart model not found in feed item data; returning a blank section!", v69, 2u);
      MEMORY[0x29ED98410](v69, -1, -1);
    }

    (*(v111 + 8))(v66, v112);
    v70 = v113;
    sub_29E74ED78();
    sub_29E74ED48();
    (v114[1])(v70, v115);
    sub_29E750C98();

    return;
  }

  v114 = v49;
  v50 = 0;
  v51 = *MEMORY[0x29EDBA4D8];
  v115 = *MEMORY[0x29EDBA4D8];
  while (2)
  {
    if (v119)
    {
      v54 = MEMORY[0x29ED976A0](v50, v16);
      goto LABEL_35;
    }

    if (v50 >= *(v17 + 16))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v54 = *(v109 + 8 * v50);
LABEL_35:
    v55 = v54;
    v26 = __OFADD__(v50++, 1);
    if (v26)
    {
      goto LABEL_70;
    }

    v56 = sub_29E750078();
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    v57 = MEMORY[0x29ED96FF0](v51);
    v58 = v57;
    if ((v56 & 0xC000000000000001) != 0)
    {
      v52 = v57;
      v53 = sub_29E754CD8();

      if (v53)
      {
        goto LABEL_47;
      }

LABEL_30:

      if (v50 == v18)
      {
        v77 = 0;
        v55 = 0;
        v72 = &off_29F370000;
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  if (!*(v56 + 16) || (v59 = *(v56 + 40), v60 = sub_29E754B78(), v61 = -1 << *(v56 + 32), v62 = v60 & ~v61, ((*(v56 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0))
  {
LABEL_42:

    v16 = v116;
    v18 = v117;
    v17 = v110;
    v51 = v115;
    goto LABEL_30;
  }

  v63 = ~v61;
  while (1)
  {
    v64 = *(*(v56 + 48) + 8 * v62);
    v65 = sub_29E754B88();

    if (v65)
    {
      break;
    }

    v62 = (v62 + 1) & v63;
    if (((*(v56 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_47:
  v71 = [v55 userData];
  v72 = &off_29F370000;
  if (v71)
  {
    v73 = v71;
    v74 = sub_29E74EB18();
    v76 = v75;

    v77 = sub_29E74EB08();
    sub_29E643D20(v74, v76);
  }

  else
  {
    v77 = 0;
  }

LABEL_51:
  v78 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v78)
  {
    goto LABEL_62;
  }

  v79 = [v78 v72[279]];
  if (!v79)
  {
    goto LABEL_61;
  }

  v80 = v79;
  v81 = [v78 v72[279]];
  if (!v81)
  {
    goto LABEL_80;
  }

  v82 = v81;
  v83 = [v81 sixMonthData];

  if (!v83)
  {
LABEL_81:
    __break(1u);
    return;
  }

  v84 = [v83 queryDataObject];

  if (v84)
  {
    v85 = sub_29E74EB18();
    v87 = v86;

    v88 = sub_29E74EB08();
    sub_29E643D20(v85, v87);
  }

  else
  {
    v88 = 0;
  }

  v89 = [objc_allocWithZone(MEMORY[0x29EDC4500]) initWithData_];

  if (v89)
  {
    v90 = v80;
    v91 = v89;
    v119 = v91;
    v92 = v90;
    goto LABEL_65;
  }

  v78 = v80;
LABEL_61:

LABEL_62:
  v93 = [objc_allocWithZone(MEMORY[0x29EDC4498]) init];
  if (!v93)
  {
    goto LABEL_78;
  }

  v90 = v93;
  v94 = [objc_allocWithZone(MEMORY[0x29EDC4500]) init];
  if (!v94)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v91 = v94;
  v119 = 0;
  v92 = 0;
LABEL_65:

  sub_29E695E78(0, &qword_2A185A510, sub_29E61BFEC, MEMORY[0x29EDC9E90]);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_29E762F30;
  *(v95 + 56) = &type metadata for BreathingDisturbancesSharingChartItem;
  *(v95 + 64) = sub_29E69576C();
  v96 = v114;
  *(v95 + 32) = v114;
  *(v95 + 40) = v90;
  *(v95 + 48) = v91;
  v97 = v96;
  v98 = v90;
  v99 = v91;
  sub_29E750C98();

  v100 = v119;
}

uint64_t sub_29E694FC4()
{
  v0 = sub_29E7509D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7509C8();
  v5 = sub_29E750988();
  (*(v1 + 8))(v4, v0);

  return v5;
}

uint64_t sub_29E695114()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E750DD8();
  sub_29E7547D8();
}

id sub_29E6951E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v34 = a3;
  v8 = MEMORY[0x29EDC9C68];
  sub_29E695E78(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v31 - v11;
  sub_29E695E78(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v31 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v31 - v21;
  if (!a2)
  {
    v23 = sub_29E74ED28();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    goto LABEL_6;
  }

  v32 = a4;
  sub_29E750628();
  v23 = sub_29E74ED28();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v20, 1, v23) != 1)
  {
    (*(v24 + 32))(v22, v20, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    a4 = v32;
    goto LABEL_11;
  }

  v31 = a5;
  sub_29E750608();
  v25 = sub_29E74E838();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_29E695EDC(v12, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
    a5 = v31;
    a4 = v32;
LABEL_6:
    sub_29E74ED28();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    goto LABEL_9;
  }

  sub_29E74E7F8();
  (*(v26 + 8))(v12, v25);
  (*(v24 + 56))(v22, 0, 1, v23);
  a5 = v31;
  a4 = v32;
LABEL_9:
  sub_29E74ED28();
  if ((*(*(v23 - 8) + 48))(v20, 1, v23) != 1)
  {
    sub_29E695EDC(v20, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  }

LABEL_11:
  sub_29E6172A0(v22, v17);
  sub_29E74ED28();
  v27 = *(v23 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v17, 1, v23) != 1)
  {
    v28 = sub_29E74EC98();
    (*(v27 + 8))(v17, v23);
  }

  v29 = [v33 breathingDisturbancesRemoteInteractiveChartWithBreathingDisturbancesModel:v34 sleepApneaEventModel:a4 sleepApneaEventChartData:a5 displayDate:v28];

  sub_29E695EDC(v22, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  return v29;
}

uint64_t sub_29E69571C(uint64_t a1)
{
  v2 = sub_29E6957C0();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29E69576C()
{
  result = qword_2A18587D8;
  if (!qword_2A18587D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18587D8);
  }

  return result;
}

unint64_t sub_29E6957C0()
{
  result = qword_2A18587E0;
  if (!qword_2A18587E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18587E0);
  }

  return result;
}

void sub_29E695850()
{
  if (!qword_2A18587E8)
  {
    sub_29E6958F0();
    sub_29E695F4C(&qword_2A1858800, sub_29E6958F0);
    v0 = sub_29E7513E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18587E8);
    }
  }
}

void sub_29E6958F0()
{
  if (!qword_2A18587F0)
  {
    sub_29E750088();
    sub_29E695F4C(&qword_2A18587F8, MEMORY[0x29EDC3C88]);
    v0 = sub_29E7517D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18587F0);
    }
  }
}

void *sub_29E695984()
{
  v0 = MEMORY[0x29EDB98E8];
  sub_29E695E78(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v24 - v3;
  sub_29E750088();
  sub_29E695E78(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v5 = sub_29E74FB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v24 = xmmword_29E762F30;
  *(v9 + 16) = xmmword_29E762F30;
  (*(v6 + 104))(v9 + v8, *MEMORY[0x29EDC3710], v5);
  sub_29E67905C(0, &qword_2A1A7BCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(v10 + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(v10 + 40) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v11 = sub_29E74E838();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_29E67905C(0, &qword_2A1858820);
  v12 = swift_allocObject();
  *(v12 + 16) = v24;
  v13 = sub_29E751388();
  v14 = sub_29E754638();

  *(v12 + 32) = v14;
  v15 = MEMORY[0x29ED92970](v9, v10, v4, v12);

  sub_29E695EDC(v4, &unk_2A18594A0, v0);
  v16 = v15;
  v17 = sub_29E750068();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E764160;
  v19 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v20 = sub_29E754198();
  v21 = [v19 initWithKey:v20 ascending:0];

  *(v18 + 32) = v21;
  sub_29E609B5C(0, &qword_2A1858470, 0x29EDBA0F0);
  v22 = sub_29E7543D8();

  [v17 setSortDescriptors_];

  return v17;
}

void sub_29E695D84()
{
  if (!qword_2A1858808)
  {
    sub_29E6958F0();
    sub_29E695F4C(&qword_2A1858800, sub_29E6958F0);
    v0 = sub_29E7507A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858808);
    }
  }
}

void sub_29E695E18()
{
  if (!qword_2A1858810)
  {
    sub_29E695D84();
    v0 = sub_29E750AF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858810);
    }
  }
}

void sub_29E695E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E695EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E695E78(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E695F4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E695F94()
{
  if (!qword_2A1858830)
  {
    sub_29E695E18();
    sub_29E695F4C(&qword_2A1858818, sub_29E695E18);
    v0 = sub_29E750768();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858830);
    }
  }
}

id sub_29E696028()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_animatedSymbolView;
  type metadata accessor for SleepApneaOnboardingSetupCompleteAnimatedSymbolView();
  *&v0[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v7 = *(v2 + 8);
  v7(v5, v1);
  v8 = sub_29E754198();

  sub_29E74F8A8();
  sub_29E74F7C8();
  v7(v5, v1);
  v9 = sub_29E754198();

  v10 = type metadata accessor for SleepApneaOnboardingSetupCompleteViewController();
  v14.receiver = v0;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, sel_initWithTitle_detailText_icon_contentLayout_, v8, v9, 0, 2);

  v12 = v11;
  sub_29E696B18();

  return v12;
}

void sub_29E696298()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SleepApneaOnboardingSetupCompleteViewController();
  v29.receiver = v1;
  v29.super_class = v12;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v8 + 8))(v11, v7);
  v13 = sub_29E754198();

  v14 = *MEMORY[0x29EDC6AC0];
  v28 = v3[13];
  v26 = v14;
  v28(v6, v14, v2);
  sub_29E754238();
  v27 = v3[1];
  v27(v6, v2);
  v15 = sub_29E754198();

  v16 = [v1 navigationItem];
  [v16 setHidesBackButton_];

  v17 = [v1 headerView];
  [v17 setAllowFullWidthIcon_];

  v18 = [v1 &selRef_occurrence];
  v19 = v14;
  v20 = v28;
  v28(v6, v19, v2);
  sub_29E754238();
  v21 = v27;
  v27(v6, v2);
  v22 = sub_29E754198();

  [v18 setTitleAccessibilityIdentifier_];

  v23 = [v1 headerView];
  v20(v6, v26, v2);
  sub_29E754238();
  v21(v6, v2);
  v24 = sub_29E754198();

  [v23 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_29E6967D4()
{
  sub_29E6979D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_29E7544D8();
    v7 = sub_29E7544F8();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v8 = v0;
    v9 = sub_29E7544B8();
    v10 = swift_allocObject();
    v11 = MEMORY[0x29EDCA390];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v8;
    v10[6] = &off_2A2500A68;
    sub_29E6E4804(0, 0, v4, &unk_29E767EC0, v10);

    return sub_29E751758();
  }

  return result;
}

void sub_29E696950(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E696B18()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_animatedSymbolView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 setClipsToBounds_];
    [v2 addSubview_];
    v4 = objc_opt_self();
    sub_29E6163F8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29E7655E0;
    v6 = [v3 centerXAnchor];
    v7 = [v2 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v3 centerYAnchor];
    v10 = [v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    sub_29E66B09C();
    v12 = sub_29E7543D8();

    [v4 activateConstraints_];
  }
}

uint64_t sub_29E696D50()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_29E696E74(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29E751758();
}

id sub_29E696EC0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v10 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolColor;
  *&v4[v10] = [objc_opt_self() hk_respiratoryKeyColor];
  v11 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration;
  v12 = objc_opt_self();
  v13 = [v12 configurationWithPointSize_];
  v14 = [v12 configurationPreferringMulticolor];
  v15 = [v13 configurationByApplyingConfiguration_];

  *&v4[v11] = v15;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SleepApneaOnboardingSetupCompleteAnimatedSymbolView();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E6972F0();

  return v16;
}

id sub_29E6970F8(void *a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v4 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolColor;
  *&v1[v4] = [objc_opt_self() hk_respiratoryKeyColor];
  v5 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration;
  v6 = objc_opt_self();
  v7 = [v6 configurationWithPointSize_];
  v8 = [v6 configurationPreferringMulticolor];
  v9 = [v7 configurationByApplyingConfiguration_];

  *&v1[v5] = v9;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SleepApneaOnboardingSetupCompleteAnimatedSymbolView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_29E6972F0();
  }

  return v11;
}

void sub_29E6972F0()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView];
  v2 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration];
  v3 = sub_29E754198();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v1 setImage_];
  [v1 setTintColor_];
  [v1 setContentMode_];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  sub_29E6163F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E7678B0;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  sub_29E66B09C();
  v19 = sub_29E7543D8();

  [v5 activateConstraints_];
}

void sub_29E697600()
{
  v1 = v0;
  v2 = sub_29E753CD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E753CB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView);
  v13 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration);
  v14 = sub_29E754198();
  v15 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v15)
  {
    sub_29E753CA8();
    sub_29E753CC8();
    sub_29E697980();
    sub_29E7545C8();

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }
}

id sub_29E6978C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_29E697980()
{
  result = qword_2A1858860;
  if (!qword_2A1858860)
  {
    sub_29E753CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858860);
  }

  return result;
}

void sub_29E6979D8()
{
  if (!qword_2A1859CD0)
  {
    sub_29E7544F8();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859CD0);
    }
  }
}

uint64_t type metadata accessor for SleepRoomViewController()
{
  result = qword_2A18588C0;
  if (!qword_2A18588C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E697A7C()
{
  result = sub_29E7513C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_29E697B70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a2;
  v65 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_29E752098();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EE78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74ED28();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 occurrence];
  v60 = [v20 isSingleDayOverride];

  sub_29E74ED18();
  v21 = sub_29E74EC98();
  (*(v16 + 8))(v19, v15);
  v22 = *&v4[qword_2A18588B0];
  v23 = [v22 currentCalendar];
  sub_29E74EE28();

  v24 = sub_29E74EE08();
  (*(v11 + 8))(v14, v10);
  v25 = [a1 generateOverrideOccurrenceForCurrentDate:v21 gregorianCalendar:v24];

  sub_29E752048();
  v26 = a1;
  v27 = v25;
  v61 = v9;
  v28 = sub_29E752088();
  v29 = sub_29E7546C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v30 = 136446723;
    v31 = sub_29E755178();
    ObjectType = v22;
    v33 = sub_29E6B9C90(v31, v32, aBlock);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2081;
    v34 = v26;
    v35 = [v34 description];
    v36 = sub_29E7541D8();
    v38 = v37;

    v39 = sub_29E6B9C90(v36, v38, aBlock);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2081;
    v40 = v27;
    v41 = [v40 description];
    v42 = sub_29E7541D8();
    v44 = v43;

    v45 = v42;
    v22 = ObjectType;
    v46 = sub_29E6B9C90(v45, v44, aBlock);

    *(v30 + 24) = v46;
    _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] Presenting view to edit %{private}s as an override %{private}s", v30, 0x20u);
    v47 = v58;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v47, -1, -1);
    MEMORY[0x29ED98410](v30, -1, -1);
  }

  (*(v62 + 8))(v61, v63);
  sub_29E74FA38();
  v48 = v27;
  v49 = sub_29E698610();
  v67 = sub_29E74F478();
  v68 = MEMORY[0x29EDC6A58];
  aBlock[0] = v49;
  sub_29E69D748();
  v50 = [v22 currentCalendar];
  sub_29E74EE28();

  v51 = sub_29E74F9F8();
  sub_29E69F928(&qword_2A1858A80, type metadata accessor for SleepRoomViewController);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v52 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v53 = swift_allocObject();
  v54 = v64;
  v55 = v65;
  v53[2] = v64;
  v53[3] = v55;
  v53[4] = v51;
  v68 = sub_29E69F970;
  v69 = v53;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  v67 = &unk_2A2500C10;
  v56 = _Block_copy(aBlock);
  sub_29E5F51BC(v54);
  v57 = v51;

  [v4 presentViewController:v52 animated:1 completion:v56];
  _Block_release(v56);
}

uint64_t sub_29E6981B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v34 = sub_29E74EE78();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED28();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E698610();
  aBlock[0] = v12;
  v13 = sub_29E74F478();
  v14 = sub_29E74F548();
  v35 = v14;

  v15 = qword_2A1858878;
  aBlock[0] = *&v2[qword_2A1858878];
  v16 = sub_29E74F538();
  v36 = v16;
  v37 = v11;
  sub_29E74ED18();
  v17 = sub_29E74EC98();
  v18 = *&v2[qword_2A18588B0];
  v19 = [v18 currentCalendar];
  sub_29E74EE28();

  v20 = sub_29E74EE08();
  (*(v4 + 8))(v7, v34);
  v21 = [v16 generateOverrideOccurrenceFromTemplateForCurrentDate:v17 gregorianCalendar:v20 schedule:v14];

  sub_29E74FA38();
  v22 = *&v3[v15];
  v43 = v13;
  v44 = MEMORY[0x29EDC6A58];
  aBlock[0] = v22;
  v23 = v21;
  v24 = v22;
  sub_29E69D748();
  v25 = [v18 currentCalendar];
  sub_29E74EE28();

  v26 = sub_29E74F9F8();
  sub_29E69F928(&qword_2A1858A80, type metadata accessor for SleepRoomViewController);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v27 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v28 = swift_allocObject();
  v30 = v38;
  v29 = v39;
  v28[2] = v38;
  v28[3] = v29;
  v28[4] = v26;
  v44 = sub_29E69F9E0;
  v45 = v28;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  v43 = &unk_2A2500C60;
  v31 = _Block_copy(aBlock);
  sub_29E5F51BC(v30);
  v32 = v26;

  [v3 presentViewController:v27 animated:1 completion:v31];
  _Block_release(v31);

  return (*(v40 + 8))(v37, v41);
}

uint64_t sub_29E6985CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_29E698610()
{
  v1 = qword_2A1858878;
  v2 = *(v0 + qword_2A1858878);
  if (v2)
  {
    v3 = *(v0 + qword_2A1858878);
  }

  else
  {
    v4 = sub_29E69883C();
    v5 = sub_29E639044(v4);

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_29E698688()
{
  v1 = qword_2A1858880;
  v2 = *(v0 + qword_2A1858880);
  if (v2)
  {
    v3 = *(v0 + qword_2A1858880);
  }

  else
  {
    sub_29E74F418();
    v4 = v0;
    sub_29E69883C();
    v5 = sub_29E74F398();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_29E698700@<X0>(uint64_t *a1@<X8>)
{
  v3 = qword_2A1858890;
  swift_beginAccess();
  result = sub_29E6A127C(v1 + v3, &v11);
  if (*(&v12 + 1) == 1)
  {
    sub_29E6A1060(&v11, sub_29E6A10C0);
    v5 = *(v1 + qword_2A1869340);
    if (sub_29E754618())
    {
      v6 = sub_29E74F4C8();
      sub_29E69883C();
      v7 = v5;
      v8 = sub_29E74F4B8();
      v9 = MEMORY[0x29EDC6A70];
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v8 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    a1[3] = v6;
    a1[4] = v9;
    *a1 = v8;
    sub_29E69FA08(a1, &v11);
    swift_beginAccess();
    sub_29E6A12E0(&v11, v1 + v3);
    return swift_endAccess();
  }

  else
  {
    v10 = v12;
    *a1 = v11;
    *(a1 + 1) = v10;
    a1[4] = v13;
  }

  return result;
}

id sub_29E69883C()
{
  v1 = qword_2A1858898;
  v2 = *(v0 + qword_2A1858898);
  if (v2)
  {
    v3 = *(v0 + qword_2A1858898);
  }

  else
  {
    v4 = *(v0 + qword_2A1869340);
    v5 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v6 = v4;
    v7 = sub_29E754198();
    v8 = [v5 initWithIdentifier:v7 healthStore:v6 options:10];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_29E69890C()
{
  v1 = v0;
  v2 = qword_2A18588A0;
  v3 = *(v0 + qword_2A18588A0);
  v4 = v3;
  if (v3 == 1)
  {
    sub_29E698700(v14);
    v5 = v15;
    if (v15)
    {
      v6 = sub_29E601938(v14, v15);
      v7 = *(v5 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x2A1C7C4A8](v6);
      v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10);
      sub_29E6A0D88(v14, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
      v4 = sub_29E74F5C8();
      (*(v7 + 8))(v10, v5);
    }

    else
    {
      sub_29E6A0D88(v14, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
      v4 = 0;
    }

    v11 = *(v1 + v2);
    *(v1 + v2) = v4;
    swift_unknownObjectRetain();
    sub_29E6A1144(v11);
  }

  sub_29E6A126C(v3);
  return v4;
}

id sub_29E698AE4()
{
  v1 = sub_29E74EE78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_2A18588A8;
  v7 = *(v0 + qword_2A18588A8);
  if (v7)
  {
    v8 = *(v0 + qword_2A18588A8);
  }

  else
  {
    v9 = [*(v0 + qword_2A18588B0) currentCalendar];
    sub_29E74EE28();

    v10 = objc_allocWithZone(MEMORY[0x29EDC4658]);
    v11 = v0;
    v12 = sub_29E74EE08();
    v13 = [v10 initWithCalendar_];

    (*(v2 + 8))(v5, v1);
    v14 = *(v11 + v6);
    *(v11 + v6) = v13;
    v8 = v13;

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

id sub_29E698C50()
{
  sub_29E754A68();
  v0 = sub_29E754198();

  return v0;
}

void sub_29E698C9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_29E69FA98();
}

uint64_t sub_29E698D48()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E752098();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v30 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E751FA8();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E751FE8();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E751FB8();
  sub_29E751F98();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_29E751FD8();
  v14 = sub_29E754958();
  v15 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v13, v14, v15, "SleepRoomViewDidLoad", "", v12, 2u);
  sub_29E6990F0(v0);
  v16 = sub_29E754948();
  v17 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v13, v16, v17, "SleepRoomViewDidLoad", "", v12, 2u);

  MEMORY[0x29ED98410](v12, -1, -1);
  (*(v4 + 8))(v7, v29);
  (*(v8 + 8))(v11, v28);
  v18 = v30;
  sub_29E752048();
  v19 = sub_29E752088();
  v20 = sub_29E7546C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136446210;
    v23 = sub_29E755178();
    v25 = sub_29E6B9C90(v23, v24, &v33);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] View did load", v21, 0xCu);
    sub_29E5FECBC(v22);
    MEMORY[0x29ED98410](v22, -1, -1);
    MEMORY[0x29ED98410](v21, -1, -1);
  }

  return (*(v31 + 8))(v18, v32);
}

void sub_29E6990F0(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6A1154(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v99 = &v97 - v5;
  sub_29E6A0DE4();
  v100 = v6;
  v98 = *(v6 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v97 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A0E58();
  v103 = v9;
  v102 = *(v9 - 8);
  v10 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v101 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_29E7513C8();
  v115 = *(v116 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v116);
  v114 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_29E750528();
  v14 = *(v129 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v129);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A1154(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90], v2);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = &v97 - v20;
  sub_29E7544C8();
  v105 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *&a1[qword_2A1869340];
  v23 = [v22 profileIdentifier];
  v24 = sub_29E750698();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  MEMORY[0x29ED931F0](v23, v21);

  sub_29E6A0FEC(v21, &qword_2A1858AE0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68], sub_29E6A1154);
  sub_29E754838();
  sub_29E601938(&v126, v127);
  v25 = sub_29E74FB58();
  v26 = [v22 profileIdentifier];
  sub_29E693FB8(v17);
  sub_29E7504E8();
  (*(v14 + 8))(v17, v129);
  v27 = type metadata accessor for SleepRoomViewController();
  sub_29E69F928(&qword_2A1858AE8, type metadata accessor for SleepRoomViewController);
  v104 = v27;
  v28 = sub_29E751978();

  sub_29E5FECBC(&v126);
  if (v28)
  {
    swift_beginAccess();
    sub_29E752708();
    swift_endAccess();
  }

  v129 = *&a1[qword_2A1858870];
  v29 = sub_29E698610();
  sub_29E698700(&v126);
  v30 = *&a1[qword_2A18588B0];
  v112 = sub_29E698AE4();
  v31 = *&a1[qword_2A1869360];
  v106 = *(v115 + 16);
  v107 = a1;
  v32 = v114;
  v33 = v116;
  v106(v114, &a1[qword_2A1858888], v116);
  v34 = objc_opt_self();
  v110 = v31;
  v109 = [v34 hksp_internalUserDefaults];
  v124 = sub_29E74F478();
  v125 = MEMORY[0x29EDC6A58];
  v108 = v124;
  v111 = v29;
  v123 = v29;
  v113 = type metadata accessor for SleepRoomDataProvider();
  v35 = objc_allocWithZone(v113);
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_cancellables] = MEMORY[0x29EDCA1A0];
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher] = 0;
  v36 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_restorationUserActivity;
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_restorationUserActivity] = 0;
  v37 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent];
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  *v37 = 0;
  v38 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepOnboardingComponent];
  *(v38 + 12) = 0;
  *(v38 + 4) = 0u;
  *(v38 + 5) = 0u;
  *(v38 + 2) = 0u;
  *(v38 + 3) = 0u;
  *v38 = xmmword_29E768E60;
  *(v38 + 1) = 0u;
  v39 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent];
  *v39 = xmmword_29E768E60;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  v40 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent];
  *v40 = xmmword_29E768E60;
  *(v40 + 2) = 0;
  v41 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent];
  *(v41 + 6) = 0;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  *v41 = xmmword_29E768E60;
  v42 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleComponent];
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  *v42 = xmmword_29E768E60;
  *(v42 + 1) = 0u;
  v43 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleDataComponent];
  *v43 = 0xD000000000000011;
  *(v43 + 1) = 0x800000029E75D880;
  v44 = &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepDurationGoalComponent];
  *v44 = 0xD000000000000011;
  *(v44 + 1) = 0x800000029E75D8A0;
  v45 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___favoritesComponent;
  v46 = sub_29E751348();
  v47 = &v35[v45];
  v48 = v112;
  (*(*(v46 - 8) + 56))(v47, 1, 1, v46);
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType] = v129;
  sub_29E602E20(&v123, &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider]);
  v49 = v30;
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_gregorianCalendarCache] = v30;
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dateCache] = v48;
  sub_29E69FA08(&v126, &v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_onboardingManager]);
  *&v35[v36] = v31;
  v50 = v109;
  v106(&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_context], v32, v33);
  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_userDefaults] = v50;
  sub_29E69FA08(&v126, v121);
  if (v122)
  {
    sub_29E601938(v121, v122);
    v51 = v110;
    v52 = v110;
    v53 = v111;
    v54 = v111;
    v55 = v129;
    v56 = v30;
    v57 = v48;
    v58 = v50;
    v59 = sub_29E74F5A8();
    sub_29E5FECBC(v121);
    v60 = v53;
  }

  else
  {
    v51 = v110;
    v61 = v110;
    v62 = v111;
    v63 = v111;
    v64 = v129;
    v65 = v49;
    v66 = v48;
    v67 = v50;
    sub_29E6A0D88(v121, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    v59 = 0;
    v60 = v62;
  }

  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore] = v59;
  sub_29E69FA08(&v126, v121);
  v68 = v107;
  if (v122)
  {
    sub_29E601938(v121, v122);
    v69 = sub_29E74F5C8();
    sub_29E5FECBC(v121);
  }

  else
  {
    sub_29E6A0D88(v121, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    v69 = 0;
  }

  *&v35[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability] = v69;
  v120.receiver = v35;
  v120.super_class = v113;
  v70 = objc_msgSendSuper2(&v120, sel_init);
  sub_29E69FA08(&v126, &v118);
  if (v119)
  {
    sub_29E5FAEE4(&v118, v121);
    sub_29E601938(v121, v122);
    v129 = sub_29E74F5A8();
    v71 = sub_29E6C8728();
    sub_29E74F4D8();
    sub_29E7527B8();

    v72 = v118;
    v73 = [objc_opt_self() sharedBehavior];
    if (!v73)
    {
      __break(1u);
      return;
    }

    v74 = v73;
    v75 = [v73 hksp_supportsSleep];

    LOBYTE(v118) = v75;
    BYTE1(v118) = v72;
    BYTE2(v118) = v71 & 1;
    sub_29E6A0F8C(0, &qword_2A18572A0);
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v79 = sub_29E7527E8();
    v80 = *&v70[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher];
    *&v70[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher] = v79;

    v81 = *&v70[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability];
    if (v81)
    {
      sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
      swift_unknownObjectRetain();
      v82 = sub_29E754908();
      [v81 registerObserver:v70 queue:v82];

      sub_29E751758();
    }

    *&v118 = sub_29E74F4D8();
    sub_29E6A0F8C(0, &qword_2A1A7BF60);
    sub_29E63FCDC();
    v83 = v97;
    sub_29E752988();

    v84 = [objc_opt_self() mainRunLoop];
    *&v118 = v84;
    v85 = sub_29E754BB8();
    v86 = v99;
    (*(*(v85 - 8) + 56))(v99, 1, 1, v85);
    sub_29E609B5C(0, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E69F928(&unk_2A1858AD0, sub_29E6A0DE4);
    sub_29E6A0F24();
    v87 = v101;
    v88 = v100;
    sub_29E752968();
    sub_29E6A0FEC(v86, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68], sub_29E6A1154);
    (*(v98 + 8))(v83, v88);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_29E69F928(&qword_2A1858B00, sub_29E6A0E58);
    v89 = v70;
    v90 = v103;
    sub_29E7529A8();

    (*(v102 + 8))(v87, v90);
    swift_beginAccess();
    sub_29E752708();
    swift_endAccess();

    v91 = v129;
    [v129 addObserver_];

    sub_29E6C8238();
    (*(v115 + 8))(v114, v116);
    sub_29E6A0D88(&v126, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E5FECBC(v121);
  }

  else
  {

    (*(v115 + 8))(v114, v116);
    v92 = MEMORY[0x29EDC6A80];
    sub_29E6A0D88(&v126, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E6A0D88(&v118, &qword_2A1A7CF90, &unk_2A1A7CFA0, v92, sub_29E609CF8);
  }

  sub_29E5FECBC(&v123);
  v127 = v113;
  v128 = sub_29E69F928(&unk_2A1858AF0, type metadata accessor for SleepRoomDataProvider);
  v126 = v70;
  sub_29E751A28();
  v117.receiver = v68;
  v117.super_class = v104;
  objc_msgSendSuper2(&v117, sel_viewDidLoad);
  v93 = [v68 navigationItem];
  [v93 setLargeTitleDisplayMode_];

  sub_29E69A23C();
  v94 = sub_29E69883C();
  [v94 addObserver_];

  [*&v68[qword_2A18588A8] registerObserver_];
  sub_29E69AA6C();
  v95 = [*&v68[qword_2A1858898] widgetManager];
  if (v95)
  {
    v96 = v95;
    [v95 reloadWidgetsWithReason_];
  }

  else
  {
  }
}

void sub_29E69A23C()
{
  v1 = v0;
  v54 = sub_29E74F698();
  v2 = *(v54 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v54);
  v53 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E751438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[qword_2A1869340];
  v11 = sub_29E754628();
  v12 = MEMORY[0x29EDCA190];
  v13 = MEMORY[0x29EDCA190];
  if (v11)
  {
    v13 = sub_29E6DB0F0(0, 1, 1, MEMORY[0x29EDCA190]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_29E6DB0F0((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v13[v15 + 32] = 0;
  }

  sub_29E751428();
  v16 = sub_29E751418();
  (*(v6 + 8))(v9, v5);
  if (v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_29E6DB0F0(0, *(v13 + 2) + 1, 1, v13);
    }

    v18 = *(v13 + 2);
    v17 = *(v13 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v13 = sub_29E6DB0F0((v17 > 1), v18 + 1, 1, v13);
    }

    *(v13 + 2) = v19;
    v13[v18 + 32] = 1;
    if (v18 != -1)
    {
      goto LABEL_11;
    }

LABEL_15:

    return;
  }

  v19 = *(v13 + 2);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v19 == 1)
  {
    v20 = [v1 navigationItem];
    if (*(v13 + 2))
    {
      v21 = v13[32];

      v22 = sub_29E69EFA4(v1, v21);
    }

    else
    {

      v22 = 0;
    }

    [v20 setRightBarButtonItem_];
  }

  else
  {
    v52 = v1;
    v56 = v12;
    sub_29E754E08();
    v50 = sub_29E7544C8();
    v49 = sub_29E609B5C(0, &unk_2A1858B20, 0x29EDC7908);
    v44[1] = "TapToRadarButton";
    v48 = *MEMORY[0x29EDC6AD0];
    v44[0] = 0x800000029E75D8C0;
    v46 = (v2 + 8);
    v47 = (v2 + 104);
    v23 = 32;
    v45 = xmmword_29E762F30;
    v51 = v13;
    v24 = v53;
    do
    {
      v36 = v13[v23];
      v55 = sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v36)
      {
        v25 = sub_29E754198();
        v26 = v44[0];
        v27 = 0xD000000000000010;
      }

      else
      {
        if (qword_2A1A7D6F0 != -1)
        {
          swift_once();
        }

        sub_29E74E9D8();
        v25 = sub_29E754198();
        v26 = 0xED00006E6F747475;
        v27 = 0x4261746144646441;
      }

      v28 = [objc_opt_self() systemImageNamed_];

      v29 = swift_allocObject();
      *(v29 + 16) = v52;
      *(v29 + 24) = v36;
      swift_unknownObjectRetain();
      v30 = sub_29E754BA8();
      v31 = v54;
      (*v47)(v24, v48, v54);
      sub_29E6A121C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v32 = swift_allocObject();
      *(v32 + 16) = v45;
      *(v32 + 32) = v27;
      *(v32 + 40) = v26;
      v33 = v30;
      sub_29E754258();

      (*v46)(v24, v31);
      v34 = sub_29E754198();

      [v33 setAccessibilityIdentifier_];

      sub_29E754DE8();
      v35 = *(v56 + 16);
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      ++v23;
      --v19;
      v13 = v51;
    }

    while (v19);

    if (v56 >> 62)
    {
      sub_29E609B5C(0, &qword_2A1858B30, 0x29EDC7B68);

      sub_29E754E68();
    }

    else
    {

      sub_29E755038();
      sub_29E609B5C(0, &qword_2A1858B30, 0x29EDC7B68);
    }

    v37 = v52;

    sub_29E609B5C(0, &qword_2A1858B38, 0x29EDC7B60);
    v38 = sub_29E754AD8();
    v39 = [v37 navigationItem];
    sub_29E609B5C(0, &unk_2A1858B40, 0x29EDC7940);
    v40 = sub_29E754198();
    v41 = [objc_opt_self() systemImageNamed_];

    v42 = v38;
    v43 = sub_29E754778();
    [v39 setRightBarButtonItem_];
  }
}

uint64_t sub_29E69AA6C()
{
  v1 = v0;
  v69[1] = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v2 = sub_29E752098();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750698();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v62 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v62 - v14;
  sub_29E609B5C(0, &qword_2A1858B08, 0x29EDC68A0);
  v68 = qword_2A1869358;
  v16 = *&v0[qword_2A1869358];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 unknownProvenance];
  LOBYTE(v17) = sub_29E754B88();

  if (v17)
  {
    v20 = [v1 parentViewController];
    if (v20)
    {
      v21 = v20;
      sub_29E754848();

      (*(v6 + 32))(v15, v13, v5);
      v22 = v67;
      sub_29E752048();
      (*(v6 + 16))(v10, v15, v5);
      v23 = sub_29E752088();
      v24 = sub_29E7546C8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69[0] = v63;
        *v25 = 136446466;
        v26 = sub_29E755178();
        LODWORD(ObjectType) = v24;
        v28 = sub_29E6B9C90(v26, v27, v69);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2082;
        sub_29E69F928(&qword_2A1858B18, MEMORY[0x29EDC1D90]);
        v29 = sub_29E754FD8();
        v31 = v30;
        v32 = v5;
        v33 = *(v6 + 8);
        v34 = v10;
        v35 = v32;
        v33(v34, v32);
        v36 = sub_29E6B9C90(v29, v31, v69);

        *(v25 + 14) = v36;
        _os_log_impl(&dword_29E5ED000, v23, ObjectType, "[%{public}s] Coming from presentation %{public}s", v25, 0x16u);
        v37 = v63;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v37, -1, -1);
        MEMORY[0x29ED98410](v25, -1, -1);

        (*(v65 + 8))(v67, v66);
      }

      else
      {

        v38 = v5;
        v33 = *(v6 + 8);
        v39 = v10;
        v35 = v38;
        v33(v39, v38);
        (*(v65 + 8))(v22, v66);
      }

      v40 = *MEMORY[0x29EDC67E8];
      v41 = sub_29E71237C();
      v42 = [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v40 presentation:v41];

      v33(v15, v35);
      v43 = *&v1[v68];
      *&v1[v68] = v42;
    }
  }

  v44 = sub_29E69890C();
  if (v44)
  {
    v69[0] = 0;
    v45 = [v44 isCurrentOnboardingVersionCompletedWithError_];
    sub_29E751758();
    if (v45)
    {
      v46 = v69[0];
      v47 = [v45 BOOLValue];

      goto LABEL_12;
    }

    v48 = v69[0];
    v49 = sub_29E74EA48();

    swift_willThrow();
  }

  v47 = 0;
LABEL_12:
  v50 = sub_29E69883C();
  v51 = COERCE_DOUBLE(sub_29E7546F8());
  v53 = v52;

  v54 = [*&v1[qword_2A1858898] analyticsManager];
  if (v53)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v51;
  }

  v56 = [objc_allocWithZone(MEMORY[0x29EDC6888]) initWithProvenanceInfo:*&v1[v68] isOnboarded:v47 secondsSinceAlarmDismissed:v55];
  [v54 trackEvent_];

  v57 = *&v1[qword_2A1858870];
  v69[0] = v1;
  v58 = *MEMORY[0x29EDC43C0];
  v59 = *&v1[qword_2A1869340];
  type metadata accessor for SleepRoomViewController();
  sub_29E69F928(&qword_2A1858B10, type metadata accessor for SleepRoomViewController);
  result = sub_29E751AC8();
  v61 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29E69B134(char a1, SEL *a2, const char *a3)
{
  v6 = v3;
  swift_getObjectType();
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepRoomViewController();
  v24.receiver = v6;
  v24.super_class = v13;
  objc_msgSendSuper2(&v24, *a2, a1 & 1);
  sub_29E752048();
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    v18 = sub_29E755178();
    v20 = sub_29E6B9C90(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_29E5ED000, v14, v15, a3, v16, 0xCu);
    sub_29E5FECBC(v17);
    MEMORY[0x29ED98410](v17, -1, -1);
    MEMORY[0x29ED98410](v16, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

void sub_29E69B324(void *a1, uint64_t a2, char a3, uint64_t a4, SEL *a5, const char *a6)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1;
  sub_29E69B134(a3, a5, a6);
}

void sub_29E69B40C()
{
  v1 = v0;
  v2 = sub_29E750528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v28 - v8;
  v10 = [v0 userActivity];
  [v10 invalidate];

  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v11 = sub_29E754768();
  sub_29E693FB8(v9);
  sub_29E7504E8();
  v12 = *(v3 + 8);
  v12(v9, v2);
  v13 = sub_29E754198();

  [v11 setTitle_];

  [v11 setEligibleForSearch_];
  [v11 setEligibleForPrediction_];
  [v11 setEligibleForHandoff_];
  v14 = sub_29E754828();
  if (v14)
  {
    v15 = v14;
    v34 = [objc_opt_self() sharedInstanceForHealthStore_];
    if (v34)
    {
      v29 = v15;
      v30 = v11;
      v31 = v1;
      v28 = [objc_allocWithZone(MEMORY[0x29EDB94F0]) init];
      sub_29E693FB8(v7);
      v16 = sub_29E750518();
      v12(v7, v2);
      v35 = MEMORY[0x29EDCA190];
      if (v16 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
      {
        v18 = 0;
        v32 = v16 & 0xFFFFFFFFFFFFFF8;
        v33 = v16 & 0xC000000000000001;
        while (1)
        {
          if (v33)
          {
            v19 = MEMORY[0x29ED976A0](v18, v16);
          }

          else
          {
            if (v18 >= *(v32 + 16))
            {
              goto LABEL_19;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          sub_29E7544C8();
          sub_29E7544B8();
          sub_29E754468();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v22 = [v34 displayTypeForObjectType_];
          if (v22)
          {
            v23 = v22;
            v24 = [v22 localization];
            v25 = [v24 keywords];

            v26 = sub_29E754568();
            sub_29E6DA86C(v26);
          }

          else
          {
          }

          ++v18;
          if (v21 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:

      v27 = sub_29E7543D8();

      v15 = v28;
      [v28 setKeywords_];

      v11 = v30;
      [v30 setContentAttributeSet_];

      v1 = v31;
    }
  }

  [v1 setUserActivity_];
}

void sub_29E69B894(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  sub_29E69B970(v5, 0);
}

void sub_29E69B970(void *a1, int a2)
{
  v3 = v2;
  v67 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_29E7503E8();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29E752098();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v68);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v60 - v13;
  sub_29E752048();
  v15 = sub_29E752088();
  v16 = sub_29E7546C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v61 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v71[0] = v19;
    *v18 = 136446210;
    v20 = sub_29E755178();
    v60 = v12;
    v22 = sub_29E6B9C90(v20, v21, v71);
    v23 = v68;
    v12 = v60;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Restoring sleep room view controller", v18, 0xCu);
    sub_29E5FECBC(v19);
    MEMORY[0x29ED98410](v19, -1, -1);
    v24 = v18;
    v25 = v61;
    MEMORY[0x29ED98410](v24, -1, -1);

    v26 = *(v25 + 8);
    v27 = v14;
    v28 = v23;
  }

  else
  {

    v26 = *(v8 + 8);
    v27 = v14;
    v28 = v68;
  }

  v62 = v26;
  v26(v27, v28);
  v29 = *&v3[qword_2A1869360];
  *&v3[qword_2A1869360] = a1;
  v30 = a1;

  v71[0] = v30;
  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v31 = sub_29E74F918();
  v32 = *&v3[qword_2A1869358];
  *&v3[qword_2A1869358] = v31;

  v33 = type metadata accessor for SleepRoomViewController();
  v74.receiver = v3;
  v74.super_class = v33;
  objc_msgSendSuper2(&v74, sel_restoreUserActivityState_, v30);
  v34 = [v30 userInfo];
  v35 = MEMORY[0x29EDCA178];
  if (!v34)
  {
    goto LABEL_11;
  }

  v36 = v34;
  v37 = sub_29E754078();

  v38 = v63;
  v39 = v64;
  v40 = v65;
  (*(v64 + 104))(v63, *MEMORY[0x29EDC1540], v65);
  v41 = sub_29E7503D8();
  v43 = v42;
  (*(v39 + 8))(v38, v40);
  v69 = v41;
  v70 = v43;
  sub_29E754D08();
  if (!*(v37 + 16) || (v44 = sub_29E68AB20(v71), (v45 & 1) == 0))
  {

    sub_29E68CE9C(v71);
LABEL_11:
    v72 = 0u;
    v73 = 0u;
    goto LABEL_12;
  }

  sub_29E606008(*(v37 + 56) + 32 * v44, &v72);
  sub_29E68CE9C(v71);

  if (!*(&v73 + 1))
  {
LABEL_12:
    sub_29E6A0FEC(&v72, &qword_2A1856C10, v35 + 8, MEMORY[0x29EDC9C68], sub_29E6A121C);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v46 = v71[0];
    v47 = v71[1];
    sub_29E750648();
    v48 = MEMORY[0x29ED92F10](v46, v47);
    v49 = qword_2A1869348;
    swift_beginAccess();
    v50 = *&v3[v49];
    *&v3[v49] = v48;
  }

LABEL_13:
  if (v67)
  {
    sub_29E752048();
    v51 = sub_29E752088();
    v52 = sub_29E7546C8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v72 = v54;
      *v53 = 136446210;
      v55 = sub_29E755178();
      v57 = sub_29E6B9C90(v55, v56, &v72);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_29E5ED000, v51, v52, "[%{public}s] Tracking room entry", v53, 0xCu);
      sub_29E5FECBC(v54);
      MEMORY[0x29ED98410](v54, -1, -1);
      MEMORY[0x29ED98410](v53, -1, -1);
    }

    v62(v12, v68);
    sub_29E69AA6C();
  }

  v58 = sub_29E69883C();
  v59 = [v58 widgetManager];

  if (v59)
  {
    [v59 reloadWidgetsWithReason_];
  }
}

void sub_29E69BFA0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E7503E8();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v37 = v2;
    v16 = v15;
    v40[0] = v15;
    *v14 = 136446210;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, v40);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Saving sleep restoration state", v14, 0xCu);
    sub_29E5FECBC(v16);
    v20 = v16;
    v2 = v37;
    MEMORY[0x29ED98410](v20, -1, -1);
    v21 = v14;
    v1 = v38;
    MEMORY[0x29ED98410](v21, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v22 = [v1 userActivity];
  if (v22)
  {
    v23 = v22;
    sub_29E6A1154(0, &unk_2A1858B50, sub_29E6A11B8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F30;
    v25 = v39;
    (*(v39 + 104))(v5, *MEMORY[0x29EDC1540], v2);
    v26 = sub_29E7503D8();
    v28 = v27;
    (*(v25 + 8))(v5, v2);
    v40[0] = v26;
    v40[1] = v28;
    sub_29E754D08();
    sub_29E6A121C(0, &qword_2A1858B60, MEMORY[0x29EDB9B70], MEMORY[0x29EDC9C68]);
    *(inited + 96) = v29;
    v30 = qword_2A1869348;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31)
    {
      v32 = v31;
      v33 = sub_29E7505D8();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0xF000000000000000;
    }

    *(inited + 72) = v33;
    *(inited + 80) = v35;
    sub_29E68B464(inited);
    swift_setDeallocating();
    sub_29E6A1060(inited + 32, sub_29E6A11B8);
    v36 = sub_29E754068();

    [v23 addUserInfoEntriesFromDictionary_];

    [v1 submitUserActivityForRestoration_];
  }
}

id sub_29E69C3D0()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6A121C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E764160;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() keyCommandWithInput:v1 modifierFlags:0x100000 action:sel_addData_];

  *(v0 + 32) = v2;
  sub_29E609B5C(0, &unk_2A1858AA8, 0x29EDC7AF0);
  v3 = sub_29E7543D8();

  return v3;
}

uint64_t sub_29E69C56C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

void sub_29E69C5F8()
{
  v1 = qword_2A1858888;
  v2 = sub_29E7513C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_29E6A1060(v0 + qword_2A1858890, sub_29E6A10C0);
  sub_29E6A1144(*(v0 + qword_2A18588A0));

  v3 = *(v0 + qword_2A1869350);
  sub_29E751758();

  v4 = *(v0 + qword_2A1869368);

  v5 = *(v0 + qword_2A18588B8);
}

id sub_29E69C774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E69C7AC(uint64_t a1)
{
  v2 = qword_2A1858888;
  v3 = sub_29E7513C8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  sub_29E6A1060(a1 + qword_2A1858890, sub_29E6A10C0);
  sub_29E6A1144(*(a1 + qword_2A18588A0));

  v4 = *(a1 + qword_2A1869350);
  sub_29E751758();

  v5 = *(a1 + qword_2A1869368);

  v6 = *(a1 + qword_2A18588B8);
}

void *sub_29E69C934()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *v0;
  v2 = qword_2A1869348;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;

  return v3;
}

void sub_29E69C9F0(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v1;
  v4 = qword_2A1869348;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_29E69CAB8(uint64_t a1))(uint64_t a1)
{
  sub_29E7544C8();
  *(a1 + 24) = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v1;
  swift_beginAccess();
  return sub_29E69CB7C;
}

uint64_t sub_29E69CB7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
}

uint64_t sub_29E69CBB4()
{
  v1 = (*v0 + qword_2A1869350);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_29E69CC08(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + qword_2A1869350);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_29E751758();
}

uint64_t (*sub_29E69CC6C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_29E69CD2C()
{
  v1 = v0;
  sub_29E698700(&v6);
  if (!v7)
  {
    return sub_29E6A0D88(&v6, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  }

  sub_29E5FAEE4(&v6, v8);
  sub_29E602E20(v8, &v6);
  v2 = objc_allocWithZone(type metadata accessor for SleepInternalSettingsViewController());
  sub_29E691838(&v6);
  v4 = v3;
  [v1 showViewController:v3 sender:v1];

  return sub_29E5FECBC(v8);
}

void sub_29E69CE10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E69CEDC(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v2 = a1;
  sub_29E69FC08();

  sub_29E751758();
}

uint64_t sub_29E69CFB0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v6 = sub_29E752098();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v10 = v9;
  v11 = a1;
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v10;
    v26 = v12;
    v15 = v14;
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 136446466;
    v16 = sub_29E755178();
    v29 = v6;
    v18 = sub_29E6B9C90(v16, v17, &v31);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2114;
    *(v15 + 14) = v11;
    v19 = v25;
    *v25 = v11;
    v20 = v11;
    v21 = v26;
    _os_log_impl(&dword_29E5ED000, v26, v13, "[%{public}s] Responding to sleep event %{public}@", v15, 0x16u);
    sub_29E6A0D88(v19, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738, sub_29E609B5C);
    MEMORY[0x29ED98410](v19, -1, -1);
    v22 = v27;
    sub_29E5FECBC(v27);
    MEMORY[0x29ED98410](v22, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);

    (*(v30 + 8))(v28, v29);
  }

  else
  {

    (*(v30 + 8))(v10, v6);
  }

  v23 = sub_29E751A08();
  MEMORY[0x2A1C7C4A8](v23);
  *(&v25 - 2) = a3;
  *(&v25 - 1) = v11;
  sub_29E609CF8(0, &qword_2A1858A90);
  sub_29E7510B8();
}

uint64_t sub_29E69D310(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[3];
  v7 = a1[4];
  sub_29E601938(a1, v6);
  (*(v7 + 8))(a2, a3, v6, v7);
}

void sub_29E69D3F8(void *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  v11[2] = a4;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = ObjectType;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_29E607C50(sub_29E6A0D60, v11);
}

uint64_t sub_29E69D4B0(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *sub_29E601938(a1, a1[3]);
  sub_29E65E508();
}

uint64_t sub_29E69D56C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E74E858();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74E848();
  v10 = a3;
  v11 = a1;
  v12 = sub_29E751A08();
  MEMORY[0x2A1C7C4A8](v12);
  *(&v14 - 2) = v10;
  *(&v14 - 1) = v9;
  sub_29E609CF8(0, &qword_2A1858A88);
  sub_29E7510B8();

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_29E69D748()
{
  swift_getObjectType();
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E698700(&v14);
  if (v15)
  {
    sub_29E5FAEE4(&v14, v16);
    sub_29E601938(v16, v16[3]);
    v5 = sub_29E74F598();
    sub_29E5FECBC(v16);
  }

  else
  {
    sub_29E6A0D88(&v14, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E752048();
    v6 = sub_29E752088();
    v7 = sub_29E7546A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136446210;
      v10 = sub_29E755178();
      v12 = sub_29E6B9C90(v10, v11, v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] Asked for paired watch support without an onboarding manager", v8, 0xCu);
      sub_29E5FECBC(v9);
      MEMORY[0x29ED98410](v9, -1, -1);
      MEMORY[0x29ED98410](v8, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v5 = 0;
  }

  return v5 & 1;
}

void sub_29E69D984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v40 = sub_29E74F488();
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E74F4A8();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E752098();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74ED28();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E698700(v43);
  if (v43[3])
  {
    v33 = a1;
    v34 = a2;
    sub_29E602E20(v43, v42);
    sub_29E6A0D88(v43, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E601938(v42, v42[3]);
    v19 = *MEMORY[0x29EDBA750];
    v3 = v2;
    v20 = sub_29E74F5E8();
    sub_29E5FECBC(v42);
    if (v20)
    {
      v21 = sub_29E698610();
      v43[0] = v21;
      sub_29E74ED18();
      sub_29E74F478();
      v22 = sub_29E74F578();
      (*(v15 + 8))(v18, v14);

      if (v22)
      {
        sub_29E697B70(v22, v33, v34);
      }

      else
      {
        sub_29E6981B4(v33, v34);
      }

      return;
    }
  }

  else
  {
    sub_29E6A0D88(v43, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  }

  sub_29E752048();
  v23 = sub_29E752088();
  v24 = sub_29E7546C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43[0] = v26;
    *v25 = 136446210;
    v27 = sub_29E755178();
    v29 = sub_29E6B9C90(v27, v28, v43);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_29E5ED000, v23, v24, "[%{public}s] Ignoring request to set override occurrence as the user hasn't onboarded", v25, 0xCu);
    sub_29E5FECBC(v26);
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v25, -1, -1);
  }

  (*(v10 + 8))(v13, v36);
  v30 = *(v3 + qword_2A1869358);
  (*(v37 + 104))(v38, *MEMORY[0x29EDC6A60], v40);
  v31 = v30;
  v32 = v35;
  sub_29E74F498();
  sub_29E6EE80C(v32, 0, 0);
  (*(v39 + 8))(v32, v41);
}

id sub_29E69DE90()
{
  sub_29E698700(v17);
  v1 = sub_29E698610();
  v2 = sub_29E698688();
  v3 = *&v0[qword_2A18588B0];
  v16[3] = sub_29E74F478();
  v16[4] = MEMORY[0x29EDC6A58];
  v16[0] = v1;
  v4 = type metadata accessor for ManageScheduleViewController();
  v5 = objc_allocWithZone(v4);
  sub_29E602E20(v16, &v5[qword_2A18691A0]);
  v6 = &v5[qword_2A18691A8];
  *v6 = v0;
  *(v6 + 1) = &off_2A2500AB8;
  *&v5[qword_2A18691B0] = v2;
  *&v5[qword_2A18691B8] = v3;
  sub_29E69FA08(v17, &v5[qword_2A18691C0]);
  v7 = objc_allocWithZone(MEMORY[0x29EDC79E0]);
  v8 = v1;
  v9 = v0;
  v10 = v2;
  v11 = v3;
  v12 = [v7 init];
  v15.receiver = v5;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_initWithCollectionViewLayout_, v12);

  sub_29E6A0D88(v17, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  sub_29E5FECBC(v16);
  return v13;
}

void sub_29E69E02C()
{
  v1 = *v0;
  v2 = *(*v0 + qword_2A1869340);
  if (sub_29E754618())
  {
    v3 = sub_29E69DE90();
    [v1 showViewController:v3 sender:v1];
  }
}

uint64_t sub_29E69E0B0()
{
  v0 = sub_29E751FF8();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_29E751FA8();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E751FE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E751FB8();
  v13 = sub_29E751FD8();
  sub_29E752008();
  v20 = sub_29E754948();
  if (sub_29E754BC8())
  {

    sub_29E752038();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x29EDCA4A8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v13, v20, v17, "SleepRoomDidModifySleepSchedule", v15, v16, 2u);
    MEMORY[0x29ED98410](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

void sub_29E69E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[qword_2A1869358];
  v9 = HKSPAnalyticsScheduleChangeContext();
  sub_29E754078();

  v10 = sub_29E69883C();
  v11 = sub_29E754068();

  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = ObjectType;
  v15[4] = sub_29E69F5FC;
  v15[5] = v12;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1107296256;
  v15[2] = sub_29E5FE860;
  v15[3] = &unk_2A2500B20;
  v13 = _Block_copy(v15);
  v14 = v3;
  sub_29E5F51BC(a2);

  [v10 saveCurrentSleepSchedule:a1 options:0 context:v11 completion:v13];

  _Block_release(v13);
}

uint64_t sub_29E69E554(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a6;
  v11 = sub_29E753CF8();
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_29E753D18();
  v14 = *(v81 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v81);
  v78 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E752098();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v71 - v22;
  v24 = MEMORY[0x29EDCA190];
  if (a1)
  {
    sub_29E752048();
    v25 = sub_29E752088();
    v26 = sub_29E7546C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v74 = v14;
      v29 = v28;
      aBlock = v28;
      *v27 = 136446210;
      v30 = sub_29E755178();
      v75 = v11;
      v32 = a2;
      v33 = a4;
      v34 = a5;
      v35 = sub_29E6B9C90(v30, v31, &aBlock);
      v11 = v75;

      *(v27 + 4) = v35;
      a5 = v34;
      a4 = v33;
      a2 = v32;
      v24 = MEMORY[0x29EDCA190];
      _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Successfully saved sleep schedule", v27, 0xCu);
      sub_29E5FECBC(v29);
      v36 = v29;
      v14 = v74;
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);
    }

    (*(v76 + 8))(v23, v77);
    v37 = v78;
  }

  else
  {
    v73 = a3;
    sub_29E752048();
    v38 = a2;
    v39 = sub_29E752088();
    v40 = sub_29E7546A8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v74 = v14;
      v43 = v42;
      aBlock = v42;
      *v41 = 136446466;
      v44 = sub_29E755178();
      v72 = a4;
      v46 = sub_29E6B9C90(v44, v45, &aBlock);
      v75 = v11;
      v47 = v46;

      *(v41 + 4) = v47;
      *(v41 + 12) = 2082;
      v82 = a2;
      v48 = a2;
      sub_29E69F650(0, &qword_2A1858A60, &qword_2A1A7BCD0, MEMORY[0x29EDC9F18], sub_29E609CF8);
      v49 = sub_29E7541F8();
      v51 = sub_29E6B9C90(v49, v50, &aBlock);
      a4 = v72;

      *(v41 + 14) = v51;
      v11 = v75;
      _os_log_impl(&dword_29E5ED000, v39, v40, "[%{public}s] Failed to save sleep schedule with error: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      v52 = v43;
      v14 = v74;
      MEMORY[0x29ED98410](v52, -1, -1);
      MEMORY[0x29ED98410](v41, -1, -1);
    }

    (*(v76 + 8))(v21, v77);
    v53 = [objc_opt_self() sharedBehavior];
    v37 = v78;
    if (v53)
    {
      v54 = a5;
      v55 = v53;
      v56 = [v53 isAppleInternalInstall];

      a5 = v54;
      if (v56)
      {
        sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
        v77 = sub_29E754908();
        v57 = swift_allocObject();
        v58 = v73;
        *(v57 + 16) = v73;
        *(v57 + 24) = a2;
        v87 = sub_29E69F648;
        v88 = v57;
        aBlock = MEMORY[0x29EDCA5F8];
        v84 = 1107296256;
        v85 = sub_29E6A1514;
        v86 = &unk_2A2500BC0;
        v59 = _Block_copy(&aBlock);
        v60 = a2;
        v61 = v58;
        sub_29E753D08();
        v82 = v24;
        sub_29E69F928(&qword_2A18569F8, MEMORY[0x29EDCA248]);
        sub_29E6A1154(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29E609A80();
        v62 = v80;
        a5 = v54;
        sub_29E754C58();
        v63 = v77;
        MEMORY[0x29ED97230](0, v37, v62, v59);
        _Block_release(v59);

        v64 = v62;
        v24 = MEMORY[0x29EDCA190];
        (*(v79 + 8))(v64, v11);
        (*(v14 + 8))(v37, v81);
      }
    }
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v65 = sub_29E754908();
  v66 = swift_allocObject();
  v66[2] = a4;
  v66[3] = a5;
  v66[4] = a2;
  v87 = sub_29E69F620;
  v88 = v66;
  aBlock = MEMORY[0x29EDCA5F8];
  v84 = 1107296256;
  v85 = sub_29E6A1514;
  v86 = &unk_2A2500B70;
  v67 = _Block_copy(&aBlock);
  v68 = a2;
  sub_29E5F51BC(a4);
  sub_29E753D08();
  v82 = v24;
  sub_29E69F928(&qword_2A18569F8, MEMORY[0x29EDCA248]);
  sub_29E6A1154(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E609A80();
  v69 = v80;
  sub_29E754C58();
  MEMORY[0x29ED97230](0, v37, v69, v67);
  _Block_release(v67);

  (*(v79 + 8))(v69, v11);
  (*(v14 + 8))(v37, v81);
}

void sub_29E69EDDC(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &unk_2A1858A70, 0x29EDC7928);
  v2 = sub_29E754928();
  [a1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_29E69EEDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(a3);
  }
}

id sub_29E69EFA4(uint64_t a1, char a2)
{
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E754198();
  v10 = [objc_opt_self() systemImageNamed_];

  ObjectType = swift_getObjectType();
  v12 = &selRef_tapToRadar_;
  v37[3] = ObjectType;
  v37[0] = a1;
  if ((a2 & 1) == 0)
  {
    v12 = &selRef_addData_;
  }

  v13 = *v12;
  if (ObjectType)
  {
    v14 = ObjectType;
    v15 = sub_29E601938(v37, ObjectType);
    v35 = &v35;
    v36 = v4;
    v16 = v13;
    v17 = a2;
    v18 = *(v14 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x2A1C7C4A8](v15);
    v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    swift_unknownObjectRetain();
    v22 = sub_29E755018();
    (*(v18 + 8))(v21, v14);
    a2 = v17;
    v13 = v16;
    v4 = v36;
    sub_29E5FECBC(v37);
  }

  else
  {
    swift_unknownObjectRetain();
    v22 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithImage:v10 style:0 target:v22 action:v13];

  sub_29E751758();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC6AD0], v4);
  sub_29E6A121C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E762F30;
  v25 = 0x800000029E75D8C0;
  v26 = a2 & 1;
  v27 = 0x4261746144646441;
  if (a2)
  {
    v27 = 0xD000000000000010;
  }

  else
  {
    v25 = 0xED00006E6F747475;
  }

  *(v24 + 32) = v27;
  *(v24 + 40) = v25;
  v28 = v23;
  sub_29E754258();

  (*(v5 + 8))(v8, v4);
  v29 = sub_29E754198();

  [v28 setAccessibilityIdentifier_];

  if (v26)
  {
    v30 = v28;
  }

  else
  {
    v31 = qword_2A1A7D6F0;
    v32 = v28;
    if (v31 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  v33 = sub_29E754198();

  [v28 setAccessibilityValue_];

  return v28;
}

uint64_t sub_29E69F424(void *a1, void *a2, char a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = &selRef_tapToRadar_;
  if ((a3 & 1) == 0)
  {
    v6 = &selRef_addData_;
  }

  v7 = *v6;
  swift_unknownObjectRetain();
  [a2 performSelector:v7 withObject:{objc_msgSend(a1, sel_sender)}];
  sub_29E751758();
  v8 = a2;
}

void sub_29E69F548(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E65FD28(a1);
}

uint64_t sub_29E69F608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E69F650(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E754BD8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_29E69F6AC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = qword_2A1858870;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *&v3[v8] = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
  *&v3[qword_2A1858878] = 0;
  *&v3[qword_2A1858880] = 0;
  v9 = &v3[qword_2A1858890];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_29E768E70;
  *&v3[qword_2A1858898] = 0;
  *&v3[qword_2A18588A0] = 1;
  *&v3[qword_2A18588A8] = 0;
  v10 = qword_2A18588B0;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v11 = qword_2A1869348;
  *&v4[qword_2A1869348] = 0;
  v12 = &v4[qword_2A1869350];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[qword_2A1869360] = 0;
  *&v4[qword_2A1869368] = MEMORY[0x29EDCA1A0];
  *&v4[qword_2A18588B8] = 0;
  *&v4[qword_2A1869340] = sub_29E751388();
  *&v4[qword_2A1869338] = a1;
  v13 = qword_2A1858888;
  v14 = sub_29E7513C8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a2, v14);
  v16 = a1;
  v17 = sub_29E751358();
  swift_beginAccess();
  v18 = *&v4[v11];
  *&v4[v11] = v17;

  *&v4[qword_2A1869358] = a3;
  v19 = objc_allocWithZone(MEMORY[0x29EDC79E0]);
  v20 = a3;
  v21 = [v19 init];
  v24.receiver = v4;
  v24.super_class = type metadata accessor for SleepRoomViewController();
  v22 = objc_msgSendSuper2(&v24, sel_initWithCollectionViewLayout_, v21);

  (*(v15 + 8))(a2, v14);
  return v22;
}

uint64_t sub_29E69F928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E69F998()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E69FA08(uint64_t a1, uint64_t a2)
{
  sub_29E69F650(0, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E69FA98()
{
  v1 = v0;
  v2 = qword_2A1858870;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(v0 + v2) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
  *(v0 + qword_2A1858878) = 0;
  *(v0 + qword_2A1858880) = 0;
  v3 = v0 + qword_2A1858890;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = xmmword_29E768E70;
  *(v0 + qword_2A1858898) = 0;
  *(v0 + qword_2A18588A0) = 1;
  *(v0 + qword_2A18588A8) = 0;
  v4 = qword_2A18588B0;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  *(v1 + qword_2A1869348) = 0;
  v5 = (v1 + qword_2A1869350);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + qword_2A1869360) = 0;
  *(v1 + qword_2A1869368) = MEMORY[0x29EDCA1A0];
  *(v1 + qword_2A18588B8) = 0;
  sub_29E754E48();
  __break(1u);
}

void sub_29E69FC08()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[qword_2A1869340];
  if (sub_29E754628())
  {
    v14 = sub_29E754828();
    if (v14)
    {
      v15 = v14;
      v35 = ObjectType;
      v16 = v4;
      v17 = [objc_opt_self() sharedInstanceForHealthStore_];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = [v17 displayTypeForObjectType_];

      if (v19)
      {
        v20 = [v1 resolvedHealthToolbox];
        sub_29E74ED18();
        v21 = sub_29E74EC98();
        (*(v9 + 8))(v12, v8);
        v22 = [v19 wd:v15 addDataViewControllerWithHealthStore:v20 healthToolBox:v21 initialStartDate:?];

        type metadata accessor for SleepRoomViewController();
        sub_29E69F928(&unk_2A1858A98, type metadata accessor for SleepRoomViewController);
        sub_29E750978();

        return;
      }

      v4 = v16;
    }

    sub_29E752048();
    v23 = v1;
    v24 = sub_29E752088();
    v25 = sub_29E7546B8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v36 = v29;
      *v26 = 136446466;
      v30 = sub_29E755178();
      v32 = sub_29E6B9C90(v30, v31, &v36);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2114;
      v33 = *&v23[qword_2A1858870];
      *(v26 + 14) = v33;
      *v28 = v33;
      v34 = v33;
      _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s] Unable to load AddDataViewController for %{public}@", v26, 0x16u);
      sub_29E6A0D88(v28, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738, sub_29E609B5C);
      MEMORY[0x29ED98410](v28, -1, -1);
      sub_29E5FECBC(v29);
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v26, -1, -1);

      (*(v35 + 8))(v7, v3);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }
}