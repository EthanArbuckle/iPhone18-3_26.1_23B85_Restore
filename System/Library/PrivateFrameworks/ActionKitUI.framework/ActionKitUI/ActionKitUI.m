uint64_t sub_23E344AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = dynamic_cast_existential_1_conditional(a1);
  if (result)
  {
    result = (*(v8 + 8))(a2, a3);
  }

  *a4 = result;
  return result;
}

uint64_t sub_23E344BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_23E3AA560();
  v4 = OUTLINED_FUNCTION_0(v3);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = *(a1 + 24);
  v52 = *(a1 + 16);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  v51 = v9;
  sub_23E3AA5B0();
  sub_23E3AA490();
  v11 = sub_23E3AA790();
  OUTLINED_FUNCTION_8();
  WitnessTable = swift_getWitnessTable();
  v65 = v10;
  v66 = WitnessTable;
  OUTLINED_FUNCTION_7();
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6();
  v13 = swift_getWitnessTable();
  v60 = v11;
  v61 = v13;
  OUTLINED_FUNCTION_5();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = v11;
  v61 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_23E349C74();
  v17 = MEMORY[0x277D837D0];
  v60 = OpaqueTypeMetadata2;
  v61 = MEMORY[0x277D837D0];
  v62 = OpaqueTypeConformance2;
  v63 = v16;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E870, &qword_23E3B1458);
  v60 = OpaqueTypeMetadata2;
  v61 = v17;
  v20 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2();
  v22 = sub_23E34A09C(v21, &qword_27E33E870, &qword_23E3B1458);
  v60 = v18;
  v61 = v19;
  v62 = v20;
  v63 = v22;
  OUTLINED_FUNCTION_12();
  swift_getOpaqueTypeMetadata2();
  v60 = v18;
  v61 = v19;
  v49 = OUTLINED_FUNCTION_22();
  v23 = sub_23E3AA1F0();
  v24 = OUTLINED_FUNCTION_0(v23);
  v50 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v49 - v28;
  OUTLINED_FUNCTION_10();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v33 = sub_23E348C14(v31, v32);
  v60 = v23;
  v61 = v3;
  v62 = v30;
  v63 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v35);
  v42 = &v49 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v49 - v43;
  v57 = v52;
  v58 = v51;
  v59 = v54;
  sub_23E3AA1E0();
  v45 = v53;
  sub_23E3AA550();
  sub_23E3AA600();
  (*(v55 + 8))(v45, v3);
  (*(v50 + 8))(v29, v23);
  v46 = *(v37 + 16);
  OUTLINED_FUNCTION_20();
  v46();
  v47 = *(v37 + 8);
  v47(v42, v34);
  (v46)(v56, v44, v34);
  return (v47)(v44, v34);
}

uint64_t sub_23E34502C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v72 = a1;
  v73 = a4;
  v71 = sub_23E3AA380();
  v68 = *(v71 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  sub_23E3AA5B0();
  v60 = sub_23E3AA490();
  v8 = sub_23E3AA790();
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v49 - v10;
  WitnessTable = swift_getWitnessTable();
  v85 = a3;
  v86 = WitnessTable;
  v49 = a3;
  v64 = swift_getWitnessTable();
  v84 = v64;
  v12 = swift_getWitnessTable();
  *&v81 = v8;
  *(&v81 + 1) = v12;
  v13 = v8;
  v62 = v8;
  v14 = v12;
  v63 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v61 = &v49 - v17;
  *&v81 = v13;
  *(&v81 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_23E349C74();
  v20 = MEMORY[0x277D837D0];
  v52 = OpaqueTypeMetadata2;
  *&v81 = OpaqueTypeMetadata2;
  *(&v81 + 1) = MEMORY[0x277D837D0];
  v82 = OpaqueTypeConformance2;
  v83 = v19;
  v21 = OpaqueTypeConformance2;
  v54 = OpaqueTypeConformance2;
  v22 = v19;
  v53 = v19;
  v23 = swift_getOpaqueTypeMetadata2();
  v55 = v23;
  v65 = *(v23 - 8);
  v24 = *(v65 + 64);
  MEMORY[0x28223BE20](v23);
  v59 = &v49 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E870, &qword_23E3B1458);
  v58 = v26;
  *&v81 = OpaqueTypeMetadata2;
  *(&v81 + 1) = v20;
  v82 = v21;
  v83 = v22;
  v27 = swift_getOpaqueTypeConformance2();
  v57 = v27;
  v56 = sub_23E34A09C(&qword_27E33E878, &qword_27E33E870, &qword_23E3B1458);
  *&v81 = v23;
  *(&v81 + 1) = v26;
  v82 = v27;
  v83 = v56;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v28);
  v50 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v51 = &v49 - v33;
  v78 = v74;
  v79 = a3;
  v34 = v72;
  v80 = v72;
  v35 = v66;
  sub_23E3AA780();
  v36 = v68;
  v37 = v69;
  v38 = v71;
  (*(v68 + 104))(v69, *MEMORY[0x277CDDDC0], v71);
  v39 = v61;
  v40 = v62;
  sub_23E3AA6B0();
  (*(v36 + 8))(v37, v38);
  (*(v70 + 8))(v35, v40);
  v81 = *v34;
  v41 = v59;
  v42 = v52;
  sub_23E3AA680();
  (*(v67 + 8))(v39, v42);
  v75 = v74;
  v76 = v49;
  v77 = v34;
  v43 = v50;
  v44 = v55;
  sub_23E3AA6F0();
  (*(v65 + 8))(v41, v44);
  v45 = v29[2];
  v46 = v51;
  v45(v51, v43, v28);
  v47 = v29[1];
  v47(v43, v28);
  v45(v73, v46, v28);
  return (v47)(v46, v28);
}

uint64_t sub_23E345778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v41 = a3;
  v6 = sub_23E3AA5B0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - v13;
  v15 = *(a2 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  v22 = sub_23E3AA490();
  v38 = *(v22 - 8);
  v39 = v22;
  v23 = *(v38 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v37 - v25;
  if (*(a1 + 17))
  {
    v27 = *(a1 + 32);
    (*(a1 + 24))(v24);
    v28 = v15[2];
    v28(v21, v19, a2);
    v29 = v15[1];
    v29(v19, a2);
    v28(v19, v21, a2);
    swift_getWitnessTable();
    sub_23E345BC4(v19, a2);
    v29(v19, a2);
    v29(v21, a2);
  }

  else
  {
    MEMORY[0x28223BE20](v24);
    v30 = v41;
    v37[-4] = a2;
    v37[-3] = v30;
    v37[-2] = a1;
    sub_23E3AA5A0();
    v37[1] = swift_getWitnessTable();
    v31 = v7[2];
    v31(v14, v11, v6);
    v32 = v7[1];
    v32(v11, v6);
    v31(v11, v14, v6);
    sub_23E345DFC(v11, a2, v6);
    v32(v11, v6);
    v32(v14, v6);
  }

  WitnessTable = swift_getWitnessTable();
  v42 = v41;
  v43 = WitnessTable;
  v34 = v39;
  swift_getWitnessTable();
  v35 = v38;
  (*(v38 + 16))(v40, v26, v34);
  return (*(v35 + 8))(v26, v34);
}

uint64_t sub_23E345BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E3AA470();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23E3AA480();
}

uint64_t sub_23E345CBC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  v12 = *(v9 + 32);
  (*(v9 + 24))();
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_23E345DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23E3AA470();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23E3AA480();
}

uint64_t sub_23E345EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E888, &qword_23E3B1460);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v25 = &v25 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E890, &qword_23E3B1468);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v25 - v11;
  v13 = sub_23E3AA4E0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E898, &qword_23E3B1470);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_23E3AA4C0();
  v32 = a2;
  v33 = a3;
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E8A0, &qword_23E3B1478);
  sub_23E349D40();
  sub_23E3AA170();
  sub_23E3AA4D0();
  v29 = a2;
  v30 = a3;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E8C0, &qword_23E3B1488);
  sub_23E349E40();
  sub_23E3AA170();
  v20 = *(v27 + 48);
  v21 = v25;
  (*(v16 + 16))(v25, v19, v15);
  v22 = &v21[v20];
  v23 = v26;
  (*(v9 + 16))(v22, v12, v26);
  sub_23E3AA3B0();
  (*(v9 + 8))(v12, v23);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_23E34625C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E3AA230();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *(v1 + 40);
  if (v13)
  {
    v28 = v4;
    v29 = v3;
    v30 = a1;
    v14 = *(v1 + 48);

    sub_23E3AAA00();
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v15 = qword_27E33F950;
    v16 = sub_23E3AA9B0();
    v17 = sub_23E3AA9B0();

    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    v19 = sub_23E3AA9D0();
    v21 = v20;

    v31 = v19;
    v32 = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    *(v22 + 24) = v14;
    sub_23E349C74();

    sub_23E3AA810();
    sub_23E3AA210();
    sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
    v23 = v30;
    sub_23E3AA690();
    sub_23E34A688(v13);
    (*(v28 + 8))(v7, v29);
    (*(v9 + 8))(v12, v8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E930, &qword_23E3B1528);
    return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E930, &qword_23E3B1528);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v26);
  }
}

uint64_t sub_23E3465E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[1] = a2;
  v19[2] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E8E8, &qword_23E3B1498);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E910, &qword_23E3B14B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4D0, &qword_23E3B1490);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v21 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7C0();
  if (v20 == 1)
  {
    sub_23E3AA180();
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    sub_23E349EF8();
    sub_23E3AA480();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v18 = type metadata accessor for AccountLoginLayoutView();
    sub_23E3468C8(v18, v7);
    sub_23E34A0E4(v7, v11);
    swift_storeEnumTagMultiPayload();
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    sub_23E349EF8();
    sub_23E3AA480();
    return sub_23E34A14C(v7);
  }
}

uint64_t sub_23E3468C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23E3AA230();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E8F0, &qword_23E3B14A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  if (*(v2 + 56))
  {
    v37 = v10;
    v38 = v6;
    v39 = v5;
    v40 = a2;
    sub_23E3AAA00();
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v18 = qword_27E33F950;
    v19 = sub_23E3AA9B0();
    v20 = sub_23E3AA9B0();

    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

    v22 = sub_23E3AA9D0();
    v24 = v23;

    v43 = v22;
    v44 = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = *(a1 + 16);
    memcpy((v25 + 32), v2, 0x58uLL);
    (*(*(a1 - 8) + 16))(v42, v2, a1);
    sub_23E349C74();
    sub_23E3AA810();
    if (*(v2 + 16))
    {
      v42[0] = *(v2 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
      sub_23E3AA7C0();
      v26 = v43;
    }

    else
    {
      v26 = 1;
    }

    v30 = v37;
    v29 = v38;
    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v26;
    (*(v41 + 32))(v17, v13, v30);
    v33 = &v17[*(v14 + 36)];
    *v33 = KeyPath;
    v33[1] = sub_23E34A288;
    v33[2] = v32;
    sub_23E3AA220();
    sub_23E349FB8();
    v34 = v40;
    sub_23E3AA690();
    (*(v29 + 8))(v9, v39);
    sub_23E34A698(v17, &qword_27E33E8F0, &qword_23E3B14A0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E920, &qword_23E3B14C0);
    return __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E920, &qword_23E3B14C0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v27);
  }
}

uint64_t sub_23E346D74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F290, &qword_23E3B1E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-v6 - 8];
  v8 = sub_23E3AAAE0();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_23E3AAAC0();
  (*(*(a1 - 8) + 16))(v14, v1, a1);
  v9 = sub_23E3AAAB0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = *(a1 + 16);
  memcpy((v10 + 48), v2, 0x58uLL);
  sub_23E3472E0(0, 0, v7, &unk_23E3B1508, v10);
}

uint64_t sub_23E346EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_23E3AAAC0();
  v4[11] = sub_23E3AAAB0();
  v6 = sub_23E3AAA80();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_23E346F60, v6, v5);
}

uint64_t sub_23E346F60()
{
  v1 = *(v0 + 80);
  if ((*(v1 + 16) & 1) != 0 && (v2 = *(v1 + 56), (*(v0 + 112) = v2) != 0))
  {
    *(v0 + 120) = *(v1 + 64);
    *(v0 + 16) = *(v1 + 72);
    *(v0 + 32) = *(v1 + 72);
    *(v0 + 144) = 1;
    sub_23E34A618(v2);
    sub_23E34A628(v0 + 16, v0 + 48, &qword_27E33E918, &qword_23E3B14B8);
    *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
    sub_23E3AA7D0();
    v8 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_23E347120;

    return v8();
  }

  else
  {
    v6 = *(v0 + 88);

    OUTLINED_FUNCTION_19();

    return v7();
  }
}

uint64_t sub_23E347120()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23E347234, v6, v5);
}

uint64_t sub_23E347234()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);

  *(v0 + 64) = *(v0 + 16);
  *(v0 + 145) = 0;
  sub_23E3AA7D0();
  sub_23E34A688(v3);
  sub_23E34A698(v0 + 16, &qword_27E33E918, &qword_23E3B14B8);
  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23E3472E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F290, &qword_23E3B1E10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_23E34A628(a3, v26 - v11, &qword_27E33F290, &qword_23E3B1E10);
  v13 = sub_23E3AAAE0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_23E34A698(v12, &qword_27E33F290, &qword_23E3B1E10);
  }

  else
  {
    sub_23E3AAAD0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23E3AAA80();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23E3AA9E0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23E34A698(a3, &qword_27E33F290, &qword_23E3B1E10);

      return v24;
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

  sub_23E34A698(a3, &qword_27E33F290, &qword_23E3B1E10);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23E347618@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E858, &qword_23E3B1450);
  v30[2] = *(a1 + 16);
  v30[3] = v9;
  v30[1] = v4;
  v10 = sub_23E3AA8C0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v30 - v19;
  sub_23E34789C(v37);
  v35 = v37[0];
  v36 = v37[1];
  (*(v5 + 16))(v8, v2 + *(a1 + 52), v4);
  v21 = (v2 + *(a1 + 56));
  v23 = *v21;
  v22 = v21[1];
  v24 = sub_23E349C0C(&unk_27E33E860, &qword_27E33E858, &qword_23E3B1450);
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  sub_23E3AA8A0();
  v32 = v24;
  v33 = v28;
  v34 = v29;
  OUTLINED_FUNCTION_11();
  swift_getWitnessTable();
  v25 = *(v13 + 16);
  v25(v20, v18, v10);
  v26 = *(v13 + 8);
  v26(v18, v10);
  v25(v31, v20, v10);
  return (v26)(v20, v10);
}

uint64_t sub_23E34789C@<X0>(uint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v8 = *v1;
    v9 = v1[1];
    sub_23E349C74();

    result = sub_23E3AA5F0();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_23E347924(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_20();
    sub_23E3AA570();

    return sub_23E3AA200();
  }

  else
  {
    OUTLINED_FUNCTION_20();
    sub_23E3AA260();
    OUTLINED_FUNCTION_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15();
    sub_23E3AA520();
    OUTLINED_FUNCTION_15();
    sub_23E3AA200();
    sub_23E3AABB0();
    OUTLINED_FUNCTION_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15();
    sub_23E3AA260();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15();
    sub_23E3AA520();
    return sub_23E3AA200();
  }
}

uint64_t sub_23E347A40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (OUTLINED_FUNCTION_23())
  {
    sub_23E3AA570();
    OUTLINED_FUNCTION_17();
    sub_23E3AA200();
  }

  else
  {
    sub_23E3AA260();
    OUTLINED_FUNCTION_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15();
    sub_23E3AA520();
    OUTLINED_FUNCTION_17();
    sub_23E3AA200();
    sub_23E3AABB0();
    OUTLINED_FUNCTION_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15();
    sub_23E3AA260();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15();
    sub_23E3AA520();
    OUTLINED_FUNCTION_17();
    sub_23E3AA200();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23E347BF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23E347C2C(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E638, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23E347C98(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E638, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23E347D04(void *a1, uint64_t a2)
{
  v4 = sub_23E348C14(&qword_27E33E638, type metadata accessor for ASWebAuthenticationSessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23E347DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E348C14(&qword_27E33E638, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23E347E34@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_23E347E84(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E5E8, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23E347EF0(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E5E8, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23E347F5C(void *a1, uint64_t a2)
{
  v4 = sub_23E348C14(&qword_27E33E5E8, type metadata accessor for WFOAuth2Error);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23E347FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E348C14(&qword_27E33E5E8, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

void sub_23E348074(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23E3480A8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_23E3480D0(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E818, type metadata accessor for ENError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23E34813C(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E818, type metadata accessor for ENError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23E3481A8(void *a1, uint64_t a2)
{
  v4 = sub_23E348C14(&qword_27E33E818, type metadata accessor for ENError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23E348238(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E348C14(&qword_27E33E818, type metadata accessor for ENError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23E3482B4()
{
  v2 = *v0;
  sub_23E3AACF0();
  OUTLINED_FUNCTION_20();
  sub_23E3AA980();
  return sub_23E3AAD00();
}

uint64_t sub_23E348310(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E640, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23E34837C(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E640, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23E3483E8(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E638, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23E348454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E348C14(&qword_27E33E638, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23E3484D8(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E5F0, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23E348544(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E5F0, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23E3485B4(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E5E8, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23E348620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E348C14(&qword_27E33E5E8, type metadata accessor for WFOAuth2Error);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23E3486A4(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E820, type metadata accessor for ENError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23E348710(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E820, type metadata accessor for ENError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23E34877C(uint64_t a1)
{
  v2 = sub_23E348C14(&qword_27E33E818, type metadata accessor for ENError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23E3487E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E348C14(&qword_27E33E818, type metadata accessor for ENError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23E34886C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E348964;

  return v7(a1);
}

uint64_t sub_23E348964()
{
  OUTLINED_FUNCTION_21();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_19();

  return v4();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E348A60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23E348AA0(uint64_t result, int a2, int a3)
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

uint64_t sub_23E348C14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E348DF0()
{
  result = qword_27E33E618;
  if (!qword_27E33E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33E618);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_23E3491F8(uint64_t a1)
{
  sub_23E3499C4(319, &qword_27E33E760, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 24);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_23E3496A8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E3492BC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((v9 + ((v7 + 16) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23E349414);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        return v8 + (v12 | v18) + 1;
      default:
        break;
    }
  }

  v19 = (a1 + v7 + 16) & ~v7;
  if (v6 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(v19, v6, v4);
  }

  v20 = *((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_23E349450(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 16) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        return;
      case 2:
        *&a1[v12] = v17;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23E349640);
    case 4:
      *&a1[v12] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = &a1[v10 + 16] & ~v10;
        if (v8 < 0x7FFFFFFF)
        {
          v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v21 = a2 & 0x7FFFFFFF;
            v20[1] = 0;
          }

          else
          {
            v21 = (a2 - 1);
          }

          *v20 = v21;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

unint64_t sub_23E3496A8()
{
  result = qword_27E33E768[0];
  if (!qword_27E33E768[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27E33E768);
  }

  return result;
}

uint64_t sub_23E3496F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23E349758(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23E349798(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23E3498C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_23E3499C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23E349C0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E349C74()
{
  result = qword_27E33EB50;
  if (!qword_27E33EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EB50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23E349D34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23E346228(a1);
}

unint64_t sub_23E349D40()
{
  result = qword_27E33E8A8;
  if (!qword_27E33E8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E8A0, &qword_23E3B1478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33E8B0, &qword_23E3B1480);
    sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33E8A8);
  }

  return result;
}

unint64_t sub_23E349E40()
{
  result = qword_27E33E8C8;
  if (!qword_27E33E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E8C0, &qword_23E3B1488);
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    sub_23E349EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33E8C8);
  }

  return result;
}

unint64_t sub_23E349EF8()
{
  result = qword_27E33E8E0;
  if (!qword_27E33E8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E8E8, &qword_23E3B1498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E8F0, &qword_23E3B14A0);
    sub_23E349FB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33E8E0);
  }

  return result;
}

unint64_t sub_23E349FB8()
{
  result = qword_27E33E8F8;
  if (!qword_27E33E8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E8F0, &qword_23E3B14A0);
    sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
    sub_23E34A09C(&qword_27E33E900, &qword_27E33E908, &qword_23E3B14A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33E8F8);
  }

  return result;
}

uint64_t sub_23E34A09C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E34A0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E8E8, &qword_23E3B1498);
  OUTLINED_FUNCTION_13(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23E34A14C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E8E8, &qword_23E3B1498);
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23E34A1AC()
{
  v1 = v0[5];

  v2 = v0[8];

  if (v0[9])
  {
    v3 = v0[10];
  }

  if (v0[11])
  {
    v4 = v0[12];
  }

  v5 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_23E34A214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23E346D48();
}

uint64_t sub_23E34A220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E3AA320();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23E34A2A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[10];

  if (v0[11])
  {
    v4 = v0[12];
  }

  if (v0[13])
  {
    v5 = v0[14];
  }

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_23E34A310(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18(v7);
  *v8 = v9;
  v8[1] = sub_23E34A3CC;

  return sub_23E346EC8(a1, v5, v6, (v1 + 6));
}

uint64_t sub_23E34A3CC()
{
  OUTLINED_FUNCTION_21();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23E34A4B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E34A4E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16(v4);

  return v7(v6);
}

uint64_t sub_23E34A580()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16(v4);

  return v7(v6);
}

uint64_t sub_23E34A618(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23E34A628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23E34A688(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23E34A698(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_23E34A6F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E34A718@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_23E345CBC(v1[2], a1);
}

uint64_t sub_23E34A754(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E858, &qword_23E3B1450);
  sub_23E3AA8C0();
  sub_23E349C0C(&unk_27E33E860, &qword_27E33E858, &qword_23E3B1450);
  v5 = *(a1 + 1);
  OUTLINED_FUNCTION_11();
  return swift_getWitnessTable();
}

uint64_t sub_23E34A7FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_17();
  sub_23E3AA5B0();
  OUTLINED_FUNCTION_17();
  sub_23E3AA490();
  OUTLINED_FUNCTION_17();
  sub_23E3AA790();
  OUTLINED_FUNCTION_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23E349C74();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33E870, &qword_23E3B1458);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2();
  sub_23E34A09C(v3, &qword_27E33E870, &qword_23E3B1458);
  OUTLINED_FUNCTION_12();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15();
  sub_23E3AA1F0();
  sub_23E3AA560();
  OUTLINED_FUNCTION_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_23E348C14(v4, v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22()
{
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t sub_23E34AC80(uint64_t a1, uint64_t a2)
{
  v5 = sub_23E3AA920();
  v6 = OUTLINED_FUNCTION_0(v5);
  v25 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23E3AA950();
  v12 = OUTLINED_FUNCTION_0(v24);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E34DC84();
  v19 = sub_23E3AAB60();
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_23E34DD08;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E34DD84(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v18, v11, v21);
  _Block_release(v21);

  (*(v25 + 8))(v11, v5);
  return (*(v14 + 8))(v18, v24);
}

uint64_t sub_23E34AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAE8, &unk_23E3B17C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for InstapaperLoginView(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = a2;
  *(v15 + 1) = a3;
  v31 = 0;
  v32 = 0xE000000000000000;

  sub_23E3AA7B0();
  v16 = v34;
  *(v15 + 1) = v33;
  *(v15 + 4) = v16;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_23E3AA7B0();
  v17 = v34;
  *(v15 + 40) = v33;
  *(v15 + 7) = v17;
  v18 = *(v12 + 28);
  v19 = sub_23E3A9F80();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  sub_23E34A628(v11, v9, &qword_27E33EAE8, &unk_23E3B17C0);
  sub_23E3AA7B0();
  sub_23E34A698(v11, &qword_27E33EAE8, &unk_23E3B17C0);
  v20 = *(v12 + 32);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v21 = &v15[v20];
  v22 = qword_27E33F950;
  v23 = sub_23E3AA9B0();
  v24 = sub_23E3AA9B0();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = sub_23E3AA9D0();
  v28 = v27;

  *v21 = v26;
  v21[1] = v28;
  sub_23E34DD84(&qword_27E33EAF0, type metadata accessor for InstapaperLoginView);
  sub_23E3AAB90();
  return sub_23E34DDCC(v15);
}

id sub_23E34B2D0(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFInstapaperAccessResourceUserInterface();
  v5 = objc_msgSendSuper2(&v7, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_23E34B3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for InstapaperLoginView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33[-v13];
  v15 = (v1 + *(v12 + 40));
  v16 = v15[1];
  v35 = *v15;
  v36 = v16;
  v17 = *(v1 + 32);
  v39 = *(v1 + 16);
  v40 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7C0();
  v19 = v37;
  v18 = v38;

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(v2 + 56);
    v39 = *(v2 + 40);
    v40 = v21;
    sub_23E3AA7C0();
    v23 = v37;
    v22 = v38;

    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    v34 = v24 != 0;
  }

  else
  {
    v34 = 0;
  }

  sub_23E34E150(v2, v14);
  v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v26 = swift_allocObject();
  sub_23E34E1B8(v14, v26 + v25);
  sub_23E34E150(v2, v11);
  v27 = swift_allocObject();
  sub_23E34E1B8(v11, v27 + v25);
  sub_23E34E150(v2, v8);
  v28 = swift_allocObject();
  sub_23E34E1B8(v8, v28 + v25);
  LOBYTE(v37) = 0;
  result = sub_23E3AA7B0();
  v30 = v39;
  v31 = *(&v39 + 1);
  v32 = v36;
  *a1 = v35;
  *(a1 + 8) = v32;
  *(a1 + 16) = v34;
  *(a1 + 24) = sub_23E34E21C;
  *(a1 + 32) = v26;
  *(a1 + 40) = sub_23E34E394;
  *(a1 + 48) = v27;
  *(a1 + 56) = &unk_23E3B16A8;
  *(a1 + 64) = v28;
  *(a1 + 72) = v30;
  *(a1 + 80) = v31;
  return result;
}

uint64_t sub_23E34B68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB30, &qword_23E3B16B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v40 - v4;
  v46 = type metadata accessor for InstapaperLoginView(0);
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = v6;
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB40, &qword_23E3B16C8);
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB48, &unk_23E3B16D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v19 = qword_27E33F950;
  v20 = sub_23E3AA9B0();
  v21 = sub_23E3AA9B0();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = sub_23E3AA9D0();
  v40 = v24;
  v41 = v23;

  sub_23E3AAA00();
  v25 = sub_23E3AA9B0();
  v26 = sub_23E3AA9B0();

  v27 = [v19 localizedStringForKey:v25 value:v26 table:0];

  v28 = sub_23E3AA9D0();
  v30 = v29;

  v50 = v28;
  v51 = v30;
  sub_23E3A9E80();
  v31 = sub_23E3A9E90();
  result = __swift_getEnumTagSinglePayload(v10, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_23E349C74();
    sub_23E3AA5C0();
    v33 = v45;
    sub_23E34E150(v47, v45);
    v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v35 = swift_allocObject();
    sub_23E34E1B8(v33, v35 + v34);
    v36 = v40;
    *v18 = v41;
    *(v18 + 1) = v36;
    (*(v11 + 32))(&v18[*(v15 + 52)], v14, v42);
    v37 = &v18[*(v15 + 56)];
    *v37 = sub_23E34E60C;
    v37[1] = v35;
    v38 = *(v46 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v39 = v48;
    sub_23E3AA7E0();
    sub_23E3A9F80();
    sub_23E34A09C(&qword_27E33ED90, &qword_27E33EB48, &unk_23E3B16D0);
    sub_23E34DD84(&unk_27E33EB60, MEMORY[0x277D7D2C8]);
    sub_23E3AA6D0();
    sub_23E34A698(v39, &qword_27E33EB30, &qword_23E3B16B8);
    return sub_23E34E6A4(v18);
  }

  return result;
}

uint64_t sub_23E34BBE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDB0, &unk_23E3B18C0);
  v3 = *(*(v66 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v66);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EB70, &unk_23E3B16E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDC0, &unk_23E3B18D0);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EB80, &qword_23E3B16F0);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = &v59 - v19;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v20 = qword_27E33F950;
  v60 = qword_27E33F950;
  v21 = sub_23E3AA9B0();
  v22 = sub_23E3AA9B0();

  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = sub_23E3AA9D0();
  v26 = v25;

  v27 = *(a1 + 32);
  v73 = *(a1 + 16);
  v74 = v27;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7E0();
  v28 = a1;
  v71 = v24;
  v72 = v26;
  sub_23E349C74();
  sub_23E3AA910();
  v29 = *MEMORY[0x277D76FB8];
  KeyPath = swift_getKeyPath();
  v31 = sub_23E3AA9D0();
  v32 = &v10[*(v7 + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  v32[2] = v33;
  v34 = sub_23E34E70C();
  sub_23E3AA650();
  sub_23E34A698(v10, &unk_27E33EB70, &unk_23E3B16E0);
  v71 = v7;
  v72 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v70;
  v36 = v62;
  sub_23E3AA6A0();
  (*(v61 + 8))(v14, v36);
  sub_23E3AAA00();
  v37 = sub_23E3AA9B0();
  v38 = sub_23E3AA9B0();

  v39 = [v60 localizedStringForKey:v37 value:v38 table:0];

  v40 = sub_23E3AA9D0();
  v42 = v41;

  v43 = *(v28 + 56);
  v73 = *(v28 + 40);
  v74 = v43;
  sub_23E3AA7E0();
  v71 = v40;
  v72 = v42;
  v44 = v67;
  sub_23E3AA140();
  v45 = *MEMORY[0x277D77030];
  v46 = swift_getKeyPath();
  v47 = sub_23E3AA9D0();
  v48 = v65;
  v49 = (v44 + *(v66 + 36));
  *v49 = v46;
  v49[1] = v47;
  v49[2] = v50;
  v52 = v63;
  v51 = v64;
  v53 = *(v64 + 16);
  v53(v63, v35, v48);
  v54 = v69;
  sub_23E34A628(v44, v69, &unk_27E33EDB0, &unk_23E3B18C0);
  v55 = v68;
  v53(v68, v52, v48);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EBB0, &qword_23E3B1738);
  sub_23E34A628(v54, &v55[*(v56 + 48)], &unk_27E33EDB0, &unk_23E3B18C0);
  sub_23E34A698(v44, &unk_27E33EDB0, &unk_23E3B18C0);
  v57 = *(v51 + 8);
  v57(v70, v48);
  sub_23E34A698(v54, &unk_27E33EDB0, &unk_23E3B18C0);
  return (v57)(v52, v48);
}

uint64_t sub_23E34C258(uint64_t a1)
{
  v2 = sub_23E3A9F80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23E3AA720();
}

uint64_t sub_23E34C324()
{
  v0[2] = sub_23E3AAAC0();
  v0[3] = sub_23E3AAAB0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23E34C3D0;

  return sub_23E34C554();
}

uint64_t sub_23E34C3D0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  v8 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E34C4FC, v8, v7);
}

uint64_t sub_23E34C4FC()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23E34C554()
{
  v1[17] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAE8, &unk_23E3B17C0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_23E3AAAC0();
  v1[20] = sub_23E3AAAB0();
  v4 = sub_23E3AAA80();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](sub_23E34C630, v4, v3);
}

uint64_t sub_23E34C630()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  v3 = *(v1 + 24);
  *(v0 + 192) = v3;
  v4 = *(v1 + 32);
  *(v0 + 200) = v4;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7C0();
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v1 + 56);
  *(v0 + 40) = *(v1 + 40);
  *(v0 + 56) = v7;
  sub_23E3AA7C0();
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = objc_allocWithZone(type metadata accessor for InstapaperLoginSession(0));
  *(v0 + 216) = sub_23E34CB14(v5, v6, v9, v8);
  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *v11 = v0;
  v11[1] = sub_23E34C770;

  return sub_23E34CBD0();
}

uint64_t sub_23E34C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_0();
  v11 = v10;
  v12 = v10[28];
  v13 = *v5;
  OUTLINED_FUNCTION_14();
  *v14 = v13;
  v11[29] = v4;

  if (v4)
  {
    v15 = v11[21];
    v16 = v11[22];
    v17 = sub_23E34C9E4;
  }

  else
  {
    v11[30] = a4;
    v11[31] = a3;
    v11[32] = a2;
    v11[33] = a1;
    v15 = v11[21];
    v16 = v11[22];
    v17 = sub_23E34C8AC;
  }

  return MEMORY[0x2822009F8](v17, v15, v16);
}

uint64_t sub_23E34C8AC()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 208);
  v16 = *(v0 + 216);
  v6 = *(v0 + 200);
  v15 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);

  v9 = objc_opt_self();
  *(v0 + 64) = v15;
  *(v0 + 80) = v6;
  sub_23E3AA7C0();
  sub_23E34E5A0(*(v0 + 120), *(v0 + 128), v9, &selRef_setInstapaperUsername_);
  sub_23E34E5A0(v1, v2, v9, &selRef_setInstapaperToken_);
  sub_23E34E5A0(v3, v4, v9, &selRef_setInstapaperTokenSecret_);
  v10 = *(v8 + 8);
  (*v8)(1, 0);

  v12 = *(v0 + 144);
  v11 = *(v0 + 152);

  OUTLINED_FUNCTION_19();

  return v13();
}

uint64_t sub_23E34C9E4()
{
  v1 = v0[29];
  v2 = v0[27];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];

  sub_23E3A9E30();
  sub_23E3A9F90();
  v7 = sub_23E3A9F80();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  v8 = *(type metadata accessor for InstapaperLoginView(0) + 28);
  sub_23E34A628(v4, v6, &qword_27E33EAE8, &unk_23E3B17C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
  sub_23E3AA7D0();

  sub_23E34A698(v4, &qword_27E33EAE8, &unk_23E3B17C0);
  v10 = v0[18];
  v9 = v0[19];

  OUTLINED_FUNCTION_19();

  return v11();
}

id sub_23E34CB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_engine] = 0;
  v9 = OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAA8, &qword_23E3B15F0);
  __swift_storeEnumTagSinglePayload(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_username];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_password];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for InstapaperLoginSession(0);
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_23E34CBD0()
{
  OUTLINED_FUNCTION_21();
  v1[6] = v0;
  v1[7] = sub_23E3AAAC0();
  v1[8] = sub_23E3AAAB0();
  v3 = sub_23E3AAA80();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_23E34CC68, v3, v2);
}

uint64_t sub_23E34CC68()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CE87E0]) initWithDelegate_];
  v0[11] = v1;
  if (v1)
  {
    v9 = v1;
    v11 = v0[6];
    v10 = v0[7];
    v12 = sub_23E3AAAB0();
    v0[12] = v12;
    v13 = swift_task_alloc();
    v0[13] = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v9;
    v14 = *(MEMORY[0x277D85A40] + 4);
    v15 = swift_task_alloc();
    v0[14] = v15;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAC0, &qword_23E3B1608);
    *v15 = v0;
    v15[1] = sub_23E34CDAC;
    v3 = MEMORY[0x277D85700];
    v6 = sub_23E34DC7C;
    v4 = 0x29286E69676F6CLL;
    v1 = v0 + 2;
    v2 = v12;
    v5 = 0xE700000000000000;
    v7 = v13;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_23E34CDAC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = v2[14];
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_23E34CF34;
  }

  else
  {
    v10 = v3[12];
    v11 = v3[13];

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_23E34CEC0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23E34CEC0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 8);

  return v6(v2, v3, v4, v5);
}

uint64_t sub_23E34CF34()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  OUTLINED_FUNCTION_19();
  v6 = v0[15];

  return v5();
}

void sub_23E34CFB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAB0, &qword_23E3B15F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAA8, &qword_23E3B15F0);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_continuation;
  swift_beginAccess();
  sub_23E34DB5C(v9, a2 + v11);
  swift_endAccess();
  v12 = *(a2 + OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_username);
  v13 = *(a2 + OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_username + 8);
  v14 = sub_23E3AA9B0();
  v15 = *(a2 + OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_password);
  v16 = *(a2 + OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_password + 8);
  v17 = sub_23E3AA9B0();

  v18 = *(a2 + OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_engine);
  *(a2 + OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_engine) = a3;
  v19 = a3;
}

uint64_t sub_23E34D14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v30 = a5;
  v31 = a6;
  v29 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAA8, &qword_23E3B15F0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAB0, &qword_23E3B15F8);
  v19 = OUTLINED_FUNCTION_6_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  v25 = OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_continuation;
  swift_beginAccess();
  sub_23E34A628(v8 + v25, v24, &qword_27E33EAB0, &qword_23E3B15F8);
  if (__swift_getEnumTagSinglePayload(v24, 1, v10))
  {
    sub_23E34A698(v24, &qword_27E33EAB0, &qword_23E3B15F8);
LABEL_6:
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    sub_23E34DB5C(v7, v8 + v25);
    return swift_endAccess();
  }

  v27 = v30;
  v26 = v31;
  (*(v13 + 16))(v17, v24, v10);
  result = sub_23E34A698(v24, &qword_27E33EAB0, &qword_23E3B15F8);
  if (a4)
  {
    result = a4;
    if (v26)
    {
      v32 = v29;
      v33 = a4;
      v34 = v27;
      v35 = v26;

      sub_23E3AAAA0();
      (*(v13 + 8))(v17, v10);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23E34D464(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAA8, &qword_23E3B15F0);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAB0, &qword_23E3B15F8);
  v15 = OUTLINED_FUNCTION_6_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  result = MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  if (!a3)
  {
    return result;
  }

  v54 = v13;
  v55 = v9;
  v22 = a3;
  v23 = sub_23E3A9E30();
  v24 = [v23 domain];
  v25 = sub_23E3AA9D0();
  v27 = v26;

  v28 = *MEMORY[0x277CE87D0];
  if (v25 == sub_23E3AA9D0() && v27 == v29)
  {

LABEL_9:
    if ([v23 code] == 401)
    {
      v53 = v3;
      v32 = sub_23E3AA9D0();
      v51 = v33;
      v52 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAB8, &qword_23E3B1600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E3B1560;
      v35 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_23E3AA9D0();
      *(inited + 40) = v36;
      sub_23E3AAA00();
      if (qword_27E33E560 != -1)
      {
        swift_once();
      }

      v37 = qword_27E33F950;
      v38 = sub_23E3AA9B0();
      v39 = sub_23E3AA9B0();

      v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

      v41 = sub_23E3AA9D0();
      v43 = v42;

      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v41;
      *(inited + 56) = v43;
      v44 = sub_23E3AA970();
      v45 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v46 = sub_23E34DBCC(v52, v51, 401, v44);

      v23 = v46;
      v3 = v53;
    }

    goto LABEL_13;
  }

  v31 = sub_23E3AACA0();

  if (v31)
  {
    goto LABEL_9;
  }

LABEL_13:
  v47 = OBJC_IVAR____TtC11ActionKitUI22InstapaperLoginSession_continuation;
  swift_beginAccess();
  sub_23E34A628(v3 + v47, v21, &qword_27E33EAB0, &qword_23E3B15F8);
  if (__swift_getEnumTagSinglePayload(v21, 1, v6))
  {

    sub_23E34A698(v21, &qword_27E33EAB0, &qword_23E3B15F8);
  }

  else
  {
    v49 = v54;
    v48 = v55;
    (*(v55 + 16))(v54, v21, v6);
    sub_23E34A698(v21, &qword_27E33EAB0, &qword_23E3B15F8);
    v56 = v23;
    v50 = v23;
    sub_23E3AAA90();

    (*(v48 + 8))(v49, v6);
  }

  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  sub_23E34DB5C(v4, v3 + v47);
  return swift_endAccess();
}

id sub_23E34D9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23E34DA88()
{
  sub_23E34E0D0(319, &qword_27E33EAA0, &qword_27E33EAA8, &qword_23E3B15F0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23E34DB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAB0, &qword_23E3B15F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_23E34DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23E3AA9B0();

  if (a4)
  {
    v8 = sub_23E3AA960();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_23E34DC84()
{
  result = qword_27E33F160;
  if (!qword_27E33F160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E33F160);
  }

  return result;
}

uint64_t sub_23E34DCC8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E34DD4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E34DD84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E34DDCC(uint64_t a1)
{
  v2 = type metadata accessor for InstapaperLoginView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E34DE28()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E34DE7C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E34DF24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E34DFB0()
{
  sub_23E3496A8();
  if (v0 <= 0x3F)
  {
    sub_23E34E080();
    if (v1 <= 0x3F)
    {
      sub_23E34E0D0(319, &qword_27E33ED10, &qword_27E33EAE8, &unk_23E3B17C0, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E34E080()
{
  if (!qword_27E33EB20)
  {
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33EB20);
    }
  }
}

void sub_23E34E0D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23E34E150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstapaperLoginView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E34E1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstapaperLoginView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = type metadata accessor for InstapaperLoginView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 56);

  v10 = v0 + v3 + *(v1 + 28);
  v11 = sub_23E3A9F80();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v12 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620) + 28));

  v13 = *(v0 + v3 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E34E394()
{
  v1 = type metadata accessor for InstapaperLoginView(0);
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + 8);
  return (*v3)(0, 0);
}

uint64_t sub_23E34E3FC()
{
  OUTLINED_FUNCTION_21();
  v1 = type metadata accessor for InstapaperLoginView(0);
  OUTLINED_FUNCTION_6_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_23E34E4C0;

  return sub_23E34C324();
}

uint64_t sub_23E34E4C0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

void sub_23E34E5A0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_23E3AA9B0();

  [a3 *a4];
}

uint64_t sub_23E34E624(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for InstapaperLoginView(0);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_23E34E6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB48, &unk_23E3B16D0);
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23E34E70C()
{
  result = qword_27E33EDD0;
  if (!qword_27E33EDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33EB70, &unk_23E3B16E0);
    sub_23E34A09C(&unk_27E33EB90, &unk_27E33EDA0, &qword_23E3B1C80);
    sub_23E34A09C(&unk_27E33EBA0, &unk_27E33EDE0, &qword_23E3B1730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

void sub_23E34E894(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v6 = sub_23E3AA920();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E3AA950();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  _Block_copy(a4);
  v15 = sub_23E3AA9B0();
  v16 = NSClassFromString(v15);

  if (v16 && (swift_getObjCClassMetadata(), sub_23E350638(0, &qword_27E33F6C0, 0x277CE87F0), (v17 = swift_dynamicCastMetatype()) != 0))
  {
    v18 = v17;
    sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
    v19 = sub_23E3AAB60();
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = a3;
    v20[4] = sub_23E3505E4;
    v20[5] = v14;
    aBlock[4] = sub_23E35062C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E364C0C;
    aBlock[3] = &block_descriptor_32;
    v21 = _Block_copy(aBlock);
    v22 = a3;

    sub_23E3AA940();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23E350504(&qword_27E33EAD0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
    sub_23E35054C();
    sub_23E3AABF0();
    MEMORY[0x23EF08800](0, v13, v9, v21);
    _Block_release(v21);

    (*(v24 + 8))(v9, v6);
    (*(v23 + 8))(v13, v10);

    _Block_release(a4);
  }

  else
  {
    a4[2](a4, 0, 0);

    _Block_release(a4);
  }
}

void sub_23E34EC68(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  sub_23E350638(0, &qword_27E33EC60, 0x277CE8850);
  v7 = swift_dynamicCastMetatype();
  if (v7)
  {
    sub_23E34EE84(v7, a3, a4);
  }

  else
  {
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a3;
    v8[4] = a4;
    sub_23E3506BC();

    sub_23E3AAB90();
  }
}

uint64_t sub_23E34ED48(void *a1, uint64_t a2, void (*a3)(uint64_t, void *, void))
{
  v4 = a1;
  if (a1)
  {
    [swift_getObjCClassFromMetadata() saveAccount_];
    v5 = [v4 accountID];
    v6 = sub_23E3AA9D0();
    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, v4, 0);
}

void sub_23E34EE84(void *a1, void (*a2)(void, void, void), uint64_t a3)
{
  v7 = sub_23E3A9E90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v61 = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = [ObjCClassFromMetadata sessionManager];
  v21 = [ObjCClassFromMetadata redirectURI];
  if (v21)
  {
    v22 = v21;
    v58 = v3;
    sub_23E3A9E60();

    (*(v8 + 32))(v19, v17, v7);
    v57 = [objc_opt_self() sharedManager];
    sub_23E350638(0, &qword_27E33EC38, 0x277D7C558);
    v59 = v8;
    (*(v8 + 16))(v14, v19, v7);
    v23 = sub_23E34F5A0(v14, 0, 0);
    v63 = [ObjCClassFromMetadata responseType];
    if (!v63)
    {
      sub_23E3AA9D0();
      v63 = sub_23E3AA9B0();
    }

    v24 = sub_23E35035C(ObjCClassFromMetadata);
    v25 = v24;
    v60 = v7;
    v26 = a3;
    if (v24)
    {
      v27 = sub_23E34F674(v24);

      OUTLINED_FUNCTION_0_0();
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      sub_23E350638(0, &unk_27E33EC40, 0x277CCACA8);

      v25 = sub_23E3AAA60();
      v55 = v27;
    }

    else
    {
      OUTLINED_FUNCTION_0_0();
      v28 = swift_allocObject();
      v55 = 0;
      *(v28 + 16) = 0;
    }

    v56 = v19;
    v30 = sub_23E3A9E50();
    v31 = swift_allocObject();
    v32 = v57;
    v31[2] = v28;
    v31[3] = v32;
    v33 = v61;
    v31[4] = v23;
    v31[5] = v33;
    v31[6] = a2;
    v31[7] = v26;
    v69 = sub_23E350438;
    v70 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_23E34FF18;
    v68 = &block_descriptor_0;
    v34 = _Block_copy(&aBlock);

    v35 = v32;
    v36 = v23;

    v37 = [v64 authorizationSessionWithResponseType:v63 scopes:v25 redirectURI:v30 completionHandler:v34];
    _Block_release(v34);

    swift_beginAccess();
    v38 = *(v28 + 16);
    *(v28 + 16) = v37;

    v39 = swift_allocObject();
    *(v39 + 16) = v28;
    *(v39 + 24) = v35;
    v69 = sub_23E3504A0;
    v70 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_23E350258;
    v68 = &block_descriptor_10;
    v40 = _Block_copy(&aBlock);

    v41 = v35;

    v42 = [v36 action];
    if (!v42)
    {
      sub_23E3AA9D0();
      v42 = sub_23E3AA9B0();
    }

    v61 = v36;
    v43 = [v36 URL];
    v44 = v62;
    sub_23E3A9E60();

    sub_23E3A9E70();
    v46 = v45;
    v47 = v60;
    v48 = *(v59 + 8);
    v48(v44, v60);
    if (v46)
    {
      v49 = sub_23E3AA9B0();
    }

    else
    {
      v49 = 0;
    }

    [v41 registerHandler:v40 forIncomingRequestsWithAction:v42 scheme:v49];

    _Block_release(v40);
    v50 = [v58 presentationAnchor];
    if (!v50)
    {
      v48(v56, v47);

LABEL_21:
      return;
    }

    v51 = v50;
    swift_beginAccess();
    v52 = *(v28 + 16);
    if (v52)
    {
      v53 = v52;

      v54 = [v53 authenticationSessionWithPresentationAnchor_];

      if (v54)
      {
        [v54 start];

        v48(v56, v47);

        return;
      }

      v48(v56, v47);

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    a2(0, 0, 0);
    v29 = v64;
  }
}

id sub_23E34F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23E3A9E50();
  if (a3)
  {
    v6 = sub_23E3AA9B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() requestWithURL:v5 fromSourceApplication:v6];

  v8 = sub_23E3A9E90();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_23E34F674(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_23E3AAC30();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_23E3AA9B0();

      sub_23E3AAC10();
      v7 = *(v8 + 16);
      sub_23E3AAC40();
      sub_23E3AAC50();
      sub_23E3AAC20();
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_23E34F738(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void (*a7)(void, void, void *), uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v13 = sub_23E3A9E90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a3 + 16);
  swift_beginAccess();
  *(a3 + 16) = 0;

  v19 = [a5 action];
  if (!v19)
  {
    sub_23E3AA9D0();
    v19 = sub_23E3AA9B0();
  }

  v20 = [a5 URL];
  sub_23E3A9E60();

  sub_23E3A9E70();
  v22 = v21;
  (*(v14 + 8))(v17, v13);
  if (v22)
  {
    v23 = sub_23E3AA9B0();
  }

  else
  {
    v23 = 0;
  }

  [a4 removeHandlerForIncomingRequestsWithAction:v19 scheme:v23];

  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = a1;
    v26 = [ObjCClassFromMetadata accountWithCredential_];
    if ([ObjCClassFromMetadata saveAccount_])
    {
      v27 = swift_allocObject();
      v28 = v37;
      v27[2] = v36;
      v27[3] = v28;
      v27[4] = v26;
      aBlock[4] = sub_23E3504AC;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23E34FEAC;
      aBlock[3] = &block_descriptor_17;
      v29 = _Block_copy(aBlock);

      v30 = v26;

      [v30 refreshWithCompletionHandler_];
      _Block_release(v29);
    }

    else
    {
    }
  }

  else if (a2)
  {
    _s3__C4CodeOMa_0();
    aBlock[0] = 1;
    v31 = a2;
    sub_23E350504(&qword_27E33E658, _s3__C4CodeOMa_0);
    if (sub_23E3A9DC0() & 1) != 0 || (type metadata accessor for Code(), aBlock[0] = 106, v32 = a2, sub_23E350504(&unk_27E33EC50, type metadata accessor for Code), v33 = sub_23E3A9DC0(), a2, (v33))
    {
      v34 = 0;
    }

    else
    {
      v35 = a2;
      v34 = a2;
    }

    v36(0, 0, v34);
  }
}

uint64_t sub_23E34FB4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_23E3AA920();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23E3AA950();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v16 = sub_23E3AAB60();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  aBlock[4] = sub_23E3504F8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_23;
  v18 = _Block_copy(aBlock);

  v19 = a4;

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E350504(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E35054C();
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v15, v11, v18);
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v22);
}

uint64_t sub_23E34FE24(void (*a1)(uint64_t, uint64_t, void), int a2, id a3)
{
  v4 = [a3 accountID];
  v5 = sub_23E3AA9D0();
  v7 = v6;

  a1(v5, v7, 0);
}

void sub_23E34FEAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_23E34FF18(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_23E34FFA4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_23E3A9E90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  swift_beginAccess();
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = v14;
    v16 = [a1 URL];
    sub_23E3A9E60();

    v17 = sub_23E3A9E50();
    v18 = *(v7 + 8);
    v18(v13, v6);
    v19 = [v15 resumeSessionWithURL_];

    if (v19)
    {
      v20 = [a1 action];
      if (!v20)
      {
        sub_23E3AA9D0();
        v20 = sub_23E3AA9B0();
      }

      v21 = [a1 URL];
      sub_23E3A9E60();

      sub_23E3A9E70();
      v23 = v22;
      v18(v11, v6);
      if (v23)
      {
        v24 = sub_23E3AA9B0();
      }

      else
      {
        v24 = 0;
      }

      [a3 removeHandlerForIncomingRequestsWithAction:v20 scheme:v24];

      v15 = v24;
    }
  }
}

id sub_23E3501E4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFAccountAccessResourceUserInterface();
  v5 = objc_msgSendSuper2(&v7, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v5)
  {
  }

  return v5;
}

void sub_23E350258(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_23E350304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAccountAccessResourceUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E35035C(void *a1)
{
  v1 = [a1 scopes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E3AAA70();

  return v3;
}

uint64_t sub_23E3503B4()
{
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E3503E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E350460()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E350504(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E35054C()
{
  result = qword_27E33EAE0;
  if (!qword_27E33EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33F170, &unk_23E3B1610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EAE0);
  }

  return result;
}

uint64_t sub_23E3505B0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E3505EC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E350638(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E350678()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23E3506BC()
{
  result = qword_27E33EC68;
  if (!qword_27E33EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EC68);
  }

  return result;
}

uint64_t sub_23E350740(uint64_t a1, uint64_t a2)
{
  v5 = sub_23E3AA920();
  v6 = OUTLINED_FUNCTION_0(v5);
  v25 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23E3AA950();
  v12 = OUTLINED_FUNCTION_0(v24);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E34DC84();
  v19 = sub_23E3AAB60();
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_23E350F2C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);
  v22 = v2;

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E354210(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v18, v11, v21);
  _Block_release(v21);

  (*(v25 + 8))(v11, v5);
  return (*(v14 + 8))(v18, v24);
}

uint64_t sub_23E350A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAE8, &unk_23E3B17C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for PinboardLoginView();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = a2;
  *(v15 + 1) = a3;
  LOBYTE(v33) = 0;

  sub_23E3AA7B0();
  v16 = *(&v35 + 1);
  v15[16] = v35;
  *(v15 + 3) = v16;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_23E3AA7B0();
  v17 = v36;
  *(v15 + 2) = v35;
  *(v15 + 6) = v17;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_23E3AA7B0();
  v18 = v36;
  *(v15 + 56) = v35;
  *(v15 + 9) = v18;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_23E3AA7B0();
  v19 = v36;
  *(v15 + 5) = v35;
  *(v15 + 12) = v19;
  v20 = *(v12 + 36);
  v21 = sub_23E3A9F80();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);
  sub_23E3544EC(v11, v9, &qword_27E33EAE8, &unk_23E3B17C0);
  sub_23E3AA7B0();
  sub_23E34A698(v11, &qword_27E33EAE8, &unk_23E3B17C0);
  v22 = *(v12 + 40);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v23 = &v15[v22];
  v24 = qword_27E33F950;
  v25 = sub_23E3AA9B0();
  v26 = sub_23E3AA9B0();

  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  v28 = sub_23E3AA9D0();
  v30 = v29;

  *v23 = v28;
  v23[1] = v30;
  sub_23E354210(&qword_27E33ECE0, type metadata accessor for PinboardLoginView);
  sub_23E3AAB90();
  return sub_23E3538F4(v15);
}

id sub_23E350DDC(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFPinboardAccessResourceUserInterface();
  v5 = objc_msgSendSuper2(&v7, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_23E350E94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFPinboardAccessResourceUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E350EEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for PinboardLoginView()
{
  result = qword_27E33ECE8;
  if (!qword_27E33ECE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E350F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PinboardLoginView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v37 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = (v1 + *(v11 + 48));
  v15 = v14[1];
  v40 = *v14;
  v41 = v15;
  v16 = *(v1 + 24);
  LOBYTE(v43) = *(v1 + 16);
  *(&v43 + 1) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7C0();
  if (v42 == 1)
  {
    v37 = v5;
    v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *(v1 + 80);
    v17 = *(v1 + 88);
    v19 = *(v1 + 96);
    *&v43 = v18;
    *(&v43 + 1) = v17;
    v44 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
    sub_23E3AA7C0();
    v20 = v42;

    v21 = HIBYTE(*(&v20 + 1)) & 0xFLL;
    if ((*(&v20 + 1) & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      *&v43 = v18;
      *(&v43 + 1) = v17;
      v44 = v19;
      sub_23E3AA7C0();
      v43 = v42;
      *&v42 = 58;
      *(&v42 + 1) = 0xE100000000000000;
      sub_23E349C74();
      v22 = sub_23E3AABD0();
    }

    else
    {
      v22 = 0;
    }

    v5 = v37;
    v8 = v38;
  }

  else
  {
    v23 = *(v1 + 48);
    v43 = *(v1 + 32);
    v44 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
    sub_23E3AA7C0();
    v24 = v42;

    v25 = HIBYTE(*(&v24 + 1)) & 0xFLL;
    if ((*(&v24 + 1) & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = *(v1 + 72);
      v43 = *(v1 + 56);
      v44 = v26;
      sub_23E3AA7C0();
      v27 = v42;

      v28 = HIBYTE(*(&v27 + 1)) & 0xFLL;
      if ((*(&v27 + 1) & 0x2000000000000000) == 0)
      {
        v28 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v22 = v28 != 0;
    }

    else
    {
      v22 = 0;
    }
  }

  sub_23E353C7C(v2, v13);
  v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v30 = swift_allocObject();
  sub_23E353CE0(v13, v30 + v29);
  v31 = v39;
  sub_23E353C7C(v2, v39);
  v32 = swift_allocObject();
  sub_23E353CE0(v31, v32 + v29);
  sub_23E353C7C(v2, v8);
  v33 = swift_allocObject();
  sub_23E353CE0(v8, v33 + v29);
  LOBYTE(v42) = 0;
  result = sub_23E3AA7B0();
  v35 = v43;
  v36 = *(&v43 + 1);
  *a1 = v40;
  *(a1 + 8) = v41;
  *(a1 + 16) = v22 & 1;
  *(a1 + 17) = 0;
  *(a1 + 24) = sub_23E353D44;
  *(a1 + 32) = v30;
  *(a1 + 40) = sub_23E353D60;
  *(a1 + 48) = v32;
  *(a1 + 56) = &unk_23E3B1850;
  *(a1 + 64) = v33;
  *(a1 + 72) = v35;
  *(a1 + 80) = v36;
  return result;
}

uint64_t sub_23E351364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB30, &qword_23E3B16B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED50, &qword_23E3B1880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_23E351534(a1, (&v12 - v8));
  v10 = *(type metadata accessor for PinboardLoginView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
  sub_23E3AA7E0();
  sub_23E3A9F80();
  sub_23E354160();
  sub_23E354210(&unk_27E33EB60, MEMORY[0x277D7D2C8]);
  sub_23E3AA6D0();
  sub_23E34A698(v5, &qword_27E33EB30, &qword_23E3B16B8);
  return sub_23E34A698(v9, &qword_27E33ED50, &qword_23E3B1880);
}

uint64_t sub_23E351534@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v103 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB48, &unk_23E3B16D0);
  v3 = *(*(v102 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v102);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v88 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED70, &qword_23E3B1898);
  v9 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v101 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB40, &qword_23E3B16C8);
  v93 = *(v18 - 8);
  v94 = v18;
  v19 = *(v93 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v89 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v88 = &v88 - v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED78, &qword_23E3B18A0);
  v23 = *(*(v97 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v97);
  v26 = (&v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v90 = &v88 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED80, &qword_23E3B18A8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v100 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v98 = &v88 - v32;
  v33 = type metadata accessor for PinboardLoginView();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E353C7C(a1, v36);
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v92 = v35;
  v96 = swift_allocObject();
  v91 = v37;
  sub_23E353CE0(v36, v96 + v37);
  v38 = *(a1 + 16);
  v95 = a1;
  v39 = *(a1 + 24);
  LOBYTE(v105) = v38;
  v106 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7C0();
  if (v104 == 1)
  {
    sub_23E3AAA00();
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v40 = qword_27E33F950;
    v41 = sub_23E3AA9B0();
    v42 = sub_23E3AA9B0();

    v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

    v44 = sub_23E3AA9D0();
    v89 = v45;

    sub_23E3AAA00();
    v46 = sub_23E3AA9B0();
    v47 = sub_23E3AA9B0();

    v48 = [v40 localizedStringForKey:v46 value:v47 table:0];

    v49 = sub_23E3AA9D0();
    v51 = v50;

    v105 = v49;
    v106 = v51;
    sub_23E3A9E80();
    v52 = sub_23E3A9E90();
    result = __swift_getEnumTagSinglePayload(v17, 1, v52);
    if (result != 1)
    {
      sub_23E349C74();
      v54 = v88;
      sub_23E3AA5C0();
      sub_23E353C7C(v95, v36);
      v55 = v91;
      v56 = swift_allocObject();
      sub_23E353CE0(v36, v56 + v55);
      v57 = v89;
      *v26 = v44;
      v26[1] = v57;
      v58 = v97;
      (*(v93 + 32))(v26 + *(v97 + 52), v54, v94);
      v59 = (v26 + *(v58 + 56));
      *v59 = sub_23E354400;
      v59[1] = v56;
      v60 = &qword_27E33ED78;
      v61 = &qword_23E3B18A0;
      v62 = v90;
      sub_23E35449C(v26, v90, &qword_27E33ED78, &qword_23E3B18A0);
      sub_23E3544EC(v62, v101, &qword_27E33ED78, &qword_23E3B18A0);
      swift_storeEnumTagMultiPayload();
      sub_23E34A09C(&qword_27E33ED88, &qword_27E33ED78, &qword_23E3B18A0);
      sub_23E34A09C(&qword_27E33ED90, &qword_27E33EB48, &unk_23E3B16D0);
      v63 = v98;
      sub_23E3AA480();
      v64 = v62;
LABEL_10:
      sub_23E34A698(v64, v60, v61);
      v84 = v100;
      sub_23E3544EC(v63, v100, &qword_27E33ED80, &qword_23E3B18A8);
      v85 = v103;
      *v103 = 0;
      v85[1] = 0;
      v86 = v96;
      v85[2] = sub_23E354258;
      v85[3] = v86;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED98, &unk_23E3B18B0);
      sub_23E3544EC(v84, v85 + *(v87 + 48), &qword_27E33ED80, &qword_23E3B18A8);

      sub_23E34A698(v63, &qword_27E33ED80, &qword_23E3B18A8);
      sub_23E34A698(v84, &qword_27E33ED80, &qword_23E3B18A8);
    }

    __break(1u);
  }

  else
  {
    v88 = v8;
    sub_23E3AAA00();
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v65 = qword_27E33F950;
    v66 = sub_23E3AA9B0();
    v67 = sub_23E3AA9B0();

    v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

    v90 = sub_23E3AA9D0();
    v70 = v69;

    sub_23E3AAA00();
    v71 = sub_23E3AA9B0();
    v72 = sub_23E3AA9B0();

    v73 = [v65 localizedStringForKey:v71 value:v72 table:0];

    v74 = sub_23E3AA9D0();
    v76 = v75;

    v105 = v74;
    v106 = v76;
    sub_23E3A9E80();
    v77 = sub_23E3A9E90();
    result = __swift_getEnumTagSinglePayload(v15, 1, v77);
    if (result != 1)
    {
      sub_23E349C74();
      v78 = v89;
      sub_23E3AA5C0();
      sub_23E353C7C(v95, v36);
      v79 = v91;
      v80 = swift_allocObject();
      sub_23E353CE0(v36, v80 + v79);
      *v6 = v90;
      *(v6 + 1) = v70;
      v81 = v102;
      (*(v93 + 32))(&v6[*(v102 + 52)], v78, v94);
      v82 = &v6[*(v81 + 56)];
      *v82 = sub_23E354270;
      v82[1] = v80;
      v60 = &qword_27E33EB48;
      v61 = &unk_23E3B16D0;
      v83 = v88;
      sub_23E35449C(v6, v88, &qword_27E33EB48, &unk_23E3B16D0);
      sub_23E3544EC(v83, v101, &qword_27E33EB48, &unk_23E3B16D0);
      swift_storeEnumTagMultiPayload();
      sub_23E34A09C(&qword_27E33ED88, &qword_27E33ED78, &qword_23E3B18A0);
      sub_23E34A09C(&qword_27E33ED90, &qword_27E33EB48, &unk_23E3B16D0);
      v63 = v98;
      sub_23E3AA480();
      v64 = v83;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E351FCC(uint64_t a1)
{
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v2 = qword_27E33F950;
  v3 = sub_23E3AA9B0();
  v4 = sub_23E3AA9B0();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_23E3AA9D0();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7E0();
  sub_23E349C74();
  return sub_23E3AA830();
}

uint64_t sub_23E352128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDA0, &qword_23E3B1C80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v7 = qword_27E33F950;
  v8 = sub_23E3AA9B0();
  v9 = sub_23E3AA9B0();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_23E3AA9D0();
  v13 = v12;

  v14 = *(a1 + 96);
  v17 = *(a1 + 80);
  v18 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7E0();
  v16[1] = v11;
  v16[2] = v13;
  sub_23E349C74();
  sub_23E3AA910();
  sub_23E34A09C(&unk_27E33EB90, &unk_27E33EDA0, &qword_23E3B1C80);
  sub_23E3AA6A0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23E3523B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDB0, &unk_23E3B18C0);
  v3 = *(*(v66 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v66);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EB70, &unk_23E3B16E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDC0, &unk_23E3B18D0);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EB80, &qword_23E3B16F0);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = &v59 - v19;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v20 = qword_27E33F950;
  v60 = qword_27E33F950;
  v21 = sub_23E3AA9B0();
  v22 = sub_23E3AA9B0();

  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = sub_23E3AA9D0();
  v26 = v25;

  v27 = *(a1 + 48);
  v73 = *(a1 + 32);
  v74 = v27;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7E0();
  v28 = a1;
  v71 = v24;
  v72 = v26;
  sub_23E349C74();
  sub_23E3AA910();
  v29 = *MEMORY[0x277D76FB8];
  KeyPath = swift_getKeyPath();
  v31 = sub_23E3AA9D0();
  v32 = &v10[*(v7 + 36)];
  *v32 = KeyPath;
  v32[1] = v31;
  v32[2] = v33;
  v34 = sub_23E34E70C();
  sub_23E3AA650();
  sub_23E34A698(v10, &unk_27E33EB70, &unk_23E3B16E0);
  v71 = v7;
  v72 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v70;
  v36 = v62;
  sub_23E3AA6A0();
  (*(v61 + 8))(v14, v36);
  sub_23E3AAA00();
  v37 = sub_23E3AA9B0();
  v38 = sub_23E3AA9B0();

  v39 = [v60 localizedStringForKey:v37 value:v38 table:0];

  v40 = sub_23E3AA9D0();
  v42 = v41;

  v43 = *(v28 + 72);
  v73 = *(v28 + 56);
  v74 = v43;
  sub_23E3AA7E0();
  v71 = v40;
  v72 = v42;
  v44 = v67;
  sub_23E3AA140();
  v45 = *MEMORY[0x277D77030];
  v46 = swift_getKeyPath();
  v47 = sub_23E3AA9D0();
  v48 = v65;
  v49 = (v44 + *(v66 + 36));
  *v49 = v46;
  v49[1] = v47;
  v49[2] = v50;
  v52 = v63;
  v51 = v64;
  v53 = *(v64 + 16);
  v53(v63, v35, v48);
  v54 = v69;
  sub_23E3544EC(v44, v69, &unk_27E33EDB0, &unk_23E3B18C0);
  v55 = v68;
  v53(v68, v52, v48);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EBB0, &qword_23E3B1738);
  sub_23E3544EC(v54, &v55[*(v56 + 48)], &unk_27E33EDB0, &unk_23E3B18C0);
  sub_23E34A698(v44, &unk_27E33EDB0, &unk_23E3B18C0);
  v57 = *(v51 + 8);
  v57(v70, v48);
  sub_23E34A698(v54, &unk_27E33EDB0, &unk_23E3B18C0);
  return (v57)(v52, v48);
}

uint64_t sub_23E352A24(uint64_t a1)
{
  v2 = sub_23E3A9F80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23E3AA720();
}

uint64_t sub_23E352AF0()
{
  v0[2] = sub_23E3AAAC0();
  v0[3] = sub_23E3AAAB0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23E352B9C;

  return sub_23E352CD4();
}

uint64_t sub_23E352B9C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E34C4FC, v5, v4);
}

uint64_t sub_23E352CD4()
{
  v1[71] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAE8, &unk_23E3B17C0) - 8) + 64) + 15;
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED30, &qword_23E3B1860) - 8) + 64) + 15;
  v1[74] = swift_task_alloc();
  sub_23E3AAAC0();
  v1[75] = sub_23E3AAAB0();
  v5 = sub_23E3AAA80();
  v1[76] = v5;
  v1[77] = v4;

  return MEMORY[0x2822009F8](sub_23E352DEC, v5, v4);
}

uint64_t sub_23E352DEC()
{
  v1 = *(v0 + 568);
  v2 = [objc_allocWithZone(MEMORY[0x277CE8860]) init];
  *(v0 + 624) = v2;
  v3 = *(v1 + 16);
  *(v0 + 658) = v3;
  v4 = *(v1 + 24);
  *(v0 + 632) = v4;
  *(v0 + 360) = v3;
  *(v0 + 368) = v4;
  *(v0 + 640) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7C0();
  if (*(v0 + 657) == 1)
  {
    v5 = *(v0 + 568);
    v6 = *(v5 + 80);
    v7 = *(v5 + 96);
    *(v0 + 168) = v6;
    v8 = (v0 + 552);
    *(v0 + 184) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
    sub_23E3AA7C0();
    v9 = &selRef_setApiToken_;
    v10 = 560;
  }

  else
  {
    v11 = *(v0 + 568);
    v12 = *(v11 + 48);
    *(v0 + 192) = *(v11 + 32);
    *(v0 + 208) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
    sub_23E3AA7C0();
    sub_23E34E5A0(*(v0 + 520), *(v0 + 528), v2, &selRef_setUsername_);
    v13 = *(v11 + 72);
    *(v0 + 240) = *(v11 + 56);
    v8 = (v0 + 456);
    *(v0 + 256) = v13;
    sub_23E3AA7C0();
    v9 = &selRef_setPassword_;
    v10 = 464;
  }

  sub_23E34E5A0(*v8, *(v0 + v10), v2, v9);
  v14 = *(v0 + 592);
  *(v0 + 16) = v0;
  *(v0 + 56) = v14;
  *(v0 + 24) = sub_23E353044;
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED38, &qword_23E3B1868);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23E3536DC;
  *(v0 + 104) = &block_descriptor_19;
  *(v0 + 112) = v15;
  [v2 getModifiedDateWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23E353044()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 648) = v3;
  v4 = *(v1 + 616);
  v5 = *(v1 + 608);
  if (v3)
  {
    v6 = sub_23E353590;
  }

  else
  {
    v6 = sub_23E353170;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23E353170()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 658);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);

  sub_23E34A698(v5, &qword_27E33ED30, &qword_23E3B1860);
  *(v0 + 424) = v3;
  *(v0 + 432) = v2;
  sub_23E3AA7C0();
  if (*(v0 + 656) != 1)
  {
    v23 = *(v0 + 568);
    v24 = [objc_opt_self() workflowUserDefaults];
    v25 = *(v23 + 32);
    v26 = *(v23 + 40);
    v27 = *(v23 + 48);
    *(v0 + 336) = v25;
    *(v0 + 344) = v26;
    *(v0 + 352) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
    sub_23E3AA7C0();
    v28 = *(v0 + 376);
    v29 = *(v0 + 384);
    v30 = sub_23E3AA9B0();

    [v24 setObject:v30 forKey:*MEMORY[0x277CE88E8]];

    *(v0 + 144) = v25;
    *(v0 + 152) = v26;
    *(v0 + 160) = v27;
    sub_23E3AA7C0();
    v31 = *(v0 + 392);
    v32 = *(v0 + 400);
    v33 = sub_23E3AA9B0();

    v34 = OUTLINED_FUNCTION_6_1();
    WFPinboardStoreSecretForUsername();

    *(v0 + 312) = v25;
    *(v0 + 320) = v26;
    *(v0 + 328) = v27;
    sub_23E3AA7C0();
    v35 = *(v0 + 408);
    v36 = *(v0 + 416);
    v37 = sub_23E3AA9B0();

    v38 = *(v23 + 72);
    *(v0 + 288) = *(v23 + 56);
    *(v0 + 304) = v38;
    sub_23E3AA7C0();
    v39 = *(v0 + 440);
    v40 = *(v0 + 448);
    v21 = sub_23E3AA9B0();

    v22 = OUTLINED_FUNCTION_3_1();
    WFPinboardStoreSecretForUsername();

    goto LABEL_5;
  }

  v6 = *(v0 + 568);
  v7 = v6[10];
  v8 = v6[11];
  v9 = v6[12];
  *(v0 + 264) = v7;
  *(v0 + 272) = v8;
  *(v0 + 280) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7C0();
  v10 = *(v0 + 480);
  *(v0 + 488) = *(v0 + 472);
  *(v0 + 496) = v10;
  *(v0 + 504) = 58;
  *(v0 + 512) = 0xE100000000000000;
  sub_23E349C74();
  v11 = sub_23E3AABC0();

  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];

    v14 = [objc_opt_self() workflowUserDefaults];
    v15 = sub_23E3AA9B0();
    [v14 setObject:v15 forKey:*MEMORY[0x277CE88E8]];

    v16 = sub_23E3AA9B0();
    *(v0 + 216) = v7;
    *(v0 + 224) = v8;
    *(v0 + 232) = v9;
    sub_23E3AA7C0();
    v17 = *(v0 + 536);
    v18 = *(v0 + 544);
    v19 = sub_23E3AA9B0();

    v20 = OUTLINED_FUNCTION_6_1();
    WFPinboardStoreSecretForUsername();

    v21 = sub_23E3AA9B0();

    v22 = OUTLINED_FUNCTION_3_1();
    WFPinboardStoreSecretForUsername();
LABEL_5:
    v41 = *(v0 + 624);
    v42 = *(v0 + 568);

    v43 = *(v42 + 8);
    (*v42)(1, 0);

    goto LABEL_6;
  }

LABEL_6:
  v44 = *(v0 + 592);
  v45 = *(v0 + 584);
  v46 = *(v0 + 576);

  OUTLINED_FUNCTION_19();

  return v47();
}

uint64_t sub_23E353590()
{
  v1 = v0[81];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];

  swift_willThrow();

  sub_23E3A9E30();
  sub_23E3A9F90();
  v7 = sub_23E3A9F80();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  v8 = *(type metadata accessor for PinboardLoginView() + 36);
  sub_23E3544EC(v4, v5, &qword_27E33EAE8, &unk_23E3B17C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
  sub_23E3AA7D0();

  sub_23E34A698(v4, &qword_27E33EAE8, &unk_23E3B17C0);
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];

  OUTLINED_FUNCTION_19();

  return v12();
}

uint64_t sub_23E3536DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED30, &qword_23E3B1860);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_23E35380C(v13, a3);
  }

  if (a2)
  {
    sub_23E3A9EA0();
    v15 = sub_23E3A9EB0();
    v16 = 0;
  }

  else
  {
    v15 = sub_23E3A9EB0();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v16, 1, v15);
  sub_23E3540F0(v10, v12);
  return sub_23E353878(v13, v12);
}

uint64_t sub_23E35380C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED40, &unk_23E3B1870);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_23E353878(uint64_t a1, uint64_t a2)
{
  sub_23E3540F0(a2, *(*(a1 + 64) + 40));

  return MEMORY[0x282200950](a1);
}

uint64_t sub_23E3538F4(uint64_t a1)
{
  v2 = type metadata accessor for PinboardLoginView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E353950()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E35399C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E353A44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E353AD0()
{
  sub_23E3496A8();
  if (v0 <= 0x3F)
  {
    sub_23E353BB0(319, &qword_27E33ED00);
    if (v1 <= 0x3F)
    {
      sub_23E353BB0(319, &qword_27E33EB20);
      if (v2 <= 0x3F)
      {
        sub_23E353BFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23E353BB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23E3AA7F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23E353BFC()
{
  if (!qword_27E33ED10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33EAE8, &unk_23E3B17C0);
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33ED10);
    }
  }
}

uint64_t sub_23E353C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinboardLoginView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E353CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinboardLoginView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E353D60()
{
  v1 = *(type metadata accessor for PinboardLoginView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)(0, 0);
}

uint64_t sub_23E353DCC()
{
  OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for PinboardLoginView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_23E353E94;

  return sub_23E352AF0();
}

uint64_t sub_23E353E94()
{
  OUTLINED_FUNCTION_21();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23E353F80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E3AA2A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E353FAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23E3AA2B0();
}

uint64_t sub_23E353FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23E3540F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33ED30, &qword_23E3B1860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E354160()
{
  result = qword_27E33ED58;
  if (!qword_27E33ED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33ED50, &qword_23E3B1880);
    sub_23E34A09C(&qword_27E33ED60, &qword_27E33ED68, &unk_23E3B1888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33ED58);
  }

  return result;
}

uint64_t sub_23E354210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for PinboardLoginView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 88);

  v12 = *(v0 + v3 + 96);

  v13 = v0 + v3 + *(v1 + 36);
  v14 = sub_23E3A9F80();
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v15 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620) + 28));

  v16 = *(v0 + v3 + *(v1 + 40) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E354418(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PinboardLoginView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23E35449C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_23E3544EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_1_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_23E35453C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E3AA2A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_23E3AA9B0();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_23E3AA9B0();
}

void sub_23E354628(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_23E3AA920();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E3AA950();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v15 = objc_opt_self();
  v28 = a2;
  _Block_copy(a2);
  v16 = [v15 evernoteSession];
  if ([v16 isAuthenticated])
  {
    v17 = v28;
    v28[2](v28, 1, 0);

    _Block_release(v17);
  }

  else
  {
    [v16 setAuthenticator_];
    sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
    v27 = sub_23E3AAB60();
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = v16;
    v18[4] = sub_23E34DE60;
    v18[5] = v14;
    aBlock[4] = sub_23E354E28;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E364C0C;
    aBlock[3] = &block_descriptor_2;
    v19 = _Block_copy(aBlock);
    v26 = v9;
    v24 = v19;
    v20 = a1;
    v25 = v16;

    sub_23E3AA940();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23E354E8C(&qword_27E33EAD0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
    sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
    sub_23E3AABF0();
    v21 = v24;
    v22 = v27;
    MEMORY[0x23EF08800](0, v13, v8, v24);
    _Block_release(v21);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v26);

    _Block_release(v28);
  }
}

uint64_t sub_23E354A38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v7 = type metadata accessor for EvernoteWebView.LoadingState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = type metadata accessor for EvernoteWebView(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a2;
  v19 = *(v16 + 20);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  __swift_storeEnumTagSinglePayload(v13, 1, 2, v20);
  sub_23E356DF4(v13, v11, type metadata accessor for EvernoteWebView.LoadingState);
  v21 = a2;
  sub_23E3AA7B0();
  sub_23E354ED4(v13, type metadata accessor for EvernoteWebView.LoadingState);
  v22 = (v18 + *(v14 + 24));
  *v22 = a3;
  v22[1] = a4;
  sub_23E354E8C(&qword_27E33EE70, type metadata accessor for EvernoteWebView);

  sub_23E3AAB90();
  return sub_23E354ED4(v18, type metadata accessor for EvernoteWebView);
}

id sub_23E354C98(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFEvernoteAccessResourceUserInterface();
  v5 = objc_msgSendSuper2(&v7, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_23E354D50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEvernoteAccessResourceUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E354DA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E354DE0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E354E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E354ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23E354F40(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E354FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E355074()
{
  sub_23E350638(319, &qword_27E33EE98, 0x277CE87D8);
  if (v0 <= 0x3F)
  {
    sub_23E355120();
    if (v1 <= 0x3F)
    {
      sub_23E3496A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E355120()
{
  if (!qword_27E33EEA0)
  {
    type metadata accessor for EvernoteWebView.LoadingState(255);
    v0 = sub_23E3AA7F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33EEA0);
    }
  }
}

uint64_t sub_23E35518C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E3551F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_23E355260()
{
  sub_23E3552B8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_23E3552B8()
{
  if (!qword_27E33EEC0)
  {
    sub_23E3A9E90();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33EEC8, "t2");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E33EEC0);
    }
  }
}

uint64_t sub_23E35535C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EvernoteWebView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v10 = qword_27E33F950;
  v11 = sub_23E3AA9B0();
  v12 = sub_23E3AA9B0();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v22 = sub_23E3AA9D0();
  v15 = v14;

  sub_23E356DF4(v1, v9, type metadata accessor for EvernoteWebView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_23E356E58(v9, v17 + v16);
  sub_23E356DF4(v1, v7, type metadata accessor for EvernoteWebView);
  v18 = swift_allocObject();
  sub_23E356E58(v7, v18 + v16);
  v23 = 0;
  result = sub_23E3AA7B0();
  v20 = v24;
  v21 = v25;
  *a1 = v22;
  *(a1 + 8) = v15;
  *(a1 + 16) = 257;
  *(a1 + 24) = sub_23E356EBC;
  *(a1 + 32) = v17;
  *(a1 + 40) = sub_23E35706C;
  *(a1 + 48) = v18;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  return result;
}

uint64_t sub_23E3555DC@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v61 = type metadata accessor for WebView(0);
  v2 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23E3A9E90();
  v50 = *(v52 - 8);
  v4 = *(v50 + 64);
  v5 = MEMORY[0x28223BE20](v52);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EED0, &unk_23E3B19D8);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v48 - v9;
  v10 = type metadata accessor for EvernoteWebView(0);
  v11 = v10 - 8;
  v55 = *(v10 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  *&v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4D0, &qword_23E3B1490);
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v53);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EEE0, &qword_23E3B19E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33FA20, &qword_23E3B19F0);
  v21 = *(*(v57 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v57);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - v25;
  v27 = type metadata accessor for EvernoteWebView.LoadingState(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v11 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958);
  v54 = v1;
  sub_23E3AA7C0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  if (__swift_getEnumTagSinglePayload(v30, 2, v32))
  {
    sub_23E3AA180();
    sub_23E3AA8E0();
    sub_23E3AA270();
    (*(v13 + 32))(v20, v16, v53);
    memcpy(&v20[*(v17 + 36)], __src, 0x70uLL);
    v33 = v56;
    sub_23E356DF4(v54, v56, type metadata accessor for EvernoteWebView);
    v34 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v35 = swift_allocObject();
    sub_23E356E58(v33, v35 + v34);
    sub_23E35743C(v20, v24, &unk_27E33EEE0, &qword_23E3B19E8);
    v36 = &v24[*(v57 + 36)];
    *v36 = sub_23E3573C0;
    v36[1] = v35;
    v36[2] = 0;
    v36[3] = 0;
    sub_23E35743C(v24, v26, &unk_27E33FA20, &qword_23E3B19F0);
    sub_23E35749C(v26, v59);
    swift_storeEnumTagMultiPayload();
    sub_23E35727C();
    sub_23E354E8C(&qword_27E33FA40, type metadata accessor for WebView);
    sub_23E3AA480();
    return sub_23E34A698(v26, &unk_27E33FA20, &qword_23E3B19F0);
  }

  else
  {
    v38 = &v30[*(v32 + 48)];
    v39 = *v38;
    v40 = *(v38 + 1);
    v41 = v50;
    v42 = *(v50 + 32);
    v56 = *&v30[*(v32 + 64)];
    v43 = v49;
    v44 = v52;
    v42(v49, v30, v52);
    (*(v41 + 16))(v48, v43, v44);
    v45 = v51;
    sub_23E3A9D90();
    v46 = swift_allocObject();
    *(v46 + 16) = v39;
    *(v46 + 24) = v40;
    *(v46 + 32) = v56;
    v47 = (v45 + *(v61 + 20));
    *v47 = &unk_23E3B1A00;
    v47[1] = v46;
    sub_23E356DF4(v45, v59, type metadata accessor for WebView);
    swift_storeEnumTagMultiPayload();
    sub_23E35727C();
    sub_23E354E8C(&qword_27E33FA40, type metadata accessor for WebView);
    sub_23E3AA480();
    sub_23E354ED4(v45, type metadata accessor for WebView);
    return (*(v41 + 8))(v43, v44);
  }
}

uint64_t sub_23E355D4C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for EvernoteWebView(0) + 24);
  v2 = *(v1 + 8);
  return (*v1)(0, 0);
}

uint64_t sub_23E355D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = sub_23E3A9DB0();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = sub_23E3A9E90();
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  sub_23E3AAAC0();
  v5[18] = sub_23E3AAAB0();
  v14 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E355F20, v14, v13);
}

uint64_t sub_23E355F20()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 48);

  v8 = [v7 request];
  sub_23E3A9D80();

  sub_23E3A9DA0();
  (*(v5 + 8))(v3, v4);
  if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
  {
    sub_23E34A698(*(v0 + 88), &qword_27E33EB38, &qword_23E3B16C0);
  }

  else
  {
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 88), *(v0 + 120));
    *(v0 + 16) = sub_23E3A9E40();
    *(v0 + 24) = v11;
    *(v0 + 32) = v10;
    *(v0 + 40) = v9;
    sub_23E35792C();
    sub_23E357980();
    v12 = sub_23E3AA990();

    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    if (v12)
    {
      v16 = *(v0 + 80);
      (*(v0 + 72))(*(v0 + 136));
      (*(v14 + 8))(v13, v15);
      v17 = 0;
      goto LABEL_7;
    }

    (*(v14 + 8))(*(v0 + 136), *(v0 + 120));
  }

  v17 = 1;
LABEL_7:
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(v17);
}

void sub_23E35610C(void **a1)
{
  v2 = type metadata accessor for EvernoteWebView(0);
  v3 = v2 - 8;
  v25 = *(v2 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = type metadata accessor for EvernoteWebView.LoadingState(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958);
  sub_23E3AA7C0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 2, v16);
  sub_23E354ED4(v14, type metadata accessor for EvernoteWebView.LoadingState);
  if (EnumTagSinglePayload == 1)
  {
    __swift_storeEnumTagSinglePayload(v12, 2, 2, v16);
    sub_23E356DF4(v12, v9, type metadata accessor for EvernoteWebView.LoadingState);
    sub_23E3AA7D0();
    sub_23E354ED4(v12, type metadata accessor for EvernoteWebView.LoadingState);
    v18 = *a1;
    sub_23E356DF4(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EvernoteWebView);
    v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v20 = swift_allocObject();
    sub_23E356E58(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    v30 = sub_23E35750C;
    v31 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_23E356B04;
    v29 = &block_descriptor_33;
    v21 = _Block_copy(&aBlock);

    sub_23E356DF4(a1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EvernoteWebView);
    v22 = swift_allocObject();
    sub_23E356E58(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19);
    v30 = sub_23E35759C;
    v31 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_23E34FEAC;
    v29 = &block_descriptor_39;
    v23 = _Block_copy(&aBlock);

    [v18 authenticateWithAuthorizationBlock:v21 preferRegistration:0 completion:v23];
    _Block_release(v23);
    _Block_release(v21);
  }
}

uint64_t sub_23E3564A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v42 = sub_23E3AA920();
  v45 = *(v42 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E3AA950();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E3A9E90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EvernoteWebView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E350638(0, &qword_27E33F160, 0x277D85C78);
  v36 = sub_23E3AAB60();
  sub_23E356DF4(v35, v20, type metadata accessor for EvernoteWebView);
  (*(v14 + 16))(v16, a1, v13);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = (v19 + *(v14 + 80) + v21) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_23E356E58(v20, v24 + v21);
  (*(v14 + 32))(v24 + v22, v16, v13);
  v25 = (v24 + v23);
  v26 = v38;
  *v25 = v37;
  v25[1] = v26;
  v27 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  v28 = v40;
  *v27 = v39;
  v27[1] = v28;
  aBlock[4] = sub_23E357820;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E364C0C;
  aBlock[3] = &block_descriptor_48;
  v29 = _Block_copy(aBlock);

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E354E8C(&qword_27E33EAD0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E34A09C(&qword_27E33EAE0, &unk_27E33F170, &unk_23E3B1610);
  v31 = v41;
  v30 = v42;
  sub_23E3AABF0();
  v32 = v36;
  MEMORY[0x23EF08800](0, v12, v31, v29);
  _Block_release(v29);

  (*(v45 + 8))(v31, v30);
  return (*(v43 + 8))(v12, v44);
}

uint64_t sub_23E356950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a1;
  v11 = type metadata accessor for EvernoteWebView.LoadingState(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  v19 = &v17[*(v18 + 48)];
  v20 = &v17[*(v18 + 64)];
  v21 = sub_23E3A9E90();
  (*(*(v21 - 8) + 16))(v17, a2, v21);
  *v19 = a3;
  *(v19 + 1) = a4;
  *v20 = a5;
  *(v20 + 1) = a6;
  __swift_storeEnumTagSinglePayload(v17, 0, 2, v18);
  LODWORD(v20) = *(type metadata accessor for EvernoteWebView(0) + 20);
  sub_23E356DF4(v17, v15, type metadata accessor for EvernoteWebView.LoadingState);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958);
  sub_23E3AA7D0();
  return sub_23E354ED4(v17, type metadata accessor for EvernoteWebView.LoadingState);
}

uint64_t sub_23E356B04(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_23E3A9E90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_23E3A9E60();
  v13 = sub_23E3AA9D0();
  v15 = v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  v12(v10, v13, v15, sub_23E3575FC, v17);

  return (*(v7 + 8))(v10, v6);
}

void sub_23E356C7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E3A9E50();
  (*(a2 + 16))(a2, v3);
}

void sub_23E356CD8(void *a1, uint64_t a2)
{
  if (a1)
  {
    _s3__C4CodeOMa_1();
    v4 = a1;
    sub_23E354E8C(&unk_27E33EF00, _s3__C4CodeOMa_1);
    v5 = 0;
    if ((sub_23E3A9DC0() & 1) == 0)
    {
      v6 = a1;
      v7 = a1;
      v5 = a1;
    }

    v8 = a2 + *(type metadata accessor for EvernoteWebView(0) + 24);
    v9 = *(v8 + 8);
    (*v8)(0, v5);
  }

  else
  {
    v10 = a2 + *(type metadata accessor for EvernoteWebView(0) + 24);
    v11 = *(v10 + 8);
    (*v10)(1, 0);
  }
}

uint64_t sub_23E356DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23E356E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EvernoteWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E356EBC@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_3_2();
  return sub_23E3555DC(a1);
}

uint64_t objectdestroy_16Tm()
{
  v2 = type metadata accessor for EvernoteWebView(0);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);

  v8 = v1 + v5 + *(v0 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  if (!__swift_getEnumTagSinglePayload(v8, 2, v9))
  {
    v10 = sub_23E3A9E90();
    OUTLINED_FUNCTION_13(v10);
    (*(v11 + 8))(v8);
    v12 = *(v8 + *(v9 + 48) + 8);

    v13 = *(v8 + *(v9 + 64) + 8);
  }

  v14 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958) + 28));

  v15 = *(v1 + v5 + *(v0 + 24) + 8);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_23E357084()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E3570C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E357180;

  return sub_23E355D90(a1, v4, v5, v7, v6);
}

uint64_t sub_23E357180(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_23E35727C()
{
  result = qword_27E33EEF0;
  if (!qword_27E33EEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33FA20, &qword_23E3B19F0);
    sub_23E357308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EEF0);
  }

  return result;
}

unint64_t sub_23E357308()
{
  result = qword_27E33FA30;
  if (!qword_27E33FA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33EEE0, &qword_23E3B19E8);
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33FA30);
  }

  return result;
}

uint64_t sub_23E3573D8(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_1_1();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_3_2();

  return a1(v1 + v4);
}

uint64_t sub_23E35743C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23E35749C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33FA20, &qword_23E3B19F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E35750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_1();
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_3_2();

  return sub_23E3564A4(a1, a2, a3, a4, a5, v5 + v13);
}

void sub_23E35759C(void *a1)
{
  OUTLINED_FUNCTION_1_1();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_3_2();

  sub_23E356CD8(a1, v1 + v5);
}

uint64_t sub_23E357604()
{
  v2 = type metadata accessor for EvernoteWebView(0);
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v25 = *(v6 + 64);
  v7 = sub_23E3A9E90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v24 = *(v8 + 64);
  v10 = v1 + v5;

  v26 = v0;
  v11 = v1 + v5 + *(v0 + 20);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EE68, "d2");
  if (!__swift_getEnumTagSinglePayload(v11, 2, v12))
  {
    (*(v8 + 8))(v11, v7);
    v13 = *(v11 + *(v12 + 48) + 8);

    v14 = *(v11 + *(v12 + 64) + 8);
  }

  v15 = (v5 + v25 + v9) & ~v9;
  v16 = (v24 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v7;
  v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EE78, &qword_23E3B1958) + 28));

  v20 = *(v10 + *(v26 + 24) + 8);

  (*(v8 + 8))(v1 + v15, v17);
  v21 = *(v1 + v16 + 8);

  v22 = *(v1 + v18 + 8);

  return MEMORY[0x2821FE8E8](v1, v18 + 16, v4 | v9 | 7);
}

uint64_t sub_23E357820()
{
  v1 = *(type metadata accessor for EvernoteWebView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_23E3A9E90() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);

  return sub_23E356950(v0 + v2, v0 + v5, v9, v10, v11, v12);
}

unint64_t sub_23E35792C()
{
  result = qword_27E33EF10;
  if (!qword_27E33EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EF10);
  }

  return result;
}

unint64_t sub_23E357980()
{
  result = qword_27E33EF18;
  if (!qword_27E33EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EF18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_1()
{
  v0 = type metadata accessor for EvernoteWebView(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

id sub_23E357A98()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v0 configuration:{0.0, 0.0, 0.0, 0.0}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F050, &qword_23E3B1B90);
  sub_23E3AA580();
  [v1 setUIDelegate_];

  sub_23E3AA580();
  [v1 setNavigationDelegate_];

  return v1;
}

void sub_23E357B88(void *a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v5 = sub_23E3A9DB0();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F040, &qword_23E3B1B80);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F048, &qword_23E3B1B88);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v53 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v48[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v48[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v48[-v22];
  v24 = type metadata accessor for WebView(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v48[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F050, &qword_23E3B1B90);
  sub_23E3AA580();
  v29 = v60;
  sub_23E359028(v3, v27);
  v30 = OBJC_IVAR____TtCV11ActionKitUIP33_95B3E30599CAF9D678AD3209E5191A0514WebHostingView11Coordinator_configuration;
  swift_beginAccess();
  sub_23E3590E8(v27, v29 + v30);
  swift_endAccess();

  v52 = v28;
  v55 = a2;
  v31 = v57;
  sub_23E3AA580();
  v32 = v60;
  v33 = 0x27E33E000uLL;
  v34 = OBJC_IVAR____TtCV11ActionKitUIP33_95B3E30599CAF9D678AD3209E5191A0514WebHostingView11Coordinator_loadedRequest;
  swift_beginAccess();
  sub_23E35914C(v32 + v34, v23);

  v35 = *(v31 + 16);
  v36 = v3;
  v37 = v58;
  v56 = v36;
  v51 = v35;
  v35(v21);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v37);
  v38 = *(v9 + 56);
  sub_23E35914C(v23, v12);
  sub_23E35914C(v21, &v12[v38]);
  if (__swift_getEnumTagSinglePayload(v12, 1, v37) == 1)
  {
    sub_23E3591BC(v21, &qword_27E33F048, &qword_23E3B1B88);
    sub_23E3591BC(v23, &qword_27E33F048, &qword_23E3B1B88);
    if (__swift_getEnumTagSinglePayload(&v12[v38], 1, v37) == 1)
    {
      sub_23E3591BC(v12, &qword_27E33F048, &qword_23E3B1B88);
      return;
    }

    goto LABEL_6;
  }

  sub_23E35914C(v12, v59);
  if (__swift_getEnumTagSinglePayload(&v12[v38], 1, v37) == 1)
  {
    sub_23E3591BC(v21, &qword_27E33F048, &qword_23E3B1B88);
    sub_23E3591BC(v23, &qword_27E33F048, &qword_23E3B1B88);
    (*(v31 + 8))(v59, v37);
LABEL_6:
    sub_23E3591BC(v12, &qword_27E33F040, &qword_23E3B1B80);
LABEL_7:
    v39 = v56;
    v40 = sub_23E3A9D70();

    sub_23E3AA580();
    v41 = v61;
    v42 = v53;
    v51(v53, v39, v37);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v37);
    v43 = *(v33 + 3896);
    swift_beginAccess();
    sub_23E35921C(v42, v41 + v43);
    swift_endAccess();

    return;
  }

  v44 = v50;
  (*(v31 + 32))(v50, &v12[v38], v37);
  sub_23E35928C(&qword_27E33F058, MEMORY[0x277CC8678]);
  v45 = v59;
  v49 = sub_23E3AA9A0();
  v46 = *(v31 + 8);
  v46(v44, v37);
  sub_23E3591BC(v21, &qword_27E33F048, &qword_23E3B1B88);
  sub_23E3591BC(v23, &qword_27E33F048, &qword_23E3B1B88);
  v47 = v45;
  v33 = 0x27E33E000;
  v46(v47, v37);
  sub_23E3591BC(v12, &qword_27E33F048, &qword_23E3B1B88);
  if ((v49 & 1) == 0)
  {
    goto LABEL_7;
  }
}

id sub_23E35814C()
{
  v1 = type metadata accessor for WebView(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E359028(v0, v4);
  v5 = objc_allocWithZone(type metadata accessor for WebHostingView.Coordinator(0));
  return sub_23E3581D4(v4);
}

id sub_23E3581D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV11ActionKitUIP33_95B3E30599CAF9D678AD3209E5191A0514WebHostingView11Coordinator_loadedRequest;
  v4 = sub_23E3A9DB0();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  sub_23E359028(a1, v1 + OBJC_IVAR____TtCV11ActionKitUIP33_95B3E30599CAF9D678AD3209E5191A0514WebHostingView11Coordinator_configuration);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for WebHostingView.Coordinator(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_23E35908C(a1);
  return v5;
}

uint64_t sub_23E358268(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  sub_23E3AAAC0();
  v3[7] = sub_23E3AAAB0();
  v5 = sub_23E3AAA80();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x2822009F8](sub_23E358300, v5, v4);
}

uint64_t sub_23E358300()
{
  v1 = v0[6] + OBJC_IVAR____TtCV11ActionKitUIP33_95B3E30599CAF9D678AD3209E5191A0514WebHostingView11Coordinator_configuration;
  swift_beginAccess();
  v2 = (v1 + *(type metadata accessor for WebView(0) + 20));
  v3 = *v2;
  v0[10] = v2[1];

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_23E358438;
  v6 = v0[5];

  return v8(v6);
}

uint64_t sub_23E358438()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_2();
  *v3 = v2;
  v4 = v1[11];
  v5 = v1[10];
  v6 = *v0;
  OUTLINED_FUNCTION_1_2();
  *v7 = v6;
  *(v9 + 96) = v8;

  v10 = v1[9];
  v11 = v1[8];

  return MEMORY[0x2822009F8](sub_23E35857C, v11, v10);
}

uint64_t sub_23E35857C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_23E358678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_23E3AAAC0();
  v4[6] = sub_23E3AAAB0();
  v6 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E358714, v6, v5);
}

uint64_t sub_23E358714()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_23E3587E0;
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return sub_23E358268(v12, v11);
}

uint64_t sub_23E3587E0(uint64_t a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v9 = v8;

  v4[2](v4, a1);
  _Block_release(v4);
  v10 = *(v8 + 8);

  return v10();
}

id sub_23E3589B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebHostingView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23E358A60()
{
  v0 = type metadata accessor for WebView(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23E358B4C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23E358B4C()
{
  if (!qword_27E33F018)
  {
    sub_23E3A9DB0();
    v0 = sub_23E3AABB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E33F018);
    }
  }
}

uint64_t sub_23E358BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E3A9DB0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23E358C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_1();
  result = sub_23E3A9DB0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_2_1();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

unint64_t sub_23E358D0C()
{
  result = sub_23E3A9DB0();
  if (v1 <= 0x3F)
  {
    result = sub_23E3496A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_23E358DD0@<X0>(void *a1@<X8>)
{
  result = sub_23E35814C();
  *a1 = result;
  return result;
}

uint64_t sub_23E358E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E35928C(&unk_27E33F060, type metadata accessor for WebHostingView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23E358ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E35928C(&unk_27E33F060, type metadata accessor for WebHostingView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23E358F68()
{
  sub_23E35928C(&unk_27E33F060, type metadata accessor for WebHostingView);
  sub_23E3AA450();
  __break(1u);
}

uint64_t sub_23E359028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E35908C(uint64_t a1)
{
  v2 = type metadata accessor for WebView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E3590E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E35914C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F048, &qword_23E3B1B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E3591BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E35921C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F048, &qword_23E3B1B88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E35928C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E3592D4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E359324()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E3593E4;

  return sub_23E358678(v2, v3, v5, v4);
}

uint64_t sub_23E3593E4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_23E3594E8()
{
  v2 = OUTLINED_FUNCTION_0_1();
  v3 = type metadata accessor for WebView(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_23E35953C()
{
  v0 = OUTLINED_FUNCTION_0_1();
  type metadata accessor for WebView(v0);
  v1 = OUTLINED_FUNCTION_2_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_23E359574()
{
  result = type metadata accessor for WebView(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23E359658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAE8, &unk_23E3B17C0);
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for WordPressLoginView();
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = a1;
  *(v18 + 1) = a2;
  v35 = 0;
  v36 = 0xE000000000000000;

  OUTLINED_FUNCTION_3_3();
  v19 = v38;
  *(v18 + 1) = v37;
  *(v18 + 4) = v19;
  v35 = 0;
  v36 = 0xE000000000000000;
  OUTLINED_FUNCTION_3_3();
  v20 = v38;
  *(v18 + 40) = v37;
  *(v18 + 7) = v20;
  v35 = 0xD000000000000015;
  v36 = 0x800000023E3B8380;
  OUTLINED_FUNCTION_3_3();
  v21 = v38;
  *(v18 + 4) = v37;
  *(v18 + 10) = v21;
  v22 = *(v13 + 32);
  v23 = sub_23E3A9F80();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
  sub_23E34A628(v12, v10, &qword_27E33EAE8, &unk_23E3B17C0);
  sub_23E3AA7B0();
  sub_23E34A698(v12, &qword_27E33EAE8, &unk_23E3B17C0);
  v24 = *(v13 + 36);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v25 = &v18[v24];
  v26 = qword_27E33F950;
  v27 = sub_23E3AA9B0();
  v28 = sub_23E3AA9B0();

  v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

  v30 = sub_23E3AA9D0();
  v32 = v31;

  *v25 = v30;
  v25[1] = v32;
  sub_23E35B954(&qword_27E33F080, type metadata accessor for WordPressLoginView);
  return sub_23E3AA840();
}

uint64_t type metadata accessor for WordPressLoginView()
{
  result = qword_27E33F088;
  if (!qword_27E33F088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E35999C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WordPressLoginView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  v18 = (v2 + *(v5 + 44));
  v19 = v18[1];
  v51 = *v18;
  v52 = v19;
  v20 = *(v2 + 32);
  v55 = *(v2 + 16);
  v56 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7C0();
  v22 = v53;
  v21 = v54;

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = *(v2 + 56);
  v55 = *(v2 + 40);
  v56 = v24;
  sub_23E3AA7C0();
  v26 = v53;
  v25 = v54;

  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v47 = v17;
    v48 = v6;
    v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *(v2 + 64);
    v28 = *(v2 + 72);
    v30 = *(v2 + 80);
    *&v55 = v29;
    *(&v55 + 1) = v28;
    v56 = v30;
    sub_23E3AA7C0();
    v32 = v53;
    v31 = v54;

    v33 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v33 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      *&v55 = v29;
      *(&v55 + 1) = v28;
      v56 = v30;
      sub_23E3AA7C0();
      v34 = v47;
      sub_23E3A9E80();

      v35 = sub_23E3A9E90();
      v36 = __swift_getEnumTagSinglePayload(v34, 1, v35) != 1;
      sub_23E34A698(v34, &qword_27E33EB38, &qword_23E3B16C0);
    }

    else
    {
      v36 = 0;
    }

    v6 = v48;
    v9 = v49;
  }

  else
  {
LABEL_11:
    v36 = 0;
  }

  sub_23E35B678(v2, v13);
  v37 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v38 = swift_allocObject();
  sub_23E35B6E0(v13, v38 + v37);
  v39 = v50;
  sub_23E35B678(v2, v50);
  v40 = swift_allocObject();
  sub_23E35B6E0(v39, v40 + v37);
  sub_23E35B678(v2, v9);
  v41 = swift_allocObject();
  sub_23E35B6E0(v9, v41 + v37);
  LOBYTE(v53) = 0;
  result = sub_23E3AA7B0();
  v43 = v55;
  v44 = *(&v55 + 1);
  v45 = v52;
  *a1 = v51;
  *(a1 + 8) = v45;
  *(a1 + 16) = v36;
  *(a1 + 17) = 0;
  *(a1 + 24) = sub_23E35B744;
  *(a1 + 32) = v38;
  *(a1 + 40) = sub_23E35B75C;
  *(a1 + 48) = v40;
  *(a1 + 56) = &unk_23E3B1C50;
  *(a1 + 64) = v41;
  *(a1 + 72) = v43;
  *(a1 + 80) = v44;
  return result;
}

uint64_t sub_23E359D70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB30, &qword_23E3B16B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &__src[-v4];
  sub_23E359F08(a1, __src);
  v6 = *(type metadata accessor for WordPressLoginView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
  sub_23E3AA7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F0A0, &qword_23E3B1C70);
  sub_23E3A9F80();
  sub_23E35B8A4();
  sub_23E35B954(&unk_27E33EB60, MEMORY[0x277D7D2C8]);
  sub_23E3AA6D0();
  sub_23E34A698(v5, &qword_27E33EB30, &qword_23E3B16B8);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_23E35B99C(__dst);
}

uint64_t sub_23E359F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WordPressLoginView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v8 = qword_27E33F950;
  v9 = sub_23E3AA9B0();
  v10 = sub_23E3AA9B0();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_23E3AA9D0();
  v41 = v13;
  v42 = v12;

  sub_23E35B678(a1, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_23E35B6E0(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_23E3AAA00();
  v16 = sub_23E3AA9B0();
  v39 = v6;
  v17 = v16;
  v18 = sub_23E3AA9B0();

  v19 = [v8 &selRef:v17 setPrintingItem:{v18, 0} + 4];

  v38 = sub_23E3AA9D0();
  v21 = v20;

  sub_23E3AAA00();
  v22 = sub_23E3AA9B0();
  v23 = sub_23E3AA9B0();

  v24 = [v8 localizedStringForKey:v22 value:v23 table:0];

  v25 = sub_23E3AA9D0();
  v27 = v26;

  v43 = v25;
  v44 = v27;
  sub_23E349C74();
  v28 = sub_23E3AA5F0();
  v30 = v29;
  LOBYTE(v22) = v31;
  v33 = v32;
  sub_23E35B678(v40, v7);
  v34 = swift_allocObject();
  sub_23E35B6E0(v7, v34 + v14);
  LOBYTE(v43) = v22 & 1;
  v35 = v41;
  *a2 = v42;
  *(a2 + 8) = v35;
  *(a2 + 16) = sub_23E35B9FC;
  *(a2 + 24) = v15;
  *(a2 + 32) = v38;
  *(a2 + 40) = v21;
  *(a2 + 48) = v28;
  *(a2 + 56) = v30;
  *(a2 + 64) = v22 & 1;
  *(a2 + 72) = v33;
  *(a2 + 80) = sub_23E35BB84;
  *(a2 + 88) = v34;

  sub_23E347BF8(v28, v30, v22 & 1);

  sub_23E35BC20(v28, v30, v22 & 1);
}

uint64_t sub_23E35A2D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDB0, &unk_23E3B18C0);
  v3 = *(*(v55 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EB70, &unk_23E3B16E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F0C8, &unk_23E3B1CC0);
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - v15;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v16 = qword_27E33F950;
  v53 = qword_27E33F950;
  v17 = sub_23E3AA9B0();
  v18 = sub_23E3AA9B0();

  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = sub_23E3AA9D0();
  v22 = v21;

  v23 = *(a1 + 32);
  v64 = *(a1 + 16);
  v65 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7E0();
  v62 = v20;
  v63 = v22;
  sub_23E349C74();
  sub_23E3AA910();
  v24 = *MEMORY[0x277D77090];
  KeyPath = swift_getKeyPath();
  v26 = sub_23E3AA9D0();
  v27 = &v10[*(v7 + 36)];
  *v27 = KeyPath;
  v27[1] = v26;
  v27[2] = v28;
  sub_23E34E70C();
  v29 = v61;
  sub_23E3AA6A0();
  sub_23E34A698(v10, &unk_27E33EB70, &unk_23E3B16E0);
  sub_23E3AAA00();
  v30 = sub_23E3AA9B0();
  v31 = sub_23E3AA9B0();

  v32 = [v53 localizedStringForKey:v30 value:v31 table:0];

  v33 = sub_23E3AA9D0();
  v35 = v34;

  v36 = *(a1 + 56);
  v64 = *(a1 + 40);
  v65 = v36;
  sub_23E3AA7E0();
  v62 = v33;
  v63 = v35;
  v37 = v58;
  sub_23E3AA140();
  v38 = *MEMORY[0x277D77030];
  v39 = swift_getKeyPath();
  v40 = sub_23E3AA9D0();
  v41 = v56;
  v42 = (v37 + *(v55 + 36));
  *v42 = v39;
  v42[1] = v40;
  v42[2] = v43;
  v44 = *(v41 + 16);
  v45 = v54;
  v46 = v29;
  v47 = v57;
  v44(v54, v46, v57);
  v48 = v60;
  sub_23E34A628(v37, v60, &unk_27E33EDB0, &unk_23E3B18C0);
  v49 = v59;
  v44(v59, v45, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F0D0, &qword_23E3B1CD0);
  sub_23E34A628(v48, &v49[*(v50 + 48)], &unk_27E33EDB0, &unk_23E3B18C0);
  sub_23E34A698(v37, &unk_27E33EDB0, &unk_23E3B18C0);
  v51 = *(v41 + 8);
  v51(v61, v47);
  sub_23E34A698(v48, &unk_27E33EDB0, &unk_23E3B18C0);
  return (v51)(v45, v47);
}

uint64_t sub_23E35A86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EDA0, &qword_23E3B1C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  sub_23E3AA3A0();
  v9 = *(a1 + 80);
  *&v17[40] = *(a1 + 64);
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7E0();
  sub_23E3AA900();
  sub_23E34A09C(&unk_27E33EB90, &unk_27E33EDA0, &qword_23E3B1C80);
  sub_23E3AA650();
  (*(v5 + 8))(v8, v4);
  v10 = *MEMORY[0x277D77088];
  KeyPath = swift_getKeyPath();
  v12 = sub_23E3AA9D0();
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F0C0, &qword_23E3B1CB8);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v12;
  v16[2] = v14;
  return result;
}

uint64_t sub_23E35AA84(uint64_t a1)
{
  v2 = sub_23E3A9F80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23E3AA720();
}

uint64_t sub_23E35AB50()
{
  v0[2] = sub_23E3AAAC0();
  v0[3] = sub_23E3AAAB0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23E352B9C;

  return sub_23E35ABFC();
}

uint64_t sub_23E35ABFC()
{
  v1[34] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EAE8, &unk_23E3B17C0) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33EB38, &qword_23E3B16C0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v4 = sub_23E3A9E90();
  v1[38] = v4;
  v5 = *(v4 - 8);
  v1[39] = v5;
  v6 = *(v5 + 64) + 15;
  v1[40] = swift_task_alloc();
  sub_23E3AAAC0();
  v1[41] = sub_23E3AAAB0();
  v8 = sub_23E3AAA80();
  v1[42] = v8;
  v1[43] = v7;

  return MEMORY[0x2822009F8](sub_23E35AD6C, v8, v7);
}

uint64_t sub_23E35AD6C()
{
  v1 = *(v0 + 272);
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  *(v0 + 144) = v2;
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  *(v0 + 160) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33ED20, &qword_23E3B1840);
  sub_23E3AA7C0();
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  sub_23E3A9E80();

  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    v8 = *(v0 + 328);
    v9 = *(v0 + 296);

    sub_23E34A698(v9, &qword_27E33EB38, &qword_23E3B16C0);
    OUTLINED_FUNCTION_4_0();

    OUTLINED_FUNCTION_19();

    return v10();
  }

  else
  {
    v12 = *(v0 + 272);
    (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
    v13 = objc_opt_self();
    v14 = *(v12 + 32);
    *(v0 + 168) = *(v12 + 16);
    *(v0 + 184) = v14;
    sub_23E3AA7C0();
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = sub_23E3AA9B0();
    *(v0 + 352) = v17;

    v18 = *(v12 + 56);
    *(v0 + 192) = *(v12 + 40);
    *(v0 + 208) = v18;
    sub_23E3AA7C0();
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = sub_23E3AA9B0();
    *(v0 + 360) = v21;

    v22 = sub_23E3A9E50();
    *(v0 + 368) = v22;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 264;
    *(v0 + 24) = sub_23E35B044;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F098, &unk_23E3B1C60);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23E35B3D4;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v23;
    [v13 loginWithUsername:v17 password:v21 blogURL:v22 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_23E35B044()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 344);
  v5 = *(v1 + 336);
  if (v3)
  {
    v6 = sub_23E35B258;
  }

  else
  {
    v6 = sub_23E35B170;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23E35B170()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v7 = v0[39];
  v8 = v0[34];

  v9 = v0[33];

  v11 = *v8;
  v10 = *(v8 + 8);
  v12 = v9;
  v11(v9);

  (*(v7 + 8))(v5, v6);
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_19();

  return v13();
}

uint64_t sub_23E35B258()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[36];
  v13 = v0[35];
  v14 = v0[34];

  swift_willThrow();
  (*(v7 + 8))(v6, v8);

  sub_23E3A9E30();
  sub_23E3A9F90();
  v10 = sub_23E3A9F80();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  LODWORD(v6) = *(type metadata accessor for WordPressLoginView() + 32);
  sub_23E34A628(v9, v13, &qword_27E33EAE8, &unk_23E3B17C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
  sub_23E3AA7D0();

  sub_23E34A698(v9, &qword_27E33EAE8, &unk_23E3B17C0);
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_19();

  return v11();
}

uint64_t *sub_23E35B3D4(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_23E353808(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_23E3538D0(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23E35B47C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23E35B524(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23E35B5B0()
{
  sub_23E3496A8();
  if (v0 <= 0x3F)
  {
    sub_23E34E080();
    if (v1 <= 0x3F)
    {
      sub_23E353BFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E35B678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordPressLoginView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E35B6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordPressLoginView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E35B75C()
{
  v1 = *(type metadata accessor for WordPressLoginView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 8);
  return (*v2)(0);
}

uint64_t sub_23E35B7C4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(type metadata accessor for WordPressLoginView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_23E353E94;

  return sub_23E35AB50();
}

unint64_t sub_23E35B8A4()
{
  result = qword_27E33F0A8;
  if (!qword_27E33F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F0A0, &qword_23E3B1C70);
    sub_23E34A09C(&qword_27E33F0B0, &qword_27E33F0B8, &qword_23E3B1C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33F0A8);
  }

  return result;
}

uint64_t sub_23E35B954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E35B99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F0A0, &qword_23E3B1C70);
  OUTLINED_FUNCTION_13(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for WordPressLoginView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 80);

  v12 = v0 + v3 + *(v1 + 32);
  v13 = sub_23E3A9F80();
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33EAF8, &unk_23E3B1620) + 28));

  v15 = *(v0 + v3 + *(v1 + 36) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E35BB9C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WordPressLoginView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23E35BC20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_23E3AA7B0();
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[35];
}

uint64_t sub_23E35BCC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E3AA920();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v14 = v13 - v12;
  v32 = sub_23E3AA950();
  v15 = OUTLINED_FUNCTION_0(v32);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v22 = v21 - v20;
  v23 = &v3[OBJC_IVAR___WFAddQuickReminderActionUIKitUserInterface_completionHandler];
  v24 = *&v3[OBJC_IVAR___WFAddQuickReminderActionUIKitUserInterface_completionHandler];
  v25 = *&v3[OBJC_IVAR___WFAddQuickReminderActionUIKitUserInterface_completionHandler + 8];
  *v23 = a1;
  *(v23 + 1) = a2;

  sub_23E34A688(v24);
  sub_23E34DC84();
  v26 = sub_23E3AAB60();
  v27 = swift_allocObject();
  *(v27 + 16) = v3;
  aBlock[4] = sub_23E35C7F0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  aBlock[2] = v28;
  aBlock[3] = &block_descriptor_9;
  v29 = _Block_copy(aBlock);
  v30 = v3;

  sub_23E3AA940();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E35C7F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F170, &unk_23E3B1610);
  sub_23E35054C();
  sub_23E3AABF0();
  MEMORY[0x23EF08800](0, v22, v14, v29);
  _Block_release(v29);

  (*(v9 + 8))(v14, v6);
  return (*(v17 + 8))(v22, v32);
}

void sub_23E35BF44(void *a1)
{
  sub_23E3AA0C0();
  v2 = sub_23E3AA0B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23E3AA080();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23E3AA090();

  [a1 presentContent_];
}

void sub_23E35C058()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() userCancelledError];
    sub_23E35C47C(v2, 0, 0);
  }
}

void sub_23E35C0DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23E35C47C(0, 0, 0);
  }
}

void sub_23E35C170(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23E3A9E30();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_23E35C1D4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() userCancelledError];
  sub_23E35C47C(v4, a1, a2);
}

uint64_t sub_23E35C280(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

id sub_23E35C360()
{
  v0 = sub_23E3AA070();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_2();
  v8 = v7 - v6;
  sub_23E3AA0C0();
  sub_23E3AA0A0();
  v9 = [objc_opt_self() defaultConfiguration];
  [v9 setBlursBackground_];
  v10 = sub_23E3AA060();
  [v9 setBackgroundColor_];

  (*(v3 + 8))(v8, v0);
  return v9;
}

void sub_23E35C47C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  aBlock[4] = sub_23E35C79C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_2();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);
  v10 = v3;
  v11 = a1;
  sub_23E34A618(a2);

  v12.receiver = v10;
  v12.super_class = type metadata accessor for WFAddQuickReminderActionUIKitUserInterface();
  objc_msgSendSuper2(&v12, sel_cancelPresentationWithCompletionHandler_, v9);
  _Block_release(v9);
}

uint64_t sub_23E35C57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = (a1 + OBJC_IVAR___WFAddQuickReminderActionUIKitUserInterface_completionHandler);
  v5 = *(a1 + OBJC_IVAR___WFAddQuickReminderActionUIKitUserInterface_completionHandler);
  if (v5)
  {
    v7 = v4[1];

    v5(a2);
    sub_23E34A688(v5);
    v8 = *v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  result = sub_23E34A688(v8);
  if (a3)
  {
    return a3(result);
  }

  return result;
}

id sub_23E35C618(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR___WFAddQuickReminderActionUIKitUserInterface_completionHandler];
  v6 = type metadata accessor for WFAddQuickReminderActionUIKitUserInterface();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v2;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithUserInterfaceType_attribution_, a1, a2);

  if (v7)
  {
  }

  return v7;
}

id sub_23E35C6E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAddQuickReminderActionUIKitUserInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E35C74C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E35C7C0()
{
  v1 = OUTLINED_FUNCTION_3_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_23E35C7F8()
{
  result = qword_27E33EAD0;
  if (!qword_27E33EAD0)
  {
    sub_23E3AA920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E33EAD0);
  }

  return result;
}

uint64_t sub_23E35C850()
{
  MEMORY[0x23EF09790](v0 + 16);
  v1 = OUTLINED_FUNCTION_3_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E35C890()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_3_4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23E35C910@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  v12 = a1[2];
  v13 = a1[3];
  v14 = *v12;
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  LOBYTE(v12) = *(v12 + 32);
  v18 = *v13;
  v19 = v13[1];
  v20 = v13[2];
  v21 = v13[3];
  v22 = a1[4];
  v23 = *v22;
  v24 = v22[2];
  v27 = v22[1];
  v28 = v22[3];
  LOBYTE(v22) = *(v22 + 32);
  v25 = *(v13 + 32);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v2;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v16;
  *(a2 + 104) = v17;
  *(a2 + 112) = v12;
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 136) = v20;
  *(a2 + 144) = v21;
  *(a2 + 152) = v25;
  *(a2 + 160) = v23;
  *(a2 + 168) = v27;
  *(a2 + 176) = v24;
  *(a2 + 184) = v28;
  *(a2 + 192) = v22;

  sub_23E36635C(v18, v19);
}

uint64_t sub_23E35CA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F290, &qword_23E3B1E10);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_23E3AAAE0();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23E3B1E20;
  v12[5] = v11;
  sub_23E3650E0(0, 0, v9, &unk_23E3B1E30, v12);
}

uint64_t WFSSHKeyParameter.view(with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F1E0, &qword_23E3B1D20);
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F1E8, &qword_23E3B1D28);
  sub_23E34A09C(&qword_27E33F1F0, &qword_27E33F1E8, &qword_23E3B1D28);
  sub_23E3A9F60();
  sub_23E34A09C(&qword_27E33F1F8, &qword_27E33F1E0, &qword_23E3B1D20);
  return sub_23E3AA840();
}

uint64_t sub_23E35CCBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F2D0, &qword_23E3B1E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F2D8, &qword_23E3B1E78);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_23E350638(0, &qword_27E33F2A8, 0x277CE8878);
  v7 = a1;

  return sub_23E3A9F70();
}

double WFSSHKeyParameter.moduleSummarySlots(for:)()
{
  sub_23E350638(0, &unk_27E33F200, 0x277D7D7B0);
  v1 = [v0 localizedLabel];
  v2 = sub_23E3AA9D0();
  v4 = v3;

  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v5 = qword_27E33F950;
  v6 = sub_23E3AA9B0();
  v7 = sub_23E3AA9B0();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E3AA9D0();
  v11 = v10;

  v12 = sub_23E3AA9B0();
  v13 = sub_23E35CFC4(v2, v4, v9, v11, v12);
  v14 = [objc_opt_self() sharedKeyPair];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 localizedDescription];
    v17 = sub_23E3AA9D0();
    v19 = v18;

    sub_23E3656E8(0, v17, v19, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F940, qword_23E3B1D30);
  v20 = swift_allocObject();
  *&result = 1;
  *(v20 + 16) = xmmword_23E3B1D10;
  *(v20 + 32) = v13;
  return result;
}

id sub_23E35CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_23E3AA9B0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_23E3AA9B0();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() slotWithLocalizedName:v7 localizedPlaceholder:v8 key:a5];

  return v9;
}

id sub_23E35D080(void *a1)
{
  v1 = a1;
  swift_unknownObjectRetain();
  WFSSHKeyParameter.moduleSummarySlots(for:)();
  v3 = v2;
  swift_unknownObjectRelease();

  if (v3)
  {
    sub_23E350638(0, &unk_27E33F200, 0x277D7D7B0);
    v4 = sub_23E3AAA60();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_23E35D120()
{
  static WFSSHKeyParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_23E35D148(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v3 = sub_23E3A9EE0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E3A9EF0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v23 = v2;
  (*(v16 + 104))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D7BD20]);
  (*(v6 + 104))(v10, *MEMORY[0x277D7BD18], v3);
  objc_allocWithZone(sub_23E3A9F20());
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F2A0, &qword_23E3B1E60);
  type metadata accessor for SSHKeyParameterSummaryEditor();
  sub_23E350638(0, &qword_27E33F2A8, 0x277CE8878);
  sub_23E350638(0, &qword_27E33F2B0, 0x277CE8880);
  OUTLINED_FUNCTION_2_3();
  sub_23E34A09C(v18, &qword_27E33F2A0, &qword_23E3B1E60);
  v19 = sub_23E3A9F30();
  v20 = *&v17[OBJC_IVAR____TtC11ActionKitUI28SSHKeyParameterSummaryEditor_modal];
  *&v17[OBJC_IVAR____TtC11ActionKitUI28SSHKeyParameterSummaryEditor_modal] = v19;
  v21 = v19;

  sub_23E3A9F10();
}

uint64_t sub_23E35D3B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F2C0, &qword_23E3B1E68);
  type metadata accessor for SSHKeyConfigurationView();
  sub_23E366154(&qword_27E33F2C8, type metadata accessor for SSHKeyConfigurationView);
  swift_getOpaqueTypeConformance2();
  return sub_23E3AA1E0();
}

uint64_t sub_23E35D488()
{
  v0 = sub_23E3AA380();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SSHKeyConfigurationView();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E35DCD8(v8);
  (*(v1 + 104))(v4, *MEMORY[0x277CDDDC0], v0);
  sub_23E366154(&qword_27E33F2C8, type metadata accessor for SSHKeyConfigurationView);
  sub_23E3AA6B0();
  (*(v1 + 8))(v4, v0);
  return sub_23E365C70(v8);
}

uint64_t sub_23E35D69C()
{
  OUTLINED_FUNCTION_21();
  v1[20] = v0;
  sub_23E3AAAC0();
  v1[21] = sub_23E3AAAB0();
  v3 = sub_23E3AAA80();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23E35D730, v3, v2);
}

uint64_t sub_23E35D730()
{
  OUTLINED_FUNCTION_9_0();
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_23E35D844;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F298, &qword_23E3B1E58);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_23E35D9BC;
  v0[6].super_class = &block_descriptor_5;
  v0[7].receiver = v2;
  v3 = type metadata accessor for SSHKeyParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_23E35D844()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 184);
  v3 = *(v1 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E35D944, v3, v2);
}

uint64_t sub_23E35D944()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  v3 = *(v2 + OBJC_IVAR____TtC11ActionKitUI28SSHKeyParameterSummaryEditor_modal);
  if (v3)
  {
    v4 = v3;
    sub_23E3A9F00();
  }

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23E35D9BC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_23E35DA70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23E3AAAC0();
  v2[4] = sub_23E3AAAB0();
  v4 = sub_23E3AAA80();

  return MEMORY[0x2822009F8](sub_23E35DB08, v4, v3);
}

uint64_t sub_23E35DB08()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23E35DBB4;
  v6 = v0[3];

  return sub_23E35D69C();
}

uint64_t sub_23E35DBB4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[3];
  v5 = *v0;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_23E35DCD8@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() sharedKeyPair];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v1;

  return sub_23E35DDC8(sub_23E3657C0, v4, a1);
}

void sub_23E35DD74(void *a1)
{
  v1 = [a1 parameter];
  [v1 attributesDidChange];
}

uint64_t sub_23E35DDC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F280, "@3");
  sub_23E3AA7B0();
  *a3 = v10;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v6 = type metadata accessor for SSHKeyConfigurationView();
  v7 = *(v6 + 24);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F288, &qword_23E3B1DF8);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 28);
  result = sub_23E3AA7B0();
  *v8 = v10;
  *(v8 + 8) = *(&v10 + 1);
  return result;
}

id sub_23E35DEA8(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC11ActionKitUI28SSHKeyParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SSHKeyParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_23E35DF60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SSHKeyParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E35DFA4@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for SSHKeyConfigurationView();
  v3 = v2 - 8;
  v55 = *(v2 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F320, &qword_23E3B1EF8);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F328, &qword_23E3B1F00);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F330, &qword_23E3B1F08);
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v53 = &v49 - v15;
  v49 = v1;
  v62 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F338, &qword_23E3B1F10);
  sub_23E34A09C(&qword_27E33F340, &qword_27E33F338, &qword_23E3B1F10);
  sub_23E3AA5A0();
  v61 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F348, &qword_23E3B1F18);
  v17 = sub_23E34A09C(&qword_27E33F350, &qword_27E33F320, &qword_23E3B1EF8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F358, &unk_23E3B1F20);
  v19 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20);
  v63 = v18;
  v64 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v51;
  sub_23E3AA6F0();
  (*(v5 + 8))(v8, v21);
  v22 = *(v3 + 36);
  v23 = v49;
  v24 = (v49 + v22);
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v67) = v25;
  v68 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7E0();
  v27 = v52;
  sub_23E36601C(v23, v52);
  v28 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v29 = swift_allocObject();
  sub_23E366084(v27, v29 + v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F370, &qword_23E3B1F30);
  v63 = v21;
  v64 = v16;
  v65 = v17;
  v66 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F378, &qword_23E3B1F38);
  v33 = sub_23E3AA560();
  v34 = sub_23E34A09C(&qword_27E33F380, &qword_27E33F378, &qword_23E3B1F38);
  v35 = sub_23E366154(&qword_27E33E880, MEMORY[0x277CDE2A0]);
  v63 = v32;
  v64 = v33;
  v36 = v56;
  v37 = v53;
  v65 = v34;
  v66 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v50;
  sub_23E3AA6E0();

  (*(v57 + 8))(v39, v36);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v40 = qword_27E33F950;
  v41 = sub_23E3AA9B0();
  v42 = sub_23E3AA9B0();

  v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

  v44 = sub_23E3AA9D0();
  v46 = v45;

  v67 = v44;
  v68 = v46;
  v63 = v36;
  v64 = v30;
  v65 = v31;
  v66 = v38;
  swift_getOpaqueTypeConformance2();
  sub_23E349C74();
  v47 = v59;
  sub_23E3AA680();

  return (*(v58 + 8))(v37, v47);
}

uint64_t sub_23E35E6DC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3B8, &qword_23E3B1F68);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  v3 = MEMORY[0x28223BE20](v38);
  v36 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3C0, &qword_23E3B1F70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3C8, &qword_23E3B1F78);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v33 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  v40 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F3A0, &unk_23E3B1F58);
  v17 = sub_23E3AA7C0();
  v18 = v39;
  if (v39)
  {
    v31[1] = v31;
    MEMORY[0x28223BE20](v17);
    v31[-2] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3E8, &qword_23E3B1F90);
    sub_23E34A09C(&qword_27E33F3F0, &qword_27E33F3E8, &qword_23E3B1F90);
    sub_23E3AA8B0();

    (*(v7 + 32))(v16, v10, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = __swift_storeEnumTagSinglePayload(v16, v19, 1, v6);
  MEMORY[0x28223BE20](v20);
  v31[-2] = v1;
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3D0, &qword_23E3B1F80);
  sub_23E34A09C(&qword_27E33F3D8, &qword_27E33F3D0, &qword_23E3B1F80);
  v21 = v34;
  sub_23E3AA8B0();
  v22 = v33;
  sub_23E3544EC(v16, v33, &qword_27E33F3C8, &qword_23E3B1F78);
  v23 = v35;
  v24 = v36;
  v25 = *(v35 + 16);
  v26 = v38;
  v25(v36, v21, v38);
  v27 = v37;
  sub_23E3544EC(v22, v37, &qword_27E33F3C8, &qword_23E3B1F78);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3E0, &qword_23E3B1F88);
  v25((v27 + *(v28 + 48)), v24, v26);
  v29 = *(v23 + 8);
  v29(v21, v26);
  sub_23E34A698(v32, &qword_27E33F3C8, &qword_23E3B1F78);
  v29(v24, v26);
  return sub_23E34A698(v22, &qword_27E33F3C8, &qword_23E3B1F78);
}

uint64_t sub_23E35EB60(uint64_t a1)
{
  v2 = sub_23E3AA4E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F358, &unk_23E3B1F20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_23E3AA4D0();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
  sub_23E3AA170();
  v9 = sub_23E34A09C(&unk_27E33F360, &qword_27E33F358, &unk_23E3B1F20);
  MEMORY[0x23EF081A0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23E35ED4C(uint64_t a1)
{
  v2 = type metadata accessor for SSHKeyConfigurationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v5 = qword_27E33F950;
  v6 = sub_23E3AA9B0();
  v7 = sub_23E3AA9B0();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_23E3AA9D0();
  v11 = v10;

  v15[0] = v9;
  v15[1] = v11;
  sub_23E36601C(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_23E366084(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_23E349C74();
  return sub_23E3AA810();
}

uint64_t sub_23E35EF38(uint64_t a1)
{
  v20 = sub_23E3AA370();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F288, &qword_23E3B1DF8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_23E3AA1A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SSHKeyConfigurationView();
  sub_23E3544EC(a1 + *(v15 + 24), v9, &qword_27E33F288, &qword_23E3B1DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_23E3AAB50();
    v17 = sub_23E3AA590();
    sub_23E3AA0E0();

    sub_23E3AA360();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_23E3AA190();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_23E35F1C0(uint64_t a1)
{
  v2 = sub_23E3AA560();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F378, &qword_23E3B1F38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  v14 = a1;
  sub_23E3661A4();
  sub_23E3AA1E0();
  sub_23E3AA550();
  sub_23E34A09C(&qword_27E33F380, &qword_27E33F378, &qword_23E3B1F38);
  sub_23E366154(&qword_27E33E880, MEMORY[0x277CDE2A0]);
  sub_23E3AA600();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void *sub_23E35F3F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SSHKeyConfigurationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23E36601C(a1, &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23E366084(&__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v8 + v7);
  sub_23E360304(sub_23E3661F8, v8, __src);
  return memcpy(a2, __src, 0x88uLL);
}

uint64_t sub_23E35F510@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v3 = qword_27E33F950;
  v4 = sub_23E3AA9B0();
  v5 = sub_23E3AA9B0();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_23E3AA9D0();
  v60 = v8;
  v61 = v7;

  v9 = [a1 localizedType];
  v10 = sub_23E3AA9D0();
  v58 = v11;
  v59 = v10;

  sub_23E3AAA00();
  v12 = sub_23E3AA9B0();
  v13 = sub_23E3AA9B0();

  v14 = [v3 localizedStringForKey:v12 value:v13 table:0];

  v15 = sub_23E3AA9D0();
  v56 = v16;
  v57 = v15;

  v17 = [a1 publicKeyFingerprintWithType_];
  v18 = sub_23E3AA9D0();
  v54 = v19;
  v55 = v18;

  sub_23E3AAA00();
  v20 = sub_23E3AA9B0();
  v21 = sub_23E3AA9B0();

  v22 = [v3 localizedStringForKey:v20 value:v21 table:0];

  v23 = sub_23E3AA9D0();
  v52 = v24;
  v53 = v23;

  v25 = [a1 publicKeyFingerprintWithType_];
  v26 = sub_23E3AA9D0();
  v50 = v27;
  v51 = v26;

  v28 = [a1 keySize];
  v29 = v28;
  if (!v28)
  {
    v34 = 0;
LABEL_8:
    v36 = 0;
    v38 = 0;
    goto LABEL_9;
  }

  v30 = [v28 integerValue];

  if (v30 < 1)
  {
    v34 = 0;
    v29 = 0;
    goto LABEL_8;
  }

  sub_23E3AAA00();
  v31 = sub_23E3AA9B0();
  v32 = sub_23E3AA9B0();

  v33 = [v3 localizedStringForKey:v31 value:v32 table:0];

  v34 = sub_23E3AA9D0();
  v29 = v35;

  v76[0] = v30;
  v36 = sub_23E3AAC80();
  v38 = v37;
LABEL_9:
  sub_23E3AAA00();
  v39 = sub_23E3AA9B0();
  v40 = sub_23E3AA9B0();

  v41 = [v3 localizedStringForKey:v39 value:v40 table:0];

  v42 = sub_23E3AA9D0();
  v44 = v43;

  v45 = [a1 comment];
  v46 = sub_23E3AA9D0();
  v48 = v47;

  v74[0] = v61;
  v74[1] = v60;
  v74[2] = v59;
  v74[3] = v58;
  v75 = 0;
  v72[0] = v57;
  v72[1] = v56;
  v72[2] = v55;
  v72[3] = v54;
  v73 = 1;
  v76[0] = v74;
  v76[1] = v72;
  v70[0] = v53;
  v70[1] = v52;
  v70[2] = v51;
  v70[3] = v50;
  v71 = 1;
  v65 = v34;
  v66 = v29;
  v67 = v36;
  v68 = v38;
  v69 = 0;
  v76[2] = v70;
  v76[3] = &v65;
  v63[0] = v42;
  v63[1] = v44;
  v63[2] = v46;
  v63[3] = v48;
  v64 = 0;
  v76[4] = v63;
  sub_23E35C910(v76, a2);

  sub_23E366318(v65, v66);
}

uint64_t sub_23E35F9F8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for SSHKeyConfigurationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F3F8, &qword_23E3B1F98);
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v37);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F400, &qword_23E3B1FA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v35 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v39 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F3A0, &unk_23E3B1F58);
  sub_23E3AA7C0();
  v18 = v38;
  if (v38)
  {
    *(swift_allocObject() + 16) = v18;
    v31 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F408, &qword_23E3B1FA8);
    v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23E34A09C(&qword_27E33F410, &qword_27E33F408, &qword_23E3B1FA8);
    v5 = v32;
    sub_23E3AA800();

    (*(v6 + 32))(v17, v11, v37);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v37;
  __swift_storeEnumTagSinglePayload(v17, v19, 1, v37);
  sub_23E36601C(v1, v5);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  sub_23E366084(v5, v22 + v21);
  v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F408, &qword_23E3B1FA8);
  sub_23E34A09C(&qword_27E33F410, &qword_27E33F408, &qword_23E3B1FA8);
  sub_23E3AA800();
  v23 = v11;
  v24 = v35;
  sub_23E3544EC(v17, v35, &qword_27E33F400, &qword_23E3B1FA0);
  v25 = *(v6 + 16);
  v26 = v34;
  v25(v34, v23, v20);
  v27 = v36;
  sub_23E3544EC(v24, v36, &qword_27E33F400, &qword_23E3B1FA0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F418, &qword_23E3B1FB0);
  v25((v27 + *(v28 + 48)), v26, v20);
  v29 = *(v6 + 8);
  v29(v23, v20);
  sub_23E34A698(v33, &qword_27E33F400, &qword_23E3B1FA0);
  v29(v26, v20);
  return sub_23E34A698(v24, &qword_27E33F400, &qword_23E3B1FA0);
}

void sub_23E35FECC(void *a1)
{
  v1 = [a1 publicKey];
  v2 = sub_23E3AA9D0();
  v4 = v3;

  v5 = [objc_opt_self() generalPasteboard];
  sub_23E366570(v2, v4, v5);
}

uint64_t sub_23E35FF68()
{
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v0 = qword_27E33F950;
  v1 = sub_23E3AA9B0();
  v2 = sub_23E3AA9B0();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_23E3AA9D0();
  sub_23E349C74();
  return sub_23E3AA7A0();
}

uint64_t sub_23E360094(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SSHKeyConfigurationView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  return sub_23E3AA7D0();
}

uint64_t sub_23E360108()
{
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v0 = qword_27E33F950;
  v1 = sub_23E3AA9B0();
  v2 = sub_23E3AA9B0();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  sub_23E3AA9D0();
  sub_23E349C74();
  return sub_23E3AA7A0();
}

uint64_t sub_23E360234(void *a1, __int128 *a2)
{
  if (a1)
  {
    v6 = *a2;
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F3A0, &unk_23E3B1F58);
    sub_23E3AA7D0();
    [objc_opt_self() setSharedKeyPair_];
  }

  v4 = a2 + *(type metadata accessor for SSHKeyConfigurationView() + 28);
  v7 = *v4;
  v8 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  return sub_23E3AA7D0();
}

void *sub_23E360304@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_23E3AA7B0();
  v32 = v38;
  v33 = v39;
  sub_23E3AA7B0();
  v31 = v38;
  v4 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F390, &unk_23E3B1F40);
  sub_23E3AA7B0();
  v5 = objc_opt_self();
  v6 = [v5 defaultKeyComment];
  v7 = sub_23E3AA9D0();
  v9 = v8;

  __src[0] = v7;
  __src[1] = v9;
  sub_23E3AA7B0();
  v29 = v39;
  v30 = v38;
  v28 = v40;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v10 = qword_27E33F950;
  v11 = sub_23E3AA9B0();
  v12 = sub_23E3AA9B0();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = sub_23E3AA9D0();
  v16 = v15;

  sub_23E3AAA00();
  v17 = sub_23E3AA9B0();
  v18 = sub_23E3AA9B0();

  v19 = [v10 localizedStringForKey:v17 value:v18 table:0];

  v20 = sub_23E3AA9D0();
  v22 = v21;

  v23 = [v5 keyFormats];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F398, &qword_23E3B1F50);
  v24 = sub_23E3AAA70();
  if (*(v24 + 16))
  {

    if (*(v24 + 16))
    {
      v25 = *(v24 + 32);

      v26 = [swift_getObjCClassFromMetadata() defaultKeySize];

      __src[0] = a1;
      __src[1] = a2;
      LOBYTE(__src[2]) = v38;
      *(&__src[2] + 1) = v57[0];
      HIDWORD(__src[2]) = *(v57 + 3);
      __src[3] = v39;
      LOBYTE(__src[4]) = v38;
      *(&__src[4] + 1) = *v56;
      HIDWORD(__src[4]) = *&v56[3];
      __src[5] = v39;
      __src[6] = v25;
      __src[7] = 0;
      __src[8] = v26;
      __src[9] = 0;
      __src[10] = v38;
      __src[11] = v39;
      __src[12] = v40;
      __src[13] = v14;
      __src[14] = v16;
      __src[15] = v20;
      __src[16] = v22;
      v38 = a1;
      v39 = a2;
      LOBYTE(v40) = v32;
      HIDWORD(v40) = *(v57 + 3);
      *(&v40 + 1) = v57[0];
      v41 = v33;
      v42 = v31;
      *&v43[3] = *&v56[3];
      *v43 = *v56;
      v44 = v4;
      v45 = v25;
      v46 = 0;
      v47 = v26;
      v48 = 0;
      v49 = v30;
      v50 = v29;
      v51 = v28;
      v52 = v14;
      v53 = v16;
      v54 = v20;
      v55 = v22;
      sub_23E366264(__src, v36);
      sub_23E36629C(&v38);
      return memcpy(a3, __src, 0x88uLL);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23E3606D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F570, &qword_23E3B2210);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F578, &qword_23E3B2218);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F580, &qword_23E3B2220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F588, &qword_23E3B2228);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - v17;
  if ((*(v2 + 32) & 1) != 0 && (v19 = *(v2 + 16), v20 = *(v2 + 24), v21 = sub_23E3AAA20(), v21 >= 13))
  {
    v28[3] = v28;
    MEMORY[0x28223BE20](v21);
    v28[2] = &v28[-4];
    v28[-2] = v2;
    sub_23E360BAC(v2, v13);
    v28[1] = sub_23E34A09C(&qword_27E33F5A0, &qword_27E33F570, &qword_23E3B2210);
    v28[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F5A8, &qword_23E3B2238);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E33F5B0, &qword_23E3B2240);
    v23 = sub_23E34A09C(&qword_27E33F5B8, &qword_27E33F5B0, &qword_23E3B2240);
    v24 = sub_23E349C74();
    v31 = v22;
    v32 = MEMORY[0x277D837D0];
    v33 = v23;
    v34 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v28[0];
    v32 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_23E3AA1D0();
    (*(v15 + 16))(v9, v18, v14);
    swift_storeEnumTagMultiPayload();
    sub_23E34A09C(&qword_27E33F598, &qword_27E33F588, &qword_23E3B2228);
    sub_23E3AA480();
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    *v5 = sub_23E3AA390();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F590, &qword_23E3B2230);
    sub_23E361110(v2, &v5[*(v27 + 44)]);
    sub_23E3544EC(v5, v9, &qword_27E33F570, &qword_23E3B2210);
    swift_storeEnumTagMultiPayload();
    sub_23E34A09C(&qword_27E33F598, &qword_27E33F588, &qword_23E3B2228);
    sub_23E34A09C(&qword_27E33F5A0, &qword_27E33F570, &qword_23E3B2210);
    sub_23E3AA480();
    return sub_23E34A698(v5, &qword_27E33F570, &qword_23E3B2210);
  }
}

uint64_t sub_23E360BAC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_23E3AA380();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F5B0, &qword_23E3B2240);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F5A8, &qword_23E3B2238);
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v23 - v14;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F5C0, &qword_23E3B2248);
  sub_23E367290();
  sub_23E3AA5A0();
  v28 = *a1;
  v16 = sub_23E34A09C(&qword_27E33F5B8, &qword_27E33F5B0, &qword_23E3B2240);
  v17 = sub_23E349C74();
  v18 = MEMORY[0x277D837D0];
  sub_23E3AA680();
  (*(v8 + 8))(v11, v7);
  v20 = v24;
  v19 = v25;
  (*(v24 + 104))(v6, *MEMORY[0x277CDDDC0], v25);
  *&v28 = v7;
  *(&v28 + 1) = v18;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_23E3AA6B0();
  (*(v20 + 8))(v6, v19);
  return (*(v12 + 8))(v15, v21);
}

uint64_t sub_23E360EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E3AA540();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v22 = v9;
  v23 = v10;
  sub_23E349C74();

  v11 = sub_23E3AA5F0();
  v13 = v12;
  v22 = v11;
  v23 = v12;
  v15 = v14 & 1;
  v24 = v14 & 1;
  v25 = v16;
  sub_23E3AA530();
  sub_23E3AA660();
  (*(v5 + 8))(v8, v4);
  sub_23E35BC20(v11, v13, v15);

  KeyPath = swift_getKeyPath();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F5D8, &qword_23E3B2250) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 1;
  *(v18 + 16) = 0;
  v19 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F5C0, &qword_23E3B2248);
  v21 = (a2 + *(result + 36));
  *v21 = v19;
  v21[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_23E3610B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23E3AA390();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F590, &qword_23E3B2230);
  return sub_23E361110(a1, a2 + *(v4 + 44));
}

uint64_t sub_23E361110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E3AA540();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F600, &qword_23E3B22C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F608, &qword_23E3B22D0);
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v76 = (&v67 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F610, &qword_23E3B22D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v81 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v67 - v19;
  v20 = *(a1 + 8);
  v82 = *a1;
  v83 = v20;
  sub_23E349C74();

  v21 = sub_23E3AA5F0();
  v77 = v22;
  v78 = v21;
  v75 = v23;
  v79 = v24;
  if ((*(a1 + 32) & 1) != 0 && (v25 = *(a1 + 16), v26 = *(a1 + 24), sub_23E3AAA20() >= 13))
  {
    v82 = sub_23E361708();
    v83 = v27;
    v28 = sub_23E3AA5F0();
    v30 = v29;
    v32 = v31;
    sub_23E3AA770();
    v33 = sub_23E3AA5E0();
    v73 = v34;
    LODWORD(v72) = v35;
    v37 = v36;

    sub_23E35BC20(v28, v30, v32 & 1);

    v38 = v76;
    v39 = v73;
    *v76 = v33;
    v38[1] = v39;
    *(v38 + 16) = v72 & 1;
    v38[3] = v37;
    swift_storeEnumTagMultiPayload();
    v82 = MEMORY[0x277CE0BD8];
    v83 = v4;
    v84 = MEMORY[0x277CE0BC8];
    v85 = MEMORY[0x277CE06D0];
    swift_getOpaqueTypeConformance2();
    v40 = v80;
    sub_23E3AA480();
  }

  else
  {
    v82 = sub_23E361708();
    v83 = v41;
    v42 = sub_23E3AA5F0();
    v44 = v43;
    v69 = v5;
    v70 = v4;
    v46 = v45;
    sub_23E3AA770();
    v68 = v12;
    v47 = sub_23E3AA5E0();
    v71 = v9;
    v72 = v8;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_23E35BC20(v42, v44, v46 & 1);

    v82 = v48;
    v83 = v50;
    v52 &= 1u;
    LOBYTE(v84) = v52;
    v85 = v54;
    v55 = v73;
    sub_23E3AA530();
    v56 = MEMORY[0x277CE0BD8];
    v57 = v68;
    v58 = v70;
    sub_23E3AA660();
    (*(v69 + 8))(v55, v58);
    sub_23E35BC20(v48, v50, v52);

    v59 = v71;
    v60 = v72;
    (*(v71 + 16))(v76, v57, v72);
    swift_storeEnumTagMultiPayload();
    v82 = v56;
    v83 = v58;
    v84 = MEMORY[0x277CE0BC8];
    v85 = MEMORY[0x277CE06D0];
    swift_getOpaqueTypeConformance2();
    v40 = v80;
    sub_23E3AA480();
    (*(v59 + 8))(v57, v60);
  }

  v61 = v81;
  sub_23E3544EC(v40, v81, &qword_27E33F610, &qword_23E3B22D8);
  v63 = v77;
  v62 = v78;
  *a2 = v78;
  *(a2 + 8) = v63;
  v64 = v75 & 1;
  *(a2 + 16) = v75 & 1;
  *(a2 + 24) = v79;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E33F618, &qword_23E3B22E0);
  sub_23E3544EC(v61, a2 + *(v65 + 64), &qword_27E33F610, &qword_23E3B22D8);
  sub_23E347BF8(v62, v63, v64);

  sub_23E34A698(v40, &qword_27E33F610, &qword_23E3B22D8);
  sub_23E34A698(v61, &qword_27E33F610, &qword_23E3B22D8);
  sub_23E35BC20(v62, v63, v64);
}

uint64_t sub_23E361708()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if ((v1 & 1) != 0 && sub_23E3AAA20() >= 13)
  {
    sub_23E3AAA30();
    v4 = sub_23E3AAA50();
    v5 = MEMORY[0x23EF08680](v4);

    MEMORY[0x23EF086D0](10911970, 0xA300000000000000);

    return v5;
  }

  else
  {
  }

  return v2;
}

uint64_t sub_23E3617D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_23E3606D8(a1);
}

uint64_t sub_23E361810()
{
  v0 = [swift_getObjCClassFromMetadata() localizedDisplayName];
  sub_23E3AA9D0();

  sub_23E3AAA10();
}

uint64_t sub_23E36188C()
{
  v0 = [swift_getObjCClassFromMetadata() localizedDisplayName];
  v1 = sub_23E3AA9D0();
  v3 = v2;

  v4 = [swift_getObjCClassFromMetadata() localizedDisplayName];
  v5 = sub_23E3AA9D0();
  v7 = v6;

  if (v1 == v5 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E3AACA0();
  }

  return v9 & 1;
}

uint64_t sub_23E361958()
{
  sub_23E3AACF0();
  v0 = [swift_getObjCClassFromMetadata() localizedDisplayName];
  sub_23E3AA9D0();

  sub_23E3AAA10();

  return sub_23E3AAD00();
}

uint64_t sub_23E3619F4()
{
  v1 = *v0;
  sub_23E3AACF0();
  v2 = [swift_getObjCClassFromMetadata() localizedDisplayName];
  sub_23E3AA9D0();

  sub_23E3AAA10();

  return sub_23E3AAD00();
}

uint64_t sub_23E361A7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23E36188C();
}

uint64_t sub_23E361A88@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v54 = sub_23E3AA380();
  v53 = *(v54 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F420, &qword_23E3B2118);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F428, &qword_23E3B2120);
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v45 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F430, &qword_23E3B2128);
  v46 = *(v49 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v45 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F438, &qword_23E3B2130);
  v50 = *(v51 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v45 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F440, &qword_23E3B2138);
  v17 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v18;
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F448, &qword_23E3B2140);
  sub_23E34A09C(&qword_27E33F450, &qword_27E33F448, &qword_23E3B2140);
  sub_23E3AA5A0();
  v57 = v1;
  v59 = v1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F458, &qword_23E3B2148);
  v20 = sub_23E34A09C(&qword_27E33F460, &qword_27E33F420, &qword_23E3B2118);
  v21 = sub_23E34A09C(&qword_27E33F468, &qword_27E33F458, &qword_23E3B2148);
  sub_23E3AA6F0();
  (*(v5 + 8))(v8, v4);
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v22 = qword_27E33F950;
  v23 = sub_23E3AA9B0();
  v24 = sub_23E3AA9B0();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = sub_23E3AA9D0();
  v28 = v27;

  *&v64 = v26;
  *(&v64 + 1) = v28;
  *&v61 = v4;
  *(&v61 + 1) = v19;
  v62 = v20;
  v63 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_23E349C74();
  v31 = MEMORY[0x277D837D0];
  v32 = v47;
  sub_23E3AA680();

  (*(v45 + 8))(v11, v32);
  v33 = v53;
  v34 = v52;
  v35 = v54;
  (*(v53 + 104))(v52, *MEMORY[0x277CDDDC0], v54);
  *&v61 = v32;
  *(&v61 + 1) = v31;
  v62 = OpaqueTypeConformance2;
  v63 = v30;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v49;
  sub_23E3AA6B0();
  (*(v33 + 8))(v34, v35);
  (*(v46 + 8))(v14, v38);
  v39 = v57;
  v64 = v57[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  v40 = sub_23E3AA7E0();
  MEMORY[0x28223BE20](v40);
  *(&v45 - 2) = v39;
  *&v61 = v38;
  *(&v61 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v41 = v56;
  v42 = v51;
  sub_23E3AA6C0();

  (*(v50 + 8))(v37, v42);
  v61 = v39[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F470, &qword_23E3B2150);
  sub_23E3AA7C0();
  v43 = swift_allocObject();
  memcpy((v43 + 16), v39, 0x88uLL);
  sub_23E366264(v39, &v61);
  sub_23E3669E0();
  sub_23E366C04();
  sub_23E3AA700();

  return sub_23E34A698(v41, &qword_27E33F440, &qword_23E3B2138);
}

uint64_t sub_23E36235C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v4 = qword_27E33F950;
  v5 = sub_23E3AA9B0();
  v6 = sub_23E3AA9B0();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v29 = sub_23E3AA9D0();
  v31 = v8;

  v30 = swift_allocObject();
  memcpy((v30 + 16), v2, 0x88uLL);
  v33 = v2[3];
  sub_23E366264(v2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F470, &qword_23E3B2150);
  sub_23E3AA7C0();
  v9 = [swift_getObjCClassFromMetadata() possibleKeySizes];
  sub_23E350638(0, &qword_27E33F4E0, 0x277CCABB0);
  v10 = sub_23E3AAA70();

  v11 = sub_23E36B57C(v10);

  if (v11)
  {
    sub_23E3AAA00();
    v12 = sub_23E3AA9B0();
    v13 = sub_23E3AA9B0();

    v14 = [v4 localizedStringForKey:v12 value:v13 table:0];

    v11 = sub_23E3AA9D0();
    v16 = v15;

    v17 = swift_allocObject();
    memcpy((v17 + 16), v2, 0x88uLL);
    sub_23E366264(v2, v32);

    v18 = v2;
    v19 = sub_23E366ECC;
  }

  else
  {
    v16 = 0;
    v18 = v2;
    v19 = 0;
    v17 = 0;
  }

  v20 = v4;
  sub_23E3AAA00();
  v21 = sub_23E3AA9B0();
  v22 = sub_23E3AA9B0();

  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = sub_23E3AA9D0();
  v26 = v25;

  v27 = swift_allocObject();
  memcpy((v27 + 16), v18, 0x88uLL);
  sub_23E366264(v18, v32);

  sub_23E366F5C(v11, v16);

  sub_23E366FA0(v11, v16);
  *a1 = v29;
  a1[1] = v31;
  a1[2] = sub_23E366EC4;
  a1[3] = v30;
  a1[4] = v11;
  a1[5] = v16;
  a1[6] = v19;
  a1[7] = v17;
  a1[8] = v24;
  a1[9] = v26;
  a1[10] = sub_23E366F54;
  a1[11] = v27;

  sub_23E366FA0(v11, v16);
}

uint64_t sub_23E362780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F498, &qword_23E3B2160);
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v23 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4A0, &qword_23E3B2168);
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - v8;
  v10 = sub_23E3AA4E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33F4A8, &unk_23E3B2170);
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v25);
  v15 = &v23 - v14;
  sub_23E3AA4C0();
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E930, &qword_23E3B1528);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E33E8B0, &qword_23E3B1480);
  v17 = sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
  v31 = v16;
  v32 = v17;
  swift_getOpaqueTypeConformance2();
  sub_23E3AA170();
  sub_23E3AA4D0();
  v29 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4B8, &unk_23E3B2180);
  sub_23E366D60();
  sub_23E3AA170();
  v18 = *(v27 + 48);
  v19 = v25;
  (*(v12 + 16))(v5, v15, v25);
  v20 = &v5[v18];
  v21 = v26;
  (*(v6 + 16))(v20, v9, v26);
  sub_23E3AA3B0();
  (*(v6 + 8))(v9, v21);
  return (*(v12 + 8))(v15, v19);
}

uint64_t sub_23E362B0C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = sub_23E3AA230();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v12 = qword_27E33F950;
  v13 = sub_23E3AA9B0();
  v14 = sub_23E3AA9B0();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:{0, v21}];

  v16 = sub_23E3AA9D0();
  v18 = v17;

  v24 = v16;
  v25 = v18;
  v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x88uLL);
  sub_23E366264(a1, v23);
  sub_23E349C74();
  sub_23E3AA810();
  sub_23E3AA210();
  sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
  sub_23E3AA690();
  (*(v3 + 8))(v6, v22);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E362DF8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_23E3AA230();
  v41 = *(v42 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E33E8B0, &qword_23E3B1480);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E930, &qword_23E3B1528);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4D8, &qword_23E3B2190);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33F4D0, &qword_23E3B1490);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  v38 = a1;
  v45 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E33E918, &qword_23E3B14B8);
  sub_23E3AA7C0();
  if (v46 == 1)
  {
    sub_23E3AA180();
    (*(v18 + 16))(v16, v21, v17);
    swift_storeEnumTagMultiPayload();
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    v22 = sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
    *&v45 = v6;
    *(&v45 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    sub_23E3AA480();
    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    v37[1] = v13;
    v37[2] = v17;
    sub_23E3AAA00();
    if (qword_27E33E560 != -1)
    {
      swift_once();
    }

    v24 = qword_27E33F950;
    v25 = sub_23E3AA9B0();
    v26 = sub_23E3AA9B0();

    v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

    v28 = sub_23E3AA9D0();
    v30 = v29;

    v46 = v28;
    v47 = v30;
    v31 = swift_allocObject();
    v32 = v38;
    memcpy((v31 + 16), v38, 0x88uLL);
    sub_23E366264(v32, &v45);
    sub_23E349C74();
    sub_23E3AA810();
    sub_23E3AA220();
    v33 = sub_23E34A09C(&qword_27E33F3B0, &unk_27E33E8B0, &qword_23E3B1480);
    v34 = v40;
    v35 = v6;
    sub_23E3AA690();
    (*(v41 + 8))(v5, v42);
    (*(v39 + 8))(v9, v6);
    v36 = v43;
    (*(v43 + 16))(v16, v34, v10);
    swift_storeEnumTagMultiPayload();
    sub_23E34A09C(&unk_27E33E8D0, &qword_27E33F4D0, &qword_23E3B1490);
    *&v45 = v35;
    *(&v45 + 1) = v33;
    swift_getOpaqueTypeConformance2();
    sub_23E3AA480();
    return (*(v36 + 8))(v34, v10);
  }
}

uint64_t sub_23E363484(void *a1)
{
  v2 = sub_23E3AA760();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = a1[14];
  v20 = a1[13];
  v21 = v5;
  sub_23E349C74();

  sub_23E3AA5F0();
  v6 = a1[16];
  v20 = a1[15];
  v21 = v6;

  sub_23E3AA5F0();
  sub_23E3AA750();
  sub_23E3AAA00();
  if (qword_27E33E560 != -1)
  {
    swift_once();
  }

  v7 = qword_27E33F950;
  v8 = sub_23E3AA9B0();
  v9 = sub_23E3AA9B0();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_23E3AA9D0();
  v13 = v12;

  v20 = v11;
  v21 = v13;
  v14 = sub_23E3AA5F0();
  v16 = v15;
  LOBYTE(v11) = v17;
  v18 = swift_allocObject();
  memcpy((v18 + 16), a1, 0x88uLL);
  sub_23E366264(a1, &v20);
  sub_23E3AA740();

  sub_23E35BC20(v14, v16, v11 & 1);

  return sub_23E3AA730();
}