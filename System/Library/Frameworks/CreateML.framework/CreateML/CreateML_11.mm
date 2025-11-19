uint64_t sub_237ABAF6C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v132 = a5;
  v129 = a4;
  v140 = a3;
  v141 = a2;
  v125 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v117 - v8;
  v131 = sub_237C069CC();
  v137 = *(v131 - 8);
  v9 = *(v137 + 64);
  v10 = MEMORY[0x28223BE20](v131);
  v130 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v127 = &v117 - v12;
  v138 = sub_237C0610C();
  v13 = *(v138 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v138);
  v123 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v117 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v117 - v20;
  v133 = sub_237C0683C();
  v22 = *(v133 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v133);
  v128 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v117 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  v139 = xmmword_237C0B670;
  *(inited + 16) = xmmword_237C0B670;
  v143 = a2;
  v144 = v140;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v29 = v144;
  *(inited + 32) = v143;
  *(inited + 40) = v29;
  sub_237C0658C();
  sub_237C0679C();
  v30 = sub_237C060FC();
  v31 = *(v13 + 8);
  v120 = v21;
  v32 = v138;
  v136 = v13 + 8;
  v135 = v31;
  v31(v21, v138);
  v142 = v27;
  v33 = v134;
  v34 = sub_237B64FE0(v30, sub_237AC1708);
  v134 = v33;
  v35 = *(v22 + 8);
  v119 = v27;
  v36 = v133;
  v35(v27, v133);
  *(inited + 48) = v34;
  v143 = v141;
  v144 = v140;

  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v37 = v144;
  *(inited + 56) = v143;
  *(inited + 64) = v37;
  v126 = inited;
  v38 = v128;
  sub_237C0658C();
  sub_237C0679C();
  v121 = v22 + 8;
  v118 = v35;
  v35(v38, v36);
  v39 = sub_237AC167C(&qword_27DE9BEE8, MEMORY[0x277D2CCF0]);
  v40 = sub_237C08B3C();
  v122 = v39;
  if (v40)
  {
    v41 = v40;
    v145 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v42 = v145;
    result = sub_237C08B2C();
    if (v41 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v44 = v138;
    do
    {
      v45 = sub_237C08B9C();
      v47 = *v46;
      v45(&v143, 0);
      v145 = v42;
      v48 = *(v42 + 16);
      if (v48 >= *(v42 + 24) >> 1)
      {
        sub_237AC8B54();
        v42 = v145;
      }

      *(v42 + 16) = v48 + 1;
      *(v42 + 8 * v48 + 32) = v47;
      sub_237C08B6C();
      --v41;
    }

    while (v41);
    v135(v19, v44);
  }

  else
  {
    v135(v19, v32);
    v42 = MEMORY[0x277D84F90];
  }

  v49 = v131;
  *(v126 + 9) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v50 = sub_237C085AC();
  v51 = v132;
  v52 = v127;
  if (v132 && (MEMORY[0x2383DA130](), v53 = sub_237C0699C(), v54 = *(v137 + 8), v54(v52, v49), (v55 = sub_237ACDA80(v53, v51)) != 0))
  {
    v56 = v55;
    v57 = v49;
  }

  else
  {
    MEMORY[0x2383DA130]();
    _s13GraphCNNModelVMa(0);
    sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
    v58 = v125;
    v59 = sub_237C063DC();
    MEMORY[0x28223BE20](v59);
    *(&v117 - 2) = v58;
    *(&v117 - 1) = v52;
    v60 = v134;
    v56 = sub_237AB9E1C(sub_237AC16E8, (&v117 - 4), v59);

    v54 = *(v137 + 8);
    v61 = v52;
    v57 = v49;
    v54(v61, v49);
    if (!v56)
    {

      v143 = 0;
      v144 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
      MEMORY[0x2383DC360](v141, v140);
      MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1A8D0);
      v87 = v143;
      v88 = v144;
      sub_2379E8AF0();
      swift_allocError();
      *v89 = v87;
      *(v89 + 8) = v88;
      *(v89 + 16) = 0u;
      *(v89 + 32) = 0u;
      *(v89 + 48) = 2;
      return swift_willThrow();
    }

    v134 = v60;
  }

  v62 = v50;
  v63 = v140;
  v143 = v141;
  v144 = v140;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v128 = v56;
  v64 = sub_237ABEE14(v56, v143, v144);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143 = v62;
  v66 = v134;
  sub_237ABF6E0(v64, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v143);
  v67 = v143;
  v68 = v124;
  sub_237C0655C();
  if (__swift_getEnumTagSinglePayload(v68, 1, v57) == 1)
  {
    v138 = v66;
    sub_2379D9054(v68, &qword_27DE9C810, &qword_237C12130);
LABEL_31:
    v103 = v141;
    v143 = v141;
    v144 = v63;

    MEMORY[0x2383DC360](0x736564697274732ELL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
    v104 = swift_allocObject();
    *(v104 + 16) = v139;
    *(v104 + 32) = sub_237C0656C();
    sub_237C0656C();
    *(v104 + 40) = v105;
    swift_isUniquelyReferenced_nonNull_native();
    v143 = v67;
    sub_237B40F54();

    v106 = v143;
    v143 = v103;
    v144 = v63;

    MEMORY[0x2383DC360](0x676E69646461702ELL, 0xE800000000000000);
    v107 = swift_allocObject();
    *(v107 + 16) = v139;
    *(v107 + 32) = sub_237C065AC();
    sub_237C065AC();
    *(v107 + 40) = v108;
    swift_isUniquelyReferenced_nonNull_native();
    v143 = v106;
    sub_237B40F54();

    v109 = v143;
    v143 = v103;
    v144 = v63;

    MEMORY[0x2383DC360](0x6F6974616C69642ELL, 0xEA0000000000736ELL);
    v110 = swift_allocObject();
    *(v110 + 16) = v139;
    *(v110 + 32) = sub_237C065BC();
    sub_237C065BC();
    *(v110 + 40) = v111;
    swift_isUniquelyReferenced_nonNull_native();
    v143 = v109;
    sub_237B40F54();

    v112 = v143;
    v143 = v103;
    v144 = v63;

    MEMORY[0x2383DC360](0x6F4370756F72672ELL, 0xEB00000000746E75);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_237C0B660;
    *(v113 + 32) = sub_237C0650C();
    swift_isUniquelyReferenced_nonNull_native();
    v143 = v112;
    sub_237B40F54();

    return v143;
  }

  v126 = v54;
  (*(v137 + 32))(v130, v68, v57);
  v143 = v141;
  v144 = v63;

  v69 = MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v127 = v143;
  v70 = v119;
  MEMORY[0x2383DA550](v69);
  v71 = v120;
  sub_237C0679C();
  v72 = sub_237C060FC();
  v73 = v138;
  v74 = (v135)(v71, v138);
  MEMORY[0x28223BE20](v74);
  *(&v117 - 2) = v70;
  sub_237B64FE0(v72, sub_237AC1708);
  v134 = v66;
  v118(v70, v133);
  swift_isUniquelyReferenced_nonNull_native();
  v143 = v67;
  sub_237B40F54();

  v75 = v143;
  v143 = v141;
  v144 = v63;

  MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
  v76 = v144;
  v133 = v143;
  v77 = v123;
  sub_237C069AC();
  v78 = v73;
  v79 = sub_237C08B3C();
  if (v79)
  {
    v80 = v79;
    v124 = v76;
    v127 = v75;
    v145 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v81 = v145;
    result = sub_237C08B2C();
    if ((v80 & 0x8000000000000000) == 0)
    {
      v82 = v78;
      do
      {
        v83 = sub_237C08B9C();
        v85 = *v84;
        v83(&v143, 0);
        v145 = v81;
        v86 = *(v81 + 16);
        if (v86 >= *(v81 + 24) >> 1)
        {
          sub_237AC8B54();
          v81 = v145;
        }

        *(v81 + 16) = v86 + 1;
        *(v81 + 8 * v86 + 32) = v85;
        sub_237C08B6C();
        --v80;
      }

      while (v80);
      v135(v77, v82);
      v63 = v140;
      v75 = v127;
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v135(v77, v73);
LABEL_25:
  swift_isUniquelyReferenced_nonNull_native();
  v143 = v75;
  sub_237B40F54();

  v90 = v143;
  v91 = v130;
  v92 = v132;
  if (v132)
  {
    v93 = sub_237C0699C();
    v94 = sub_237ACDA80(v93, v92);
    if (v94)
    {
      v95 = v94;
      v96 = v131;
LABEL_30:
      v143 = v141;
      v144 = v63;

      MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
      v100 = sub_237ABEE14(v95, v143, v144);

      v101 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v90;
      v102 = v134;
      sub_237ABF6E0(v100, sub_237AC151C, 0, v101, &v143);
      v138 = v102;
      v126(v91, v96);

      v67 = v143;
      goto LABEL_31;
    }
  }

  _s13GraphCNNModelVMa(0);
  sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
  v97 = v125;
  v98 = sub_237C063DC();
  MEMORY[0x28223BE20](v98);
  *(&v117 - 2) = v97;
  *(&v117 - 1) = v91;
  v99 = v134;
  v95 = sub_237AB9E1C(sub_237AC16E8, (&v117 - 4), v98);

  v96 = v131;
  if (v95)
  {
    v134 = v99;
    goto LABEL_30;
  }

  v143 = 0;
  v144 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
  MEMORY[0x2383DC360](v141, v63);
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A8F0);
  v114 = v143;
  v115 = v144;
  sub_2379E8AF0();
  swift_allocError();
  *v116 = v114;
  *(v116 + 8) = v115;
  *(v116 + 16) = 0u;
  *(v116 + 32) = 0u;
  *(v116 + 48) = 2;
  swift_willThrow();

  return (v126)(v91, v96);
}

uint64_t sub_237ABC1A4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v117 = a5;
  v115 = a4;
  v126 = a2;
  v127 = a3;
  v113 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v112 = &v104 - v8;
  v120 = sub_237C069CC();
  v124 = *(v120 - 8);
  v9 = *(v124 + 64);
  v10 = MEMORY[0x28223BE20](v120);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v104 - v12;
  v119 = sub_237C0610C();
  v13 = *(v119 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v119);
  v110 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v104 - v20;
  v118 = sub_237C0683C();
  v22 = *(v118 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v118);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  v129 = a2;
  v130 = v127;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v30 = v130;
  *(inited + 32) = v129;
  *(inited + 40) = v30;
  sub_237C0634C();
  sub_237C0679C();
  v31 = sub_237C060FC();
  v32 = *(v13 + 8);
  v107 = v21;
  v33 = v119;
  v123 = v13 + 8;
  v122 = v32;
  v32(v21, v119);
  v128 = v28;
  v34 = v121;
  v35 = sub_237B64FE0(v31, sub_237AC1708);
  v121 = v34;
  v36 = *(v22 + 8);
  v106 = v28;
  v37 = v118;
  v36(v28, v118);
  *(inited + 48) = v35;
  v129 = v126;
  v130 = v127;

  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v38 = v130;
  *(inited + 56) = v129;
  *(inited + 64) = v38;
  v114 = inited;
  sub_237C0634C();
  sub_237C0679C();
  v108 = v22 + 8;
  v105 = v36;
  v36(v26, v37);
  v39 = sub_237AC167C(&qword_27DE9BEE8, MEMORY[0x277D2CCF0]);
  v40 = sub_237C08B3C();
  v109 = v39;
  if (!v40)
  {
    goto LABEL_4;
  }

  v41 = v40;
  v131 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v42 = v131;
  sub_237C08B2C();
  if (v41 < 0)
  {
    __break(1u);
LABEL_4:
    v122(v19, v33);
    v42 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  do
  {
    v43 = sub_237C08B9C();
    v45 = *v44;
    v43(&v129, 0);
    v131 = v42;
    v46 = *(v42 + 16);
    if (v46 >= *(v42 + 24) >> 1)
    {
      sub_237AC8B54();
      v42 = v131;
    }

    *(v42 + 16) = v46 + 1;
    *(v42 + 8 * v46 + 32) = v45;
    sub_237C08B6C();
    --v41;
  }

  while (v41);
  v122(v19, v33);
LABEL_9:
  v47 = v126;
  *(v114 + 72) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v48 = sub_237C085AC();
  v49 = v127;
  v50 = v120;
  v51 = v117;
  if (v117 && (v52 = v116, sub_237C0635C(), v53 = sub_237C0699C(), v54 = *(v124 + 8), v54(v52, v50), (v55 = sub_237ACDA80(v53, v51)) != 0))
  {
    v56 = v55;
  }

  else
  {
    v57 = v116;
    sub_237C0635C();
    _s13GraphCNNModelVMa(0);
    sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
    v58 = v113;
    v59 = sub_237C063DC();
    v60 = &v104;
    MEMORY[0x28223BE20](v59);
    *(&v104 - 2) = v58;
    *(&v104 - 1) = v57;
    v61 = v121;
    v56 = sub_237AB9E1C(sub_237AC16E8, (&v104 - 4), v59);

    v54 = *(v124 + 8);
    v54(v57, v50);
    if (!v56)
    {

      v129 = 0;
      v130 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
      MEMORY[0x2383DC360](v126, v49);
      MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1A8D0);
      v87 = v129;
      v88 = v130;
      sub_2379E8AF0();
      swift_allocError();
      *v89 = v87;
      *(v89 + 8) = v88;
      *(v89 + 16) = 0u;
      *(v89 + 32) = 0u;
      *(v89 + 48) = 2;
      swift_willThrow();
      return v60;
    }

    v121 = v61;
    v47 = v126;
  }

  v129 = v47;
  v130 = v49;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v62 = sub_237ABEE14(v56, v129, v130);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = v48;
  v64 = v121;
  sub_237ABF6E0(v62, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v129);
  v60 = v129;
  v65 = v112;
  sub_237C0632C();
  if (__swift_getEnumTagSinglePayload(v65, 1, v50) == 1)
  {

    sub_2379D9054(v65, &qword_27DE9C810, &qword_237C12130);
    return v60;
  }

  v116 = v56;
  v121 = v54;
  (*(v124 + 32))(v111, v65, v50);
  v129 = v47;
  v130 = v49;

  v66 = MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v125 = v129;
  v67 = v106;
  MEMORY[0x2383DA550](v66);
  v68 = v107;
  sub_237C0679C();
  v69 = sub_237C060FC();
  v70 = v119;
  v71 = (v122)(v68, v119);
  MEMORY[0x28223BE20](v71);
  *(&v104 - 2) = v67;
  sub_237B64FE0(v69, sub_237AC1708);
  v114 = v64;
  v105(v67, v118);
  swift_isUniquelyReferenced_nonNull_native();
  v129 = v60;
  v72 = v70;
  v73 = v126;
  sub_237B40F54();

  v74 = v129;
  v129 = v73;
  v130 = v49;

  MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
  v75 = v130;
  v125 = v129;
  v76 = v110;
  sub_237C069AC();
  v77 = sub_237C08B3C();
  if (!v77)
  {
    v86 = v73;
    v122(v76, v72);
    v85 = v120;
LABEL_24:
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v74;
    sub_237B40F54();

    v90 = v129;
    v60 = v111;
    v91 = v117;
    v92 = v121;
    if (v117 && (v93 = sub_237C0699C(), (v94 = sub_237ACDA80(v93, v91)) != 0))
    {
      v95 = v94;
      v96 = v127;
    }

    else
    {
      _s13GraphCNNModelVMa(0);
      sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
      v97 = v113;
      v98 = sub_237C063DC();
      MEMORY[0x28223BE20](v98);
      *(&v104 - 2) = v97;
      *(&v104 - 1) = v60;
      v95 = sub_237AB9E1C(sub_237AC16E8, (&v104 - 4), v98);

      v96 = v127;
      if (!v95)
      {

        v129 = 0;
        v130 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
        MEMORY[0x2383DC360](v86, v96);
        MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A8F0);
        v101 = v129;
        v102 = v130;
        sub_2379E8AF0();
        swift_allocError();
        *v103 = v101;
        *(v103 + 8) = v102;
        *(v103 + 16) = 0u;
        *(v103 + 32) = 0u;
        *(v103 + 48) = 2;
        swift_willThrow();

        v92(v60, v120);
        return v60;
      }

      v85 = v120;
    }

    v129 = v86;
    v130 = v96;

    MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
    v99 = sub_237ABEE14(v95, v129, v130);

    v100 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v90;
    sub_237ABF6E0(v99, sub_237AC151C, 0, v100, &v129);
    v92(v60, v85);

    return v129;
  }

  v78 = v77;
  v112 = v75;
  v118 = v74;
  v131 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v79 = v131;
  result = sub_237C08B2C();
  if ((v78 & 0x8000000000000000) == 0)
  {
    do
    {
      v81 = sub_237C08B9C();
      v83 = *v82;
      v81(&v129, 0);
      v131 = v79;
      v84 = *(v79 + 16);
      if (v84 >= *(v79 + 24) >> 1)
      {
        sub_237AC8B54();
        v79 = v131;
      }

      *(v79 + 16) = v84 + 1;
      *(v79 + 8 * v84 + 32) = v83;
      sub_237C08B6C();
      --v78;
    }

    while (v78);
    v122(v76, v72);
    v85 = v120;
    v86 = v126;
    v74 = v118;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_237ABD138(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v96 = a4;
  v97 = a5;
  v93 = a1;
  v83 = sub_237C0610C();
  v8 = *(v83 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v83);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_237C069CC();
  v11 = *(v91 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v91);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_237C0683C();
  v15 = *(v101 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_237C060BC();
  v18 = *(v84 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x277D84F98];
  v80 = sub_237C062EC();
  v98 = v5;
  result = sub_237C0640C();
  v22 = *(result + 16);
  v102 = a2;
  v103 = a3;
  v23 = a2;
  v89 = v22;
  if (v22)
  {
    v78 = v18;
    v24 = 0;
    v79 = v15;
    v95 = (v15 + 8);
    v88 = (v11 + 8);
    v82 = "r key path for layer ";
    v81 = (v8 + 8);
    v25 = (result + 48);
    v86 = xmmword_237C0B660;
    v92 = v14;
    v87 = result;
    while (v24 < *(result + 16))
    {
      v26 = *(v25 - 2);
      v27 = *(v25 - 1);
      v28 = *v25;
      swift_retain_n();

      swift_getAtKeyPath();
      v99 = v28;

      v30 = v100;
      MEMORY[0x2383DA550](v29);
      sub_237A80418(v30, v26, v27, v23, v103);
      v94 = *v95;
      v94(v30, v101);
      v31 = v97;
      if (v97 && (v32 = sub_237C0699C(), (v33 = sub_237ACDA80(v32, v31)) != 0))
      {
        v34 = v33;
      }

      else
      {
        _s13GraphCNNModelVMa(0);
        sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
        v35 = v93;
        v36 = sub_237C063DC();
        v37 = &v78;
        MEMORY[0x28223BE20](v36);
        *(&v78 - 2) = v35;
        *(&v78 - 1) = v14;
        v38 = v104;
        v34 = sub_237AB9E1C(sub_237AC16E8, (&v78 - 4), v36);
        v104 = v38;

        if (!v34)
        {

          v105 = 0;
          v106 = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
          MEMORY[0x2383DC360](v102, v103);
          MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
          MEMORY[0x2383DC360](v26, v27);

          v72 = v105;
          v73 = v106;
          sub_2379E8AF0();
          swift_allocError();
          *v74 = v72;
          *(v74 + 8) = v73;
          *(v74 + 16) = 0u;
          *(v74 + 32) = 0u;
          *(v74 + 48) = 0;
          swift_willThrow();

          (*v88)(v92, v91);
          return v37;
        }

        v14 = v92;
      }

      v39 = v103;
      v105 = v102;
      v106 = v103;

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      MEMORY[0x2383DC360](v26, v27);
      v40 = sub_237ABEE14(v34, v105, v106);

      v41 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v41;
      v43 = v104;
      sub_237ABF6E0(v40, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v105);
      v104 = v43;
      v37 = v105;
      v107 = v105;
      LOBYTE(v40) = sub_237C0880C();

      if (v40)
      {
        v45 = v100;
        MEMORY[0x2383DA550](v44);
        sub_237C0679C();
        v94(v45, v101);
        v46 = *(sub_237C060EC() + 16);

        if (v46 == 3)
        {
          v47 = 1.0;
        }

        else
        {
          v47 = 0.0;
        }

        v48 = sub_237C0612C();
        v105 = v102;
        v106 = v39;

        MEMORY[0x2383DC360](0x756F4374696E752ELL, 0xEA0000000000746ELL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
        v49 = swift_allocObject();
        *(v49 + 16) = v86;
        *(v49 + 32) = v48;
        v50 = v107;
        swift_isUniquelyReferenced_nonNull_native();
        v105 = v50;
        sub_237B40F54();

        v51 = v105;
        v105 = 0;
        v106 = 0xE000000000000000;
        v107 = v51;
        sub_237C08EDC();

        v105 = v102;
        v106 = v103;

        MEMORY[0x2383DC360](0xD000000000000010, v82 | 0x8000000000000000);
        v52 = swift_allocObject();
        *(v52 + 16) = v86;
        *(v52 + 32) = v47;
        swift_isUniquelyReferenced_nonNull_native();
        v105 = v51;
        sub_237B40F54();

        v14 = v92;

        (*v81)(v90, v83);
        (*v88)(v14, v91);
        v37 = v105;
        v107 = v105;
      }

      else
      {
        (*v88)(v14, v91);
      }

      ++v24;
      v25 += 3;
      v23 = v102;
      result = v87;
      if (v89 == v24)
      {

        v15 = v79;
        v18 = v78;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v37 = MEMORY[0x277D84F98];
LABEL_18:
  result = sub_237C0639C();
  v99 = *(result + 16);
  if (v99)
  {
    v53 = v23;
    v54 = 0;
    v92 = (v15 + 8);
    v95 = (v18 + 8);
    v55 = (result + 48);
    v94 = result;
    while (v54 < *(result + 16))
    {
      v57 = *(v55 - 2);
      v56 = *(v55 - 1);
      v37 = *v55;
      swift_retain_n();

      swift_getAtKeyPath();

      v59 = v100;
      MEMORY[0x2383D9C40](v58);
      sub_237A80418(v59, v57, v56, v53, v103);
      (*v92)(v59, v101);
      v60 = v97;
      if (v97 && (v61 = sub_237C0609C(), (v62 = sub_237ACDA80(v61, v60)) != 0))
      {
        v63 = v62;
      }

      else
      {
        v64 = sub_237C0609C();
        _s13GraphCNNModelVMa(0);
        sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
        v65 = v93;
        v66 = sub_237C063DC();
        MEMORY[0x28223BE20](v66);
        *(&v78 - 2) = v65;
        *(&v78 - 2) = v64;
        v67 = v104;
        v63 = sub_237AB9E1C(sub_237AC16C4, (&v78 - 4), v66);
        v104 = v67;

        if (!v63)
        {

          v105 = 0;
          v106 = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
          MEMORY[0x2383DC360](v102, v103);
          MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
          MEMORY[0x2383DC360](v57, v56);

          v75 = v105;
          v76 = v106;
          sub_2379E8AF0();
          swift_allocError();
          *v77 = v75;
          *(v77 + 8) = v76;
          *(v77 + 16) = 0u;
          *(v77 + 32) = 0u;
          *(v77 + 48) = 0;
          swift_willThrow();

          (*v95)(v85, v84);
          return v37;
        }

        v53 = v102;
      }

      ++v54;
      v105 = v53;
      v106 = v103;

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      MEMORY[0x2383DC360](v57, v56);

      v68 = sub_237ABEE14(v63, v105, v106);

      v69 = v107;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v105 = v69;
      v71 = v104;
      sub_237ABF6E0(v68, sub_237AC151C, 0, v70, &v105);
      v104 = v71;
      (*v95)(v85, v84);

      v37 = v105;
      v107 = v105;
      v55 += 3;
      result = v94;
      if (v99 == v54)
      {
        goto LABEL_27;
      }
    }

LABEL_32:
    __break(1u);
    return result;
  }

LABEL_27:

  return v37;
}

uint64_t sub_237ABDDA4()
{
  v39 = sub_237C069CC();
  v1 = OUTLINED_FUNCTION_0(v39);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v38 = v7 - v6;
  v8 = _s13GraphCNNModelVMa(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  v40 = v0;
  v37 = v15;
  sub_237AC1560(v0 + v15, v14);
  sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
  v16 = sub_237C063DC();
  v36 = v14;
  sub_237AC15C4(v14);
  v35 = sub_237A254D8(v16);
  if (v35)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F98];
    v34 = (v3 + 8);
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2383DCAF0](v17, v16);
      }

      else
      {
        if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v16 + 8 * v17 + 32);
      }

      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      sub_237AC1560(v40 + v37, v36);

      swift_getAtKeyPath();

      sub_237AC15C4(v36);
      v21 = sub_237C0699C();
      (*v34)(v38, v39);

      swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_237ACB20C(v21);
      if (__OFADD__(v18[2], (v23 & 1) == 0))
      {
        goto LABEL_21;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C818, &qword_237C10EE8);
      if (sub_237C090AC())
      {
        v26 = sub_237ACB20C(v21);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v24 = v26;
      }

      if (v25)
      {
        v28 = v18[7];
        v29 = *(v28 + 8 * v24);
        *(v28 + 8 * v24) = v19;
      }

      else
      {
        v18[(v24 >> 6) + 8] |= 1 << v24;
        *(v18[6] + 4 * v24) = v21;
        *(v18[7] + 8 * v24) = v19;

        v30 = v18[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_22;
        }

        v18[2] = v32;
      }

      ++v17;
      if (v20 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
LABEL_19:

    return v18;
  }

  return result;
}

uint64_t sub_237ABE134(uint64_t a1, char *a2)
{
  v4 = v2;
  v102 = a2;
  v6 = sub_237C062EC();
  *&v105 = *(v6 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v75 - v10;
  v90 = sub_237C0638C();
  v93 = *(v90 - 8);
  v11 = *(v93 + 64);
  v12 = MEMORY[0x28223BE20](v90);
  v84 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v89 = &v75 - v14;
  v96 = sub_237C065CC();
  v15 = *(v96 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v96);
  v88 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = &v75 - v19;
  v20 = _s13GraphCNNModelVMa(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v81 = &v75 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v87 = &v75 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v75 - v28;
  v104 = sub_237C0697C();
  v30 = *(v104 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v104);
  v94 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v75 - v34;
  v101 = sub_237ABDDA4();
  v99 = a1;
  v106 = sub_237ABECA4();
  v36 = v102;
  v103 = *(v102 + 2);
  v100 = v4;
  v98 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  result = swift_beginAccess();
  v38 = 0;
  v97 = v36 + 32;
  v75 = (v105 + 32);
  v76 = (v105 + 8);
  v79 = (v93 + 32);
  v80 = (v93 + 8);
  v85 = (v15 + 32);
  v86 = (v15 + 8);
  v92 = (v30 + 32);
  v93 = v30 + 8;
  v102 = v35;
  v82 = v6;
  v91 = v29;
  while (1)
  {
    v39 = 0uLL;
    v40 = v103;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = v104;
    if (v38 == v103)
    {
      goto LABEL_6;
    }

    if (v38 >= v103)
    {
      break;
    }

    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_32;
    }

    *&v109[0] = v38;
    sub_2379E8624(&v97[40 * v38], v109 + 8);
    v39 = v109[0];
    v41 = v109[1];
    v42 = v109[2];
LABEL_6:
    v110[0] = v39;
    v110[1] = v41;
    v110[2] = v42;
    if (!v42)
    {

      return v106;
    }

    v38 = v40;
    v105 = v39;
    sub_237A1FCF0((v110 + 8), v109);
    v107 = 0x5F726579616CLL;
    v108 = 0xE600000000000000;
    v111 = v105;
    v44 = sub_237C0924C();
    MEMORY[0x2383DC360](v44);

    v45 = v107;
    v46 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
    v47 = sub_237C085AC();
    sub_2379E8624(v109, &v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v51 = v95;
      v52 = v96;
      if (swift_dynamicCast())
      {

        v53 = v88;
        (*v85)(v88, v51, v52);
        v54 = v87;
        sub_237AC1560(v100 + v98, v87);
        v55 = v101;

        v56 = sub_237ABAF6C(v54, v45, v46, v99, v55);
        if (v3)
        {
          swift_bridgeObjectRelease_n();

          sub_237AC15C4(v54);
          v73 = *v86;
          v74 = v53;
LABEL_27:
          v73(v74, v52);
          goto LABEL_28;
        }

        v47 = v56;

        sub_237AC15C4(v54);
        v57 = *v86;
        v58 = v53;
        goto LABEL_16;
      }

      v59 = v89;
      v52 = v90;
      if (swift_dynamicCast())
      {

        v60 = v84;
        (*v79)(v84, v59, v52);
        v61 = v81;
        sub_237AC1560(v100 + v98, v81);
        v62 = v101;

        v63 = sub_237ABC1A4(v61, v45, v46, v99, v62);
        if (v3)
        {
          swift_bridgeObjectRelease_n();

          sub_237AC15C4(v61);
          v73 = *v80;
          v74 = v60;
          goto LABEL_27;
        }

        v47 = v63;

        sub_237AC15C4(v61);
        v57 = *v80;
        v58 = v60;
LABEL_16:
        v57(v58, v52);
      }

      else
      {
        v66 = v83;
        v67 = v82;
        if (swift_dynamicCast())
        {

          v68 = v78;
          (*v75)(v78, v66, v67);
          v69 = v77;
          sub_237AC1560(v100 + v98, v77);
          v70 = v101;

          v71 = sub_237ABD138(v69, v45, v46, v99, v70);
          if (v3)
          {
            swift_bridgeObjectRelease_n();

            sub_237AC15C4(v69);
            (*v76)(v68, v67);
LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(v109);
            v72 = v106;

            __swift_destroy_boxed_opaque_existential_1(&v107);
            return v72;
          }

          v47 = v71;

          sub_237AC15C4(v69);
          (*v76)(v68, v67);
        }

        else
        {
        }
      }

      v29 = v91;
      goto LABEL_18;
    }

    v48 = v94;
    (*v92)(v94, v35, v43);
    sub_237AC1560(v100 + v98, v29);
    v49 = v101;

    v50 = sub_237AB9F14(v29, v45, v46, v99, v49);
    if (v3)
    {

      swift_bridgeObjectRelease_n();
      sub_237AC15C4(v29);
      (*v93)(v48, v43);
      goto LABEL_28;
    }

    v47 = v50;

    sub_237AC15C4(v29);
    (*v93)(v48, v43);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(&v107);
    v64 = v106;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v64;
    sub_237ABF6E0(v47, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v107);
    result = __swift_destroy_boxed_opaque_existential_1(v109);
    v106 = v107;
    v35 = v102;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237ABECA4()
{
  v1 = *(v0 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  strcpy((inited + 32), "learningRate");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237C0B660;
  *(v3 + 32) = *v0;
  *(inited + 48) = v3;
  *(inited + 56) = 0x6D75746E656D6F6DLL;
  *(inited + 64) = 0xE800000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237C0B660;
  *(v4 + 32) = *(v0 + 4);
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000237C1A960;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237C0B660;
  *(v5 + 32) = v1;
  *(inited + 96) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  return sub_237C085AC();
}

uint64_t sub_237ABEE14(uint64_t a1, uint64_t a2, char *a3)
{
  v40 = a3;
  v41 = a1;
  v42 = a2;
  v3 = sub_237C0610C();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v14 = sub_237C0683C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v19 = sub_237C085AC();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C808, &qword_237C10EE0);
  sub_237C0626C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2379D9054(v13, &qword_27DE9B410, &qword_237C0CCC8);
    return v19;
  }

  v38 = v15;
  v39 = v14;
  (*(v15 + 32))(v18, v13, v14);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_237C08EDC();

  v21 = v40;
  v44 = v42;
  v45 = v40;

  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1A890);
  v41 = v44;
  sub_237C0679C();
  v22 = sub_237C060FC();
  v23 = v43 + 8;
  v37 = *(v43 + 8);
  v24 = v37(v9, v3);
  MEMORY[0x28223BE20](v24);
  v36[-2] = v18;
  sub_237B64FE0(v22, sub_237AC1708);
  swift_isUniquelyReferenced_nonNull_native();
  v44 = v19;
  sub_237B40F54();

  v41 = v44;
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_237C08EDC();

  v44 = v42;
  v45 = v21;

  MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1A8B0);
  v25 = v45;
  v42 = v44;
  v26 = v18;
  sub_237C0679C();
  sub_237AC167C(&qword_27DE9BEE8, MEMORY[0x277D2CCF0]);
  v27 = sub_237C08B3C();
  if (!v27)
  {
    v37(v7, v3);
LABEL_11:
    v35 = v41;
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v35;
    sub_237B40F54();

    v19 = v44;
    (*(v38 + 8))(v26, v39);
    return v19;
  }

  v28 = v27;
  v46 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v29 = v46;
  result = sub_237C08B2C();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v36[1] = v25;
    v40 = v18;
    v43 = v23;
    do
    {
      v31 = sub_237C08B9C();
      v33 = *v32;
      v31(&v44, 0);
      v46 = v29;
      v34 = *(v29 + 16);
      if (v34 >= *(v29 + 24) >> 1)
      {
        sub_237AC8B54();
        v29 = v46;
      }

      *(v29 + 16) = v34 + 1;
      *(v29 + 8 * v34 + 32) = v33;
      sub_237C08B6C();
      --v28;
    }

    while (v28);
    v37(v7, v3);
    v26 = v40;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

BOOL sub_237ABF3D8()
{
  v0 = sub_237C069CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v5 = sub_237C0699C();
  (*(v1 + 8))(v4, v0);
  return v5 == sub_237C0699C();
}

BOOL sub_237ABF4E0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_237C069CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v9 = sub_237C0699C();
  (*(v5 + 8))(v8, v4);
  return v9 == a3;
}

uint64_t sub_237ABF5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = _0 - v3;
  v5 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
  swift_beginAccess();
  v6 = sub_2379D8FF4(v0 + v5, v4, &qword_27DE9C7B8, &unk_237C12110);
  sub_237BAFD70(v6, v7, v8, v9, v10, v11, v12, v13, _0[0], _0[1], _0[2], _0[3], _0[4], _0[5], _0[6], _0[7], _0[8], _0[9], _0[10], _0[11]);
  v15 = sub_237ABE134(v4, v14);
  sub_2379D9054(v4, &qword_27DE9C7B8, &unk_237C12110);

  return v15;
}

uint64_t sub_237ABF6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  sub_237AC14C0(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v41 = v47[5];
  v42 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v42 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v42 + 56) + 8 * v12);
      v46[0] = *v13;
      v46[1] = v14;
      v46[2] = v15;

      v41(&v43, v46);

      v17 = v43;
      v16 = v44;
      v18 = v45;
      v19 = *v48;
      v21 = sub_237ACAC78(v43, v44);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (*(v19 + 24) >= v24)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F8, &qword_237C15340);
          sub_237C090BC();
        }
      }

      else
      {
        v26 = v48;
        sub_237AC0748(v24, a4 & 1);
        v27 = *v26;
        v28 = sub_237ACAC78(v17, v16);
        if ((v25 & 1) != (v29 & 1))
        {
          goto LABEL_23;
        }

        v21 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v48;
      if (v25)
      {
        v31 = *(v30[7] + 8 * v21);

        v32 = v30[7];
        v33 = *(v32 + 8 * v21);
        *(v32 + 8 * v21) = v31;
      }

      else
      {
        v30[(v21 >> 6) + 8] |= 1 << v21;
        v34 = (v30[6] + 16 * v21);
        *v34 = v17;
        v34[1] = v16;
        *(v30[7] + 8 * v21) = v18;
        v35 = v30[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_22;
        }

        v30[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2379E925C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237ABF994(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BD30, &qword_237C0EC60);
  v50 = a2;
  v7 = sub_237C0911C();
  if (!*(v5 + 16))
  {
LABEL_40:

    goto LABEL_41;
  }

  v48 = v2;
  v49 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_41();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) != 0)
  {
    while (2)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      v20 = 3 * (v16 | (v8 << 6));
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 8 * v20;
      v23 = *v22;
      v52 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = v21 + 8 * v20;
      v27 = *v25;
      v26 = *(v25 + 8);
      v51 = *(v25 + 16);
      if ((v50 & 1) == 0)
      {
        sub_2379E9288(v23, v52, v24);
        sub_2379E9288(v27, v26, v51);
      }

      v28 = v7[5];
      sub_237C093CC();
      switch(v24)
      {
        case 1:
          if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v30 = v23;
          }

          else
          {
            v30 = 0;
          }

          MEMORY[0x2383DCF90](v30);
          goto LABEL_22;
        case 2:
          sub_237C0878C();
          goto LABEL_22;
        case 3:
          goto LABEL_44;
        case 4:
        case 5:
          OUTLINED_FUNCTION_33_10();
          OUTLINED_FUNCTION_20_14();
          goto LABEL_46;
        case 6:
          v29 = 1;
          goto LABEL_21;
        default:
          v29 = v23;
LABEL_21:
          MEMORY[0x2383DCF70](v29);
LABEL_22:
          v31 = sub_237C0940C();
          OUTLINED_FUNCTION_1_41(v31);
          v33 = v15[v32];
          OUTLINED_FUNCTION_22_14();
          if (v34)
          {
            OUTLINED_FUNCTION_7_20();
            do
            {
              OUTLINED_FUNCTION_21_18();
              if (v34 && (v36 & 1) != 0)
              {
                goto LABEL_43;
              }

              OUTLINED_FUNCTION_31_12();
              if (v34)
              {
                v37 = 0;
              }
            }

            while (v15[v37] == -1);
            OUTLINED_FUNCTION_4_39();
          }

          else
          {
            OUTLINED_FUNCTION_3_40();
          }

          *(v15 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
          v38 = 3 * v35;
          v39 = v7[6] + 8 * v38;
          *v39 = v23;
          *(v39 + 8) = v52;
          *(v39 + 16) = v24;
          v40 = v7[7] + 8 * v38;
          *v40 = v27;
          *(v40 + 8) = v26;
          *(v40 + 16) = v51;
          OUTLINED_FUNCTION_11_27();
          v5 = v49;
          if (!v12)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_20_14();
LABEL_46:
      sub_237C090DC();
      __break(1u);
      JUMPOUT(0x237ABFCC8);
    }

    if (v8 >= v14)
    {
      break;
    }

    ++v17;
    if (*(v9 + 8 * v8))
    {
      OUTLINED_FUNCTION_8_26();
      v12 = v19 & v18;
      goto LABEL_11;
    }
  }

  if (v50)
  {
    v41 = *(v5 + 32);
    OUTLINED_FUNCTION_6_33();
    v3 = v48;
    if (v43 != v44)
    {
      OUTLINED_FUNCTION_10_28(v42);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v46, v47, v9);
    }

    *(v5 + 16) = 0;
    goto LABEL_40;
  }

  v3 = v48;
LABEL_41:
  *v3 = v7;
  return result;
}

uint64_t sub_237ABFCE4(uint64_t a1)
{
  OUTLINED_FUNCTION_26_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C828, &qword_237C10EF8);
  v39 = v2;
  v5 = sub_237C0911C();
  if (!*(v4 + 16))
  {
    goto LABEL_38;
  }

  v38 = v4;
  v6 = 0;
  v7 = v4;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_38_7();
  if (v2)
  {
    while (2)
    {
      OUTLINED_FUNCTION_36_9();
LABEL_9:
      v13 = v8 | (v6 << 6);
      v14 = *(v4 + 56);
      v15 = *(v4 + 48) + v13 * v9;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v40 = *(v14 + 8 * v13);
      if ((v39 & 1) == 0)
      {
        sub_2379E9288(v16, v17, v18);
      }

      v19 = *(v5 + 40);
      sub_237C093CC();
      switch(v18)
      {
        case 1:
          if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v21 = v16;
          }

          else
          {
            v21 = 0;
          }

          MEMORY[0x2383DCF90](v21);
          goto LABEL_20;
        case 2:
          sub_237C0878C();
          goto LABEL_20;
        case 3:
          goto LABEL_41;
        case 4:
        case 5:
          OUTLINED_FUNCTION_33_10();
          OUTLINED_FUNCTION_20_14();
          goto LABEL_43;
        case 6:
          v20 = 1;
          goto LABEL_19;
        default:
          v20 = v16;
LABEL_19:
          MEMORY[0x2383DCF70](v20);
LABEL_20:
          v22 = sub_237C0940C();
          OUTLINED_FUNCTION_1_41(v22);
          v24 = *(v3 + 8 * v23);
          OUTLINED_FUNCTION_22_14();
          if (v25)
          {
            OUTLINED_FUNCTION_7_20();
            do
            {
              OUTLINED_FUNCTION_21_18();
              if (v25 && (v26 & 1) != 0)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_31_12();
              if (v25)
              {
                v27 = 0;
              }

              OUTLINED_FUNCTION_30_13(v27);
            }

            while (v25);
            OUTLINED_FUNCTION_4_39();
          }

          else
          {
            OUTLINED_FUNCTION_3_40();
          }

          OUTLINED_FUNCTION_31_7();
          OUTLINED_FUNCTION_19_18();
          v30 = v29 + 24 * v28;
          *v30 = v16;
          *(v30 + 8) = v17;
          *(v30 + 16) = v18;
          *(*(v5 + 56) + 8 * v28) = v40;
          OUTLINED_FUNCTION_11_27();
          v4 = v38;
          if (!v2)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v10 = v6;
  while (1)
  {
    v6 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_20_14();
LABEL_43:
      sub_237C090DC();
      __break(1u);
      JUMPOUT(0x237ABFF9CLL);
    }

    if (v6 >= v1)
    {
      break;
    }

    ++v10;
    if (*(v7 + 8 * v6))
    {
      OUTLINED_FUNCTION_8_26();
      v2 = v12 & v11;
      goto LABEL_9;
    }
  }

  if (v39)
  {
    v31 = *(v4 + 32);
    OUTLINED_FUNCTION_6_33();
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_10_28(v32);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v35, v36, v7);
    }

    *(v4 + 16) = 0;
  }

LABEL_38:

  *v1 = v5;
  return result;
}

void sub_237ABFFB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C848, &qword_237C10F18);
  v5 = OUTLINED_FUNCTION_42_6();
  if (!*(v3 + 16))
  {
LABEL_31:

LABEL_32:
    *v2 = v5;
    return;
  }

  v43 = v2;
  v44 = v3;
  v6 = 0;
  v7 = v3;
  OUTLINED_FUNCTION_0_41();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v5 + 8;
  if ((v9 & v8) == 0)
  {
LABEL_6:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v6 >= v12)
      {
        break;
      }

      ++v15;
      if (*(v7 + 8 * v6))
      {
        OUTLINED_FUNCTION_8_26();
        v10 = v17 & v16;
        goto LABEL_11;
      }
    }

    if ((v45 & 1) == 0)
    {

      v2 = v43;
      goto LABEL_32;
    }

    v37 = *(v3 + 32);
    OUTLINED_FUNCTION_6_33();
    v2 = v43;
    if (v39 != v40)
    {
      OUTLINED_FUNCTION_10_28(v38);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v41, v42, v7);
    }

    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v18 = v14 | (v6 << 6);
    v19 = (*(v3 + 48) + 16 * v18);
    v20 = v19[1];
    v46 = *v19;
    v21 = *(v3 + 56) + 16 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    if ((v45 & 1) == 0)
    {

      sub_2379DBCF4(v22, v23);
    }

    v24 = v5[5];
    sub_237C093CC();
    sub_237C0878C();
    v25 = sub_237C0940C();
    OUTLINED_FUNCTION_1_41(v25);
    v27 = v13[v26];
    OUTLINED_FUNCTION_22_14();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_23:
    OUTLINED_FUNCTION_31_7();
    *(v13 + v32) |= v33;
    v35 = (v5[6] + 16 * v34);
    *v35 = v46;
    v35[1] = v20;
    v36 = v5[7] + 16 * v34;
    *v36 = v22;
    *(v36 + 8) = v23;
    OUTLINED_FUNCTION_11_27();
    v3 = v44;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (v13[v29] != -1)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_237AC01E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_19(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C840, &qword_237C10F10);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (!v7)
  {
LABEL_30:

    *v2 = a2;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_40_8();
  if (!v4)
  {
LABEL_4:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v2)
      {
        break;
      }

      ++v10;
      if (*(v3 + 8 * v8))
      {
        OUTLINED_FUNCTION_8_26();
        v4 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      v27 = *(v3 + 32);
      OUTLINED_FUNCTION_6_33();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_10_28(v28);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v31, v32, v3);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_39_6();
LABEL_9:
    OUTLINED_FUNCTION_37_7(v9);
    v15 = (v14 + 32 * v13);
    if (a2)
    {
      sub_2379DAD24(v15, v33);
    }

    else
    {
      sub_2379FED88(v15, v33);
    }

    v16 = *(a2 + 40);
    sub_237C093CC();
    sub_237C0878C();
    v17 = sub_237C0940C();
    OUTLINED_FUNCTION_1_41(v17);
    v19 = *(v5 + 8 * v18);
    OUTLINED_FUNCTION_22_14();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_22:
    OUTLINED_FUNCTION_31_7();
    OUTLINED_FUNCTION_25_14(v24);
    sub_2379DAD24(v33, (v26 + 32 * v25));
    OUTLINED_FUNCTION_11_27();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v5 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_237AC03B4(uint64_t a1)
{
  OUTLINED_FUNCTION_26_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C820, &qword_237C10EF0);
  v5 = OUTLINED_FUNCTION_42_6();
  if (!*(v4 + 16))
  {
LABEL_29:

    *v1 = v5;
    return;
  }

  v36 = v4;
  v6 = 0;
  v7 = v4;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_38_7();
  if (!v2)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v7 + 8 * v6))
      {
        OUTLINED_FUNCTION_8_26();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      v30 = *(v4 + 32);
      OUTLINED_FUNCTION_6_33();
      if (v32 != v33)
      {
        OUTLINED_FUNCTION_10_28(v31);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v34, v35, v7);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_9();
LABEL_9:
    v12 = v8 | (v6 << 6);
    v13 = (*(v4 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(v4 + 56) + 16 * v12);
    v17 = v16[1];
    v38 = *v16;
    if ((v37 & 1) == 0)
    {
    }

    v18 = *(v5 + 40);
    sub_237C093CC();
    sub_237C0878C();
    v19 = sub_237C0940C();
    OUTLINED_FUNCTION_1_41(v19);
    v21 = *(v3 + 8 * v20);
    OUTLINED_FUNCTION_22_14();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_21:
    OUTLINED_FUNCTION_31_7();
    OUTLINED_FUNCTION_19_18();
    v28 = (v27 + 16 * v26);
    *v28 = v14;
    v28[1] = v15;
    v29 = (*(v5 + 56) + 16 * v26);
    *v29 = v38;
    v29[1] = v17;
    OUTLINED_FUNCTION_11_27();
    v4 = v36;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    OUTLINED_FUNCTION_30_13(v23);
    if (!v22)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_237AC058C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_19(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C838, &qword_237C10F08);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (!v7)
  {
LABEL_29:

    *v2 = a2;
    return;
  }

  v34 = v3;
  v8 = 0;
  v9 = v3;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_40_8();
  if (!v4)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v2)
      {
        break;
      }

      ++v11;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_8_26();
        v4 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      v28 = *(v3 + 32);
      OUTLINED_FUNCTION_6_33();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_10_28(v29);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v32, v33, v9);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_39_6();
LABEL_9:
    OUTLINED_FUNCTION_37_7(v10);
    v16 = *(v15 + 8 * v14);
    if ((a2 & 1) == 0)
    {
    }

    v17 = *(a2 + 40);
    sub_237C093CC();
    sub_237C0878C();
    v18 = sub_237C0940C();
    OUTLINED_FUNCTION_1_41(v18);
    v20 = *(v5 + 8 * v19);
    OUTLINED_FUNCTION_22_14();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_21:
    OUTLINED_FUNCTION_31_7();
    OUTLINED_FUNCTION_25_14(v25);
    *(v27 + 8 * v26) = v16;
    OUTLINED_FUNCTION_11_27();
    v3 = v34;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v5 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_237AC0748(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C800, &qword_237C10ED8);
  v38 = a2;
  result = sub_237C0911C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_237B468E8(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_237C093CC();
    sub_237C0878C();
    result = sub_237C0940C();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_237AC09EC(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_15_19(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (v7)
  {
    v8 = 0;
    OUTLINED_FUNCTION_0_41();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
    v14 = v4 + 8;
    if (v11)
    {
LABEL_3:
      OUTLINED_FUNCTION_35_9();
      goto LABEL_9;
    }

LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        JUMPOUT(0x237AC0CC8);
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v3 + 8 * v8))
      {
        OUTLINED_FUNCTION_8_26();
        v11 = v18 & v17;
LABEL_9:
        v19 = v15 | (v8 << 6);
        v20 = *(*(v3 + 48) + v19);
        v21 = (*(v3 + 56) + 40 * v19);
        if (a2)
        {
          sub_237A1FCF0(v21, v39);
        }

        else
        {
          sub_2379E8624(v21, v39);
        }

        v22 = v4[5];
        sub_237C093CC();
        OUTLINED_FUNCTION_27_8();
        switch(v20)
        {
          case 1:
            OUTLINED_FUNCTION_13_16();
            break;
          case 2:
            OUTLINED_FUNCTION_16_12();
            break;
          case 3:
            OUTLINED_FUNCTION_25_10();
            break;
          case 4:
            OUTLINED_FUNCTION_11_20();
            break;
          case 5:
          case 7:
          case 9:
          case 10:
            OUTLINED_FUNCTION_10_17();
            break;
          case 8:
            OUTLINED_FUNCTION_14_15();
            break;
          default:
            break;
        }

        sub_237C0878C();

        v23 = sub_237C0940C();
        OUTLINED_FUNCTION_1_41(v23);
        v25 = v14[v24];
        OUTLINED_FUNCTION_22_14();
        if (v26)
        {
          OUTLINED_FUNCTION_7_20();
          do
          {
            OUTLINED_FUNCTION_21_18();
            if (v26 && (v27 & 1) != 0)
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_31_12();
            if (v26)
            {
              v28 = 0;
            }
          }

          while (v14[v28] == -1);
          OUTLINED_FUNCTION_4_39();
        }

        else
        {
          OUTLINED_FUNCTION_3_40();
        }

        OUTLINED_FUNCTION_31_7();
        *(v14 + v29) |= v30;
        *(v4[6] + v31) = v20;
        sub_237A1FCF0(v39, v4[7] + 40 * v31);
        OUTLINED_FUNCTION_11_27();
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    if (a2)
    {
      v32 = *(v3 + 32);
      OUTLINED_FUNCTION_6_33();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_10_28(v33);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v37, v38, v3);
      }

      *(v3 + 16) = 0;
    }

    v5 = v2;
  }

  else
  {
  }

  *v5 = v4;
  return result;
}

uint64_t sub_237AC0CF4(uint64_t a1, char a2)
{
  v3 = v2;
  v52 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v52);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v51 = v12 - v11;
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE8, &qword_237C0F238);
  OUTLINED_FUNCTION_17_17();
  v49 = a2;
  v15 = sub_237C0911C();
  if (!*(v13 + 16))
  {
    goto LABEL_42;
  }

  v46 = v3;
  v16 = 0;
  v17 = (v13 + 64);
  v18 = 1 << *(v13 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v13 + 64);
  v21 = (v18 + 63) >> 6;
  v47 = (v8 + 16);
  v48 = v8;
  v50 = (v8 + 32);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  v22 = v15 + 64;
  if (v20)
  {
LABEL_8:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    goto LABEL_14;
  }

LABEL_9:
  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      JUMPOUT(0x237AC10D8);
    }

    if (v16 >= v21)
    {
      break;
    }

    ++v24;
    if (v17[v16])
    {
      OUTLINED_FUNCTION_8_26();
      v20 = v26 & v25;
LABEL_14:
      v27 = v23 | (v16 << 6);
      v28 = *(*(v13 + 48) + v27);
      v29 = *(v48 + 72);
      v30 = *(v13 + 56) + v29 * v27;
      if (v49)
      {
        (*v50)(v51, v30, v52);
      }

      else
      {
        (*v47)(v51, v30, v52);
      }

      v31 = *(v15 + 40);
      sub_237C093CC();
      OUTLINED_FUNCTION_27_8();
      switch(v28)
      {
        case 1:
          OUTLINED_FUNCTION_13_16();
          break;
        case 2:
          OUTLINED_FUNCTION_16_12();
          break;
        case 3:
          OUTLINED_FUNCTION_25_10();
          break;
        case 4:
          OUTLINED_FUNCTION_11_20();
          break;
        case 5:
        case 7:
        case 9:
        case 10:
          OUTLINED_FUNCTION_10_17();
          break;
        case 8:
          OUTLINED_FUNCTION_14_15();
          break;
        default:
          break;
      }

      sub_237C0878C();

      v32 = *(v22 + 8 * ((sub_237C0940C() & ~(-1 << *(v15 + 32))) >> 6));
      OUTLINED_FUNCTION_22_14();
      if (v33)
      {
        OUTLINED_FUNCTION_7_20();
        do
        {
          OUTLINED_FUNCTION_21_18();
          if (v33 && (v34 & 1) != 0)
          {
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_31_12();
          if (v33)
          {
            v35 = 0;
          }
        }

        while (*(v22 + 8 * v35) == -1);
        OUTLINED_FUNCTION_4_39();
      }

      else
      {
        OUTLINED_FUNCTION_3_40();
      }

      OUTLINED_FUNCTION_31_7();
      *(v22 + v36) |= v37;
      *(*(v15 + 48) + v38) = v28;
      (*v50)(*(v15 + 56) + v29 * v38, v51, v52);
      ++*(v15 + 16);
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  if (v49)
  {
    v39 = *(v13 + 32);
    OUTLINED_FUNCTION_6_33();
    v3 = v46;
    if (v41 != v42)
    {
      *v17 = -1 << v40;
    }

    else
    {
      v44 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v44, v45, v13 + 64);
    }

    *(v13 + 16) = 0;
LABEL_42:

    goto LABEL_43;
  }

  v3 = v46;
LABEL_43:
  *v3 = v15;
  return result;
}

uint64_t sub_237AC1104(uint64_t a1, char a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_15_19(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C830, &qword_237C10F00);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (!v7)
  {
LABEL_37:

    goto LABEL_38;
  }

  v8 = 0;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 64);
  v12 = (v9 + 63) >> 6;
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  if (v11)
  {
LABEL_6:
    OUTLINED_FUNCTION_35_9();
    goto LABEL_12;
  }

LABEL_7:
  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      JUMPOUT(0x237AC13D8);
    }

    if (v8 >= v12)
    {
      break;
    }

    ++v14;
    if (*(v3 + 64 + 8 * v8))
    {
      OUTLINED_FUNCTION_8_26();
      v11 = v16 & v15;
LABEL_12:
      v17 = v13 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = *(*(v3 + 56) + 8 * v17);
      v20 = *(v4 + 40);
      sub_237C093CC();
      OUTLINED_FUNCTION_27_8();
      switch(v18)
      {
        case 1:
          OUTLINED_FUNCTION_13_16();
          break;
        case 2:
          OUTLINED_FUNCTION_16_12();
          break;
        case 3:
          OUTLINED_FUNCTION_25_10();
          break;
        case 4:
          OUTLINED_FUNCTION_11_20();
          break;
        case 5:
        case 7:
        case 9:
        case 10:
          OUTLINED_FUNCTION_10_17();
          break;
        case 8:
          OUTLINED_FUNCTION_14_15();
          break;
        default:
          break;
      }

      sub_237C0878C();

      v21 = sub_237C0940C() & ~(-1 << *(v4 + 32));
      if (((-1 << v21) & ~*(v4 + 64 + 8 * (v21 >> 6))) != 0)
      {
        OUTLINED_FUNCTION_3_40();
      }

      else
      {
        OUTLINED_FUNCTION_7_20();
        do
        {
          OUTLINED_FUNCTION_21_18();
          if (v23 && (v22 & 1) != 0)
          {
            goto LABEL_40;
          }

          OUTLINED_FUNCTION_31_12();
          if (v23)
          {
            v24 = 0;
          }

          OUTLINED_FUNCTION_30_13(v24);
        }

        while (v23);
        OUTLINED_FUNCTION_4_39();
      }

      OUTLINED_FUNCTION_31_7();
      OUTLINED_FUNCTION_19_18();
      *(v26 + v25) = v18;
      *(*(v4 + 56) + 8 * v25) = v19;
      OUTLINED_FUNCTION_11_27();
      if (v11)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  if (a2)
  {
    v27 = *(v3 + 32);
    OUTLINED_FUNCTION_6_33();
    v5 = v2;
    if (v29 != v30)
    {
      OUTLINED_FUNCTION_10_28(v28);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v32, v33, v3 + 64);
    }

    *(v3 + 16) = 0;
    goto LABEL_37;
  }

  v5 = v2;
LABEL_38:
  *v5 = v4;
  return result;
}

uint64_t sub_237AC1404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_237AC1450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_237AC14C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_237AC151C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237AC1450(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_237AC1560(uint64_t a1, uint64_t a2)
{
  v4 = _s13GraphCNNModelVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AC15C4(uint64_t a1)
{
  v2 = _s13GraphCNNModelVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_237AC165C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_237AC163C(a1);
}

uint64_t sub_237AC167C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_15_19(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_25_14(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_37_7(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return sub_237C0911C();
}

BOOL sub_237AC19D4()
{
  v0 = sub_237A2E9F4();
  v1 = sub_237A017E8(0, v0);
  return OUTLINED_FUNCTION_15_20(v1);
}

BOOL sub_237AC1A4C()
{
  sub_237C05CFC();
  sub_237A76634();
  sub_237C08B2C();
  sub_237C08B5C();
  return v2 == v1;
}

uint64_t sub_237AC1AB8(uint64_t (*a1)(unint64_t *))
{

  for (i = 0; ; ++i)
  {
    v4 = sub_237A2E9F4();
    v5 = sub_237A017E8(0, v4);
    if (i == v5)
    {
LABEL_7:

      return i != v5;
    }

    sub_237A2E9C8(i);
    if (v1)
    {
      goto LABEL_9;
    }

    v6 = sub_237A2DE60();
    v8 = v7;

    v9 = sub_237A2E9F4();
    if (i >= sub_237A017E8(0, v9))
    {
      break;
    }

    v13 = v6;
    v14 = v8;
    v10 = a1(&v13);

    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_9:
  swift_unexpectedError();
  __break(1u);

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_237C08EDC();

  v13 = 0xD000000000000022;
  v14 = 0x8000000237C17E70;
  v15 = i;
  v12 = sub_237C0924C();
  MEMORY[0x2383DC360](v12);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

BOOL sub_237AC1CCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_237AC1D7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_237B024B4(v4);
  if (v7)
  {
    goto LABEL_36;
  }

  v8 = v6;
  if (*(a1 + 36) != v6)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v5;
  if (v5 == 1 << *(a1 + 32))
  {

    sub_2379E8FD0(v9, v8, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 255;
    *(a2 + 40) = 0;
    return;
  }

  v47 = a2;
  sub_237AFFB80(v62, v64, v5, v6, 0, a1);
  v11 = v62[0];
  v10 = v62[1];
  v12 = v63;
  v13 = v64[0];
  v66 = v64[1];
  LOBYTE(a2) = v65;
  v14 = sub_237B01EB4(v9, v8, 0, a1);
  v15 = v8;
  v17 = v16;
  v60 = v18;
  sub_2379E8FD0(v9, v15, 0);
  if ((v60 & 1) == 0)
  {
    v58 = v17;
    v59 = a1 + 64;
    v57 = v17;
    v54 = a1;
    v55 = a1 + 72;
    v19 = v17;
LABEL_7:
    v51 = v13;
    v52 = v66;
    v49 = v12;
    v50 = v10;
    v48 = v11;
    v53 = a2;
    if (a2 == 1)
    {
      v20 = *&v13;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = v19;
    while (*(a1 + 36) == v17)
    {
      v22 = 1 << *(a1 + 32);
      if (v14 == v22)
      {

        sub_2379E8FD0(v14, v21, 0);
        *v47 = v48;
        *(v47 + 8) = v50;
        *(v47 + 16) = v49;
        *(v47 + 24) = v51;
        *(v47 + 32) = v52;
        *(v47 + 40) = v53;
        return;
      }

      if ((v14 & 0x8000000000000000) != 0 || v14 >= v22)
      {
        goto LABEL_33;
      }

      if (v17 != v21)
      {
        goto LABEL_34;
      }

      v23 = v14 >> 6;
      v24 = *(v59 + 8 * (v14 >> 6));
      if ((v24 & (1 << v14)) == 0)
      {
        goto LABEL_34;
      }

      v25 = *(a1 + 48) + 24 * v14;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(a1 + 56) + 24 * v14;
      v31 = *v29;
      v30 = *(v29 + 8);
      LODWORD(a2) = *(v29 + 16);
      v32 = v24 & (-2 << (v14 & 0x3F));
      v66 = v30;
      *v61 = v26;
      if (v32)
      {
        v33 = v27;
        v34 = v28;
        v35 = v30;
        sub_2379E9288(v26, v27, v28);
        sub_2379E9288(v31, v35, a2);
        sub_2379E8FD0(v14, v21, 0);
        v14 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v36 = v31;
      }

      else
      {
        v56 = v31;
        v37 = v23 << 6;
        v38 = v23 + 1;
        v39 = (v55 + 8 * v23);
        while (v38 < (v22 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            v33 = v27;
            v34 = v28;
            v42 = v30;
            sub_2379E9288(v26, v27, v28);
            v36 = v56;
            sub_2379E9288(v56, v42, a2);
            sub_2379E8FD0(v14, v21, 0);
            v14 = __clz(__rbit64(v40)) + v37;
            goto LABEL_24;
          }
        }

        v33 = v27;
        v34 = v28;
        v43 = v30;
        sub_2379E9288(v26, v27, v28);
        sub_2379E9288(v31, v43, a2);
        sub_2379E8FD0(v14, v21, 0);
        v14 = v22;
        v36 = v31;
LABEL_24:
        a1 = v54;
      }

      LODWORD(v17) = v58;
      if (a2 == 1)
      {
        v44 = *v61;
        v45 = v33;
        v46 = v34;
        if (v20 < *&v36)
        {
          goto LABEL_30;
        }

        LOBYTE(a2) = 1;
      }

      else
      {
        v44 = *v61;
        v45 = v33;
        v46 = v34;
        if (v20 < 0.0)
        {
LABEL_30:
          v13 = v36;
          v12 = v46;
          v10 = v45;
          v11 = v44;
          sub_2379E8CE8(v48, v50, v49);
          sub_2379E8CE8(v51, v52, v53);
          v19 = v57;
          goto LABEL_7;
        }
      }

      sub_2379E8CE8(v44, v45, v46);
      sub_2379E8CE8(v36, v66, a2);
      v21 = v57;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
}

void sub_237AC2170(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X6>, char a6@<W7>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_18_8();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  if (a4)
  {

    v16 = OUTLINED_FUNCTION_21_19();
    sub_2379DBCF4(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (!sub_237C0925C())
    {
      OUTLINED_FUNCTION_50();
      v7 = swift_allocError();
      *v24 = a3;

      goto LABEL_6;
    }

    OUTLINED_FUNCTION_38_6();

    v18 = OUTLINED_FUNCTION_21_19();
  }

  else
  {
    v20 = *(a3 + 16);

    v21 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v21, v22);
    v23 = sub_237A2F37C(a5, v15, a6, 0);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v7 = swift_allocObject();
    *(v7 + 16) = v23;

    v18 = OUTLINED_FUNCTION_4_26();
  }

  sub_2379DBC9C(v18, v19);
LABEL_6:
  *a7 = v7;
  *(a7 + 8) = a4 & 1;
}

uint64_t sub_237AC22DC(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  if (sub_237A2E988())
  {
    goto LABEL_7;
  }

  v4 = sub_237C08D2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v15 - v7);
  v9 = *(a1 + 16);

  v10 = sub_237B0DDC8(v9);
  if (!v10)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  type metadata accessor for CMLDictionary();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v20[0] = v11;
  v20[1] = sub_237B004D4;
  v20[2] = 0;
  v20[3] = sub_237B02424;
  v20[4] = 0;
  v20[5] = sub_237AB65A0;
  v20[6] = 0;
  *&v16 = MEMORY[0x277D84F98];
  swift_retain_n();
  sub_237B019D8(v20, 1, &v16);

  *v8 = v16;
  if (__swift_getEnumTagSinglePayload(v8, 1, &type metadata for MLDataValue.DictionaryType) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = &type metadata for MLDataValue.DictionaryType;
    v18 = &off_284AC46D8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
    (*(off_284AC4530 + 4))(boxed_opaque_existential_0, v8, &type metadata for MLDataValue.DictionaryType);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v19 = 0;
  }

  a2(&v16, &v19);
  if (*(&v16 + 1))
  {
    v13 = sub_237B297D0(v16, *(&v16 + 1));
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v13 = sub_237A2E78C();
  }

  return v13;
}

uint64_t sub_237AC25DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  if (sub_237A2E988())
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_237AFE8C0();
  }

  v13[0] = v3;
  v13[1] = v4;
  a2(&v9, v13);
  if (v10)
  {
    type metadata accessor for CMLFeatureValue();
    v5 = sub_237A2E78C();

    return v5;
  }

  v11 = MEMORY[0x277D83B88];
  v12 = &off_284AC55D0;
  v6 = __swift_project_boxed_opaque_existential_1(&v9, MEMORY[0x277D83B88]);
  v7 = sub_237B0F164(*v6);
  if (v7)
  {
    type metadata accessor for CMLFeatureValue();
    swift_allocObject();
    v5 = sub_237A2E764(v7, 1);

    __swift_destroy_boxed_opaque_existential_1(&v9);
    return v5;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237AC2718(uint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = result;
  if (result)
  {

    a2(&v4, &v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237AC2770(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v4[0] = result;
  v4[1] = a2;
  if (a2)
  {

    a3(&v5, v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v261 = a5;
  v257 = a6;
  v258 = a2;
  v259 = a3;
  v256 = a7;
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v251 = v12;
  v252 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v253 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v250 = &v234 - v17;
  v18 = sub_237C0683C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v254 = v20;
  v255 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v234 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MLClassifierMetrics(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *a1;
  v30 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  v260 = xmmword_237C0B660;
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a4;
  *(inited + 40) = v261;
  OUTLINED_FUNCTION_20_15();

  v32 = v262;
  sub_2379F2B84();
  v262 = v32;
  if (v32)
  {
    goto LABEL_4;
  }

  v249 = a4;
  v246 = v28;
  v247 = v24;
  swift_setDeallocating();
  sub_237B9082C();
  OUTLINED_FUNCTION_20_15();
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_9_28(v33);
  v35 = v258;
  v34 = v259;
  *(v36 + 32) = v258;
  *(v36 + 40) = v34;

  v37 = v262;
  sub_2379F2B84();
  v262 = v37;
  if (v37)
  {
LABEL_4:
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  swift_setDeallocating();
  sub_237B9082C();
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_9_28(v38);
  *(v39 + 32) = v35;
  *(v39 + 40) = v34;
  OUTLINED_FUNCTION_20_15();
  LOBYTE(v272) = 2;

  OUTLINED_FUNCTION_24_17();
  v262 = 0;
  swift_setDeallocating();
  sub_237B9082C();
  OUTLINED_FUNCTION_20_15();
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_9_28(v40);
  v41 = v249;
  v42 = v261;
  *(v43 + 32) = v249;
  *(v43 + 40) = v42;
  LOBYTE(v272) = 4;

  OUTLINED_FUNCTION_24_17();
  v262 = 0;
  swift_setDeallocating();
  sub_237B9082C();
  if (!*(v257 + 16))
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v137 = swift_allocError();
    *v138 = 0xD000000000000019;
    v138[1] = 0x8000000237C1ABA0;
    OUTLINED_FUNCTION_23_3(v137, v138);
    *v256 = v139;
    type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v235 = *(v257 + 16);
  v272 = v29;
  v273 = v30;
  v270 = v29;
  v271 = v30;
  sub_2379DBCF4(v29, v30);
  MLDataTable.subscript.getter();
  v266 = v268;
  v267 = v269;
  MLUntypedColumn.dropDuplicates()(&v263);
  sub_2379DBC9C(v266, v267);
  if (v264)
  {
    goto LABEL_80;
  }

  v44 = v263;
  v45 = v263[2];

  v46 = sub_237A2F128();
  v243 = v44;
  v47 = OUTLINED_FUNCTION_4_26();
  sub_2379DBC9C(v47, v48);
  v245 = v46;
  if (v46 < 0)
  {
    goto LABEL_80;
  }

  if (v245)
  {
    for (i = 0; i != v245; ++i)
    {
      v50 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v50, v51);
      sub_237A607E0(i, &v263);
      v52 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v52, v53);
      v41 = v263;
      v55 = v264;
      v56 = v265;
      if (v265 != 2)
      {
        goto LABEL_75;
      }

      MEMORY[0x28223BE20](v54);
      *(&v234 - 2) = &v263;
      v57 = v262;
      v58 = sub_237AC1CCC(sub_237A06CFC, (&v234 - 4), v257);
      v262 = v57;
      if (v58)
      {
        sub_2379E8CE8(v41, v55, 2);
      }

      else
      {
        v59 = swift_initStackObject();
        v248 = v29;
        v244 = &v234;
        *(v59 + 16) = v260;
        *(v59 + 32) = v41;
        *(v59 + 40) = v55;
        v270 = v29;
        v60 = v30 & 1;
        v271 = v60;
        v263 = v59;
        MEMORY[0x28223BE20](v59);
        *(&v234 - 2) = &v263;
        v61 = sub_237BBDC94(sub_2379F5678);
        v63 = v62;
        swift_setDeallocating();
        sub_237B9082C();
        v268 = v61;
        v269 = v63 & 1;
        sub_237B6DDE8(1, &v268, v258, v259);
        sub_2379DBC9C(v268, v269);
        sub_2379DBC9C(v248, v60);
        v29 = v263;
        v30 = v264;
      }
    }

    v272 = v29;
    v273 = v30 & 1;
    v42 = v261;
    v41 = v249;
  }

  v263 = v29;
  LOBYTE(v264) = v30 & 1;
  if (!MLDataTable.size.getter())
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v148 = swift_allocError();
    *v149 = 0xD000000000000053;
    v149[1] = 0x8000000237C1AB40;
    OUTLINED_FUNCTION_23_3(v148, v149);
    v150 = OUTLINED_FUNCTION_3_41();
LABEL_66:
    sub_2379DBC9C(v150, v151);
    *v256 = v148;
    type metadata accessor for MLClassifierMetrics.Contents(0);
    goto LABEL_67;
  }

  LOBYTE(v270) = v30 & 1;
  v248 = v29;
  sub_2379DBCF4(v29, v30 & 1);
  v64 = 0;
  v55 = MEMORY[0x277D84950];
  HIDWORD(v241) = v30;
  while (1)
  {
    while (1)
    {
LABEL_18:
      if (v30)
      {
        v65 = v248;
        v263 = v248;
        sub_2379DBCF4(v248, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        if (sub_237C0925C())
        {
          v66 = OUTLINED_FUNCTION_38_6();
          sub_2379DBC9C(v66, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v55 = swift_allocError();
          *v80 = v65;
        }

        sub_2379F8918(v55, v242, 1);
        if (!v64)
        {
          goto LABEL_59;
        }

        v81 = MEMORY[0x2383DDAC0](0);
        if (!v81)
        {
          goto LABEL_76;
        }

        v82 = v81;
        v83 = type metadata accessor for CMLSequence();
        v84 = swift_allocObject();
        *(v84 + 16) = v82;
        v244 = v84;
        v30 = 1;
        *(v84 + 24) = 1;
        v85 = MEMORY[0x2383DDAC0](0);
        if (!v85)
        {
          goto LABEL_77;
        }

        v86 = v85;
        v87 = swift_allocObject();
        *(v87 + 16) = v86;
        v245 = v87;
        *(v87 + 24) = 1;
        v263 = v65;
        v88 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        if (sub_237C0925C())
        {
          v89 = OUTLINED_FUNCTION_38_6();
          sub_2379DBC9C(v89, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v83 = swift_allocError();
          *v108 = v65;
        }

        sub_2379F8918(v83, v240, 1);
        v104 = 0;
        *&v260 = MEMORY[0x277D84F98];
        v55 = MEMORY[0x277D84950];
      }

      else
      {
        v65 = v248;
        v67 = *(v248 + 2);
        v68 = OUTLINED_FUNCTION_52_5();
        sub_2379DBCF4(v68, v69);
        v70 = v262;
        v71 = sub_237A30330();
        if (v70)
        {
          goto LABEL_81;
        }

        v72 = v71;
        v73 = v65[2];
        v242 = sub_237A3035C();
        v262 = 0;
        v74 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v74, v75);
        if (v64 == v72)
        {
LABEL_59:
          sub_2379DBC9C(v65, v270);
          v140 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
          v141 = *(v140 + 48);
          v142 = *(v140 + 52);
          swift_allocObject();
          v143 = v235;
          v144 = v262;
          v145 = sub_237A3367C(v235);
          v262 = v144;
          if (v144)
          {
            v146 = OUTLINED_FUNCTION_3_41();
          }

          else
          {
            v152 = v145;
            v153 = sub_237A5A36C(v257);
            MLDataTable.subscript.getter();
            v261 = v152;
            v154 = OUTLINED_FUNCTION_5_34();
            sub_237AC3F34(v154, v155, v156, v157, v158, v159, 2, v160);
            v161 = OUTLINED_FUNCTION_84();
            sub_2379DBC9C(v161, v162);
            v163 = v270;
            v164 = v271;
            OUTLINED_FUNCTION_103();
            v165 = swift_allocObject();
            v249 = v153;
            *(v165 + 16) = v153;
            OUTLINED_FUNCTION_18_8();
            v166 = swift_allocObject();
            *(v166 + 16) = sub_237AC4394;
            *(v166 + 24) = v165;

            *&v260 = sub_237AC44DC;
            OUTLINED_FUNCTION_19_19();
            sub_237AC2170(v167, v168, v169, v164, v170, 0, v171);

            sub_2379DBC9C(v163, v164);
            v172 = v263;
            LODWORD(v153) = v264;
            MLDataTable.subscript.getter();
            v173 = OUTLINED_FUNCTION_5_34();
            sub_237AC3F34(v173, v174, v175, v176, v177, v178, 4, v179);
            v180 = OUTLINED_FUNCTION_84();
            sub_2379DBC9C(v180, v181);
            LOBYTE(v165) = v271;
            OUTLINED_FUNCTION_18_8();
            v182 = swift_allocObject();
            *(v182 + 16) = sub_237AC3BC8;
            *(v182 + 24) = 0;
            OUTLINED_FUNCTION_19_19();
            sub_237AC2170(v183, v184, v185, v165, v186, 2, v187);

            v188 = OUTLINED_FUNCTION_84();
            sub_2379DBC9C(v188, v189);
            v190 = v263;
            v191 = v264;
            OUTLINED_FUNCTION_103();
            v192 = swift_allocObject();
            *(v192 + 16) = v249;
            OUTLINED_FUNCTION_18_8();
            v193 = swift_allocObject();
            *(v193 + 16) = sub_237AC4510;
            *(v193 + 24) = v192;

            v259 = v190;
            LODWORD(v258) = v191;
            sub_237AC2170(sub_237AC44EC, v193, v190, v191, v260, 0, &v263);

            v194 = v263;
            LODWORD(v42) = v264;
            sub_2379DBCF4(v263, v264);
            sub_2379DFD2C(v194, v42);
            sub_2379DBCF4(v172, v153);
            v120 = v172;
            LODWORD(v260) = v153;
            sub_2379DFD2C(v172, v153);
            sub_237A337D4();

            v30 = v247;
            sub_237A347A4();
            sub_237A34D48(v30, v143);
            v7 = v195;
            v196 = v257;
            v197 = v262;
            sub_237A33B40(v257, &v263);
            v262 = v197;
            if (!v197)
            {
              v245 = v194;
              LODWORD(v248) = v42;
              v119 = v259;
              LOBYTE(v42) = v258;
              v249 = v120;
              v268 = v263;
              v269 = v264;
              v215 = OUTLINED_FUNCTION_84();
              sub_2379DBCF4(v215, v216);
              sub_237A3444C();
              sub_2379DBC9C(v268, v269);
              v217 = OUTLINED_FUNCTION_84();
              sub_2379DBC9C(v217, v218);
              v55 = v270;
              LOBYTE(v120) = v271;
              v263 = v270;
              LOBYTE(v264) = v271;
              v219 = v262;
              sub_237A34FA0(v30, v196, 0, &v270);
              v262 = v219;
              if (!v219)
              {
                goto LABEL_73;
              }

              v220 = OUTLINED_FUNCTION_3_41();
              sub_2379DBC9C(v220, v221);
              sub_2379DBC9C(v119, v42);

              OUTLINED_FUNCTION_7_27();
              v222(v30);
              goto LABEL_68;
            }

            (*(v254 + 8))(v30, v255);
            v198 = OUTLINED_FUNCTION_3_41();
            sub_2379DBC9C(v198, v199);
            sub_2379DBC9C(v259, v258);

            sub_2379DBC9C(v194, v42);
            v146 = v120;
            v147 = v260;
          }

          sub_2379DBC9C(v146, v147);
          goto LABEL_68;
        }

        v76 = v262;
        v77 = sub_237B104A0(*(v65[2] + 16), v64);
        if (v76)
        {

          v78 = MEMORY[0x2383DDAC0](0);
          if (!v78)
          {
            goto LABEL_78;
          }

          v79 = v78;
        }

        else
        {
          v79 = v77;
          if (!v77)
          {
            goto LABEL_79;
          }
        }

        type metadata accessor for CMLSequence();
        v90 = swift_allocObject();
        *(v90 + 16) = v79;
        v245 = v90;
        *(v90 + 24) = 1;

        sub_237B6C208(&v263);
        v91 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v91, v92);
        v244 = v263;

        *&v260 = sub_237B6C2FC(v93, v94, v95, v96, v97, v98, v99, v100, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253);
        v101 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v101, v102);
        v103 = v65[2];

        v104 = sub_237A30330();
        v105 = v65[2];
        v240 = sub_237A3035C();
        v262 = 0;
        v106 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v106, v107);
        v55 = MEMORY[0x277D84950];
      }

      if (v64 >= v104)
      {
        __break(1u);
LABEL_75:
        sub_2379E8CE8(v41, v55, v56);
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_unexpectedError();
        __break(1u);
        return;
      }

      ++v64;
      v109 = v260;
      if (!*(v260 + 16))
      {
        goto LABEL_56;
      }

      v110 = sub_237ACAC78(v41, v42);
      if (v111)
      {
        break;
      }

      v55 = MEMORY[0x277D84950];
      v30 = HIDWORD(v241);
    }

    v112 = v262;
    v113 = sub_237A2E9C8(*(*(v109 + 56) + 8 * v110));
    v262 = v112;
    if (v112)
    {
      goto LABEL_81;
    }

    sub_237AFC548(v113, &v263);
    v114 = v263;
    v55 = MEMORY[0x277D84950];
    if (v265 == 4)
    {
      break;
    }

    sub_2379E8CE8(v263, v264, v265);
LABEL_56:

    v30 = HIDWORD(v241);
  }

  v115 = v256;
  if (v263[2] != v235)
  {
    sub_2379E8CE8(v263, v264, 4);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v211 = swift_allocError();
    *v212 = 0xD000000000000072;
    v212[1] = 0x8000000237C1AA30;
    OUTLINED_FUNCTION_23_3(v211, v212);
    v213 = OUTLINED_FUNCTION_3_41();
    sub_2379DBC9C(v213, v214);

    sub_2379DBC9C(v65, v270);
    *v115 = v211;
    type metadata accessor for MLClassifierMetrics.Contents(0);
LABEL_67:
    swift_storeEnumTagMultiPayload();
LABEL_68:
    sub_2379DBC9C(v272, v273);
    return;
  }

  v236 = v64;
  v237 = v264;
  v116 = (v263 + 8);
  v117 = 1 << *(v263 + 32);
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  else
  {
    v118 = -1;
  }

  v119 = v118 & v263[8];
  v120 = (v117 + 63) >> 6;

  v122 = 0;
  v238 = v114;
  while (v119)
  {
LABEL_51:
    v124 = __clz(__rbit64(v119));
    v119 &= v119 - 1;
    v125 = v114[6] + 24 * (v124 | (v122 << 6));
    if (*(v125 + 16) == 2)
    {
      v239 = &v234;
      v42 = *(v125 + 8);
      v263 = *v125;
      v30 = v263;
      v264 = v42;
      MEMORY[0x28223BE20](v121);
      *(&v234 - 2) = &v263;
      OUTLINED_FUNCTION_11_28();
      sub_2379E9288(v126, v127, v128);

      v129 = v262;
      v130 = sub_237AC1CCC(sub_237A06D78, (&v234 - 4), v257);
      v262 = v129;
      OUTLINED_FUNCTION_11_28();
      sub_2379E8CE8(v131, v132, v133);
      if (!v130)
      {
        v263 = 0;
        v264 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000002ALL, 0x8000000237C1AAB0);

        sub_2379E8CE8(v238, v237, 4);
        MEMORY[0x2383DC360](v30, v42);
        OUTLINED_FUNCTION_11_28();
        sub_2379E8CE8(v200, v201, v202);
        MEMORY[0x2383DC360](0xD000000000000031, 0x8000000237C1AAE0);
        v204 = v263;
        v203 = v264;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v148 = swift_allocError();
        *v205 = v204;
        v205[1] = v203;
        OUTLINED_FUNCTION_23_3(v148, v205);

        v206 = OUTLINED_FUNCTION_3_41();
        sub_2379DBC9C(v206, v207);

        OUTLINED_FUNCTION_11_28();
        sub_2379E8CE8(v208, v209, v210);
        v151 = v270;
        v150 = v248;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_11_28();
      sub_2379E8CE8(v134, v135, v136);
      v55 = MEMORY[0x277D84950];
      v114 = v238;
    }
  }

  while (1)
  {
    v123 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      break;
    }

    if (v123 >= v120)
    {

      sub_2379E8CE8(v114, v237, 4);

      v42 = v261;
      v41 = v249;
      v64 = v236;
      v30 = HIDWORD(v241);
      goto LABEL_18;
    }

    v119 = *&v116[8 * v123];
    ++v122;
    if (v119)
    {
      v122 = v123;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_73:
  v223 = v270;
  v224 = v30;
  v225 = v271;
  v270 = v55;
  v271 = v120;
  sub_2379DBCF4(v55, v120);
  v226 = v250;
  sub_237A70ED4(&v270, v250);
  v270 = v223;
  v271 = v225;
  sub_2379DBCF4(v223, v225);
  sub_237A70ED4(&v270, v253);
  v227 = OUTLINED_FUNCTION_3_41();
  sub_2379DBC9C(v227, v228);
  sub_2379DBC9C(v119, v42);

  sub_2379DBC9C(v223, v225);
  OUTLINED_FUNCTION_7_27();
  v229(v224);
  v230 = v246;
  *v246 = 1.0 - v7;
  v231 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v232 = v252;
  v233 = *(v251 + 32);
  v233(v230 + *(v231 + 20), v226, v252);
  v233(v230 + *(v231 + 24), v253, v232);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  sub_2379DBC9C(v272, v273);
  sub_237AC4460(v230, v256);
}

uint64_t sub_237AC3B3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == 2)
  {
    v4 = a1[1];
    v5 = *a1;
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_237AC3B88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) == 4)
  {
    v3 = *a1;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_237AC3BC8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_237AC1D7C(*a1, v6);
  v3 = v7;
  if (v7 == 255)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v4 = v6[0];
    v5 = v6[1];
    sub_2379E8CE8(v8, v9, v10);
    if (v3 != 2)
    {
      sub_2379E8CE8(v4, v5, v3);
      v4 = 0;
      v5 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t *sub_237AC3C50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_237ACAC78(*result, result[1]), (v5 & 1) != 0))
  {
    v6 = 0;
    v7 = *(*(a2 + 56) + 24 * result);
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v6;
  return result;
}

void static MLRegressorMetrics.__evaluation(on:targetColumn:predictionColumn:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  OUTLINED_FUNCTION_17_18();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_10_29();
  v5 = v50;
  v6 = v51;
  if ((v51 & 1) != 0 || (v7 = OUTLINED_FUNCTION_3_22(), sub_2379DBCF4(v7, v8), sub_237A60248(v49), v9 = OUTLINED_FUNCTION_3_22(), sub_2379DBC9C(v9, v10), v49[0] != 1))
  {
    sub_2379DBC9C(v5, v6);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_8_27();
    *v37 = v38;
    v37[1] = 0x8000000237C1ABC0;
    OUTLINED_FUNCTION_23_3(v39, v37);
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_17_18();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_10_29();
  v11 = v50;
  v12 = v51;
  if ((v51 & 1) != 0 || (v13 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v13, v14), sub_237A60248(v49), v15 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v15, v16), v49[0] != 1))
  {
    sub_2379DBC9C(v11, v12);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_8_27();
    *v41 = v40 + 4;
    v41[1] = 0x8000000237C1ABF0;
    OUTLINED_FUNCTION_23_3(v42, v41);
    swift_willThrow();
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_3_22();
  sub_2379DBCF4(v17, v18);
  v19 = OUTLINED_FUNCTION_3_22();
  v21 = sub_2379DFE44(v19, v20);
  v22 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v22, v23);
  v24 = OUTLINED_FUNCTION_85();
  v26 = sub_2379DFE44(v24, v25);
  sub_237A3326C(v21, v26);
  v28 = v27;
  v29 = sub_237A3347C(v21, v26);
  v31 = v30;

  if (v31)
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_8_27();
    *v33 = v32 + 23;
    v33[1] = 0x8000000237C1AC30;
    OUTLINED_FUNCTION_23_3(v34, v33);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v35, v36);
LABEL_9:
    v43 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v43, v44);
    return;
  }

  v45 = OUTLINED_FUNCTION_3_22();
  sub_2379DBC9C(v45, v46);
  v47 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v47, v48);
  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = 0;
}

void sub_237AC3F34(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_18_8();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  if (a5)
  {

    v18 = OUTLINED_FUNCTION_21_19();
    sub_2379DBCF4(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (!sub_237C0925C())
    {
      OUTLINED_FUNCTION_50();
      v8 = swift_allocError();
      *v26 = a4;

      goto LABEL_6;
    }

    OUTLINED_FUNCTION_38_6();

    v20 = OUTLINED_FUNCTION_21_19();
  }

  else
  {
    v22 = *(a4 + 16);

    v23 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v23, v24);
    v25 = sub_237A2F37C(a6, v17, a7, a1 & 1);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v8 = swift_allocObject();
    *(v8 + 16) = v25;

    v20 = OUTLINED_FUNCTION_4_26();
  }

  sub_2379DBC9C(v20, v21);
LABEL_6:
  *a8 = v8;
  *(a8 + 8) = a5 & 1;
}

uint64_t sub_237AC40A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{

  sub_237AFC548(v3, v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v10;
  a2(&v13, v9);
  if (v13)
  {
    v11 = &type metadata for MLDataValue.MultiArrayType;
    v12 = &off_284AC3CA8;
    v9[0] = v13;
    __swift_project_boxed_opaque_existential_1(v9, &type metadata for MLDataValue.MultiArrayType);
    v7 = sub_237AC85C4();
    sub_2379E8CE8(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v7 = sub_237A2E78C();
    sub_2379E8CE8(v4, v5, v6);
  }

  return v7;
}

uint64_t sub_237AC4184(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{

  sub_237AFC548(v3, v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v10;
  a2(&v13, v9);
  if (v13)
  {
    v11 = &type metadata for MLDataValue.DictionaryType;
    v12 = &off_284AC46D8;
    v9[0] = v13;
    __swift_project_boxed_opaque_existential_1(v9, &type metadata for MLDataValue.DictionaryType);
    v7 = sub_237AFF290();
    sub_2379E8CE8(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {

    type metadata accessor for CMLFeatureValue();
    v7 = sub_237A2E78C();
    sub_2379E8CE8(v4, v5, v6);
  }

  return v7;
}

uint64_t sub_237AC426C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{

  sub_237AFC548(v3, v12);
  v4 = v12[0];
  v5 = v12[1];
  v6 = v13;
  a2(&v10, v12);
  if (v11)
  {
    v7 = sub_237B297D0(v10, v11);
    sub_2379E8CE8(v4, v5, v6);

    return v7;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v9 = sub_237A2E78C();
    sub_2379E8CE8(v4, v5, v6);
    return v9;
  }
}

uint64_t sub_237AC4360()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_103();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_237AC43B0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237AC2718(*a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_237AC43DC@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a3@<X8>)
{
  result = sub_237AC2770(*a1, a1[1], a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_237AC442C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_237AC4460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_7_27()
{
  sub_2379DBC9C(*(v0 + 120), *(v0 + 208));
  sub_2379DBC9C(*(v0 + 88), *(v0 + 112));
  sub_2379DBC9C(v1, v2);
  v3 = *(v0 + 168);
  v4 = *(*(v0 + 160) + 8);
}

__n128 OUTLINED_FUNCTION_9_28(__n128 *a1)
{
  result = v1[13];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_10_29()
{

  MLUntypedColumn.init(doubles:)();
}

uint64_t OUTLINED_FUNCTION_23_18()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_24_17()
{
  v3 = *(v0 + 232);

  return sub_2379F21A4(v0 + 288, v1, (v0 + 360));
}

uint64_t sub_237AC4674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v9);
  v213 = sub_237C07C8C();
  v10 = OUTLINED_FUNCTION_0(v213);
  *&v251 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v14);
  v230 = sub_237C07D0C();
  v15 = OUTLINED_FUNCTION_0(v230);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  v241 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  v246 = v22;
  OUTLINED_FUNCTION_41_0();
  v247 = sub_237C07B9C();
  v23 = OUTLINED_FUNCTION_0(v247);
  v244 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_0();
  v245 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  v242 = v30;
  OUTLINED_FUNCTION_41_0();
  v203 = sub_237C0757C();
  v31 = OUTLINED_FUNCTION_0(v203);
  v202 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v35);
  v211 = sub_237C075DC();
  v36 = OUTLINED_FUNCTION_0(v211);
  v249 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v40);
  v216 = sub_237C0818C();
  v41 = OUTLINED_FUNCTION_0(v216);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v47);
  v236[0] = sub_237C07F1C();
  v48 = OUTLINED_FUNCTION_0(v236[0]);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  v58 = v200 - v57;
  sub_237C07F0C();
  v243 = v58;
  sub_237C07E0C();
  v59 = sub_237AC6348(a1);
  v60 = sub_237B42F98(v59);
  v254 = v60;

  v229 = a3;
  v61 = sub_237AC6418(a2, a3, v60);
  v63 = v62;

  v200[2] = v61;
  v200[1] = v63;
  sub_237B4694C(&v252, v61, v63);

  v64 = *(a1 + 16);
  v232 = v50;
  if (v64)
  {
    v233[1] = a2;
    v250 = 0;
    v236[1] = v244 + 16;
    v240 = (v244 + 32);
    v225 = v50 + 16;
    v224 = v50 + 32;
    v222 = v50 + 8;
    v209 = *MEMORY[0x277D251F0];
    v208 = v251 + 104;
    v207 = *MEMORY[0x277D25320];
    v206 = v43 + 104;
    v205 = *MEMORY[0x277D25130];
    v204 = v249 + 104;
    v237 = (v17 + 16);
    v236[4] = v17 + 8;
    v236[3] = v244 + 8;
    v236[2] = v17 + 32;
    v226 = a1;
    v65 = (a1 + 56);
    v223 = xmmword_237C0B660;
    *&v251 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v66 = v17;
    v67 = v230;
    v238 = v43;
    v239 = v66;
    v68 = v242;
    do
    {
      v70 = *(v65 - 3);
      v69 = *(v65 - 2);
      v71 = *(v65 - 1);
      v72 = *v65;

      sub_237A1E09C(v71, v72);
      OUTLINED_FUNCTION_16_16();
      sub_237B991A4(v71, v72, v73);
      v248 = v65 + 32;
      v249 = v64;
      v74 = v250;
      switch(v72)
      {
        case 4uLL:
          OUTLINED_FUNCTION_11_29();
          v125 = OUTLINED_FUNCTION_16_16();
          MEMORY[0x2383DC360](v125);

          v126 = OUTLINED_FUNCTION_23_19();
          v128 = *(v127 - 256);
          v131 = sub_237AC6418(v126, v129, v130);
          v133 = v132;

          sub_237B4694C(&v252, v131, v133);

          v134 = v71[2];

          sub_237C07CFC();
          v76 = __OFADD__(v74, v134);
          v135 = &v74[v134];
          if (v76)
          {
            goto LABEL_42;
          }

          v220 = v131;
          v221 = v133;
          v233[0] = v69;
          sub_237C07F0C();
          sub_237C07E0C();
          v252 = v71;

          v136 = v231;
          sub_237AE6A58();
          v75 = &v253;
          v231 = v136;
          if (v136)
          {
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_9_29(v236);
          v137(v212, v209, v213);
          v138 = v210;
          sub_237C07C9C();
          OUTLINED_FUNCTION_9_29(&v234);
          v139(v138, v207, v216);
          sub_237C07E4C();
          v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
          v140 = *(v244 + 72);
          v141 = (*(v244 + 80) + 32) & ~*(v244 + 80);
          *(swift_allocObject() + 16) = v223;

          v142 = v217;
          sub_237C0756C();
          OUTLINED_FUNCTION_9_29(v233);
          v143(v142, v205, v211);
          OUTLINED_FUNCTION_13_21();
          sub_237C07B3C();
          sub_237C07E9C();
          v218 = v140;
          v144 = v234;
          *(swift_allocObject() + 16) = v223;

          sub_237C075BC();
          v219 = v141;
          OUTLINED_FUNCTION_13_21();
          sub_237C07B3C();
          sub_237C07ECC();
          OUTLINED_FUNCTION_9_29(&v250);
          v145 = OUTLINED_FUNCTION_20_16();
          v146(v145);
          v147 = v235;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = *(v147 + 16);
            OUTLINED_FUNCTION_7_10();
            sub_237BC1568();
            v147 = v183;
          }

          v149 = *(v147 + 16);
          v148 = *(v147 + 24);
          v250 = v135;
          if (v149 >= v148 >> 1)
          {
            sub_237BC1568();
            v147 = v184;
          }

          *(v147 + 16) = v149 + 1;
          OUTLINED_FUNCTION_8_22();
          v235 = v147;
          v152 = v147 + v150 + *(v151 + 72) * v149;
          v153 = *(v151 + 32);
          OUTLINED_FUNCTION_12_24();
          v154();
          v155 = sub_237C07EBC();
          v156 = v214;
          sub_237B3B424(v155, v214);

          v87 = v247;
          if (__swift_getEnumTagSinglePayload(v156, 1, v247) == 1)
          {
            goto LABEL_45;
          }

          v157 = v144;

          v158 = OUTLINED_FUNCTION_26_14();
          v160 = v159;
          sub_237A9D14C();
          v161 = *(*v160 + 16);
          sub_237A9D2E0(v161);
          v162 = *v160;
          *(v162 + 16) = v161 + 1;
          (*v240)(v162 + v219 + v161 * v218, v156, v87);
          v163 = OUTLINED_FUNCTION_14_20();
          v158(v163);

          sub_237A1E0B0(v71, 4);
          OUTLINED_FUNCTION_9_29(&v246);
          v118 = v157;
LABEL_32:
          v117(v118, v70);
          v70 = v241;
          v67 = v230;
          break;
        case 5uLL:
          OUTLINED_FUNCTION_11_29();
          v89 = OUTLINED_FUNCTION_16_16();
          MEMORY[0x2383DC360](v89);

          v90 = OUTLINED_FUNCTION_23_19();
          v92 = *(v91 - 256);
          v95 = sub_237AC6418(v90, v93, v94);
          v97 = v96;

          sub_237B4694C(&v252, v95, v97);

          v98 = v71[2];

          sub_237C07CFC();
          v76 = __OFADD__(v74, v98);
          v99 = &v74[v98];
          if (v76)
          {
            goto LABEL_44;
          }

          v100 = v70;
          v70 = v69;
          sub_237AC6594(v100, v69, v95, v97, v71);
          OUTLINED_FUNCTION_9_29(&v250);
          v101 = OUTLINED_FUNCTION_20_16();
          v102(v101);
          v103 = v235;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v176 = *(v103 + 16);
            OUTLINED_FUNCTION_7_10();
            sub_237BC1568();
            v103 = v177;
          }

          v104 = v215;
          v106 = *(v103 + 16);
          v105 = *(v103 + 24);
          v250 = v99;
          if (v106 >= v105 >> 1)
          {
            sub_237BC1568();
            v103 = v178;
          }

          *(v103 + 16) = v106 + 1;
          OUTLINED_FUNCTION_8_22();
          v235 = v103;
          OUTLINED_FUNCTION_15_21(v103 + v107);
          OUTLINED_FUNCTION_12_24();
          v108();
          v109 = v227;
          v110 = sub_237C07EBC();
          sub_237B3B424(v110, v104);

          v87 = v247;
          if (__swift_getEnumTagSinglePayload(v104, 1, v247) == 1)
          {
            goto LABEL_46;
          }

          v111 = OUTLINED_FUNCTION_26_14();
          v113 = v112;
          sub_237A9D14C();
          v114 = *(*v113 + 16);
          sub_237A9D2E0(v114);
          v115 = *v113;
          *(v115 + 16) = v114 + 1;
          (*(v244 + 32))(v115 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v114, v104, v87);
          v116 = OUTLINED_FUNCTION_14_20();
          v111(v116);

          sub_237A1E0B0(v71, 5);
          OUTLINED_FUNCTION_9_29(&v246);
          v118 = v109;
          goto LABEL_32;
        case 6uLL:
          OUTLINED_FUNCTION_16_16();
          sub_237C07CFC();
          sub_237A1E0B0(v71, 6);
          v76 = __OFADD__(v74, 1);
          v119 = v74 + 1;
          if (v76)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_9_29(&v255);
          v120(v228, v68, v247);
          v121 = OUTLINED_FUNCTION_26_14();
          v123 = OUTLINED_FUNCTION_25_15(v121, v122);
          *v71 = v64;
          v250 = v119;
          if ((v123 & 1) == 0)
          {
            v179 = *(v64 + 16);
            OUTLINED_FUNCTION_7_10();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v180);
          }

          OUTLINED_FUNCTION_21_20();
          if (v82)
          {
            OUTLINED_FUNCTION_18_22();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v181);
          }

          *(v64 + 16) = v119;
          OUTLINED_FUNCTION_8_22();
          v84 = OUTLINED_FUNCTION_15_21(v64 + v124);
          v86 = v228;
          goto LABEL_10;
        default:
          OUTLINED_FUNCTION_16_16();
          sub_237C07CFC();
          sub_237A1E0B0(v71, v72);
          v76 = __OFADD__(v74, v71);
          v77 = v71 + v74;
          if (v76)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:

            __break(1u);
            JUMPOUT(0x237AC58D4);
          }

          OUTLINED_FUNCTION_9_29(&v255);
          v78(v245, v68, v247);
          v79 = OUTLINED_FUNCTION_26_14();
          v81 = OUTLINED_FUNCTION_25_15(v79, v80);
          *v71 = v64;
          v250 = v77;
          if ((v81 & 1) == 0)
          {
            v173 = *(v64 + 16);
            OUTLINED_FUNCTION_7_10();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v174);
          }

          OUTLINED_FUNCTION_21_20();
          if (v82)
          {
            OUTLINED_FUNCTION_18_22();
            sub_237BC16F8();
            OUTLINED_FUNCTION_19_20(v175);
          }

          *(v64 + 16) = v77;
          OUTLINED_FUNCTION_8_22();
          v84 = OUTLINED_FUNCTION_15_21(v64 + v83);
          v86 = v245;
LABEL_10:
          v87 = v247;
          v85(v84, v86, v247);
          v88 = OUTLINED_FUNCTION_14_20();
          v72(v88);
          break;
      }

      v164 = v246;
      (*v237)(v70, v246, v67);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166 = v239;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v170 = *(v251 + 16);
        OUTLINED_FUNCTION_7_10();
        sub_237BC1630();
        *&v251 = v171;
      }

      v167 = *(v251 + 16);
      if (v167 >= *(v251 + 24) >> 1)
      {
        sub_237BC1630();
        *&v251 = v172;
      }

      (*(v166 + 8))(v164, v67);
      OUTLINED_FUNCTION_9_29(&v256);
      v68 = v242;
      v168(v242, v87);
      v169 = v251;
      *(v251 + 16) = v167 + 1;
      (*(v166 + 32))(v169 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v167, v70, v67);
      v65 = v248;
      v64 = v249 - 1;
      v43 = v238;
    }

    while (v249 != 1);
  }

  else
  {
    v250 = 0;
    *&v251 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
  }

  v185 = v200[3];
  sub_237C07D1C();
  (*(v43 + 104))(v185, *MEMORY[0x277D25348], v216);
  v186 = v243;
  sub_237C07E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v187 = *(v244 + 72);
  v188 = (*(v244 + 80) + 32) & ~*(v244 + 80);
  v189 = swift_allocObject();
  v251 = xmmword_237C0B660;
  *(v189 + 16) = xmmword_237C0B660;
  v190 = v202;
  v191 = v201;
  v192 = v203;
  (*(v202 + 104))(v201, *MEMORY[0x277D250F0], v203);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v193 = swift_allocObject();
  *(v193 + 16) = v251;
  *(v193 + 32) = v250;
  sub_237C0750C();

  (*(v190 + 8))(v191, v192);
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  sub_237C07ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v194 = v232;
  v195 = *(v232 + 72);
  v196 = *(v232 + 80);
  v197 = OUTLINED_FUNCTION_24_18();
  *(v197 + 16) = v251;
  v198 = v236[0];
  (*(v194 + 16))(&v186[v197], v186, v236[0]);
  v252 = v235;
  sub_237A969F0(v197);
  (*(v194 + 8))(v186, v198);
  return v252;
}

void sub_237AC58F0(uint64_t a1@<X8>)
{
  v124 = a1;
  v2 = sub_237C0818C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v123 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_22();
  v122 = v7;
  OUTLINED_FUNCTION_41_0();
  v135 = sub_237C07B9C();
  v8 = OUTLINED_FUNCTION_0(v135);
  v121 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v12);
  v120 = sub_237C075DC();
  v13 = OUTLINED_FUNCTION_0(v120);
  v118 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_22();
  v119 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v117 = (&v111 - v20);
  OUTLINED_FUNCTION_41_0();
  v21 = sub_237C07F1C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v126 = v23;
  v127 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  v125 = v26;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  v129 = v28;
  OUTLINED_FUNCTION_41_0();
  v29 = sub_237C0596C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v131 = v31;
  v132 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  v37 = sub_237C05C2C();
  v38 = OUTLINED_FUNCTION_0(v37);
  v130 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  v44 = v43 - v42;
  v45 = sub_237C05ADC();
  v46 = OUTLINED_FUNCTION_0(v45);
  v133 = v47;
  v134 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_0();
  v128 = v50;
  OUTLINED_FUNCTION_39_0();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v111 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v111 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v111 - v58;
  v60 = v1[2];
  if (!v60)
  {
    goto LABEL_14;
  }

  v61 = v138;
  v62 = sub_237AC4674(v1[2], v1[3], v1[4]);
  if (v61)
  {
    return;
  }

  v112 = v60;
  v114 = v1;
  v138 = v62;
  v115 = v59;
  v113 = v2;
  v63 = objc_opt_self();
  v64 = [v63 defaultManager];
  sub_2379F364C();

  v65 = [v63 defaultManager];
  sub_2379F3528();

  sub_237C05C1C();
  v66 = sub_237C05C0C();
  v68 = v67;
  (*(v130 + 1))(v44, v37);
  v136 = v66;
  v137 = v68;
  v70 = v131;
  v69 = v132;
  (*(v131 + 104))(v36, *MEMORY[0x277CC91D8], v132);
  sub_2379F3408();
  sub_237C05ACC();
  (*(v70 + 8))(v36, v69);

  v71 = v133;
  v73 = v133 + 8;
  v72 = *(v133 + 8);
  v74 = v54;
  v75 = v134;
  v72(v74, v134);
  v76 = v115;
  sub_237C05A3C();
  v72(v57, v75);
  v77 = v114 + *(_s5ModelVMa_2() + 24);
  sub_237C0705C();
  (*(v71 + 16))(v128, v76, v75);
  v78 = v129;
  sub_237C07D8C();
  v131 = 0;
  v79 = v117;
  sub_237A9AA94(v138, v117);
  v80 = v127;
  if (__swift_getEnumTagSinglePayload(v79, 1, v127) == 1)
  {
    __break(1u);
LABEL_14:
    sub_237C090DC();
    __break(1u);
    return;
  }

  v130 = v72;
  sub_237C07EBC();
  v81 = *(v126 + 8);
  v128 = v126 + 8;
  v117 = v81;
  (v81)(v79, v80);
  sub_237C07E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v82 = v121;
  v83 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v133 = *(v121 + 72);
  v84 = swift_allocObject();
  v111 = xmmword_237C0B660;
  *(v84 + 16) = xmmword_237C0B660;
  v85 = *v114;
  v86 = v114[1];
  swift_bridgeObjectRetain_n();
  v87 = v119;
  sub_237C0755C();
  (*(v118 + 104))(v87, *MEMORY[0x277D25128], v120);

  v132 = v83;
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  sub_237C07ECC();
  v119 = v86;
  v120 = v85;
  sub_237C07DEC();
  v88 = MEMORY[0x277D84F90];
  sub_237C085AC();
  sub_237C07EFC();
  sub_237C07F0C();
  sub_237C07E0C();
  v89 = *(v112 + 16);
  if (v89)
  {
    v118 = v73;
    v136 = v88;
    v90 = v112;
    sub_237AC8CF4(0, v89, 0);
    v91 = v136;
    v92 = (v82 + 32);
    v93 = (v90 + 56);
    v94 = v116;
    do
    {
      v95 = *(v93 - 3);
      v96 = *(v93 - 2);
      v97 = *(v93 - 1);
      v98 = *v93;

      sub_237A1E09C(v97, v98);
      sub_237B991A4(v97, v98, v94);

      sub_237A1E0B0(v97, v98);
      v136 = v91;
      v99 = *(v91 + 16);
      if (v99 >= *(v91 + 24) >> 1)
      {
        OUTLINED_FUNCTION_18_22();
        sub_237AC8CF4(v100, v101, v102);
        v91 = v136;
      }

      v93 += 32;
      *(v91 + 16) = v99 + 1;
      (*v92)(v91 + v132 + v99 * v133, v94, v135);
      --v89;
    }

    while (v89);
    v103 = v127;
    v78 = v129;
    v75 = v134;
  }

  else
  {
    v103 = v127;
  }

  v104 = v125;
  sub_237C07E9C();
  sub_237C07EBC();
  sub_237C07ECC();
  sub_237C07DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v105 = v126;
  v106 = *(v126 + 72);
  v107 = *(v126 + 80);
  v108 = OUTLINED_FUNCTION_24_18();
  *(v108 + 16) = v111;
  (*(v105 + 16))(v108 + v104, v78, v103);
  v136 = v138;
  sub_237A969F0(v108);
  v109 = v122;
  sub_237C07D2C();
  (*(v123 + 104))(v109, *MEMORY[0x277D25350], v113);
  sub_237C07E4C();
  (v117)(v78, v103);
  (*(v105 + 32))(v124, v104, v103);
  v110 = v115;
  sub_237A64C34();
  v130(v110, v75);
}

uint64_t sub_237AC6348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_237AC8A74();
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237AC6418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_237A0C9C4(a1, a2, a3))
  {

    return a1;
  }

  v6 = 1;
  v7 = MEMORY[0x277D83B88];
LABEL_3:

  MEMORY[0x2383DC360](95, 0xE100000000000000);
  v8 = sub_237C0924C();
  MEMORY[0x2383DC360](v8);

  if (!__OFADD__(v6++, 1))
  {
    if (*(a3 + 16))
    {
      v11 = v7;
      v12 = *(a3 + 40);
      sub_237C093CC();
      sub_237C0878C();
      v13 = sub_237C0940C();
      v14 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(a3 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        v16 = (*(a3 + 48) + 16 * v15);
        if (*v16 != a1 || v16[1] != a2)
        {
          v18 = sub_237C0929C();
          v13 = v15 + 1;
          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v11;
        goto LABEL_3;
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237AC6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_237C075DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_41_0();
  v8 = sub_237C0818C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  sub_237C07F0C();
  sub_237C07E0C();
  v17 = *(a5 + 16);
  if (v17)
  {
    v28 = v11;
    v29 = v8;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v18 = (a5 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(v30 + 16);
      v22 = *(v30 + 24);

      if (v21 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_18_22();
        sub_237AC8A74();
      }

      *(v30 + 16) = v21 + 1;
      v23 = v30 + 16 * v21;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v18 += 4;
      --v17;
    }

    while (v17);
    v8 = v29;
    v11 = v28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_237AA2F98();
  sub_237C07D4C();
  (*(v11 + 104))(v16, *MEMORY[0x277D25378], v8);
  sub_237C07E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v24 = *(sub_237C07B9C() - 8);
  v25 = *(v24 + 72);
  v26 = *(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_237C0B660;

  sub_237C075CC();
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  sub_237C07E9C();
  *(swift_allocObject() + 16) = xmmword_237C0B660;

  sub_237C075BC();
  OUTLINED_FUNCTION_13_21();
  sub_237C07B3C();
  return sub_237C07ECC();
}

uint64_t OUTLINED_FUNCTION_11_29()
{
  *(v0 - 120) = 0x5F6465646F636E65;
  *(v0 - 112) = 0xE800000000000000;
}

void OUTLINED_FUNCTION_12_24()
{
  v2 = *(v0 - 256);
  v3 = *(v1 - 296);
  v4 = *(v1 - 416);
}

uint64_t OUTLINED_FUNCTION_15_21@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  result = *(v0 - 256);
  v3 = *(v1 - 296);
  return result;
}

void OUTLINED_FUNCTION_21_20()
{
  v2 = *(v1 - 224);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_23_19()
{
  result = *(v0 - 120);
  v2 = *(v0 - 112);
  v3 = *(v0 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  v2 = *(v0 - 208);

  return MEMORY[0x282184150](v0 - 120);
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(_:)(MLMultiArray a1)
{
  v4 = v1;
  result._contents.super.isa = [(objc_class *)a1.super.isa dataType];
  if (result._contents.super.isa == 65600)
  {
    isa = a1.super.isa;
LABEL_48:
    *v4 = isa;
    return result;
  }

  v56 = v4;
  v7 = [(objc_class *)a1.super.isa shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  sub_237C0893C();

  v8 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v9 = OUTLINED_FUNCTION_4_40();
  if (!v2)
  {
    v58 = v9;
    v10 = &off_278A42000;
    v11 = [(objc_class *)a1.super.isa strides];
    v12 = sub_237C0893C();

    v13 = sub_237A24B6C(v12);
    v57 = a1.super.isa;
    if (v13)
    {
      v14 = v13;
      OUTLINED_FUNCTION_2_44();
      if (v14 < 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      v15 = 0;
      v16 = v59;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2383DCAF0](v15, v12);
        }

        else
        {
          v17 = *(v12 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 integerValue];

        v59 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          OUTLINED_FUNCTION_3_42(v20);
          sub_237AC8A34();
          v16 = v59;
        }

        ++v15;
        *(v16 + 16) = v21 + 1;
        *(v16 + 8 * v21 + 32) = v19;
      }

      while (v14 != v15);

      v10 = &off_278A42000;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v22 = [v58 v10[240]];

    v23 = sub_237C0893C();
    v24 = sub_237A24B6C(v23);
    if (!v24)
    {

      v27 = MEMORY[0x277D84F90];
LABEL_26:
      v33 = [(objc_class *)v57 shape];
      v34 = sub_237C0893C();

      v35 = sub_237A24B6C(v34);
      if (!v35)
      {

        v38 = MEMORY[0x277D84F90];
LABEL_37:
        v44 = sub_237AC6FE0(v16, v27);

        if ((v44 & 1) == 0)
        {
          if ([(objc_class *)v57 count]< 1)
          {

            v4 = v56;
            isa = v58;
          }

          else
          {
            v59 = sub_237AC78F4([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_], *(v38 + 16));
            do
            {
              v49 = sub_237C0892C();
              v50 = [(objc_class *)v57 objectForKeyedSubscript:v49];

              [v50 doubleValue];
              v52 = v51;

              v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
              v54 = sub_237C0892C();
              [v58 setObject:v53 forKeyedSubscript:v54];

              sub_237AC7CA0(v38, &v59);
            }

            while ((v55 & 1) != 0);

            v4 = v56;
            isa = v58;
          }

          goto LABEL_48;
        }

        v45 = [(objc_class *)v57 count];
        isa = v58;
        if ((v45 & 0x8000000000000000) == 0)
        {
          v46 = v45;
          if (v45)
          {
            v47 = 0;
            do
            {
              v48 = [(objc_class *)v57 objectAtIndexedSubscript:v47];
              [v58 setObject:v48 atIndexedSubscript:v47];

              ++v47;
            }

            while (v46 != v47);
          }

          v4 = v56;
          goto LABEL_48;
        }

        goto LABEL_52;
      }

      v36 = v35;
      OUTLINED_FUNCTION_2_44();
      if ((v36 & 0x8000000000000000) == 0)
      {
        v37 = 0;
        v38 = v59;
        do
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x2383DCAF0](v37, v34);
          }

          else
          {
            v39 = *(v34 + 8 * v37 + 32);
          }

          v40 = v39;
          v41 = [v39 integerValue];

          v59 = v38;
          v43 = *(v38 + 16);
          v42 = *(v38 + 24);
          if (v43 >= v42 >> 1)
          {
            OUTLINED_FUNCTION_3_42(v42);
            sub_237AC8A34();
            v38 = v59;
          }

          ++v37;
          *(v38 + 16) = v43 + 1;
          *(v38 + 8 * v43 + 32) = v41;
        }

        while (v36 != v37);

        goto LABEL_37;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v25 = v24;
    OUTLINED_FUNCTION_2_44();
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v59;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x2383DCAF0](v26, v23);
        }

        else
        {
          v28 = *(v23 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 integerValue];

        v59 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_3_42(v31);
          sub_237AC8A34();
          v27 = v59;
        }

        ++v26;
        *(v27 + 16) = v32 + 1;
        *(v27 + 8 * v32 + 32) = v30;
      }

      while (v25 != v26);

      goto LABEL_26;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_53:
  OUTLINED_FUNCTION_2_29();
  result._contents.super.isa = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237AC6FE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237AC703C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_237C0929C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_237AC70C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v9 || (v10 = *(a1 + 40), v11 = *(a2 + 40), (sub_237C0929C() & 1) != 0))
    {
      v38 = a1 + 32;
      v12 = a2 + 32;
      v13 = 1;
      while (1)
      {
        switch(v6)
        {
          case 1:

            OUTLINED_FUNCTION_1_42();
            if (v21 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_67;
          case 2:

            OUTLINED_FUNCTION_1_42();
            if (v19 != 2)
            {
              goto LABEL_67;
            }

            goto LABEL_33;
          case 3:

            OUTLINED_FUNCTION_1_42();
            if (v20 != 3)
            {
              goto LABEL_67;
            }

            goto LABEL_33;
          case 4:
            if (v8 != 4)
            {
              return 0;
            }

            v14 = *(v5 + 16);
            if (v14 != *(v7 + 16))
            {
              return 0;
            }

            if (v14)
            {
              v15 = v5 == v7;
            }

            else
            {
              v15 = 1;
            }

            if (v15)
            {
              goto LABEL_58;
            }

            v16 = (v5 + 40);
            v17 = (v7 + 40);
            while (2)
            {
              if (!v14)
              {
                goto LABEL_70;
              }

              v18 = *(v16 - 1) == *(v17 - 1) && *v16 == *v17;
              if (v18 || (sub_237C0929C() & 1) != 0)
              {
                v16 += 2;
                v17 += 2;
                if (!--v14)
                {
                  goto LABEL_58;
                }

                continue;
              }

              return 0;
            }

          case 5:
            if (v8 != 5)
            {
              return 0;
            }

            sub_237A1E09C(v7, 5);
            sub_237A1E09C(v5, 5);
            v22 = sub_237AC70C8(v5, v7);

            sub_237A1E0B0(v7, 5);

            sub_237A1E0B0(v5, 5);
            if ((v22 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_58;
          case 6:
            switch(v5)
            {
              case 1:

                OUTLINED_FUNCTION_1_42();
                if (v28 != 6 || v7 != 1)
                {
                  goto LABEL_67;
                }

                goto LABEL_57;
              case 2:

                OUTLINED_FUNCTION_1_42();
                if (v24 != 6 || v7 != 2)
                {
                  goto LABEL_67;
                }

                goto LABEL_57;
              case 3:

                OUTLINED_FUNCTION_1_42();
                if (v26 != 6 || v7 != 3)
                {
                  goto LABEL_67;
                }

                goto LABEL_57;
              default:

                OUTLINED_FUNCTION_1_42();
                if (v23 != 6 || v7)
                {
                  goto LABEL_67;
                }

LABEL_57:

                break;
            }

            goto LABEL_58;
          default:

            sub_237A1E09C(v7, v8);
            if (v8)
            {
LABEL_67:

              sub_237A1E0B0(v7, v8);
              return 0;
            }

LABEL_33:

            if (v5 != v7)
            {
              return 0;
            }

LABEL_58:
            if (v13 == v2)
            {
              return 1;
            }

            if (v13 >= v2)
            {
              __break(1u);
LABEL_70:
              __break(1u);
              JUMPOUT(0x237AC7410);
            }

            v30 = v13 + 1;
            v31 = (v38 + 32 * v13);
            v32 = *v31;
            v33 = v31[1];
            v5 = v31[2];
            v6 = *(v31 + 24);
            v34 = v12 + 32 * v13;
            v7 = *(v34 + 16);
            v8 = *(v34 + 24);
            v35 = v32 == *v34 && v33 == *(v34 + 8);
            ++v13;
            if (!v35)
            {
              v36 = *(v34 + 8);
              v13 = v30;
              if ((sub_237C0929C() & 1) == 0)
              {
                return 0;
              }
            }

            break;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_237AC743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_237AC8F14();
    v22 = sub_237C0867C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237AC762C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_2379E9288(v15, v5, v6);
        sub_2379E9288(v7, v8, v9);
        v10 = static MLDataValue.== infix(_:_:)(&v15, &v12);
        sub_2379E8CE8(v12, v13, v14);
        sub_2379E8CE8(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_237AC7718(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_237C090EC())
  {
    if (a2 >> 62)
    {
      result = sub_237C090EC();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x2383DCAF0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x2383DCAF0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_237C08CEC();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void *sub_237AC78F4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v4 = sub_237C0898C();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }

        v6 = v3;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

uint64_t sub_237AC7988(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_237C0898C();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_237AC7A20(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_237C0898C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_237C10D40)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_237AC7AC4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
      v4 = sub_237C0898C();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

id MLDataValue.MultiArrayType.dataValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  return v2;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(shape:)(Swift::OpaquePointer shape)
{
  v3 = v1;
  v4 = *(shape._rawValue + 2);
  if (v4)
  {
    v9 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_237C08F8C();
      v6 = *(v9 + 16);
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result._contents.super.isa = OUTLINED_FUNCTION_4_40();
  if (shape._rawValue)
  {
    OUTLINED_FUNCTION_2_29();
    result._contents.super.isa = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3->_contents.super.isa = result._contents.super.isa;
  }

  return result;
}

void sub_237AC7CA0(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = sub_237A24B6C(*a2);
  if (__OFSUB__(v5, 1))
  {
LABEL_33:
    __break(1u);
  }

  else
  {
    for (i = v5; ; --i)
    {
      v7 = i - 1;
      if (i - 1 < 0)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383DCAF0](i - 1, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v8 = *(v4 + 8 * i + 24);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_237B06298(v4);
      }

      v12 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = v12 + 8 * i;
      v14 = *(v13 + 24);
      *(v13 + 24) = v11;

      *a2 = v4;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383DCAF0](i - 1, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v15 = *(v4 + 8 * i + 24);
      }

      v16 = v15;
      v17 = [v15 integerValue];

      if (v7 >= *(a1 + 16))
      {
        goto LABEL_30;
      }

      if (v17 < *(a1 + 24 + 8 * i))
      {
        return;
      }

      v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_237B06298(v4);
        v12 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      if (v7 >= *(v12 + 16))
      {
        goto LABEL_32;
      }

      v19 = v12 + 8 * i;
      v20 = *(v19 + 24);
      *(v19 + 24) = v18;

      *a2 = v4;
    }
  }
}

double MLDataValue.MultiArrayType.subscript.getter(uint64_t a1)
{
  v2 = [*v1 objectAtIndexedSubscript_];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

{
  v2 = *v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_237C08F8C();
      v7 = *(v13 + 16);
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      --v3;
    }

    while (v3);
  }

  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v8 = sub_237C0892C();

  v9 = [v2 objectForKeyedSubscript_];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

uint64_t static MLDataValue.MultiArrayType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2379E8EE0(0, &qword_27DE9B570, 0x277D82BB8);
  return sub_237C08CEC() & 1;
}

uint64_t sub_237AC80B0(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_237C086EC();

  return v3;
}

void *MLDataValue.MultiArrayType.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  if (v5 != 5)
  {
    sub_2379E8CE8(result, *(a1 + 8), v5);
    result = 0;
  }

  *a2 = result;
  return result;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237C10D30;
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  *(v2 + 32) = sub_237C08CDC();
  v3 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v4 = sub_237AC8938(v2, 65568);
  if (v4)
  {
    result._contents.super.isa = MLDataValue.MultiArrayType.init(_:)(v4)._contents.super.isa;
    *v1 = v6;
  }

  else
  {
    result._contents.super.isa = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237AC8278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = sub_237B0DE28(*(a1 + 16));
  if (!v5)
  {
    goto LABEL_12;
  }

  type metadata accessor for CMLMultiArray();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v4[2] = v6;

  v7 = sub_237A2ECA0();
  v8 = sub_237A2EC1C();
  v9 = sub_237A2EC48();
  v10 = sub_237A2EC74();
  if (v8 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    OUTLINED_FUNCTION_2_29();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v11 = MEMORY[0x277D84F90];
  if (v8)
  {
    v12 = v10;
    v22 = v7;
    v23 = v4;
    v25 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
      sub_237C08F8C();
      v15 = *(v25 + 16);
      OUTLINED_FUNCTION_6_34();
      sub_237C08FEC();
      OUTLINED_FUNCTION_6_34();
      sub_237C08FFC();
      sub_237C08F9C();
      v13 = v14;
    }

    while (v8 != v14);
    v16 = v25;
    v24 = v11;
    sub_237C08FCC();
    do
    {
      v17 = *v12++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
      sub_237C08F8C();
      v18 = *(v11 + 16);
      OUTLINED_FUNCTION_6_34();
      sub_237C08FEC();
      OUTLINED_FUNCTION_6_34();
      sub_237C08FFC();
      sub_237C08F9C();
      --v8;
    }

    while (v8);
    v4 = v23;
    v7 = v22;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v19 = objc_allocWithZone(MEMORY[0x277CBFF48]);

  v20 = sub_2379EEB64(v7, v16, 65600, v11, sub_237AC9030, v4);
  MLDataValue.MultiArrayType.init(_:)(v20);

  *a2 = v24;
  return result;
}

uint64_t sub_237AC857C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
}

uint64_t sub_237AC85C4()
{
  v1 = *v0;
  v2 = [*v0 dataPointer];
  v3 = [v1 shape];
  v4 = sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  v6 = sub_237A24B6C(v5);
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_5_35();
    sub_237AC8B34();
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v28 = v4;
    v29 = v1;
    v8 = 0;
    v9 = v30;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2383DCAF0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 unsignedLongLongValue];

      v30 = v9;
      v13 = *(v9 + 16);
      if (v13 >= *(v9 + 24) >> 1)
      {
        sub_237AC8B34();
      }

      ++v8;
      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v12;
    }

    while (v7 != v8);

    v1 = v29;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v14 = [v1 strides];
  v15 = sub_237C0893C();

  v16 = sub_237A24B6C(v15);
  if (!v16)
  {

    v19 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v17 = v16;
  OUTLINED_FUNCTION_5_35();
  sub_237AC8B14();
  if (v17 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = 0;
  v19 = v30;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2383DCAF0](v18, v15);
    }

    else
    {
      v20 = *(v15 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 longLongValue];

    v23 = *(v30 + 16);
    if (v23 >= *(v30 + 24) >> 1)
    {
      sub_237AC8B14();
    }

    ++v18;
    *(v30 + 16) = v23 + 1;
    *(v30 + 8 * v23 + 32) = v22;
  }

  while (v17 != v18);

LABEL_23:
  v24 = *(v9 + 16);
  swift_bridgeObjectRetain_n();

  v25 = sub_237B14A90(v24, v9 + 32, v19 + 32, v2);
  if (v25)
  {
    type metadata accessor for CMLMultiArray();
    *(swift_initStackObject() + 16) = v25;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    type metadata accessor for CMLFeatureValue();

    v26 = sub_237A2E884();

    return v26;
  }

LABEL_27:
  __break(1u);
  OUTLINED_FUNCTION_2_29();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_237AC8938(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0892C();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_237C0593C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_237AC8A34()
{
  v1 = *v0;
  sub_237A1E0C4();
  *v0 = v2;
}

void sub_237AC8A54()
{
  v1 = *v0;
  sub_237A1E1A4();
  *v0 = v2;
}

void sub_237AC8A74()
{
  v1 = *v0;
  sub_237A1E0D8();
  *v0 = v2;
}

void sub_237AC8A94()
{
  v1 = *v0;
  sub_237A1E28C();
  *v0 = v2;
}

void sub_237AC8AB4()
{
  v1 = *v0;
  sub_237A1E370();
  *v0 = v2;
}

void sub_237AC8AD4()
{
  v1 = *v0;
  sub_237A1E46C();
  *v0 = v2;
}

void sub_237AC8B14()
{
  v1 = *v0;
  sub_237A1E570();
  *v0 = v2;
}

void sub_237AC8B34()
{
  v1 = *v0;
  sub_237A1E584();
  *v0 = v2;
}

void sub_237AC8B54()
{
  v1 = *v0;
  sub_237A1E650();
  *v0 = v2;
}

void sub_237AC8B74()
{
  v1 = *v0;
  sub_237A1E718();
  *v0 = v2;
}

void sub_237AC8B94()
{
  v1 = *v0;
  sub_237A1E800();
  *v0 = v2;
}

void sub_237AC8BB4()
{
  v1 = *v0;
  sub_237A1E824();
  *v0 = v2;
}

void sub_237AC8BD4()
{
  v1 = *v0;
  sub_237A1E848();
  *v0 = v2;
}

void sub_237AC8BF4()
{
  v1 = *v0;
  sub_237A1E86C();
  *v0 = v2;
}

void sub_237AC8C14()
{
  v1 = *v0;
  sub_237A1E960();
  *v0 = v2;
}

void sub_237AC8C34()
{
  v1 = *v0;
  sub_237A1E974();
  *v0 = v2;
}

void sub_237AC8C54()
{
  v1 = *v0;
  sub_237A1EA3C();
  *v0 = v2;
}

void sub_237AC8C74()
{
  v1 = *v0;
  sub_237A1EB4C();
  *v0 = v2;
}

void sub_237AC8C94()
{
  v1 = *v0;
  sub_237A1EC38();
  *v0 = v2;
}

void sub_237AC8CD4()
{
  v1 = *v0;
  sub_237A1EE1C();
  *v0 = v2;
}

void sub_237AC8D14()
{
  v1 = *v0;
  sub_237A1EF20();
  *v0 = v2;
}

void sub_237AC8D34()
{
  v1 = *v0;
  sub_237A1EFEC();
  *v0 = v2;
}

void sub_237AC8D74()
{
  v1 = *v0;
  sub_237A1F100();
  *v0 = v2;
}

void sub_237AC8D94()
{
  v1 = *v0;
  sub_237A1F1F4();
  *v0 = v2;
}

void sub_237AC8DB4()
{
  v1 = *v0;
  sub_237A1F2D4();
  *v0 = v2;
}

void sub_237AC8DD4()
{
  v1 = *v0;
  sub_237A1F46C();
  *v0 = v2;
}

void sub_237AC8DF4()
{
  v1 = *v0;
  sub_237A1F490();
  *v0 = v2;
}

void sub_237AC8E14()
{
  v1 = *v0;
  sub_237A1F4B4();
  *v0 = v2;
}

void sub_237AC8E34()
{
  v1 = *v0;
  sub_237A1EB28();
  *v0 = v2;
}

void sub_237AC8E54()
{
  v1 = *v0;
  sub_237A1F4D8();
  *v0 = v2;
}

void sub_237AC8E74()
{
  v1 = *v0;
  sub_237A1F5A8();
  *v0 = v2;
}

void sub_237AC8E94()
{
  v1 = *v0;
  sub_237A1F5CC();
  *v0 = v2;
}

void sub_237AC8EB4()
{
  v1 = *v0;
  sub_237A1F5F0();
  *v0 = v2;
}

void sub_237AC8ED4()
{
  v1 = *v0;
  sub_237A1F6F0();
  *v0 = v2;
}

void sub_237AC8EF4()
{
  v1 = *v0;
  sub_237A1F7D8();
  *v0 = v2;
}

unint64_t sub_237AC8F14()
{
  result = qword_27DE9C858;
  if (!qword_27DE9C858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B240, &qword_237C0E220);
    sub_237AC8FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C858);
  }

  return result;
}

unint64_t sub_237AC8FA0()
{
  result = qword_27DE9C860;
  if (!qword_27DE9C860)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C860);
  }

  return result;
}

uint64_t sub_237AC8FF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void OUTLINED_FUNCTION_2_44()
{

  sub_237AC8A34();
}

id OUTLINED_FUNCTION_4_40()
{

  return sub_237AC8938(v0, 65600);
}

unint64_t MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    v2 = sub_237C0924C();
    v4 = 0xD000000000000031;
  }

  else
  {
    v2 = sub_237C0924C();
    v4 = 0xD000000000000010;
  }

  MEMORY[0x2383DC360](v2);

  return v4;
}

void sub_237AC91A0()
{
  v1 = *v0;
  if (v0[1])
  {
    if (v1 == 1)
    {
      return;
    }

    v4 = 0;
    v5 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000026, 0x8000000237C1AD60);
  }

  else
  {
    if (v1 == 1)
    {
      return;
    }

    sub_237C08EDC();

    v4 = 0xD000000000000019;
    v5 = 0x8000000237C1AD90;
  }

  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C17600);
  sub_2379E8AF0();
  swift_allocError();
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  swift_willThrow();
}

id sub_237AC934C(id a1)
{
  v4 = [v1 dataType];
  if (v4 == 65600)
  {
    if (a1 != 65568)
    {
LABEL_12:
      if (v4 == a1)
      {
        return v1;
      }

      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1ADD0);
      [v1 dataType];
      type metadata accessor for MLMultiArrayDataType(0);
      OUTLINED_FUNCTION_0_42();
      MEMORY[0x2383DC360](0x60206F742060, 0xE600000000000000);
      OUTLINED_FUNCTION_0_42();
      MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1ADF0);
      result = sub_237C090DC();
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](65600);
    OUTLINED_FUNCTION_1_43();
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  }

  else
  {
    if (v4 != 65568 || a1 != 65600)
    {
      goto LABEL_12;
    }

    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_1_43();
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  }

  result = sub_237C08BDC();
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_237AC95B0@<X0>(id a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result = sub_237AC8938(v5, 65600);
  if (!v2)
  {
    v8 = result;
    MEMORY[0x28223BE20](result);
    result = sub_237C08BEC();
    *a2 = v8;
  }

  return result;
}

void sub_237AC96C8(double *__C, uint64_t a2, int a3, const float *__A, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 8;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!__A)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__C)
  {
    vDSP_vspdp(__A, 1, __C, 1, a5);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_237AC9738@<X0>(id a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  result = sub_237AC8938(v5, 65568);
  if (!v2)
  {
    v8 = result;
    MEMORY[0x28223BE20](result);
    result = sub_237C08BEC();
    *a2 = v8;
  }

  return result;
}

void sub_237AC9850(float *__C, uint64_t a2, int a3, const double *__A, int64_t a5)
{
  if (__C)
  {
    v5 = (a2 - __C) / 4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a5)
  {
    a5 = v5;
  }

  if (a5 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!__A)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__C)
  {
    vDSP_vdpsp(__A, 1, __C, 1, a5);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return sub_237C0907C();
}

uint64_t sub_237AC9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_43(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_4_41(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237AC99C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_43(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v3);
}

uint64_t sub_237AC9A10(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_237ACB20C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v2);
}

double sub_237AC9A74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = OUTLINED_FUNCTION_0_43(a1, a2), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_8_28(v5);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_237AC9AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_0_43(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

double sub_237AC9B28@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_8_28(v4);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_237AC9B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_43(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v3);
  return swift_unknownObjectRetain();
}

double sub_237AC9BBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_237ACB52C(a1), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_8_28(v4);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_237AC9C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = OUTLINED_FUNCTION_0_43(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_237AC9C4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_237ACB424();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_41(v2);
}

uint64_t MLDataTable.Row.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*(v3 + 8) + 16) && (v5 = *(v3 + 16), result = OUTLINED_FUNCTION_0_43(result, a2), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_4_41(result);
    v8 = sub_237A2E9C8(v7);
    result = sub_237AFC548(v8, &v10);
    v9 = v11;
    *a3 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v9 = -1;
  }

  *(a3 + 16) = v9;
  return result;
}

uint64_t MLDataTable.Row.Values.description.getter()
{
  v1 = *v0;
  v23 = 91;
  v24 = 0xE100000000000000;
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v2, v3);
  v4 = OUTLINED_FUNCTION_6_6();
  v6 = sub_237A0290C(v4, v5, v1);
  if (v6 >= 10)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  if (v6 < 0)
  {
LABEL_15:
    __break(1u);
    OUTLINED_FUNCTION_1_44();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = 0;
    while (v7 != v8)
    {
      if (v8)
      {
        MEMORY[0x2383DC360](8236, 0xE200000000000000);
      }

      v9 = sub_237A2E9C8(v8++);
      sub_237AFC548(v9, v21);
      v10 = v21[0];
      v11 = v21[1];
      v12 = v22;
      v13 = MLDataValue.description.getter();
      v15 = v14;
      sub_2379E8CE8(v10, v11, v12);
      MEMORY[0x2383DC360](v13, v15);

      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  sub_237A2E9F4();
  v16 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v16, v17);
  v18 = OUTLINED_FUNCTION_6_6();
  if (v7 < sub_237A0290C(v18, v19, v1))
  {
    MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
  }

  MEMORY[0x2383DC360](93, 0xE100000000000000);
  return v23;
}

Swift::Int_optional __swiftcall MLDataTable.Row.index(forKey:)(Swift::String forKey)
{
  if (*(*(v1 + 8) + 16) && (v2 = OUTLINED_FUNCTION_0_43(forKey._countAndFlagsBits, forKey._object), (v3 & 1) != 0))
  {
    v4 = OUTLINED_FUNCTION_4_41(v2);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t MLDataTable.Row.Values.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_237A2E9C8(a1);

  return sub_237AFC548(v5, a2);
}

uint64_t MLDataTable.Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + 8) + 16) && (v9 = *(v5 + 16), v10 = OUTLINED_FUNCTION_0_43(a1, a2), (v11 & 1) != 0))
  {
    v12 = OUTLINED_FUNCTION_4_41(v10);
    v13 = sub_237A2E9C8(v12);
    sub_237AFC548(v13, &v15);
    return (*(a4 + 16))(&v15, a3, a4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }
}

uint64_t static MLDataTable.Row.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[2];
  if (sub_237A01C98())
  {
    v8 = v5;
    v9 = v3;

    v6 = static MLDataTable.Row.Values.== infix(_:_:)(&v9, &v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t static MLDataTable.Row.Values.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_237A2E9F4();
  v4 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v4, v5);
  v6 = OUTLINED_FUNCTION_6_6();
  v8 = sub_237A0290C(v6, v7, v2);
  sub_237A2E9F4();
  v9 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v9, v10);
  v11 = OUTLINED_FUNCTION_6_6();
  if (v8 == sub_237A0290C(v11, v12, v3))
  {

    v13 = 0;
    while (1)
    {
      sub_237A2E9F4();
      v14 = OUTLINED_FUNCTION_6_6();
      v16 = sub_237A017E8(v14, v15);
      v17 = v13 == v16;
      if (v13 == v16)
      {
LABEL_6:

        return v17;
      }

      v18 = sub_237A2E9C8(v13);
      sub_237AFC548(v18, &v31);
      v19 = v31;
      v20 = v32;
      v21 = v33;
      sub_237A2E9F4();
      v22 = OUTLINED_FUNCTION_6_6();
      if (v13 >= sub_237A017E8(v22, v23))
      {
        break;
      }

      v31 = v19;
      v32 = v20;
      v33 = v21;
      v24 = sub_237A2E9C8(v13++);
      sub_237AFC548(v24, &v29);
      v27 = v29;
      v28 = v30;
      v25 = static MLDataValue.== infix(_:_:)(&v31, &v27);
      sub_2379E8CE8(v27, *(&v27 + 1), v28);
      sub_2379E8CE8(v19, v20, v21);
      if ((v25 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_1_44();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

BOOL MLDataTable.Row.isEmpty.getter()
{
  v1 = *(v0 + 16);
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v2, v3);
  v4 = OUTLINED_FUNCTION_6_6();
  return sub_237A0290C(v4, v5, v1) == 0;
}

uint64_t _s8CreateML11MLDataTableV3RowV5countSivg_0()
{
  v1 = *(v0 + 16);
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v2, v3);
  v4 = OUTLINED_FUNCTION_6_6();

  return sub_237A0290C(v4, v5, v1);
}

Swift::Int __swiftcall MLDataTable.Row.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDataTable.Row.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v9 = *v2;
  v6 = MLDataTable.ColumnNames.subscript.getter(a2);
  v7 = sub_237A2E9C8(a2);
  sub_237AFC548(v7, a1);
  return v6;
}

uint64_t sub_237ACA3AC@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.Row.count.getter();
  *a1 = result;
  return result;
}

void (*sub_237ACA3D4(void *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v4;
  v5 = MLDataTable.Row.subscript.getter(v4 + 16, *a2);
  *(v4 + 5) = v5;
  *v4 = v5;
  *(v4 + 1) = v6;
  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
  *(v4 + 10) = v6;
  *(v4 + 11) = v7;
  *(v4 + 12) = v8;
  v9 = *(v4 + 32);
  *(v4 + 33) = v9;
  *(v4 + 6) = v6;
  *(v4 + 7) = v7;
  *(v4 + 8) = v8;
  *(v4 + 72) = v9;

  sub_2379E9288(v7, v8, v9);
  return sub_237ACA488;
}

void sub_237ACA488(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 88);
  v2 = *(*a1 + 96);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 33);

  sub_2379E8CE8(v6, v7, v8);

  sub_2379E8CE8(v3, v2, v9);

  free(v1);
}

uint64_t sub_237ACA540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  result = sub_237AFEB28(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237ACA574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  result = sub_237AFEF08(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v10 & 1;
  return result;
}

uint64_t sub_237ACA5B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return sub_237AFF124(*a1, *a2);
}

uint64_t sub_237ACA618(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return sub_237A90618(*a1, a1[1], *a2, a2[1]);
}

Swift::Int sub_237ACA634(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = MLDataTable.Row.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_237ACA65C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_237ACA674@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t MLDataTable.Row.description.getter()
{
  v1 = *v0;
  v25 = v0[2];
  v29 = 91;
  v30 = 0xE100000000000000;

  for (i = 0; ; i = v12 + 1)
  {
    sub_237A2E9F4();
    v3 = OUTLINED_FUNCTION_6_6();
    if (i == sub_237A017E8(v3, v4))
    {

      MEMORY[0x2383DC360](93, 0xE100000000000000);
      return v29;
    }

    sub_237A2E9C8(i);
    v5 = sub_237A2DE60();
    v7 = v6;

    sub_237A2E9F4();
    v8 = OUTLINED_FUNCTION_6_6();
    if (i >= sub_237A017E8(v8, v9))
    {
      break;
    }

    v26 = 34;
    v27 = 0xE100000000000000;
    MEMORY[0x2383DC360](v5, v7);

    MEMORY[0x2383DC360](540680226, 0xE400000000000000);

    v10 = v26;
    v11 = v27;
    v12 = i;
    v13 = sub_237A2E9C8(i);
    sub_237AFC548(v13, &v26);
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = MLDataValue.description.getter();
    v19 = v18;
    sub_2379E8CE8(v14, v15, v16);

    MEMORY[0x2383DC360](v17, v19);

    MEMORY[0x2383DC360](v10, v11);

    sub_237A2E9F4();
    v20 = OUTLINED_FUNCTION_6_6();
    v22 = sub_237A017E8(v20, v21);
    if (__OFSUB__(v22, 1))
    {
      goto LABEL_10;
    }

    if (v12 < v22 - 1)
    {
      MEMORY[0x2383DC360](8236, 0xE200000000000000);
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  OUTLINED_FUNCTION_1_44();
  swift_unexpectedError();
  __break(1u);

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_237C08EDC();

  v26 = 0xD000000000000022;
  v27 = 0x8000000237C17E70;
  v24 = sub_237C0924C();
  MEMORY[0x2383DC360](v24);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t MLDataTable.Row.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7_28();
  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = OUTLINED_FUNCTION_9_30();
  result = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t MLDataTable.Row.Values.endIndex.getter()
{
  v1 = *v0;
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  return sub_237A017E8(v2, v3);
}

uint64_t sub_237ACAA8C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A93594(v3, v4, *v2);
  *v1 = result;
  return result;
}

uint64_t sub_237ACAACC@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.Row.Values.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237ACAB44(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FFA8(v3, v5, *v4, *v2);
  *v1 = result;
  *(v1 + 8) = v7 & 1;
  return result;
}

uint64_t sub_237ACAB7C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237B70944(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t MLDataTable.Row.Values.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  MLDataTable.Row.Values.description.getter();
  v3 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v4 = OUTLINED_FUNCTION_9_30();
  result = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  a1[3] = result;
  *a1 = v4;
  return result;
}

unint64_t sub_237ACAC94()
{
  result = qword_27DE9C868;
  if (!qword_27DE9C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C868);
  }

  return result;
}

unint64_t sub_237ACADB8()
{
  result = qword_27DE9C8A0;
  if (!qword_27DE9C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8A0);
  }

  return result;
}

unint64_t sub_237ACAE54()
{
  result = qword_27DE9C8B8;
  if (!qword_27DE9C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8B8);
  }

  return result;
}

unint64_t sub_237ACAEAC()
{
  result = qword_27DE9C8C0;
  if (!qword_27DE9C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8C0);
  }

  return result;
}

unint64_t sub_237ACAF48(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C8B0, &qword_237C112C0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237ACAFC0()
{
  result = qword_27DE9C8D0;
  if (!qword_27DE9C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C8D0);
  }

  return result;
}

unint64_t sub_237ACB09C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237ACB0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_237C093CC();
  sub_237C0878C();
  v7 = sub_237C0940C();

  return a3(a1, a2, v7);
}

unint64_t sub_237ACB180(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  sub_237C093CC();
  MLDataValue.hash(into:)();
  v8 = sub_237C0940C();

  return sub_237ACB5BC(a1, a2, a3, v8);
}

unint64_t sub_237ACB20C(unsigned int a1)
{
  v3 = MEMORY[0x2383DCF40](*(v1 + 40), a1, 4);

  return sub_237ACD0EC(a1, v3);
}

unint64_t sub_237ACB254()
{
  OUTLINED_FUNCTION_3_43();
  sub_237C06A4C();
  v1 = MEMORY[0x277CC4F88];
  sub_237ACD93C(&qword_27DE9B8C8);
  v2 = sub_237C0861C();
  return sub_237ACD6E0(v0, v2, MEMORY[0x277CC4F88], &unk_27DE9C8F0, v1, MEMORY[0x277CC4F98]);
}

unint64_t sub_237ACB31C()
{
  OUTLINED_FUNCTION_3_43();
  sub_237C0909C();
  sub_237C0861C();
  v0 = OUTLINED_FUNCTION_125();

  return sub_237ACD14C(v0, v1);
}

unint64_t sub_237ACB370(char a1)
{
  v3 = *(v1 + 40);
  sub_237C093CC();
  sub_2379F5E44(v6, a1);
  v4 = sub_237C0940C();

  return sub_237ACD2D0(a1, v4);
}

unint64_t sub_237ACB3E0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_237C093BC();

  return sub_237ACD680(a1, v4);
}

unint64_t sub_237ACB424()
{
  OUTLINED_FUNCTION_3_43();
  sub_237C05ADC();
  v1 = MEMORY[0x277CC9260];
  sub_237ACD93C(&qword_27DE9C210);
  v2 = sub_237C0861C();
  return sub_237ACD6E0(v0, v2, MEMORY[0x277CC9260], &qword_27DE9C860, v1, MEMORY[0x277CC9278]);
}

unint64_t sub_237ACB4EC()
{
  v1 = *(v0 + 40);
  sub_237C08E4C();
  v2 = OUTLINED_FUNCTION_125();

  return sub_237ACD878(v2, v3);
}

unint64_t sub_237ACB52C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_237C086EC();
  sub_237C093CC();
  sub_237C0878C();
  v4 = sub_237C0940C();

  return sub_237ACD97C(a1, v4);
}

unint64_t sub_237ACB5BC(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v181 = ~(-1 << *(v4 + 32));
  v8 = a4 & v181;
  v10 = a3 == 6 && (a2 | a1) == 0;
  v172 = v10;
  while (2)
  {
    if (((1 << v8) & *(v183 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8))) == 0)
    {
      return v8;
    }

    v12 = *(v182 + 48) + 24 * v8;
    v13 = *(v12 + 8);
    v186 = v13;
    v187 = *v12;
    v14 = *(v12 + 16);
    switch(v14)
    {
      case 1:
        v15 = *v12;
        if (v5 != 1)
        {
          goto LABEL_129;
        }

        sub_2379E8CE8(v187, v13, 1);
        sub_2379E8CE8(v7, v6, 1);
        if (*&v187 == *&a1)
        {
          return v8;
        }

        goto LABEL_131;
      case 2:
        if (v5 != 2)
        {
          v15 = *v12;
          sub_2379E9288(v187, v13, 2);

          goto LABEL_129;
        }

        if (v187 == v7 && v13 == v6)
        {
          sub_2379E9288(v7, v6, 2);
          sub_2379E9288(v7, v6, 2);
          sub_2379E8CE8(v7, v6, 2);
          v146 = v7;
          v147 = v6;
          v148 = 2;
LABEL_136:
          sub_2379E8CE8(v146, v147, v148);
          return v8;
        }

        v17 = sub_237C0929C();
        sub_2379E9288(v7, v6, 2);
        sub_2379E9288(v187, v13, 2);
        sub_2379E8CE8(v187, v13, 2);
        v18 = v7;
        v19 = v6;
        v20 = 2;
LABEL_121:
        sub_2379E8CE8(v18, v19, v20);
        if (v17)
        {
          return v8;
        }

        goto LABEL_131;
      case 3:
        if (v5 != 3)
        {
          v15 = *v12;
          swift_retain_n();
LABEL_129:
          sub_2379E9288(v7, v6, v5);
          sub_2379E8CE8(v15, v13, v14);
          sub_2379E8CE8(v7, v6, v5);
          v26 = v15;
          goto LABEL_130;
        }

        v168 = (1 << v8) & *(v183 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8));
        sub_2379E9288(v187, v13, 3);
        sub_2379E9288(v7, v6, 3);
        sub_2379E9288(v187, v13, 3);
        sub_2379E9288(v7, v6, 3);
        sub_2379E9288(v187, v13, 3);
        v22 = sub_237A2E9F4();
        if (sub_237A2E9F4() < 0)
        {
          goto LABEL_143;
        }

        v23 = sub_237A2E9F4();
        if (v22 < 0 || v23 < v22)
        {
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);

          __break(1u);
LABEL_153:
          __break(1u);

          __break(1u);
LABEL_154:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
LABEL_155:
          __break(1u);

          __break(1u);
LABEL_156:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
LABEL_157:
          __break(1u);

          __break(1u);
LABEL_158:
          __break(1u);

          __break(1u);
LABEL_159:
          __break(1u);

          __break(1u);
LABEL_160:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
LABEL_161:
          __break(1u);

          __break(1u);
LABEL_162:
          __break(1u);

          __break(1u);
LABEL_163:
          __break(1u);

          __break(1u);

          __break(1u);

          __break(1u);
          goto LABEL_164;
        }

        v24 = sub_237A2E9F4();
        if (sub_237A2E9F4() < 0)
        {
          goto LABEL_145;
        }

        v25 = sub_237A2E9F4();
        if (v24 < 0 || v25 < v24)
        {
          goto LABEL_146;
        }

        if (v22 != v24)
        {
          v6 = a2;
          v26 = v187;
LABEL_133:
          v14 = 3;
          v13 = v186;
          sub_2379E8CE8(v26, v186, 3);
          sub_2379E8CE8(v7, v6, 3);
          sub_2379E8CE8(v7, v6, 3);
          sub_2379E8CE8(v26, v186, 3);
LABEL_130:
          sub_2379E8CE8(v26, v13, v14);
LABEL_131:
          v8 = (v8 + 1) & v181;
          continue;
        }

        v26 = v187;
        sub_237A2E9F4();
        v6 = a2;
        v179 = sub_237A01878();
        if (v179 < 0)
        {
          goto LABEL_147;
        }

        v27 = 0;
        v171 = v8;
        while (v27 != v179)
        {
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v184 = v27 + 1;
          v185 = sub_237A2E9C8(v27);
          switch(sub_237A2E910())
          {
            case 1u:
              v85 = *(v185 + 16);

              sub_237B0E848();
              v87 = v86;

              v30 = 0;
              v84 = v87;
              v31 = 1;
              goto LABEL_74;
            case 2u:

              v29 = sub_237A2DE60();
              v30 = v81;
              v31 = 2;

              goto LABEL_72;
            case 3u:
              v82 = sub_237B0DD68(*(v185 + 16));
              if (!v82)
              {
                goto LABEL_156;
              }

              type metadata accessor for CMLSequence();
              v83 = swift_allocObject();
              *(v83 + 16) = v82;
              *(v83 + 24) = 1;

              v84 = v83;
              v30 = 0;
              v31 = 3;
              goto LABEL_74;
            case 4u:
              v32 = sub_237B0DDC8(*(v185 + 16));
              if (!v32)
              {
                goto LABEL_155;
              }

              v170 = v27;
              type metadata accessor for CMLDictionary();
              inited = swift_initStackObject();
              *(inited + 16) = v32;
              v34 = MEMORY[0x277D84F98];
              v188 = MEMORY[0x277D84F98];
              swift_retain_n();
              v35 = 0;
              v175 = v34;
              break;
            case 5u:

              v84 = 0;
              v30 = 0;
              v31 = 6;
              goto LABEL_74;
            case 6u:

              sub_237AC8278(v88, &v194);
              if (!v194)
              {
                goto LABEL_152;
              }

              v29 = v194;

              v30 = 0;
              v31 = 5;
LABEL_72:
              v84 = v29;
              goto LABEL_74;
            default:
              v28 = *(v185 + 16);

              v29 = sub_237B0ECCC(v28);

              v30 = 0;
              v31 = 0;
              goto LABEL_72;
          }

          while (v35 != sub_237A2EAA4())
          {
            LOBYTE(v36) = sub_237A2EB64(v35);
            v38 = v37;
            v35 = sub_237B6A974(v35);
            v39 = sub_237A2DE60();
            v41 = v40;

            switch(sub_237A2E910())
            {
              case 1u:
                v63 = v38[2];

                sub_237B0E848();
                v65 = v64;

                v7 = 0;
                v38 = v65;
                LOBYTE(v36) = 1;
                goto LABEL_58;
              case 2u:

                v43 = sub_237A2DE60();
                v7 = v60;

                LOBYTE(v36) = 2;
                goto LABEL_56;
              case 3u:
                v61 = sub_237B0DD68(v38[2]);
                if (!v61)
                {
                  goto LABEL_160;
                }

                type metadata accessor for CMLSequence();
                v62 = swift_allocObject();
                *(v62 + 16) = v61;
                *(v62 + 24) = 1;

                v38 = v62;

                v7 = 0;
                LOBYTE(v36) = 3;
                goto LABEL_58;
              case 4u:
                v44 = sub_237B0DDC8(v38[2]);
                if (!v44)
                {
                  goto LABEL_159;
                }

                v164 = inited;
                *(swift_initStackObject() + 16) = v44;
                v191 = MEMORY[0x277D84F98];
                v180 = 0;
                v166 = MEMORY[0x277D84F98];
                swift_retain_n();
                break;
              case 5u:

                v7 = 0;
                v38 = 0;
                LOBYTE(v36) = 6;
                goto LABEL_58;
              case 6u:

                sub_237AC8278(v66, &v194);
                if (!v194)
                {
                  goto LABEL_158;
                }

                v43 = v194;

                v7 = 0;
                LOBYTE(v36) = 5;
LABEL_56:
                v38 = v43;
                goto LABEL_58;
              default:
                v42 = v38[2];

                v43 = sub_237B0ECCC(v42);

                LOBYTE(v36) = 0;
                v7 = 0;
                goto LABEL_56;
            }

            while (v180 != sub_237A2EAA4())
            {
              sub_237A2EB64(v180);
              v180 = sub_237B6A974(v180);
              v45 = sub_237A2DE60();
              v47 = v46;

              sub_237AFC548(&v194, v48);

              v163 = v194;
              v162 = v195;
              *&v194 = v45;
              *(&v194 + 1) = v47;
              v195 = 2;
              v49 = sub_237ACB180(v45);
              v51 = v166[2];
              v52 = (v50 & 1) == 0;
              v53 = __OFADD__(v51, v52);
              v54 = v51 + v52;
              if (v53)
              {
                goto LABEL_148;
              }

              v7 = v50;
              v5 = a3;
              if (v166[3] < v54)
              {
                sub_237ABF994(v54, 1);
                v49 = sub_237ACB180(v45);
                if ((v7 & 1) != (v55 & 1))
                {
                  goto LABEL_165;
                }
              }

              if (v7)
              {
                goto LABEL_166;
              }

              v191[(v49 >> 6) + 8] |= 1 << v49;
              v56 = v191[6] + 24 * v49;
              *v56 = v45;
              *(v56 + 8) = v47;
              *(v56 + 16) = 2;
              v57 = v191[7] + 24 * v49;
              *v57 = v163;
              *(v57 + 16) = v162;
              v58 = v191[2];
              v53 = __OFADD__(v58, 1);
              v59 = v58 + 1;
              if (v53)
              {
                goto LABEL_150;
              }

              v166 = v191;
              v191[2] = v59;
            }

            LOBYTE(v36) = 4;

            v7 = 0;
            v38 = v166;
            inited = v164;
LABEL_58:
            *&v194 = v39;
            *(&v194 + 1) = v41;
            v195 = 2;
            v67 = v175;
            v68 = sub_237ACB180(v39);
            v70 = v175[2];
            v71 = (v69 & 1) == 0;
            v53 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v53)
            {
              goto LABEL_139;
            }

            v73 = v69;
            if (v175[3] < v72)
            {
              v74 = v7;
              sub_237ABF994(v72, 1);
              v7 = v188;
              v68 = sub_237ACB180(v194);
              if ((v73 & 1) != (v75 & 1))
              {
LABEL_165:
                sub_237C0932C();
                __break(1u);
LABEL_166:
                v150 = swift_allocError();
                swift_willThrow();

                v190 = v150;
                v151 = v150;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  sub_2379E8CE8(v163, *(&v163 + 1), v162);

                  v153 = *(&v194 + 1);
                  v152 = v194;
                  v154 = v195;
LABEL_177:
                  sub_2379E8CE8(v152, v153, v154);
                  v159 = v190;
                  goto LABEL_178;
                }

LABEL_169:
                *&v192 = 0;
                *(&v192 + 1) = 0xE000000000000000;
                sub_237C08EDC();
                MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
                sub_237C0907C();
                MEMORY[0x2383DC360](39, 0xE100000000000000);
                goto LABEL_174;
              }

              v67 = v188;
              v7 = v74;
            }

            if (v73)
            {
              v155 = swift_allocError();
              swift_willThrow();

              v191 = v155;
              v156 = v155;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_175;
              }

              goto LABEL_169;
            }

            v67[(v68 >> 6) + 8] |= 1 << v68;
            v76 = v67[6] + 24 * v68;
            v77 = v195;
            *v76 = v194;
            *(v76 + 16) = v77;
            v78 = v67[7] + 24 * v68;
            *v78 = v38;
            *(v78 + 8) = v7;
            *(v78 + 16) = v36;
            v79 = v67[2];
            v53 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v53)
            {
              goto LABEL_141;
            }

            v175 = v67;
            v67[2] = v80;
          }

          v31 = 4;

          v30 = 0;
          v27 = v170;
          v8 = v171;
          v7 = a1;
          v6 = a2;
          v84 = v175;
LABEL_74:
          *&v194 = v84;
          *(&v194 + 1) = v30;
          v195 = v31;
          v89 = sub_237A2E9C8(v27);
          switch(sub_237A2E910())
          {
            case 1u:
              v140 = *(v89 + 16);

              sub_237B0E848();
              v142 = v141;

              v92 = 0;
              v91 = v142;
              v93 = 1;
              goto LABEL_114;
            case 2u:

              v91 = sub_237A2DE60();
              v92 = v138;
              v93 = 2;

              goto LABEL_114;
            case 3u:
              v139 = sub_237B0DD68(*(v89 + 16));
              if (!v139)
              {
                goto LABEL_154;
              }

              type metadata accessor for CMLSequence();
              v91 = swift_allocObject();
              *(v91 + 16) = v139;
              *(v91 + 24) = 1;

              v92 = 0;
              v93 = 3;
              goto LABEL_114;
            case 4u:
              v94 = sub_237B0DDC8(*(v89 + 16));
              if (!v94)
              {
                goto LABEL_153;
              }

              type metadata accessor for CMLDictionary();
              *(swift_initStackObject() + 16) = v94;
              v191 = MEMORY[0x277D84F98];
              v95 = 0;
              v177 = MEMORY[0x277D84F98];
              swift_retain_n();
              break;
            case 5u:

              v91 = 0;
              v92 = 0;
              v93 = 6;
              goto LABEL_114;
            case 6u:

              sub_237AC8278(v143, &v192);
              if (!v192)
              {
                goto LABEL_157;
              }

              v91 = v192;

              v92 = 0;
              v93 = 5;
              goto LABEL_114;
            default:
              v90 = *(v89 + 16);

              v91 = sub_237B0ECCC(v90);

              v92 = 0;
              v93 = 0;
              goto LABEL_114;
          }

          while (v95 != sub_237A2EAA4())
          {
            sub_237A2EB64(v95);
            v38 = v96;
            v95 = sub_237B6A974(v95);
            v97 = sub_237A2DE60();
            v99 = v98;

            v176 = v89;
            switch(sub_237A2E910())
            {
              case 1u:
                v121 = v38[2];

                sub_237B0E848();
                v123 = v122;

                v36 = 0;
                v38 = v123;
                v102 = 1;
                goto LABEL_99;
              case 2u:

                v101 = sub_237A2DE60();
                v36 = v119;

                v102 = 2;
                goto LABEL_97;
              case 3u:
                v120 = sub_237B0DD68(v38[2]);
                if (!v120)
                {
                  goto LABEL_163;
                }

                type metadata accessor for CMLSequence();
                v7 = swift_allocObject();
                *(v7 + 16) = v120;
                *(v7 + 24) = 1;

                v38 = v7;

                v36 = 0;
                v102 = 3;
                goto LABEL_99;
              case 4u:
                v103 = sub_237B0DDC8(v38[2]);
                if (!v103)
                {
                  goto LABEL_162;
                }

                *(swift_initStackObject() + 16) = v103;
                v7 = MEMORY[0x277D84F98];
                v189 = MEMORY[0x277D84F98];
                v36 = 0;
                v169 = MEMORY[0x277D84F98];
                swift_retain_n();
                break;
              case 5u:

                v36 = 0;
                v38 = 0;
                v102 = 6;
                goto LABEL_99;
              case 6u:

                sub_237AC8278(v124, &v192);
                if (!v192)
                {
                  goto LABEL_161;
                }

                v101 = v192;

                v36 = 0;
                v102 = 5;
LABEL_97:
                v38 = v101;
                goto LABEL_99;
              default:
                v100 = v38[2];

                v101 = sub_237B0ECCC(v100);

                v102 = 0;
                v36 = 0;
                goto LABEL_97;
            }

            while (v36 != sub_237A2EAA4())
            {
              sub_237A2EB64(v36);
              v104 = sub_237B6A974(v36);
              v105 = sub_237A2DE60();
              v107 = v106;
              v167 = v105;

              sub_237AFC548(&v192, v108);

              v163 = v192;
              v165 = v193;
              *&v192 = v167;
              *(&v192 + 1) = v107;
              v193 = 2;
              v109 = sub_237ACB180(v167);
              v111 = v169[2];
              v112 = (v110 & 1) == 0;
              v53 = __OFADD__(v111, v112);
              v113 = v111 + v112;
              if (v53)
              {
                goto LABEL_149;
              }

              v7 = v110;
              v36 = v104;
              if (v169[3] < v113)
              {
                sub_237ABF994(v113, 1);
                v109 = sub_237ACB180(v167);
                if ((v7 & 1) != (v114 & 1))
                {
                  goto LABEL_165;
                }
              }

              if (v7)
              {
                v157 = swift_allocError();
                swift_willThrow();

                v158 = v157;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  sub_2379E8CE8(v163, *(&v163 + 1), v165);

                  sub_2379E8CE8(v192, *(&v192 + 1), v193);
                  v159 = v157;
                  goto LABEL_178;
                }

LABEL_173:
                sub_237C08EDC();
                MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
                sub_237C0907C();
                MEMORY[0x2383DC360](39, 0xE100000000000000);
LABEL_174:
                sub_237C090DC();
                __break(1u);
LABEL_175:
                sub_2379E8CE8(v38, v7, v36);

                sub_2379E8CE8(v194, *(&v194 + 1), v195);
                v159 = v191;
LABEL_178:

                while (1)
                {
LABEL_164:
                  swift_unexpectedError();
                  __break(1u);
                }
              }

              v189[(v109 >> 6) + 8] |= 1 << v109;
              v115 = v189[6] + 24 * v109;
              *v115 = v167;
              *(v115 + 8) = v107;
              *(v115 + 16) = 2;
              v116 = v189[7] + 24 * v109;
              *v116 = v163;
              *(v116 + 16) = v165;
              v117 = v189[2];
              v53 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v53)
              {
                goto LABEL_151;
              }

              v169 = v189;
              v189[2] = v118;
            }

            v102 = 4;

            v36 = 0;
            v38 = v169;
LABEL_99:
            *&v192 = v97;
            *(&v192 + 1) = v99;
            v193 = 2;
            v125 = v177;
            v126 = sub_237ACB180(v97);
            v128 = v177[2];
            v129 = (v127 & 1) == 0;
            v53 = __OFADD__(v128, v129);
            v130 = v128 + v129;
            if (v53)
            {
              goto LABEL_140;
            }

            v131 = v127;
            if (v177[3] < v130)
            {
              sub_237ABF994(v130, 1);
              v7 = v191;
              v126 = sub_237ACB180(v192);
              if ((v131 & 1) != (v132 & 1))
              {
                goto LABEL_165;
              }

              v125 = v191;
            }

            if (v131)
            {
              v160 = swift_allocError();
              swift_willThrow();

              v190 = v160;
              v161 = v160;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
              if (swift_dynamicCast())
              {
                goto LABEL_173;
              }

              sub_2379E8CE8(v38, v36, v102);

              v153 = *(&v192 + 1);
              v152 = v192;
              v154 = v193;
              goto LABEL_177;
            }

            v125[(v126 >> 6) + 8] |= 1 << v126;
            v133 = v125[6] + 24 * v126;
            v134 = v193;
            *v133 = v192;
            *(v133 + 16) = v134;
            v135 = v125[7] + 24 * v126;
            *v135 = v38;
            *(v135 + 8) = v36;
            *(v135 + 16) = v102;
            v136 = v125[2];
            v53 = __OFADD__(v136, 1);
            v137 = v136 + 1;
            if (v53)
            {
              goto LABEL_142;
            }

            v177 = v125;
            v125[2] = v137;
            v89 = v176;
          }

          v93 = 4;

          v92 = 0;
          v8 = v171;
          v7 = a1;
          v6 = a2;
          v5 = a3;
          v91 = v177;
LABEL_114:
          *&v192 = v91;
          *(&v192 + 1) = v92;
          v193 = v93;
          v144 = static MLDataValue.== infix(_:_:)(&v194, &v192);
          sub_2379E8CE8(v192, *(&v192 + 1), v193);
          sub_2379E8CE8(v194, *(&v194 + 1), v195);
          v26 = v187;
          v27 = v184;
          if ((v144 & 1) == 0)
          {
            goto LABEL_133;
          }
        }

        sub_2379E8CE8(v26, v186, 3);
        sub_2379E8CE8(v7, v6, 3);
        sub_2379E8CE8(v7, v6, 3);
        sub_2379E8CE8(v26, v186, 3);
        sub_2379E8CE8(v26, v186, 3);
        return v8;
      case 4:
        if (v5 == 4)
        {
          sub_2379E9288(v187, v13, 4);
          sub_2379E9288(v7, v6, 4);
          sub_2379E9288(v187, v13, 4);
          sub_2379E9288(v7, v6, 4);
          sub_2379E9288(v187, v13, 4);
          sub_237AFDD70(v187, v7);
          v17 = v16;
          sub_2379E8CE8(v187, v13, 4);
          sub_2379E8CE8(v7, v6, 4);
          sub_2379E8CE8(v7, v6, 4);
          sub_2379E8CE8(v187, v13, 4);
          v18 = v187;
          v19 = v13;
          v20 = 4;
          goto LABEL_121;
        }

        v15 = *v12;
        swift_bridgeObjectRetain_n();
        goto LABEL_129;
      case 5:
        if (v5 == 5)
        {
          sub_2379E8EE0(0, &qword_27DE9B570, 0x277D82BB8);
          sub_2379E9288(v187, v13, 5);
          sub_2379E9288(v7, v6, 5);
          sub_2379E9288(v187, v13, 5);
          sub_2379E9288(v7, v6, 5);
          sub_2379E9288(v187, v13, 5);
          v17 = sub_237C08CEC();
          sub_2379E8CE8(v187, v13, 5);
          sub_2379E8CE8(v7, v6, 5);
          sub_2379E8CE8(v7, v6, 5);
          sub_2379E8CE8(v187, v13, 5);
          v18 = v187;
          v19 = v13;
          v20 = 5;
          goto LABEL_121;
        }

        v15 = *v12;
        v145 = v187;
        goto LABEL_129;
      case 6:
        v15 = *v12;
        if (!v172)
        {
          goto LABEL_129;
        }

        sub_2379E8CE8(v187, v13, 6);
        v146 = 0;
        v147 = 0;
        v148 = 6;
        goto LABEL_136;
      default:
        v15 = *v12;
        if (v5)
        {
          goto LABEL_129;
        }

        sub_2379E8CE8(v187, v13, 0);
        sub_2379E8CE8(v7, v6, 0);
        if (v187 == v7)
        {
          return v8;
        }

        goto LABEL_131;
    }
  }
}