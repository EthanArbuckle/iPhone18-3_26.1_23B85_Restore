uint64_t sub_23BB0C5B8()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  v4 = *(_s16TaskViewModifierVMa_0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B9F36B4;

  return sub_23BB0ADC8(v3, v0 + v5);
}

uint64_t sub_23BB0C68C()
{
  OUTLINED_FUNCTION_3_13();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_23BB0C390;

  return sub_23BB0B000(v3, v4);
}

uint64_t sub_23BB0C724(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BB0C770()
{
  result = qword_27E1A09D8;
  if (!qword_27E1A09D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0980);
    sub_23B97B518(qword_27E1A09E0, &qword_27E1A0988);
    sub_23B97B518(qword_27E19A738, &qword_27E19A690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A09D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_23()
{
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return sub_23BBCC0AC(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_21_16()
{
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_13()
{
  *(v0 + 856) = *(v0 + 1328);
  *(v0 + 864) = 1;
}

void sub_23BB0CA08()
{
  sub_23BB0CCEC(319, &qword_27E1A0A68, MEMORY[0x277CDD330], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      sub_23BB0CC9C();
      if (v2 <= 0x3F)
      {
        sub_23BB0CCEC(319, &qword_27E199C90, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23BB0CD50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB0CB50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BB0CBF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BB0CC9C()
{
  if (!qword_27E1991A0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1991A0);
    }
  }
}

void sub_23BB0CCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23BB0CD50()
{
  if (!qword_27E1A0A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A78);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A0A70);
    }
  }
}

uint64_t sub_23BB0CDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = swift_getKeyPath();
  v6 = type metadata accessor for StoreStaticView();
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0;
  v7 = *(v6 + 48);
  *(a5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  swift_storeEnumTagMultiPayload();
  v8 = a5 + *(v6 + 52);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_23BB0CEBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_23BAC74B0(*v1, v5);
  v9 = sub_23BBDCDB8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_23B979910(v5, &qword_27E1987F0);
    v10 = sub_23BBD9848();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    sub_23B9B75B4();
    result = __swift_getEnumTagSinglePayload(v8, 1, v10);
    if (result != 1)
    {
      return sub_23B979910(v8, qword_27E199D08);
    }
  }

  else
  {
    MEMORY[0x23EEB50B0]();
    (*(*(v9 - 8) + 8))(v5, v9);
    v12 = sub_23BBD9848();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
    return (*(*(v12 - 8) + 32))(a1, v8, v12);
  }

  return result;
}

uint64_t sub_23BB0D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v88 = a1;
  v2 = a1 - 8;
  v87 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v85 = v3;
  OUTLINED_FUNCTION_13_3(&v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v83 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_3(&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  KeyPath = v8;
  v122 = MEMORY[0x277CE1428];
  v123 = v7;
  v124 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A88);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  v95 = v8;
  v94 = v7;
  type metadata accessor for StoreStaticListView();
  sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  v119 = WitnessTable;
  v120 = v10;
  v118 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v11 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_23();
  v13 = sub_23B97B518(v12, &qword_27E1A0A88);
  v116 = v11;
  v117 = v13;
  v114 = swift_getWitnessTable();
  v115 = MEMORY[0x277CDFC60];
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_27();
  v15 = swift_getWitnessTable();
  v112 = v14;
  v113 = v15;
  swift_getWitnessTable();
  v16 = sub_23BBDC098();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8);
  v97 = v16;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v80 = v22;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13_3(&v76 - v24);
  v96 = v25;
  v26 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_3(&v76 - v33);
  v34 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v91 = v35;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_13_3(&v76 - v37);
  v39 = v89;
  if (*(*v89 + 16))
  {
    v78 = v28;
    MEMORY[0x28223BE20](v38);
    v79 = v34;
    v40 = v94;
    *(&v76 - 4) = v95;
    *(&v76 - 3) = v40;
    *(&v76 - 2) = v39;
    sub_23B9C2924();
    sub_23BBDC088();
    swift_getKeyPath();
    v41 = v82;
    v42 = v88;
    sub_23BB0CEBC(v82);
    OUTLINED_FUNCTION_11_7();
    v43 = v97;
    v77 = swift_getWitnessTable();
    sub_23BBDB748();

    OUTLINED_FUNCTION_13_16();
    v44(v41, v84);
    (*(v18 + 8))(v21, v43);
    v45 = v87;
    v46 = v86;
    (*(v87 + 16))(v86, v39, v42);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    v49 = v94;
    *(v48 + 16) = v95;
    *(v48 + 24) = v49;
    v50 = v46;
    v51 = v96;
    (*(v45 + 32))(v48 + v47, v50, v42);
    OUTLINED_FUNCTION_1_15();
    v54 = sub_23B97B518(v52, v53);
    v110 = v77;
    v111 = v54;
    OUTLINED_FUNCTION_10_5();
    v55 = swift_getWitnessTable();
    v56 = v93;
    sub_23BBDBBF8();
    v34 = v79;

    OUTLINED_FUNCTION_13_16();
    v57(v56, v51);
    v108 = v55;
    v58 = MEMORY[0x277CE0790];
    v109 = MEMORY[0x277CE0790];
    v59 = swift_getWitnessTable();
    v60 = v81;
    sub_23B9D2D88(v31, v26, v59);
    v61 = *(v78 + 8);
    v61(v31, v26);
    sub_23B9D2D88(v60, v26, v59);
    sub_23BA8BE58();
    v62 = v90;
    sub_23BA82E14();
    v61(v31, v26);
    v61(v60, v26);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v122) = 0;
    sub_23BA8BE58();
    OUTLINED_FUNCTION_11_7();
    v63 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_15();
    v66 = sub_23B97B518(v64, v65);
    v100 = v63;
    v101 = v66;
    OUTLINED_FUNCTION_10_5();
    v98 = swift_getWitnessTable();
    v58 = MEMORY[0x277CE0790];
    v99 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    v62 = v90;
    sub_23BA82D64();
  }

  v67 = sub_23BA8BE58();
  OUTLINED_FUNCTION_11_7();
  v68 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v71 = sub_23B97B518(v69, v70);
  v106 = v68;
  v107 = v71;
  v104 = swift_getWitnessTable();
  v105 = v58;
  v72 = swift_getWitnessTable();
  v102 = v67;
  v103 = v72;
  OUTLINED_FUNCTION_2_7();
  v73 = swift_getWitnessTable();
  sub_23B9D2D88(v62, v34, v73);
  OUTLINED_FUNCTION_13_16();
  return v74(v62, v34);
}

uint64_t sub_23BB0DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  *&v137 = a2;
  *(&v137 + 1) = MEMORY[0x277CE1428];
  v138 = a3;
  v139 = MEMORY[0x277CE1410];
  v7 = type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  v100 = v7;
  v8 = sub_23BBDACE8();
  v9 = sub_23BBDBE28();
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v82 = &v77 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A88);
  v96 = v9;
  v11 = sub_23BBDA358();
  v85 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v84 = &v77 - v12;
  v95 = v13;
  v14 = sub_23BBDA358();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  *&v91 = &v77 - v17;
  v90 = sub_23BBDA928();
  *&v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v77 - v20;
  v22 = sub_23BBDCDB8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a2;
  v81 = a3;
  v26 = type metadata accessor for StoreStaticListView();
  v98 = v14;
  v99 = v26;
  v27 = sub_23BBDACE8();
  v93 = *(v27 - 8);
  v94 = v27;
  MEMORY[0x28223BE20](v27);
  v92 = &v77 - v28;
  v29 = *a1;
  sub_23BAC74B0(*a1, v21);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v101 = v8;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v21, &qword_27E1987F0);
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    if (*(v29 + 16) == 1)
    {
      v78 = v22;
      v79 = v25;
      v77 = v23;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      v34 = *(a1 + 48);
      v33 = *(a1 + 56);
      v35 = *(a1 + 64);
      if (*(a1 + 72) == 1)
      {
        *&v137 = *(a1 + 32);
        *(&v137 + 1) = v32;
        v138 = v34;
        v139 = v33;
        v140 = v35;
      }

      else
      {

        sub_23BBDD5A8();
        v57 = sub_23BBDB338();
        sub_23BBD9978();

        v58 = v88;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B9AD3D4(v31, v32, v34, v33, v35, 0);
        (*(v89 + 8))(v58, v90);
      }

      v59 = v95;
      v60 = v98;

      v61 = v138;

      if (v61 == &type metadata for AutomaticProductViewStyle)
      {
        MEMORY[0x28223BE20](v62);
        WitnessTable = swift_getWitnessTable();
        v64 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
        v107 = WitnessTable;
        v108 = v64;
        v65 = swift_getWitnessTable();
        v66 = v82;
        sub_23BBDBE18();
        v106 = v65;
        v67 = v96;
        v68 = swift_getWitnessTable();
        v69 = sub_23BB10684();
        v70 = v84;
        View.productViewStyle<A>(_:)(v69, v67, &type metadata for LargeProductViewStyle, v68);
        (*(v83 + 8))(v66, v67);
        v71 = sub_23B97B518(&qword_27E1A0A98, &qword_27E1A0A88);
        v104 = v68;
        v105 = v71;
        v76 = swift_getWitnessTable();
        sub_23B9C2924();
        v72 = v86;
        sub_23BBDBB18();
        (*(v85 + 8))(v70, v59);
        v102 = v76;
        v46 = MEMORY[0x277CDFC60];
        v103 = MEMORY[0x277CDFC60];
        v73 = swift_getWitnessTable();
        v74 = v91;
        sub_23B9D2D88(v72, v60, v73);
        v98 = *(v87 + 8);
        v98(v72, v60);
        sub_23B9D2D88(v74, v60, v73);
        swift_getWitnessTable();
        v47 = v92;
        sub_23BA82D64();
        v75 = v98;
        v98(v72, v60);
        v75(v91, v60);
        (*(v77 + 8))(v79, v78);
        goto LABEL_8;
      }

      (*(v77 + 8))(v79, v78);
    }

    else
    {
      (*(v23 + 8))(v25, v22);
    }
  }

  v37 = *(a1 + 8);
  v36 = *(a1 + 16);
  v38 = *(a1 + 24);

  v145 = sub_23B9BE5CC() & 1;
  *v146 = *v142;
  *&v146[3] = *&v142[3];
  v147 = v39;
  v144 = v29;
  *&v130 = v29;
  *(&v130 + 1) = v37;
  v131 = v36;
  v132 = v38;
  *v133 = *v143;
  *&v133[3] = *&v143[3];
  v134 = v145;
  *&v135[3] = *&v142[3];
  *v135 = *v142;
  v136 = v39;
  v40 = v99;
  v41 = swift_getWitnessTable();
  sub_23B9D2D88(&v130, v40, v41);
  sub_23B979910(&v144, &qword_27E197AF8);

  sub_23B979910(&v145, &qword_27E199078);
  v90 = v138;
  v95 = v141;
  v91 = v137;
  v125 = v137;
  v126 = v138;
  v127 = v139;
  v128 = v140;
  v129 = v141;
  sub_23B9D2D88(&v125, v40, v41);
  v89 = v130;
  v125 = v130;
  v126 = v131;
  v127 = v132;
  v128 = v134;
  v129 = v136;
  v42 = swift_getWitnessTable();
  v43 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  v123 = v42;
  v124 = v43;
  v122 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v45 = sub_23B97B518(&qword_27E1A0A98, &qword_27E1A0A88);
  v120 = v44;
  v121 = v45;
  v118 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDFC60];
  v119 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v47 = v92;
  sub_23BA82E14();

LABEL_8:
  v48 = swift_getWitnessTable();
  v49 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  v116 = v48;
  v117 = v49;
  v115 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v51 = sub_23B97B518(&qword_27E1A0A98, &qword_27E1A0A88);
  v113 = v50;
  v114 = v51;
  v111 = swift_getWitnessTable();
  v112 = v46;
  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v109 = v52;
  v110 = v53;
  v54 = v94;
  v55 = swift_getWitnessTable();
  sub_23B9D2D88(v47, v54, v55);
  return (*(v93 + 8))(v47, v54);
}

uint64_t sub_23BB0E838@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80);
  MEMORY[0x28223BE20](v9);
  v37 = &v37 - v10;
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v47 = a3;
  v48 = MEMORY[0x277CE1428];
  v40 = a4;
  v49 = a4;
  v50 = MEMORY[0x277CE1410];
  v15 = type metadata accessor for ProductView();
  v38 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v43 = v9;
  v21 = sub_23BBDACE8();
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v26 = a1;
  LODWORD(a1) = *(a1 + 24);
  v27 = (*(v12 + 16))(v14, a2, v11, v23);
  if (a1 == 1)
  {
    MEMORY[0x28223BE20](v27);
    v28 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v28;
    *(&v37 - 2) = v26;
    *(&v37 - 1) = a2;
    ProductView.init<>(_:prefersPromotionalIcon:icon:)();
    WitnessTable = swift_getWitnessTable();
    sub_23B9D2D88(v17, v15, WitnessTable);
    v30 = *(v38 + 8);
    v30(v17, v15);
    sub_23B9D2D88(v20, v15, WitnessTable);
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
    sub_23BA82D64();
    v30(v17, v15);
    v30(v20, v15);
  }

  else
  {
    v31 = v37;
    ProductView.init<>(_:prefersPromotionalIcon:)();
    swift_getWitnessTable();
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
    sub_23BA82E14();
    sub_23B979910(v31, &qword_27E1A0A80);
  }

  v32 = swift_getWitnessTable();
  v33 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  v45 = v32;
  v46 = v33;
  v34 = v41;
  v35 = swift_getWitnessTable();
  sub_23B9D2D88(v25, v34, v35);
  return (*(v42 + 8))(v25, v34);
}

uint64_t sub_23BB0ED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  (*(v10 + 8))(v13);
  sub_23B9D2D88(v9, a3, a4);
  v14 = *(v6 + 8);
  v14(v9, a3);
  sub_23B9D2D88(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t sub_23BB0EE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = sub_23B9BE5CC();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = result & 1;
  *(a5 + 40) = v11;
  return result;
}

uint64_t sub_23BB0EEAC(uint64_t a1)
{
  v2 = sub_23BBDA928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for StoreStaticView() + 52);
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v7, 0);
    (*(v3 + 8))(v5, v2);
    v9 = v15;
  }

  if (v9)
  {
    v11 = v9 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded;
    *v11 = *(*a1 + 16);
    *(v11 + 8) = 0;
  }

  if ((v8 & 1) == 0)
  {
    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v7, 0);
    result = (*(v3 + 8))(v5, v2);
    v7 = v15;
  }

  if (v7)
  {
    sub_23B99BD60();
  }

  return result;
}

uint64_t sub_23BB0F114()
{
  v1 = type metadata accessor for StoreStaticView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  sub_23B9AD3D4(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9848();
    OUTLINED_FUNCTION_4_1();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  j__swift_release(*(v2 + *(v1 + 52)), *(v2 + *(v1 + 52) + 8));

  return swift_deallocObject();
}

uint64_t sub_23BB0F268()
{
  v1 = *(type metadata accessor for StoreStaticView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_23BB0EEAC(v2);
}

uint64_t sub_23BB0F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B28);
  v5 = sub_23BBDCDB8();
  v6 = *(a1 + 24);
  v39 = *(a1 + 16);
  v38 = v6;
  type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v55 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for StoreListItemWrapperView();
  OUTLINED_FUNCTION_10_17();
  *&v50 = v4;
  *(&v50 + 1) = v5;
  v51 = v7;
  v52 = sub_23B97B518(v8, &qword_27E1A0B28);
  v53 = sub_23BB10A68();
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_24();
  v49 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v47 = v9;
  v48 = sub_23B97B518(v10, &qword_27E19A1E0);
  v37 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v11 = type metadata accessor for StoreListWrapperView();
  OUTLINED_FUNCTION_7();
  v35 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B38);
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v36 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v24 = v39;
  v25 = v38;
  v41 = v39;
  v42 = v38;
  v43 = v2;
  sub_23BACE83C(sub_23BB10AC0, v15);
  v56 = *v2;
  v50 = *(v2 + 2);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  v27 = *(v2 + 1);
  *(v26 + 32) = *v2;
  *(v26 + 48) = v27;
  *(v26 + 64) = *(v2 + 2);
  sub_23B99FCE0(&v56, v46, &qword_27E197AF8);

  sub_23B99FCE0(&v50, v46, &qword_27E199078);
  OUTLINED_FUNCTION_7_36();
  v28 = swift_getWitnessTable();
  sub_23BA76524(sub_23BB10AD0, v26);

  OUTLINED_FUNCTION_13_16();
  v29(v15, v11);
  OUTLINED_FUNCTION_7_11();
  v31 = sub_23B97B518(v30, &qword_27E1A0B38);
  v44 = v28;
  v45 = v31;
  v32 = swift_getWitnessTable();
  sub_23B9D2D88(v20, v16, v32);
  v33 = *(v36 + 8);
  v33(v20, v16);
  sub_23B9D2D88(v23, v16, v32);
  return (v33)(v23, v16);
}

uint64_t sub_23BB0F7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v33 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B28);
  v5 = sub_23BBDCDB8();
  type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v44 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  swift_getWitnessTable();
  v25 = type metadata accessor for StoreListItemWrapperView();
  v27 = sub_23B97B518(&qword_27E1A0B30, &qword_27E1A0B28);
  v26 = sub_23BB10A68();
  *&v39 = v28;
  *(&v39 + 1) = v5;
  v40 = v25;
  v41 = v27;
  v42 = v26;
  v6 = sub_23BBDC1A8();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v9 = sub_23BBDA358();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_23BB9A884(*a1);
  v38 = v15;
  swift_getKeyPath();
  v39 = *(a1 + 32);
  v16 = swift_allocObject();
  v17 = v30;
  *(v16 + 16) = v31;
  *(v16 + 24) = v17;
  v18 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v18;
  *(v16 + 64) = *(a1 + 32);

  sub_23B99FCE0(&v39, &v37, &qword_27E199078);
  v24 = swift_getWitnessTable();
  sub_23BBDC188();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF68();
  v36 = v24;
  v19 = swift_getWitnessTable();
  sub_23BA75AAC();
  (*(v29 + 8))(v8, v6);
  v20 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v34 = v19;
  v35 = v20;
  v21 = swift_getWitnessTable();
  sub_23B9D2D88(v11, v9, v21);
  v22 = *(v32 + 8);
  v22(v11, v9);
  sub_23B9D2D88(v14, v9, v21);
  return (v22)(v14, v9);
}

uint64_t sub_23BB0FCD4@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a3;
  v28 = a2;
  v31 = a5;
  v38 = a3;
  v39 = MEMORY[0x277CE1428];
  v40 = a4;
  v41 = MEMORY[0x277CE1410];
  type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  v6 = sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v37 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  v27[1] = v6;
  v27[0] = swift_getWitnessTable();
  v7 = type metadata accessor for StoreListItemWrapperView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0B48);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v18 = sub_23BBDCDB8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99FCE0(a1, v17, &qword_27E1A0B48);
  (*(v19 + 32))(v21, &v17[*(v15 + 56)], v18);
  v22 = *a1 != *(*v28 + 16) - 1;
  v23 = v28[24];
  v32 = v30;
  v33 = v29;
  v34 = v28;
  v35 = v21;
  sub_23BACF3B4(v22, v23, sub_23BB10B30, v10);
  v24 = swift_getWitnessTable();
  sub_23B9D2D88(v10, v7, v24);
  v25 = *(v8 + 8);
  v25(v10, v7);
  sub_23B9D2D88(v13, v7, v24);
  v25(v13, v7);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_23BB10074@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80);
  MEMORY[0x28223BE20](v9);
  v37 = &v37 - v10;
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v47 = a3;
  v48 = MEMORY[0x277CE1428];
  v40 = a4;
  v49 = a4;
  v50 = MEMORY[0x277CE1410];
  v15 = type metadata accessor for ProductView();
  v38 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v43 = v9;
  v21 = sub_23BBDACE8();
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v26 = a1;
  LOBYTE(a1) = a1[24];
  v27 = (*(v12 + 16))(v14, a2, v11, v23);
  if (a1)
  {
    MEMORY[0x28223BE20](v27);
    v28 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v28;
    *(&v37 - 2) = v26;
    *(&v37 - 1) = a2;
    ProductView.init<>(_:prefersPromotionalIcon:icon:)();
    WitnessTable = swift_getWitnessTable();
    sub_23B9D2D88(v17, v15, WitnessTable);
    v30 = *(v38 + 8);
    v30(v17, v15);
    sub_23B9D2D88(v20, v15, WitnessTable);
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
    sub_23BA82D64();
    v30(v17, v15);
    v30(v20, v15);
  }

  else
  {
    v31 = v37;
    ProductView.init<>(_:prefersPromotionalIcon:)();
    swift_getWitnessTable();
    sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
    sub_23BA82E14();
    sub_23B979910(v31, &qword_27E1A0A80);
  }

  v32 = swift_getWitnessTable();
  v33 = sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  v45 = v32;
  v46 = v33;
  v34 = v41;
  v35 = swift_getWitnessTable();
  sub_23B9D2D88(v25, v34, v35);
  return (*(v42 + 8))(v25, v34);
}

uint64_t sub_23BB105F0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEB2E70]();
  *a1 = result;
  return result;
}

uint64_t sub_23BB1061C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEB2E70]();
  *a1 = result;
  return result;
}

unint64_t sub_23BB10684()
{
  result = qword_27E1A0AA0[0];
  if (!qword_27E1A0AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A0AA0);
  }

  return result;
}

uint64_t sub_23BB106F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB10730()
{
  type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A88);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for StoreStaticListView();
  sub_23BBDACE8();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_23();
  sub_23B97B518(v0, &qword_27E1A0A88);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_27();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDACE8();
  sub_23BA8BE58();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v1, &qword_27E199CE8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23BB10A68()
{
  result = qword_27E1A04E8;
  if (!qword_27E1A04E8)
  {
    sub_23BBDCDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A04E8);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23BB10B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B28);
  sub_23BBDCDB8();
  type metadata accessor for ProductView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0A80);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A0A90, &qword_27E1A0A80);
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  type metadata accessor for StoreListItemWrapperView();
  OUTLINED_FUNCTION_10_17();
  sub_23B97B518(v0, &qword_27E1A0B28);
  sub_23BB10A68();
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v1, &qword_27E19A1E0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  type metadata accessor for StoreListWrapperView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0B38);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_7_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_11();
  sub_23B97B518(v2, &qword_27E1A0B38);
  return swift_getWitnessTable();
}

uint64_t sub_23BB10E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BB10E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionOptionGroupAccessorySubview()
{
  result = qword_27E1A0B78;
  if (!qword_27E1A0B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB10F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v13[3] = a3;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_23BB1106C(KeyPath, v13, a2, a4);

  return sub_23B9B754C(v13);
}

uint64_t sub_23BB10FDC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 & 0xFFFE | a1 & 1;
  sub_23BB1106C(KeyPath, &v11, a3, a4);
}

uint64_t sub_23BB1106C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = *(*a1 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_23BBDB2A8();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v20 - v17);
  (*(v9 + 16))(v12, a2, v7);
  sub_23BB117C8(a1, v12, v18);

  MEMORY[0x23EEB43C0](v18, a3, v13, v20);
  return (*(v15 + 8))(v18, v13);
}

BOOL sub_23BB11230()
{
  v0 = sub_23BBDA288();
  OUTLINED_FUNCTION_3_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDC1D8();
  sub_23B9B7448();
  sub_23BBDA298();
  (*(v2 + 8))(v5, v0);
  return (v9 & 0x100) == 0 && v9 != 2;
}

uint64_t sub_23BB11368(char a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a1 & 1);
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB113F4()
{
  v1 = *v0;
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](v1);
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

BOOL sub_23BB11450(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23BB11320(v2 | *a1, v3 | *a2);
}

uint64_t sub_23BB11480()
{
  sub_23B9B7448();
  sub_23BBDA298();
  return v1;
}

uint64_t sub_23BB114BC()
{
  sub_23B9B74F8();

  return sub_23BBDA298();
}

uint64_t sub_23BB11550(uint64_t a1)
{
  *(a1 + 8) = sub_23BB115D4(&qword_27E1A0B88, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  result = sub_23BB115D4(&qword_27E19F0F8, type metadata accessor for SubscriptionOptionGroupAccessorySubview);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23BB115D4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_23BB11664()
{
  qword_27E1A0B70 = 0;
  result = 0.0;
  xmmword_27E1A0B50 = 0u;
  unk_27E1A0B60 = 0u;
  return result;
}

uint64_t sub_23BB1167C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977F8 != -1)
  {
    swift_once();
  }

  return sub_23BB118A8(&xmmword_27E1A0B50, a1);
}

uint64_t sub_23BB116E8(uint64_t a1)
{
  sub_23BB118A8(a1, v3);
  sub_23B9B74F8();
  sub_23BBDA2A8();
  return sub_23B9B754C(a1);
}

uint64_t sub_23BB1173C@<X0>(_WORD *a1@<X8>)
{
  result = sub_23BB11480();
  *a1 = result;
  return result;
}

uint64_t sub_23BB117C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + *MEMORY[0x277D84308] + 8);
  v7 = sub_23BBDB2A8();
  v8 = *(*(v6 - 8) + 32);
  v9 = a3 + *(v7 + 28);

  return v8(v9, a2, v6);
}

uint64_t sub_23BB118A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t storeEnumTagSinglePayload for SubscriptionOptionGroupAccessorySubview.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BB11A04);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BB11A40()
{
  result = qword_27E1A0B90;
  if (!qword_27E1A0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0B90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionOptionGroupAccessorySubview.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x23BB11B60);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BB11B9C()
{
  result = qword_27E1A0B98;
  if (!qword_27E1A0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0B98);
  }

  return result;
}

id sub_23BB11C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23BB11CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BB11D30()
{
  v1 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + 16);
  swift_getKeyPath();
  v12 = *(v11 + 16);

  v14 = 0;
  v15 = 0;
  while (v14 == v12)
  {
    v16 = 1;
    v14 = v12;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v10, v16, 1, v1);
    sub_23BB18E50(v10, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
    {
      goto LABEL_11;
    }

    sub_23BB1A408(v7, v4, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    swift_getAtKeyPath();
    result = sub_23BB1A0E4();
    v17 = __OFADD__(v15, v19);
    v15 += v19;
    if (v17)
    {
      __break(1u);
LABEL_11:

      return v15;
    }
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v14 >= *(v11 + 16))
    {
      goto LABEL_13;
    }

    sub_23BB1A134(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v10, type metadata accessor for SubscriptionStoreControlConfigurationSection);
    v16 = 0;
    ++v14;
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_23BB11F90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA8CE60(*a1);
  *a2 = result;
  return result;
}

void sub_23BB120B0()
{
  OUTLINED_FUNCTION_10_0();
  v62 = v3;
  v4 = OUTLINED_FUNCTION_0_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  v6 = OUTLINED_FUNCTION_13_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_72_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_6_22(v2);
  if (v27)
  {
    sub_23B9846E8(v2, &qword_27E198900);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v20 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v20, qword_27E1BFC88);
    v21 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_13_4(v21))
    {
      OUTLINED_FUNCTION_44_4();
      v64 = OUTLINED_FUNCTION_5_5();
      v22 = OUTLINED_FUNCTION_98_0(4.8752e-34);
      OUTLINED_FUNCTION_22_16(v22);
      *(v19 + 14) = OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_18_4(&dword_23B970000, v23, v24, "%{public}s%{public}s");
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_15_3();
    }
  }

  else
  {
    v25 = OUTLINED_FUNCTION_73_2();
    (unk_23BBE6280)(v25);
    v26 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseTimestamp;
    OUTLINED_FUNCTION_101_0();
    sub_23BAAE9D4(v0 + v26, v9, &qword_27E198900);
    OUTLINED_FUNCTION_6_22(v9);
    if (v27)
    {
      sub_23B9846E8(v9, &qword_27E198900);
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v28 = type metadata accessor for SKLogger();
      v29 = OUTLINED_FUNCTION_16_3(v28, qword_27E1BFC88);
      v30 = sub_23BBD9988();
      if (os_log_type_enabled(v30, v29))
      {
        v31 = OUTLINED_FUNCTION_44_4();
        v63 = OUTLINED_FUNCTION_131();
        *v31 = 136446466;
        v32 = OUTLINED_FUNCTION_64_2();
        *(v31 + 14) = OUTLINED_FUNCTION_58_2(v32);
        OUTLINED_FUNCTION_106_0(&dword_23B970000, v33, v34, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v35 = OUTLINED_FUNCTION_46();
      v36(v35);
    }

    else
    {
      (unk_23BBE6280)(v16, v9, v1);
      if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult) != 4)
      {
        v50 = OUTLINED_FUNCTION_88_0();
        (unk_23BBE6280)(v50);
        v51 = type metadata accessor for MintViewBasePurchaseEvent(0);
        v52 = OUTLINED_FUNCTION_70_2(v51);
        (unk_23BBE6280)(v52);
        v53 = v0[3];
        OUTLINED_FUNCTION_37_3();
        *v55 = v54;
        v55[1] = v53;
        *(v2 + *(v19 + 10)) = v56;
        *(v2 + *(v19 + 11)) = v57;
        *(v2 + *(v19 + 12)) = v58;
        v59 = OUTLINED_FUNCTION_13_26();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v19);

        goto LABEL_22;
      }

      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v37 = type metadata accessor for SKLogger();
      v38 = OUTLINED_FUNCTION_16_3(v37, qword_27E1BFC88);
      v39 = sub_23BBD9988();
      if (os_log_type_enabled(v39, v38))
      {
        v40 = OUTLINED_FUNCTION_44_4();
        v63 = OUTLINED_FUNCTION_131();
        *v40 = 136446466;
        v41 = OUTLINED_FUNCTION_64_2();
        *(v40 + 14) = OUTLINED_FUNCTION_63_1(v41);
        OUTLINED_FUNCTION_104(&dword_23B970000, v42, v43, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v44 = *(v12 + 8);
      v44(v16, v1);
      v45 = OUTLINED_FUNCTION_46();
      (v44)(v45);
    }
  }

  type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
LABEL_22:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB125AC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v8 = sub_23BBD9828();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_appearTimestamp;
  swift_beginAccess();
  sub_23BAAE9D4(v1 + v15, v7, &qword_27E198900);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_23B9846E8(v7, &qword_27E198900);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v16, qword_27E1BFC88);
    v17 = sub_23BBDD588();
    v18 = sub_23BBD9988();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v52[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v52);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_23BA5AB90(0xD000000000000035, 0x800000023BBE2740, v52);
      _os_log_impl(&dword_23B970000, v18, v17, "%{public}s%{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v20, -1, -1);
      MEMORY[0x23EEB6DC0](v19, -1, -1);
    }

LABEL_19:
    v35 = type metadata accessor for MintViewBasePurchaseEvent(0);
    return __swift_storeEnumTagSinglePayload(v50, 1, 1, v35);
  }

  v21 = *(v9 + 32);
  v21(v14, v7, v8);
  v22 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseTimestamp;
  swift_beginAccess();
  sub_23BAAE9D4(v1 + v22, v4, &qword_27E198900);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_23B9846E8(v4, &qword_27E198900);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v23, qword_27E1BFC88);
    v24 = sub_23BBDD588();
    v25 = sub_23BBD9988();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v51);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_23BA5AB90(0xD000000000000037, 0x800000023BBE2780, &v51);
      _os_log_impl(&dword_23B970000, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v27, -1, -1);
      MEMORY[0x23EEB6DC0](v26, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    goto LABEL_19;
  }

  v21(v11, v4, v8);
  v28 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseResult);
  if (v28 == 4)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v29, qword_27E1BFC88);
    v30 = sub_23BBDD588();
    v31 = sub_23BBD9988();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v51);
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_23BA5AB90(0xD000000000000034, 0x800000023BBE27C0, &v51);
      _os_log_impl(&dword_23B970000, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v33, -1, -1);
      MEMORY[0x23EEB6DC0](v32, -1, -1);
    }

    v34 = *(v9 + 8);
    v34(v11, v8);
    v34(v14, v8);
    goto LABEL_19;
  }

  v37 = v50;
  v21(v50, v14, v8);
  v38 = *(v1 + 16);
  v39 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v21((v37 + v39[6]), v11, v8);
  v40 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex);
  v41 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex + 8);
  v42 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseCompletion);
  v43 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseOptions);
  v44 = (v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
  v45 = *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseStart);
  *(v37 + v39[5]) = v38;
  *(v37 + v39[7]) = v28;
  v46 = *v44;
  v47 = v44[1];
  v48 = v37 + v39[8];
  *v48 = v40;
  *(v48 + 8) = v41;
  v49 = (v37 + v39[9]);
  *v49 = v46;
  v49[1] = v47;
  *(v37 + v39[10]) = v42;
  *(v37 + v39[11]) = v43;
  *(v37 + v39[12]) = v45;
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v39);
}

void sub_23BB12D18()
{
  OUTLINED_FUNCTION_10_0();
  v62 = v3;
  v4 = OUTLINED_FUNCTION_0_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  v6 = OUTLINED_FUNCTION_13_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_72_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_6_22(v2);
  if (v27)
  {
    sub_23B9846E8(v2, &qword_27E198900);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v20 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v20, qword_27E1BFC88);
    v21 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_13_4(v21))
    {
      OUTLINED_FUNCTION_44_4();
      v64 = OUTLINED_FUNCTION_5_5();
      v22 = OUTLINED_FUNCTION_98_0(4.8752e-34);
      OUTLINED_FUNCTION_22_16(v22);
      *(v19 + 14) = OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_18_4(&dword_23B970000, v23, v24, "%{public}s%{public}s");
      OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_15_3();
    }
  }

  else
  {
    v25 = OUTLINED_FUNCTION_73_2();
    (unk_23BBE6280)(v25);
    v26 = OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseTimestamp;
    OUTLINED_FUNCTION_101_0();
    sub_23BAAE9D4(&v0[v26], v9, &qword_27E198900);
    OUTLINED_FUNCTION_6_22(v9);
    if (v27)
    {
      sub_23B9846E8(v9, &qword_27E198900);
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v28 = type metadata accessor for SKLogger();
      v29 = OUTLINED_FUNCTION_16_3(v28, qword_27E1BFC88);
      v30 = sub_23BBD9988();
      if (os_log_type_enabled(v30, v29))
      {
        v31 = OUTLINED_FUNCTION_44_4();
        v63 = OUTLINED_FUNCTION_131();
        *v31 = 136446466;
        v32 = OUTLINED_FUNCTION_64_2();
        *(v31 + 14) = OUTLINED_FUNCTION_58_2(v32);
        OUTLINED_FUNCTION_106_0(&dword_23B970000, v33, v34, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v35 = OUTLINED_FUNCTION_46();
      v36(v35);
    }

    else
    {
      (unk_23BBE6280)(v16, v9, v1);
      if (v0[OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_purchaseResult] != 4)
      {
        v50 = OUTLINED_FUNCTION_88_0();
        (unk_23BBE6280)(v50);
        v51 = type metadata accessor for MintViewBasePurchaseEvent(0);
        v52 = OUTLINED_FUNCTION_70_2(v51);
        (unk_23BBE6280)(v52);
        v53 = *&v0[OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_productID + 8];
        OUTLINED_FUNCTION_37_3();
        *v55 = v54;
        v55[1] = v53;
        *(v2 + *(v19 + 10)) = v56;
        *(v2 + *(v19 + 11)) = v57;
        *(v2 + *(v19 + 12)) = v58;
        v59 = OUTLINED_FUNCTION_13_26();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v19);

        goto LABEL_22;
      }

      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v37 = type metadata accessor for SKLogger();
      v38 = OUTLINED_FUNCTION_16_3(v37, qword_27E1BFC88);
      v39 = sub_23BBD9988();
      if (os_log_type_enabled(v39, v38))
      {
        v40 = OUTLINED_FUNCTION_44_4();
        v63 = OUTLINED_FUNCTION_131();
        *v40 = 136446466;
        v41 = OUTLINED_FUNCTION_64_2();
        *(v40 + 14) = OUTLINED_FUNCTION_63_1(v41);
        OUTLINED_FUNCTION_104(&dword_23B970000, v42, v43, "%{public}s%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      v44 = *(v12 + 8);
      v44(v16, v1);
      v45 = OUTLINED_FUNCTION_46();
      (v44)(v45);
    }
  }

  type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
LABEL_22:
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB13224()
{
  OUTLINED_FUNCTION_109();
  v2 = v1;
  OUTLINED_FUNCTION_15_8();
  v3 = type metadata accessor for SKLogger();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_23BBDD318();
  v13 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  v14 = v0[1];
  v21 = *v0;
  v22 = v14;
  *v23 = v0[2];
  *&v23[11] = *(v0 + 43);
  OUTLINED_FUNCTION_2_40();
  sub_23BB1A134(v2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v16 = (*(v6 + 80) + 91) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = v22;
  *(v17 + 32) = v21;
  *(v17 + 48) = v18;
  *(v17 + 64) = *v23;
  *(v17 + 75) = *&v23[11];
  OUTLINED_FUNCTION_1_50();
  sub_23BB1A408(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v16, v20);
  sub_23BB19AEC(v0, &v21);
  sub_23BB142C0();

  sub_23B9846E8(v12, &qword_27E198320);
  OUTLINED_FUNCTION_110();
}

void sub_23BB133F4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_28();
  v3 = type metadata accessor for StoreViewDisappearEvent();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v7 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v11, v12, v13);
  OUTLINED_FUNCTION_2_40();
  v14 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v14, v15, v16);
  OUTLINED_FUNCTION_5_32();
  v17 = OUTLINED_FUNCTION_81_0();
  v18 = OUTLINED_FUNCTION_61_3(v17);
  OUTLINED_FUNCTION_48_6(v18);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v19, v20, v21);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB135A8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_28();
  v3 = type metadata accessor for StoreViewPurchaseEvent();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v7 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v11, v12, v13);
  OUTLINED_FUNCTION_2_40();
  v14 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v14, v15, v16);
  OUTLINED_FUNCTION_5_32();
  v17 = OUTLINED_FUNCTION_81_0();
  v18 = OUTLINED_FUNCTION_61_3(v17);
  OUTLINED_FUNCTION_48_6(v18);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v19, v20, v21);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1375C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for SubscriptionViewDisappearEvent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_23BBDD318();
  v13 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_23BB1A134(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionViewDisappearEvent);
  sub_23BB1A134(a2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SKLogger);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_23BB1A408(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for SubscriptionViewDisappearEvent);
  sub_23BB1A408(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SKLogger);
  sub_23BB142C0();

  return sub_23B9846E8(v12, &qword_27E198320);
}

uint64_t sub_23BB139F4(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &__dst[-v8];
  sub_23BBDD318();
  v10 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  memcpy(__dst, a1, sizeof(__dst));
  sub_23BB1A134(a2, &__dst[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SKLogger);
  v11 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  memcpy(v12 + 4, __dst, 0x50uLL);
  sub_23BB1A408(&__dst[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for SKLogger);
  sub_23BB18B80(a1, __dst);
  sub_23BB142C0();

  return sub_23B9846E8(v9, &qword_27E198320);
}

void sub_23BB13BF0()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_28();
  v3 = type metadata accessor for SubscriptionViewPurchaseEvent();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v7 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v11, v12, v13);
  OUTLINED_FUNCTION_2_40();
  v14 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v14, v15, v16);
  OUTLINED_FUNCTION_5_32();
  v17 = OUTLINED_FUNCTION_81_0();
  v18 = OUTLINED_FUNCTION_61_3(v17);
  OUTLINED_FUNCTION_48_6(v18);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v19, v20, v21);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB13DA4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_28();
  v3 = type metadata accessor for ProductViewDisappearEvent();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v7 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v11, v12, v13);
  OUTLINED_FUNCTION_2_40();
  v14 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v14, v15, v16);
  OUTLINED_FUNCTION_5_32();
  v17 = OUTLINED_FUNCTION_81_0();
  v18 = OUTLINED_FUNCTION_61_3(v17);
  OUTLINED_FUNCTION_48_6(v18);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v19, v20, v21);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB13F58()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_28();
  v3 = type metadata accessor for ProductViewAppearanceEvent();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v7 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v11, v12, v13);
  OUTLINED_FUNCTION_2_40();
  v14 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v14, v15, v16);
  OUTLINED_FUNCTION_5_32();
  v17 = OUTLINED_FUNCTION_81_0();
  v18 = OUTLINED_FUNCTION_61_3(v17);
  OUTLINED_FUNCTION_48_6(v18);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v19, v20, v21);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB1410C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = OUTLINED_FUNCTION_47_4();
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_28();
  v3 = type metadata accessor for ProductViewPurchaseEvent();
  v4 = OUTLINED_FUNCTION_25_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_25();
  sub_23BBDD318();
  sub_23BBDD368();
  v7 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_0_7();
  sub_23BB1A134(v11, v12, v13);
  OUTLINED_FUNCTION_2_40();
  v14 = OUTLINED_FUNCTION_52_5();
  sub_23BB1A134(v14, v15, v16);
  OUTLINED_FUNCTION_5_32();
  v17 = OUTLINED_FUNCTION_81_0();
  v18 = OUTLINED_FUNCTION_61_3(v17);
  OUTLINED_FUNCTION_48_6(v18);
  OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_79_1(v19, v20, v21);
  OUTLINED_FUNCTION_16_16();

  sub_23B9846E8(v0, &qword_27E198320);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB142C0()
{
  OUTLINED_FUNCTION_109();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  sub_23BAAE9D4(v5, v23 - v10, &qword_27E198320);
  v12 = sub_23BBDD368();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v11, &qword_27E198320);
  }

  else
  {
    sub_23BBDD358();
    OUTLINED_FUNCTION_1_4();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23BBDD2D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_23BBDD048() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_110();
}

uint64_t sub_23BB14550()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

void sub_23BB145C4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = *v5;
  v15 = v5[2];
  v16 = *(v5 + 24);
  sub_23BBD9818();
  v17 = sub_23BBD9828();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
  v18 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_appearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v13, v1 + v18);
  swift_endAccess();
  if (!v16)
  {
    v19 = 2;
LABEL_6:
    *(v1 + 26) = v19;
    *(v1 + 48) = *(v14 + 16);
    *(v1 + 56) = 0;
    goto LABEL_7;
  }

  if (v16 != 1)
  {
    v19 = 1;
    goto LABEL_6;
  }

  *(v1 + 26) = 0;
  v24[1] = v15;
  *(v1 + 64) = sub_23BB1619C();

LABEL_7:
  sub_23B99BCE8(v3);
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_23BB163B8();
  sub_23B9846E8(v9, &qword_27E1A0BC0);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB14788()
{
  OUTLINED_FUNCTION_109();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_35_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_25();
  sub_23BBD9818();
  sub_23BBD9828();
  v9 = OUTLINED_FUNCTION_13_26();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_disappearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v1, v0 + v13);
  swift_endAccess();
  sub_23B99BCE8(v3);
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_23BB163B8();
  v18 = OUTLINED_FUNCTION_52_5();
  sub_23B9846E8(v18, v19);
  OUTLINED_FUNCTION_110();
}

uint64_t sub_23BB148CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0BD0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_90_0();
  v3 = type metadata accessor for SubscriptionViewDisappearEvent();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_23BB168C4(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    return sub_23B9846E8(v0, qword_27E1A0BD0);
  }

  sub_23BB1A408(v0, v7, type metadata accessor for SubscriptionViewDisappearEvent);
  if (qword_27E197798 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v9 = type metadata accessor for SKLogger();
  v10 = __swift_project_value_buffer(v9, qword_27E1BFD50);
  sub_23BB1375C(v7, v10);
  return sub_23BB1A0E4();
}

uint64_t sub_23BB14A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14A44, 0, 0);
}

uint64_t sub_23BB14A44()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BBA6130())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_195;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD00000000000001FLL, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB14BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14BCC, 0, 0);
}

uint64_t sub_23BB14BCC()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9A8F18())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_206;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000022, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB14D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14D54, 0, 0);
}

uint64_t sub_23BB14D54()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9F6AC8())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_92_0();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_172;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      v7 = OUTLINED_FUNCTION_92_0();
      *(v1 + 1) = sub_23BA5AB90(v7, v8, v9);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v10, v11, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_23BB14EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB14ED4, 0, 0);
}

uint64_t sub_23BB14ED4()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BA07AF4())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_228;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000029, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB1503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB1505C, 0, 0);
}

uint64_t sub_23BB1505C()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BB03110())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB18DA0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000026, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB151C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB151E4, 0, 0);
}

uint64_t sub_23BB151E4()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23BB7DDC4())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_150;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000028, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_23BB1534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_23BBDCE08();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_23BBDCDF8();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB15438, 0, 0);
}

uint64_t sub_23BB15438()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = v0[13];
    v4 = sub_23BBDD018();
    v42 = v0;
    v6 = v5;

    sub_23BB02B28(v4, v6);
    sub_23B9A935C();
    OUTLINED_FUNCTION_80_2();
    v7 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v7, v8);
    v9 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v9, v10);
    v11 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v11, v12);
    OUTLINED_FUNCTION_105_0();
    v13 = OUTLINED_FUNCTION_40_1();
    v14(v13);
    v15 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v15, v16);
    sub_23BB02FE4(v3);
    v0 = v42;

    sub_23BBD97D8();
    v17 = OUTLINED_FUNCTION_40_1();
    sub_23B9A940C(v17, v18);
  }

  v19 = OUTLINED_FUNCTION_17_0();
  v21 = sub_23B9D4CA8(v19, v20);

  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_78_2();
    if (v22)
    {
      type metadata accessor for ProductViewDisappearEvent();
      sub_23BBC9A58();
      if (v23)
      {
        v24 = sub_23BBC95BC();
        if (v24)
        {
          v25 = v24;
          v26 = OUTLINED_FUNCTION_52_5();
          v28 = sub_23BB024A0(v26, v27, 1);
          v29 = sub_23BB024A0(v25, v28, 1);
          OUTLINED_FUNCTION_25_9();
          v30 = sub_23BBDCFE8();
          OUTLINED_FUNCTION_40_6();
          v31 = swift_allocObject();
          *(v31 + 16) = v29;
          v0[6] = sub_23BB1A4C0;
          v0[7] = v31;
          v0[2] = MEMORY[0x277D85DD0];
          OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
          v0[4] = v32;
          v0[5] = &block_descriptor_217;
          v33 = _Block_copy(v0 + 2);

          OUTLINED_FUNCTION_17_0();
          AnalyticsSendEventLazy();
          _Block_release(v33);

          goto LABEL_13;
        }
      }
    }
  }

  v34 = v0[9];
  sub_23BBDD5B8();
  v35 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_67_1(v35))
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0] = 136380675;
    OUTLINED_FUNCTION_15_22();
    MEMORY[4] = sub_23BA5AB90(0xD000000000000024, v36, v37);
    OUTLINED_FUNCTION_16_5(&dword_23B970000, v38, v39, "Error sending CoreAnalytics event %{private}s, invalid event provided");
    OUTLINED_FUNCTION_14_21();
    OUTLINED_FUNCTION_105();
  }

LABEL_13:

  OUTLINED_FUNCTION_1_16();

  return v40();
}

uint64_t sub_23BB15774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_23BBDCE08();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_23BBDCDF8();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB15860, 0, 0);
}

uint64_t sub_23BB15860()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = v0[13];
    v4 = sub_23BBDD018();
    v6 = v5;

    sub_23BB02B28(v4, v6);
    sub_23B9A935C();
    OUTLINED_FUNCTION_80_2();
    v7 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v7, v8);
    v9 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v9, v10);
    v11 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v11, v12);
    OUTLINED_FUNCTION_105_0();
    v13 = OUTLINED_FUNCTION_40_1();
    v14(v13);
    v15 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v15, v16);
    sub_23BB02FE4(v3);

    sub_23BBD97D8();
    v17 = OUTLINED_FUNCTION_40_1();
    sub_23B9A940C(v17, v18);
  }

  v19 = OUTLINED_FUNCTION_17_0();
  v21 = sub_23B9D4CA8(v19, v20);

  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_78_2();
    if (v22)
    {
      v23 = v22;
      type metadata accessor for ProductViewAppearanceEvent();
      sub_23BBC9A58();
      if (v24)
      {
        v25 = sub_23BB024A0(v24, v23, 1);
        OUTLINED_FUNCTION_25_9();
        OUTLINED_FUNCTION_92_0();
        v26 = sub_23BBDCFE8();
        OUTLINED_FUNCTION_40_6();
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        v0[6] = sub_23BB1A4C0;
        v0[7] = v27;
        v0[2] = MEMORY[0x277D85DD0];
        OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
        v0[4] = v28;
        v0[5] = &block_descriptor_161;
        v29 = _Block_copy(v0 + 2);

        OUTLINED_FUNCTION_17_0();
        AnalyticsSendEventLazy();
        _Block_release(v29);

        goto LABEL_11;
      }
    }
  }

  v30 = v0[9];
  sub_23BBDD5B8();
  v31 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_67_1(v31))
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0] = 136380675;
    OUTLINED_FUNCTION_15_22();
    v32 = OUTLINED_FUNCTION_92_0();
    MEMORY[4] = sub_23BA5AB90(v32, v33, v34);
    OUTLINED_FUNCTION_16_5(&dword_23B970000, v35, v36, "Error sending CoreAnalytics event %{private}s, invalid event provided");
    OUTLINED_FUNCTION_14_21();
    OUTLINED_FUNCTION_105();
  }

LABEL_11:

  OUTLINED_FUNCTION_1_16();

  return v37();
}

uint64_t sub_23BB15B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_23BB15B74, 0, 0);
}

uint64_t sub_23BB15B74()
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_41_0();
  if (sub_23B9DDEC4())
  {
    OUTLINED_FUNCTION_57_2();
    OUTLINED_FUNCTION_25_9();
    v3 = sub_23BBDCFE8();
    OUTLINED_FUNCTION_40_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v2[6] = sub_23BB1A4C0;
    v2[7] = v4;
    v2[2] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_0_47(COERCE_DOUBLE(1107296256));
    v2[4] = v5;
    v2[5] = &block_descriptor_183;
    _Block_copy(v1);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_6_9();
    AnalyticsSendEventLazy();
    _Block_release(v0);
  }

  else
  {
    v3 = v2[9];
    sub_23BBDD5B8();
    v6 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_67_1(v6))
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_12_4();
      *v1 = 136380675;
      OUTLINED_FUNCTION_15_22();
      *(v1 + 1) = sub_23BA5AB90(0xD000000000000023, v7, v8);
      OUTLINED_FUNCTION_16_5(&dword_23B970000, v9, v10, "Error sending CoreAnalytics event %{private}s, invalid event provided");
      OUTLINED_FUNCTION_14_21();
      OUTLINED_FUNCTION_105();
    }
  }

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_108_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

id sub_23BB15CDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_23B9A9318();
    v4 = sub_23BBDCE18();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_23BB15D68()
{

  OUTLINED_FUNCTION_84_0(OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_appearTimestamp);
  OUTLINED_FUNCTION_84_0(OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_disappearTimestamp);
  OUTLINED_FUNCTION_84_0(OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseTimestamp);

  return v0;
}

uint64_t sub_23BB15DE0()
{
  sub_23BB15D68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SubscriptionStoreViewEventConfiguration()
{
  result = qword_27E1A0BA0;
  if (!qword_27E1A0BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB15E8C()
{
  sub_23B99BB44();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23BB15FA0()
{
  *(v0 + 16) = 50726403;
  *(v0 + 20) = 33686018;
  *(v0 + 24) = 512;
  *(v0 + 26) = 4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 57) = 771;
  *(v0 + 59) = 2;
  *(v0 + 64) = MEMORY[0x277D84FA0];
  v1 = sub_23BBD9828();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchaseResult) = 4;
  v11 = v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedPlanIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_purchasedProductID);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseCompletion) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseOptions) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_usesInAppPurchaseStart) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_didSendAppearEvent) = 0;
  return v0;
}

void sub_23BB160D8()
{
  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_didSendAppearEvent;
  if ((*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI39SubscriptionStoreViewEventConfiguration_didSendAppearEvent) & 1) == 0)
  {
    sub_23BB16808(&v4);
    if (v5 != 1)
    {
      v10[0] = v4;
      v10[1] = v5;
      v11 = v6;
      v12 = v7;
      v13 = v8;
      v14 = v9;
      *(v0 + v1) = 1;
      if (qword_27E197798 != -1)
      {
        OUTLINED_FUNCTION_6_4();
      }

      v2 = type metadata accessor for SKLogger();
      v3 = __swift_project_value_buffer(v2, qword_27E1BFD50);
      sub_23BB139F4(v10, v3);
      sub_23B9846E8(&v4, &qword_27E1A0BB0);
    }
  }
}

uint64_t sub_23BB1619C()
{
  if ((~*v0 & 0xFLL) != 0)
  {
    v2 = MEMORY[0x277D84F90];
    sub_23B9B8240();
    v4 = v3;
    v5 = *(v3 + 16);
    v6 = *(v3 + 24) >> 1;
    v7 = v5 + 1;
    if (v6 <= v5)
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      OUTLINED_FUNCTION_69_2();
    }

    *(v4 + 16) = v7;
    *(v4 + v5 + 32) = 0;
    v8 = v5 + 2;
    if (v6 < (v5 + 2))
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      OUTLINED_FUNCTION_69_2();
    }

    *(v4 + 16) = v8;
    *(v4 + v7 + 32) = 1;
    v9 = v5 + 3;
    if (v6 < (v5 + 3))
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      OUTLINED_FUNCTION_69_2();
    }

    *(v4 + 16) = v9;
    *(v4 + v8 + 32) = 2;
    v10 = v5 + 4;
    if (v6 < (v5 + 4))
    {
      OUTLINED_FUNCTION_55_3();
      sub_23B9B8240();
      v4 = v14;
    }

    *(v4 + 16) = v10;
    *(v4 + v9 + 32) = 3;
    sub_23BA92CA8();
    v11 = *(v2 + 16);
    v12 = 32;
    do
    {
      v13 = *(v4 + v12);
      if (v11 >= *(v2 + 24) >> 1)
      {
        sub_23BA92CA8();
      }

      *(v2 + 16) = v11 + 1;
      *(v2 + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);

    return sub_23B9B49BC(v2);
  }

  else
  {

    return sub_23BA68424(&unk_284E56FA8);
  }
}

void sub_23BB163B8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v18 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = 1;
  v1[22] = sub_23BBD9BD8() & 1;
  v1[20] = sub_23BBD9BD8() & 1;
  if ((sub_23BBD9BD8() & 1) == 0)
  {
    if ((sub_23BBD9BD8() & 1) == 0)
    {
      goto LABEL_5;
    }

    v14 = 0;
  }

  v1[21] = v14;
LABEL_5:
  if (sub_23BBD9BD8())
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
    if ((sub_23BBD9BD8() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v1[23] = v15;
LABEL_9:
  if (sub_23BBD9BD8())
  {
    sub_23BAAE9D4(v18, v8, &qword_27E1A0BC0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_23B9846E8(v8, &qword_27E1A0BC0);
    }

    else
    {
      sub_23BB1A408(v8, v13, type metadata accessor for SubscriptionStorePolicyConfiguration);
      v16 = sub_23BBA9E34();
      sub_23BB1A0E4();
      v1[21] = v16 & 1;
    }
  }

  if ((sub_23BBD9BD8() & 1) != 0 && v4 != 2)
  {
    v1[23] = v4;
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB165DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  *(v21 + 24) = v25;
  type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  *(v21 + 57) = sub_23BB16714();
  *(v21 + 58) = sub_23BB16714();
  v30 = sub_23BB11D30();
  *(v21 + 19) = (*(*v23 + 96))();
  *(v21 + 32) = v30;
  *(v21 + 40) = 0;
  sub_23BA8CE68();
  v31 = type metadata accessor for Subscription();
  v32 = __swift_getEnumTagSinglePayload(v29, 1, v31) != 1;
  sub_23B9846E8(v29, qword_27E197A68);
  *(v21 + 25) = v32;
  OUTLINED_FUNCTION_110();
}

uint64_t sub_23BB16714()
{
  type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_1();
  v1 = OUTLINED_FUNCTION_6_9();
  sub_23BB1A134(v1, v2, v3);
  OUTLINED_FUNCTION_35_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_23BB1A0E4();
  return v5;
}

char *sub_23BB167DC(char *result)
{
  v2 = *result;
  v3 = *(result + 2);
  if (v3 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x5040300u >> (8 * v3);
  }

  *(v1 + 17) = v4;
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_23BB16808@<X0>(uint64_t a1@<X8>)
{
  sub_23BB16CE8(v13);
  v2 = v14;
  if (v14 == 1)
  {
    result = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0uLL;
    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    v11 = v13[1];
    v12 = v13[2];
    v10 = v13[0];
    result = sub_23BB12050();
    v7 = v11;
    v8 = v12;
    v5 = v10;
    v4 = v9 & 0xFFFFFF;
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  *(a1 + 72) = v2;
  return result;
}

uint64_t sub_23BB168C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for MintDisappearBaseEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB16CE8(v23);
  v8 = v24;
  if (v24 != 1)
  {
    v25 = v23[0];
    v26 = v23[1];
    v27 = v23[2];
    sub_23B99BF88(1, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_23BB1A408(v4, v7, type metadata accessor for MintDisappearBaseEvent);
      v12 = sub_23BB12050();
      v14 = v13;
      v16 = v15;
      v17 = v15 >> 8;
      v18 = HIWORD(v15);
      v19 = type metadata accessor for SubscriptionViewDisappearEvent();
      sub_23BB1A408(v7, a1 + *(v19 + 24), type metadata accessor for MintDisappearBaseEvent);
      *a1 = v12;
      *(a1 + 8) = v14;
      *(a1 + 16) = v16;
      *(a1 + 17) = v17;
      *(a1 + 18) = v18;
      v20 = v26;
      *(a1 + 24) = v25;
      *(a1 + 40) = v20;
      *(a1 + 56) = v27;
      *(a1 + 72) = v8;
      v10 = a1;
      v11 = 0;
      v9 = v19;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    sub_23B9846E8(v23, &qword_27E1A0BB8);
    sub_23B9846E8(v4, &qword_27E198910);
  }

  v9 = type metadata accessor for SubscriptionViewDisappearEvent();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

void sub_23BB16AF4()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988E8);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_90_0();
  v6 = type metadata accessor for MintViewBasePurchaseEvent(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  sub_23BB16CE8(v25);
  v11 = v26;
  if (v26 != 1)
  {
    v27 = v25[0];
    v28 = v25[1];
    v29 = v25[2];
    sub_23BB125AC(v0);
    if (__swift_getEnumTagSinglePayload(v0, 1, v6) != 1)
    {
      sub_23BB1A408(v0, v10, type metadata accessor for MintViewBasePurchaseEvent);
      v16 = sub_23BB12050();
      v18 = v17;
      v20 = v19;
      v21 = v19 >> 8;
      v22 = HIWORD(v19);
      v23 = type metadata accessor for SubscriptionViewPurchaseEvent();
      sub_23BB1A408(v10, v2 + *(v23 + 24), type metadata accessor for MintViewBasePurchaseEvent);
      *v2 = v16;
      *(v2 + 8) = v18;
      *(v2 + 16) = v20;
      *(v2 + 17) = v21;
      *(v2 + 18) = v22;
      v24 = v28;
      *(v2 + 24) = v27;
      *(v2 + 40) = v24;
      *(v2 + 56) = v29;
      *(v2 + 72) = v11;
      v12 = v2;
      v13 = 0;
      v14 = 1;
      v15 = v23;
      goto LABEL_6;
    }

    sub_23B9846E8(v25, &qword_27E1A0BB8);
    sub_23B9846E8(v0, &qword_27E1988E8);
  }

  type metadata accessor for SubscriptionViewPurchaseEvent();
  OUTLINED_FUNCTION_8_1();
LABEL_6:
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB16CE8@<X0>(unint64_t *a1@<X8>)
{
  v5 = *(v1 + 20);
  if (v5 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v6 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v6, qword_27E1BFC88);
    v7 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v7))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v9 = OUTLINED_FUNCTION_3_7(4.8752e-34, v8);
    OUTLINED_FUNCTION_22_16(v9);
    v10 = 0xD00000000000003DLL;
    goto LABEL_11;
  }

  v11 = *(v1 + 22);
  if (v11 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v12 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v12, qword_27E1BFC88);
    v13 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v13))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v15 = OUTLINED_FUNCTION_3_7(4.8752e-34, v14);
    OUTLINED_FUNCTION_22_16(v15);
    v10 = 0xD000000000000043;
    goto LABEL_11;
  }

  v26 = *(v1 + 26);
  if (v26 == 4)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v27 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v27, qword_27E1BFC88);
    v28 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v28))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v30 = OUTLINED_FUNCTION_3_7(4.8752e-34, v29);
    OUTLINED_FUNCTION_22_16(v30);
    v16 = v3 | 0x8000000000000000;
    v10 = 0xD000000000000036;
    goto LABEL_12;
  }

  v31 = *(v1 + 59);
  if (v31 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v32 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v32, qword_27E1BFC88);
    v33 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v33))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v35 = OUTLINED_FUNCTION_3_7(4.8752e-34, v34);
    OUTLINED_FUNCTION_22_16(v35);
    v10 = 0xD000000000000045;
LABEL_11:
    v16 = v3 | 0x8000000000000000;
LABEL_12:
    *(v2 + 14) = sub_23BA5AB90(v10, v16, &v47);
    OUTLINED_FUNCTION_18_4(&dword_23B970000, v17, v18, "%{public}s%{public}s");
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_15_3();
LABEL_13:

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    result = 1;
    goto LABEL_14;
  }

  v36 = *(v1 + 19);
  v37 = *(v1 + 21);
  v38 = *(v1 + 23);
  v39 = *(v1 + 24);
  v40 = *(v1 + 25);
  v21 = *(v1 + 32);
  v23 = *(v1 + 48);
  v41 = *(v1 + 56);
  v42 = *(v1 + 57);
  v43 = *(v1 + 58);
  v44 = v11 & 1;
  LOBYTE(v47) = *(v1 + 40);
  v45 = (*(v1 + 17) | (v36 << 16)) & 0xFFFFFFFFFEFFFFFFLL | ((v5 & 1) << 24) | (v37 << 32);
  v46 = 0x100000000000000;
  if (!v39)
  {
    v46 = 0;
  }

  v19 = v46 | (v38 << 48) | v45 | (v44 << 40);
  v20 = v40 | (v26 << 8);
  v22 = v47;
  v24 = ((v42 << 8) | (v43 << 16)) & 0xFFFFFFFFFEFFFFFFLL | v41 | ((v31 & 1) << 24);

LABEL_14:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = v23;
  a1[5] = v24;
  a1[6] = result;
  return result;
}

uint64_t sub_23BB1702C()
{
  sub_23BB1A090();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB170A4(uint64_t a1)
{
  v16 = sub_23BA98A8C(a1);
  sub_23BB17568(&v16);
  v1 = v16;
  v2 = *(v16 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_23BA92BE8();
    v3 = 32;
    v4 = v16;
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_89_0();
    do
    {
      v8 = 0xE700000000000000;
      v9 = 0x746E6572727563;
      switch(*(v1 + v3))
      {
        case 1:
          v8 = 0xE900000000000065;
          v9 = v5;
          break;
        case 2:
          v8 = 0xEA00000000006564;
          v9 = v6;
          break;
        case 3:
          v9 = v7;
          break;
        case 4:
          v8 = 0xE300000000000000;
          v9 = 7105633;
          break;
        default:
          break;
      }

      v16 = v4;
      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_23BA92BE8();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_91();
        v4 = v16;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
  sub_23BB18DC0();
  v12 = sub_23BBDCEA8();
  v14 = v13;

  if (sub_23B9D4CA8(v12, v14))
  {

    return 0;
  }

  return v12;
}

uint64_t sub_23BB172D0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 0x746E6572727563;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x746E6572727563;
  switch(v3)
  {
    case 1:
      v5 = 0x646172676E776F64;
      v4 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x61726773736F7263;
      v4 = 0xEA00000000006564;
      break;
    case 3:
      v5 = 0x65646172677075;
      break;
    case 4:
      v4 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(*a2)
  {
    case 1:
      v2 = 0x646172676E776F64;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x61726773736F7263;
      v6 = 0xEA00000000006564;
      break;
    case 3:
      v2 = 0x65646172677075;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7105633;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_23BBDDA88();
  }

  return v8 & 1;
}

uint64_t sub_23BB17478(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23BA02140;

  return v7(a1);
}

uint64_t sub_23BB17568(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23B9BC800();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_23BB175D4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_23BB175D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23BBDDA18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_23BBDD288();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23BB17908(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23BB176C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23BB176C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + a3);
    v7 = result - a3;
    do
    {
      v8 = *(v5 + v4);
      v9 = v7;
      v18 = v6;
      while (1)
      {
        v10 = 0xE700000000000000;
        v11 = 0x746E6572727563;
        switch(v8)
        {
          case 1:
            v11 = 0x646172676E776F64;
            v10 = 0xE900000000000065;
            break;
          case 2:
            v11 = 0x61726773736F7263;
            v10 = 0xEA00000000006564;
            break;
          case 3:
            v11 = 0x65646172677075;
            break;
          case 4:
            v10 = 0xE300000000000000;
            v11 = 7105633;
            break;
          default:
            break;
        }

        v12 = 0xE700000000000000;
        v13 = 0x746E6572727563;
        switch(*(v6 - 1))
        {
          case 1:
            v13 = 0x646172676E776F64;
            v12 = 0xE900000000000065;
            break;
          case 2:
            v13 = 0x61726773736F7263;
            v12 = 0xEA00000000006564;
            break;
          case 3:
            v13 = 0x65646172677075;
            break;
          case 4:
            v12 = 0xE300000000000000;
            v13 = 7105633;
            break;
          default:
            break;
        }

        if (v11 == v13 && v10 == v12)
        {
          break;
        }

        v15 = sub_23BBDDA88();

        if (v15)
        {
          if (!v5)
          {
            __break(1u);
            JUMPOUT(0x23BB178E0);
          }

          v8 = *v6;
          *v6 = *(v6 - 1);
          *--v6 = v8;
          if (!__CFADD__(v9++, 1))
          {
            continue;
          }
        }

        goto LABEL_24;
      }

LABEL_24:
      ++v4;
      v6 = v18 + 1;
      --v7;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_23BB17908(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v7 + 1) >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v9 = *a3;
        v102 = v7[*a3 + 1];
        v101 = v7[v9];
        v10 = sub_23BB172D0(&v102, &v101);
        if (v5)
        {
        }

        v11 = v10;
        __dst = v7;
        while ((v7 + 2) < v6)
        {
          v12 = 0xE700000000000000;
          v13 = 0x746E6572727563;
          switch(v7[v9 + 2])
          {
            case 1:
              v13 = 0x646172676E776F64;
              v12 = 0xE900000000000065;
              break;
            case 2:
              v13 = 0x61726773736F7263;
              v12 = 0xEA00000000006564;
              break;
            case 3:
              v13 = 0x65646172677075;
              break;
            case 4:
              v12 = 0xE300000000000000;
              v13 = 7105633;
              break;
            default:
              break;
          }

          v14 = 0xE700000000000000;
          v15 = 0x746E6572727563;
          switch(v7[v9 + 1])
          {
            case 1:
              v15 = 0x646172676E776F64;
              v14 = 0xE900000000000065;
              break;
            case 2:
              v15 = 0x61726773736F7263;
              v14 = 0xEA00000000006564;
              break;
            case 3:
              v15 = 0x65646172677075;
              break;
            case 4:
              v14 = 0xE300000000000000;
              v15 = 7105633;
              break;
            default:
              break;
          }

          if (v13 == v15 && v12 == v14)
          {

            if (v11)
            {
              v20 = (v7 + 1);
              v6 = (v7 + 2);
              v7 = __dst;
              goto LABEL_30;
            }
          }

          else
          {
            v17 = v5;
            v18 = sub_23BBDDA88();

            v19 = v11 ^ v18;
            v5 = v17;
            if (v19)
            {
              v20 = (v7 + 1);
              v6 = (v7 + 2);
              goto LABEL_27;
            }
          }

          ++v7;
        }

        v20 = v6 - 1;
LABEL_27:
        v7 = __dst;
        if ((v11 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_30:
        if (v6 < v7)
        {
          goto LABEL_153;
        }

        if (v7 <= v20)
        {
          v21 = v6 - 1;
          v22 = v7;
          do
          {
            if (v22 != v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v24 = v22[v23];
              v22[v23] = *(v23 + v21);
              *(v23 + v21) = v24;
            }

            v25 = ++v22 < v21--;
          }

          while (v25);
        }
      }

LABEL_37:
      v26 = a3[1];
      if (v6 < v26)
      {
        if (__OFSUB__(v6, v7))
        {
          goto LABEL_152;
        }

        if (v6 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_154;
          }

          if (&v7[a4] < v26)
          {
            v26 = &v7[a4];
          }

          if (v26 < v7)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v6 != v26)
          {
            v97 = v26;
            v93 = v8;
            v94 = v5;
            v27 = v7;
            v28 = *a3;
            v29 = (*a3 + v6);
            __dst = v27;
            v30 = &v27[-v6];
            do
            {
              v31 = *(v28 + v6);
              v32 = v30;
              v33 = v29;
              while (1)
              {
                v34 = 0xE700000000000000;
                v35 = 0x746E6572727563;
                switch(v31)
                {
                  case 1:
                    v35 = 0x646172676E776F64;
                    v34 = 0xE900000000000065;
                    break;
                  case 2:
                    v35 = 0x61726773736F7263;
                    v34 = 0xEA00000000006564;
                    break;
                  case 3:
                    v35 = 0x65646172677075;
                    break;
                  case 4:
                    v34 = 0xE300000000000000;
                    v35 = 7105633;
                    break;
                  default:
                    break;
                }

                v36 = 0xE700000000000000;
                v37 = 0x746E6572727563;
                switch(*(v33 - 1))
                {
                  case 1:
                    v37 = 0x646172676E776F64;
                    v36 = 0xE900000000000065;
                    break;
                  case 2:
                    v37 = 0x61726773736F7263;
                    v36 = 0xEA00000000006564;
                    break;
                  case 3:
                    v37 = 0x65646172677075;
                    break;
                  case 4:
                    v36 = 0xE300000000000000;
                    v37 = 7105633;
                    break;
                  default:
                    break;
                }

                if (v35 == v37 && v34 == v36)
                {
                  break;
                }

                v39 = sub_23BBDDA88();

                if ((v39 & 1) == 0)
                {
                  goto LABEL_67;
                }

                if (!v28)
                {
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
                  JUMPOUT(0x23BB18174);
                }

                v31 = *v33;
                *v33 = *(v33 - 1);
                *--v33 = v31;
                if (__CFADD__(v32++, 1))
                {
                  goto LABEL_67;
                }
              }

LABEL_67:
              ++v6;
              ++v29;
              --v30;
            }

            while (v6 != v97);
            v8 = v93;
            v5 = v94;
            v6 = v97;
            v7 = __dst;
          }
        }
      }

      if (v6 < v7)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B7D34();
        v8 = v83;
      }

      v41 = *(v8 + 2);
      v42 = v41 + 1;
      if (v41 >= *(v8 + 3) >> 1)
      {
        sub_23B9B7D34();
        v8 = v84;
      }

      *(v8 + 2) = v42;
      v43 = v8 + 32;
      v44 = &v8[16 * v41 + 32];
      *v44 = v7;
      *(v44 + 1) = v6;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      v98 = v6;
      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[16 * v42 - 16];
          v47 = &v8[16 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = *(v8 + 4);
            v49 = *(v8 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_89:
            if (v51)
            {
              goto LABEL_138;
            }

            v63 = *v47;
            v62 = *(v47 + 1);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_141;
            }

            v67 = *(v46 + 1);
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_144;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_146;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_111;
            }

            goto LABEL_104;
          }

          if (v42 < 2)
          {
            goto LABEL_140;
          }

          v70 = *v47;
          v69 = *(v47 + 1);
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_104:
          if (v66)
          {
            goto LABEL_143;
          }

          v72 = *v46;
          v71 = *(v46 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_145;
          }

          if (v73 < v65)
          {
            goto LABEL_118;
          }

LABEL_111:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
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
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
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
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (!*a3)
          {
            goto LABEL_158;
          }

          v77 = v8;
          v78 = &v43[16 * v45 - 16];
          v79 = *v78;
          v80 = v45;
          v81 = &v43[16 * v45];
          v8 = *(v81 + 1);
          sub_23BB181C4((*a3 + *v78), (*a3 + *v81), &v8[*a3], __dst);
          if (v5)
          {
          }

          if (v8 < v79)
          {
            goto LABEL_133;
          }

          v5 = *(v77 + 2);
          if (v80 > v5)
          {
            goto LABEL_134;
          }

          *v78 = v79;
          v78[1] = v8;
          if (v80 >= v5)
          {
            goto LABEL_135;
          }

          v82 = v80;
          v42 = v5 - 1;
          sub_23B9BD698(v81 + 16, v5 - 1 - v82, v81);
          v8 = v77;
          *(v77 + 2) = v5 - 1;
          v25 = v5 > 2;
          v5 = 0;
          if (!v25)
          {
            goto LABEL_118;
          }
        }

        v52 = &v43[16 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_136;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_137;
        }

        v59 = *(v47 + 1);
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_139;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_142;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = *(v46 + 1);
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_150;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_111;
        }

        goto LABEL_89;
      }

LABEL_118:
      v6 = a3[1];
      v7 = v98;
      if (v98 >= v6)
      {
        goto LABEL_121;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_121:
  __dst = *a1;
  if (!*a1)
  {
    goto LABEL_162;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_156:
    v8 = sub_23B9BD684(v8);
  }

  v85 = v8 + 16;
  v86 = *(v8 + 2);
  while (v86 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_159;
    }

    v87 = v8;
    v88 = &v8[16 * v86];
    v89 = *v88;
    v8 = &v85[2 * v86];
    v90 = *(v8 + 1);
    sub_23BB181C4((*a3 + *v88), (*a3 + *v8), (*a3 + v90), __dst);
    if (v5)
    {
      break;
    }

    if (v90 < v89)
    {
      goto LABEL_147;
    }

    if (v86 - 2 >= *v85)
    {
      goto LABEL_148;
    }

    *v88 = v89;
    *(v88 + 1) = v90;
    v91 = *v85 - v86;
    if (*v85 < v86)
    {
      goto LABEL_149;
    }

    v86 = *v85 - 1;
    sub_23B9BD698(v8 + 16, v91, v8);
    *v85 = v86;
    v8 = v87;
  }
}

uint64_t sub_23BB181C4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_23B9B8820(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_73;
      }

      v12 = 0xE700000000000000;
      v13 = 0x746E6572727563;
      switch(*v6)
      {
        case 1:
          v13 = 0x646172676E776F64;
          v12 = 0xE900000000000065;
          break;
        case 2:
          v13 = 0x61726773736F7263;
          v12 = 0xEA00000000006564;
          break;
        case 3:
          v13 = 0x65646172677075;
          break;
        case 4:
          v12 = 0xE300000000000000;
          v13 = 7105633;
          break;
        default:
          break;
      }

      v14 = 0xE700000000000000;
      v15 = 0x746E6572727563;
      switch(*v4)
      {
        case 1:
          v15 = 0x646172676E776F64;
          v14 = 0xE900000000000065;
          break;
        case 2:
          v15 = 0x61726773736F7263;
          v14 = 0xEA00000000006564;
          break;
        case 3:
          v15 = 0x65646172677075;
          break;
        case 4:
          v14 = 0xE300000000000000;
          v15 = 7105633;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
      }

      else
      {
        v17 = sub_23BBDDA88();

        if (v17)
        {
          v11 = v7 >= v6;
          v18 = v6++;
          if (!v11 || v7 >= v6)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }

      v11 = v7 >= v4;
      v18 = v4++;
      if (!v11 || v7 >= v4)
      {
LABEL_33:
        *v7 = *v18;
      }

LABEL_34:
      ++v7;
    }
  }

  sub_23B9B8820(a2, a3 - a2, __dst);
  v10 = &v4[v9];
  v33 = v7;
LABEL_36:
  v21 = v6 - 1;
  --v5;
  v34 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v23 = 0xE700000000000000;
    v24 = 0x746E6572727563;
    switch(*(v10 - 1))
    {
      case 1:
        v24 = 0x646172676E776F64;
        v23 = 0xE900000000000065;
        break;
      case 2:
        v24 = 0x61726773736F7263;
        v23 = 0xEA00000000006564;
        break;
      case 3:
        v24 = 0x65646172677075;
        break;
      case 4:
        v23 = 0xE300000000000000;
        v24 = 7105633;
        break;
      default:
        break;
    }

    v25 = 0xE700000000000000;
    v26 = 0x746E6572727563;
    switch(*v21)
    {
      case 1:
        v26 = 0x646172676E776F64;
        v25 = 0xE900000000000065;
        break;
      case 2:
        v26 = 0x61726773736F7263;
        v25 = 0xEA00000000006564;
        break;
      case 3:
        v26 = 0x65646172677075;
        break;
      case 4:
        v25 = 0xE300000000000000;
        v26 = 7105633;
        break;
      default:
        break;
    }

    if (v24 == v26 && v23 == v25)
    {
    }

    else
    {
      v28 = sub_23BBDDA88();

      if (v28)
      {
        v30 = (v5 + 1) < v34 || v5 >= v34;
        v6 = v21;
        v7 = v33;
        if (v30)
        {
          *v5 = *v21;
          v6 = v21;
        }

        goto LABEL_36;
      }
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v6 = v34;
    v7 = v33;
  }

LABEL_73:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_23BB18670(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v10 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v10;
  *(v5 + 48) = a4[2];
  *(v5 + 59) = *(a4 + 43);
  v11 = swift_task_alloc();
  *(v5 + 80) = v11;
  *v11 = v5;
  v11[1] = sub_23BB18744;

  return sub_23BB14A24(a1, a2, a3, v5 + 16, a5);
}

uint64_t sub_23BB18744()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BB18824(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  memcpy((v5 + 16), __src, 0x50uLL);
  v10 = swift_task_alloc();
  *(v5 + 96) = v10;
  *v10 = v5;
  v10[1] = sub_23BB188F0;

  return sub_23BB1503C(a1, a2, a3, v5 + 16, a5);
}

uint64_t sub_23BB188F0()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BB189D0()
{
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v1);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_23BB18AA0()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_15_8();
  v0 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_97_0();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BB18BDC()
{

  return swift_deallocObject();
}

uint64_t sub_23BB18C14()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_36_3();

  return v3();
}

uint64_t sub_23BB18CC0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23B9F3414;
  OUTLINED_FUNCTION_36_3();

  return v3();
}

uint64_t sub_23BB18D6C()
{

  OUTLINED_FUNCTION_40_6();

  return swift_deallocObject();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BB18DC0()
{
  result = qword_27E1A0890[0];
  if (!qword_27E1A0890[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B730);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A0890);
  }

  return result;
}

uint64_t sub_23BB18E24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA8CE60(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BB18E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB18EC0()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for SubscriptionViewPurchaseEvent();
  OUTLINED_FUNCTION_8_3();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v5);
  v7 = (((v2 + 32) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_35_0();
  v9(v10);
  v11 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v12 = OUTLINED_FUNCTION_43_5(v11);
  v9(v12);
  OUTLINED_FUNCTION_82_1();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v13 + 8))(v0 + v7);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19038()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for SubscriptionViewPurchaseEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB151C4(v5, v6, v7, v8, v9);
}

uint64_t sub_23BB1913C()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for ProductViewAppearanceEvent();
  OUTLINED_FUNCTION_8_3();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v6);
  v8 = *(v7 + 80);
  swift_unknownObjectRelease();

  v9 = *(v0 + 28);
  v10 = v9 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v11 = sub_23BBDC8A8();
  if (!__swift_getEnumTagSinglePayload(v1 + v3 + v10, 1, v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v1 + v3 + v10, v11);
  }

  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v13 + 8))(v1 + ((v3 + v5 + v8) & ~v8));
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB192C0()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for ProductViewAppearanceEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB15774(v5, v6, v7, v8, v9);
}

uint64_t sub_23BB193C4()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for StoreViewPurchaseEvent();
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v4);
  swift_unknownObjectRelease();

  v5 = *(v0 + 24);
  v6 = v5 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v7 = sub_23BBDC8A8();
  if (!OUTLINED_FUNCTION_102(v7))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v8 + 8))(v1 + v3 + v6, v5);
  }

  OUTLINED_FUNCTION_87_0();
  sub_23BBD9828();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_35_0();
  v10(v11);
  v12 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v13 = OUTLINED_FUNCTION_43_5(v12);
  v10(v13);
  OUTLINED_FUNCTION_82_1();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v14 + 8))(v1 + v3);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19580()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for StoreViewPurchaseEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB14D34(v5, v6, v7, v8, v9);
}

uint64_t sub_23BB19684()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for ProductViewPurchaseEvent();
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v4);
  swift_unknownObjectRelease();

  v5 = *(v0 + 20);
  v6 = v5 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v7 = sub_23BBDC8A8();
  if (!OUTLINED_FUNCTION_102(v7))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v8 + 8))(v1 + v3 + v6, v5);
  }

  OUTLINED_FUNCTION_87_0();
  sub_23BBD9828();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_35_0();
  v10(v11);
  v12 = type metadata accessor for MintViewBasePurchaseEvent(0);
  v13 = OUTLINED_FUNCTION_43_5(v12);
  v10(v13);
  OUTLINED_FUNCTION_82_1();
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v14 + 8))(v1 + v3);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19840()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for ProductViewPurchaseEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB15B54(v5, v6, v7, v8, v9);
}

uint64_t sub_23BB19944()
{
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v1);
  v3 = (*(v2 + 80) + 91) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_23BB19A0C()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_15_8();
  v0 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_10(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_97_0();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23BB19B48()
{
  OUTLINED_FUNCTION_109();
  type metadata accessor for StoreViewDisappearEvent();
  OUTLINED_FUNCTION_8_3();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v5);
  v7 = (((v2 + 32) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_35_0();
  v9(v10);
  v11 = type metadata accessor for MintDisappearBaseEvent(0);
  v12 = OUTLINED_FUNCTION_66_1(v11);
  v9(v12);
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v13 + 8))(v0 + v7);
  OUTLINED_FUNCTION_110();

  return swift_deallocObject();
}

uint64_t sub_23BB19CB4()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for StoreViewDisappearEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB14BAC(v5, v6, v7, v8, v9);
}

uint64_t sub_23BB19DB8()
{
  OUTLINED_FUNCTION_10_0();
  type metadata accessor for ProductViewDisappearEvent();
  OUTLINED_FUNCTION_19_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v6);
  v8 = *(v7 + 80);
  swift_unknownObjectRelease();

  v9 = *(v0 + 20);
  v10 = v9 + *(type metadata accessor for ProductViewBaseEvent(0) + 24);
  v11 = sub_23BBDC8A8();
  if (!__swift_getEnumTagSinglePayload(v1 + v3 + v10, 1, v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v1 + v3 + v10, v11);
  }

  v13 = (v3 + v5 + v8) & ~v8;
  sub_23BBD9828();
  OUTLINED_FUNCTION_4_1();
  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_35_0();
  v15(v16);
  v17 = type metadata accessor for MintDisappearBaseEvent(0);
  v18 = OUTLINED_FUNCTION_66_1(v17);
  v15(v18);
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v19 + 8))(v1 + v13);
  OUTLINED_FUNCTION_9_1();

  return swift_deallocObject();
}

uint64_t sub_23BB19F8C()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for ProductViewDisappearEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB1534C(v5, v6, v7, v8, v9);
}

unint64_t sub_23BB1A090()
{
  result = qword_27E1A0BC8;
  if (!qword_27E1A0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0BC8);
  }

  return result;
}

uint64_t sub_23BB1A0E4()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23BB1A134(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BB1A190()
{
  OUTLINED_FUNCTION_109();
  type metadata accessor for SubscriptionViewDisappearEvent();
  OUTLINED_FUNCTION_8_3();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_25_0(v5);
  v7 = (((v2 + 32) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_35_0();
  v9(v10);
  v11 = type metadata accessor for MintDisappearBaseEvent(0);
  v12 = OUTLINED_FUNCTION_66_1(v11);
  v9(v12);
  sub_23BBD99A8();
  OUTLINED_FUNCTION_12_1();
  (*(v13 + 8))(v0 + v7);
  OUTLINED_FUNCTION_110();

  return swift_deallocObject();
}

uint64_t sub_23BB1A304()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_19_20();
  v0 = type metadata accessor for SubscriptionViewDisappearEvent();
  OUTLINED_FUNCTION_25_0(v0);
  v1 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_11_22();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18_16(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_32(v3);
  OUTLINED_FUNCTION_97_0();

  return sub_23BB14EB4(v5, v6, v7, v8, v9);
}

uint64_t sub_23BB1A408(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_14_21()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x23EEB6DC0);
}

void OUTLINED_FUNCTION_16_16()
{

  sub_23BB142C0();
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_24_14()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_37_3()
{
  *(v3 + v1[5]) = v0;
  *(v3 + v1[7]) = v2;
  v4 = v3 + v1[8];
  *v4 = 0;
  *(v4 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_4()
{

  return type metadata accessor for SKLogger();
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return sub_23BB1A408(v3, a1 + v2, v1);
}

unint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_23BA5AB90(0xD000000000000037, v1 | 0x8000000000000000, (v3 - 136));
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

unint64_t OUTLINED_FUNCTION_63_1(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_23BA5AB90(0xD000000000000034, v1 | 0x8000000000000000, (v3 - 136));
}

unint64_t OUTLINED_FUNCTION_64_2()
{

  return sub_23BA5AB90(0, 0xE000000000000000, (v0 - 136));
}

BOOL OUTLINED_FUNCTION_67_1(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_75_2()
{
}

void OUTLINED_FUNCTION_78_2()
{

  sub_23BBC909C();
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_23BB1A408(v3, v4 + v5, a3);
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return sub_23BBDCDE8();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82_1()
{
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_23BBD9828();
}

uint64_t OUTLINED_FUNCTION_84_0@<X0>(uint64_t a1@<X8>)
{

  return sub_23B9846E8(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_23BA5AB90(0xD000000000000035, v0 | 0x8000000000000000, (v1 - 128));
}

unint64_t OUTLINED_FUNCTION_98_0(float a1)
{
  *v1 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_99_0()
{

  return sub_23BAAE9D4(v1 + v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_101_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_103()
{

  return sub_23BBD9828();
}

void OUTLINED_FUNCTION_104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_23BBDCDD8();
}

void OUTLINED_FUNCTION_106_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_23BB1ABD4()
{
  result = sub_23BBDB018();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreControlStyleConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB1AC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDB018();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
    v8 = a1 + *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BB1AD24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BBDB018();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BB1ADE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BB1AE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23BB1AEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23BB1B10C(a1, a3);
  OUTLINED_FUNCTION_3_39();
  v6 = a4 + *(type metadata accessor for SubscriptionStoreControl() + 36);

  return sub_23BA2F6CC(a2, v6);
}

double sub_23BB1AF04@<D0>(uint64_t a1@<X8>)
{
  sub_23BB1BCAC();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BB1AFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_3_39();
  v18();
  sub_23BA9B0D4(a2, v11, &qword_27E197BB0);
  sub_23BB1AEA0(v17, v11, a3, a4);
  sub_23B9EA92C(a2, &qword_27E197BB0);
  return (*(v13 + 8))(a1, a3);
}

uint64_t sub_23BB1B10C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_39();
  v7();
  sub_23BBDAFF8();
  return (*(v5 + 8))(a1, a2);
}

uint64_t sub_23BB1B1E8()
{
  sub_23BBDB018();

  return sub_23BBDB008();
}

uint64_t sub_23BB1B228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_3_1();
  v38 = v6 - v5;
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_3_2();
  v36 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v39 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C60);
  v19 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v40 = v20;
  MEMORY[0x28223BE20](v21);
  v35 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v37 = &v35 - v24;
  sub_23BB1B1E8();
  v25 = *(a1 + 36);
  v26 = v2;
  (*(v13 + 40))(v2 + v25, v7, v13);
  (*(v36 + 8))(v12, v7);
  swift_getKeyPath();
  v27 = v38;
  sub_23B9C990C(v26 + v25, v38);
  sub_23BB1B5DC(v27, v48);
  v44 = v48[0];
  v45 = v49;
  v46 = v50;
  v47 = v51;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v35;
  sub_23BBDB748();

  sub_23BB1BBBC(v48);
  (*(v39 + 8))(v18, AssociatedTypeWitness);
  v30 = sub_23BB1BBEC();
  v42 = AssociatedConformanceWitness;
  v43 = v30;
  OUTLINED_FUNCTION_0();
  WitnessTable = swift_getWitnessTable();
  v32 = v37;
  sub_23B9D2D88(v29, v19, WitnessTable);
  v33 = *(v40 + 8);
  v33(v29, v19);
  sub_23B9D2D88(v32, v19, WitnessTable);
  return (v33)(v32, v19);
}

uint64_t sub_23BB1B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  SubscriptionStoreControlStyleConfiguration.options.getter();
  v28 = *(v16 + 16);

  SubscriptionStoreControlStyleConfiguration.autoRenewPreference.getter(v15);
  sub_23BA9B0D4(v15, v12, &qword_27E1987F0);
  v17 = sub_23BBDCDB8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) == 1)
  {
    sub_23B9EA92C(v12, &qword_27E1987F0);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v19 = v20;
    (*(*(v17 - 8) + 8))(v12, v17);
  }

  sub_23BA9B0D4(v15, v9, &qword_27E1987F0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_23BB1BC50(a1);
    sub_23B9EA92C(v15, &qword_27E1987F0);
    v21 = v9;
    v22 = &qword_27E1987F0;
  }

  else
  {
    sub_23BBDC8F8();
    (*(*(v17 - 8) + 8))(v9, v17);
    v23 = sub_23BBDCB58();
    if (__swift_getEnumTagSinglePayload(v6, 1, v23) != 1)
    {
      v25 = sub_23BBDCA28();
      sub_23BB1BC50(a1);
      sub_23B9EA92C(v15, &qword_27E1987F0);
      result = (*(*(v23 - 8) + 8))(v6, v23);
      v26 = 0;
      goto LABEL_10;
    }

    sub_23BB1BC50(a1);
    sub_23B9EA92C(v15, &qword_27E1987F0);
    v22 = &qword_27E197B90;
    v21 = v6;
  }

  result = sub_23B9EA92C(v21, v22);
  v25 = 0;
  v26 = 1;
LABEL_10:
  *a2 = v28 == 1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v25;
  *(a2 + 32) = v26;
  return result;
}

uint64_t sub_23BB1B954(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 1) == *(a2 + 1) && v5 == v6;
    if (!v7 && (sub_23BBDDA88() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a2[32];
  if (a1[32])
  {
    if ((a2[32] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23BB1B9FC()
{
  sub_23BBDDBD8();
  if (*(v0 + 16))
  {
    sub_23BBDDBD8();
    sub_23BBDD078();
  }

  else
  {
    sub_23BBDDBD8();
  }

  if (*(v0 + 32) == 1)
  {
    return sub_23BBDDBD8();
  }

  v2 = *(v0 + 24);
  sub_23BBDDBD8();
  return MEMORY[0x23EEB63A0](v2);
}

uint64_t sub_23BB1BA90()
{
  sub_23BBDDBB8();
  sub_23BB1B9FC();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB1BAD8()
{
  sub_23BBDDBB8();
  sub_23BB1B9FC();
  return sub_23BBDDBF8();
}

unint64_t sub_23BB1BB1C()
{
  result = qword_27E1A0C58;
  if (!qword_27E1A0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C58);
  }

  return result;
}

unint64_t sub_23BB1BBEC()
{
  result = qword_27E1A0C68;
  if (!qword_27E1A0C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C68);
  }

  return result;
}

uint64_t sub_23BB1BC50(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BB1BCAC()
{
  result = qword_27E1A0C70;
  if (!qword_27E1A0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C70);
  }

  return result;
}

uint64_t sub_23BB1BD10()
{
  OUTLINED_FUNCTION_3_39();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C60);
  sub_23BBDA358();
  swift_getAssociatedConformanceWitness();
  sub_23BB1BBEC();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

double sub_23BB1BDCC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 1;
  *(a1 + 16) = xmmword_23BBE4070;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_23BB1BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB1BE48();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BB1BE48()
{
  result = qword_27E1A0C78;
  if (!qword_27E1A0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1988B0);
    sub_23BB1BB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C78);
  }

  return result;
}

double sub_23BB1BED8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_27E1977E8 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D1 == 1 || byte_27E1A04D1 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_minos_at_least()))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&result = 1;
    *(a2 + 24) = xmmword_23BBE4070;
  }

  else
  {
LABEL_8:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double ButtonsSubscriptionStoreControlStyle.Placement.init(rawValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9AF0F0(a1, v10);
  memset(v9, 0, sizeof(v9));
  v4 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v9, v10);
  sub_23B97B104(v9);
  if (v4)
  {
    sub_23B97B104(v10);
  }

  else
  {
    memset(v9, 0, 24);
    *&v9[24] = xmmword_23BBE4070;
    v5 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v9, v10);
    sub_23B97B104(v9);
    sub_23B97B104(v10);
    if ((v5 & 1) == 0)
    {
      sub_23B97B104(a1);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *&v6 = 6;
      *(a2 + 24) = xmmword_23BBE8BF0;
      return *&v6;
    }
  }

  v6 = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(a1 + 32);
  return *&v6;
}

unint64_t static ButtonsSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E63000;
  result = sub_23BB1C090();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BB1C090()
{
  result = qword_27E1A0C80;
  if (!qword_27E1A0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C80);
  }

  return result;
}

void static ButtonsSubscriptionStoreControlStyle.Placement.bottom.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4750);
}

void static ButtonsSubscriptionStoreControlStyle.Placement.leading.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBEDA30);
}

void static ButtonsSubscriptionStoreControlStyle.Placement.trailing.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4740);
}

double static ButtonsSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static ButtonsSubscriptionStoreControlStyle.Placement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

uint64_t ButtonsSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9C990C(a1, a2);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0C88);
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  return result;
}

unint64_t sub_23BB1C1BC(uint64_t a1)
{
  result = sub_23BB1C1E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BB1C1E4()
{
  result = qword_27E1A0C90;
  if (!qword_27E1A0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C90);
  }

  return result;
}

unint64_t sub_23BB1C258()
{
  result = qword_27E1A0C98;
  if (!qword_27E1A0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonsSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23BB1C360);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BB1C3A4()
{
  result = qword_27E1A0CA0;
  if (!qword_27E1A0CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0C88);
    sub_23BB1C430();
    sub_23BB1C488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CA0);
  }

  return result;
}

unint64_t sub_23BB1C430()
{
  result = qword_27E1A0CA8;
  if (!qword_27E1A0CA8)
  {
    type metadata accessor for SubscriptionStoreButtonsView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CA8);
  }

  return result;
}

unint64_t sub_23BB1C488()
{
  result = qword_27E19BF80;
  if (!qword_27E19BF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BF80);
  }

  return result;
}

unint64_t sub_23BB1C4FC()
{
  result = qword_27E1A0CB0;
  if (!qword_27E1A0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CB0);
  }

  return result;
}

unint64_t sub_23BB1C550(uint64_t a1)
{
  result = sub_23BB1C578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BB1C578()
{
  result = qword_27E1A0CB8;
  if (!qword_27E1A0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CB8);
  }

  return result;
}

uint64_t sub_23BB1C5CC()
{
  sub_23BB1C644();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23BB1C644()
{
  result = qword_27E1A0CC0;
  if (!qword_27E1A0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CC0);
  }

  return result;
}

uint64_t sub_23BB1C698()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t sub_23BB1C724()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B99D1DC();
  *v0 = result;
  return result;
}

uint64_t sub_23BB1C778()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BABCBB4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB1C7A0()
{
  v0 = OUTLINED_FUNCTION_35_0();
  sub_23BA1569C(v0);
  OUTLINED_FUNCTION_35_0();
  return sub_23BABCBF0();
}

uint64_t sub_23BB1C7DC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB78AC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB1C804()
{
  v0 = OUTLINED_FUNCTION_35_0();
  sub_23BA1569C(v0);
  OUTLINED_FUNCTION_35_0();
  return sub_23BB78B04();
}

uint64_t sub_23BB1C840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E90);
  v7 = v6[14];
  *(a3 + v7) = swift_getKeyPath();
  v8 = v6[15];
  *(a3 + v8) = swift_getKeyPath();
  v9 = a3 + v6[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a3 + v6[13];
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;

  return sub_23BB23498(a1, a3);
}

void ProductView.init<>(_:prefersPromotionalIcon:icon:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v56 = v0;
  v3 = v2;
  v60 = v4;
  v62 = v5;
  v61 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  OUTLINED_FUNCTION_13_0(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_2();
  v55 = v13;
  OUTLINED_FUNCTION_3_2();
  v59 = v14;
  v58 = *(v15 + 64);
  MEMORY[0x28223BE20](v16);
  v57 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v54 - v19);
  v68 = v3;
  v69 = MEMORY[0x277CE1428];
  v70 = v1;
  v71 = MEMORY[0x277CE1410];
  v21 = type metadata accessor for ProductView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v23 = (v10 + v21[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  sub_23BB664D4();
  *v23 = sub_23BB1D3A0();
  v23[1] = v24;
  v25 = v10 + v21[19];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v10 + v21[20];
  v27 = swift_getKeyPath();
  LOBYTE(v68) = 0;
  v28 = swift_getKeyPath();
  v67 = 0;
  v29 = swift_getKeyPath();
  v66 = 0;
  v30 = swift_getKeyPath();
  v65 = 0;
  v31 = swift_getKeyPath();
  v64 = 0;
  v32 = v68;
  v33 = v67;
  v34 = v66;
  v35 = v65;
  *v26 = v27;
  *(v26 + 8) = v32;
  *(v26 + 16) = v28;
  *(v26 + 24) = v33;
  *(v26 + 32) = v29;
  *(v26 + 40) = v34;
  *(v26 + 48) = v30;
  *(v26 + 56) = 0;
  *(v26 + 64) = v35;
  *(v26 + 72) = v31;
  *(v26 + 80) = 0;
  *(v26 + 88) = 0;
  v36 = sub_23BBDCDB8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 16);
  v63 = v8;
  v38(v10, v8, v36);
  v68 = v3;
  v39 = v56;
  v69 = MEMORY[0x277CE1428];
  v70 = v56;
  v71 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_18_17();
  v40 = swift_storeEnumTagMultiPayload();
  v62(v40);
  v41 = *(v59 + 16);
  v42 = v57;
  v62 = v20;
  v43 = v20;
  v44 = v59;
  v41(v57, v43, v3);
  v45 = (*(v44 + 80) + 33) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v3;
  *(v46 + 24) = v39;
  v47 = v61;
  LODWORD(v60) = v61 & 1;
  *(v46 + 32) = v61;
  LOBYTE(v39) = v47;
  (*(v44 + 32))(v46 + v45, v42, v3);
  v48 = (v10 + v21[13]);
  *v48 = sub_23BB21CA4;
  v48[1] = v46;
  *(v10 + v21[16]) = 0;
  if ((v39 & 1) == 0 || (v49 = v55, sub_23BBDCD58(), v50 = sub_23BBDCD48(), v51 = 1, EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v50), sub_23B9846E8(v49, &qword_27E19C300), EnumTagSinglePayload == 1))
  {
    v51 = v3 != MEMORY[0x277CE1428];
  }

  *(v10 + v21[15]) = v51;
  *(sub_23BB1D3DC() + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = v51;

  v53 = sub_23BB1D3DC();
  (*(v37 + 8))(v63, v36);
  (*(v44 + 8))(v62, v3);
  *(v53 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = v60;

  OUTLINED_FUNCTION_9_1();
}

void ProductView.init<>(_:prefersPromotionalIcon:)()
{
  OUTLINED_FUNCTION_10_0();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2();
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80);
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_33(KeyPath);
  v10 = (v5 + v0[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  v31 = sub_23BB664D4();
  sub_23BBDBF58();
  *v10 = v32;
  v10[1] = v33;
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v11);
  v13 = v5 + v12;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  LOBYTE(v31) = 0;
  v16 = swift_getKeyPath();
  v37[0] = 0;
  v17 = swift_getKeyPath();
  v36[0] = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_17();
  *v13 = v14;
  *(v13 + 8) = v18;
  *(v13 + 9) = *v37;
  *(v13 + 12) = *&v37[3];
  *(v13 + 16) = v15;
  *(v13 + 24) = v19;
  *(v13 + 25) = *v36;
  *(v13 + 28) = *&v36[3];
  *(v13 + 32) = v16;
  *(v13 + 40) = v20;
  *(v13 + 41) = *v35;
  *(v13 + 44) = *&v35[3];
  *(v13 + 48) = v17;
  *(v13 + 56) = 0;
  *(v13 + 64) = v21;
  *(v13 + 68) = *&v34[3];
  *(v13 + 65) = *v34;
  *(v13 + 72) = v22;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  v23 = sub_23BBDCDB8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v5, v3, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CC8);
  swift_storeEnumTagMultiPayload();
  v25 = swift_allocObject();
  v26 = 0;
  *(v25 + 16) = v30;
  v27 = (v5 + v0[13]);
  *v27 = sub_23BB2351C;
  v27[1] = v25;
  *(v5 + v0[16]) = 0;
  if (v30)
  {
    sub_23BBDCD58();
    v28 = sub_23BBDCD48();
    v26 = __swift_getEnumTagSinglePayload(v29, 1, v28) != 1;
    sub_23B9846E8(v29, &qword_27E19C300);
  }

  *(v5 + v0[15]) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0);
  sub_23BBDBF68();
  *(v31 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = v26;

  sub_23BBDBF68();
  (*(v24 + 8))(v3, v23);
  *(v31 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = v30 & 1;

  OUTLINED_FUNCTION_9_1();
}

double sub_23BB1D114()
{
  v0.n128_f64[0] = sub_23BBBFB04(&v11);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0, v11, v12).n128_u64[0];
  return result;
}

double sub_23BB1D14C()
{
  v0.n128_f64[0] = sub_23BBBFB04(&v11);
  *&result = OUTLINED_FUNCTION_18_10(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0, v11, v12).n128_u64[0];
  return result;
}

uint64_t sub_23BB1D184(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 4);
  v7 = v6;

  sub_23B9C7374(&v7, v3, &qword_27E19FA80);
  return sub_23BBBFB58();
}

uint64_t sub_23BB1D1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 68);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 40);
  v17 = v11;
  if (v9 == 1)
  {

    v15 = v17;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9AD3D4(v10, v17, *(&v17 + 1), v12, v13, 0);
    result = (*(v6 + 8))(v8, v5);
    v10 = v18;
    v15 = v19;
    v12 = v20;
    v13 = v21;
  }

  *a2 = v10;
  *(a2 + 8) = v15;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_23BB1D3A0()
{
  type metadata accessor for ProductViewEventConfiguration();
  sub_23BBDBF58();
  return v1;
}

uint64_t sub_23BB1D3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0);
  sub_23BBDBF68();
  return v1;
}

uint64_t sub_23BB1D434(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 76));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

void *sub_23BB1D584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (v2 + *(a1 + 80)), sizeof(__dst));
  sub_23BA5DACC(__src);
  return memcpy(a2, __src, 0x51uLL);
}

uint64_t ProductView.init(id:icon:placeholderIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, ValueMetadata *a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  type metadata accessor for ProductView();
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v15 = (a8 + v10[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  sub_23BB664D4();
  *v15 = sub_23BB1D3A0();
  v15[1] = v16;
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v17);
  v19 = a8 + v18;
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  *v19 = v20;
  v19[8] = 0;
  *(v19 + 2) = v21;
  v19[24] = 0;
  *(v19 + 4) = v22;
  v19[40] = 0;
  *(v19 + 6) = v23;
  *(v19 + 7) = 0;
  v19[64] = 0;
  *(v19 + 9) = v24;
  *(v19 + 10) = 0;
  v19[88] = 0;
  *a8 = a1;
  a8[1] = a2;
  OUTLINED_FUNCTION_18_17();
  v25 = swift_storeEnumTagMultiPayload();
  a5(v25);
  v26 = swift_allocObject();
  *(v26 + 2) = a6;
  *(v26 + 3) = a7;
  *(v26 + 4) = a9;
  *(v26 + 5) = a10;
  *(v26 + 6) = a3;
  *(v26 + 7) = a4;
  v27 = (a8 + v10[13]);
  *v27 = sub_23BB21D2C;
  v27[1] = v26;
  *(a8 + v10[16]) = 0;
  v28 = a6 != MEMORY[0x277CE1428];
  *(a8 + v10[15]) = a6 != MEMORY[0x277CE1428];

  *(sub_23BB1D3DC() + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = a7 != &type metadata for AutomaticProductPlaceholderIcon && v28;

  v29 = sub_23BB1D3DC();

  *(v29 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 0;
}

uint64_t sub_23BB1D850@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - v11;
  sub_23BBDCD58();
  v13 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {
    sub_23B9846E8(v9, &qword_27E19C300);
    v14 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v13 - 8) + 8))(v9, v13);
  }

  return sub_23BBB10AC(v12, a1, a2, 0, 0, a4);
}

void ProductView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ValueMetadata *a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_10_0();
  v99 = v23;
  v96 = v24;
  v97 = v25;
  v95 = v26;
  v101 = v27;
  v93 = v28;
  v92 = v29;
  v31 = v30;
  v90 = a21;
  OUTLINED_FUNCTION_3_2();
  v98 = v32;
  v100 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_28_7();
  v94 = v35;
  MEMORY[0x28223BE20](v36);
  v104 = v88 - v37;
  v39 = v38;
  OUTLINED_FUNCTION_3_2();
  v103 = v40;
  v91 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_28_7();
  v105 = v43;
  MEMORY[0x28223BE20](v44);
  v102 = v88 - v45;
  v110 = v47;
  v111 = v46;
  v112 = a22;
  v113 = a23;
  v88[1] = a22;
  v88[0] = a23;
  v48 = type metadata accessor for ProductView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_33(KeyPath);
  v50 = (v31 + v48[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  sub_23BB664D4();
  *v50 = sub_23BB1D3A0();
  v50[1] = v51;
  v89 = v48;
  v52 = v31 + v48[19];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  v53 = v31 + v48[20];
  v54 = swift_getKeyPath();
  LOBYTE(v110) = 0;
  v55 = swift_getKeyPath();
  v109 = 0;
  v56 = swift_getKeyPath();
  v108 = 0;
  v57 = swift_getKeyPath();
  v107 = 0;
  v58 = swift_getKeyPath();
  v106 = 0;
  v59 = v110;
  v60 = v109;
  v61 = v108;
  v62 = v107;
  *v53 = v54;
  v53[8] = v59;
  *(v53 + 2) = v55;
  v53[24] = v60;
  *(v53 + 4) = v56;
  v53[40] = v61;
  *(v53 + 6) = v57;
  *(v53 + 7) = 0;
  v53[64] = v62;
  *(v53 + 9) = v58;
  *(v53 + 10) = 0;
  v53[88] = 0;
  v63 = v93;
  *v31 = v92;
  v31[1] = v63;
  v64 = v39;
  v110 = v39;
  v65 = v90;
  v111 = v90;
  v112 = a22;
  v113 = a23;
  OUTLINED_FUNCTION_18_17();
  v66 = swift_storeEnumTagMultiPayload();
  v67 = v102;
  v68 = v96(v66);
  v69 = v104;
  v97(v68);
  v70 = v103;
  v71 = v64;
  (*(v103 + 16))(v105, v67, v64);
  v72 = v98;
  v99 = *(v98 + 16);
  v73 = v94;
  v74 = v65;
  v99(v94, v69, v65);
  v75 = (*(v70 + 80) + 49) & ~*(v70 + 80);
  v76 = (v91 + v75 + *(v72 + 80)) & ~*(v72 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v71;
  *(v77 + 24) = v74;
  OUTLINED_FUNCTION_3_40();
  *(v78 + 32) = v80;
  *(v78 + 40) = v79;
  LOBYTE(v71) = v101;
  *(v78 + 48) = v101;
  v81 = *(v70 + 32);
  v83 = v82;
  v81(v78 + v75, v105);
  (*(v72 + 32))(v77 + v76, v73, v74);
  v84 = v89;
  v85 = (v31 + v89[13]);
  *v85 = sub_23BB21E30;
  v85[1] = v77;
  v86 = v104;
  v99(v31 + v84[14], v104, v74);
  *(v31 + v84[16]) = 0;
  LOBYTE(v77) = v71 | (v83 != MEMORY[0x277CE1428]);
  *(v31 + v84[15]) = v77;
  *(sub_23BB1D3DC() + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = (v74 != &type metadata for AutomaticProductPlaceholderIcon) & v77;

  v87 = sub_23BB1D3DC();
  (*(v72 + 8))(v86, v74);
  (*(v103 + 8))(v102, v83);
  *(v87 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = v71;

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1DF14@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v29 = a7;
  v30 = a6;
  v28 = a1;
  v27 = a8;
  v12 = sub_23BBDD648();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_23BBDD648();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v27 - v22;
  sub_23BBDCD58();
  v24 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
  {
    sub_23B9846E8(v20, &qword_27E19C300);
    v25 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v24 - 8) + 8))(v20, v24);
  }

  (*(*(a4 - 8) + 16))(v17, a2, a4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a4);
  (*(*(a5 - 8) + 16))(v14, a3, a5);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a5);
  return sub_23BBB1200(v28 & 1, v23, v17, v14, 0, 0, a4, a5, v27, v30, v29);
}

void ProductView.init<>(id:prefersPromotionalIcon:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v17) = a3;
  v14 = sub_23B9AD84C();
  ProductView.init(id:prefersPromotionalIcon:icon:placeholderIcon:)(a1, a2, a3, a4, a5, sub_23BA35CB0, v16, a6, &type metadata for AutomaticProductPlaceholderIcon, a7, v14, v15, v16[0], v16[1], v17, v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t ProductView.init<>(id:prefersPromotionalIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0A80);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v8 = (a4 + v6[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  v21 = sub_23BB664D4();
  sub_23BBDBF58();
  *v8 = v22;
  v8[1] = v23;
  v9 = a4 + v6[19];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a4 + v6[20];
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  LOBYTE(v21) = 0;
  v13 = swift_getKeyPath();
  v27[0] = 0;
  v14 = swift_getKeyPath();
  v26[0] = 0;
  v15 = swift_getKeyPath();
  v25[0] = 0;
  *v10 = v11;
  v10[8] = 0;
  *(v10 + 9) = *v27;
  *(v10 + 3) = *&v27[3];
  *(v10 + 2) = v12;
  v10[24] = 0;
  *(v10 + 25) = *v26;
  *(v10 + 7) = *&v26[3];
  *(v10 + 4) = v13;
  v10[40] = 0;
  *(v10 + 41) = *v25;
  *(v10 + 11) = *&v25[3];
  *(v10 + 6) = v14;
  *(v10 + 7) = 0;
  v10[64] = 0;
  *(v10 + 17) = *&v24[3];
  *(v10 + 65) = *v24;
  *(v10 + 9) = v15;
  *(v10 + 10) = 0;
  v10[88] = 0;
  *a4 = a1;
  a4[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CC8);
  swift_storeEnumTagMultiPayload();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = (a4 + v6[13]);
  *v17 = sub_23BB21EC8;
  v17[1] = v16;
  *(a4 + v6[15]) = a3;
  *(a4 + v6[16]) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0);
  sub_23BBDBF68();
  *(v21 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = a3;

  sub_23BBDBF68();
  *(v21 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = a3;
}

uint64_t ProductView.init<>(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ProductView();
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_10(KeyPath);
  v12 = (a6 + v6[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  sub_23BB664D4();
  *v12 = sub_23BB1D3A0();
  v12[1] = v13;
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v14);
  v16 = a6 + v15;
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  *v16 = v17;
  *(v16 + 8) = 0;
  *(v16 + 16) = v18;
  *(v16 + 24) = 0;
  *(v16 + 32) = v19;
  *(v16 + 40) = 0;
  *(v16 + 48) = v20;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = v21;
  *(v16 + 80) = 0;
  *(v16 + 88) = 0;
  v22 = sub_23BBDCDB8();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a6, a1, v22);
  v24 = MEMORY[0x277CE1428];
  OUTLINED_FUNCTION_18_17();
  swift_storeEnumTagMultiPayload();
  v25 = swift_allocObject();
  *(v25 + 2) = a4;
  *(v25 + 3) = a5;
  *(v25 + 4) = a2;
  *(v25 + 5) = a3;
  v26 = (a6 + v6[13]);
  *v26 = sub_23BB21F1C;
  v26[1] = v25;
  *(a6 + v6[16]) = 0;
  LOBYTE(v24) = a4 != v24;
  *(a6 + v6[15]) = v24;

  *(sub_23BB1D3DC() + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = v24;

  v27 = sub_23BB1D3DC();

  (*(v23 + 8))(a1, v22);
  *(v27 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 0;
}

uint64_t sub_23BB1E7FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  sub_23BBDCD58();
  v12 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_23B9846E8(v8, &qword_27E19C300);
    v13 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v12 - 8) + 8))(v8, v12);
  }

  return sub_23BBB10AC(v11, a1, a2, 0, 0, a3);
}

uint64_t sub_23BB1E9D0@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_23BBDD648();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22[-v17];
  sub_23BBDCD58();
  v19 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_23B9846E8(v15, &qword_27E19C300);
    v20 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v19 - 8) + 8))(v15, v19);
  }

  (*(*(a3 - 8) + 16))(v12, a2, a3);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
  v23 = 1;
  return sub_23BBB1200(a1 & 1, v18, v12, &v23, 0, 0, a3, MEMORY[0x277CE1428], a5, a4, MEMORY[0x277CE1410]);
}

uint64_t sub_23BB1EC34@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_23BBDCD58();
  v12 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_23B9846E8(v7, &qword_27E19C300);
    v13 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  }

  else
  {
    sub_23BBDCD38();
    OUTLINED_FUNCTION_1_4();
    (*(v14 + 8))(v7, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C320);
  v16 = v15[14];
  *(a2 + v16) = swift_getKeyPath();
  v17 = v15[15];
  *(a2 + v17) = swift_getKeyPath();
  v18 = a2 + v15[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a2 + v15[13];
  if (a1)
  {
    *v19 = 257;
    v20 = 1;
  }

  else
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    v20 = -1;
  }

  *(v19 + 16) = v20;
  return sub_23BB23498(v11, a2);
}

void ProductView.init<>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v25 = v1;
  v3 = v2;
  v4 = type metadata accessor for ProductViewStyleConfiguration();
  v5 = v4 - 8;
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_7();
  v24 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD8);
  OUTLINED_FUNCTION_26_10();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_33(KeyPath);
  v8 = (v3 + v0[18]);
  type metadata accessor for ProductViewEventConfiguration();
  OUTLINED_FUNCTION_23_10();
  v27 = sub_23BB664D4();
  sub_23BBDBF58();
  *v8 = v28;
  v8[1] = v29;
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_12_26(v9);
  v11 = v3 + v10;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  LOBYTE(v27) = 0;
  v14 = swift_getKeyPath();
  v33[0] = 0;
  v15 = swift_getKeyPath();
  v32[0] = 0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_17();
  *v11 = v12;
  *(v11 + 8) = v16;
  *(v11 + 9) = *v33;
  *(v11 + 12) = *&v33[3];
  *(v11 + 16) = v13;
  *(v11 + 24) = v17;
  *(v11 + 25) = *v32;
  *(v11 + 28) = *&v32[3];
  *(v11 + 32) = v14;
  *(v11 + 40) = v18;
  *(v11 + 41) = *v31;
  *(v11 + 44) = *&v31[3];
  *(v11 + 48) = v15;
  *(v11 + 56) = 0;
  *(v11 + 64) = v19;
  *(v11 + 68) = *&v30[3];
  *(v11 + 65) = *v30;
  *(v11 + 72) = v20;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  sub_23BA0EFA4(v25, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CE0);
  swift_storeEnumTagMultiPayload();
  sub_23BA0EFA4(v25, v24);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_23BB22040(v24, v22 + v21);
  v23 = (v3 + v0[13]);
  *v23 = sub_23BB220A4;
  v23[1] = v22;
  *(v3 + v0[14]) = *(v25 + *(v5 + 36));
  *(v3 + v0[16]) = 0;
  *(v3 + v0[15]) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CD0);
  sub_23BBDBF68();
  *(v27 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_usesCustomPlaceholder) = 1;

  sub_23BBDBF68();
  sub_23BB23418(v25, type metadata accessor for ProductViewStyleConfiguration);
  *(v27 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_prefersPromotionalIcon) = 0;

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1F15C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_23BBDCD58();
  v10 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_23B9846E8(v6, &qword_27E19C300);
    v11 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v10 - 8) + 8))(v6, v10);
  }

  v12 = type metadata accessor for ProductViewStyleConfiguration();
  sub_23BB1C840(v9, *(a1 + *(v12 + 28)), a2);
}

void ProductView.body.getter()
{
  OUTLINED_FUNCTION_10_0();
  v106 = v0;
  v2 = v1;
  v103 = v3;
  OUTLINED_FUNCTION_3_2();
  v102 = v4;
  v108 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_13_3(v7);
  v100 = sub_23BBDB148();
  OUTLINED_FUNCTION_3_2();
  v99 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_3(v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = v2;
  v11 = v2[3];
  v109 = v2[2];
  v12 = v2[5];
  v111 = v2[4];
  v130 = v109;
  v131 = v11;
  v132 = v111;
  v133 = v12;
  v13 = v12;
  v110 = v12;
  type metadata accessor for PromotionalIconLoadingView();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_31_6();
  type metadata accessor for StaticProductView();
  v130 = v2;
  v131 = v11;
  v104 = v11;
  v132 = v0;
  v133 = v13;
  type metadata accessor for DynamicProductView();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0CE8);
  OUTLINED_FUNCTION_4();
  v89[1] = sub_23BBDACE8();
  v14 = sub_23BBDBE28();
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = v89 - v18;
  OUTLINED_FUNCTION_6_29();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_33();
  v21 = swift_getWitnessTable();
  v128 = WitnessTable;
  v129 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23BB22120();
  v126 = v22;
  v127 = v23;
  v125 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v89[0] = swift_getWitnessTable();
  v130 = v14;
  v131 = v89[0];
  v89[2] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v89[3] = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = v89 - v27;
  sub_23BBDB2B8();
  v29 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v89[5] = v30;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = v89 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D38);
  v90 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v93 = v34;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v36);
  v92 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v96 = v37;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v39);
  v95 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v97 = v40;
  MEMORY[0x28223BE20](v41);
  v91 = v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_13_3(v89 - v44);
  v112 = v109;
  v113 = v11;
  OUTLINED_FUNCTION_3_40();
  v114 = v46;
  v115 = v45;
  v47 = v106;
  v116 = v106;
  sub_23BBDBE18();
  v48 = v98;
  sub_23BBDB138();
  v49 = v89[0];
  sub_23BBDB968();
  OUTLINED_FUNCTION_13_16();
  v50(v48, v100);
  (*(v16 + 8))(v19, v14);
  swift_getKeyPath();
  v130 = v14;
  v131 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9968C4();

  OUTLINED_FUNCTION_13_16();
  v52(v28, OpaqueTypeMetadata2);
  v53 = v101;
  sub_23BB1D3DC();
  OUTLINED_FUNCTION_8_36();
  v56 = sub_23BB223BC(v54, v55);
  v123 = OpaqueTypeConformance2;
  v124 = v56;
  v99 = MEMORY[0x277CDFAD8];
  v57 = swift_getWitnessTable();
  sub_23BB65B78();

  OUTLINED_FUNCTION_13_16();
  v58(v33, v29);
  v59 = v102;
  v100 = *(v102 + 16);
  v60 = v107;
  v100(v107, v47, v53);
  v61 = (*(v59 + 80) + 48) & ~*(v59 + 80);
  v62 = OUTLINED_FUNCTION_32_5();
  v63 = v104;
  *(v62 + 16) = v109;
  *(v62 + 24) = v63;
  OUTLINED_FUNCTION_3_40();
  *(v64 + 32) = v66;
  *(v64 + 40) = v65;
  v102 = *(v59 + 32);
  (v102)(v64 + v61, v60, v53);
  OUTLINED_FUNCTION_1_15();
  v68 = sub_23B97B518(v67, &qword_27E1A0D38);
  v121 = v57;
  v122 = v68;
  v69 = v90;
  v70 = swift_getWitnessTable();
  v71 = v89[4];
  v72 = v105;
  sub_23BBDBBF8();

  OUTLINED_FUNCTION_13_16();
  v73(v72, v69);
  v74 = v107;
  v100(v107, v106, v53);
  v75 = OUTLINED_FUNCTION_32_5();
  v76 = v104;
  *(v75 + 16) = v109;
  *(v75 + 24) = v76;
  OUTLINED_FUNCTION_3_40();
  *(v77 + 32) = v79;
  *(v77 + 40) = v78;
  (v102)(v77 + v61, v74, v53);
  v80 = MEMORY[0x277CE0790];
  v119 = v70;
  v120 = MEMORY[0x277CE0790];
  v81 = v92;
  v82 = swift_getWitnessTable();
  v83 = v91;
  sub_23BBDB778();

  OUTLINED_FUNCTION_13_16();
  v84(v71, v81);
  v117 = v82;
  v118 = v80;
  v85 = v95;
  v86 = swift_getWitnessTable();
  v87 = v94;
  sub_23B9D2D88(v83, v85, v86);
  v88 = *(v97 + 8);
  v88(v83, v85);
  sub_23B9D2D88(v87, v85, v86);
  v88(v87, v85);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB1FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v163 = a4;
  v164 = a1;
  v174 = a6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1990F8);
  MEMORY[0x28223BE20](v143);
  v129 = (&v129 - v10);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EAA0);
  MEMORY[0x28223BE20](v137);
  v130 = (&v129 - v11);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E78);
  MEMORY[0x28223BE20](v139);
  v142 = &v129 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E80);
  MEMORY[0x28223BE20](v135);
  v136 = &v129 - v13;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D10);
  MEMORY[0x28223BE20](v140);
  v138 = &v129 - v14;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D20);
  MEMORY[0x28223BE20](v134);
  v133 = (&v129 - v15);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0E88);
  MEMORY[0x28223BE20](v152);
  v154 = (&v129 - v16);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0D00);
  MEMORY[0x28223BE20](v153);
  v141 = &v129 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0CE8);
  MEMORY[0x28223BE20](v18);
  v155 = &v129 - v19;
  v132 = type metadata accessor for ProductViewStyleConfiguration();
  MEMORY[0x28223BE20](v132);
  v131 = (&v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v156 = &v129 - v22;
  v147 = *(a3 - 8);
  MEMORY[0x28223BE20](v23);
  v148 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = a2;
  v191 = a3;
  v192 = a4;
  v193 = a5;
  v25 = type metadata accessor for PromotionalIconLoadingView();
  WitnessTable = swift_getWitnessTable();
  v190 = v25;
  v191 = a3;
  v192 = WitnessTable;
  v193 = a5;
  v27 = type metadata accessor for DynamicProductView();
  v151 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v150 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v149 = &v129 - v30;
  v160 = WitnessTable;
  v31 = type metadata accessor for StaticProductView();
  v172 = v27;
  v32 = sub_23BBDACE8();
  v162 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v161 = &v129 - v33;
  MEMORY[0x28223BE20](v34);
  v144 = &v129 - v35;
  v170 = v31;
  v146 = *(v31 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v145 = &v129 - v40;
  v159 = sub_23BBDCDB8();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v42 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v157 = &v129 - v44;
  v190 = a2;
  v191 = a3;
  v165 = a3;
  v45 = v163;
  v192 = v163;
  v193 = a5;
  v166 = a5;
  v46 = type metadata accessor for ProductView.Storage();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = (&v129 - v48);
  v171 = v32;
  v173 = v18;
  v169 = sub_23BBDACE8();
  v50 = *(v169 - 8);
  v51 = MEMORY[0x28223BE20](v169);
  v168 = &v129 - v52;
  v53 = v164;
  (*(v47 + 16))(v49, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v167 = v50;
  if (!EnumCaseMultiPayload)
  {
    v69 = *v49;
    v159 = v49[1];
    v70 = v165;
    v190 = a2;
    v191 = v165;
    v192 = v45;
    v193 = v166;
    v71 = type metadata accessor for ProductView();
    v72 = (v53 + v71[13]);
    v73 = *v72;
    v74 = v72[1];
    v75 = v148;
    (*(v147 + 16))(v148, v53 + v71[14], v70);
    v76 = v71[16];
    LOBYTE(v71) = *(v53 + v71[15]);
    v77 = *(v53 + v76);

    v128 = v70;
    v78 = v150;
    sub_23B9AD038(v69, v159, v73, v74, v75, v71, v77, v150, v128);
    v79 = v172;
    v80 = swift_getWitnessTable();
    v81 = v149;
    sub_23B9D2D88(v78, v79, v80);
    v82 = *(v151 + 8);
    v82(v78, v79);
    sub_23B9D2D88(v81, v79, v80);
    v83 = swift_getWitnessTable();
    v84 = v161;
    sub_23BA82E14();
    v177 = v83;
    v178 = v80;
    v85 = v171;
    swift_getWitnessTable();
    sub_23BB22120();
    v68 = v168;
    sub_23BA82D64();
    (*(v162 + 8))(v84, v85);
    v82(v78, v79);
    v82(v81, v79);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v87 = v156;
    sub_23BB22040(v49, v156);
    v190 = a2;
    v191 = v165;
    v192 = v45;
    v193 = v166;
    v88 = type metadata accessor for ProductView();
    sub_23BB1D1F0(v88, v187);
    sub_23BB6BC9C(v189);

    v196 = v188;
    sub_23B9846E8(&v196, &qword_27E19FA80);
    if (v189[0])
    {
      v89 = v189[4];
      v90 = (v189[0])(v87);
      *v154 = v90;
      swift_storeEnumTagMultiPayload();
      sub_23BB221AC();
      swift_retain_n();
      v91 = v155;
      sub_23BBDACD8();

      v190 = v89;
      sub_23B9846E8(&v190, &qword_27E19FA80);

      v86 = v169;
      v68 = v168;
LABEL_14:
      v109 = swift_getWitnessTable();
      v110 = swift_getWitnessTable();
      v185 = v109;
      v186 = v110;
      swift_getWitnessTable();
      sub_23BB22120();
      sub_23BA82E14();
      sub_23B9846E8(v91, &qword_27E1A0CE8);
      sub_23BB23418(v87, type metadata accessor for ProductViewStyleConfiguration);
      goto LABEL_15;
    }

    sub_23BB1D1F0(v88, &v190);

    v195 = v194;
    sub_23B9846E8(&v195, &qword_27E19FA80);
    v92 = swift_dynamicCastMetatype();
    v91 = v155;
    if (v92)
    {
      KeyPath = swift_getKeyPath();
      v180 = 0;
      v93 = v133;
      CompactProductViewStyle.makeBody(configuration:)(v87, v133);
      sub_23B97B5C0(KeyPath, v180);
      sub_23B9C7374(v93, v136, &qword_27E1A0D20);
      swift_storeEnumTagMultiPayload();
      sub_23BB222C4();
      sub_23BAA9A74();
      v94 = v138;
      sub_23BBDACD8();
      sub_23B9C7374(v94, v142, &qword_27E1A0D10);
      swift_storeEnumTagMultiPayload();
      sub_23BB22238();
      sub_23B9AAACC();
      v95 = v141;
      sub_23BBDACD8();
      sub_23B9846E8(v94, &qword_27E1A0D10);
      v96 = v93;
      v97 = &qword_27E1A0D20;
    }

    else
    {
      v98 = swift_dynamicCastMetatype();
      v99 = v131;
      sub_23BA0EFA4(v87, v131);
      v100 = v141;
      if (v98)
      {
        v101 = v130;
        sub_23B998028(v99, 0, v130);
        v102 = *(v87 + *(v132 + 28));
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA98);
        *(v101 + v103[9]) = v102;
        v104 = v103[10];
        *(v101 + v104) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
        swift_storeEnumTagMultiPayload();
        v105 = v101 + v103[11];
        *v105 = swift_getKeyPath();
        v105[8] = 0;
        v106 = v101 + *(v137 + 36);
        sub_23BA0EFA4(v87, v106);
        v107 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier() + 20);
        *(v106 + v107) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_23B9C7374(v101, v136, &qword_27E19EAA0);
        swift_storeEnumTagMultiPayload();
        sub_23BB222C4();
        sub_23BAA9A74();

        v108 = v138;
        sub_23BBDACD8();
        sub_23B9C7374(v108, v142, &qword_27E1A0D10);
        swift_storeEnumTagMultiPayload();
        sub_23BB22238();
        sub_23B9AAACC();
        sub_23BBDACD8();
        sub_23B9846E8(v108, &qword_27E1A0D10);
        sub_23B9846E8(v101, &qword_27E19EAA0);
        v95 = v100;
        goto LABEL_13;
      }

      v117 = v129;
      sub_23B998028(v99, 0, v129);
      v166 = *(v87 + *(v132 + 28));
      v118 = v166;
      v119 = swift_getKeyPath();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199108);
      *(v117 + v120[9]) = v118;
      v121 = v120[10];
      *(v117 + v121) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
      swift_storeEnumTagMultiPayload();
      v122 = v120[11];
      *(v117 + v122) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
      swift_storeEnumTagMultiPayload();
      v123 = v117 + v120[12];
      *v123 = v119;
      v123[8] = 0;
      v124 = v117 + v120[13];
      *v124 = swift_getKeyPath();
      v124[8] = 0;
      v125 = v117 + v120[14];
      *v125 = swift_getKeyPath();
      v125[8] = 0;
      v126 = v117 + *(v143 + 36);
      sub_23BA0EFA4(v87, v126);
      v127 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier() + 20);
      *(v126 + v127) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v95 = v100;
      sub_23B9C7374(v117, v142, &qword_27E1990F8);
      swift_storeEnumTagMultiPayload();
      sub_23BB22238();
      sub_23B9AAACC();

      sub_23BBDACD8();
      v96 = v117;
      v97 = &qword_27E1990F8;
    }

    sub_23B9846E8(v96, v97);
LABEL_13:
    v68 = v168;
    sub_23B9C7374(v95, v154, &qword_27E1A0D00);
    swift_storeEnumTagMultiPayload();
    sub_23BB221AC();
    sub_23BBDACD8();
    sub_23B9846E8(v95, &qword_27E1A0D00);
    v86 = v169;
    v87 = v156;
    goto LABEL_14;
  }

  v55 = v158;
  v56 = v157;
  v57 = v49;
  v58 = v159;
  (*(v158 + 32))(v157, v57, v159);
  (*(v55 + 16))(v42, v56, v58);
  v190 = a2;
  v191 = v165;
  v192 = v45;
  v193 = v166;
  v59 = type metadata accessor for ProductView();
  v60 = v144;
  (*(v53 + *(v59 + 52)))(v56);
  sub_23BBB73E0(v60, *(v53 + *(v59 + 60)), v25, v38);
  v61 = v170;
  v62 = swift_getWitnessTable();
  v63 = v145;
  sub_23B9D2D88(v38, v61, v62);
  v64 = *(v146 + 8);
  v64(v38, v61);
  sub_23B9D2D88(v63, v61, v62);
  v65 = swift_getWitnessTable();
  v66 = v161;
  sub_23BA82D64();
  v175 = v62;
  v176 = v65;
  v67 = v171;
  swift_getWitnessTable();
  sub_23BB22120();
  v68 = v168;
  sub_23BA82D64();
  (*(v162 + 8))(v66, v67);
  v64(v38, v61);
  v64(v63, v61);
  (*(v158 + 8))(v157, v159);
LABEL_5:
  v86 = v169;
LABEL_15:
  v111 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  v183 = v111;
  v184 = v112;
  v113 = swift_getWitnessTable();
  v114 = sub_23BB22120();
  v181 = v113;
  v182 = v114;
  v115 = swift_getWitnessTable();
  sub_23B9D2D88(v68, v86, v115);
  return (*(v167 + 8))(v68, v86);
}

uint64_t sub_23BB21494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a2;
  v19[1] = a3;
  v20 = a4;
  v21 = a5;
  v10 = type metadata accessor for ProductView();
  sub_23BB1D3DC();
  sub_23BB1D1F0(v10, v17);
  sub_23BB1D584(v10, v19);
  v11 = *(a1 + *(v10 + 60));
  v12 = sub_23BB1D434(v10);
  sub_23BB65BEC(a1, v17, v19, v11, v12, a2, a3, a4, a5);

  sub_23B979500(v19[0]);
  sub_23B979500(v20);
  sub_23B979500(v22);
  sub_23B979500(v23);
  v27 = v24;
  v28 = v25;
  sub_23B9846E8(&v27, &qword_27E19B400);

  v26 = v18;
  sub_23B9846E8(&v26, &qword_27E19FA80);

  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  v14 = __swift_project_value_buffer(v13, qword_27E1BFC88);
  v15 = sub_23BBDD5B8();
  return sub_23B9D395C(1, v15, v14);
}

uint64_t sub_23BB21640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v11 = a5;
  v5 = type metadata accessor for ProductView();
  sub_23BB1D3DC();
  sub_23BB1D1F0(v5, v7);
  sub_23BB1D584(v5, v9);
  sub_23BB65F94(v7, v9);
  sub_23B979500(v9[0]);
  sub_23B979500(v10);
  sub_23B979500(v12);
  sub_23B979500(v13);
  v17 = v14;
  v18 = v15;
  sub_23B9846E8(&v17, &qword_27E19B400);

  v16 = v8;
  sub_23B9846E8(&v16, &qword_27E19FA80);

  sub_23BB1D3DC();
  sub_23BB66084();
}

uint64_t sub_23BB21760@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDAA88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseIconFrameRoundedSquare(0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *v12 = 0;
    v12[8] = 1;
    v13 = *(v9 + 20);
    (*(v5 + 104))(&v12[v13], *MEMORY[0x277CE0118], v4, v10);
    (*(v5 + 16))(v7, &v12[v13], v4);
    sub_23BBDB5A8();
    v18 = v20;
    v19 = v21;
    v14 = v22;
    result = sub_23BB23418(v12, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);
    v17 = v18;
    v16 = v19;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0118], v4, v10);
    result = sub_23BBDB5A8();
    v16 = v21;
    v17 = v20;
    v14 = v22;
  }

  *a2 = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = v14;
  return result;
}

double sub_23BB21998@<D0>(uint64_t a1@<X8>)
{
  sub_23BB21760(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_23BB219E8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

uint64_t sub_23BB21A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB233C4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BB21AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB233C4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BB21B24(uint64_t a1)
{
  v2 = sub_23BB233C4();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_23BB21B74()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B99D1DC();
  *v0 = result;
  return result;
}

uint64_t sub_23BB21BB8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BABCBB4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB21BE4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB78AC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23BB21C28()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BB21CF4()
{

  return swift_deallocObject();
}

uint64_t sub_23BB21D3C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1_4();
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BB21EE4()
{

  return swift_deallocObject();
}

uint64_t sub_23BB21F28()
{
  type metadata accessor for ProductViewStyleConfiguration();
  OUTLINED_FUNCTION_19_0();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  if (*v3)
  {
  }

  v4 = *(v0 + 24);
  type metadata accessor for Product.TaskState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v6 + 8))(&v3[v4]);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BB22040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductViewStyleConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB220A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductViewStyleConfiguration();
  OUTLINED_FUNCTION_13_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23BB1F15C(v5, a1);
}

unint64_t sub_23BB22120()
{
  result = qword_27E1A0CF0;
  if (!qword_27E1A0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0CE8);
    sub_23BB221AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CF0);
  }

  return result;
}

unint64_t sub_23BB221AC()
{
  result = qword_27E1A0CF8;
  if (!qword_27E1A0CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D00);
    sub_23BB22238();
    sub_23B9AAACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0CF8);
  }

  return result;
}

unint64_t sub_23BB22238()
{
  result = qword_27E1A0D08;
  if (!qword_27E1A0D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D10);
    sub_23BB222C4();
    sub_23BAA9A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0D08);
  }

  return result;
}

unint64_t sub_23BB222C4()
{
  result = qword_27E1A0D18;
  if (!qword_27E1A0D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D20);
    sub_23B97B518(&qword_27E1A0D28, &qword_27E1A0D30);
    sub_23BB223BC(qword_27E199110, type metadata accessor for ConfigureProductViewEnvironmentViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0D18);
  }

  return result;
}

uint64_t sub_23BB223BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_46Tm()
{
  v2 = *(v1 + 24);
  type metadata accessor for ProductView();
  OUTLINED_FUNCTION_19_0();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (v1 + v4);
  OUTLINED_FUNCTION_18_17();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      if (*v5)
      {
      }

      v8 = *(type metadata accessor for ProductViewStyleConfiguration() + 24);
      type metadata accessor for Product.TaskState(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 == 1)
      {
        sub_23BBDCDB8();
        OUTLINED_FUNCTION_12_1();
        (*(v10 + 8))(&v5[v8]);
      }

      else if (!v9)
      {
      }

      break;
    case 1:
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v7 + 8))(v1 + v4);
      break;
    case 0:

      break;
  }

  (*(*(v2 - 8) + 8))(&v5[v0[14]], v2);
  v11 = &v5[v0[17]];
  sub_23B9AD3D4(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 4), v11[40]);

  j__swift_release(*&v5[v0[19]], v5[v0[19] + 8]);
  v12 = &v5[v0[20]];
  j__swift_release(*v12, v12[8]);
  j__swift_release(*(v12 + 2), v12[24]);
  j__swift_release(*(v12 + 4), v12[40]);
  sub_23BA15630(*(v12 + 6), *(v12 + 7), v12[64]);
  sub_23BA15630(*(v12 + 9), *(v12 + 10), v12[88]);
  return swift_deallocObject();
}

uint64_t sub_23BB226AC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for ProductView();
  OUTLINED_FUNCTION_13_0(v6);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5);
}

void sub_23BB227B8()
{
  type metadata accessor for ProductView.Storage();
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_23BB0CC9C();
        if (v3 <= 0x3F)
        {
          sub_23BB22E10();
          if (v4 <= 0x3F)
          {
            sub_23BB0CD50();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB228DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCDB8() - 8);
  v7 = *(v6 + 64);
  v8 = ~(*(v6 + 80) & 0xF8u) & ((*(v6 + 80) & 0xF8) + 24);
  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(a3 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = ((v9 + v8 + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v7 <= v14)
  {
    v7 = v14;
  }

  v15 = 16;
  if (v7 > 0x10)
  {
    v15 = v7;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((((v17 + ((v16 + (v15 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v16) + 57) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
    if (v18 <= 3)
    {
      v19 = ((a2 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v18];
        if (!a1[v18])
        {
          break;
        }

        goto LABEL_29;
      case 2:
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_29;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB22B28);
      case 4:
        v22 = *&a1[v18];
        if (!v22)
        {
          break;
        }

LABEL_29:
        v24 = v18 > 3;
        if (v18 <= 3)
        {
          v25 = (v22 - 1) << (8 * v18);
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }

        return v13 + (v28 | v25) + 1;
      default:
        break;
    }
  }

  v26 = (&a1[v15 + 8] & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v26 + v16 + 16) & ~v16, v12, v10);
  }

  else
  {
    v27 = *v26;
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_23BB22B3C(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCDB8() - 8);
  v9 = *(v8 + 64);
  v10 = ~(*(v8 + 80) & 0xF8u) & ((*(v8 + 80) & 0xF8) + 24);
  if (v9 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a4 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = ((v11 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v9 > v16)
  {
    v16 = v9;
  }

  v17 = 16;
  if (v16 > 0x10)
  {
    v17 = v16;
  }

  v18 = *(v13 + 80);
  v19 = ((((*(v13 + 64) + ((v18 + (v17 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v18) + 57) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 89;
  if (v15 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v15 < a2)
  {
    v23 = ~v15 + a2;
    bzero(a1, v19);
    if (v19 <= 3)
    {
      v24 = (v23 >> 8) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v19 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v24;
        return;
      case 2:
        *(a1 + v19) = v24;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v19) = v24;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x23BB22DE8);
    case 4:
      *(a1 + v19) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (a2)
      {
LABEL_38:
        v25 = ((a1 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v25 + v18 + 16) & ~v18, a2, v14, v12);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
            v25[1] = 0;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *v25 = v26;
        }
      }

      return;
  }
}

void sub_23BB22E10()
{
  if (!qword_27E1A0DC8)
  {
    type metadata accessor for ProductViewEventConfiguration();
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A0DC8);
    }
  }
}

uint64_t sub_23BB22E78()
{
  type metadata accessor for PromotionalIconLoadingView();
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_31_6();
  type metadata accessor for StaticProductView();
  type metadata accessor for DynamicProductView();
  OUTLINED_FUNCTION_31_6();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0CE8);
  OUTLINED_FUNCTION_4();
  sub_23BBDACE8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_6_29();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_33();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BB22120();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_31_6();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0D38);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_36();
  sub_23BB223BC(v0, v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v2, &qword_27E1A0D38);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23BB2313C()
{
  result = qword_27E1A0DD0[0];
  if (!qword_27E1A0DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A0DD0);
  }

  return result;
}

_BYTE *sub_23BB23198(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x23BB23264);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BB2329C()
{
  result = sub_23BA3A488();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDCDB8();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ProductViewStyleConfiguration();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23BB23328()
{
  result = qword_27E1A0E58;
  if (!qword_27E1A0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0E58);
  }

  return result;
}

unint64_t sub_23BB233C4()
{
  result = qword_27E1A0E70;
  if (!qword_27E1A0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0E70);
  }

  return result;
}

uint64_t sub_23BB23418(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB23498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_4_33(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_26(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_5()
{

  return swift_allocObject();
}

uint64_t ProductIconPhase.promotionalIcon.getter()
{
  if (*v0 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t ProductIconPhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

unint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI16ProductIconPhaseO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_23BB2370C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_23BB23760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_23BB237C0(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_23BB23808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_23BB238B4@<X0>(uint64_t a1@<X8>)
{
  sub_23BA160B0(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0EC0);
  if (swift_dynamicCast())
  {
    sub_23B98473C(&v4, &v6);
  }

  else
  {
    v7 = MEMORY[0x277CE14A8];
    v8 = sub_23BB23FFC();
  }

  return sub_23B98473C(&v6, a1);
}

uint64_t sub_23BB23960@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_23BBDA318();
}

void sub_23BB23A14()
{
  v1 = OUTLINED_FUNCTION_2_41();
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));
  OUTLINED_FUNCTION_1_51();
  v2 = sub_23BBDBEC8();
  OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v10, v12, v13);
}

uint64_t sub_23BB23A70()
{
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_0_48();
  return sub_23BBDBEB8();
}

void sub_23BB23ABC()
{
  v1 = OUTLINED_FUNCTION_2_41();
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));
  OUTLINED_FUNCTION_1_51();
  v2 = sub_23BBDBEC8();
  OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v10, v12, v13);
}

uint64_t sub_23BB23B18()
{
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_0_48();
  return sub_23BBDBEB8();
}

double sub_23BB23B68@<D0>(uint64_t a1@<X8>)
{
  sub_23BB23ABC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_23BB23BC4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B988098;
}

uint64_t sub_23BB23C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB241A0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BB23C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB241A0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BB23D00(uint64_t a1)
{
  v2 = sub_23BB241A0();

  return MEMORY[0x282133738](a1, v2);
}

double sub_23BB23D4C@<D0>(uint64_t a1@<X8>)
{
  sub_23BB23A14();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_23BB23DC4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97DA84;
}

uint64_t sub_23BB23E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B984600();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BB23E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B984600();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BB23F00(uint64_t a1)
{
  v2 = sub_23B984600();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_23BB23F50()
{
  result = qword_27E1A0EA8;
  if (!qword_27E1A0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EA8);
  }

  return result;
}

unint64_t sub_23BB23FA8()
{
  result = qword_27E1A0EB0;
  if (!qword_27E1A0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EB0);
  }

  return result;
}

unint64_t sub_23BB23FFC()
{
  result = qword_27E1A0EC8;
  if (!qword_27E1A0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EC8);
  }

  return result;
}

uint64_t sub_23BB24098(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BB240F0()
{
  result = qword_27E1A0EE0;
  if (!qword_27E1A0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EE0);
  }

  return result;
}

unint64_t sub_23BB24148()
{
  result = qword_27E1A0EE8;
  if (!qword_27E1A0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EE8);
  }

  return result;
}

unint64_t sub_23BB241A0()
{
  result = qword_27E1A0EF0;
  if (!qword_27E1A0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0EF0);
  }

  return result;
}

uint64_t sub_23BB242AC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_9:
    v9 = a1 + v12;
    goto LABEL_10;
  }

  sub_23BBDCB58();
  OUTLINED_FUNCTION_10_2();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_9;
  }

  sub_23BBDCC88();
  OUTLINED_FUNCTION_10_2();
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v12 = a3[7];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[9] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BB2443C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_23BBDCB58();
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_23BBDCC88();
        OUTLINED_FUNCTION_10_2();
        if (*(v18 + 84) != a3)
        {
          *(a1 + a4[9] + 8) = (a2 - 1);
          return;
        }

        v10 = v17;
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent()
{
  result = qword_27E1A0EF8;
  if (!qword_27E1A0EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB24600()
{
  sub_23B9C68B0();
  if (v0 <= 0x3F)
  {
    sub_23BBDCDB8();
    if (v1 <= 0x3F)
    {
      sub_23BBDCB58();
      if (v2 <= 0x3F)
      {
        sub_23BBDCC88();
        if (v3 <= 0x3F)
        {
          sub_23BA47694();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB246F0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F08);
  OUTLINED_FUNCTION_7();
  v43 = v3;
  v44 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v5;
  v6 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F18);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  *&v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F28);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = v1;
  sub_23B9B70F0();
  v26 = sub_23BBDA2E8();
  (*(v8 + 8))(v11, v6);
  if (v26)
  {
    v27 = sub_23BBDAB58();
  }

  else
  {
    v27 = sub_23BBDAB48();
  }

  *v14 = v27;
  *(v14 + 1) = 0x4037000000000000;
  v14[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F30);
  sub_23BB24BE8(v25, &v14[*(v28 + 44)]);
  sub_23BBDC2F8();
  sub_23BBDA488();
  sub_23B989918(v14, v18, &qword_27E1A0F10);
  memcpy(&v18[*(v15 + 36)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  sub_23B989918(v18, v21, &qword_27E1A0F18);
  v30 = &v21[*(v39 + 36)];
  *v30 = KeyPath;
  *(v30 + 1) = 0;
  v30[16] = 1;
  if (qword_27E1976A0 != -1)
  {
    swift_once();
  }

  v39 = xmmword_27E1BFC60;
  v38 = *&qword_27E1BFC70;
  v31 = sub_23BBDB398();
  sub_23B989918(v21, v24, &qword_27E1A0F20);
  v32 = &v24[*(v40 + 36)];
  *v32 = v31;
  *(v32 + 24) = v38;
  *(v32 + 8) = v39;
  v32[40] = 0;
  sub_23BBDC2B8();
  v33 = MEMORY[0x277CE1340];
  v34 = MEMORY[0x277CE1350];
  v35 = v41;
  sub_23BBDAAB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F38);
  sub_23BB250C8();
  v45 = v34;
  v46 = v33;
  OUTLINED_FUNCTION_1_52();
  swift_getOpaqueTypeConformance2();
  sub_23BB252C4();
  v36 = v44;
  sub_23BBDBC58();
  (*(v43 + 8))(v35, v36);
  return sub_23B979910(v24, &qword_27E1A0F28);
}