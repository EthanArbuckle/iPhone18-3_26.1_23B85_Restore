uint64_t sub_23BA7EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88(v7, v10, v11);
  sub_23B9D2D88(v9, a2, a4);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_23BA7EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v50 = a1;
  v53 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v48 - v10;
  v11 = sub_23BBDD648();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v51 = &v48 - v22;
  v23 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = v49;
  v26 = type metadata accessor for ProductViewButton();
  (*(v12 + 16))(v14, v50 + *(v26 + 52), v11);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v27 = type metadata accessor for ProductViewButtonConfiguration(0);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
LABEL_4:
    sub_23B979910(v17, &qword_27E198E60);
    v30 = sub_23BBD96B8();
    v31 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v30);
    goto LABEL_6;
  }

  v28 = type metadata accessor for ProductViewButtonConfiguration(0);
  v29 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v17, v29 ^ 1u, 1, v28);
  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v31 = v51;
  sub_23B979510();
  sub_23BA827C0(v17, type metadata accessor for ProductViewButtonConfiguration);
LABEL_6:
  v32 = v52;
  sub_23B979510();
  v33 = sub_23BBD96B8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
  {
    v34 = type metadata accessor for ProductViewText.Storage(0);
    v35 = v32;
    v36 = 1;
  }

  else
  {
    (*(*(v33 - 8) + 32))(v32, v20, v33);
    v37 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v35 = v32;
    v36 = 0;
    v34 = v37;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for LayoutMetrics(0);
  __swift_project_value_buffer(v38, &unk_27E1BF7F8);
  sub_23BA82768();
  type metadata accessor for PlaceholderLayouts(0);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, &unk_27E1BF810);
  sub_23BA82768();
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, &unk_27E1BF828);
  sub_23BA82768();
  sub_23B979910(v31, &qword_27E1987C8);
  v39 = &v25[v23[10]];
  v40 = v23[13];
  *&v25[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v41 = v23[14];
  *&v25[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  v25[v23[6]] = 3;
  v25[v23[7]] = 0;
  v25[v23[8]] = 0;
  *v39 = 0;
  *(v39 + 1) = 0;
  v63 = 1;
  v62 = 0;
  v60 = 0;
  v58 = 1;
  v56 = 0;
  v54 = 0;
  v42 = &v25[v23[9]];
  *v42 = 0;
  v42[8] = 1;
  *(v42 + 3) = *(&v64 + 3);
  *(v42 + 9) = v64;
  *(v42 + 2) = 0x4059000000000000;
  v42[24] = 0;
  *(v42 + 7) = *&v61[3];
  *(v42 + 25) = *v61;
  *(v42 + 4) = 0x4059000000000000;
  v42[40] = 0;
  v43 = *v59;
  *(v42 + 11) = *&v59[3];
  *(v42 + 41) = v43;
  *(v42 + 6) = 0;
  v42[56] = v58;
  v44 = *v57;
  *(v42 + 15) = *&v57[3];
  *(v42 + 57) = v44;
  *(v42 + 8) = 0x402C000000000000;
  v42[72] = v56;
  v45 = *v55;
  *(v42 + 19) = *&v55[3];
  *(v42 + 73) = v45;
  *(v42 + 10) = 0x402C000000000000;
  v42[88] = v54;
  *&v25[v23[11]] = swift_getKeyPath();
  *&v25[v23[12]] = swift_getKeyPath();
  v46 = v53;
  sub_23BA82768();
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE08) + 36)) = xmmword_23BBF3A30;
  return sub_23BA827C0(v25, type metadata accessor for ProductViewText);
}

uint64_t sub_23BA7F398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a6;
  v86 = a5;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v67 = sub_23BBDC078();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23BBDBFC8();
  v69 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v63 - v12;
  v13 = sub_23BBDA438();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x28223BE20](v13);
  v72 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v63 - v16;
  v17 = sub_23BBDD648();
  v77 = *(v17 - 8);
  v78 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - v18;
  v76 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v75 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23BBDD648();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - v24;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v9;
  v81 = sub_23BBDD648();
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v84 = &v63 - v32;
  v88 = a2;
  v89 = a3;
  v33 = a3;
  v70 = a4;
  v90 = a4;
  v91 = v86;
  v34 = type metadata accessor for ProductViewButton();
  v35 = v79;
  (*(v23 + 16))(v25, v79 + *(v34 + 56), v22);
  if (__swift_getEnumTagSinglePayload(v25, 1, a2) == 1)
  {
    (*(v23 + 8))(v25, v22);
LABEL_5:
    v40 = v84;
    v41 = v81;
    goto LABEL_6;
  }

  (*(v26 + 32))(v29, v25, a2);
  v36 = *(v34 + 52);
  v38 = v77;
  v37 = v78;
  (*(v77 + 16))(v19, v35 + v36, v78);
  v39 = v33;
  if (__swift_getEnumTagSinglePayload(v19, 1, v33) == 1)
  {
    (*(v38 + 8))(v19, v37);
    (*(v26 + 8))(v29, a2);
    goto LABEL_5;
  }

  v77 = v26;
  v78 = v29;
  v46 = a2;
  v48 = v75;
  v47 = v76;
  (*(v76 + 32))(v75, v19, v39);
  v49 = v71;
  sub_23B9B75DC();
  v50 = v72;
  sub_23BBDA428();
  sub_23BA82720(&qword_27E198E48, MEMORY[0x277CDFB98]);
  v51 = v74;
  v52 = sub_23BBDD6A8();
  v53 = *(v73 + 8);
  v53(v50, v51);
  v53(v49, v51);
  v41 = v81;
  if ((v52 & 1) == 0)
  {
    v54 = v86;
    v55 = (*(v86 + 8))(v39, v86);
    MEMORY[0x28223BE20](v55);
    v64 = v46;
    *(&v63 - 6) = v46;
    *(&v63 - 5) = v39;
    *(&v63 - 4) = v70;
    *(&v63 - 3) = v54;
    *(&v63 - 2) = v78;
    *(&v63 - 1) = v48;
    v56 = v68;
    sub_23BBDBFA8();
    v57 = v82;
    v58 = swift_getWitnessTable();
    v59 = v66;
    sub_23B9D2D88(v56, v57, v58);
    v60 = v69;
    v61 = *(v69 + 8);
    v61(v56, v57);
    sub_23B9D2D88(v59, v57, v58);
    v61(v59, v57);
    v62 = v80;
    (*(v60 + 32))(v80, v56, v57);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v57);
    v40 = v84;
    sub_23BB2F9F4();
    v43 = *(v83 + 8);
    v43(v62, v41);
    (*(v76 + 8))(v75, v39);
    (*(v77 + 8))(v78, v64);
    goto LABEL_7;
  }

  (*(v47 + 8))(v48, v39);
  (*(v77 + 8))(v78, v46);
  v40 = v84;
LABEL_6:
  v42 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v82);
  swift_getWitnessTable();
  sub_23BB2F9F4();
  v43 = *(v83 + 8);
  v43(v42, v41);
LABEL_7:
  v87 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  sub_23B9D2D88(v40, v41, v44);
  return (v43)(v40, v41);
}

uint64_t sub_23BA7FD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a6;
  v24 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v11 = sub_23BBDC078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = v23;
  v29 = a1;
  v30 = v22;
  sub_23B9BE15C();
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v14, v11, WitnessTable);
  v19 = *(v12 + 8);
  v19(v14, v11);
  sub_23B9D2D88(v17, v11, WitnessTable);
  return (v19)(v17, v11);
}

uint64_t sub_23BA7FF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a6;
  v55 = a5;
  v52 = a2;
  v53 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v47 - v9;
  v51 = sub_23BBD96B8();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProductViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  v30 = v53;
  v53 = a3;
  sub_23B9D2D88(v30, a3, v55);
  (*(v16 + 16))(v19, v52, a4);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v20);
    sub_23BA81828();
    v31 = v50;
    sub_23B979510();
    v32 = v51;
    if (__swift_getEnumTagSinglePayload(v31, 1, v51) != 1)
    {
      v39 = v48;
      v40 = v49;
      (*(v49 + 32))(v48, v31, v32);
      (*(v40 + 16))(v47, v39, v32);
      v35 = sub_23BBDB668();
      v36 = v41;
      LODWORD(v52) = v42;
      v38 = v43;
      (*(v40 + 8))(v39, v32);
      sub_23BA827C0(v22, type metadata accessor for ProductViewButtonConfiguration);
      v37 = v52 & 1;
      sub_23BA51B84(v35, v36, v52 & 1);

      goto LABEL_7;
    }

    sub_23BA827C0(v22, type metadata accessor for ProductViewButtonConfiguration);
    v33 = &qword_27E1987C8;
    v34 = v31;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v20);
    v33 = &qword_27E198E60;
    v34 = v15;
  }

  sub_23B979910(v34, v33);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_7:
  v44 = v53;
  (*(v23 + 16))(v26, v29, v53);
  v59 = v35;
  v60 = v36;
  v61 = v37;
  v62 = v38;
  v63[0] = v26;
  v63[1] = &v59;
  v58[0] = v44;
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAE8);
  v56 = v55;
  v57 = sub_23B9FAE20();
  sub_23BB6739C(v63, 2, v58);
  sub_23BA82038(v35, v36, v37, v38);
  v45 = *(v23 + 8);
  v45(v29, v44);
  sub_23BA82038(v59, v60, v61, v62);
  return (v45)(v26, v44);
}

uint64_t sub_23BA804B8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABE8);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - v2;
  v21 = sub_23BBDC148();
  MEMORY[0x28223BE20](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDA508();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v19 = v1;
  sub_23B9B7604();
  sub_23BBDA4F8();
  sub_23BA82720(&qword_27E19ABF0, MEMORY[0x277CDDBB8]);
  v13 = sub_23BBDCF38();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if (v13)
  {
    v14(v12, v6);
LABEL_4:
    v16 = *MEMORY[0x277CE0118];
    v17 = sub_23BBDAA88();
    (*(*(v17 - 8) + 104))(v5, v16, v17);
    sub_23BA82768();
    swift_storeEnumTagMultiPayload();
    sub_23BA82720(&qword_27E19ABA8, MEMORY[0x277CE1260]);
    sub_23BA82720(&qword_27E19ABB0, MEMORY[0x277CDDBB8]);
    sub_23BBDACD8();
    return sub_23BA827C0(v5, MEMORY[0x277CE1260]);
  }

  sub_23BBDA4E8();
  v15 = sub_23BBDCF38();
  v14(v9, v6);
  v14(v12, v6);
  if (v15)
  {
    goto LABEL_4;
  }

  sub_23B9B7604();
  (*(v7 + 16))(v3, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_23BA82720(&qword_27E19ABA8, MEMORY[0x277CE1260]);
  sub_23BA82720(&qword_27E19ABB0, MEMORY[0x277CDDBB8]);
  sub_23BBDACD8();
  return (v14)(v9, v6);
}

uint64_t sub_23BA80914()
{
  type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  swift_dynamicCastMetatype();

  return swift_getKeyPath();
}

uint64_t sub_23BA80970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_23BBDB148();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v72 = *(a1 + 24);
  v73 = v5;
  v48[1] = a1;
  v6 = type metadata accessor for ProductViewButtonFrameModifier();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = (v48 - v7);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ABA0);
  MEMORY[0x28223BE20](v68);
  v9 = v48 - v8;
  v55 = v6;
  v10 = sub_23BBDA358();
  v71 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0);
  v58 = v10;
  v13 = sub_23BBDA358();
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = v48 - v14;
  v56 = v13;
  v15 = sub_23BBDA358();
  v69 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = v48 - v16;
  v17 = sub_23B9FB714();
  v53 = v17;
  WitnessTable = swift_getWitnessTable();
  v89 = v17;
  v90 = WitnessTable;
  v67 = MEMORY[0x277CDFAD8];
  v19 = swift_getWitnessTable();
  v51 = v19;
  v20 = sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0);
  v87 = v19;
  v88 = v20;
  v52 = swift_getWitnessTable();
  v85 = v52;
  v86 = MEMORY[0x277CDFC48];
  v57 = swift_getWitnessTable();
  v83 = v15;
  v84 = v57;
  v60 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = v48 - v21;
  sub_23BBDB2B8();
  v23 = sub_23BBDA358();
  v62 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v49 = v48 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  v25 = sub_23BBDA358();
  v63 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v50 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v59 = v48 - v28;
  sub_23BA804B8(v9);
  v29 = v66;
  sub_23BA81318(&qword_27E198EB0, v66);
  v30 = v55;
  MEMORY[0x23EEB43C0](v29, v68, v55, v53);
  (*(v74 + 8))(v29, v30);
  sub_23B979910(v9, &qword_27E19ABA0);
  sub_23B9AD794();
  v31 = v65;
  v32 = v58;
  sub_23BBDB8A8();
  (*(v71 + 8))(v12, v32);
  v33 = v64;
  v34 = v56;
  sub_23BA7C664();
  (*(v70 + 8))(v31, v34);
  v35 = v75;
  sub_23BBDB118();
  v36 = v57;
  sub_23BBDB968();
  (*(v76 + 8))(v35, v77);
  (*(v69 + 8))(v33, v15);
  sub_23BA80914();
  v83 = v15;
  v84 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  v39 = OpaqueTypeMetadata2;
  sub_23B9968C4();

  (*(v61 + 8))(v22, v39);
  v40 = sub_23BA82720(&qword_27E198368, MEMORY[0x277CDE470]);
  v81 = OpaqueTypeConformance2;
  v82 = v40;
  v41 = swift_getWitnessTable();
  v42 = v50;
  sub_23BBDB858();
  (*(v62 + 8))(v38, v23);
  v43 = sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
  v79 = v41;
  v80 = v43;
  v44 = swift_getWitnessTable();
  v45 = v59;
  sub_23B9D2D88(v42, v25, v44);
  v46 = *(v63 + 8);
  v46(v42, v25);
  sub_23B9D2D88(v45, v25, v44);
  return (v46)(v45, v25);
}

uint64_t sub_23BA81318@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BA81380()
{
  v0 = sub_23BBDA308();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_23BBDC2A8();
  sub_23B9B70F0();
  if (v7)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277CDFA10], v0);
    v8 = sub_23BBDA2F8();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      sub_23B9B70F0();
      v10 = sub_23BBDA2E8();
      v9(v6, v0);
    }
  }

  else
  {
    v10 = sub_23BBDA2E8();
    (*(v1 + 8))(v6, v0);
  }

  return v10 & 1;
}

void *sub_23BA81528@<X0>(void *a1@<X8>)
{
  type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  if (swift_dynamicCastMetatype())
  {
    v2 = sub_23BA19634;
  }

  else
  {
    v2 = sub_23BA19B4C;
  }

  sub_23BA815BC(v2, v4);
  return memcpy(a1, v4, 0x59uLL);
}

void *sub_23BA815BC@<X0>(void (*a1)(void *__return_ptr, void)@<X1>, void *a2@<X8>)
{
  v4 = sub_23BA81380();
  a1(v6, v4 & 1);
  return memcpy(a2, v6, 0x59uLL);
}

uint64_t sub_23BA81614()
{
  swift_getWitnessTable();
  v0 = sub_23BBDAE98();
  v1 = sub_23BBDA358();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  sub_23BA81528(__src);
  __src[95] = 0;
  __src[89] = 0;
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23B9DCCD0(v0, WitnessTable);
  sub_23BA19724(__src, v9, v10, v0, WitnessTable);
  v11 = sub_23B9A6A40();
  v15[0] = WitnessTable;
  v15[1] = v11;
  v12 = swift_getWitnessTable();
  sub_23B9D2D88(v4, v1, v12);
  v13 = *(v2 + 8);
  v13(v4, v1);
  sub_23B9D2D88(v7, v1, v12);
  return (v13)(v7, v1);
}

uint64_t sub_23BA81828()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

void sub_23BA81880()
{
  sub_23BA8296C(319, &qword_27E198D28, MEMORY[0x277CDFB98]);
  if (v0 <= 0x3F)
  {
    sub_23BBDD648();
    if (v1 <= 0x3F)
    {
      sub_23BBDD648();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA81948(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23BBDA438() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a3 + 16) - 8);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  if (v10)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  if (v13)
  {
    v22 = 7;
  }

  else
  {
    v22 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v7 + v17 + 1;
  if (v16 < a2)
  {
    v24 = ((v22 + v21 + ((v19 + v20 + (v23 & ~v17)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v16 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          break;
        }

        goto LABEL_38;
      case 2:
        v28 = *(a1 + v24);
        if (*(a1 + v24))
        {
          goto LABEL_38;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA81BB4);
      case 4:
        v28 = *(a1 + v24);
        if (!v28)
        {
          break;
        }

LABEL_38:
        v29 = v28 - 1;
        if ((v24 & 0xFFFFFFF8) != 0)
        {
          v29 = 0;
          v30 = *a1;
        }

        else
        {
          v30 = 0;
        }

        return v16 + (v30 | v29) + 1;
      default:
        break;
    }
  }

  if (v15 <= 0xFE)
  {
    v31 = *(a1 + v7);
    if (v31 >= 2)
    {
      return (v31 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v33 = (a1 + v23) & ~v17;
  if (v12 != v16)
  {
    if (v13 >= 2)
    {
      v33 = (v33 + v19 + v20) & ~v20;
      v10 = v13;
      v8 = *(a3 + 16);
      goto LABEL_51;
    }

    return 0;
  }

  if (v10 < 2)
  {
    return 0;
  }

LABEL_51:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v10, v8);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23BA81BC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_23BBDA438() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 24);
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v15 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v15;
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v12 + 64);
  if (!v14)
  {
    ++v22;
  }

  v23 = v10 + 1;
  v24 = *(v13 + 80);
  v25 = v10 + 1 + v24;
  v26 = *(v17 + 80);
  v27 = *(v17 + 64);
  if (!v18)
  {
    ++v27;
  }

  v28 = ((v27 + ((v22 + v26 + (v25 & ~v24)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 < a3)
  {
    if (((v27 + ((v22 + v26 + (v25 & ~v24)) & ~v26) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v29 = a3 - v21 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v8 = v30;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v21)
  {
    if (v28)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v21;
    }

    if (v28)
    {
      v32 = ~v21 + a2;
      bzero(a1, v28);
      *a1 = v32;
    }

    switch(v8)
    {
      case 1:
        a1[v28] = v31;
        return;
      case 2:
        *&a1[v28] = v31;
        return;
      case 3:
        goto LABEL_72;
      case 4:
        *&a1[v28] = v31;
        return;
      default:
        return;
    }
  }

  switch(v8)
  {
    case 1:
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 2:
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    case 3:
LABEL_72:
      __break(1u);
      JUMPOUT(0x23BA81F14);
    case 4:
      *&a1[v28] = 0;
      goto LABEL_45;
    default:
LABEL_45:
      if (!a2)
      {
        return;
      }

LABEL_46:
      if (v20 > 0xFE)
      {
        v33 = &a1[v25] & ~v24;
        if (v15 == v21)
        {
          if (v14 < 2)
          {
            return;
          }

          v34 = a2 + 1;
        }

        else
        {
          if (v18 < 2)
          {
            return;
          }

          v33 = (v33 + v22 + v26) & ~v26;
          v34 = a2 + 1;
          v14 = v18;
          v11 = v16;
        }

        __swift_storeEnumTagSinglePayload(v33, v34, v14, v11);
      }

      else if (a2 > 0xFE)
      {
        if (v23 <= 3)
        {
          v35 = ~(-1 << (8 * v23));
        }

        else
        {
          v35 = -1;
        }

        if (v10 != -1)
        {
          v36 = v35 & (a2 - 255);
          if (v23 <= 3)
          {
            v37 = v10 + 1;
          }

          else
          {
            v37 = 4;
          }

          bzero(a1, v23);
          switch(v37)
          {
            case 2:
              *a1 = v36;
              break;
            case 3:
              *a1 = v36;
              a1[2] = BYTE2(v36);
              break;
            case 4:
              *a1 = v36;
              break;
            default:
              *a1 = v36;
              break;
          }
        }
      }

      else
      {
        a1[v10] = -a2;
      }

      return;
  }
}

uint64_t sub_23BA82038(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23BA51C9C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_23BA820E4()
{
  result = qword_27E19DE28;
  if (!qword_27E19DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF0);
    sub_23BA82168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DE28);
  }

  return result;
}

unint64_t sub_23BA82168()
{
  result = qword_27E19DE30;
  if (!qword_27E19DE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DE20);
    sub_23BA82214(qword_27E19DE38, &qword_27E19DE18);
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DE30);
  }

  return result;
}

uint64_t sub_23BA82214(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_23BA82720(&qword_27E19A1D0, type metadata accessor for ProductViewText);
    OUTLINED_FUNCTION_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA822E4()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BA82348()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_23BA82390()
{
  sub_23BBDBFC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  type metadata accessor for ProductViewButtonPlaceholder();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFC8();
  sub_23BBDD648();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  sub_23B97B518(v0, &qword_27E19DDF8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAB0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v1, &qword_27E19AAB0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_31();
  sub_23BA82720(v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_23BA82720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA82768()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA827C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_23BA82838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_23BA8296C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BA828C0()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BA82924()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_23BA8296C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BA829C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ABA0);
  type metadata accessor for ProductViewButtonFrameModifier();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23B9FB714();
  OUTLINED_FUNCTION_14_16();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_31();
  sub_23BA82720(v0, v1);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
  return swift_getWitnessTable();
}

uint64_t sub_23BA82C5C()
{
  type metadata accessor for ProductViewButtonFrameModifier();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_4();
  sub_23BBDAE98();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B9A6A40();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_16()
{

  return swift_getWitnessTable();
}

uint64_t sub_23BA82D64()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_24();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_8_22();
}

uint64_t sub_23BA82E14()
{
  OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_24();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_8_22();
}

uint64_t sub_23BA82EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DF40);
  sub_23BA84634(a6, a8 + v11[10], type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);
  *(a8 + v11[12]) = a7;
  v12 = a8 + v11[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a8 + v11[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a8 + v11[15];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a8 + v11[16];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  v16 = v11[17];
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  swift_storeEnumTagMultiPayload();
  v17 = v11[18];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  swift_storeEnumTagMultiPayload();
  v18 = a8 + v11[19];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a8 + v11[20];
  v40 = 0;
  *v19 = swift_getKeyPath();
  *(v19 + 73) = 0;
  v20 = a8 + v11[21];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a8 + v11[22];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a8 + v11[23];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v23 = a8 + v11[24];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = a8 + v11[25];
  KeyPath = swift_getKeyPath();
  LOBYTE(v35[0]) = 0;
  v26 = swift_getKeyPath();
  LOBYTE(v34[0]) = 0;
  v27 = swift_getKeyPath();
  v39 = 0;
  v28 = swift_getKeyPath();
  v38 = 0;
  v29 = swift_getKeyPath();
  v37 = 0;
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  *(v24 + 16) = v26;
  *(v24 + 24) = 0;
  *(v24 + 32) = v27;
  *(v24 + 40) = 0;
  *(v24 + 48) = v28;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 72) = v29;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  v30 = v11[26];
  v34[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0);
  sub_23BBDBF58();
  *(a8 + v30) = v35[0];
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_23B99FCE0(v35, v34, &qword_27E19A9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8);
  sub_23BBDBF58();
  sub_23B979910(v35, &qword_27E19A9E8);
  v31 = a8 + v11[28];
  LOBYTE(v34[0]) = 0;
  result = sub_23BBDBF58();
  v33 = *(&v35[0] + 1);
  *v31 = v35[0];
  *(v31 + 8) = v33;
  return result;
}

uint64_t sub_23BA83250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DFE8);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SubscriptionStoreContentView();
  v7 = a3 + *(v6 + 36);
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = *(*(a2 - 8) + 32);
  v9 = a3 + *(v6 + 40);

  return v8(v9, a1, a2);
}

uint64_t sub_23BA83334@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DFE8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23B99FCE0(v2, &v13 - v9, &qword_27E19DFE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23BA84890(v10, a1);
  }

  sub_23BBDD5A8();
  v12 = sub_23BBDB338();
  sub_23BBD9978();

  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t SubscriptionStoreContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = *(a1 + 24);
  v47 = *(a1 + 16);
  v48 = v4;
  v5 = type metadata accessor for StoreContentAdapter();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DF40);
  v7 = OUTLINED_FUNCTION_4_20();
  v59 = v5;
  v60 = v6;
  v43 = sub_23BA839C8();
  v44 = v6;
  v61 = v7;
  v62 = v43;
  v52 = sub_23BBDAEC8();
  v8 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_24();
  v14 = type metadata accessor for SubscriptionStaticViewConfiguration();
  OUTLINED_FUNCTION_7();
  v42 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v19 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v50 = v24;
  v51 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  v45 = v2;
  sub_23BA83334(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v14) == 1)
  {
    sub_23B979910(v3, qword_27E19DF50);
    OUTLINED_FUNCTION_4_3();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    swift_getWitnessTable();
    sub_23B9CEBD4();
    sub_23BA82E14();
  }

  else
  {
    sub_23BA84634(v3, v22, type metadata accessor for SubscriptionStaticViewConfiguration);
    sub_23BA845D4(v22, v19, type metadata accessor for SubscriptionStaticViewConfiguration);
    v28 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v29 = swift_allocObject();
    sub_23BA84634(v19, v29 + v28, type metadata accessor for SubscriptionStaticViewConfiguration);
    sub_23BA230E8(sub_23BA83C5C, v29, v47, v44, v48, v43);

    OUTLINED_FUNCTION_4_3();
    v54 = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    v30 = swift_getWitnessTable();
    v31 = v46;
    v32 = OUTLINED_FUNCTION_10_14();
    sub_23B9D2D88(v32, v33, v30);
    v34 = *(v49 + 8);
    v35 = OUTLINED_FUNCTION_10_14();
    v34(v35);
    sub_23B9D2D88(v31, v8, v30);
    sub_23B9CEBD4();
    OUTLINED_FUNCTION_10_14();
    sub_23BA82D64();
    v36 = OUTLINED_FUNCTION_10_14();
    v34(v36);
    (v34)(v31, v8);
    sub_23BA83CDC(v22);
  }

  OUTLINED_FUNCTION_4_3();
  v57 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v37 = swift_getWitnessTable();
  v38 = sub_23B9CEBD4();
  v55 = v37;
  v56 = v38;
  OUTLINED_FUNCTION_2_7();
  v39 = v51;
  v40 = swift_getWitnessTable();
  sub_23B9D2D88(v27, v39, v40);
  return (*(v50 + 8))(v27, v39);
}

unint64_t sub_23BA839C8()
{
  result = qword_27E19DF48;
  if (!qword_27E19DF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DF48);
  }

  return result;
}

uint64_t sub_23BA83A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = type metadata accessor for SubscriptionStaticViewConfiguration();
  sub_23BA845D4(a2 + *(v14 + 24), v8, type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration);

  return sub_23BA82EC4(v9, v10, v11, v12, v13, v8, a1, a3);
}

uint64_t sub_23BA83B2C()
{
  v1 = (type metadata accessor for SubscriptionStaticViewConfiguration() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[8];
  v4 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v5 + 8))(v3);
  }

  type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);

  return swift_deallocObject();
}

uint64_t sub_23BA83C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SubscriptionStaticViewConfiguration() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23BA83A2C(a1, v6, a2);
}

uint64_t sub_23BA83CDC(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStaticViewConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23BA83D80()
{
  sub_23BA84444();
  if (v0 <= 0x3F)
  {
    sub_23BA844A8();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA83E20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCDB8() - 8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = (~(*(v6 + 80) & 0xF8u) & ((*(v6 + 80) & 0xF8) + 40)) + ((((((*(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_25;
  }

  v14 = ((v12 + v11 + 17) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_25:
      if (v9 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((v12 + ((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12, v9, v7);
      }

      else
      {
        v20 = *(a1 + v11);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    switch(v14)
    {
      case 2:
        LODWORD(v14) = *a1;
        break;
      case 3:
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v14) = *a1;
        break;
      default:
        LODWORD(v14) = *a1;
        break;
    }
  }

  return v10 + (v14 | v19) + 1;
}

void sub_23BA8408C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCDB8() - 8);
  v9 = ~(*(v8 + 80) & 0xF8u) & ((*(v8 + 80) & 0xF8) + 40);
  v10 = (*(v8 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v9 + ((((v10 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v15 <= 8)
  {
    v15 = 8;
  }

  v16 = *(v12 + 80);
  v17 = ((v16 + v15 + 17) & ~v16) + *(v12 + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        return;
      case 2:
        *&a1[v17] = v21;
        return;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v17] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_56:
      __break(1u);
      JUMPOUT(0x23BA843F4);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v13 > 0xFE)
        {

          __swift_storeEnumTagSinglePayload((v16 + (&a1[v15 + 8] & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16, a2, v13, v11);
        }

        else if (a2 > 0xFE)
        {
          v25 = v15 | 1;
          v26 = v15 > 3;
          if (v15 <= 3)
          {
            v27 = ~(-1 << (8 * (v15 | 1)));
          }

          else
          {
            v27 = -1;
          }

          v28 = v27 & (a2 - 255);
          if (v26)
          {
            v29 = 4;
          }

          else
          {
            v29 = v25;
          }

          bzero(a1, v25);
          switch(v29)
          {
            case 2:
              *a1 = v28;
              break;
            case 3:
              *a1 = v28;
              a1[2] = BYTE2(v28);
              break;
            case 4:
              *a1 = v28;
              break;
            default:
              *a1 = v28;
              break;
          }
        }

        else
        {
          a1[v15] = -a2;
        }
      }

      return;
  }
}

void sub_23BA84444()
{
  if (!qword_27E19DFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19DF50);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19DFD8);
    }
  }
}

void sub_23BA844A8()
{
  if (!qword_27E19DFE0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19DFE0);
    }
  }
}

uint64_t sub_23BA844F8()
{
  type metadata accessor for StoreContentAdapter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DF40);
  OUTLINED_FUNCTION_4_20();
  sub_23BA839C8();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  sub_23B9CEBD4();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t sub_23BA845D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BA84634(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BA846B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_23B99FCE0(a1, &v6 - v3, qword_27E19DF50);
  return sub_23BA9BBCC(v4);
}

uint64_t sub_23BA8475C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB1702C();
  *v0 = result;
  return result;
}

uint64_t sub_23BA847B0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA90BF8();
  *v0 = result;
  return result;
}

uint64_t sub_23BA847D8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA90BF8();
  *v0 = result;
  return result;
}

uint64_t sub_23BA84824()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB1702C();
  *v0 = result;
  return result;
}

uint64_t sub_23BA84890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_23BBDACC8();
}

uint64_t OUTLINED_FUNCTION_8_22()
{

  return sub_23BBDACD8();
}

uint64_t sub_23BA84A10()
{
  v3 = OUTLINED_FUNCTION_8_23();
  (*(*(v3 - 8) + 16))(v0, v1, v3);

  return sub_23BA84A84(v1, v2);
}

uint64_t sub_23BA84A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDD648();
  (*(*(v4 - 8) + 8))(a1, v4);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a2);
}

uint64_t sub_23BA84B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDD648();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_23BA84B70()
{
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_0();
  v2 = MEMORY[0x28223BE20](v1);
  (*(v4 + 16))(&v8 - v3, v0, v2);
  v5 = OUTLINED_FUNCTION_46();
  return sub_23BA84B00(v5, v6);
}

uint64_t sub_23BA84C1C(uint64_t a1)
{
  sub_23BA84B70();
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_23BA84C7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23BA84CD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

BOOL sub_23BA84D28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  (*(v5 + 16))(&v14 - v8, v1, v3, v7);
  v10 = __swift_getEnumTagSinglePayload(v9, 1, v2) != 1;
  v11 = OUTLINED_FUNCTION_46();
  v12(v11);
  return v10;
}

void (*sub_23BA84E18(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[1] = *(a3 + 16);
  sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  a1[2] = v8;
  if (!a2)
  {
    v9 = v8;
    (*(v6 + 16))();
    OUTLINED_FUNCTION_3_21(v9);
    if (!v10)
    {
      return sub_23BA84F90;
    }

    __break(1u);
  }

  sub_23BBDD768();

  OUTLINED_FUNCTION_5_21();
  *a1 = a2;
  v12 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v12);

  v13 = OUTLINED_FUNCTION_2_24();
  MEMORY[0x23EEB5890](v13);
  result = OUTLINED_FUNCTION_7_25();
  __break(1u);
  return result;
}

void sub_23BA84F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  (*(*(*(a1 + 8) - 8) + 8))(v1);

  free(v1);
}

uint64_t sub_23BA84FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_0();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v13 = *(v12 + 56);
  v14 = *(v7 - 8);
  (*(v14 + 16))(v22 + v13 - v10, v3, v7, v9);
  if (__swift_getEnumTagSinglePayload(&v11[v13], 1, v6) != 1 && a2 == 0)
  {
    v16 = *(v14 + 8);
    v16(v3, v7);
    (*(*(v6 - 8) + 32))(v3, a1, v6);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
    return (v16)(&v11[v13], v7);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_23BBDD768();

    OUTLINED_FUNCTION_5_21();
    v23 = v17;
    v24 = v18;
    v22[1] = a2;
    v19 = sub_23BBDDA38();
    MEMORY[0x23EEB5890](v19);

    v20 = OUTLINED_FUNCTION_2_24();
    MEMORY[0x23EEB5890](v20);
    result = OUTLINED_FUNCTION_7_25();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA85200(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void (*sub_23BA85218(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v5 = v3;
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[1] = v3;
  v8[2] = a3;
  v9 = *(a3 + 16);
  v8[3] = v9;
  v10 = sub_23BBDD648();
  v11 = *(v10 - 8);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v8[4] = v12;
  v13 = *(v9 - 8);
  v14 = v13;
  v8[5] = v13;
  v15 = *(v13 + 64);
  v8[6] = __swift_coroFrameAllocStub(v15);
  v16 = __swift_coroFrameAllocStub(v15);
  v8[7] = v16;
  v17 = *a2;
  if (!*a2)
  {
    v18 = v16;
    (*(v11 + 16))(v12, v5, v10);
    if (__swift_getEnumTagSinglePayload(v12, 1, v9) != 1)
    {
      (*(v14 + 32))(v18, v12, v9);
      return sub_23BA85484;
    }

    __break(1u);
  }

  *v8 = v17;
  v20 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v20);

  MEMORY[0x23EEB5890](0x20666F2074756F20, 0xEE0073646E756F62);
  sub_23BBDD068();
  result = sub_23BBDD908();
  __break(1u);
  return result;
}

void sub_23BA85484(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    (*(v6 + 16))((*a1)[6], v4, v7);
    sub_23BA84FF0(v3, 0, v8);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v5 = v2[4];
    sub_23BA84FF0((*a1)[7], 0, v2[2]);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_23BA85588(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDDB88();
  swift_getWitnessTable();
  sub_23BBDDA28();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_23BBDD568();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = *(*(v4 - 8) + 8);

  return v6(a1, v4);
}

void (*sub_23BA856E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_23BA85760(v8, a2, a3, a4);
  return sub_23B97E318;
}

void (*sub_23BA85760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v10 = sub_23BBDDB88();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v9[6] = v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = sub_23BBDD568();
  v9[7] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v9[8] = v15;
  v9[9] = __swift_coroFrameAllocStub(*(v15 + 64));
  (*(v16 + 16))();
  sub_23BA85CFC(a2, a3, a4, v13);
  return sub_23BA8593C;
}

void sub_23BA8593C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v10 = *(*a1 + 56);
  v8 = *(*a1 + 24);
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_23BBDDA28();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_23BBDDA28();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_23BA85BB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BA84E14();
  *a1 = result;
  return result;
}

void (*sub_23BA85BD8(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23BA84E18(v6, *a2, a3);
  return sub_23BA85C4C;
}

void sub_23BA85C4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23BA85C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_23BA85CFC(a1, a2, WitnessTable, a3);
}

uint64_t sub_23BA85CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_23BBDD568();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v36 - v18;
  sub_23BBDD438();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_23BBDD4A8();
  result = sub_23BBDCED8();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_23BBDD448();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_23BBDDB88();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA8618C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23BA86218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA85200(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BA86244(uint64_t *a1)
{
  result = sub_23BA85200(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_23BA86270(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA8629C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA86270(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BA862C8(uint64_t *a1)
{
  result = sub_23BA86270(*a1);
  *a1 = result;
  return result;
}

BOOL sub_23BA862F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v35 = a2;
  v5 = *(a3 - 8);
  v32 = a4;
  v33 = v5;
  MEMORY[0x28223BE20](a1);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  OUTLINED_FUNCTION_7_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v21 = *(v20 + 48);
  v22 = *(v9 + 16);
  v22(&v30 - v18, v34, v7, v17);
  (v22)(&v19[v21], v35, v7);
  OUTLINED_FUNCTION_3_21(v19);
  if (!v23)
  {
    (v22)(v12, v19, v7);
    OUTLINED_FUNCTION_3_21(&v19[v21]);
    if (!v23)
    {
      v25 = v33;
      v26 = &v19[v21];
      v27 = v31;
      (*(v33 + 32))(v31, v26, a3);
      v28 = sub_23BBDCF38();
      v29 = *(v25 + 8);
      v29(v27, a3);
      v29(v12, a3);
      (*(v9 + 8))(v19, v7);
      return (v28 & 1) != 0;
    }

    (*(v33 + 8))(v12, a3);
LABEL_9:
    (*(v15 + 8))(v19, TupleTypeMetadata2);
    return 0;
  }

  OUTLINED_FUNCTION_3_21(&v19[v21]);
  if (!v23)
  {
    goto LABEL_9;
  }

  (*(v9 + 8))(v19, v7);
  return 1;
}

uint64_t sub_23BA865E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBDD648();

  return MEMORY[0x2821FCA60](a1, v5, a3);
}

uint64_t sub_23BA8663C(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  sub_23BA865E8(v5, a1, a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA86694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FC708](v4, v5, a3, v6, v7);
}

uint64_t sub_23BA86704()
{
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();

  return sub_23BBDD3F8();
}

uint64_t sub_23BA86778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FC718](v4, v5, a3, v6, v7);
}

uint64_t sub_23BA867F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_23BBDDBB8();
  sub_23BA865E8(v6, a2, v4);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA86898()
{
  result = qword_27E19E000;
  if (!qword_27E19E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E000);
  }

  return result;
}

uint64_t sub_23BA86A60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DFF8);
    sub_23BA86898();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA86B98()
{
  result = sub_23BBDD648();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA86C08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23BA86D90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BA86FB0);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t OUTLINED_FUNCTION_7_25()
{

  return sub_23BBDD908();
}

uint64_t OUTLINED_FUNCTION_8_23()
{

  return sub_23BBDD648();
}

uint64_t sub_23BA870C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA870E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t sub_23BA87154(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v62 = a2;
  v63 = a4;
  v64 = a1;
  v65 = a3;
  v58 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_5();
  v57 = v10;
  MEMORY[0x28223BE20](v11);
  v61 = v54 - v12;
  OUTLINED_FUNCTION_5_3();
  type metadata accessor for TotalLineLimitLayout.TextSubview();
  OUTLINED_FUNCTION_7();
  v59 = v14;
  v60 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v66 = v16 - v15;
  OUTLINED_FUNCTION_5_3();
  v17 = sub_23BBDA098();
  v18 = OUTLINED_FUNCTION_2_25(&qword_27E199DF0);
  v19 = sub_23BBDD458();
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v21 = v19;
    v69 = MEMORY[0x277D84F90];
    sub_23BA92CC8();
    v20 = v69;
    result = sub_23BBDD438();
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v54[0] = v5;
    v56 = (v8 + 16);
    v55 = (v8 + 8);
    v54[2] = v18;
    v54[1] = a5;
    v23 = v58;
    do
    {
      v24 = sub_23BBDD558();
      v25 = *v56;
      v26 = v61;
      (*v56)(v61);
      v24(v68, 0);
      v27 = v57;
      (v25)(v57, v26, v23);
      v28 = v66;
      (v25)(v66, v27, v23);
      sub_23BBDA418();
      v68[0] = v29 & 1;
      v67 = v30 & 1;
      sub_23BBD9F18();
      v31 = v17;
      v32 = v28;
      v33 = v60;
      v34 = (v28 + *(v60 + 20));
      *v34 = v35;
      v34[1] = v36;
      v68[0] = v62 & 1;
      v67 = v63 & 1;
      sub_23BBD9F18();
      v38 = v37;
      v40 = v39;
      v41 = *v55;
      (*v55)(v27, v23);
      v41(v26, v23);
      v42 = (v32 + *(v33 + 24));
      *v42 = v38;
      v42[1] = v40;
      v69 = v20;
      v43 = *(v20 + 16);
      if (v43 >= *(v20 + 24) >> 1)
      {
        sub_23BA92CC8();
        v20 = v69;
      }

      *(v20 + 16) = v43 + 1;
      sub_23BA894F8(v66, v20 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v43);
      sub_23BBDD4B8();
      --v21;
      v17 = v31;
    }

    while (v21);
  }

  v68[0] = v62 & 1;
  LOBYTE(v69) = v63 & 1;
  sub_23BA8758C(v20, v64, v62 & 1, v65, v63 & 1);
  v45 = v44;

  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (v45 + 56);
    v48 = 0.0;
    v49 = 0.0;
    do
    {
      v50 = *(v47 - 2);
      v51 = *(v47 - 1);
      v52 = *v47;
      v47 += 4;
      v53 = v52;
      if (v49 <= v50)
      {
        v49 = v50;
      }

      v48 = v48 + v51 + v53;
      --v46;
    }

    while (v46);
  }
}

void sub_23BA8758C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v123 = a3;
  v122 = a2;
  v125 = type metadata accessor for TotalLineLimitLayout.TextSubview();
  v119 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v111 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E148);
  MEMORY[0x28223BE20](v15);
  v118 = (&v111 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E150);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = (&v111 - v21);
  MEMORY[0x28223BE20](v22);
  v114 = &v111 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = (&v111 - v25);
  v27 = swift_allocObject();
  v28 = 0.0;
  v127 = *(a1 + 16);
  v29 = sub_23BA88BE8(0, v127, 0.0, 0.0, 0.0);
  v117 = v27;
  *(v27 + 16) = v29;
  v121 = v27 + 16;
  v30 = swift_allocObject();
  v31 = 0x7FF0000000000000;
  if ((a5 & 1) == 0)
  {
    v31 = a4;
  }

  v116 = v30;
  *(v30 + 16) = v31;
  v32 = (v30 + 16);
  v33 = swift_allocObject();
  v34 = *v6;
  v115 = v33;
  *(v33 + 16) = v34;
  v35 = (v33 + 16);

  v126 = v35;
  swift_beginAccess();
  v128 = v32;
  swift_beginAccess();
  v36 = 0;
  v37 = v14;
  v113 = v14 + 8;
  v124 = v6;
  for (i = a1; ; a1 = i)
  {
    if (v36 == v127)
    {
      v38 = 1;
      v36 = v127;
      v39 = v114;
    }

    else
    {
      if (v36 >= v127)
      {
        goto LABEL_91;
      }

      if (__OFADD__(v36, 1))
      {
        goto LABEL_92;
      }

      v40 = a1 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v36;
      v41 = *(v15 + 48);
      v42 = v6;
      v43 = v19;
      v44 = v11;
      v45 = a1;
      v46 = v118;
      *v118 = v36;
      sub_23BA89650(v40, v46 + v41);
      v47 = v46;
      a1 = v45;
      v11 = v44;
      v19 = v43;
      v6 = v42;
      v39 = v114;
      sub_23B97A69C(v47, v114, &qword_27E19E148);
      v38 = 0;
      ++v36;
    }

    __swift_storeEnumTagSinglePayload(v39, v38, 1, v15);
    sub_23B97A69C(v39, v26, &qword_27E19E150);
    if (__swift_getEnumTagSinglePayload(v26, 1, v15) == 1)
    {
      break;
    }

    v48 = *v26;
    sub_23BA894F8(v26 + *(v15 + 48), v37);
    if (*v126 < 1 || (v49 = *v128, *v128 <= 0.0))
    {
LABEL_16:
      sub_23BA896C8(v37);
      break;
    }

    sub_23BA88C6C(v48, a1, v6);
    v51 = v50;
    v52 = v50 + *&v113[*(v125 + 20)];
    if (v49 < v52)
    {
      v53 = v52 - v49;
      if (v53 >= *(v6 + 16) - v28)
      {
        goto LABEL_16;
      }

      v28 = v28 + v53;
      *v128 = v49 + v53;
    }

    v54 = v117;
    sub_23BA88F24(v48, 1, v117, v115);
    v131 = v123 & 1;
    v130 = 0;
    sub_23BBD9F18();
    v55 = v116;
    sub_23BA89038(v48, v54, v116, v56, v57);
    sub_23BA89148(v48, v54, v55, v51);
    sub_23BA896C8(v37);
    v6 = v124;
  }

  swift_beginAccess();
  v58 = 0;
  v114 = v11 + 8;
LABEL_18:
  v59 = v120;
  while (1)
  {
    if (v58 == v127)
    {
      v60 = 1;
      v58 = v127;
    }

    else
    {
      if (v58 >= v127)
      {
        goto LABEL_89;
      }

      if (__OFADD__(v58, 1))
      {
        goto LABEL_90;
      }

      v61 = a1 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v58;
      v62 = *(v15 + 48);
      v63 = v118;
      *v118 = v58;
      sub_23BA89650(v61, v63 + v62);
      sub_23B97A69C(v63, v19, &qword_27E19E148);
      v60 = 0;
      ++v58;
    }

    __swift_storeEnumTagSinglePayload(v19, v60, 1, v15);
    sub_23B97A69C(v19, v59, &qword_27E19E150);
    if (__swift_getEnumTagSinglePayload(v59, 1, v15) == 1)
    {
      goto LABEL_57;
    }

    v64 = *v59;
    sub_23BA894F8(v59 + *(v15 + 48), v11);
    v65 = *v126;
    if (*v126 < 1)
    {
      break;
    }

    v66 = *v128;
    if (*v128 <= 0.0)
    {
      break;
    }

    v67 = &v11[*(v125 + 24)];
    v68 = *&v114[*(v125 + 20)];
    v69 = v67[1];
    v70 = round(v69 / v68);
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v70 <= -9.22337204e18)
    {
      goto LABEL_82;
    }

    if (v70 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

    v71 = *v121;
    if (v64 >= *(*v121 + 16))
    {
      goto LABEL_85;
    }

    v72 = v71 + 32 * v64;
    v74 = *(v72 + 32);
    v73 = v72 + 32;
    v75 = v70 - v74;
    if (__OFSUB__(v70, v74))
    {
      goto LABEL_86;
    }

    if (v75 < 1)
    {
LABEL_55:
      sub_23BA896C8(v11);
      goto LABEL_18;
    }

    if (v69 <= v66 + *(v73 + 16))
    {
      if (v65 >= v75)
      {
        v92 = v117;
        sub_23BA88F24(v64, v70, v117, v115);
        v88 = *v67;
        v90 = v64;
        v89 = v69;
        v91 = v92;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23BA896B4();
          v71 = v93;
        }

        if (v64 >= *(v71 + 16))
        {
          goto LABEL_98;
        }

        v83 = v71 + 32 * v64;
        v85 = *(v83 + 32);
        v84 = (v83 + 32);
        v86 = v85 + v65;
        if (__OFADD__(v85, v65))
        {
          goto LABEL_99;
        }

        *v84 = v86;
        v87 = v117;
        *(v117 + 16) = v71;
        *v126 = 0;
        v130 = v123 & 1;
        v129 = 0;
        sub_23BBD9F18();
        v90 = v64;
        v91 = v87;
      }

      sub_23BA89038(v90, v91, v116, v88, v89);
      v59 = v120;
    }

    else
    {
      if (*(v124 + 16) - v28 > 0.0)
      {
        v76 = *(v124 + 16) - v28;
      }

      else
      {
        v76 = 0.0;
      }

      v130 = v123 & 1;
      v129 = 0;
      sub_23BBD9F18();
      if (v64 >= *(v71 + 16))
      {
        goto LABEL_88;
      }

      v79 = v78;
      v80 = v66 + *(v73 + 16);
      if (v79 > v76 + v80 + 0.5)
      {
        goto LABEL_55;
      }

      if (v80 < v79)
      {
        v81 = v79 - v80;
        v28 = v28 + v81;
        *v128 = v66 + v81;
      }

      sub_23BA89038(v64, v117, v116, v77, v79);
      v82 = round(v79 / v68);
      if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_95;
      }

      v59 = v120;
      if (v82 <= -9.22337204e18)
      {
        goto LABEL_96;
      }

      if (v82 >= 9.22337204e18)
      {
        goto LABEL_97;
      }

      sub_23BA88F24(v64, v82, v117, v115);
    }

    sub_23BA896C8(v11);
  }

  sub_23BA896C8(v11);
LABEL_57:
  v94 = *v128;
  v95 = *v121;
  if (*v128 <= 0.0 || v28 != 0.0 || (v96 = *(v95 + 16)) == 0)
  {
LABEL_80:

    return;
  }

  v97 = 0;
  v98 = 32;
  v99 = *(v95 + 16);
  while (1)
  {
    v100 = *(v95 + v98);
    if (v100 >= 1)
    {
      v100 = 1;
    }

    v101 = __OFADD__(v97, v100);
    v97 += v100;
    if (v101)
    {
      break;
    }

    v98 += 32;
    if (!--v99)
    {
      v102 = v97 <= 1;
      v103 = v97 - 1;
      if (!v102 && (*(v124 + 32) & 1) == 0 && (*(v124 + 48) & 1) == 0)
      {
        v104 = *(v124 + 24);
        v105 = *(v124 + 40);
        if (v104 < v105)
        {
          v106 = 0;
          v107 = v105 - v104;
          if (v107 >= v94 / v103)
          {
            v108 = v94 / v103;
          }

          else
          {
            v108 = v107;
          }

          for (j = 1; v96 != j; ++j)
          {
            if (j >= *(v95 + 16))
            {
              goto LABEL_93;
            }

            if (!*(v95 + v106 + 64))
            {
              break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23BA896B4();
              v95 = v110;
            }

            if (j >= *(v95 + 16))
            {
              goto LABEL_94;
            }

            *(v95 + v106 + 88) = v108 + *(v95 + v106 + 88);
            *v121 = v95;
            v94 = v94 - v108;
            *v128 = v94;
            v106 += 32;
          }
        }
      }

      goto LABEL_80;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_23BA880B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9)
{
  v114 = a1;
  v113 = sub_23BBDA228();
  OUTLINED_FUNCTION_7();
  v108 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  v111 = &v102 - v17;
  OUTLINED_FUNCTION_5_3();
  v129 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v106 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  v124 = (&v102 - v25);
  OUTLINED_FUNCTION_5_3();
  v122 = type metadata accessor for TotalLineLimitLayout.TextSubview();
  OUTLINED_FUNCTION_7();
  v121 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E120);
  MEMORY[0x28223BE20](v31 - 8);
  v109 = &v102 - v32;
  OUTLINED_FUNCTION_5_3();
  v33 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v104 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  v105 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E128);
  MEMORY[0x28223BE20](v38 - 8);
  v103 = &v102 - v39;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E130);
  MEMORY[0x28223BE20](v107);
  v41 = &v102 - v40;
  v42 = OUTLINED_FUNCTION_2_25(&qword_27E199DF0);
  v43 = sub_23BBDD458();
  v116 = a4;
  v115 = a3;
  v118 = v9;
  v117 = v41;
  v127 = a9;
  v128 = v33;
  if (v43)
  {
    v44 = v43;
    v132 = MEMORY[0x277D84F90];
    sub_23BA92CC8();
    v45 = v132;
    result = sub_23BBDD438();
    if (v44 < 0)
    {
      goto LABEL_17;
    }

    v102 = v22;
    v125 = a4;
    v126 = a3;
    v47 = (v106 + 16);
    v120 = (v106 + 8);
    v119 = v42;
    do
    {
      v48 = sub_23BBDD558();
      v49 = *v47;
      v50 = v30;
      v51 = v124;
      v52 = v129;
      (*v47)(v124);
      v48(v131, 0);
      v53 = v123;
      (v49)(v123, v51, v52);
      (v49)(v50, v53, v52);
      sub_23BBDA418();
      LOBYTE(v131[0]) = v54 & 1;
      v130 = v55 & 1;
      sub_23BBD9F18();
      v56 = v122;
      v57 = (v50 + *(v122 + 20));
      *v57 = v58;
      v57[1] = v59;
      LOBYTE(v131[0]) = 0;
      v130 = 0;
      sub_23BBD9F18();
      v61 = v60;
      v63 = v62;
      v64 = *v120;
      (*v120)(v53, v52);
      v65 = v51;
      v30 = v50;
      v64(v65, v52);
      v66 = (v50 + *(v56 + 24));
      *v66 = v61;
      v66[1] = v63;
      v132 = v45;
      v67 = *(v45 + 16);
      if (v67 >= *(v45 + 24) >> 1)
      {
        sub_23BA92CC8();
        v45 = v132;
      }

      *(v45 + 16) = v67 + 1;
      sub_23BA894F8(v50, v45 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v67);
      v33 = v128;
      v42 = v119;
      sub_23BBDD4B8();
      --v44;
    }

    while (v44);
    v22 = v102;
    v41 = v117;
    v68 = v108;
    v70 = *&v125;
    v69 = *&v126;
  }

  else
  {
    v69 = *&a3;
    v70 = *&a4;
    v45 = MEMORY[0x277D84F90];
    v68 = v108;
  }

  LOBYTE(v131[0]) = 0;
  LOBYTE(v132) = 0;
  sub_23BA8758C(v45, v69, 0, v70, 0);
  v72 = v71;
  v74 = v73;

  v75 = a2 - v74;
  v76 = v104;
  v77 = v103;
  (*(v104 + 16))(v103, v127, v33);
  (*(v76 + 32))(v105, v77, v33);
  sub_23BA8955C(&qword_27E19E138);
  sub_23BBDD188();
  v78 = &v41[*(v107 + 52)];
  *v78 = v72;
  *(v78 + 1) = 0;
  v123 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E140);
  *&v125 = v106 + 16;
  v80 = *(v79 + 36);
  v121 = v106 + 32;
  v120 = (v68 + 2);
  v108 = v68 + 1;
  v124 = (v106 + 8);
  v126 = v72;
  v81 = (*&v72 + 56);
  v82 = 1;
  v122 = v80;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v41[v80] == v131[0])
    {
      goto LABEL_15;
    }

    v83 = sub_23BBDD558();
    (**&v125)(v22);
    v83(v131, 0);
    result = sub_23BBDD4B8();
    v84 = *(*&v126 + 16);
    if (v82 - 1 == v84)
    {
      (*v124)(v22, v129);
LABEL_15:
      v41[*(v107 + 56)] = 1;
      return sub_23BA895A0(v41);
    }

    if (v82 - 1 >= v84)
    {
      break;
    }

    v85 = *v81;
    *(v123 + 1) = v82;
    v127 = v81;
    v86 = v22;
    v87 = *v121;
    v88 = v109;
    v89 = v129;
    (*v121)(v109, v22, v129);
    v90 = v110;
    v87(v110, v88, v89);
    v133.origin.x = v114;
    v133.origin.y = a2;
    v133.size.width = v115;
    v133.size.height = v116;
    CGRectGetWidth(v133);
    LOBYTE(v131[0]) = 0;
    LOBYTE(v132) = 0;
    v91 = v42;
    v92 = v111;
    sub_23BBD9F08();
    MEMORY[0x23EEB2A20](*(v118 + 8));
    sub_23BBDA208();
    v134.origin.x = OUTLINED_FUNCTION_6_16();
    CGRectGetMinX(v134);
    v135.origin.x = OUTLINED_FUNCTION_6_16();
    CGRectGetWidth(v135);
    v93 = v112;
    v94 = v113;
    (*v120)(v112, v92, v113);
    sub_23BBDA208();
    sub_23BBDA218();
    v95 = *v108;
    (*v108)(v93, v94);
    LOBYTE(v131[0]) = 0;
    LOBYTE(v132) = 0;
    sub_23BBD9F28();
    sub_23BBDA218();
    v97 = v96;
    v98 = v92;
    v42 = v91;
    v99 = v94;
    v22 = v86;
    v41 = v117;
    v95(v98, v99);
    v100 = v127;
    v101 = v90;
    v80 = v122;
    (*v124)(v101, v89);
    v75 = v75 + v85 + v97;
    ++v82;
    v81 = v100 + 4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23BA88B48()
{
  v0 = sub_23BBDA3E8();
  __swift_allocate_value_buffer(v0, qword_27E1BFD38);
  __swift_project_value_buffer(v0, qword_27E1BFD38);
  sub_23BBDA3D8();
  return sub_23BBDA3C8();
}

BOOL sub_23BA88BA0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 == a6;
  if (a4 != a7)
  {
    v8 = 0;
  }

  if (a1 != a2)
  {
    v8 = 0;
  }

  return a5 == a8 && v8;
}

uint64_t sub_23BA88BE8(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (a2)
    {
      v9 = result;
      result = sub_23BBDD288();
      *(result + 16) = v5;
      v10 = (result + 56);
      do
      {
        *(v10 - 3) = v9;
        *(v10 - 2) = a3;
        *(v10 - 1) = a4;
        *v10 = a5;
        v10 += 4;
        --v5;
      }

      while (v5);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_23BA88C6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBD9CE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for TotalLineLimitLayout.TextSubview() - 8;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  if (a1 && (*(a3 + 32) & 1) != 0)
  {
    v20 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = *(a2 + 16);
      if (v20 < v21)
      {
        v28 = v7;
        v29 = v21;
        v22 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v26 = *(v17 + 72);
        v27 = v22;
        sub_23BA89650(v22 + v26 * v20, &v26 - v18);
        sub_23BBD9F38();
        v23 = sub_23BBD9F58();
        v24 = *(*(v23 - 8) + 8);
        v24(v19, v23);
        if (v29 > a1)
        {
          sub_23BA89650(v27 + v26 * a1, v15);
          sub_23BBD9F38();
          v24(v15, v23);
          sub_23BBD9CD8();
          v25 = *(v28 + 8);
          v25(v9, v6);
          v25(v12, v6);
          return;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_23BA88F24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(a3 + 16);
  if (*(v9 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v9 + 32 * a1 + 32);
  v4 = a2 - v10;
  if (!__OFSUB__(a2, v10))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  sub_23BA896B4();
  v9 = v14;
LABEL_5:
  if (*(v9 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 32 * a1 + 32) = a2;
    *(a3 + 16) = v9;
    swift_beginAccess();
    v12 = *(a4 + 16);
    v13 = v12 - v4;
    if (!__OFSUB__(v12, v4))
    {
      swift_beginAccess();
      *(a4 + 16) = v13;
      return;
    }
  }

  __break(1u);
}

void sub_23BA89038(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a2 + 16);
    if (*(v11 + 16) > a1)
    {
      v5 = *(v11 + 32 * a1 + 48);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  sub_23BA896B4();
  v11 = v15;
LABEL_4:
  if (*(v11 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v11 + 32 * a1;
    *(v13 + 40) = a4;
    *(v13 + 48) = a5;
    *(a2 + 16) = v11;
    swift_beginAccess();
    v14 = *(a3 + 16) - (a5 - v5);
    swift_beginAccess();
    *(a3 + 16) = v14;
  }
}

void sub_23BA89148(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + 16);
    if (*(v9 + 16) > a1)
    {
      v4 = *(v9 + 32 * a1 + 56);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  sub_23BA896B4();
  v9 = v12;
LABEL_4:
  if (*(v9 + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 32 * a1 + 56) = a4;
    *(a2 + 16) = v9;
    swift_beginAccess();
    v11 = *(a3 + 16) - (a4 - v4);
    swift_beginAccess();
    *(a3 + 16) = v11;
  }
}

uint64_t sub_23BA8924C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197788 != -1)
  {
    swift_once();
  }

  v2 = sub_23BBDA3E8();
  v3 = __swift_project_value_buffer(v2, qword_27E1BFD38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*sub_23BA893E0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

unint64_t sub_23BA89458()
{
  result = qword_27E19E118;
  if (!qword_27E19E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E118);
  }

  return result;
}

uint64_t type metadata accessor for TotalLineLimitLayout.TextSubview()
{
  result = qword_27E19E158;
  if (!qword_27E19E158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BA894F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TotalLineLimitLayout.TextSubview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA8955C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23BBDA098();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA895A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA89608()
{

  return swift_deallocObject();
}

uint64_t sub_23BA89650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TotalLineLimitLayout.TextSubview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA896C8(uint64_t a1)
{
  v2 = type metadata accessor for TotalLineLimitLayout.TextSubview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA89724(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA89768(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD9F58();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BA897C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD9F58();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_23BA89810()
{
  sub_23BBD9F58();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_25(unint64_t *a1)
{

  return sub_23BA8955C(a1);
}

uint64_t getEnumTagSinglePayload for AuditTokenDecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuditTokenDecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23BA8991C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BA89938(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

void static SubscriptionStoreControlPlacementKey.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

double static SubscriptionStoreControlPlacementKey.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static SubscriptionStoreControlPlacementKey.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

uint64_t sub_23BA899B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_23B9C9234(v2, &v13);
  if (v14 >= 6)
  {
    sub_23B97B104(v2);
    sub_23B98473C(&v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = a1();
    (*(v8 + 16))(v9 & 1, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v5 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v5;
    *(a2 + 32) = *(v2 + 32);
    return sub_23B9C9290(&v13);
  }
}

void static SubscriptionStoreControlPlacementKey.leading.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBEDA30);
}

void static SubscriptionStoreControlPlacementKey.trailing.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4740);
}

void static SubscriptionStoreControlPlacementKey.bottom.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4750);
}

uint64_t _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_23B9C9234(a1, v16);
  sub_23B9C9234(a2, &v18);
  switch(v17)
  {
    case 0:
      if (v19)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 1:
      if (v19 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 2:
      if (v19 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 3:
      if (v19 != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 4:
      if (v19 != 4)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    case 5:
      if (v19 != 5)
      {
        goto LABEL_16;
      }

LABEL_13:
      sub_23B9C9290(v16);
      v3 = 1;
      break;
    default:
      sub_23B9C9234(v16, v15);
      if (v19 >= 6)
      {
        sub_23B98473C(v15, v12);
        sub_23B98473C(&v18, v10);
        v5 = v13;
        v6 = v14;
        v7 = __swift_project_boxed_opaque_existential_1(v12, v13);
        v8 = v11;
        v9 = __swift_project_boxed_opaque_existential_1(v10, v11);
        v3 = sub_23BA89E10(v7, v9, v5, v8, v6);
        __swift_destroy_boxed_opaque_existential_1(v10);
        __swift_destroy_boxed_opaque_existential_1(v12);
        sub_23B9C9290(v16);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_16:
        sub_23BA8A388(v16);
        v3 = 0;
      }

      break;
  }

  return v3 & 1;
}

uint64_t SubscriptionStoreControlPlacementKey.hashValue.getter()
{
  sub_23BBDDBB8();
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  MEMORY[0x23EEB63A0](v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA89D04()
{
  sub_23BBDDBB8();
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  MEMORY[0x23EEB63A0](v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BA89D98()
{
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1;
}

uint64_t sub_23BA89E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a5;
  v8 = sub_23BBDD648();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v15, a2, a4);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
    (*(v16 + 32))(v18, v12, a3);
    v20 = sub_23BBDCF38();
    (*(v16 + 8))(v18, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_23BA8A098()
{
  sub_23B9C9234(v0, &v4);
  v1 = v5;
  if (v5 >= 6)
  {
    sub_23B98473C(&v4, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v1 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return MEMORY[0x23EEB63A0](v1);
}

uint64_t sub_23BA8A124()
{
  sub_23BBDDBB8();
  v0 = sub_23BA89D98();
  MEMORY[0x23EEB63A0](v0);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA8A188()
{
  result = qword_27E19E168;
  if (!qword_27E19E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E168);
  }

  return result;
}

uint64_t sub_23BA8A200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23BA8A258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

double sub_23BA8A2B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23BA8A2EC()
{
  sub_23BBDDBB8();
  v0 = sub_23BA89D98();
  MEMORY[0x23EEB63A0](v0);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA8A334()
{
  result = qword_27E19E170;
  if (!qword_27E19E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E170);
  }

  return result;
}

uint64_t sub_23BA8A388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19E178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23BA8A3F4()
{
  sub_23BA8A87C(319, &qword_27E19ACB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_23BA8A87C(319, &qword_27E19E200, &type metadata for Product.CollectionTaskState, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA8A4FC(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v8 < a2)
  {
    v9 = ((((v7 + 24) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA8A648);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BA8A65C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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
  }

  if (a2 > v9)
  {
    if (((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v10 + 24) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA8A83CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

void sub_23BA8A87C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23BA8A94C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v72 = sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_13_3(v5);
  v64 = *(a1 - 1);
  v66 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3(&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v75 = v8;
  v76 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_13_3(v10);
  v11 = a1[3];
  v12 = a1[5];
  type metadata accessor for StorePlaceholderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208);
  sub_23BBDACE8();
  v13 = a1[2];
  v14 = a1[4];
  type metadata accessor for StoreStaticView();
  v59 = sub_23BBDACE8();
  sub_23BBDACE8();
  v15 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v68 = v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v57 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70);
  v65 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v69 = v19;
  MEMORY[0x28223BE20](v20);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13_3(&v57 - v23);
  *&v24 = v13;
  *(&v24 + 1) = v11;
  v58 = v24;
  *&v25 = v14;
  *(&v25 + 1) = v12;
  v57 = v25;
  v77 = v24;
  v78 = v25;
  v26 = v60;
  v79 = v60;
  v27 = sub_23BA8BE58();
  OUTLINED_FUNCTION_5_22();
  WitnessTable = swift_getWitnessTable();
  v29 = sub_23BA8BEAC();
  v83[5] = WitnessTable;
  v83[6] = v29;
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_32();
  v31 = swift_getWitnessTable();
  v83[3] = v30;
  v83[4] = v31;
  v32 = swift_getWitnessTable();
  v83[1] = v27;
  v83[2] = v32;
  v33 = swift_getWitnessTable();
  sub_23BBDBE18();
  v83[0] = *v26;
  v34 = v62;
  (*(v76 + 104))(v62, *MEMORY[0x277CDD098], v75);
  v35 = v64;
  v36 = v63;
  (*(v64 + 16))(v63, v26, a1);
  v37 = v35;
  v38 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v40 = v57;
  *(v39 + 16) = v58;
  *(v39 + 32) = v40;
  (*(v37 + 32))(v39 + v38, v36, a1);

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
  v82 = v33;
  OUTLINED_FUNCTION_3_4();
  v42 = swift_getWitnessTable();
  v43 = sub_23B97B518(&qword_27E19E230, qword_27E19B730);
  v44 = sub_23BA8C250();
  v45 = v70;
  sub_23BBDD348();
  v55 = v43;
  v56 = v44;
  v46 = v61;
  v47 = v74;
  sub_23BA261A0(v83, v34, v45, &unk_23BBF4A28, v39, v15, v41, v42, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61, v62, v63, v64, v65, v66);

  (*(v71 + 8))(v45, v72);
  (*(v76 + 8))(v34, v75);

  (*(v68 + 8))(v47, v15);
  OUTLINED_FUNCTION_3_22();
  v49 = sub_23B97B518(v48, &qword_27E19BE70);
  v80 = v42;
  v81 = v49;
  OUTLINED_FUNCTION_0();
  v50 = v65;
  v51 = swift_getWitnessTable();
  v52 = v67;
  sub_23B9D2D88(v46, v50, v51);
  v53 = *(v69 + 8);
  v53(v46, v50);
  sub_23B9D2D88(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_23BA8B02C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v115 = a6;
  v112 = a4;
  v10 = type metadata accessor for StoreStaticView();
  v96 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v95 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v104 = &v90 - v13;
  v109 = a5;
  v14 = type metadata accessor for StorePlaceholderView();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208);
  v15 = sub_23BBDACE8();
  v107 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v106 = &v90 - v16;
  v108 = a3;
  v91 = *(a3 - 8);
  MEMORY[0x28223BE20](v17);
  v92 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v14 - 8);
  MEMORY[0x28223BE20](v19);
  v93 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = &v90 - v22;
  v23 = sub_23BBDACE8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v110 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v111 = &v90 - v27;
  v28 = sub_23BBDACE8();
  v113 = *(v28 - 8);
  v114 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - v29;
  v31 = a1;
  v32 = *a1;
  if (*(v32 + 16))
  {
    v97 = v23;
    v98 = v24;
    v99 = &v90 - v29;
    v100 = v14;
    v101 = v15;
    v102 = v10;
    v90 = a2;
    v33 = v108;
    *&v138 = a2;
    *(&v138 + 1) = v108;
    v139 = v112;
    v140 = v109;
    v34 = type metadata accessor for StoreDynamicView();
    v35 = v31 + v34[16];
    v36 = v35[16];
    v37 = *(v35 + 3);
    v138 = *v35;
    LOBYTE(v139) = v36;
    v140 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E248);
    sub_23BBDBF68();
    v38 = v141;
    if (v143)
    {
      v39 = v31;
      if (v143 == 1)
      {

        v40 = v95;
        sub_23BB0CDF8(v38, v31[1], v31[2], *(v31 + v34[15]), v95);
        v41 = v102;
        WitnessTable = swift_getWitnessTable();
        v43 = v104;
        sub_23B9D2D88(v40, v41, WitnessTable);
        v44 = *(v96 + 8);

        v44(v40, v41);
        sub_23B9D2D88(v43, v41, WitnessTable);
        v45 = swift_getWitnessTable();
        v46 = sub_23BA8BEAC();
        v136 = v45;
        v137 = v46;
        swift_getWitnessTable();
        v47 = v111;
        sub_23BA82E14();
        v44(v40, v41);
        v44(v104, v41);
      }

      else
      {
        v60 = v33;
        v61 = v92;
        (*(v91 + 16))(v92, v39 + v34[14], v60);
        v62 = v35[16];
        v63 = *(v35 + 3);
        v138 = *v35;
        LOBYTE(v139) = v62;
        v140 = v63;

        sub_23BBDBF68();
        v138 = v122;
        LOBYTE(v139) = v123;
        v64 = *(v39 + v34[15]);
        v65 = v93;
        sub_23BB98980(v61, v32, &v138, v64, v60, v93);
        v66 = v100;
        v67 = swift_getWitnessTable();
        v68 = v103;
        sub_23B9D2D88(v65, v66, v67);
        v112 = *(v94 + 8);
        v112(v65, v66);
        sub_23B9D2D88(v68, v66, v67);
        v69 = sub_23BA8BEAC();
        v70 = v106;
        sub_23BA82D64();
        v120 = v67;
        v121 = v69;
        v71 = v101;
        swift_getWitnessTable();
        swift_getWitnessTable();
        v47 = v111;
        sub_23BA82D64();
        (*(v107 + 8))(v70, v71);
        v72 = v112;
        v112(v65, v66);
        v72(v103, v66);
      }
    }

    else
    {
      *&v138 = v141;
      BYTE8(v138) = 0;
      v52 = v142;
      v53 = v141;
      v54 = swift_getWitnessTable();
      v55 = sub_23BA8BEAC();
      v56 = v106;
      sub_23BA82E14();
      v124 = v54;
      v125 = v55;
      v57 = v101;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v58 = v111;
      sub_23BA82D64();
      sub_23B99A808(v38, v52, 0);
      v59 = v52;
      v47 = v58;
      sub_23B99A808(v38, v59, 0);
      (*(v107 + 8))(v56, v57);
    }

    v73 = swift_getWitnessTable();
    v74 = sub_23BA8BEAC();
    v134 = v73;
    v135 = v74;
    v75 = swift_getWitnessTable();
    v76 = swift_getWitnessTable();
    v132 = v75;
    v133 = v76;
    v77 = v97;
    v78 = swift_getWitnessTable();
    v79 = v110;
    sub_23B9D2D88(v47, v77, v78);
    sub_23BA8BE58();
    v30 = v99;
    sub_23BA82E14();
    v80 = *(v98 + 8);
    v80(v79, v77);
    v80(v47, v77);
  }

  else
  {
    *&v138 = swift_getKeyPath();
    BYTE8(v138) = 0;
    sub_23BA8BE58();
    v48 = swift_getWitnessTable();
    v49 = sub_23BA8BEAC();
    v118 = v48;
    v119 = v49;
    v50 = swift_getWitnessTable();
    v51 = swift_getWitnessTable();
    v116 = v50;
    v117 = v51;
    swift_getWitnessTable();
    sub_23BA82D64();
  }

  v81 = sub_23BA8BE58();
  v82 = swift_getWitnessTable();
  v83 = sub_23BA8BEAC();
  v130 = v82;
  v131 = v83;
  v84 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v128 = v84;
  v129 = v85;
  v86 = swift_getWitnessTable();
  v126 = v81;
  v127 = v86;
  v87 = v114;
  v88 = swift_getWitnessTable();
  sub_23B9D2D88(v30, v87, v88);
  return (*(v113 + 8))(v30, v87);
}

uint64_t sub_23BA8BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 72) = a2;
  *(v6 + 112) = *a1;
  *(v6 + 65) = *(a1 + 16);
  sub_23BBDD308();
  *(v6 + 128) = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA8BC18, v8, v7);
}

uint64_t sub_23BA8BC18()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v4 = *(v0 + 65);

  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  v5 = v3 + *(type metadata accessor for StoreDynamicView() + 64);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  v9 = *(v5 + 16);
  *(v0 + 16) = *v5;
  *(v0 + 24) = v7;
  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 64) = v4;
  sub_23BA1D218(v2, v1, v4);
  sub_23BA1D218(v6, v7, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E248);
  sub_23BBDBF78();
  sub_23B99A808(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v10 = *(v0 + 8);

  return v10();
}

double sub_23BA8BD64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *&v17 = a6;
  *(&v17 + 1) = a7;
  v14 = type metadata accessor for StoreDynamicView();
  (*(*(a7 - 8) + 32))(&a9[v14[14]], a4, a7);
  a9[v14[15]] = a5;
  v15 = &a9[v14[16]];
  sub_23BA8A910();
  result = *&v17;
  *v15 = v17;
  v15[16] = a8;
  *(v15 + 3) = a10;
  return result;
}

unint64_t sub_23BA8BE58()
{
  result = qword_27E19E210;
  if (!qword_27E19E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E210);
  }

  return result;
}

unint64_t sub_23BA8BEAC()
{
  result = qword_27E19E218;
  if (!qword_27E19E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208);
    sub_23BA8BF64();
    sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E218);
  }

  return result;
}

unint64_t sub_23BA8BF64()
{
  result = qword_27E19E220;
  if (!qword_27E19E220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E228);
    sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
    sub_23B9A243C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E220);
  }

  return result;
}

uint64_t sub_23BA8C01C()
{
  v4 = *(v0 + 24);
  v1 = (type metadata accessor for StoreDynamicView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));

  (*(*(v4 - 8) + 8))(v2 + v1[16]);
  sub_23B99A808(*(v2 + v1[18]), *(v2 + v1[18] + 8), *(v2 + v1[18] + 16));

  return swift_deallocObject();
}

uint64_t sub_23BA8C140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for StoreDynamicView() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_23B9AD524;

  return sub_23BA8BB68(a1, v1 + v9, v4, v5, v6, v7);
}

unint64_t sub_23BA8C250()
{
  result = qword_27E19E238;
  if (!qword_27E19E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E238);
  }

  return result;
}

uint64_t sub_23BA8C2D4()
{
  type metadata accessor for StorePlaceholderView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E208);
  sub_23BBDACE8();
  type metadata accessor for StoreStaticView();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70);
  sub_23BBDA358();
  sub_23BA8BE58();
  OUTLINED_FUNCTION_5_22();
  swift_getWitnessTable();
  sub_23BA8BEAC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_32();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_22();
  sub_23B97B518(v0, &qword_27E19BE70);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

void _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV10allOptionsSay0aB07ProductVGvg_0()
{
  v1 = type metadata accessor for SubscriptionStoreControlOption(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDCDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 8))
  {
    v52 = v9;
    v53 = v7;
    v10 = 0;
    v11 = *(v0 + 16);
    v12 = *(v11 + 16);
    while (1)
    {
      if (v12 == v10)
      {
        return;
      }

      v13 = *(type metadata accessor for SubscriptionStoreControlConfigurationSection(0) - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = *(*(v11 + v15 + v14 * v10 + 40) + 16);
      if (v16)
      {
        break;
      }

      ++v10;
    }

    v17 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      if (v17 >= v12)
      {
LABEL_13:
        v51 = v6;
        v56 = MEMORY[0x277D84F90];
        sub_23BA92B88();
        v21 = 0;
        v54 = v56;
        v22 = *(v11 + 16);
        v23 = v11 + v15 + 40;
        for (i = v15 + 40; ; i += v14)
        {
          v25 = v22 == v21;
          if (v22 == v21)
          {
            break;
          }

          if (*(*(v11 + i) + 16))
          {
            v22 = v21;
            break;
          }

          ++v21;
        }

        if (v16 < 0)
        {
          goto LABEL_46;
        }

        v26 = 0;
        v27 = 0;
        v49 = v51 + 32;
        v50 = (v51 + 16);
        v45 = v4;
        v46 = v2;
        v47 = v14;
        v48 = v23;
        while ((v22 & 0x8000000000000000) == 0)
        {
          if (v22 >= *(v11 + 16))
          {
            goto LABEL_41;
          }

          if (v25)
          {
            goto LABEL_48;
          }

          v28 = v22 * v14;
          v29 = *(v23 + v22 * v14);
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_42;
          }

          v30 = v22;
          v31 = v11;
          sub_23BA93D30(v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v4, type metadata accessor for SubscriptionStoreControlOption);
          v33 = v52;
          v32 = v53;
          (*v50)(v52, v4, v53);
          sub_23BA93D8C();
          v34 = v54;
          v56 = v54;
          v35 = *(v54 + 16);
          if (v35 >= *(v54 + 24) >> 1)
          {
            sub_23BA92B88();
            v32 = v53;
            v34 = v56;
          }

          *(v34 + 16) = v35 + 1;
          v36 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v54 = v34;
          (*(v51 + 32))(v34 + v36 + *(v51 + 72) * v35, v33, v32);
          v37 = *(v31 + 16);
          if (v30 >= v37)
          {
            goto LABEL_43;
          }

          v11 = v31;
          v22 = v30;
          ++v27;
          v23 = v48;
          if (v27 == *(*(v48 + v28) + 16))
          {
            v38 = v30 + 1;
            v14 = v47;
            while (1)
            {
              v25 = v38 == v37;
              if (v38 == v37)
              {
                v27 = 0;
                v22 = v37;
                goto LABEL_30;
              }

              v39 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8);
              sub_23B979874();
              v40 = sub_23BA93AF8();
              v42 = *v41;

              (v40)(v55, 0);
              v43 = *(v42 + 16);

              if (v43)
              {
                break;
              }

              v38 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_47;
              }
            }

            v27 = 0;
            v22 = v39;
          }

          else
          {
            v25 = 0;
            v14 = v47;
          }

LABEL_30:
          ++v26;
          v4 = v45;
          v2 = v46;
          if (v26 == v16)
          {
            return;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      else
      {
        v18 = v11 + v15 + v14 * (v10 + 1) + 40;
        while (1)
        {
          v19 = *(*v18 + 16);
          v20 = __OFADD__(v16, v19);
          v16 += v19;
          if (v20)
          {
            break;
          }

          ++v17;
          v18 += v14;
          if (v17 >= v12)
          {
            if (!v16)
            {
              return;
            }

            goto LABEL_13;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }
}

void sub_23BA8C9CC()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0;
  v3 = v2;
  v20 = v4;
  v5 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);
  v6 = OUTLINED_FUNCTION_25_0(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = *(v3 + 16);
  if (v12)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23BA92CE8();
    v13 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
    OUTLINED_FUNCTION_25_0(v13);
    v15 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v16 + 72);
    while (1)
    {
      v20(v15);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v17 = *(v21 + 16);
      if (v17 >= *(v21 + 24) >> 1)
      {
        sub_23BA92CE8();
      }

      *(v21 + 16) = v17 + 1;
      OUTLINED_FUNCTION_23_2();
      sub_23BA93DE0(v11, v21 + v18 + *(v8 + 72) * v17, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section);
      v15 += v19;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_23BA8CB9C()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_6();
  v36 = v11;
  v12 = OUTLINED_FUNCTION_5_3();
  v13 = type metadata accessor for SubscriptionStoreCopyWriter(v12);
  v14 = OUTLINED_FUNCTION_25_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_6();
  v40 = v15;
  v16 = OUTLINED_FUNCTION_17_0();
  v18 = sub_23BA92E50(v16, v17);
  v21 = sub_23BA92FB8(v18, v20, v19 & 1, *(v7 + 16), 0, 1, v7, v5);
  if (v21)
  {
    v42 = MEMORY[0x277D84F90];
    sub_23BA92D48();
    v41 = v42;
    v22 = OUTLINED_FUNCTION_17_0();
    v24 = sub_23BA92E50(v22, v23);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      while (!__OFADD__(v27, 1))
      {
        v38 = v27 + 1;
        v39 = v26;
        v28 = v24;
        v29 = v25;
        v30 = v7;
        sub_23BA93904();
        v37(v36);
        if (v1)
        {
          goto LABEL_12;
        }

        sub_23BA93D8C();
        v31 = v41;
        v32 = *(v41 + 16);
        if (v32 >= *(v41 + 24) >> 1)
        {
          sub_23BA92D48();
          v31 = v41;
        }

        *(v31 + 16) = v32 + 1;
        OUTLINED_FUNCTION_12_0();
        v41 = v33;
        sub_23BA93DE0(v40, v33 + v34 + *(v35 + 72) * v32, type metadata accessor for SubscriptionStoreCopyWriter);
        sub_23BA9341C(v28, v29, v39 & 1, v30, v5, v3);
        ++v27;
        v1 = 0;
        v7 = v30;
        if (v38 == v21)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    sub_23BA93D8C();

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_80_1();
  }
}

void sub_23BA8CE68()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v5 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v103 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v92 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_6();
  v94 = v12;
  v13 = OUTLINED_FUNCTION_5_3();
  v96 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v13);
  OUTLINED_FUNCTION_7();
  v93 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_6();
  v91 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  v18 = OUTLINED_FUNCTION_13_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v97 = v19 - v20;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_3();
  v99 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  v24 = OUTLINED_FUNCTION_13_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v95 = &v89 - v29;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_53_2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  v32 = OUTLINED_FUNCTION_13_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  sub_23B9A721C(v0 + *(v36 + 60), v35, qword_27E197A68);
  OUTLINED_FUNCTION_11_0(v35, 1, v5);
  if (!v74)
  {
    OUTLINED_FUNCTION_20_8();
    sub_23BA93DE0(v35, v4, v79);
    v80 = v4;
    v81 = 0;
    goto LABEL_28;
  }

  sub_23B979910(v35, qword_27E197A68);
  v37 = v0[9];
  if (!v37)
  {
    v80 = v4;
    v81 = 1;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v80, v81, 1, v5);
LABEL_34:
    OUTLINED_FUNCTION_9_1();
    return;
  }

  v90 = v4;
  v98 = v0[8];
  v38 = v0[2];
  v101 = v5;
  v102 = v38;
  swift_bridgeObjectRetain_n();

  v39 = 0;
  v104 = 0;
  v40 = v99;
  v100 = v37;
  while (2)
  {
    v41 = 0;
    while (1)
    {
      v42 = v103;
      if (!v39)
      {
        break;
      }

      v43 = *(v39 + 16);
      if (v41 == v43)
      {
        v44 = v95;
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v42);
        sub_23B979910(v44, &qword_27E197BA0);
        break;
      }

      if (v41 >= v43)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_3_23();
      v61 = v95;
      sub_23BA93D30(v62, v95, v63);
      ++v41;
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v42);
      sub_23B9A71D0(v61, v2, &qword_27E197BA0);
      v50 = v101;
      v60 = v42;
LABEL_18:
      sub_23B9A71D0(v2, v27, &qword_27E197BA0);
      v67 = 1;
      OUTLINED_FUNCTION_11_0(v27, 1, v60);
      if (!v74)
      {
        OUTLINED_FUNCTION_1_33();
        v68 = v94;
        sub_23BA93DE0(v27, v94, v69);
        OUTLINED_FUNCTION_7_26();
        sub_23BA93D30(v68, v1, v70);
        OUTLINED_FUNCTION_0_32();
        sub_23BA93D8C();
        v67 = 0;
      }

      __swift_storeEnumTagSinglePayload(v1, v67, 1, v50);
      OUTLINED_FUNCTION_11_0(v1, 1, v50);
      v71 = v100;
      if (v74)
      {

        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v50);

LABEL_33:

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_20_8();
      sub_23BA93DE0(v1, v9, v72);
      v74 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0() == v98 && v71 == v73;
      if (v74)
      {

LABEL_32:

        OUTLINED_FUNCTION_20_8();
        sub_23BA93DE0(v9, v90, v85);
        OUTLINED_FUNCTION_20_2();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v50);

        goto LABEL_33;
      }

      v75 = sub_23BBDDA88();

      if (v75)
      {
        v50 = v101;
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_22_10();
    }

    v48 = *(v102 + 16);
    if (v104 == v48)
    {
      v49 = 1;
      v50 = v101;
LABEL_13:
      v54 = v96;
      __swift_storeEnumTagSinglePayload(v40, v49, 1, v96);
      v55 = v40;
      v56 = v97;
      sub_23B9A71D0(v55, v97, &qword_27E197B70);
      OUTLINED_FUNCTION_11_0(v56, 1, v54);
      if (!v74)
      {
        OUTLINED_FUNCTION_18_12();
        v76 = v91;
        sub_23BA93DE0(v97, v91, v77);
        v78 = *(v76 + 40);

        OUTLINED_FUNCTION_17_11();
        sub_23BA93D8C();

        v39 = v78;
        v40 = v99;
        continue;
      }

      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v42);
      v60 = v42;
      v40 = v99;
      goto LABEL_18;
    }

    break;
  }

  v50 = v101;
  if (v104 < v48)
  {
    OUTLINED_FUNCTION_12_0();
    v51 = v104;
    OUTLINED_FUNCTION_21_10();
    sub_23BA93D30(v52, v40, v53);
    v49 = 0;
    v104 = v51 + 1;
    goto LABEL_13;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_23BA8D4D0()
{
  OUTLINED_FUNCTION_82_0();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  OUTLINED_FUNCTION_3_2();
  v29 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v23);
  if (__swift_getEnumTagSinglePayload(v21, 1, v14) == 1)
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_51_3();
    v28(v27, v21, v14);
    v31(v1, v12);
    (*(v16 + 8))(v1, v14);
    if (v0)
    {
      (*(v29 + 32))(v30, v12, v6);
    }
  }

  OUTLINED_FUNCTION_80_1();
}

uint64_t sub_23BA8D6F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BAC7470(*(v1 + 16), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_23BA93DE0(v14, v17, type metadata accessor for SubscriptionStoreControlOption);
    sub_23BA93D30(v17, v11, type metadata accessor for Subscription);
    sub_23BA93D8C();
    v21 = sub_23BBDCDB8();
    (*(*(v21 - 8) + 32))(a1, v11, v21);
LABEL_7:
    v22 = a1;
    v23 = 0;
    v24 = v21;
    return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
  }

  sub_23B979910(v14, &qword_27E197BA0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  sub_23B9A721C(v1 + *(v18 + 60), v5, qword_27E197A68);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    sub_23BA93DE0(v5, v8, type metadata accessor for Subscription);
    v21 = sub_23BBDCDB8();
    (*(*(v21 - 8) + 32))(a1, v8, v21);
    goto LABEL_7;
  }

  sub_23B979910(v5, qword_27E197A68);
  v19 = *(v1 + 8);
  if (v19)
  {
    return sub_23BAC74B0(v19, a1);
  }

  v24 = sub_23BBDCDB8();
  v22 = a1;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.icon.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (*v2)
  {
    type metadata accessor for Subscription();
    OUTLINED_FUNCTION_66_0();
    if (*(v4 + 8) == 2)
    {
      _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    }

    v6 = OUTLINED_FUNCTION_38_1();
    v5 = v3(v6);
    v7 = OUTLINED_FUNCTION_38_1();
    sub_23B979A38(v7, v8, v9);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
}

uint64_t sub_23BA8DB20()
{
  sub_23BA24034();

  return sub_23BBDA958();
}

uint64_t sub_23BA8DBC4(uint64_t a1)
{
  sub_23B9ECFF4(a1, &v3);
  sub_23BA24034();
  sub_23BBDA968();
  return sub_23B9ED0A4(a1);
}

void SubscriptionStoreControlStyleConfiguration.options.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = type metadata accessor for SubscriptionStoreControlOption(0);
  v5 = OUTLINED_FUNCTION_25_0(v4);
  v105 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  v102 = v7 - v8;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x28223BE20](v10);
  v106 = (&v94 - v11);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  OUTLINED_FUNCTION_7();
  v103 = v16;
  v104 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v99 = v17 - v18;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_54_2();
  v20 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_53_2();
  v23 = *(v1 + 16);
  v24 = *(v23 + 16);
  if (v24 != 1)
  {
    OUTLINED_FUNCTION_19_11();
    v98 = v48;
    sub_23BA93D30(v1, v48, v49);
    v50 = 0;
    v51 = MEMORY[0x277D84F90];
    while (v24 != v50)
    {
      v52 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
      OUTLINED_FUNCTION_25_0(v52);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v56 = *(v55 + 72);
      v57 = *(*(v23 + v54 + v56 * v50 + 40) + 16);
      if (v57)
      {
        v58 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_63;
        }

        if (v58 < v24)
        {
          v59 = v23 + v54 + v56 * (v50 + 1) + 40;
          while (1)
          {
            v60 = *(*v59 + 16);
            v61 = __OFADD__(v57, v60);
            v57 += v60;
            if (v61)
            {
              goto LABEL_62;
            }

            ++v58;
            v59 += v56;
            if (v58 >= v24)
            {
              if (!v57)
              {
                goto LABEL_16;
              }

              break;
            }
          }
        }

        v108 = v51;
        sub_23BA92BC8();
        v62 = 0;
        v63 = v108;
        v64 = *(v23 + 16);
        v65 = v23 + v54 + 40;
        for (i = v54 + 40; ; i += v56)
        {
          v67 = v64 == v62;
          if (v64 == v62)
          {
            break;
          }

          if (*(*(v23 + i) + 16))
          {
            v64 = v62;
            break;
          }

          ++v62;
        }

        if ((v57 & 0x8000000000000000) == 0)
        {
          v68 = 0;
          v69 = 0;
          v95 = v23;
          v96 = v2;
          v94 = v56;
          v97 = v23 + v54 + 40;
          while (v68 < v57)
          {
            v61 = __OFADD__(v68++, 1);
            if (v61)
            {
              goto LABEL_57;
            }

            if ((v64 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            if (v64 >= *(v23 + 16))
            {
              goto LABEL_59;
            }

            v70 = v64 * v56;
            if (v67)
            {
              goto LABEL_66;
            }

            if (v69 >= *(*(v65 + v70) + 16))
            {
              goto LABEL_60;
            }

            v100 = v69;
            v101 = v64;
            v106 = v63;
            OUTLINED_FUNCTION_12_0();
            sub_23BA93D30(v71 + v72 + *(v73 + 72) * v74, v2, type metadata accessor for SubscriptionStoreControlOption);
            sub_23BA93D30(v2, v102, type metadata accessor for SubscriptionStoreControlOption);
            v75 = v98;
            v76 = v98[6];
            v77 = v98[7];
            if (v76)
            {
              OUTLINED_FUNCTION_155();
              v78 = swift_allocObject();
              *(v78 + 16) = v76;
              *(v78 + 24) = v77;
              v79 = sub_23BA93E70;
            }

            else
            {
              v79 = 0;
              v78 = 0;
            }

            v81 = v75[3];
            v80 = v75[4];
            OUTLINED_FUNCTION_1_33();
            v82 = v99;
            sub_23BA93DE0(v102, v99, v83);
            v84 = v104;
            v85 = (v82 + *(v104 + 20));
            *v85 = v79;
            v85[1] = v78;
            v86 = (v82 + *(v84 + 24));
            *v86 = v81;
            v86[1] = v80;
            sub_23B9794F0(v76);

            OUTLINED_FUNCTION_0_32();
            v2 = v96;
            sub_23BA93D8C();
            v63 = v106;
            v108 = v106;
            v88 = *(v106 + 2);
            v87 = *(v106 + 3);
            if (v88 >= v87 >> 1)
            {
              OUTLINED_FUNCTION_67_0(v87);
              sub_23BA92BC8();
              v63 = v108;
            }

            *(v63 + 2) = v88 + 1;
            OUTLINED_FUNCTION_12_0();
            OUTLINED_FUNCTION_16_10();
            sub_23BA93DE0(v82, v89, v90);
            v23 = v95;
            v91 = *(v95 + 16);
            v64 = v101;
            if (v101 >= v91)
            {
              goto LABEL_61;
            }

            v69 = v100 + 1;
            v65 = v97;
            if (v100 + 1 == *(*(v97 + v70) + 16))
            {
              v64 = v101 + 1;
              v56 = v94;
              while (1)
              {
                v67 = v64 == v91;
                if (v64 == v91)
                {
                  v69 = 0;
                  v64 = v91;
                  goto LABEL_44;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8);
                sub_23B979874();
                OUTLINED_FUNCTION_29_3();
                v106 = sub_23BA93AF8();
                v93 = *v92;

                (v106)(&v107, 0);
                v106 = *(v93 + 16);

                if (v106)
                {
                  break;
                }

                v61 = __OFADD__(v64++, 1);
                v65 = v97;
                if (v61)
                {
                  goto LABEL_65;
                }
              }

              v69 = 0;
              v65 = v97;
            }

            else
            {
              v67 = 0;
              v56 = v94;
            }

LABEL_44:
            if (v68 == v57)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      ++v50;
    }

    goto LABEL_16;
  }

  v25 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_13_0(v25);
  OUTLINED_FUNCTION_23_2();
  v27 = *(v23 + v26 + 40);
  OUTLINED_FUNCTION_19_11();
  sub_23BA93D30(v1, v3, v28);
  v29 = *(v27 + 16);
  if (!v29)
  {
LABEL_16:
    OUTLINED_FUNCTION_34_3();
    sub_23BA93D8C();
    OUTLINED_FUNCTION_9_1();
    return;
  }

  v107 = MEMORY[0x277D84F90];

  sub_23BA92BC8();
  v30 = 0;
  OUTLINED_FUNCTION_23_2();
  v101 = v27;
  v102 = v27 + v31;
  v32 = v107;
  v33 = v3;
  v34 = *(v3 + 48);
  v35 = v33[7];
  v36 = v33[3];
  v98 = v33;
  v99 = v33[4];
  v100 = v36;
  while (v30 < *(v27 + 16))
  {
    sub_23BA93D30(v102 + *(v105 + 72) * v30, v14, type metadata accessor for SubscriptionStoreControlOption);
    sub_23BA93D30(v14, v106, type metadata accessor for SubscriptionStoreControlOption);
    if (v34)
    {
      OUTLINED_FUNCTION_155();
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = v35;
      v38 = sub_23BA95F10;
    }

    else
    {
      v38 = 0;
      v37 = 0;
    }

    OUTLINED_FUNCTION_1_33();
    sub_23BA93DE0(v106, v0, v39);
    v40 = v104;
    v41 = (v0 + *(v104 + 20));
    *v41 = v38;
    v41[1] = v37;
    v42 = (v0 + *(v40 + 24));
    v43 = v99;
    *v42 = v100;
    v42[1] = v43;
    sub_23B9794F0(v34);

    OUTLINED_FUNCTION_0_32();
    sub_23BA93D8C();
    v107 = v32;
    v45 = *(v32 + 16);
    v44 = *(v32 + 24);
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_67_0(v44);
      sub_23BA92BC8();
      v32 = v107;
    }

    ++v30;
    *(v32 + 16) = v45 + 1;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_16_10();
    sub_23BA93DE0(v0, v46, v47);
    v27 = v101;
    if (v29 == v30)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:

  OUTLINED_FUNCTION_34_3();
  sub_23BA93D8C();
  __break(1u);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Option.activeOffer.read()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlOption(v0);
  return OUTLINED_FUNCTION_68_1();
}

void SubscriptionStoreControlStyleConfiguration.Option.icon.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (*v2)
  {
    type metadata accessor for Subscription();
    OUTLINED_FUNCTION_66_0();
    if (*(v4 + 8) == 2)
    {
      _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    }

    v6 = OUTLINED_FUNCTION_38_1();
    v5 = v3(v6);
    v7 = OUTLINED_FUNCTION_38_1();
    sub_23B979A38(v7, v8, v9);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
}

void View.subscriptionStoreControlStyle<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  v25 = v0;
  v2 = v1;
  v24 = v3;
  v5 = v4;
  swift_getAssociatedTypeWitness();
  v6 = sub_23BBDD648();
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  OUTLINED_FUNCTION_3_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for SubscriptionStoreControlPropertiesModifier();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  OUTLINED_FUNCTION_7_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v23 - v21;
  (*(v11 + 16))(v15, v5, v2, v20);
  sub_23BA90D30(v9);
  sub_23BA90D8C(v15, v9, v2, v22);
  MEMORY[0x23EEB43C0](v22, v24, v16, v25);
  (*(v18 + 8))(v22, v16);
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.ID.hashValue.getter()
{
  sub_23BBDDBB8();
  _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV7SectionV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_23BBDDBF8();
}

uint64_t sub_23BA8E728()
{
  sub_23BBDDBB8();
  _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV7SectionV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_23BBDDBF8();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.header.setter()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2);
  return sub_23BA93F1C(v0, v1 + *(v3 + 20), &qword_27E19E280);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.header.modify()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v0);
  return OUTLINED_FUNCTION_68_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.options.getter()
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.options.setter()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.options.modify()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v0);
  return OUTLINED_FUNCTION_68_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.footer.getter()
{
  v2 = OUTLINED_FUNCTION_40();
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2);
  return sub_23B9A721C(v1 + *(v3 + 28), v0, &qword_27E19E288);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.footer.setter()
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v2);
  return sub_23BA93F1C(v0, v1 + *(v3 + 28), &qword_27E19E288);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Section.footer.modify()
{
  v0 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(v0);
  return OUTLINED_FUNCTION_68_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.Option.subscription.getter()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_17_0();

  return v1(v0);
}

Swift::Void __swiftcall SubscriptionStoreControlStyleConfiguration.Option.subscribe()()
{
  v1 = *(v0 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 24));
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v1(v0, v2);
}

uint64_t SubscriptionStoreControlStyleConfiguration.Option.subscript.getter()
{
  v1 = type metadata accessor for Subscription();
  v2 = OUTLINED_FUNCTION_13_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_7_26();
  sub_23BA93D30(v0, v5, v6);
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_1_4();
  return (*(v7 + 8))(v5);
}

void SubscriptionStoreControlStyleConfiguration.Option.subscript.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = *(*v3 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_53_2();
  sub_23BBDC8F8();
  sub_23B9A721C(v2, v1, &qword_27E197B90);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_23B979910(v1, &qword_27E197B90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v2, &qword_27E197B90);
    (*(v6 + 32))(v0, v1, v4);
    swift_getAtKeyPath();
    (*(v6 + 8))(v0, v4);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_9_1();
  }
}

{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_70_1(v1);
  OUTLINED_FUNCTION_3_2();
  v22[1] = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_0();
  v5 = *v4;
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  sub_23BBDC8F8();
  sub_23B9A721C(v16, v13, &qword_27E197B90);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_23B979910(v13, &qword_27E197B90);
    __break(1u);
  }

  else
  {
    sub_23B979910(v16, &qword_27E197B90);
    v17 = OUTLINED_FUNCTION_0_14();
    v18(v17);
    swift_getAtKeyPath();
    v19 = (*(v7 + 8))(v0, v5);
    MEMORY[0x28223BE20](v19);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_65_1();
    v20 = OUTLINED_FUNCTION_78_1();
    v21(v20);
    OUTLINED_FUNCTION_9_1();
  }
}

uint64_t (*SubscriptionStoreControlStyleConfiguration.PickerOption.subscription.read(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[4] = v5;
  v6 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v6, v5, v7);
  v2[5] = SubscriptionStoreControlStyleConfiguration.Option.subscription.read();
  return sub_23BA95F58;
}

uint64_t SubscriptionStoreControlStyleConfiguration.PickerOption.subscription.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v7, v6, v8);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v9 + 16))(v0, v6);
  OUTLINED_FUNCTION_5_23();
  return sub_23BA93D8C();
}

uint64_t (*SubscriptionStoreControlStyleConfiguration.PickerOption.activeOffer.read(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v2[4] = v5;
  v6 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v6, v5, v7);
  v2[5] = SubscriptionStoreControlStyleConfiguration.Option.activeOffer.read();
  return sub_23BA8F2B4;
}

void sub_23BA8F2B8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  OUTLINED_FUNCTION_5_23();
  sub_23BA93D8C();
  free(v2);

  free(v1);
}

uint64_t SubscriptionStoreControlStyleConfiguration.PickerOption.activeOffer.getter()
{
  v1 = OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v7, v6, v8);
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B9A721C(v6 + *(v9 + 20), v0, &unk_27E19FEF0);
  OUTLINED_FUNCTION_5_23();
  return sub_23BA93D8C();
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.subscript.getter()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_70_1(v1);
  v3 = v2;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  v5 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  OUTLINED_FUNCTION_13_0(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_1();
  v19 = OUTLINED_FUNCTION_2_26();
  sub_23BA93D30(v19, v16, v20);
  (*(v7 + 16))(v11, v16, v5);
  OUTLINED_FUNCTION_5_23();
  sub_23BA93D8C();
  sub_23BBDC8F8();
  (*(v7 + 8))(v11, v5);
  v21 = *(v3 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_11_0(v0, 1, v21);
  if (v22)
  {
    sub_23B979910(v0, &qword_27E197B90);
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    v27 = swift_getAtKeyPath();
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_65_1();
    v28 = OUTLINED_FUNCTION_78_1();
    v29(v28);
    OUTLINED_FUNCTION_1_4();
    (*(v30 + 8))(v0, v21);
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA8F698@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 16))(a2);
  OUTLINED_FUNCTION_20_2();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, a1);
}

uint64_t SubscriptionStoreControlStyleConfiguration.groupDisplayName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  sub_23BA8D6F4(v0);
  v7 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_35_3(v0);
  if (v12)
  {
    v8 = &qword_27E1987F0;
    v9 = v0;
LABEL_7:
    sub_23B979910(v9, v8);
    return 0;
  }

  sub_23BBDC8F8();
  OUTLINED_FUNCTION_1_4();
  (*(v10 + 8))(v0, v7);
  v11 = sub_23BBDCB58();
  OUTLINED_FUNCTION_35_3(v6);
  if (v12)
  {
    v8 = &qword_27E197B90;
    v9 = v6;
    goto LABEL_7;
  }

  v13 = sub_23BBDCA68();
  OUTLINED_FUNCTION_1_4();
  (*(v14 + 8))(v6, v11);
  return v13;
}

uint64_t SubscriptionStoreControlStyleConfiguration.autoRenewPreference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_3();
  sub_23BA8CE68();
  v5 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_11_0(v1, 1, v5);
  if (v6)
  {
    sub_23B979910(v1, qword_27E197A68);
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    v7 = sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 16))(a1, v1, v7);
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_20_2();
    v12 = v7;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_23BA8FA28()
{
  OUTLINED_FUNCTION_82_0();
  v3 = v2;
  v5 = v4;
  v83 = v6;
  v7 = type metadata accessor for SubscriptionStoreControlOption(0);
  v8 = OUTLINED_FUNCTION_25_0(v7);
  v93 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_3();
  v94 = v14;
  v15 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v15);
  OUTLINED_FUNCTION_7();
  v90 = v17;
  v91 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_6();
  v92 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E288);
  OUTLINED_FUNCTION_13_0(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v82 = v77 - v21;
  v22 = OUTLINED_FUNCTION_5_3();
  v23 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(v22);
  v24 = OUTLINED_FUNCTION_13_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_6();
  v84 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BB90);
  v27 = OUTLINED_FUNCTION_13_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_1();
  v80 = v28 - v29;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_54_2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E280);
  OUTLINED_FUNCTION_13_0(v31);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  v34 = v77 - v33;
  sub_23B97933C(v5, v96);
  v79 = v5 + *(type metadata accessor for SubscriptionStoreControlConfigurationSection(0) + 24);
  sub_23B9A721C(v79, v0, &qword_27E19BB90);
  v35 = 1;
  v78 = type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  if (__swift_getEnumTagSinglePayload(v0, 1, v78) != 1)
  {
    OUTLINED_FUNCTION_33_2();
    sub_23BA93DE0(v0, v34, v36);
    v35 = 0;
  }

  v37 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Header(0);
  v81 = v34;
  __swift_storeEnumTagSinglePayload(v34, v35, 1, v37);
  v38 = *(v5 + 40);
  OUTLINED_FUNCTION_19_11();
  v39 = v84;
  sub_23BA93D30(v3, v84, v40);
  v41 = *(v38 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v77[1] = v1;
    v98 = MEMORY[0x277D84F90];
    sub_23BA92BC8();
    v43 = 0;
    OUTLINED_FUNCTION_23_2();
    v88 = v41;
    v89 = v38 + v44;
    v95 = v98;
    v45 = v39;
    v47 = *(v39 + 48);
    v46 = *(v39 + 56);
    v48 = *(v45 + 24);
    v85 = *(v45 + 32);
    v86 = v48;
    v87 = v38;
    while (v43 < *(v38 + 16))
    {
      v49 = v94;
      sub_23BA93D30(v89 + *(v93 + 72) * v43, v94, type metadata accessor for SubscriptionStoreControlOption);
      sub_23BA93D30(v49, v12, type metadata accessor for SubscriptionStoreControlOption);
      if (v47)
      {
        OUTLINED_FUNCTION_155();
        v50 = swift_allocObject();
        *(v50 + 16) = v47;
        *(v50 + 24) = v46;
        v51 = sub_23BA95F10;
      }

      else
      {
        v51 = 0;
        v50 = 0;
      }

      OUTLINED_FUNCTION_1_33();
      v52 = v12;
      v53 = v12;
      v54 = v92;
      sub_23BA93DE0(v53, v92, v55);
      v56 = v91;
      v57 = (v54 + *(v91 + 20));
      *v57 = v51;
      v57[1] = v50;
      v58 = v54;
      v59 = (v54 + *(v56 + 24));
      v60 = v85;
      *v59 = v86;
      v59[1] = v60;
      sub_23B9794F0(v47);

      OUTLINED_FUNCTION_0_32();
      sub_23BA93D8C();
      v61 = v95;
      v99 = v95;
      v63 = *(v95 + 16);
      v62 = *(v95 + 24);
      if (v63 >= v62 >> 1)
      {
        OUTLINED_FUNCTION_67_0(v62);
        sub_23BA92BC8();
        v58 = v92;
        v61 = v99;
      }

      ++v43;
      *(v61 + 16) = v63 + 1;
      OUTLINED_FUNCTION_12_0();
      v95 = v64;
      OUTLINED_FUNCTION_16_10();
      sub_23BA93DE0(v58, v65, v66);
      v12 = v52;
      v38 = v87;
      if (v88 == v43)
      {
        v42 = v95;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_23BA93D8C();
    v67 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
    v68 = v80;
    sub_23B9A721C(v79 + *(v67 + 20), v80, &qword_27E19BB90);
    v69 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v78);
    v71 = v82;
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_33_2();
      sub_23BA93DE0(v68, v71, v72);
      v69 = 0;
    }

    v73 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Footer(0);
    __swift_storeEnumTagSinglePayload(v71, v69, 1, v73);
    v74 = v96[1];
    v75 = v83;
    *v83 = v96[0];
    v75[1] = v74;
    *(v75 + 4) = v97;
    v76 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0);
    sub_23B9A71D0(v81, v75 + v76[5], &qword_27E19E280);
    *(v75 + v76[6]) = v42;
    sub_23B9A71D0(v71, v75 + v76[7], &qword_27E19E288);
    OUTLINED_FUNCTION_80_1();
  }
}

void SubscriptionStoreControlStyleConfiguration.Option.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_15_8();
  v3 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_1();
  sub_23BBA87A0();
  v12 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_59_1(v12);
  OUTLINED_FUNCTION_35_3(v2);
  if (v13)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_64_1();
    v15(v14);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    sub_23BA94120(v16, v17);
    OUTLINED_FUNCTION_63_0();
    sub_23BBDCE68();
    (*(v5 + 8))(v9, v3);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v1 + 24)));
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.Option.hashValue.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v8 = OUTLINED_FUNCTION_0_14();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  sub_23BBDDBB8();
  sub_23BBA87A0();
  v11 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_58_1(v11);
  OUTLINED_FUNCTION_11_0(v3, 1, v4);
  if (v12)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_51_3();
    v14(v13, v3, v4);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    sub_23BA94120(v15, v16);
    OUTLINED_FUNCTION_81();
    (*(v6 + 8))(v1, v4);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v2 + 24)));
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA9033C()
{
  v1 = sub_23BBDCC88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23BBDDBB8();
  sub_23BBA87A0();
  v8 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B9A721C(v0 + *(v8 + 20), v7, &unk_27E19FEF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_23BBDDBD8();
    sub_23BA94120(&qword_27E197B78, MEMORY[0x277CDD2B8]);
    sub_23BBDCE68();
    (*(v2 + 8))(v4, v1);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v8 + 24)));
  return sub_23BBDDBF8();
}

uint64_t sub_23BA90558@<X0>(uint64_t *a1@<X8>)
{
  result = SubscriptionStoreControlStyleConfiguration.PickerOption.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SubscriptionStoreControlStyleConfiguration.PickerOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV6OptionV2eeoiySbAE_AEtFZ_0();
  if (v4)
  {
    OUTLINED_FUNCTION_83_0();
    v6 = *(a1 + v5) ^ *(a2 + v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_15_8();
  v3 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39_1();
  sub_23BBA87A0();
  v12 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_59_1(v12);
  OUTLINED_FUNCTION_35_3(v2);
  if (v13)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_64_1();
    v15(v14);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    sub_23BA94120(v16, v17);
    OUTLINED_FUNCTION_63_0();
    sub_23BBDCE68();
    (*(v5 + 8))(v9, v3);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v1 + 24)));
  OUTLINED_FUNCTION_83_0();
  sub_23BBDDBD8();
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.PickerOption.hashValue.getter()
{
  OUTLINED_FUNCTION_10_0();
  v4 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_14_0();
  v8 = OUTLINED_FUNCTION_0_14();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  sub_23BBDDBB8();
  sub_23BBA87A0();
  v11 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_58_1(v11);
  OUTLINED_FUNCTION_11_0(v3, 1, v4);
  if (v12)
  {
    sub_23BBDDBD8();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_51_3();
    v14(v13, v3, v4);
    sub_23BBDDBD8();
    OUTLINED_FUNCTION_8_24();
    sub_23BA94120(v15, v16);
    OUTLINED_FUNCTION_81();
    (*(v6 + 8))(v1, v4);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v2 + 24)));
  OUTLINED_FUNCTION_83_0();
  sub_23BBDDBD8();
  sub_23BBDDBF8();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BA90908()
{
  v1 = sub_23BBDCC88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23BBDDBB8();
  sub_23BBA87A0();
  v8 = type metadata accessor for SubscriptionStoreControlOption(0);
  sub_23B9A721C(v0 + *(v8 + 20), v7, &unk_27E19FEF0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_23BBDDBD8();
    sub_23BA94120(&qword_27E197B78, MEMORY[0x277CDD2B8]);
    sub_23BBDCE68();
    (*(v2 + 8))(v4, v1);
  }

  MEMORY[0x23EEB63A0](*(v0 + *(v8 + 24)));
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

unint64_t sub_23BA90B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC78);
  qword_27E19E250 = swift_initStaticObject();
  result = sub_23B9C9318();
  qword_27E19E270 = &unk_284E5A000;
  unk_27E19E278 = result;
  return result;
}

uint64_t sub_23BA90B8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197790 != -1)
  {
    swift_once();
  }

  return sub_23B9ECFF4(&qword_27E19E250, a1);
}

uint64_t sub_23BA90BF8()
{
  sub_23BA24034();
  sub_23BBDA958();
  v0 = v2[0];

  sub_23B9ED0A4(v2);
  return v0;
}

uint64_t sub_23BA90C50@<X0>(uint64_t a1@<X8>)
{
  sub_23BA24034();
  sub_23BBDA958();
  sub_23B9AF0F0(&v4, a1);
  return sub_23B9ED0A4(&v3);
}

uint64_t sub_23BA90CB4(uint64_t a1)
{
  sub_23BA24034();
  v2 = sub_23BBDA948();
  sub_23BA95AAC(a1, v3 + 8);
  v2(&v5, 0);
  return sub_23B97B104(a1);
}

uint64_t sub_23BA90D30@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_23BA90D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for SubscriptionStoreControlPropertiesModifier() + 36);
  swift_getAssociatedTypeWitness();
  v7 = sub_23BBDD648();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_23BA90E78(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_155();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_23BBDB9B8();
}

double sub_23BA90F38(__int128 *a1, uint64_t (*a2)(void))
{
  v4 = a1[1];
  v18 = *a1;
  v19 = v4;
  v20 = *(a1 + 4);
  sub_23B9C9234(&v18, &v13);
  if (v14 >= 6)
  {
    sub_23B97B104(&v18);
    sub_23B98473C(&v13, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v7 = a2();
    (*(v6 + 16))(&v15, v7 & 1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v15 = v18;
    v16 = v19;
    v17 = v20;
    sub_23B9C9290(&v13);
  }

  result = *&v15;
  v9 = v16;
  *a1 = v15;
  a1[1] = v9;
  *(a1 + 4) = v17;
  return result;
}

uint64_t sub_23BA9102C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a1;
  v39 = a3;
  v32[1] = *(a2 + 24);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32[0] = v32 - v8;
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v17 = sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3B8);
  v34 = v17;
  v18 = sub_23BBDA358();
  v37 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v33 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v35 = v32 - v21;
  v32[2] = swift_getKeyPath();
  (*(v13 + 16))(v16, v4, v6);
  v22 = sub_23BBC4ECC(v16, v6);
  (*(v10 + 16))(v12, v4 + *(a2 + 36), v9);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    memset(v45, 0, 24);
    *&v45[24] = xmmword_23BBE8BF0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = v32[0];
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_23BBDD218();
    (*(v36 + 8))(v24, AssociatedTypeWitness);
    if (*&v45[24] != 6)
    {
      sub_23B979910(v45, &qword_27E19E3C0);
    }
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    sub_23BBDD218();
    (*(v36 + 8))(v12, AssociatedTypeWitness);
    v42 = *v45;
    v43 = *&v45[16];
    v44 = *&v45[32];
  }

  *v45 = v22;
  *&v45[8] = v42;
  *&v45[24] = v43;
  v46 = v44;
  WitnessTable = swift_getWitnessTable();
  v26 = v33;
  sub_23BBDB748();

  sub_23B9ED0A4(v45);
  v27 = sub_23B97B518(&qword_27E19E3C8, &qword_27E19E3B8);
  v40 = WitnessTable;
  v41 = v27;
  v28 = swift_getWitnessTable();
  v29 = v35;
  sub_23B9D2D88(v26, v18, v28);
  v30 = *(v37 + 8);
  v30(v26, v18);
  sub_23B9D2D88(v29, v18, v28);
  return (v30)(v29, v18);
}

uint64_t sub_23BA915C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_23BA95D90(v2, v11);
  v6 = swift_allocObject();
  v7 = v11[1];
  v6[1] = v11[0];
  v6[2] = v7;
  v6[3] = v11[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E3F0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E3F8);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_23BA95E18;
  v10[2] = v6;
  return result;
}

uint64_t sub_23BA916BC(_OWORD *a1, uint64_t a2)
{
  sub_23B9A721C(a2, v5, &qword_27E19E400);
  if (!*&v5[0])
  {
    return sub_23B979910(v5, &qword_27E19E400);
  }

  result = sub_23B9ED0A4(a1);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  a1[2] = v5[2];
  return result;
}

void View.subscriptionStoreControlStyle<A>(_:placement:)()
{
  OUTLINED_FUNCTION_10_0();
  v27[4] = v2;
  v28 = v0;
  OUTLINED_FUNCTION_74(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_79_0();
  v7 = sub_23BBDD648();
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_73_1();
  v12 = type metadata accessor for SubscriptionStoreControlPropertiesModifier();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28_3();
  v16 = OUTLINED_FUNCTION_71_0();
  v17(v16);
  OUTLINED_FUNCTION_1_4();
  (*(v18 + 16))(v10, v27[1], v6);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v6);
  v22 = OUTLINED_FUNCTION_75_1();
  sub_23BA90D8C(v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_69_1();
  MEMORY[0x23EEB43C0](v26);
  (*(v14 + 8))(v1, v12);
  OUTLINED_FUNCTION_9_1();
}

void StoreContent.subscriptionStoreControlStyle<A>(_:placement:)()
{
  OUTLINED_FUNCTION_10_0();
  v30[4] = v2;
  v31 = v0;
  OUTLINED_FUNCTION_74(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_79_0();
  v7 = sub_23BBDD648();
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_73_1();
  v12 = type metadata accessor for SubscriptionStoreControlPropertiesModifier();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28_3();
  v16 = OUTLINED_FUNCTION_71_0();
  v17(v16);
  OUTLINED_FUNCTION_1_4();
  (*(v18 + 16))(v10, v30[1], v6);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v6);
  v22 = OUTLINED_FUNCTION_75_1();
  sub_23BA90D8C(v22, v23, v24, v25);
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  v26 = OUTLINED_FUNCTION_69_1();
  sub_23BB6B068(v26, v27, v28, v29);
  (*(v14 + 8))(v1, v12);
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.visibleSubscriptionPlansInternal.getter()
{
  OUTLINED_FUNCTION_10_0();
  v1 = type metadata accessor for SubscriptionStoreControlOption(0);
  v2 = OUTLINED_FUNCTION_25_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_6();
  v50 = v3;
  OUTLINED_FUNCTION_5_3();
  v4 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = 0;
  v51 = *(v0 + 16);
  v10 = *(v51 + 16);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v9)
    {
LABEL_37:
      OUTLINED_FUNCTION_9_1();
      return;
    }

    v12 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
    OUTLINED_FUNCTION_25_0(v12);
    v15 = *(v14 + 72);
    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(*(v51 + v16 + v15 * v9 + 40) + 16);
    if (v17)
    {
      break;
    }

    ++v9;
  }

  v18 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    if (v18 >= v10)
    {
LABEL_11:
      v48 = v8;
      v49 = v4;
      v53 = v11;
      sub_23BA92B88();
      v22 = 0;
      v23 = *(v51 + 16);
      v24 = v51 + v16 + 40;
      for (i = v16 + 40; ; i += v15)
      {
        v26 = v23 == v22;
        if (v23 == v22)
        {
          break;
        }

        if (*(*(v51 + i) + 16))
        {
          v23 = v22;
          break;
        }

        ++v22;
      }

      if (v17 < 0)
      {
        goto LABEL_44;
      }

      v27 = 0;
      v28 = 0;
      v46 = v15;
      v47 = v51 + v16 + 40;
      while ((v23 & 0x8000000000000000) == 0)
      {
        if (v23 >= *(v51 + 16))
        {
          goto LABEL_39;
        }

        if (v26)
        {
          goto LABEL_46;
        }

        v29 = v23 * v15;
        if (v28 >= *(*(v24 + v23 * v15) + 16))
        {
          goto LABEL_40;
        }

        v30 = v23;
        OUTLINED_FUNCTION_3_23();
        sub_23BA93D30(v31, v50, v32);
        v33 = OUTLINED_FUNCTION_0_14();
        v34(v33);
        OUTLINED_FUNCTION_0_32();
        sub_23BA93D8C();
        v53 = v11;
        v36 = *(v11 + 16);
        v35 = *(v11 + 24);
        if (v36 >= v35 >> 1)
        {
          OUTLINED_FUNCTION_67_0(v35);
          sub_23BA92B88();
          v11 = v53;
        }

        *(v11 + 16) = v36 + 1;
        OUTLINED_FUNCTION_12_0();
        (*(v38 + 32))(v11 + v37 + *(v38 + 72) * v36, v48, v49);
        v39 = *(v51 + 16);
        if (v30 >= v39)
        {
          goto LABEL_41;
        }

        v23 = v30;
        ++v28;
        v24 = v47;
        if (v28 == *(*(v47 + v29) + 16))
        {
          v40 = v30 + 1;
          v15 = v46;
          while (1)
          {
            v26 = v40 == v39;
            if (v40 == v39)
            {
              v28 = 0;
              v23 = v39;
              goto LABEL_27;
            }

            v41 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8);
            sub_23B979874();
            OUTLINED_FUNCTION_29_3();
            v42 = sub_23BA93AF8();
            v44 = *v43;

            (v42)(&v52, 0);
            v45 = *(v44 + 16);

            if (v45)
            {
              break;
            }

            v40 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_45;
            }
          }

          v28 = 0;
          v23 = v41;
        }

        else
        {
          v26 = 0;
          v15 = v46;
        }

LABEL_27:
        if (++v27 == v17)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    else
    {
      v19 = v51 + v16 + v15 * (v9 + 1) + 40;
      while (1)
      {
        v20 = *(*v19 + 16);
        v21 = __OFADD__(v17, v20);
        v17 += v20;
        if (v21)
        {
          break;
        }

        ++v18;
        v19 += v15;
        if (v18 >= v10)
        {
          if (!v17)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t SubscriptionStoreControlStyleConfiguration.hiddenCurrentPlanInternal.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  sub_23B9A721C(v1 + *(v6 + 60), v2, qword_27E197A68);
  v7 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_11_0(v2, 1, v7);
  if (v8)
  {
    sub_23B979910(v2, qword_27E197A68);
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    v9 = sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v10 + 16))(a1, v2, v9);
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_20_2();
    v14 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

Swift::Void __swiftcall SubscriptionStoreControlStyleConfiguration.actionInternal(productID:)(Swift::String productID)
{
  OUTLINED_FUNCTION_10_0();
  v78 = v5;
  v79 = v6;
  v7 = type metadata accessor for Subscription();
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_6();
  v77 = v9;
  v10 = OUTLINED_FUNCTION_5_3();
  v11 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v10);
  OUTLINED_FUNCTION_7();
  v70 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_6();
  v74 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  v16 = OUTLINED_FUNCTION_13_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_54_2();
  type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v80 = v27;
  v81 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v28);
  v71 = &v68 - v29;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_3();
  v72 = v31;
  v73 = v2;
  v76 = *(v2 + 16);

  v75 = 0;
  v69 = v11;
  while (1)
  {
LABEL_13:
    v53 = *(v76 + 16);
    if (v75 == v53)
    {
      v54 = 1;
    }

    else
    {
      if (v75 >= v53)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_12_0();
      v55 = v75;
      OUTLINED_FUNCTION_21_10();
      sub_23BA93D30(v56, v19, v57);
      v54 = 0;
      v75 = v55 + 1;
    }

    __swift_storeEnumTagSinglePayload(v19, v54, 1, v11);
    sub_23B9A71D0(v19, v3, &qword_27E197B70);
    OUTLINED_FUNCTION_35_3(v3);
    if (v48)
    {
      break;
    }

    OUTLINED_FUNCTION_18_12();
    v58 = v74;
    sub_23BA93DE0(v3, v74, v59);
    v60 = *(v58 + 40);

    OUTLINED_FUNCTION_17_11();
    sub_23BA93D8C();

    v61 = v60;
    if (v60)
    {
      for (i = 0; ; ++i)
      {
        v33 = *(v61 + 16);
        if (i == v33)
        {
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v50, v51, v52, v81);
          sub_23B979910(v24, &qword_27E197BA0);
          v11 = v69;
          goto LABEL_13;
        }

        if (i >= v33)
        {
          break;
        }

        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_3_23();
        sub_23BA93D30(v34, v24, v35);
        OUTLINED_FUNCTION_20_2();
        v36 = v81;
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v81);
        sub_23B9A71D0(v24, v1, &qword_27E197BA0);
        OUTLINED_FUNCTION_11_0(v1, 1, v36);
        if (v48)
        {

          goto LABEL_21;
        }

        v40 = v3;
        OUTLINED_FUNCTION_1_33();
        sub_23BA93DE0(v1, v4, v41);
        OUTLINED_FUNCTION_7_26();
        v42 = v77;
        sub_23BA93D30(v4, v77, v43);
        v44 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v46 = v45;
        sub_23BBDCDB8();
        OUTLINED_FUNCTION_4_1();
        (*(v47 + 8))(v42);
        v48 = v44 == v78 && v46 == v79;
        if (v48)
        {

LABEL_23:

          v62 = v71;
          sub_23BA93DE0(v4, v71, type metadata accessor for SubscriptionStoreControlOption);
          v63 = v72;
          sub_23BA93DE0(v62, v72, type metadata accessor for SubscriptionStoreControlOption);
          v64 = *(v73 + 24);
          memset(v82, 0, 49);
          v64(v63, v82);
          OUTLINED_FUNCTION_0_32();
          sub_23BA93D8C();
          goto LABEL_24;
        }

        v49 = sub_23BBDDA88();

        if (v49)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_0_32();
        sub_23BA93D8C();
        v3 = v40;
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v81);
LABEL_21:

LABEL_24:
  OUTLINED_FUNCTION_9_1();
}

void SubscriptionStoreControlStyleConfiguration.iconInternal(productID:)()
{
  OUTLINED_FUNCTION_10_0();
  v91 = v2;
  v92 = v3;
  v87 = v4;
  v85 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v90 = v6;
  v7 = OUTLINED_FUNCTION_5_3();
  v8 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v7);
  OUTLINED_FUNCTION_7();
  v83 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B70);
  v15 = OUTLINED_FUNCTION_13_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  v23 = OUTLINED_FUNCTION_13_0(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_7();
  v93 = v28;
  v94 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_3();
  v84 = v33;
  v86 = v0;
  v34 = *(v0 + 16);
  v35 = v18;
  v89 = v34;

  v88 = 0;
  v81 = v13;
  v82 = v8;
  do
  {
LABEL_13:
    v57 = *(v89 + 16);
    if (v88 == v57)
    {
      v58 = 1;
    }

    else
    {
      if (v88 >= v57)
      {
LABEL_32:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
      v59 = v88;
      OUTLINED_FUNCTION_21_10();
      sub_23BA93D30(v60, v21, v61);
      v58 = 0;
      v88 = v59 + 1;
    }

    __swift_storeEnumTagSinglePayload(v21, v58, 1, v8);
    sub_23B9A71D0(v21, v35, &qword_27E197B70);
    OUTLINED_FUNCTION_11_0(v35, 1, v8);
    if (v52)
    {

      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v94);
LABEL_21:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_18_12();
    sub_23BA93DE0(v35, v13, v62);
    v63 = *(v13 + 40);

    OUTLINED_FUNCTION_17_11();
    sub_23BA93D8C();

    v64 = v63;
  }

  while (!v63);
  for (i = 0; ; ++i)
  {
    v37 = *(v64 + 16);
    if (i == v37)
    {
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v94);
      sub_23B979910(v1, &qword_27E197BA0);
      v13 = v81;
      v8 = v82;
      goto LABEL_13;
    }

    if (i >= v37)
    {
      __break(1u);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_3_23();
    sub_23BA93D30(v38, v1, v39);
    OUTLINED_FUNCTION_20_2();
    v40 = v94;
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v94);
    sub_23B9A71D0(v1, v26, &qword_27E197BA0);
    OUTLINED_FUNCTION_11_0(v26, 1, v40);
    if (v52)
    {

      goto LABEL_21;
    }

    v44 = v35;
    OUTLINED_FUNCTION_1_33();
    sub_23BA93DE0(v26, v31, v45);
    OUTLINED_FUNCTION_7_26();
    v46 = v90;
    sub_23BA93D30(v31, v90, v47);
    v48 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v50 = v49;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v51 + 8))(v46);
    v52 = v48 == v91 && v50 == v92;
    if (v52)
    {
      break;
    }

    v53 = sub_23BBDDA88();

    if (v53)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_32();
    sub_23BA93D8C();
    v35 = v44;
  }

LABEL_23:

  OUTLINED_FUNCTION_1_33();
  v65 = v84;
  sub_23BA93DE0(v31, v84, v66);
  if (*(v65 + *(v85 + 20) + 8) == 2)
  {
    _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  v67 = v86;
  OUTLINED_FUNCTION_0_32();
  sub_23BA93D8C();
  if (*(v67 + 48))
  {
    v68 = OUTLINED_FUNCTION_56_3();
    v69(v68);
    v70 = v95;
    v71 = OUTLINED_FUNCTION_56_3();
    sub_23BA0D94C(v71, v72, v73);
    goto LABEL_29;
  }

  v74 = OUTLINED_FUNCTION_56_3();
  sub_23BA0D94C(v74, v75, v76);
LABEL_28:
  v70 = 0;
LABEL_29:
  *v87 = v70;
  OUTLINED_FUNCTION_9_1();
}

uint64_t SubscriptionStoreControlStyleConfiguration.MarketingContent.content.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SubscriptionStoreControlStyleConfiguration.marketingContentInternal.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDC0D8();
  *a1 = result;
  return result;
}

uint64_t sub_23BA92D68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, unint64_t))
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = v5;
  while (v5 != v4)
  {
    v7 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
    OUTLINED_FUNCTION_25_0(v7);
    a2(&v12, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v4);
    v10 = *(v12 + 16);

    if (v10)
    {
      return v4;
    }

    ++v4;
  }

  return v6;
}

uint64_t sub_23BA92E50(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t *))
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return v4;
    }

    v8 = *(v5 + 8 * v3);

    a2(v9, &v8);

    v11 = v9[0];
    v12 = v9[1];
    v13 = v10;
    v6 = sub_23BA95884();
    v14 = v11;
    if (v6 != *(v11 + 16))
    {
      break;
    }

    sub_23B979910(&v14, &qword_27E199770);

    ++v3;
  }

  sub_23BA95884();
  sub_23B979910(&v14, &qword_27E199770);

  return v3;
}

uint64_t sub_23BA92FB8(uint64_t result, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, void (*a8)(__int128 *__return_ptr, __int128 *))
{
  v11 = a4;
  if (a4 == result)
  {
    if ((a6 & 1) == 0)
    {
      if (a3)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if ((a4 & 0x8000000000000000) == 0)
      {
        if (*(a7 + 16) > a4)
        {
          *&v37[0] = *(a7 + 8 * a4 + 32);

          a8(&v32, v37);

          v14 = sub_23BA956BC(a2, a5);
          *&v37[0] = v32;
          sub_23B979910(v37, &qword_27E199770);

          return v14;
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (a3)
    {
      return 0;
    }

    goto LABEL_32;
  }

  v15 = result;
  if (a4 < result)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (*(a7 + 16) <= a4)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v28 = a3;
    v26 = a2;
    *&v32 = *(a7 + 8 * a4 + 32);

    a8(&v39, &v32);

    v41 = v39;
    if (a6)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v14 = sub_23BA956BC(*(v39 + 16), a5);
    v29 = -1;
    v16 = v15;
    goto LABEL_18;
  }

  if (result < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*(a7 + 16) <= result)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *&v32 = *(a7 + 8 * result + 32);

  a8(&v40, &v32);

  if ((a3 & 1) == 0)
  {
    v41 = v40;
    v14 = sub_23BA956BC(a2, *(v40 + 16));
    v29 = 1;
    v26 = a5;
    v28 = a6;
    v16 = v11;
    v11 = v15;
LABEL_18:
    sub_23B979910(&v41, &qword_27E199770);

    v17 = v11 + 1;
    v27 = a7;
    if ((v11 + 1) >= v16)
    {
LABEL_24:
      if (v28)
      {
        return v14;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16 < *(v27 + 16))
        {
          *&v35[0] = *(v27 + 8 * v16 + 32);

          a8(&v32, v35);

          v31 = v32;
          v35[0] = v32;
          v35[1] = v33;
          v36 = v34;
          v24 = sub_23BA95884();
          v25 = sub_23BA956BC(v24, v26);
          v43 = v31;
          sub_23B979910(&v43, &qword_27E199770);

          v22 = __OFADD__(v14, v25 * v29);
          v14 += v25 * v29;
          if (!v22)
          {
            return v14;
          }

          goto LABEL_41;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v18 = *(a7 + 16);
    v19 = (a7 + 8 * v11 + 40);
    while (v17 < v18)
    {
      *&v35[0] = *v19;

      a8(&v32, v35);

      v37[0] = v32;
      v37[1] = v33;
      v38 = v34;
      v20 = sub_23BA95884();
      v42 = *&v37[0];
      v21 = sub_23BA956BC(v20, *(*&v37[0] + 16));
      sub_23B979910(&v42, &qword_27E199770);

      v22 = __OFADD__(v14, v21 * v29);
      v14 += v21 * v29;
      if (v22)
      {
        goto LABEL_30;
      }

      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_31;
      }

      ++v17;
      ++v19;
      if (v23 >= v16)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_23BA9341C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = *(a4 + 16);
  if (v32 <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37[0] = *(a4 + 8 * a1 + 32);

  (a5)(&v38, v37);

  if (a3)
  {
    __break(1u);
    goto LABEL_28;
  }

  v35 = v38;
  v16 = *(v38 + 16);
  if (v16 == a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v22 = __OFADD__(a1, 1);
    v23 = a1 + 1;
    if (!v22)
    {
      while (v23 != v32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E3D0);
        sub_23BA959C0();
        v24 = sub_23BA93BB4(v37, v23, v29, v30);
        v26 = *(v25 + 4);
        v27 = v25[1];
        v38 = *v25;
        v39 = v27;
        v40 = v26;
        v28 = v38;
        v42[0] = v38;
        sub_23B9A721C(v42, v36, &qword_27E199770);

        (v24)(v37, 0);
        if (sub_23BA95884() != *(v28 + 16))
        {
          sub_23BA95884();
          sub_23B979910(v42, &qword_27E199770);

          return;
        }

        sub_23B979910(v42, &qword_27E199770);

        v22 = __OFADD__(v23++, 1);
        if (v22)
        {
          __break(1u);
          return;
        }
      }

      return;
    }

LABEL_28:
    __break(1u);
    return;
  }

  v29 = a4;
  v30 = a5;
  v31 = a6;
  v34 = a1;
  v17 = *(&v38 + 1);
  v18 = *(&v39 + 1);
  a1 = v40;
  v33 = v41;
  while (1)
  {
    v19 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v19 == v16)
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_15;
    }

    v17(v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19);
    v20 = v18(v15);
    sub_23B979910(v15, &qword_27E199760);
    ++a2;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v19 = v16;
LABEL_12:
  v21 = *(v35 + 16);

  a1 = v34;
  if (v19 == v21)
  {
    goto LABEL_19;
  }
}

unint64_t sub_23BA9379C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *(*a5)(uint64_t *__return_ptr, unint64_t)@<X4>, uint64_t a6@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  if (*(a4 + 16) <= result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = type metadata accessor for SubscriptionStoreControlConfigurationSection(0);
  OUTLINED_FUNCTION_25_0(v12);
  result = a5(&v18, a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v14 + 72) * v7);
  if (a3)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (*(v18 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_25_0(v15);
  OUTLINED_FUNCTION_3_23();
  sub_23BA93D30(v16, a6, v17);
}

void sub_23BA93904()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v13 = OUTLINED_FUNCTION_25_0(v12);
  v15 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v26 - v20;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v3 + 16) <= v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = *(v3 + 8 * v9 + 32);

  v1(v28, &v27);

  if ((v5 & 1) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v22 = v28[0];
      if (*(v28[0] + 16) > v7)
      {
        v26[0] = v11;
        v23 = v28[1];
        v24 = v28[5];
        v26[1] = v28[4];
        OUTLINED_FUNCTION_23_2();
        sub_23B9A721C(v22 + v25 + *(v15 + 72) * v7, v18, &qword_27E199760);
        v23(v18);
        sub_23B979910(v18, &qword_27E199760);
        v24(v21);
        sub_23B979910(v21, &qword_27E199760);

        OUTLINED_FUNCTION_9_1();
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_23BA93AF8())()
{
  v1 = OUTLINED_FUNCTION_48_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_50_2(v2);
  sub_23BA93C38(v3, v4, v5, v6);
  *(v0 + 32) = v7;
  return sub_23BA93B54;
}

void (*sub_23BA93B58())(void *)
{
  v1 = OUTLINED_FUNCTION_48_3();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_50_2(v2);
  *(v0 + 32) = sub_23BA95500(v3, v4, v5, v6);
  return sub_23BA95F5C;
}

void (*sub_23BA93BB4(void (***a1)(void **a1), unint64_t a2, uint64_t a3, void (*a4)(uint64_t *)))(void *)
{
  v8 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v8;
  v8[4] = sub_23BA95598(v8, a2, a3, a4);
  return sub_23BA95F5C;
}

void sub_23BA93C38(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(unint64_t))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v7 = OUTLINED_FUNCTION_15_8();
    v8 = type metadata accessor for SubscriptionStoreControlConfigurationSection(v7);
    OUTLINED_FUNCTION_25_0(v8);
    a4(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * a2);
    return;
  }

  __break(1u);
}

uint64_t sub_23BA93D30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BA93D8C()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23BA93DE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BA93E3C()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BA93F1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return v3;
}

unint64_t sub_23BA93FE8()
{
  result = qword_27E19E290;
  if (!qword_27E19E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E290);
  }

  return result;
}

unint64_t sub_23BA94078()
{
  result = qword_27E19E298;
  if (!qword_27E19E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E298);
  }

  return result;
}

uint64_t sub_23BA94120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA941F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BA9425C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0);
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_23BA942C0()
{
  if (!qword_27E19E2C0)
  {
    v0 = type metadata accessor for SubscriptionStoreControlConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E2C0);
    }
  }
}

uint64_t sub_23BA9433C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E280);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 20);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E288);
    v10 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_23BA94424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E280);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E288);
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BA94500()
{
  sub_23BA9465C(319, &qword_27E19E2D8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Header, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23BA9465C(319, &qword_27E19E2E0, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23BA9465C(319, &qword_27E19E2E8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Footer, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BA9465C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23BA946E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23BA94720(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23BA9478C()
{
  OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for SubscriptionOptionSectionAccessorySubview();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BA947E0()
{
  OUTLINED_FUNCTION_40_3();
  type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  v0 = OUTLINED_FUNCTION_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_23BA94858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA948DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlOption(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(v3 + *(a3 + 24)));
  }

  v8 = OUTLINED_FUNCTION_63_0();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

void sub_23BA94984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for SubscriptionStoreControlOption(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 24)) = (v4 - 1);
  }
}

void sub_23BA94A14()
{
  type metadata accessor for SubscriptionStoreControlOption(319);
  if (v0 <= 0x3F)
  {
    sub_23BA55588();
    if (v1 <= 0x3F)
    {
      sub_23B975E04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA94AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_15_8();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_63_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BA94B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }
}

uint64_t sub_23BA94C18()
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA94CF8()
{
  type metadata accessor for SubscriptionStoreControlPropertiesModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BA94D68()
{
  type metadata accessor for SubscriptionStoreControlPropertiesModifier();
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  type metadata accessor for ModifiedStoreContent();
  return swift_getWitnessTable();
}

uint64_t sub_23BA94DE4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = sub_23BBDD648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_23BA94E98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return __swift_getEnumTagSinglePayload(a1, v7, v5);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v15) & ~v13, v10, AssociatedTypeWitness);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}