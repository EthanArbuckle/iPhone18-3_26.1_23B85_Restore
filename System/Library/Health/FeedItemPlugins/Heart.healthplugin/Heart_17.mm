void sub_29D85EE7C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B68F0);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B68F8);

  sub_29D85FA58(a1 + qword_2A17B6900);
  v4 = *(a1 + qword_2A17B6908);
}

uint64_t sub_29D85EEF0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B68F0);
  v4 = *(v2 + qword_2A17B68F0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D85EF0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_29D85EF94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D9383D8();
}

uint64_t sub_29D85F018(uint64_t a1)
{
  *&v58 = a1;
  v1 = sub_29D933A58();
  v2 = *(v1 - 8);
  v59 = v1;
  v60 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0CE8 != -1)
  {
    swift_once();
  }

  v54 = xmmword_2A17B68A0;
  v7 = qword_2A17B0CF0;
  sub_29D935E88();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_2A17B68B8;
  v53 = qword_2A17B68B0;
  type metadata accessor for BloodPressureJournalTypeSelectionCell();
  v9 = sub_29D85F874(&qword_2A17B6940, type metadata accessor for BloodPressureJournalTypeSelectionCell);
  sub_29D935E88();
  v10 = v58;

  v56 = v9;
  v11 = sub_29D9350D8();
  v13 = v12;
  *&v67 = 0xD000000000000026;
  *(&v67 + 1) = 0x800000029D968E00;
  v55 = 0x800000029D968E00;
  sub_29D933A48();
  v14 = sub_29D933A18();
  v16 = v15;
  v17 = *(v60 + 8);
  v60 += 8;
  v57 = v17;
  v17(v6, v59);
  MEMORY[0x29ED6A240](v14, v16);

  *&v62 = v11;
  *(&v62 + 1) = v13;
  v63 = v67;
  v64 = v54;
  *&v65 = v53;
  *(&v65 + 1) = v8;
  *&v66 = sub_29D85F854;
  *(&v66 + 1) = v10;
  if (qword_2A17B0CF8 != -1)
  {
    swift_once();
  }

  v18 = *algn_2A17B68C8;
  *(&v54 + 1) = qword_2A17B68C0;
  v19 = qword_2A17B0D00;
  sub_29D935E88();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = *algn_2A17B68D8;
  *&v54 = qword_2A17B68D0;
  v21 = v58;

  sub_29D935E88();
  v22 = sub_29D9350D8();
  v24 = v23;
  *&v67 = 0xD000000000000026;
  *(&v67 + 1) = v55;
  sub_29D933A48();
  v25 = sub_29D933A18();
  v27 = v26;
  v28 = v6;
  v56 = v6;
  v29 = v57;
  v57(v28, v59);
  MEMORY[0x29ED6A240](v25, v27);

  v30 = v67;
  *&v67 = v22;
  *(&v67 + 1) = v24;
  v68 = v30;
  *&v69 = *(&v54 + 1);
  *(&v69 + 1) = v18;
  *&v70 = v54;
  *(&v70 + 1) = v20;
  *&v71 = sub_29D85F8BC;
  *(&v71 + 1) = v21;
  sub_29D7E9BC4();
  v31 = swift_allocObject();
  v58 = xmmword_29D93DDB0;
  *(v31 + 16) = xmmword_29D93DDB0;
  sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D93F680;
  *(v32 + 56) = &type metadata for BloodPressureJournalTypeSelectionItem;
  v33 = sub_29D79D3FC();
  *(v32 + 64) = v33;
  v34 = swift_allocObject();
  *(v32 + 32) = v34;
  v35 = v65;
  v34[3] = v64;
  v34[4] = v35;
  v34[5] = v66;
  v36 = v63;
  v34[1] = v62;
  v34[2] = v36;
  *(v32 + 96) = &type metadata for BloodPressureJournalTypeSelectionItem;
  *(v32 + 104) = v33;
  v37 = swift_allocObject();
  *(v32 + 72) = v37;
  v38 = v70;
  v37[3] = v69;
  v37[4] = v38;
  v37[5] = v71;
  v39 = v68;
  v37[1] = v67;
  v37[2] = v39;
  *(v31 + 32) = v32;
  v61[10] = 0x3C53447961727241;
  v61[11] = 0xE800000000000000;
  sub_29D85F9A8(&v62, v61);
  sub_29D85F9A8(&v67, v61);
  v40 = v56;
  sub_29D933A48();
  v41 = sub_29D933A18();
  v43 = v42;
  v29(v40, v59);
  MEMORY[0x29ED6A240](v41, v43);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v44 = sub_29D9351D8();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_29D9351E8();
  sub_29D935588();

  sub_29D7E9A60();
  sub_29D85F874(&qword_2A17B5500, sub_29D7E9A60);
  v47 = sub_29D9355C8();

  sub_29D935F88();
  sub_29D85F948(0, &qword_2A17B1088, &qword_2A17B1090);
  v48 = swift_allocObject();
  *(v48 + 16) = v58;
  v49 = sub_29D85F874(&qword_2A17B5508, sub_29D7E9B2C);
  *(v48 + 32) = v47;
  *(v48 + 40) = v49;

  sub_29D935FA8();
  v50 = sub_29D936D88();
  sub_29D85FA04(&v62);
  sub_29D85FA04(&v67);

  return v50;
}

void sub_29D85F6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D85F73C()
{
  result = qword_2A17B6928;
  if (!qword_2A17B6928)
  {
    sub_29D85F6D0(255, &qword_2A17B6920, sub_29D7B7CA4, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6928);
  }

  return result;
}

uint64_t sub_29D85F7C4(uint64_t a1, uint64_t a2)
{
  sub_29D85F8DC(0, &qword_2A17B6930, &qword_2A17B6938, MEMORY[0x29EDB89F0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D85F874(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D85F8DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D85F948(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D695734(255, a3);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D85FA58(uint64_t a1)
{
  sub_29D85F8DC(0, &qword_2A17B6930, &qword_2A17B6938, MEMORY[0x29EDB89F0], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D85FAE0(char a1)
{
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton] = 0;
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = 0;
  v3 = &v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_baseIdentifier];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v9 = qword_2A17B1B70;
  v10 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D956C00);
  v4 = v10;
  *v3 = v9;
  v3[1] = v4;
  v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_isInOnboardingModalFlow] = a1 & 1;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v5 = sub_29D939D28();

  v8.receiver = v1;
  v8.super_class = type metadata accessor for AFibBurdenOnboardingResultsViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithTitle_detailText_icon_contentLayout_, v5, 0, 0, 2, 0xE000000000000000);

  return v6;
}

id sub_29D85FCB4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver];
  *&v0[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AFibBurdenOnboardingResultsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D85FDC4()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D861D38(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v167 - v6;
  v194 = sub_29D933A58();
  v191 = *(v194 - 8);
  v8 = *(v191 + 64);
  MEMORY[0x2A1C7C4A8](v194, v9);
  v193 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D861D38(0, &qword_2A17B2280, MEMORY[0x29EDBC990], v2);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v189 = &v167 - v14;
  if (v0[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_isInOnboardingModalFlow] == 1)
  {
  }

  sub_29D877FD0();
  v16 = v15;
  v17 = *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton];
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton] = v15;
  v18 = v15;

  if (v16)
  {
    [v18 setEnabled_];
  }

  v19 = [v1 navigationItem];
  [v19 setBackButtonDisplayMode_];

  v20 = [v1 headerView];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  aBlock = qword_2A17B1B70;
  v197 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D956C00);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
  v21 = sub_29D939D28();

  [v20 setAccessibilityIdentifier_];

  v190 = [objc_opt_self() hk_percentNumberFormatter];
  v22 = *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_baseIdentifier + 8];
  v173 = *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_baseIdentifier];
  aBlock = v173;
  v197 = v22;
  v187 = v22;
  sub_29D935E88();
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x46416E49656D6954, 0xEA00000000006269);
  v23 = HIBYTE(v197) & 0xF;
  if ((v197 & 0x2000000000000000) == 0)
  {
    v23 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  v168 = v1;
  v180 = v7;
  if (v23)
  {
    MEMORY[0x29ED6A240](0x6567616D492ELL, 0xE600000000000000);
    v24 = v197;
    v179 = aBlock;
  }

  else
  {

    v179 = 0;
    v24 = 0xE000000000000000;
  }

  v182 = v24;
  v178 = 0x800000029D969090;
  sub_29D861D38(0, &qword_2A17B6970, type metadata accessor for LocalizedImageView.TextConfiguration, MEMORY[0x29EDC9E90]);
  v26 = v25;
  v192 = type metadata accessor for LocalizedImageView.TextConfiguration();
  v27 = *(v192 - 8);
  v188 = *(v27 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v170 = *(v27 + 80);
  v172 = v26;
  v29 = swift_allocObject();
  v177 = xmmword_29D93F680;
  *(v29 + 16) = xmmword_29D93F680;
  v181 = v29;
  v171 = v28;
  v30 = v29 + v28;
  v184 = sub_29D751228(0.05);
  v176 = v31;
  sub_29D939178();
  LODWORD(v186) = *MEMORY[0x29EDBC988];
  v32 = v186;
  v33 = sub_29D939168();
  v34 = *(v33 - 8);
  v185 = *(v34 + 104);
  v35 = v189;
  v185(v189, v32, v33);
  v169 = *(v34 + 56);
  v169(v35, 0, 1, v33);
  v36 = sub_29D9391A8();
  sub_29D85A490(v35);
  v183 = objc_opt_self();
  v37 = [v183 labelColor];
  v38 = sub_29D939528();
  v39 = sub_29D9398B8();
  v41 = v40;
  v42 = v193;
  sub_29D933A48();
  v43 = v176;
  *v30 = v184;
  *(v30 + 8) = v43;
  *(v30 + 16) = v36;
  *(v30 + 24) = v38;
  *(v30 + 32) = xmmword_29D94F2A0;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0;
  *(v30 + 64) = 1;
  *(v30 + 72) = 0x3FE0000000000000;
  *(v30 + 80) = v39;
  *(v30 + 88) = v41;
  v44 = *(v192 + 44);
  v45 = v191 + 32;
  v184 = *(v191 + 32);
  (v184)(v30 + v44, v42, v194);
  v46 = v30 + v188;
  v47 = sub_29D751228(1.0);
  v191 = v48;
  sub_29D939178();
  v174 = v34 + 104;
  v185(v35, v186, v33);
  v176 = v33;
  v49 = v33;
  v175 = v34 + 56;
  v50 = v169;
  v169(v35, 0, 1, v49);
  v51 = v50;
  v52 = sub_29D9391A8();
  sub_29D85A490(v35);
  v53 = [v183 labelColor];
  v54 = sub_29D939528();
  v55 = sub_29D9398B8();
  v57 = v56;
  v58 = v193;
  sub_29D933A48();
  v59 = v191;
  *v46 = v47;
  *(v46 + 8) = v59;
  *(v46 + 16) = v52;
  *(v46 + 24) = v54;
  *(v46 + 32) = xmmword_29D94F2B0;
  *(v46 + 48) = 0;
  *(v46 + 56) = 0;
  *(v46 + 64) = 1;
  *(v46 + 72) = 0x3FE0000000000000;
  *(v46 + 80) = v55;
  *(v46 + 88) = v57;
  v60 = v46 + *(v192 + 44);
  v191 = v45;
  (v184)(v60, v58, v194);
  aBlock = v173;
  v197 = v187;
  sub_29D935E88();
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x67756F6E45746F4ELL, 0xED00006174614468);
  v61 = HIBYTE(v197) & 0xF;
  if ((v197 & 0x2000000000000000) == 0)
  {
    v61 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    MEMORY[0x29ED6A240](0x6567616D492ELL, 0xE600000000000000);
    v62 = v197;
    v173 = aBlock;
  }

  else
  {

    v173 = 0;
    v62 = 0xE000000000000000;
  }

  v167 = v62;
  v63 = v171;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_29D93DDB0;
  v172 = v64;
  v65 = v64 + v63;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v66 = *algn_2A17D0EB8;
  v188 = qword_2A17D0EB0;
  v67 = qword_2A17D0EC0;
  v68 = sub_29D9334A8();
  v70 = v69;
  sub_29D939178();
  v71 = v189;
  v72 = v176;
  v185(v189, v186, v176);
  v51(v71, 0, 1, v72);
  v73 = sub_29D9391A8();
  sub_29D85A490(v71);
  v74 = [v183 labelColor];
  v75 = sub_29D939528();
  v76 = sub_29D9398B8();
  v78 = v77;
  v79 = v193;
  sub_29D933A48();
  *v65 = v68;
  *(v65 + 8) = v70;
  *(v65 + 16) = v73;
  *(v65 + 24) = v75;
  *(v65 + 32) = xmmword_29D94F2C0;
  *(v65 + 48) = xmmword_29D94F2D0;
  *(v65 + 64) = 1;
  *(v65 + 72) = 0x3FE0000000000000;
  *(v65 + 80) = v76;
  *(v65 + 88) = v78;
  (v184)(v65 + *(v192 + 44), v79, v194);
  v80 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  v200 = sub_29D86137C;
  v201 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v197 = 1107296256;
  v198 = sub_29D861AC4;
  v199 = &unk_2A2449790;
  v81 = _Block_copy(&aBlock);
  v82 = [v80 initWithDynamicProvider_];
  _Block_release(v81);

  sub_29D6AA3B4(0, &qword_2A17B6978);
  v83 = swift_allocObject();
  *(v83 + 16) = v177;
  v193 = 0xD000000000000021;
  v84 = sub_29D9334A8();
  v191 = v85;
  v192 = v84;
  sub_29D861B44(0x46416E49656D6954, 0xEA00000000006269, 0x656C746954, 0xE500000000000000);
  v189 = v86;
  v186 = v87;
  v194 = v66;
  v187 = v67;
  v88 = sub_29D9334A8();
  v90 = v89;
  sub_29D861B44(0x46416E49656D6954, 0xEA00000000006269, 0x6C6961746544, 0xE600000000000000);
  v92 = v91;
  v94 = v93;
  aBlock = 0xD00000000000001CLL;
  v197 = v178;
  LOBYTE(v198) = 1;
  v199 = v179;
  v200 = v182;
  v201 = v181;
  sub_29D861C74();
  v184 = v95;
  v96 = objc_allocWithZone(v95);
  sub_29D935E88();
  sub_29D935E88();
  v97 = sub_29D938CF8();
  v98 = [v97 view];

  v185 = v82;
  if (v98)
  {
    [v98 setBackgroundColor_];
  }

  else
  {
    v98 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  }

  v99 = v191;
  *(v83 + 32) = v192;
  *(v83 + 40) = v99;
  v100 = v186;
  *(v83 + 48) = v189;
  *(v83 + 56) = v100;
  *(v83 + 64) = v88;
  *(v83 + 72) = v90;
  *(v83 + 80) = v92;
  *(v83 + 88) = v94;
  *(v83 + 96) = MEMORY[0x29EDCA190];
  *(v83 + 104) = 0;
  *(v83 + 112) = 0;
  *(v83 + 120) = v98;
  v191 = sub_29D9334A8();
  v189 = v101;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x656C746954, 0xE500000000000000);
  v186 = v102;
  v183 = v103;
  v179 = sub_29D9334A8();
  v178 = v104;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x6C6961746544, 0xE600000000000000);
  *&v177 = v105;
  v176 = v106;
  sub_29D861D38(0, &qword_2A17B6990, type metadata accessor for ResultItem.BodyItem, MEMORY[0x29EDC9E90]);
  v192 = type metadata accessor for ResultItem.BodyItem();
  v107 = *(*(v192 - 8) + 72);
  v108 = (*(*(v192 - 8) + 80) + 32) & ~*(*(v192 - 8) + 80);
  v193 = (4 * v107);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_29D944EA0;
  v175 = v109;
  v110 = (v109 + v108);
  v111 = sub_29D9334A8();
  v113 = v112;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000012, 0x800000029D9691F0);
  *v110 = v111;
  v110[1] = v113;
  v110[2] = v114;
  v110[3] = v115;
  swift_storeEnumTagMultiPayload();
  v116 = (v110 + v107);
  v117 = sub_29D9334A8();
  v119 = v118;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000012, 0x800000029D969240);
  *v116 = v117;
  v116[1] = v119;
  v116[2] = v120;
  v116[3] = v121;
  swift_storeEnumTagMultiPayload();
  v122 = (v110 + 2 * v107);
  v123 = sub_29D9334A8();
  v125 = v124;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x63746157656B614DLL, 0xED000067756E5368);
  *v122 = v123;
  v122[1] = v125;
  v122[2] = v126;
  v122[3] = v127;
  swift_storeEnumTagMultiPayload();
  v128 = (v110 + 3 * v107);
  v129 = sub_29D9334A8();
  v131 = v130;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x6E6F697469646441, 0xEF73706574536C61);
  *v128 = v129;
  v128[1] = v131;
  v128[2] = v132;
  v128[3] = v133;
  swift_storeEnumTagMultiPayload();
  v134 = &v193[v110];
  v135 = sub_29D9334A8();
  v137 = v136;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000011, 0x800000029D9692C0);
  *v134 = v135;
  v134[1] = v137;
  v134[2] = v138;
  v134[3] = v139;
  v140 = [objc_opt_self() aFibBurdenDefaultLinkURL];
  sub_29D939D68();

  v141 = v180;
  sub_29D9336E8();

  v142 = sub_29D9336F8();
  v143 = *(v142 - 8);
  if ((*(v143 + 48))(v141, 1, v142) == 1)
  {
    __break(1u);
  }

  else
  {

    sub_29D85CBA8();
    v145 = *(v144 + 48);

    (*(v143 + 32))(v134 + v145, v141, v142);
    swift_storeEnumTagMultiPayload();
    sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000016, 0x800000029D9692E0);
    v147 = v146;
    v149 = v148;
    aBlock = 0xD00000000000001ALL;
    v197 = 0x800000029D9690B0;
    LOBYTE(v198) = 1;
    v199 = v173;
    v200 = v167;
    v201 = v172;
    v150 = objc_allocWithZone(v184);
    v151 = sub_29D938CF8();
    v152 = [v151 view];

    if (v152)
    {
      v153 = v185;
      [v152 setBackgroundColor_];
      v154 = v168;
    }

    else
    {
      v152 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
      v154 = v168;
      v153 = v185;
    }

    v155 = v189;
    *(v83 + 128) = v191;
    *(v83 + 136) = v155;
    v156 = v183;
    *(v83 + 144) = v186;
    *(v83 + 152) = v156;
    v157 = v178;
    *(v83 + 160) = v179;
    *(v83 + 168) = v157;
    v158 = v176;
    *(v83 + 176) = v177;
    *(v83 + 184) = v158;
    *(v83 + 192) = v175;
    *(v83 + 200) = v147;
    *(v83 + 208) = v149;
    *(v83 + 216) = v152;
    v159 = type metadata accessor for ListOfResultItemsView();
    v160 = objc_allocWithZone(v159);
    *&v160[OBJC_IVAR____TtC5Heart21ListOfResultItemsView____lazy_storage___stackView] = 0;
    *&v160[OBJC_IVAR____TtC5Heart21ListOfResultItemsView_resultItems] = v83;
    v195.receiver = v160;
    v195.super_class = v159;
    v161 = objc_msgSendSuper2(&v195, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_29D85C5D8();
    v162 = [v154 contentView];
    [v162 addSubview_];

    v163 = [v154 contentView];
    [v161 hk:v163 alignConstraintsWithView:?];

    v164 = [v154 scrollView];
    aBlock = v164;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v165 = sub_29D933638();

    v166 = *&v154[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver];
    *&v154[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = v165;
  }
}

id sub_29D86137C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 == 2)
  {
    v3 = sub_29D93A4C8();
    v4 = [objc_opt_self() secondarySystemBackgroundColor];
    v5 = [v4 resolvedColorWithTraitCollection_];

    return v5;
  }

  else
  {
    if (v1 == 1)
    {
      v2 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    else
    {
      v2 = [objc_opt_self() systemBackgroundColor];
    }

    return v2;
  }
}

uint64_t sub_29D8614A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_29D693DDC(a1, *(a1 + 24));
  return sub_29D937958();
}

void sub_29D8614E4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_29D861D38(0, &qword_2A17B6998, type metadata accessor for CGPoint, MEMORY[0x29EDB9AE0]);
    sub_29D933608();
    if ((v9 & 1) != 0 || v8 == 0.0 || ([v1 contentSize], v5 = v4, objc_msgSend(v1, sel_bounds), v5 - CGRectGetHeight(v10) > v8))
    {
    }

    else
    {
      v6 = *&v3[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton];
      if (v6)
      {
        [v6 setEnabled_];
      }

      v7 = *&v3[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver];
      *&v3[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = 0;
    }
  }
}

uint64_t sub_29D86185C()
{
  v1 = v0 + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D861890(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D8618DC()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

id sub_29D861AC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_29D861B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D861B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  sub_29D935E88();
  sub_29D935E88();
  v9 = sub_29D935E88();
  sub_29D88BBC8(v9);
  v10 = sub_29D939F18();

  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    swift_setDeallocating();
    v12 = *(inited + 16);
    swift_arrayDestroy();
    sub_29D939D68();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D861C74()
{
  if (!qword_2A17B6980)
  {
    sub_29D861CD0();
    v0 = sub_29D938D28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6980);
    }
  }
}

unint64_t sub_29D861CD0()
{
  result = qword_2A17B6988;
  if (!qword_2A17B6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6988);
  }

  return result;
}

void sub_29D861D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D861E04(char a1, void (*a2)(char *, char *, uint64_t), void (*a3)(), uint64_t a4)
{
  v5 = v4;
  v38 = a4;
  v39 = a3;
  ObjectType = swift_getObjectType();
  sub_29D868A74(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = v35 - v12;
  v14 = sub_29D9336F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = v35 - v21;
  if ((a1 & 1) == 0 || *(v5 + OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion) != 1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v27, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    aBlock = 0;
    sub_29D9371C8();

    if (v39)
    {
      v44 = v39;
      v45 = v38;
      aBlock = MEMORY[0x29EDCA5F8];
      v41 = 1107296256;
      v42 = sub_29D6C1F10;
      v43 = &unk_2A2449FE0;
      v25 = _Block_copy(&aBlock);
    }

    else
    {
      v25 = 0;
    }

    v26 = v5;
    goto LABEL_15;
  }

  v36 = a2;
  v37 = v5;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  v24 = v23;
  sub_29D69C6C0(v23, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  aBlock = 0;
  v35[1] = v24;
  sub_29D9371C8();

  sub_29D6D962C(v36, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29D868AE8(v13, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D868A74);
    *(swift_allocObject() + 16) = ObjectType;
    aBlock = 0;
    sub_29D9371F8();

    if (v39)
    {
      v44 = v39;
      v45 = v38;
      aBlock = MEMORY[0x29EDCA5F8];
      v41 = 1107296256;
      v42 = sub_29D6C1F10;
      v43 = &unk_2A244A058;
      v25 = _Block_copy(&aBlock);
    }

    else
    {
      v25 = 0;
    }

    v26 = v37;
LABEL_15:
    [v26 dismissViewControllerAnimated:1 completion:v25];
    _Block_release(v25);
    return;
  }

  v36 = *(v15 + 32);
  v36(v22, v13, v14);
  (*(v15 + 16))(v19, v22, v14);
  v28 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v36((v30 + v28), v19, v14);
  v31 = (v30 + v29);
  v32 = v38;
  v33 = v39;
  *v31 = v39;
  v31[1] = v32;
  *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v44 = sub_29D869624;
  v45 = v30;
  aBlock = MEMORY[0x29EDCA5F8];
  v41 = 1107296256;
  v42 = sub_29D6C1F10;
  v43 = &unk_2A244A0A8;
  v34 = _Block_copy(&aBlock);
  sub_29D695554(v33);

  [v37 dismissViewControllerAnimated:1 completion:v34];
  _Block_release(v34);
  (*(v15 + 8))(v22, v14);
}

uint64_t sub_29D862414()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD000000000000043, 0x800000029D969B80);
  return 0;
}

uint64_t sub_29D8624E0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD000000000000054, 0x800000029D969B20);
  return 0;
}

void sub_29D8625AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D8689CC(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D8696C0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A244A0F8;
  v11 = _Block_copy(v12);
  sub_29D695554(a2);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_29D862764(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v6, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a4;
    sub_29D9371E8();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_29D862854()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D969AE0);
  return 0;
}

uint64_t sub_29D862924()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD00000000000003FLL, 0x800000029D969BD0);
  return 0;
}

id sub_29D862A84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D862AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2449838;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D862BC8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2449810;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D862C98()
{
  v1 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingStartViewController());
  sub_29D843318(1, 0, 0);
  v9 = v2;
  *&v2[qword_2A17B6328 + 8] = &off_2A24497B8;
  swift_unknownObjectWeakAssign();
  v3 = v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D940030;
    *(v6 + 32) = v9;
    v7 = *(v4 + 24);
    v8 = v9;
    v7(v6, 0, ObjectType, v4);

    sub_29D936978();
  }

  else
  {
  }
}

uint64_t sub_29D862E18()
{
  sub_29D69417C(v0 + 2);
  sub_29D71B9FC(v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
  v1 = *(v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory);

  v2 = *(v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber);

  sub_29D68B77C(v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenOnboardingCoordinator()
{
  result = qword_2A17B69E0;
  if (!qword_2A17B69E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D862F28()
{
  result = type metadata accessor for AFibBurdenOnboardingPresentationContext();
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

uint64_t sub_29D862FF4()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002BLL, 0x800000029D9637E0);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D9693B0);
  return 91;
}

uint64_t sub_29D8630C0(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D969A70);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D969AA0);
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  v6 = 0xE500000000000000;
  v7 = 0x7472617473;
  v8 = 0x800000029D95A400;
  v9 = 0xD000000000000013;
  if (v5 != 5)
  {
    v9 = 0x6974656C706D6F63;
    v8 = 0xEA00000000006E6FLL;
  }

  v10 = 0x800000029D95A420;
  v11 = 0x746361466566696CLL;
  if (v5 == 3)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v10 = 0xEB0000000073726FLL;
  }

  if (v5 <= 4)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x7472617453746567;
  v13 = 0xEA00000000006465;
  if (v5 != 1)
  {
    v12 = 0x726F577449776F68;
    v13 = 0xEA0000000000736BLL;
  }

  if (v5)
  {
    v7 = v12;
    v6 = v13;
  }

  if (v5 <= 2)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (v5 <= 2)
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x29ED6A240](v14, v15);

  return 91;
}

uint64_t sub_29D8632BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_29D868A74(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v38 - v10;
  sub_29D868C84(0, &qword_2A17B69F0, &qword_2A1A223D8, MEMORY[0x29EDC9A98], &qword_2A1A223E0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = &v38 - v17;
  ObjectType = swift_getObjectType();
  v20 = (*(a2 + 8))(ObjectType, a2);
  result = swift_allocObject();
  v22 = result;
  *(result + 16) = v3;
  *(result + 24) = v20;
  *(result + 32) = a1;
  *(result + 40) = a2;
  if (byte_2A243CF88 == 6)
  {
    goto LABEL_19;
  }

  if (byte_2A243CF89 == 6)
  {
    v23 = 1u;
    goto LABEL_14;
  }

  if (byte_2A243CF8A == 6)
  {
    v23 = 2u;
    goto LABEL_14;
  }

  if (byte_2A243CF8B == 6)
  {
    v23 = 3u;
    goto LABEL_14;
  }

  if (byte_2A243CF8C == 6)
  {
    v23 = 4u;
    goto LABEL_14;
  }

  if (byte_2A243CF8D == 6)
  {
    v23 = 5u;
    goto LABEL_14;
  }

  if (byte_2A243CF8E == 6)
  {
    v23 = 6u;
LABEL_14:
    if (*(&unk_2A243CF68 + v23 + 31) == v20)
    {
      if (*(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber))
      {
        v24 = qword_2A1A24678;
        v25 = a1;

        if (v24 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4();
        sub_29D69C6C0(v26, qword_2A1A2BF58);
        *(swift_allocObject() + 16) = v6;
        v45 = 0;
        sub_29D9371C8();
      }

      else
      {
        v29 = v3[5];
        v43 = OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber;
        v40 = sub_29D693E2C(v3 + 2, v29);
        v39 = off_2A2441948;
        v30 = type metadata accessor for AFibBurdenOnboardingModel();
        v42 = v14;
        v31 = v30;
        v41 = a1;

        v40 = (v39)(v31, &off_2A2441928);
        v45 = v40;
        v38 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
        v39 = sub_29D93A468();
        v44 = v39;
        v32 = sub_29D93A448();
        (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
        sub_29D8598F4(0, &qword_2A1A223D8);
        sub_29D859494(&qword_2A1A223E0, &qword_2A1A223D8);
        sub_29D706380();
        sub_29D938538();
        sub_29D868AE8(v11, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68], sub_29D868A74);

        v33 = swift_allocObject();
        v34 = v41;
        *(v33 + 16) = v3;
        *(v33 + 24) = v34;
        *(v33 + 32) = a2;
        *(v33 + 40) = v20;
        *(v33 + 48) = sub_29D868AD8;
        *(v33 + 56) = v22;
        sub_29D868B5C();
        v35 = v34;

        v36 = sub_29D938588();

        (*(v42 + 8))(v18, v13);
        v37 = *(v3 + v43);
        *(v3 + v43) = v36;
      }
    }

LABEL_19:
    v27 = a1;

    sub_29D864880(v28, v20, v27, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D86389C(void *a1, uint64_t a2)
{
  inited = *v2;
  v6 = sub_29D939968();
  v7 = *(v6 - 1);
  v8 = v7[8];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D939998();
  v55 = *(v11 - 1);
  v12 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_29D6A9ED4();
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = inited;
    aBlock = 0;
    v17 = a1;
    v18 = a2;
    v19 = v17;
    sub_29D9371C8();

    ObjectType = swift_getObjectType();
    v21 = *(v18 + 8);
    v53 = v18;
    if (!v21(ObjectType, v18))
    {
      return sub_29D864380(0, 0, 0);
    }

    v52 = v19;
    v48 = v11;
    v49 = v7;
    v50 = v6;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v51 = sub_29D9334A8();
    a2 = v22;
    sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D941B10;
    sub_29D9334A8();
    v23 = sub_29D939D28();

    v24 = objc_opt_self();
    v7 = [v24 actionWithTitle:v23 style:1 handler:0];

    *(inited + 32) = v7;
    v11 = (inited + 32);
    sub_29D9334A8();
    v25 = swift_allocObject();
    swift_weakInit();

    v26 = sub_29D939D28();

    v62 = sub_29D868A28;
    v63 = v25;
    aBlock = MEMORY[0x29EDCA5F8];
    v59 = 1107296256;
    v60 = sub_29D799960;
    v61 = &unk_2A24498D8;
    v27 = _Block_copy(&aBlock);

    v28 = [v24 actionWithTitle:v26 style:0 handler:v27];
    _Block_release(v27);

    *(inited + 40) = v28;
    v51 = a2;
    a1 = sub_29D939D28();
    v29 = [objc_opt_self() alertControllerWithTitle:0 message:a1 preferredStyle:0];

    v30 = [v29 popoverPresentationController];
    v6 = v52;
    if (v30)
    {
      a1 = v30;
      v31 = [v52 navigationItem];
      v32 = [v31 rightBarButtonItem];

      [a1 setSourceItem_];
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x29ED6AE30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v33 = *v11;
    }

    a1 = v33;
    [v29 addAction_];

    if ((inited & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x29ED6AE30](1, inited);
      goto LABEL_13;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v34 = *(inited + 40);
LABEL_13:
      v35 = v34;
      [v29 addAction_];

      swift_setDeallocating();
      v36 = *(inited + 16);
      swift_arrayDestroy();
      [v29 setPreferredAction_];
      sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
      v37 = sub_29D93A468();
      v38 = swift_allocObject();
      v39 = v53;
      v38[2] = v6;
      v38[3] = v39;
      v38[4] = v29;
      v62 = sub_29D868A30;
      v63 = v38;
      aBlock = MEMORY[0x29EDCA5F8];
      v59 = 1107296256;
      v60 = sub_29D6C1F10;
      v61 = &unk_2A2449928;
      v40 = _Block_copy(&aBlock);
      v41 = v6;
      v42 = v29;
      v43 = v54;
      sub_29D939988();
      v57 = MEMORY[0x29EDCA190];
      sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
      sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29D6FC864();
      v44 = v56;
      v45 = v50;
      sub_29D93A888();
      MEMORY[0x29ED6A880](0, v43, v44, v40);
      _Block_release(v40);

      (v49[1])(v44, v45);
      (*(v55 + 8))(v43, v48);
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }
}

uint64_t sub_29D864118(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000010;
  sub_29D93AA18();

  v4 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000025, 0x800000029D9694A0);
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D9694D0);
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 8))(ObjectType, a2);
  if (v6 <= 2)
  {
    v8 = 0x7472617453746567;
    v9 = 0xEA00000000006465;
    if (v6 != 1)
    {
      v8 = 0x726F577449776F68;
      v9 = 0xEA0000000000736BLL;
    }

    if (v6)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0x7472617473;
    }

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0xE500000000000000;
    }
  }

  else if (v6 > 4)
  {
    if (v6 == 5)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x6974656C706D6F63;
    }

    if (v6 == 5)
    {
      v7 = 0x800000029D95A400;
    }

    else
    {
      v7 = 0xEA00000000006E6FLL;
    }
  }

  else if (v6 == 3)
  {
    v7 = 0x800000029D95A420;
  }

  else
  {
    v7 = 0xEB0000000073726FLL;
    v3 = 0x746361466566696CLL;
  }

  MEMORY[0x29ED6A240](v3, v7);

  return 91;
}

uint64_t sub_29D86431C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D864380(0, 0, 0);
  }

  return result;
}

uint64_t sub_29D864380(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v6 = *v3;
  v7 = sub_29D939968();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D939998();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v17, qword_2A1A2BF58);
  v18 = swift_allocObject();
  *(v18 + 16) = a1 & 1;
  *(v18 + 24) = v6;
  aBlock[0] = 0;
  sub_29D9371D8();

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v19 = sub_29D93A468();
  v20 = swift_allocObject();
  *(v20 + 16) = a1 & 1;
  v22 = v25;
  v21 = v26;
  *(v20 + 24) = v4;
  *(v20 + 32) = v22;
  *(v20 + 40) = v21;
  aBlock[4] = sub_29D868A58;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24499A0;
  v23 = _Block_copy(aBlock);

  sub_29D695554(v22);
  sub_29D939988();
  v30 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v16, v11, v23);
  _Block_release(v23);

  (*(v29 + 8))(v11, v7);
  (*(v27 + 8))(v16, v28);
}

uint64_t sub_29D864750(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v7, qword_2A1A2BF58);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v9 = a1;
  sub_29D9371C8();

  return sub_29D8632BC(v9, a2);
}

uint64_t sub_29D864880(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v33 = a4;
  v31 = a3;
  v6 = a2;
  v32 = a2;
  v36 = MEMORY[0x29EDCA298];
  v35 = MEMORY[0x29EDC9C68];
  sub_29D868A74(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v31 - v11;
  sub_29D868C84(0, &qword_2A17B6A00, &qword_2A17B6A08, &type metadata for AFibBurdenOnboardingProgressionState, &qword_2A17B6A10);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v34 = a1;
  v20 = *sub_29D693E2C((a1 + 16), *(a1 + 40));
  v39 = sub_29D6E634C(v6, a3, a4);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v21 = sub_29D93A468();
  v40 = v21;
  v22 = sub_29D93A448();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_29D8598F4(0, &qword_2A17B6A08);
  sub_29D859494(&qword_2A17B6A10, &qword_2A17B6A08);
  sub_29D706380();
  sub_29D938538();
  sub_29D868AE8(v12, &unk_2A1A248F0, v36, v35, sub_29D868A74);

  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  *(v23 + 24) = v32;
  v24 = v31;
  v25 = v33;
  *(v23 + 32) = v31;
  *(v23 + 40) = v25;
  *(v23 + 48) = v19;
  sub_29D868D5C();

  v26 = v24;

  v27 = v37;
  v28 = sub_29D938588();

  (*(v38 + 8))(v18, v27);
  swift_beginAccess();
  v29 = *(v19 + 16);
  *(v19 + 16) = v28;
}

uint64_t sub_29D864C0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 >> 6)
  {
    if (v10 >> 6 == 1)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a2;
      *(v13 + 24) = v7;

      sub_29D868E08(v9 & 1, a4, a5, sub_29D868DD4, v13);
    }

    else
    {
      sub_29D864D18(a3, 0, 0);
    }
  }

  else
  {
    sub_29D865130(*a1, v10, a4, a5, a3);
  }

  swift_beginAccess();
  v14 = *(a6 + 16);
  *(a6 + 16) = 0;
}

uint64_t sub_29D864D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D6E8234(a1);
  if (v14 == 7)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v8;
    aBlock[0] = 0;
    sub_29D9371C8();

    sub_29D71B998(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext, v13);
    v17 = sub_29D693E2C(v3 + 2, v3[5]);
    v18 = *(*sub_29D693E2C((*v17 + 16), *(*v17 + 40)) + 104);
    v19 = v18 + *(*v18 + *MEMORY[0x29EDC9DE8] + 16);
    v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v18 + v20));
    v21 = *(v19 + *(type metadata accessor for AFibBurdenOnboardingFlowManager.State() + 20));
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v18 + v20));

    v22 = type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    sub_29D86943C(v13, v25 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_presentationContext);
    *(v25 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep) = a1;
    *(v25 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode) = v21;
    v26 = *(v4 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager);
    v27 = swift_allocObject();
    *(v27 + 16) = v8;
    aBlock[4] = sub_29D8694A0;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A2449D10;
    v28 = _Block_copy(aBlock);

    [v26 submitEvent:v25 completion:v28];
    _Block_release(v28);

    sub_29D864380(1, a2, a3);
  }

  else
  {
    v30 = v14;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v31, qword_2A1A2BF58);
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    *(v32 + 17) = v30;
    *(v32 + 24) = v8;
    aBlock[0] = 0;
    sub_29D9371D8();

    return sub_29D866A6C(v30, a1);
  }
}

uint64_t sub_29D865130(uint64_t a1, char a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v103 = a5;
  LOBYTE(v9) = a2;
  v107 = *v5;
  v11 = sub_29D939968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D939998();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v100 = v12;
  v101 = v11;
  v98 = v16;
  v99 = v20;
  v97 = v22;
  v96 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a3;
  v94 = a4;
  if (!v9)
  {
    if (qword_2A17B0D48 == -1)
    {
LABEL_6:
      v102 = sub_29D9334A8();
      v106 = v23;
      LOBYTE(v24) = 0;
      v104 = 0;
      v91 = 0;
      v105 = 0;
      v90 = a1;
      goto LABEL_31;
    }

LABEL_75:
    swift_once();
    goto LABEL_6;
  }

  if (v9 == 1)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      if (qword_2A17B0D48 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_77;
    }

    if (a1 != 1)
    {
      if (qword_2A17B0D48 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_77;
    }

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v102 = sub_29D9334A8();
    v106 = v25;
    v91 = sub_29D9334A8();
    v105 = v26;
    v27 = sub_29D9334A8();
    v29 = "_HEART_RATE_DETAIL";
    v30 = 0xD000000000000016;
LABEL_29:
    v104 = sub_29D867D68(v27, v28, v30, v29 | 0x8000000000000000, v107);

    v90 = 0;
    goto LABEL_30;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (qword_2A17B0D48 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_77;
    }

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v102 = sub_29D9334A8();
    v106 = v32;
    v91 = sub_29D9334A8();
    v105 = v33;
    v27 = sub_29D9334A8();
    v29 = "_DETECT_ALERT_DETAIL";
    v30 = 0xD00000000000002FLL;
    goto LABEL_29;
  }

  if (a1 == 3)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

  if (qword_2A17B0D48 != -1)
  {
LABEL_77:
    swift_once();
  }

LABEL_25:
  v102 = sub_29D9334A8();
  v106 = v31;
  v90 = 0;
  v104 = 0;
  v91 = 0;
  v105 = 0;
LABEL_30:
  LOBYTE(v24) = 1;
LABEL_31:
  if (qword_2A1A24678 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    sub_29D6A9ED4();
    sub_29D69C6C0(v34, qword_2A1A2BF58);
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    *(v35 + 24) = v9;
    *(v35 + 32) = v107;
    aBlock = 0;
    sub_29D9371C8();

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v36 = sub_29D939D28();

    v37 = [objc_opt_self() actionWithTitle:v36 style:1 handler:0];

    sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_29D940030;
    *(v38 + 32) = v37;
    v115 = v38;
    v93 = v37;
    if (v104)
    {
      v39 = v104;
      v40 = v37;
      v41 = v39;
      MEMORY[0x29ED6A300]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v88 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      v92 = v41;
      sub_29D939FA8();
      v42 = v115;
    }

    else
    {
      v42 = v38;
      v92 = v37;
    }

    v43 = sub_29D693E2C(v6 + 2, v6[5]);
    v44 = *(*sub_29D693E2C((*v43 + 16), *(*v43 + 40)) + 104);
    v45 = MEMORY[0x29EDC9DE8];
    v46 = v44 + *(*v44 + *MEMORY[0x29EDC9DE8] + 16);
    v47 = (*(*v44 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v44 + v47));
    v48 = type metadata accessor for AFibBurdenOnboardingFlowManager.State();
    v49 = *(v46 + *(v48 + 20));
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v44 + v47));

    type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent();
    v50 = swift_allocObject();
    *(v50 + 16) = a1;
    *(v50 + 24) = v9;
    *(v50 + 25) = v103;
    *(v50 + 32) = v49;
    v51 = *(v6 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager);
    v52 = swift_allocObject();
    *(v52 + 16) = v107;
    v113 = sub_29D868BEC;
    v114 = v52;
    aBlock = MEMORY[0x29EDCA5F8];
    v110 = 1107296256;
    v111 = sub_29D8E44F0;
    v112 = &unk_2A2449AB8;
    v53 = _Block_copy(&aBlock);

    [v51 submitEvent:v50 completion:v53];
    _Block_release(v53);

    if ((v24 & 1) == 0)
    {
      v9 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
      if (!v9)
      {
        sub_29D939D68();
        v9 = sub_29D939D28();
      }

      v54 = sub_29D693E2C(v6 + 2, v6[5]);
      v55 = *(*sub_29D693E2C((*v54 + 16), *(*v54 + 40)) + 104);
      v56 = v55 + *(*v55 + *v45 + 16);
      v57 = (*(*v55 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v55 + v57));
      v58 = *(v56 + *(v48 + 20));
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v55 + v57));

      if (v58)
      {
        v59 = [v58 ISOCode];
        sub_29D936978();
        sub_29D939D68();
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      v62 = *MEMORY[0x29EDBA6B0];
      if (v103 > 2u)
      {
        if (v103 > 4u)
        {
          if (v61)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v103 == 3)
          {
            if (!v61)
            {
              goto LABEL_55;
            }

LABEL_53:
            v63 = sub_29D939D28();

LABEL_56:
            v64 = objc_allocWithZone(MEMORY[0x29EDC4790]);
            v65 = sub_29D939D28();

            v66 = [v64 initWithFeatureIdentifier:v62 featureVersion:v9 countryCode:v63 step:v65 onboardingIneligibilityReasons:v90];

            v67 = swift_allocObject();
            *(v67 + 16) = v107;
            v113 = sub_29D868C24;
            v114 = v67;
            aBlock = MEMORY[0x29EDCA5F8];
            v110 = 1107296256;
            v111 = sub_29D8E44F0;
            v112 = &unk_2A2449B58;
            v68 = _Block_copy(&aBlock);
            v69 = v66;

            [v51 submitEvent:v69 completion:v68];
            _Block_release(v68);

            goto LABEL_57;
          }

          if (v61)
          {
            goto LABEL_53;
          }
        }

LABEL_55:
        v63 = 0;
        goto LABEL_56;
      }

      if (!v61)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

LABEL_57:
    v70 = sub_29D939D28();
    if (v105)
    {
      v71 = sub_29D939D28();
      v6 = [objc_opt_self() alertControllerWithTitle:v70 message:v71 preferredStyle:1];

      v70 = v71;
    }

    else
    {
      v6 = [objc_opt_self() alertControllerWithTitle:0 message:v70 preferredStyle:1];
    }

    if (v42 >> 62)
    {
      break;
    }

    v72 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v72)
    {
      goto LABEL_74;
    }

LABEL_62:
    v73 = 0;
    v24 = v42 & 0xC000000000000001;
    a1 = &selRef_initWithResultsHandler_;
    while (1)
    {
      if (v24)
      {
        v74 = MEMORY[0x29ED6AE30](v73, v42);
      }

      else
      {
        if (v73 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v74 = *(v42 + 8 * v73 + 32);
      }

      v75 = v74;
      v9 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      [v6 addAction_];

      ++v73;
      if (v9 == v72)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

  v72 = sub_29D93A928();
  if (v72)
  {
    goto LABEL_62;
  }

LABEL_74:

  v76 = v92;
  [v6 setPreferredAction_];
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v77 = sub_29D93A468();
  v78 = swift_allocObject();
  v79 = v95;
  v80 = v94;
  v78[2] = v95;
  v78[3] = v80;
  v78[4] = v6;
  v113 = sub_29D86976C;
  v114 = v78;
  aBlock = MEMORY[0x29EDCA5F8];
  v110 = 1107296256;
  v111 = sub_29D6C1F10;
  v112 = &unk_2A2449B08;
  v81 = _Block_copy(&aBlock);
  v82 = v79;
  v83 = v6;
  v84 = v96;
  sub_29D939988();
  v108 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  v85 = v98;
  v86 = v101;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v84, v85, v81);
  _Block_release(v81);

  (*(v100 + 8))(v85, v86);
  (*(v97 + 8))(v84, v99);
}

uint64_t sub_29D866334()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D9694F0);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D969510);
  return 0;
}

uint64_t sub_29D866400(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t (*a6)(uint64_t))
{
  v10 = *a1;
  v11 = *(a2 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber);
  *(a2 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;

  if (v10 == 1)
  {
    return a6(v12);
  }

  else
  {
    return sub_29D865130(4, 2, a3, a4, a5);
  }
}

uint64_t sub_29D866494(unsigned __int8 a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D9698D0);
  MEMORY[0x29ED6A240](0xD000000000000012, 0x800000029D969920);
  if (a1 <= 2u)
  {
    v9 = 0x7472617453746567;
    v10 = 0xEA00000000006465;
    if (a1 != 1)
    {
      v9 = 0x726F577449776F68;
      v10 = 0xEA0000000000736BLL;
    }

    if (a1)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0x7472617473;
    }

    if (a1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0x800000029D95A400;
    v4 = 0xD000000000000013;
    if (a1 != 5)
    {
      v4 = 0x6974656C706D6F63;
      v3 = 0xEA00000000006E6FLL;
    }

    v5 = 0x800000029D95A420;
    v6 = 0x746361466566696CLL;
    if (a1 == 3)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xEB0000000073726FLL;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (a1 <= 4u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  MEMORY[0x29ED6A240](v7, v8);

  MEMORY[0x29ED6A240](0x6873696E6966202CLL, 0xEB00000000676E69);
  return 91;
}

uint64_t sub_29D866684(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D9698D0);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9697D0);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

uint64_t sub_29D866790(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = 0x7472617473;
  sub_29D93AA18();

  v5 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v5);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D9698D0);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D969900);
  v6 = 0xE500000000000000;
  v7 = 0x800000029D95A400;
  v8 = 0xD000000000000013;
  if (a1 != 5)
  {
    v8 = 0x6974656C706D6F63;
    v7 = 0xEA00000000006E6FLL;
  }

  v9 = 0x800000029D95A420;
  v10 = 0x746361466566696CLL;
  if (a1 == 3)
  {
    v10 = 0xD000000000000010;
  }

  else
  {
    v9 = 0xEB0000000073726FLL;
  }

  if (a1 <= 4u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0x7472617453746567;
  v12 = 0xEA00000000006465;
  if (a1 != 1)
  {
    v11 = 0x726F577449776F68;
    v12 = 0xEA0000000000736BLL;
  }

  if (a1)
  {
    v6 = v12;
  }

  else
  {
    v11 = 0x7472617473;
  }

  if (a1 <= 2u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (a1 <= 2u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x29ED6A240](v13, v14);

  MEMORY[0x29ED6A240](544175136, 0xE400000000000000);
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = 0x7472617453746567;
        v15 = 0xEA00000000006465;
      }

      else
      {
        v4 = 0x726F577449776F68;
        v15 = 0xEA0000000000736BLL;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v15 = 0x800000029D95A400;
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x6974656C706D6F63;
      v15 = 0xEA00000000006E6FLL;
    }
  }

  else if (a2 == 3)
  {
    v15 = 0x800000029D95A420;
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x746361466566696CLL;
    v15 = 0xEB0000000073726FLL;
  }

  MEMORY[0x29ED6A240](v4, v15);

  return 91;
}

uint64_t sub_29D866A6C(int a1, char a2)
{
  v3 = v2;
  v38 = a1;
  v5 = *v3;
  v37 = sub_29D939968();
  v41 = *(v37 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v37, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D939998();
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B998(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext, v19);
  v20 = sub_29D693E2C(v3 + 2, v3[5]);
  v21 = *(*sub_29D693E2C((*v20 + 16), *(*v20 + 40)) + 104);
  v22 = v21 + *(*v21 + *MEMORY[0x29EDC9DE8] + 16);
  v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v21 + v23));
  v24 = *(v22 + *(type metadata accessor for AFibBurdenOnboardingFlowManager.State() + 20));
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v21 + v23));

  v25 = type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  sub_29D86943C(v19, v28 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_presentationContext);
  *(v28 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep) = a2;
  *(v28 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode) = v24;
  v29 = *(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager);
  v30 = swift_allocObject();
  *(v30 + 16) = v5;
  v47 = sub_29D8694E8;
  v48 = v30;
  aBlock = MEMORY[0x29EDCA5F8];
  v44 = 1107296256;
  v45 = sub_29D8E44F0;
  v46 = &unk_2A2449D88;
  v31 = _Block_copy(&aBlock);

  [v29 submitEvent:v28 completion:v31];
  _Block_release(v31);

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v32 = sub_29D93A468();
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  *(v33 + 24) = v38;
  *(v33 + 32) = v5;
  v47 = sub_29D869520;
  v48 = v33;
  aBlock = MEMORY[0x29EDCA5F8];
  v44 = 1107296256;
  v45 = sub_29D6C1F10;
  v46 = &unk_2A2449DD8;
  v34 = _Block_copy(&aBlock);

  sub_29D939988();
  v42 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  v35 = v37;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v14, v9, v34);
  _Block_release(v34);

  (*(v41 + 8))(v9, v35);
  (*(v39 + 8))(v14, v40);
}

uint64_t sub_29D866FA4(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D969890);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9697D0);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

void sub_29D8670B0(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory);
  sub_29D88B8D8(a2);
  v8 = v7;
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 24);
  v13 = swift_unknownObjectRetain();
  v12(v13, &off_2A24497B8, ObjectType, v10);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v14, qword_2A1A2BF58);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *&v21[0] = 0;
  sub_29D9371D8();

  v16 = a1 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    memset(v21, 0, sizeof(v21));
    v19 = *(v17 + 32);
    v20 = v8;
    v19(v20, v21, v18, v17);
    sub_29D936978();

    sub_29D868AE8(v21, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D86953C);
  }

  else
  {
  }
}

uint64_t sub_29D8672A8(unsigned __int8 a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D969890);
  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D9698B0);
  if (a1 <= 2u)
  {
    v9 = 0x7472617453746567;
    v10 = 0xEA00000000006465;
    if (a1 != 1)
    {
      v9 = 0x726F577449776F68;
      v10 = 0xEA0000000000736BLL;
    }

    if (a1)
    {
      v7 = v9;
    }

    else
    {
      v7 = 0x7472617473;
    }

    if (a1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0x800000029D95A400;
    v4 = 0xD000000000000013;
    if (a1 != 5)
    {
      v4 = 0x6974656C706D6F63;
      v3 = 0xEA00000000006E6FLL;
    }

    v5 = 0x800000029D95A420;
    v6 = 0x746361466566696CLL;
    if (a1 == 3)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xEB0000000073726FLL;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (a1 <= 4u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  MEMORY[0x29ED6A240](v7, v8);

  return 91;
}

uint64_t sub_29D867478(char a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000024, 0x800000029D969440);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D969470);
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x29ED6A240](v3, v4);

  return 91;
}

uint64_t sub_29D867588(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D868A74(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v20 - v11;
  if (a1)
  {
    v13 = HKHRAFibBurdenDetailRoomBaseLink();
    sub_29D9336D8();

    v14 = sub_29D9336F8();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_29D9336F8();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = a2 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 40))(a1 & 1, v12, a3, a4, ObjectType, v17);
    sub_29D936978();
  }

  return sub_29D868AE8(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D868A74);
}

id sub_29D867774(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    v6 = sub_29D939D28();

    v16 = sub_29D8695CC;
    v17 = v5;
    aBlock = MEMORY[0x29EDCA5F8];
    v13 = 1107296256;
    v7 = &unk_2A2449F90;
  }

  else
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    v6 = sub_29D939D28();

    v16 = sub_29D86959C;
    v17 = v8;
    aBlock = MEMORY[0x29EDCA5F8];
    v13 = 1107296256;
    v7 = &unk_2A2449F40;
  }

  v14 = sub_29D799960;
  v15 = v7;
  v9 = _Block_copy(&aBlock);

  v10 = [objc_opt_self() actionWithTitle:v6 style:0 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  return v10;
}

id sub_29D867A18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    v6 = sub_29D939D28();

    aBlock[4] = sub_29D869770;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D799960;
    aBlock[3] = &unk_2A2449EF0;
    v7 = _Block_copy(aBlock);

    v8 = [objc_opt_self() actionWithTitle:v6 style:1 handler:{v7, 0xE000000000000000}];
    _Block_release(v7);
  }

  else
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v9 = sub_29D939D28();

    v8 = [objc_opt_self() actionWithTitle:v9 style:1 handler:{0, 0xE000000000000000}];
  }

  return v8;
}

uint64_t sub_29D867C70(char a1)
{
  if (a1)
  {
    if (qword_2A17B0D48 == -1)
    {
      return sub_29D9334A8();
    }

    goto LABEL_6;
  }

  if (qword_2A17B0D48 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29D9334A8();
}

id sub_29D867D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  sub_29D935E88();
  v9 = sub_29D939D28();
  v13[4] = sub_29D868C6C;
  v13[5] = v8;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D799960;
  v13[3] = &unk_2A2449BF8;
  v10 = _Block_copy(v13);

  v11 = [objc_opt_self() actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_29D867E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D868A74(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = v24 - v10;
  v12 = sub_29D9336F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9336E8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29D868AE8(v11, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D868A74);
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v18 = [objc_opt_self() defaultWorkspace];
    if (v18)
    {
      v19 = v18;
      v20 = sub_29D9336B8();
      [v19 openSensitiveURL:v20 withOptions:0];

      return (*(v13 + 8))(v17, v12);
    }

    (*(v13 + 8))(v17, v12);
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v22, qword_2A1A2BF58);
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v24[1] = 0;
  sub_29D935E88();
  sub_29D9371E8();
}

uint64_t sub_29D86819C(uint64_t a1, uint64_t a2)
{
  sub_29D93AA18();

  v4 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001FLL, 0x800000029D969840);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D969860);
  MEMORY[0x29ED6A240](a1, a2);
  return 91;
}

uint64_t sub_29D868284()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D969750);
  MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D969810);
  v1 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v1);

  return 91;
}

uint64_t sub_29D868388(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D969750);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9697D0);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

void sub_29D868494(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v6, qword_2A1A2BF58);
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = a2;
    sub_29D9371E8();
  }
}

uint64_t sub_29D868580(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D969750);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D969790);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

uint64_t sub_29D86868C()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_29D868770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D868788()
{
  v1 = v0;
  v2 = *v0;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4();
  sub_29D69C6C0(v3, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v2;
  sub_29D9371C8();

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D8AD070();
  v4 = objc_allocWithZone(sub_29D934568());
  v5 = sub_29D934558();
  v6 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v7 = v1 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v6, 1, 0, 0, ObjectType, v8);

    sub_29D936978();
  }

  else
  {
  }
}

uint64_t sub_29D8689CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D868A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D868AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_29D868B5C()
{
  result = qword_2A17B69F8;
  if (!qword_2A17B69F8)
  {
    sub_29D868C84(255, &qword_2A17B69F0, &qword_2A1A223D8, MEMORY[0x29EDC9A98], &qword_2A1A223E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B69F8);
  }

  return result;
}

uint64_t sub_29D868BDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  return sub_29D868284();
}

void sub_29D868C84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D8598F4(255, a3);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D859494(a5, a3);
    sub_29D706380();
    v8 = sub_29D9381E8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D868D5C()
{
  result = qword_2A17B6A18;
  if (!qword_2A17B6A18)
  {
    sub_29D868C84(255, &qword_2A17B6A00, &qword_2A17B6A08, &type metadata for AFibBurdenOnboardingProgressionState, &qword_2A17B6A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6A18);
  }

  return result;
}

uint64_t sub_29D868DD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  return sub_29D864D18(v5, a1, a2);
}

uint64_t sub_29D868E08(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v50 = a2;
  v8 = sub_29D939968();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29D939998();
  v52 = *(v54 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v54, v13);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D867774(a4, a5, a1 & 1);
  sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D940030;
  *(v16 + 32) = v15;
  v59 = v16;
  v17 = v15;
  v18 = sub_29D867A18(a4, a5, a1 & 1);
  if (v18)
  {
    v19 = v18;
    MEMORY[0x29ED6A300]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();

    v16 = v59;
  }

  sub_29D867C70(a1 & 1);
  v21 = v20;
  if (a1)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v23 = v22;
    v24 = v17;
    if (v21)
    {
      v25 = sub_29D939D28();
    }

    else
    {
      v25 = 0;
    }

    v27 = sub_29D939D28();
    v28 = [objc_opt_self() alertControllerWithTitle:v25 message:v27 preferredStyle:1];
  }

  else
  {
    if (v20)
    {
      v26 = v17;
      v27 = sub_29D939D28();
    }

    else
    {
      v29 = v17;
      v27 = 0;
    }

    v28 = [objc_opt_self() alertControllerWithTitle:0 message:v27 preferredStyle:1];
    v23 = 0;
  }

  v47 = v23;
  v48 = v21;
  if (v16 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v31 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x29ED6AE30](v31, v16);
      }

      else
      {
        if (v31 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v32 = *(v16 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      [v28 addAction_];

      ++v31;
      if (v34 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  [v28 setPreferredAction_];
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v35 = sub_29D93A468();
  v36 = swift_allocObject();
  v37 = v49;
  v38 = v50;
  v36[2] = v50;
  v36[3] = v37;
  v36[4] = v28;
  aBlock[4] = sub_29D86976C;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2449EA0;
  v39 = _Block_copy(aBlock);
  v40 = v38;
  v41 = v28;
  v42 = v51;
  sub_29D939988();
  v57 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  v43 = v53;
  v44 = v56;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v42, v43, v39);
  _Block_release(v39);

  (*(v55 + 8))(v43, v44);
  (*(v52 + 8))(v42, v54);
}

uint64_t sub_29D86943C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D86953C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D86959C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

uint64_t sub_29D8695CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(sub_29D86868C, 0);
}

void sub_29D869624()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D8625AC(v0 + v2, v6, v7, v8);
}

uint64_t sub_29D869774@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  sub_29D86A630();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86A908();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86E5F4(0, &qword_2A17B6A68, &type metadata for LearnHypertensionJournalSummaryView.ViewModel, MEMORY[0x29EDC1E70]);
  sub_29D9351B8();
  v24[4] = v27;
  v24[5] = a1;
  sub_29D86A748();
  sub_29D86A834();
  v18 = v17;
  v19 = type metadata accessor for LearnHypertensionJournalSummaryView(255);
  v20 = sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView);
  v25 = v19;
  v26 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v18;
  v26 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29D938F28();
  sub_29D86AAAC(v27);
  type metadata accessor for NonHighlightingPlatformBackgroundView();
  sub_29D86AA5C(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView);
  sub_29D938F08();
  (*(v5 + 8))(v9, v4);
  sub_29D9390D8();
  sub_29D933E68();
  v22 = v24[0];
  *(v24[0] + 24) = v11;
  v22[4] = sub_29D86AA5C(&qword_2A17B6A70, sub_29D86A908);
  sub_29D693F78(v22);
  sub_29D938F18();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_29D869ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_29D938F98();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v29, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LearnHypertensionJournalSummaryView(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D86A834();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v20 = v12 + v8[5];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = v8[6];
  v22 = sub_29D9369A8();
  (*(*(v22 - 8) + 56))(v12 + v21, 1, 1, v22);
  v23 = v12 + v8[7];
  v24 = *(a1 + 16);
  *v23 = *a1;
  *(v23 + 1) = v24;
  v23[32] = *(a1 + 32);
  v25 = *(a1 + 8);
  v26 = sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView);
  sub_29D935E88();
  sub_29D939308();
  sub_29D86E4DC(v12, type metadata accessor for LearnHypertensionJournalSummaryView);
  sub_29D938F88();
  v30 = v8;
  v31 = v26;
  swift_getOpaqueTypeConformance2();
  sub_29D939428();
  (*(v3 + 8))(v7, v29);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_29D869E24@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B15F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D869EA8()
{
  v1 = v0[2];
  sub_29D936978();
  sub_29D86FAA4(v0 + OBJC_IVAR____TtC5Heart56LearnHypertensionJournalSummaryViewConfigurationProvider_presentationContext, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_29D869F58()
{
  sub_29D86F9D8(319, &unk_2A17B5550, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_29D86A024()
{
  result = qword_2A17B6A30;
  if (!qword_2A17B6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6A30);
  }

  return result;
}

uint64_t sub_29D86A07C()
{
  v0 = type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC5Heart56LearnHypertensionJournalSummaryViewConfigurationProvider_presentationContext;
  v5 = sub_29D9350C8();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t sub_29D86A11C(uint64_t a1)
{
  v2 = type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider(0);

  return MEMORY[0x2A1C628B8](a1, v2);
}

uint64_t sub_29D86A1BC(void *a1)
{
  v3 = v1;
  sub_29D86EAF4(0, &qword_2A17B6AD8, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v19[-v10];
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D86EAA0();
  sub_29D93AED8();
  v13 = *v3;
  v14 = v3[1];
  v19[15] = 0;
  sub_29D93ACE8();
  if (!v2)
  {
    v15 = v3[2];
    v19[14] = 1;
    sub_29D93AD08();
    v16 = v3[3];
    v19[13] = 2;
    sub_29D93AD08();
    v17 = *(v3 + 32);
    v19[12] = 3;
    sub_29D93ACF8();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_29D86A368()
{
  v1 = 0x6F437055656B6177;
  v2 = 0x43656D6954646562;
  if (*v0 != 2)
  {
    v2 = 0x656C706D6F437369;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D86A3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D86E6D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D86A430(uint64_t a1)
{
  v2 = sub_29D86EAA0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D86A46C(uint64_t a1)
{
  v2 = sub_29D86EAA0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D86A4A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6 || v3 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = sub_29D93AD78();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v3 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

unint64_t sub_29D86A5DC()
{
  result = qword_2A17B6A38;
  if (!qword_2A17B6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6A38);
  }

  return result;
}

void sub_29D86A630()
{
  if (!qword_2A17B6A40)
  {
    sub_29D86A748();
    sub_29D86A834();
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D938F38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6A40);
    }
  }
}

void sub_29D86A748()
{
  if (!qword_2A17B6A48)
  {
    sub_29D86A834();
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B6A48);
    }
  }
}

void sub_29D86A834()
{
  if (!qword_2A17B6A50)
  {
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B6A50);
    }
  }
}

void sub_29D86A908()
{
  if (!qword_2A17B6A60)
  {
    sub_29D86A748();
    type metadata accessor for NonHighlightingPlatformBackgroundView();
    sub_29D86A834();
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D86AA5C(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView);
    v0 = sub_29D938F38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6A60);
    }
  }
}

uint64_t sub_29D86AA5C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_29D86AADC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D86E854(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_29D86AB3C@<X0>(void *a1@<X8>)
{
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v33 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v32 - v21;
  sub_29D699AF4(&v32 - v21);
  v34 = v15;
  v32 = *&v22[*(v15 + 40)];

  sub_29D86E4DC(v22, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2BE98;
  (*(v6 + 16))(v11, v14, v5);
  sub_29D935E88();
  v24 = v23;
  sub_29D933A98();
  v25 = sub_29D939D98();
  v27 = v26;
  (*(v6 + 8))(v14, v5);
  v28 = v33;
  sub_29D699AF4(v33);
  v29 = *(v28 + *(v34 + 68));
  sub_29D935E88();
  result = sub_29D86E4DC(v28, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v31 = v32;
  *a1 = 0;
  a1[1] = v31;
  a1[2] = v25;
  a1[3] = v27;
  a1[4] = v29;
  a1[5] = 0x7075656B6157;
  a1[6] = 0xE600000000000000;
  return result;
}

uint64_t sub_29D86AE4C@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v31 - v21;
  sub_29D699AF4(&v31 - v21);
  v33 = v14;
  v31 = *&v22[*(v14 + 44)];

  sub_29D86E4DC(v22, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2BE98;
  (*(v5 + 16))(v10, v13, v4);
  sub_29D935E88();
  v24 = v23;
  sub_29D933A98();
  v25 = sub_29D939D98();
  v27 = v26;
  (*(v5 + 8))(v13, v4);
  sub_29D699AF4(v19);
  v28 = *&v19[*(v33 + 72)];
  sub_29D935E88();
  result = sub_29D86E4DC(v19, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v30 = v32;
  *v32 = 1;
  v30[1] = v31;
  v30[2] = v25;
  v30[3] = v27;
  v30[4] = v28;
  v30[5] = 0x656D6974646542;
  v30[6] = 0xE700000000000000;
  return result;
}

void sub_29D86B164(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v140 = type metadata accessor for SevenDayView(0);
  v3 = *(*(v140 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v140, v4);
  v145 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v144 = &v134 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v137 = (&v134 - v12);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v142 = &v134 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v135 = (&v134 - v18);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v141 = &v134 - v20;
  v21 = sub_29D933AA8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21 - 8, v23);
  v25 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D939D18();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v32 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v134 - v34;
  sub_29D86F074(0, &qword_2A17B2470, MEMORY[0x29EDBC0A8]);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x2A1C7C4A8](v36 - 8, v38);
  v139 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v138 = &v134 - v43;
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v136 = &v134 - v46;
  MEMORY[0x2A1C7C4A8](v45, v47);
  v163 = &v134 - v48;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v49 = qword_2A1A2BE98;
  v50 = unk_2A1A2BEA0;
  v51 = qword_2A1A2BEA8;
  v52 = v27[2];
  v158 = v27 + 2;
  v157 = v52;
  v52(v32, v35, v26);
  sub_29D935E88();
  v155 = v49;
  sub_29D933A98();
  v159 = v51;
  v160 = v50;
  v161 = v49;
  sub_29D939D98();
  v153 = v32;
  v154 = v25;
  v53 = v27[1];
  v148 = v27 + 1;
  v156 = v53;
  v53(v35, v26);
  sub_29D86F9D8(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v152 = v54;
  v55 = swift_allocObject();
  v149 = v26;
  v56 = v55;
  v150 = xmmword_29D93DDB0;
  *(v55 + 16) = xmmword_29D93DDB0;
  v57 = (a1 + *(type metadata accessor for LearnHypertensionJournalSummaryView(0) + 28));
  v58 = *v57;
  v59 = v57[1];
  v151 = v57;
  v56[7] = MEMORY[0x29EDC99B0];
  v56[8] = sub_29D69AD24();
  v56[4] = v58;
  v56[5] = v59;
  sub_29D935E88();
  v60 = sub_29D939D38();
  v62 = v61;

  *&v166 = v60;
  *(&v166 + 1) = v62;
  v147 = sub_29D69AB60();
  v63 = sub_29D9392F8();
  v162 = a1;
  v65 = v64;
  v67 = v66;
  sub_29D718DF8();
  v68 = *MEMORY[0x29EDC80E0];
  sub_29D93A658();
  sub_29D939248();
  v69 = sub_29D9392C8();
  v71 = v70;
  v73 = v72;
  v75 = v74;

  sub_29D69ABB4(v63, v65, v67 & 1);

  *&v166 = v69;
  *(&v166 + 1) = v71;
  LOBYTE(v167) = v73 & 1;
  *(&v167 + 1) = v75;
  sub_29D86E5F4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v76 = swift_allocObject();
  v146 = xmmword_29D93F680;
  *(v76 + 16) = xmmword_29D93F680;
  *(v76 + 32) = sub_29D86BE58(type metadata accessor for LearnHypertensionJournalSummaryView);
  *(v76 + 40) = v77;
  *(v76 + 48) = 0x7361654D7478654ELL;
  *(v76 + 56) = 0xEF746E656D657275;
  v78 = sub_29D939F18();

  v79 = HKUIJoinStringsForAutomationIdentifier();

  if (!v79)
  {
    goto LABEL_15;
  }

  sub_29D939D68();

  sub_29D939438();

  sub_29D69ABB4(v69, v71, v73 & 1);

  sub_29D939D08();
  v80 = v149;
  v157(v153, v35, v149);
  sub_29D935E88();
  v81 = v155;
  sub_29D933A98();
  sub_29D939D98();
  v156(v35, v80);
  v82 = swift_allocObject();
  *(v82 + 16) = v150;
  if (v151[3] >= 7)
  {
    v83 = 7;
  }

  else
  {
    v83 = v151[3];
  }

  v84 = 14 - v83;
  if (__OFSUB__(14, v83))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v85 = v151[2];
  if (v85 >= 7)
  {
    v85 = 7;
  }

  v86 = __OFSUB__(v84, v85);
  v87 = v84 - v85;
  if (v86)
  {
    goto LABEL_14;
  }

  v160 = v85;
  v161 = v83;
  v88 = MEMORY[0x29EDC9C10];
  *(v82 + 56) = MEMORY[0x29EDC9BA8];
  *(v82 + 64) = v88;
  *(v82 + 32) = v87;
  v89 = sub_29D939D38();
  v91 = v90;

  *&v166 = v89;
  *(&v166 + 1) = v91;
  v92 = sub_29D9392F8();
  v94 = v93;
  v96 = v95;
  sub_29D939148();
  v97 = sub_29D9392C8();
  v99 = v98;
  v101 = v100;
  v103 = v102;

  sub_29D69ABB4(v92, v94, v96 & 1);

  *&v166 = v97;
  *(&v166 + 1) = v99;
  v104 = v101 & 1;
  LOBYTE(v167) = v101 & 1;
  *(&v167 + 1) = v103;
  v105 = swift_allocObject();
  *(v105 + 16) = v146;
  *(v105 + 32) = sub_29D86BE58(type metadata accessor for LearnHypertensionJournalSummaryView);
  *(v105 + 40) = v106;
  *(v105 + 48) = 0xD000000000000010;
  *(v105 + 56) = 0x800000029D969D40;
  v107 = sub_29D939F18();

  v108 = HKUIJoinStringsForAutomationIdentifier();

  if (v108)
  {
    sub_29D939D68();

    v109 = v136;
    sub_29D939438();

    sub_29D69ABB4(v97, v99, v104);

    sub_29D86AB3C(v164);
    KeyPath = swift_getKeyPath();
    v111 = swift_getKeyPath();
    v112 = v135;
    *v135 = v111;
    sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    v113 = v140;
    v114 = v112 + *(v140 + 20);
    *v114 = KeyPath;
    *(v114 + 1) = 0;
    v114[16] = 0;
    *(v112 + v113[6]) = v160;
    *(v112 + v113[7]) = 7;
    v115 = v112 + v113[8];
    v116 = v164[1];
    *v115 = v164[0];
    *(v115 + 1) = v116;
    *(v115 + 2) = v164[2];
    *(v115 + 6) = v165;
    v117 = v112;
    v118 = v141;
    sub_29D685EEC(v117, v141);
    sub_29D86AE4C(&v166);
    v119 = swift_getKeyPath();
    v120 = swift_getKeyPath();
    v121 = v137;
    *v137 = v120;
    swift_storeEnumTagMultiPayload();
    v122 = v121 + v113[5];
    *v122 = v119;
    *(v122 + 8) = 0;
    *(v122 + 16) = 0;
    *(v121 + v113[6]) = v161;
    *(v121 + v113[7]) = 7;
    v123 = v121 + v113[8];
    v124 = v167;
    *v123 = v166;
    *(v123 + 16) = v124;
    *(v123 + 32) = v168;
    *(v123 + 48) = v169;
    v125 = v142;
    sub_29D685EEC(v121, v142);
    v126 = v138;
    sub_29D86E644(v163, v138);
    v127 = v139;
    sub_29D86E644(v109, v139);
    v128 = v144;
    sub_29D685F50(v118, v144);
    v129 = v145;
    sub_29D685F50(v125, v145);
    v130 = v143;
    sub_29D86E644(v126, v143);
    sub_29D86E53C();
    v132 = v131;
    sub_29D86E644(v127, v130 + *(v131 + 48));
    sub_29D685F50(v128, v130 + *(v132 + 64));
    sub_29D685F50(v129, v130 + *(v132 + 80));
    sub_29D86E4DC(v125, type metadata accessor for SevenDayView);
    sub_29D86E4DC(v118, type metadata accessor for SevenDayView);
    v133 = MEMORY[0x29EDBC0A8];
    sub_29D86FC28(v109, &qword_2A17B2470, MEMORY[0x29EDBC0A8], sub_29D86F074);
    sub_29D86FC28(v163, &qword_2A17B2470, v133, sub_29D86F074);
    sub_29D86E4DC(v129, type metadata accessor for SevenDayView);
    sub_29D86E4DC(v128, type metadata accessor for SevenDayView);
    sub_29D86FC28(v127, &qword_2A17B2470, v133, sub_29D86F074);
    sub_29D86FC28(v126, &qword_2A17B2470, v133, sub_29D86F074);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_29D86BE58(uint64_t (*a1)(void))
{
  v3 = sub_29D938B68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + *(a1(0) + 20);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*(v9 + 16) == 1)
  {
    sub_29D935E88();
  }

  else
  {

    sub_29D93A298();
    v12 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();
    sub_29D86E6C4(v10, v11, 0);
    (*(v4 + 8))(v8, v3);
    return v14;
  }

  return v10;
}

double sub_29D86BFD4@<D0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v6 = a3 + a2[5];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = a2[6];
  v8 = sub_29D9369A8();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  sub_29D86E5F4(0, &qword_2A17B6A68, &type metadata for LearnHypertensionJournalSummaryView.ViewModel, MEMORY[0x29EDC1E70]);
  v10 = v9;
  sub_29D9351B8();
  (*(*(v10 - 8) + 8))(a1, v10);
  v11 = a3 + a2[7];
  *v11 = v13;
  *(v11 + 1) = v14;
  result = *&v15;
  *(v11 + 1) = v15;
  v11[32] = v16;
  return result;
}

uint64_t (*sub_29D86C168(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

void sub_29D86C18C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D938C78();
  sub_29D699AF4(v8);
  v10 = *&v8[*(v4 + 32)];
  sub_29D86E4DC(v8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  sub_29D86F6A0(0, &qword_2A17B6AB0, &qword_2A17B6AB8, sub_29D86E53C);
  sub_29D86B164(v1, a1 + *(v11 + 44));
}

uint64_t sub_29D86C280()
{
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v24[-v12];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A2BE98;
  (*(v5 + 16))(v10, v13, v4);
  sub_29D935E88();
  v15 = v14;
  sub_29D933A98();
  sub_29D939D98();
  (*(v5 + 8))(v13, v4);
  sub_29D86F9D8(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D93F680;
  v17 = type metadata accessor for SevenDayView(0);
  v18 = *(v0 + *(v17 + 24));
  v19 = MEMORY[0x29EDC9BA8];
  v20 = MEMORY[0x29EDC9C10];
  *(v16 + 56) = MEMORY[0x29EDC9BA8];
  *(v16 + 64) = v20;
  *(v16 + 32) = v18;
  v21 = *(v0 + *(v17 + 28));
  *(v16 + 96) = v19;
  *(v16 + 104) = v20;
  *(v16 + 72) = v21;
  v22 = sub_29D939D38();

  return v22;
}

uint64_t sub_29D86C534@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86EE98(0, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v60 - v11;
  sub_29D86F614();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29D86F614;
  sub_29D86F0D0(0, &qword_2A17B6BB0, sub_29D86F614);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v60 - v23;
  *v12 = sub_29D938C78();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_29D86F6A0(0, &qword_2A17B6BB8, &qword_2A17B6B28, sub_29D86EF38);
  sub_29D86C9A8(v1, &v12[*(v25 + 44)]);
  sub_29D9398A8();
  sub_29D9388E8();
  sub_29D86F71C(v12, v18);
  v26 = &v18[*(v14 + 44)];
  v27 = v67;
  *(v26 + 4) = v66;
  *(v26 + 5) = v27;
  *(v26 + 6) = v68;
  v29 = v63;
  v28 = v64;
  *v26 = v62;
  *(v26 + 1) = v29;
  v30 = v65;
  *(v26 + 2) = v28;
  *(v26 + 3) = v30;
  sub_29D699AF4(v7);
  v31 = *&v7[*(v3 + 36)];
  sub_29D86E4DC(v7, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  LOBYTE(v14) = sub_29D9390D8();
  sub_29D938618();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_29D86FA3C(v18, v24, sub_29D86F614);
  v40 = &v24[*(v20 + 44)];
  *v40 = v14;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_29D699AF4(v7);
  v41 = *&v7[*(v3 + 72)];
  sub_29D86E4DC(v7, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v42 = v60;
  sub_29D86F7AC(0, &qword_2A17B6BC0, &qword_2A17B6BB0, v60, sub_29D86F824);
  v44 = v61;
  v45 = (v61 + *(v43 + 36));
  v46 = *(sub_29D9388D8() + 20);
  v47 = *MEMORY[0x29EDBC6F8];
  v48 = sub_29D938C38();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  *v45 = v41;
  *(v45 + 1) = v41;
  v49 = *(v1 + *(type metadata accessor for SevenDayView(0) + 32) + 32);
  v50 = sub_29D935E88();
  MEMORY[0x29ED69C80](v50);
  sub_29D9387C8();
  sub_29D86F8B8();
  v52 = &v45[*(v51 + 52)];
  v53 = v70;
  *v52 = v69;
  *(v52 + 1) = v53;
  *(v52 + 4) = v71;
  *&v45[*(v51 + 56)] = 256;
  v54 = sub_29D9398A8();
  v56 = v55;
  sub_29D86F824();
  v58 = &v45[*(v57 + 36)];
  *v58 = v54;
  v58[1] = v56;
  return sub_29D86F968(v24, v44, &qword_2A17B6BB0, v42, sub_29D86F0D0);
}

void sub_29D86C9A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v258 = a1;
  v217 = a2;
  v3 = type metadata accessor for SevenDayView(0);
  v239 = v3;
  v213 = *(v3 - 8);
  v4 = *(v213 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v214 = v6;
  v215 = &v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86F1DC();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v216 = &v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v255 = &v211 - v13;
  v249 = MEMORY[0x29EDBC990];
  sub_29D86F9D8(0, &qword_2A17B2280, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v247 = &v211 - v17;
  v246 = sub_29D939238();
  v244 = *(v246 - 8);
  v18 = *(v244 + 64);
  MEMORY[0x2A1C7C4A8](v246, v19);
  v243 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86F12C();
  v250 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v251 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86F0D0(0, &qword_2A17B6B50, sub_29D86F12C);
  v252 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v253 = &v211 - v28;
  sub_29D86F7AC(0, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x2A1C7C4A8](v29 - 8, v31);
  v212 = &v211 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v254 = &v211 - v35;
  v262 = sub_29D9398C8();
  v266 = *(v262 - 8);
  v36 = *(v266 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v262, v37);
  v248 = &v211 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v238 = &v211 - v41;
  v261 = sub_29D9386B8();
  v265 = *(v261 - 8);
  v42 = *(v265 + 64);
  v44 = MEMORY[0x2A1C7C4A8](v261, v43);
  v242 = &v211 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x2A1C7C4A8](v44, v46);
  v260 = &v211 - v48;
  MEMORY[0x2A1C7C4A8](v47, v49);
  v229 = &v211 - v50;
  v259 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs();
  v51 = *(*(v259 - 8) + 64);
  v53 = MEMORY[0x2A1C7C4A8](v259, v52);
  v245 = &v211 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x2A1C7C4A8](v53, v55);
  v240 = &v211 - v57;
  v59 = MEMORY[0x2A1C7C4A8](v56, v58);
  v264 = &v211 - v60;
  MEMORY[0x2A1C7C4A8](v59, v61);
  v233 = (&v211 - v62);
  v237 = MEMORY[0x29EDBC5D8];
  sub_29D86F074(0, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
  v64 = *(v63 - 8);
  v263 = v63 - 8;
  v65 = *(v64 + 64);
  v67 = MEMORY[0x2A1C7C4A8](v63 - 8, v66);
  v241 = &v211 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v67, v69);
  v71 = &v211 - v70;
  sub_29D86EFF8();
  v73 = *(v72 - 8);
  v234 = v72 - 8;
  v74 = *(v73 + 64);
  v76 = MEMORY[0x2A1C7C4A8](v72 - 8, v75);
  v211 = &v211 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x2A1C7C4A8](v76, v78);
  v223 = &v211 - v80;
  MEMORY[0x2A1C7C4A8](v79, v81);
  v257 = &v211 - v82;
  v83 = (v2 + *(v3 + 32));
  v84 = v83[2];
  v85 = v83[3];
  v256 = v83;
  v267 = v84;
  v268 = v85;
  v224 = sub_29D69AB60();
  sub_29D935E88();
  v86 = sub_29D9392F8();
  v88 = v87;
  v90 = v89;
  sub_29D939228();
  v91 = sub_29D9392C8();
  v93 = v92;
  LOBYTE(v2) = v94;

  sub_29D69ABB4(v86, v88, v90 & 1);

  sub_29D939178();
  v95 = sub_29D939298();
  v97 = v96;
  LOBYTE(v86) = v98;
  sub_29D69ABB4(v91, v93, v2 & 1);

  LODWORD(v267) = sub_29D938EF8();
  v220 = sub_29D9392B8();
  v219 = v99;
  v218 = v100;
  v221 = v101;
  sub_29D69ABB4(v95, v97, v86 & 1);

  v102 = v233;
  sub_29D699AF4(v233);
  v103 = v259;
  v104 = *(v259 + 20);
  v105 = v265;
  v106 = *(v265 + 16);
  v235 = v265 + 16;
  v236 = v106;
  v107 = v229;
  v108 = v261;
  v106(v229, v102 + v104, v261);
  v222 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs;
  sub_29D86E4DC(v102, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v231 = *MEMORY[0x29EDBC368];
  v109 = *(v105 + 104);
  v232 = v105 + 104;
  v233 = v109;
  v110 = v260;
  (v109)(v260);
  LOBYTE(v102) = sub_29D9386A8();
  v111 = *(v105 + 8);
  v265 = v105 + 8;
  v230 = v111;
  v111(v110, v108);
  v111(v107, v108);
  v112 = v266;
  v113 = *(v266 + 104);
  v227 = v113;
  v229 = (v266 + 104);
  v114 = *MEMORY[0x29EDBCBD8];
  v226 = *MEMORY[0x29EDBCBD8];
  v115 = *MEMORY[0x29EDBCBE0];
  v228 = *MEMORY[0x29EDBCBE0];
  if (v102)
  {
    v116 = v114;
  }

  else
  {
    v116 = v115;
  }

  v117 = v238;
  v118 = v262;
  v113(v238, v116, v262);
  v119 = *(v263 + 44);
  v120 = *(v112 + 32);
  v266 = v112 + 32;
  v225 = v120;
  v120(&v71[v119], v117, v118);
  v121 = v219;
  *v71 = v220;
  *(v71 + 1) = v121;
  v71[16] = v218 & 1;
  *(v71 + 3) = v221;
  LOBYTE(v118) = sub_29D9390F8();
  v122 = v264;
  sub_29D699AF4(v264);
  v123 = *(v122 + *(v103 + 32));
  sub_29D86E4DC(v122, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D938618();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = v223;
  sub_29D86F968(v71, v223, &qword_2A17B6B40, v237, sub_29D86F074);
  v133 = v132 + *(v234 + 44);
  *v133 = v118;
  *(v133 + 8) = v125;
  *(v133 + 16) = v127;
  *(v133 + 24) = v129;
  *(v133 + 32) = v131;
  *(v133 + 40) = 0;
  sub_29D86FA3C(v132, v257, sub_29D86EFF8);
  v267 = sub_29D86C280();
  v268 = v134;
  v135 = sub_29D9392F8();
  v137 = v136;
  v139 = v138;
  v238 = v140;
  v141 = v244;
  v142 = v243;
  v143 = v246;
  (*(v244 + 104))(v243, *MEMORY[0x29EDBC9D0], v246);
  v144 = *MEMORY[0x29EDBC988];
  v145 = sub_29D939168();
  v146 = *(v145 - 8);
  v147 = v247;
  (*(v146 + 104))(v247, v144, v145);
  (*(v146 + 56))(v147, 0, 1, v145);
  sub_29D9391B8();
  sub_29D86FAA4(v147, &qword_2A17B2280, v249);
  (*(v141 + 8))(v142, v143);
  v148 = sub_29D9392C8();
  v150 = v149;
  LOBYTE(v143) = v151;

  sub_29D69ABB4(v135, v137, v139 & 1);

  sub_29D939178();
  v247 = sub_29D939298();
  v153 = v152;
  v155 = v154;
  v249 = v156;
  v157 = v143 & 1;
  v158 = v259;
  v159 = v239;
  sub_29D69ABB4(v148, v150, v157);

  v160 = v240;
  v161 = v258;
  sub_29D699AF4(v240);
  v162 = v242;
  v163 = v261;
  v236(v242, v160 + v158[5], v261);
  sub_29D86E4DC(v160, v222);
  v164 = v260;
  v165 = v163;
  (v233)(v260, v231, v163);
  LOBYTE(v163) = sub_29D9386A8();
  v166 = v230;
  v230(v164, v165);
  v166(v162, v165);
  if (v163)
  {
    v167 = v226;
  }

  else
  {
    v167 = v228;
  }

  v168 = v248;
  v169 = v262;
  v227(v248, v167, v262);
  v170 = v168;
  v171 = v241;
  v225(&v241[*(v263 + 44)], v170, v169);
  *v171 = v247;
  *(v171 + 8) = v153;
  v172 = v245;
  v173 = v155 & 1;
  v174 = v161;
  *(v171 + 16) = v173;
  *(v171 + 24) = v249;
  sub_29D699AF4(v172);
  v175 = v159;
  if (*(v161 + *(v159 + 24)))
  {
    v176 = v256 + 1;
  }

  else
  {
    v176 = (v172 + v158[12]);
  }

  v177 = *v176;

  sub_29D86E4DC(v172, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v178 = v251;
  sub_29D86F968(v171, v251, &qword_2A17B6B40, MEMORY[0x29EDBC5D8], sub_29D86F074);
  *(v178 + *(v250 + 36)) = v177;
  LOBYTE(v177) = sub_29D9390F8();
  v179 = v264;
  sub_29D699AF4(v264);
  v180 = *(v179 + v158[9]);
  sub_29D86E4DC(v179, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D938618();
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  v189 = v253;
  sub_29D86FA3C(v178, v253, sub_29D86F12C);
  v190 = v189 + *(v252 + 36);
  *v190 = v177;
  *(v190 + 8) = v182;
  *(v190 + 16) = v184;
  *(v190 + 24) = v186;
  *(v190 + 32) = v188;
  *(v190 + 40) = 0;
  sub_29D86E5F4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_29D943EA0;
  *(v191 + 32) = sub_29D86BE58(type metadata accessor for SevenDayView);
  *(v191 + 40) = v192;
  v193 = v256[6];
  *(v191 + 48) = v256[5];
  *(v191 + 56) = v193;
  *(v191 + 64) = 0x7265746E756F43;
  *(v191 + 72) = 0xE700000000000000;
  sub_29D935E88();
  v194 = sub_29D939F18();

  v195 = HKUIJoinStringsForAutomationIdentifier();

  v196 = v255;
  v197 = v254;
  if (v195)
  {
    sub_29D939D68();

    sub_29D870084(&qword_2A17B6BE0, &qword_2A17B6B50, sub_29D86F12C, sub_29D86FB14);
    sub_29D939438();

    sub_29D86FC28(v189, &qword_2A17B6B50, sub_29D86F12C, sub_29D86F0D0);
    *v196 = sub_29D938B98();
    *(v196 + 8) = 0x4022000000000000;
    *(v196 + 16) = 0;
    sub_29D86FC88();
    v199 = *(v174 + *(v175 + 28));
    if ((v199 & 0x8000000000000000) == 0)
    {
      v200 = *(v198 + 44);
      v267 = 0;
      v268 = v199;
      swift_getKeyPath();
      v201 = v215;
      sub_29D685F50(v174, v215);
      v202 = (*(v213 + 80) + 16) & ~*(v213 + 80);
      v203 = swift_allocObject();
      sub_29D685EEC(v201, v203 + v202);
      sub_29D86F300(0, &qword_2A17B10F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
      sub_29D86F354();
      sub_29D86F3BC();
      sub_29D86F534();
      sub_29D9397C8();
      v204 = v257;
      v205 = v211;
      sub_29D86FD70(v257, v211, sub_29D86EFF8);
      v206 = v212;
      sub_29D86FDD8(v197, v212);
      v207 = v216;
      sub_29D86FD70(v196, v216, sub_29D86F1DC);
      v208 = v217;
      sub_29D86FD70(v205, v217, sub_29D86EFF8);
      sub_29D86EF38();
      v210 = v209;
      sub_29D86FDD8(v206, v208 + *(v209 + 48));
      sub_29D86FD70(v207, v208 + *(v210 + 64), sub_29D86F1DC);
      sub_29D86FE74(v196, sub_29D86F1DC);
      sub_29D86FED4(v197);
      sub_29D86FE74(v204, sub_29D86EFF8);
      sub_29D86FE74(v207, sub_29D86F1DC);
      sub_29D86FED4(v206);
      sub_29D86FE74(v205, sub_29D86EFF8);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_29D86DD54(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v5 = type metadata accessor for LearnHypertensionJournalCheckmarkView();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = type metadata accessor for SevenDayView(0);
  v12 = *(a2 + *(v11 + 24));
  v13 = (a2 + *(v11 + 32));
  v14 = v13[1];
  *v9 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v5 + 20)) = v10 < v12;
  *(v9 + *(v5 + 24)) = v14;
  if (v10 >= v12)
  {
    v15 = 0x656C63726943;
  }

  else
  {
    v15 = 0x694364656C6C6946;
  }

  if (v10 >= v12)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xEC000000656C6372;
  }

  sub_29D86E5F4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D946CA0;

  *(v17 + 32) = sub_29D86BE58(type metadata accessor for SevenDayView);
  *(v17 + 40) = v18;
  v19 = v13[6];
  *(v17 + 48) = v13[5];
  *(v17 + 56) = v19;
  *(v17 + 64) = v15;
  *(v17 + 72) = v16;
  v23[1] = v10;
  sub_29D935E88();
  *(v17 + 80) = sub_29D93AD38();
  *(v17 + 88) = v20;
  v21 = sub_29D939F18();

  v22 = HKUIJoinStringsForAutomationIdentifier();

  if (v22)
  {
    sub_29D939D68();

    sub_29D86AA5C(&qword_2A17B6B98, type metadata accessor for LearnHypertensionJournalCheckmarkView);
    sub_29D939438();

    sub_29D86E4DC(v9, type metadata accessor for LearnHypertensionJournalCheckmarkView);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D86E014@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9386B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D938818();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9389D8();
  sub_29D938978();
  return sub_29D8F6D54(v11, v6, a1);
}

void sub_29D86E118()
{
  sub_29D86F9D8(319, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D86E5F4(319, &qword_2A17B6A88, MEMORY[0x29EDC99B0], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      sub_29D86F9D8(319, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_29D86E240(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D86E254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_29D86E29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D86E430()
{
  result = qword_2A17B6AA0;
  if (!qword_2A17B6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AA0);
  }

  return result;
}

unint64_t sub_29D86E488()
{
  result = qword_2A17B6AA8;
  if (!qword_2A17B6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AA8);
  }

  return result;
}

uint64_t sub_29D86E4DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D86E53C()
{
  if (!qword_2A17B6AC0)
  {
    sub_29D86F074(255, &qword_2A17B2470, MEMORY[0x29EDBC0A8]);
    type metadata accessor for SevenDayView(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B6AC0);
    }
  }
}

void sub_29D86E5F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D86E644(uint64_t a1, uint64_t a2)
{
  sub_29D86F074(0, &qword_2A17B2470, MEMORY[0x29EDBC0A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D86E6C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29D86E6D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029D969D90 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F437055656B6177 && a2 == 0xEB00000000746E75 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43656D6954646562 && a2 == 0xEC000000746E756FLL || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574)
  {

    return 3;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29D86E854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D86EAF4(0, &qword_2A17B6AC8, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D86EAA0();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v25 = 0;
  v13 = sub_29D93AC58();
  v15 = v14;
  v16 = v13;
  v24 = 1;
  v21 = sub_29D93AC78();
  v23 = 2;
  v20 = sub_29D93AC78();
  v22 = 3;
  v17 = sub_29D93AC68();
  (*(v7 + 8))(v11, v6);
  result = sub_29D69417C(a1);
  *a2 = v16;
  *(a2 + 8) = v15;
  v19 = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17 & 1;
  return result;
}

unint64_t sub_29D86EAA0()
{
  result = qword_2A17B6AD0;
  if (!qword_2A17B6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AD0);
  }

  return result;
}

void sub_29D86EAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D86EAA0();
    v7 = a3(a1, &type metadata for LearnHypertensionJournalSummaryView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D86EB90()
{
  sub_29D86F9D8(319, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D86E5F4(319, &qword_2A17B6A88, MEMORY[0x29EDC99B0], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D86EC8C()
{
  result = qword_2A17B6AF0;
  if (!qword_2A17B6AF0)
  {
    sub_29D86EE98(255, &qword_2A17B6AF8, &qword_2A17B6AB8, sub_29D86E53C, &qword_2A17B6B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AF0);
  }

  return result;
}

uint64_t sub_29D86ED10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D86F9D8(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D86ED94()
{
  result = qword_2A17B6B08;
  if (!qword_2A17B6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B08);
  }

  return result;
}

unint64_t sub_29D86EDEC()
{
  result = qword_2A17B6B10;
  if (!qword_2A17B6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B10);
  }

  return result;
}

unint64_t sub_29D86EE44()
{
  result = qword_2A17B6B18;
  if (!qword_2A17B6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B18);
  }

  return result;
}

void sub_29D86EE98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D86F9D8(255, a3, a4, MEMORY[0x29EDBCC28]);
    sub_29D86ED10(a5, a3, a4);
    v9 = sub_29D939758();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D86EF38()
{
  if (!qword_2A17B6B30)
  {
    sub_29D86EFF8();
    sub_29D86F7AC(255, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
    sub_29D86F1DC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B6B30);
    }
  }
}

void sub_29D86EFF8()
{
  if (!qword_2A17B6B38)
  {
    sub_29D86F074(255, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6B38);
    }
  }
}

void sub_29D86F074(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D86F0D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D86F12C()
{
  if (!qword_2A17B6B58)
  {
    sub_29D86F074(255, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
    sub_29D86F300(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6B58);
    }
  }
}

void sub_29D86F1DC()
{
  if (!qword_2A17B6B60)
  {
    sub_29D86F240();
    sub_29D86F4BC();
    v0 = sub_29D939728();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6B60);
    }
  }
}

void sub_29D86F240()
{
  if (!qword_2A17B6B68)
  {
    sub_29D86F300(255, &qword_2A17B10F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29D86F354();
    sub_29D86F3BC();
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6B68);
    }
  }
}

void sub_29D86F300(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29D86F354()
{
  if (!qword_2A17B6B70)
  {
    type metadata accessor for LearnHypertensionJournalCheckmarkView();
    sub_29D939098();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6B70);
    }
  }
}

unint64_t sub_29D86F3BC()
{
  result = qword_2A17B6B78;
  if (!qword_2A17B6B78)
  {
    sub_29D86F300(255, &qword_2A17B10F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29D86F468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B78);
  }

  return result;
}

unint64_t sub_29D86F468()
{
  result = qword_2A17B6B80;
  if (!qword_2A17B6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B80);
  }

  return result;
}

unint64_t sub_29D86F4BC()
{
  result = qword_2A17B6B88;
  if (!qword_2A17B6B88)
  {
    sub_29D86F240();
    sub_29D86F534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B88);
  }

  return result;
}

unint64_t sub_29D86F534()
{
  result = qword_2A17B6B90;
  if (!qword_2A17B6B90)
  {
    sub_29D86F354();
    sub_29D86AA5C(&qword_2A17B6B98, type metadata accessor for LearnHypertensionJournalCheckmarkView);
    sub_29D86AA5C(&qword_2A17B46A0, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B90);
  }

  return result;
}

void sub_29D86F614()
{
  if (!qword_2A17B6BA8)
  {
    sub_29D86EE98(255, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6BA8);
    }
  }
}

void sub_29D86F6A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D86F9D8(255, a3, a4, MEMORY[0x29EDBCC28]);
    v5 = sub_29D938788();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D86F71C(uint64_t a1, uint64_t a2)
{
  sub_29D86EE98(0, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D86F7AC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29D86F0D0(255, a3, a4);
    a5(255);
    v7 = sub_29D938838();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D86F824()
{
  if (!qword_2A17B6BC8)
  {
    sub_29D86F8B8();
    sub_29D86AA5C(&qword_2A17B6BD8, sub_29D86F8B8);
    v0 = sub_29D938DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6BC8);
    }
  }
}

void sub_29D86F8B8()
{
  if (!qword_2A17B6BD0)
  {
    sub_29D9388D8();
    sub_29D86AA5C(&qword_2A17B2FD8, MEMORY[0x29EDBC5C0]);
    v0 = sub_29D938698();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6BD0);
    }
  }
}

uint64_t sub_29D86F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_29D86F9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D86FA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D86FAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D86F9D8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D86FB14()
{
  result = qword_2A17B6BE8;
  if (!qword_2A17B6BE8)
  {
    sub_29D86F12C();
    sub_29D86FB94();
    sub_29D6FA560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6BE8);
  }

  return result;
}

unint64_t sub_29D86FB94()
{
  result = qword_2A17B6BF0;
  if (!qword_2A17B6BF0)
  {
    sub_29D86F074(255, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6BF0);
  }

  return result;
}

uint64_t sub_29D86FC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29D86FC88()
{
  if (!qword_2A17B6BF8)
  {
    sub_29D86F240();
    v0 = sub_29D938788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6BF8);
    }
  }
}

void sub_29D86FCF0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SevenDayView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_29D86DD54(a1, v6, a2);
}

uint64_t sub_29D86FD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D86FDD8(uint64_t a1, uint64_t a2)
{
  sub_29D86F7AC(0, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D86FE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D86FED4(uint64_t a1)
{
  sub_29D86F7AC(0, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D86FF68()
{
  result = qword_2A17B6C00;
  if (!qword_2A17B6C00)
  {
    sub_29D86F7AC(255, &qword_2A17B6BC0, &qword_2A17B6BB0, sub_29D86F614, sub_29D86F824);
    sub_29D870084(&qword_2A17B6C08, &qword_2A17B6BB0, sub_29D86F614, sub_29D870104);
    sub_29D86AA5C(&qword_2A17B6C20, sub_29D86F824);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C00);
  }

  return result;
}

uint64_t sub_29D870084(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D86F0D0(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D870104()
{
  result = qword_2A17B6C10;
  if (!qword_2A17B6C10)
  {
    sub_29D86F614();
    sub_29D870184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C10);
  }

  return result;
}

unint64_t sub_29D870184()
{
  result = qword_2A17B6C18;
  if (!qword_2A17B6C18)
  {
    sub_29D86EE98(255, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C18);
  }

  return result;
}

uint64_t sub_29D87020C(void *a1, int a2)
{
  v28 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29D8733A8(0, &qword_2A17B6C60, sub_29D8732AC, &type metadata for BloodPressureJournalOnboardingPromotionStatus.PromotedCodingKeys, MEMORY[0x29EDC9E88]);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v23 - v7;
  sub_29D8733A8(0, &qword_2A17B6C68, sub_29D873300, &type metadata for BloodPressureJournalOnboardingPromotionStatus.NotPromotedCodingKeys, v3);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v23 - v12;
  sub_29D8733A8(0, &qword_2A17B6C70, sub_29D873354, &type metadata for BloodPressureJournalOnboardingPromotionStatus.CodingKeys, v3);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v14, v18);
  v20 = &v23 - v19;
  v21 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D873354();
  sub_29D93AED8();
  if (v28)
  {
    v30 = 1;
    sub_29D8732AC();
    sub_29D93ACA8();
    (*(v26 + 8))(v8, v27);
  }

  else
  {
    v29 = 0;
    sub_29D873300();
    sub_29D93ACA8();
    (*(v24 + 8))(v13, v25);
  }

  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_29D870520()
{
  if (*v0)
  {
    result = 0x6465746F6D6F7270;
  }

  else
  {
    result = 0x6F6D6F7250746F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_29D870564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6D6F7250746F6ELL && a2 == 0xEB00000000646574;
  if (v6 || (sub_29D93AD78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465746F6D6F7270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29D93AD78();

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

uint64_t sub_29D870644(uint64_t a1)
{
  v2 = sub_29D873354();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D870680(uint64_t a1)
{
  v2 = sub_29D873354();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8706BC(uint64_t a1)
{
  v2 = sub_29D873300();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8706F8(uint64_t a1)
{
  v2 = sub_29D873300();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D870734(uint64_t a1)
{
  v2 = sub_29D8732AC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D870770(uint64_t a1)
{
  v2 = sub_29D8732AC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t *sub_29D8707AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D872E1C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_29D8707F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  sub_29D873DEC(0, &qword_2A1A25768, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_29D9340F8();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = sub_29D937898();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8709BC, 0, 0);
}

uint64_t sub_29D8709BC()
{
  v83 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  sub_29D873EAC(&qword_2A1A24580, v4, type metadata accessor for BloodPressureJournalSetUpJournalExecutor);
  sub_29D933F28();
  v5 = *(v0 + 152);
  sub_29D937838();
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 152);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  if (v8)
  {
    v12 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v82[0] = v14;
    *v13 = 136446466;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, v82);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v82);
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Running workplan", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }

  v18 = *(v10 + 8);
  v18(v9, v11);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 80);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);
  sub_29D872458();
  sub_29D937448();
  sub_29D871724(*(v0 + 208), v21);
  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    v24 = *(v0 + 136);
    sub_29D873D18(*(v0 + 80), &qword_2A1A25768, MEMORY[0x29EDC3840]);
    sub_29D937838();
    v25 = sub_29D937878();
    v26 = sub_29D93A268();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = *(v0 + 120);
    if (v27)
    {
      v80 = *(v0 + 136);
      v31 = *(v0 + 72);
      v32 = swift_slowAlloc();
      v77 = v18;
      v33 = swift_slowAlloc();
      v82[0] = v33;
      *v32 = 136446466;
      v34 = sub_29D93AF08();
      v36 = sub_29D6C2364(v34, v35, v82);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v82);
      _os_log_impl(&dword_29D677000, v25, v26, "[%{public}s.%{public}s]: No BPJ set up feed item is created. Replacing with an empty feed item", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);

      v77(v80, v30);
    }

    else
    {

      v18(v28, v30);
    }

    v60 = *(v0 + 40);
    v59 = *(v0 + 48);
    sub_29D693E2C((v0 + 16), v60);
    v61 = *(MEMORY[0x29EDC3888] + 4);
    v62 = swift_task_alloc();
    *(v0 + 192) = v62;
    *v62 = v0;
    v62[1] = sub_29D8713E0;
    v63 = MEMORY[0x29EDCA190];
  }

  else
  {
    v37 = *(v0 + 144);
    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    v40 = *(v0 + 88);
    v41 = *(v0 + 96);
    (*(v41 + 32))(v38, *(v0 + 80), v40);
    sub_29D937838();
    v81 = *(v41 + 16);
    v81(v39, v38, v40);
    v42 = sub_29D937878();
    v76 = sub_29D93A2A8();
    v43 = os_log_type_enabled(v42, v76);
    v44 = *(v0 + 144);
    v45 = *(v0 + 120);
    v79 = *(v0 + 128);
    v47 = *(v0 + 96);
    v46 = *(v0 + 104);
    v48 = *(v0 + 88);
    if (v43)
    {
      v75 = *(v0 + 144);
      v49 = *(v0 + 72);
      v78 = v18;
      v50 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v82[0] = v73;
      *v50 = 136446722;
      v51 = sub_29D93AF08();
      v74 = v45;
      v53 = sub_29D6C2364(v51, v52, v82);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v82);
      *(v50 + 22) = 2080;
      sub_29D873EAC(&qword_2A1A247A8, 255, MEMORY[0x29EDC3840]);
      v54 = sub_29D93AD38();
      v56 = v55;
      v57 = *(v47 + 8);
      v57(v46, v48);
      v58 = sub_29D6C2364(v54, v56, v82);

      *(v50 + 24) = v58;
      _os_log_impl(&dword_29D677000, v42, v76, "[%{public}s.%{public}s]: Replacing BPJ Set Up feeditem: %s ", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v73, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);

      v78(v75, v74);
    }

    else
    {

      v57 = *(v47 + 8);
      v57(v46, v48);
      v18(v44, v45);
    }

    *(v0 + 160) = v57;
    v64 = *(v0 + 112);
    v65 = *(v0 + 88);
    v66 = *(v0 + 96);
    v60 = *(v0 + 40);
    v59 = *(v0 + 48);
    sub_29D693E2C((v0 + 16), v60);
    sub_29D873DEC(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v67 = *(v66 + 72);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    *(v0 + 168) = v69;
    *(v69 + 16) = xmmword_29D93DDB0;
    v81(v69 + v68, v64, v65);
    v70 = *(MEMORY[0x29EDC3888] + 4);
    v71 = swift_task_alloc();
    *(v0 + 176) = v71;
    *v71 = v0;
    v71[1] = sub_29D8711DC;
    v63 = v69;
  }

  return MEMORY[0x2A1C64D80](v63, v60, v59);
}

uint64_t sub_29D8711DC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_29D871658;
  }

  else
  {
    v6 = sub_29D871310;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D871310()
{
  v1 = *(v0 + 96) + 8;
  (*(v0 + 160))(*(v0 + 112), *(v0 + 88));
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 80);
  sub_29D69417C((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29D8713E0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_29D8715A8;
  }

  else
  {
    v3 = sub_29D8714F4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D8714F4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  sub_29D69417C(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_29D8715A8()
{
  sub_29D69417C(v0 + 2);
  v1 = v0[25];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_29D871658()
{
  v1 = *(v0 + 96) + 8;
  (*(v0 + 160))(*(v0 + 112), *(v0 + 88));
  sub_29D69417C((v0 + 16));
  v2 = *(v0 + 184);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_29D871724@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v32 - v14;
  if (a1)
  {
    sub_29D937838();
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v33);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, v16, v17, "[%s] Onboarding for BPJ is promoted. Continuing to create feed item.", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    return sub_29D871A54(a2);
  }

  else
  {
    sub_29D937838();
    v24 = sub_29D937878();
    v25 = sub_29D93A2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29D677000, v24, v25, "[%s] Onboarding for BPJ is not promoted. Not creating a feed item.", v26, 0xCu);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v31 = sub_29D9340F8();
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_29D871A54@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_29D934798();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D934A18();
  v15 = *(v4 - 8);
  v16 = v4;
  v5 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = "cutor7Planner";
  sub_29D740490();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v13[1] = sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9349E8();
  v9 = sub_29D933FE8();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D93A928())
    {
      sub_29D872AC4(MEMORY[0x29EDCA190]);
    }

    type metadata accessor for BloodPressureJournalPromptTileViewActionHandler();
    sub_29D873EAC(&qword_2A1A22F00, 255, type metadata accessor for BloodPressureJournalPromptTileViewActionHandler);
    v10 = v14;
    sub_29D934038();

    if (sub_29D93A928())
    {
      sub_29D6E3D70(MEMORY[0x29EDCA190]);
    }
  }

  else
  {
    type metadata accessor for BloodPressureJournalPromptTileViewActionHandler();
    sub_29D873EAC(&qword_2A1A22F00, 255, type metadata accessor for BloodPressureJournalPromptTileViewActionHandler);
    v10 = v14;
    sub_29D934038();
  }

  sub_29D9340B8();
  sub_29D934078();
  sub_29D934088();
  (*(v15 + 8))(v8, v16);
  v11 = sub_29D9340F8();
  return (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
}

uint64_t sub_29D871F00()
{
  v1 = *(v0 + 2);
  sub_29D936978();
  v2 = OBJC_IVAR____TtCC5Heart40BloodPressureJournalSetUpJournalExecutor7Planner_signals;
  v3 = sub_29D937358();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D871FA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5Heart40BloodPressureJournalSetUpJournalExecutor7Planner_signals;
  v4 = sub_29D937358();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D87201C()
{
  v1 = *v0;
  sub_29D873410();
  v2 = v0[2];
  v3 = v0[3];
  v6[3] = swift_getObjectType();
  v6[4] = *(v3 + 8);
  v6[0] = v2;
  v4 = *(*(v3 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29D9374E8();
  sub_29D936978();

  return sub_29D69417C(v6);
}

uint64_t sub_29D87211C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29D873EAC(&qword_2A1A24650, 255, type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29D8721F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29D873EAC(&qword_2A1A24650, 255, type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29D8722B8()
{
  v1 = *(v0 + 16);
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner()
{
  result = qword_2A1A24638;
  if (!qword_2A1A24638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D872370()
{
  result = sub_29D937358();
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

void sub_29D872458()
{
  if (!qword_2A1A246C0)
  {
    sub_29D8724C0();
    sub_29D872514();
    v0 = sub_29D937458();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A246C0);
    }
  }
}

unint64_t sub_29D8724C0()
{
  result = qword_2A1A23000;
  if (!qword_2A1A23000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23000);
  }

  return result;
}

unint64_t sub_29D872514()
{
  result = qword_2A1A23008;
  if (!qword_2A1A23008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23008);
  }

  return result;
}

uint64_t sub_29D872568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D8707F8(a1);
}

uint64_t sub_29D8725FC(uint64_t a1)
{
  v3 = sub_29D937358();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 16);
  v15 = *(v1 + 16);
  v9(v8, a1, v3);
  v10 = type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  (*(v4 + 32))(v13 + OBJC_IVAR____TtCC5Heart40BloodPressureJournalSetUpJournalExecutor7Planner_signals, v8, v3);
  swift_unknownObjectRetain();
  return v13;
}

uint64_t sub_29D872728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29D873EAC(qword_2A1A24588, a2, type metadata accessor for BloodPressureJournalSetUpJournalExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29D872828()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D87285C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D872890()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8728C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8728F8(unint64_t a1, unint64_t a2)
{
  sub_29D7CE038();
  if (a2 >> 62)
  {
    v4 = sub_29D93AB78();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29D93AA18();
    v6 = 0xD000000000000046;
    v5 = 0x800000029D969F20;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29D93AA18();
  v5 = 0x800000029D969ED0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED6A240](v6, v5);
  v8 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v8);

  MEMORY[0x29ED6A240](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v9);

  result = sub_29D93AB38();
  __break(1u);
  return result;
}

void sub_29D872AC4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D93A928())
    {
LABEL_3:
      sub_29D872D84();
      v3 = sub_29D93A9E8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D93A928();
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

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = sub_29D8728F8(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_29D93A6F8();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_29D7CE038();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_29D93A708();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        sub_29D936978();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
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
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_29D93A6F8();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_29D7CE038();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_29D93A708();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_29D872D84()
{
  if (!qword_2A1A248B0)
  {
    sub_29D7CE038();
    sub_29D873EAC(&qword_2A1A24938, 255, sub_29D7CE038);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A248B0);
    }
  }
}

uint64_t *sub_29D872E1C(uint64_t *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29D8733A8(0, &qword_2A17B6C30, sub_29D8732AC, &type metadata for BloodPressureJournalOnboardingPromotionStatus.PromotedCodingKeys, MEMORY[0x29EDC9E80]);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v37 = &v32 - v6;
  sub_29D8733A8(0, &qword_2A17B6C40, sub_29D873300, &type metadata for BloodPressureJournalOnboardingPromotionStatus.NotPromotedCodingKeys, v2);
  v8 = v7;
  v36 = *(v7 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v32 - v11;
  sub_29D8733A8(0, &qword_2A17B6C50, sub_29D873354, &type metadata for BloodPressureJournalOnboardingPromotionStatus.CodingKeys, v2);
  v14 = v13;
  v38 = *(v13 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v32 - v17;
  v19 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D873354();
  v20 = v39;
  sub_29D93AEC8();
  if (v20)
  {
    goto LABEL_7;
  }

  v22 = v36;
  v21 = v37;
  v33 = v8;
  v39 = a1;
  v23 = v18;
  v24 = sub_29D93AC98();
  if (*(v24 + 16) != 1)
  {
    v26 = sub_29D93AA78();
    swift_allocError();
    v28 = v27;
    sub_29D6CA748();
    v30 = *(v29 + 48);
    *v28 = &type metadata for BloodPressureJournalOnboardingPromotionStatus;
    sub_29D93AC18();
    sub_29D93AA58();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x29EDC9DB8], v26);
    swift_willThrow();
    (*(v38 + 8))(v18, v14);
    sub_29D936978();
    a1 = v39;
LABEL_7:
    sub_29D69417C(a1);
    return a1;
  }

  v32 = v24;
  a1 = *(v24 + 32);
  if (a1)
  {
    v41 = 1;
    sub_29D8732AC();
    sub_29D93AC08();
    v25 = v38;
    (*(v34 + 8))(v21, v35);
  }

  else
  {
    v40 = 0;
    sub_29D873300();
    sub_29D93AC08();
    v25 = v38;
    (*(v22 + 8))(v12, v33);
  }

  (*(v25 + 8))(v23, v14);
  sub_29D936978();
  sub_29D69417C(v39);
  return a1;
}

unint64_t sub_29D8732AC()
{
  result = qword_2A17B6C38;
  if (!qword_2A17B6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C38);
  }

  return result;
}

unint64_t sub_29D873300()
{
  result = qword_2A17B6C48;
  if (!qword_2A17B6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C48);
  }

  return result;
}

unint64_t sub_29D873354()
{
  result = qword_2A17B6C58;
  if (!qword_2A17B6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C58);
  }

  return result;
}

void sub_29D8733A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D873410()
{
  v0 = sub_29D937308();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  sub_29D6A0C58();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D940030;
  sub_29D9372F8();
  v4 = MEMORY[0x29EDC9E90];
  sub_29D873DEC(0, &qword_2A1A21F38, sub_29D873D88, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  sub_29D873DEC(0, &unk_2A1A21F08, type metadata accessor for HKFeatureIdentifier, v4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  v7 = *MEMORY[0x29EDBA6B8];
  *(inited + 32) = *MEMORY[0x29EDBA6B8];
  v8 = v7;
  sub_29D6E5BC0(inited);
  swift_setDeallocating();
  sub_29D873E50(inited + 32);
  *(v5 + 56) = sub_29D934378();
  *(v5 + 64) = sub_29D873EAC(&qword_2A1A24758, 255, MEMORY[0x29EDC3AB0]);
  sub_29D693F78((v5 + 32));
  sub_29D934368();
  v9 = sub_29D937328();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v3 + 32) = sub_29D937318();
  return v3;
}

uint64_t sub_29D87360C()
{
  v0 = sub_29D937368();
  v59 = *(v0 - 8);
  v60 = v0;
  v1 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9373B8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9373E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D873DEC(0, &qword_2A1A246C8, MEMORY[0x29EDC3AC0], MEMORY[0x29EDC34D8]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = &v54 - v17;
  v19 = MEMORY[0x29EDC9C68];
  sub_29D873DEC(0, &qword_2A1A24750, MEMORY[0x29EDC3AB8], MEMORY[0x29EDC9C68]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v24 = &v54 - v23;
  sub_29D873DEC(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], v19);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25 - 8, v27);
  v29 = &v54 - v28;
  v30 = sub_29D9371A8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v54 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9343B8();
  sub_29D937348();
  sub_29D873EAC(&qword_2A1A24748, 255, MEMORY[0x29EDC3AC0]);
  sub_29D937478();
  (*(v14 + 8))(v18, v13);
  v36 = sub_29D934398();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v24, 1, v36) == 1)
  {
    sub_29D873D18(v24, &qword_2A1A24750, MEMORY[0x29EDC3AB8]);
    (*(v31 + 56))(v29, 1, 1, v30);
LABEL_8:
    sub_29D873D18(v29, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    return MEMORY[0x29EDCA190];
  }

  v38 = sub_29D934388();
  (*(v37 + 8))(v24, v36);
  if (*(v38 + 16) && (v39 = sub_29D6959E0(*MEMORY[0x29EDBA6B8]), (v40 & 1) != 0))
  {
    (*(v31 + 16))(v29, *(v38 + 56) + *(v31 + 72) * v39, v30);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  (*(v31 + 56))(v29, v41, 1, v30);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    goto LABEL_8;
  }

  v43 = *(v31 + 32);
  v55 = v35;
  v43(v35, v29, v30);
  v44 = *MEMORY[0x29EDC5128];
  v45 = sub_29D9371B8();
  v46 = [v45 areAllRequirementsSatisfied];

  sub_29D873DEC(0, &qword_2A1A21F40, sub_29D872458, MEMORY[0x29EDC9E90]);
  sub_29D872458();
  v48 = *(*(v47 - 8) + 72);
  v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_29D93DDB0;
  sub_29D9373D8();
  v52 = v59;
  v51 = v60;
  v53 = v57;
  (*(v59 + 104))(v57, *MEMORY[0x29EDC3508], v60);
  sub_29D9373A8();
  (*(v52 + 8))(v53, v51);
  v61 = v46;
  sub_29D8724C0();
  sub_29D872514();
  sub_29D937438();
  (*(v31 + 8))(v55, v30);
  return v50;
}

uint64_t sub_29D873D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D873DEC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D873D88()
{
  result = qword_2A1A246B0;
  if (!qword_2A1A246B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A246B0);
  }

  return result;
}

void sub_29D873DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D873E50(uint64_t a1)
{
  type metadata accessor for HKFeatureIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D873EAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_29D873F38()
{
  result = qword_2A17B6C78;
  if (!qword_2A17B6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C78);
  }

  return result;
}

unint64_t sub_29D873F90()
{
  result = qword_2A17B6C80;
  if (!qword_2A17B6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C80);
  }

  return result;
}

unint64_t sub_29D873FE8()
{
  result = qword_2A17B6C88;
  if (!qword_2A17B6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C88);
  }

  return result;
}

unint64_t sub_29D874040()
{
  result = qword_2A17B6C90;
  if (!qword_2A17B6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C90);
  }

  return result;
}

unint64_t sub_29D874098()
{
  result = qword_2A17B6C98;
  if (!qword_2A17B6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C98);
  }

  return result;
}

unint64_t sub_29D8740F0()
{
  result = qword_2A17B6CA0;
  if (!qword_2A17B6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6CA0);
  }

  return result;
}

unint64_t sub_29D874148()
{
  result = qword_2A17B6CA8;
  if (!qword_2A17B6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6CA8);
  }

  return result;
}

unint64_t sub_29D8741A0()
{
  result = qword_2A17B6CB0;
  if (!qword_2A17B6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6CB0);
  }

  return result;
}

uint64_t type metadata accessor for HKHRCardioFitnessChartDataSource()
{
  result = qword_2A17B6CF0;
  if (!qword_2A17B6CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D874250()
{
  result = sub_29D936378();
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

uint64_t sub_29D874314(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = a1;
  v32 = a4;
  sub_29D877C0C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_29D936378();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v13 + 32))(v18 + v17, &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v19 = swift_allocObject();
  *(v19 + 2) = sub_29D877CAC;
  *(v19 + 3) = v18;
  v20 = v31;
  *(v19 + 4) = v31;
  *v11 = sub_29D877D38;
  v11[1] = v19;
  (*(v7 + 104))(v11, *MEMORY[0x29EDC2720], v6);
  sub_29D877D44();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = v20;
  v25 = v32;
  sub_29D935328();
  sub_29D877DD8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_29D9357C8();

  return v29;
}

uint64_t sub_29D8745CC()
{
  v1 = v0;
  if (*(v0 + qword_2A17B6CC8))
  {

    v2 = sub_29D8752B0();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + qword_2A17B6CE0);
  *(v1 + qword_2A17B6CE0) = v2;

  if (v2)
  {
    swift_allocObject();
    swift_weakInit();
    sub_29D77B9D8();
    sub_29D8770D4(&qword_2A1A223F0, sub_29D77B9D8);
    v4 = sub_29D938588();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + qword_2A17B6CE8);
  *(v1 + qword_2A17B6CE8) = v4;
}

uint64_t sub_29D874718(unsigned __int8 *a1)
{
  v2 = sub_29D939968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D939998();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    aBlock = 0;
    v28 = 0xE000000000000000;
    v24[1] = result;
    v25 = v9;
    if (v14)
    {
      v16 = 0xD000000000000024;
    }

    else
    {
      v16 = 0xD000000000000026;
    }

    if (v14)
    {
      v17 = "ssificationUnavailable";
    }

    else
    {
      v17 = "Source:secondaryDataSource:)";
    }

    v26 = v8;
    MEMORY[0x29ED6A240](v16, v17 | 0x8000000000000000);

    v18 = sub_29D877904(aBlock, v28, v14);

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v19 = sub_29D93A468();
    v20 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v18;
    v31 = sub_29D877B98;
    v32 = v21;
    aBlock = MEMORY[0x29EDCA5F8];
    v28 = 1107296256;
    v29 = sub_29D6C1F10;
    v30 = &unk_2A244A4C8;
    v22 = _Block_copy(&aBlock);

    sub_29D939988();
    aBlock = MEMORY[0x29EDCA190];
    sub_29D8770D4(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
    v23 = MEMORY[0x29EDCA248];
    sub_29D87711C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D877F4C(&qword_2A1A24980, &qword_2A1A24990, v23);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v13, v7, v22);
    _Block_release(v22);

    (*(v3 + 8))(v7, v2);
    return (*(v25 + 8))(v13, v26);
  }

  return result;
}

uint64_t sub_29D874AFC()
{
  v12[9] = *MEMORY[0x29EDCA608];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_2A17B6CD0);

    sub_29D935B38();
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + qword_2A17B6CD8);

    v4 = sub_29D936398();

    v5 = sub_29D9369F8();

    v12[0] = 0;
    LODWORD(v4) = [v5 performFetch_];

    if (v4)
    {
      v6 = v12[0];
    }

    else
    {
      v7 = v12[0];
      v8 = sub_29D933598();

      swift_willThrow();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + qword_2A17B6CD8);

    sub_29D9363B8();
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29D874CB4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);

    if (v4 == 2)
    {
      v5 = 0;
    }

    else
    {
      if (v4)
      {
        v6 = 0xD000000000000024;
      }

      else
      {
        v6 = 0xD000000000000026;
      }

      if (v4)
      {
        v7 = "ssificationUnavailable";
      }

      else
      {
        v7 = "Source:secondaryDataSource:)";
      }

      MEMORY[0x29ED6A240](v6, v7 | 0x8000000000000000);

      v5 = 0xE000000000000000;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v4) = 2;
  }

  v8 = sub_29D936358();
  v9 = sub_29D93A5E8();
  a2[3] = &type metadata for CardioFitnessChartItem;
  a2[4] = sub_29D877E38();
  v10 = swift_allocObject();
  *a2 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = v4;
  *(v10 + 32) = 0;
  *(v10 + 40) = v5;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;

  return a1;
}

uint64_t sub_29D874E08(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_29D937898();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6945AC(a1, v38);
  sub_29D6FC5F4();
  sub_29D934528();
  if (swift_dynamicCast())
  {
    v14 = v37;
    v15 = [v37 userData];
    if (v15)
    {
      v16 = v15;
      v17 = sub_29D933738();
      v36 = v14;
      v18 = a3;
      v19 = v9;
      v20 = v17;
      v22 = v21;

      v23 = sub_29D933718();
      v24 = v20;
      v9 = v19;
      a3 = v18;
      v14 = v36;
      sub_29D6AA284(v24, v22);
    }

    else
    {
      v23 = 0;
    }

    v25 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

    if (v25)
    {
      sub_29D87711C(0, &qword_2A17B1138, sub_29D6FC5F4, MEMORY[0x29EDC9E90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_29D93DDB0;
      a3(v38, v25, a5);
      v27 = v39;
      v28 = v40;
      v29 = sub_29D693E2C(v38, v39);
      *(v26 + 56) = v27;
      *(v26 + 64) = *(v28 + 8);
      v30 = sub_29D693F78((v26 + 32));
      (*(*(v27 - 8) + 16))(v30, v29, v27);

      sub_29D69417C(v38);
    }

    else
    {
      sub_29D937858();
      v31 = sub_29D937878();
      v32 = sub_29D93A298();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_29D677000, v31, v32, "Unable to decode sharable charting model", v33, 2u);
        MEMORY[0x29ED6BE30](v33, -1, -1);
      }

      (*(v9 + 8))(v13, v8);
      return MEMORY[0x29EDCA190];
    }

    return v26;
  }

  else
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D96A220);
    sub_29D93AB08();
    MEMORY[0x29ED6A240](93, 0xE100000000000000);
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8751D8()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935678();
  v6 = sub_29D935608();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D8752B0()
{
  v1 = v0;
  sub_29D876DC0();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x29EDCA298];
  sub_29D87711C(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v46 = &v43 - v9;
  sub_29D77B7D0();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D877098(0);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D876FCC();
  v50 = *(v23 - 8);
  v51 = v23;
  v24 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v0 + 16);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v52 = sub_29D937288();
  sub_29D6B7D8C();
  sub_29D8770D4(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938468();

  sub_29D8770D4(&qword_2A1A22608, sub_29D77B7D0);
  v29 = sub_29D938418();
  (*(v12 + 8))(v16, v11);
  v52 = v29;
  sub_29D77B9D8();
  sub_29D8770D4(&qword_2A1A223F0, sub_29D77B9D8);

  sub_29D938468();
  v30 = v27;

  v52 = *(v1 + 24);
  v31 = v52;
  v32 = sub_29D93A448();
  v33 = v46;
  (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  sub_29D8770D4(&qword_2A17B6D38, sub_29D877098);
  sub_29D706380();
  v34 = v31;
  v35 = v47;
  sub_29D938538();
  sub_29D877EDC(v33, &unk_2A1A248F0, v49);

  (*(v48 + 8))(v22, v35);
  v36 = *(v1 + 32);
  if (v36 == 2)
  {
    sub_29D8770D4(&qword_2A17B6D48, sub_29D876FCC);
    v37 = v51;
    v38 = sub_29D938418();
  }

  else
  {
    sub_29D877E8C(0, &qword_2A17B6D50, &type metadata for CardioFitnessClassificationStatus, MEMORY[0x29EDC9E90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_29D93DDB0;
    *(v39 + 32) = v36 & 1;
    sub_29D8770D4(&qword_2A17B6D48, sub_29D876FCC);
    v40 = v43;
    v37 = v51;
    sub_29D938518();

    sub_29D8770D4(&qword_2A17B6D58, sub_29D876DC0);
    v41 = v45;
    v38 = sub_29D938418();
    (*(v44 + 8))(v40, v41);
  }

  (*(v50 + 8))(v30, v37);
  return v38;
}

uint64_t *sub_29D875970(uint64_t a1)
{
  v49 = a1;
  v42 = *v1;
  v2 = sub_29D937898();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D93A458();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v48, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D93A438();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v14 = sub_29D939998();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v17 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v46 = "Item mapping function. [";
  v47 = v17;
  sub_29D939988();
  v51 = MEMORY[0x29EDCA190];
  sub_29D8770D4(&unk_2A1A24900, MEMORY[0x29EDCA288]);
  v18 = MEMORY[0x29EDCA288];
  sub_29D87711C(0, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  v19 = v1;
  sub_29D877F4C(&qword_2A1A24960, &unk_2A1A24970, v18);
  sub_29D93A888();
  (*(v6 + 104))(v10, *MEMORY[0x29EDCA2A8], v48);
  v20 = v49;
  v1[3] = sub_29D93A498();
  *(v1 + 32) = 2;
  sub_29D936368();
  v21 = sub_29D9354E8();
  v23 = v22;
  if (v21 == sub_29D9354E8() && v23 == v24)
  {

LABEL_5:
    v26 = *MEMORY[0x29EDBA6C0];
    v27 = sub_29D936338();
    v28 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v26 healthStore:v27];

    v19[2] = v28;
    v29 = sub_29D875F2C();
    if (v29 == 2)
    {
      v30 = v19[2];
      v29 = sub_29D87678C();
    }

    v31 = sub_29D936378();
    (*(*(v31 - 8) + 8))(v20, v31);
    *(v19 + 32) = v29;
    return v19;
  }

  v25 = sub_29D93AD78();

  if (v25)
  {
    goto LABEL_5;
  }

  v32 = v43;
  sub_29D937858();
  v33 = sub_29D937878();
  v34 = sub_29D93A2A8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    v51 = v42;
    swift_getMetatypeMetadata();
    v37 = sub_29D939DA8();
    v39 = sub_29D6C2364(v37, v38, &v50);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_29D677000, v33, v34, "[%{public}s] Non-primary profiles will not have feature availability / onboarding completion for Cardio Fitness feature, passing back nil onboarding status observer", v35, 0xCu);
    sub_29D69417C(v36);
    MEMORY[0x29ED6BE30](v36, -1, -1);
    MEMORY[0x29ED6BE30](v35, -1, -1);
  }

  v40 = sub_29D936378();
  (*(*(v40 - 8) + 8))(v20, v40);
  (*(v44 + 8))(v32, v45);

  type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_29D875F2C()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v66 = &v62 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v64 = &v62 - v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v63 = &v62 - v15;
  v16 = sub_29D936338();
  sub_29D933F48();
  v17 = [v16 profileIdentifier];
  sub_29D77B228(v17);

  sub_29D936318();
  sub_29D693E2C(v70, v70[3]);
  v18 = sub_29D933EC8();
  v19 = sub_29D933F38();

  sub_29D69417C(v70);
  if (!v19)
  {
    sub_29D937858();

    v30 = v16;
    v31 = sub_29D937878();
    v32 = sub_29D93A2A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v1;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v69 = v33;
      v70[0] = v36;
      *v34 = 136446466;
      type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();

      v37 = sub_29D939DA8();
      v39 = sub_29D6C2364(v37, v38, v70);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      v40 = [v30 profileIdentifier];
      *(v34 + 14) = v40;
      *v35 = v40;
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s] Unable to find classification data plugin storage for profile with identifier %@.", v34, 0x16u);
      sub_29D6ACA3C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      sub_29D69417C(v36);
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    else
    {
    }

    (*(v68 + 8))(v66, v67);
    return 2;
  }

  v20 = v0;
  v66 = v16;
  v21 = [v19 data];
  if (!v21)
  {
    v41 = v64;
    sub_29D937858();

    v42 = sub_29D937878();
    v43 = sub_29D93A288();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v66;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v20;
      v70[0] = v47;
      *v46 = 136446210;
      type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();

      v48 = sub_29D939DA8();
      v50 = sub_29D6C2364(v48, v49, v70);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s] Classification data plugin storage did not contain any data", v46, 0xCu);
      sub_29D69417C(v47);
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);
    }

    else
    {
    }

    (*(v68 + 8))(v41, v67);
    return 2;
  }

  v22 = v21;
  v23 = sub_29D933738();
  v25 = v24;

  v26 = sub_29D9330D8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_29D9330C8();
  sub_29D876D6C();
  sub_29D9330B8();
  v29 = v0;

  v51 = LOBYTE(v70[0]);
  v52 = v63;
  sub_29D937858();

  v53 = sub_29D937878();
  v54 = sub_29D93A2A8();

  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v69 = v29;
    v70[0] = v57;
    *v56 = 136446210;
    type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();

    v58 = sub_29D939DA8();
    v60 = sub_29D6C2364(v58, v59, v70);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_29D677000, v53, v54, "[%{public}s] Using initial classification status from plugin data.", v56, 0xCu);
    sub_29D69417C(v57);
    MEMORY[0x29ED6BE30](v57, -1, -1);
    MEMORY[0x29ED6BE30](v56, -1, -1);
    sub_29D6AA284(v23, v25);

    (*(v68 + 8))(v63, v67);
  }

  else
  {

    sub_29D6AA284(v23, v25);
    (*(v68 + 8))(v52, v67);
  }

  return v51;
}

id sub_29D87678C()
{
  v0 = sub_29D937898();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v3 = sub_29D9371A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v9 = *MEMORY[0x29EDC5138];
  v10 = sub_29D9371B8();
  v11 = [v10 areAllRequirementsSatisfied];

  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t sub_29D876AEC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D876B5C()
{
  v1 = qword_2A17B6CC0;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2A17B6CC8);

  v4 = *(v0 + qword_2A17B6CD0);

  v5 = *(v0 + qword_2A17B6CD8);

  v6 = *(v0 + qword_2A17B6CE0);

  v7 = *(v0 + qword_2A17B6CE8);
}

uint64_t sub_29D876C24()
{
  v0 = sub_29D935EF8();

  v1 = qword_2A17B6CC0;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2A17B6CC8);

  v4 = *(v0 + qword_2A17B6CD0);

  v5 = *(v0 + qword_2A17B6CD8);

  v6 = *(v0 + qword_2A17B6CE0);

  v7 = *(v0 + qword_2A17B6CE8);

  return v0;
}

uint64_t sub_29D876CEC()
{
  v0 = *sub_29D876C24();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_29D876D6C()
{
  result = qword_2A17B6D00;
  if (!qword_2A17B6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D00);
  }

  return result;
}

void sub_29D876DC0()
{
  if (!qword_2A17B6D08)
  {
    sub_29D876EAC();
    sub_29D876FCC();
    sub_29D8770D4(&qword_2A17B6D40, sub_29D876EAC);
    sub_29D8770D4(&qword_2A17B6D48, sub_29D876FCC);
    v0 = sub_29D938088();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6D08);
    }
  }
}

void sub_29D876EAC()
{
  if (!qword_2A17B6D10)
  {
    sub_29D877E8C(255, &qword_2A17B6D18, &type metadata for CardioFitnessClassificationStatus, MEMORY[0x29EDC9A40]);
    sub_29D876F50();
    v0 = sub_29D9381B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6D10);
    }
  }
}

unint64_t sub_29D876F50()
{
  result = qword_2A17B6D20;
  if (!qword_2A17B6D20)
  {
    sub_29D877E8C(255, &qword_2A17B6D18, &type metadata for CardioFitnessClassificationStatus, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D20);
  }

  return result;
}

void sub_29D876FCC()
{
  if (!qword_2A17B6D28)
  {
    sub_29D877098(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8770D4(&qword_2A17B6D38, sub_29D877098);
    sub_29D706380();
    v0 = sub_29D9381E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6D28);
    }
  }
}

uint64_t sub_29D8770D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D87711C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D877180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D8770D4(a4, a5);
    v8 = sub_29D9380F8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_29D87721C@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  *(v2 + 32) = *result;
  *a2 = v3;
  return result;
}

uint64_t sub_29D877234(void *a1)
{
  v2 = MEMORY[0x29EDB98E8];
  sub_29D87711C(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v34 - v6;
  sub_29D934528();
  sub_29D87711C(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29D933F58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v34 = xmmword_29D93DDB0;
  *(v12 + 16) = xmmword_29D93DDB0;
  (*(v9 + 104))(v12 + v11, *MEMORY[0x29EDC3710], v8);
  v13 = MEMORY[0x29EDC9E90];
  sub_29D877E8C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v14 = swift_allocObject();
  v35 = xmmword_29D940030;
  *(v14 + 16) = xmmword_29D940030;
  *(v14 + 32) = a1;
  v15 = sub_29D9331D8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_29D877E8C(0, &qword_2A17B50A8, MEMORY[0x29EDC37E0], v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v34;
  v17 = a1;
  v18 = sub_29D936338();
  v19 = sub_29D93A208();

  *(v16 + 32) = v19;
  v20 = MEMORY[0x29ED648C0](v12, v14, v7, v16);

  sub_29D877EDC(v7, &qword_2A17B3A18, v2);
  v21 = v20;
  v22 = sub_29D9344F8();

  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  v24 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v25 = sub_29D939D28();
  v26 = [v24 initWithKey:v25 ascending:0];

  *(v23 + 32) = v26;
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  v27 = sub_29D939F18();

  [v22 setSortDescriptors_];

  v28 = v22;
  sub_29D936318();
  sub_29D693E2C(v36, v36[3]);
  v29 = sub_29D933EC8();
  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v28 managedObjectContext:v29 sectionNameKeyPath:0 cacheName:0];

  sub_29D69417C(v36);
  sub_29D75A420();
  v31 = objc_allocWithZone(v30);
  v32 = sub_29D936A38();

  return v32;
}

uint64_t sub_29D877688(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_2A17B6CC8;
  *(v3 + qword_2A17B6CC8) = 0;
  *(v3 + qword_2A17B6CE0) = 0;
  *(v3 + qword_2A17B6CE8) = 0;
  *(v3 + qword_2A17B6CB8) = a1;
  v13 = *(v7 + 16);
  v13(v3 + qword_2A17B6CC0, a2, v6);
  v13(v11, a2, v6);
  type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();
  swift_allocObject();
  v14 = a1;
  v15 = sub_29D875970(v11);
  v16 = *(v3 + v12);
  *(v3 + v12) = v15;

  v17 = sub_29D877234(v14);
  v18 = *(v3 + v12);

  sub_29D874314(v14, a2, v18, v17);

  *(v3 + qword_2A17B6CD8) = sub_29D935798();
  v19 = *(v3 + v12);
  if (v19)
  {
    v20 = *(v19 + 32);
  }

  else
  {
    v20 = 2;
  }

  v21 = sub_29D936358();
  v22 = type metadata accessor for CardioFitnessChartSection();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = v14;
  v26 = sub_29D8BBE88(v25, v20, v21);

  *(v3 + qword_2A17B6CD0) = v26;

  v27 = sub_29D935ED8();

  sub_29D8745CC();

  (*(v7 + 8))(a2, v6);
  return v27;
}

id sub_29D877904(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_29D933A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() _quantityTypeWithCode_];
  if (result)
  {
    v13 = result;
    v14 = MEMORY[0x29EDC9E90];
    sub_29D87711C(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v15 = *(sub_29D9359D8() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    v22 = xmmword_29D93DDB0;
    *(v18 + 16) = xmmword_29D93DDB0;
    sub_29D87711C(0, &qword_2A17B1138, sub_29D6FC5F4, v14);
    v19 = swift_allocObject();
    *(v19 + 16) = v22;
    *(v19 + 56) = &type metadata for CardioFitnessChartItem;
    *(v19 + 64) = sub_29D877BB8();
    v20 = swift_allocObject();
    *(v19 + 32) = v20;
    *(v20 + 16) = v13;
    *(v20 + 24) = a3 & 1;
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    sub_29D935E88();
    v21 = v13;
    sub_29D933A48();
    sub_29D933A18();
    (*(v7 + 8))(v11, v6);
    sub_29D9359C8();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D877B98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29D874AFC();
}

uint64_t sub_29D877BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D877BB8()
{
  result = qword_2A17B6D60;
  if (!qword_2A17B6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D60);
  }

  return result;
}

void sub_29D877C0C()
{
  if (!qword_2A17B6D68)
  {
    sub_29D75A420();
    sub_29D8770D4(&unk_2A17B6100, sub_29D75A420);
    v0 = sub_29D9363A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6D68);
    }
  }
}

id sub_29D877CAC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(*(sub_29D936378() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_29D874CB4(a1, a2);
}

void sub_29D877D44()
{
  if (!qword_2A17B6D70)
  {
    sub_29D75A420();
    sub_29D8770D4(&unk_2A17B6100, sub_29D75A420);
    v0 = sub_29D935338();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6D70);
    }
  }
}

void sub_29D877DD8()
{
  if (!qword_2A17B6D78)
  {
    sub_29D877D44();
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6D78);
    }
  }
}

unint64_t sub_29D877E38()
{
  result = qword_2A17B6D80;
  if (!qword_2A17B6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D80);
  }

  return result;
}

void sub_29D877E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D877EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D87711C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D877F4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D87711C(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D877FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a1) == 1)
  {
    v6 = v4;
    sub_29D88BBC8(a3);
    v7 = sub_29D939F18();

    v8 = HKUIJoinStringsForAutomationIdentifier();

    if (v8)
    {
      sub_29D6AA360(a4);
      [v6 hxui:v8 addContinueButtonWithAccessibilityIdentifier:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_29D8780BC(char a1)
{
  *&v1[OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow] = a1;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v3 = sub_29D939D28();

  sub_29D9334A8();
  v4 = sub_29D939D28();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AFibBurdenOnboardingHowItWorksViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTitle_detailText_icon_contentLayout_, v3, v4, 0, 1, 0xE000000000000000);

  return v5;
}

void sub_29D878238()
{
  sub_29D877FF0(&OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow, &unk_2A243D6E0, &unk_2A243D6B0, &unk_2A243D6D0);

  if (*(v0 + OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow) == 1)
  {
  }

  v2 = [v0 navigationItem];
  [v2 setBackButtonDisplayMode_];

  sub_29D87855C();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  v4 = sub_29D939D28();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  v12 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v12 setContentMode_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v7 = [v0 contentView];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  v9 = [v0 contentView];
  [v12 hk:v9 alignConstraintsWithView:?];

  v10 = [v12 heightAnchor];
  v11 = [v10 constraintEqualToConstant_];

  [v11 setActive_];
  sub_29D93A538();
}

void sub_29D87855C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow];
  v3 = [v1 headerView];
  if (v2 != 1)
  {
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
    v11 = sub_29D939D28();

    [v3 setAccessibilityIdentifier_];

    v12 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x656C746954, 0xE500000000000000);
    v13 = sub_29D939D28();

    [v12 setTitleAccessibilityIdentifier_];

    v9 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x7470697263736544, 0xEB000000006E6F69);
    v14 = sub_29D939D28();

    goto LABEL_9;
  }

  sub_29D88BBC8(&unk_2A243EF40);
  v4 = sub_29D939F18();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_29D6AA360(&unk_2A243EF60);
  [v3 setAccessibilityIdentifier_];

  v6 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243EFB0);
  v7 = sub_29D939F18();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D6AA360(aTitle_13);
  [v6 setTitleAccessibilityIdentifier_];

  v9 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243F020);
  v10 = sub_29D939F18();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (!v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_29D6AA360(aDescription_2);
LABEL_9:
  [v9 setDetailTextAccessibilityIdentifier_];
}

id sub_29D878BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingHowItWorksViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D878C38()
{
  v1 = v0 + OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D878C6C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D878CB8()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D878EB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for HealthCalendarDaysOfWeekRow()
{
  result = qword_2A17B6D98;
  if (!qword_2A17B6D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D878F78()
{
  sub_29D878EB4(319, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D878EB4(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      sub_29D878EB4(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D8790C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDB9D18];
  sub_29D878EB4(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = (&v20 - v14);
  sub_29D87B4A0(v2, &v20 - v14, &qword_2A17B5A20, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_29D933CE8();
    return (*(*(v16 - 8) + 32))(a1, v15, v16);
  }

  else
  {
    v18 = *v15;
    sub_29D93A298();
    v19 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_29D8792EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D938B68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDBC7B8];
  sub_29D878EB4(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC388]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v20 - v13);
  v15 = type metadata accessor for HealthCalendarDaysOfWeekRow();
  sub_29D87B4A0(v1 + *(v15 + 20), v14, &qword_2A17B1600, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_29D938C58();
    return (*(*(v16 - 8) + 32))(a1, v14, v16);
  }

  else
  {
    v18 = *v14;
    sub_29D93A298();
    v19 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_29D879518()
{
  v1 = v0;
  v2 = sub_29D933CE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D938C58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v31 - v16;
  sub_29D8792EC(&v31 - v16);
  (*(v9 + 104))(v14, *MEMORY[0x29EDBC770], v8);
  v18 = sub_29D80ED48(v17, v14);
  v19 = *(v9 + 8);
  v19(v14, v8);
  v19(v17, v8);
  sub_29D8790C8(v7);
  v20 = (v3 + 8);
  if (v18)
  {
    v21 = sub_29D933BE8();
  }

  else
  {
    v21 = sub_29D933BD8();
  }

  v22 = v21;
  v23 = *v20;
  (*v20)(v7, v2);
  sub_29D8790C8(v7);
  v24 = sub_29D933AF8();
  v23(v7, v2);
  v25 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = *(v22 + 16);
  if (v1 < v25)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v25 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    sub_29D84FCCC(v22, v22 + 32, v24 - 1, (2 * v1) | 1);
    v26 = v28;
    if (*(v22 + 16) == v25)
    {
      goto LABEL_9;
    }

LABEL_14:
    sub_29D84FCCC(v22, v22 + 32, 0, (2 * v25) | 1);
    v30 = v29;

    v22 = v30;
    goto LABEL_9;
  }

  if (v24 != 1)
  {
    goto LABEL_13;
  }

  sub_29D935E88();
  v26 = v22;
  if (v1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v32 = v26;
  sub_29D88BBC8(v22);
  return v32;
}

uint64_t sub_29D8797EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = type metadata accessor for HealthCalendarDaysOfWeekRow();
  v4 = v3 - 8;
  v120 = *(v3 - 8);
  v5 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v121 = v7;
  v122 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87ADC4(0, &qword_2A17B6DE0, sub_29D87AC68, sub_29D87AEC0, MEMORY[0x29EDBCB28]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v124 = (&v119 - v11);
  sub_29D87ABC4();
  v123 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v127 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87AB60(0, &qword_2A17B6DD0, sub_29D87ABC4);
  v131 = v16;
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v137 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v128 = &v119 - v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v142 = &v119 - v25;
  v26 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87AA74();
  v32 = v31;
  v33 = *(*(v31 - 8) + 64);
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v133 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v39 = &v119 - v38;
  sub_29D87AB60(0, &qword_2A17B6DC0, sub_29D87AA74);
  v139 = v40;
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v136 = &v119 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v141 = &v119 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v132 = &v119 - v50;
  v52 = MEMORY[0x2A1C7C4A8](v49, v51);
  v134 = &v119 - v53;
  v55 = MEMORY[0x2A1C7C4A8](v52, v54);
  v57 = &v119 - v56;
  MEMORY[0x2A1C7C4A8](v55, v58);
  v60 = &v119 - v59;
  sub_29D939798();
  v125 = *(v4 + 32);
  sub_29D6998E4(v30);
  v130 = v26;
  v61 = *&v30[*(v26 + 28)];

  v119 = v30;
  sub_29D87B440(v30, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  KeyPath = swift_getKeyPath();
  v129 = v32;
  v63 = &v39[*(v32 + 36)];
  *v63 = KeyPath;
  v63[1] = v61;
  v64 = *(a1 + *(v4 + 36));
  sub_29D9398A8();
  v126 = v64;
  sub_29D9388E8();
  sub_29D87B234(v39, v57, sub_29D87AA74);
  v65 = &v57[*(v139 + 36)];
  v66 = v148;
  *(v65 + 4) = v147;
  *(v65 + 5) = v66;
  *(v65 + 6) = v149;
  v67 = v144;
  *v65 = v143;
  *(v65 + 1) = v67;
  v68 = v146;
  *(v65 + 2) = v145;
  *(v65 + 3) = v68;
  v140 = v60;
  sub_29D87B29C(v57, v60, &qword_2A17B6DC0, sub_29D87AA74);
  v69 = sub_29D938B98();
  v70 = v124;
  *v124 = v69;
  v70[1] = 0;
  *(v70 + 16) = 1;
  sub_29D87B054();
  v72 = *(v71 + 44);
  *&v157 = sub_29D879518();
  swift_getKeyPath();
  v135 = a1;
  v73 = a1;
  v74 = v122;
  sub_29D87B3D8(v73, v122, type metadata accessor for HealthCalendarDaysOfWeekRow);
  v75 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v76 = swift_allocObject();
  sub_29D87B234(v74, v76 + v75, type metadata accessor for HealthCalendarDaysOfWeekRow);
  sub_29D87B1E4(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D87AD20();
  sub_29D87AE44();
  sub_29D87AF38();
  sub_29D9397C8();
  sub_29D9398A8();
  sub_29D9388E8();
  v77 = v70;
  v78 = v127;
  sub_29D87B13C(v77, v127);
  v79 = (v78 + *(v123 + 36));
  v80 = v155;
  v79[4] = v154;
  v79[5] = v80;
  v79[6] = v156;
  v81 = v151;
  *v79 = v150;
  v79[1] = v81;
  v82 = v153;
  v79[2] = v152;
  v79[3] = v82;
  sub_29D87B1E4(0, &qword_2A17B2590, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  LOBYTE(v26) = sub_29D9390E8();
  *(inited + 32) = v26;
  v84 = sub_29D9390F8();
  *(inited + 33) = v84;
  v85 = sub_29D939118();
  sub_29D939118();
  v86 = v78;
  if (sub_29D939118() != v26)
  {
    v85 = sub_29D939118();
  }

  sub_29D939118();
  v87 = sub_29D939118();
  v88 = v142;
  v89 = v133;
  if (v87 != v84)
  {
    v85 = sub_29D939118();
  }

  v90 = v119;
  sub_29D6998E4(v119);
  sub_29D87B440(v90, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v128;
  sub_29D87B234(v86, v128, sub_29D87ABC4);
  v100 = v99 + *(v131 + 36);
  *v100 = v85;
  *(v100 + 8) = v92;
  *(v100 + 16) = v94;
  *(v100 + 24) = v96;
  *(v100 + 32) = v98;
  *(v100 + 40) = 0;
  sub_29D87B29C(v99, v88, &qword_2A17B6DD0, sub_29D87ABC4);
  sub_29D939798();
  sub_29D6998E4(v90);
  v101 = *(v90 + *(v130 + 28));

  sub_29D87B440(v90, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  v102 = swift_getKeyPath();
  v103 = (v89 + *(v129 + 36));
  *v103 = v102;
  v103[1] = v101;
  sub_29D9398A8();
  sub_29D9388E8();
  v104 = v132;
  sub_29D87B234(v89, v132, sub_29D87AA74);
  v105 = (v104 + *(v139 + 36));
  v106 = v162;
  v105[4] = v161;
  v105[5] = v106;
  v105[6] = v163;
  v107 = v158;
  *v105 = v157;
  v105[1] = v107;
  v108 = v160;
  v105[2] = v159;
  v105[3] = v108;
  v109 = v134;
  sub_29D87B29C(v104, v134, &qword_2A17B6DC0, sub_29D87AA74);
  v110 = v141;
  sub_29D87B30C(v140, v141, &qword_2A17B6DC0, sub_29D87AA74);
  v111 = v88;
  v112 = v137;
  sub_29D87B30C(v111, v137, &qword_2A17B6DD0, sub_29D87ABC4);
  v113 = v136;
  sub_29D87B30C(v109, v136, &qword_2A17B6DC0, sub_29D87AA74);
  v114 = v110;
  v115 = v138;
  sub_29D87B30C(v114, v138, &qword_2A17B6DC0, sub_29D87AA74);
  sub_29D87A9B8();
  v117 = v116;
  sub_29D87B30C(v112, v115 + *(v116 + 48), &qword_2A17B6DD0, sub_29D87ABC4);
  sub_29D87B30C(v113, v115 + *(v117 + 64), &qword_2A17B6DC0, sub_29D87AA74);
  sub_29D87B37C(v109, &qword_2A17B6DC0, sub_29D87AA74);
  sub_29D87B37C(v142, &qword_2A17B6DD0, sub_29D87ABC4);
  sub_29D87B37C(v140, &qword_2A17B6DC0, sub_29D87AA74);
  sub_29D87B37C(v113, &qword_2A17B6DC0, sub_29D87AA74);
  sub_29D87B37C(v112, &qword_2A17B6DD0, sub_29D87ABC4);
  return sub_29D87B37C(v141, &qword_2A17B6DC0, sub_29D87AA74);
}

double sub_29D87A42C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_29D938C68();
  v16 = 1;
  sub_29D87A5F0(v5, v6, a2, &v18);
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v25 = v18;
  v26 = v19;
  v30[2] = v20;
  v30[3] = v21;
  v31 = v22;
  v30[0] = v18;
  v30[1] = v19;
  sub_29D87B3D8(&v25, v14, sub_29D69A85C);
  sub_29D87B440(v30, sub_29D69A85C);
  *&v15[23] = v26;
  *&v15[39] = v27;
  *&v15[55] = v28;
  v15[71] = v29;
  *&v15[7] = v25;
  LOBYTE(a2) = v16;
  sub_29D9398A8();
  sub_29D9388E8();
  *&v17[55] = v21;
  *&v17[71] = v22;
  *&v17[87] = v23;
  *&v17[103] = v24;
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20;
  v8 = *v15;
  *(a3 + 33) = *&v15[16];
  v9 = *&v15[48];
  *(a3 + 49) = *&v15[32];
  *(a3 + 65) = v9;
  *(a3 + 17) = v8;
  v10 = *&v17[80];
  *(a3 + 153) = *&v17[64];
  *(a3 + 169) = v10;
  *(a3 + 185) = *&v17[96];
  v11 = *&v17[16];
  *(a3 + 89) = *v17;
  *(a3 + 105) = v11;
  result = *&v17[32];
  v13 = *&v17[48];
  *(a3 + 121) = *&v17[32];
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  *(a3 + 81) = *&v15[64];
  *(a3 + 200) = *&v17[111];
  *(a3 + 137) = v13;
  return result;
}

uint64_t sub_29D87A5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v7 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  v8 = *(v7 - 8);
  v39 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v10);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D9391E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  sub_29D69AB60();
  sub_29D935E88();
  v18 = sub_29D9392F8();
  v20 = v19;
  v22 = v21;
  sub_29D939228();
  (*(v13 + 104))(v17, *MEMORY[0x29EDBC9B0], v12);
  sub_29D939208();

  (*(v13 + 8))(v17, v12);
  sub_29D939178();
  sub_29D9391D8();

  v23 = sub_29D9392C8();
  v25 = v24;
  LOBYTE(a1) = v26;

  sub_29D69ABB4(v18, v20, v22 & 1);

  v27 = v40 + *(type metadata accessor for HealthCalendarDaysOfWeekRow() + 24);
  v28 = v38;
  sub_29D6998E4(v38);
  v29 = *(v28 + *(v39 + 40));

  sub_29D87B440(v28, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  v30 = sub_29D9392A8();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;
  sub_29D69ABB4(v23, v25, a1 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = v30;
  *(a4 + 8) = v32;
  *(a4 + 16) = v20 & 1;
  *(a4 + 24) = v35;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = result;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return result;
}

uint64_t sub_29D87A8DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29D938C68();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29D87A920();
  return sub_29D8797EC(v1, a1 + *(v3 + 44));
}

void sub_29D87A920()
{
  if (!qword_2A17B6DA8)
  {
    sub_29D878EB4(255, &qword_2A17B6DB0, sub_29D87A9B8, MEMORY[0x29EDBCC28]);
    v0 = sub_29D938788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6DA8);
    }
  }
}

void sub_29D87A9B8()
{
  if (!qword_2A17B6DB8)
  {
    sub_29D87AB60(255, &qword_2A17B6DC0, sub_29D87AA74);
    sub_29D87AB60(255, &qword_2A17B6DD0, sub_29D87ABC4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B6DB8);
    }
  }
}

void sub_29D87AA74()
{
  if (!qword_2A17B6DC8)
  {
    sub_29D9397A8();
    sub_29D87AAF4(255, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6DC8);
    }
  }
}

void sub_29D87AAF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D87B1E4(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29D939088();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D87AB60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D87ABC4()
{
  if (!qword_2A17B6DD8)
  {
    sub_29D87ADC4(255, &qword_2A17B6DE0, sub_29D87AC68, sub_29D87AEC0, MEMORY[0x29EDBCB28]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6DD8);
    }
  }
}

void sub_29D87AC68()
{
  if (!qword_2A17B6DE8)
  {
    sub_29D87B1E4(255, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D87AD20();
    sub_29D87AE44();
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6DE8);
    }
  }
}

void sub_29D87AD20()
{
  if (!qword_2A17B6DF0)
  {
    sub_29D87ADC4(255, &qword_2A17B6DF8, sub_29D69A85C, sub_29D80E018, MEMORY[0x29EDBCB50]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6DF0);
    }
  }
}

void sub_29D87ADC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_29D87AE44()
{
  result = qword_2A17B6E00;
  if (!qword_2A17B6E00)
  {
    sub_29D87B1E4(255, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E00);
  }

  return result;
}

unint64_t sub_29D87AEC0()
{
  result = qword_2A17B6E08;
  if (!qword_2A17B6E08)
  {
    sub_29D87AC68();
    sub_29D87AF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E08);
  }

  return result;
}

unint64_t sub_29D87AF38()
{
  result = qword_2A17B6E10;
  if (!qword_2A17B6E10)
  {
    sub_29D87AD20();
    sub_29D87AFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E10);
  }

  return result;
}

unint64_t sub_29D87AFB8()
{
  result = qword_2A17B6E18;
  if (!qword_2A17B6E18)
  {
    sub_29D87ADC4(255, &qword_2A17B6DF8, sub_29D69A85C, sub_29D80E018, MEMORY[0x29EDBCB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E18);
  }

  return result;
}

void sub_29D87B054()
{
  if (!qword_2A17B6E20)
  {
    sub_29D87AC68();
    v0 = sub_29D938788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6E20);
    }
  }
}

double sub_29D87B0BC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthCalendarDaysOfWeekRow() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D87A42C(a1, v6, a2);
}

uint64_t sub_29D87B13C(uint64_t a1, uint64_t a2)
{
  sub_29D87ADC4(0, &qword_2A17B6DE0, sub_29D87AC68, sub_29D87AEC0, MEMORY[0x29EDBCB28]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D87B1E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D87B234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D87B29C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D87AB60(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D87B30C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D87AB60(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D87B37C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D87AB60(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D87B3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D87B440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D87B4A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D878EB4(0, a3, a4, MEMORY[0x29EDBC388]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29D87B520()
{
  result = qword_2A17B6E28;
  if (!qword_2A17B6E28)
  {
    sub_29D87B578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E28);
  }

  return result;
}

void sub_29D87B578()
{
  if (!qword_2A17B6E30)
  {
    sub_29D878EB4(255, &qword_2A17B6DB0, sub_29D87A9B8, MEMORY[0x29EDBCC28]);
    sub_29D87B60C();
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B6E30);
    }
  }
}

unint64_t sub_29D87B60C()
{
  result = qword_2A17B6E38;
  if (!qword_2A17B6E38)
  {
    sub_29D878EB4(255, &qword_2A17B6DB0, sub_29D87A9B8, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E38);
  }

  return result;
}