uint64_t sub_29E6459B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_29E6459C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E645A2C()
{
  result = qword_2A1857B48;
  if (!qword_2A1857B48)
  {
    sub_29E6459C8(255, &qword_2A1857B40, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857B48);
  }

  return result;
}

void sub_29E645AC4(void *a1)
{
  v2 = sub_29E754828();
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  v3 = v2;
  v4 = sub_29E6475B8(v2);
  v5 = [v4 integerValue];

  v6 = sub_29E645BB0(v5, v3);
  v8 = v7;
  v13 = v5;
  v14 = sub_29E647F60(v3);
  v15 = v9;
  v16 = v3;
  sub_29E6485A4();
  objc_allocWithZone(v10);
  v11 = v3;
  v12 = sub_29E753038();
  [a1 showViewController:v12 sender:{0, v13, v6, v8, v14, v15, v16}];
}

uint64_t sub_29E645BB0(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v153 = a2;
  v3 = sub_29E752098();
  v141 = *(v3 - 8);
  v142 = v3;
  v4 = *(v141 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v140 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v119 - v7;
  v9 = sub_29E74EB48();
  v135 = *(v9 - 8);
  v10 = *(v135 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_29E74EB68();
  v133 = *(v134 - 8);
  v13 = *(v133 + 64);
  MEMORY[0x2A1C7C4A8](v134);
  v132 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E648654(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v148 = v119 - v17;
  sub_29E648654(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v147 = v119 - v20;
  v21 = sub_29E74E8C8();
  v143 = *(v21 - 8);
  v22 = *(v143 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v137 = v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = v119 - v25;
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x2A1C7C4A8](v27 - 8);
  v138 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v144 = v119 - v32;
  MEMORY[0x2A1C7C4A8](v31);
  v34 = v119 - v33;
  v152 = sub_29E74ED28();
  v154 = *(v152 - 8);
  v35 = *(v154 + 64);
  v36 = MEMORY[0x2A1C7C4A8](v152);
  v139 = v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v145 = v119 - v39;
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v42 = v119 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40);
  v45 = v119 - v44;
  MEMORY[0x2A1C7C4A8](v43);
  v151 = v119 - v46;
  v47 = sub_29E74EE78();
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v52 = v119 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = a1;
  if (!a1)
  {
    return 0xD000000000000029;
  }

  v149 = v50;
  v150 = v49;
  v136 = v26;
  v53 = [objc_opt_self() hk_gregorianCalendar];
  sub_29E74EE28();

  v54 = sub_29E647940(v153);
  if (!v54)
  {
    (*(v149 + 8))(v52, v150);
    return 0xD00000000000005ALL;
  }

  v126 = v12;
  v129 = v9;
  v127 = v8;
  v153 = v45;
  v131 = v21;
  v55 = v54;
  v56 = sub_29E74EE08();
  v57 = [v55 hk:v56 sleepDayStartWithCalendar:?];

  v58 = v151;
  sub_29E74ECD8();

  sub_29E74ECD8();
  v59 = sub_29E74EE08();
  sub_29E646C20(v58, v59, v34);

  v60 = v154;
  v61 = v154 + 8;
  v62 = *(v154 + 8);
  v63 = v152;
  v62(v42, v152);
  v64 = *(v60 + 48);
  if (v64(v34, 1, v63) == 1)
  {
    sub_29E617214(v34);

    v62(v58, v63);
    (*(v149 + 8))(v52, v150);
    return 0xD000000000000028;
  }

  v128 = v64;
  v125 = v55;
  v123 = v62;
  v124 = v61;
  v130 = v52;
  v66 = *(v60 + 32);
  v67 = v153;
  v154 = v60 + 32;
  v122 = v66;
  v66(v153, v34, v63);
  v68 = v63;
  v69 = v147;
  v121 = *(v149 + 56);
  v121(v147, 1, 1, v150);
  v70 = sub_29E74EE88();
  v71 = *(v70 - 8);
  v72 = v148;
  v120 = *(v71 + 56);
  v119[1] = v71 + 56;
  result = v120(v148, 1, 1, v70);
  v73 = *MEMORY[0x29EDC6988];
  if ((*MEMORY[0x29EDC6988] * v146) >> 64 != (*MEMORY[0x29EDC6988] * v146) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v118 = *MEMORY[0x29EDC6988] * v146;
  sub_29E74E8B8();
  v74 = v144;
  sub_29E74EE38();
  v75 = v74;
  v76 = v128(v74, 1, v68);
  v77 = v68;
  v78 = v145;
  if (v76 == 1)
  {
    sub_29E617214(v75);
    v79 = v140;
    sub_29E752068();
    v80 = sub_29E752088();
    v81 = sub_29E7546A8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v155 = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v155);
      _os_log_impl(&dword_29E5ED000, v80, v81, "[%{public}s] Got nil date while adding date components.", v82, 0xCu);
      sub_29E5FECBC(v83);
      MEMORY[0x29ED98410](v83, -1, -1);
      MEMORY[0x29ED98410](v82, -1, -1);
    }

    (*(v141 + 8))(v79, v142);
    v84 = v131;
    v85 = v130;
    v86 = v151;
    v87 = v123;

    (*(v143 + 8))(v136, v84);
    v88 = v152;
    v87(v67, v152);
    v87(v86, v88);
    (*(v149 + 8))(v85, v150);
    return 0xD000000000000026;
  }

  v122(v145, v75, v77);
  v121(v69, 1, 1, v150);
  result = v120(v72, 1, 1, v70);
  if (__OFSUB__(0, v73))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v89 = v137;
  sub_29E74E8B8();
  v90 = v143;
  v91 = v143 + 8;
  v92 = *(v143 + 8);
  v93 = v136;
  v94 = v131;
  v92(v136, v131);
  (*(v90 + 32))(v93, v89, v94);
  v95 = v138;
  sub_29E74EE38();
  if (v128(v95, 1, v77) == 1)
  {
    sub_29E617214(v95);
    v96 = v127;
    sub_29E752068();
    v97 = sub_29E752088();
    v98 = sub_29E7546A8();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v155 = v100;
      *v99 = 136446210;
      *(v99 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v155);
      _os_log_impl(&dword_29E5ED000, v97, v98, "[%{public}s] Got nil date while adding date components.", v99, 0xCu);
      sub_29E5FECBC(v100);
      MEMORY[0x29ED98410](v100, -1, -1);
      MEMORY[0x29ED98410](v99, -1, -1);
    }

    (*(v141 + 8))(v96, v142);
    v101 = v131;
    v102 = v130;
    v103 = v151;
    v104 = v123;

    v105 = v152;
    v104(v78, v152);
    v92(v136, v101);
    v104(v153, v105);
    v104(v103, v105);
    (*(v149 + 8))(v102, v150);
    return 0xD000000000000026;
  }

  else
  {
    v122(v139, v95, v77);
    v155 = 0;
    v156 = 0xE000000000000000;
    sub_29E754D78();

    v155 = 0x206E656577746562;
    v156 = 0xE800000000000000;
    v106 = v132;
    sub_29E74EB58();
    v154 = v91;
    v107 = v126;
    sub_29E74EB28();
    v108 = sub_29E74ECF8();
    v148 = v92;
    v110 = v109;
    v147 = *(v135 + 8);
    (v147)(v107, v129);
    v146 = *(v133 + 8);
    v111 = v134;
    v146(v106, v134);
    MEMORY[0x29ED96C20](v108, v110);

    MEMORY[0x29ED96C20](0x20646E6120, 0xE500000000000000);
    sub_29E74EB58();
    sub_29E74EB28();
    v112 = sub_29E74ECF8();
    v114 = v113;
    (v147)(v107, v129);
    v146(v106, v111);
    MEMORY[0x29ED96C20](v112, v114);

    v115 = v155;
    v116 = v152;
    v117 = v123;
    v123(v139, v152);
    v117(v78, v116);
    (v148)(v93, v131);
    v117(v153, v116);
    v117(v151, v116);
    (*(v149 + 8))(v130, v150);
    return v115;
  }
}

uint64_t sub_29E646C20@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v87 = a3;
  v5 = sub_29E752098();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v77 = &v75 - v10;
  sub_29E648654(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v80 = &v75 - v13;
  sub_29E648654(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v79 = &v75 - v16;
  v17 = sub_29E74ED28();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v78 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v82 = &v75 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v75 - v23;
  v25 = sub_29E74E8C8();
  v85 = *(v25 - 8);
  v86 = v25;
  v26 = *(v85 + 64);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v27);
  v32 = &v75 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v75 - v33;
  v35 = sub_29E74EC98();
  v36 = [a2 components:28 fromDate:v35];

  sub_29E74E8A8();
  v81 = a1;
  v37 = sub_29E74EC98();
  v38 = [a2 components:28 fromDate:v37];

  sub_29E74E8A8();
  v39 = sub_29E74E898();
  v40 = [a2 dateFromComponents_];

  if (!v40)
  {
    goto LABEL_7;
  }

  sub_29E74ECD8();

  v41 = sub_29E74E898();
  v42 = [a2 dateFromComponents_];

  if (!v42)
  {
    (*(v88 + 8))(v24, v89);
LABEL_7:
    sub_29E752068();
    v56 = sub_29E752088();
    v57 = sub_29E7546A8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90 = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v90);
      _os_log_impl(&dword_29E5ED000, v56, v57, "[%{public}s] Got nil while building date from anchor/sleep day start date components.", v58, 0xCu);
      sub_29E5FECBC(v59);
      MEMORY[0x29ED98410](v59, -1, -1);
      MEMORY[0x29ED98410](v58, -1, -1);
    }

    (*(v83 + 8))(v9, v84);
    v60 = v86;
    v61 = *(v85 + 8);
    v61(v32, v86);
    v61(v34, v60);
    v62 = 1;
    v63 = v87;
    v53 = v88;
    v52 = v89;
    return (*(v53 + 56))(v63, v62, 1, v52);
  }

  v43 = v82;
  sub_29E74ECD8();

  if ((sub_29E74ECA8() & 1) == 0)
  {
    v53 = v88;
    v64 = *(v88 + 8);
    v65 = v43;
    v52 = v89;
    v64(v65, v89);
    v64(v24, v52);
    v66 = v86;
    v67 = *(v85 + 8);
    v67(v32, v86);
    v67(v34, v66);
    v55 = v87;
    (*(v53 + 16))(v87, v81, v52);
    goto LABEL_11;
  }

  v76 = v24;
  v44 = sub_29E74EE78();
  (*(*(v44 - 8) + 56))(v79, 1, 1, v44);
  v45 = sub_29E74EE88();
  (*(*(v45 - 8) + 56))(v80, 1, 1, v45);
  sub_29E74E8B8();
  v46 = sub_29E74E898();
  v47 = v86;
  v48 = *(v85 + 8);
  v48(v29, v86);
  v49 = sub_29E74EC98();
  v50 = [a2 dateByAddingComponents:v46 toDate:v49 options:0];

  if (v50)
  {
    v51 = v78;
    sub_29E74ECD8();

    v53 = v88;
    v52 = v89;
    v54 = *(v88 + 8);
    v54(v82, v89);
    v54(v76, v52);
    v48(v32, v47);
    v48(v34, v47);
    v55 = v87;
    (*(v53 + 32))(v87, v51, v52);
LABEL_11:
    v63 = v55;
    v62 = 0;
    return (*(v53 + 56))(v63, v62, 1, v52);
  }

  v69 = v77;
  sub_29E752068();
  v70 = sub_29E752088();
  v71 = sub_29E7546A8();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v73;
    *v72 = 136446210;
    *(v72 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, &v90);
    _os_log_impl(&dword_29E5ED000, v70, v71, "[%{public}s] Got nil while adjustint sleep day start.", v72, 0xCu);
    sub_29E5FECBC(v73);
    MEMORY[0x29ED98410](v73, -1, -1);
    MEMORY[0x29ED98410](v72, -1, -1);
  }

  (*(v83 + 8))(v69, v84);
  v53 = v88;
  v52 = v89;
  v74 = *(v88 + 8);
  v74(v82, v89);
  v74(v76, v52);
  v48(v32, v47);
  v48(v34, v47);
  v62 = 1;
  v63 = v87;
  return (*(v53 + 56))(v63, v62, 1, v52);
}

void *sub_29E6475B8(uint64_t a1)
{
  v2 = sub_29E752098();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  sub_29E648728();
  v4 = sub_29E754B68();
  v5 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC6990] healthStore:a1];
  v6 = *MEMORY[0x29EDC6980];
  sub_29E7541D8();
  v7 = sub_29E754798();

  if (v7)
  {

    return v7;
  }

  return v4;
}

uint64_t sub_29E647940(uint64_t a1)
{
  v52[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v48 - v8;
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v48 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA748] healthStore:a1];
  v52[0] = 0;
  v18 = [v17 featureOnboardingRecordWithError_];
  if (!v18)
  {
    v24 = v52[0];
    v25 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v26 = v25;
    v27 = sub_29E752088();
    v28 = sub_29E7546A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52[0] = v49;
      *v29 = 136446466;
      *(v29 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, v52);
      *(v29 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v50 = v2;
      v31 = *(*(v51 - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      v33 = v3;
      (*(v34 + 16))(&v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = sub_29E7541F8();
      v37 = sub_29E6B9C90(v35, v36, v52);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s] Could not fetch featureAvailabilityStore with error: %{public}s", v29, 0x16u);
      v38 = v49;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v38, -1, -1);
      MEMORY[0x29ED98410](v29, -1, -1);

      (*(v33 + 8))(v7, v50);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v19 = v18;
  v20 = v52[0];
  v21 = [v19 earliestDateOfAnyOnboardingCompletion];
  if (v21)
  {
    v22 = v21;
    sub_29E74ECD8();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v39 = sub_29E74ED28();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v14, v23, 1, v39);
  sub_29E6486A8(v14, v16);
  if ((*(v40 + 48))(v16, 1, v39) == 1)
  {
    sub_29E617214(v16);
    sub_29E752068();
    v41 = sub_29E752088();
    v42 = sub_29E7546A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52[0] = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E766470, v52);
      _os_log_impl(&dword_29E5ED000, v41, v42, "[%{public}s] Got nil earliest onboarding date or could not cast it to NSDate.", v43, 0xCu);
      sub_29E5FECBC(v44);
      MEMORY[0x29ED98410](v44, -1, -1);
      MEMORY[0x29ED98410](v43, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    goto LABEL_13;
  }

  v45 = sub_29E74EC98();

  (*(v40 + 8))(v16, v39);
  result = v45;
LABEL_14:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29E647F60(uint64_t a1)
{
  v2 = sub_29E752098();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74EB48();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74EB68();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v30 - v15;
  v17 = sub_29E74ED28();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC6990] healthStore:a1];
  v23 = *MEMORY[0x29EDC6978];
  sub_29E7541D8();
  v36 = v22;
  sub_29E754788();
  v24 = v12;
  v25 = v32;

  v26 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_29E617214(v16);

    return 0xD000000000000029;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v28 = v24;
    sub_29E74EB58();
    sub_29E74EB38();
    v29 = sub_29E74ECF8();

    (*(v31 + 8))(v8, v25);
    (*(v30 + 8))(v28, v9);
    (*(v26 + 8))(v21, v17);
    return v29;
  }
}

void sub_29E6485A4()
{
  if (!qword_2A1857B50)
  {
    sub_29E648600();
    v0 = sub_29E753048();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857B50);
    }
  }
}

unint64_t sub_29E648600()
{
  result = qword_2A1857B58;
  if (!qword_2A1857B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857B58);
  }

  return result;
}

void sub_29E648654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E6486A8(uint64_t a1, uint64_t a2)
{
  sub_29E648654(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E648728()
{
  result = qword_2A1856EC8;
  if (!qword_2A1856EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1856EC8);
  }

  return result;
}

uint64_t sub_29E648774@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = sub_29E74FEB8();
  v81 = *(v84 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v84);
  v75 = v7;
  v76 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64927C();
  v79 = v8;
  v78 = *(v8 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v77 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E649370();
  v83 = v11;
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v80 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6302C8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64942C();
  v73 = *(v18 - 8);
  v19 = *(v73 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v74 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = v70 - v23;
  v71 = v25;
  MEMORY[0x2A1C7C4A8](v22);
  v27 = v70 - v26;
  if (qword_2A1A7D6C0 != -1)
  {
    swift_once();
  }

  v28 = sub_29E74FE48();
  v29 = sub_29E61037C(v28, qword_2A1A7FA00);
  v30 = *(type metadata accessor for SleepApneaNotificationTipGeneratorPipeline() + 20);
  v31 = *(*(v28 - 8) + 16);
  v85 = a3;
  v31(a3 + v30, v29, v28);
  sub_29E74FEA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = sub_29E74FFA8();
  v34 = *(v33 - 8);
  v35 = v34;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v34 + 56))(v27, 1, 1, v33);
    sub_29E64CA84(v17, sub_29E6302C8);
  }

  else
  {
    (*(v34 + 32))(v27, v17, v33);
    (*(v35 + 56))(v27, 0, 1, v33);
  }

  sub_29E74FE58();
  sub_29E601938(v96, v96[3]);
  v36 = sub_29E74FDD8();
  sub_29E64C9D4(v27, v24, sub_29E64942C);
  v37 = type metadata accessor for SleepApneaNotificationTipDismissalStateManager();
  memset(v94, 0, sizeof(v94));
  v95 = 0;
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v87 = v27;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29E754C98())
  {
    v69 = a2;
    v42 = sub_29E5FF678(MEMORY[0x29EDCA190]);
  }

  else
  {
    v41 = a2;
    v42 = MEMORY[0x29EDCA1A0];
  }

  v86 = v24;
  *(v40 + 8) = v42;
  v43 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
  v44 = sub_29E751D98();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v45 = sub_29E74FFE8();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = v36;
  *(v40 + 2) = sub_29E74FFB8();
  sub_29E64C9D4(v94, &v89, sub_29E64A0F8);
  v88 = a1;
  if (v90)
  {
    v49 = a2;
    sub_29E5FAEE4(&v89, &v91);
  }

  else
  {
    v49 = a2;
    v50 = sub_29E72D790(a2, v48, v86);
    v92 = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    v93 = MEMORY[0x29EDC2EA8];
    *&v91 = v50;
    if (v90)
    {
      sub_29E64CA84(&v89, sub_29E64A0F8);
    }
  }

  sub_29E5FAEE4(&v91, (v40 + 24));
  sub_29E72C2D0();
  v51 = *(v40 + 7);
  sub_29E601938(v40 + 3, *(v40 + 6));
  *&v91 = sub_29E751DC8();
  swift_allocObject();
  swift_weakInit();
  sub_29E64C52C();
  sub_29E64CA3C(&qword_2A1A7BFA0, sub_29E64C52C);
  sub_29E7529A8();

  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E64CA84(v94, sub_29E64A0F8);
  v72 = sub_29E64942C;
  sub_29E64CA84(v86, sub_29E64942C);

  v52 = v49;
  sub_29E5FECBC(v96);
  v86 = sub_29E72B2DC();
  v96[0] = v86;
  sub_29E649310();
  sub_29E64CA3C(&qword_2A1A7BF80, sub_29E649310);
  v53 = v88;
  v96[0] = sub_29E7528C8();
  v54 = v77;
  sub_29E752998();

  v55 = v81;
  v56 = v76;
  v57 = v84;
  (*(v81 + 16))(v76, v53, v84);
  v70[1] = v40;
  v58 = v74;
  sub_29E64C9D4(v87, v74, sub_29E64942C);
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v75 + *(v73 + 80) + v59) & ~*(v73 + 80);
  v61 = (v71 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v55 + 32))(v62 + v59, v56, v57);
  sub_29E64CAE4(v58, v62 + v60, sub_29E64942C);
  *(v62 + v61) = v52;
  sub_29E609CF8(0, &qword_2A1A7D6A0);
  sub_29E64CA3C(&qword_2A1A7C068, sub_29E64927C);
  v63 = v52;
  v64 = v80;
  v65 = v79;
  sub_29E752928();

  (*(v78 + 8))(v54, v65);
  sub_29E64CA3C(&qword_2A1A7C008, sub_29E649370);
  v66 = v83;
  v67 = sub_29E7528E8();

  (*(v55 + 8))(v88, v57);
  (*(v82 + 8))(v64, v66);
  result = sub_29E64CA84(v87, v72);
  *v85 = v67;
  return result;
}

void sub_29E64927C()
{
  if (!qword_2A1A7C060)
  {
    sub_29E649310();
    sub_29E64CA3C(&qword_2A1A7BF80, sub_29E649310);
    v0 = sub_29E752628();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C060);
    }
  }
}

void sub_29E649310()
{
  if (!qword_2A1A7BF70)
  {
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF70);
    }
  }
}

void sub_29E649370()
{
  if (!qword_2A1A7C000)
  {
    sub_29E64927C();
    sub_29E609CF8(255, &qword_2A1A7D6A0);
    sub_29E64CA3C(&qword_2A1A7C068, sub_29E64927C);
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C000);
    }
  }
}

void sub_29E64942C()
{
  if (!qword_2A1A7CF50)
  {
    sub_29E74FFA8();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7CF50);
    }
  }
}

uint64_t sub_29E649484@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v39 = a5;
  v40 = a4;
  v37 = a3;
  sub_29E64942C();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v35 = v9;
  v38 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29E74FE48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v41 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_29E74FEB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v17);
  v34 = *a1;
  v19 = *(v15 + 16);
  v19(&v33[-v20], a2, v14);
  if (qword_2A1A7D6C0 != -1)
  {
    swift_once();
  }

  v21 = sub_29E61037C(v10, qword_2A1A7FA00);
  (*(v11 + 16))(v41, v21, v10);
  v19(v18, a2, v14);
  v22 = v38;
  sub_29E64C9D4(v37, v38, sub_29E64942C);
  v23 = (*(v15 + 80) + 17) & ~*(v15 + 80);
  v24 = (v16 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = (v35 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v34;
  (*(v15 + 32))(v26 + v23, v18, v14);
  sub_29E64CAE4(v22, v26 + v24, sub_29E64942C);
  v27 = v40;
  *(v26 + v25) = v40;
  v28 = sub_29E74FEE8();
  v29 = MEMORY[0x29EDC38C8];
  v30 = v39;
  v39[3] = v28;
  v30[4] = v29;
  sub_29E5FEBF4(v30);
  v31 = v27;
  return sub_29E74FEC8();
}

void sub_29E649820(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v5 = sub_29E74FDC8();
    v6 = *(*(v5 - 8) + 56);

    v6(a4, 1, 1, v5);
  }

  else
  {
    v9 = [objc_opt_self() hksp_internalUserDefaults];
    sub_29E649910(a2, a3, v9, a4);
  }
}

uint64_t sub_29E649910@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39[0] = a3;
  v39[1] = a1;
  v40 = a2;
  v5 = sub_29E752098();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = sub_29E74FB98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74FDC8();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74E7C8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_29E74E7B8();
  sub_29E64942C();
  sub_29E64CBF4(&qword_2A1857B60, sub_29E64942C, sub_29E64C7A8);
  v19 = sub_29E74E7A8();
  v21 = v20;
  v22 = v39[0];
  v42 = a4;

  type metadata accessor for SleepApneaNotificationTipViewController();
  (*(v8 + 104))(v11, *MEMORY[0x29EDC3750], v7);
  sub_29E64C7DC(v19, v21);
  sub_29E74FE78();
  sub_29E74FC18();
  v23 = sub_29E74FF18();
  v25 = v24;
  v26 = sub_29E74FD78();
  sub_29E64A424(&v46, v23, v25);

  v26(v45, 0);
  if (MEMORY[0x29EDCA190] >> 62)
  {
    v38 = sub_29E754C98();
    v28 = v40;
    if (v38)
    {
      sub_29E5FEFC4(MEMORY[0x29EDCA190]);
    }

    v27 = v42;
  }

  else
  {
    v27 = v42;
    v28 = v40;
  }

  sub_29E74FD28();
  v29 = objc_allocWithZone(type metadata accessor for SleepFocusPromotionStore(0));
  v30 = sub_29E70A79C(v28, v22);
  v31 = sub_29E70B51C();

  if ((v31 & 1) == 0)
  {
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    v32 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
    v33 = sub_29E74FD08();
    sub_29E64A1A8(&v46, v32, &qword_2A1A7D490, 0x29EDBACB8, &qword_2A1A7BD38, &qword_2A1A7D488);

    v33(v45, 0);
  }

  sub_29E74FC98();
  sub_29E74FCB8();
  v34 = sub_29E7543D8();
  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (v35)
  {
    sub_29E7541D8();
  }

  sub_29E74FD68();
  sub_29E643D20(v19, v21);
  v36 = v43;
  (*(v43 + 32))(v27, v15, v44);
  return (*(v36 + 56))(v27, 0, 1, v44);
}

uint64_t sub_29E64A038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for SleepApneaNotificationTipGeneratorPipeline()
{
  result = qword_2A1A7CB18;
  if (!qword_2A1A7CB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E64A0F8()
{
  if (!qword_2A1A7CEE8)
  {
    sub_29E609CF8(255, &qword_2A1A7CEF0);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7CEE8);
    }
  }
}

uint64_t sub_29E64A1A8(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_29E754CA8();

    if (v17)
    {

      sub_29E609B5C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_29E754C98();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_29E64A8C8(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_29E64AAE0(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_29E64B290(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_29E609B5C(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_29E754B78();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_29E754B88();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_29E64B314(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29E64A424(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_29E7550C8();
  sub_29E7542D8();
  v9 = sub_29E755108();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_29E755028() & 1) != 0)
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

    sub_29E64B4BC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29E64A574(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  sub_29E64C90C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v28 = &v28 - v11;
  v29 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_29E7550C8();
  sub_29E754048();
  sub_29E64C9A0();
  sub_29E7540B8();
  v14 = *(v5 + 36);
  v34 = a2;
  v31 = v14;
  v32 = v5;
  sub_29E7540B8();
  v15 = sub_29E755108();
  v33 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v15 & ~v16;
  if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v6 + 72);
    while (1)
    {
      sub_29E64C9D4(*(v33 + 48) + v19 * v17, v10, sub_29E64C90C);
      sub_29E64CA3C(&qword_2A1857B80, MEMORY[0x29EDBA2F8]);
      if (sub_29E754108())
      {
        v21 = &v10[*(v32 + 36)];
        v22 = sub_29E754108();
        sub_29E64CA84(v10, sub_29E64C90C);
        if (v22)
        {
          sub_29E64CA84(v34, sub_29E64C90C);
          sub_29E64C9D4(*(v33 + 48) + v19 * v17, v30, sub_29E64C90C);
          return 0;
        }
      }

      else
      {
        sub_29E64CA84(v10, sub_29E64C90C);
      }

      v17 = (v17 + 1) & v18;
      v20 = v34;
      if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v20 = v34;
LABEL_9:
  v24 = v29;
  v25 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v28;
  sub_29E64C9D4(v20, v28, sub_29E64C90C);
  v35 = *v24;
  sub_29E64B63C(v27, v17, isUniquelyReferenced_nonNull_native);
  *v24 = v35;
  sub_29E64CAE4(v20, v30, sub_29E64C90C);
  return 1;
}

uint64_t sub_29E64A8C8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29E64C830(0, a3, a4, a5, a6);
    v10 = sub_29E754D38();
    v24 = v10;
    sub_29E754C88();
    if (sub_29E754CC8())
    {
      sub_29E609B5C(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_29E64AAE0(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_29E754B78();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_29E754CC8());
    }
  }

  else
  {
    sub_29E751758();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

uint64_t sub_29E64AAE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29E64C830(0, a2, a3, a4, a5);
  result = sub_29E754D28();
  v10 = result;
  if (*(v7 + 16))
  {
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_29E754B78();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
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

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_29E64ACFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29E5FFA5C();
  result = sub_29E754D28();
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
      sub_29E7550C8();
      sub_29E7542D8();
      result = sub_29E755108();
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

uint64_t sub_29E64AF50(uint64_t a1)
{
  v2 = v1;
  sub_29E64C90C();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_29E64CB4C();
  result = sub_29E754D28();
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v23 = *(v37 + 72);
      v24 = v39;
      sub_29E64CAE4(v22 + v23 * (v19 | (v11 << 6)), v39, sub_29E64C90C);
      v25 = *(v10 + 40);
      sub_29E7550C8();
      sub_29E754048();
      sub_29E64C9A0();
      sub_29E7540B8();
      v26 = v24 + *(v38 + 36);
      sub_29E7540B8();
      result = sub_29E755108();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_29E64CAE4(v39, *(v10 + 48) + v18 * v23, sub_29E64C90C);
      ++*(v10 + 16);
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

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_29E64B290(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_29E754B78();
  v5 = -1 << *(a2 + 32);
  result = sub_29E754C78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_29E64B314(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_29E64AAE0(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29E64B940(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_29E64BDE0(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_29E754B78();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_29E609B5C(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_29E754B88();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29E755068();
  __break(1u);
}

uint64_t sub_29E64B4BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_29E64ACFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29E64BA94();
      goto LABEL_16;
    }

    sub_29E64BFE8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_29E7550C8();
  sub_29E7542D8();
  result = sub_29E755108();
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

      result = sub_29E755028();
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
  result = sub_29E755068();
  __break(1u);
  return result;
}

uint64_t sub_29E64B63C(uint64_t a1, unint64_t a2, char a3)
{
  sub_29E64C90C();
  v31 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v28 = v8;
  v29 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_29E64AF50(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_29E64BBE4();
      goto LABEL_15;
    }

    sub_29E64C214(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_29E7550C8();
  sub_29E754048();
  sub_29E64C9A0();
  sub_29E7540B8();
  v30 = *(v31 + 36);
  sub_29E7540B8();
  v16 = sub_29E755108();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v8 + 72);
    do
    {
      sub_29E64C9D4(*(v14 + 48) + v19 * a2, v11, sub_29E64C90C);
      sub_29E64CA3C(&qword_2A1857B80, MEMORY[0x29EDBA2F8]);
      if (sub_29E754108())
      {
        v20 = &v11[*(v31 + 36)];
        v21 = sub_29E754108();
        sub_29E64CA84(v11, sub_29E64C90C);
        if (v21)
        {
          sub_29E755068();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_29E64CA84(v11, sub_29E64C90C);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v22 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_29E64CAE4(a1, *(v22 + 48) + *(v28 + 72) * a2, sub_29E64C90C);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

id sub_29E64B940(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29E64C830(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29E754D18();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_29E64BA94()
{
  v1 = v0;
  sub_29E5FFA5C();
  v2 = *v0;
  v3 = sub_29E754D18();
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

void *sub_29E64BBE4()
{
  v1 = v0;
  sub_29E64C90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64CB4C();
  v7 = *v0;
  v8 = sub_29E754D18();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_29E64C9D4(*(v7 + 48) + v22, v6, sub_29E64C90C);
        result = sub_29E64CAE4(v6, *(v9 + 48) + v22, sub_29E64C90C);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_29E64BDE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_29E64C830(0, a2, a3, a4, a5);
  result = sub_29E754D28();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_29E754B78();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v6 = v10;
  }

  return result;
}

uint64_t sub_29E64BFE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_29E5FFA5C();
  result = sub_29E754D28();
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
      sub_29E7550C8();

      sub_29E7542D8();
      result = sub_29E755108();
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

uint64_t sub_29E64C214(uint64_t a1)
{
  v2 = v1;
  sub_29E64C90C();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_29E64CB4C();
  result = sub_29E754D28();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v11 = 0;
    v12 = v7 + 56;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v23 = *(v36 + 72);
      v24 = v38;
      sub_29E64C9D4(v22 + v23 * (v19 | (v11 << 6)), v38, sub_29E64C90C);
      v25 = *(v10 + 40);
      sub_29E7550C8();
      sub_29E754048();
      sub_29E64C9A0();
      sub_29E7540B8();
      v26 = v24 + *(v37 + 36);
      sub_29E7540B8();
      result = sub_29E755108();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_29E64CAE4(v38, *(v10 + 48) + v18 * v23, sub_29E64C90C);
      ++*(v10 + 16);
      v7 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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

void sub_29E64C52C()
{
  if (!qword_2A1A7BF98)
  {
    sub_29E751D98();
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF98);
    }
  }
}

uint64_t sub_29E64C594@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E74FEB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_29E64942C();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E649484(a1, v2 + v6, v2 + v10, v11, a2);
}

void sub_29E64C6A4(uint64_t a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_29E64942C();
  v7 = *(v1 + ((*(*(v6 - 8) + 64) + ((v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_29E649820(v8, v1 + v4, v7, a1);
}

uint64_t sub_29E64C7DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_29E64C830(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29E609B5C(255, a3, a4);
    sub_29E64C8BC(a5, a3, a4);
    v9 = sub_29E754D58();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E64C8BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E609B5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E64C90C()
{
  if (!qword_2A1A7BE00)
  {
    sub_29E754048();
    sub_29E64CA3C(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E7540F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BE00);
    }
  }
}

uint64_t sub_29E64C9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E64CA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E64CA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E64CAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E64CB4C()
{
  if (!qword_2A1857B88)
  {
    sub_29E64C90C();
    sub_29E64CBF4(&qword_2A1857B90, sub_29E64C90C, sub_29E64C9A0);
    v0 = sub_29E754D58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857B88);
    }
  }
}

uint64_t sub_29E64CBF4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E64CC8C()
{
  sub_29E64CD10();
  if (v0 <= 0x3F)
  {
    sub_29E74FE48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E64CD10()
{
  if (!qword_2A1A7BFA8)
  {
    sub_29E609CF8(255, &qword_2A1A7D6A0);
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BFA8);
    }
  }
}

__n128 sub_29E64CD88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29E64CDC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_29E7550C8();
  sub_29E7550E8();
  if (v2)
  {
    sub_29E7542D8();
  }

  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E64CE64()
{
  v1 = *(v0 + 16);
  v2 = v0[3];
  v3 = v0[4];
  if (v0[1])
  {
    v4 = *v0;
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E64CF04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_29E7550C8();
  sub_29E7550E8();
  if (v2)
  {
    sub_29E7542D8();
  }

  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E64CF9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v7)
  {
    v12 = sub_29E755028();
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    if ((v4 ^ v8))
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 != v8)
  {
    return 0;
  }

LABEL_14:
  if (v5 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_29E755028();
}

uint64_t sub_29E64D084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_29E64D908();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64D86C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x2A1C7C4A8](v8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v33 - v15;
  sub_29E64D80C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = v33 - v22;
  sub_29E7544C8();
  v33[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E64D3C8(v23);
  sub_29E7539A8();
  v24 = *(a1 + 16);
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_29E753648();
  (*(v35 + 8))(v7, v25);
  sub_29E64D968(v23, v21);
  v37 = 1;
  v26 = v10[2];
  v26(v14, v16, v9);
  v27 = v36;
  sub_29E64D968(v21, v36);
  sub_29E64D794();
  v29 = v27 + *(v28 + 48);
  v30 = v37;
  *v29 = 0;
  *(v29 + 8) = v30;
  v26((v27 + *(v28 + 64)), v14, v9);
  v31 = v10[1];
  v31(v16, v9);
  sub_29E64D9CC(v23);
  v31(v14, v9);
  sub_29E64D9CC(v21);
}

uint64_t sub_29E64D3C8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  sub_29E64D80C();
  v44 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[3];
  v42 = v1[4];
  v43 = v7;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v6)
  {
    v9 = v6;
  }

  v39 = v9;
  v40 = v8;
  v48 = v8;
  v49 = v9;
  v38 = sub_29E60DE10();
  swift_bridgeObjectRetain_n();
  v10 = sub_29E753608();
  v12 = v11;
  v14 = v13;
  sub_29E753418();
  v15 = sub_29E7535D8();
  v17 = v16;
  v19 = v18;

  sub_29E60DB44(v10, v12, v14 & 1);

  sub_29E753458();
  v20 = sub_29E753598();
  v22 = v21;
  v24 = v23;
  sub_29E60DB44(v15, v17, v19 & 1);

  sub_29E7538C8();
  v25 = sub_29E7535A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_29E60DB44(v20, v22, v24 & 1);

  v48 = v25;
  v49 = v27;
  LOBYTE(v20) = v29 & 1;
  v50 = v29 & 1;
  v51 = v31;
  v46 = v40;
  v47 = v39;
  v32 = sub_29E753608();
  v34 = v33;
  LOBYTE(v15) = v35;
  v36 = v41;
  sub_29E753758();
  sub_29E60DB44(v32, v34, v15 & 1);

  sub_29E60DB44(v25, v27, v20);

  v48 = v43;
  v49 = v42;

  MEMORY[0x29ED96C20](0x747865542ELL, 0xE500000000000000);
  sub_29E752C18();

  return sub_29E64D9CC(v36);
}

uint64_t sub_29E64D674@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_29E752EF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E64D6D4();
  return sub_29E64D084(v6, a1 + *(v4 + 44));
}

void sub_29E64D6D4()
{
  if (!qword_2A1857B98)
  {
    sub_29E64D73C();
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857B98);
    }
  }
}

void sub_29E64D73C()
{
  if (!qword_2A1857BA0)
  {
    sub_29E64D794();
    v0 = sub_29E753C78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857BA0);
    }
  }
}

void sub_29E64D794()
{
  if (!qword_2A1857BA8)
  {
    sub_29E64D80C();
    sub_29E64D86C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1857BA8);
    }
  }
}

void sub_29E64D80C()
{
  if (!qword_2A1857BB0)
  {
    sub_29E7532F8();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857BB0);
    }
  }
}

void sub_29E64D86C()
{
  if (!qword_2A1857BB8)
  {
    sub_29E64D908();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857BB8);
    }
  }
}

void sub_29E64D908()
{
  if (!qword_2A1857BC0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857BC0);
    }
  }
}

uint64_t sub_29E64D968(uint64_t a1, uint64_t a2)
{
  sub_29E64D80C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E64D9CC(uint64_t a1)
{
  sub_29E64D80C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E64DA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E64DA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E64DAC8()
{
  if (!qword_2A1857BD0)
  {
    sub_29E64D73C();
    sub_29E64DB5C(&qword_2A1857BD8, sub_29E64D73C);
    v0 = sub_29E753A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857BD0);
    }
  }
}

uint64_t sub_29E64DB5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E64DBA8()
{
  result = qword_2A1857BE0;
  if (!qword_2A1857BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857BE0);
  }

  return result;
}

void sub_29E64DC4C()
{
  sub_29E631834();
  if (v0 <= 0x3F)
  {
    sub_29E650114(319, &unk_2A18590D0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E64DD04(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = sub_29E74EFC8();
  swift_getKeyPath();
  sub_29E64EAD0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreRoomScoreBreakdown);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_29E650798(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E64E7F4(0);
  sub_29E64E828();
  sub_29E650800(&qword_2A1857C20, sub_29E64E7F4);
  sub_29E650800(&qword_2A1857C28, MEMORY[0x29EDC6910]);
  sub_29E64E8C4();
  sub_29E753B38();
}

uint64_t sub_29E64DF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v57 = a1;
  sub_29E65029C(0, &qword_2A1857C18, type metadata accessor for ComponentRow);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v50 - v6;
  sub_29E64E828();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v50 - v15;
  v50 = sub_29E74F688();
  v17 = *(v50 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v52 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a2;
  sub_29E64EAD0(a2, v16, sub_29E631834);
  v22 = sub_29E74F2D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v16, 1, v22) == 1)
  {
    sub_29E650848(v16, sub_29E631834);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    sub_29E74F268();
    (*(v23 + 8))(v16, v22);
    v25 = sub_29E74F658();
    v26 = v27;
    (*(v17 + 8))(v20, v50);
  }

  v28 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v29 = v21;
  v30 = *(v21 + *(v28 + 20));
  if (v30)
  {
    goto LABEL_10;
  }

  v31 = v21;
  v32 = v51;
  sub_29E64EAD0(v31, v51, sub_29E631834);
  if (v24(v32, 1, v22) != 1)
  {
    sub_29E650848(v32, sub_29E631834);
LABEL_10:
    v36 = (v29 + *(v28 + 24));
    v37 = *v36;
    v38 = *(v36 + 8);
    v39 = sub_29E74EFE8();
    (*(*(v39 - 8) + 16))(v7, v57, v39);
    v40 = type metadata accessor for ComponentRow(0);
    v41 = &v7[v40[5]];
    *v41 = v25;
    v41[1] = v26;
    v7[v40[6]] = v30;
    v42 = &v7[v40[7]];
    *v42 = v37;
    v42[8] = v38;
    v43 = sub_29E7533C8();
    sub_29E7529C8();
    v34 = v55;
    v44 = &v7[*(v55 + 36)];
    *v44 = v43;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    v35 = v53;
    sub_29E64EB38(v7, v53);
    v33 = 0;
    goto LABEL_11;
  }

  sub_29E650848(v32, sub_29E631834);
  v33 = 1;
  v34 = v55;
  v35 = v53;
LABEL_11:
  (*(v54 + 56))(v35, v33, 1, v34);
  sub_29E650798(v35, v56, sub_29E64E828);
}

uint64_t sub_29E64E46C()
{
  v1 = sub_29E7532D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64E648();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_29E752FF8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E6504E8(0, &qword_2A1857C50, sub_29E64E6F0);
  v11 = &v9[*(v10 + 44)];
  sub_29E64DD04(v0);
  sub_29E7532C8();
  sub_29E650800(&qword_2A1857C58, sub_29E64E648);
  sub_29E753808();
  (*(v2 + 8))(v5, v1);
  return sub_29E650848(v9, sub_29E64E648);
}

void sub_29E64E648()
{
  if (!qword_2A1857BF8)
  {
    sub_29E64E6F0();
    sub_29E64E90C(&qword_2A1857C30, sub_29E64E6F0, sub_29E64E8C4);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857BF8);
    }
  }
}

void sub_29E64E6F0()
{
  if (!qword_2A1857C00)
  {
    sub_29E64E7F4(255);
    sub_29E74EFE8();
    sub_29E64E828();
    sub_29E650800(&qword_2A1857C20, sub_29E64E7F4);
    sub_29E650800(&qword_2A1857C28, MEMORY[0x29EDC6910]);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857C00);
    }
  }
}

void sub_29E64E828()
{
  if (!qword_2A1857C10)
  {
    sub_29E65029C(255, &qword_2A1857C18, type metadata accessor for ComponentRow);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857C10);
    }
  }
}

uint64_t sub_29E64E90C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E64E97C()
{
  result = qword_2A1857C40;
  if (!qword_2A1857C40)
  {
    sub_29E65029C(255, &qword_2A1857C18, type metadata accessor for ComponentRow);
    sub_29E650800(&qword_2A1857C48, type metadata accessor for ComponentRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857C40);
  }

  return result;
}

uint64_t sub_29E64EA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepScoreRoomScoreBreakdown(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E64DF60(a1, v6, a2);
}

uint64_t sub_29E64EAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E64EB38(uint64_t a1, uint64_t a2)
{
  sub_29E65029C(0, &qword_2A1857C18, type metadata accessor for ComponentRow);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E64EBE8()
{
  sub_29E74EFE8();
  if (v0 <= 0x3F)
  {
    sub_29E650114(319, &unk_2A18590D0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E64ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a1;
  v124 = a2;
  v123 = sub_29E752C88();
  v122 = *(v123 - 8);
  v2 = *(v122 + 64);
  MEMORY[0x2A1C7C4A8](v123);
  v121 = v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E650554(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v109 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E650588(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v110 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637C08();
  v111 = v10;
  v108 = *(v10 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v103 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74E9F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v106 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_29E74E998();
  v16 = *(*(v107 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v107);
  v126 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6501F4();
  v119 = v18;
  v118 = *(v18 - 8);
  v19 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v116 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E650160();
  v115 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v120 = v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v114 = v102 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v117 = v102 - v27;
  v28 = sub_29E7534D8();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x2A1C7C4A8](v28);
  v32 = v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65029C(0, &qword_2A1857898, sub_29E638064);
  v105 = v33;
  v34 = *(*(v33 - 1) + 64);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v113 = v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v127 = (v102 - v37);
  sub_29E7544C8();
  v112 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = sub_29E7539B8();
  sub_29E637F00();
  v40 = v127;
  v41 = (v127 + *(v39 + 36));
  sub_29E6505F0(0, &qword_2A1857510, MEMORY[0x29EDBCAE8], MEMORY[0x29EDBC938]);
  v43 = *(v42 + 28);
  v44 = *MEMORY[0x29EDBCAD8];
  v45 = sub_29E7539D8();
  (*(*(v45 - 8) + 104))(v41 + v43, v44, v45);
  *v41 = swift_getKeyPath();
  *v40 = v38;
  sub_29E753428();
  v46 = *MEMORY[0x29EDBC9A8];
  v125 = v29[13];
  v102[1] = v29 + 13;
  v125(v32, v46, v28);
  v47 = sub_29E7534E8();
  v104 = v28;
  v48 = v47;

  v49 = v29[1];
  v49(v32, v28);
  KeyPath = swift_getKeyPath();
  sub_29E637F94();
  v52 = (v40 + *(v51 + 36));
  *v52 = KeyPath;
  v52[1] = v48;
  v53 = v128;
  v54 = sub_29E74EF98();
  sub_29E638064();
  *(v40 + *(v55 + 36)) = v54;
  LOBYTE(v54) = sub_29E7533E8();
  sub_29E7529C8();
  v56 = v40 + v105[9];
  *v56 = v54;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *(v56 + 3) = v59;
  *(v56 + 4) = v60;
  v56[40] = 0;
  sub_29E64FA48();
  sub_29E74E9E8();
  sub_29E74E9A8();
  sub_29E753428();
  LODWORD(v106) = v46;
  v61 = v46;
  v62 = v104;
  v125(v32, v61, v104);
  sub_29E7534E8();

  v105 = v49;
  v49(v32, v62);
  sub_29E753478();
  v63 = sub_29E7534C8();

  *&v131 = v63;
  sub_29E637B04();
  sub_29E74E9B8();
  v64 = type metadata accessor for ComponentRow(0);
  v65 = (v53 + v64[5]);
  v66 = v65[1];
  *&v131 = *v65;
  *(&v131 + 1) = v66;
  v67 = sub_29E74EDA8();
  v68 = v109;
  (*(*(v67 - 8) + 56))(v109, 1, 1, v67);
  sub_29E650800(&qword_2A1857CE0, MEMORY[0x29EDB9A78]);
  sub_29E60DE10();

  v69 = v110;
  sub_29E74EA58();
  sub_29E650848(v68, sub_29E650554);

  if ((*(v108 + 48))(v69, 1, v111) == 1)
  {
    v70 = sub_29E650588;
    v71 = v69;
  }

  else
  {
    v72 = v103;
    sub_29E650798(v69, v103, sub_29E637C08);
    sub_29E753428();
    v125(v32, v106, v62);
    v73 = sub_29E7534E8();

    (v105)(v32, v62);
    sub_29E650800(&qword_2A1857830, sub_29E637C08);
    v74 = sub_29E74E9C8();
    *&v129[0] = v73;
    sub_29E74EA08();
    v74(&v131, 0);
    v70 = sub_29E637C08;
    v71 = v72;
  }

  sub_29E650848(v71, v70);
  v75 = v121;
  v76 = sub_29E7535F8();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v128;
  v84 = (v128 + v64[7]);
  v85 = *v84;
  v86 = *(v84 + 8);
  v87 = swift_getKeyPath();
  v135 = v80 & 1;
  v134 = v86;
  *&v131 = v76;
  *(&v131 + 1) = v78;
  LOBYTE(v132) = v80 & 1;
  *(&v132 + 1) = v82;
  *v133 = v87;
  *&v133[8] = v85;
  v133[16] = v86;
  *&v133[17] = 256;
  v88 = *(v83 + v64[6]);
  if (v88 == 1)
  {
    sub_29E752C78();
    v89 = v123;
  }

  else
  {
    *&v129[0] = MEMORY[0x29EDCA190];
    sub_29E650800(&qword_2A1857CE8, MEMORY[0x29EDBC588]);
    sub_29E6505BC(0);
    sub_29E650800(&qword_2A1857CF8, sub_29E6505BC);
    v89 = v123;
    sub_29E754C58();
  }

  sub_29E65029C(0, &qword_2A1857720, sub_29E637234);
  sub_29E650300();
  v90 = v116;
  sub_29E7538A8();
  (*(v122 + 8))(v75, v89);
  v129[0] = v131;
  v129[1] = v132;
  *v130 = *v133;
  *&v130[15] = *&v133[15];
  sub_29E650654(v129, &qword_2A1857720, sub_29E637234);
  v91 = sub_29E753C68();
  v92 = v114;
  (*(v118 + 32))(v114, v90, v119);
  v93 = &v92[*(v115 + 36)];
  *v93 = v91;
  v93[8] = v88;
  v94 = v92;
  v95 = v117;
  sub_29E5F35B0(v94, v117);
  v96 = v127;
  v97 = v113;
  sub_29E6506B0(v127, v113);
  v98 = v120;
  sub_29E5F3614(v95, v120);
  v99 = v124;
  sub_29E6506B0(v97, v124);
  sub_29E650028();
  sub_29E5F3614(v98, v99 + *(v100 + 48));
  sub_29E650738(v95, sub_29E650160);
  sub_29E650654(v96, &qword_2A1857898, sub_29E638064);
  sub_29E650738(v98, sub_29E650160);
  sub_29E650654(v97, &qword_2A1857898, sub_29E638064);
}

uint64_t sub_29E64FA48()
{
  v1 = sub_29E754188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E754168();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E74EFE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v0, v8);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x29EDC6908] || v13 == *MEMORY[0x29EDC6900] || v13 == *MEMORY[0x29EDC68F8])
  {
    sub_29E754158();
    sub_29E754148();
    v14 = (v0 + *(type metadata accessor for ComponentRow(0) + 20));
    v15 = *v14;
    v16 = v14[1];
    sub_29E754138();
    sub_29E754148();
    sub_29E754178();
    v17 = sub_29E65B0B4(v5);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v17;
}

uint64_t sub_29E64FD84()
{
  v1 = sub_29E7532D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64FF60();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_29E752ED8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_29E6504E8(0, &qword_2A1857CC0, sub_29E64FFF4);
  sub_29E64ECB0(v0, &v9[*(v10 + 44)]);
  sub_29E7532C8();
  sub_29E650800(&qword_2A1857CC8, sub_29E64FF60);
  sub_29E753808();
  (*(v2 + 8))(v5, v1);
  return sub_29E650738(v9, sub_29E64FF60);
}

void sub_29E64FF60()
{
  if (!qword_2A1857C70)
  {
    sub_29E64FFF4(255);
    sub_29E650800(&qword_2A1857CB8, sub_29E64FFF4);
    v0 = sub_29E753A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857C70);
    }
  }
}

void sub_29E650028()
{
  if (!qword_2A1857C80)
  {
    sub_29E65029C(255, &qword_2A1857898, sub_29E638064);
    sub_29E650160();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857C80);
    }
  }
}

void sub_29E6500BC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29E650114(255, a3);
    v4 = sub_29E7532E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E650114(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E754BD8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29E650160()
{
  if (!qword_2A1857C88)
  {
    sub_29E6501F4();
    sub_29E650494(255, &qword_2A1857CB0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9AB0], MEMORY[0x29EDBC700]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857C88);
    }
  }
}

void sub_29E6501F4()
{
  if (!qword_2A1857C90)
  {
    sub_29E65029C(255, &qword_2A1857720, sub_29E637234);
    sub_29E650300();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857C90);
    }
  }
}

void sub_29E65029C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E650300()
{
  result = qword_2A1857C98;
  if (!qword_2A1857C98)
  {
    sub_29E65029C(255, &qword_2A1857720, sub_29E637234);
    sub_29E6503A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857C98);
  }

  return result;
}

unint64_t sub_29E6503A4()
{
  result = qword_2A1857CA0;
  if (!qword_2A1857CA0)
  {
    sub_29E637234();
    sub_29E650424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857CA0);
  }

  return result;
}

unint64_t sub_29E650424()
{
  result = qword_2A1857CA8;
  if (!qword_2A1857CA8)
  {
    sub_29E6500BC(255, &qword_2A1857730, &unk_2A18590D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857CA8);
  }

  return result;
}

void sub_29E650494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29E6504E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6505F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E650654(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E65029C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E6506B0(uint64_t a1, uint64_t a2)
{
  sub_29E65029C(0, &qword_2A1857898, sub_29E638064);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E650738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E650798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E650800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E650848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6508A8(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_29E650800(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

void sub_29E65096C()
{
  type metadata accessor for SleepScoreGalleryModelProvider();
  if (v0 <= 0x3F)
  {
    sub_29E650A80();
    if (v1 <= 0x3F)
    {
      sub_29E65AA54(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        sub_29E65AA54(319, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_29E650A80()
{
  result = qword_2A1A7BCC0;
  if (!qword_2A1A7BCC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A7BCC0);
  }

  return result;
}

uint64_t sub_29E650AEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E752EB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDB9D18];
  v9 = MEMORY[0x29EDBC388];
  sub_29E65AA54(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for SleepScoreGalleryScreen(0);
  sub_29E658E68(v1 + *(v14 + 28), v13, &qword_2A1856970, v8, v9, sub_29E65AA54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_29E74EE78();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_29E7546B8();
    v18 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_29E650D34()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {
    v7 = *(v0 + 24);

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v11;
  }

  if ((v6 - 1) < 6)
  {
    return (0x38u >> (v6 - 1)) & 1;
  }

  type metadata accessor for HKWidthDesignation(0);
  v11 = v6;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E650EB0()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {
    v7 = *(v0 + 24);

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v11;
  }

  if ((v6 - 1) < 6)
  {
    return qword_29E766D10[v6 - 1];
  }

  type metadata accessor for HKWidthDesignation(0);
  v11 = v6;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E65102C()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {
    v7 = *(v0 + 24);

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v11;
  }

  if ((v6 - 1) < 6)
  {
    return qword_29E766D40[v6 - 1];
  }

  type metadata accessor for HKWidthDesignation(0);
  v11 = v6;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E6511A8()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x2A1C7C4A8](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {
    v8 = *(v0 + 24);

    sub_29E7546B8();
    v9 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v7, 0);
    result = (*(v2 + 8))(v6, v1);
    v7 = v12;
  }

  if ((v7 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v12 = v7;
    result = sub_29E755048();
    __break(1u);
  }

  else
  {
    v10 = qword_29E766D70[v7 - 1];
  }

  return result;
}

uint64_t sub_29E651324@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  sub_29E653908();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E6538E0(0);
  v31 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v28[-v11];
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v28[-v13];
  sub_29E7544C8();
  v34 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &qword_2A1A7BD48, 0x29EDC7A00);
  v15 = objc_opt_self();
  v16 = [v15 secondarySystemBackgroundColor];
  v17 = [v15 systemBackgroundColor];
  sub_29E754B38();

  v18 = sub_29E7538E8();
  v30 = sub_29E752C58();
  v29 = sub_29E7533A8();
  v19 = sub_29E753388();
  MEMORY[0x2A1C7C4A8](v19);
  sub_29E65399C();
  sub_29E65AFE8(&qword_2A1857E28, sub_29E65399C);
  sub_29E752A08();
  sub_29E753C48();
  sub_29E752CA8();
  (*(v32 + 32))(v12, v4, v33);
  v20 = &v12[*(v31 + 36)];
  v21 = v41;
  v20[4] = v40;
  v20[5] = v21;
  v20[6] = v42;
  v22 = v37;
  *v20 = v36;
  v20[1] = v22;
  v23 = v39;
  v20[2] = v38;
  v20[3] = v23;
  sub_29E5F3874(v12, v14);
  sub_29E658E00(v14, v9, sub_29E6538E0);
  v24 = v35;
  v25 = v30;
  *v35 = v18;
  v24[1] = v25;
  *(v24 + 16) = v29;
  sub_29E653858();
  sub_29E658E00(v9, v24 + *(v26 + 48), sub_29E6538E0);

  sub_29E65ACE0(v14, sub_29E6538E0);
  sub_29E65ACE0(v9, sub_29E6538E0);
}

uint64_t sub_29E651754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_29E752FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29E65454C(0, &qword_2A1857E30, sub_29E653A30);
  sub_29E651848(a1, a2 + *(v4 + 44));
}

uint64_t sub_29E651848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v223 = a1;
  v217 = a2;
  sub_29E65449C(0);
  v215 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v218 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v216 = &v186 - v6;
  sub_29E653F40(0);
  v187 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v188 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653EF8(0);
  v212 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v189 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65974C(0, &qword_2A1857E38, sub_29E653D10, sub_29E653EF8, MEMORY[0x29EDBC7E8]);
  v209 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v211 = &v186 - v15;
  sub_29E653D10();
  v210 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v186 = (&v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E653CC8(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v214 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v220 = &v186 - v23;
  sub_29E6545B8(0);
  v206 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v204 = &v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v205 = &v186 - v28;
  v207 = type metadata accessor for SleepScoreGallery(0);
  v29 = *(*(v207 - 8) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v207);
  v213 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v222 = &v186 - v32;
  v33 = sub_29E752FB8();
  v202 = *(v33 - 8);
  v203 = v33;
  v34 = *(v202 + 64);
  MEMORY[0x2A1C7C4A8](v33);
  v201 = &v186 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_29E754048();
  v36 = *(v192 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v192);
  v39 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_29E74ED28();
  v40 = *(v191 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x2A1C7C4A8](v191);
  v44 = (&v186 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v42);
  v46 = &v186 - v45;
  v190 = sub_29E74EE78();
  v47 = *(v190 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v190);
  v50 = &v186 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653C28();
  v197 = v51;
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v51);
  v199 = &v186 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65974C(0, &qword_2A1857D50, sub_29E653C28, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v54 - 8);
  v194 = &v186 - v56;
  sub_29E653B84();
  v193 = v57;
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v57);
  v198 = &v186 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653AF8(0);
  v196 = v60;
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x2A1C7C4A8](v60);
  v219 = &v186 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x2A1C7C4A8](v62);
  v195 = &v186 - v65;
  MEMORY[0x2A1C7C4A8](v64);
  v221 = &v186 - v66;
  sub_29E7544C8();
  v208 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = v223;
  sub_29E650AEC(v50);
  v68 = *v67;
  sub_29E67FDF0(v39);
  v200 = v68;
  sub_29E754038();
  (*(v36 + 8))(v39, v192);
  sub_29E74ECE8();
  v69 = sub_29E66B0E8(v46, v44);
  v71 = v70;
  v72 = *(v40 + 8);
  v73 = v44;
  v74 = v191;
  v72(v73, v191);
  v72(v46, v74);
  (*(v47 + 8))(v50, v190);
  *&v224 = v69;
  *(&v224 + 1) = v71;
  sub_29E60DE10();
  v75 = sub_29E753608();
  v77 = v76;
  v79 = v78;
  sub_29E7534A8();
  v80 = sub_29E7535D8();
  v82 = v81;
  v84 = v83;

  sub_29E60DB44(v75, v77, v79 & 1);

  sub_29E753458();
  v85 = sub_29E753598();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  sub_29E60DB44(v80, v82, v84 & 1);

  if (sub_29E650D34())
  {
    sub_29E753C48();
  }

  else
  {
    sub_29E753C58();
  }

  sub_29E752CA8();
  v92 = v89 & 1;
  v231 = v92;
  sub_29E753398();
  v93 = v223;
  sub_29E652C84();
  sub_29E7529C8();
  v245 = v94;
  v246 = v95;
  v247 = v96;
  v248 = v97;
  v249 = 0;
  v98 = v199;
  v99 = &v199[*(v197 + 36)];
  sub_29E753258();
  *v98 = v85;
  *(v98 + 8) = v87;
  *(v98 + 16) = v92;
  *(v98 + 24) = v91;
  v100 = v229;
  *(v98 + 96) = v228;
  *(v98 + 112) = v100;
  *(v98 + 128) = v230;
  v101 = v225;
  *(v98 + 32) = v224;
  *(v98 + 48) = v101;
  v102 = v227;
  *(v98 + 64) = v226;
  *(v98 + 80) = v102;
  v103 = v201;
  sub_29E752FA8();
  sub_29E654288(&qword_2A1857E48, sub_29E653C28, sub_29E65402C);
  v104 = v194;
  sub_29E753828();
  (*(v202 + 8))(v103, v203);
  sub_29E65AD40(v98, sub_29E653C28);
  LOBYTE(v98) = sub_29E7533C8();
  sub_29E7529C8();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v113 = v198;
  sub_29E658988(v104, v198);
  v114 = v113 + *(v193 + 36);
  *v114 = v98;
  *(v114 + 8) = v106;
  *(v114 + 16) = v108;
  *(v114 + 24) = v110;
  *(v114 + 32) = v112;
  *(v114 + 40) = 0;
  LOBYTE(v98) = sub_29E753398();
  sub_29E74F1A8();
  sub_29E7529C8();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = v113;
  v124 = v195;
  sub_29E658A30(v123, v195, sub_29E653B84);
  v125 = v124 + *(v196 + 36);
  *v125 = v98;
  *(v125 + 8) = v116;
  *(v125 + 16) = v118;
  *(v125 + 24) = v120;
  *(v125 + 32) = v122;
  *(v125 + 40) = 0;
  sub_29E658A30(v124, v221, sub_29E653AF8);

  LODWORD(v203) = sub_29E650D34();
  v202 = sub_29E650EB0();
  v199 = sub_29E65102C();
  sub_29E6511A8();
  v127 = v126;
  v128 = v93[2];
  v201 = v93[1];
  KeyPath = swift_getKeyPath();
  type metadata accessor for SleepScoreGalleryModelProvider();
  sub_29E65AFE8(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);

  v130 = v222;
  sub_29E753BD8();
  v131 = v207;
  v132 = *(v207 + 20);
  v133 = type metadata accessor for SleepScoreGallery.Sheet(0);
  v134 = v205;
  (*(*(v133 - 8) + 56))(v205, 1, 1, v133);
  sub_29E65AAB8(v134, v204, sub_29E6545B8);
  sub_29E7539F8();
  sub_29E65AD40(v134, sub_29E6545B8);
  v135 = v130 + v131[6];
  *v135 = KeyPath;
  *(v135 + 8) = 0;
  *(v130 + v131[7]) = v203 & 1;
  *(v130 + v131[8]) = v202;
  *(v130 + v131[9]) = v199;
  *(v130 + v131[10]) = v127;
  *(v130 + v131[11]) = 0x4034000000000000;
  v136 = (v130 + v131[12]);
  *v136 = v201;
  v136[1] = v128;
  if (sub_29E650D34())
  {
    v137 = sub_29E752EF8();
    v138 = v186;
    *v186 = v137;
    *(v138 + 8) = 0;
    *(v138 + 16) = 1;
    sub_29E65454C(0, &qword_2A1857E68, sub_29E653DA4);
    sub_29E652DCC(v93, (v138 + *(v139 + 44)));
    sub_29E658E00(v138, v211, sub_29E653D10);
    swift_storeEnumTagMultiPayload();
    sub_29E65AFE8(&qword_2A1857E60, sub_29E653D10);
    sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
    v140 = v220;
    sub_29E753118();
    sub_29E65ACE0(v138, sub_29E653D10);
  }

  else
  {
    sub_29E659388(0, &qword_2A1857D60);
    sub_29E65402C();

    v141 = v188;
    sub_29E753A28();
    v142 = sub_29E7533A8();
    v242 = 0u;
    v243 = 0u;
    v244 = 1;
    sub_29E653F88(0);
    v144 = v141 + *(v143 + 36);
    *v144 = v142;
    *(v144 + 8) = 0u;
    *(v144 + 24) = 0u;
    *(v144 + 40) = 1;
    sub_29E74F198();
    v146 = v145;
    v147 = (v141 + *(v187 + 36));
    v148 = *(sub_29E752C98() + 20);
    v149 = *MEMORY[0x29EDBC6F8];
    v150 = sub_29E752F78();
    (*(*(v150 - 8) + 104))(&v147[v148], v149, v150);
    *v147 = v146;
    *(v147 + 1) = v146;
    v151 = [objc_opt_self() systemGray5Color];
    v152 = sub_29E7538E8();
    v153 = swift_getKeyPath();
    sub_29E65974C(0, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
    v155 = &v147[*(v154 + 36)];
    *v155 = v153;
    v155[1] = v152;
    v156 = sub_29E753C48();
    v158 = v157;
    sub_29E6540BC();
    v160 = &v147[*(v159 + 36)];
    *v160 = v156;
    v160[1] = v158;
    sub_29E65A614(0, &qword_2A1857E58, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F40;
    LOBYTE(v156) = sub_29E753398();
    *(inited + 32) = v156;
    v162 = sub_29E7533B8();
    *(inited + 33) = v162;
    sub_29E7533D8();
    sub_29E7533D8();
    v163 = sub_29E7533D8();
    v164 = v220;
    if (v163 != v156)
    {
      sub_29E7533D8();
    }

    sub_29E7533D8();
    if (sub_29E7533D8() != v162)
    {
      sub_29E7533D8();
    }

    v165 = v189;
    v166 = &v189[*(v212 + 36)];
    sub_29E753258();
    sub_29E658A30(v141, v165, sub_29E653F40);
    sub_29E65AAB8(v165, v211, sub_29E653EF8);
    swift_storeEnumTagMultiPayload();
    sub_29E65AFE8(&qword_2A1857E60, sub_29E653D10);
    sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
    v140 = v164;
    sub_29E753118();
    sub_29E65AD40(v165, sub_29E653EF8);
  }

  sub_29E753398();
  sub_29E652C84();
  sub_29E7529C8();
  v237 = v167;
  v238 = v168;
  v239 = v169;
  v240 = v170;
  v241 = 0;
  v171 = v216;
  sub_29E753258();
  sub_29E7533F8();
  sub_29E7529C8();
  v232 = v172;
  v233 = v173;
  v234 = v174;
  v235 = v175;
  v236 = 0;
  v176 = v171 + *(v215 + 36);
  sub_29E753258();
  v177 = v219;
  sub_29E65AAB8(v221, v219, sub_29E653AF8);
  v178 = v213;
  sub_29E65AAB8(v222, v213, type metadata accessor for SleepScoreGallery);
  v179 = v214;
  sub_29E658E00(v140, v214, sub_29E653CC8);
  v180 = v218;
  sub_29E65AAB8(v171, v218, sub_29E65449C);
  v181 = v177;
  v182 = v217;
  sub_29E65AAB8(v181, v217, sub_29E653AF8);
  sub_29E653A64();
  v184 = v183;
  sub_29E65AAB8(v178, v182 + *(v183 + 48), type metadata accessor for SleepScoreGallery);
  sub_29E658E00(v179, v182 + *(v184 + 64), sub_29E653CC8);
  sub_29E65AAB8(v180, v182 + *(v184 + 80), sub_29E65449C);
  sub_29E65AD40(v171, sub_29E65449C);
  sub_29E65ACE0(v220, sub_29E653CC8);
  sub_29E65AD40(v222, type metadata accessor for SleepScoreGallery);
  sub_29E65AD40(v221, sub_29E653AF8);
  sub_29E65AD40(v180, sub_29E65449C);
  sub_29E65ACE0(v179, sub_29E653CC8);
  sub_29E65AD40(v178, type metadata accessor for SleepScoreGallery);
  sub_29E65AD40(v219, sub_29E653AF8);
}

double sub_29E652C84()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {
    v7 = *(v0 + 24);

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v7, 0);
    (*(v2 + 8))(v5, v1);
  }

  sub_29E754A18();
  return v9;
}

uint64_t sub_29E652DCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  sub_29E653F40(0);
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653EF8(0);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653E44();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x2A1C7C4A8](v13);
  v56 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v54 = &v53 - v19;
  sub_29E7544C8();
  v55 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *a1;
  sub_29E659388(0, &qword_2A1857D60);
  sub_29E65402C();

  sub_29E753A28();
  LOBYTE(v20) = sub_29E7533A8();
  v60 = 0u;
  v61 = 0u;
  v62 = 1;
  sub_29E653F88(0);
  v22 = &v7[*(v21 + 36)];
  *v22 = v20;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  sub_29E74F198();
  v24 = v23;
  v25 = &v7[*(v4 + 36)];
  v26 = *(sub_29E752C98() + 20);
  v27 = *MEMORY[0x29EDBC6F8];
  v28 = sub_29E752F78();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = v24;
  *(v25 + 1) = v24;
  v29 = [objc_opt_self() systemGray5Color];
  v30 = sub_29E7538E8();
  KeyPath = swift_getKeyPath();
  sub_29E65974C(0, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
  v33 = &v25[*(v32 + 36)];
  *v33 = KeyPath;
  v33[1] = v30;
  v34 = sub_29E753C48();
  v36 = v35;
  sub_29E6540BC();
  v38 = &v25[*(v37 + 36)];
  *v38 = v34;
  v38[1] = v36;
  sub_29E65A614(0, &qword_2A1857E58, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F40;
  LOBYTE(v34) = sub_29E753398();
  *(inited + 32) = v34;
  v40 = sub_29E7533B8();
  *(inited + 33) = v40;
  sub_29E7533D8();
  sub_29E7533D8();
  if (sub_29E7533D8() != v34)
  {
    sub_29E7533D8();
  }

  sub_29E7533D8();
  if (sub_29E7533D8() != v40)
  {
    sub_29E7533D8();
  }

  v41 = &v12[*(v9 + 36)];
  sub_29E753258();
  sub_29E658A30(v7, v12, sub_29E653F40);
  sub_29E753368();
  sub_29E650EB0();
  sub_29E65102C();
  sub_29E6511A8();
  sub_29E753C48();
  sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
  v42 = v54;
  sub_29E753838();
  sub_29E65AD40(v12, sub_29E653EF8);
  v59 = 1;
  v43 = v15[2];
  v44 = v56;
  v43(v56, v42, v14);
  v58 = 1;
  v45 = v59;
  v46 = v57;
  *v57 = 0;
  *(v46 + 8) = v45;
  sub_29E653DD8();
  v48 = v47;
  v43(v46 + *(v47 + 48), v44, v14);
  v49 = v46 + *(v48 + 64);
  v50 = v58;
  *v49 = 0;
  v49[8] = v50;
  v51 = v15[1];
  v51(v42, v14);
  v51(v44, v14);
}

uint64_t sub_29E6533D0(uint64_t a1)
{
  v2 = sub_29E754048();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74ED28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
  if (v13)
  {
    v14 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler + 8);

    sub_29E67FDF0(v6);
    sub_29E754038();
    (*(v3 + 8))(v6, v2);
    v13(v12);
    sub_29E6459B8(v13);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

__n128 sub_29E653598@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E754118();
  v7 = sub_29E65B0B4(v6);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v20 = v7;
  *(&v20 + 1) = v9;
  sub_29E60DE10();
  v10 = sub_29E753608();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  sub_29E753C48();
  sub_29E752CA8();

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  v16 = v25;
  *(a1 + 96) = v24;
  *(a1 + 112) = v16;
  *(a1 + 128) = v26;
  v17 = v21;
  *(a1 + 32) = v20;
  *(a1 + 48) = v17;
  result = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_29E6537B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_29E753C48();
  a1[1] = v2;
  sub_29E65454C(0, &qword_2A1857D00, sub_29E653824);
  return sub_29E651324((a1 + *(v3 + 44)));
}

void sub_29E653858()
{
  if (!qword_2A1857D10)
  {
    sub_29E659388(255, &qword_2A1856B50);
    sub_29E6538E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857D10);
    }
  }
}

void sub_29E653908()
{
  if (!qword_2A1857D20)
  {
    sub_29E65399C();
    sub_29E65AFE8(&qword_2A1857E28, sub_29E65399C);
    v0 = sub_29E7529F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857D20);
    }
  }
}

void sub_29E65399C()
{
  if (!qword_2A1857D28)
  {
    sub_29E653A30(255);
    sub_29E65AFE8(&qword_2A1857E20, sub_29E653A30);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857D28);
    }
  }
}

void sub_29E653A64()
{
  if (!qword_2A1857D38)
  {
    sub_29E653AF8(255);
    type metadata accessor for SleepScoreGallery(255);
    sub_29E653CC8(255);
    sub_29E65449C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1857D38);
    }
  }
}

void sub_29E653B20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E653B84()
{
  if (!qword_2A1857D48)
  {
    sub_29E65974C(255, &qword_2A1857D50, sub_29E653C28, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857D48);
    }
  }
}

void sub_29E653C28()
{
  if (!qword_2A1857D58)
  {
    sub_29E659388(255, &qword_2A1857D60);
    sub_29E753268();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857D58);
    }
  }
}

void sub_29E653D10()
{
  if (!qword_2A1857D70)
  {
    sub_29E653DA4(255);
    sub_29E65AFE8(&qword_2A1857E08, sub_29E653DA4);
    v0 = sub_29E753A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857D70);
    }
  }
}

void sub_29E653DD8()
{
  if (!qword_2A1857D80)
  {
    sub_29E653E44();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1857D80);
    }
  }
}

void sub_29E653E44()
{
  if (!qword_2A1857D88)
  {
    sub_29E653EF8(255);
    sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857D88);
    }
  }
}

void sub_29E653FB0()
{
  if (!qword_2A1857DA8)
  {
    sub_29E659388(255, &qword_2A1857D60);
    sub_29E65402C();
    v0 = sub_29E753A58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857DA8);
    }
  }
}

unint64_t sub_29E65402C()
{
  result = qword_2A1857DB0;
  if (!qword_2A1857DB0)
  {
    sub_29E659388(255, &qword_2A1857D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DB0);
  }

  return result;
}

void sub_29E6540BC()
{
  if (!qword_2A1857DB8)
  {
    sub_29E65974C(255, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
    sub_29E654164();
    v0 = sub_29E753108();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857DB8);
    }
  }
}

unint64_t sub_29E654164()
{
  result = qword_2A1857DC8;
  if (!qword_2A1857DC8)
  {
    sub_29E65974C(255, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
    sub_29E65AFE8(&qword_2A1857DD0, MEMORY[0x29EDBC5C0]);
    sub_29E65AFE8(&qword_2A18573F0, sub_29E629454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DC8);
  }

  return result;
}

uint64_t sub_29E654288(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_29E65AFE8(&qword_2A1857E00, MEMORY[0x29EDBC8C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E65433C()
{
  result = qword_2A1857DE0;
  if (!qword_2A1857DE0)
  {
    sub_29E653F40(255);
    sub_29E6543EC();
    sub_29E65AFE8(&qword_2A1857DF8, sub_29E6540BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DE0);
  }

  return result;
}

unint64_t sub_29E6543EC()
{
  result = qword_2A1857DE8;
  if (!qword_2A1857DE8)
  {
    sub_29E653F88(255);
    sub_29E65AFE8(&qword_2A1857DF0, sub_29E653FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DE8);
  }

  return result;
}

void sub_29E6544E4()
{
  if (!qword_2A1857E18)
  {
    sub_29E753268();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857E18);
    }
  }
}

void sub_29E65454C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E65460C()
{
  v1 = sub_29E754048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepScoreGallery.Sheet(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AAB8(v0, v9, type metadata accessor for SleepScoreGallery.Sheet);
  (*(v2 + 32))(v5, v9, v1);
  v14 = 0x65726F4D776F6873;
  v15 = 0xE90000000000005FLL;
  v13[1] = sub_29E753FF8();
  v10 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v10);

  v11 = v14;
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_29E6547B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E65460C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E6547DC@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v2 = type metadata accessor for SleepScoreGallery(0);
  v87 = *(v2 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v117 = v4;
  v107 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65944C(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v116 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29E7532A8();
  v105 = *(v106 - 8);
  v8 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v106);
  v104 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v96 = v10;
  v95 = *(v10 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v94 = v86 - v12;
  v13 = sub_29E753318();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v86[1] = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29E753348();
  v91 = *(v93 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v93);
  v111 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_29E7531E8();
  v110 = *(v112 - 1);
  v18 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v112);
  v20 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659480();
  v22 = v21;
  v109 = *(v21 - 1);
  v23 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659F34();
  v89 = v26;
  v88 = *(v26 - 1);
  v27 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659FE8();
  v114 = v30;
  v92 = *(v30 - 1);
  v31 = *(v92 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v90 = v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65A0EC();
  v98 = v33;
  v97 = *(v33 - 1);
  v34 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v33);
  v113 = (v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E65A23C();
  v101 = v36;
  v99 = *(v36 - 1);
  v37 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v36);
  v115 = v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65A3BC();
  v103 = v39;
  v102 = *(v39 - 8);
  v40 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v100 = v86 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E753368();
  v119 = v1;
  sub_29E659554();
  sub_29E659608();
  v43 = v42;
  v44 = sub_29E65AFE8(&qword_2A1857F60, sub_29E659608);
  v120 = v43;
  v121 = v44;
  swift_getOpaqueTypeConformance2();
  sub_29E752A08();
  v45 = sub_29E753398();
  v46 = *(v1 + *(v2 + 44));
  sub_29E7531D8();
  v47 = sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
  MEMORY[0x29ED96090](v45, v46, 0, v20, v22, v47);
  (*(v110 + 8))(v20, v112);
  result = (*(v109 + 8))(v25, v22);
  v112 = v2;
  v49 = *(v2 + 28);
  v118 = v1;
  if (*(v1 + v49) != 1)
  {
    sub_29E753308();
    v50 = v111;
    sub_29E753328();
    goto LABEL_6;
  }

  v50 = v111;
  v51 = *(v118 + v112[8]);
  v52 = *(v118 + v112[9]);
  if (__OFSUB__(v51, v52))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(v52, (v51 - v52) / 2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_29E753338();
LABEL_6:
  v120 = v22;
  v121 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = MEMORY[0x29EDBC0B0];
  v55 = v90;
  v56 = v89;
  v57 = v93;
  sub_29E753818();
  (*(v91 + 8))(v50, v57);
  (*(v88 + 8))(v29, v56);
  v58 = v94;
  v59 = v96;
  sub_29E753BC8();
  swift_getKeyPath();
  sub_29E753BE8();

  (*(v95 + 8))(v58, v59);
  v126 = v130;
  v127 = v131;
  v128 = v132;
  v129 = v133;
  sub_29E753C98();
  v120 = v56;
  v121 = v57;
  v122 = OpaqueTypeConformance2;
  v123 = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = MEMORY[0x29EDC9BA8];
  v62 = MEMORY[0x29EDC9BB8];
  v63 = v114;
  sub_29E753798();

  (*(v92 + 8))(v55, v63);
  v64 = v104;
  sub_29E753298();
  sub_29E65A614(0, &qword_2A1857FA0, MEMORY[0x29EDBC968], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F40;
  v66 = sub_29E753388();
  *(inited + 32) = v66;
  v67 = sub_29E753368();
  *(inited + 33) = v67;
  sub_29E753378();
  sub_29E753378();
  if (sub_29E753378() != v66)
  {
    sub_29E753378();
  }

  sub_29E753378();
  if (sub_29E753378() != v67)
  {
    sub_29E753378();
  }

  v68 = v87;
  v120 = v114;
  v121 = v61;
  v122 = v60;
  v123 = v62;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v98;
  v71 = v113;
  sub_29E7537D8();
  (*(v105 + 8))(v64, v106);
  (*(v97 + 8))(v71, v70);
  v72 = v112[5];
  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  v73 = v118;
  sub_29E753A18();
  v114 = type metadata accessor for SleepScoreGallery;
  v74 = v73;
  v75 = v107;
  sub_29E65AAB8(v74, v107, type metadata accessor for SleepScoreGallery);
  v76 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v77 = swift_allocObject();
  v113 = type metadata accessor for SleepScoreGallery;
  sub_29E658A30(v75, v77 + v76, type metadata accessor for SleepScoreGallery);
  v110 = type metadata accessor for SleepScoreGallery.Sheet(0);
  v78 = type metadata accessor for FullScreenSleepScoreCard();
  v120 = v70;
  v121 = v69;
  v111 = swift_getOpaqueTypeConformance2();
  v112 = sub_29E65AFE8(&qword_2A1857F98, type metadata accessor for SleepScoreGallery.Sheet);
  v85 = sub_29E65AFE8(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard);
  v79 = v100;
  v80 = v116;
  v81 = v101;
  v82 = v115;
  sub_29E753878();

  sub_29E65AD40(v80, sub_29E65944C);
  (*(v99 + 8))(v82, v81);
  sub_29E65AAB8(v118, v75, v114);
  v83 = swift_allocObject();
  sub_29E658A30(v75, v83 + v76, v113);
  v120 = v81;
  v121 = v110;
  v122 = v78;
  v123 = v111;
  v124 = v112;
  v125 = v85;
  swift_getOpaqueTypeConformance2();
  v84 = v103;
  sub_29E753618();

  return (*(v102 + 8))(v79, v84);
}

uint64_t sub_29E655758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[2] = a2;
  v3 = sub_29E7531A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E659608();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v14[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = type metadata accessor for SleepScoreGallery(0);
  v12 = *(a1 + *(v11 + 40));
  MEMORY[0x2A1C7C4A8](v11);
  v14[-2] = a1;
  sub_29E752EF8();
  v15 = 0;
  sub_29E65AFE8(&qword_2A1857FA8, MEMORY[0x29EDBC828]);
  sub_29E755168();
  sub_29E65966C();
  sub_29E659CC4();
  sub_29E7529D8();
  sub_29E65AFE8(&qword_2A1857F60, sub_29E659608);
  sub_29E7537E8();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_29E655A0C(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreGallery(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E64C90C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E655C78(v8);
  sub_29E65AAB8(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreGallery);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_29E658A30(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SleepScoreGallery);
  sub_29E659704(0);
  sub_29E659BC0();
  sub_29E659D3C();
  sub_29E65AFE8(&qword_2A1857FB0, MEMORY[0x29EDBA2F8]);
  sub_29E753B48();
}

uint64_t sub_29E655C78@<X0>(uint64_t a1@<X8>)
{
  sub_29E605ADC();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v41 - v9;
  v11 = sub_29E754048();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v41 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v47 = &v41 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v49 = &v41 - v21;
  sub_29E64C90C();
  v48 = v22;
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v28 = &v41 - v27;
  if (*(v1 + *(type metadata accessor for SleepScoreGallery(0) + 28)) == 1)
  {
    v41 = v10;
    v42 = v8;
    v43 = v4;
    v44 = a1;
    sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
    sub_29E753BB8();
    sub_29E65AAB8(v50 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v28, sub_29E64C90C);

    v45 = v12;
    v29 = *(v12 + 16);
    v29(v49, v28, v11);
    sub_29E65AD40(v28, sub_29E64C90C);
    sub_29E753BB8();
    sub_29E65AAB8(v50 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v26, sub_29E64C90C);

    v29(v18, &v26[*(v48 + 36)], v11);
    v30 = v45;
    sub_29E65AD40(v26, sub_29E64C90C);
    v31 = v46;
    sub_29E753FC8();
    v32 = v47;
    sub_29E753FD8();
    v33 = *(v30 + 8);
    v33(v31, v11);
    v33(v18, v11);
    sub_29E65AFE8(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
    result = sub_29E7540E8();
    if (result)
    {
      v35 = *(v30 + 32);
      v36 = v41;
      v35(v41, v49, v11);
      v37 = v43;
      v35((v36 + *(v43 + 48)), v32, v11);
      v38 = v42;
      sub_29E65AAB8(v36, v42, sub_29E605ADC);
      v39 = *(v37 + 48);
      v40 = v44;
      v35(v44, v38, v11);
      v33((v38 + v39), v11);
      sub_29E658A30(v36, v38, sub_29E605ADC);
      v35((v40 + *(v48 + 36)), (v38 + *(v37 + 48)), v11);
      return (v33)(v38, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
    sub_29E753BB8();
    sub_29E65AAB8(v50 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, a1, sub_29E64C90C);
  }

  return result;
}

uint64_t sub_29E6561D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a3;
  v5 = sub_29E754188();
  v128 = *(v5 - 8);
  v129 = v5;
  v6 = *(v128 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v127 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C();
  v116 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v115 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E754048();
  v134 = *(v11 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v103 = v13;
  v132 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for SleepScoreGallery(0);
  v108 = *(v110 - 8);
  v14 = *(v108 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v110);
  v109 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v97 - v16;
  v113 = type metadata accessor for SleepScoreGalleryCard();
  v18 = *(*(v113 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v113);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659A58();
  v117 = v21;
  v114 = *(v21 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v112 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65996C();
  v122 = v24;
  v119 = *(v24 - 8);
  v25 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v118 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6597D0();
  v123 = v27;
  v121 = *(v27 - 8);
  v28 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v120 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659704(0);
  v125 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v126 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA20(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v33 - 8);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v124 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v133 = v37;
  v38 = a2;
  v98 = a2;
  sub_29E753BB8();
  v39 = v36;
  v40 = v36;
  v111 = v36;
  v41 = a1;
  v131 = a1;
  sub_29E67EB70(a1, v40);

  v99 = v20;
  sub_29E65AAB8(v39, v20, sub_29E65AA20);
  v106 = type metadata accessor for SleepScoreGallery;
  sub_29E65AAB8(v38, v17, type metadata accessor for SleepScoreGallery);
  v107 = v17;
  v42 = v134;
  v43 = *(v134 + 16);
  v101 = v134 + 16;
  v102 = v43;
  v44 = v132;
  v43(v132, v41, v11);
  v45 = *(v108 + 80);
  v100 = v11;
  v46 = ((v45 + 16) & ~v45) + v14;
  v47 = (v45 + 16) & ~v45;
  v48 = v45 | 7;
  v49 = *(v42 + 80);
  v108 = v46;
  v50 = (v46 + v49) & ~v49;
  v105 = v48;
  v51 = swift_allocObject();
  v104 = v47;
  v103 = type metadata accessor for SleepScoreGallery;
  sub_29E658A30(v17, v51 + v47, type metadata accessor for SleepScoreGallery);
  (*(v42 + 32))(v51 + v50, v44, v11);
  v52 = v98;
  v53 = v109;
  sub_29E65AAB8(v98, v109, type metadata accessor for SleepScoreGallery);
  v54 = swift_allocObject();
  sub_29E658A30(v53, v54 + v47, type metadata accessor for SleepScoreGallery);
  KeyPath = swift_getKeyPath();
  v56 = v113;
  v57 = v99;
  v58 = &v99[*(v113 + 20)];
  *v58 = sub_29E65AB20;
  v58[1] = v51;
  v59 = (v57 + *(v56 + 24));
  *v59 = sub_29E65ABEC;
  v59[1] = v54;
  v60 = v57 + *(v56 + 28);
  *v60 = KeyPath;
  *(v60 + 8) = 0;
  sub_29E753368();
  v61 = v110;
  v62 = *(v52 + *(v110 + 32));
  sub_29E6570D0();
  v63 = *(v52 + *(v61 + 40));
  sub_29E753C48();
  v64 = sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard);
  v65 = v112;
  v66 = v64;
  sub_29E753838();
  sub_29E65AD40(v57, type metadata accessor for SleepScoreGalleryCard);
  v67 = v52;
  sub_29E753BB8();
  v68 = v115;
  sub_29E65AAB8(v135 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v115, sub_29E64C90C);

  v69 = v132;
  v70 = v100;
  v102(v132, v68 + *(v116 + 36), v100);
  sub_29E65AD40(v68, sub_29E64C90C);
  sub_29E65AFE8(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
  sub_29E7540D8();
  (*(v134 + 8))(v69, v70);
  v135 = v56;
  v136 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v118;
  v73 = v117;
  sub_29E753638();
  (*(v114 + 8))(v65, v73);
  v74 = v107;
  sub_29E65AAB8(v67, v107, v106);
  v75 = swift_allocObject();
  sub_29E658A30(v74, v75 + v104, v103);
  sub_29E659B0C();
  v77 = v76;
  v135 = v73;
  v136 = OpaqueTypeConformance2;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_29E752CC8();
  v80 = sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620]);
  v135 = v79;
  v136 = v80;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v120;
  v83 = v122;
  MEMORY[0x29ED96060](sub_29E65AC58, v75, v122, v77, v78, v81);

  (*(v119 + 8))(v72, v83);
  sub_29E753FF8();
  sub_29E753BB8();
  v84 = v135;
  swift_getKeyPath();
  v135 = v84;
  sub_29E65AFE8(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider);
  sub_29E74EF08();

  v85 = *(v84 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID);
  LODWORD(v65) = *(v84 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID + 8);

  v135 = v83;
  v136 = v77;
  v137 = v78;
  v138 = v81;
  swift_getOpaqueTypeConformance2();
  v86 = v126;
  v87 = v123;
  sub_29E7537F8();
  (*(v121 + 8))(v82, v87);
  v88 = v127;
  sub_29E754118();
  v89 = sub_29E65B0B4(v88);
  v91 = v90;
  (*(v128 + 8))(v88, v129);
  v135 = v89;
  v136 = v91;
  sub_29E60DE10();
  v92 = sub_29E753608();
  v94 = v93;
  LOBYTE(v81) = v95;
  sub_29E752C08();
  sub_29E60DB44(v92, v94, v81 & 1);

  sub_29E65ACE0(v86, sub_29E659704);
  sub_29E65AD40(v111, sub_29E65AA20);
}

uint64_t sub_29E656F30(uint64_t a1, uint64_t a2)
{
  sub_29E6545B8(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - v8;
  v10 = sub_29E754048();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  v11 = type metadata accessor for SleepScoreGallery.Sheet(0);
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  LODWORD(a2) = *(type metadata accessor for SleepScoreGallery(0) + 20);
  sub_29E65AAB8(v9, v7, sub_29E6545B8);
  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  sub_29E753A08();
  return sub_29E65AD40(v9, sub_29E6545B8);
}

uint64_t sub_29E6570D0()
{
  v1 = v0;
  v2 = sub_29E754048();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepScoreGallery(0);
  if (*(v0 + v12[7]) != 1)
  {
    return *(v1 + v12[9]);
  }

  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  sub_29E65AAB8(v19[1] + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v11, sub_29E64C90C);

  (*(v3 + 16))(v6, &v11[*(v8 + 36)], v2);
  sub_29E65AD40(v11, sub_29E64C90C);
  sub_29E65AFE8(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
  v13 = sub_29E7540D8();
  result = (*(v3 + 8))(v6, v2);
  if ((v13 & 1) == 0)
  {
    return *(v1 + v12[9]);
  }

  v15 = *(v1 + v12[8]);
  v16 = *(v1 + v12[9]);
  v17 = __OFSUB__(v15, v16);
  v18 = v15 - v16;
  if (!v17)
  {
    return v18 / 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E657350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29E753138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1.0;
  if (*(a3 + *(type metadata accessor for SleepScoreGallery(0) + 28)) == 1)
  {
    sub_29E753248();
    sub_29E752AF8();
    v10 = *(v5 + 8);
    v10(v8, v4);
    if ((v33 & 1) == 0)
    {
      v12 = *&v32[3];
      v11 = *&v32[4];
      v14 = *&v32[1];
      v13 = *&v32[2];
      sub_29E753248();
      sub_29E752AE8();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v10(v8, v4);
      v34.origin.x = v16;
      v34.origin.y = v18;
      v34.size.width = v20;
      v34.size.height = v22;
      MidX = CGRectGetMidX(v34);
      v35.origin.x = v14;
      v35.origin.y = v13;
      v35.size.width = v12;
      v35.size.height = v11;
      v24 = fabs(MidX + CGRectGetWidth(v35) * -0.5);
      v36.origin.x = v14;
      v36.origin.y = v13;
      v36.size.width = v12;
      v36.size.height = v11;
      v9 = v24 / CGRectGetWidth(v36) * -0.4 + 1.0;
    }
  }

  sub_29E753C98();
  v26 = v25;
  v28 = v27;
  v29 = sub_29E752CC8();
  v30 = sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620]);
  return MEMORY[0x29ED953C0](v29, v30, v9, v26, v28);
}

uint64_t sub_29E6575A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E754048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScoreGallery.Sheet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E65AAB8(a1, v12, type metadata accessor for SleepScoreGallery.Sheet);
  (*(v5 + 32))(v8, v12, v4);
  (*(v5 + 16))(a2, v8, v4);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  (*(v5 + 8))(v8, v4);
  v13 = v20[1];
  v14 = type metadata accessor for FullScreenSleepScoreCard();
  *(a2 + v14[5]) = v13;
  v15 = v14[6];
  *(a2 + v15) = swift_getKeyPath();
  v16 = MEMORY[0x29EDBC388];
  sub_29E65AA54(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v17 = v14[7];
  *(a2 + v17) = swift_getKeyPath();
  sub_29E65AA54(0, &qword_2A1856978, MEMORY[0x29EDBBED0], v16);
  swift_storeEnumTagMultiPayload();
  v18 = v14[8];
  *(a2 + v18) = swift_getKeyPath();
  sub_29E65AA54(0, &qword_2A1856980, MEMORY[0x29EDBC370], v16);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E6578DC(uint64_t a1)
{
  result = type metadata accessor for SleepScoreGallery(0);
  if (*(a1 + *(result + 28)) == 1)
  {
    return sub_29E657918();
  }

  return result;
}

uint64_t sub_29E657918()
{
  v1 = sub_29E753CF8();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E753D18();
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepScoreGallery(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E754048();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  sub_29E655C78(v17);
  (*(v9 + 16))(v12, &v17[*(v14 + 44)], v8);
  sub_29E65AD40(v17, sub_29E64C90C);
  v18 = sub_29E753FF8();
  (*(v9 + 8))(v12, v8);
  result = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    sub_29E67F3A0(result, 0);

    sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
    v20 = sub_29E754908();
    sub_29E65AAB8(v0, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreGallery);
    v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v22 = swift_allocObject();
    sub_29E658A30(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for SleepScoreGallery);
    aBlock[4] = sub_29E65A894;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A24FF5E0;
    v23 = _Block_copy(aBlock);
    v24 = v28;
    sub_29E753D08();
    v34 = MEMORY[0x29EDCA190];
    sub_29E65AFE8(&qword_2A18569F8, MEMORY[0x29EDCA248]);
    sub_29E65A938(0);
    sub_29E65AFE8(&qword_2A1856A00, sub_29E65A938);
    v25 = v30;
    v26 = v33;
    sub_29E754C58();
    MEMORY[0x29ED97230](0, v24, v25, v23);
    _Block_release(v23);

    (*(v32 + 8))(v25, v26);
    (*(v29 + 8))(v24, v31);
  }

  return result;
}

uint64_t sub_29E657E60()
{
  v0 = sub_29E754048();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C();
  v6 = v5;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  sub_29E655C78(v9);
  (*(v1 + 16))(v4, &v9[*(v6 + 36)], v0);
  sub_29E65AD40(v9, sub_29E64C90C);
  v10 = sub_29E753FF8();
  (*(v1 + 8))(v4, v0);
  result = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    sub_29E67F3A0(result, 0);
  }

  return result;
}

uint64_t sub_29E6580A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E754118();
  v7 = sub_29E65B0B4(v6);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = sub_29E753398();
  sub_29E74F1A8();
  sub_29E7529C8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v33) = 0;
  v19 = [objc_opt_self() displayTypeWithIdentifier_];
  if (v19 && (v20 = v19, v21 = [v19 localization], v20, v22 = objc_msgSend(v21, sel_summary), v21, v22))
  {
    v23 = sub_29E7541D8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  *&v30 = v7;
  *(&v30 + 1) = v9;
  LOBYTE(v31) = v10;
  *(&v31 + 1) = *v44;
  DWORD1(v31) = *&v44[3];
  *(&v31 + 1) = v12;
  *v32 = v14;
  *&v32[8] = v16;
  *&v32[16] = v18;
  v32[24] = 0;
  *&v35[9] = *&v32[9];
  v34 = v31;
  *v35 = *v32;
  v33 = v30;
  v26 = v30;
  v27 = v31;
  v28 = *&v35[16];
  *(a1 + 32) = *v32;
  *(a1 + 48) = v28;
  *a1 = v26;
  *(a1 + 16) = v27;
  *(a1 + 64) = v23;
  *(a1 + 72) = v25;
  sub_29E658E68(&v30, v36, &qword_2A1857EC8, &type metadata for SleepScoreDescriptionHeader, MEMORY[0x29EDBC498], sub_29E659388);
  v36[0] = v7;
  v36[1] = v9;
  v37 = v10;
  *v38 = *v44;
  *&v38[3] = *&v44[3];
  v39 = v12;
  v40 = v14;
  v41 = v16;
  v42 = v18;
  v43 = 0;
  sub_29E6593D8(v36);
}

double sub_29E6583D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E752FF8();
  v14 = 0;
  sub_29E6580A8(&v8);
  v17 = v10;
  v18 = v11;
  v15 = v8;
  v16 = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[1] = v9;
  v19 = v12;
  v20[0] = v8;
  sub_29E65AAB8(&v15, &v7, sub_29E6592D4);
  sub_29E65AD40(v20, sub_29E6592D4);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v13[64];
  result = *v13;
  v5 = *&v13[16];
  *(a1 + 17) = *v13;
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 96) = *&v13[79];
  *(a1 + 33) = v5;
  return result;
}

id sub_29E6584CC()
{
  v0 = sub_29E752258();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E7518A8();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  sub_29E7521F8();
  v3 = sub_29E750458();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29E750438();
  sub_29E65AFE8(&qword_2A1857FF0, MEMORY[0x29EDC1C30]);
  sub_29E751898();
  v6 = objc_opt_self();
  v7 = v2;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  return v7;
}

id sub_29E65866C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_29E6584CC();
}

uint64_t sub_29E658674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65B030();

  return MEMORY[0x2A1C5CF40](a1, a2, a3, v6);
}

uint64_t sub_29E6586D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65B030();

  return MEMORY[0x2A1C5CF08](a1, a2, a3, v6);
}

void sub_29E65873C()
{
  sub_29E65B030();
  sub_29E7530D8();
  __break(1u);
}

id sub_29E658764()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E751518();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v4 = [v3 init];
  v6[3] = sub_29E7514F8();
  v6[4] = sub_29E65AFE8(&qword_2A1857FE0, MEMORY[0x29EDC27D8]);
  sub_29E5FEBF4(v6);
  sub_29E7514E8();
  sub_29E751508();
  return v4;
}

double sub_29E658848(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = INFINITY;
  if (a2)
  {
    *&a1 = INFINITY;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_29E658898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65AF94();

  return MEMORY[0x2A1C5CF40](a1, a2, a3, v6);
}

uint64_t sub_29E6588FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65AF94();

  return MEMORY[0x2A1C5CF08](a1, a2, a3, v6);
}

void sub_29E658960()
{
  sub_29E65AF94();
  sub_29E7530D8();
  __break(1u);
}

uint64_t sub_29E658988(uint64_t a1, uint64_t a2)
{
  sub_29E65974C(0, &qword_2A1857D50, sub_29E653C28, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E658A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E658B68@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v24 = a4;
  v9 = sub_29E752EB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDBC388];
  sub_29E65AA54(0, a1, a2, MEMORY[0x29EDBC388]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = (&v23 - v17);
  sub_29E658E68(v8, &v23 - v17, a1, a2, v14, sub_29E65AA54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(v24, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_29E7546B8();
    v22 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_29E658DA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752DC8();
  *a1 = result;
  return result;
}

uint64_t sub_29E658DD4(uint64_t *a1)
{
  v1 = *a1;

  return sub_29E752DD8();
}

uint64_t sub_29E658E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E658E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E658EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E754048();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E658F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E754048();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_29E658FC4(uint64_t a1)
{
  result = sub_29E754048();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_29E6590A0()
{
  sub_29E65AA54(319, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29E65AA54(319, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
    if (v1 <= 0x3F)
    {
      sub_29E65AA54(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        sub_29E650A80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29E659208()
{
  if (!qword_2A1857EA8)
  {
    sub_29E653824(255);
    sub_29E65AFE8(&qword_2A1857EB0, sub_29E653824);
    v0 = sub_29E753AB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857EA8);
    }
  }
}

void sub_29E659308()
{
  if (!qword_2A1857EC0)
  {
    sub_29E659388(255, &qword_2A1857EC8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857EC0);
    }
  }
}

void sub_29E659388(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E752C28();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E6593D8(uint64_t a1)
{
  sub_29E659388(0, &qword_2A1857EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E659480()
{
  if (!qword_2A1857ED8)
  {
    sub_29E659554();
    sub_29E659608();
    sub_29E65AFE8(&qword_2A1857F60, sub_29E659608);
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E7529F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857ED8);
    }
  }
}

void sub_29E659554()
{
  if (!qword_2A1857EE0)
  {
    sub_29E659608();
    sub_29E65AFE8(&qword_2A1857F60, sub_29E659608);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857EE0);
    }
  }
}

void sub_29E659608()
{
  if (!qword_2A1857EE8)
  {
    sub_29E65966C();
    sub_29E659CC4();
    v0 = sub_29E7529E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857EE8);
    }
  }
}

void sub_29E65966C()
{
  if (!qword_2A1857EF0)
  {
    sub_29E64C90C();
    sub_29E659704(255);
    sub_29E659BC0();
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857EF0);
    }
  }
}

void sub_29E65974C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E6597D0()
{
  if (!qword_2A1857F00)
  {
    sub_29E65996C();
    sub_29E659B0C();
    sub_29E659A58();
    type metadata accessor for SleepScoreGalleryCard();
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E752CC8();
    sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F00);
    }
  }
}

void sub_29E65996C()
{
  if (!qword_2A1857F08)
  {
    sub_29E659A58();
    type metadata accessor for SleepScoreGalleryCard();
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F08);
    }
  }
}

void sub_29E659A58()
{
  if (!qword_2A1857F10)
  {
    type metadata accessor for SleepScoreGalleryCard();
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F10);
    }
  }
}

void sub_29E659B0C()
{
  if (!qword_2A1857F20)
  {
    sub_29E752CC8();
    sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F20);
    }
  }
}

unint64_t sub_29E659BC0()
{
  result = qword_2A1857F30;
  if (!qword_2A1857F30)
  {
    sub_29E64C90C();
    sub_29E65AFE8(&qword_2A1857F38, MEMORY[0x29EDBA2F8]);
    sub_29E659C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F30);
  }

  return result;
}

unint64_t sub_29E659C70()
{
  result = qword_2A1857F40;
  if (!qword_2A1857F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F40);
  }

  return result;
}

unint64_t sub_29E659CC4()
{
  result = qword_2A1857F48;
  if (!qword_2A1857F48)
  {
    sub_29E65966C();
    sub_29E659D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F48);
  }

  return result;
}

unint64_t sub_29E659D3C()
{
  result = qword_2A1857F50;
  if (!qword_2A1857F50)
  {
    sub_29E659704(255);
    sub_29E65996C();
    sub_29E659B0C();
    sub_29E659A58();
    type metadata accessor for SleepScoreGalleryCard();
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E752CC8();
    sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E65AFE8(&qword_2A1857F58, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F50);
  }

  return result;
}

void sub_29E659F34()
{
  if (!qword_2A1857F68)
  {
    sub_29E659480();
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F68);
    }
  }
}

void sub_29E659FE8()
{
  if (!qword_2A1857F78)
  {
    sub_29E659F34();
    sub_29E753348();
    sub_29E659480();
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F78);
    }
  }
}

void sub_29E65A0EC()
{
  if (!qword_2A1857F80)
  {
    sub_29E659FE8();
    sub_29E659F34();
    sub_29E753348();
    sub_29E659480();
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F80);
    }
  }
}

void sub_29E65A23C()
{
  if (!qword_2A1857F88)
  {
    sub_29E65A0EC();
    sub_29E659FE8();
    sub_29E659F34();
    sub_29E753348();
    sub_29E659480();
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F88);
    }
  }
}

void sub_29E65A3BC()
{
  if (!qword_2A1857F90)
  {
    sub_29E65A23C();
    type metadata accessor for SleepScoreGallery.Sheet(255);
    type metadata accessor for FullScreenSleepScoreCard();
    sub_29E65A0EC();
    sub_29E659FE8();
    sub_29E659F34();
    sub_29E753348();
    sub_29E659480();
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E65AFE8(&qword_2A1857F98, type metadata accessor for SleepScoreGallery.Sheet);
    sub_29E65AFE8(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F90);
    }
  }
}

void sub_29E65A614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E65A67C()
{
  v1 = type metadata accessor for SleepScoreGallery(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for SleepScoreGallery.Sheet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_29E754048();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  v11 = *(v7 + *(v10 + 28));

  sub_29E5FAF18(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v12 = *(v5 + v1[12] + 8);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E65A8AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_29E65A920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E65A98C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_29E65AA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E65AAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E65AB20()
{
  v1 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_29E754048() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_29E656F30(v0 + v2, v5);
}

uint64_t sub_29E65ABEC()
{
  v1 = type metadata accessor for SleepScoreGallery(0);
  v2 = v0 + *(v1 + 48) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_29E65AC58(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E657350(a1, a2, v6);
}

uint64_t sub_29E65ACE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E65AD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E65ADB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29E65ADF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E65AE44()
{
  if (!qword_2A1857FC0)
  {
    sub_29E6592D4(255);
    sub_29E65AFE8(&qword_2A1857FC8, sub_29E6592D4);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857FC0);
    }
  }
}

unint64_t sub_29E65AEE8()
{
  result = qword_2A1857FD0;
  if (!qword_2A1857FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FD0);
  }

  return result;
}

unint64_t sub_29E65AF40()
{
  result = qword_2A1857FD8;
  if (!qword_2A1857FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FD8);
  }

  return result;
}

unint64_t sub_29E65AF94()
{
  result = qword_2A1857FE8;
  if (!qword_2A1857FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FE8);
  }

  return result;
}

uint64_t sub_29E65AFE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E65B030()
{
  result = qword_2A1857FF8;
  if (!qword_2A1857FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FF8);
  }

  return result;
}

uint64_t sub_29E65B0B4(uint64_t a1)
{
  v2 = sub_29E74EDA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = sub_29E754188();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_29E65B238();
  if (!sub_29E754B58())
  {
    v8 = [objc_opt_self() mainBundle];
  }

  sub_29E74ED98();
  return sub_29E7541E8();
}

unint64_t sub_29E65B238()
{
  result = qword_2A1858000;
  if (!qword_2A1858000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858000);
  }

  return result;
}

uint64_t sub_29E65B284(uint64_t a1, uint64_t a2)
{
  sub_29E650554(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E74E938();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29E754188();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  (*(v16 + 16))(&v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v9 + 16))(v12, a2, v8);
  sub_29E65B238();
  if (!sub_29E754B58())
  {
    v17 = [objc_opt_self() mainBundle];
  }

  v18 = sub_29E74EDA8();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  return sub_29E74E988();
}

id sub_29E65B4FC()
{
  type metadata accessor for SleepHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A7FA18 = result;
  return result;
}

uint64_t sub_29E65B5E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v80 = *v5;
  v10 = sub_29E754998();
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v74 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65EB58();
  v15 = *(v14 - 8);
  v78 = v14;
  v79 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v75 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65ED58(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v65 = v62 - v20;
  sub_29E65EC24();
  v22 = *(v21 - 8);
  v68 = v21;
  v69 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v66 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E74ED88();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_2A1858030) = 0;
  *(v5 + qword_2A1858038) = 0;
  *(v5 + qword_2A1858008) = a1;
  *(v5 + qword_2A1858010) = a3;
  *(v5 + qword_2A1858028) = a2;
  *(v5 + qword_2A1858018) = a4;
  v30 = objc_allocWithZone(sub_29E74F908());
  v31 = a1;
  v70 = v31;
  v73 = a3;
  v67 = a2;

  v32 = a4;
  v71 = v32;
  v33 = [v30 init];
  *(v5 + qword_2A1858020) = v33;
  v72 = v33;
  v34 = v80;
  sub_29E65BE1C(v31, v32, v72);
  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v82, "MutableArray<");
  HIWORD(v82[1]) = -4864;
  sub_29E74ED78();
  v35 = sub_29E74ED48();
  v37 = v36;
  (*(v26 + 8))(v29, v25);
  MEMORY[0x29ED96C20](v35, v37);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v38 = sub_29E750D08();
  v82[0] = a2;
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  swift_retain_n();
  v39 = sub_29E754908();
  v81 = v39;
  v40 = sub_29E7548D8();
  v41 = *(v40 - 8);
  v63 = *(v41 + 56);
  v64 = v41 + 56;
  v42 = v65;
  v63(v65, 1, 1, v40);
  sub_29E60990C();
  sub_29E65F124(&qword_2A18569F0, sub_29E60990C);
  v62[1] = sub_29E63FE6C();
  v43 = v66;
  sub_29E752968();
  sub_29E6214E8(v42);

  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v34;
  sub_29E65F124(&qword_2A1858068, sub_29E65EC24);
  v46 = v68;
  v47 = sub_29E7529A8();

  (*(v69 + 8))(v43, v46);
  v48 = *(v38 + qword_2A1858030);
  *(v38 + qword_2A1858030) = v47;

  v49 = [objc_opt_self() defaultCenter];
  v50 = *MEMORY[0x29EDC8010];
  v51 = v74;
  sub_29E7549A8();

  v52 = sub_29E754908();
  v82[0] = v52;
  v63(v42, 1, 1, v40);
  sub_29E65F124(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8]);
  v53 = v75;
  v54 = v76;
  sub_29E752968();
  sub_29E6214E8(v42);

  (*(v77 + 8))(v51, v54);
  v55 = swift_allocObject();
  swift_weakInit();

  v56 = swift_allocObject();
  v57 = v80;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  sub_29E65F124(&qword_2A1858070, sub_29E65EB58);
  v58 = v78;
  v59 = sub_29E7529A8();

  (*(v79 + 8))(v53, v58);
  v60 = *(v38 + qword_2A1858038);
  *(v38 + qword_2A1858038) = v59;

  return v38;
}

uint64_t sub_29E65BE1C(void *a1, void *a2, void *a3)
{
  v102 = a3;
  v94 = a2;
  v98 = a1;
  v113[1] = *MEMORY[0x29EDCA608];
  v3 = sub_29E750CA8();
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v106 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E74F698();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v99 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29E74EE78();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v95 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = sub_29E752098();
  v109 = *(v111 - 8);
  v12 = *(v109 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v111);
  v103 = &v89[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v13);
  v91 = &v89[-v15];
  v92 = sub_29E751FA8();
  v16 = *(v92 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v92);
  v19 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_29E751FE8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v89[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_29E74ED28();
  v104 = *(v25 - 8);
  v105 = v25;
  v26 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v110 = &v89[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E74ED18();
  sub_29E751FC8();
  sub_29E751F98();
  v28 = swift_slowAlloc();
  *v28 = 0;
  v29 = sub_29E751FD8();
  v30 = sub_29E754958();
  v31 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v29, v30, v31, "UpcomingResolvedScheduleOccurrenceQuery", "", v28, 2u);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = sub_29E74EC98();
  v113[0] = 0;
  v93 = [v98 upcomingResolvedScheduleOccurrenceAfterDate:v32 error:v113];

  v33 = v113[0];

  v34 = sub_29E754948();
  v35 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v29, v34, v35, "UpcomingResolvedScheduleOccurrenceQuery", "", v28, 2u);

  MEMORY[0x29ED98410](v28, -1, -1);
  (*(v16 + 8))(v19, v92);
  (*(v21 + 8))(v24, v20);
  v36 = v111;
  if (v33)
  {
    v37 = v33;
    v38 = v91;
    sub_29E752048();
    v39 = v37;
    v40 = sub_29E752088();
    v41 = sub_29E7546A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v113[0] = v43;
      *v42 = 136446466;
      v44 = sub_29E755178();
      v46 = sub_29E6B9C90(v44, v45, v113);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      v112 = v39;
      sub_29E609B5C(0, &qword_2A1858088, 0x29EDB9FA0);
      v47 = v39;
      v48 = sub_29E754208();
      v50 = sub_29E6B9C90(v48, v49, v113);

      *(v42 + 14) = v50;
      _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s] error loading upcoming schedule occurrence: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v43, -1, -1);
      MEMORY[0x29ED98410](v42, -1, -1);
    }

    else
    {
    }

    (*(v109 + 8))(v38, v36);
  }

  v98 = v33;
  sub_29E65ED58(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_29E762F40;
  v52 = v93;
  v92 = v93;
  v53 = [v94 currentCalendar];
  v54 = v95;
  sub_29E74EE28();

  v55 = *MEMORY[0x29EDC6AD0];
  v57 = v99;
  v56 = v100;
  v94 = *(v100 + 104);
  v58 = v101;
  (v94)(v99, v55, v101);
  v91 = sub_29E754258();
  v90 = v59;
  v100 = *(v56 + 8);
  (v100)(v57, v58);
  v60 = type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  *(v51 + 56) = v60;
  *(v51 + 64) = sub_29E65F124(&qword_2A1858078, type metadata accessor for UpcomingScheduleOccurrenceItem);
  v61 = sub_29E5FEBF4((v51 + 32));
  *v61 = v52;
  (*(v96 + 32))(v61 + v60[5], v54, v97);
  v62 = v102;
  *(v61 + v60[6]) = v102;
  v63 = (v61 + v60[7]);
  v64 = v90;
  *v63 = v91;
  v63[1] = v64;
  (v94)(v57, v55, v58);
  v65 = v92;
  v66 = v62;
  v67 = sub_29E754258();
  v69 = v68;
  (v100)(v57, v58);
  *(v51 + 96) = &type metadata for EditUpcomingScheduleOccurrenceItem;
  *(v51 + 104) = sub_29E65EDDC();
  *(v51 + 72) = v52;
  *(v51 + 80) = v67;
  *(v51 + 88) = v69;
  v70 = v103;
  sub_29E752048();

  v71 = sub_29E752088();
  v72 = sub_29E754698();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v113[0] = v74;
    *v73 = 136446467;
    v75 = sub_29E755178();
    v77 = sub_29E6B9C90(v75, v76, v113);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2081;
    v78 = sub_29E602F60();
    v79 = MEMORY[0x29ED96D20](v51, v78);
    v81 = sub_29E6B9C90(v79, v80, v113);

    *(v73 + 14) = v81;
    _os_log_impl(&dword_29E5ED000, v71, v72, "[%{public}s] Computed section items: %{private}s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v74, -1, -1);
    MEMORY[0x29ED98410](v73, -1, -1);
  }

  (*(v109 + 8))(v70, v111);
  sub_29E6CC108(v51);

  v82 = v106;
  sub_29E750C98();
  sub_29E65ED58(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v83 = v107;
  v84 = *(v107 + 72);
  v85 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_29E762F30;
  (*(v83 + 32))(v86 + v85, v82, v108);

  (*(v104 + 8))(v110, v105);
  v87 = *MEMORY[0x29EDCA608];
  return v86;
}

uint64_t sub_29E65C9C0()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E752048();
    v5 = sub_29E752088();
    v6 = sub_29E7546C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v0;
      v16 = v8;
      v9 = v8;
      *v7 = 136446210;
      v10 = sub_29E755178();
      v12 = sub_29E6B9C90(v10, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Responding to sleep schedule change", v7, 0xCu);
      sub_29E5FECBC(v9);
      MEMORY[0x29ED98410](v9, -1, -1);
      MEMORY[0x29ED98410](v7, -1, -1);

      (*(v1 + 8))(v4, v15);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
    }

    sub_29E65CE88();
  }
}

uint64_t sub_29E65CC24()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E752048();
    v5 = sub_29E752088();
    v6 = sub_29E7546C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v0;
      v16 = v8;
      v9 = v8;
      *v7 = 136446210;
      v10 = sub_29E755178();
      v12 = sub_29E6B9C90(v10, v11, &v16);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Responding to app did become active", v7, 0xCu);
      sub_29E5FECBC(v9);
      MEMORY[0x29ED98410](v9, -1, -1);
      MEMORY[0x29ED98410](v7, -1, -1);

      (*(v1 + 8))(v4, v15);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
    }

    sub_29E65CE88();
  }
}

uint64_t sub_29E65CE88()
{
  v1 = *v0;
  v2 = sub_29E751FF8();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E751FA8();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_29E751FE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E65BE1C(*(v0 + qword_2A1858008), *(v0 + qword_2A1858018), *(v0 + qword_2A1858020));
  sub_29E750D18();

  if (byte_2A1869420 == 1 && qword_2A1869428)
  {

    sub_29E751FB8();
    v16 = sub_29E751FD8();
    sub_29E752008();
    v22 = sub_29E754948();
    if (sub_29E754BC8())
    {

      sub_29E752038();

      v17 = v23;
      if ((*(v23 + 88))(v5, v2) == *MEMORY[0x29EDCA4A8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v2);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_29E751F88();
      _os_signpost_emit_with_name_impl(&dword_29E5ED000, v16, v22, v20, "SaveSingleDayOverride", v18, v19, 2u);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    (*(v24 + 8))(v9, v6);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_29E65D23C()
{
  v1 = *(v0 + qword_2A1858028);

  v2 = *(v0 + qword_2A1858030);

  v3 = *(v0 + qword_2A1858038);
}

uint64_t sub_29E65D2CC()
{
  v0 = sub_29E750D58();

  v1 = *(v0 + qword_2A1858028);

  v2 = *(v0 + qword_2A1858030);

  v3 = *(v0 + qword_2A1858038);

  return v0;
}

uint64_t sub_29E65D364()
{
  sub_29E65D2CC();

  return swift_deallocClassInstance();
}

uint64_t sub_29E65D39C()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  v5 = sub_29E750E68();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E65D4CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v4 = sub_29E750458();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_29E750438();
  a1[3] = v4;
  result = sub_29E65F124(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_29E65D658()
{
  v1 = *v0;
  sub_29E7544C8();
  v4 = v0;
  v5 = v1;
  return sub_29E607C50(sub_29E65E1E8, &v3);
}

uint64_t sub_29E65D6F4()
{
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v19 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v0;
    v10 = v9;
    v20 = v9;
    *v8 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v20);
    v17 = v1;
    v14 = v13;

    *(v8 + 4) = v14;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] Responding to sleep event occurring", v8, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);

    (*(v2 + 8))(v5, v17);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  sub_29E65CE88();
}

uint64_t sub_29E65D964()
{
  type metadata accessor for LinkCollectionViewCell();
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E65F124(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7547D8();
}

uint64_t sub_29E65D9EC()
{
  type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  sub_29E65F16C();
  v5 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v4 = *v0;
  sub_29E65ECF0(0, &qword_2A18580A0, &qword_2A18580A8, 0x29EDC68A8);
  v1 = v4;
  v2 = sub_29E7541F8();
  MEMORY[0x29ED96C20](v2);

  return v5;
}

uint64_t sub_29E65DA9C()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    sub_29E7550E8();
    v3 = v2;
    sub_29E754B98();
  }

  else
  {
    sub_29E7550E8();
  }

  v4 = type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  v5 = v4[5];
  sub_29E74EE78();
  sub_29E65F124(&qword_2A18580D0, MEMORY[0x29EDB9D18]);
  sub_29E7540B8();
  v6 = *(v1 + v4[6]);
  sub_29E754B98();
  v7 = (v1 + v4[7]);
  if (!v7[1])
  {
    return sub_29E7550E8();
  }

  v8 = *v7;
  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E65DBD8()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E65F124(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7506A8();
}

uint64_t sub_29E65DC40(uint64_t a1)
{
  v3 = sub_29E74F9B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = *(v1 + *(a1 + 24));
  v6 = *v1;
  v7 = v5;
  sub_29E74F978();
  return sub_29E74F958();
}

uint64_t sub_29E65DCEC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_29E65DD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*sub_29E65DD64(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_29E65DD88()
{
  sub_29E7550C8();
  sub_29E65DA9C();
  return sub_29E755108();
}

uint64_t sub_29E65DDCC()
{
  sub_29E7550C8();
  sub_29E65DA9C();
  return sub_29E755108();
}

uint64_t sub_29E65DE0C(uint64_t a1)
{
  v2 = sub_29E65F124(&qword_2A1858078, type metadata accessor for UpcomingScheduleOccurrenceItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E65DEC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_29E65DF20()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_29E7550C8();
  if (!v2)
  {
    sub_29E7550E8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E7550E8();
    return sub_29E755108();
  }

  sub_29E7550E8();
  v4 = v2;
  sub_29E754B98();

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E65DFC8()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (!*v0)
  {
    sub_29E7550E8();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_29E7550E8();
  }

  sub_29E7550E8();
  v4 = v2;
  sub_29E754B98();

  if (!v3)
  {
    return sub_29E7550E8();
  }

LABEL_3:
  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E65E080()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_29E7550C8();
  if (!v2)
  {
    sub_29E7550E8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E7550E8();
    return sub_29E755108();
  }

  sub_29E7550E8();
  v4 = v2;
  sub_29E754B98();

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E65E12C(uint64_t a1)
{
  v2 = sub_29E65EDDC();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E65E1E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E65D6F4();
}

BOOL sub_29E65E204(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_29E609B5C(0, &qword_2A18580A8, 0x29EDC68A8);
    v6 = v5;
    v7 = v4;
    v8 = sub_29E754B88();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  if (MEMORY[0x29ED91730](a1 + v9[5], a2 + v9[5]))
  {
    sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
    v10 = v9[6];
    v11 = *(a1 + v10);
    v12 = *(a2 + v10);
    if (sub_29E754B88())
    {
      v13 = v9[7];
      v14 = (a1 + v13);
      v15 = *(a1 + v13 + 8);
      v16 = (a2 + v13);
      v17 = v16[1];
      if (v15)
      {
        if (!v17)
        {
          return 0;
        }

        v18 = *v14 == *v16 && v15 == v17;
        return v18 || (sub_29E755028() & 1) != 0;
      }

      if (!v17)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_29E65E330(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_29E609B5C(0, &qword_2A18580A8, 0x29EDC68A8);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = sub_29E754B88();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (sub_29E755028() & 1) != 0);
  }

  return !a6;
}

uint64_t sub_29E65E418(uint64_t a1)
{
  if (a1)
  {
    if (qword_2A1A7D6F0 == -1)
    {
      return sub_29E74E9D8();
    }

    goto LABEL_6;
  }

  if (qword_2A1A7D6F0 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E65E508()
{
  v1 = *v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Responding to date cache update", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_29E65CE88();
}

uint64_t sub_29E65E6E0(void *a1)
{
  sub_29E65F1B4();
  v6 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E65ECF0(0, &qword_2A18580A0, &qword_2A18580A8, 0x29EDC68A8);
  v2 = a1;
  v3 = sub_29E7541F8();
  MEMORY[0x29ED96C20](v3);

  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v4 = sub_29E65E418(a1);
  MEMORY[0x29ED96C20](v4);

  return v6;
}

void sub_29E65E7C0(void *a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v31 - v10;
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  v14 = os_log_type_enabled(v12, v13);
  v33 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_29E6B9C90(0xD000000000000049, 0x800000029E75A2C0, &v34);
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Edit upcoming schedule tapped", v15, 0xCu);
    sub_29E5FECBC(v16);
    MEMORY[0x29ED98410](v16, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  v17 = *(v5 + 8);
  v17(v11, v4);
  type metadata accessor for SleepRoomViewController();
  if (swift_dynamicCastClass())
  {
    v18 = a1;
    if (a2)
    {
      v19 = a2;
      sub_29E697B70(v19, 0, 0);
    }

    else
    {
      sub_29E6981B4(0, 0);
    }
  }

  else
  {
    sub_29E752048();
    v20 = a1;
    v21 = sub_29E752088();
    v22 = sub_29E7546C8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v23 = 136446466;
      *(v23 + 4) = sub_29E6B9C90(0xD000000000000049, 0x800000029E75A2C0, &v34);
      *(v23 + 12) = 2082;
      v24 = v20;
      v25 = [v24 description];
      v26 = sub_29E7541D8();
      v28 = v27;

      v29 = sub_29E6B9C90(v26, v28, &v34);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Unable to present schedule compose on unknown view controller: %{public}s", v23, 0x16u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v30, -1, -1);
      MEMORY[0x29ED98410](v23, -1, -1);
    }

    v17(v9, v4);
  }
}

void sub_29E65EB58()
{
  if (!qword_2A1858058)
  {
    sub_29E754998();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E65F124(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8]);
    sub_29E63FE6C();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858058);
    }
  }
}

void sub_29E65EC24()
{
  if (!qword_2A1858060)
  {
    sub_29E60990C();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E65F124(&qword_2A18569F0, sub_29E60990C);
    sub_29E63FE6C();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858060);
    }
  }
}

void sub_29E65ECF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_29E609B5C(255, a3, a4);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E65ED48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E65C9C0();
}

uint64_t sub_29E65ED50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E65CC24();
}

void sub_29E65ED58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E65EDDC()
{
  result = qword_2A1858080;
  if (!qword_2A1858080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858080);
  }

  return result;
}

void sub_29E65EE58()
{
  sub_29E65ECF0(319, &qword_2A18580A0, &qword_2A18580A8, 0x29EDC68A8);
  if (v0 <= 0x3F)
  {
    sub_29E74EE78();
    if (v1 <= 0x3F)
    {
      sub_29E74F908();
      if (v2 <= 0x3F)
      {
        sub_29E619E1C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E65EF24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29E65EF80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_29E65EFE8()
{
  result = qword_2A18580B0;
  if (!qword_2A18580B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18580B0);
  }

  return result;
}

unint64_t sub_29E65F088()
{
  result = qword_2A18580C0;
  if (!qword_2A18580C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18580C0);
  }

  return result;
}

uint64_t sub_29E65F124(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E65F16C()
{
  result = qword_2A18580D8;
  if (!qword_2A18580D8)
  {
    type metadata accessor for UpcomingScheduleOccurrenceItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A18580D8);
  }

  return result;
}

unint64_t sub_29E65F1B4()
{
  result = qword_2A18580E0;
  if (!qword_2A18580E0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A18580E0);
  }

  return result;
}

uint64_t type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController()
{
  result = qword_2A18580E8;
  if (!qword_2A18580E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E65F288()
{
  v0 = *MEMORY[0x29EDC43E0];
  v2 = sub_29E7541D8();

  MEMORY[0x29ED96C20](0xD000000000000020, 0x800000029E75A500);

  return v2;
}

uint64_t (*sub_29E65F300(uint64_t *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC43E0];
  v5 = sub_29E7541D8();
  v6 = v3;

  MEMORY[0x29ED96C20](0xD000000000000020, 0x800000029E75A500);

  *a1 = v5;
  a1[1] = v6;
  return sub_29E65F39C;
}

id sub_29E65F3A4(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_29E7541D8();
    v7 = a4;
    a3 = sub_29E754198();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, a3, a4);

  return v9;
}

id sub_29E65F4B0(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E65F590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E65F5F8(void *a1)
{
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E750428();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E754828();
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA748] healthStore:v12 currentCountryCode:0];
    (*(v8 + 104))(v11, *MEMORY[0x29EDC1BF0], v7);
    v15 = objc_allocWithZone(type metadata accessor for SleepApneaHealthChecklistSettingsViewController(0));
    v16 = sub_29E688FFC(v14, 0, v11);
    [a1 showViewController:v16 sender:0];
  }

  else
  {
    sub_29E752048();
    v17 = sub_29E752088();
    v18 = sub_29E7546A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446466;
      v21 = sub_29E755178();
      v23 = sub_29E6B9C90(v21, v22, &v25);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E75A480, &v25);
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s.%{public}s]: No available health store for sleep apnea settings view", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_29E65F918(uint64_t a1, void (*a2)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

void sub_29E65F9C8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_29E74EAC8();
    sub_29E68B200(MEMORY[0x29EDCA190]);
    v3 = sub_29E754068();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

void sub_29E65FAE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29E754198();
  v9 = sub_29E754198();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_29E754198();
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v10 addAction_];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  v15 = sub_29E754198();
  v18[4] = sub_29E660100;
  v18[5] = v14;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 1107296256;
  v18[2] = sub_29E62452C;
  v18[3] = &unk_2A24FF920;
  v16 = _Block_copy(v18);

  v17 = [v12 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v10 addAction_];
  [a3 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_29E65FD28(void *a1)
{
  v2 = sub_29E74EAF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - v7;
  v23 = 0xD000000000000021;
  v24 = 0x800000029E75A760;
  v21 = 0xD0000000000001FCLL;
  v22 = 0x800000029E75A560;
  v21 = sub_29E754378();
  v22 = v9;
  sub_29E7542F8();
  v10 = objc_opt_self();
  v11 = sub_29E754198();
  v12 = sub_29E754198();

  v13 = [v10 hk:0 tapToRadarURLForBundleID:1076587 component:v11 title:v12 description:7 classification:0 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_29E74EAD8();
  if (HKShowSensitiveLogItems() && a1)
  {
    (*(v3 + 16))(v6, v8, v2);
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    (*(v3 + 32))(v15 + v14, v6, v2);
    v16 = a1;
    sub_29E65FAE0(0x10000000000000C2, 0x800000029E75A7B0, v16, sub_29E6600A0, v15);

LABEL_6:

    return (*(v3 + 8))(v8, v2);
  }

  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v18 = v17;
    v19 = sub_29E74EAC8();
    sub_29E68B200(MEMORY[0x29EDCA190]);
    v16 = sub_29E754068();

    [v18 openSensitiveURL:v19 withOptions:v16];

    goto LABEL_6;
  }

  return (*(v3 + 8))(v8, v2);
}

void sub_29E6600A0()
{
  v0 = *(*(sub_29E74EAF8() - 8) + 80);

  sub_29E65F9C8();
}

uint64_t sub_29E660108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29E660120(uint64_t a1)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [objc_opt_self() appleSleepScoreType];
  v4 = [v2 displayTypeForObjectType_];

  v5 = sub_29E6DCCB8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v27 = MEMORY[0x29EDCA190];
    sub_29E754E08();
    sub_29E7544C8();
    v7 = (v5 + 56);
    do
    {
      v15 = *(v7 - 3);
      v16 = *(v7 - 2);
      v17 = *v7;
      v26 = *(v7 - 1);

      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v9 = sub_29E754198();
      v10 = [v8 initWithString_];

      v11 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v12 = sub_29E754198();
      v13 = [v11 initWithString_];

      [objc_allocWithZone(MEMORY[0x29EDC46E0]) initWithTitle:v10 description:v13];

      sub_29E754DE8();
      v14 = *(v27 + 16);
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      v7 += 4;
      --v6;
    }

    while (v6);

    if (!(v27 >> 62))
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_29E660530();

    sub_29E754E68();

    goto LABEL_9;
  }

  if (MEMORY[0x29EDCA190] >> 62)
  {
    goto LABEL_12;
  }

LABEL_8:

  sub_29E755038();
  sub_29E660530();
LABEL_9:

  v18 = objc_allocWithZone(MEMORY[0x29EDC46F8]);
  sub_29E660530();
  v19 = sub_29E7543D8();

  v20 = [v18 initWithItems_];

  v21 = v20;
  if (v4)
  {
    v22 = [v4 localization];
    v23 = [v22 displayName];

    sub_29E7541D8();
  }

  v24 = sub_29E754198();

  [v21 setTitle_];

  v25 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  return v25;
}

unint64_t sub_29E660530()
{
  result = qword_2A1858100;
  if (!qword_2A1858100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858100);
  }

  return result;
}

void sub_29E660594(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v67[1] = a4;
  v72 = a2;
  v85 = a1;
  v78 = a5;
  sub_29E662A90(0);
  v84 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v79 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29E74FE18();
  v9 = *(v83 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v83);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74FE48();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v77 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74FEB8();
  v75 = *(v16 - 8);
  v76 = v16;
  v17 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v82 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E752098();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v24 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = v67 - v25;
  sub_29E662AC4(0);
  v28 = v27;
  v29 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v27);
  v74 = v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = v67 - v32;
  v81 = a3;
  v80 = sub_29E662B5C();
  v35 = v34;
  v36 = sub_29E74FDC8();
  v37 = *(*(v36 - 8) + 56);
  v73 = v33;
  v37(v33, 1, 1, v36);
  v38 = [objc_opt_self() sharedBehavior];
  if (!v38)
  {
    __break(1u);
    goto LABEL_13;
  }

  v39 = v38;
  v40 = [v38 features];

  if (!v40)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v68 = v20;
  v69 = v28;
  v41 = [v40 sleepResultsNotificationsOnWatch];

  v70 = v12;
  v71 = v9;
  if ((v41 | v85) & 1) != 0 && (v72)
  {
    sub_29E752068();
    v42 = sub_29E752088();
    v43 = sub_29E7546C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v86[0] = v45;
      *v44 = 136446466;
      v46 = sub_29E755178();
      v48 = sub_29E6B9C90(v46, v47, v86);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_29E6B9C90(0xD00000000000005ALL, 0x800000029E75A960, v86);
      _os_log_impl(&dword_29E5ED000, v42, v43, "[%{public}s.%{public}s]: Creating sleep settings feed item", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v45, -1, -1);
      MEMORY[0x29ED98410](v44, -1, -1);
    }

    (*(v68 + 8))(v26, v19);
    v58 = v73;
    v57 = v74;
    v56 = v81;
    sub_29E660E44(v80, v35, v74);
    sub_29E662D48(v58);
    sub_29E662DA4(v57, v58);
  }

  else
  {
    sub_29E752068();
    v49 = sub_29E752088();
    v50 = sub_29E7546C8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v86[0] = v52;
      *v51 = 136446978;
      v53 = sub_29E755178();
      v55 = sub_29E6B9C90(v53, v54, v86);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_29E6B9C90(0xD00000000000005ALL, 0x800000029E75A960, v86);
      *(v51 + 22) = 1024;
      *(v51 + 24) = v72 & 1;
      *(v51 + 28) = 1024;
      *(v51 + 30) = v85 & 1;
      _os_log_impl(&dword_29E5ED000, v49, v50, "[%{public}s.%{public}s]: Not creating sleep settings feed item hasOnboarded: %{BOOL}d isScheduleEnabled: %{BOOL}d", v51, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v52, -1, -1);
      MEMORY[0x29ED98410](v51, -1, -1);
    }

    (*(v68 + 8))(v24, v19);
    v56 = v81;
    v58 = v73;
    v57 = v74;
  }

  (*(v75 + 16))(v82, v56, v76);
  sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v59 = sub_29E74FB98();
  v60 = *(v59 - 8);
  v61 = *(v60 + 72);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_29E762F30;
  (*(v60 + 104))(v63 + v62, *MEMORY[0x29EDC3780], v59);
  (*(v71 + 104))(v70, *MEMORY[0x29EDC3898], v83);
  sub_29E74FE28();
  sub_29E662CE4(v58, v57);
  sub_29E752818();
  v64 = sub_29E74FEE8();
  v65 = MEMORY[0x29EDC38C8];
  v66 = v78;
  v78[3] = v64;
  v66[4] = v65;
  sub_29E5FEBF4(v66);
  sub_29E662A48(&qword_2A1A7BF48, sub_29E662A90);
  sub_29E74FED8();
  sub_29E662D48(v58);
}

uint64_t sub_29E660E44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v41 = a1;
  v54 = a3;
  v3 = sub_29E752098();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v48 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E750358();
  v44 = *(v45 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v45);
  v43 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74FB98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v39 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v37 - v13;
  v40 = sub_29E7506D8();
  v38 = *(v40 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E750AD8();
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepNotificationSettingsDisclosureCellViewController();
  v49 = sub_29E74FBF8();
  v50 = v22;
  v51 = v23;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7506B8();
  sub_29E74E9D8();
  sub_29E750AA8();
  (*(v9 + 104))(v14, *MEMORY[0x29EDC3780], v8);
  v24 = sub_29E74FE78();
  v25 = sub_29E750AC8();
  v27 = v26;
  v37[0] = v9;
  (*(v9 + 16))(v39, v14, v8);

  sub_29E64C7DC(v25, v27);
  v48 = v24;
  v28 = v54;
  sub_29E74FCE8();
  sub_29E750AB8();
  sub_29E7506C8();
  (*(v38 + 8))(v17, v40);
  sub_29E74FCD8();
  sub_29E662E20();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  *(inited + 32) = sub_29E74FF28();
  *(inited + 40) = v30;
  sub_29E5FF900(inited);
  swift_setDeallocating();
  sub_29E619D6C(inited + 32);
  v31 = v28;
  sub_29E74FD88();
  v32 = v44;
  v33 = v43;
  v34 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x29EDC19C8], v45);
  sub_29E750348();
  (*(v32 + 8))(v33, v34);
  sub_29E74FDA8();
  sub_29E74FCB8();

  sub_29E643D20(v25, v27);
  (*(v37[0] + 8))(v14, v8);
  (*(v52 + 8))(v21, v53);
  v35 = sub_29E74FDC8();
  return (*(*(v35 - 8) + 56))(v31, 0, 1, v35);
}

uint64_t sub_29E661760()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29E74FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29E74FEB8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_publisher);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepNotificationSettingsGeneratorPipeline()
{
  result = qword_2A1A7CA80;
  if (!qword_2A1A7CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6618A0()
{
  result = sub_29E74FE48();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29E74FEB8();
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

uint64_t sub_29E66198C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E661A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v32 = a1;
  v33 = sub_29E74FEB8();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v33);
  sub_29E66268C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E662798();
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a2;
  sub_29E74F738();
  v20 = sub_29E74F4D8();
  v39 = a4;
  v40 = v20;
  v38 = a3;
  sub_29E602960();
  sub_29E662A48(&qword_2A1A7BF68, sub_29E602960);
  sub_29E662744();
  sub_29E752918();

  sub_29E662A48(&qword_2A1A7C088, sub_29E66268C);
  v21 = v32;
  v22 = sub_29E7528C8();
  (*(v12 + 8))(v15, v11);
  v38 = v22;
  v23 = v33;
  (*(v8 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v33);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  *(v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_29E662960;
  *(v26 + 24) = v25;
  sub_29E662850(0, &qword_2A1A7BF88, sub_29E6628B4);
  sub_29E66257C();
  sub_29E662910(&qword_2A1A7BF90, &qword_2A1A7BF88, sub_29E6628B4);
  v27 = v34;
  sub_29E752928();

  sub_29E662A48(&qword_2A1A7C048, sub_29E662798);
  v28 = v36;
  v29 = v27;
  v30 = sub_29E7528E8();
  (*(v37 + 8))(v29, v28);
  return v30;
}

uint64_t sub_29E661E74(uint64_t a1, void *a2)
{
  v55 = a2;
  v4 = v2;
  v59 = *v2;
  v5 = sub_29E74FEB8();
  v53 = v5;
  v64 = *(v5 - 8);
  v6 = v64;
  v57 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6624DC();
  v9 = *(v8 - 8);
  v60 = v8;
  v61 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29E74FE18();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v52);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74FE48();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v6 + 16);
  v62 = a1;
  v54(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_context], a1, v5);
  v51 = sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v21 = sub_29E74FB98();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E762F30;
  (*(v22 + 104))(v25 + v24, *MEMORY[0x29EDC3780], v21);
  (*(v12 + 104))(v15, *MEMORY[0x29EDC3898], v52);
  sub_29E74FE28();
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain;
  v27 = v63;
  (*(v17 + 32))(v63 + OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain, v20, v16);
  v28 = sub_29E74F738();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v55;
  v55 = sub_29E74F728();
  v32 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA750] sleepStore:v31];
  (*(v17 + 16))(v20, v27 + v26, v16);
  v33 = v62;
  v34 = sub_29E74FE98();
  (*(v17 + 8))(v20, v16);
  v35 = v56;
  v36 = v53;
  v54(v56, v33, v53);
  v37 = v64;
  v38 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v39 = (v57 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v41 + v38;
  v43 = v36;
  (*(v37 + 32))(v42, v35, v36);
  *(v41 + v39) = v55;
  v44 = (v41 + v40);
  *v44 = v32;
  v44[1] = v34;
  *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v59;
  sub_29E662850(0, &qword_2A1A7BFA8, sub_29E66257C);
  sub_29E662910(&qword_2A1A7BFB0, &qword_2A1A7BFA8, sub_29E66257C);
  v45 = v32;
  v46 = v34;

  v47 = v58;
  sub_29E752848();
  sub_29E662A48(&qword_2A1A7BF20, sub_29E6624DC);
  v48 = v60;
  v49 = sub_29E7528E8();

  (*(v64 + 8))(v62, v43);
  (*(v61 + 8))(v47, v48);
  result = v63;
  *(v63 + OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_publisher) = v49;
  return result;
}

void sub_29E6624DC()
{
  if (!qword_2A1A7BF18)
  {
    sub_29E662850(255, &qword_2A1A7BFA8, sub_29E66257C);
    sub_29E662910(&qword_2A1A7BFB0, &qword_2A1A7BFA8, sub_29E66257C);
    v0 = sub_29E752858();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF18);
    }
  }
}

unint64_t sub_29E66257C()
{
  result = qword_2A1A7D6A0;
  if (!qword_2A1A7D6A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7D6A0);
  }

  return result;
}

uint64_t sub_29E6625E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = sub_29E661A08(v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

void sub_29E66268C()
{
  if (!qword_2A1A7C080)
  {
    sub_29E602960();
    sub_29E662A48(&qword_2A1A7BF68, sub_29E602960);
    sub_29E662744();
    v0 = sub_29E7525F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C080);
    }
  }
}

unint64_t sub_29E662744()
{
  result = qword_2A1A7C450[0];
  if (!qword_2A1A7C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7C450);
  }

  return result;
}

void sub_29E662798()
{
  if (!qword_2A1A7C040)
  {
    sub_29E662850(255, &qword_2A1A7BF88, sub_29E6628B4);
    sub_29E66257C();
    sub_29E662910(&qword_2A1A7BF90, &qword_2A1A7BF88, sub_29E6628B4);
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C040);
    }
  }
}

void sub_29E662850(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E7526F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6628B4()
{
  if (!qword_2A1A7BDD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A7BDD8);
    }
  }
}

uint64_t sub_29E662910(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E662850(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E662960(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_29E74FEB8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29E660594(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_29E662A14(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_29E662A48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E662AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E662B5C()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74FE78();
  v6 = sub_29E74FBB8();

  if (v6)
  {
    v7 = [v6 identifier];

    sub_29E74ED68();
    v8 = sub_29E74ED48();
    v10 = v9;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = 0xE800000000000000;
    v8 = 0x636974736F6E6761;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_29E754D78();

  v12 = 0xD000000000000022;
  v13 = 0x800000029E75AA60;
  MEMORY[0x29ED96C20](v8, v10);

  return v12;
}

uint64_t sub_29E662CE4(uint64_t a1, uint64_t a2)
{
  sub_29E662AC4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E662D48(uint64_t a1)
{
  sub_29E662AC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E662DA4(uint64_t a1, uint64_t a2)
{
  sub_29E662AC4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E662E08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}