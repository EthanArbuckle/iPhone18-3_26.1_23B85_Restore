uint64_t sub_23BB24BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent();
  v17 = (a1 + v16[9]);
  v19 = v17[1];
  v50 = *v17;
  v18 = v50;

  v20 = sub_23BBDAA48();
  v21 = (a1 + v16[8]);
  v22 = *v21;
  v23 = v21[5];
  v24 = *(v21 + 48);
  *v15 = v18;
  *(v15 + 1) = v19;
  *(v15 + 2) = v20;
  *(v15 + 3) = v25;
  v15[32] = v26 & 1;
  *(v15 + 5) = v27;
  *(v15 + 6) = v22;
  v49 = *(v21 + 1);
  *(v15 + 56) = v49;
  *(v15 + 72) = *(v21 + 3);
  *(v15 + 11) = v23;
  v15[96] = v24;
  v28 = v10[9];
  *&v15[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  v29 = &v15[v10[10]];
  v52 = 0;
  v53 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D188);
  sub_23BBDBF58();
  v30 = v55;
  v31 = v56;
  *v29 = v54;
  v29[8] = v30;
  *(v29 + 2) = v31;
  v32 = &v15[v10[11]];
  v52 = 0;
  v53 = 1;
  sub_23BBDBF58();
  v33 = v55;
  v34 = v56;
  *v32 = v54;
  v32[8] = v33;
  *(v32 + 2) = v34;
  v35 = v16[5];
  v36 = type metadata accessor for SubscriptionOfferViewNoCodeOfferCard(0);
  v37 = v36[5];
  v38 = sub_23BBDCDB8();
  (*(*(v38 - 8) + 16))(&v8[v37], a1 + v35, v38);
  v39 = v16[6];
  v40 = v36[6];
  v41 = sub_23BBDCB58();
  (*(*(v41 - 8) + 16))(&v8[v40], a1 + v39, v41);
  v42 = v16[7];
  v43 = v36[7];
  v44 = sub_23BBDCC88();
  (*(*(v44 - 8) + 16))(&v8[v43], a1 + v42, v44);
  *v8 = v50;
  *(v8 + 1) = v19;
  sub_23BA5D09C(v15, v12);
  sub_23B989ECC(v8, v5, &qword_27E1A0F78);
  v45 = v51;
  sub_23BA5D09C(v12, v51);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F80);
  sub_23B989ECC(v5, v45 + *(v46 + 48), &qword_27E1A0F78);
  v47 = v45 + *(v46 + 64);
  *v47 = 0;
  *(v47 + 8) = 1;
  sub_23B979910(v8, &qword_27E1A0F78);
  sub_23BB25384(v15);
  sub_23B979910(v5, &qword_27E1A0F78);
  return sub_23BB25384(v12);
}

uint64_t sub_23BB25000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDAEF8();
  sub_23BBDBD08();
  v5 = sub_23BBDBD58();

  sub_23BBDBD08();
  v6 = sub_23BBDBD58();

  sub_23B989ECC(a1, a2, &qword_27E1A0F28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0F38);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  return result;
}

unint64_t sub_23BB250C8()
{
  result = qword_27E1A0F40;
  if (!qword_27E1A0F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F28);
    sub_23BB25154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F40);
  }

  return result;
}

unint64_t sub_23BB25154()
{
  result = qword_27E1A0F48;
  if (!qword_27E1A0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F20);
    sub_23BB2520C();
    sub_23B97B518(&qword_27E19CF68, &qword_27E19CF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F48);
  }

  return result;
}

unint64_t sub_23BB2520C()
{
  result = qword_27E1A0F50;
  if (!qword_27E1A0F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F18);
    sub_23B97B518(&qword_27E1A0F58, &qword_27E1A0F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F50);
  }

  return result;
}

unint64_t sub_23BB252C4()
{
  result = qword_27E1A0F60;
  if (!qword_27E1A0F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F38);
    sub_23BB250C8();
    sub_23B97B518(&qword_27E1A0F68, &qword_27E1A0F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0F60);
  }

  return result;
}

uint64_t sub_23BB25384(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB253E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0F38);
  sub_23BB250C8();
  OUTLINED_FUNCTION_1_52();
  swift_getOpaqueTypeConformance2();
  sub_23BB252C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BB254D4@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_4_1();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  *a1 = 0;
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  v9 = type metadata accessor for SubscriptionStorePolicySection(0);
  v10 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  sub_23B9A721C(v8, v6, &qword_27E1A05C0);
  sub_23BBDBF58();
  sub_23B9846E8(v8, &qword_27E1A05C0);
  v15 = 0;
  sub_23BBDBF58();
  OUTLINED_FUNCTION_14_22();
  v15 = 0;
  sub_23BBDBF58();
  OUTLINED_FUNCTION_14_22();
  v11 = *(v9 + 36);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + *(v9 + 40);
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_23BB2569C@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22[1] = a4;
  v22[2] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10C8);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10D0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10D8);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v24 = &type metadata for StoreKitViewsFeature;
  v25 = sub_23B9C7F48();
  v23[0] = a1;
  v17 = sub_23BBD9888();
  v18 = __swift_destroy_boxed_opaque_existential_1(v23);
  if (v17)
  {
    a2(v18);
    sub_23B9A721C(v16, v13, &qword_27E1A10D8);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E1A10E0, &qword_27E1A10D8);
    sub_23B97B518(&qword_27E1A10E8, &qword_27E1A10C8);
    sub_23BBDACD8();
    v19 = v16;
    v20 = &qword_27E1A10D8;
  }

  else
  {
    a3(v18);
    sub_23B9A721C(v10, v13, &qword_27E1A10C8);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E1A10E0, &qword_27E1A10D8);
    sub_23B97B518(&qword_27E1A10E8, &qword_27E1A10C8);
    sub_23BBDACD8();
    v19 = v10;
    v20 = &qword_27E1A10C8;
  }

  return sub_23B9846E8(v19, v20);
}

uint64_t sub_23BB259B8@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1060);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1068);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1070);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v22 = &type metadata for StoreKitViewsFeature;
  v23 = sub_23B9C7F48();
  v21[0] = a1;
  v15 = sub_23BBD9888();
  v16 = __swift_destroy_boxed_opaque_existential_1(v21);
  if (v15)
  {
    a2(v16);
    sub_23B9A721C(v14, v11, &qword_27E1A1070);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A10C0, &qword_27E1A1060);
    sub_23BBDACD8();
    return sub_23B9846E8(v14, &qword_27E1A1070);
  }

  else
  {
    v19(v16);
    sub_23B9A721C(v8, v11, &qword_27E1A1060);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A10C0, &qword_27E1A1060);
    sub_23BBDACD8();
    return sub_23B9846E8(v8, &qword_27E1A1060);
  }
}

uint64_t sub_23BB25CAC()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = type metadata accessor for SubscriptionStorePolicyConfiguration(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  sub_23BB2B070(v0, v5 - v4, type metadata accessor for SubscriptionStorePolicyConfiguration);
  return sub_23BBA9CC4(v6);
}

uint64_t sub_23BB25D38()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA778();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BB25D60()
{
  v1 = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SubscriptionStorePolicySection(0);
  sub_23B9B79E0();
  sub_23BB2B070(v6, v3, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  sub_23BB2B670();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_23BB28F80();
  }

  else
  {
    sub_23BB2B670();
  }

  v8 = (v0 + *(v7 + 28));
  v9 = *v8;
  v10 = *(v8 + 1);
  v12[16] = v9;
  v13 = v10;
  v12[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23BB25F04()
{
  v1 = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SubscriptionStorePolicySection(0);
  sub_23B9B79E0();
  sub_23BB2B070(&v7[*(v5 + 28)], v3, type metadata accessor for SubscriptionStorePolicyConfiguration.Destination);
  sub_23BB2B670();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_23BB28F80();
  }

  else
  {
    sub_23BB2B670();
  }

  v9 = (v0 + *(v8 + 32));
  v10 = *v9;
  v11 = *(v9 + 1);
  v13[16] = v10;
  v14 = v11;
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23BB260B8@<X0>(uint64_t a1@<X8>)
{
  v161 = a1;
  v160 = type metadata accessor for SubscriptionStorePolicySection(0);
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = v1;
  v159 = &v144 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_23BBD9728();
  v173 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v3 = &v144 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_23BBD9638();
  v174 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v156 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v171 = &v144 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E199D08);
  MEMORY[0x28223BE20](v7 - 8);
  v153 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v144 - v10;
  MEMORY[0x28223BE20](v11);
  v168 = &v144 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v144 - v14;
  v16 = sub_23BBD9848();
  v152 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v145 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v144 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v144 - v21;
  v23 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23BBD96B8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v165 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v163 = &v144 - v30;
  MEMORY[0x28223BE20](v31);
  v164 = &v144 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v144 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = (&v144 - v37);
  v39 = sub_23BBD9618();
  MEMORY[0x28223BE20](v39 - 8);
  v151 = &v144 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  sub_23BBDCFD8();
  sub_23BBD9838();
  v150 = v25;
  v170 = v22;
  v42 = v16;
  sub_23BB73D2C();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  if (qword_27E197800 != -1)
  {
    swift_once();
  }

  v43 = v166;
  v44 = __swift_project_value_buffer(v166, qword_27E1A0F88);
  v45 = *(v173 + 16);
  v173 += 16;
  v148 = v45;
  v45(v3, v44, v43);
  v154 = v3;
  sub_23BB27118(v3);
  v172 = v27;
  v46 = *(v27 + 16);
  v149 = v38;
  v47 = v26;
  v48 = v46;
  v46(v35, v38, v26);
  v169 = v15;
  v49 = v15;
  v50 = v168;
  sub_23B9A721C(v49, v168, qword_27E199D08);
  if (__swift_getEnumTagSinglePayload(v50, 1, v42) == 1)
  {
    sub_23B9846E8(v50, qword_27E199D08);
    v51 = v170;
  }

  else
  {
    v52 = v152;
    v53 = v147;
    (*(v152 + 32))(v147, v50, v42);
    v51 = v170;
    (*(v52 + 16))(v170, v53, v42);
    sub_23BBD96A8();
    (*(v52 + 8))(v53, v42);
  }

  v54 = v47;
  v146 = v48;
  v48(v164, v35, v47);
  sub_23BBD9608();
  v55 = v171;
  sub_23BBD95F8();
  v57 = v172 + 8;
  v56 = *(v172 + 8);
  v56(v35, v54);
  v58 = *(v174 + 8);
  v174 += 8;
  v147 = v58;
  (v58)(v55, v167);
  sub_23B9846E8(v169, qword_27E199D08);
  v59 = v149;
  v172 = v57;
  v149 = v56;
  v56(v59, v54);
  v60 = sub_23BBDB658();
  v62 = v61;
  v64 = v63;
  LODWORD(v175) = sub_23BBDAEF8();
  v65 = sub_23BBDB5D8();
  v169 = v66;
  v170 = v65;
  LODWORD(v168) = v67;
  v171 = v68;
  sub_23BA51C9C(v60, v62, v64 & 1);

  sub_23BBDCFD8();
  sub_23BBD9838();
  v69 = v163;
  sub_23BB73D2C();
  v70 = v155;
  __swift_storeEnumTagSinglePayload(v155, 1, 1, v42);
  v71 = v42;
  if (qword_27E197808 != -1)
  {
    swift_once();
  }

  v72 = v166;
  v73 = __swift_project_value_buffer(v166, qword_27E1A0FA0);
  v74 = v154;
  v148(v154, v73, v72);
  v75 = v156;
  sub_23BB27118(v74);
  v76 = v165;
  v77 = v146;
  v146(v165, v69, v54);
  v78 = v153;
  sub_23B9A721C(v70, v153, qword_27E199D08);
  if (__swift_getEnumTagSinglePayload(v78, 1, v71) == 1)
  {
    sub_23B9846E8(v78, qword_27E199D08);
  }

  else
  {
    v79 = v152;
    v80 = v145;
    (*(v152 + 32))(v145, v78, v71);
    (*(v79 + 16))(v51, v80, v71);
    sub_23BBD96A8();
    v81 = v80;
    v69 = v163;
    (*(v79 + 8))(v81, v71);
    v76 = v165;
  }

  v77(v164, v76, v54);
  sub_23BBD9608();
  sub_23BBD95F8();
  v82 = v149;
  v149(v76, v54);
  (v147)(v75, v167);
  sub_23B9846E8(v70, qword_27E199D08);
  v82(v69, v54);
  v83 = sub_23BBDB658();
  v85 = v84;
  v87 = v86;
  LODWORD(v175) = sub_23BBDAEF8();
  v88 = sub_23BBDB5D8();
  v174 = v89;
  LODWORD(v173) = v90;
  v92 = v91;
  sub_23BA51C9C(v83, v85, v87 & 1);

  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v93 = qword_27E1BF840;
  v94 = sub_23BBDB648();
  v96 = v95;
  v98 = v97;
  LODWORD(v175) = sub_23BBDAF28();
  v166 = sub_23BBDB5D8();
  v165 = v99;
  LODWORD(v172) = v100;
  v167 = v101;
  sub_23BA51C9C(v94, v96, v98 & 1);

  v102 = sub_23BBDB5F8();
  v104 = v103;
  v106 = v105;
  v107 = sub_23BBDB5F8();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  sub_23BA51C9C(v102, v104, v106 & 1);

  KeyPath = swift_getKeyPath();
  v164 = v92;
  v115 = KeyPath;
  v116 = swift_getKeyPath();
  v163 = v88;
  v117 = v162;
  v118 = v159;
  sub_23BB2B070(v162, v159, type metadata accessor for SubscriptionStorePolicySection);
  v119 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v120 = swift_allocObject();
  sub_23BB2B0D0(v118, v120 + v119);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1098);
  v122 = v161;
  v123 = (v161 + *(v121 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10B8);
  sub_23BBD9F98();
  *v123 = v116;
  *v122 = v107;
  *(v122 + 8) = v109;
  *(v122 + 16) = v111 & 1;
  *(v122 + 24) = v113;
  *(v122 + 32) = v115;
  *(v122 + 40) = 1;
  v124 = v160;
  v125 = v117 + *(v160 + 28);
  v126 = *v125;
  v127 = *(v125 + 8);
  v178 = v126;
  v179 = v127;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF88();
  v128 = v175;
  v129 = v176;
  v130 = v177;
  v158 = *(v124 + 24);
  v131 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1088) + 36);
  v132 = type metadata accessor for PolicyDestinationModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  sub_23BBDBF88();
  *v131 = v128;
  *(v131 + 8) = v129;
  *(v131 + 16) = v130;
  *(v131 + v132[6]) = 0;
  v133 = v132[7];
  *(v131 + v133) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  swift_storeEnumTagMultiPayload();
  v134 = v131 + v132[8];
  *v134 = swift_getKeyPath();
  *(v134 + 8) = 0;
  v135 = v117 + *(v124 + 32);
  v136 = *v135;
  v137 = *(v135 + 8);
  v178 = v136;
  v179 = v137;
  sub_23BBDBF88();
  v139 = v175;
  v138 = v176;
  LOBYTE(v128) = v177;
  v140 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1070) + 36);
  sub_23BBDBF88();
  sub_23BA51C9C(v166, v165, v172 & 1);

  sub_23BA51C9C(v163, v174, v173 & 1);

  sub_23BA51C9C(v170, v169, v168 & 1);

  *v140 = v139;
  *(v140 + 8) = v138;
  *(v140 + 16) = v128;
  *(v140 + v132[6]) = 1;
  v141 = v132[7];
  *(v140 + v141) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v142 = v140 + v132[8];
  result = swift_getKeyPath();
  *v142 = result;
  *(v142 + 8) = 0;
  return result;
}

uint64_t sub_23BB27118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_23BBD9628();
  v8 = sub_23BBD9728();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_23B9A721C(v7, v4, &qword_27E19C308);
  sub_23BB2B9EC();
  sub_23BBD9648();
  (*(v9 + 8))(a1, v8);
  return sub_23B9846E8(v7, &qword_27E19C308);
}

uint64_t sub_23BB27298(uint64_t a1)
{
  v2 = sub_23BBD9FA8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23BBDA888();
}

uint64_t sub_23BB27360(uint64_t a1)
{
  v2 = sub_23BBD9728();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if (qword_27E197800 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E1A0F88);
  sub_23BB2AB04(&qword_27E1A1178, MEMORY[0x277CC9260]);
  if (sub_23BBDCF38())
  {
    (*(v3 + 8))(v6, v2);
    sub_23BB25D60();
    return sub_23BBD9F88();
  }

  if (qword_27E197808 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E1A0FA0);
  v7 = sub_23BBDCF38();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_23BB25F04();
    return sub_23BBD9F88();
  }

  return sub_23BBD9F78();
}

uint64_t sub_23BB27580@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23BBDA998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1100);
  return sub_23BB275D0(a1 + *(v2 + 44));
}

uint64_t sub_23BB275D0@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1118);
  MEMORY[0x28223BE20](v2);
  v4 = v96 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD48);
  MEMORY[0x28223BE20](v110);
  v111 = v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EFF8);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v96 - v9;
  v125 = sub_23BBDB638();
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA928();
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x28223BE20](v12);
  v114 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SubscriptionStorePolicySection(0);
  v107 = *(v108 - 8);
  v14 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1120);
  MEMORY[0x28223BE20](v112);
  v113 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v122 = v96 - v17;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1128);
  v119 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v117 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v118 = v96 - v20;
  MEMORY[0x28223BE20](v21);
  v124 = v96 - v22;
  MEMORY[0x28223BE20](v23);
  v128 = v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1130);
  MEMORY[0x28223BE20](v25);
  v27 = v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1070);
  MEMORY[0x28223BE20](v28);
  v30 = v96 - v29;
  if (*v1 == 1)
  {
    sub_23BB260B8(v30);
    sub_23B9A721C(v30, v27, &qword_27E1A1070);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A1170, &qword_27E1A1118);
    sub_23BBDACD8();
    return sub_23B9846E8(v30, &qword_27E1A1070);
  }

  else
  {
    v102 = v25;
    v103 = v28;
    v104 = v27;
    v121 = v10;
    v105 = v4;
    v106 = v2;
    v32 = sub_23BBDAA48();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_23BB2B070(v1, v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStorePolicySection);
    v39 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v99 = *(v107 + 80);
    v40 = swift_allocObject();
    v107 = v39;
    sub_23BB2B0D0(v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
    v129 = v32;
    v130 = v34;
    v97 = v34;
    v131 = v36 & 1;
    v132 = v38;
    v133 = sub_23BB2B134;
    v134 = v40;
    if (qword_27E197648 != -1)
    {
      swift_once();
    }

    v41 = sub_23BB2B14C();

    v42 = v122;
    v98 = v41;
    sub_23BBDBA28();

    v43 = sub_23BBDAEF8();
    v44 = v112;
    *&v42[*(v112 + 36)] = v43;
    v45 = &v1[*(v108 + 40)];
    v46 = *v45;
    LODWORD(v97) = v45[8];
    v47 = v1;
    v101 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v100 = v14;
    v108 = v46;
    if (v97 != 1)
    {

      sub_23BBDD5A8();
      v48 = sub_23BBDB338();
      sub_23BBD9978();

      v49 = v114;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v46, 0);
      (*(v115 + 8))(v49, v116);
    }

    v50 = v123;
    sub_23BBDB628();
    v96[1] = sub_23BB2B1A0();
    v51 = v122;
    sub_23BBDBC98();
    v52 = *(v127 + 8);
    v127 += 8;
    v96[0] = v52;
    v52(v50, v125);
    sub_23B9846E8(v51, &qword_27E1A1120);
    sub_23BBDAA48();
    v53 = v44;
    if (qword_27E197628 != -1)
    {
      swift_once();
    }

    v54 = qword_27E1BF840;
    v55 = sub_23BBDB648();
    v57 = v56;
    v59 = v58;
    v129 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1158);
    sub_23B97B518(&qword_27E1A1160, &qword_27E1A1158);
    v60 = sub_23BBDB5D8();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_23BA51C9C(v55, v57, v59 & 1);

    v129 = v60;
    v130 = v62;
    v131 = v64 & 1;
    v132 = v66;
    v67 = v111;
    sub_23BBDB958();
    sub_23BA51C9C(v60, v62, v64 & 1);

    sub_23BA5204C();

    v68 = v121;
    sub_23BBDBA28();

    sub_23B9846E8(v67, &qword_27E19CD48);
    v69 = sub_23BBDAA48();
    v71 = v70;
    LOBYTE(v66) = v72;
    v74 = v73;
    v75 = v47;
    v76 = v101;
    sub_23BB2B070(v75, v101, type metadata accessor for SubscriptionStorePolicySection);
    v77 = v107;
    v78 = swift_allocObject();
    sub_23BB2B0D0(v76, v78 + v77);
    v129 = v69;
    v130 = v71;
    v131 = v66 & 1;
    v132 = v74;
    v133 = sub_23BB2B550;
    v134 = v78;

    v79 = v113;
    sub_23BBDBA28();

    *(v79 + *(v53 + 36)) = sub_23BBDAEF8();
    v80 = v109;
    if (!v97)
    {
      v81 = v108;

      sub_23BBDD5A8();
      v82 = sub_23BBDB338();
      sub_23BBD9978();

      v83 = v114;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v81, 0);
      (*(v115 + 8))(v83, v116);
    }

    v84 = v123;
    sub_23BBDB628();
    v85 = v124;
    sub_23BBDBC98();
    (v96[0])(v84, v125);
    sub_23B9846E8(v79, &qword_27E1A1120);
    v86 = v118;
    v87 = v119;
    v88 = *(v119 + 16);
    v89 = v80;
    v88(v118, v128, v80);
    v90 = v68;
    v91 = v120;
    sub_23B9A721C(v90, v120, &qword_27E19EFF8);
    v92 = v117;
    v88(v117, v85, v80);
    v93 = v105;
    v88(v105, v86, v80);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1168);
    sub_23B9A721C(v91, v93 + *(v94 + 48), &qword_27E19EFF8);
    v88((v93 + *(v94 + 64)), v92, v89);
    v95 = *(v87 + 8);
    v95(v92, v89);
    sub_23B9846E8(v91, &qword_27E19EFF8);
    v95(v86, v89);
    sub_23B9A721C(v93, v104, &qword_27E1A1118);
    swift_storeEnumTagMultiPayload();
    sub_23BB2AD78();
    sub_23B97B518(&qword_27E1A1170, &qword_27E1A1118);
    sub_23BBDACD8();
    sub_23B9846E8(v93, &qword_27E1A1118);
    v95(v124, v89);
    sub_23B9846E8(v121, &qword_27E19EFF8);
    return (v95)(v128, v89);
  }
}

uint64_t sub_23BB284CC@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_23BBDB348();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10F0);
  return sub_23BB2851C(&a1[*(v2 + 44)]);
}

uint64_t sub_23BB2851C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A10D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  *v13 = sub_23BBDA998();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1100);
  sub_23BB275D0(&v13[*(v14 + 44)]);
  *v7 = sub_23BBDAB48();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1108);
  sub_23BB275D0(&v7[*(v15 + 44)]);
  sub_23B9A721C(v13, v10, &qword_27E1A10D8);
  sub_23B9A721C(v7, v4, &qword_27E1A10F8);
  sub_23B9A721C(v10, a1, &qword_27E1A10D8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1110);
  sub_23B9A721C(v4, a1 + *(v16 + 48), &qword_27E1A10F8);
  sub_23B9846E8(v7, &qword_27E1A10F8);
  sub_23B9846E8(v13, &qword_27E1A10D8);
  sub_23B9846E8(v4, &qword_27E1A10F8);
  return sub_23B9846E8(v10, &qword_27E1A10D8);
}

uint64_t sub_23BB28758@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v77 = v3;
  v78 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v76 = v5 - v4;
  v6 = sub_23BBDA408();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FF0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = v68 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FF8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  v71 = v68 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1000);
  OUTLINED_FUNCTION_7();
  v74 = v20;
  v75 = v19;
  MEMORY[0x28223BE20](v19);
  v72 = v68 - v21;
  v22 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v29 = v28 - v27;
  v30 = *(v1 + 8);
  v70 = v1;
  if (*(v1 + 16) == 1)
  {
    if ((v30 & 1) == 0)
    {
LABEL_3:
      v31 = 1;
      v32 = v79;
      goto LABEL_8;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    v69 = v16;
    v34 = v13;
    v35 = v12;
    v36 = v8;
    v37 = v33;
    sub_23BBD9978();

    v8 = v36;
    v12 = v35;
    v13 = v34;
    v16 = v69;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v30, 0);
    v26 = (*(v24 + 8))(v29, v22);
    if (v80 != 1)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x28223BE20](v26);
  v68[-2] = v70;
  MEMORY[0x28223BE20](v38);
  v68[-2] = v39;
  v40 = v39;
  sub_23BB259B8(1, sub_23BB2A910, sub_23BB2A934, v16);
  v41 = sub_23BBDB538();
  KeyPath = swift_getKeyPath();
  v43 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1010) + 36)];
  *v43 = KeyPath;
  v43[1] = v41;
  v44 = *(v13 + 36);
  v45 = type metadata accessor for SubscriptionStorePolicySection(0);
  v46 = v40;
  sub_23B9B79E0();
  v47 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  __swift_storeEnumTagSinglePayload(&v16[v44], 0, 1, v47);
  sub_23BBDA3F8();
  sub_23BB2A944();
  sub_23BB2AB04(&qword_27E19AE90, MEMORY[0x277CDDB18]);
  v48 = v71;
  sub_23BBDB728();
  (*(v8 + 8))(v12, v6);
  sub_23B9846E8(v16, &qword_27E1A0FF0);
  v49 = v46;
  OUTLINED_FUNCTION_15_23((v46 + v45[7]));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF88();
  v50 = v80;
  v51 = v81;
  LOBYTE(v46) = v82;
  v68[1] = v45[6];
  v52 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1040) + 36);
  v53 = type metadata accessor for PolicyDestinationModifier(0);
  v68[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  sub_23BBDBF88();
  *v52 = v50;
  *(v52 + 8) = v51;
  *(v52 + 16) = v46;
  *(v52 + v53[6]) = 0;
  v54 = v53[7];
  *(v52 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  swift_storeEnumTagMultiPayload();
  v55 = v52 + v53[8];
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  OUTLINED_FUNCTION_15_23((v49 + v45[8]));
  sub_23BBDBF88();
  v56 = v80;
  v57 = v81;
  LOBYTE(v46) = v82;
  v58 = v73;
  v59 = v48 + *(v73 + 36);
  sub_23BBDBF88();
  *v59 = v56;
  *(v59 + 8) = v57;
  *(v59 + 16) = v46;
  *(v59 + v53[6]) = 1;
  v60 = v53[7];
  *(v59 + v60) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v61 = v59 + v53[8];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v76;
  sub_23BBDB138();
  v63 = sub_23BB2AB74();
  v64 = v72;
  OUTLINED_FUNCTION_27();
  sub_23BBDB968();
  (*(v77 + 8))(v62, v78);
  sub_23B9846E8(v48, &qword_27E1A0FF8);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v80 = v58;
  v81 = v63;
  swift_getOpaqueTypeConformance2();
  v32 = v79;
  v65 = v75;
  sub_23BBDBA28();

  (*(v74 + 8))(v64, v65);
  v31 = 0;
LABEL_8:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1008);
  return __swift_storeEnumTagSinglePayload(v32, v31, 1, v66);
}

uint64_t sub_23BB28F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[6] = a1;
  v3[2] = a1;
  return sub_23BB2569C(0, sub_23BB2B060, sub_23BB2B068, v3, a2);
}

uint64_t sub_23BB28F80()
{
  v1 = v0;
  v2 = type metadata accessor for SubscriptionStorePolicySection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  sub_23BBDBF68();
  v17 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    goto LABEL_6;
  }

  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    sub_23BB2B670();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v17);
    v24 = v4;
    sub_23B9A721C(v13, v10, &qword_27E1A05C0);
    sub_23BBDBF78();
    sub_23B9846E8(v13, &qword_27E1A05C0);
    v19 = sub_23BBDD368();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v19);
    sub_23BB2B070(v1, v5, type metadata accessor for SubscriptionStorePolicySection);
    sub_23BBDD308();
    v20 = sub_23BBDD2F8();
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v20;
    *(v22 + 24) = v23;
    sub_23BB2B0D0(v5, v22 + v21);
    sub_23BB5D2B8();
  }

  if (result == 1)
  {
    return sub_23BB2B670();
  }

  return result;
}

uint64_t sub_23BB292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05C0);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v5 = sub_23BBDC7F8();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v4[7] = v6;
  v4[8] = sub_23BBDD308();
  v4[9] = sub_23BBDD2F8();
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_23BB29444;

  return MEMORY[0x28212C550](v6);
}

uint64_t sub_23BB29444()
{
  *(*v1 + 88) = v0;

  v3 = sub_23BBDD2D8();
  if (v0)
  {
    v4 = sub_23BB296FC;
  }

  else
  {
    v4 = sub_23BB295A0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23BB295A0()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  (*(v2 + 16))(v4, v1, v3);
  type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_15(v4);
  sub_23B9A721C(v4, v5, &qword_27E1A05C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  sub_23BBDBF78();
  sub_23B9846E8(v4, &qword_27E1A05C0);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BB296FC()
{
  v1 = v0[11];
  v3 = v0[3];
  v2 = v0[4];

  *v2 = v1;
  type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  OUTLINED_FUNCTION_17_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_15(v2);
  sub_23B9A721C(v2, v3, &qword_27E1A05C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  sub_23BBDBF78();
  sub_23B9846E8(v2, &qword_27E1A05C0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BB29814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11B8);
  MEMORY[0x28223BE20](v51);
  v4 = &v43 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11C0);
  MEMORY[0x28223BE20](v50);
  v6 = &v43 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11C8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11D0);
  MEMORY[0x28223BE20](v44);
  v46 = &v43 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11D8);
  MEMORY[0x28223BE20](v45);
  v11 = &v43 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11E0);
  MEMORY[0x28223BE20](v49);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  sub_23B9A721C(v2, &v43 - v18, &qword_27E1A0BC0);
  v20 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_23B9846E8(v19, &qword_27E1A0BC0);
    v56 = 0u;
    v57 = 0u;
    v58 = 0;
LABEL_6:
    sub_23B9846E8(&v56, &qword_27E19FCC8);
    v21 = &v4[*(v51 + 36)];
    sub_23BBDA1D8();
    v22 = sub_23BBDAF28();
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11E8) + 52)] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11F0);
    (*(*(v23 - 8) + 16))(v4, v48, v23);
    sub_23B9A721C(v4, v6, &qword_27E1A11B8);
    swift_storeEnumTagMultiPayload();
    sub_23BB2BD90();
    sub_23BB2BFE4();
    sub_23BBDACD8();
    return sub_23B9846E8(v4, &qword_27E1A11B8);
  }

  sub_23B9A721C(&v19[*(v20 + 24)], &v56, &qword_27E19FCC8);
  sub_23BB2B670();
  if (!*(&v57 + 1))
  {
    goto LABEL_6;
  }

  sub_23B98473C(&v56, v59);
  sub_23B9A721C(v2, v16, &qword_27E1A0BC0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_23B9846E8(v16, &qword_27E1A0BC0);
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
LABEL_9:
    sub_23B9846E8(&v53, &qword_27E19FCC8);
    v37 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v38 = MEMORY[0x28223BE20](v37);
    (*(v40 + 16))(&v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
    v41 = sub_23BBD9DF8();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11F0);
    (*(*(v42 - 8) + 16))(v8, v48, v42);
    *&v8[*(v47 + 36)] = v41;
    sub_23B9A721C(v8, v46, &qword_27E1A11C8);
    swift_storeEnumTagMultiPayload();
    sub_23BB2BE1C();
    sub_23BB2BF00();
    sub_23BBDACD8();
    sub_23B9846E8(v8, &qword_27E1A11C8);
    goto LABEL_10;
  }

  sub_23B9A721C(&v16[*(v20 + 28)], &v53, &qword_27E19FCC8);
  sub_23BB2B670();
  if (!*(&v54 + 1))
  {
    goto LABEL_9;
  }

  sub_23B98473C(&v53, &v56);
  v25 = __swift_project_boxed_opaque_existential_1(v59, v60);
  v26 = MEMORY[0x28223BE20](v25);
  (*(v28 + 16))(&v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v29 = sub_23BBD9DF8();
  v30 = __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  v31 = MEMORY[0x28223BE20](v30);
  (*(v33 + 16))(&v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  v34 = sub_23BBD9DF8();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A11F0);
  (*(*(v35 - 8) + 16))(v11, v48, v35);
  v36 = &v11[*(v45 + 36)];
  *v36 = v29;
  v36[1] = v34;
  sub_23B9A721C(v11, v46, &qword_27E1A11D8);
  swift_storeEnumTagMultiPayload();
  sub_23BB2BE1C();
  sub_23BB2BF00();
  sub_23BBDACD8();
  sub_23B9846E8(v11, &qword_27E1A11D8);
  __swift_destroy_boxed_opaque_existential_1(&v56);
LABEL_10:
  sub_23B9A721C(v13, v6, &qword_27E1A11E0);
  swift_storeEnumTagMultiPayload();
  sub_23BB2BD90();
  sub_23BB2BFE4();
  sub_23BBDACD8();
  sub_23B9846E8(v13, &qword_27E1A11E0);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_23BB2A1BC()
{
  v0 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  sub_23BA17678();
  sub_23BBDA958();
  if (v4)
  {
    v2 = v4 == 1;
  }

  else
  {
    sub_23BB2A448();
    sub_23BBDA958();
    v2 = sub_23BBA9E34();
    sub_23BB2B670();
  }

  return v2 & 1;
}

uint64_t sub_23BB2A294()
{
  v0 = sub_23BBD9728();
  __swift_allocate_value_buffer(v0, qword_27E1A0F88);
  __swift_project_value_buffer(v0, qword_27E1A0F88);
  return sub_23BBD96D8();
}

uint64_t sub_23BB2A304()
{
  v0 = sub_23BBD9728();
  __swift_allocate_value_buffer(v0, qword_27E1A0FA0);
  __swift_project_value_buffer(v0, qword_27E1A0FA0);
  return sub_23BBD96D8();
}

uint64_t sub_23BB2A368()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2A1BC();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BB2A390()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2A1BC();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BB2A420()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA7D8();
  return OUTLINED_FUNCTION_15_1(v0);
}

unint64_t sub_23BB2A448()
{
  result = qword_27E1A0FB8;
  if (!qword_27E1A0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0FB8);
  }

  return result;
}

unint64_t sub_23BB2A49C()
{
  result = sub_23B9EE60C();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDC7F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB2A524(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_10:

    return __swift_getEnumTagSinglePayload(v4 + v8, v3, v7);
  }

  if (v3 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05A0);
    v8 = a3[9];
    goto LABEL_10;
  }

  v9 = *(v4 + a3[7] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_23BB2A62C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_19();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + a4[7] + 8) = v4;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05A0);
    v10 = a4[9];
  }

  return __swift_storeEnumTagSinglePayload(v5 + v10, v4, v4, v9);
}

uint64_t sub_23BB2A710()
{
  sub_23BB2A8A0(319, &qword_27E197E40, MEMORY[0x277CDF468]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_23BB2A83C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_23BB2A8A0(319, &qword_27E199908, MEMORY[0x277CE10B8]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_23BB2BB94(319, &qword_27E1A05C8, MEMORY[0x277CDF468]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_23BB2A83C()
{
  if (!qword_27E1A0FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A05C0);
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A0FE8);
    }
  }
}

void sub_23BB2A8A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BB2A944()
{
  result = qword_27E1A1018;
  if (!qword_27E1A1018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF0);
    sub_23BB2AA00();
    sub_23BB2AB04(&qword_27E1A1038, type metadata accessor for SubscriptionStorePolicySection.StyleApplierModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1018);
  }

  return result;
}

unint64_t sub_23BB2AA00()
{
  result = qword_27E1A1020;
  if (!qword_27E1A1020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1010);
    sub_23B97B518(&qword_27E1A1028, &qword_27E1A1030);
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1020);
  }

  return result;
}

uint64_t sub_23BB2AB04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BB2AB4C()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BBDA778();
  return OUTLINED_FUNCTION_15_1(v0);
}

unint64_t sub_23BB2AB74()
{
  result = qword_27E1A1048;
  if (!qword_27E1A1048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF8);
    sub_23BB2AC30();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1048);
  }

  return result;
}

unint64_t sub_23BB2AC30()
{
  result = qword_27E1A1050;
  if (!qword_27E1A1050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF0);
    sub_23BBDA408();
    sub_23BB2A944();
    sub_23BB2AB04(&qword_27E19AE90, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1050);
  }

  return result;
}

unint64_t sub_23BB2AD78()
{
  result = qword_27E1A1078;
  if (!qword_27E1A1078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1070);
    sub_23BB2AE34();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1078);
  }

  return result;
}

unint64_t sub_23BB2AE34()
{
  result = qword_27E1A1080;
  if (!qword_27E1A1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1088);
    sub_23BB2AEF0();
    sub_23BB2AB04(&qword_27E1A1058, type metadata accessor for PolicyDestinationModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1080);
  }

  return result;
}

unint64_t sub_23BB2AEF0()
{
  result = qword_27E1A1090;
  if (!qword_27E1A1090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1098);
    sub_23BB2AFA8();
    sub_23B97B518(&qword_27E1A10B0, &qword_27E1A10B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1090);
  }

  return result;
}

unint64_t sub_23BB2AFA8()
{
  result = qword_27E1A10A0;
  if (!qword_27E1A10A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A10A8);
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A10A0);
  }

  return result;
}

uint64_t sub_23BB2B070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BB2B0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStorePolicySection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BB2B14C()
{
  result = qword_27E1A1138;
  if (!qword_27E1A1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1138);
  }

  return result;
}

unint64_t sub_23BB2B1A0()
{
  result = qword_27E1A1140;
  if (!qword_27E1A1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1120);
    sub_23BB2B258();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1140);
  }

  return result;
}

unint64_t sub_23BB2B258()
{
  result = qword_27E1A1148;
  if (!qword_27E1A1148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1150);
    sub_23BB2B14C();
    sub_23BB2AB04(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1148);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  type metadata accessor for SubscriptionStorePolicySection(0);
  OUTLINED_FUNCTION_19_0();
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  if (!OUTLINED_FUNCTION_4_35())
  {
    OUTLINED_FUNCTION_27();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBDC7F8();
      OUTLINED_FUNCTION_12_1();
      (*(v18 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);

  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_19_21();
  v7 = v1 + v6 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 == 1)
    {
    }

    else if (!v8)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v9 + 8))(v7);
    }

    type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v11 = OUTLINED_FUNCTION_16_17();
    if (v11 == 1)
    {
    }

    else if (!v11)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v12 + 8))(v7 + v4);
    }

    v13 = OUTLINED_FUNCTION_13_27(*(v3 + 24));
    if (v14)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    v15 = OUTLINED_FUNCTION_13_27(*(v3 + 28));
    if (v16)
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_18();

  return swift_deallocObject();
}

uint64_t sub_23BB2B568()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2 = type metadata accessor for SubscriptionStorePolicySection(v1);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  return v0(v3);
}

uint64_t sub_23BB2B5F4(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStorePolicySection(0);
  OUTLINED_FUNCTION_13_0(v2);

  return sub_23BB27360(a1);
}

uint64_t sub_23BB2B670()
{
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23BB2B6C0()
{
  type metadata accessor for SubscriptionStorePolicySection(0);
  OUTLINED_FUNCTION_19_0();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  if (!OUTLINED_FUNCTION_4_35())
  {
    OUTLINED_FUNCTION_27();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBDC7F8();
      OUTLINED_FUNCTION_12_1();
      (*(v18 + 8))(v2);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0FD0);

  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_19_21();
  v7 = v1 + v6 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 == 1)
    {
    }

    else if (!v8)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v9 + 8))(v7);
    }

    type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v11 = OUTLINED_FUNCTION_16_17();
    if (v11 == 1)
    {
    }

    else if (!v11)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_12_1();
      (*(v12 + 8))(v7 + v4);
    }

    v13 = OUTLINED_FUNCTION_13_27(*(v3 + 24));
    if (v14)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    v15 = OUTLINED_FUNCTION_13_27(*(v3 + 28));
    if (v16)
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_18();

  return swift_deallocObject();
}

uint64_t sub_23BB2B904()
{
  v3 = OUTLINED_FUNCTION_15_8();
  v4 = type metadata accessor for SubscriptionStorePolicySection(v3);
  OUTLINED_FUNCTION_13_0(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23BB292EC(v0, v7, v8, v1 + v6);
}

unint64_t sub_23BB2B9EC()
{
  result = qword_27E1A1180;
  if (!qword_27E1A1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1180);
  }

  return result;
}

uint64_t sub_23BB2BA54()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BB2BAB8()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0BC0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_23BB2BB0C()
{
  sub_23BB2BB94(319, &qword_27E1A1198, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BB2BB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SubscriptionStorePolicyConfiguration(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_23BB2BBF8()
{
  result = qword_27E1A11A0;
  if (!qword_27E1A11A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11A8);
    sub_23BB2BC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A11A0);
  }

  return result;
}

unint64_t sub_23BB2BC7C()
{
  result = qword_27E1A11B0;
  if (!qword_27E1A11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0FF8);
    sub_23BB2AB74();
    swift_getOpaqueTypeConformance2();
    sub_23BB2AB04(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A11B0);
  }

  return result;
}

unint64_t sub_23BB2BD90()
{
  result = qword_27E1A11F8;
  if (!qword_27E1A11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11E0);
    sub_23BB2BE1C();
    sub_23BB2BF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A11F8);
  }

  return result;
}

unint64_t sub_23BB2BE1C()
{
  result = qword_27E1A1200;
  if (!qword_27E1A1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11D8);
    sub_23B97B518(&qword_27E1A1208, &qword_27E1A11F0);
    sub_23B97B518(&qword_27E1A1210, &qword_27E1A1218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1200);
  }

  return result;
}

unint64_t sub_23BB2BF00()
{
  result = qword_27E1A1220;
  if (!qword_27E1A1220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11C8);
    sub_23B97B518(&qword_27E1A1208, &qword_27E1A11F0);
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1220);
  }

  return result;
}

unint64_t sub_23BB2BFE4()
{
  result = qword_27E1A1228;
  if (!qword_27E1A1228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A11B8);
    sub_23B97B518(&qword_27E1A1208, &qword_27E1A11F0);
    sub_23B97B518(&qword_27E1A1230, &qword_27E1A11E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1228);
  }

  return result;
}

unint64_t sub_23BB2C0CC()
{
  result = qword_27E1A1238;
  if (!qword_27E1A1238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1240);
    sub_23BB2BD90();
    sub_23BB2BFE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1238);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_35()
{
  sub_23B97B5C0(*(v1 + 8), *(v1 + 16));
  v2 = v1 + *(v0 + 24);
  v3 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);

  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

void OUTLINED_FUNCTION_14_22()
{
  v2 = *(v1 - 72);
  *v0 = *(v1 - 80);
  *(v0 + 8) = v2;
}

void OUTLINED_FUNCTION_15_23(char *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *(v1 - 96) = v2;
  *(v1 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_18()
{
  v3 = (v1 + *(v0 + 40));
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_23B97B5C0(v4, v5);
}

uint64_t OUTLINED_FUNCTION_19_21()
{
}

uint64_t sub_23BB2C264()
{
  sub_23B9DC9E8();
  sub_23BBDA958();
  return v1;
}

uint64_t static SubscriptionOfferViewButtonKind.detailLink.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  return result;
}

uint64_t View.subscriptionOfferViewButtonVisibility(_:for:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v9 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1248);
  return MEMORY[0x23EEB43C0](v8, a3, v6, a4);
}

uint64_t sub_23BB2C34C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1248);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23B97B518(qword_27E1A1250, &qword_27E1A1248);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BB2C3DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 1) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *&a1[v10];
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFD)
      {
        return __swift_getEnumTagSinglePayload(&a1[v7 + 1] & ~v7, v6, v4);
      }

      v16 = *a1;
      if (v16 >= 3)
      {
        return v16 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = a1[v10];
  if (!a1[v10])
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (a1[2] << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_23BB2C56C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFD)
  {
    v9 = 253;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 1) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
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

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BB2C7ACLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v8 > 0xFD)
        {
          v21 = &a1[v10 + 1] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else
        {
          *a1 = a2 + 2;
        }
      }

      return;
  }
}

uint64_t _s38SubscriptionOfferViewButtonsVisibilityVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
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

uint64_t _s38SubscriptionOfferViewButtonsVisibilityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
        JUMPOUT(0x23BB2C944);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BB2C9C0@<X0>(_WORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2CA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A12D8);
  v7 = sub_23BBDA358();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  swift_getKeyPath();
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v16 = sub_23B97B518(&qword_27E1A12E0, &qword_27E1A12D8);
  v24 = WitnessTable;
  v25 = v16;
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v9, v7, v17);
  v18 = *(v21 + 8);
  v18(v9, v7);
  sub_23B9D2D88(v12, v7, v17);
  return (v18)(v12, v7);
}

uint64_t sub_23BB2CD44@<X0>(_WORD *a1@<X8>)
{
  result = sub_23BB2C264();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2CD98(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14[-v10];
  v12 = type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier();
  (*(v5 + 16))(v7, &a2[*(v12 + 36)], a3);
  sub_23BBDD188();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_23BBDD688();
    if (!v15)
    {
      break;
    }

    v14[7] = *a2;

    swift_setAtWritableKeyPath();
  }

  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_23BB2CFAC@<X0>(_WORD *a1@<X8>)
{
  result = sub_23BB2C264();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2CFDC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier();
  (*(*(v1 - 8) + 8))(v0 + *(v2 + 36) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23BB2D0B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier() - 8);
  v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return sub_23BB2CD98(a1, v5, v3);
}

uint64_t sub_23BB2D154()
{
  type metadata accessor for SubscriptionOfferViewButtonVisibilityModifier();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A12D8);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A12E0, &qword_27E1A12D8);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

id sub_23BB2D238()
{
  v1 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_23BAE0E08(0, &qword_27E1A1308);
  v8 = OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url;
  swift_beginAccess();
  (*(v3 + 16))(v7, v0 + v8, v1);
  return sub_23BB2D330(v7);
}

id sub_23BB2D330(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23BBD96E8();
  v4 = [v2 initWithURL_];

  v5 = sub_23BBD9728();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_23BB2D3CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = *(v6 + 16);
  v11(&v2[OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url], a1, v4);
  sub_23BAE0E08(0, &qword_27E1A1308);
  v11(v10, a1, v4);
  v12 = sub_23BB2D330(v10);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for NavigationController(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithRootViewController_, v12);

  [v13 setNavigationBarHidden:1 animated:0];
  (*(v6 + 8))(a1, v4);
  return v13;
}

void sub_23BB2D5A8(uint64_t a1)
{
  v3 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, a1, v3);
  v10 = OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url;
  swift_beginAccess();
  (*(v5 + 40))(&v1[v10], v9, v3);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A12F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23BBFE040;
  *(v11 + 32) = sub_23BB2D238();
  sub_23BAE0E08(0, &qword_27E1A1300);
  v12 = sub_23BBDD238();

  [v1 setViewControllers:v12 animated:1];
}

id sub_23BB2D804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BB2D8D0()
{
  result = sub_23BBD9728();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB2D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD9728();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BB2D9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBD9728();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_23BB2DA3C()
{
  result = sub_23BBD9728();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_23BB2DAF0()
{
  sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  (*(v5 + 16))(v3 - v2, v0);
  v6 = objc_allocWithZone(type metadata accessor for NavigationController(0));
  return sub_23BB2D3CC(v4);
}

void sub_23BB2DBA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBD9728();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC17_StoreKit_SwiftUI20NavigationController_url;
  swift_beginAccess();
  (*(v6 + 16))(v10, a1 + v11, v4);
  sub_23BB2DEC4(&qword_27E1A1178, MEMORY[0x277CC9260]);
  LOBYTE(v11) = sub_23BBDCF38();
  (*(v6 + 8))(v10, v4);
  if ((v11 & 1) == 0)
  {
    sub_23BB2D5A8(v2);
  }
}

uint64_t sub_23BB2DD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB2DEC4(qword_27E1A1320, type metadata accessor for StoreKitSafariView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23BB2DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BB2DEC4(qword_27E1A1320, type metadata accessor for StoreKitSafariView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23BB2DE6C()
{
  sub_23BB2DEC4(qword_27E1A1320, type metadata accessor for StoreKitSafariView);
  sub_23BBDB278();
  __break(1u);
}

uint64_t sub_23BB2DEC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BB2DF0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB2DFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a8;
  v43 = a7;
  v45 = a6;
  v44 = a5;
  v50 = a4;
  v49 = a3;
  v48 = a2;
  v47 = a1;
  v54 = a9;
  v53 = sub_23BBDA978();
  OUTLINED_FUNCTION_7();
  v52 = v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a5;
  v66 = a6;
  v67 = MEMORY[0x277CE1428];
  v68 = a7;
  v69 = a8;
  v70 = MEMORY[0x277CE1410];
  sub_23BBDAEB8();
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  sub_23BBDA498();
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v46 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = sub_23BB2E600();
  v22 = OUTLINED_FUNCTION_2_42();
  v63 = v21;
  v64 = v22;
  OUTLINED_FUNCTION_0();
  WitnessTable = swift_getWitnessTable();
  v65 = v16;
  v66 = WitnessTable;
  v41 = MEMORY[0x277CDED18];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v39 - v30;
  v55 = v44;
  v56 = v45;
  v57 = v43;
  v58 = v42;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  sub_23B9C2924();
  sub_23BBDBB88();
  v32 = v52;
  v33 = v51;
  v34 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x277CDDDC0], v53);
  v35 = WitnessTable;
  sub_23BBDBA88();
  (*(v32 + 8))(v33, v34);
  (*(v46 + 8))(v20, v16);
  v65 = v16;
  v66 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v28, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v37 = *(v25 + 8);
  v37(v28, OpaqueTypeMetadata2);
  sub_23B9D2D88(v31, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v37)(v31, OpaqueTypeMetadata2);
}

uint64_t sub_23BB2E3F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v18[1] = a2;
  v18[2] = a3;
  v18[0] = a1;
  v18[3] = a8;
  v18[8] = a4;
  v18[9] = a5;
  v18[10] = MEMORY[0x277CE1428];
  v18[11] = a6;
  v18[12] = a7;
  v18[13] = MEMORY[0x277CE1410];
  v8 = sub_23BBDAEB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  v18[6] = nullsub_1;
  v18[7] = 0;
  sub_23BBDAEA8();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_23B9D2D88(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

unint64_t sub_23BB2E600()
{
  result = qword_27E1A13A8;
  if (!qword_27E1A13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A13A8);
  }

  return result;
}

uint64_t sub_23BB2E690()
{
  sub_23BBDAEB8();
  OUTLINED_FUNCTION_1_53();
  swift_getWitnessTable();
  sub_23BBDA498();
  sub_23BBDA358();
  sub_23BB2E600();
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return swift_getWitnessTable();
}

uint64_t sub_23BB2E7AC@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v80 = a6;
  v82 = a5;
  v81 = a4;
  v72 = a2;
  v70 = a7;
  v9 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v9);
  v86 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16A0);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v65 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v21);
  v79 = &v65 - v22;
  v23 = &qword_27E199760;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v88 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  MEMORY[0x28223BE20](v28);
  v78 = &v65 - v29;
  MEMORY[0x28223BE20](v30);
  v83 = &v65 - v31;
  v71 = a1 + 32;
  v75 = a1;

  v74 = a3;

  v95 = 0;
  v96 = 0;
  v89 = 0;
  v90 = 0;
  v94 = 0;
  v76 = 0;
  v77 = 0;
  v73 = 0;
  v33 = v9;
  v84 = v9;
  v93 = v27;
  while (1)
  {
    v34 = 0;
    v35 = v23;
    v36 = v92;
LABEL_3:
    if (v96)
    {
      break;
    }

    v34 = 0;
LABEL_26:
    v59 = *(v75 + 16);
    result = v83;
    if (v73 == v59)
    {
LABEL_33:
      v50 = v33;
      __swift_storeEnumTagSinglePayload(result, 1, 1, v33);
LABEL_34:

      sub_23BB3F578(v96);
      v64 = 1;
      v63 = v70;
      goto LABEL_35;
    }

    if (v73 >= v59)
    {
      __break(1u);
      return result;
    }

    v23 = v35;
    v60 = (v73 + 1);
    v106 = *(v71 + 8 * v73);

    v72(&v98, &v106);

    v61 = v98;
    v62 = v99;
    v73 = v100;
    v69 = v101;
    v68 = v102;
    v67 = v103;
    v66 = v104;
    v98 = v96;
    v99 = v34;
    v100 = v89;
    v101 = v90;
    v102 = v94;
    v103 = v95;
    v104 = v76;
    v105 = v77;
    result = sub_23B9846E8(&v98, &qword_27E1A16A8);
    v96 = v61;
    v89 = v62;
    v33 = v84;
    v90 = v73;
    v94 = v69;
    v95 = v68;
    v76 = v67;
    v77 = v66;
    v73 = v60;
  }

  v37 = *(v96 + 16);
  while (1)
  {
    if (v34 == v37)
    {
      v38 = 1;
      v34 = v37;
    }

    else
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v34 >= *(v96 + 16))
      {
        goto LABEL_32;
      }

      sub_23B9A721C(v96 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v34, v17, v35);
      v38 = 0;
      ++v34;
    }

    v39 = 1;
    __swift_storeEnumTagSinglePayload(v17, v38, 1, v36);
    v40 = v97;
    sub_23B9A71D0(v17, v97, &qword_27E1A16A0);
    if (__swift_getEnumTagSinglePayload(v40, 1, v36) != 1)
    {
      v41 = v17;
      v42 = v91;
      sub_23B9A71D0(v97, v91, &qword_27E199760);
      v89(v42);
      v43 = v42;
      v17 = v41;
      v36 = v92;
      v27 = v93;
      sub_23B9846E8(v43, &qword_27E199760);
      v39 = 0;
    }

    __swift_storeEnumTagSinglePayload(v20, v39, 1, v36);
    if (__swift_getEnumTagSinglePayload(v20, 1, v36) == 1)
    {
      sub_23B9846E8(v20, &qword_27E1A16A0);
      v44 = 1;
      v45 = v79;
      goto LABEL_17;
    }

    v35 = &qword_27E199760;
    v33 = &unk_23BBE9220;
    sub_23B9A71D0(v20, v27, &qword_27E199760);
    if ((v94)(v27))
    {
      break;
    }

    result = sub_23B9846E8(v27, &qword_27E199760);
  }

  v46 = v27;
  v45 = v79;
  sub_23B9A71D0(v46, v79, &qword_27E199760);
  v44 = 0;
LABEL_17:
  v47 = 1;
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v36);
  v48 = v85;
  sub_23B9A71D0(v45, v85, &qword_27E1A16A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v36);
  v50 = v84;
  v51 = v78;
  if (EnumTagSinglePayload != 1)
  {
    v52 = v91;
    sub_23B9A71D0(v85, v91, &qword_27E199760);
    v76(v52);
    v36 = v92;
    sub_23B9846E8(v52, &qword_27E199760);
    v47 = 0;
  }

  __swift_storeEnumTagSinglePayload(v51, v47, 1, v50);
  v53 = __swift_getEnumTagSinglePayload(v51, 1, v50) == 1;
  v54 = v51;
  v27 = v93;
  if (v53)
  {
    v33 = v50;
    v35 = &qword_27E199760;
    sub_23B9846E8(v54, &qword_27E199760);
    goto LABEL_26;
  }

  v55 = v83;
  sub_23B9A71D0(v54, v83, &qword_27E199760);
  if (__swift_getEnumTagSinglePayload(v55, 1, v50) == 1)
  {
    goto LABEL_34;
  }

  v56 = v86;
  sub_23BB3F958(v55, v86);
  v57 = v87;
  v58 = sub_23BB3B3D4(v56, v81, v82, v80 & 1);
  v87 = v57;
  if (v57)
  {
    sub_23BB3FA18(v86, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

    sub_23BB3F578(v96);
    return sub_23B979A38(v81, v82, v80 & 1);
  }

  if ((v58 & 1) == 0)
  {
    v33 = v50;
    result = sub_23BB3FA18(v86, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
    v35 = &qword_27E199760;
    goto LABEL_3;
  }

  sub_23BB3F578(v96);
  v63 = v70;
  sub_23BB3F958(v86, v70);
  v64 = 0;
LABEL_35:
  __swift_storeEnumTagSinglePayload(v63, v64, 1, v50);
  return sub_23B979A38(v81, v82, v80 & 1);
}

uint64_t sub_23BB2F128(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v71 = a6;
  v73 = a5;
  v72 = a4;
  v61 = a2;
  v74 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v74);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16A0);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v78 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v82 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v27);
  v75 = &v58 - v28;
  MEMORY[0x28223BE20](v29);
  v69 = &v58 - v30;
  v60 = a1 + 32;
  v64 = a1;

  v63 = a3;

  v32 = 0;
  v79 = 0;
  v80 = 0;
  v83 = 0;
  v84 = 0;
  v65 = 0;
  v66 = 0;
  v62 = 0;
  v81 = v15;
  v70 = v21;
  while (1)
  {
    v33 = 0;
    v85 = v32;
LABEL_3:
    if (v32)
    {
      break;
    }

    v33 = 0;
    v34 = v74;
LABEL_26:
    v53 = *(v64 + 16);
    if (v62 == v53)
    {
LABEL_35:
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v34);
      LODWORD(v67) = 0;
      goto LABEL_30;
    }

    if (v62 >= v53)
    {
      __break(1u);
      return result;
    }

    v54 = (v62 + 1);
    v95 = *(v60 + 8 * v62);

    v61(&v87, &v95);

    v55 = v87;
    v56 = v88;
    v85 = v89;
    v67 = v90;
    v62 = v91;
    v59 = v92;
    v58 = v93;
    v87 = v32;
    v88 = v33;
    v89 = v79;
    v90 = v80;
    v91 = v83;
    v92 = v84;
    v93 = v65;
    v94 = v66;
    result = sub_23B9846E8(&v87, &qword_27E1A16A8);
    v32 = v55;
    v79 = v56;
    v80 = v85;
    v83 = v67;
    v84 = v62;
    v65 = v59;
    v66 = v58;
    v62 = v54;
  }

  v34 = *(v32 + 16);
  while (1)
  {
    if (v33 == v34)
    {
      v35 = 1;
      v33 = v34;
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v33 >= *(v32 + 16))
      {
        goto LABEL_34;
      }

      sub_23B9A721C(v32 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v33, v15, &qword_27E199760);
      v35 = 0;
      ++v33;
    }

    v36 = 1;
    __swift_storeEnumTagSinglePayload(v15, v35, 1, v22);
    v37 = v86;
    sub_23B9A71D0(v15, v86, &qword_27E1A16A0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v22) != 1)
    {
      v38 = v82;
      sub_23B9A71D0(v86, v82, &qword_27E199760);
      v79(v38);
      v39 = v38;
      v15 = v81;
      sub_23B9846E8(v39, &qword_27E199760);
      v36 = 0;
    }

    __swift_storeEnumTagSinglePayload(v18, v36, 1, v22);
    if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
    {
      sub_23B9846E8(v18, &qword_27E1A16A0);
      v40 = 1;
      v41 = v70;
      goto LABEL_17;
    }

    sub_23B9A71D0(v18, v26, &qword_27E199760);
    if (v83(v26))
    {
      break;
    }

    sub_23B9846E8(v26, &qword_27E199760);
    v32 = v85;
  }

  v41 = v70;
  sub_23B9A71D0(v26, v70, &qword_27E199760);
  v40 = 0;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v41, v40, 1, v22);
  v42 = v76;
  sub_23B9A71D0(v41, v76, &qword_27E1A16A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v22);
  v44 = 1;
  v34 = v74;
  if (EnumTagSinglePayload != 1)
  {
    v45 = v82;
    sub_23B9A71D0(v76, v82, &qword_27E199760);
    v65(v45);
    v46 = v45;
    v15 = v81;
    sub_23B9846E8(v46, &qword_27E199760);
    v44 = 0;
  }

  v47 = v75;
  __swift_storeEnumTagSinglePayload(v75, v44, 1, v34);
  if (__swift_getEnumTagSinglePayload(v47, 1, v34) == 1)
  {
    result = sub_23B9846E8(v47, &qword_27E199760);
    v32 = v85;
    goto LABEL_26;
  }

  v48 = v69;
  sub_23B9A71D0(v47, v69, &qword_27E199760);
  v49 = __swift_getEnumTagSinglePayload(v48, 1, v34);
  LODWORD(v67) = v49 != 1;
  if (v49 == 1)
  {
    v32 = v85;
    goto LABEL_30;
  }

  v50 = v68;
  sub_23BB3F958(v48, v68);
  v51 = v77;
  v52 = sub_23BB3B3D4(v50, v72, v73, v71 & 1);
  result = sub_23BB3FA18(v50, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v77 = v51;
  v32 = v85;
  if (v51)
  {

    sub_23BB3F578(v32);
    sub_23B979A38(v72, v73, v71 & 1);
    return v57 & 1;
  }

  if ((v52 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_30:

  sub_23BB3F578(v32);
  sub_23B979A38(v72, v73, v71 & 1);
  v57 = v67;
  return v57 & 1;
}

uint64_t sub_23BB2F9F4()
{
  sub_23BBDD648();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_6_9();

  return v1(v0);
}

uint64_t sub_23BB2FA54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23BBDB038();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0uLL;
  v15 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_23BBD9B18();
    *(&v14 + 1) = v16;
    *(&v15 + 1) = v17;
  }

  v19[0] = v14;
  v19[1] = v15;
  v20 = a3 & 1;
  sub_23BBDB028();
  MEMORY[0x23EEB43C0](v13, a4, v8, a5);
  return (*(v10 + 8))(v13, v8);
}

void sub_23BB2FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_61();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_23BB3FA6C();
  sub_23BBDA958();
  if (a15)
  {
    v45 = v35;
    v38 = a16;
    v39 = a17;
    v40 = a18;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160);
    MEMORY[0x23EEB48C0](&a11, v41);
    v42 = a11;
    v43 = a12;
    v44 = a13;

    sub_23BA0D94C(v38, v39, v40);
    if (v44 != 255)
    {
      sub_23BBA7A24(v42, v43, v44 & 1, v37, v45, v33 & 1);
      sub_23BA0D94C(v42, v43, v44);
    }
  }

  OUTLINED_FUNCTION_60();
}

BOOL sub_23BB2FC88()
{
  sub_23BB3FA6C();
  sub_23BBDA958();
  if (v2)
  {
    sub_23BA0D8E4(v1, v2, v3, v4, v5);
  }

  return v2 != 0;
}

uint64_t sub_23BB2FCEC()
{
  sub_23BB3FAC0();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB2FD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BA21030();
  *a1 = result;
  return result;
}

uint64_t sub_23BB2FDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for ProducesHybridStructuredScrollViewContentModifier);
}

uint64_t sub_23BB2FDF4@<X0>(void *a1@<X8>)
{
  sub_23BB3FAC0();
  result = sub_23BBDA958();
  *a1 = v3;
  a1[1] = sub_23BB3E910;
  a1[2] = 0;
  return result;
}

uint64_t SubscriptionStorePicker.init(_:pickerOptionContent:confirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for SubscriptionStorePicker();
  OUTLINED_FUNCTION_32_6();
  *(a6 + v11) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_19_22(KeyPath);
  v18 = a6 + *(v10 + 68);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_19_22(v19);
  v20 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48));
  OUTLINED_FUNCTION_13_28();
  sub_23BB3F958(a1, a6);
  *v20 = a2;
  v20[1] = a3;
  OUTLINED_FUNCTION_27_8();
  result = swift_storeEnumTagMultiPayload();
  v22 = (a6 + *(v10 + 52));
  *v22 = a4;
  v22[1] = a5;
  return result;
}

uint64_t sub_23BB30020()
{
  sub_23BAF72E8();
  sub_23BBDA298();
  return v1;
}

uint64_t SubscriptionStorePicker.init(pickerContent:confirmation:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for SubscriptionStorePicker();
  OUTLINED_FUNCTION_32_6();
  *(a4 + v8) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = a4 + v7[16];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = a4 + v7[17];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a4 + v7[18];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  a1();
  OUTLINED_FUNCTION_27_8();
  result = swift_storeEnumTagMultiPayload();
  v18 = (a4 + v7[13]);
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t SubscriptionStorePicker.init(selection:pickerContent:confirmation:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for SubscriptionStorePicker();
  OUTLINED_FUNCTION_32_6();
  *(a5 + v8) = v9;
  v11 = *(v10 + 60);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_19_22(KeyPath);
  v17 = a5 + *(v7 + 68);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = swift_getKeyPath();
  v19 = OUTLINED_FUNCTION_19_22(v18);
  a2(v19);
  OUTLINED_FUNCTION_27_8();
  swift_storeEnumTagMultiPayload();
  v20 = (a5 + *(v7 + 52));
  *v20 = a3;
  v20[1] = a4;
  sub_23B9846E8(a5 + v11, qword_27E1A13B8);
  sub_23B9A71D0(a1, a5 + v11, &qword_27E198860);
  return __swift_storeEnumTagSinglePayload(a5 + v11, 0, 1, v12);
}

void SubscriptionStorePicker.init(_:selection:pickerOptionContent:confirmation:)()
{
  OUTLINED_FUNCTION_61();
  v25 = v0;
  v26 = v1;
  v23 = v2;
  v24 = v3;
  v27 = v4;
  v6 = v5;
  v7 = type metadata accessor for SubscriptionStorePicker();
  OUTLINED_FUNCTION_32_6();
  *(v6 + v8) = v9;
  v11 = *(v10 + 60);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = v6 + v7[16];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  v17 = v6 + v7[17];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v6 + v7[18];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  v19 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48));
  OUTLINED_FUNCTION_13_28();
  v20 = OUTLINED_FUNCTION_6_9();
  sub_23BB3F958(v20, v21);
  *v19 = v23;
  v19[1] = v24;
  OUTLINED_FUNCTION_27_8();
  swift_storeEnumTagMultiPayload();
  v22 = (v6 + v7[13]);
  *v22 = v25;
  v22[1] = v26;
  sub_23B9846E8(v6 + v11, qword_27E1A13B8);
  sub_23B9A71D0(v27, v6 + v11, &qword_27E198860);
  __swift_storeEnumTagSinglePayload(v6 + v11, 0, 1, v12);
  OUTLINED_FUNCTION_60();
}

uint64_t sub_23BB3053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 64));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 33);
  v13 = v11;
  v18 = v11;
  v19 = v10;
  if (v9 == 1)
  {
    result = sub_23B9A165C(v11, *(&v11 + 1), v10);
    v16 = v18;
    v15 = v19;
  }

  else
  {

    sub_23BBDD5A8();
    v17 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BB32398(v13, *(&v18 + 1), v19, *(&v19 + 1), v12, 0, sub_23B9A1648);
    result = (*(v6 + 8))(v8, v5);
    v16 = v20;
    v15 = v21;
    LOBYTE(v12) = v22;
  }

  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_23BB306F8(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_23BB3084C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 72));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v9 + 32);
  LODWORD(v9) = *(v9 + 33);
  v13 = v11;
  v17 = v11;
  v18 = v10;
  if (v9 == 1)
  {
    sub_23BA0DE40(v11, *(&v11 + 1), v10, *(&v10 + 1), v12);
    v15 = v17;
    v14 = v18;
  }

  else
  {

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BB32398(v13, *(&v17 + 1), v18, *(&v18 + 1), v12, 0, sub_23BA0D8E4);
    (*(v6 + 8))(v8, v5);
    v15 = v19;
    v14 = v20;
    LOBYTE(v12) = v21;
  }

  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
}

uint64_t sub_23BB30A08(uint64_t a1)
{
  result = *(v1 + *(a1 + 56));
  if (result == 2)
  {
    if (sub_23BB306F8(a1))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_23BB30A44(uint64_t a1)
{
  sub_23BB3084C(a1, &v8);
  if (!v9)
  {
    return 0;
  }

  v1 = v8;
  v5[3] = v8;
  v5[4] = v9;
  v6 = v10;
  v7 = v11;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160);
  MEMORY[0x23EEB48C0](v5, v2);
  v3 = v5[0];
  v12 = v1;
  sub_23BA6EA10(&v12);

  v13 = v10;
  v14 = v11;
  sub_23B9846E8(&v13, &qword_27E19B148);
  return v3;
}

uint64_t SubscriptionStorePicker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  OUTLINED_FUNCTION_7();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  v74 = v5;
  v77 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for AutomaticPickerContent();
  v75 = v7;
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v9 = sub_23BBDA358();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v78 = &v63 - v11;
  v12 = a1[5];
  v69 = a1[3];
  v70 = v12;
  v13 = type metadata accessor for SubscriptionPickerVariadicContainer();
  OUTLINED_FUNCTION_16_18();
  WitnessTable = swift_getWitnessTable();
  v76 = v8;
  v93 = v8;
  v94 = WitnessTable;
  OUTLINED_FUNCTION_2_7();
  v92 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v17 = sub_23B97B518(v16, &qword_27E19A1E0);
  v90 = v15;
  v91 = v17;
  OUTLINED_FUNCTION_0();
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_14_23();
  v19 = swift_getWitnessTable();
  v73 = v9;
  *&v95 = v9;
  *(&v95 + 1) = v13;
  v72 = v13;
  v68 = v18;
  v96 = v18;
  v97 = v19;
  v67 = v19;
  v20 = sub_23BBDAED8();
  v21 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - v26;
  v28 = sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v79 = &v63 - v32;
  sub_23BB3053C(a1, &v95);
  v33 = v96;
  if (v96 == 1)
  {
    v89 = 0;
    sub_23BBDBF58();
    v34 = v86;
    v35 = v87;
    v86 = 1;
    LOBYTE(v87) = v34;
    v88 = v35;
    OUTLINED_FUNCTION_0_49();
    v85 = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    swift_getWitnessTable();
    sub_23B9D1E7C();
    v36 = v79;
    sub_23BA82E14();
  }

  else
  {
    sub_23BB311B8(a1, v78);
    v64 = v27;
    v37 = v71;
    v65 = v23;
    v38 = v77;
    v39 = OUTLINED_FUNCTION_17_0();
    v40(v39);
    v41 = *(v37 + 80);
    v66 = v20;
    v42 = v30;
    v43 = (v41 + 48) & ~v41;
    v44 = v74 + v43 + 7;
    v74 = v28;
    v45 = v44 & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *&v47 = v75;
    *(&v47 + 1) = v69;
    *&v48 = v76;
    *(&v48 + 1) = v70;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    v49 = v46 + v43;
    v30 = v42;
    (*(v37 + 32))(v49, v38, a1);
    v50 = v46 + v45;
    *v50 = v95;
    v51 = v97;
    *(v50 + 16) = v33;
    *(v50 + 24) = v51;
    *(v50 + 32) = v98;
    sub_23BBDBDF8();
    OUTLINED_FUNCTION_0_49();
    v81 = swift_getWitnessTable();
    OUTLINED_FUNCTION_3_4();
    v52 = swift_getWitnessTable();
    v53 = v64;
    v54 = OUTLINED_FUNCTION_30_7();
    sub_23B9D2D88(v54, v55, v52);
    v56 = *(v65 + 8);
    v57 = OUTLINED_FUNCTION_30_7();
    v56(v57);
    sub_23B9D2D88(v53, v21, v52);
    sub_23B9D1E7C();
    v36 = v79;
    OUTLINED_FUNCTION_30_7();
    sub_23BA82D64();
    v58 = OUTLINED_FUNCTION_30_7();
    v56(v58);
    (v56)(v53, v21);
    v28 = v74;
  }

  OUTLINED_FUNCTION_0_49();
  v84 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v59 = swift_getWitnessTable();
  v60 = sub_23B9D1E7C();
  v82 = v59;
  v83 = v60;
  OUTLINED_FUNCTION_2_7();
  v61 = swift_getWitnessTable();
  sub_23B9D2D88(v36, v28, v61);
  return (*(v30 + 8))(v36, v28);
}

uint64_t sub_23BB311B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v24 = a1 + 3;
  v25 = a1 + 5;
  v2 = a1[2];
  v3 = a1[4];
  type metadata accessor for AutomaticPickerContent();
  sub_23BBDACE8();
  v4 = sub_23BBDBE28();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v7 = sub_23BBDA358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  *&v14 = v2;
  *(&v14 + 1) = *v24;
  *&v15 = v3;
  *(&v15 + 1) = *v25;
  v29 = v14;
  v30 = v15;
  v31 = v26;
  WitnessTable = swift_getWitnessTable();
  v35 = v3;
  v36 = WitnessTable;
  v17 = swift_getWitnessTable();
  sub_23BBDBE18();
  v34 = v17;
  v18 = swift_getWitnessTable();
  sub_23B9D2A24();
  (*(v27 + 8))(v6, v4);
  v19 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v32 = v18;
  v33 = v19;
  v20 = swift_getWitnessTable();
  sub_23B9D2D88(v10, v7, v20);
  v21 = *(v8 + 8);
  v21(v10, v7);
  sub_23B9D2D88(v13, v7, v20);
  return (v21)(v13, v7);
}

uint64_t sub_23BB314FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v86 = a4;
  v87 = a2;
  v90 = a8;
  v111 = sub_23BBDA288();
  v105 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_23BBDC208();
  v104 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v108 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v76 - v16;
  v18 = sub_23BBDAA98();
  v102 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v100 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23BBDAD98();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v93 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  MEMORY[0x28223BE20](v23 - 8);
  v83 = &v76 - v24;
  v25 = sub_23BBDA988();
  v78 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v79 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SubscriptionPickerProperties();
  MEMORY[0x28223BE20](v27 - 8);
  v80 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a5;
  v89 = a7;
  v85 = type metadata accessor for SubscriptionPickerVariadicContainer();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v82 = &v76 - v31;
  v32 = sub_23BB40BDC(&qword_27E1A16C0, MEMORY[0x277CE0070]);
  v33 = sub_23BBDD458();
  v94 = a1;
  v95 = v25;
  if (v33)
  {
    v112 = MEMORY[0x277D84F90];
    v101 = v33;
    sub_23BA92D08();
    v103 = v112;
    result = sub_23BBDD438();
    if ((v101 & 0x8000000000000000) == 0)
    {
      v76 = a6;
      v77 = a3;
      v35 = 0;
      v99 = (v21 + 16);
      ++v105;
      v106 = (v104 + 2);
      ++v104;
      v98 = (v102 + 8);
      v97 = (v21 + 8);
      v36 = v18;
      v37 = v93;
      v92 = v17;
      v91 = v20;
      v96 = v32;
      while (1)
      {
        v38 = __OFADD__(v35, 1);
        v39 = v35 + 1;
        if (v38)
        {
          break;
        }

        v102 = v39;
        v40 = sub_23BBDD558();
        (*v99)(v37);
        v40(&v114, 0);
        v41 = v100;
        sub_23BBDAD88();
        sub_23BB40BDC(&qword_27E1984F8, MEMORY[0x277CE0150]);
        v42 = sub_23BBDD458();
        if (v42)
        {
          v43 = v42;
          v113 = MEMORY[0x277D84F90];
          sub_23BA92D28();
          v44 = v113;
          result = sub_23BBDD438();
          if (v43 < 0)
          {
            goto LABEL_20;
          }

          v45 = v92;
          do
          {
            v46 = sub_23BBDD558();
            v47 = v36;
            v48 = v107;
            v49 = v109;
            (*v106)(v107);
            v46(&v114, 0);
            v50 = v41;
            v51 = v110;
            sub_23BBDC1D8();
            sub_23B9D28AC();
            sub_23BBDA298();
            (*v105)(v51, v111);
            (*v104)(v48, v49);
            v113 = v44;
            v52 = *(v44 + 16);
            if (v52 >= *(v44 + 24) >> 1)
            {
              sub_23BA92D28();
              v44 = v113;
            }

            *(v44 + 16) = v52 + 1;
            sub_23B9A71D0(v45, v44 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v52, &qword_27E199760);
            sub_23BBDD4B8();
            --v43;
            v36 = v47;
            v41 = v50;
          }

          while (v43);
          (*v98)(v50, v47);
          v37 = v93;
          v20 = v91;
          (*v97)(v93, v91);
        }

        else
        {
          (*v98)(v41, v36);
          (*v97)(v37, v20);
          v44 = MEMORY[0x277D84F90];
        }

        v53 = v103;
        v112 = v103;
        v54 = *(v103 + 16);
        if (v54 >= *(v103 + 24) >> 1)
        {
          sub_23BA92D08();
          v53 = v112;
        }

        *(v53 + 16) = v54 + 1;
        v103 = v53;
        *(v53 + 8 * v54 + 32) = v44;
        result = sub_23BBDD4B8();
        v35 = v102;
        if (v102 == v101)
        {
          v55 = v89;
          v56 = v88;
          v57 = v87;
          a3 = v77;
          a6 = v76;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v103 = MEMORY[0x277D84F90];
    v55 = v89;
    v56 = v88;
    v57 = v87;
LABEL_18:
    v58 = v86;
    v59 = v85;
    v60 = v84;
    v61 = v79;
    (*(v78 + 16))(v79, v94, v95);
    *&v114 = v58;
    *(&v114 + 1) = v56;
    v115 = a6;
    v116 = v55;
    v62 = type metadata accessor for SubscriptionStorePicker();
    v63 = v83;
    sub_23B9A721C(v57 + *(v62 + 60), v83, qword_27E1A13B8);
    v114 = *(a3 + 8);
    sub_23B9A721C(&v114, &v112, &qword_27E19D2C0);
    v64 = sub_23BB30A44(v62);
    v65 = v80;
    sub_23BB324D4(v61, v103, v63, a3, v64, v66, v67, v80);
    v68 = (v57 + *(v62 + 52));
    v69 = *v68;
    v70 = v68[1];

    v71 = sub_23BB30A08(v62);
    v72 = v81;
    sub_23BB343DC(v65, v69, v70, v71, v81);
    WitnessTable = swift_getWitnessTable();
    v74 = v82;
    sub_23B9D2D88(v72, v59, WitnessTable);
    v75 = *(v60 + 8);
    v75(v72, v59);
    sub_23B9D2D88(v74, v59, WitnessTable);
    return (v75)(v74, v59);
  }

  return result;
}

uint64_t sub_23BB3206C()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  type metadata accessor for SubscriptionStorePicker();
  OUTLINED_FUNCTION_19_0();
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1 + v5;
  OUTLINED_FUNCTION_27_8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    if (*(v6 + 48))
    {
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BB0) + 60);
    v8 = type metadata accessor for Subscription();
    if (!__swift_getEnumTagSinglePayload(v6 + v7, 1, v8))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v9 + 8))(v6 + v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v10 + 8))(v1 + v5, v2);
  }

  v11 = v6 + v0[15];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  if (!OUTLINED_FUNCTION_25_6(v12))
  {

    v13 = v11 + *(v3 + 32);
    v14 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
    if (!OUTLINED_FUNCTION_25_6(v14))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v15 + 8))(v13);
      v16 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
      v17 = sub_23BBDCC88();
      if (!__swift_getEnumTagSinglePayload(v13 + v16, 1, v17))
      {
        OUTLINED_FUNCTION_1_4();
        (*(v18 + 8))(v13 + v16, v17);
      }

      if (*(v13 + *(v3 + 20)))
      {
      }
    }
  }

  v19 = v6 + v0[16];
  sub_23BB32398(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 33), sub_23B9A1648);
  sub_23B97B450(*(v6 + v0[17]), *(v6 + v0[17] + 8));
  OUTLINED_FUNCTION_11_23(v6 + v0[18]);

  return swift_deallocObject();
}

uint64_t sub_23BB32398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(void))
{
  if (a6)
  {
    return a7();
  }

  else
  {
  }
}

uint64_t sub_23BB323A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for SubscriptionStorePicker() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_23BB314FC(a1, v2 + v10, v11, v5, v6, v7, v8, a2);
}

uint64_t sub_23BB324D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v256) = a7;
  *&v239 = a6;
  v238 = a5;
  v241 = a4;
  v242 = a3;
  v257 = a2;
  v225 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v225);
  v243 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16A0);
  MEMORY[0x28223BE20](v11 - 8);
  v251 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v246 = &v211 - v14;
  MEMORY[0x28223BE20](v15);
  v240 = &v211 - v16;
  MEMORY[0x28223BE20](v17);
  v245 = &v211 - v18;
  MEMORY[0x28223BE20](v19);
  v255 = &v211 - v20;
  MEMORY[0x28223BE20](v21);
  v250 = &v211 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BA0);
  MEMORY[0x28223BE20](v23 - 8);
  v244 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v222 = &v211 - v26;
  MEMORY[0x28223BE20](v27);
  v221 = &v211 - v28;
  v248 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v248);
  v254 = &v211 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v220 = &v211 - v31;
  MEMORY[0x28223BE20](v32);
  v224 = (&v211 - v33);
  v34 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v34);
  v212 = &v211 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v228 = &v211 - v37;
  MEMORY[0x28223BE20](v38);
  v219 = &v211 - v39;
  MEMORY[0x28223BE20](v40);
  v223 = &v211 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v253 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v214 = &v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v213 = &v211 - v45;
  MEMORY[0x28223BE20](v46);
  v215 = &v211 - v47;
  MEMORY[0x28223BE20](v48);
  v227 = &v211 - v49;
  MEMORY[0x28223BE20](v50);
  v226 = &v211 - v51;
  MEMORY[0x28223BE20](v52);
  v249 = &v211 - v53;
  MEMORY[0x28223BE20](v54);
  v229 = &v211 - v55;
  MEMORY[0x28223BE20](v56);
  v217 = &v211 - v57;
  MEMORY[0x28223BE20](v58);
  v216 = &v211 - v59;
  MEMORY[0x28223BE20](v60);
  v218 = &v211 - v61;
  MEMORY[0x28223BE20](v62);
  v247 = &v211 - v63;
  MEMORY[0x28223BE20](v64);
  *(&v239 + 1) = &v211 - v65;
  MEMORY[0x28223BE20](v66);
  v252 = &v211 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  MEMORY[0x28223BE20](v68 - 8);
  v70 = &v211 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  MEMORY[0x28223BE20](v71);
  v73 = &v211 - v72;
  v258 = 0uLL;
  v259 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B148);
  sub_23BBDBF58();
  v230 = v260[0];
  v231 = v260[1];
  v232 = v261;
  v233 = v262;
  v74 = type metadata accessor for SubscriptionPickerProperties();
  v75 = v34;
  __swift_storeEnumTagSinglePayload(a8 + v74[7], 1, 1, v34);
  v76 = v74[8];
  __swift_storeEnumTagSinglePayload(a8 + v76, 1, 1, v71);
  v77 = v74[5];
  v78 = sub_23BBDA988();
  v235 = *(v78 - 8);
  v79 = *(v235 + 16);
  v80 = a8 + v77;
  v81 = v241;
  v237 = a1;
  v236 = v78;
  v79(v80, a1);
  *(a8 + v74[6]) = v257;

  v82 = a8 + v76;
  v83 = v242;
  sub_23BB3F7D0(v242, v82);
  v84 = v74[9];
  v234 = a8;
  v85 = a8 + v84;
  v86 = *(v81 + 16);
  *v85 = *v81;
  *(v85 + 16) = v86;
  *(v85 + 32) = *(v81 + 32);
  sub_23B9A721C(v83, v70, qword_27E1A13B8);
  if (__swift_getEnumTagSinglePayload(v70, 1, v71) != 1)
  {

    sub_23BA0D94C(v238, v239, v256);
    sub_23B9A71D0(v70, v73, &qword_27E198860);
    v93 = v252;
    MEMORY[0x23EEB48C0](v71);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, 1, v75);
    v95 = v73;
    if (EnumTagSinglePayload)
    {
      sub_23B9846E8(v83, qword_27E1A13B8);
      (*(v235 + 8))(v237, v236);
      sub_23B9846E8(v73, &qword_27E198860);
      sub_23B9846E8(v93, &qword_27E199760);
      sub_23BA0D94C(v230, v231, v232);

      v88 = 0;
      v92 = 0;
      v89 = -1;
    }

    else
    {
      v136 = v223;
      sub_23BB3F9B0(v93, v223);
      sub_23B9846E8(v93, &qword_27E199760);
      v137 = v224;
      sub_23BB3F9B0(v136, v224);
      sub_23BB3FA18(v136, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
      v138 = v137 + *(v225 + 20);
      v139 = *(v138 + 8);
      v140 = (v235 + 8);
      if (v139 == 2)
      {
        v88 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v92 = v141;
        sub_23B9846E8(v83, qword_27E1A13B8);
        (*v140)(v237, v236);
        sub_23BB3FA18(v137, type metadata accessor for SubscriptionStoreControlOption);
        sub_23B9846E8(v95, &qword_27E198860);
        sub_23BA0D94C(v230, v231, v232);

        v89 = 1;
      }

      else
      {
        v88 = *v138;
        v92 = v139 & 1;
        sub_23B9846E8(v83, qword_27E1A13B8);
        (*v140)(v237, v236);
        sub_23BB3FA18(v137, type metadata accessor for SubscriptionStoreControlOption);
        sub_23B9846E8(v95, &qword_27E198860);
        sub_23BA0D94C(v230, v231, v232);

        v89 = 0;
      }
    }

    v91 = v234;
    goto LABEL_109;
  }

  v87 = v239;
  v88 = v238;
  v252 = v75;
  v258 = *(v81 + 8);
  sub_23B9A721C(&v258, v260, &qword_27E19D2C0);
  sub_23B9846E8(v70, qword_27E1A13B8);
  v89 = v256;
  if (v256 != 0xFF)
  {
    sub_23BB1BBBC(v81);

    sub_23B9846E8(v83, qword_27E1A13B8);
    (*(v235 + 8))(v237, v236);
    sub_23BA0D94C(v230, v231, v232);

    v91 = v234;
    v92 = v87;
LABEL_109:
    *v91 = v88;
    *(v91 + 8) = v92;
    *(v91 + 16) = v89;
    *(v91 + 24) = 0;
    return result;
  }

  KeyPath = swift_getKeyPath();
  v97 = swift_allocObject();
  v97[2] = sub_23BB3F840;
  v97[3] = KeyPath;
  v98 = v257;
  v97[4] = v257;
  v97[5] = sub_23BB3B15C;
  v97[6] = 0;
  v97[7] = sub_23BB420F0;
  v97[8] = 0;
  v97[9] = sub_23BB420E8;
  v97[10] = 0;
  v97[11] = sub_23BB420F4;
  v97[12] = 0;
  v256 = v98 + 32;
  v238 = KeyPath;
  v224 = v97;
  if (!*(&v258 + 1))
  {
    v142 = 0;
    v143 = *(v98 + 16);
    while (1)
    {
      v144 = v143 == v142;
      if (v143 == v142)
      {
        break;
      }

      if (*(*(v98 + 8 * v142 + 32) + 16))
      {
        goto LABEL_51;
      }

      ++v142;
    }

    v142 = *(v98 + 16);
LABEL_51:
    swift_bridgeObjectRetain_n();
    result = swift_retain_n();
LABEL_52:
    v154 = 0;
    while (1)
    {
      if (v142 == v143 && v144)
      {
        v166 = *(v98 + 16);
        v167 = v143 >= v166;
        if (v143 != v166)
        {
          goto LABEL_124;
        }

        swift_bridgeObjectRelease_n();

        sub_23B9846E8(v242, qword_27E1A13B8);
        (*(v235 + 8))(v237, v236);
        v88 = 0;
        v92 = 0;
        v89 = -1;
        v91 = v234;
        goto LABEL_108;
      }

      if (v142 >= v143)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v155 = *(v256 + 8 * v142);
      if (v144)
      {
        goto LABEL_122;
      }

      if (v154 >= *(v155 + 16))
      {
        goto LABEL_111;
      }

      v156 = (*(v253 + 80) + 32) & ~*(v253 + 80);
      v157 = *(v253 + 72) * v154;
      v158 = v247;
      sub_23B9A721C(v155 + v156 + v157, v247, &qword_27E199760);
      v159 = *(&v239 + 1);
      sub_23B9A71D0(v158, *(&v239 + 1), &qword_27E199760);
      LODWORD(v158) = __swift_getEnumTagSinglePayload(v159, 1, v252);
      result = sub_23B9846E8(v159, &qword_27E199760);
      v98 = v257;
      v160 = *(v257 + 16);
      if (v158 != 1)
      {
        break;
      }

      if (v142 >= v160)
      {
        goto LABEL_112;
      }

      v144 = 0;
      if (++v154 == *(*(v256 + 8 * v142) + 16))
      {
        ++v142;
        while (1)
        {
          v144 = v142 == v160;
          if (v142 == v160)
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16D0);
          sub_23BB3F8A8();
          v161 = sub_23BA93B58();
          v163 = *v162;

          (v161)(v260, 0);
          v164 = *(v163 + 16);
          v98 = v257;

          if (v164)
          {
            goto LABEL_52;
          }

          v165 = __OFADD__(v142++, 1);
          if (v165)
          {
            goto LABEL_120;
          }
        }

        v142 = v160;
        goto LABEL_52;
      }
    }

    v167 = v142 >= v160;
    if (v142 >= v160)
    {
      goto LABEL_126;
    }

    v168 = *(v256 + 8 * v142);
    v169 = v242;
    v170 = v220;
    if (v154 >= *(v168 + 16))
    {
      goto LABEL_118;
    }

    v171 = v216;
    sub_23B9A721C(v168 + v156 + v157, v216, &qword_27E199760);
    v172 = v171;
    v173 = v218;
    sub_23B9A71D0(v172, v218, &qword_27E199760);
    v174 = v217;
    sub_23B9A721C(v173, v217, &qword_27E199760);
    result = __swift_getEnumTagSinglePayload(v174, 1, v252);
    v167 = result != 0;
    if (result == 1)
    {
      goto LABEL_127;
    }

    v175 = v219;
    sub_23BB3F958(v174, v219);
    sub_23BB3F9B0(v175, v170);
    sub_23BB3FA18(v175, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

    sub_23B9846E8(v173, &qword_27E199760);
    v176 = v170 + *(v225 + 20);
    v177 = *(v176 + 8);
    v178 = (v235 + 8);
    v91 = v234;
    if (v177 != 2)
    {
      v210 = *v176;

      v88 = v210;

      swift_bridgeObjectRelease_n();
      v92 = v177 & 1;
      sub_23B9846E8(v169, qword_27E1A13B8);
      (*v178)(v237, v236);
      v209 = v170;
      goto LABEL_107;
    }

    v179 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v181 = v180;

    v88 = v179;
    v92 = v181;

    swift_bridgeObjectRelease_n();
    sub_23B9846E8(v169, qword_27E1A13B8);
    (*v178)(v237, v236);
    v182 = v170;
LABEL_104:
    sub_23BB3FA18(v182, type metadata accessor for SubscriptionStoreControlOption);
    v89 = 1;
LABEL_108:
    sub_23BA0D94C(v230, v231, v232);

    goto LABEL_109;
  }

  v239 = v258;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v99 = 0;
  v100 = 0;
  v101 = &qword_27E1A16A0;
  v102 = v246;
  v211 = v42;
LABEL_8:
  v247 = 0;
  while (2)
  {
    v103 = v245;
    if (!v99)
    {
      while (1)
      {
LABEL_12:
        v106 = *(v98 + 16);
        if (v100 != v106)
        {
          if (v100 >= v106)
          {
            goto LABEL_117;
          }

          v135 = *(v256 + 8 * v100);

          v99 = v135;
          ++v100;
          goto LABEL_8;
        }

        __swift_storeEnumTagSinglePayload(v103, 1, 1, v42);
LABEL_16:
        v109 = v101;
        sub_23B9A71D0(v103, v102, v101);
        v110 = 1;
        if (__swift_getEnumTagSinglePayload(v102, 1, v42) != 1)
        {
          v111 = v249;
          sub_23B9A71D0(v102, v249, &qword_27E199760);
          sub_23B9A71D0(v111, v255, &qword_27E199760);
          v110 = 0;
        }

        v112 = v255;
        __swift_storeEnumTagSinglePayload(v255, v110, 1, v42);
        if (__swift_getEnumTagSinglePayload(v112, 1, v42) == 1)
        {
          v114 = v112;
          v101 = v109;
          sub_23B9846E8(v114, v109);
          v115 = 1;
          goto LABEL_24;
        }

        v113 = v229;
        sub_23B9A71D0(v112, v229, &qword_27E199760);
        if (__swift_getEnumTagSinglePayload(v113, 1, v252) != 1)
        {
          break;
        }

        sub_23B9846E8(v113, &qword_27E199760);
        v101 = v109;
        if (v99)
        {
          goto LABEL_10;
        }
      }

      sub_23B9A71D0(v113, v250, &qword_27E199760);
      v115 = 0;
      v101 = v109;
LABEL_24:
      v116 = 1;
      v117 = v250;
      __swift_storeEnumTagSinglePayload(v250, v115, 1, v42);
      v118 = v117;
      v119 = v251;
      sub_23B9A71D0(v118, v251, v101);
      v120 = __swift_getEnumTagSinglePayload(v119, 1, v42);
      v121 = v244;
      if (v120 != 1)
      {
        v122 = v249;
        sub_23B9A71D0(v251, v249, &qword_27E199760);

        v123 = v228;
        sub_23BB3F498(v122);
        sub_23BB3F9B0(v123, v121);
        sub_23BB3FA18(v123, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

        v124 = v122;
        v101 = v109;
        v42 = v211;
        sub_23B9846E8(v124, &qword_27E199760);
        v116 = 0;
      }

      v125 = v116;
      v126 = v248;
      __swift_storeEnumTagSinglePayload(v121, v125, 1, v248);
      if (__swift_getEnumTagSinglePayload(v121, 1, v126) == 1)
      {
        sub_23BB1BBBC(v241);

        result = __swift_storeEnumTagSinglePayload(v222, 1, 1, v126);
        v145 = 0;
        v146 = *(v98 + 16);
        v147 = v252;
        while (1)
        {
          v148 = v146 == v145;
          if (v146 == v145)
          {
            break;
          }

          if (*(*(v98 + 8 * v145 + 32) + 16))
          {
            goto LABEL_76;
          }

          ++v145;
        }

        v145 = *(v98 + 16);
LABEL_76:
        v183 = 0;
        while (1)
        {
          if (v145 == v146 && v148)
          {
            v196 = *(v257 + 16);
            v167 = v146 >= v196;
            if (v146 != v196)
            {
              goto LABEL_128;
            }

            v197 = 1;
            v91 = v234;
            v153 = v242;
            v151 = v221;
LABEL_98:
            v152 = v248;
            __swift_storeEnumTagSinglePayload(v151, v197, 1, v248);
            v204 = v222;
            if (__swift_getEnumTagSinglePayload(v222, 1, v152) != 1)
            {
              sub_23B9846E8(v204, &qword_27E197BA0);
            }

            goto LABEL_100;
          }

          if (v145 >= v146)
          {
            goto LABEL_113;
          }

          v184 = *(v256 + 8 * v145);
          if (v148)
          {
            goto LABEL_123;
          }

          if (v183 >= *(v184 + 16))
          {
            goto LABEL_114;
          }

          v185 = v147;
          v186 = (*(v253 + 80) + 32) & ~*(v253 + 80);
          v187 = *(v253 + 72) * v183;
          v188 = v184 + v186 + v187;
          v189 = v227;
          sub_23B9A721C(v188, v227, &qword_27E199760);
          v190 = v226;
          sub_23B9A71D0(v189, v226, &qword_27E199760);
          LODWORD(v189) = __swift_getEnumTagSinglePayload(v190, 1, v185);
          result = sub_23B9846E8(v190, &qword_27E199760);
          v191 = *(v257 + 16);
          if (v189 != 1)
          {
            break;
          }

          if (v145 >= v191)
          {
            goto LABEL_115;
          }

          v148 = 0;
          ++v183;
          v147 = v252;
          if (v183 == *(*(v256 + 8 * v145) + 16))
          {
            ++v145;
            while (1)
            {
              v148 = v145 == v191;
              if (v145 == v191)
              {
                break;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A16D0);
              sub_23BB3F8A8();
              v192 = sub_23BA93B58();
              v194 = *v193;

              (v192)(v260, 0);
              v195 = *(v194 + 16);

              if (v195)
              {
                goto LABEL_76;
              }

              v165 = __OFADD__(v145++, 1);
              if (v165)
              {
                goto LABEL_121;
              }
            }

            v145 = v191;
            goto LABEL_76;
          }
        }

        if (v145 >= v191)
        {
          goto LABEL_130;
        }

        v198 = *(v256 + 8 * v145);
        v153 = v242;
        v151 = v221;
        if (v183 < *(v198 + 16))
        {
          v199 = v213;
          sub_23B9A721C(v198 + v186 + v187, v213, &qword_27E199760);
          v200 = v199;
          v201 = v215;
          sub_23B9A71D0(v200, v215, &qword_27E199760);
          v202 = v214;
          sub_23B9A721C(v201, v214, &qword_27E199760);
          result = __swift_getEnumTagSinglePayload(v202, 1, v252);
          if (result == 1)
          {
            goto LABEL_131;
          }

          v203 = v212;
          sub_23BB3F958(v202, v212);
          sub_23BB3F9B0(v203, v151);
          sub_23BB3FA18(v203, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);

          sub_23B9846E8(v201, &qword_27E199760);
          v197 = 0;
          v91 = v234;
          goto LABEL_98;
        }

        goto LABEL_119;
      }

      v127 = v254;
      sub_23BB3F958(v121, v254);
      v128 = v243;
      sub_23BB3F9B0(v127, v243);
      v129 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v131 = v130;
      v132 = sub_23BBDCDB8();
      (*(*(v132 - 8) + 8))(v128, v132);
      if (v129 == v239 && *(&v239 + 1) == v131)
      {
      }

      else
      {
        v134 = sub_23BBDDA88();

        v102 = v246;
        if ((v134 & 1) == 0)
        {
          sub_23BB3FA18(v254, type metadata accessor for SubscriptionStoreControlOption);
          continue;
        }
      }

      sub_23BB1BBBC(v241);

      v149 = v222;
      sub_23BB3F958(v254, v222);
      v150 = v248;
      __swift_storeEnumTagSinglePayload(v149, 0, 1, v248);
      v151 = v221;
      v152 = v150;
      sub_23BB3F958(v149, v221);
      __swift_storeEnumTagSinglePayload(v151, 0, 1, v150);
      v91 = v234;
      v153 = v242;
LABEL_100:
      if (__swift_getEnumTagSinglePayload(v151, 1, v152) == 1)
      {

        swift_bridgeObjectRelease_n();
        sub_23B9846E8(v153, qword_27E1A13B8);
        (*(v235 + 8))(v237, v236);
        sub_23B9846E8(v151, &qword_27E197BA0);
        v88 = 0;
        v92 = 0;
        v89 = -1;
        goto LABEL_108;
      }

      v205 = v151 + *(v225 + 20);
      v206 = *(v205 + 8);
      v207 = (v235 + 8);
      if (v206 == 2)
      {
        v88 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v92 = v208;

        swift_bridgeObjectRelease_n();
        sub_23B9846E8(v153, qword_27E1A13B8);
        (*v207)(v237, v236);
        v182 = v151;
        goto LABEL_104;
      }

      v88 = *v205;

      swift_bridgeObjectRelease_n();
      v92 = v206 & 1;
      sub_23B9846E8(v153, qword_27E1A13B8);
      (*v207)(v237, v236);
      v209 = v151;
LABEL_107:
      sub_23BB3FA18(v209, type metadata accessor for SubscriptionStoreControlOption);
      v89 = 0;
      goto LABEL_108;
    }

    break;
  }

LABEL_10:
  v104 = *(v99 + 16);
  if (v247 == v104)
  {
    v105 = v240;
    __swift_storeEnumTagSinglePayload(v240, 1, 1, v42);
    sub_23B9846E8(v105, v101);
    goto LABEL_12;
  }

  if (v247 < v104)
  {
    v107 = v247;
    v108 = v240;
    sub_23B9A721C(v99 + ((*(v253 + 80) + 32) & ~*(v253 + 80)) + *(v253 + 72) * v247, v240, &qword_27E199760);
    v247 = v107 + 1;
    __swift_storeEnumTagSinglePayload(v108, 0, 1, v42);
    sub_23B9A71D0(v108, v103, v101);
    goto LABEL_16;
  }

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
  if (!v167)
  {

    __break(1u);
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  if (!v167)
  {

    __break(1u);
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_23BB343DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_23BB3F958(a1, a5);
  v9 = type metadata accessor for SubscriptionPickerVariadicContainer();
  v10 = (a5 + v9[9]);
  *v10 = a2;
  v10[1] = a3;
  *(a5 + v9[10]) = a4;
  v11 = a5 + v9[11];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a5 + v9[12];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v14 = a5 + v9[13];
  *v14 = 0;
  *(v14 + 8) = 1;
  return result;
}

uint64_t sub_23BB344B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v46 = a1;
  v50 = a6;
  v10 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  *&v57 = a2;
  *(&v57 + 1) = a3;
  v58 = a4;
  v59 = a5;
  v22 = type metadata accessor for SubscriptionStorePicker.PickerContentStorage();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  v49 = a4;
  v26 = type metadata accessor for AutomaticPickerContent();
  v27 = sub_23BBDACE8();
  v47 = *(v27 - 8);
  v48 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v44 - v29;
  (*(v23 + 16))(v25, v46, v22, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = v45;
    v35 = sub_23BB3F958(v25, v45);
    MEMORY[0x28223BE20](v35);
    *(&v44 - 2) = v34;
    sub_23BA8C9CC();
    *&v55 = v36;
    *(&v55 + 1) = v32;
    v56 = v33;
    WitnessTable = swift_getWitnessTable();
    sub_23B9D2D88(&v55, v26, WitnessTable);

    v46 = v57;
    v53 = v57;
    v54 = v58;
    sub_23B9D2D88(&v53, v26, WitnessTable);
    v53 = v55;
    v54 = v56;

    v38 = v49;
    sub_23BA82E14();

    swift_bridgeObjectRelease_n();

    sub_23BB3FA18(v34, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  }

  else
  {
    (*(v12 + 32))(v21, v25, a2);
    v38 = v49;
    sub_23B9D2D88(v21, a2, v49);
    sub_23B9D2D88(v18, a2, v38);
    swift_getWitnessTable();
    sub_23BA82D64();
    v39 = *(v12 + 8);
    v39(v15, a2);
    v39(v18, a2);
    v39(v21, a2);
  }

  v40 = swift_getWitnessTable();
  v51 = v38;
  v52 = v40;
  v41 = v48;
  v42 = swift_getWitnessTable();
  sub_23B9D2D88(v30, v41, v42);
  return (*(v47 + 8))(v30, v41);
}

void sub_23BB34A24()
{
  type metadata accessor for SubscriptionStorePicker.PickerContentStorage();
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      sub_23BB35EE0(319, qword_27E1A1440, &qword_27E198860, &unk_23BBEE680, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23BB35EE0(319, &qword_27E198B98, &qword_27E1988B0, &unk_23BBE6660, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23BB417EC(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23BB35EE0(319, &qword_27E19B1E8, &qword_27E1988A8, &unk_23BBE60A0, MEMORY[0x277CDF468]);
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

uint64_t sub_23BB34BC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = sub_23BBDCDB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = (v9 + 87) & ~(v9 | 7);
  if (v8 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v15 = sub_23BBDCC88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 - 1;
  if ((v20 - 1) <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v20 - 1;
  }

  v23 = v22 - 1;
  if ((v22 - 1) <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v22 - 1;
  }

  if (((v11 + v14) & 0xFFFFFFFFFFFFFFF8) + 24 <= v5)
  {
    v25 = v5;
  }

  else
  {
    v25 = ((v11 + v14) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v26 = *(v16 + 80);
  if (v17)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = v15;
  v29 = v26 | v10;
  v30 = (v27 + *(v16 + 64) + ((v14 + v26) & ~v26)) & 0xFFFFFFFFFFFFFFF8;
  if (v24 < a2)
  {
    v31 = ((((((v29 + 16) & ~v29) + ((((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((v25 & 0xFFFFFFFFFFFFFFF8) + v29 + 25) & ~v29) + 23) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 34;
    if (v31 <= 3)
    {
      v32 = ((a2 - v24 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v32 = 2;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    switch(v34)
    {
      case 1:
        v35 = *(a1 + v31);
        if (!*(a1 + v31))
        {
          break;
        }

        goto LABEL_42;
      case 2:
        v35 = *(a1 + v31);
        if (*(a1 + v31))
        {
          goto LABEL_42;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BB34F88);
      case 4:
        v35 = *(a1 + v31);
        if (!v35)
        {
          break;
        }

LABEL_42:
        v37 = (v35 - 1) << (8 * v31);
        if (v31 <= 3)
        {
          v38 = *a1;
        }

        else
        {
          v37 = 0;
          v38 = *a1;
        }

        return v24 + (v38 | v37) + 1;
      default:
        break;
    }
  }

  v39 = ((a1 + v25 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 < 0)
  {
    v41 = ((((v39 + v29 + 17) & ~v29) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v21 & 0x80000000) == 0)
    {
      v42 = *v41;
      if (*v41 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      v43 = v42 + 1;
LABEL_72:
      if (v43 >= 2)
      {
        return v43 - 1;
      }

      else
      {
        return 0;
      }
    }

    v44 = (v41 + v29 + 8) & ~v29;
    if (v19 < 0x7FFFFFFF)
    {
      v48 = *((((v30 + v44 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v48 >= 0xFFFFFFFF)
      {
        LODWORD(v48) = -1;
      }

      EnumTagSinglePayload = v48 + 1;
      goto LABEL_70;
    }

    if (v12 >= v18)
    {
      if (v8 >= 0xFD)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, v8, v6);
        goto LABEL_70;
      }

      v50 = *(((v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v50 >= 2)
      {
        v46 = (v50 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v46 = -1;
      }

      v47 = (v46 + 1) >= 2;
    }

    else
    {
      v45 = __swift_getEnumTagSinglePayload((v14 + v26 + v44) & ~v26, v17, v28);
      v46 = v45 - 1;
      v47 = v45 >= 2;
    }

    if (v47)
    {
      EnumTagSinglePayload = v46;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

LABEL_70:
    v43 = EnumTagSinglePayload - 1;
    if (EnumTagSinglePayload < 2)
    {
      v43 = 0;
    }

    goto LABEL_72;
  }

  v40 = *v39;
  if (*v39 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_23BB34F9C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v70 = sub_23BBDCDB8();
  v8 = *(v70 - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = (v9 + 87) & ~(v9 | 7);
  v71 = *(v8 + 84);
  if (v71 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v69 = *(*(v70 - 8) + 64);
  v13 = ((v69 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = sub_23BBDCC88();
  v15 = 0;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 - 1;
  if (v20 - 1 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v20 - 1;
  }

  v23 = v22 - 1;
  if (v22 - 1 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v22 - 1;
  }

  if (((v11 + v13) & 0xFFFFFFFFFFFFFFF8) + 24 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = ((v11 + v13) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v26 = *(v16 + 80);
  v27 = v26 | v10;
  v28 = ((v26 | v10) + 16) & ~(v26 | v10);
  v29 = v13 + v26;
  if (v17)
  {
    v30 = *(*(v14 - 8) + 64);
  }

  else
  {
    v30 = *(*(v14 - 8) + 64) + 1;
  }

  v31 = ((v13 + v26) & ~v26) + v30;
  v32 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = ((((v28 + ((((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((v25 & 0xFFFFFFFFFFFFFFF8) + (v26 | v10) + 25) & ~(v26 | v10)) + 23) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v24 < a3)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v24 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v15 = v35;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v24 < a2)
  {
    v36 = ~v24 + a2;
    bzero(a1, ((((v28 + ((((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((v25 & 0xFFFFFFFFFFFFFFF8) + (v26 | v10) + 25) & ~(v26 | v10)) + 23) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 34);
    if (v33 <= 3)
    {
      v37 = HIWORD(v36) + 1;
    }

    else
    {
      v37 = 1;
    }

    if (v33 > 3)
    {
      *a1 = v36;
    }

    else
    {
      *a1 = v36;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v33) = v37;
        return;
      case 2:
        *(a1 + v33) = v37;
        return;
      case 3:
        goto LABEL_128;
      case 4:
        *(a1 + v33) = v37;
        return;
      default:
        return;
    }
  }

  v38 = ~v27;
  switch(v15)
  {
    case 1:
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    case 2:
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    case 3:
LABEL_128:
      __break(1u);
      JUMPOUT(0x23BB3560CLL);
    case 4:
      *(a1 + v33) = 0;
      goto LABEL_50;
    default:
LABEL_50:
      if (!a2)
      {
        return;
      }

LABEL_51:
      v40 = ((a1 + v25 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v23 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v41 = a2 & 0x7FFFFFFF;
          v40[1] = 0;
        }

        else
        {
          v41 = a2 - 1;
        }

        *v40 = v41;
        return;
      }

      v42 = ((v40 + v27 + 17) & v38);
      v43 = v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16;
      if (v23 < a2)
      {
        if (v43 <= 3)
        {
          v44 = ~(-1 << (8 * (v28 + ((((((v31 + 7) & 0xF8) + 15) & 0xF8) + 23) & 0xF8) + 16)));
        }

        else
        {
          v44 = -1;
        }

        if (v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != -16)
        {
          v45 = v44 & (a2 - v22);
          if (v43 <= 3)
          {
            v46 = v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16;
          }

          else
          {
            v46 = 4;
          }

          bzero(v42, v43);
          switch(v46)
          {
            case 2:
              goto LABEL_84;
            case 3:
              goto LABEL_83;
            case 4:
              goto LABEL_90;
            default:
              goto LABEL_82;
          }
        }

        return;
      }

      v47 = a2 >= v22;
      v48 = a2 - v22;
      if (v47)
      {
        if (v43 <= 3)
        {
          v52 = ~(-1 << (8 * (v28 + ((((((v31 + 7) & 0xF8) + 15) & 0xF8) + 23) & 0xF8) + 16)));
        }

        else
        {
          v52 = -1;
        }

        if (v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != -16)
        {
          v45 = v52 & v48;
          if (v43 <= 3)
          {
            v53 = v28 + ((((((v31 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 16;
          }

          else
          {
            v53 = 4;
          }

          bzero(v42, v43);
          switch(v53)
          {
            case 2:
LABEL_84:
              *v42 = v45;
              break;
            case 3:
LABEL_83:
              *v42 = v45;
              v42[2] = BYTE2(v45);
              break;
            case 4:
              goto LABEL_90;
            default:
              goto LABEL_82;
          }
        }
      }

      else
      {
        v49 = a2 + 1;
        v50 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v21 & 0x80000000) == 0)
        {
          if ((v49 & 0x80000000) != 0)
          {
            v51 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v51 = a2;
          }

          *v50 = v51;
          return;
        }

        v42 = ((v50 + v27 + 8) & v38);
        v54 = (v31 + 7) & 0xFFFFFFF8;
        v55 = (((v54 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8;
        v56 = v55 + 16;
        v57 = a2 - v21;
        if (a2 >= v21)
        {
          if (v55 != -16)
          {
            bzero(v42, v55 + 16);
            *v42 = v57;
          }
        }

        else
        {
          v58 = a2 + 2;
          if (a2 + 2 > v20)
          {
            if (!v56)
            {
              return;
            }

            v45 = v49 - v20;
            v59 = v42;
            v60 = v56;
LABEL_89:
            bzero(v59, v60);
LABEL_90:
            *v42 = v45;
            return;
          }

          if (v19 < 0x7FFFFFFF)
          {
            v61 = (((&v42[v32 + 8] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
            if ((v58 & 0x80000000) != 0)
            {
              *v61 = a2 - 2147483646;
              v61[1] = 0;
            }

            else
            {
              *v61 = v49;
            }

            return;
          }

          if (v58 > v19)
          {
            v60 = (v54 + 8);
            if (v54 == -8)
            {
              return;
            }

            v45 = v49 - v19;
            v59 = v42;
            goto LABEL_89;
          }

          if (v12 >= v18)
          {
            if (v58 > v12)
            {
              v45 = v49 - v12;
              bzero(v42, v13);
              if (v13 <= 3)
              {
LABEL_82:
                *v42 = v45;
                return;
              }

              goto LABEL_90;
            }

            v17 = v71;
            if (v71 < 0xFD)
            {
              v68 = &v42[v69 + 7] & 0xFFFFFFFFFFFFFFF8;
              if (a2 > 0xFB)
              {
                *v68 = 0;
                *(v68 + 8) = 0;
                *v68 = a2 - 252;
              }

              else
              {
                *(v68 + 8) = (v58 & 0xFE | a2 & 1) + 2;
              }

              return;
            }

            v67 = v42;
            v66 = a2 + 2;
            v14 = v70;
          }

          else
          {
            v39 = ~v26;
            v62 = &v42[v29] & ~v26;
            if (v58 > v18)
            {
              if (v30 <= 3)
              {
                v63 = ~(-1 << (8 * v30));
              }

              else
              {
                v63 = -1;
              }

              if (v30)
              {
                v64 = v63 & (v49 - v18);
                if (v30 <= 3)
                {
                  v65 = v30;
                }

                else
                {
                  v65 = 4;
                }

                bzero((&v42[v29] & v39), v30);
                switch(v65)
                {
                  case 2:
                    *v62 = v64;
                    break;
                  case 3:
                    *v62 = v64;
                    *(v62 + 2) = BYTE2(v64);
                    break;
                  case 4:
                    *v62 = v64;
                    break;
                  default:
                    *v62 = v64;
                    break;
                }
              }

              return;
            }

            v66 = a2 + 3;
            v67 = &v42[v29] & v39;
          }

          __swift_storeEnumTagSinglePayload(v67, v66, v17, v14);
        }
      }

      return;
  }
}

uint64_t sub_23BB35664()
{
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for AutomaticPickerContent();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  type metadata accessor for SubscriptionPickerVariadicContainer();
  OUTLINED_FUNCTION_16_18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v0, &qword_27E19A1E0);
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_23();
  swift_getWitnessTable();
  sub_23BBDAED8();
  OUTLINED_FUNCTION_23_9();
  sub_23BBDBE28();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_0_49();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D1E7C();
  return swift_getWitnessTable();
}

void sub_23BB35830()
{
  type metadata accessor for SubscriptionPickerProperties();
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      sub_23BB417EC(319, &qword_27E1A14C8, &type metadata for SubscriptionPickerConfirmationPlacement, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23BB35EE0(319, &qword_27E19B1E8, &qword_27E1988A8, &unk_23BBE60A0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23BB35EE0(319, qword_27E1A0238, &qword_27E197E38, &unk_23BBE4780, type metadata accessor for IdiomValue);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BB35994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SubscriptionPickerProperties();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 36)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t type metadata accessor for SubscriptionPickerProperties()
{
  result = qword_27E1A14D0;
  if (!qword_27E1A14D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BB35A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_12_3();
  type metadata accessor for SubscriptionPickerProperties();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_23BB35B44(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDA988();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_0(*(v3 + a3[6]));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v9 = a3[7];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
      v9 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
}

void sub_23BB35C6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDA988();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[6]) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
      v11 = a4[8];
    }
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

void sub_23BB35D88()
{
  sub_23BB35EE0(319, &qword_27E1A14E0, &qword_27E19B148, &unk_23BBFE400, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_23BBDA988();
    if (v1 <= 0x3F)
    {
      sub_23BB35EE0(319, &qword_27E1A14E8, &qword_27E199770, &unk_23BBF4FF0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23BB35F44();
        if (v3 <= 0x3F)
        {
          sub_23BB35EE0(319, qword_27E1A1440, &qword_27E198860, &unk_23BBEE680, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23BB35EE0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23BB35F44()
{
  if (!qword_27E1A14F0[0])
  {
    type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(255);
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, qword_27E1A14F0);
    }
  }
}

uint64_t sub_23BB35F9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BB35FD8(uint64_t *a1, int a2)
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

uint64_t sub_23BB36018(uint64_t result, int a2, int a3)
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

void sub_23BB36078()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BB36520();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23BB360F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_23BBDCDB8() - 8);
  v7 = *(v6 + 80) & 0xF8;
  v8 = ((((*(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 87) & ~v7 & 0x1F8) + 9) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return (v10 | v15) + 255;
}

void sub_23BB362BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_23BBDCDB8() - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = ((((*(v8 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v9 + 87) & ~v9 & 0x1F8) + 9) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v10 != -1)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BB364F8);
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v11] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v10] = -a2;
        }

        break;
    }
  }
}

void sub_23BB36520()
{
  if (!qword_27E1A15F8)
  {
    type metadata accessor for SubscriptionStoreControlStyleConfiguration(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197B18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1A15F8);
    }
  }
}

unint64_t sub_23BB365A0()
{
  result = qword_27E1A1600;
  if (!qword_27E1A1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1600);
  }

  return result;
}

void sub_23BB36678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23BB3F9B0(a1, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (a2 + *(type metadata accessor for SubscriptionPickerProperties() + 36));
  v7 = *(v6 + 1);
  v8 = v6[32];
  v9[1] = *v6;
  v9[2] = v7;
  v10 = *(v6 + 1);
  v11 = v8;

  sub_23BB9494C();
}

uint64_t sub_23BB36768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v128 = a1;
  v129 = *(a1 - 8);
  v123 = *(v129 + 64);
  MEMORY[0x28223BE20](a1);
  v127 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_23BBDA988();
  v125 = *(a1 + 16);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v121 = sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650);
  sub_23BBDA358();
  v4 = sub_23BBDD648();
  v5 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070]);
  WitnessTable = swift_getWitnessTable();
  v122 = MEMORY[0x277CE0868];
  v7 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v153 = WitnessTable;
  v154 = v7;
  v8 = swift_getWitnessTable();
  v9 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650);
  v151 = v8;
  v152 = v9;
  v150 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v139 = v124;
  v140 = v4;
  *&v141 = v5;
  *(&v141 + 1) = v10;
  v11 = type metadata accessor for SubscriptionStorePickerControlWrapper();
  sub_23BBDB038();
  sub_23BBDA358();
  v12 = sub_23BBDD648();
  v124 = *(v128 + 24);
  v13 = v124;
  v14 = type metadata accessor for SubscriptionPickerVariadicContainer.SetSelectionEnvironmentModifier();
  v15 = swift_getWitnessTable();
  v16 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
  v148 = v13;
  v149 = v16;
  v147 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v145 = v17;
  v146 = v18;
  v144 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v139 = v11;
  v140 = v12;
  *&v141 = v14;
  *(&v141 + 1) = v15;
  v115 = v14;
  v142 = v19;
  v143 = v20;
  type metadata accessor for SubscriptionStorePickerFeatureContainer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1668);
  v21 = sub_23BBDA358();
  v116 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v100 = &v96 - v22;
  v23 = sub_23BBDA358();
  v117 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v103 = &v96 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1670);
  v25 = sub_23BBDA358();
  v113 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v121 = &v96 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148);
  v28 = swift_getWitnessTable();
  v29 = sub_23B97B518(&qword_27E1A1678, &qword_27E1A1668);
  v137 = v28;
  v138 = v29;
  v30 = swift_getWitnessTable();
  v135 = v30;
  v136 = v20;
  v31 = swift_getWitnessTable();
  v32 = sub_23B97B518(&qword_27E1A1680, &qword_27E1A1670);
  v133 = v31;
  v134 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_23BB3EE74();
  v139 = v25;
  v140 = v27;
  v35 = v25;
  v99 = v25;
  *&v141 = v33;
  *(&v141 + 1) = v34;
  v98 = v33;
  v36 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v120 = &v96 - v38;
  v139 = v35;
  v140 = v27;
  *&v141 = v33;
  *(&v141 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v139 = OpaqueTypeMetadata2;
  v140 = v27;
  v40 = OpaqueTypeMetadata2;
  v102 = OpaqueTypeMetadata2;
  v119 = v27;
  *&v141 = OpaqueTypeConformance2;
  *(&v141 + 1) = v36;
  v41 = OpaqueTypeConformance2;
  v101 = OpaqueTypeConformance2;
  v118 = v36;
  v42 = swift_getOpaqueTypeMetadata2();
  v107 = v42;
  v112 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v122 = &v96 - v43;
  v139 = v40;
  v140 = v27;
  *&v141 = v41;
  *(&v141 + 1) = v36;
  v106 = swift_getOpaqueTypeConformance2();
  v139 = v42;
  v140 = MEMORY[0x277D839B0];
  *&v141 = v106;
  *(&v141 + 1) = MEMORY[0x277D839C8];
  v108 = MEMORY[0x277CE0E30];
  v109 = swift_getOpaqueTypeMetadata2();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v104 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v105 = &v96 - v46;
  v47 = v100;
  v48 = v128;
  v49 = v126;
  sub_23BB377B8(v128, v100);
  v50 = *(v49 + 16);
  v51 = *(v49 + 3);
  v130 = *v49;
  v131 = v50;
  v132 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  sub_23BBDBF88();
  v130 = v141;
  v131 = v142;
  v155 = v139;
  v52 = v103;
  MEMORY[0x23EEB43C0](&v139, v21, v115, v30);
  sub_23BA6EA10(&v155);

  sub_23B9846E8(&v130, &qword_27E19B148);
  (*(v116 + 8))(v47, v21);
  swift_getKeyPath();
  v53 = v48;
  sub_23BB365F4();
  v139 = v54;
  sub_23BBDB748();

  v117[1](v52, v23);
  v100 = sub_23BB37FAC();
  v97 = v55;
  LOBYTE(v36) = v56;
  v139 = v100;
  v140 = v55;
  LOBYTE(v141) = v56;
  v57 = v129;
  v58 = *(v129 + 16);
  v116 = v129 + 16;
  v117 = v58;
  v59 = v127;
  (v58)(v127, v49, v53);
  v60 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v103 = *(v57 + 80);
  v61 = swift_allocObject();
  v62 = v125;
  v63 = v124;
  *(v61 + 16) = v125;
  *(v61 + 24) = v63;
  v64 = *(v57 + 32);
  v129 = v57 + 32;
  v115 = v64;
  v64(v61 + v60, v59, v53);
  v65 = v99;
  OUTLINED_FUNCTION_0_2();
  v66 = v121;
  sub_23BBDBC18();

  sub_23BA0D94C(v100, v97, v36);
  (*(v113 + 8))(v66, v65);
  v67 = v126;
  v68 = sub_23BB38400();
  v70 = v69;
  LOBYTE(v52) = v71;
  v139 = v68;
  v140 = v69;
  LOBYTE(v141) = v71;
  v72 = v127;
  v73 = v67;
  v74 = v128;
  (v117)(v127, v73, v128);
  v75 = swift_allocObject();
  v76 = v124;
  *(v75 + 16) = v62;
  *(v75 + 24) = v76;
  v115(v75 + v60, v72, v74);
  v77 = v102;
  OUTLINED_FUNCTION_0_2();
  v78 = v120;
  sub_23BBDBC18();

  sub_23BA0D94C(v68, v70, v52);
  (*(v111 + 8))(v78, v77);
  v79 = v126;
  LOBYTE(v139) = sub_23BB387AC() & 1;
  v80 = v127;
  v81 = v79;
  v82 = v128;
  (v117)(v127, v81, v128);
  v83 = swift_allocObject();
  v84 = v124;
  *(v83 + 16) = v125;
  *(v83 + 24) = v84;
  v115(v83 + v60, v80, v82);
  v85 = v104;
  v86 = v107;
  v87 = MEMORY[0x277D839B0];
  v88 = v106;
  v89 = MEMORY[0x277D839C8];
  v90 = v122;
  sub_23BBDBC08();

  (*(v112 + 8))(v90, v86);
  v139 = v86;
  v140 = v87;
  *&v141 = v88;
  *(&v141 + 1) = v89;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v105;
  v93 = v109;
  sub_23B9D2D88(v85, v109, v91);
  v94 = *(v110 + 8);
  v94(v85, v93);
  sub_23B9D2D88(v92, v93, v91);
  return (v94)(v92, v93);
}

uint64_t sub_23BB377B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v50 = *(a1 + 16);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v52 = sub_23BBDA358();
  sub_23BBDD648();
  sub_23BBDB038();
  v53 = sub_23BBDA358();
  v57 = sub_23BBDD648();
  MEMORY[0x28223BE20](v57);
  v54 = &v44 - v2;
  v48 = sub_23BBDA988();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650);
  sub_23BBDA358();
  v3 = sub_23BBDD648();
  v4 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070]);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v78 = WitnessTable;
  v79 = v6;
  v7 = MEMORY[0x277CDFAD8];
  v8 = swift_getWitnessTable();
  v9 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650);
  v76 = v8;
  v77 = v9;
  v75 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v63 = v48;
  v64 = v3;
  v65 = v4;
  v66 = v10;
  v11 = type metadata accessor for SubscriptionStorePickerControlWrapper();
  MEMORY[0x28223BE20](v11);
  v48 = &v44 - v12;
  v13 = v51;
  v14 = *(v51 + 24);
  v15 = type metadata accessor for SubscriptionPickerVariadicContainer.SetSelectionEnvironmentModifier();
  v16 = v11;
  v46 = v11;
  v17 = swift_getWitnessTable();
  v47 = v17;
  v18 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
  v73 = v14;
  v74 = v18;
  v49 = v7;
  v72 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v70 = v19;
  v71 = v20;
  v69 = swift_getWitnessTable();
  v21 = v57;
  v22 = swift_getWitnessTable();
  v52 = v22;
  v50 = v15;
  v45 = swift_getWitnessTable();
  v63 = v16;
  v64 = v21;
  v65 = v15;
  v66 = v17;
  v67 = v22;
  v68 = v45;
  v23 = type metadata accessor for SubscriptionStorePickerFeatureContainer();
  v53 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1668);
  v26 = sub_23BBDA358();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v44 - v31;
  v33 = v48;
  v34 = v13;
  v35 = v55;
  sub_23BB38C74(v13, v48);
  v36 = v54;
  sub_23BB3913C(v34, v54);
  v37 = *(v35 + 16);
  v38 = *(v35 + 3);
  v60 = *v35;
  v61 = v37;
  v62 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  sub_23BBDBF88();
  sub_23BB398E8(v33, v36, &v63, v46, v57, v50, v25);
  LOBYTE(v63) = 1;
  v39 = swift_getWitnessTable();
  sub_23BB3F5FC();
  sub_23BBDB6F8();
  (*(v53 + 8))(v25, v23);
  v40 = sub_23B97B518(&qword_27E1A1678, &qword_27E1A1668);
  v58 = v39;
  v59 = v40;
  v41 = swift_getWitnessTable();
  sub_23B9D2D88(v29, v26, v41);
  v42 = *(v27 + 8);
  v42(v29, v26);
  sub_23B9D2D88(v32, v26, v41);
  return (v42)(v32, v26);
}

uint64_t sub_23BB37FAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = type metadata accessor for SubscriptionPickerProperties();
  sub_23B9A721C(v0 + *(v4 + 32), v3, qword_27E1A13B8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    return 0;
  }

  sub_23B9846E8(v3, qword_27E1A13B8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 3);
  v10 = *v0;
  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  sub_23BBDBF68();
  return v9[1];
}

uint64_t sub_23BB380E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  MEMORY[0x28223BE20](v1 - 8);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for SubscriptionPickerProperties();
  sub_23B9A721C(v0 + *(v15 + 32), v11, qword_27E1A13B8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v16 = qword_27E1A13B8;
    v17 = v11;
  }

  else
  {
    sub_23B9A71D0(v11, v14, &qword_27E198860);
    sub_23B9A721C(v0 + *(v15 + 28), v5, &qword_27E199760);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_23B9846E8(v14, &qword_27E198860);
      v16 = &qword_27E199760;
      v17 = v5;
    }

    else
    {
      sub_23BB3F958(v5, v8);
      v18 = v21;
      sub_23BB3F9B0(v8, v21);
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v6);
      sub_23BBDC0F8();
      sub_23BB3FA18(v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
      v16 = &qword_27E198860;
      v17 = v14;
    }
  }

  return sub_23B9846E8(v17, v16);
}

uint64_t sub_23BB38400()
{
  v1 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for SubscriptionPickerProperties();
  sub_23B9A721C(v0 + *(v13 + 32), v12, qword_27E1A13B8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    v15 = qword_27E1A13B8;
LABEL_5:
    sub_23B9846E8(v12, v15);
    return 0;
  }

  MEMORY[0x23EEB48C0](v14);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4))
  {
    sub_23B9846E8(v9, &qword_27E199760);
    v15 = &qword_27E198860;
    goto LABEL_5;
  }

  sub_23BB3F9B0(v9, v6);
  sub_23B9846E8(v9, &qword_27E199760);
  sub_23B9846E8(v12, &qword_27E198860);
  sub_23BB3F9B0(v6, v3);
  sub_23BB3FA18(v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v18 = &v3[*(type metadata accessor for Subscription() + 20)];
  if (v18[8] == 2)
  {
    v16 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  else
  {
    v16 = *v18;
  }

  sub_23BB3FA18(v3, type metadata accessor for SubscriptionStoreControlOption);
  return v16;
}

uint64_t sub_23BB3873C()
{
  sub_23BB38400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  return sub_23BBDBF78();
}

uint64_t sub_23BB387AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for SubscriptionPickerProperties();
  sub_23B9A721C(v0 + *(v5 + 32), v4, qword_27E1A13B8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  v7 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  sub_23B9846E8(v4, qword_27E1A13B8);
  if (EnumTagSinglePayload == 1)
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 3);
    v20 = *v0;
    v21 = v9;
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
    sub_23BBDBF68();
    v11 = v19;
    if (v19 == 255)
    {
      v7 = 0;
    }

    else
    {
      v12 = v17;
      v13 = v18;
      v14 = *(v1 + *(v5 + 24));
      sub_23B9BDCD4(v17, v18, v19 & 1);
      v7 = sub_23BB2F128(v14, sub_23BB3B360, 0, v12, v13, v11 & 1);
      sub_23BA0D94C(v12, v13, v11);
    }
  }

  return v7 & 1;
}

void sub_23BB38958(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    v9 = *(type metadata accessor for SubscriptionPickerVariadicContainer() + 48);
    v21[1] = a3;
    v10 = a3 + v9;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    if (*(v10 + 33) == 1)
    {
      sub_23BA0DE40(*v10, v12, v13, v14, v15);
      if (v12)
      {
LABEL_4:
        v24 = v11;
        v25 = v12;
        v26 = v13;
        v27 = v14;
        v28 = v15;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160);
        MEMORY[0x23EEB48C0](v22, v16);
        v17 = v22[0];
        v18 = v22[1];
        v19 = v23;

        sub_23BA0D94C(v13, v14, v15);
LABEL_7:
        sub_23BB38BB8();
        sub_23BA0D94C(v17, v18, v19);
        return;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v20 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23BB32398(v11, v12, v13, v14, v15, 0, sub_23BA0D8E4);
      (*(v6 + 8))(v8, v5);
      v11 = v24;
      v12 = v25;
      v13 = v26;
      v14 = v27;
      LOBYTE(v15) = v28;
      if (v25)
      {
        goto LABEL_4;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = -1;
    goto LABEL_7;
  }
}

uint64_t sub_23BB38BB8()
{
  sub_23BBD9CA8();
  sub_23B9A8E74();
  sub_23BBD9CC8();
  sub_23BBDA3B8();
}

uint64_t sub_23BB38C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650);
  sub_23BBDA358();
  v3 = sub_23BBDD648();
  MEMORY[0x28223BE20](v3);
  v32 = v30 - v4;
  v5 = sub_23BBDA988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BB40BDC(&qword_27E1A1658, MEMORY[0x277CE0070]);
  v30[1] = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v41 = WitnessTable;
  v42 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650);
  v39 = v12;
  v40 = v13;
  v38 = swift_getWitnessTable();
  v31 = v3;
  v14 = swift_getWitnessTable();
  v43[0] = v5;
  v43[1] = v3;
  v43[2] = v9;
  v43[3] = v14;
  v15 = type metadata accessor for SubscriptionStorePickerControlWrapper();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v30 - v20;
  v22 = type metadata accessor for SubscriptionPickerProperties();
  (*(v6 + 16))(v8, v2 + *(v22 + 20), v5);
  v23 = v32;
  v24 = v33;
  sub_23BB39A10(v33, v32);
  v25 = *(v2 + 16);
  v26 = *(v2 + 3);
  LOBYTE(v24) = *(v2 + *(v24 + 40));
  v35 = *v2;
  v36 = v25;
  v37 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  sub_23BBDBF88();
  sub_23BA092A4(v23, v24, v43, v31, v18);
  v27 = swift_getWitnessTable();
  sub_23B9D2D88(v18, v15, v27);
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_23B9D2D88(v21, v15, v27);
  return (v28)(v21, v15);
}

uint64_t sub_23BB3913C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v56 = sub_23BBDA358();
  v4 = sub_23BBDD648();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - v5;
  sub_23BBDB038();
  v57 = v4;
  v6 = sub_23BBDA358();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v47 - v9;
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_23BBDD648();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v47 - v17;
  v18 = v2 + *(a1 + 44);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    v47 = v10;
    v34 = v33;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v19, 0);
    (*(v11 + 8))(v13, v47);
    if ((v75 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v6);
    v32 = *(a1 + 24);
    v35 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
    v73 = v32;
    v74 = v35;
    WitnessTable = swift_getWitnessTable();
    v36 = swift_getWitnessTable();
    v37 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
    v70 = v36;
    v71 = v37;
    swift_getWitnessTable();
    goto LABEL_6;
  }

  if (v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = v48;
  sub_23BB3A648(a1, v48);
  v21 = sub_23BBDB388();
  v47 = *(a1 + 24);
  v22 = v47;
  v23 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
  v62 = v22;
  v63 = v23;
  v61 = swift_getWitnessTable();
  v24 = v57;
  v25 = swift_getWitnessTable();
  v26 = v52;
  sub_23BB2FA54(v21, 0, 1, v24, v25);
  (*(v50 + 8))(v20, v24);
  v27 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v59 = v25;
  v60 = v27;
  v28 = swift_getWitnessTable();
  v29 = v51;
  sub_23B9D2D88(v26, v6, v28);
  v30 = v49;
  v31 = *(v49 + 8);
  v31(v26, v6);
  sub_23B9D2D88(v29, v6, v28);
  v31(v29, v6);
  v32 = v47;
  (*(v30 + 32))(v15, v26, v6);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v6);
LABEL_6:
  v38 = v53;
  sub_23BB2F9F4();
  v39 = *(v54 + 8);
  v40 = v15;
  v41 = v55;
  v39(v40, v55);
  v42 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
  v68 = v32;
  v69 = v42;
  v67 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v44 = sub_23BB40BDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v65 = v43;
  v66 = v44;
  v64 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  sub_23B9D2D88(v38, v41, v45);
  return (v39)(v38, v41);
}

uint64_t sub_23BB398E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for SubscriptionStorePickerFeatureContainer();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t sub_23BB39A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = *(a1 + 16);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v61 = v4;
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_23BBDC078();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v57 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v74 = v5;
  v7 = sub_23BBDA358();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v57 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1650);
  v73 = v7;
  v9 = sub_23BBDA358();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v67 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - v12;
  MEMORY[0x28223BE20](v13);
  v65 = &v57 - v14;
  v15 = sub_23BBDA928();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23BBDD648();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v57 - v21;
  v22 = *(a1 + 44);
  v62 = v2;
  v23 = v2 + v22;
  v24 = *v23;
  if (*(v23 + 8) == 1)
  {
    if ((v24 & 1) == 0)
    {
LABEL_3:
      v25 = v69;
      __swift_storeEnumTagSinglePayload(v69, 1, 1, v9);
      v26 = swift_getWitnessTable();
      v27 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
      v87 = v26;
      v88 = v27;
      v28 = swift_getWitnessTable();
      v29 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650);
      v85 = v28;
      v86 = v29;
      swift_getWitnessTable();
      goto LABEL_8;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v30 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v24, 0);
    (*(v16 + 8))(v18, v15);
    if (v89 != 1)
    {
      goto LABEL_3;
    }
  }

  v31 = sub_23BBDC2A8();
  MEMORY[0x28223BE20](v31);
  v32 = *(a1 + 24);
  *(&v57 - 4) = v61;
  *(&v57 - 3) = v32;
  *(&v57 - 2) = v62;
  sub_23B9BE15C();
  v33 = v58;
  sub_23BBDC068();
  v34 = v74;
  v35 = swift_getWitnessTable();
  v36 = v63;
  sub_23BAB22C4();
  (*(v60 + 8))(v33, v34);
  if (qword_27E197640 != -1)
  {
    swift_once();
  }

  v37 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v78 = v35;
  v79 = v37;
  v38 = v73;
  v39 = swift_getWitnessTable();
  v40 = v64;
  sub_23BBDB708();
  (*(v66 + 8))(v36, v38);
  v41 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650);
  v76 = v39;
  v77 = v41;
  v42 = swift_getWitnessTable();
  v43 = v65;
  sub_23B9D2D88(v40, v9, v42);
  v44 = v68;
  v45 = *(v68 + 8);
  v45(v40, v9);
  v46 = v67;
  sub_23B9D2D88(v43, v9, v42);
  v45(v43, v9);
  v25 = v69;
  (*(v44 + 32))(v69, v46, v9);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v9);
LABEL_8:
  v47 = v71;
  sub_23BB2F9F4();
  v48 = *(v72 + 8);
  v49 = v25;
  v50 = v70;
  v48(v49, v70);
  v51 = swift_getWitnessTable();
  v52 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v83 = v51;
  v84 = v52;
  v53 = swift_getWitnessTable();
  v54 = sub_23B97B518(&qword_27E1A1660, &qword_27E1A1650);
  v81 = v53;
  v82 = v54;
  v80 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  sub_23B9D2D88(v47, v50, v55);
  return (v48)(v47, v50);
}

uint64_t sub_23BB3A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  sub_23BBDA358();
  v4 = sub_23BBDD648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for SubscriptionPickerVariadicContainer();
  sub_23BB3A648(v11, v7);
  v12 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
  v21[3] = a3;
  v21[4] = v12;
  v21[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v7, v4, WitnessTable);
  v14 = *(v5 + 8);
  v14(v7, v4);
  KeyPath = swift_getKeyPath();
  (*(v5 + 16))(v7, v10, v4);
  v19 = KeyPath;
  v20 = 0;
  v21[0] = v7;
  v21[1] = &v19;

  v18[0] = v4;
  v18[1] = &type metadata for PickerOptionFooterContent;
  v17[1] = WitnessTable;
  v17[2] = sub_23BB3F68C();
  sub_23BB6739C(v21, 2, v18);

  v14(v10, v4);
  j__swift_release(v19, v20);
  return (v14)(v7, v4);
}

uint64_t sub_23BB3A648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v44 = a1;
  v4 = *(a1 + 16);
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(255);
  v6 = sub_23BBDA358();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BBDD648();
  v46 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v39 - v21;
  v22 = type metadata accessor for SubscriptionPickerProperties();
  v23 = v3;
  sub_23B9A721C(v3 + *(v22 + 28), v13, &qword_27E199760);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23B9846E8(v13, &qword_27E199760);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v6);
    v24 = *(v44 + 24);
    v25 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
    v53 = v24;
    v54 = v25;
    swift_getWitnessTable();
  }

  else
  {
    sub_23BB3F958(v13, v16);
    v26 = v44;
    v27 = *(v23 + *(v44 + 36));
    v28 = v40;
    v27(v16);
    v24 = *(v26 + 24);
    sub_23BA44958(v4, v24);
    (*(v41 + 8))(v28, v4);
    sub_23BB3FA18(v16, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
    v29 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
    v48 = v24;
    v49 = v29;
    WitnessTable = swift_getWitnessTable();
    v31 = v42;
    sub_23B9D2D88(v8, v6, WitnessTable);
    v32 = v43;
    v33 = *(v43 + 8);
    v33(v8, v6);
    sub_23B9D2D88(v31, v6, WitnessTable);
    v33(v31, v6);
    (*(v32 + 32))(v19, v8, v6);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
  }

  v34 = v45;
  sub_23BB2F9F4();
  v35 = *(v46 + 8);
  v35(v19, v17);
  v36 = sub_23BB40BDC(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
  v51 = v24;
  v52 = v36;
  v50 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  sub_23B9D2D88(v34, v17, v37);
  return (v35)(v34, v17);
}

__n128 sub_23BB3AC20@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160);
  sub_23BBDC118();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_23BB3AC90@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1810);
  v1 = sub_23BBDA358();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  swift_getKeyPath();
  sub_23BB3AC20(&v17);
  v14 = v17;
  v15 = v18;
  v16 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  v22 = v17.n128_u64[0];
  sub_23BA6EA10(&v22);

  v20 = v18;
  v21 = v19;
  sub_23B9846E8(&v20, &qword_27E19B148);
  v9 = sub_23B97B518(&qword_27E1A1818, &qword_27E1A1810);
  v13[2] = WitnessTable;
  v13[3] = v9;
  v10 = swift_getWitnessTable();
  sub_23B9D2D88(v4, v1, v10);
  v11 = *(v2 + 8);
  v11(v4, v1);
  sub_23B9D2D88(v7, v1, v10);
  return (v11)(v7, v1);
}

double sub_23BB3AF24@<D0>(uint64_t a1@<X8>)
{
  sub_23BB3FA6C();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BB3AF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_23B9A721C(v4, v3, &qword_27E1988A8);
  return sub_23BB3AFD4();
}

uint64_t sub_23BB3B058()
{
  v0 = sub_23BBDA308();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDA6B8();
  v6 = sub_23BBDA2E8();
  (*(v2 + 8))(v5, v0);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_23BB3F77C();
  sub_23BBDA958();
  return v8[15];
}

uint64_t sub_23BB3B168()
{
  v1 = v0;
  v2 = type metadata accessor for SubscriptionPickerProperties();
  MEMORY[0x28223BE20](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  LOBYTE(v6) = *(v0 + 16);
  v8 = *(v0 + 24);
  v17 = *v0;
  v18 = v6;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  sub_23BBDBF68();
  v9 = v16;
  if (v16 == 255)
  {
    v13 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  }

  else
  {
    v10 = v15[1];
    v11 = v15[2];
    sub_23BB3F9B0(v1, v4);
    v12 = *&v4[*(v2 + 24)];

    sub_23BB3FA18(v4, type metadata accessor for SubscriptionPickerProperties);
    sub_23B9BDCD4(v10, v11, v9 & 1);
    sub_23BB2E7AC(v12, sub_23BB3B360, 0, v10, v11, v9 & 1, v7);

    sub_23BA0D94C(v10, v11, v9);
  }

  return sub_23BB3F6E0(v7, v1 + *(v2 + 28));
}

uint64_t sub_23BB3B360@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = sub_23BB420F0;
  a2[2] = 0;
  a2[3] = sub_23BB420E8;
  a2[4] = 0;
  a2[5] = sub_23BB420F4;
  a2[6] = 0;
}

uint64_t sub_23BB3B3D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_12_3();
  v8 = v4 + *(type metadata accessor for Subscription() + 20);
  v9 = *(v8 + 8);
  if (v9 != 2)
  {
    if ((a4 & 1) == 0)
    {
      return (*v8 == a2) & (a3 ^ v9 ^ 1);
    }

    return 0;
  }

  v10 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if ((a4 & 1) == 0)
  {

    return 0;
  }

  if (v10 == a2 && v11 == a3)
  {

    return 1;
  }

  else
  {
    v13 = sub_23BBDDA88();

    return v13 & 1;
  }
}

uint64_t sub_23BB3B4AC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = ~a4;
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if (!v8)
  {
    v18 = type metadata accessor for SubscriptionPickerProperties();
    sub_23BAC7914(*(a1 + *(v18 + 24)), v14);
    v19 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v19) == 1)
    {
      sub_23B9846E8(v14, &qword_27E199760);
      v15 = 0;
      v16 = 0;
      v17 = -1;
    }

    else
    {
      sub_23BB3F9B0(v14, v11);
      sub_23BB3FA18(v14, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
      v20 = &v11[*(type metadata accessor for Subscription() + 20)];
      v21 = v20[8];
      if (v21 == 2)
      {
        v15 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v16 = v22;
        sub_23BB3FA18(v11, type metadata accessor for SubscriptionStoreControlOption);
        v17 = 1;
      }

      else
      {
        v15 = *v20;
        v16 = v21 & 1;
        sub_23BB3FA18(v11, type metadata accessor for SubscriptionStoreControlOption);
        v17 = 0;
      }
    }
  }

  v23 = *(a1 + 16);
  v24 = *(a1 + 3);
  v28 = *a1;
  v29 = v23;
  v30 = v24;
  v26[1] = v15;
  v26[2] = v16;
  v27 = v17;
  sub_23BA0DC14(a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1698);
  return sub_23BBDBF78();
}

uint64_t sub_23BB3B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v32 = a2;
  v33 = a3;
  v34 = a6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0);
  v29 = type metadata accessor for SubscriptionStorePickerOption();
  sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0);
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288);
  v8 = sub_23BBDC1C8();
  v30 = sub_23B97B518(&qword_27E1A1620, &qword_27E1A1618);
  v40 = v31;
  v41 = &type metadata for SubscriptionStoreControlStyleConfiguration.Section.ID;
  v42 = v8;
  v43 = v30;
  v44 = sub_23BA94078();
  v9 = sub_23BBDC1A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v40 = a1;
  v16 = swift_allocObject();
  v17 = v28;
  v16[2] = a4;
  v16[3] = v17;
  v18 = v32;
  v19 = v33;
  v16[4] = a1;
  v16[5] = v18;
  v16[6] = v19;
  v20 = sub_23BB3EC4C();
  swift_bridgeObjectRetain_n();

  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = sub_23BB3ED00();
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v23 = swift_getWitnessTable();
  sub_23BB40BDC(&qword_27E1A1648, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section);
  sub_23BBDC198();
  v35 = v23;
  v24 = swift_getWitnessTable();
  sub_23B9D2D88(v12, v9, v24);
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_23B9D2D88(v15, v9, v24);
  return (v25)(v15, v9);
}

uint64_t sub_23BB3BAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v28 = a3;
  v27 = a2;
  v30 = a7;
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0);
  v11 = type metadata accessor for SubscriptionStorePickerOption();
  v12 = sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0);
  v45 = v10;
  v46 = MEMORY[0x277D837D0];
  v47 = v11;
  v48 = v12;
  v49 = MEMORY[0x277D837E0];
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288);
  v13 = sub_23BBDC1C8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  v35 = a5;
  v36 = a6;
  v37 = a1;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v33 = a1;
  v31 = a1;
  v20 = sub_23BB3EC4C();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = sub_23BB3ED00();
  sub_23BB3C3A8(sub_23BB3EDB4, v34, sub_23BB3EDC4, v32, sub_23BB3EDCC);
  v41 = v20;
  v42 = v24;
  v43 = v25;
  v21 = swift_getWitnessTable();
  sub_23B9D2D88(v16, v13, v21);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_23B9D2D88(v19, v13, v21);
  return (v22)(v19, v13);
}

uint64_t sub_23BB3BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v31 = a7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C6A0);
  v11 = type metadata accessor for SubscriptionStorePickerOption();
  v29 = sub_23B97B518(&qword_27E19C6A8, &qword_27E19C6A0);
  v33 = v30;
  v34 = MEMORY[0x277D837D0];
  v35 = v11;
  v36 = v29;
  v37 = MEMORY[0x277D837E0];
  v12 = sub_23BBDC1A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v33 = *(a1 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section(0) + 24));
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v20 = v27;
  v21 = v28;
  v19[4] = a2;
  v19[5] = v20;
  v19[6] = v21;

  WitnessTable = swift_getWitnessTable();
  sub_23BB40BDC(&qword_27E19C6B8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  sub_23BBDC198();
  v32 = WitnessTable;
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v15, v12, v23);
  v24 = *(v13 + 8);
  v24(v15, v12);
  sub_23B9D2D88(v18, v12, v23);
  return (v24)(v18, v12);
}

uint64_t sub_23BB3C118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SubscriptionStorePickerOption();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v20 - v15;
  sub_23BB3F9B0(a1, v9);
  SubscriptionStorePickerOption.init(_:label:)(v9, a2, a3, v13);
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v13, v10, WitnessTable);
  v18 = *(v11 + 8);

  v18(v13, v10);
  sub_23B9D2D88(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_23BB3C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  MEMORY[0x28223BE20](a1);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v8(v7);
  a5(v9);
  return sub_23BBDC1B8();
}

uint64_t sub_23BB3C50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v22 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation();
  v21 = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation();
  v8 = sub_23B9C7F48();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v41 = &type metadata for StoreKitViewsFeature;
  v42 = v22;
  v43 = v21;
  v44 = v8;
  v45 = WitnessTable;
  v46 = v19;
  v9 = type metadata accessor for FeatureView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v34 = v3;
  v35 = v2;
  v36 = v5;
  v37 = v4;
  v38 = v6;
  v39 = v7;
  v40 = v23;
  v26 = v3;
  v27 = v2;
  v28 = v5;
  v29 = v4;
  v30 = v6;
  v31 = v7;
  v32 = v23;
  sub_23BBC691C(0, sub_23BB40AF0, v33, sub_23BB40B08, v25, v22, v21);
  v16 = swift_getWitnessTable();
  sub_23B9D2D88(v12, v9, v16);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_23B9D2D88(v15, v9, v16);
  return (v17)(v15, v9);
}

uint64_t sub_23BB3C7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v46 = a6;
  v55 = a7;
  v54 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v53 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v20;
  v56 = v21;
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v25 = v24;
  v60 = v26;
  v61 = v27;
  v28 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation();
  v51 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v47 = &v44 - v33;
  v48 = a2;
  (*(v17 + 16))(v20, a1, a2, v32);
  v56 = a2;
  v57 = a3;
  v45 = a3;
  v58 = a4;
  v59 = v25;
  v60 = a5;
  v61 = v46;
  v34 = type metadata accessor for SubscriptionStorePickerFeatureContainer();
  v35 = v50;
  (*(v52 + 16))(v50, a1 + *(v34 + 68), a3);
  v36 = a1 + *(v34 + 72);
  v37 = v53;
  (*(v54 + 16))(v53, v36, a4);
  v38 = sub_23BB3C4E8();
  sub_23BB3CB78(v49, v35, v37, v38, v39 & 1, v48, v45, a4, v30);
  WitnessTable = swift_getWitnessTable();
  v41 = v47;
  sub_23B9D2D88(v30, v28, WitnessTable);
  v42 = *(v51 + 8);
  v42(v30, v28);
  sub_23B9D2D88(v41, v28, WitnessTable);
  return (v42)(v41, v28);
}

uint64_t sub_23BB3CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v16 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation();
  (*(*(a7 - 8) + 32))(a9 + v16[17], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v16[18], a3, a8);
  v17 = a9 + v16[19];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  v18 = a9 + v16[20];
  result = swift_getKeyPath();
  *v18 = result;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_23BB3CCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v44 = a6;
  v46 = a1;
  v49 = a7;
  v48 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v47 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v16;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  v41[0] = v19;
  v41[1] = v20;
  v21 = v20;
  v54 = v22;
  v55 = v23;
  v24 = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation();
  v45 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v41 - v29;
  v31 = *(v13 + 16);
  v32 = v16;
  v33 = v46;
  v42 = a2;
  v31(v32, v46, a2, v28);
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = v21;
  v54 = a5;
  v55 = v44;
  v34 = type metadata accessor for SubscriptionStorePickerFeatureContainer();
  v35 = v47;
  (*(v48 + 16))(v47, v33 + *(v34 + 68), a3);
  v36 = sub_23BB3C4E8();
  sub_23BB3CFE4(v43, v35, v36, v37 & 1, v42, a3, v26);
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v26, v24, WitnessTable);
  v39 = *(v45 + 8);
  v39(v26, v24);
  sub_23B9D2D88(v30, v24, WitnessTable);
  return (v39)(v30, v24);
}

uint64_t sub_23BB3CFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v12 = type metadata accessor for SubscriptionStorePickerFeatureContainer.TraitImplementation();
  result = (*(*(a6 - 8) + 32))(a7 + *(v12 + 68), a2, a6);
  v14 = a7 + *(v12 + 72);
  *v14 = a3;
  *(v14 + 8) = a4 & 1;
  return result;
}

uint64_t sub_23BB3D0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  *&v30 = a1 + 40;
  v34 = *(a1 + 16);
  sub_23BBDD648();
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_23BBDC078();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v22 - v5;
  v6 = *(a1 + 32);
  sub_23BBDA358();
  v7 = sub_23BBDD648();
  v33 = *(a1 + 48);
  v47 = v33;
  v29 = MEMORY[0x277CDFAD8];
  v46 = swift_getWitnessTable();
  v23 = v7;
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for MagicPocketSetterModifier();
  v8 = sub_23BBDA358();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  *&v14 = v6;
  *(&v14 + 1) = *v30;
  v30 = v14;
  v40 = v34;
  v41 = v14;
  v42 = v33;
  v43 = v2;
  v15 = v2;
  sub_23B9BE15C();
  v16 = v26;
  sub_23BBDC068();
  v36 = v34;
  v37 = v30;
  v38 = v33;
  v39 = v15;
  v17 = swift_getWitnessTable();
  sub_23BBC5940(sub_23BB41A28, v35, v4, v23, v17);
  (*(v31 + 8))(v16, v4);
  v18 = swift_getWitnessTable();
  v44 = v17;
  v45 = v18;
  v19 = swift_getWitnessTable();
  sub_23B9D2D88(v10, v8, v19);
  v20 = *(v28 + 8);
  v20(v10, v8);
  sub_23B9D2D88(v13, v8, v19);
  return (v20)(v13, v8);
}

uint64_t sub_23BB3D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v52 = a8;
  v45 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = &v42 - v16;
  v17 = sub_23BBDD648();
  v48 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v42 - v21;
  v22 = *(a2 - 8);
  MEMORY[0x28223BE20](v23);
  v50 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v53 = &v42 - v26;
  sub_23B9D2D88(a1, a2, a5);
  v27 = a2;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v51 = a5;
  v67 = a6;
  v68 = v47;
  v28 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation();
  v29 = (a1 + *(v28 + 76));
  v47 = *v29;
  v46 = *(v29 + 8);
  sub_23B9B6E40();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  LOBYTE(a4) = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(&v60, &v63);
  sub_23B97B104(&v60);
  sub_23B97B104(&v63);
  if (a4)
  {
    v30 = a1 + *(v28 + 68);
    v31 = v43;
    v32 = a6;
    sub_23B9D2D88(v30, a3, a6);
    v33 = v44;
    sub_23B9D2D88(v31, a3, a6);
    v34 = v45;
    (*(v45 + 8))(v31, a3);
    (*(v34 + 32))(v19, v33, a3);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v32 = a6;
  }

  __swift_storeEnumTagSinglePayload(v19, v35, 1, a3);
  v36 = v49;
  sub_23BB2F9F4();
  v37 = v48;
  v38 = *(v48 + 8);
  v38(v19, v17);
  v39 = v50;
  (*(v22 + 16))(v50, v53, v27);
  v58 = v47;
  v59 = v46;
  v63 = v39;
  v64 = &v58;
  (*(v37 + 16))(v19, v36, v17);
  v65 = v19;
  *&v60 = v27;
  *(&v60 + 1) = MEMORY[0x277CE1180];
  *&v61 = v17;
  v55 = v51;
  v56 = MEMORY[0x277CE1170];
  v54 = v32;
  WitnessTable = swift_getWitnessTable();
  sub_23BB6739C(&v63, 3, &v60);
  v38(v36, v17);
  v40 = *(v22 + 8);
  v40(v53, v27);
  v38(v19, v17);
  return (v40)(v39, v27);
}

uint64_t sub_23BB3DA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a8;
  v42 = a2;
  v14 = sub_23BBDA358();
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v37 - v18;
  v19 = sub_23BBDD648();
  v40 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v39 = &v37 - v23;
  v50[0] = v42;
  v50[1] = a3;
  v50[2] = a4;
  v51 = a5;
  v42 = a6;
  v52 = a6;
  v53 = a7;
  v24 = a7;
  v25 = type metadata accessor for SubscriptionStorePickerFeatureContainer.PreferenceImplementation();
  sub_23B9B6E40();
  if ((v51 - 1) > 1)
  {
    sub_23B9C9290(v50);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v14);
    v48 = v42;
    v49 = v24;
    v28 = v24;
    swift_getWitnessTable();
  }

  else
  {
    v26 = a4;
    v27 = v42;
    MEMORY[0x23EEB43C0](a1 + *(v25 + 72), a3, v26, v42);
    v43 = v27;
    v44 = v24;
    v28 = v24;
    WitnessTable = swift_getWitnessTable();
    v30 = v37;
    sub_23B9D2D88(v16, v14, WitnessTable);
    v31 = v38;
    v32 = *(v38 + 8);
    v32(v16, v14);
    sub_23B9D2D88(v30, v14, WitnessTable);
    v32(v30, v14);
    (*(v31 + 32))(v21, v16, v14);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v14);
  }

  v33 = v39;
  sub_23BB2F9F4();
  v34 = *(v40 + 8);
  v34(v21, v19);
  v46 = v42;
  v47 = v28;
  v45 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  sub_23B9D2D88(v33, v19, v35);
  return (v34)(v33, v19);
}

uint64_t sub_23BB3DE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1930);
  v39 = *(a1 + 24);
  v4 = v39;
  v43 = sub_23BBDA358();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v34 - v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  v10 = sub_23BBDC078();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = sub_23BBDA358();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v47 = &v34 - v17;
  v38 = v2;
  *&v18 = *(a1 + 32);
  *(&v18 + 1) = v9;
  *&v19 = v8;
  *(&v19 + 1) = v4;
  v49 = v19;
  v50 = v18;
  v46 = *(a1 + 48);
  v51 = v46;
  v52 = v2;
  sub_23B9BE15C();
  sub_23BBDC068();
  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = 0;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x23EEB43C0](&KeyPath, v10, &type metadata for SubscriptionPickerContentContainerValuesModifier, WitnessTable);

  v40[1](v12, v10);
  v21 = sub_23BB41A74();
  v60 = WitnessTable;
  v61 = v21;
  v35 = v13;
  v37 = swift_getWitnessTable();
  sub_23B9D2D88(v15, v13, v37);
  v22 = *(v48 + 8);
  v36 = v48 + 8;
  v40 = v22;
  (v22)(v15, v13);
  v23 = v41;
  sub_23BB3E46C(1, 0, v39, v46);
  v24 = sub_23B97B518(&qword_27E1A1940, &qword_27E1A1930);
  v58 = v46;
  v59 = v24;
  v25 = v43;
  v26 = swift_getWitnessTable();
  v27 = v42;
  sub_23B9D2D88(v23, v25, v26);
  v28 = v44;
  v29 = *(v44 + 8);
  v29(v23, v25);
  v30 = v47;
  v31 = v35;
  (*(v48 + 16))(v15, v47, v35);
  KeyPath = v15;
  (*(v28 + 16))(v23, v27, v25);
  v57 = v23;
  v55[0] = v31;
  v55[1] = v25;
  v53 = v37;
  v54 = v26;
  sub_23BB6739C(&KeyPath, 2, v55);
  v29(v27, v25);
  v32 = v40;
  (v40)(v30, v31);
  v29(v23, v25);
  return (v32)(v15, v31);
}

uint64_t sub_23BB3E38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88(v8, v11, v12);
  sub_23B9D2D88(v10, a2, a5);
  return (*(v7 + 8))(v10, a2);
}

uint64_t sub_23BB3E46C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1 & 1;
  v10[1] = a2;
  sub_23BB1106C(KeyPath, v10, a3, a4);
}

uint64_t sub_23BB3E4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v17[15];
  }

  KeyPath = swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1948);
  (*(*(v14 - 8) + 16))(a4, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1950);
  v16 = a4 + *(result + 36);
  *v16 = KeyPath;
  *(v16 + 8) = 0;
  *(v16 + 9) = a2 & 1;
  return result;
}

uint64_t sub_23BB3E72C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_23BBDDBB8();
  a4(v8, v6);
  return sub_23BBDDBF8();
}

double sub_23BB3E81C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_23BB3E840@<X0>(void *a1@<X8>)
{
  if (qword_27E197810 != -1)
  {
    swift_once();
  }

  *a1 = qword_27E1A13B0;
}

uint64_t sub_23BB3E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB40B28();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB3E910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;

  return sub_23B9BDCD4(v7, v8, v9);
}

uint64_t sub_23BB3E988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB365A0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB3E9EC()
{
  sub_23BB3F77C();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB3EA68(uint64_t result)
{
  v1 = result;
  if (qword_27E1977E0 != -1)
  {
    result = swift_once();
  }

  if (byte_27E1A04D0 != 1)
  {
    if (byte_27E1A04D0 != 3 || (storekit_dyld_fall_2024_os_versions(), result = dyld_program_sdk_at_least(), (result & 1) == 0))
    {
      *v1 = 0;
    }
  }

  return result;
}

uint64_t sub_23BB3EAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1608);
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1610) + 36));
  *v10 = sub_23BB3EC04;
  v10[1] = v8;
}

uint64_t sub_23BB3EBCC()
{

  return swift_deallocObject();
}

unint64_t sub_23BB3EC4C()
{
  result = qword_27E1A1628;
  if (!qword_27E1A1628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E280);
    sub_23BB40BDC(&qword_27E1A1630, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Header);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1628);
  }

  return result;
}

unint64_t sub_23BB3ED00()
{
  result = qword_27E1A1638;
  if (!qword_27E1A1638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E288);
    sub_23BB40BDC(&qword_27E1A1640, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Section.Footer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1638);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  return swift_deallocObject();
}

unint64_t sub_23BB3EE74()
{
  result = qword_27E1A1688;
  if (!qword_27E1A1688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148);
    sub_23BB3EEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1688);
  }

  return result;
}

unint64_t sub_23BB3EEF8()
{
  result = qword_27E1A1690;
  if (!qword_27E1A1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A1690);
  }

  return result;
}

uint64_t sub_23BB3EF58()
{
  v0 = type metadata accessor for SubscriptionPickerVariadicContainer();
  OUTLINED_FUNCTION_13_0(v0);
  return sub_23BB380E0();
}

uint64_t objectdestroy_62Tm()
{
  type metadata accessor for SubscriptionPickerVariadicContainer();
  OUTLINED_FUNCTION_19_0();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + 16);
  if (v5 != 255)
  {
    sub_23B979A38(*v4, *(v4 + 8), v5 & 1);
  }

  v6 = type metadata accessor for SubscriptionPickerProperties();
  v7 = v6[5];
  sub_23BBDA988();
  OUTLINED_FUNCTION_12_1();
  (*(v8 + 8))(v4 + v7);

  v9 = v4 + v6[7];
  v10 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v11 + 8))(v9);
    v12 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
    v13 = sub_23BBDCC88();
    if (!OUTLINED_FUNCTION_38_4(v13))
    {
      OUTLINED_FUNCTION_1_4();
      (*(v14 + 8))(v9 + v12, v2);
    }

    if (*(v9 + *(v10 + 20)))
    {
    }
  }

  v15 = v4 + v6[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {

    v17 = v15 + *(v16 + 32);
    if (!__swift_getEnumTagSinglePayload(v17, 1, v10))
    {
      sub_23BBDCDB8();
      OUTLINED_FUNCTION_12_1();
      (*(v18 + 8))(v17);
      v19 = *(type metadata accessor for SubscriptionStoreControlOption(0) + 20);
      v20 = sub_23BBDCC88();
      if (!OUTLINED_FUNCTION_38_4(v20))
      {
        OUTLINED_FUNCTION_1_4();
        (*(v21 + 8))(v17 + v19, v16);
      }

      if (*(v17 + *(v10 + 20)))
      {
      }
    }
  }

  sub_23B97B450(*(v4 + *(v0 + 44)), *(v4 + *(v0 + 44) + 8));
  OUTLINED_FUNCTION_11_23(v4 + *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_23BB3F2E0()
{
  v0 = type metadata accessor for SubscriptionPickerVariadicContainer();
  OUTLINED_FUNCTION_13_0(v0);

  return sub_23BB3873C();
}

void sub_23BB3F360(uint64_t a1, _BYTE *a2)
{
  v5 = type metadata accessor for SubscriptionPickerVariadicContainer();
  OUTLINED_FUNCTION_13_0(v5);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_23BB38958(a1, a2, v7);
}

uint64_t sub_23BB3F480(uint64_t result)
{
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BB3F49C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_23B9A721C(a1, &v10 - v4, &qword_27E199760);
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_9();
    return sub_23BB3F958(v8, v9);
  }

  return result;
}

uint64_t sub_23BB3F578(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23BB3F5FC()
{
  result = qword_27E1A16B0;
  if (!qword_27E1A16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16B0);
  }

  return result;
}

uint64_t sub_23BB3F65C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BA21030();
  *a1 = result;
  return result;
}

unint64_t sub_23BB3F68C()
{
  result = qword_27E1A16B8;
  if (!qword_27E1A16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16B8);
  }

  return result;
}

uint64_t sub_23BB3F6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB3F750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB3B058();
  *a1 = result;
  return result;
}

unint64_t sub_23BB3F77C()
{
  result = qword_27E1A16C8;
  if (!qword_27E1A16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16C8);
  }

  return result;
}

uint64_t sub_23BB3F7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A13B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB3F848()
{

  return swift_deallocObject();
}

unint64_t sub_23BB3F8A8()
{
  result = qword_27E1A16D8;
  if (!qword_27E1A16D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A16D0);
    sub_23B97B518(&qword_27E19E3E0, &qword_27E19E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16D8);
  }

  return result;
}

uint64_t sub_23BB3F958(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BB3F9B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BB3FA18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BB3FA6C()
{
  result = qword_27E1A16E0;
  if (!qword_27E1A16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A16E0);
  }

  return result;
}

unint64_t sub_23BB3FAC0()
{
  result = qword_27E1A16E8[0];
  if (!qword_27E1A16E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A16E8);
  }

  return result;
}

uint64_t sub_23BB3FB54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI12SubscriptionV2IDOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BB3FBB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BB3FC58(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(*(v6 - 8) + 84);
  v8 = a3[3];
  v9 = a3[4];
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(*(v6 - 8) + 64) + v15;
  v20 = a2 - v18;
  if (a2 <= v18)
  {
LABEL_28:
    if (v7 != v18)
    {
      a1 = ((a1 + v19) & ~v15);
      if (v11 == v18)
      {
        v7 = v11;
        v6 = v8;
      }

      else
      {
        a1 = ((a1 + v16 + v17) & ~v17);
        v7 = v14;
        v6 = v9;
      }
    }

    return __swift_getEnumTagSinglePayload(a1, v7, v6);
  }

  v21 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_27:
      if (v18)
      {
        goto LABEL_28;
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_27;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v18 + (v27 | v25) + 1;
}

void sub_23BB3FECC(char *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(*(v7 - 8) + 84);
  v9 = a4[3];
  v10 = a4[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  if (v12 <= v8)
  {
    v14 = *(*(v7 - 8) + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v13 + 84);
  if (v15 > v14)
  {
    v14 = *(v13 + 84);
  }

  v16 = *(v11 + 80);
  v17 = *(*(v7 - 8) + 64) + v16;
  v18 = *(*(v9 - 8) + 64);
  v19 = *(*(v10 - 8) + 80);
  v20 = (v18 + v19 + (v17 & ~v16)) & ~v19;
  v21 = *(v13 + 64);
  v22 = v20 + v21;
  v23 = 8 * (v20 + v21);
  v24 = a3 >= v14;
  v25 = a3 - v14;
  if (v25 != 0 && v24)
  {
    if (v22 <= 3)
    {
      v29 = ((v25 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v14 < a2)
  {
    v27 = ~v14 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> v23) + 1;
      if (v22)
      {
        v31 = v27 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v22 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        a1[v22] = v28;
        return;
      case 2:
        *&a1[v22] = v28;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v28;
        return;
      default:
        return;
    }
  }

  switch(v26)
  {
    case 1:
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x23BB401DCLL);
    case 4:
      *&a1[v22] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v8 == v14)
        {
          v32 = a1;
        }

        else
        {
          v32 = &a1[v17] & ~v16;
          if (v12 == v14)
          {
            v8 = v12;
            v7 = v9;
          }

          else
          {
            v32 = (v32 + v18 + v19) & ~v19;
            v8 = v15;
            v7 = v10;
          }
        }

        __swift_storeEnumTagSinglePayload(v32, a2, v8, v7);
      }

      return;
  }
}

unint64_t sub_23BB40208()
{
  result = qword_27E1A17F0;
  if (!qword_27E1A17F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A1610);
    sub_23B97B518(&qword_27E1A17F8, &qword_27E1A1608);
    sub_23B97B518(&qword_27E1A1800, &qword_27E1A1808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A17F0);
  }

  return result;
}