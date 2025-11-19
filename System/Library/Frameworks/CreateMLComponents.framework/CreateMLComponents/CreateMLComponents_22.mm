uint64_t sub_237E48488(uint64_t a1)
{
  result = OUTLINED_FUNCTION_38_15(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_237E4BFB8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237E4858C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237E4BFB8(result, 1, sub_237D0B354);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237E486B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_38_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237E4BFB8(result, 1, sub_237D0B6E8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0420);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237E48798()
{
  OUTLINED_FUNCTION_13_4();
  v75 = v1;
  v69 = v2;
  v74 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v5);
  v68 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v67 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v8);
  v80 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4CF8);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2(&v61 - v17);
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v76 = v19;
  v77 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  v26 = *v0;
  v78 = v0[1];
  v79 = v26;
  v28 = v0[2];
  v27 = v0[3];
  v30 = v0[4];
  v29 = v0[5];

  sub_237EF7720();
  sub_237EF75E0();
  v65 = v28;
  v31 = sub_237E48ECC(v28);
  v82[0] = v27;
  v82[1] = v30;
  v82[2] = v29;
  v32 = v75;
  sub_237E4976C();
  if (v32)
  {

    (*(v76 + 8))(v25, v77);
LABEL_11:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v64 = v25;

  v33 = v72;
  sub_237ED82A8(v31, v72);
  v34 = v77;
  if (__swift_getEnumTagSinglePayload(v33, 1, v77) != 1)
  {
    v61 = v31;
    v75 = 0;
    sub_237EF76F0();
    v35 = v76;
    v36 = *(v76 + 8);
    v72 = v76 + 8;
    v62 = v36;
    v36(v33, v34);
    v63 = v22;
    sub_237EF76B0();
    v37 = v64;
    sub_237EF7620();
    v38 = v65;
    v39 = *(v65 + 16);
    if (v39)
    {
      v82[0] = MEMORY[0x277D84F90];
      sub_237C63284(0, v39, 0);
      v40 = v82[0];
      v41 = (v38 + 56);
      do
      {
        v42 = *(v41 - 1);
        v43 = *v41;
        sub_237EF8260();
        sub_237E0ECD4(v42, v43, v14);

        v82[0] = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          v47 = OUTLINED_FUNCTION_17_0(v44);
          sub_237C63284(v47, v45 + 1, 1);
          v40 = v82[0];
        }

        v41 += 32;
        *(v40 + 16) = v45 + 1;
        OUTLINED_FUNCTION_28();
        (*(v10 + 32))(v40 + v46 + *(v10 + 72) * v45, v14, v80);
        --v39;
      }

      while (v39);
      v35 = v76;
      v34 = v77;
      v37 = v64;
    }

    sub_237EF76B0();
    v48 = v63;
    sub_237EF76F0();
    sub_237EF7700();
    sub_237EF8260();
    sub_237EF7600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388);
    OUTLINED_FUNCTION_14_54();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_237F03530;
    v50 = *(v35 + 16);
    (v50)(&v37[v49], v48, v34);
    v82[0] = v61;
    OUTLINED_FUNCTION_10_58();
    sub_237E48488(v49);
    v51 = v66;
    sub_237EF7470();
    (*(v67 + 104))(v51, *MEMORY[0x277D25350], v68);
    sub_237EF7660();
    (v50)(v73, v37, v34);
    v52 = v70;
    sub_237EF7810();
    v53 = type metadata accessor for CoreMLPackage();
    v54 = OUTLINED_FUNCTION_18_37(*(v53 + 24));
    v50(v54);
    memcpy(v82, v37, 0x58uLL);
    sub_237C9A114(v82, &unk_27DEAD7B0);
    OUTLINED_FUNCTION_30_35();
    v55 = v71;
    v56 = OUTLINED_FUNCTION_52_12();
    v57(v56, v52, v74);
    sub_237E34060();
    sub_237EF7780();
    OUTLINED_FUNCTION_27_26();
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_58_9(v58, v59, 0xD00000000000001ALL);
    OUTLINED_FUNCTION_49_14();
    v34(&v81, 0);
    (*(v55 + 8))(v52, v74);
    v60 = v62;
    v62(v73, v34);
    v60(v63, v34);
    v60(v64, v34);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_237E48ECC(uint64_t a1)
{
  sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v117 = v3;
  v118 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v4);
  v5 = sub_237EF6E60();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v7);
  v112 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v111 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v10);
  v125 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v127 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v124 = v13;
  MEMORY[0x28223BE20](v14);
  v123 = v109 - v15;
  OUTLINED_FUNCTION_12_1();
  v130 = sub_237EF7420();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v129 = v19;
  MEMORY[0x28223BE20](v20);
  *&v131 = v109 - v21;
  OUTLINED_FUNCTION_12_1();
  v119 = sub_237EF7460();
  OUTLINED_FUNCTION_1();
  v115 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_3();
  v128 = v24;
  OUTLINED_FUNCTION_12_1();
  v114 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v113 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = (v28 - v27);
  sub_237EF7720();
  v126 = v29;
  sub_237EF7620();
  v30 = *(a1 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v132[0] = MEMORY[0x277D84F90];
    sub_237C62D90(0, v30, 0);
    v31 = v132[0];
    v122 = a1;
    v32 = (a1 + 40);
    v33 = v30;
    do
    {
      v35 = *(v32 - 1);
      v34 = *v32;
      v132[0] = v31;
      v36 = *(v31 + 16);
      v37 = *(v31 + 24);
      sub_237EF8260();
      if (v36 >= v37 >> 1)
      {
        sub_237C62D90(v37 > 1, v36 + 1, 1);
        v31 = v132[0];
      }

      *(v31 + 16) = v36 + 1;
      v38 = v31 + 16 * v36;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      v32 += 4;
      --v33;
    }

    while (v33);
    a1 = v122;
  }

  sub_237CADF98(v31);
  v132[4] = v39;
  sub_237EF8260();
  sub_237E4B218();
  v41 = v40;
  v43 = v42;

  sub_237EF8260();
  v109[1] = v41;
  v109[0] = v43;
  sub_237E4C084(v132, v41, v43);

  sub_237EF7450();
  v44 = 0;
  if (!v30)
  {
LABEL_27:
    v99 = v115;
    v100 = v110;
    (*(v115 + 16))(v110, v128, v119);
    (*(v111 + 104))(v100, *MEMORY[0x277D25348], v112);
    v101 = v126;
    sub_237EF7660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v102 = swift_allocObject();
    v131 = xmmword_237F03530;
    *(v102 + 16) = xmmword_237F03530;
    (*(v117 + 104))(v116, *MEMORY[0x277D250F0], v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v103 = swift_allocObject();
    *(v103 + 16) = v131;
    *(v103 + 32) = v44;
    sub_237EF6CF0();

    v104 = OUTLINED_FUNCTION_28_6();
    v105(v104);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF7700();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388);
    v106 = v113;
    OUTLINED_FUNCTION_14_54();
    v107 = swift_allocObject();
    *(v107 + 16) = v131;
    v108 = v114;
    (*(v106 + 16))(v101 + v107, v101, v114);
    (*(v99 + 8))(v128, v119);
    (*(v106 + 8))(v101, v108);
    return v107;
  }

  v121 = v17 + 32;
  v122 = v127 + 32;
  v120 = v17 + 8;
  v45 = (a1 + 56);
  while (1)
  {
    v46 = *(v45 - 3);
    v47 = *(v45 - 1);
    v48 = *v45;
    swift_bridgeObjectRetain_n();
    if (v48 < 4)
    {
      break;
    }

    result = sub_237EF73E0();
    v50 = __OFADD__(v44++, 1);
    if (v50)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_31_24();
    sub_237E0ECD4(v60, 4, v61);

    v53 = v126;
    sub_237EF7690();
    v62 = OUTLINED_FUNCTION_22_35();
    *v47 = v46;
    if ((v62 & 1) == 0)
    {
      v89 = OUTLINED_FUNCTION_7_64();
      sub_237D0BCB8(v89, v90, v91, v92);
      OUTLINED_FUNCTION_24_33(v93);
    }

    OUTLINED_FUNCTION_32_26();
    if (v56)
    {
      v94 = OUTLINED_FUNCTION_9_55(v63);
      sub_237D0BCB8(v94, v95, v96, v97);
      OUTLINED_FUNCTION_24_33(v98);
    }

    v57 = OUTLINED_FUNCTION_15_41();
    v59 = v123;
LABEL_22:
    v58(v57, v59, v125);
    v53(v132, 0);
    (*(v17 + 16))(v129, v131, v130);
    v64 = v128;
    sub_237EF7430();
    v65 = OUTLINED_FUNCTION_22_35();
    *v47 = v46;
    if ((v65 & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_7_64();
      sub_237D0BC78(v69, v70, v71, v72);
      OUTLINED_FUNCTION_24_33(v73);
    }

    OUTLINED_FUNCTION_32_26();
    if (v56)
    {
      v74 = OUTLINED_FUNCTION_9_55(v66);
      sub_237D0BC78(v74, v75, v76, v77);
      OUTLINED_FUNCTION_24_33(v78);
    }

    v45 += 32;
    *(v46 + 16) = v48;
    OUTLINED_FUNCTION_28();
    v68 = v46 + v67 + *(v17 + 72) * v41;
    v41 = v130;
    (*(v17 + 32))(v68, v129, v130);
    v64(v132, 0);
    (*(v17 + 8))(v131, v41);
    if (!--v30)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_31_24();
  result = sub_237EF73E0();
  v50 = __OFADD__(v44, v47);
  v44 += v47;
  if (!v50)
  {
    OUTLINED_FUNCTION_31_24();
    sub_237E0ECD4(v51, v48, v52);

    v53 = v126;
    sub_237EF7690();
    v54 = OUTLINED_FUNCTION_22_35();
    *v47 = v46;
    if ((v54 & 1) == 0)
    {
      v79 = OUTLINED_FUNCTION_7_64();
      sub_237D0BCB8(v79, v80, v81, v82);
      OUTLINED_FUNCTION_24_33(v83);
    }

    OUTLINED_FUNCTION_32_26();
    if (v56)
    {
      v84 = OUTLINED_FUNCTION_9_55(v55);
      sub_237D0BCB8(v84, v85, v86, v87);
      OUTLINED_FUNCTION_24_33(v88);
    }

    v57 = OUTLINED_FUNCTION_15_41();
    v59 = v124;
    goto LABEL_22;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_237E4976C()
{
  OUTLINED_FUNCTION_13_4();
  v58 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v61 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v57 = v6;
  OUTLINED_FUNCTION_12_1();
  v67 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v65 = v9;
  OUTLINED_FUNCTION_12_1();
  v64 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v66 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v55 = v12;
  OUTLINED_FUNCTION_12_1();
  v63 = sub_237EF6F90();
  OUTLINED_FUNCTION_1();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_30();
  v19 = sub_237EF7550();
  OUTLINED_FUNCTION_1();
  v56 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  v22 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v62 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = *v0;
  sub_237E88538();
  if (v1)
  {
LABEL_14:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v54 = v2;
  v53 = v19;
  sub_237EF5C30();
  swift_allocObject();
  sub_237EF5C20();
  (*(v62 + 104))(v27, *MEMORY[0x277CC86A8], v22);
  sub_237EF5C00();
  sub_237E4C030();
  sub_237EF5C10();
  memcpy(v74, v75, sizeof(v74));
  memcpy(v78, v75, sizeof(v78));
  sub_237D73A1C(&v76);
  sub_237D6E9A0(v74);

  v29 = OUTLINED_FUNCTION_28_6();
  sub_237CBA6B8(v29, v30);
  sub_237EF7540();
  sub_237EF6F80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_237F03530;
  *(v31 + 32) = v77;
  sub_237EF6F30();
  sub_237EF6F40();
  v70 = 0;
  v71 = v76;
  v72 = 0;
  v73 = 0;
  sub_237D74FBC(&v76, v69);
  v32 = v61;
  while (1)
  {
    sub_237E47700();
    if (!v34)
    {
      break;
    }

    v36 = v33;
    v37 = v34;
    v38 = v35;
    v39 = sub_237EF6F70();
    sub_237E47CD4(v36, 0, v40, v37, v38);

    v39(v69, 0);
  }

  sub_237C9A114(&v76, &qword_27DEB2210);

  (*(v59 + 32))(v3, v17, v63);
  v41 = v54;
  sub_237EF7530();
  sub_237EF7720();
  sub_237EF7620();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v42 = v60;
    if (v28)
    {
      v70 = MEMORY[0x277D84F90];
      sub_237C63284(0, v28, 0);
      v43 = 0;
      v44 = v70;
      v68 = *MEMORY[0x277D25128];
      v45 = v55;
      do
      {
        OUTLINED_FUNCTION_54_9();
        v69[0] = v46;
        v69[1] = 0xE700000000000000;
        v47 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v47);

        sub_237EF6DA0();
        (*(v60 + 104))(v65, v68, v67);
        OUTLINED_FUNCTION_19_42();
        sub_237EF7090();
        v70 = v44;
        v48 = v45;
        v50 = *(v44 + 16);
        v49 = *(v44 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = OUTLINED_FUNCTION_17_0(v49);
          sub_237C63284(v52, v50 + 1, 1);
          v44 = v70;
        }

        ++v43;
        *(v44 + 16) = v50 + 1;
        OUTLINED_FUNCTION_28();
        (*(v66 + 32))(v44 + v51 + *(v66 + 72) * v50, v48, v64);
        v45 = v48;
      }

      while (v28 != v43);
      v32 = v61;
      v42 = v60;
      v41 = v54;
    }

    else
    {
      v68 = *MEMORY[0x277D25128];
    }

    sub_237EF76B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    *(swift_allocObject() + 16) = xmmword_237F03530;
    sub_237EF8260();
    sub_237EF6DA0();
    (*(v42 + 104))(v65, v68, v67);
    OUTLINED_FUNCTION_48_13();
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF7700();
    sub_237EF8260();
    OUTLINED_FUNCTION_48_13();
    sub_237EF7600();
    OUTLINED_FUNCTION_21_42();
    (*(v56 + 16))(v57, v41, v53);
    (*(v32 + 104))(v57, *MEMORY[0x277D25380], v58);
    sub_237EF7660();
    (*(v56 + 8))(v41, v53);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_237E49F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v45 = v25;
  v26 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_30();
  v34 = *(v20 + 2);
  v48 = *v20;
  v49 = v34;
  sub_237E4976C();
  if (!v21)
  {
    v44 = v26;
    v35 = OUTLINED_FUNCTION_41_13();
    (v28)(v35);
    sub_237EF7810();
    v36 = type metadata accessor for CoreMLPackage();
    v37 = OUTLINED_FUNCTION_12_47(*(v36 + 24));
    (v28)(v37);
    memcpy(v47, v31, sizeof(v47));
    sub_237C9A114(v47, &unk_27DEAD7B0);
    OUTLINED_FUNCTION_29_29();
    v38 = OUTLINED_FUNCTION_52_12();
    v39(v38, v22);
    sub_237E34060();
    v41 = v40;
    sub_237EF7780();
    OUTLINED_FUNCTION_27_26();
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_25_32(&a16);
    OUTLINED_FUNCTION_49_14();
    v45(&v46, 0);
    (*(v28 + 8))(v22, v44);
    v42 = OUTLINED_FUNCTION_45_17();
    v41(v42);
    v43 = OUTLINED_FUNCTION_47_15();
    v41(v43);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E4A1D0()
{
  OUTLINED_FUNCTION_13_4();
  v161 = v3;
  v143 = v4;
  v144 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v142 = sub_237EF7570();
  OUTLINED_FUNCTION_1();
  v141 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v13);
  v154 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v159 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_30();
  v157 = sub_237EF75B0();
  OUTLINED_FUNCTION_1();
  v156 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v19);
  v139 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v138 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v22);
  v164 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v160 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_2(v128 - v27);
  v168 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v162 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v128 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4CF8);
  v37 = OUTLINED_FUNCTION_18(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = v128 - v39;
  v41 = v0[5];
  if (!v41)
  {
    sub_237C84150();
    swift_allocError();
    *v70 = 0xD000000000000012;
    *(v70 + 8) = 0x8000000237F00840;
    *(v70 + 16) = 0xD00000000000001FLL;
    *(v70 + 24) = 0x8000000237F00860;
    *(v70 + 32) = 5;
    swift_willThrow();
    goto LABEL_28;
  }

  v42 = v0;
  v146 = v35;
  v166 = v1;
  v131 = v2;
  v133 = v32;
  v137 = v10;
  v134 = v6;
  v43 = *v0;
  v44 = v0[1];
  v46 = v0[2];
  v45 = v0[3];
  v47 = v0[4];
  v48 = v0[6];
  v49 = v42[7];
  v167 = v42[8];
  swift_bridgeObjectRetain_n();

  v163 = sub_237E48ECC(v46);
  v170[0] = v43;
  v170[1] = v44;
  v132 = v46;
  v170[2] = v46;
  v170[3] = v45;
  v148 = v45;
  v147 = v47;
  v170[4] = v47;
  v170[5] = v41;
  v50 = v48;
  v153 = v41;
  v170[6] = v48;
  v170[7] = v49;
  v130 = v49;
  v170[8] = v167;
  v51 = TreeClassifierModel.featureColumnNames.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  inited = swift_initStackObject();
  v129 = xmmword_237F04760;
  *(inited + 16) = xmmword_237F04760;
  v158 = v43;
  *(inited + 32) = v43;
  *(inited + 40) = v44;
  v152 = v44;
  sub_237ED82A8(v163, v40);
  v53 = v164;
  if (__swift_getEnumTagSinglePayload(v40, 1, v164) == 1)
  {
    goto LABEL_30;
  }

  v54 = sub_237EF76F0();
  v55 = *(v160 + 8);
  v136 = v160 + 8;
  v135 = v55;
  v55(v40, v53);
  if (!*(v54 + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v56 = *(v162 + 80);
  v57 = *(v162 + 16);
  v167 = (v56 + 32) & ~v56;
  v57(v146, v54 + v167, v168);

  v58 = sub_237EF70A0();
  v60 = v59;
  v61 = OUTLINED_FUNCTION_47_15();
  v62(v61);
  *(inited + 48) = v58;
  *(inited + 56) = v60;
  v169[0] = v51;
  sub_237E4858C(inited);
  sub_237CADF98(v169[0]);
  v64 = v63;
  v170[0] = v158;
  v170[1] = v152;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x6C696261626F7250, 0xEB00000000797469);
  sub_237E4B218();
  v66 = v65;
  v68 = v67;

  v170[0] = v148;
  v170[1] = v147;
  v170[2] = v153;
  v170[3] = v50;
  v69 = v166;
  sub_237E4B378();
  if (v69)
  {

    swift_bridgeObjectRelease_n();
LABEL_28:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v128[1] = v56;
  v146 = v64;
  v166 = v66;
  v148 = v68;
  v147 = 0;
  v40 = v145;
  sub_237ED82A8(v163, v145);
  v49 = v164;
  if (__swift_getEnumTagSinglePayload(v40, 1, v164) == 1)
  {
    goto LABEL_31;
  }

  sub_237EF76F0();
  v135(v40, v49);
  sub_237EF76B0();

  v71 = swift_dynamicCastMetatype();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  v72 = *(v162 + 72);
  *(swift_allocObject() + 16) = v129;
  v73 = v133;
  if (v71)
  {
    sub_237EF6D00();
    v74 = OUTLINED_FUNCTION_50_15();
    v75(v74);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF8260();
    sub_237EF6E40();
  }

  else
  {
    sub_237EF6DB0();
    v76 = OUTLINED_FUNCTION_50_15();
    v77(v76);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF8260();
    sub_237EF6E50();
  }

  v50 = v154;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_19_42();
  sub_237EF7090();
  v78 = v165;
  sub_237EF7700();
  v40 = v131;
  sub_237EF7650();
  v49 = v159;
  v79 = (*(v159 + 88))(v40, v50);
  if (v79 == *MEMORY[0x277D25390])
  {
    LODWORD(v161) = v79;

    (*(v49 + 96))(v40, v50);
    (*(v156 + 32))(v155, v40, v157);
    v80 = v130;
    v81 = *(v130 + 16);
    v82 = MEMORY[0x277D84F90];
    if (v81)
    {
      v170[0] = MEMORY[0x277D84F90];
      v83 = OUTLINED_FUNCTION_44_17();
      sub_237C62D90(v83, v84, v85);
      v82 = v170[0];
      v86 = (v80 + 40);
      v50 = (v80 + 40);
      do
      {
        v88 = *v50;
        v50 += 2;
        v87 = v88;
        if (v88)
        {
          v89 = *(v86 - 1);
          v78 = v87;
        }

        else
        {
          v89 = 0;
          v78 = 0xE000000000000000;
        }

        v170[0] = v82;
        v91 = *(v82 + 16);
        v90 = *(v82 + 24);
        sub_237EF8260();
        if (v91 >= v90 >> 1)
        {
          sub_237C62D90(v90 > 1, v91 + 1, 1);
          v82 = v170[0];
        }

        *(v82 + 16) = v91 + 1;
        v92 = v82 + 16 * v91;
        *(v92 + 32) = v89;
        *(v92 + 40) = v78;
        v86 = v50;
        --v81;
      }

      while (v81);
      OUTLINED_FUNCTION_43_18();
      v49 = v159;
    }

    v93 = v140;
    *v140 = v82;
    (*(v141 + 104))(v93, *MEMORY[0x277D25258], v142);
    v94 = v155;
    sub_237EF7580();
    v95 = v149;
    (*(v156 + 16))(v149, v94, v157);
    v96 = *(v49 + 104);
    v97 = v161;
    v159 = v49 + 104;
    v161 = v96;
    v96(v95, v97, v50);
    sub_237EF7660();
    sub_237EF7720();
    sub_237EF7620();
    v98 = v132;
    v99 = *(v132 + 16);
    if (v99)
    {
      v170[0] = MEMORY[0x277D84F90];
      v100 = OUTLINED_FUNCTION_44_17();
      sub_237C63284(v100, v101, v102);
      v103 = v170[0];
      v50 = (v162 + 32);
      v104 = (v98 + 56);
      do
      {
        v105 = *(v104 - 1);
        v78 = *v104;
        sub_237EF8260();
        sub_237E0ECD4(v105, v78, v73);

        v170[0] = v103;
        v107 = *(v103 + 16);
        v106 = *(v103 + 24);
        if (v107 >= v106 >> 1)
        {
          v108 = OUTLINED_FUNCTION_17_0(v106);
          sub_237C63284(v108, v107 + 1, 1);
          v103 = v170[0];
        }

        v104 += 32;
        *(v103 + 16) = v107 + 1;
        (*v50)(v103 + v167 + v72 * v107, v73, v168);
        --v99;
      }

      while (v99);
      OUTLINED_FUNCTION_43_18();
    }

    v109 = v150;
    sub_237EF76B0();
    sub_237EF76F0();
    sub_237EF7700();
    sub_237EF7600();
    sub_237EF7640();
    sub_237EF75E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388);
    v110 = v160;
    OUTLINED_FUNCTION_14_54();
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_237F03530;
    v112 = *(v110 + 16);
    v113 = v164;
    v112(&v109[v111], v78, v164);
    v170[0] = v163;
    OUTLINED_FUNCTION_10_58();
    sub_237E48488(v111);
    v114 = v149;
    sub_237EF74F0();
    v161(v114, *MEMORY[0x277D25368], v50);
    sub_237EF7660();
    v112(v151, v109, v113);
    v115 = v137;
    sub_237EF7810();
    v116 = type metadata accessor for CoreMLPackage();
    v117 = OUTLINED_FUNCTION_18_37(*(v116 + 24));
    (v112)(v117);
    memcpy(v170, v109, 0x58uLL);
    sub_237C9A114(v170, &unk_27DEAD7B0);
    OUTLINED_FUNCTION_30_35();
    v118 = v134;
    v119 = OUTLINED_FUNCTION_52_12();
    v120 = v115;
    v121 = v144;
    v122(v119, v120, v144);
    sub_237E34060();
    sub_237EF7780();
    OUTLINED_FUNCTION_27_26();
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_58_9(v123, v124, 0xD00000000000001ALL);
    OUTLINED_FUNCTION_49_14();
    (v99)(v169, 0);

    (*(v118 + 8))(v137, v121);
    v125 = v164;
    v126 = v135;
    v135(v151, v164);
    v127 = OUTLINED_FUNCTION_47_15();
    v126(v127);
    (*(v156 + 8))(v155, v157);
    (v126)(v165, v125);
    goto LABEL_28;
  }

LABEL_32:
  (*(v49 + 8))(v40, v50);
  sub_237EF9740();
  __break(1u);
}

void sub_237E4B218()
{
  OUTLINED_FUNCTION_57_9();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (!sub_237E478D8(v4, v2, v0))
  {
    sub_237EF8260();
LABEL_14:
    OUTLINED_FUNCTION_56_15();
    return;
  }

  v6 = 1;
  v7 = MEMORY[0x277D83B88];
LABEL_3:
  sub_237EF8260();
  MEMORY[0x2383E0710](95, 0xE100000000000000);
  v8 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v8);

  if (!__OFADD__(v6++, 1))
  {
    if (*(v1 + 16))
    {
      v10 = v7;
      sub_237EFA120();
      sub_237EF8610();
      sub_237EFA170();
      OUTLINED_FUNCTION_34_16();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        if (((*(v1 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
        {
          break;
        }

        v15 = (*(v1 + 48) + 16 * v14);
        if (*v15 != v5 || v15[1] != v3)
        {
          v17 = sub_237EF9D40();
          v11 = v14 + 1;
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        v7 = v10;
        goto LABEL_3;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_237E4B378()
{
  OUTLINED_FUNCTION_13_4();
  v50 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v59 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_3();
  v49 = v4;
  OUTLINED_FUNCTION_12_1();
  v48 = sub_237EF7570();
  OUTLINED_FUNCTION_1();
  v58 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v57 = v7;
  OUTLINED_FUNCTION_12_1();
  v8 = sub_237EF6F90();
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF6F60();
  OUTLINED_FUNCTION_1();
  v53 = v11;
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v52 = v12;
  OUTLINED_FUNCTION_12_1();
  v56 = sub_237EF75B0();
  OUTLINED_FUNCTION_1();
  v51 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v55 = v15;
  OUTLINED_FUNCTION_12_1();
  v65 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v60 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v64 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v61 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v34 = *v0;
  v33 = v0[1];
  sub_237E88538();
  if (v1)
  {
    goto LABEL_12;
  }

  v63 = v33;
  v47 = v34;
  sub_237EF5C30();
  swift_allocObject();
  sub_237EF5C20();
  (*(v61 + 104))(v32, *MEMORY[0x277CC86A8], v27);
  sub_237EF5C00();
  sub_237E4C030();
  sub_237EF5C10();
  memcpy(v66, v67, sizeof(v66));
  memcpy(v69, v67, sizeof(v69));
  sub_237D73A1C(v68);
  sub_237D6E9A0(v66);

  v35 = OUTLINED_FUNCTION_28_6();
  sub_237CBA6B8(v35, v36);
  sub_237EF7720();
  sub_237EF7620();
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v65;
    if (v33)
    {
      v70 = MEMORY[0x277D84F90];
      sub_237C63284(0, v33, 0);
      v38 = 0;
      v62 = *MEMORY[0x277D25128];
      do
      {
        OUTLINED_FUNCTION_54_9();
        v39 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v39);

        sub_237EF6DA0();
        (*(v60 + 104))(v20, v62, v37);
        OUTLINED_FUNCTION_19_42();
        sub_237EF7090();
        v41 = *(v70 + 16);
        v40 = *(v70 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_17_0(v40);
          sub_237C63284(v43, v41 + 1, 1);
        }

        ++v38;
        *(v70 + 16) = v41 + 1;
        OUTLINED_FUNCTION_28();
        (*(v64 + 32))(v70 + v42 + *(v64 + 72) * v41, v26, v21);
        v37 = v65;
      }

      while (v63 != v38);
    }

    sub_237EF76B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    *(swift_allocObject() + 16) = xmmword_237F04760;
    sub_237EF8260();
    sub_237EF6D00();
    (*(v60 + 104))(v20, *MEMORY[0x277D25118], v37);
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF8260();
    sub_237EF6E40();
    OUTLINED_FUNCTION_19_42();
    sub_237EF7090();
    sub_237EF7700();
    sub_237EF8260();
    sub_237EF7600();
    sub_237EF8260();
    sub_237EF7640();
    OUTLINED_FUNCTION_21_42();
    sub_237EF75A0();
    v44 = MEMORY[0x277D25160];
    if (v47 != 2)
    {
      v44 = MEMORY[0x277D25158];
    }

    (*(v53 + 104))(v52, *v44, v54);
    sub_237EF7590();
    sub_237E47B7C(v47);
    sub_237C9A114(v68, &qword_27DEB2210);
    sub_237EF7560();
    if ((v47 & 0x8000000000000000) == 0)
    {
      *v57 = sub_237EC9280(0, v47);
      (*(v58 + 104))(v57, *MEMORY[0x277D25250], v48);
      sub_237EF7580();
      (*(v51 + 16))(v49, v55, v56);
      (*(v59 + 104))(v49, *MEMORY[0x277D25390], v50);
      sub_237EF7660();
      v45 = OUTLINED_FUNCTION_48_13();
      v46(v45);
LABEL_12:
      OUTLINED_FUNCTION_12_6();
      return;
    }
  }

  __break(1u);
}

void sub_237E4BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v46 = v25;
  v26 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_21();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_30();
  v34 = *(v20 + 2);
  v35 = *(v20 + 3);
  v49 = *v20;
  v50 = v34;
  v51 = v35;
  sub_237E4B378();
  if (!v21)
  {
    v45 = v26;
    v36 = OUTLINED_FUNCTION_41_13();
    (v28)(v36);
    sub_237EF7810();
    v37 = type metadata accessor for CoreMLPackage();
    v38 = OUTLINED_FUNCTION_12_47(*(v37 + 24));
    (v28)(v38);
    memcpy(v48, v31, sizeof(v48));
    sub_237C9A114(v48, &unk_27DEAD7B0);
    OUTLINED_FUNCTION_29_29();
    v39 = OUTLINED_FUNCTION_52_12();
    v40(v39, v22, v26);
    sub_237E34060();
    v42 = v41;
    sub_237EF7780();
    OUTLINED_FUNCTION_27_26();
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_25_32(&a14);
    OUTLINED_FUNCTION_49_14();
    v46(&v47, 0);
    (*(v28 + 8))(v22, v45);
    v43 = OUTLINED_FUNCTION_45_17();
    v42(v43);
    v44 = OUTLINED_FUNCTION_47_15();
    v42(v44);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E4BF18(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_237EF9710();
LABEL_9:
  result = sub_237EF93C0();
  *v1 = result;
  return result;
}

uint64_t sub_237E4BFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_237E4C030()
{
  result = qword_27DEB4D00;
  if (!qword_27DEB4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D00);
  }

  return result;
}

BOOL sub_237E4C18C(uint64_t *a1, uint64_t a2)
{
  v7 = *v2;
  sub_237EFA110();
  OUTLINED_FUNCTION_17_46();
  while (1)
  {
    OUTLINED_FUNCTION_28_29();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_14();
  v10 = sub_237E4DB68(a2, v3, v9);
  OUTLINED_FUNCTION_55_9(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_237E4C234(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF60B0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v25 = v2;
  v11 = *v2;
  sub_237E4FE98(&qword_27DEAFC78);
  v29 = a2;
  sub_237EF83D0();
  v27 = v11;
  v28 = v11 + 56;
  OUTLINED_FUNCTION_34_16();
  v14 = ~v13;
  while (1)
  {
    v15 = v12 & v14;
    v16 = (1 << (v12 & v14)) & *(v28 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_46_18();
      v22();
      v30 = *v25;
      sub_237E4DC6C(v10, v15, isUniquelyReferenced_nonNull_native);
      *v25 = v30;
      OUTLINED_FUNCTION_46_18();
      v23();
      return v16 == 0;
    }

    v17 = v6[9] * v15;
    v18 = v6[2];
    v18(v10, *(v27 + 48) + v17, v4);
    sub_237E4FE98(&qword_27DEB4D18);
    v19 = sub_237EF8520();
    v20 = v6[1];
    v20(v10, v4);
    if (v19)
    {
      break;
    }

    v12 = v15 + 1;
  }

  v20(v29, v4);
  v18(a1, *(v27 + 48) + v17, v4);
  return v16 == 0;
}

BOOL sub_237E4C5F8(_DWORD *a1, uint64_t a2)
{
  v7 = *v2;
  MEMORY[0x2383E21E0](*(v7 + 40), a2, 4);
  OUTLINED_FUNCTION_17_46();
  while (1)
  {
    OUTLINED_FUNCTION_28_29();
    if (v8)
    {
      break;
    }

    if (*(*(v7 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_51_14();
  v10 = sub_237E4E08C(a2, v3, v9);
  OUTLINED_FUNCTION_55_9(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
LABEL_6:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_237E4C6A8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_11_54();
  sub_237EFA140();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x2383E2210](a2);
  }

  v8 = sub_237EFA170();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  sub_237E4E194(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v17;
  result = 1;
  v14 = a3;
LABEL_12:
  *v3 = a2;
  *(v3 + 8) = v14 & 1;
  return result;
}

BOOL sub_237E4C7EC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_11_54();
  v6 = a2 & 1;
  sub_237EFA140();
  sub_237EFA170();
  OUTLINED_FUNCTION_17_46();
  while (1)
  {
    v11 = v7 & v9;
    v12 = (v10 << (v7 & v9)) & *(v8 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      sub_237E4E334(a2 & 1, v11, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      goto LABEL_7;
    }

    if (*(*(v4 + 48) + v11) == (a2 & 1))
    {
      break;
    }

    v7 = v11 + 1;
  }

  v6 = *(*(v4 + 48) + v11);
LABEL_7:
  result = v12 == 0;
  *v2 = v6;
  return result;
}

uint64_t sub_237E4C8D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8);
  result = sub_237EF92F0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_237D28F08(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4CB2C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0);
  result = sub_237EF92F0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_237D28F08(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_237EFA110();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4CD50()
{
  v1 = v0;
  v35 = sub_237EF60B0();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D20);
  result = sub_237EF92F0();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_237D28F08(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_237E4FE98(&qword_27DEAFC78);
    result = sub_237EF83D0();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4D094()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D28);
  result = sub_237EF92F0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_237D28F08(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v17 = *v15;
    v16 = v15[1];
    sub_237EFA120();
    sub_237EFA140();
    if (v16)
    {
      sub_237EF8610();
    }

    result = sub_237EFA170();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v17;
    v26[1] = v16;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237E4D30C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D10);
  result = sub_237EF92F0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v7 = (v2 + 56);
  v6 = *(v2 + 56);
  v8 = 1 << *(v2 + 32);
  v24 = v1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = result + 56;
  if ((v9 & v6) == 0)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= ((v8 + 63) >> 6))
      {
        break;
      }

      v14 = v7[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    if (v8 >= 64)
    {
      sub_237D28F08(0, (v8 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v1 = v24;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
    result = MEMORY[0x2383E21E0](*(v4 + 40), v15, 4);
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 4 * v19) = v15;
    ++*(v4 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4D534()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D40);
  result = sub_237EF92F0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_237D28F08(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 16 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_237EFA120();
    sub_237EFA140();
    if (v17 != 1)
    {
      MEMORY[0x2383E2210](v16);
    }

    result = sub_237EFA170();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v4 + 48) + 16 * v21;
    *v26 = v16;
    *(v26 + 8) = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237E4D7B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558);
  result = sub_237EF92F0();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_237D28F08(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
    sub_237EFA120();
    sub_237EFA140();
    result = sub_237EFA170();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_237E4DA00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237E4C8D0();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_237E4EE64();
LABEL_10:
      v15 = *v4;
      sub_237EFA120();
      sub_237EF8610();
      result = sub_237EFA170();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_237EF9D40() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_237E4E474();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_237E4DB68(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4CB2C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237E4F0FC();
LABEL_10:
      v12 = *v3;
      result = sub_237EFA110();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237E4E5CC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_237E4DC6C(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_237EF60B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4CD50();
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_237E4F2E8();
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_237E4FE98(&qword_27DEAFC78);
      v13 = sub_237EF83D0();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_237E4FE98(&qword_27DEB4D18);
        v15 = sub_237EF8520();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_237E4E70C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_237E4DED0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237E4D094();
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_237E4E940();
        goto LABEL_22;
      }

      sub_237E4F5EC();
    }

    v11 = *v4;
    sub_237EFA120();
    sub_237EFA140();
    if (a2)
    {
      sub_237EF8610();
    }

    result = sub_237EFA170();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_237EF9D40();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_237E4E08C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4D30C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237E4F83C();
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x2383E21E0](*(*v3 + 40), v5, 4);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237E4EA94();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_237E4E194(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237E4D534();
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_237E4EBD4();
        goto LABEL_18;
      }

      sub_237E4FA2C();
    }

    v10 = *v4;
    sub_237EFA120();
    sub_237EFA140();
    if ((a2 & 1) == 0)
    {
      MEMORY[0x2383E2210](v7);
    }

    result = sub_237EFA170();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v10 + 48) + 16 * a3;
        if (*(v13 + 8))
        {
          if (a2)
          {
            goto LABEL_21;
          }
        }

        else if ((a2 & 1) == 0 && *v13 == v7)
        {
          goto LABEL_21;
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_18:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v7;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0);
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_237E4E334(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_237E4D7B4();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_237E4FC7C();
LABEL_10:
      v12 = *v3;
      sub_237EFA120();
      sub_237EFA140();
      result = sub_237EFA170();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_237E4ED24();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_237EFA010();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_237E4E474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_237EF8260();
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

void *sub_237E4E5CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237E4E70C()
{
  v1 = v0;
  v2 = sub_237EF60B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D20);
  v6 = *v0;
  v7 = sub_237EF92E0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_237E4E940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D28);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = sub_237EF8260();
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

void *sub_237E4EA94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D10);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237E4EBD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D40);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_237E4ED24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558);
  v2 = *v0;
  v3 = sub_237EF92E0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_237E4EE64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8);
  result = sub_237EF92F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_237EFA120();
        sub_237EF8260();
        sub_237EF8610();
        result = sub_237EFA170();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_237E4F098(uint64_t a1, uint64_t a2)
{
  v4 = _s10DenseBlockVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E4F0FC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0);
  result = sub_237EF92F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_237EFA110();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_237E4F2E8()
{
  v1 = v0;
  v32 = sub_237EF60B0();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D20);
  v6 = sub_237EF92F0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_237E4FE98(&qword_27DEAFC78);
        result = sub_237EF83D0();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_237E4F5EC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D28);
  result = sub_237EF92F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_237EFA120();
        sub_237EFA140();
        if (v15)
        {
          sub_237EF8260();
          sub_237EF8610();
        }

        result = sub_237EFA170();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v16;
        v25[1] = v15;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_27;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_237E4F83C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D10);
  result = sub_237EF92F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 4 * (v11 | (v5 << 6)));
        result = MEMORY[0x2383E21E0](*(v4 + 40), v14, 4);
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 4 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          goto LABEL_23;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_237E4FA2C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D40);
  result = sub_237EF92F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(v2 + 48) + 16 * (v11 | (v5 << 6));
        v15 = *v14;
        v16 = *(v14 + 8);
        sub_237EFA120();
        sub_237EFA140();
        if (v16 != 1)
        {
          MEMORY[0x2383E2210](v15);
        }

        result = sub_237EFA170();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = *(v4 + 48) + 16 * v20;
        *v25 = v15;
        *(v25 + 8) = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_27;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_237E4FC7C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558);
  result = sub_237EF92F0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        sub_237EFA120();
        sub_237EFA140();
        result = sub_237EFA170();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

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
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_237E4FE98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_237EF60B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237E4FEDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_237EF9710();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_237D6DA5C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_237E50040();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_237E50084();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D30);
          v9 = sub_237E0FEE8(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237E50040()
{
  result = qword_27DEAF160;
  if (!qword_27DEAF160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEAF160);
  }

  return result;
}

unint64_t sub_237E50084()
{
  result = qword_27DEB4D38;
  if (!qword_27DEB4D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_54()
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_12_47@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_37@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 256);
  v3 = v2 + a1;
  *(v3 + 80) = 0;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  return v2;
}

uint64_t OUTLINED_FUNCTION_21_42()
{

  return sub_237EF75E0();
}

uint64_t OUTLINED_FUNCTION_22_35()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_25_32@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256) | 0x8000000000000000;

  return sub_237C91098(v2, v1, 0xD00000000000001ALL, v4);
}

uint64_t OUTLINED_FUNCTION_27_26()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_29_29()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

double OUTLINED_FUNCTION_30_35()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237C91098(v3, v4, a3, v5 | 0x8000000000000000);
}

uint64_t TreeRegressorModel.featureColumnNames.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);
      sub_237EF8260();
      if (v7 >= v8 >> 1)
      {
        sub_237C62D90(v8 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t TreeRegressorModel.predictionColumnName.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t TreeRegressorModel.predictionColumnName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TreeRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450);
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  *(v5 + 88) = *(v4 + 1);
  *(v5 + 104) = *(v4 + 3);
  *(v5 + 120) = v4[5];

  return MEMORY[0x2822009F8](sub_237E50704, 0, 0);
}

void sub_237E50704()
{
  v23 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  *v20 = *(v0 + 80);
  *&v20[8] = *(v0 + 88);
  v21 = v2;
  v22 = v1;
  sub_237E50988(&v17);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = v18;
  v6 = v17;
  *&v17 = *(v0 + 104);
  *(&v17 + 1) = v3;
  v18 = v4;
  *v20 = v6;
  v20[16] = v5;
  *&v21 = v19;

  v7 = BaseTreeRegressorModel.applied(features:eventHandler:)(v20);

  sub_237EF6190();
  v8 = *(v7 + 16);
  if (v8)
  {
    *v20 = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C62FA0();
    v9 = 0;
    v10 = *v20;
    while (v9 < *(v7 + 16))
    {
      v11 = *(v7 + 4 * v9 + 32);
      *v20 = v10;
      v12 = *(v10 + 16);
      if (v12 >= *(v10 + 24) >> 1)
      {
        sub_237C62FA0();
        v10 = *v20;
      }

      ++v9;
      *(v10 + 16) = v12 + 1;
      *(v10 + 8 * v12 + 32) = v11;
      if (v8 == v9)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    sub_237EF8260();

    v10 = MEMORY[0x277D84F90];
LABEL_13:
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);
    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
    sub_237DDC6C4();
    sub_237EF6220();
    sub_237EF6110();
    (*(v14 + 8))(v13, v15);

    v16 = *(v0 + 8);

    v16();
  }
}

uint64_t sub_237E50988@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  result = sub_237DDE9AC(*(v1 + 16), 0xD000000000000012, 0x8000000237F19CF0, &v14);
  if (!v2)
  {
    v6 = v14;
    v7 = v16;
    if (*(&v14 + 1) == v4)
    {
      v8 = v15;
      *a1 = v14;
      *(a1 + 8) = v4;
      *(a1 + 16) = v8;
      *(a1 + 24) = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_237F04760;
      *(v9 + 32) = v6;

      *&v14 = 0;
      *(&v14 + 1) = 0xE000000000000000;
      sub_237EF9330();

      *&v14 = 0x6465746365707845;
      *(&v14 + 1) = 0xE900000000000020;
      v10 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v10);

      MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
      v11 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v11);

      v12 = v14;
      sub_237C84150();
      swift_allocError();
      *v13 = v9;
      *(v13 + 8) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_237E50B4C(uint64_t a1)
{
  sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v20 = v5;
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_79();
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[5];

  v35 = sub_237E88538();
  if (v2)
  {
  }

  v11 = v10;
  v18 = v7;
  sub_237EF5C30();
  swift_allocObject();
  sub_237EF5C20();
  (*(v20 + 104))(v3, *MEMORY[0x277CC86A8], v21);
  sub_237EF5C00();
  sub_237E4C030();
  v12 = v35;
  sub_237EF5C10();
  memcpy(v24, v31, sizeof(v24));
  memcpy(v34, v31, sizeof(v34));
  sub_237D73A1C(v32);
  sub_237D6E9A0(v24);

  sub_237CBA6B8(v12, v11);

  v23[112] = 0;
  *(v22 + 7) = v32[0];
  *(&v22[1] + 7) = v32[1];
  *(&v22[2] + 7) = v32[2];
  *(&v22[3] + 7) = v33;
  v25[0] = 0uLL;
  *&v25[1] = v8;
  *(&v25[1] + 1) = v6;
  *&v25[2] = v18;
  *(&v25[2] + 1) = v9;
  LOBYTE(v25[3]) = 0;
  v25[6] = *(&v22[2] + 15);
  *(&v25[5] + 1) = v22[2];
  *(&v25[4] + 1) = v22[1];
  *(&v25[3] + 1) = v22[0];
  v26[1] = 0;
  v26[0] = 0;
  v26[2] = v8;
  v26[3] = v6;
  v26[4] = v18;
  v26[5] = v9;
  v27 = 0;
  *&v30[15] = *(&v22[2] + 15);
  *v30 = v22[2];
  v29 = v22[1];
  v28 = v22[0];
  sub_237EF8260();
  sub_237EF8260();
  sub_237E52138(v25, v23);
  sub_237E52170(v26);
  memcpy(v23, v25, 0x70uLL);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(v14 + 8);
  v16 = sub_237E523C0();
  v15(v23, &unk_284ADB0E0, v16, v13, v14);
  memcpy(v22, v23, sizeof(v22));
  return sub_237E52170(v22);
}

void *sub_237E50E6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_79();
  sub_237C66728(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D98);
  type metadata accessor for EstimatorPackageDecoder(0);
  if (!swift_dynamicCast())
  {
    sub_237EF93E0();
    swift_allocError();
    v21 = v20;
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v22 + 104))(v21);
    return swift_willThrow();
  }

  v38 = a2;
  v39 = v8;

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(v11 + 8);
  v13 = sub_237E52340();
  result = v12(v41, &unk_284ADB0E0, &unk_284ADB0E0, v13, v10, v11);
  if (v2)
  {
    return result;
  }

  memcpy(v40, v41, sizeof(v40));
  v15 = v40[13];
  v45 = v40[7];
  v46 = v40[8];
  v47 = *&v40[9];
  v48 = *&v40[11];
  v49 = v40[13];
  sub_237EF8260();
  sub_237D7360C(&v45, v42);
  memcpy(v43, v42, sizeof(v43));
  if (sub_237E52394(v43) == 1)
  {
    sub_237EF93E0();
    swift_allocError();
    v17 = v16;
    sub_237EF9330();

    v50 = v15;
    v18 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v18);
    sub_237E52170(v40);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v19 + 104))(v17);
    return swift_willThrow();
  }

  memcpy(v44, v43, sizeof(v44));
  sub_237D6E010();
  sub_237EF85B0();
  v23 = sub_237EF85A0();
  v25 = v24;

  result = (*(v39 + 8))(v3, v6);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA860(v42, &qword_27DEB4DA8);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v26 = sub_237E88668(0, 0);
    sub_237E88474(v23, v25);
    v27 = 0;
    v28 = v40[2];
    v29 = (v40[2] + 56);
    v30 = *(v40[2] + 16) + 1;
    while (--v30)
    {
      v31 = *v29;
      v32 = *(v29 - 1);
      v29 += 32;
      if (v31 >= 4)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      v34 = __OFADD__(v27, v33);
      v27 += v33;
      if (v34)
      {
        __break(1u);
        break;
      }
    }

    sub_237E523AC(v23, v25);
    v35 = v40[4];
    if (LOBYTE(v40[6]))
    {
      v36 = 0;
    }

    else
    {
      v36 = v40[5];
    }

    v37 = v40[3];
    sub_237EF8260();
    sub_237EF8260();
    result = sub_237E52170(v40);
    v38[4] = v26;
    v38[5] = v36;
    v38[2] = v28;
    v38[3] = v27;
    *v38 = v37;
    v38[1] = v35;
  }

  return result;
}

uint64_t sub_237E51334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_237C5FFA4;

  return TreeRegressorModel.applied(to:eventHandler:)(a1, a2, a3, a4);
}

uint64_t sub_237E51430(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D78);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E52090();
  sub_237EFA1B0();
  LOBYTE(v26[0]) = 0;
  OUTLINED_FUNCTION_3_84();
  sub_237EF99D0();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v30 = v11;
    v12 = *(v11 + 16);
    if (v12)
    {
      v22[0] = v3;
      v22[1] = 0;
      v23 = v7;
      v24 = v5;
      *&v26[0] = MEMORY[0x277D84F90];
      sub_237EF8260();
      sub_237C62D90(0, v12, 0);
      v13 = *&v26[0];
      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        *&v26[0] = v13;
        v17 = *(v13 + 16);
        v2 = *(v13 + 24);
        sub_237EF8260();
        if (v17 >= v2 >> 1)
        {
          sub_237C62D90(v2 > 1, v17 + 1, 1);
          v13 = *&v26[0];
        }

        *(v13 + 16) = v17 + 1;
        v18 = v13 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        v14 += 4;
        --v12;
      }

      while (v12);
      v5 = v24;
      v7 = v23;
      v3 = v22[0];
    }

    else
    {
      sub_237E522DC(&v30, v26, &qword_27DEB4D58);
      v13 = MEMORY[0x277D84F90];
    }

    *&v26[0] = v13;
    v25[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
    sub_237CAD3E8(&qword_27DEAEBD8);
    OUTLINED_FUNCTION_9_33();
    if (v2)
    {
      sub_237CBA860(&v30, &qword_27DEB4D58);
    }

    else
    {

      *&v26[0] = v30;
      v25[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58);
      sub_237E521A0(&qword_27DEB4D80, sub_237E52218);
      OUTLINED_FUNCTION_9_33();
      sub_237CBA860(&v30, &qword_27DEB4D58);
      LOBYTE(v26[0]) = 2;
      OUTLINED_FUNCTION_3_84();
      sub_237EF9A10();
      LOBYTE(v26[0]) = 5;
      OUTLINED_FUNCTION_3_84();
      sub_237EF99F0();
      v20 = *(v3 + 72);
      v28[0] = *(v3 + 56);
      v28[1] = v20;
      v28[2] = *(v3 + 88);
      v29 = *(v3 + 104);
      v21 = *(v3 + 72);
      v26[0] = *(v3 + 56);
      v26[1] = v21;
      v26[2] = *(v3 + 88);
      v27 = *(v3 + 104);
      v25[63] = 6;
      sub_237E522DC(v28, v25, &qword_27DEB2210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
      sub_237E5226C(&qword_27DEB4D90);
      OUTLINED_FUNCTION_9_33();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_237E51874@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D48);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E52090();
  sub_237EFA190();
  if (v2)
  {
    v7 = 0;
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v6 = 0;
    v9 = sub_237EF98D0();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58);
    LOBYTE(v43[0]) = 3;
    sub_237E521A0(&qword_27DEB4D60, sub_237E520E4);
    OUTLINED_FUNCTION_2_90();
    sub_237EF9900();
    v12 = v44[0];
    if (v44[0])
    {
      v38 = v9;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
      LOBYTE(v43[0]) = 1;
      sub_237CAD3E8(&qword_27DEAEC28);
      OUTLINED_FUNCTION_2_90();
      sub_237EF9970();
      v38 = v9;
      v17 = MEMORY[0x10];
      if (MEMORY[0x10])
      {
        v35 = v11;
        v37 = a2;
        v44[0] = MEMORY[0x277D84F90];
        sub_237C6304C(0, MEMORY[0x10], 0);
        v18 = v44[0];
        v19 = 40;
        do
        {
          v20 = *(v19 - 8);
          v21 = *v19;
          v44[0] = v18;
          v22 = *(v18 + 16);
          v6 = *(v18 + 24);
          v39 = v22 + 1;
          sub_237EF8260();
          if (v22 >= v6 >> 1)
          {
            sub_237C6304C(v6 > 1, v39, 1);
            v18 = v44[0];
          }

          *(v18 + 16) = v39;
          v23 = v18 + 32 * v22;
          *(v23 + 32) = v20;
          *(v23 + 40) = v21;
          *(v23 + 48) = 3;
          *(v23 + 56) = 4;
          v19 += 16;
          --v17;
        }

        while (v17);
        v12 = v18;

        v11 = v35;
        a2 = v37;
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }
    }

    OUTLINED_FUNCTION_6_67(2);
    v13 = sub_237EF9910();
    if (!v6)
    {
      v24 = v14;
      v40 = v13;
      OUTLINED_FUNCTION_6_67(5);
      v36 = sub_237EF98F0();
      v63 = v25 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
      v54 = 6;
      sub_237E5226C(&qword_27DEB4D70);
      OUTLINED_FUNCTION_2_90();
      sub_237EF9970();
      v26 = OUTLINED_FUNCTION_0_81();
      v27(v26);
      v41 = v55;
      v28 = v56;
      v33 = v58;
      v34 = v57;
      v31 = v60;
      v32 = v59;
      v30 = v61;
      v43[0] = v38;
      v43[1] = v11;
      v43[2] = v12;
      v43[3] = v40;
      v43[4] = v24;
      v43[5] = v36;
      v29 = v63;
      LOBYTE(v43[6]) = v63;
      *(&v43[6] + 1) = *v62;
      HIDWORD(v43[6]) = *&v62[3];
      v43[7] = v55;
      LODWORD(v43[8]) = v56;
      v43[9] = v57;
      v43[10] = v58;
      v43[11] = v59;
      v43[12] = v60;
      v43[13] = v61;
      sub_237E52138(v43, v44);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v44[0] = v38;
      v44[1] = v11;
      v44[2] = v12;
      v44[3] = v40;
      v44[4] = v24;
      v44[5] = v36;
      v45 = v29;
      *v46 = *v62;
      *&v46[3] = *&v62[3];
      v47 = v41;
      v48 = v28;
      v49 = v34;
      v50 = v33;
      v51 = v32;
      v52 = v31;
      v53 = v30;
      sub_237E52170(v44);
      return memcpy(a2, v43, 0x70uLL);
    }

    v15 = OUTLINED_FUNCTION_0_81();
    v16(v15);
    v7 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v42);

  if (v7)
  {
  }

  return result;
}

uint64_t sub_237E51DA8()
{
  v0 = sub_237EF9890();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_237E51DFC(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x636E456C6562616CLL;
      break;
    case 5:
      result = 0x6F69746172657469;
      break;
    case 6:
      result = 0x65646F4D65657274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E51F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E51DA8();
  *a1 = result;
  return result;
}

unint64_t sub_237E51F38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E51DFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E51F80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E51DF4();
  *a1 = result;
  return result;
}

uint64_t sub_237E51FA8(uint64_t a1)
{
  v2 = sub_237E52090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E51FE4(uint64_t a1)
{
  v2 = sub_237E52090();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_237E52020@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_237E51874(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

unint64_t sub_237E52090()
{
  result = qword_27DEB4D50;
  if (!qword_27DEB4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D50);
  }

  return result;
}

unint64_t sub_237E520E4()
{
  result = qword_27DEB4D68;
  if (!qword_27DEB4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D68);
  }

  return result;
}

uint64_t sub_237E521A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4D58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237E52218()
{
  result = qword_27DEB4D88;
  if (!qword_27DEB4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4D88);
  }

  return result;
}

uint64_t sub_237E5226C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2210);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237E522DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_22_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_237E52340()
{
  result = qword_27DEB4DA0;
  if (!qword_27DEB4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DA0);
  }

  return result;
}

uint64_t sub_237E52394(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237E523AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_237CBA6B8(a1, a2);
  }

  return a1;
}

unint64_t sub_237E523C0()
{
  result = qword_27DEB4DB0;
  if (!qword_27DEB4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DB0);
  }

  return result;
}

_BYTE *sub_237E52414(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237E524EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237E5252C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237E52598()
{
  result = qword_27DEB4DB8;
  if (!qword_27DEB4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DB8);
  }

  return result;
}

unint64_t sub_237E525F0()
{
  result = qword_27DEB4DC0;
  if (!qword_27DEB4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4DC0);
  }

  return result;
}

unint64_t sub_237E52648()
{
  result = qword_27DEB4DC8[0];
  if (!qword_27DEB4DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB4DC8);
  }

  return result;
}

BOOL static MLModelClassifierAdaptor.Label.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_237E52844(*a1, v3, 1);
      v7 = OUTLINED_FUNCTION_5_12();
      sub_237E52844(v7, v8, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {
    sub_237EF8260();
LABEL_6:
    v10 = OUTLINED_FUNCTION_5_12();
    sub_237E52834(v10, v11, v6);
    sub_237E52844(v2, v3, v4);
    v12 = OUTLINED_FUNCTION_5_12();
    sub_237E52844(v12, v13, v6);
    return 0;
  }

  v14 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_237E52834(v14, v3, 0);
    v27 = OUTLINED_FUNCTION_3_85();
    sub_237E52834(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_3_85();
    sub_237E52844(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_3_85();
    sub_237E52844(v33, v34, v35);
    return 1;
  }

  else
  {
    v16 = sub_237EF9D40();
    v17 = OUTLINED_FUNCTION_5_12();
    sub_237E52834(v17, v18, 0);
    v19 = OUTLINED_FUNCTION_3_85();
    sub_237E52834(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_3_85();
    sub_237E52844(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_5_12();
    sub_237E52844(v25, v26, 0);
    return v16 & 1;
  }
}

uint64_t sub_237E52834(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237E52844(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t MLModelClassifierAdaptor.Label.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x2383E2210](1);
    return MEMORY[0x2383E2210](v1);
  }

  else
  {
    MEMORY[0x2383E2210](0);

    return sub_237EF8610();
  }
}

uint64_t MLModelClassifierAdaptor.Label.hashValue.getter()
{
  sub_237EFA120();
  MLModelClassifierAdaptor.Label.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237E52934()
{
  sub_237EFA120();
  MLModelClassifierAdaptor.Label.hash(into:)();
  return sub_237EFA170();
}

void MLModelClassifierAdaptor.init(contentsOf:configuration:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_237C75918(0, &qword_27DEAF200);
  (*(v9 + 16))(v13, v4, v7);
  v14 = v2;
  sub_237CCB8EC(v13, v14);
  if (v0)
  {
    (*(v9 + 8))(v4, v7);
  }

  else
  {
    MLModelClassifierAdaptor.init(model:)();
    (*(v9 + 8))(v4, v7);

    *v6 = v15;
    v6[1] = v16;
  }

  OUTLINED_FUNCTION_12_6();
}

void MLModelClassifierAdaptor.init(model:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v5 = [v4 modelDescription];
  v6 = [v5 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298);
  v7 = sub_237EF8210();

  if (*(v7 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_237CA35B4(v7);
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
LABEL_12:
    v19 = [v4 modelDescription];

    v20 = [v19 inputDescriptionsByName];
    v21 = sub_237EF8210();

    v22 = *(v21 + 16);

    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v23 = 1;
    v23[1] = v22;
    OUTLINED_FUNCTION_17_21(v23, 3);

    goto LABEL_13;
  }

  v12 = [v11 type];
  if (v12 == 5 || v12 == 2)
  {
    v14 = v11;
    v15 = [v4 modelDescription];
    v16 = [v15 outputDescriptionsByName];

    v17 = sub_237EF8210();
    if (*(v17 + 16) == 2)
    {

      v18 = sub_237E1B598();
      if (!v0)
      {
        v28 = v18;
        v29 = sub_237E1B444();

        *v2 = v4;
        v2[1] = v14;
        v2[2] = v28;
        v2[3] = v29;
        goto LABEL_13;
      }
    }

    else
    {

      v24 = *(v17 + 16);

      sub_237CCD12C();
      OUTLINED_FUNCTION_45_0();
      *v25 = 2;
      v25[1] = v24;
      OUTLINED_FUNCTION_17_21(v25, 4);
    }
  }

  else
  {

    v26 = [v11 type];
    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v27 = 5;
    *(v27 + 8) = v26;
    *(v27 + 16) = 0;
    swift_willThrow();
  }

LABEL_13:
  OUTLINED_FUNCTION_12_6();
}

uint64_t MLModelClassifierAdaptor.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  *(v1 + 96) = v4;
  v5 = sub_237EF7E90();
  *(v1 + 120) = v5;
  *(v1 + 128) = *(v5 - 8);
  *(v1 + 136) = swift_task_alloc();
  v6 = v0[1];
  *(v1 + 144) = *v0;
  *(v1 + 160) = v6;

  return MEMORY[0x2822009F8](sub_237E52ED4, 0, 0);
}

uint64_t sub_237E52ED4()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v7 = [v1 name];
  v8 = sub_237EF8590();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_237C75918(0, &qword_27DEAF160);
  (*(v3 + 16))(v2, v5, v4);
  swift_getWitnessTable();
  v11 = sub_237EF8F40();
  v12 = [objc_opt_self() featureValueWithMultiArray_];

  *(inited + 72) = sub_237C75918(0, &qword_27DEAF158);
  *(inited + 48) = v12;
  sub_237EF8230();
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v14 = sub_237CCD044();
  v0[22] = v14;
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v17 = v15;
  v18 = [v16 init];
  v0[23] = v18;
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_237E53184;

  return MEMORY[0x282111978](v17, v18);
}

uint64_t sub_237E53184()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  *(v2 + 200) = v3;
  *(v2 + 208) = v0;

  if (v0)
  {
    v4 = sub_237E5336C;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_237E532A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237E532A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237E533DC(*(v8 + 200), *(v8 + 112), a3, a4, a5, a6, a7, a8, v11, v12, *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168), v13, v14, v15, v8, v16, v17);

  swift_unknownObjectRelease();

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_237E5336C()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

void sub_237E533DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = *(v20 + 24);
  v26 = [*(v20 + 16) name];
  if (!v26)
  {
    sub_237EF8590();
    v26 = sub_237EF8560();
  }

  v27 = [v24 featureValueForName_];

  if (v27)
  {
    v28 = [v27 dictionaryValue];
    sub_237C75918(0, &qword_280C8CCF8);
    v29 = sub_237EF8210();

    if (*(v29 + 16))
    {
      v30 = [v25 type];
      if (v30 == 3)
      {
        OUTLINED_FUNCTION_18_38(3, v31, v32, v33, v34, v35, v36, v37, v47);
        MEMORY[0x28223BE20](v43);
        OUTLINED_FUNCTION_9_56();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4ED0);
        OUTLINED_FUNCTION_16_48();
        OUTLINED_FUNCTION_1_99();
        swift_getWitnessTable();
        type metadata accessor for Classification();
        sub_237E54D20();
        goto LABEL_11;
      }

      if (v30 == 1)
      {
        OUTLINED_FUNCTION_18_38(1, v31, v32, v33, v34, v35, v36, v37, v47);
        MEMORY[0x28223BE20](v38);
        OUTLINED_FUNCTION_9_56();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4ED0);
        OUTLINED_FUNCTION_16_48();
        OUTLINED_FUNCTION_1_99();
        swift_getWitnessTable();
        type metadata accessor for Classification();
        sub_237E54D20();
LABEL_11:
        sub_237C9339C();
        v45 = v44;

        a10 = v45;
        OUTLINED_FUNCTION_16_48();
        OUTLINED_FUNCTION_1_99();
        swift_getWitnessTable();
        type metadata accessor for Classification();
        v46 = sub_237EF8A60();
        swift_getWitnessTable();
        ClassificationDistribution.init<A>(_:)(&a10, v46, v48);
LABEL_14:

        goto LABEL_15;
      }

      sub_237CCD12C();
      OUTLINED_FUNCTION_45_0();
      *v41 = xmmword_237F17CC0;
      v42 = 8;
    }

    else
    {

      v40 = [v27 type];
      sub_237CCD12C();
      OUTLINED_FUNCTION_45_0();
      *v41 = 6;
      *(v41 + 8) = v40;
      v42 = 2;
    }

    OUTLINED_FUNCTION_17_21(v41, v42);
    goto LABEL_14;
  }

  sub_237CCD12C();
  OUTLINED_FUNCTION_45_0();
  *v39 = xmmword_237F08210;
  OUTLINED_FUNCTION_17_21(v39, 8);
LABEL_15:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E5376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237E54DA8(a1, v13);

  v16 = v13[0];
  v17 = v13[1];
  v18 = v14;
  swift_dynamicCast();
  v11[0] = v19;
  v11[1] = 0;
  v12 = 1;
  sub_237E54DA8(a1, v9);
  v4 = v10;
  [v10 floatValue];
  v6 = v5;

  v7 = type metadata accessor for MLModelClassifierAdaptor.Label();
  swift_getWitnessTable();
  Classification.init(label:probability:)(v11, v7, a2, v6);
  return sub_237E54E18(v9);
}

uint64_t sub_237E53890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237E54DA8(a1, v15);

  v18 = v15[0];
  v19 = v15[1];
  v20 = v16;
  swift_dynamicCast();
  v11[0] = v13;
  v11[1] = v14;
  v12 = 0;
  sub_237E54DA8(a1, v9);
  v4 = v10;
  [v10 floatValue];
  v6 = v5;

  v7 = type metadata accessor for MLModelClassifierAdaptor.Label();
  swift_getWitnessTable();
  Classification.init(label:probability:)(v11, v7, a2, v6);
  return sub_237E54E18(v9);
}

uint64_t sub_237E539BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237E53A6C;

  return MLModelClassifierAdaptor.applied(to:eventHandler:)();
}

uint64_t sub_237E53A6C()
{
  OUTLINED_FUNCTION_2_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_237E53B5C()
{
  OUTLINED_FUNCTION_13_4();
  v122 = v1;
  v109 = v2;
  v112 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v111 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v110 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF290);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_22_2(&v109 - v8);
  v118 = sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v117 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v12 - v11);
  v125 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v134 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_2(&v109 - v18);
  v129 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v128 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v22 - v21);
  v23 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v109 - v34;
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v132 = v37;
  v133 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  v41 = *v0;
  v135 = *(v0 + 8);
  v42 = *(v0 + 24);
  v123 = *(v0 + 16);
  v121 = v42;
  sub_237EF7720();
  sub_237EF7620();
  v43 = [v41 modelDescription];
  v44 = [v43 modelURL];

  sub_237EF5EB0();
  sub_237EF5E40();
  v126 = v45;
  v131 = v35;
  sub_237EF5DE0();
  sub_237EF5E90();
  v46 = *(v25 + 8);
  v46(v29, v23);
  sub_237EF5EC0();
  v130 = v46;
  v46(v32, v23);
  v47 = v127;
  v48 = v40;
  sub_237EF7270();
  (*(v128 + 104))(v47, *MEMORY[0x277D253B0], v129);
  sub_237EF7660();
  v49 = [v135 type];
  if (v49 != 5)
  {
    if (v49 == 2)
    {
      OUTLINED_FUNCTION_12_48();
      v50 = v124;
      sub_237EF6DA0();
      v51 = MEMORY[0x277D25128];
      goto LABEL_12;
    }

    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40();
    OUTLINED_FUNCTION_1_19();
    goto LABEL_9;
  }

  v52 = v116;
  v53 = v117;
  v54 = v118;
  v55 = v119;
  v56 = [v135 multiArrayConstraint];
  if (!v56)
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40();
    OUTLINED_FUNCTION_1_19();
    v63 = v64 + 2;
LABEL_9:
    *v61 = v63;
    v61[1] = v62;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v57 = v56;
  sub_237E5E63C(v57, v55);
  if (__swift_getEnumTagSinglePayload(v55, 1, v54) == 1)
  {
    sub_237C863A0(v55, &qword_27DEAF290);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40();
    OUTLINED_FUNCTION_1_19();
    *v59 = v58 + 11;
    v59[1] = v60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_10:
    v130(v131, v23);
    (*(v132 + 8))(v48, v133);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_48();

  v65 = *(v53 + 32);
  v66 = v52;
  v65(v52, v55, v54);
  v50 = v124;
  v65(v124, v66, v54);
  v51 = MEMORY[0x277D250A0];
LABEL_12:
  v67 = v125;
  (*(v134 + 104))(v50, *v51, v125);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  v126 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v69 = *(v68 + 72);
  v119 = v70;
  *(swift_allocObject() + 16) = xmmword_237F03530;
  v71 = [v135 name];
  sub_237EF8590();

  (*(v134 + 16))(v120, v50, v67);
  sub_237EF7090();
  v72 = v114;
  sub_237EF76B0();
  v120 = v69;
  v135 = swift_allocObject();
  *(v135 + 1) = xmmword_237F04760;
  v73 = [v123 name];
  sub_237EF8590();

  v74 = v121;
  v75 = [v121 type];
  v76 = v122;
  sub_237E54838(v75);
  if (v76)
  {

    v77 = OUTLINED_FUNCTION_2_91();
    v78(v77);
    v79 = OUTLINED_FUNCTION_4_80();
    v80(v79);
    (*(v132 + 8))(v72, v133);
    *(v135 + 2) = 0;
  }

  else
  {
    sub_237EF7090();
    v81 = [v74 name];
    sub_237EF8590();

    v82 = [v74 type];
    sub_237E548C4(v82, v115);
    sub_237EF7090();
    v83 = v114;
    sub_237EF7700();
    v84 = [v74 name];
    sub_237EF8590();
    v135 = 0;

    v114 = v83;
    sub_237EF7600();
    v85 = [v123 name];
    sub_237EF8590();

    sub_237EF7640();
    v87 = v132;
    v86 = v133;
    v88 = *(v132 + 16);
    v89 = v113;
    v88(v113, v83, v133);
    v90 = v110;
    sub_237EF7810();
    v91 = type metadata accessor for CoreMLPackage();
    v92 = v109;
    v93 = v109 + *(v91 + 24);
    *(v93 + 80) = 0;
    *(v93 + 48) = 0u;
    *(v93 + 64) = 0u;
    *(v93 + 16) = 0u;
    *(v93 + 32) = 0u;
    *v93 = 0u;
    v88(v92, v89, v86);
    memcpy(v137, v93, 0x58uLL);
    sub_237C863A0(v137, &unk_27DEAD7B0);
    *v93 = 0u;
    *(v93 + 16) = 0u;
    *(v93 + 32) = 0u;
    *(v93 + 48) = 0u;
    *(v93 + 64) = 0u;
    *(v93 + 80) = 0;
    v94 = v111;
    v95 = v90;
    v96 = v90;
    v97 = v112;
    (*(v111 + 16))(v92 + *(v91 + 20), v95, v112);
    v98 = sub_237E34060();
    v100 = v99;
    v127 = sub_237EF7780();
    v102 = v101;
    swift_isUniquelyReferenced_nonNull_native();
    v138 = *v102;
    sub_237C91098(v98, v100, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v102 = v138;
    v127(&v136, 0);
    (*(v94 + 8))(v96, v97);
    v103 = *(v87 + 8);
    v104 = v133;
    v103(v113, v133);
    v105 = OUTLINED_FUNCTION_2_91();
    v106(v105);
    v107 = OUTLINED_FUNCTION_4_80();
    v108(v107);
    v103(v114, v104);
  }

LABEL_15:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E54838(uint64_t a1)
{
  if (a1 == 3)
  {
    return sub_237EF6E50();
  }

  if (a1 == 1)
  {
    return sub_237EF6E40();
  }

  type metadata accessor for SerializationError();
  sub_237CA2D6C();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_17_47(v2, v3);
  return swift_willThrow();
}

uint64_t sub_237E548C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    sub_237EF6DB0();
    v3 = MEMORY[0x277D25130];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_237EF6D00();
    v3 = MEMORY[0x277D25118];
LABEL_5:
    v4 = *v3;
    v5 = sub_237EF6E60();
    return (*(*(v5 - 8) + 104))(a2, v4, v5);
  }

  type metadata accessor for SerializationError();
  sub_237CA2D6C();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_17_47(v7, v8);
  return swift_willThrow();
}

unint64_t MLModelClassifierAdaptor.Label.debugDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v5 = 0xD000000000000019;
    v2 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v2);
  }

  else
  {
    v3 = v0[1];
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v5 = 0xD000000000000018;
    MEMORY[0x2383E0710](v1, v3);
  }

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return v5;
}

uint64_t MLModelClassifierAdaptor.Label.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t MLModelClassifierAdaptor.Label.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_237E54B24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E54BC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E54C04(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237E54C44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_237E54C9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_237E54D20()
{
  result = qword_27DEB4ED8;
  if (!qword_27DEB4ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4ED8);
  }

  return result;
}

uint64_t sub_237E54DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_12_48()
{
  *(v3 - 392) = v0;
  *(v3 - 272) = v1;
  *(v3 - 264) = v2;
}

uint64_t OUTLINED_FUNCTION_16_48()
{

  return type metadata accessor for MLModelClassifierAdaptor.Label();
}

uint64_t OUTLINED_FUNCTION_17_47@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = 0xD000000000000020;
  a1[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_18_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 96) = &a9;
  *(v11 - 88) = v9;
  *(v11 - 72) = v10;
}

__n128 sub_237E54F5C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a1;
  v8 = *(a1 + 16);
  *(a7 + 24) = *a1;
  *(a7 + 40) = v8;
  *(a7 + 8) = a4;
  *(a7 + 16) = a2;
  *a7 = a3;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t sub_237E54F94(uint64_t a1, uint64_t a2)
{
  v6 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  if (v11)
  {
    v43 = a1;
    v44 = v8;
    v12 = v2[1];
    v41 = *v2;
    v42 = a2;
    v39 = v2[2];
    v40 = v12;
    v14 = v2[6];
    v13 = v2[7];
    v15 = v2[8];

    v45 = sub_237E88538();
    v52 = v16;
    if (!v3)
    {
      v35 = v15;
      v36 = v13;
      v37 = v14;
      v38 = v11;
      sub_237EF5C30();
      swift_allocObject();
      sub_237EF5C20();
      (*(v44 + 104))(v10, *MEMORY[0x277CC86A8], v6);
      sub_237EF5C00();
      sub_237E4C030();
      v22 = v45;
      v23 = v52;
      sub_237EF5C10();
      memcpy(v48, v49, sizeof(v48));
      memcpy(v51, v49, sizeof(v51));
      sub_237D73A1C(v50);
      sub_237D6E9A0(v48);

      sub_237CBA6B8(v22, v23);
      v24 = v39;
      sub_237EF8260();
      v25 = v40;
      sub_237EF8260();
      v26 = v36;
      sub_237EF8260();
      v27 = v35;
      sub_237EF8260();
      sub_237E56D00(v24, v41, v25, v26, v27, v37, v50, v47);
      v28 = *(v43 + 24);
      v29 = *(v43 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v43, v28);
      v30 = *(v29 + 8);
      v31 = type metadata accessor for TreeClassifierModel.Storage();
      WitnessTable = swift_getWitnessTable();
      v30(v47, v31, WitnessTable, v28, v29);
      memcpy(v46, v47, sizeof(v46));
      OUTLINED_FUNCTION_7_16();
      (*(v33 + 8))(v46, v31);
    }
  }

  else
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_12_49(v17, v18);
    *(v19 + 16) = v20;
    *(v19 + 24) = 0x8000000237F00860;
    *(v19 + 32) = 5;
    return swift_willThrow();
  }
}

void *sub_237E55314@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v79 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C66728(a1, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D98);
  type metadata accessor for EstimatorPackageDecoder(0);
  if (!swift_dynamicCast())
  {
    v22 = sub_237EF93E0();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    v24 = v23;
    sub_237EF93D0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84168], v22);
    return swift_willThrow();
  }

  v56 = a2;
  v57 = v5;

  v10 = type metadata accessor for TreeClassifierModel.Storage();
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
  v13 = *(v11 + 8);
  WitnessTable = swift_getWitnessTable();
  result = v13(v62, v10, v10, WitnessTable, v12, v11);
  if (v2)
  {
    return result;
  }

  sub_237E55974();
  v77[0] = v70;
  v77[1] = v71;
  v77[2] = v72;
  v78 = v73;
  sub_237D74FBC(v77, v61);
  sub_237D7360C(v77, v74);
  memcpy(v75, v74, sizeof(v75));
  if (sub_237E52394(v75) == 1)
  {
    v16 = v78;
    OUTLINED_FUNCTION_8_75();
    (*(*(v10 - 8) + 8))(v61, v10);
    v17 = sub_237EF93E0();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    v19 = v18;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00970);
    v58 = v16;
    v20 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v20);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237F00A80);
    v58 = 1;
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84168], v17);
    return swift_willThrow();
  }

  memcpy(v76, v75, sizeof(v76));
  sub_237D6E010();
  sub_237EF85B0();
  v25 = sub_237EF85A0();
  v27 = v26;

  result = (*(v79 + 8))(v9, v57);
  if (v27 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v28 = v10;
    sub_237E582A4(v74);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v29 = sub_237E88668(0, 0);
    v30 = OUTLINED_FUNCTION_6_68();
    sub_237E88474(v30, v31);
    v79 = v25;
    v32 = 0;
    v33 = v66;
    v34 = v67;
    v35 = v63;
    v36 = *(v66 + 16);
    v37 = (v63 + 56);
    v38 = *(v63 + 16) + 1;
    while (--v38)
    {
      v39 = *v37;
      v40 = *(v37 - 1);
      v37 += 32;
      if (v39 >= 4)
      {
        v41 = 1;
      }

      else
      {
        v41 = v40;
      }

      v42 = __OFADD__(v32, v41);
      v32 += v41;
      if (v42)
      {
        __break(1u);
        break;
      }
    }

    v43 = v68;
    if (v69)
    {
      v43 = 0;
    }

    v57 = v43;
    v54 = v36;
    v55 = v64;
    v53 = v65;
    OUTLINED_FUNCTION_8_75();
    OUTLINED_FUNCTION_7_16();
    v45 = *(v44 + 8);
    v51[1] = v44 + 8;
    v52 = v45;
    v46 = v28;
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();

    v47 = v53;
    sub_237EF8260();
    v52(v61, v46);
    v48 = v56;
    v56[4] = v32;
    v48[5] = v29;
    v50 = v54;
    v49 = v55;
    v48[2] = v35;
    v48[3] = v50;
    *v48 = v49;
    v48[1] = v47;
    v48[6] = v57;
    v48[7] = v33;
    v48[8] = v34;
    sub_237E523AC(v79, v27);
  }

  return result;
}

uint64_t sub_237E55964()
{
  if (*(v0 + 40))
  {
    return *(v0 + 32);
  }

  else
  {
    return 0;
  }
}

void sub_237E55974()
{
  v1 = v0[4];
  if (v1 == 2)
  {
    if (*(v0 + 2) == 0.0)
    {
      *(v0 + 2) = 1056964608;
    }
  }

  else if (v1 >= 3)
  {
    v2 = *v0;
    v3 = *(*v0 + 16);
    v4 = v3 + 1;
    v5 = 40;
    while (--v4)
    {
      v6 = *(v2 + v5);
      v5 += 16;
      if (v6)
      {
        return;
      }
    }

    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E642F0();
        v2 = v13;
      }

      if (v3 > *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v7 = 0;
        v8 = vdupq_n_s64(v3 - 1);
        v9 = xmmword_237F07A60;
        v10 = (v2 + 56);
        v11 = vdupq_n_s64(2uLL);
        do
        {
          v12 = vmovn_s64(vcgeq_u64(v8, v9));
          if (v12.i8[0])
          {
            *(v10 - 2) = v7 % v1;
          }

          if (v12.i8[4])
          {
            *v10 = (v7 + 1) % v1;
          }

          v7 += 2;
          v9 = vaddq_s64(v9, v11);
          v10 += 4;
        }

        while (((v3 + 1) & 0x7FFFFFFFFFFFFFFELL) != v7);
        *v0 = v2;
      }
    }
  }
}

uint64_t TreeClassifierModel.featureColumnNames.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);
      sub_237EF8260();
      if (v7 >= v8 >> 1)
      {
        sub_237C62D90(v8 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t TreeClassifierModel.predictionColumnName.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t TreeClassifierModel.predictionColumnName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TreeClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a3;
  *(v6 + 96) = a4;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  *(v6 + 16) = *v5;
  *(v6 + 32) = *(v5 + 16);
  *(v6 + 120) = *(v5 + 24);
  *(v6 + 136) = *(v5 + 40);
  *(v6 + 40) = *(v5 + 56);
  return MEMORY[0x2822009F8](sub_237E55C44, 0, 0);
}

uint64_t sub_237E55C44()
{
  v40 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    __src = *v3;
    v36 = *(v3 + 2);
    v37 = v4;
    *&v38 = v1;
    *(&v38 + 1) = v2;
    v39 = *(v3 + 56);

    sub_237E55FA8(&v32);
    v5 = *(v0 + 144);
    v6 = v33;
    v7 = v34;
    v8 = v32;
    v32 = *(v0 + 120);
    v33 = v1;
    v34 = v5;
    __src = v8;
    LOBYTE(v36) = v6;
    *&v37 = v7;
    v14 = BaseTreeClassifierModel.applied(features:eventHandler:)(&__src);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v29 = *(v0 + 136);
    v31 = *(v0 + 120);

    *(v0 + 56) = v14;
    __src = *v15;
    v36 = *(v15 + 2);
    v38 = v29;
    v37 = v31;
    v39 = *(v15 + 56);
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = sub_237E56180(&__src, v17, v18);
    v21 = v20;
    v22 = swift_task_alloc();
    v22[2] = v17;
    v22[3] = v18;
    v22[4] = v19;
    v22[5] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4EE8);
    type metadata accessor for ClassificationDistribution();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    sub_237E57EBC(&unk_27DEB4EF0);
    sub_237C9339C();
    v24 = v23;
    v25 = *(v0 + 104);
    v26 = *(v0 + 72);
    v28 = *(v0 + 136);
    v30 = *(v0 + 120);

    __src = *(v0 + 16);
    v36 = *(v0 + 32);
    v38 = v28;
    v37 = v30;
    v39 = *(v0 + 40);
    TreeClassifierModel.buildDataFrame(_:)(v24, v25, v26);
  }

  else
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_12_49(v9, v10);
    *(v11 + 16) = v12;
    *(v11 + 24) = 0x8000000237F00860;
    *(v11 + 32) = 5;
    swift_willThrow();
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_237E55FA8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[4];
  v5 = v1[5];
  result = sub_237DDE9AC(v1[2], 0xD000000000000013, 0x8000000237F1A2D0, &v15);
  if (!v2)
  {
    v7 = v15;
    v8 = v17;
    if (!v5)
    {
      v4 = 0;
    }

    if (*(&v15 + 1) == v4)
    {
      v9 = v16;
      *a1 = v15;
      *(a1 + 8) = *(&v7 + 1);
      *(a1 + 16) = v9;
      *(a1 + 24) = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_237F04760;
      *(v10 + 32) = v7;

      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      sub_237EF9330();

      *&v15 = 0x6465746365707845;
      *(&v15 + 1) = 0xE900000000000020;
      v18 = v4;
      v11 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v11);

      MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
      v18 = *(&v7 + 1);
      v12 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v12);

      v13 = v15;
      sub_237C84150();
      OUTLINED_FUNCTION_3_23();
      swift_allocError();
      *v14 = v10;
      *(v14 + 8) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t (*sub_237E56180(void *__src, uint64_t a2, uint64_t a3))@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, __src, 0x48uLL);
  v7 = type metadata accessor for TreeClassifierModel();
  (*(*(v7 - 8) + 16))(&v9, __dst, v7);
  return sub_237E58264;
}

uint64_t sub_237E562AC@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD428);
  return ClassificationDistribution.map<A>(_:)(a1);
}

uint64_t TreeClassifierModel.buildDataFrame(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = *(a2 + 16);
  v27 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v29 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v25 = &v23 - v9;
  v10 = *(a2 + 24);
  type metadata accessor for ClassificationDistribution();
  v26 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v28 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = v3[1];
  v24 = *v3;
  v33 = v24;
  v34 = v15;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x6C696261626F7250, 0xEB00000000797469);
  v33 = a1;
  sub_237EF8A60();
  sub_237EF8260();
  swift_getWitnessTable();
  sub_237EF6220();
  v33 = a1;
  v31 = v6;
  v32 = v10;
  swift_getKeyPath();
  sub_237EF90F0();
  sub_237EF8260();
  swift_getWitnessTable();
  sub_237C9339C();
  v17 = v16;

  v33 = v17;
  sub_237EF8A60();
  swift_getWitnessTable();
  v18 = v25;
  sub_237EF6230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4EF8);
  sub_237EF6310();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_237F04760;
  v20 = v27;
  sub_237EF6200();
  v21 = v26;
  sub_237EF6200();
  v33 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4F00);
  sub_237E57EBC(&unk_27DEB4F08);
  sub_237EF6160();
  (*(v29 + 8))(v18, v20);
  return (*(v28 + 8))(v14, v21);
}

uint64_t sub_237E56750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v6;
  v11 = *(v10 + 56);
  if (*v6 >= *(v11 + 16))
  {
    v48 = *v6;
    v24 = sub_237EF9AB0();
    v26 = v25;
    sub_237C84150();
    swift_allocError();
    *v27 = 0xD00000000000001BLL;
    *(v27 + 8) = 0x8000000237F00A00;
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    *(v27 + 32) = 3;
    return swift_willThrow();
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_82;
  }

  v3 = *(v6 + 8);
  v12 = v11 + 16 * v9;
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  if (swift_dynamicCastMetatype())
  {
    if (!v13)
    {
      v31 = 0;
      v32 = 0;
LABEL_79:
      v48 = v31;
      LOBYTE(v49) = v32 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0);
LABEL_80:
      swift_dynamicCast();
      return Classification.init(label:probability:)(v8, a2, a3, v3);
    }

    v15 = HIBYTE(v13) & 0xF;
    v16 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        sub_237EF8260();
        v20 = sub_237D7503C(v14, v13, 10);
        v32 = v47;

LABEL_76:
        if (v32)
        {
          v31 = 0;
        }

        else
        {
          v31 = v20;
        }

        goto LABEL_79;
      }

      if ((v13 & 0x2000000000000000) != 0)
      {
        v48 = v14;
        v49 = v13 & 0xFFFFFFFFFFFFFFLL;
        if (v14 == 43)
        {
          if (v15)
          {
            if (--v15)
            {
              v20 = 0;
              v39 = &v48 + 1;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  break;
                }

                v41 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  break;
                }

                ++v39;
                if (!--v15)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_88;
        }

        if (v14 != 45)
        {
          if (v15)
          {
            v20 = 0;
            v44 = &v48;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              v46 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                break;
              }

              v44 = (v44 + 1);
              if (!--v15)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

        if (v15)
        {
          if (--v15)
          {
            v20 = 0;
            v33 = &v48 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v35 - v34;
              if (__OFSUB__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v15)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v18 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = sub_237EF9420();
        }

        v19 = *v18;
        if (v19 == 43)
        {
          if (v16 >= 1)
          {
            v15 = v16 - 1;
            if (v16 != 1)
            {
              v20 = 0;
              if (v18)
              {
                v36 = v18 + 1;
                while (1)
                {
                  v37 = *v36 - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_74;
                  }

                  v38 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_74;
                  }

                  v20 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_74;
                  }

                  ++v36;
                  if (!--v15)
                  {
                    goto LABEL_75;
                  }
                }
              }

              goto LABEL_66;
            }

            goto LABEL_74;
          }

          goto LABEL_87;
        }

        if (v19 != 45)
        {
          if (v16)
          {
            v20 = 0;
            if (v18)
            {
              while (1)
              {
                v42 = *v18 - 48;
                if (v42 > 9)
                {
                  goto LABEL_74;
                }

                v43 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_74;
                }

                v20 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  goto LABEL_74;
                }

                ++v18;
                if (!--v16)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_66;
          }

LABEL_74:
          v20 = 0;
          LOBYTE(v15) = 1;
          goto LABEL_75;
        }

        if (v16 >= 1)
        {
          v15 = v16 - 1;
          if (v16 != 1)
          {
            v20 = 0;
            if (v18)
            {
              v21 = v18 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_74;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_74;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  goto LABEL_74;
                }

                ++v21;
                if (!--v15)
                {
                  goto LABEL_75;
                }
              }
            }

LABEL_66:
            LOBYTE(v15) = 0;
LABEL_75:
            v50 = v15;
            v32 = v15;
            goto LABEL_76;
          }

          goto LABEL_74;
        }

        __break(1u);
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_82:
    v31 = 0;
    v32 = 1;
    goto LABEL_79;
  }

  if (swift_dynamicCastMetatype())
  {
    if (v13)
    {
      v29 = v14;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v13)
    {
      v30 = v13;
    }

    v48 = v29;
    v49 = v30;
    sub_237EF8260();
    goto LABEL_80;
  }

LABEL_89:
  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t sub_237E56CA8()
{
  sub_237EF8260();
  swift_getAtKeyPath();
}

void *sub_237E56D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = *(a7 + 16);
  *&v14[7] = *a7;
  *&v14[23] = v9;
  *&v14[39] = *(a7 + 32);
  *&v14[55] = *(a7 + 48);
  *(&__src[4] + 1) = *v14;
  *(&__src[5] + 1) = *&v14[16];
  *(&__src[6] + 1) = *&v14[32];
  __src[7] = *&v14[47];
  *&v21[15] = *&v14[47];
  *v21 = *&v14[32];
  v20 = *&v14[16];
  v15 = 0;
  __src[0] = 0uLL;
  *&__src[1] = a1;
  *(&__src[1] + 1) = a2;
  *&__src[2] = a3;
  *(&__src[2] + 1) = a4;
  *&__src[3] = a5;
  *(&__src[3] + 1) = a6;
  LOBYTE(__src[4]) = 0;
  v17[0] = 0;
  v17[1] = 0;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v18 = 0;
  v19 = *v14;
  v10 = type metadata accessor for TreeClassifierModel.Storage();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v13, __src, v10);
  (*(v11 + 8))(v17, v10);
  return memcpy(a8, __src, 0x80uLL);
}

uint64_t sub_237E56E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return TreeClassifierModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237E56F30(void *a1)
{
  v2 = v1;
  type metadata accessor for TreeClassifierModel.Storage.CodingKeys();
  OUTLINED_FUNCTION_3_86();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v4;
  sub_237EFA1B0();
  LOBYTE(v29) = 0;
  v11 = v27;
  sub_237EF99D0();
  if (!v11)
  {
    *&v29 = *(v2 + 16);
    v12 = v29;
    v28[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58);
    sub_237E58084(&qword_27DEB4D80);
    OUTLINED_FUNCTION_2_92();
    v13 = *(v12 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v24 = v2;
      v25 = 0;
      v26 = v4;
      v27 = v6;
      *&v29 = MEMORY[0x277D84F90];
      sub_237C62D90(0, v13, 0);
      v14 = v29;
      v15 = (v12 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        *&v29 = v14;
        v18 = *(v14 + 16);
        v11 = *(v14 + 24);
        sub_237EF8260();
        if (v18 >= v11 >> 1)
        {
          sub_237C62D90(v11 > 1, v18 + 1, 1);
          v14 = v29;
        }

        *(v14 + 16) = v18 + 1;
        v19 = v14 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        v15 += 4;
        --v13;
      }

      while (v13);
      v6 = v27;
      v10 = v26;
      v2 = v24;
    }

    *&v29 = v14;
    v28[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
    sub_237E580F8(&qword_27DEAEBD8);
    OUTLINED_FUNCTION_2_92();
    if (!v11)
    {

      OUTLINED_FUNCTION_10_59(2);
      sub_237EF9A10();
      v29 = *(v2 + 40);
      v28[0] = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4F90);
      sub_237E58150();
      OUTLINED_FUNCTION_2_92();
      OUTLINED_FUNCTION_10_59(5);
      sub_237EF99F0();
      v21 = *(v2 + 88);
      v33[0] = *(v2 + 72);
      v33[1] = v21;
      v33[2] = *(v2 + 104);
      v34 = *(v2 + 120);
      v22 = *(v2 + 88);
      v29 = *(v2 + 72);
      v30 = v22;
      v31 = *(v2 + 104);
      v32 = *(v2 + 120);
      v35 = 6;
      sub_237D74FBC(v33, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
      sub_237E581F8(&qword_27DEB4D90);
      sub_237EF9A70();
    }
  }

  return (*(v6 + 8))(v9, v10);
}

void *sub_237E57350@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v53 = a4;
  v54 = a3;
  type metadata accessor for TreeClassifierModel.Storage.CodingKeys();
  OUTLINED_FUNCTION_3_86();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v55 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = v56;
  sub_237EFA190();
  if (v11)
  {
    goto LABEL_3;
  }

  v52 = a2;
  LOBYTE(v59) = 0;
  OUTLINED_FUNCTION_7_65();
  v12 = sub_237EF98D0();
  v15 = v14;
  v51 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4D58);
  LOBYTE(v58[0]) = 3;
  sub_237E58084(&qword_27DEB4D60);
  OUTLINED_FUNCTION_1_100();
  sub_237EF9900();
  if (v59)
  {
    v56 = v59;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
    LOBYTE(v58[0]) = 1;
    sub_237E580F8(&qword_27DEAEC28);
    OUTLINED_FUNCTION_1_100();
    sub_237EF9970();
    v20 = v59;
    v21 = *(v59 + 16);
    if (v21)
    {
      v49 = v15;
      v50 = v9;
      v48 = 0;
      v59 = MEMORY[0x277D84F90];
      sub_237C6304C(0, v21, 0);
      v22 = v59;
      v47 = v20;
      v23 = (v20 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v59 = v22;
        v26 = *(v22 + 16);
        v11 = *(v22 + 24);
        v56 = v26 + 1;
        sub_237EF8260();
        if (v26 >= v11 >> 1)
        {
          sub_237C6304C(v11 > 1, v56, 1);
          v22 = v59;
        }

        *(v22 + 16) = v56;
        v27 = v22 + 32 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v25;
        *(v27 + 48) = 3;
        *(v27 + 56) = 4;
        v23 += 2;
        --v21;
      }

      while (v21);
      v56 = v22;

      v15 = v49;
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v59) = 2;
  OUTLINED_FUNCTION_7_65();
  v16 = sub_237EF9910();
  if (v11)
  {
    v18 = OUTLINED_FUNCTION_6_68();
    v19(v18);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v28 = v16;
  v29 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4F90);
  LOBYTE(v58[0]) = 4;
  sub_237E57F6C();
  OUTLINED_FUNCTION_1_100();
  sub_237EF9970();
  v47 = v28;
  v30 = v60;
  v50 = v59;
  LOBYTE(v59) = 5;
  OUTLINED_FUNCTION_7_65();
  v46 = sub_237EF98F0();
  v85 = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
  v76 = 6;
  sub_237E581F8(&qword_27DEB4D70);
  OUTLINED_FUNCTION_7_65();
  sub_237EF9970();
  v32 = OUTLINED_FUNCTION_5_80();
  v33(v32);
  v55 = v77;
  v34 = v78;
  v48 = 0;
  v49 = v15;
  v44 = v80;
  v45 = v79;
  v42 = v82;
  v43 = v81;
  v41 = v83;
  v36 = v50;
  v35 = v51;
  v58[0] = v51;
  v58[1] = v15;
  v37 = v56;
  v38 = v47;
  v58[2] = v56;
  v58[3] = v47;
  v58[4] = v29;
  v58[5] = v50;
  v58[6] = v30;
  v58[7] = v46;
  LOBYTE(v58[8]) = v85;
  HIDWORD(v58[8]) = *&v84[3];
  *(&v58[8] + 1) = *v84;
  v58[9] = v77;
  LODWORD(v58[10]) = v78;
  v58[11] = v79;
  v58[12] = v80;
  v58[13] = v81;
  v58[14] = v82;
  v58[15] = v83;
  v39 = type metadata accessor for TreeClassifierModel.Storage();
  v40 = *(v39 - 8);
  (*(v40 + 16))(&v59, v58, v39);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v59 = v35;
  v60 = v49;
  v61 = v37;
  v62 = v38;
  v63 = v29;
  v64 = v36;
  v65 = v30;
  v66 = v46;
  v67 = v85;
  *v68 = *v84;
  *&v68[3] = *&v84[3];
  v69 = v55;
  v70 = v34;
  v71 = v45;
  v72 = v44;
  v73 = v43;
  v74 = v42;
  v75 = v41;
  (*(v40 + 8))(&v59, v39);
  return memcpy(v53, v58, 0x80uLL);
}

uint64_t sub_237E579C8()
{
  v0 = sub_237EF9890();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_237E57A18(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x636E456C6562616CLL;
      break;
    case 5:
      result = 0x6F69746172657469;
      break;
    case 6:
      result = 0x65646F4D65657274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E57B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E57B78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E57BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E57C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E57CC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E579C8();
  *a1 = result;
  return result;
}

unint64_t sub_237E57CF4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E57A18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E57D28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E57A14();
  *a1 = result;
  return result;
}

uint64_t sub_237E57D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E57DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void *sub_237E57DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_237E57350(a1, *(a2 + 16), *(a2 + 24), v6);
  if (!v3)
  {
    return memcpy(a3, v6, 0x80uLL);
  }

  return result;
}

uint64_t sub_237E57E64(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_237E57EBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237E57F00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_237E57F6C()
{
  result = qword_27DEB4F98;
  if (!qword_27DEB4F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4F90);
    sub_237E58014(&unk_27DEB4FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4F98);
  }

  return result;
}

unint64_t sub_237E58014(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD490);
    result = OUTLINED_FUNCTION_14_55();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237E58084(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4D58);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237E580F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0);
    result = OUTLINED_FUNCTION_14_55();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237E58150()
{
  result = qword_27DEB4FA8;
  if (!qword_27DEB4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB4F90);
    sub_237E58014(&unk_27DEB4FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4FA8);
  }

  return result;
}

unint64_t sub_237E581F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_57(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2210);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237E582A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_237E5830C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237E583D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E5841C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237E5845C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_92()
{

  return sub_237EF9A70();
}

void *OUTLINED_FUNCTION_8_75()
{

  return memcpy((v0 + 88), (v0 + 216), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_14_55()
{

  return swift_getWitnessTable();
}

int *LinearTimeSeriesForecaster.makeTransformer()()
{
  OUTLINED_FUNCTION_7_66();
  v1 = type metadata accessor for MultivariateLinearRegressor.Model();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v14 = *(v0 + 72);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  OUTLINED_FUNCTION_7_66();
  type metadata accessor for MultivariateLinearRegressor();
  MultivariateLinearRegressor.makeTransformer()(v3);
  OUTLINED_FUNCTION_23();
  return sub_237DBAF34(v9, v10, v11, 1, v12);
}

uint64_t LinearTimeSeriesForecaster.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 536) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 504) = a3;
  *(v8 + 512) = a4;
  *(v8 + 488) = a1;
  *(v8 + 496) = a2;
  *(v8 + 544) = *(a5 + 16);
  *(v8 + 552) = *(a5 + 24);
  OUTLINED_FUNCTION_18_0();
  v10 = type metadata accessor for TimeSeriesForecasterAnnotatedWindows();
  *(v8 + 560) = v10;
  OUTLINED_FUNCTION_6_1(v10);
  *(v8 + 568) = v11;
  *(v8 + 576) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_0();
  sub_237EF7EE0();
  *(v8 + 584) = OUTLINED_FUNCTION_27_0();
  v12 = sub_237EF7E90();
  *(v8 + 592) = v12;
  v13 = type metadata accessor for AnnotatedFeature();
  *(v8 + 600) = v13;
  *(v8 + 608) = swift_getTupleTypeMetadata2();
  sub_237EF90F0();
  *(v8 + 616) = OUTLINED_FUNCTION_27_0();
  *(v8 + 624) = *(v12 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v14 = sub_237EF90F0();
  *(v8 + 664) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v8 + 672) = v15;
  *(v8 + 680) = OUTLINED_FUNCTION_27_0();
  *(v8 + 688) = *(v13 - 8);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = *(a6 - 8);
  *(v8 + 720) = OUTLINED_FUNCTION_27_0();
  *(v8 + 728) = *v7;
  memcpy((v8 + 144), v7 + 1, 0x69uLL);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237E589FC()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 600);
  (*(*(v0 + 712) + 16))(*(v0 + 720), *(v0 + 496), *(v0 + 528));
  OUTLINED_FUNCTION_47_1();
  v3 = sub_237EF8A90();
  *(v0 + 464) = v3;
  v4 = sub_237EF8A60();
  swift_getWitnessTable();
  v53 = v4;
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));

    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_22_10();
    *v5 = v6;
    *(v5 + 8) = 0x8000000237F00AA0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    swift_willThrow();
LABEL_13:
    OUTLINED_FUNCTION_30_10();

    OUTLINED_FUNCTION_3_0();

    return v41();
  }

  v52 = *(*(v0 + 688) + 32);
  v52(*(v0 + 704), *(v0 + 680), *(v0 + 600));
  v7 = *(sub_237EF7E20() + 16);

  v8 = *(v0 + 704);
  if (v7 != 1)
  {
    v24 = *(v0 + 688);
    v25 = *(v0 + 600);

    sub_237EF7E20();
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_13_47(v27, v26 + 6);
    (*(v24 + 8))(v8, v25);
    goto LABEL_13;
  }

  v9 = *(sub_237EF7E20() + 16);

  if (v9 != 1)
  {

    sub_237EF7E20();
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_13_47(v29, v28 + 9);
    v30 = OUTLINED_FUNCTION_42_2();
    v31(v30);
    goto LABEL_13;
  }

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v57 = *(result + 32);

  result = sub_237EF7E20();
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v55 = *(v0 + 688);
  v50 = *(v0 + 608);
  v11 = *(result + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v12 = OUTLINED_FUNCTION_36_1();
  *(v12 + 16) = xmmword_237F04760;
  v13 = sub_237EF8A00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v57;
  sub_237D14E78();
  v14 = OUTLINED_FUNCTION_36_1();
  *(v14 + 16) = xmmword_237F04760;
  *(v14 + 32) = v13;
  *(v14 + 40) = v11;
  sub_237D14E78();
  *(v0 + 472) = 0;
  *(v0 + 480) = v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
  v16 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  v18 = *(v0 + 440);
  *(v0 + 448) = *(v0 + 432);
  *(v0 + 456) = v18;
  v58 = v15;
  *(v0 + 336) = v15;
  *(v0 + 344) = v53;
  v51 = v16;
  *(v0 + 352) = v16;
  *(v0 + 360) = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  while (1)
  {
    v19 = *(v0 + 616);
    v20 = *(v0 + 608);
    *(v0 + 368) = v58;
    *(v0 + 376) = v53;
    *(v0 + 384) = v51;
    *(v0 + 392) = WitnessTable;
    sub_237EF9370();
    sub_237EF9360();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      break;
    }

    v21 = *(v0 + 696);
    v22 = *(v0 + 600);
    v52(v21, *(v0 + 616) + *(v50 + 48), v22);
    *(v0 + 280) = v58;
    v23 = sub_237CE3364();
    *(v0 + 288) = v23;
    *(v0 + 256) = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237EF7F90();
    OUTLINED_FUNCTION_42_2();
    sub_237EF7EA0();
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    *(v0 + 320) = v58;
    *(v0 + 328) = v23;
    *(v0 + 296) = 0;
    sub_237EF7F90();
    OUTLINED_FUNCTION_42_2();
    sub_237EF7EA0();
    (*(v55 + 8))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  }

  v56 = *(v0 + 728);
  v59 = *(v0 + 736);
  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  v34 = *(v0 + 640);
  v35 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = *(v0 + 592);
  v54 = *(v0 + 576);

  v38 = *(v36 + 16);
  v38(v34, v32, v37);
  v38(v35, v33, v37);
  v39 = OUTLINED_FUNCTION_31();
  v40 = OUTLINED_FUNCTION_31();
  TimeSeriesForecasterAnnotatedWindows.init(features:annotations:inputWindowSize:forecastWindowSize:stride:shufflesElements:)(v34, v35, v56, v59, v39, v40 & 1, v54);
  *(v0 + 16) = *(v0 + 728);
  memcpy((v0 + 32), (v0 + 144), 0x69uLL);
  v42 = swift_task_alloc();
  *(v0 + 744) = v42;
  v43 = swift_getWitnessTable();
  *v42 = v0;
  v42[1] = sub_237E59200;
  v44 = *(v0 + 576);
  v45 = *(v0 + 560);
  v46 = *(v0 + 520);
  v47 = *(v0 + 504);
  v48 = *(v0 + 512);
  v49 = *(v0 + 488);

  return LinearTimeSeriesForecaster.update<A>(_:withWindows:eventHandler:)(v49, v44, v47, v48, v46, v45, v43);
}

uint64_t sub_237E59200()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E592F8()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = v0[78];
  v4 = v0[75];
  (*(v0[71] + 8))(v0[72], v0[70]);
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_90_0();
  v5(v6);
  v7 = OUTLINED_FUNCTION_42_2();
  v5(v7);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t LinearTimeSeriesForecaster.update<A>(_:withWindows:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[49] = a6;
  v8[50] = a7;
  v8[47] = a4;
  v8[48] = a5;
  v8[45] = a2;
  v8[46] = a3;
  v8[44] = a1;
  v10 = *(a5 + 16);
  v8[51] = v10;
  v8[52] = *(a5 + 24);
  OUTLINED_FUNCTION_18_0();
  v11 = type metadata accessor for AnnotatedBatch();
  v8[53] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v8[54] = v12;
  v8[55] = OUTLINED_FUNCTION_27_0();
  v8[56] = *(v10 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v13 = sub_237EF7EE0();
  v8[59] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v8[60] = v14;
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  OUTLINED_FUNCTION_18_0();
  v15 = sub_237EF7E90();
  v8[63] = v15;
  v8[64] = *(v15 - 8);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v16 = type metadata accessor for AnnotatedFeature();
  v8[69] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v8[70] = v17;
  v8[71] = OUTLINED_FUNCTION_27_0();
  v8[72] = *(a6 - 8);
  v8[73] = OUTLINED_FUNCTION_27_0();
  memcpy(v8 + 2, v7, 0x79uLL);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_237E5973C()
{
  v75 = v0;
  v1 = v0[48];
  v2 = v0[44];
  (*(v0[72] + 16))(v0[73], v0[45], v0[49]);
  sub_237EF8A90();
  v0[74] = *(v1 + 32);
  v3 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  v4 = v3;
  v5 = *(v3 + 44);
  v6 = *(v2 + v5);
  if (!v6)
  {
    v73 = v2;
    v68 = v3;
    v7 = v0[71];
    v8 = v0[68];
    v9 = v0;
    v10 = v0[64];
    v11 = v9[63];
    OUTLINED_FUNCTION_47_1();
    sub_237EF8AC0();
    v72 = *(v10 + 16);
    v72(v8, v7, v11);
    v12 = OUTLINED_FUNCTION_30_33();
    v70 = v13;
    (v13)(v12);
    v14 = sub_237EF7E20();
    v15 = *(v10 + 8);
    result = v15(v8, v11);
    if (*(v14 + 16) < 2uLL)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v65 = v15;
    v17 = v9[71];
    v18 = v9[69];
    v19 = v9[68];
    v20 = v9[63];
    v6 = *(v14 + 40);

    *(v73 + v5) = v6;
    sub_237EF8AC0();
    v72(v19, v17 + *(v18 + 36), v20);
    v70(v17, v18);
    v21 = sub_237EF7E20();
    v22 = OUTLINED_FUNCTION_90_0();
    result = v65(v22);
    if (*(v21 + 16) < 2uLL)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v23 = v9[44];
    v24 = *(v21 + 40);

    v4 = v68;
    *(v23 + *(v68 + 48)) = v24;
    v0 = v9;
  }

  v60 = v0;
  v25 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_237F08A50;
  v27 = sub_237EF8A00();
  *(v26 + 32) = v27;
  memcpy(__dst, v60 + 2, sizeof(__dst));
  *(v26 + 40) = LinearTimeSeriesForecaster.inputWindowSize.getter();
  *(v26 + 48) = v6;
  v28 = v60;
  sub_237D14E78();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_237F08A50;
  *(v29 + 32) = v27;
  memcpy(__dst, v60 + 2, sizeof(__dst));
  *(v29 + 40) = LinearTimeSeriesForecaster.forecastWindowSize.getter();
  *(v29 + 48) = *(v25 + *(v4 + 48));
  result = sub_237D14E78();
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v27)
  {
    v30 = 0;
    v59 = v60[69];
    v31 = v60[64];
    v67 = (v60[70] + 8);
    v69 = (v31 + 16);
    v66 = (v31 + 8);
    v58 = (v60[60] + 8);
    do
    {
      v32 = v28[71];
      v33 = v28[69];
      v34 = v28[68];
      v35 = v28[63];
      v36 = v28[61];
      v64 = v30 + 1;
      v37 = v28[59];
      v62 = v33;
      sub_237EF8AC0();
      v71 = *v69;
      (*v69)(v34, v32, v35);
      v63 = *v67;
      (*v67)(v32, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_237F04760;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8);
      *(v38 + 56) = v39;
      v40 = sub_237CE3364();
      *(v38 + 32) = 0;
      *(v38 + 96) = v39;
      *(v38 + 104) = v40;
      *(v38 + 64) = v40;
      *(v38 + 72) = 0;
      OUTLINED_FUNCTION_0_18();
      swift_getWitnessTable();
      sub_237EF7FA0();

      v61 = *v66;
      v41 = OUTLINED_FUNCTION_30_33();
      v42(v41);
      sub_237EF7EC0();
      v43 = *v58;
      (*v58)(v36, v37);
      OUTLINED_FUNCTION_47_1();
      sub_237EF7EA0();
      sub_237EF8AC0();
      v71(v34, v32 + *(v59 + 36), v35);
      v63(v32, v62);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_237F04760;
      *(v44 + 56) = v39;
      *(v44 + 64) = v40;
      *(v44 + 32) = 0;
      *(v44 + 96) = v39;
      *(v44 + 104) = v40;
      *(v44 + 72) = 0;
      sub_237EF7FA0();

      v45 = OUTLINED_FUNCTION_30_33();
      v61(v45);
      sub_237EF7EC0();
      v43(v36, v37);
      v28 = v60;
      sub_237EF7EA0();
      v30 = v64;
    }

    while (v27 != v64);
  }

  else
  {
    v46 = v60[64];

    v71 = *(v46 + 16);
  }

  v47 = v28[68];
  v48 = v28[67];
  v49 = v28[66];
  v50 = v28[65];
  v51 = v28[63];
  v52 = v28[55];
  memcpy(v28 + 18, v28 + 2, 0x79uLL);
  v71(v47, v48, v51);
  v71(v50, v49, v51);
  AnnotatedBatch.init(features:annotations:)(v47, v50, v52);
  v53 = swift_task_alloc();
  v28[75] = v53;
  *v53 = v28;
  v53[1] = sub_237E59E8C;
  v54 = v28[58];
  v55 = v28[55];
  v56 = v28[48];
  v57 = v28[44];

  return LinearTimeSeriesForecaster.update(_:with:)(v54, v57, v55, v56);
}

uint64_t sub_237E59E8C()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[55];
  v6 = v4[54];
  v7 = v4[53];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 608) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E59FE4()
{
  v25 = v0;
  v1 = v0[46];
  if (v1)
  {
    v19 = v0[66];
    v20 = v0[67];
    v2 = v0[64];
    v18 = v0[63];
    v3 = v0[57];
    v4 = v0[58];
    v5 = v0[56];
    v6 = v0[51];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    strcpy((inited + 32), "training_loss");
    *(inited + 46) = -4864;
    (*(v5 + 16))(v3, v4, v6);
    *(inited + 72) = MEMORY[0x277D839F8];
    sub_237C70604(v1);
    sub_237C65348();
    sub_237EF8190();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    sub_237EF8230();
    OUTLINED_FUNCTION_22_10();
    v21[0] = v8;
    v21[1] = 0x8000000237F00AA0;
    v22 = xmmword_237F08210;
    v23 = 1;
    v24 = v9;
    v1(v21);
    sub_237C5EE40(v1);
    (*(v5 + 8))(v4, v6);
    v10 = *(v2 + 8);
    v10(v19, v18);
    v10(v20, v18);
  }

  else
  {
    v11 = v0[67];
    v12 = v0[66];
    v13 = v0[63];
    v14 = v0[64];
    (*(v0[56] + 8))(v0[58], v0[51]);
    v15 = *(v14 + 8);
    v15(v12, v13);
    v15(v11, v13);
  }

  OUTLINED_FUNCTION_3_0();

  return v16();
}

uint64_t sub_237E5A2E8()
{
  v1 = v0[67];
  v2 = v0[63];
  v3 = *(v0[64] + 8);
  v3(v0[66], v2);
  v3(v1, v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t LinearTimeSeriesForecaster.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 200) = a3;
  *(v5 + 208) = a4;
  *(v5 + 184) = a1;
  *(v5 + 192) = a2;
  *(v5 + 216) = *(a4 + 16);
  *(v5 + 224) = *(a4 + 24);
  OUTLINED_FUNCTION_7_66();
  v6 = sub_237EF7E90();
  *(v5 + 232) = v6;
  OUTLINED_FUNCTION_6_1(v6);
  *(v5 + 240) = v7;
  *(v5 + 248) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_7_66();
  v8 = type metadata accessor for AnnotatedBatch();
  *(v5 + 256) = v8;
  OUTLINED_FUNCTION_6_1(v8);
  *(v5 + 264) = v9;
  *(v5 + 272) = OUTLINED_FUNCTION_27_0();
  memcpy((v5 + 16), v4, 0x48uLL);
  *(v5 + 280) = *(v4 + 72);
  *(v5 + 140) = *(v4 + 88);
  *(v5 + 328) = *(v4 + 92);
  v10 = *(v4 + 96);
  *(v5 + 332) = *(v4 + 104);
  *(v5 + 336) = *(v4 + 108);
  v11 = *(v4 + 112);
  *(v5 + 296) = v10;
  *(v5 + 304) = v11;
  *(v5 + 137) = *(v4 + 120);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_237E5A57C()
{
  v1 = *(v0 + 137);
  v2 = *(sub_237EF7E20() + 16);

  v3 = sub_237EF7E20();
  v4 = v3;
  if (v2 != 3)
  {
    v68 = 0x8000000237F00AC0;
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    *v69 = v4;
    *(v69 + 8) = 0xD000000000000027;
LABEL_28:
    *(v69 + 16) = v68;
LABEL_30:
    *(v69 + 24) = 0;
    *(v69 + 32) = 6;
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();

    v72();
    return;
  }

  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 256);
  v6 = *(v3 + 32);

  v7 = *(sub_237EF7E20() + 16);

  if (v7 != 3)
  {
LABEL_29:
    v70 = OUTLINED_FUNCTION_27_27();
    OUTLINED_FUNCTION_11_55();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000006BLL, 0x8000000237F00AF0);
    *(v0 + 144) = v6;
    v71 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v71);

    MEMORY[0x2383E0710](41, 0xE100000000000000);
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    *v69 = v70;
    *(v69 + 8) = v178;
    *(v69 + 16) = v182;
    goto LABEL_30;
  }

  v8 = OUTLINED_FUNCTION_27_27();
  if (!*(v8 + 16))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = *(v8 + 32);

  if (v9 != v6)
  {
    goto LABEL_29;
  }

  v10 = *(v0 + 192);
  v11 = *(*(v0 + 208) + 32);
  v138 = type metadata accessor for LinearTimeSeriesForecaster.Model();
  v12 = *(v138 + 44);
  v159 = *(v10 + v12);
  if (!v159)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_20_39();
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = *(v13 + 48);

    v159 = v15;
    *(v10 + v12) = v15;
    sub_237EF7E20();
    OUTLINED_FUNCTION_20_39();
    if (!v14)
    {
      goto LABEL_41;
    }

    v17 = *(v0 + 192);
    v18 = *(v16 + 48);

    *(v17 + *(v138 + 48)) = v18;
  }

  HIDWORD(v126) = v1;
  if (*(sub_237EF7E20() + 16) < 2uLL)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_21_43();
  v19 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_4_81(v19, v20, v21, v22, v23, v24, v25, v26, v95, v100, v104, v108, v112, v116, v119, v11, v126, v6, v5, v138, v145, v151, v159, v166, v172, v178);
  OUTLINED_FUNCTION_8_76();
  if (v146 != LinearTimeSeriesForecaster.inputWindowSize.getter())
  {
    goto LABEL_33;
  }

  sub_237EF7E20();
  OUTLINED_FUNCTION_20_39();
  if (!v14)
  {
    goto LABEL_39;
  }

  v28 = *(v27 + 48);

  if (v28 != v160)
  {
LABEL_33:
    v155 = sub_237EF7E20();
    OUTLINED_FUNCTION_11_55();
    sub_237EF9330();
    OUTLINED_FUNCTION_19_43();
    v73 = MEMORY[0x2383E0710]();
    OUTLINED_FUNCTION_4_81(v73, v74, v75, v76, v77, v78, v79, v80, v96, v101, v105, v109, v113, v117, v120, v123, v127, v131, v134, v139, v146, v155, v160, v179, v182, v179);
    *(v0 + 152) = LinearTimeSeriesForecaster.inputWindowSize.getter();
    v81 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v81);

    OUTLINED_FUNCTION_19_43();
    MEMORY[0x2383E0710](0xD000000000000014);
    *(v0 + 160) = v163;
    v82 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v82);

    v83 = v170;
    v68 = v176;
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    v84 = v156;
LABEL_34:
    *v69 = v84;
    *(v69 + 8) = v83;
    goto LABEL_28;
  }

  if (*(OUTLINED_FUNCTION_27_27() + 16) < 2uLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_21_43();
  v29 = OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_4_81(v29, v30, v31, v32, v33, v34, v35, v36, v96, v101, v105, v109, v113, v117, v120, v123, v127, v131, v134, v139, v146, v152, v160, v167, v173, v179);
  OUTLINED_FUNCTION_8_76();
  if (v147 != LinearTimeSeriesForecaster.forecastWindowSize.getter())
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_27_27();
  OUTLINED_FUNCTION_20_39();
  if (!v14)
  {
    goto LABEL_43;
  }

  v38 = *(v0 + 192);
  v39 = *(v37 + 48);

  if (v39 != *(v38 + *(v140 + 48)))
  {
LABEL_35:
    LODWORD(v147) = *(v0 + 137);
    LODWORD(v135) = *(v0 + 336);
    v157 = *(v0 + 192);
    v164 = sub_237EF7E20();
    OUTLINED_FUNCTION_11_55();
    sub_237EF9330();
    OUTLINED_FUNCTION_19_43();
    v85 = MEMORY[0x2383E0710]();
    OUTLINED_FUNCTION_4_81(v85, v86, v87, v88, v89, v90, v91, v92, v97, v102, v106, v110, v114, v118, v121, v124, v128, v132, v135, v140, v147, v157, v164, v180, v182, v180);
    *(v0 + 168) = LinearTimeSeriesForecaster.forecastWindowSize.getter();
    v93 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v93);

    OUTLINED_FUNCTION_19_43();
    MEMORY[0x2383E0710]();
    *(v0 + 176) = *(v158 + *(v144 + 48));
    v94 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v94);

    v83 = v171;
    v68 = v177;
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    v84 = v165;
    goto LABEL_34;
  }

  LODWORD(v153) = *(v0 + 137);
  v148 = *(v0 + 304);
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 200), *(v0 + 256));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v40 = OUTLINED_FUNCTION_36_1();
  *(v40 + 16) = xmmword_237F04760;
  v41 = v132;
  *(v40 + 32) = v132;
  OUTLINED_FUNCTION_4_81(v40, v42, v43, v44, v45, v46, v47, v48, v97, v102, v106, v110, 2, 4, v121, v124, v128, v132, v135, v39, v148, v153, v161, v168, v174, v180);
  v49 = LinearTimeSeriesForecaster.inputWindowSize.getter();
  v50 = v49 * v162;
  if ((v49 * v162) >> 64 != (v49 * v162) >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LODWORD(v162) = *(v0 + 137);
  v154 = *(v0 + 304);
  LODWORD(v149) = *(v0 + 336);
  HIDWORD(v111) = *(v0 + 328);
  v103 = *(v0 + 296);
  v107 = *(v0 + 208);
  *(v40 + 40) = v50;
  sub_237EF7E60();

  v51 = OUTLINED_FUNCTION_30_33();
  v98 = v52;
  v52(v51);
  v137 = *(v136 + 36);
  v53 = OUTLINED_FUNCTION_36_1();
  *(v53 + 16) = *v115;
  *(v53 + 32) = v41;
  OUTLINED_FUNCTION_4_81(v53, v54, v55, v56, v57, v58, v59, v60, v98, v103, v107, v111, v115[0], v115[1], v122, v125, v129, v133, v137, v141, v149, v154, v162, v169, v175, v181);
  v61 = LinearTimeSeriesForecaster.forecastWindowSize.getter();
  v62 = v61 * v142;
  if ((v61 * v142) >> 64 != (v61 * v142) >> 63)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v143 = *(v0 + 296);
  v150 = *(v0 + 304);
  v63 = *(v0 + 332);
  v64 = *(v0 + 140);
  v66 = *(v0 + 280);
  v65 = *(v0 + 288);
  *(v53 + 40) = v62;
  OUTLINED_FUNCTION_90_0();
  sub_237EF7E60();

  OUTLINED_FUNCTION_47_1();
  v99();
  *(v0 + 88) = v66;
  *(v0 + 96) = v65;
  *(v0 + 104) = v64;
  *(v0 + 112) = v143;
  *(v0 + 120) = v63;
  *(v0 + 128) = v150;
  *(v0 + 136) = v130 & 1;
  v67 = swift_task_alloc();
  *(v0 + 312) = v67;
  type metadata accessor for MultivariateLinearRegressor();
  *v67 = v0;
  v67[1] = sub_237E5AEA4;

  MultivariateLinearRegressor.update(_:with:)();
}

uint64_t sub_237E5AEA4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E5AF9C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[33] + 8))(v0[34], v0[32]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237E5B01C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[33] + 8))(v0[34], v0[32]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237E5B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6A904;

  return LinearTimeSeriesForecaster.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237E5B17C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *OUTLINED_FUNCTION_4_81(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char __dst)
{

  return memcpy(&__dst, (v26 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_13_47@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = a2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_39()
{
}

uint64_t OUTLINED_FUNCTION_27_27()
{

  return sub_237EF7E20();
}

unint64_t sub_237E5B2A4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t BaseTreeRegressorModel.applied(features:eventHandler:)(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *v1)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v4;
    v14 = v6;
    v15 = v5;
    type metadata accessor for XGBoostMatrix();
    OUTLINED_FUNCTION_36_1();

    result = sub_237D51C98(v13);
    if (!v2)
    {
      sub_237E88118();

      return v16;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v8 = OUTLINED_FUNCTION_36_1();
    *(v8 + 16) = xmmword_237F04760;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    sub_237EF9330();

    OUTLINED_FUNCTION_0_82();
    v9 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v9);

    MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
    v10 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v10);

    sub_237C84150();
    v11 = swift_allocError();
    return OUTLINED_FUNCTION_1_101(v11, v12);
  }

  return result;
}

{
  v3 = *(a1 + 16);
  if (v3 == *v1)
  {
    type metadata accessor for XGBoostMatrix();
    OUTLINED_FUNCTION_36_1();

    result = sub_237D51E3C(v4);
    if (!v2)
    {
      sub_237E88118();

      result = v11;
      if (*(v11 + 16))
      {
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v6 = OUTLINED_FUNCTION_36_1();
    *(v6 + 16) = xmmword_237F04760;
    *(v6 + 32) = 1;
    *(v6 + 40) = v3;
    sub_237EF9330();

    OUTLINED_FUNCTION_0_82();
    v7 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v7);

    MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
    v8 = OUTLINED_FUNCTION_2_93();
    MEMORY[0x2383E0710](v8);

    sub_237C84150();
    v9 = swift_allocError();
    return OUTLINED_FUNCTION_1_101(v9, v10);
  }

  return result;
}