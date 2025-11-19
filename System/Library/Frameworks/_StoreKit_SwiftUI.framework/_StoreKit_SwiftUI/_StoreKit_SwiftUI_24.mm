uint64_t sub_23BBB77D8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_19();
  v7 = v6;
  sub_23B979510();
  if (v16)
  {
    sub_23B98473C(&v15, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  *&v14[7] = v11;
  *&v14[23] = v12;
  *&v14[39] = v13;
  sub_23B979510();
  v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B430) + 36);
  *v8 = v4;
  *(v8 + 8) = v3;
  *(v8 + 16) = a3 & 1;
  v9 = *&v14[16];
  *(v8 + 17) = *v14;
  *(v8 + 33) = v9;
  *(v8 + 48) = *&v14[31];
}

uint64_t sub_23BBB78E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_23B979510();
  if (v16)
  {
    sub_23B98473C(&v15, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  *&v14[7] = v11;
  *&v14[23] = v12;
  *&v14[39] = v13;
  sub_23BBBCBD8();
  v8 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4070) + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  v9 = *&v14[16];
  *(v8 + 17) = *v14;
  *(v8 + 33) = v9;
  *(v8 + 48) = *&v14[31];
}

uint64_t sub_23BBB79DC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB1C5CC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_23BBB7A30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A40B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for ProductViewPurchaseEvent();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB669D8(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_23B979910(v2, &qword_27E1A40B8);
  }

  sub_23BBBD57C();
  if (qword_27E197798 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v7, qword_27E1BFD50);
  sub_23BB1410C();
  return sub_23BBBD638(v5, type metadata accessor for ProductViewPurchaseEvent);
}

uint64_t sub_23BBB7BBC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB670CC();
  *v0 = result;
  return result;
}

uint64_t sub_23BBB7C24()
{
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8);
  sub_23BBDBF58();
  v0 = OUTLINED_FUNCTION_35_0();
  return sub_23B979910(v0, v1);
}

uint64_t sub_23BBB7CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  sub_23B979510();
  sub_23BBDBF58();
  return sub_23B979910(a1, a4);
}

uint64_t sub_23BBB7D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23BBB8064(v2, v9, *(a1 + 24));
  v32 = v15;
  v33 = v14;
  v16 = type metadata accessor for ProductViewStyleConfiguration();
  v17 = v16[6];
  v18 = sub_23BBDCDB8();
  (*(*(v18 - 8) + 16))(a2 + v17, v3, v18);
  type metadata accessor for Product.TaskState(0);
  swift_storeEnumTagMultiPayload();
  v19 = v3 + *(a1 + 100);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v35[0]) = v20;
  v35[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF68();
  v31 = v34;
  (*(v10 + 16))(v13, v3 + *(a1 + 36), v9);
  result = sub_23BBBF5E0(v13, v9, v35);
  v23 = *(v3 + *(a1 + 40));
  v24 = v35[0];
  v25 = v3 + *(a1 + 64);
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v26, 0);
    result = (*(v29 + 8))(v8, v30);
    LOBYTE(v26) = v34;
  }

  v28 = v32;
  *a2 = v33;
  *(a2 + 8) = v28;
  *(a2 + v16[8]) = v31;
  *(a2 + v16[7]) = v24;
  *(a2 + 16) = v23;
  *(a2 + v16[9]) = v26;
  return result;
}

uint64_t (*sub_23BBB8064(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for StaticProductView();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return sub_23BBBCFE8;
}

uint64_t sub_23BBB81C8(uint64_t a1)
{
  v2 = v1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v2 + *(v4 + 96));
  v11 = *v10;
  v12 = v10[1];
  *&v22[0] = *v10;
  *(&v22[0] + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF68();
  if (v21)
  {
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8);
  sub_23BBDBF78();
  sub_23B979910(v22, &qword_27E19A9E8);
  sub_23BBDD328();
  v14 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_23BBDD308();
  v15 = sub_23BBDD2F8();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  *(v17 + 32) = *(a1 + 16);
  (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23BB5D2B8();
  *&v22[0] = v11;
  *(&v22[0] + 1) = v12;
  v21 = v19;
  return sub_23BBDBF78();
}

uint64_t sub_23BBB8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v140 = a1;
  v3 = a1 - 8;
  v133 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v139 = v4;
  v131 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppStoreButtonStyle(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for ProductViewStyleConfiguration();
  v11 = OUTLINED_FUNCTION_13_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4050);
  OUTLINED_FUNCTION_7();
  v120 = v22;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_2();
  v119 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4058);
  OUTLINED_FUNCTION_7();
  v134 = v26;
  v135 = v25;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_2();
  v124 = v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4060);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_2();
  v136 = v30;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4068);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_2();
  v137 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4070);
  OUTLINED_FUNCTION_13_0(v33);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_2();
  v138 = v35;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4078);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22_2();
  v127 = v37;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4080);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_2();
  v129 = v39;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4088);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_2();
  v130 = v41;
  v42 = *(v3 + 52);
  v141 = v2;
  v43 = v2 + v42;
  v45 = *v43;
  v44 = *(v43 + 8);
  v46 = *(v43 + 32);
  if (*(v43 + 40) == 1)
  {
  }

  else
  {
    v118 = v15;
    v48 = *(v43 + 16);
    v47 = *(v43 + 24);
    v117 = v48;
    v116 = v47;

    sub_23BBDD5A8();
    v49 = v14;
    v50 = sub_23BBDB338();
    OUTLINED_FUNCTION_197();

    v14 = v49;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9AD3D4(v45, v44, v117, v116, v46, 0);
    (*(v17 + 8))(v21, v118);
    v45 = v144;
  }

  sub_23BBB7D6C(v140, v14);
  v51 = v45(v14);

  sub_23BBBD638(v14, type metadata accessor for ProductViewStyleConfiguration);
  *&v144 = v51;
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v52 = v5[5];
  *(v9 + v52) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
  swift_storeEnumTagMultiPayload();
  v53 = v5[6];
  *(v9 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  v54 = v5[7];
  *(v9 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730);
  swift_storeEnumTagMultiPayload();
  *(v9 + v5[8]) = 0;
  v55 = sub_23BBBDCD8(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle);
  v56 = v119;
  sub_23BBDB988();
  sub_23BBBD638(v9, type metadata accessor for InAppStoreButtonStyle);

  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v57 = v5[5];
  *(v9 + v57) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v58 = v5[6];
  *(v9 + v58) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v59 = v5[7];
  *(v9 + v59) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v9 + v5[8]) = 0;
  *&v144 = MEMORY[0x277CE11C8];
  *(&v144 + 1) = v5;
  v145 = MEMORY[0x277CE11C0];
  v146 = v55;
  swift_getOpaqueTypeConformance2();
  v60 = v124;
  v61 = v121;
  sub_23BBDBA48();
  v62 = OUTLINED_FUNCTION_0_14();
  sub_23BBBD638(v62, v63);
  (*(v120 + 8))(v56, v61);
  v144 = *(v141 + *(v140 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF68();
  v64 = v142;
  if (v142)
  {
  }

  v65 = v64 != 0;
  KeyPath = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  v68 = v136;
  (*(v134 + 32))(v136, v60, v135);
  v69 = (v68 + *(v123 + 36));
  *v69 = KeyPath;
  v69[1] = sub_23B989418;
  v69[2] = v67;
  v70 = *(v122 + 36);
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  v71 = v137;
  v72 = &v137[v70];
  type metadata accessor for CanMakePaymentsCache(0);
  sub_23BBBDCD8(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache);

  *v72 = sub_23BBDA0E8();
  v72[1] = v73;
  v74 = *(type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) + 20);
  *(v72 + v74) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  v75 = v140;
  v76 = (v141 + *(v140 + 96));
  v77 = v141;
  v78 = *v76;
  v79 = *(v76 + 1);
  LOBYTE(v142) = v78;
  v143 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF88();
  LOBYTE(v72) = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8);
  sub_23BBDBF68();
  v80 = OUTLINED_FUNCTION_35_0();
  sub_23BBB78E0(v80, v81, v72, v82);

  sub_23B979910(&v144, &qword_27E19A9E8);
  sub_23BBBC988(v71);
  v83 = v77;
  v84 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v86 = v85;
  v87 = v133;
  v88 = *(v133 + 16);
  v136 = v133 + 16;
  v137 = v88;
  v89 = v131;
  (v88)(v131, v83, v75);
  v135 = *(v87 + 80);
  v90 = swift_allocObject();
  v92 = *(v75 + 16);
  v134 = *(v75 + 24);
  v91 = v134;
  *(v90 + 16) = v92;
  *(v90 + 24) = v91;
  v124 = v92;
  v133 = *(v87 + 32);
  v93 = OUTLINED_FUNCTION_26_13(v90);
  v94(v93);
  v95 = v127 + *(v125 + 36);
  sub_23BBDD348();
  v96 = type metadata accessor for CurrentEntitlementViewModifier();
  v97 = (v95 + *(v96 + 20));
  *v97 = v84;
  v97[1] = v86;
  v98 = (v95 + *(v96 + 24));
  *v98 = &unk_23BC05758;
  v98[1] = v90;
  sub_23B979688();
  v99 = swift_getKeyPath();
  v100 = (v129 + *(v126 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CE8);
  v101 = v141;
  MEMORY[0x23EEB50B0]();
  *v100 = v99;
  sub_23B979688();
  (v137)(v89, v101, v75);
  v102 = OUTLINED_FUNCTION_47_6();
  v103 = v134;
  *(v102 + 16) = v92;
  *(v102 + 24) = v103;
  v104 = OUTLINED_FUNCTION_26_13(v102);
  v105(v104);
  v106 = v130;
  sub_23B979688();
  v107 = (v106 + *(v128 + 36));
  *v107 = sub_23BBBCAE4;
  v107[1] = v102;
  v107[2] = 0;
  v107[3] = 0;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A40A0);
  v109 = (v132 + *(v108 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A40A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4090);
  v110 = v141;
  sub_23BBDBF68();
  (v137)(v89, v110, v75);
  v111 = OUTLINED_FUNCTION_47_6();
  v112 = v134;
  *(v111 + 16) = v124;
  *(v111 + 24) = v112;
  v113 = OUTLINED_FUNCTION_26_13(v111);
  v114(v113);
  sub_23BBDD328();
  *v109 = &unk_23BC057B0;
  v109[1] = v111;
  return sub_23B979688();
}

uint64_t sub_23BBB91C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_23BBDC758();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_23BBDD308();
  v4[15] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BBB9340, v7, v6);
}

uint64_t sub_23BBB9340()
{
  OUTLINED_FUNCTION_15_5();
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);

  EntitlementTaskState<A>.transaction.getter();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8);
  v4 = __swift_getEnumTagSinglePayload(v1, 1, v3) != 1;
  sub_23B979910(v1, qword_27E19A5E0);
  v5 = (v2 + *(type metadata accessor for StaticProductView() + 100));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 128) = v4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF78();
  EntitlementTaskState<A>.transaction.getter();
  v8 = OUTLINED_FUNCTION_156();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, v9, v3);
  v11 = *(v0 + 104);
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(*(v0 + 104), qword_27E19A5E0);
    sub_23BBD9828();
    v12 = OUTLINED_FUNCTION_156();
    __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  }

  else
  {
    sub_23BBDC798();
    sub_23B979910(v11, &qword_27E19A5D8);
    sub_23BBDC6C8();
    v15 = OUTLINED_FUNCTION_40_1();
    v16(v15);
  }

  v17 = *(v0 + 96);
  OUTLINED_FUNCTION_40_1();
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4090);
  sub_23BBDBF78();
  sub_23B979910(v17, &qword_27E198900);

  OUTLINED_FUNCTION_1_16();

  return v18();
}

uint64_t sub_23BBB95A8(uint64_t a1)
{
  v2 = sub_23BBDA928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for StaticProductView() + 52));
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
    result = (*(v3 + 8))(v5, v2);
    v7 = v11[1];
  }

  if (v7)
  {
    sub_23BB66648();
  }

  return result;
}

uint64_t sub_23BBB9720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_23BBDD888();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_23BBDD878();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  v3[19] = swift_task_alloc();
  v6 = sub_23BBD9828();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_23BBDD308();
  v3[24] = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();
  v3[25] = v8;
  v3[26] = v7;

  return MEMORY[0x2822009F8](sub_23BBB9920, v8, v7);
}

uint64_t sub_23BBB9920()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = type metadata accessor for StaticProductView();
  *(v0 + 216) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4090);
  sub_23BBDBF68();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 152);

    sub_23B979910(v4, &qword_27E198900);
LABEL_8:
    OUTLINED_FUNCTION_19_31();

    OUTLINED_FUNCTION_1_16();

    return v25();
  }

  v5 = *(v0 + 168);
  (*(v5 + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
  sub_23BBD9808();
  sub_23BBD97F8();
  v7 = v6;
  v8 = *(v5 + 8);
  *(v0 + 224) = v8;
  *(v0 + 232) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = OUTLINED_FUNCTION_31_1();
  v8(v9);
  v10 = *(v0 + 160);
  if (v7 <= 0.0)
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 72);

    v22 = (v21 + *(v3 + 100));
    v23 = *v22;
    v24 = *(v22 + 1);
    *(v0 + 40) = v23;
    *(v0 + 48) = v24;
    *(v0 + 33) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
    sub_23BBDBF78();
    (v8)(v20, v10);
    goto LABEL_8;
  }

  v11 = *(v0 + 128);
  sub_23BBDD858();
  sub_23BBD9808();
  sub_23BBD97F8();
  v12 = OUTLINED_FUNCTION_35_0();
  v8(v12);
  sub_23BBDDC18();
  sub_23BBDD868();
  *(v0 + 240) = *(v11 + 8);
  *(v0 + 248) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = OUTLINED_FUNCTION_40_1();
  v14(v13);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_23BBDDB18();
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  v16 = sub_23BBBDCD8(&qword_27E1A2050, MEMORY[0x277D85928]);
  *v15 = v0;
  v15[1] = sub_23BBB9C68;
  v17 = *(v0 + 144);
  v18 = *(v0 + 112);
  v19 = *(v0 + 96);

  return MEMORY[0x282200488](v17, v0 + 16, v18, v19, v16);
}

uint64_t sub_23BBB9C68()
{
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  if (v0)
  {
    v7 = v3[30];

    v8 = OUTLINED_FUNCTION_40_1();
    v9(v8);
    v10 = OUTLINED_FUNCTION_31_1();
    v7(v10);
  }

  else
  {
    v13 = v3[30];
    v14 = v3[18];
    v15 = v3[15];
    (*(v3[13] + 8))(v3[14], v3[12]);
    v13(v14, v15);
  }

  v11 = v3[25];
  v12 = v3[26];

  return MEMORY[0x2822009F8](sub_23BBB9DE4, v11, v12);
}

uint64_t sub_23BBB9DE4()
{
  OUTLINED_FUNCTION_15_5();

  OUTLINED_FUNCTION_27_13();
  sub_23BBD97F8();
  v3 = OUTLINED_FUNCTION_31_1();
  v2(v3);
  OUTLINED_FUNCTION_7_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF78();
  (v2)(v0, v1);
  OUTLINED_FUNCTION_19_31();

  OUTLINED_FUNCTION_1_16();

  return v4();
}

uint64_t sub_23BBB9ED4()
{
  v1[6] = v0;
  v2 = sub_23BBDCA18();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09A8);
  v1[11] = swift_task_alloc();
  v3 = sub_23BBDC6A8();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = sub_23BBDC758();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8);
  v1[20] = swift_task_alloc();
  v5 = sub_23BBDCB38();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v1[25] = swift_task_alloc();
  sub_23BBDD308();
  v1[26] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v1[27] = v7;
  v1[28] = v6;

  return MEMORY[0x2822009F8](sub_23BBBA1A4, v7, v6);
}

uint64_t sub_23BBBA1A4()
{
  v1 = v0[25];
  sub_23BBDC8F8();
  v2 = sub_23BBDCB58();
  v0[29] = v2;
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[25];

    sub_23B979910(v3, &qword_27E197B90);
    OUTLINED_FUNCTION_24_18();

    v4 = v0[1];
    v5 = MEMORY[0x277D84F90];

    return v4(v5);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23BBBA2F8, 0, 0);
  }
}

uint64_t sub_23BBBA2F8()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDCAA8();
  *(v0 + 240) = v1;
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_42_8(v2);

  return MEMORY[0x28212C730](v3, v4);
}

uint64_t sub_23BBBA394()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  *v4 = *v1;
  v3[32] = v5;
  v3[33] = v0;

  if (v0)
  {
    v6 = sub_23BBBA8A4;
    v7 = 0;
    v8 = 0;
  }

  else
  {

    v7 = v3[27];
    v8 = v3[28];
    v6 = sub_23BBBA4AC;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23BBBA4AC()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[13];

  OUTLINED_FUNCTION_1_4();
  v4 = OUTLINED_FUNCTION_17_0();
  result = v5(v4);
  v7 = 0;
  v30 = *(v1 + 16);
  v27 = (v3 + 8);
  v28 = v2;
  v29 = (v2 + 8);
  while (1)
  {
    if (v30 == v7)
    {

      v17 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

    if (v7 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v0[20];
    (*(v28 + 16))(v0[23], v0[32] + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v7, v0[21]);
    sub_23BBDCAE8();
    sub_23BBDC798();
    sub_23B979910(v8, &qword_27E19A5D8);
    sub_23BBDC6B8();
    v9 = OUTLINED_FUNCTION_35_0();
    v10(v9);
    sub_23BBDC698();
    sub_23BBBDCD8(&qword_27E1A2020, MEMORY[0x277CDD0F8]);
    sub_23BBDD218();
    sub_23BBDD218();
    v11 = v0[14];
    v12 = v0[12];
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      break;
    }

    v14 = sub_23BBDDA88();
    v15 = *v27;
    (*v27)(v11, v12);
    v16 = OUTLINED_FUNCTION_0_14();
    v15(v16);

    if (v14)
    {
      goto LABEL_12;
    }

    result = (*v29)(v0[23], v0[21]);
    ++v7;
  }

  v18 = *v27;
  (*v27)(v0[14], v0[12]);
  v19 = OUTLINED_FUNCTION_0_14();
  v18(v19);

LABEL_12:
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[11];

  OUTLINED_FUNCTION_34_6();
  v23();
  sub_23BBDCAD8();
  (*v29)(v20, v21);
  sub_23BBDC798();
  sub_23B979910(v22, &qword_27E1A09A8);
  v17 = sub_23BBDCA08();
  v24 = OUTLINED_FUNCTION_0_14();
  v25(v24);
LABEL_13:

  v26 = v0[1];

  return v26(v17);
}

uint64_t sub_23BBBA8A4()
{
  OUTLINED_FUNCTION_3_13();

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_23BBBA904, v1, v2);
}

uint64_t sub_23BBBA904()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[25];

  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(v3, v2);

  OUTLINED_FUNCTION_24_18();

  v5 = v0[1];
  v6 = MEMORY[0x277D84F90];

  return v5(v6);
}

uint64_t sub_23BBBAA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[47] = a5;
  v6[48] = a6;
  v6[46] = a4;
  v7 = sub_23BBDC5F8();
  v6[49] = v7;
  v6[50] = *(v7 - 8);
  v6[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  v6[52] = swift_task_alloc();
  type metadata accessor for PurchaseAction();
  v6[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F8);
  v6[54] = swift_task_alloc();
  v6[55] = type metadata accessor for SubscriptionOfferManager();
  v6[56] = swift_task_alloc();
  v8 = sub_23BBDA928();
  v6[57] = v8;
  v6[58] = *(v8 - 8);
  v6[59] = swift_task_alloc();
  v9 = sub_23BBDCDB8();
  v6[60] = v9;
  v6[61] = *(v9 - 8);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F0);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v10 = sub_23BBDCB58();
  v6[70] = v10;
  v6[71] = *(v10 - 8);
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  sub_23BBDD308();
  v6[74] = sub_23BBDD2F8();
  v12 = sub_23BBDD2D8();
  v6[75] = v12;
  v6[76] = v11;

  return MEMORY[0x2822009F8](sub_23BBBAD98, v12, v11);
}

uint64_t sub_23BBBAD98()
{
  v2 = *(v0 + 560);
  v3 = *(v0 + 368);
  sub_23BBDC8F8();
  v4 = OUTLINED_FUNCTION_156();
  if (__swift_getEnumTagSinglePayload(v4, v5, v2) == 1)
  {
    v6 = *(v0 + 552);
    v7 = &qword_27E197B90;
LABEL_8:
    sub_23B979910(v6, v7);
    OUTLINED_FUNCTION_29_7();
    v42 = v23;
    sub_23BBCA338(v3);
    v24 = type metadata accessor for PurchaseConfigurationEvent(0);
    OUTLINED_FUNCTION_17_19(v24);
    sub_23BA5DACC(v0 + 112);
    v25 = OUTLINED_FUNCTION_45_7();
    v26(v25);
    sub_23B9B7654();
    sub_23BBDC8F8();
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_5_46(v27);
    sub_23BBB7040(v28, v1, v42);

    sub_23B979910(v2, &qword_27E197B90);
    OUTLINED_FUNCTION_32_10();
    if (!v29)
    {
      OUTLINED_FUNCTION_44_7();

      sub_23BBDD5A8();
      v30 = sub_23BBDB338();
      OUTLINED_FUNCTION_14_4();

      sub_23BBDA918();
      OUTLINED_FUNCTION_17_0();
      swift_getAtKeyPath();
      v31 = OUTLINED_FUNCTION_21_21();
      sub_23B97B450(v31, v32);
      v33 = OUTLINED_FUNCTION_35_0();
      v34(v33);
    }

    v35 = OUTLINED_FUNCTION_31_9();
    v43 = *(v0 + 376);
    v36(v35);
    v37 = swift_task_alloc();
    *(v0 + 688) = v37;
    OUTLINED_FUNCTION_4_46(v37, v43);
    OUTLINED_FUNCTION_113();

    return MEMORY[0x2822009F8](v38, v39, v40);
  }

  v8 = *(v0 + 584);
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 440);
  v13 = *(v9 + 32);
  *(v0 + 616) = v13;
  *(v0 + 624) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v8, v11, v10);
  v2 = type metadata accessor for StaticProductView();
  *(v0 + 632) = v2;
  *(v0 + 108) = *(v2 + 104);
  *(v0 + 640) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4098);
  sub_23BBDBF68();
  v14 = OUTLINED_FUNCTION_156();
  if (__swift_getEnumTagSinglePayload(v14, v15, v12) != 1)
  {
    v3 = *(v0 + 528);
    (*(*(v0 + 568) + 8))(*(v0 + 584), *(v0 + 560));
    v7 = &qword_27E19B3F0;
    v6 = v3;
    goto LABEL_8;
  }

  v16 = *(v0 + 504);
  v17 = *(v0 + 480);
  v18 = *(v0 + 488);
  v19 = *(v0 + 368);
  sub_23B979910(*(v0 + 528), &qword_27E19B3F0);
  (*(v18 + 16))(v16, v19, v17);
  v20 = swift_task_alloc();
  *(v0 + 648) = v20;
  *v20 = v0;
  v20[1] = sub_23BBBB11C;
  OUTLINED_FUNCTION_113();

  return sub_23BBB9ED4();
}

uint64_t sub_23BBBB11C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 656) = v3;

  return MEMORY[0x2822009F8](sub_23BBBB210, 0, 0);
}

uint64_t sub_23BBBB210()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDCAA8();
  *(v0 + 664) = v1;
  v2 = swift_task_alloc();
  *(v0 + 672) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_42_8(v2);

  return MEMORY[0x28212C6E8](v3);
}

uint64_t sub_23BBBB2AC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v5 = v4;
  *(v7 + 106) = v6;

  OUTLINED_FUNCTION_43_0();
  v9 = *(v8 + 608);
  v10 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_23BBBB3EC, v10, v9);
}

uint64_t sub_23BBBB3EC()
{
  v1 = *(v0 + 368) + *(*(v0 + 632) + 68);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v4 = OUTLINED_FUNCTION_31_1();
    sub_23BA1569C(v4);
  }

  else
  {
    v5 = *(v0 + 464);
    v6 = *(v0 + 472);
    v7 = *(v1 + 8);
    v8 = *(v0 + 456);

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    OUTLINED_FUNCTION_197();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BA15630(v2, v7, 0);
    (*(v5 + 8))(v6, v8);
    v2 = *(v0 + 296);
    v3 = *(v0 + 304);
  }

  v10 = *(v0 + 368) + *(*(v0 + 632) + 72);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*(v10 + 16) == 1)
  {
    sub_23BA1569C(v11);
  }

  else
  {
    v13 = *(v0 + 464);
    v14 = *(v0 + 472);
    v15 = *(v0 + 456);

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    OUTLINED_FUNCTION_197();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BA15630(v11, v12, 0);
    (*(v13 + 8))(v14, v15);
    v11 = *(v0 + 312);
    v12 = *(v0 + 320);
  }

  v17 = (*(v0 + 368) + *(*(v0 + 632) + 48));
  v18 = *v17;
  v19 = *(v17 + 8);

  v69 = v12;
  if ((v19 & 1) == 0)
  {
    v20 = *(v0 + 464);
    v21 = *(v0 + 472);
    v22 = *(v0 + 456);
    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    OUTLINED_FUNCTION_197();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v18, 0);
    (*(v20 + 8))(v21, v22);
    v18 = *(v0 + 360);
  }

  v24 = *(v0 + 560);
  v25 = *(v0 + 544);
  sub_23BBDC8F8();
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    v26 = *(v0 + 544);
    (*(*(v0 + 488) + 8))(*(v0 + 504), *(v0 + 480));

    sub_23BA1565C(v11);
    v27 = OUTLINED_FUNCTION_31_1();
    sub_23BA1565C(v27);

    sub_23B979910(v26, &qword_27E197B90);
    v28 = 1;
  }

  else
  {
    v67 = *(v0 + 106);
    v65 = v3;
    v66 = *(v0 + 656);
    v29 = *(v0 + 616);
    v30 = *(v0 + 576);
    v31 = *(v0 + 560);
    v63 = *(v0 + 504);
    v64 = v2;
    v32 = *(v0 + 480);
    v33 = *(v0 + 488);
    v35 = *(v0 + 440);
    v34 = *(v0 + 448);
    v29(v30, *(v0 + 544), v31);
    (*(v33 + 32))(v34, v63, v32);
    v29(v34 + v35[5], v30, v31);
    *(v34 + v35[6]) = v66;
    *(v34 + v35[7]) = v67;
    v36 = (v34 + v35[8]);
    *v36 = v64;
    v36[1] = v65;
    v37 = (v34 + v35[9]);
    *v37 = v11;
    v37[1] = v69;
    *(v34 + v35[10]) = v18;
    sub_23BBBD57C();
    v28 = 0;
  }

  v38 = *(v0 + 640);
  v39 = *(v0 + 108);
  v70 = *(v0 + 584);
  v40 = *(v0 + 568);
  v41 = *(v0 + 560);
  v42 = *(v0 + 520);
  v43 = *(v0 + 368);
  __swift_storeEnumTagSinglePayload(v42, v28, 1, *(v0 + 440));
  OUTLINED_FUNCTION_40_1();
  sub_23B979510();
  sub_23BBDBF78();
  sub_23B979910(v42, &qword_27E19B3F0);
  (*(v40 + 8))(v70, v41);
  OUTLINED_FUNCTION_29_7();
  v68 = v44;
  sub_23BBCA338((v43 + v39));
  v45 = type metadata accessor for PurchaseConfigurationEvent(0);
  OUTLINED_FUNCTION_17_19(v45);
  sub_23BA5DACC(v0 + 112);
  v46 = OUTLINED_FUNCTION_45_7();
  v47(v46);
  sub_23B9B7654();
  sub_23BBDC8F8();
  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_5_46(v48);
  sub_23BBB7040(v49, &unk_23BBEC8A8, v68);

  sub_23B979910(v38, &qword_27E197B90);
  OUTLINED_FUNCTION_32_10();
  if (!v50)
  {
    OUTLINED_FUNCTION_44_7();

    sub_23BBDD5A8();
    v51 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_17_0();
    swift_getAtKeyPath();
    v52 = OUTLINED_FUNCTION_21_21();
    sub_23B97B450(v52, v53);
    v54 = OUTLINED_FUNCTION_35_0();
    v55(v54);
  }

  v56 = OUTLINED_FUNCTION_31_9();
  v71 = *(v0 + 376);
  v57(v56);
  v58 = swift_task_alloc();
  *(v0 + 688) = v58;
  v59 = OUTLINED_FUNCTION_4_46(v58, v71);

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_23BBBB9D8()
{
  *(v0 + 696) = sub_23BA5E908();
  v1 = swift_task_alloc();
  *(v0 + 704) = v1;
  *v1 = v0;
  v1[1] = sub_23BBBBAB8;

  return sub_23BA5EA98();
}

uint64_t sub_23BBBBAB8()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v26 = v1[62];
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 488);
  v25 = v1[60];
  OUTLINED_FUNCTION_43_0();
  v24 = *(v6 + 424);
  OUTLINED_FUNCTION_43_0();
  v23 = *(v7 + 416);
  OUTLINED_FUNCTION_43_0();
  v9 = *(v8 + 408);
  v10 = v1[50];
  v11 = v1[49];
  v12 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v13 = v12;

  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v14 + 112));
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v15 + 128));
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v16 + 144));
  OUTLINED_FUNCTION_43_0();
  sub_23B979500(*(v17 + 160));
  *(v2 + 16) = *(v2 + 11);
  *(v2 + 272) = *(v2 + 192);
  sub_23B979910((v2 + 32), &qword_27E19B400);

  (*(v10 + 8))(v9, v11);
  sub_23B979910(v23, &unk_27E19FEF0);
  sub_23BBBD638(v24, type metadata accessor for PurchaseAction);
  (*(v5 + 8))(v26, v25);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_113();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_23BBBBDD8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 368);

  v3 = (v2 + *(v1 + 52));
  v4 = *v3;
  LOBYTE(v2) = *(v3 + 8);

  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_44_7();
    sub_23BBDD5A8();
    v5 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_17_0();
    swift_getAtKeyPath();
    v6 = OUTLINED_FUNCTION_21_21();
    j__swift_release(v6, v7);
    v8 = OUTLINED_FUNCTION_35_0();
    v9(v8);
    v4 = *(v0 + 336);
  }

  if (v4)
  {
    sub_23BB5C8A0();
  }

  v10 = (*(v0 + 368) + *(*(v0 + 680) + 56));
  v11 = *v10;
  v12 = *(v10 + 8);

  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_44_7();
    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_17_0();
    swift_getAtKeyPath();
    v14 = OUTLINED_FUNCTION_21_21();
    j__swift_release(v14, v15);
    v16 = OUTLINED_FUNCTION_35_0();
    v17(v16);
    v11 = *(v0 + 344);
  }

  if (v11)
  {
    sub_23BB5CC10();
  }

  v18 = *(v0 + 680);
  v19 = *(v0 + 432);
  v20 = *(v0 + 368);
  sub_23BBBC4DC(0, 0, v18);
  *(v0 + 280) = *(v20 + *(v18 + 88));
  *(v0 + 352) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E0);
  sub_23BBDBF78();
  sub_23B979910(v19, &qword_27E19B3F8);

  OUTLINED_FUNCTION_1_16();

  return v21();
}

uint64_t sub_23BBBC0C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for SubscriptionOfferManager();
  MEMORY[0x28223BE20](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  type metadata accessor for StaticProductView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4098);
  sub_23BBDBF68();
  if (__swift_getEnumTagSinglePayload(v10, 1, v5))
  {
    sub_23B979910(v10, &qword_27E19B3F0);
    v11 = sub_23BBDCC88();
    v12 = a1;
    v13 = 1;
    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  sub_23BBBD5D4(v10, v7);
  sub_23B979910(v10, &qword_27E19B3F0);
  if (!*&v7[*(v5 + 40)])
  {
    sub_23BADD438(a1);
    return sub_23BBBD638(v7, type metadata accessor for SubscriptionOfferManager);
  }

  sub_23BADCDAC(v15, v4);
  v16 = sub_23BBDCC88();
  if (__swift_getEnumTagSinglePayload(v4, 1, v16) != 1)
  {
    sub_23BBBD638(v7, type metadata accessor for SubscriptionOfferManager);

    (*(*(v16 - 8) + 32))(a1, v4, v16);
    v12 = a1;
    v13 = 0;
    v11 = v16;
    return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  }

  sub_23BADD250();

  sub_23BBBD638(v7, type metadata accessor for SubscriptionOfferManager);
  result = __swift_getEnumTagSinglePayload(v4, 1, v16);
  if (result != 1)
  {
    return sub_23B979910(v4, &unk_27E19FEF0);
  }

  return result;
}

uint64_t sub_23BBBC3E0(uint64_t a1, uint64_t a2)
{
  sub_23BA160B0(a1, v8);
  v3 = type metadata accessor for StaticProductView();
  sub_23B979510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B3E8);
  sub_23BBDBF78();
  sub_23B979910(v8, &qword_27E19A9E8);
  v4 = (a2 + *(v3 + 96));
  v5 = *v4;
  v6 = *(v4 + 1);
  v8[0] = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23BBBC4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3 + *(a3 + 52);
  v10 = *v9;
  v11 = *(v9 + 8);

  v13 = v10;
  if ((v11 & 1) == 0)
  {
    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v10, 0);
    result = (*(v6 + 8))(v8, v5);
    v13 = v22;
  }

  if (v13)
  {
    if (*(v13 + OBJC_IVAR____TtC17_StoreKit_SwiftUI29ProductViewEventConfiguration_isEmbeddedInStoreView) == 1)
    {
      v15 = v3 + *(a3 + 56);
      v16 = *v15;
      v17 = *(v15 + 8);

      if ((v17 & 1) == 0)
      {
        sub_23BBDD5A8();
        v18 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        j__swift_release(v16, 0);
        (*(v6 + 8))(v8, v5);
        v16 = v22;
      }

      if (!v16)
      {
      }

      if ((v11 & 1) == 0)
      {
        sub_23BBDD5A8();
        v19 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        j__swift_release(v10, 0);
        (*(v6 + 8))(v8, v5);
        v10 = v22;
      }

      sub_23BBB722C(v10);
    }

    else
    {

      if ((v11 & 1) == 0)
      {
        sub_23BBDD5A8();
        v20 = sub_23BBDB338();
        sub_23BBD9978();

        sub_23BBDA918();
        swift_getAtKeyPath();
        j__swift_release(v10, 0);
        (*(v6 + 8))(v8, v5);
        v10 = v22;
      }

      if (!v10)
      {
      }

      sub_23BBB7A30();
    }
  }

  return result;
}

uint64_t sub_23BBBC894(uint64_t a1)
{
  sub_23BBD9B28();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_23BBDA5D8();
}

uint64_t sub_23BBBC988(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4068);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_23BBBC9EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = type metadata accessor for StaticProductView();
  OUTLINED_FUNCTION_13_0(v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23BA027BC;

  return sub_23BBB91C0(a1, v1 + v8, v4, v5);
}

uint64_t sub_23BBBCAFC()
{
  OUTLINED_FUNCTION_34_6();
  v1 = type metadata accessor for StaticProductView();
  OUTLINED_FUNCTION_13_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23BA027BC;
  OUTLINED_FUNCTION_34_6();

  return sub_23BBB9720(v3, v4, v5);
}

uint64_t sub_23BBBCBD8()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4068);
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_17_0();
  v2(v1);
  return v0;
}

uint64_t objectdestroy_22Tm()
{
  v2 = *(v0 + 16);
  v3 = type metadata accessor for StaticProductView();
  OUTLINED_FUNCTION_57();
  v5 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 8);
  v8(v5, v6);
  (*(*(v2 - 8) + 8))(v5 + v3[9], v2);
  v9 = OUTLINED_FUNCTION_23_18(v3[11]);
  sub_23B9AD3D4(v9, v11, *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40));
  v12 = OUTLINED_FUNCTION_4_10(v3[12]);
  j__swift_release(v12, v13);
  v14 = OUTLINED_FUNCTION_4_10(v3[13]);
  j__swift_release(v14, v15);
  v16 = OUTLINED_FUNCTION_4_10(v3[14]);
  j__swift_release(v16, v17);
  v18 = OUTLINED_FUNCTION_4_10(v3[15]);
  sub_23B97B450(v18, v19);
  v20 = OUTLINED_FUNCTION_4_10(v3[16]);
  sub_23B97B450(v20, v21);
  v22 = OUTLINED_FUNCTION_23_18(v3[17]);
  sub_23BA15630(v22, v24, *(v23 + 16));
  v25 = OUTLINED_FUNCTION_23_18(v3[18]);
  sub_23BA15630(v25, v27, *(v26 + 16));
  OUTLINED_FUNCTION_18_25(v3[19]);
  sub_23BA15630(*(v2 + 72), *(v2 + 80), *(v2 + 88));
  v28 = v5 + v3[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_4_1();
    (*(v29 + 8))(v28);
  }

  else
  {
  }

  v30 = v5 + v3[21];
  v31 = sub_23BBD9828();
  if (!OUTLINED_FUNCTION_48_9(v31))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v32 + 8))(v30, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4090);

  if (*(v5 + v3[23] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + v3[23]);
  }

  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_49_4();
  v33 = v5 + v3[26];
  v34 = type metadata accessor for SubscriptionOfferManager();
  v35 = OUTLINED_FUNCTION_156();
  if (!__swift_getEnumTagSinglePayload(v35, v36, v34))
  {
    v8(v33, v6);
    v37 = v34[5];
    sub_23BBDCB58();
    OUTLINED_FUNCTION_4_1();
    (*(v38 + 8))(v33 + v37);

    if (*(v33 + v34[8]))
    {
    }

    if (*(v33 + v34[9]))
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4098);

  OUTLINED_FUNCTION_40_8();

  return swift_deallocObject();
}

uint64_t sub_23BBBD000(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_34_6();
  v1 = type metadata accessor for StaticProductView();
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_34_6();

  return a1();
}

uint64_t sub_23BBBD08C()
{
  v2 = *(v0 + 32);
  v3 = type metadata accessor for StaticProductView();
  OUTLINED_FUNCTION_57();
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + ((v5 + 48) & ~v5);
  v7 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 8);
  v9(v6, v7);
  (*(*(v2 - 8) + 8))(v6 + v3[9], v2);
  v10 = OUTLINED_FUNCTION_23_18(v3[11]);
  sub_23B9AD3D4(v10, v12, *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40));
  v13 = OUTLINED_FUNCTION_4_10(v3[12]);
  j__swift_release(v13, v14);
  v15 = OUTLINED_FUNCTION_4_10(v3[13]);
  j__swift_release(v15, v16);
  v17 = OUTLINED_FUNCTION_4_10(v3[14]);
  j__swift_release(v17, v18);
  v19 = OUTLINED_FUNCTION_4_10(v3[15]);
  sub_23B97B450(v19, v20);
  v21 = OUTLINED_FUNCTION_4_10(v3[16]);
  sub_23B97B450(v21, v22);
  v23 = OUTLINED_FUNCTION_23_18(v3[17]);
  sub_23BA15630(v23, v25, *(v24 + 16));
  v26 = OUTLINED_FUNCTION_23_18(v3[18]);
  sub_23BA15630(v26, v28, *(v27 + 16));
  OUTLINED_FUNCTION_18_25(v3[19]);
  sub_23BA15630(*(v2 + 72), *(v2 + 80), *(v2 + 88));
  v29 = v6 + v3[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_4_1();
    (*(v30 + 8))(v29);
  }

  else
  {
  }

  v31 = v6 + v3[21];
  v32 = sub_23BBD9828();
  if (!OUTLINED_FUNCTION_48_9(v32))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v33 + 8))(v31, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4090);

  if (*(v6 + v3[23] + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6 + v3[23]);
  }

  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_49_4();
  v34 = v6 + v3[26];
  v35 = type metadata accessor for SubscriptionOfferManager();
  if (!__swift_getEnumTagSinglePayload(v34, 1, v35))
  {
    v36 = OUTLINED_FUNCTION_35_0();
    (v9)(v36);
    v37 = v35[5];
    sub_23BBDCB58();
    OUTLINED_FUNCTION_4_1();
    (*(v38 + 8))(v34 + v37);

    if (*(v34 + v35[8]))
    {
    }

    if (*(v34 + v35[9]))
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4098);

  OUTLINED_FUNCTION_40_8();

  return swift_deallocObject();
}

uint64_t sub_23BBBD444(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = type metadata accessor for StaticProductView();
  OUTLINED_FUNCTION_13_0(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23B9F3414;

  return sub_23BBBAA04(a1, v9, v10, v1 + v8, v4, v5);
}

uint64_t sub_23BBBD57C()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BBBD5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferManager();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBBD638(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BBBD6A0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB670CC();
  *v0 = result;
  return result;
}

uint64_t sub_23BBBD6D4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB1C5CC();
  *v0 = result & 1;
  return result;
}

unint64_t sub_23BBBD760()
{
  result = qword_27E1A40C0;
  if (!qword_27E1A40C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A40A0);
    sub_23BBBD818();
    sub_23B97B518(&qword_27E1A40F8, &qword_27E1A40A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40C0);
  }

  return result;
}

unint64_t sub_23BBBD818()
{
  result = qword_27E1A40C8;
  if (!qword_27E1A40C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4088);
    sub_23BBBD8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40C8);
  }

  return result;
}

unint64_t sub_23BBBD8A4()
{
  result = qword_27E1A40D0;
  if (!qword_27E1A40D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4080);
    sub_23BBBD95C();
    sub_23B97B518(&qword_27E199D00, &qword_27E199CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40D0);
  }

  return result;
}

unint64_t sub_23BBBD95C()
{
  result = qword_27E1A40D8;
  if (!qword_27E1A40D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4078);
    sub_23BBBDA18();
    sub_23BBBDCD8(&qword_27E19A670, type metadata accessor for CurrentEntitlementViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40D8);
  }

  return result;
}

unint64_t sub_23BBBDA18()
{
  result = qword_27E1A40E0;
  if (!qword_27E1A40E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4070);
    sub_23BBBDAA4();
    sub_23BA1653C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40E0);
  }

  return result;
}

unint64_t sub_23BBBDAA4()
{
  result = qword_27E1A40E8;
  if (!qword_27E1A40E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4068);
    sub_23BBBDB60();
    sub_23BBBDCD8(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40E8);
  }

  return result;
}

unint64_t sub_23BBBDB60()
{
  result = qword_27E1A40F0;
  if (!qword_27E1A40F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4050);
    type metadata accessor for InAppStoreButtonStyle(255);
    sub_23BBBDCD8(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198308, &qword_27E198310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A40F0);
  }

  return result;
}

uint64_t sub_23BBBDCD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*OUTLINED_FUNCTION_4_46(__n128 *a1, __n128 a2))()
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  *(v3 + 248) = 0;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  return sub_23BBBB9D8;
}

uint64_t (*OUTLINED_FUNCTION_5_46(void *a1))@<X0>(uint64_t a1@<X8>)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  return sub_23BBBD54C;
}

void OUTLINED_FUNCTION_7_47()
{
  v4 = (v2 + *(v1 + 100));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 34) = v3 > 0.0;
}

void *OUTLINED_FUNCTION_17_19(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
  v4 = type metadata accessor for StaticProductView();
  *(v2 + 680) = v4;
  v5 = (v3 + *(v4 + 76));

  return memcpy((v2 + 16), v5, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_18_25@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  j__swift_release(*(v1 + a1), *(v1 + a1 + 8));
  j__swift_release(*(v2 + 16), *(v2 + 24));
  j__swift_release(*(v2 + 32), *(v2 + 40));
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);

  return sub_23BA15630(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_19_31()
{
}

uint64_t OUTLINED_FUNCTION_24_18()
{
}

uint64_t OUTLINED_FUNCTION_27_13()
{

  return sub_23BBD9808();
}

uint64_t OUTLINED_FUNCTION_47_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_48_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_49_4()
{
}

uint64_t sub_23BBBE010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductViewStyleConfiguration();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BBBE0CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ProductViewStyleConfiguration();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for ConfigureProductViewEnvironmentViewModifier()
{
  result = qword_27E1A4100;
  if (!qword_27E1A4100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BBBE1C8()
{
  type metadata accessor for ProductViewStyleConfiguration();
  if (v0 <= 0x3F)
  {
    sub_23BA3463C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BBBE268()
{
  sub_23BBBE72C();

  return sub_23BBDA958();
}

uint64_t sub_23BBBE2B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BA33F20(a1, &v5 - v3);
  sub_23BBBE72C();
  sub_23BBDA968();
  return sub_23B9EA92C(a1, &qword_27E1997B8);
}

uint64_t sub_23BBBE370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_23BBDA438();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4118);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = sub_23BBBFBA0();
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12 & 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4120);
  (*(*(v15 - 8) + 16))(v11, a1, v15);
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4128) + 36)];
  *v16 = KeyPath;
  v16[1] = sub_23B989418;
  v16[2] = v14;
  v17 = swift_getKeyPath();
  v18 = &v11[*(v9 + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1BC0) + 28);
  type metadata accessor for ConfigureProductViewEnvironmentViewModifier();
  sub_23B9B75DC();
  __swift_storeEnumTagSinglePayload(v18 + v19, 0, 1, v6);
  *v18 = v17;
  ProductViewStyleConfiguration.product.getter(v5);
  v20 = sub_23BBDCDB8();
  LODWORD(v17) = __swift_getEnumTagSinglePayload(v5, 1, v20);
  sub_23B9EA92C(v5, &qword_27E1987F0);
  if (v17 == 1)
  {
    sub_23BBDA428();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    sub_23BBBEBB4(&qword_27E198E48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50);
    sub_23BBDD6C8();
  }

  sub_23BBBE904();
  sub_23BBDBC38();
  (*(v23 + 8))(v8, v6);
  return sub_23B9EA92C(v11, &qword_27E1A4118);
}

unint64_t sub_23BBBE72C()
{
  result = qword_27E1A4110;
  if (!qword_27E1A4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4110);
  }

  return result;
}

uint64_t sub_23BBBE780()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  __swift_allocate_value_buffer(v0, qword_27E1BFEB0);
  v1 = __swift_project_value_buffer(v0, qword_27E1BFEB0);
  v2 = sub_23BBDA438();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BBBE7FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197840 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997B8);
  v3 = __swift_project_value_buffer(v2, qword_27E1BFEB0);

  return sub_23BA33F20(v3, a1);
}

uint64_t sub_23BBBE880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BBBEB14();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BBBE904()
{
  result = qword_27E1A4130;
  if (!qword_27E1A4130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4118);
    sub_23BBBE9BC();
    sub_23B97B518(&qword_27E1A1BE0, &qword_27E1A1BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4130);
  }

  return result;
}

unint64_t sub_23BBBE9BC()
{
  result = qword_27E1A4138;
  if (!qword_27E1A4138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4128);
    sub_23B97B518(&qword_27E1A4140, &qword_27E1A4120);
    sub_23B97B518(&qword_27E198308, &qword_27E198310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4138);
  }

  return result;
}

uint64_t sub_23BBBEAB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4118);
  sub_23BBBE904();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BBBEB14()
{
  result = qword_27E1A4148;
  if (!qword_27E1A4148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1997B8);
    sub_23BBBEBB4(&qword_27E1A4150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4148);
  }

  return result;
}

uint64_t sub_23BBBEBB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23BBDA438();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BBBEC1C(uint64_t a1)
{
  sub_23BBD9BF8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_23BBDA5F8();
}

uint64_t StoreButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = type metadata accessor for InAppStoreButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  v6 = sub_23BBDB308();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BC8);
  OUTLINED_FUNCTION_7();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  (*(v8 + 16))(v12, a1, v6, v17);
  sub_23BBDBFB8();
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v20 = v2[5];
  *(v5 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
  OUTLINED_FUNCTION_2_49();
  v21 = v2[6];
  *(v5 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  OUTLINED_FUNCTION_2_49();
  v22 = v2[7];
  *(v5 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730);
  OUTLINED_FUNCTION_2_49();
  *(v5 + v2[8]) = 0;
  sub_23B9A1A44();
  sub_23BBBEFCC();
  sub_23BBDB738();
  sub_23BBBF024(v5);
  return (*(v15 + 8))(v19, v13);
}

unint64_t sub_23BBBEFCC()
{
  result = qword_27E19A160;
  if (!qword_27E19A160)
  {
    type metadata accessor for InAppStoreButtonStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A160);
  }

  return result;
}

uint64_t sub_23BBBF024(uint64_t a1)
{
  v2 = type metadata accessor for InAppStoreButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StoreButtonStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BBBF154);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BBBF18C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8);
  type metadata accessor for InAppStoreButtonStyle(255);
  sub_23B9A1A44();
  sub_23BBBEFCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_49()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BBBF240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = type metadata accessor for MintDisappearBaseEvent(0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_23BBBF32C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for MintDisappearBaseEvent(0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ProductViewDisappearEvent()
{
  result = qword_27E1A4158;
  if (!qword_27E1A4158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BBBF440()
{
  result = type metadata accessor for ProductViewBaseEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MintDisappearBaseEvent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ProductViewStyleConfiguration.product.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = type metadata accessor for ProductViewStyleConfiguration();
  sub_23B9AD670(v1 + *(v7 + 24), v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_23BBDCDB8();
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v9 - 8) + 32))(a1, v6, v9);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
    return sub_23BBBF904(v6);
  }
}

uint64_t sub_23BBBF5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  (*(v7 + 16))(v10 - v9, a1, a2);
  v11 = sub_23BBDC0D8();
  result = (*(v7 + 8))(a1, a2);
  *a3 = v11;
  return result;
}

uint64_t sub_23BBBF6CC@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v30 = a4;
  v31 = a5;
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  *a7 = v20;
  *(a7 + 8) = v21;
  v22 = type metadata accessor for ProductViewStyleConfiguration();
  v23 = a7 + v22[6];
  v29 = a1;
  sub_23B9AD670(a1, v23);
  *(a7 + v22[8]) = a2;
  v24 = *(v13 + 16);
  v24(v19, a3, a6);
  if (swift_dynamicCast())
  {
    v25 = v32;
    (*(v13 + 8))(a3, a6);
    result = sub_23BBBF904(v29);
    *(a7 + v22[7]) = v25;
  }

  else
  {
    v24(v16, a3, a6);
    sub_23BBBF5E0(v16, a6, &v32);
    (*(v13 + 8))(a3, a6);
    result = sub_23BBBF904(v29);
    *(a7 + v22[7]) = v32;
  }

  v27 = v31;
  *(a7 + 16) = v30 & 1;
  *(a7 + v22[9]) = v27;
  return result;
}

uint64_t type metadata accessor for ProductViewStyleConfiguration()
{
  result = qword_27E1A4190;
  if (!qword_27E1A4190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BBBF904(uint64_t a1)
{
  v2 = type metadata accessor for Product.TaskState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.productViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  OUTLINED_FUNCTION_3_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for ProductViewStyleModifier();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v22 - v18;
  (*(v8 + 16))(v12, a1, a3, v17);
  v20 = sub_23BBC010C(v12, a3, v19);
  MEMORY[0x23EEB43C0](v19, a2, v13, v22, v20);
  return (*(v15 + 8))(v19, v13);
}

double sub_23BBBFB04@<D0>(uint64_t a1@<X8>)
{
  sub_23BBC0DD8();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BBBFBA0()
{
  sub_23BBDC8A8();
  OUTLINED_FUNCTION_3_2();
  v34 = v2;
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_3_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for ProductViewStyleConfiguration();
  sub_23B9AD670(v0 + *(v22 + 24), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v14, v11, v15);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_23BBBF904(v11);
  }

  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B979910(v14, &qword_27E1987F0);
LABEL_10:
    v28 = 1;
    return v28 & 1;
  }

  (*(v17 + 32))(v21, v14, v15);
  if (!*v0)
  {
    v29 = OUTLINED_FUNCTION_5_47();
    v30(v29);
    goto LABEL_10;
  }

  if (*(v0 + *(v22 + 32)) == 1)
  {
    sub_23BBDCD28();
    sub_23BBDC868();
    sub_23B99835C();
    v23 = v35;
    v24 = sub_23BBDCF38();
    v25 = *(v34 + 8);
    v25(v4, v23);
    v25(v7, v23);
    v26 = OUTLINED_FUNCTION_5_47();
    v27(v26);
    v28 = v24 ^ 1;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_5_47();
    v33(v32);
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t ProductViewStyleConfiguration.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductViewStyleConfiguration() + 24);

  return sub_23B9AD670(v3, a1);
}

uint64_t ProductViewStyleConfiguration.icon.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ProductViewStyleConfiguration() + 28));
}

Swift::Void __swiftcall ProductViewStyleConfiguration.purchase()()
{
  if (*v0)
  {
    (*v0)();
  }
}

double sub_23BBC0010()
{
  v0 = sub_23BBC1040();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  qword_27E1A4168 = sub_23BBC103C;
  unk_27E1A4170 = 0;
  qword_27E1A4178 = &type metadata for AutomaticProductViewStyle;
  qword_27E1A4180 = v0;
  qword_27E1A4188 = v1;
  return result;
}

uint64_t sub_23BBC0080@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197848 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1A4180;
  v3 = qword_27E1A4188;
  *a1 = qword_27E1A4168;
  *(a1 + 8) = unk_27E1A4170;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_23BBC010C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v4 = a3 + *(type metadata accessor for ProductViewStyleModifier() + 36);
  *v4 = swift_getKeyPath();
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0;
  return result;
}

uint64_t sub_23BBC01EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Product.TaskState(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23BBC02B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Product.TaskState(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_23BBC035C()
{
  sub_23BA55588();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Product.TaskState(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BBC040C()
{
  type metadata accessor for ProductViewStyleModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_2_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

void sub_23BBC0478()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BB0CC9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BBC0500(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BBC064CLL);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
        v15 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        return v7 + (v16 | v15) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 40);
  if (v17 > 1)
  {
    return (v17 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_23BBC0660(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41);
    if (v10 <= 3)
    {
      v17 = (v15 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v17;
        return result;
      case 2:
        *&a1[v10] = v17;
        return result;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v17;
        return result;
      default:
        return result;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BBC0860);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            result = 0.0;
            *(v18 + 24) = 0u;
            *(v18 + 8) = 0u;
            *(v18 + 40) = 0;
            *v18 = (a2 - 255);
          }

          else
          {
            *(v18 + 40) = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return result;
  }
}

uint64_t sub_23BBC08CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a3;
  v40 = sub_23BBDA928();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v11 = sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4220);
  v46 = v11;
  v12 = sub_23BBDA358();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  swift_getKeyPath();
  v19 = *(v7 + 16);
  v45 = v10;
  v19(v10, v3, v6);
  v20 = (v3 + *(a2 + 36));
  v21 = *v20;
  v41 = v20[1];
  v22 = *(v20 + 4);
  v23 = *(v20 + 40) == 1;
  v42 = v21;
  if (v23)
  {

    v29 = v42;
    v28 = v41;
  }

  else
  {
    v36 = v6;
    v24 = v21;

    sub_23BBDD5A8();
    v37 = v12;
    v25 = sub_23BBDB338();
    v12 = v37;
    sub_23BBD9978();

    v26 = v38;
    sub_23BBDA918();
    swift_getAtKeyPath();
    v27 = v24;
    v6 = v36;
    sub_23B9AD3D4(v27, *(&v42 + 1), v41, *(&v41 + 1), v22, 0);
    (*(v39 + 8))(v26, v40);
    v29 = v55;
    v28 = v56;
    v22 = v57;
  }

  v55 = v29;
  v56 = v28;
  v57 = v22;
  sub_23BB6BD98(v45, &v55, v6, *(a2 + 24), v52);
  v54 = v53;
  v49 = v52[0];
  v50 = v52[1];
  v51 = v53;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  sub_23B979910(&v54, &qword_27E19FA80);
  v31 = sub_23B97B518(&qword_27E1A4228, &qword_27E1A4220);
  v47 = WitnessTable;
  v48 = v31;
  v32 = swift_getWitnessTable();
  sub_23B9D2D88(v15, v12, v32);
  v33 = *(v13 + 8);
  v33(v15, v12);
  sub_23B9D2D88(v18, v12, v32);
  return (v33)(v18, v12);
}

unint64_t sub_23BBC0DD8()
{
  result = qword_27E1A4230;
  if (!qword_27E1A4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4230);
  }

  return result;
}

uint64_t sub_23BBC0E3C()
{
  type metadata accessor for ProductViewStyleModifier();
  OUTLINED_FUNCTION_2_50();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4220);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A4228, &qword_27E1A4220);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BBC0F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = *v2;
  v8 = v2[3];
  v7 = v2[4];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4240);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4248) + 36);
  *v10 = KeyPath;
  *(v10 + 8) = v6;
  *(v10 + 16) = *(v2 + 1);
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;
}

unint64_t sub_23BBC1040()
{
  result = qword_27E1A4238;
  if (!qword_27E1A4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4238);
  }

  return result;
}

uint64_t sub_23BBC1094()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_23BBC110C()
{
  result = qword_27E1A4250;
  if (!qword_27E1A4250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4248);
    sub_23B97B518(&qword_27E1A4258, &qword_27E1A4240);
    sub_23B97B518(&qword_27E1A4228, &qword_27E1A4220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4250);
  }

  return result;
}

uint64_t sub_23BBC1230(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_23BBDCB58();
      OUTLINED_FUNCTION_10_2();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = sub_23BBDCC88();
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void sub_23BBC134C()
{
  OUTLINED_FUNCTION_19();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_10_2();
    if (*(v7 + 84) == v5)
    {
      v8 = v6;
      v9 = v4[5];
    }

    else
    {
      sub_23BBDCB58();
      OUTLINED_FUNCTION_10_2();
      if (*(v11 + 84) == v5)
      {
        v8 = v10;
        v9 = v4[6];
      }

      else
      {
        v8 = sub_23BBDCC88();
        v9 = v4[7];
      }
    }

    __swift_storeEnumTagSinglePayload(v1 + v9, v0, v0, v8);
  }
}

uint64_t sub_23BBC146C()
{
  result = sub_23BBDCDB8();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDCB58();
    if (v2 <= 0x3F)
    {
      result = sub_23BBDCC88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BBC1534()
{
  v0 = sub_23BBDB518();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23BBDC2A8())
  {
    sub_23BBDB568();
    (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
    v4 = sub_23BBDB548();

    (*(v1 + 8))(v3, v0);
    return v4;
  }

  else
  {
    sub_23BBDB428();
    sub_23BBDB498();
    v6 = sub_23BBDB508();

    return v6;
  }
}

unint64_t sub_23BBC1670@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDA308();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9B70F0();
  v6 = sub_23BBDA2E8();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_23BBDAB58();
    if (qword_27E197660 != -1)
    {
      swift_once();
    }

    v8 = qword_27E1BFBD8;
    *(a1 + 24) = MEMORY[0x277CDF5C8];
    result = sub_23B9A7330();
  }

  else
  {
    if (qword_27E197660 != -1)
    {
      swift_once();
    }

    v8 = qword_27E1BFBD8;
    v7 = sub_23BBDA9D8();
    *(a1 + 24) = MEMORY[0x277CDF570];
    result = sub_23B9A70B0();
  }

  *(a1 + 32) = result;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23BBC17FC@<X0>(uint64_t *a1@<X8>)
{
  sub_23BBC1670(v11);
  v3 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(v11);
  *a1 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A42B8);
  return sub_23BBC1918(v1, a1 + *(v8 + 44));
}

uint64_t sub_23BBC1918@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF70);
  MEMORY[0x28223BE20](v34);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C300);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SubscriptionOfferViewNoCodeCardHeader.Icon(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A42C0);
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  type metadata accessor for SubscriptionOfferViewNoCodeCardHeader(0);
  v19 = a1;
  sub_23BBDCD58();
  v20 = sub_23BBDCD48();
  if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
  {
    sub_23B979910(v7, &qword_27E19C300);
    v21 = sub_23BBD9728();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  }

  else
  {
    sub_23BBDCD38();
    (*(*(v20 - 8) + 8))(v7, v20);
  }

  sub_23B989918(v10, v13, &qword_27E19C308);
  v44[0] = 0x4054000000000000;
  sub_23B974940();
  sub_23BBD9D28();
  v22 = *MEMORY[0x277CDF988];
  v23 = sub_23BBDA308();
  (*(*(v23 - 8) + 104))(v4, v22, v23);
  sub_23BBC40B0(&qword_27E198F50, MEMORY[0x277CDFA28]);
  result = sub_23BBDCF38();
  if (result)
  {
    sub_23BBC40B0(&qword_27E1A42C8, type metadata accessor for SubscriptionOfferViewNoCodeCardHeader.Icon);
    sub_23B97B518(&qword_27E19AF80, &qword_27E19AF70);
    sub_23BBDB898();
    sub_23B979910(v4, &qword_27E19AF70);
    sub_23BBC3D1C(v13, type metadata accessor for SubscriptionOfferViewNoCodeCardHeader.Icon);
    v25 = sub_23BBDAB58();
    v40 = 0;
    sub_23BBC1F44(v19, v44);
    memcpy(v41, v44, sizeof(v41));
    memcpy(v42, v44, sizeof(v42));
    sub_23B989ECC(v41, v43, &qword_27E1A42D0);
    sub_23B979910(v42, &qword_27E1A42D0);
    memcpy(&v39[7], v41, 0xC0uLL);
    v26 = v40;
    v27 = v37;
    v28 = v38;
    v29 = *(v37 + 16);
    v30 = v35;
    v29(v35, v18, v38);
    v31 = v36;
    v29(v36, v30, v28);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A42D8) + 48);
    v43[0] = v25;
    v43[1] = 0x4000000000000000;
    LOBYTE(v43[2]) = v26;
    memcpy(&v43[2] + 1, v39, 0xC7uLL);
    LOWORD(v43[27]) = 256;
    memcpy(&v31[v32], v43, 0xDAuLL);
    sub_23B989ECC(v43, v44, &qword_27E1A42E0);
    v33 = *(v27 + 8);
    v33(v18, v28);
    v44[0] = v25;
    v44[1] = 0x4000000000000000;
    LOBYTE(v44[2]) = v26;
    memcpy(&v44[2] + 1, v39, 0xC7uLL);
    v45 = 256;
    sub_23B979910(v44, &qword_27E1A42E0);
    return (v33)(v30, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BBC1F44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = sub_23BBD96B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SubscriptionOfferViewNoCodeCardHeader(0);
  v44 = sub_23BBDC8C8();
  v45 = v7;
  sub_23B9F6A08();
  v8 = sub_23BBDB678();
  v10 = v9;
  v12 = v11;
  if (sub_23BBDC2A8())
  {
    sub_23BBDB4F8();
    v39 = v3;
    sub_23BBDB478();
    sub_23BBDB508();
    v3 = v39;
  }

  else
  {
    sub_23BBDB578();
  }

  v13 = sub_23BBDB618();
  v38 = v14;
  v39 = v13;
  v37 = v15;
  v35 = v16;

  sub_23BA51C9C(v8, v10, v12 & 1);

  (*(v4 + 16))(v6, a1 + *(v36 + 24), v3);
  v17 = sub_23BBDB668();
  v36 = v17;
  v19 = v18;
  v34 = v18;
  v21 = v20;
  v23 = v22;
  sub_23BBDC328();
  sub_23BBDA488();
  v24 = v21 & 1;
  v53 = v21 & 1;
  v25 = sub_23BBC1534();
  KeyPath = swift_getKeyPath();
  v27 = v35 & 1;
  v41[160] = v35 & 1;
  v43[0] = v17;
  v43[1] = v19;
  LOBYTE(v43[2]) = v24;
  *(&v43[2] + 1) = *v52;
  HIDWORD(v43[2]) = *&v52[3];
  v43[3] = v23;
  memcpy(&v43[4], v42, 0x70uLL);
  v43[18] = KeyPath;
  v43[19] = v25;
  v28 = v35 & 1;
  v30 = v39;
  v29 = v40;
  v32 = v37;
  v31 = v38;
  *v40 = v39;
  v29[1] = v32;
  *(v29 + 16) = v28;
  v29[3] = v31;
  memcpy(v29 + 4, v43, 0xA0uLL);
  v44 = v36;
  v45 = v34;
  v46 = v24;
  *v47 = *v52;
  *&v47[3] = *&v52[3];
  v48 = v23;
  memcpy(v49, v42, sizeof(v49));
  v50 = KeyPath;
  v51 = v25;
  sub_23BA51B84(v30, v32, v27);

  sub_23B989ECC(v43, v41, &qword_27E1A42E8);
  sub_23B979910(&v44, &qword_27E1A42E8);
  sub_23BA51C9C(v30, v32, v27);
}

uint64_t sub_23BBC22A8()
{
  if (sub_23BBDC2A8())
  {
    sub_23BBDBD08();
  }

  else
  {
    sub_23BBDBD38();
    v0 = [objc_opt_self() systemGray5Color];
    sub_23BBDBCA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270);
    sub_23BBDBDE8();
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BBC2394@<X0>(uint64_t a1@<X8>)
{
  sub_23BBC24A0(v1, a1);
  type metadata accessor for SubscriptionOfferViewNoCodeCardHeader.Icon(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  sub_23BBD9D38();
  sub_23BBD9D38();
  v3 = sub_23BBDC318();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4318);
  v7 = a1 + *(result + 36);
  *v7 = v8;
  *(v7 + 8) = 0;
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = v8;
  *(v7 + 56) = 0;
  *(v7 + 64) = v8;
  *(v7 + 72) = 0;
  *(v7 + 80) = v8;
  *(v7 + 88) = 0;
  *(v7 + 89) = 0;
  *(v7 + 96) = v3;
  *(v7 + 104) = v5;
  return result;
}

uint64_t sub_23BBC24A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v84 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4320);
  MEMORY[0x28223BE20](v81);
  v3 = &v65 - v2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4328);
  v76 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = &v65 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4330);
  MEMORY[0x28223BE20](v78);
  v80 = &v65 - v5;
  v74 = sub_23BBDBCC8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDBE48();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBD9968();
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4338);
  MEMORY[0x28223BE20](v79);
  v77 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_23BBD9728();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B989ECC(v84, v15, &qword_27E19C308);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_23B979910(v15, &qword_27E19C308);
    if (qword_27E197658 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_27E1BFBC0);
    (*(v68 + 16))(v11, v20, v9);
    sub_23BBDBE88();
    v22 = v69;
    v21 = v70;
    v23 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277CE0FE0], v71);
    v84 = sub_23BBDBE68();

    (*(v21 + 8))(v22, v23);
    LOBYTE(v21) = sub_23BBDB398();
    sub_23BBD9B18();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    LOBYTE(v86[0]) = 1;
    LOBYTE(v85[0]) = 0;
    v32 = sub_23BBDC318();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EDF0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_23BBE94D0;
    v36 = *MEMORY[0x277CE0EE0];
    v37 = v73;
    v38 = *(v72 + 104);
    v39 = v74;
    v38(v73, v36, v74);
    *(v35 + 32) = sub_23BBDBDB8();
    v38(v37, v36, v39);
    *(v35 + 40) = sub_23BBDBDB8();
    MEMORY[0x23EEB4A00](v35);
    sub_23BBDA0A8();
    v86[0] = v84;
    v86[1] = 0;
    LOWORD(v86[2]) = 1;
    LOBYTE(v86[3]) = v21;
    v86[4] = v25;
    v86[5] = v27;
    v86[6] = v29;
    v86[7] = v31;
    LOBYTE(v86[8]) = 0;
    LOBYTE(v86[9]) = 0;
    v86[10] = v32;
    v86[11] = v34;
    v86[12] = v86[17];
    *&v86[13] = v87;
    *&v86[15] = v88;
    memcpy(v85, v86, sizeof(v85));
    if (qword_27E197648 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4340);
    sub_23BBC44A4();
    v40 = v77;
    sub_23BBDBA28();
    sub_23B979910(v86, &qword_27E1A4340);

    KeyPath = swift_getKeyPath();
    v42 = sub_23BBDBD38();
    v43 = [objc_opt_self() systemGray5Color];
    v44 = sub_23BBDBCA8();
    v85[0] = v42;
    v85[1] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270);
    v85[0] = sub_23BBDBDE8();
    v45 = sub_23BBD9DF8();
    v46 = v80;
    v47 = (v40 + *(v79 + 36));
    *v47 = KeyPath;
    v47[1] = v45;
    sub_23B989ECC(v40, v46, &qword_27E1A4338);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4380);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4388);
    v50 = sub_23B97B518(&qword_27E1A4390, &qword_27E1A4320);
    v51 = sub_23BBC467C();
    v52 = sub_23BBC49E8();
    v85[0] = v81;
    v85[1] = MEMORY[0x277CE1350];
    v85[2] = v48;
    v85[3] = v49;
    v85[4] = v50;
    v85[5] = MEMORY[0x277CE1340];
    v85[6] = v51;
    v85[7] = v52;
    swift_getOpaqueTypeConformance2();
    sub_23BBC4ACC();
    sub_23BBDACD8();
    return sub_23B979910(v40, &qword_27E1A4338);
  }

  else
  {
    v66 = v19;
    v67 = v17;
    (*(v17 + 32))(v19, v15, v16);
    (*(v17 + 16))(v3, v19, v16);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v16);
    v54 = v81;
    v55 = *(v81 + 56);
    *&v3[v55] = swift_getKeyPath();
    v56 = v54[15];
    *&v3[v56] = swift_getKeyPath();
    v57 = &v3[v54[16]];
    *v57 = swift_getKeyPath();
    v57[8] = 0;
    v58 = &v3[v54[13]];
    *v58 = 1;
    v58[16] = 1;
    v59 = sub_23BBDC2B8();
    v77 = &v65;
    MEMORY[0x28223BE20](v59);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4380);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4388);
    v74 = sub_23B97B518(&qword_27E1A4390, &qword_27E1A4320);
    v84 = sub_23BBC467C();
    v64 = sub_23BBC49E8();
    v61 = v75;
    sub_23BBDBC48();
    sub_23B979910(v3, &qword_27E1A4320);
    v62 = v76;
    v63 = v82;
    (*(v76 + 16))(v80, v61, v82);
    swift_storeEnumTagMultiPayload();
    v86[0] = v54;
    v86[1] = MEMORY[0x277CE1350];
    v86[2] = v60;
    v86[3] = v73;
    v86[4] = v74;
    v86[5] = MEMORY[0x277CE1340];
    v86[6] = v84;
    v86[7] = v64;
    swift_getOpaqueTypeConformance2();
    sub_23BBC4ACC();
    sub_23BBDACD8();
    (*(v62 + 8))(v61, v63);
    return (*(v67 + 8))(v66, v16);
  }
}

uint64_t sub_23BBC30B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDB398();
  sub_23B989ECC(a1, a2, &qword_27E1A4320);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A43D8) + 36);
  *v5 = 4;
  *(v5 + 8) = v4;
  sub_23BBDBD18();
  v6 = sub_23BBDBD58();

  if (qword_27E197678 != -1)
  {
    swift_once();
  }

  v7 = qword_27E1BFC08;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A43B8) + 36));
  *v8 = v6;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  KeyPath = swift_getKeyPath();
  v10 = sub_23BBC22A8();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A43A8) + 36));
  *v11 = KeyPath;
  v11[1] = v10;
  v12 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4380);
  v14 = a2 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = 1;
  return result;
}

uint64_t sub_23BBC325C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_23BBDCD08();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23BBD96B8();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15PricePropertiesVMa(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SubscriptionOfferViewNoCodeOfferCard(0);
  v9 = sub_23BBDCC18();
  v11 = v10;
  sub_23BBDCBF8();
  sub_23BBDCC68();
  v12 = sub_23BBDCC08();
  *v8 = v9;
  v8[1] = v11;
  *(v8 + *(v6 + 36)) = v12;
  v13 = sub_23BBDC8E8();
  v15 = v14;
  sub_23BBDCA98();
  sub_23BB72A48();
  (*(v21 + 8))(v2, v23);
  sub_23BAE4520(v13, v15, v4, 1, 1, 0, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);

  (*(v20 + 8))(v4, v22);
  return sub_23BBC3D1C(v8, _s15PricePropertiesVMa);
}

uint64_t sub_23BBC34EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDAB58();
  if (qword_27E197660 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1BFBD8;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4270);
  return sub_23BBC3580(v1, a1 + *(v5 + 44));
}

uint64_t sub_23BBC3580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4278);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4280);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = type metadata accessor for SubscriptionOfferViewNoCodeCardHeader(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v72 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v61 - v20);
  v22 = *(type metadata accessor for SubscriptionOfferViewNoCodeOfferCard(0) + 20);
  v23 = *(v17 + 28);
  v24 = sub_23BBDCDB8();
  (*(*(v24 - 8) + 16))(v21 + v23, a1 + v22, v24);
  sub_23BBC325C(v21 + *(v17 + 32));
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  v71 = v21;
  swift_storeEnumTagMultiPayload();
  sub_23BBDC158();
  LODWORD(v17) = sub_23BBDAF18();
  v25 = sub_23BBDB398();
  v26 = &v6[*(v4 + 44)];
  *v26 = v17;
  v26[4] = v25;
  sub_23BBDC2A8();
  sub_23BBDC318();
  sub_23BBD9DE8();
  sub_23B989918(v6, v12, &qword_27E1A4278);
  v27 = &v12[*(v8 + 44)];
  v28 = v89;
  *v27 = v88;
  *(v27 + 1) = v28;
  *(v27 + 2) = v90;
  v68 = v15;
  sub_23B989918(v12, v15, &qword_27E1A4280);
  sub_23BB749C8();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v29 = qword_27E1BF840;
  v30 = sub_23BBDB648();
  v32 = v31;
  v34 = v33;
  sub_23BBDB568();
  v35 = sub_23BBDB618();
  v37 = v36;
  v39 = v38;

  sub_23BA51C9C(v30, v32, v34 & 1);

  LODWORD(v76[0]) = sub_23BBDAF28();
  v40 = sub_23BBDB5D8();
  v66 = v41;
  v43 = v42;
  v67 = v44;
  sub_23BA51C9C(v35, v37, v39 & 1);

  if (qword_27E197668 != -1)
  {
    swift_once();
  }

  v45 = qword_27E1BFBE0;
  v65 = qword_27E1BFBE8;
  v64 = qword_27E1BFBF0;
  v63 = unk_27E1BFBF8;
  v46 = sub_23BBDB398();
  v47 = v46;
  v62 = v46;
  v48 = v43 & 1;
  LOBYTE(v76[0]) = v48;
  LOBYTE(__src[0]) = 0;
  v49 = v72;
  sub_23BBC3CB8(v71, v72);
  v50 = v68;
  v51 = v69;
  sub_23B989ECC(v68, v69, &qword_27E1A4280);
  v52 = v70;
  sub_23BBC3CB8(v49, v70);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4288);
  sub_23B989ECC(v51, v52 + *(v53 + 48), &qword_27E1A4280);
  v54 = *(v53 + 64);
  __src[0] = v40;
  v55 = v66;
  __src[1] = v66;
  LOBYTE(__src[2]) = v48;
  *(&__src[2] + 1) = *v74;
  HIDWORD(__src[2]) = *&v74[3];
  v61 = v40;
  v56 = v67;
  __src[3] = v67;
  LOBYTE(__src[4]) = v47;
  *(&__src[4] + 1) = *v73;
  HIDWORD(__src[4]) = *&v73[3];
  v57 = v65;
  __src[5] = v45;
  __src[6] = v65;
  v58 = v64;
  v59 = v63;
  __src[7] = v64;
  __src[8] = v63;
  LOBYTE(__src[9]) = 0;
  *(&__src[9] + 1) = 256;
  memcpy((v52 + v54), __src, 0x4BuLL);
  sub_23B989ECC(__src, v76, &qword_27E1A4290);
  sub_23B979910(v50, &qword_27E1A4280);
  sub_23BBC3D1C(v71, type metadata accessor for SubscriptionOfferViewNoCodeCardHeader);
  v76[0] = v61;
  v76[1] = v55;
  v77 = v48;
  *v78 = *v74;
  *&v78[3] = *&v74[3];
  v79 = v56;
  v80 = v62;
  *v81 = *v73;
  *&v81[3] = *&v73[3];
  v82 = v45;
  v83 = v57;
  v84 = v58;
  v85 = v59;
  v86 = 0;
  v87 = 256;
  sub_23B979910(v76, &qword_27E1A4290);
  sub_23B979910(v51, &qword_27E1A4280);
  return sub_23BBC3D1C(v72, type metadata accessor for SubscriptionOfferViewNoCodeCardHeader);
}

uint64_t sub_23BBC3CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewNoCodeCardHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBC3D1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BBC3D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_10_2();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_23BBD96B8();
      v12 = *(a3 + 24);
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_23BBC3E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_23BBD96B8();
      v14 = *(a4 + 24);
    }

    v11 = v5 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_23BBC3F64()
{
  sub_23BBC433C(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23BBDCDB8();
    if (v1 <= 0x3F)
    {
      sub_23BBD96B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BBC40B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BBC4114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

uint64_t sub_23BBC41D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v11 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_23BBC4288()
{
  sub_23BBC433C(319, qword_27E1A3F08, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23B9D4C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BBC433C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23BBC43A4()
{
  result = qword_27E1A4300;
  if (!qword_27E1A4300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A42B8);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40);
    sub_23B97B518(&qword_27E1A4308, &qword_27E1A4310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4300);
  }

  return result;
}

unint64_t sub_23BBC44A4()
{
  result = qword_27E1A4348;
  if (!qword_27E1A4348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4340);
    sub_23BBC455C();
    sub_23B97B518(&qword_27E1A4370, &qword_27E1A4378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4348);
  }

  return result;
}

unint64_t sub_23BBC455C()
{
  result = qword_27E1A4350;
  if (!qword_27E1A4350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4358);
    sub_23BBC45E8();
    sub_23BBAFAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4350);
  }

  return result;
}

unint64_t sub_23BBC45E8()
{
  result = qword_27E1A4360;
  if (!qword_27E1A4360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4368);
    sub_23B9AA45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4360);
  }

  return result;
}

unint64_t sub_23BBC467C()
{
  result = qword_27E1A4398;
  if (!qword_27E1A4398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4380);
    sub_23BBC4734();
    sub_23B97B518(&qword_27E1A4400, &qword_27E1A4408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4398);
  }

  return result;
}

unint64_t sub_23BBC4734()
{
  result = qword_27E1A43A0;
  if (!qword_27E1A43A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A43A8);
    sub_23BBC47EC();
    sub_23B97B518(&qword_27E1A43F0, &qword_27E1A43F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A43A0);
  }

  return result;
}

unint64_t sub_23BBC47EC()
{
  result = qword_27E1A43B0;
  if (!qword_27E1A43B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A43B8);
    sub_23BBC4878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A43B0);
  }

  return result;
}

unint64_t sub_23BBC4878()
{
  result = qword_27E1A43C0;
  if (!qword_27E1A43C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A43C8);
    sub_23BBC4904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A43C0);
  }

  return result;
}

unint64_t sub_23BBC4904()
{
  result = qword_27E1A43D0;
  if (!qword_27E1A43D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A43D8);
    sub_23B97B518(&qword_27E1A4390, &qword_27E1A4320);
    sub_23B97B518(&qword_27E1A43E0, &qword_27E1A43E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A43D0);
  }

  return result;
}

unint64_t sub_23BBC49E8()
{
  result = qword_27E1A4410;
  if (!qword_27E1A4410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4388);
    sub_23B97B518(&qword_27E1A4390, &qword_27E1A4320);
    sub_23B97B518(&qword_27E1A4418, &qword_27E1A4420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4410);
  }

  return result;
}

unint64_t sub_23BBC4ACC()
{
  result = qword_27E1A4428;
  if (!qword_27E1A4428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4338);
    sub_23BBC4B84();
    sub_23B97B518(&qword_27E1A43F0, &qword_27E1A43F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4428);
  }

  return result;
}

unint64_t sub_23BBC4B84()
{
  result = qword_27E1A4430;
  if (!qword_27E1A4430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4438);
    sub_23BBC44A4();
    sub_23BBC40B0(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4430);
  }

  return result;
}

unint64_t sub_23BBC4C5C()
{
  result = qword_27E1A4440;
  if (!qword_27E1A4440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4318);
    sub_23BBC4CE8();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4440);
  }

  return result;
}

unint64_t sub_23BBC4CE8()
{
  result = qword_27E1A4448;
  if (!qword_27E1A4448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4450);
    sub_23BBC4D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4448);
  }

  return result;
}

unint64_t sub_23BBC4D6C()
{
  result = qword_27E1A4458;
  if (!qword_27E1A4458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1A4460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4388);
    sub_23B97B518(&qword_27E1A4390, &qword_27E1A4320);
    sub_23BBC467C();
    sub_23BBC49E8();
    swift_getOpaqueTypeConformance2();
    sub_23BBC4ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4458);
  }

  return result;
}

uint64_t sub_23BBC4ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v12 = *(v4 + 16);
  v12(v17 - v13, a1, a2, v11);
  if (swift_dynamicCast())
  {
    (*(v4 + 8))(a1, a2);
    return v17[1];
  }

  else
  {
    (v12)(v9, a1, a2);
    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19BC78);
      inited = swift_initStaticObject();
    }

    else
    {
      type metadata accessor for SubscriptionStoreControlStyleBox();
      (v12)(v6, a1, a2);
      inited = sub_23BBC50D4(v6);
    }

    v14 = inited;
    (*(v4 + 8))(a1, a2);
  }

  return v14;
}

uint64_t sub_23BBC5110@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(*a1 + 80))(v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_23BBDC0D8();
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  *a2 = v7;
  return result;
}

uint64_t sub_23BBC5268()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BBC5370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 112);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, &v2[*(v5 + 128)], v9, v11);
  sub_23B9C990C(a1, v8);
  a2[3] = type metadata accessor for SubscriptionStoreControl();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_23BB1AEA0(v13, v8, v9, boxed_opaque_existential_1);
}

uint64_t sub_23BBC5518(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v4 + 16))(&v11 - v6, v1 + *(v8 + 128), v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A44E8);
  if (swift_dynamicCast())
  {
    v9 = a1 != 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A44F0);
    if (swift_dynamicCast())
    {
      v9 = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A44F8);
      if (swift_dynamicCast())
      {
        v9 = 2;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A4500);
        if (swift_dynamicCast())
        {
          v9 = 0;
        }

        else
        {
          v9 = 3;
        }
      }
    }
  }

  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_23BBC57CC()
{
  v0 = sub_23BBC575C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23BBC5870(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LOBYTE(v13) = a1 & 1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  BYTE8(v14) = a4 & 1;
  *&v15 = a5;
  *(&v15 + 1) = a6;
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v10 = _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0();

  MEMORY[0x23EEB43C0](v12, a7, v10, a9);
  return (*(*(v10 - 8) + 8))(&v13, v10);
}

uint64_t sub_23BBC5940(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MagicPocketSetterModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  MEMORY[0x23EEB43C0](v15, a3, v11, v17);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23BBC5AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[1] = a1;
  v22[2] = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4588);
  v9 = sub_23BBDA358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v22 - v15;
  (*(v6 + 16))(v8, v4, v5, v14);
  v22[5] = sub_23BBDC0D8();
  WitnessTable = swift_getWitnessTable();
  sub_23BBC6188();
  sub_23BBDB6F8();

  v18 = sub_23B97B518(&qword_27E1A4598, &qword_27E1A4588);
  v22[3] = WitnessTable;
  v22[4] = v18;
  v19 = swift_getWitnessTable();
  sub_23B9D2D88(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_23B9D2D88(v16, v9, v19);
  return (v20)(v16, v9);
}

uint64_t sub_23BBC5DC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BBC5F14(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BBC6118);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

unint64_t sub_23BBC6188()
{
  result = qword_27E1A4590;
  if (!qword_27E1A4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4590);
  }

  return result;
}

uint64_t sub_23BBC61EC()
{
  type metadata accessor for MagicPocketSetterModifier();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4588);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1A4598, &qword_27E1A4588);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BBC62C0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = v2[24];
  v16 = *(v2 + 2);
  v8 = swift_allocObject();
  v17 = *(a2 + 16);
  *(v8 + 16) = v17;
  *(v8 + 32) = v16;

  swift_getWitnessTable();
  v9 = sub_23BBDAE98();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23BBC6188();
  sub_23BBD3E00(&type metadata for MagicPocketContentPreferenceKey, v4, v5, v6, v7, sub_23BBC67A4, v8, v9, &v19, &type metadata for MagicPocketContentPreferenceKey, v17, WitnessTable, v11, *(&v17 + 1));

  v18[0] = v19;
  v18[1] = v20;
  sub_23BBDAF88();
  swift_getWitnessTable();
  sub_23BBDAAC8();
  v12 = sub_23BBDA358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = sub_23BBDAF78();
  v14 = swift_getWitnessTable();
  sub_23B9D2D88(v18, v13, v14);

  v19 = &type metadata for MagicPocketContentPreferenceKey;
  v20 = v12;
  sub_23B9D2D88(&v19, v13, v14);
}

void *sub_23BBC6578(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = v5;
  if (v5)
  {

    *a1 = v4;
  }

  return result;
}

uint64_t sub_23BBC65C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B97B518(qword_27E1A45A0, &qword_27E199950);

  return MEMORY[0x282130CA8](a1, a2, v4);
}

uint64_t sub_23BBC6660()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BBC669C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_23BBC66DC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_23BBC676C()
{

  return swift_deallocObject();
}

uint64_t sub_23BBC67D0()
{
  _s17_StoreKit_SwiftUI26MagicPocketApplierModifierVMa_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  sub_23BBC6188();
  sub_23BBDAF88();
  swift_getWitnessTable();
  sub_23BBDAAC8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  sub_23BBDAF78();
  return swift_getWitnessTable();
}

uint64_t sub_23BBC691C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a4;
  v21[1] = a3;
  v22 = a2;
  v9 = a1;
  v10 = *(a7 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &type metadata for StoreKitViewsFeature;
  v27 = sub_23B9C7F48();
  v25[0] = v9;
  v18 = sub_23BBD9888();
  v19 = __swift_destroy_boxed_opaque_existential_1(v25);
  if (v18)
  {
    v22(v19);
    OUTLINED_FUNCTION_0_63();
    sub_23BA82D64();
    return (*(v15 + 8))(v17, a6);
  }

  else
  {
    v24(v19);
    OUTLINED_FUNCTION_0_63();
    sub_23BA82E14();
    return (*(v10 + 8))(v13, a7);
  }
}

_BYTE *storeEnumTagSinglePayload for StoreKitViewsFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BBC6BC8);
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

uint64_t sub_23BBC6C00()
{
  result = sub_23BBDACE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BBC6C70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 32) - 8) + 64);
  if (v3 <= *(*(*(a3 + 24) - 8) + 64))
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_23BBC6DB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (*(*(*(a4 + 32) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 32) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23BBC6F88);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
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
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_23BBC6FCC()
{
  result = qword_27E1A46A8;
  if (!qword_27E1A46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46A8);
  }

  return result;
}

const char *sub_23BBC7034(char a1)
{
  if (!a1)
  {
    return "SubscriptionPickerViewPreferencesImplementation";
  }

  if (a1 == 1)
  {
    return "SubscriptionPoliciesAttributedStringImplementation";
  }

  return "PrefersInvertedPrimaryLabelColorOverTintStyle";
}

uint64_t sub_23BBC70E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDACE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23BBC7804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 240);
  v4 = *(a1 + 80);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v4;
  return v3(v8);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStoreViewDetails.ButtonLabelStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x23BBC7A30);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBC7AA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_8(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_8(v8);
}

_BYTE *sub_23BBC7B2C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_28_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_25_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBC7BE8);
      case 4:
        result = OUTLINED_FUNCTION_26_14(result, v6);
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
          result = OUTLINED_FUNCTION_7_30(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBC7C20(uint64_t a1)
{
  sub_23B9A9318();
  v2 = sub_23BBDCE38();
  v3 = *(a1 + 64);
  v15 = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = *(*(a1 + 48) + v10);
    sub_23B9F4E64(*(a1 + 56) + 32 * v10, &v14);
    v13[0] = v11;
    sub_23BBC8210(&v15, v13);
    v6 &= v6 - 1;
    sub_23B979910(v13, &qword_27E1A4788);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v15;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_23B979910(v13, &qword_27E1A4788);

  __break(1u);
  return result;
}

uint64_t sub_23BBC7DAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_23B9A9318();
  v8 = sub_23BBDCE38();
  v9 = *(a1 + 64);
  v21 = v8;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;

  for (i = 0; v12; i = v15)
  {
    v15 = i;
LABEL_8:
    v16 = __clz(__rbit64(v12)) | (v15 << 6);
    v17 = *(*(a1 + 48) + v16);
    sub_23B9F4E64(*(a1 + 56) + 32 * v16, &v20);
    v19[0] = v17;
    sub_23BBC7F38(&v21, v19, a2, a3, a4);
    v12 &= v12 - 1;
    sub_23B979910(v19, a2);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v21;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++i;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_23B979910(v19, a2);

  __break(1u);
  return result;
}

uint64_t sub_23BBC7F38(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_23B99FCE0(a2, &v20, a3);
  v7 = v20;
  sub_23BBCB940(&v21, v22);
  sub_23B9F4E64(v22, &v20);
  sub_23B9A9318();
  if (swift_dynamicCast())
  {
    v8 = a5(v7);
    v10 = v9;
    v11 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    sub_23BBCBCD0(v11, v8, v10);

    *a1 = v20;
  }

  else
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_5_48();
      swift_once();
    }

    v12 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v12, qword_27E1BFC88);
    v20 = 0;
    *&v21 = 0xE000000000000000;
    sub_23BBDD768();

    sub_23B9F4E64(v22, &v20);
    v13 = sub_23BBDD038();
    MEMORY[0x23EEB5890](v13);

    MEMORY[0x23EEB5890](0xD000000000000010, 0x800000023BBE36A0);
    v14 = sub_23BBDD5A8();

    v15 = sub_23BBD9988();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v20);
      *(v16 + 12) = 2082;
      v17 = sub_23BA5AB90(0xD000000000000018, 0x800000023BBE3680, &v20);

      *(v16 + 14) = v17;
      _os_log_impl(&dword_23B970000, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31_10();
      MEMORY[0x23EEB6DC0]();
      OUTLINED_FUNCTION_31_10();
      MEMORY[0x23EEB6DC0]();
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_23BBC8210(uint64_t *a1, uint64_t a2)
{
  sub_23B99FCE0(a2, &v16, &qword_27E1A4788);
  v3 = v16;
  sub_23BBCB940(&v17, v18);
  sub_23B9F4E64(v18, &v16);
  sub_23B9A9318();
  if (swift_dynamicCast())
  {
    v4 = 0x6573616863727570;
    v5 = 0xEF64657472617453;
    switch(v3)
    {
      case 1:
        v5 = 0x800000023BBDF6E0;
        v4 = 0xD000000000000011;
        break;
      case 2:
        v5 = 0xEF776569566E4974;
        v4 = 0x6E657053656D6974;
        break;
      case 3:
        v5 = 0xEE00746C75736552;
        break;
      default:
        break;
    }

    v13 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_23BBCBCD0(v13, v4, v5);

    *a1 = v16;
  }

  else
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v6, qword_27E1BFC88);
    v16 = 0;
    *&v17 = 0xE000000000000000;
    sub_23BBDD768();

    sub_23B9F4E64(v18, &v16);
    v7 = sub_23BBDD038();
    MEMORY[0x23EEB5890](v7);

    MEMORY[0x23EEB5890](0xD000000000000010, 0x800000023BBE36A0);
    v8 = sub_23BBDD5A8();

    v9 = sub_23BBD9988();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v16);
      *(v10 + 12) = 2082;
      v12 = sub_23BA5AB90(0xD000000000000018, 0x800000023BBE3680, &v16);

      *(v10 + 14) = v12;
      _os_log_impl(&dword_23B970000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v11, -1, -1);
      MEMORY[0x23EEB6DC0](v10, -1, -1);
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

_OWORD *sub_23BBC859C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23BBCB940(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_23BBCBE0C(v11, a2, isUniquelyReferenced_nonNull_native, sub_23BB03B00, &qword_27E1A4718);
    *v2 = v9;
  }

  else
  {
    sub_23B979910(a1, &unk_27E19FEE0);
    v6 = sub_23BB03B00(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4718);
      sub_23BBDD8D8();
      sub_23BBCB940((*(v10 + 56) + 32 * v8), v11);
      sub_23BBCC674();
      sub_23BBDD8F8();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_23B979910(v11, &unk_27E19FEE0);
  }

  return result;
}

_OWORD *sub_23BBC8710(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23BBCB940(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_23BBCBE0C(v11, a2, isUniquelyReferenced_nonNull_native, sub_23BB03B2C, &qword_27E1A4760);
    *v2 = v9;
  }

  else
  {
    sub_23B979910(a1, &unk_27E19FEE0);
    v6 = sub_23BB03B2C(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4760);
      sub_23BBDD8D8();
      sub_23BBCB940((*(v10 + 56) + 32 * v8), v11);
      sub_23BBCC818();
      sub_23BBDD8F8();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_23B979910(v11, &unk_27E19FEE0);
  }

  return result;
}

_OWORD *sub_23BBC8884(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23BBCB940(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_23BBCBE0C(v11, a2, isUniquelyReferenced_nonNull_native, sub_23BB03B58, &qword_27E1A4790);
    *v2 = v9;
  }

  else
  {
    sub_23B979910(a1, &unk_27E19FEE0);
    v6 = sub_23BB03B58(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4790);
      sub_23BBDD8D8();
      sub_23BBCB940((*(v10 + 56) + 32 * v8), v11);
      sub_23BBCC96C();
      sub_23BBDD8F8();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_23B979910(v11, &unk_27E19FEE0);
  }

  return result;
}

_OWORD *sub_23BBC89F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23BBCB940(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_23BBCBE0C(v11, a2, isUniquelyReferenced_nonNull_native, sub_23BB03BC4, &qword_27E1A4748);
    *v2 = v9;
  }

  else
  {
    sub_23B979910(a1, &unk_27E19FEE0);
    v6 = sub_23BB03BC4(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4748);
      sub_23BBDD8D8();
      sub_23BBCB940((*(v10 + 56) + 32 * v8), v11);
      sub_23BBCC7C4();
      sub_23BBDD8F8();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_23B979910(v11, &unk_27E19FEE0);
  }

  return result;
}

_OWORD *sub_23BBC8B6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23BBCB940(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_23BBCBE0C(v11, a2, isUniquelyReferenced_nonNull_native, sub_23BB03BF0, &qword_27E1A4730);
    *v2 = v9;
  }

  else
  {
    sub_23B979910(a1, &unk_27E19FEE0);
    v6 = sub_23BB03BF0(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4730);
      sub_23BBDD8D8();
      sub_23BBCB940((*(v10 + 56) + 32 * v8), v11);
      sub_23BBCC6E8();
      sub_23BBDD8F8();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_23B979910(v11, &unk_27E19FEE0);
  }

  return result;
}

void sub_23BBC8CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6B0);
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_7();
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_23B979910(a1, &qword_27E19A6B0);
    sub_23BBCBA90(a2, a3, v12);

    sub_23B979910(v12, &qword_27E19A6B0);
  }

  else
  {
    sub_23BBCC86C(a1, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    sub_23BBCBF48(v4, a2, a3);

    *v5 = v16;
  }

  OUTLINED_FUNCTION_110();
}

_OWORD *sub_23BBC8E60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23BBCB940(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    result = sub_23BBCBE0C(v11, a2, isUniquelyReferenced_nonNull_native, sub_23BB03C1C, &qword_27E1A4700);
    *v2 = v9;
  }

  else
  {
    sub_23B979910(a1, &unk_27E19FEE0);
    v6 = sub_23BB03C1C(a2);
    if (v7)
    {
      v8 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4700);
      sub_23BBDD8D8();
      sub_23BBCB940((*(v10 + 56) + 32 * v8), v11);
      sub_23BBCC464();
      sub_23BBDD8F8();
      *v2 = v10;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    return sub_23B979910(v11, &unk_27E19FEE0);
  }

  return result;
}

unint64_t sub_23BBC8FD4(char a1)
{
  result = 0x7542646568736168;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_54_5();
      break;
    case 2:
      result = OUTLINED_FUNCTION_37_7(22);
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23BBC909C()
{
  OUTLINED_FUNCTION_10_0();
  v51 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_23BBDCE08();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_23BBDCDF8();
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_39_7();
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v17 = sub_23BBDD018();
    v19 = v18;

    sub_23BB02B28(v17, v19);
    OUTLINED_FUNCTION_6_40();
    sub_23BBCC73C(v20, v21);
    sub_23BBDCDE8();
    v22 = OUTLINED_FUNCTION_43_7();
    sub_23B9A93B4(v22, v23);
    v24 = OUTLINED_FUNCTION_43_7();
    sub_23BB05734(v24, v25);
    v26 = OUTLINED_FUNCTION_43_7();
    sub_23B9A940C(v26, v27);
    sub_23BBDCDD8();
    (*(v8 + 8))(v12, v6);
    v28 = OUTLINED_FUNCTION_43_7();
    sub_23B9A940C(v28, v29);
    sub_23BB02FE4(v0);

    sub_23BBD97D8();
    v30 = OUTLINED_FUNCTION_0_14();
    sub_23B9A940C(v30, v31);
  }

  v32 = OUTLINED_FUNCTION_22_20();
  v33 = sub_23BBC859C(v32, 0);
  if (v3)
  {

    sub_23BB02B28(v5, v3);
    OUTLINED_FUNCTION_6_40();
    sub_23BBCC73C(v34, v35);
    sub_23BBDCDE8();
    v36 = OUTLINED_FUNCTION_0_14();
    sub_23B9A93B4(v36, v37);
    v38 = OUTLINED_FUNCTION_0_14();
    sub_23BB05734(v38, v39);
    v40 = OUTLINED_FUNCTION_0_14();
    sub_23B9A940C(v40, v41);
    sub_23BBDCDD8();
    (*(v8 + 8))(v12, v6);
    v42 = OUTLINED_FUNCTION_0_14();
    sub_23B9A940C(v42, v43);
    v44 = sub_23BB02FE4(v0);
    v46 = v45;
    sub_23BBD97D8();
    sub_23B9A940C(v44, v46);
    v47 = OUTLINED_FUNCTION_22_20();
    v33 = sub_23BBC859C(v47, 1);
  }

  if (v51 != 2)
  {
    v48 = OUTLINED_FUNCTION_14_32(v51 & 1);
    v33 = sub_23BBC859C(v48, 2);
  }

  if ((v51 & 0xFF00) != 0x200)
  {
    v49 = OUTLINED_FUNCTION_14_32(BYTE1(v51) & 1);
    v33 = sub_23BBC859C(v49, 3);
  }

  if ((v51 & 0xFF0000) != 0x20000)
  {
    v50 = OUTLINED_FUNCTION_14_32(BYTE2(v51) & 1);
    v33 = sub_23BBC859C(v50, 4);
  }

  OUTLINED_FUNCTION_38_7(v33, &qword_27E1A4710, &unk_23BC06F78);
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_9_1();
}

_BYTE *sub_23BBC9488()
{
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_4_47();
    sub_23BBC8710(v1, 0);
  }

  OUTLINED_FUNCTION_3_50();
  sub_23BBC8710(v2, 1);
  OUTLINED_FUNCTION_4_47();
  sub_23BBC8710(v3, 2);
  if ((v0[16] & 1) == 0)
  {
    OUTLINED_FUNCTION_3_50();
    sub_23BBC8710(v4, 3);
  }

  OUTLINED_FUNCTION_3_50();
  sub_23BBC8710(v5, 4);
  OUTLINED_FUNCTION_3_50();
  sub_23BBC8710(v6, 5);
  OUTLINED_FUNCTION_4_47();
  sub_23BBC8710(v7, 7);
  OUTLINED_FUNCTION_4_47();
  v9 = sub_23BBC8710(v8, 6);
  OUTLINED_FUNCTION_38_7(v9, &qword_27E1A4758, &unk_23BC06FB0);
  OUTLINED_FUNCTION_24_19();
  return v0;
}

uint64_t sub_23BBC95BC()
{
  v45 = MEMORY[0x277D84F98];
  v1 = type metadata accessor for MintDisappearBaseEvent(0);
  v9 = v1;
  v10 = *(v0 + *(v1 + 24));
  if (*(v0 + *(v1 + 28)) != 1)
  {
    if (v10 == 4)
    {
      v13 = OUTLINED_FUNCTION_8_44(v1, v2, v3, v4, v5, v6, v7, v8, v43, 0);
      v14 = sub_23BBC8884(v13, 0);
      v11 = OUTLINED_FUNCTION_8_44(v14, v15, v16, v17, v18, v19, v20, v21, v44, 0);
    }

    else
    {
      OUTLINED_FUNCTION_4_47();
      v23 = sub_23BBC8884(v22, 0);
      v11 = OUTLINED_FUNCTION_8_44(v23, v24, v25, v26, v27, v28, v29, v30, v43, v10 == 1);
    }

    v12 = 1;
    goto LABEL_8;
  }

  if (v10 != 4)
  {
    v11 = OUTLINED_FUNCTION_8_44(v1, v2, v3, v4, v5, v6, v7, v8, v43, v10 + 1);
    v12 = 3;
LABEL_8:
    sub_23BBC8884(v11, v12);
  }

  v31 = v0 + *(v9 + 20);
  v32 = sub_23BBD97F8();
  v41 = OUTLINED_FUNCTION_8_44(v32, v33, v34, v35, v36, v37, v38, v39, v43, v40);
  sub_23BBC8884(v41, 2);
  sub_23BBC7C20(v45);
  OUTLINED_FUNCTION_24_19();
  return v31;
}

uint64_t sub_23BBC96F0()
{
  OUTLINED_FUNCTION_54_3();
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BBC9734(char a1)
{
  sub_23BBDDBB8();
  sub_23BB025A0(v3, a1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBC9780(uint64_t a1)
{
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x23EEB63A0](a1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BBC97C0(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_54_3();
  a2(a1);
  sub_23BBDD078();

  return sub_23BBDDBF8();
}

uint64_t sub_23BBC9824(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x23EEB63A0](a1 + 1);
  return sub_23BBDDBF8();
}

void sub_23BBC9868()
{
  OUTLINED_FUNCTION_54_5();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 7:
      return;
    case 4:
      OUTLINED_FUNCTION_12_34();
      break;
    default:
      OUTLINED_FUNCTION_25_9();
      break;
  }
}

void sub_23BBC9978(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 7:
      return;
    case 3:
      OUTLINED_FUNCTION_13_35();
      break;
    case 4:
      OUTLINED_FUNCTION_37_7(17);
      break;
    case 5:
      OUTLINED_FUNCTION_20_23();
      break;
    case 6:
      OUTLINED_FUNCTION_35_10(17);
      break;
    default:
      OUTLINED_FUNCTION_25_9();
      break;
  }
}

void sub_23BBC9A58()
{
  OUTLINED_FUNCTION_10_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2190);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_39_7();
  v31 = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D839B0];
  v30 = MEMORY[0x277D839B0];
  LOBYTE(v29) = 0;
  v11 = OUTLINED_FUNCTION_22_20();
  sub_23BBC89F8(v11, 0);
  v12 = *v0;
  if (v12 != 2)
  {
    v30 = v10;
    v13 = OUTLINED_FUNCTION_14_32(v12 & 1);
    sub_23BBC89F8(v13, 1);
  }

  v14 = type metadata accessor for ProductViewBaseEvent(0);
  sub_23B99FCE0(&v0[v14[6]], v5, &qword_27E1A2190);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  v16 = MEMORY[0x277D83B88];
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v5, &qword_27E1A2190);
  }

  else
  {
    (*(v8 + 32))(v1, v5, v6);
    sub_23BBCA3C8();
    v30 = v16;
    v29 = v17;
    v18 = OUTLINED_FUNCTION_22_20();
    sub_23BBC89F8(v18, 2);
    (*(v8 + 8))(v1, v6);
  }

  v19 = OUTLINED_FUNCTION_45_8(v0[1]);
  sub_23BBC89F8(v19, 3);
  v20 = v0[v14[7]];
  v30 = v10;
  v21 = OUTLINED_FUNCTION_14_32(v20);
  sub_23BBC89F8(v21, 4);
  v22 = OUTLINED_FUNCTION_45_8(v0[v14[8]]);
  sub_23BBC89F8(v22, 5);
  v23 = v0[v14[9]];
  v30 = v10;
  v24 = OUTLINED_FUNCTION_14_32(v23);
  sub_23BBC89F8(v24, 6);
  v25 = v0[v14[10]];
  v30 = v10;
  v26 = OUTLINED_FUNCTION_14_32(v25);
  v27 = sub_23BBC89F8(v26, 7);
  OUTLINED_FUNCTION_38_7(v27, &qword_27E1A4740, &unk_23BC06FA0);
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_9_1();
}

void sub_23BBC9CD8()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v3 = sub_23BBDCE08();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_39_7();
  v7 = sub_23BBDCDF8();
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v54 = MEMORY[0x277D84F98];
  v12 = type metadata accessor for MintViewBasePurchaseEvent(0);
  if (*(v0 + v12[5]) == 3)
  {
    v13 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  else
  {
    LOBYTE(v50) = *(v0 + v12[5]);
    v13 = &type metadata for MintAnalyticsSubscriptionOfferType;
  }

  v53 = v13;
  v14 = OUTLINED_FUNCTION_22_20();
  sub_23BBC8B6C(v14, 0);
  v15 = *(v0 + v12[9] + 8);
  if (v15)
  {

    v16 = OUTLINED_FUNCTION_16_4();
    sub_23BB02B28(v16, v17);
    OUTLINED_FUNCTION_6_40();
    sub_23BBCC73C(v18, v19);
    sub_23BBDCDE8();
    v20 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v20, v21);
    v22 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v22, v23);
    v24 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v24, v25);
    sub_23BBDCDD8();
    (*(v5 + 8))(v1, v3);
    v26 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v26, v27);
    v28 = sub_23BB02FE4(v11);
    v30 = v29;
    v15 = sub_23BBD97D8();
    v32 = v31;
    sub_23B9A940C(v28, v30);
    v33 = MEMORY[0x277D837D0];
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v52 = 0;
  }

  v50 = v15;
  v51 = v32;
  v53 = v33;
  v34 = OUTLINED_FUNCTION_22_20();
  sub_23BBC8B6C(v34, 1);
  v35 = v2 + v12[8];
  v36 = MEMORY[0x277D83B88];
  if ((*(v35 + 8) & 1) == 0)
  {
    v37 = *v35;
    v53 = MEMORY[0x277D83B88];
    v50 = v37;
    sub_23BBC8B6C(&v50, 2);
  }

  v38 = *(v2 + v12[7]) + 1;
  v53 = v36;
  v50 = v38;
  sub_23BBC8B6C(&v50, 3);
  sub_23BBD97F8();
  v53 = MEMORY[0x277D839F8];
  v50 = v39;
  v40 = OUTLINED_FUNCTION_22_20();
  sub_23BBC8B6C(v40, 4);
  v41 = *(v2 + v12[10]);
  v42 = MEMORY[0x277D839B0];
  if (v41 != 2)
  {
    v53 = MEMORY[0x277D839B0];
    v43 = OUTLINED_FUNCTION_14_32(v41 & 1);
    sub_23BBC8B6C(v43, 5);
  }

  OUTLINED_FUNCTION_46_5();
  if (!v45)
  {
    v53 = v42;
    v46 = OUTLINED_FUNCTION_14_32(v44 & 1);
    sub_23BBC8B6C(v46, 6);
  }

  OUTLINED_FUNCTION_46_5();
  if (!v45)
  {
    v53 = v42;
    v49 = OUTLINED_FUNCTION_14_32(v48 & 1);
    v47 = sub_23BBC8B6C(v49, 7);
  }

  OUTLINED_FUNCTION_38_7(v47, &qword_27E1A4728, &unk_23BC06F88);
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23BBCA03C(char a1)
{
  result = 0x696C616974696E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_36_6(24);
      break;
    case 3:
      result = 0x73746375646F7270;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = OUTLINED_FUNCTION_20_23();
      break;
    case 6:
      result = 0x49796E4173657375;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_23BBCA150()
{
  if (*v0 != 6)
  {
    OUTLINED_FUNCTION_0_64();
    sub_23BBC8E60(v1, 0);
  }

  if (*(v0 + 1) != 6)
  {
    OUTLINED_FUNCTION_0_64();
    sub_23BBC8E60(v2, 1);
  }

  if (*(v0 + 2) != 3)
  {
    OUTLINED_FUNCTION_0_64();
    sub_23BBC8E60(v3, 2);
  }

  OUTLINED_FUNCTION_2_51();
  sub_23BBC8E60(v4, 3);
  if (*(v0 + 4) != 2)
  {
    OUTLINED_FUNCTION_2_51();
    sub_23BBC8E60(v5, 4);
  }

  OUTLINED_FUNCTION_2_51();
  sub_23BBC8E60(v6, 5);
  if (*(v0 + 6) != 2)
  {
    OUTLINED_FUNCTION_2_51();
    sub_23BBC8E60(v7, 6);
  }

  OUTLINED_FUNCTION_2_51();
  sub_23BBC8E60(v8, 7);
  if (*(v0 + 8) != 2)
  {
    OUTLINED_FUNCTION_2_51();
    sub_23BBC8E60(v9, 8);
  }

  OUTLINED_FUNCTION_0_64();
  sub_23BBC8E60(v10, 9);
  if ((*(v0 + 24) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_66();
    sub_23BBC8E60(v11, 10);
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_66();
    sub_23BBC8E60(v12, 11);
  }

  if (*(v0 + 41) != 3)
  {
    OUTLINED_FUNCTION_0_64();
    sub_23BBC8E60(v13, 12);
  }

  if (*(v0 + 42) != 3)
  {
    OUTLINED_FUNCTION_0_64();
    sub_23BBC8E60(v14, 13);
  }

  OUTLINED_FUNCTION_2_51();
  sub_23BBC8E60(v15, 14);
  v16 = *(v0 + 48);
  if (v16)
  {
    v16 = sub_23BB170A4(v16);
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_8_44(v16, v17, v18, v19, v20, v21, v22, v23, v26, v16);
      v16 = sub_23BBC8E60(v24, 15);
    }
  }

  OUTLINED_FUNCTION_38_7(v16, &qword_27E1A46F8, &unk_23BC06F68);
  OUTLINED_FUNCTION_24_19();
  return v0;
}

uint64_t sub_23BBCA338@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 3;
  v2 = type metadata accessor for PurchaseConfigurationEvent(0);
  v3 = v2[8];
  v4 = sub_23BBDC9B8();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  *(a1 + v2[9]) = 0;
  result = sub_23BBD9818();
  v6 = (a1 + v2[11]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + v2[12];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

void sub_23BBCA3C8()
{
  sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_49_0();
  v5(v4);
  sub_23BBDC858();
  sub_23BBCC73C(&qword_27E1987F8, MEMORY[0x277CDD168]);
  v6 = OUTLINED_FUNCTION_15_30();
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_48_10();
  v7(v8);
  if (v6 & 1) != 0 || (sub_23BBDC888(), v10 = OUTLINED_FUNCTION_15_30(), v11 = OUTLINED_FUNCTION_48_10(), v7(v11), (v10) || (sub_23BBDC878(), v12 = OUTLINED_FUNCTION_15_30(), v13 = OUTLINED_FUNCTION_48_10(), v7(v13), (v12))
  {
    v9 = OUTLINED_FUNCTION_16_4();
    v7(v9);
  }

  else
  {
    sub_23BBDC868();
    v14 = OUTLINED_FUNCTION_15_30();
    v15 = OUTLINED_FUNCTION_48_10();
    v7(v15);
    v16 = OUTLINED_FUNCTION_16_4();
    v7(v16);
    if ((v14 & 1) == 0)
    {
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_5_48();
        swift_once();
      }

      v17 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v17, qword_27E1BFC88);
      sub_23BBDD768();

      v23[1] = 0x800000023BBE36C0;
      v18 = sub_23BBDC898();
      MEMORY[0x23EEB5890](v18);

      v19 = sub_23BBDD5A8();

      v20 = sub_23BBD9988();

      if (os_log_type_enabled(v20, v19))
      {
        v21 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        *v21 = 136446466;
        *(v21 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v23);
        *(v21 + 12) = 2082;
        v22 = sub_23BA5AB90(0xD00000000000001ALL, 0x800000023BBE36C0, v23);

        *(v21 + 14) = v22;
        _os_log_impl(&dword_23B970000, v20, v19, "%{public}s%{public}s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_31_10();
        MEMORY[0x23EEB6DC0]();
        OUTLINED_FUNCTION_31_10();
        MEMORY[0x23EEB6DC0]();
      }

      else
      {
      }
    }
  }

  OUTLINED_FUNCTION_110();
}

void sub_23BBCA774()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = sub_23BBDCBA8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  (*(v4 + 16))(&v27 - v10, v1, v2, v9);
  sub_23BBDCB88();
  sub_23BBCC73C(&qword_27E19D2B8, MEMORY[0x277CDD280]);
  v11 = OUTLINED_FUNCTION_17_20();
  v12 = *(v4 + 8);
  v12(v7, v2);
  if (v11 & 1) != 0 || (sub_23BBDCB78(), v15 = OUTLINED_FUNCTION_17_20(), v12(v7, v2), (v15))
  {
    v13 = OUTLINED_FUNCTION_49_0();
    (v12)(v13);
    v14 = OUTLINED_FUNCTION_61_0();
    (v12)(v14);
  }

  else
  {
    sub_23BBDCB98();
    v16 = OUTLINED_FUNCTION_17_20();
    v12(v7, v2);
    v17 = OUTLINED_FUNCTION_61_0();
    (v12)(v17);
    if (v16)
    {
      v18 = OUTLINED_FUNCTION_49_0();
      (v12)(v18);
    }

    else
    {
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_5_48();
        swift_once();
      }

      v19 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v19, qword_27E1BFC88);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000026, 0x800000023BBE36E0);
      sub_23BBDD8B8();
      v21 = v27;
      v20 = v28;
      v22 = sub_23BBDD5A8();

      v23 = sub_23BBD9988();

      if (os_log_type_enabled(v23, v22))
      {
        v24 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v24 = 136446466;
        *(v24 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v27);
        *(v24 + 12) = 2082;
        v25 = sub_23BA5AB90(v21, v20, &v27);

        *(v24 + 14) = v25;
        _os_log_impl(&dword_23B970000, v23, v22, "%{public}s%{public}s", v24, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_31_10();
        MEMORY[0x23EEB6DC0]();
        OUTLINED_FUNCTION_31_10();
        MEMORY[0x23EEB6DC0]();
      }

      else
      {
      }

      v26 = OUTLINED_FUNCTION_49_0();
      (v12)(v26);
    }
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BBCAB34(char a1)
{
  result = 0x746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x646172676E776F64;
      break;
    case 2:
      result = 0x61726773736F7263;
      break;
    case 3:
      result = 0x65646172677075;
      break;
    case 4:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23BBCABE0(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 14:
    case 15:
      return;
    case 4:
      OUTLINED_FUNCTION_36_6(18);
      break;
    case 9:
      OUTLINED_FUNCTION_13_35();
      break;
    case 12:
      OUTLINED_FUNCTION_35_10(18);
      break;
    default:
      OUTLINED_FUNCTION_25_9();
      break;
  }
}

uint64_t sub_23BBCAE04()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCAE90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCAE04();
  *a1 = result;
  return result;
}

unint64_t sub_23BBCAEC0()
{
  v1 = OUTLINED_FUNCTION_18_26();
  result = sub_23BBC8FD4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23BBCAEE8()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCAF28(char a1)
{
  result = 0x6573616863727570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = OUTLINED_FUNCTION_12_34();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BBCAFD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCAEE8();
  *a1 = result;
  return result;
}

uint64_t sub_23BBCB008()
{
  v1 = OUTLINED_FUNCTION_18_26();
  result = sub_23BBCAF28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23BBCB030()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCB0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCB030();
  *a1 = result;
  return result;
}

void sub_23BBCB0EC()
{
  v1 = OUTLINED_FUNCTION_18_26();
  sub_23BBC9978(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_23BBCB114()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCB1A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCB114();
  *a1 = result;
  return result;
}

unint64_t sub_23BBCB1D0()
{
  v1 = OUTLINED_FUNCTION_18_26();
  result = sub_23BBCA03C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23BBCB1F8()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCB284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCB1F8();
  *a1 = result;
  return result;
}

void sub_23BBCB2B4()
{
  OUTLINED_FUNCTION_18_26();
  sub_23BBC9868();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_23BBCB2DC()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCB31C(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_23BBCB340(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_23BBCB360(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_23BBCB388()
{
  OUTLINED_FUNCTION_23_19();
  sub_23BBDDA08();
  OUTLINED_FUNCTION_24_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23BBCB3C8(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_23BBCB438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCB2DC();
  *a1 = result;
  return result;
}

void sub_23BBCB468()
{
  v1 = OUTLINED_FUNCTION_18_26();
  sub_23BBCABE0(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_23BBCB4AC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BBCB31C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BBCB4D8()
{
  v1 = OUTLINED_FUNCTION_18_26();
  result = sub_23BB516E4(v1);
  *v0 = result;
  return result;
}

uint64_t sub_23BBCB500@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BBCB340(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BBCB52C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BBCB360(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BBCB5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BBCB388();
  *a1 = result;
  return result;
}

uint64_t sub_23BBCB5D4()
{
  v1 = OUTLINED_FUNCTION_18_26();
  result = sub_23BBCAB34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23BBCB5FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BBCB3C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23BBCB62C()
{
  result = qword_27E1A46B0;
  if (!qword_27E1A46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46B0);
  }

  return result;
}

unint64_t sub_23BBCB684()
{
  result = qword_27E1A46B8;
  if (!qword_27E1A46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46B8);
  }

  return result;
}

unint64_t sub_23BBCB6DC()
{
  result = qword_27E1A46C0;
  if (!qword_27E1A46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46C0);
  }

  return result;
}

unint64_t sub_23BBCB734()
{
  result = qword_27E1A46C8;
  if (!qword_27E1A46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46C8);
  }

  return result;
}

unint64_t sub_23BBCB78C()
{
  result = qword_27E1A46D0;
  if (!qword_27E1A46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46D0);
  }

  return result;
}

unint64_t sub_23BBCB7E4()
{
  result = qword_27E1A46D8;
  if (!qword_27E1A46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46D8);
  }

  return result;
}

unint64_t sub_23BBCB83C()
{
  result = qword_27E1A46E0;
  if (!qword_27E1A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46E0);
  }

  return result;
}

unint64_t sub_23BBCB894()
{
  result = qword_27E1A46E8;
  if (!qword_27E1A46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46E8);
  }

  return result;
}

unint64_t sub_23BBCB8EC()
{
  result = qword_27E1A46F0;
  if (!qword_27E1A46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A46F0);
  }

  return result;
}

_OWORD *sub_23BBCB940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23BBCB950()
{
  v1 = v0;
  v2 = sub_23BBDC9B8();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277CDD1D8])
  {
    v10 = 1;
  }

  else
  {
    if (v9 == *MEMORY[0x277CDD1C8])
    {
      return 0;
    }

    if (v9 == *MEMORY[0x277CDD1D0])
    {
      return 2;
    }

    v10 = 0;
  }

  (*(v4 + 8))(v8, v2);
  return v10;
}

uint64_t sub_23BBCBA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_23BB03A88(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4770);
    sub_23BBDD8D8();

    v8 = *(v14 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
    sub_23BBCC86C(v8 + *(*(v9 - 8) + 72) * v7, a3);
    sub_23BBDD8F8();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_23BBCBBDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23BB03CD0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4830);
  sub_23BBDD8D8();
  sub_23BAC5FF8(*(v8 + 48) + 40 * v5);
  v6 = *(*(v8 + 56) + 24 * v5);
  sub_23BBDD8F8();
  *v2 = v8;
  return v6;
}

void sub_23BBCBCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23BB03A88(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010);
  if ((sub_23BBDD8D8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_23BB03A88(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_23BBDDAE8();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_23BBCC41C(v11, a2, a3, a1, v15);
  }
}

_OWORD *sub_23BBCBE0C(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5)
{
  a4(a2);
  OUTLINED_FUNCTION_11_33();
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  if ((sub_23BBDD8D8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = (a4)(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_23BBDDAE8();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if ((v14 & 1) == 0)
  {
    return sub_23BBCC55C(v13, a2, a1, v17);
  }

  v18 = (v17[7] + 32 * v13);
  __swift_destroy_boxed_opaque_existential_1(v18);

  return sub_23BBCB940(a1, v18);
}

uint64_t sub_23BBCBF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23BB03A88(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4770);
  if ((sub_23BBDD8D8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_23BB03A88(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_23BBDDAE8();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = v16 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0) - 8) + 72) * v11;

    return sub_23BBCC8DC(a1, v17);
  }

  else
  {
    sub_23BBCC4B8(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_23BBCC0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BB03A88(a2, a3);
  OUTLINED_FUNCTION_11_33();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4778);
  if ((OUTLINED_FUNCTION_49_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = OUTLINED_FUNCTION_61_0();
  v14 = sub_23BB03A88(v12, v13);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_23BBDDAE8();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  v16 = *v3;
  if (v11)
  {
    *(v16[7] + 8 * v10) = a1;
    OUTLINED_FUNCTION_110();
  }

  else
  {
    sub_23BBCC41C(v10, a2, a3, a1, v16);
    OUTLINED_FUNCTION_110();
  }
}

void sub_23BBCC1C0(char a1, uint64_t a2, uint64_t a3)
{
  sub_23BB03A88(a2, a3);
  OUTLINED_FUNCTION_11_33();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4780);
  if ((OUTLINED_FUNCTION_49_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = OUTLINED_FUNCTION_49_0();
  v14 = sub_23BB03A88(v12, v13);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_23BBDDAE8();
    __break(1u);
    return;
  }

  v10 = v14;
LABEL_5:
  v16 = *v3;
  if (v11)
  {
    *(v16[7] + v10) = a1 & 1;
    OUTLINED_FUNCTION_110();
  }

  else
  {
    sub_23BBCC5C4(v10, a2, a3, a1 & 1, v16);
    OUTLINED_FUNCTION_110();
  }
}

unint64_t sub_23BBCC2C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_23BB03CD0(a4);
  OUTLINED_FUNCTION_11_33();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4830);
  if ((sub_23BBDD8D8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_23BB03CD0(a4);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_23BBDDAE8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = v16[7] + 24 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3 & 1;

    return sub_23B979A38(v18, v19, v20);
  }

  else
  {
    sub_23B97933C(a4, v22);
    return sub_23BBCC60C(v12, v22, a1, a2, a3 & 1, v16);
  }
}

unint64_t sub_23BBCC41C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_23BBCC464()
{
  result = qword_27E1A4708;
  if (!qword_27E1A4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4708);
  }

  return result;
}

uint64_t sub_23BBCC4B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  result = sub_23BBCC86C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_23BBCC55C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_23BBCB940(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_23BBCC5C4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_23BBCC60C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = a6[7] + 24 * result;
  *v8 = a3;
  *(v8 + 8) = a4;
  *(v8 + 16) = a5 & 1;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_23BBCC674()
{
  result = qword_27E1A4720;
  if (!qword_27E1A4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4720);
  }

  return result;
}

unint64_t sub_23BBCC6E8()
{
  result = qword_27E1A4738;
  if (!qword_27E1A4738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4738);
  }

  return result;
}

uint64_t sub_23BBCC73C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BBCC7C4()
{
  result = qword_27E1A4750;
  if (!qword_27E1A4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4750);
  }

  return result;
}

unint64_t sub_23BBCC818()
{
  result = qword_27E1A4768;
  if (!qword_27E1A4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4768);
  }

  return result;
}

uint64_t sub_23BBCC86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BBCC8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BBCC96C()
{
  result = qword_27E1A4798;
  if (!qword_27E1A4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4798);
  }

  return result;
}

uint64_t sub_23BBCC9C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_8(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_8(v8);
}

_BYTE *sub_23BBCCA44(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_28_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_25_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBCCB00);
      case 4:
        result = OUTLINED_FUNCTION_26_14(result, v6);
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
          result = OUTLINED_FUNCTION_7_30(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBCCB4C()
{
  OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 84) == v1)
  {

    return __swift_getEnumTagSinglePayload(v0, v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_46_5();
    if (v6)
    {
      return OUTLINED_FUNCTION_42_9(v5);
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BBCCBF8()
{
  OUTLINED_FUNCTION_1_57();
  sub_23BBD9828();
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0 + 1;
  }
}

void sub_23BBCCC84()
{
  sub_23BBD9828();
  if (v0 <= 0x3F)
  {
    sub_23B9989D8(319, &qword_27E1A47B0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23BBCCD34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 35))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 2);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_23BBCCD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23BBCCE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2190);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  else
  {
    OUTLINED_FUNCTION_46_5();
    if (v12)
    {
      return OUTLINED_FUNCTION_42_9(v11);
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BBCCEE4()
{
  OUTLINED_FUNCTION_1_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2190);
  OUTLINED_FUNCTION_10_2();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1 + *(v2 + 24);

    __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0 + 1;
  }
}

void sub_23BBCCF8C()
{
  sub_23B9989D8(319, &qword_27E198818);
  if (v0 <= 0x3F)
  {
    sub_23BBCD758(319, &qword_27E1A2180, MEMORY[0x277CDD168]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BBCD05C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_8(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_8(v8);
}

_BYTE *sub_23BBCD0E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_28_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_25_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBCD19CLL);
      case 4:
        result = OUTLINED_FUNCTION_26_14(result, v6);
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
          result = OUTLINED_FUNCTION_7_30(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBCD1E8()
{
  OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_3_43(*(v0 + *(v2 + 36) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_23BBCD28C()
{
  OUTLINED_FUNCTION_1_57();
  sub_23BBD9828();
  OUTLINED_FUNCTION_10_2();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 36) + 8) = v0;
  }
}

uint64_t sub_23BBCD31C()
{
  v0 = sub_23BBD9828();
  if (v1 <= 0x3F)
  {
    sub_23B9989D8(319, &qword_27E1A47D8);
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      sub_23B9989D8(319, &qword_27E1A3B70);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_23B9989D8(319, &qword_27E197B20);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_23B9989D8(319, &qword_27E198818);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_23BBCD474(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2A0);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[8];
  }

  else
  {
    if (a2 == 2147483646)
    {
      return OUTLINED_FUNCTION_3_43(*(a1 + a3[9]));
    }

    v8 = sub_23BBD9828();
    v9 = a3[10];
  }

  return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
}

void sub_23BBCD554()
{
  OUTLINED_FUNCTION_1_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2A0);
  OUTLINED_FUNCTION_10_2();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v2[8];
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + v2[9]) = v0;
      return;
    }

    v6 = sub_23BBD9828();
    v7 = v2[10];
  }

  __swift_storeEnumTagSinglePayload(v1 + v7, v0, v0, v6);
}

void sub_23BBCD61C()
{
  sub_23B9989D8(319, &qword_27E1A47D8);
  if (v0 <= 0x3F)
  {
    sub_23BBCD758(319, &qword_27E1A47F0, MEMORY[0x277CDD1E0]);
    if (v1 <= 0x3F)
    {
      sub_23BBCD7AC();
      if (v2 <= 0x3F)
      {
        sub_23BBD9828();
        if (v3 <= 0x3F)
        {
          sub_23B9989D8(319, &qword_27E197B20);
          if (v4 <= 0x3F)
          {
            sub_23B9989D8(319, &qword_27E1A3B70);
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

void sub_23BBCD758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23BBCD7AC()
{
  if (!qword_27E1A47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A450);
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A47F8);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_23BBCD824(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 19))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_23BBCD878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23BBCD8E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_8(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_8((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_8(v8);
}

_BYTE *sub_23BBCD964(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_28_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_25_12(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BBCDA20);
      case 4:
        result = OUTLINED_FUNCTION_26_14(result, v6);
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
          result = OUTLINED_FUNCTION_7_30(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BBCDA58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_23BBCDAAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreViewBaseEvent.PayloadKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStoreViewBaseEvent.PayloadKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x23BBCDC70);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BBCDCAC()
{
  result = qword_27E1A4800;
  if (!qword_27E1A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4800);
  }

  return result;
}

unint64_t sub_23BBCDD04()
{
  result = qword_27E1A4808;
  if (!qword_27E1A4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4808);
  }

  return result;
}

unint64_t sub_23BBCDD5C()
{
  result = qword_27E1A4810;
  if (!qword_27E1A4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4810);
  }

  return result;
}

unint64_t sub_23BBCDDB4()
{
  result = qword_27E1A4818;
  if (!qword_27E1A4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4818);
  }

  return result;
}

unint64_t sub_23BBCDE0C()
{
  result = qword_27E1A4820;
  if (!qword_27E1A4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4820);
  }

  return result;
}

unint64_t sub_23BBCDE64()
{
  result = qword_27E1A4828;
  if (!qword_27E1A4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4828);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_30()
{

  return sub_23BBDCF38();
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_23BBDCF38();
}

uint64_t OUTLINED_FUNCTION_24_19()
{
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t a1, uint64_t *a2, uint64_t a3)
{

  return sub_23BBC7DAC(v4, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_45_8@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 120) = a1 + 1;
  return v2 - 120;
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_23BBDD8D8();
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return sub_23BBD9828();
}

uint64_t sub_23BBCE1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ProductViewBaseEvent(0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_23BBCE268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ProductViewBaseEvent(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProductViewAppearanceEvent()
{
  result = qword_27E1A4838;
  if (!qword_27E1A4838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BBCE334()
{
  result = type metadata accessor for ProductViewBaseEvent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BBCE3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v35 = a6;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  MEMORY[0x28223BE20](v19);
  v30 = &v29 - v20;
  MEMORY[0x28223BE20](v21);
  v38 = &v29 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_23BBDDAA8();
  v29 = v8;
  sub_23BBDDA58();
  v36 = a5;
  sub_23BBCE7C4(v31, a4, a5, v15);
  v23 = *(*(*(a5 + 16) + 16) + 8);
  sub_23BBDD3E8();
  v24 = *(v10 + 8);
  v24(v15, a4);
  v24(v18, a4);
  sub_23BBDDAA8();
  sub_23BBDDA58();
  v25 = v32;
  sub_23BBCE7C4(v33, a4, v36, v32);
  sub_23BBDD3E8();
  v24(v25, a4);
  v24(v15, a4);
  v33 = *(v23 + 8);
  v26 = v30;
  sub_23BBDD918();
  v24(v18, a4);
  v24(v26, a4);
  sub_23BBDDAA8();
  sub_23BBDDA58();
  sub_23BBCE7C4(v34, a4, v36, v15);
  sub_23BBDD3E8();
  v24(v15, a4);
  v24(v18, a4);
  v27 = v38;
  sub_23BBDD918();
  v24(v26, a4);
  return (v24)(v27, a4);
}

uint64_t sub_23BBCE7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v22 = &v21 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_23BBDDAA8();
  sub_23BBDDA58();
  v23 = a3;
  v24 = a1;
  v16 = *(a3 + 16);
  v17 = sub_23BBDCED8();
  v18 = *(v7 + 8);
  v18(v14, a2);
  sub_23BBDDAA8();
  sub_23BBDDA58();
  if (v17)
  {
    sub_23BBDCE48();
  }

  else
  {
    v21 = v16;
    v19 = v22;
    sub_23BBDD918();
    v18(v9, a2);
    sub_23BBDDAA8();
    sub_23BBDDA58();
    sub_23BBDCE48();
    v18(v9, a2);
    v18(v19, a2);
    sub_23BBDDAA8();
    sub_23BBDDA58();
    (*(v23 + 24))(v14, v19, a2);
    v18(v19, a2);
  }

  return (v18)(v14, a2);
}

uint64_t sub_23BBCEB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBCE3B0(v8, v9, v10, v11, v12, v7);
  sub_23BBCEC7C(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_23BBCEC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBCE3B0(v9, v10, v11, v12, v13, v8);
  if (sub_23BBDCEB8())
  {
    v14 = a1;
    v15 = v8;
  }

  else
  {
    v14 = v8;
    v15 = a1;
  }

  sub_23BBCEDA0(v14, v15, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23BBCEDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  swift_getAssociatedConformanceWitness();
  sub_23BBDDAA8();
  sub_23BBDDA58();
  sub_23BBDD918();
  sub_23BBDD918();
  sub_23BBDCE48();
  v16 = *(v6 + 8);
  v16(v9, a3);
  v16(v12, a3);
  return (v16)(v15, a3);
}

uint64_t sub_23BBCEFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v37 = a6;
  v38 = a2;
  v39 = a5;
  v40 = a7;
  v35[2] = a4;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v35[0] = v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v35 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v35 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v35 - v27;
  v35[1] = v29;
  (*(v29 + 24))(v35 - v27, v24, v21, v18, v26);
  v30 = *(v8 + 8);
  v30(v18, a3);
  v31 = v12;
  v32 = v36;
  (*(v37 + 24))(v18, v15, v31, v36, v39);
  v30(v32, a3);
  swift_getAssociatedConformanceWitness();
  v33 = v35[0];
  sub_23BBCEB78(v28, a3, v40);
  v30(v33, a3);
  v30(v15, a3);
  v30(v18, a3);
  v30(v21, a3);
  v30(v24, a3);
  return (v30)(v28, a3);
}

uint64_t sub_23BBCF2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return sub_23BBCEFE8(v5, a1, AssociatedTypeWitness, a2, a3, a4, a5);
}

uint64_t sub_23BBCF358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v118 = a8;
  v115 = a3;
  v104 = a2;
  v94 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v117 = a6;
  v116 = a4;
  v15 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v102 = &v89 - v17;
  v114 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v131 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v89 - v20;
  OUTLINED_FUNCTION_3_2();
  v108 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  v122 = &v89 - v26;
  OUTLINED_FUNCTION_3_2();
  v95 = v27;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  v130 = &v89 - v29;
  v91 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v90 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  v121 = &v89 - v33;
  v123 = a5;
  v124 = a7;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v93 = v36;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v89 - v38;
  v40 = AssociatedTypeWitness;
  v132 = v15;
  v41 = swift_getTupleTypeMetadata2();
  v129 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  v127 = v41;
  v128 = &v89 - v46;
  __swift_storeEnumTagSinglePayload(&v89 - v46, 1, 1, v41);
  v119 = a1;
  sub_23BBDD478();
  v125 = v39;
  sub_23BBDD188();
  v126 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = (v95 + 32);
  v113 = v131 + 16;
  v112 = v131 + 8;
  v110 = v43 + 16;
  v48 = v122;
  v105 = (v108 + 8);
  v107 = (v43 + 8);
  v101 = v21;
  v109 = (v108 + 32);
  v98 = (v95 + 8);
  v97 = (v95 + 32);
  v96 = v40;
  while (1)
  {
    v49 = v121;
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v49, 1, v40) == 1)
    {
      break;
    }

    v131 = *v47;
    (v131)(v130, v49, v40);
    v50 = sub_23BBDD558();
    OUTLINED_FUNCTION_14_28();
    v51 = v114;
    v52(v21);
    v50(v133, 0);
    sub_23BBCF2BC(v21, v116, v51, v118, v48);
    OUTLINED_FUNCTION_14_28();
    v53(v21, v51);
    swift_getAssociatedConformanceWitness();
    if (sub_23BBDCEB8())
    {
      OUTLINED_FUNCTION_14_28();
      v82(v122, v132);
      v83 = OUTLINED_FUNCTION_5_49();
      v84(v83);
      (v131)(v94, v130, v40);
      v78 = v128;
      v81 = v129;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_14_28();
    v54 = v111;
    v56 = v128;
    v55 = v129;
    v57(v111, v128, v129);
    v58 = v127;
    if (__swift_getEnumTagSinglePayload(v54, 1, v127) == 1)
    {
      v59 = *v107;
      (*v107)(v54, v55);
      v59(v56, v55);
      v60 = *(v58 + 48);
      (v131)(v56, v130, v40);
      v48 = v122;
      (*v109)(v56 + v60, v122, v132);
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
    }

    else
    {
      v108 = *(v58 + 48);
      v61 = TupleTypeMetadata2;
      v62 = *(TupleTypeMetadata2 + 48);
      v63 = v102;
      (v131)(v102, v54, v40);
      v64 = *v109;
      v65 = &v63[v62];
      v66 = v132;
      (*v109)(v65, &v108[v54], v132);
      v67 = &v63[*(v61 + 48)];
      v68 = v99;
      v108 = v64;
      (v64)(v99, v67, v66);
      v106 = *v98;
      v106(v63, v40);
      v69 = v100;
      v48 = v122;
      sub_23BBDD3E8();
      LOBYTE(v63) = sub_23BBDCEB8();
      v70 = *v105;
      (*v105)(v69, v66);
      v70(v68, v66);
      if (v63)
      {
        OUTLINED_FUNCTION_14_28();
        v71 = v128;
        v72(v128, v129);
        v73 = v127;
        v74 = *(v127 + 48);
        v40 = v96;
        v75 = v97;
        (v131)(v71, v130, v96);
        (v108)(v71 + v74, v48, v132);
        __swift_storeEnumTagSinglePayload(v71, 0, 1, v73);
        v21 = v101;
        v47 = v75;
      }

      else
      {
        v70(v48, v132);
        v40 = v96;
        v106(v130, v96);
        v21 = v101;
        v47 = v97;
      }
    }
  }

  v76 = OUTLINED_FUNCTION_5_49();
  v77(v76);
  v78 = v128;
  if (__swift_getEnumTagSinglePayload(v128, 1, v127))
  {
    v79 = v92;
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v40);
    sub_23BBDD438();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v40);
    v81 = v129;
    if (EnumTagSinglePayload != 1)
    {
      (*(v90 + 8))(v79, v91);
    }
  }

  else
  {
    v85 = v95 + 16;
    v86 = v92;
    (*(v95 + 16))(v92, v78, v40);
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v40);
    (*(v85 + 16))(v94, v86, v40);
    v81 = v129;
  }

LABEL_14:
  OUTLINED_FUNCTION_14_28();
  return v87(v78, v81);
}

uint64_t sub_23BBCFEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BBCFF98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionOfferViewAXTypeStyleButtonSpacer()
{
  result = qword_27E1A4848;
  if (!qword_27E1A4848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BBD006C()
{
  sub_23B9D2354();
  if (v0 <= 0x3F)
  {
    sub_23B9D4C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BBD010C(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v7, 0);
    (*(v4 + 8))(v6, v3);
    if (v12 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    type metadata accessor for SubscriptionOfferViewAXTypeStyleButtonSpacer();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    sub_23BBD9D38();
    v8 = v11;
    v9 = 0x10000;
    goto LABEL_6;
  }

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 0;
  v9 = 512;
LABEL_6:
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 10) = BYTE2(v9);
}

uint64_t sub_23BBD02C0()
{
  sub_23BA240DC();

  return sub_23BBDA958();
}

uint64_t sub_23BBD0308(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_23BA240DC();
  return sub_23BBDA968();
}

double static SubscriptionStoreButtonLabel.automatic.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

uint64_t View.subscriptionStoreButtonLabel(_:)()
{
  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_6_41(v4);
  OUTLINED_FUNCTION_6_41(v3);
  sub_23B9E6BA4(v4, __dst);
  MEMORY[0x23EEB43C0](v3, v1, &type metadata for SubscriptionStoreButtonLabelModifier, v0);
  memcpy(__dst, v3, 0x49uLL);
  return sub_23BBD03FC(__dst);
}

void static SubscriptionStoreButtonLabel.singleLine.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  OUTLINED_FUNCTION_1_67(a1, 0);
}

uint64_t sub_23BBD04A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 0:
      return !v2;
    case 1:
      return v2 == 1;
    case 2:
      return v2 == 2;
    case 3:
      return v2 == 3;
    default:
      if (v2 < 4)
      {
        return 0;
      }

      v4 = *(a1 + 40);
      v5 = *(a2 + 40);
      if ((sub_23BBDAA68() & 1) == 0)
      {
        return 0;
      }

      if (v4)
      {
        if (v5)
        {
          v6 = OUTLINED_FUNCTION_3_51();
          sub_23B9E711C(v6, v7);
          v8 = OUTLINED_FUNCTION_2_52();
          sub_23B9E711C(v8, v9);
          v10 = sub_23BBDAA68();

          v11 = OUTLINED_FUNCTION_2_52();
          sub_23B9E67A8(v11, v12);
          return (v10 & 1) != 0;
        }

LABEL_18:
        v13 = OUTLINED_FUNCTION_3_51();
        sub_23B9E711C(v13, v14);
        v15 = OUTLINED_FUNCTION_2_52();
        sub_23B9E711C(v15, v16);
        v17 = OUTLINED_FUNCTION_2_52();
        sub_23B9E67A8(v17, v18);
        v19 = OUTLINED_FUNCTION_3_51();
        sub_23B9E67A8(v19, v20);
        return 0;
      }

      if (v5)
      {
        goto LABEL_18;
      }

      return 1;
  }
}

uint64_t StoreContent.subscriptionStoreButtonLabel(_:)()
{
  OUTLINED_FUNCTION_5_50();
  OUTLINED_FUNCTION_6_41(v5);
  OUTLINED_FUNCTION_6_41(__src);
  sub_23BA25274();
  sub_23BB6B068(__src, v0, &type metadata for SubscriptionStoreButtonLabelModifier, v1);
  memcpy(__dst, __src, 0x49uLL);
  sub_23B9E6BA4(v5, &v3);
  return sub_23BBD03FC(__dst);
}

void static SubscriptionStoreButtonLabel.multiline.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0u;
  OUTLINED_FUNCTION_1_67(a1, 0);
}

uint64_t sub_23BBD06F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v9[0] = *(v2 + 8);
  v3 = v9[0];
  v9[1] = v4;
  v6 = *(v2 + 56);
  v10 = *(v2 + 40);
  v5 = v10;
  v11 = v6;
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 24) = v4;
  *(a2 + 40) = v5;
  *(a2 + 56) = v6;
  *(a2 + 72) = 0;
  return sub_23BBD046C(v9, &v8);
}

uint64_t static SubscriptionStoreButtonLabel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[72];
  v3 = a2[72];
  if (sub_23BBD04A4((a1 + 8), (a2 + 8)))
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SubscriptionStoreButtonLabel.hash(into:)()
{
  MEMORY[0x23EEB63A0](*v0);
  sub_23BBD0AF0();
  return sub_23BBDDBD8();
}

uint64_t SubscriptionStoreButtonLabel.hashValue.getter()
{
  v1 = *v0;
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](v1);
  sub_23BBD0AF0();
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BBD08A0()
{
  sub_23BBDDBB8();
  SubscriptionStoreButtonLabel.hash(into:)();
  return sub_23BBDDBF8();
}

uint64_t sub_23BBD08E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, 0x49uLL);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  memcpy((v6 + 16), v2, 0x49uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A48C0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A48C8) + 36));
  *v8 = KeyPath;
  v8[1] = sub_23BBD1244;
  v8[2] = v6;
  return sub_23BBD124C(__dst, &v10);
}

char *sub_23BBD09EC(char *__src, uint64_t a2)
{
  v3 = __src;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 72);
  if (*a2 || (*(a2 + 72) & 1) != 0)
  {
    *&__srca[7] = *(__src + 8);
    *&__srca[23] = *(__src + 24);
    *&__srca[39] = *(__src + 40);
    *&__srca[55] = *(__src + 56);
    *__src = v4;
    __src = memcpy(__src + 1, __srca, 0x47uLL);
    v3[72] = 0;
  }

  v11 = *(a2 + 24);
  v12 = *(a2 + 40);
  v13 = *(a2 + 56);
  if (v6 || (v7 & 1) != 0)
  {
    memcpy(__dst, v3, 0x49uLL);
    sub_23B9E64A4(__dst);
    *v3 = __dst[0];
    *(v3 + 1) = v5;
    *(v3 + 2) = v6;
    *(v3 + 24) = v11;
    *(v3 + 40) = v12;
    *(v3 + 56) = v13;
    v3[72] = 0;
    return sub_23BBD124C(a2, v8);
  }

  return __src;
}

uint64_t sub_23BBD0AF0()
{
  switch(*(v0 + 8))
  {
    case 0:
      v1 = 0;
      goto LABEL_6;
    case 1:
      v1 = 1;
      goto LABEL_6;
    case 2:
      v1 = 2;
      goto LABEL_6;
    case 3:
      v1 = 3;
LABEL_6:
      result = MEMORY[0x23EEB63A0](v1);
      break;
    default:
      v3 = *(v0 + 40);
      MEMORY[0x23EEB63A0](4);

      sub_23BBDD038();
      sub_23BBDD078();

      if (v3)
      {

        sub_23BBDD038();
        sub_23BBDDBD8();
        sub_23BBDD078();
      }

      else
      {
        result = sub_23BBDDBD8();
      }

      break;
  }

  return result;
}

uint64_t sub_23BBD0C80()
{
  sub_23BBDDBB8();
  sub_23BBD0AF0();
  return sub_23BBDDBF8();
}

unint64_t sub_23BBD0CCC()
{
  result = qword_27E1A48A8;
  if (!qword_27E1A48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A48A8);
  }

  return result;
}

uint64_t sub_23BBD0D20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BBD0D4C()
{
  sub_23BBDA358();
  sub_23BA25274();
  return swift_getWitnessTable();
}

uint64_t sub_23BBD0DB0()
{
  sub_23BA25274();
  type metadata accessor for ModifiedStoreContent();
  return swift_getWitnessTable();
}

_BYTE *sub_23BBD0E14(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BBD0EE0);
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

uint64_t sub_23BBD0F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 64))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BBD0F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double sub_23BBD0FCC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23BBD100C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFB && *(a1 + 73))
    {
      v2 = *a1 + 2147483643;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 4;
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

uint64_t sub_23BBD1060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 2147483644;
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_23BBD10D4()
{
  sub_23BBDDBB8();
  sub_23BBD0AF0();
  return sub_23BBDDBF8();
}

unint64_t sub_23BBD1118()
{
  result = qword_27E1A48B0;
  if (!qword_27E1A48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A48B0);
  }

  return result;
}

unint64_t sub_23BBD1170()
{
  result = qword_27E1A48B8;
  if (!qword_27E1A48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A48B8);
  }

  return result;
}

uint64_t sub_23BBD11E8()
{
  if (*(v0 + 32) >= 4uLL)
  {

    if (*(v0 + 64))
    {
    }
  }

  return swift_deallocObject();
}

unint64_t sub_23BBD1298()
{
  result = qword_27E1A48D0;
  if (!qword_27E1A48D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A48C8);
    sub_23B97B518(&qword_27E1A48D8, &qword_27E1A48C0);
    sub_23B97B518(&qword_27E1A48E0, &qword_27E1A48E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A48D0);
  }

  return result;
}

double sub_23BBD137C()
{
  byte_27E1A4858 = 0;
  result = 0.0;
  unk_27E1A4860 = 0u;
  unk_27E1A4870 = 0u;
  unk_27E1A4880 = 0u;
  unk_27E1A4890 = 0u;
  byte_27E1A48A0 = 1;
  return result;
}

uint64_t sub_23BBD13A8@<X0>(void *a1@<X8>)
{
  if (qword_27E197850 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &byte_27E1A4858, 0x49uLL);
  memcpy(a1, &byte_27E1A4858, 0x49uLL);
  return sub_23B9E6BA4(__dst, &v3);
}

uint64_t sub_23BBD1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BBD0CCC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double OUTLINED_FUNCTION_0_65@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_67(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 24) = a2;
  *(a1 + 40) = a2;
  *(a1 + 56) = a2;
  *(a1 + 72) = 0;
}

void *OUTLINED_FUNCTION_6_41(void *a1)
{

  return memcpy(a1, v1, 0x49uLL);
}

uint64_t sub_23BBD1524()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BA0C794();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t SubscriptionStorePickerOptionProminentPlatterStyle.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_23BBD15B0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BA0C794();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t SubscriptionStorePickerOptionPlatterStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = sub_23BBDB308();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BC8);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20[-v14 - 8];
  (*(v4 + 16))(v8, a1, v2, v13);
  sub_23BBDBFB8();
  v20[0] = 0;
  KeyPath = swift_getKeyPath();
  v22 = 0;
  v23 = swift_getKeyPath();
  v24 = 0;
  v25 = swift_getKeyPath();
  v26 = 0;
  v27 = swift_getKeyPath();
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B298);
  OUTLINED_FUNCTION_1_68();
  sub_23B97B518(v16, &qword_27E198BC8);
  OUTLINED_FUNCTION_0_66();
  sub_23B97B518(v17, &qword_27E19B298);
  sub_23BBDB738();
  sub_23BBD1C54(v20);
  return (*(v11 + 8))(v15, v9);
}

uint64_t SubscriptionStorePickerOptionProminentPlatterStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v34 = v5;
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  v9 = sub_23BBDB308();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BC8);
  OUTLINED_FUNCTION_7();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v34 - v21;
  v23 = *v2;
  v24 = *(v2 + 8);
  (*(v11 + 16))(v15, a1, v9, v20);
  sub_23BBDBFB8();
  if (v24 != 1)
  {

    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v23, 0);
    (*(v34 + 8))(v8, v35);
    LOBYTE(v23) = v37[0];
  }

  v37[0] = v23 & 1;
  KeyPath = swift_getKeyPath();
  v39 = 0;
  v40 = swift_getKeyPath();
  v41 = 0;
  v42 = swift_getKeyPath();
  v43 = 0;
  v44 = swift_getKeyPath();
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B298);
  OUTLINED_FUNCTION_1_68();
  sub_23B97B518(v26, v27);
  OUTLINED_FUNCTION_0_66();
  sub_23B97B518(v28, &qword_27E19B298);
  v29 = v36;
  sub_23BBDB738();
  sub_23BBD1C54(v37);
  (*(v18 + 8))(v22, v16);
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = 2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A48F0);
  v33 = (v29 + *(result + 36));
  *v33 = v30;
  v33[1] = sub_23B99B524;
  v33[2] = v31;
  return result;
}

uint64_t sub_23BBD1BFC()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB8BA00();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BBD1C24()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB8BA00();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23BBD1C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStorePickerOptionPlatterStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BBD1DA8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BBD1DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B298);
  OUTLINED_FUNCTION_1_68();
  sub_23B97B518(v0, &qword_27E198BC8);
  OUTLINED_FUNCTION_0_66();
  sub_23B97B518(v1, &qword_27E19B298);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BBD1EC4()
{
  result = qword_27E1A48F8;
  if (!qword_27E1A48F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A48F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B298);
    sub_23B97B518(&qword_27E198BD0, &qword_27E198BC8);
    sub_23B97B518(&qword_27E19B2A0, &qword_27E19B298);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A48F8);
  }

  return result;
}

uint64_t sub_23BBD2090(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_23BBD2164(a4, &v15);
  v17[0] = a1;
  v17[1] = a2;
  v18 = a3;
  if (v16)
  {
    sub_23B98473C(&v15, &v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  v19 = v12;
  v20 = v13;
  v21 = v14;

  MEMORY[0x23EEB43C0](v17, a5, &type metadata for LocalizedErrorAlertModifier, a6);
  return sub_23BBD21D4(v17);
}

uint64_t sub_23BBD2164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI27LocalizedErrorAlertModifier33_C40F41D7107D9D19F9A85B89825C4667LLV03AnyeF0VSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BBD221C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23BBD225C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BBD22D8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return a1(v3, v4);
}

uint64_t sub_23BBD23AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AAE8);
  sub_23B97B518(&qword_27E1A4908, &qword_27E1A4900);
  sub_23BBD2758();
  sub_23B9FAE20();
  sub_23BBDBAF8();
}

uint64_t sub_23BBD2528@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4918);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BBE94D0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *(inited + 32) = sub_23BBD95A8();
  *(inited + 40) = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = 0;
  *(inited + 48) = sub_23BBD95C8();
  *(inited + 56) = v7;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = (inited + 40 + 16 * v6);
  while (++v6 != 3)
  {
    v10 = v9 + 2;
    v11 = *v9;
    v9 += 2;
    if (v11)
    {
      v12 = *(v10 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B7B8C();
        v8 = v15;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_23B9B7B8C();
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_23BBD2824();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
  sub_23B97B518(qword_27E1A0890, qword_27E19B730);
  v17 = sub_23BBDCEA8();
  v19 = v18;

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v17 = 0;
    v19 = 0;
    v22 = 0;
  }

  *a2 = v17;
  a2[1] = v19;
  a2[2] = 0;
  a2[3] = v22;
  return result;
}

unint64_t sub_23BBD2758()
{
  result = qword_27E1A4910;
  if (!qword_27E1A4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4910);
  }

  return result;
}

uint64_t sub_23BBD27AC()
{
  sub_23BBDCDB8();
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23BBD2824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2C0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23BBD2894()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8);
  sub_23B97B518(&qword_27E1A4908, &qword_27E1A4900);
  sub_23BBD2758();
  sub_23B9FAE20();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BBD297C()
{
  result = qword_27E1A4920[0];
  if (!qword_27E1A4920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A4920);
  }

  return result;
}

uint64_t sub_23BBD29D0@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v13[0] = v2;
  MEMORY[0x28223BE20](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  swift_getAssociatedConformanceWitness();
  sub_23BBDDAB8();
  sub_23BBDDA68();
  sub_23BBDDAB8();
  sub_23BBDDA68();
  sub_23BBDCE48();
  v11 = *(v13[0] + 8);
  v11(v5, AssociatedTypeWitness);
  return (v11)(v8, AssociatedTypeWitness);
}

uint64_t sub_23BBD2C4C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v0);
  swift_getAssociatedConformanceWitness();
  sub_23BBDDAA8();
  swift_checkMetadataState();
  return sub_23BBDDA58();
}

uint64_t sub_23BBD2D80(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = *(a2 + 16);
  v53 = *(a2 + 24);
  v4 = v53;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v58 = v6;
  v59 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v56 = v51 - v8;
  v9 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = *(v4 + 8);
  v16 = sub_23BBDD788();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = v51 - v20;
  v54 = v3;
  v52 = sub_23BBDD8A8();
  OUTLINED_FUNCTION_7();
  v57 = v22;
  OUTLINED_FUNCTION_7_0();
  v24 = MEMORY[0x28223BE20](v23);
  v51[0] = v51 - v25;
  MEMORY[0x23EEB59C0](v3, v15, v24);
  (*(v11 + 16))(v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v27 = swift_allocObject();
  (*(v11 + 32))(v27 + v26, v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  swift_getWitnessTable();
  v28 = v51[0];
  v29 = MEMORY[0x277CE0F48];
  sub_23BBDD9B8();

  (*(v18 + 8))(v21, v16);
  sub_23BBD3400();
  sub_23BBDBD78();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v60[0] = v31;
  v60[1] = v33;
  v60[2] = v35;
  v60[3] = v37;
  v38 = sub_23BBD3D44();
  v64 = v53;
  v39 = v52;
  WitnessTable = swift_getWitnessTable();
  sub_23BBD29D0(v61);
  v63 = v61[0];
  v41 = v29;
  sub_23BBD2C4C();
  v62[0] = v62[1];
  v42 = v56;
  sub_23BBCF358(v28, &v63, v62, v41, v39, v38, WitnessTable, v38, v56);
  v43 = sub_23BBDD558();
  sub_23BBD3D98(v44, v60);
  v43(v61, 0);
  sub_23BBD34AC(v61);
  sub_23BBD3DD0(v60);
  v45 = __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  v46 = MEMORY[0x28223BE20](v45);
  (*(v48 + 16))(v51 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  v49 = sub_23BBD9DF8();
  (*(v58 + 8))(v42, v59);
  (*(v57 + 8))(v28, v39);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v49;
}

uint64_t sub_23BBD3318@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_23BBD3D98(a1, v13);
  if (v14)
  {
    sub_23B98473C(v13, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    if (sub_23BBD9B68())
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  sub_23BBDBD78();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t sub_23BBD3400()
{
  sub_23BBD3D98(v0, v6);
  if ((v8 & 1) == 0)
  {
    return *&v6[0];
  }

  v1 = v7;
  sub_23B98473C(v6, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2 = sub_23BBD9B68();
  if (v2)
  {
    v3 = v2;

    v1 = v3;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v1;
}

uint64_t sub_23BBD34AC@<X0>(void *a1@<X8>)
{
  result = sub_23BBD3D98(v1, v6);
  if (v7)
  {

    return sub_23B98473C(v6, a1);
  }

  else
  {
    v4 = *&v6[0];
    v5 = MEMORY[0x277CE0F60];
    a1[3] = MEMORY[0x277CE0F78];
    a1[4] = v5;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_23BBD351C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23BBD2D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BBD3544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBD3400();
  *a1 = result;
  return result;
}

uint64_t sub_23BBD356C()
{
  if (qword_27E1977E8 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D1 == 1 || byte_27E1A04D1 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_minos_at_least())) && (v4[3] = &type metadata for StoreKitViewsFeature, v4[4] = sub_23B9C7F48(), LOBYTE(v4[0]) = 2, v0 = sub_23BBD9888(), __swift_destroy_boxed_opaque_existential_1(v4), (v0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3D60);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23BBE94D0;
    v4[0] = sub_23BBDBD68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3D68);
    sub_23BBAD530();
    sub_23BBD36EC();
    *(v1 + 32) = sub_23BBDBDE8();
    *(v1 + 80) = 0;
    v2 = sub_23BBDBD68();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3D60);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23BBE94D0;
    *(v1 + 32) = sub_23BBDBD38();
    *(v1 + 80) = 0;
    v2 = sub_23BBDBD18();
  }

  *(v1 + 88) = v2;
  *(v1 + 136) = 0;
  return v1;
}

unint64_t sub_23BBD36EC()
{
  result = qword_27E1A3D78;
  if (!qword_27E1A3D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3D78);
  }

  return result;
}

uint64_t sub_23BBD375C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BBD3798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BBD37E8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_23BBD3820()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BBD3898(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 49;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BBD39E4);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
        v15 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        return v7 + (v16 | v15) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 48);
  if (v17 >= 2)
  {
    return (v17 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_23BBD39F8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 49;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 49);
    if (v10 <= 3)
    {
      v17 = (v15 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v17;
        return result;
      case 2:
        *&a1[v10] = v17;
        return result;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v17;
        return result;
      default:
        return result;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BBD3BF8);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v18 + 48) = 0;
            result = 0.0;
            *(v18 + 16) = 0u;
            *(v18 + 32) = 0u;
            *v18 = 0u;
            *v18 = a2 - 255;
          }

          else
          {
            *(v18 + 48) = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return result;
  }
}

uint64_t sub_23BBD3C44()
{
  sub_23BBDA928();
  OUTLINED_FUNCTION_4_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BBD3CC4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_23BBDA928();

  return sub_23BBD3318(a1, a2);
}

unint64_t sub_23BBD3D44()
{
  result = qword_27E1A49A8[0];
  if (!qword_27E1A49A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1A49A8);
  }

  return result;
}

uint64_t sub_23BBD3E00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a6;
  v44 = a7;
  v42 = a5;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v45 = a9;
  v37 = a13;
  v38 = a14;
  v46 = a12;
  v16 = *(a8 - 8);
  v17 = *(v16 + 64);
  v34 = a10;
  v35 = a11;
  v18 = MEMORY[0x28223BE20](a1);
  v19 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v14, v20, v18);
  v21 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v22 = v21 + v17;
  v23 = (v21 + v17) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = a8;
  *(v24 + 3) = a10;
  v25 = v46;
  *(v24 + 4) = a11;
  *(v24 + 5) = v25;
  v26 = v37;
  v27 = v38;
  *(v24 + 6) = v37;
  *(v24 + 7) = v27;
  (*(v16 + 32))(&v24[v21], v19, a8);
  v24[v22] = v39 & 1;
  v28 = v41;
  *&v24[v23 + 8] = v40;
  v29 = &v24[v36];
  *v29 = v28;
  v29[8] = v42 & 1;
  v30 = &v24[(v23 + 39) & 0xFFFFFFFFFFFFFFF8];
  v31 = v44;
  *v30 = v43;
  *(v30 + 1) = v31;

  v49 = v34;
  v50 = v35;
  v51 = v26;
  v52 = v27;
  sub_23BBDAF88();
  swift_getWitnessTable();
  sub_23BBDAAC8();
  sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v47 = v46;
  v48 = WitnessTable;
  swift_getWitnessTable();
  sub_23BBD9FD8();
}

uint64_t sub_23BBD4090()
{
  sub_23BBDAF88();
  swift_getWitnessTable();
  return sub_23BBDB808();
}

uint64_t sub_23BBD417C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BBD42E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  v16[0] = a1;
  v16[1] = a5;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a6;
  v6 = sub_23BBDAF88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_23BBDA4B8();
  sub_23BBDA4A8();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_23B9D2D88(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

void sub_23BBD44C0()
{
  sub_23B9A3838(319, &qword_27E198D20, type metadata accessor for ProductViewConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9A3838(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23B9A3838(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23B9D2354();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23BBD4628(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_23BBDCD08() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23BBDCBE8() - 8);
  v8 = *(v7 + 80);
  v9 = v5 | v8 | 7;
  v10 = (v6 + 7 + ((*(v7 + 64) + v5 + ((v8 + 16) & ~v8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 10;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= 3)
  {
    v12 = 3;
  }

  v13 = v12 + ((((v5 + 16) & ~v5) + v6 + v9) & ~v9);
  if (v13 + 1 > ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v52 = v14;
  v45 = sub_23BBD96B8();
  v15 = *(v45 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v17 >= 0)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v46 = v19;
  v20 = v19 - 1;
  v47 = *(a3 + 16);
  v21 = *(v47 - 8);
  v50 = *(v21 + 84);
  v51 = v20;
  if (v50 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(v21 + 84);
  }

  v48 = *(sub_23BBDA438() - 8);
  v23 = *(v48 + 64);
  if (v23 <= 8)
  {
    v23 = 8;
  }

  v49 = v23;
  v24 = *(sub_23BBDA308() - 8);
  if (*(v24 + 64) <= 8uLL)
  {
    v25 = 8;
  }

  else
  {
    v25 = *(v24 + 64);
  }

  v26 = *(v15 + 80);
  if (v16)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  v28 = *(v21 + 80);
  if (!a2)
  {
    return 0;
  }

  v29 = v52 + v9 + 1;
  v30 = ((v27 + *(v15 + 64) + ((v26 + 16 + ((v52 + 8 + (v29 & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + (((v9 | v26) + 32) & ~(v9 | v26)) + v28 + 8;
  if (v22 < a2)
  {
    v31 = *(v48 + 80) & 0xF8 | 7;
    v32 = *(v24 + 80) & 0xF8 | 7;
    v33 = ((v25 + ((v49 + v32 + ((*(v21 + 64) + v31 + (v30 & ~v28)) & ~v31) + 1) & ~v32) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v33 <= 3)
    {
      v34 = ((a2 - v22 + 255) >> 8) + 1;
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
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    switch(v36)
    {
      case 1:
        v37 = a1[v33];
        if (!a1[v33])
        {
          break;
        }

        goto LABEL_47;
      case 2:
        v37 = *&a1[v33];
        if (*&a1[v33])
        {
          goto LABEL_47;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BBD4B50);
      case 4:
        v37 = *&a1[v33];
        if (!v37)
        {
          break;
        }

LABEL_47:
        v39 = v33 > 3;
        if (v33 <= 3)
        {
          v40 = (v37 - 1) << (8 * v33);
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }

        return v22 + (v44 | v40) + 1;
      default:
        break;
    }
  }

  if (v51 >= v50)
  {
    if (v46 == 0x7FFFFFFF)
    {
      v41 = *(a1 + 1);
      if (v41 >= 0xFFFFFFFF)
      {
        LODWORD(v41) = -1;
      }

      v42 = v41 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + 16 + ((v52 + 8 + ((v29 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v9 | v26) + 16) & ~(v9 | v26))) & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26, v16, v45);
      v42 = EnumTagSinglePayload - 1;
      if (EnumTagSinglePayload < 2)
      {
        v42 = 0;
      }
    }

    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return __swift_getEnumTagSinglePayload(&a1[v30] & ~v28, v50, v47);
  }
}

void sub_23BBD4B64(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_23BBDCD08() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23BBDCBE8() - 8);
  v9 = *(v8 + 80);
  v10 = v6 | v9 | 7;
  v11 = (v7 + 7 + ((*(v8 + 64) + v6 + ((v9 + 16) & ~v9)) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 10;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  if (v13 <= 3)
  {
    v13 = 3;
  }

  v14 = v13 + ((((v6 + 16) & ~v6) + v7 + v10) & ~v10);
  if (v14 + 1 > ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v54 = sub_23BBD96B8();
  v17 = *(v54 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= 0)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v55 = v20;
  v56 = v21;
  v22 = v21 - 1;
  v57 = *(a4 + 16);
  v23 = *(v57 - 8);
  v58 = *(v23 + 84);
  v59 = v22;
  if (v58 > v22)
  {
    v22 = *(v23 + 84);
  }

  v62 = v22;
  v60 = *(sub_23BBDA438() - 8);
  v24 = *(v60 + 64);
  if (v24 <= 8)
  {
    v24 = 8;
  }

  v61 = v24;
  v25 = sub_23BBDA308();
  v26 = v18;
  v27 = 0;
  v28 = *(v25 - 8);
  if (*(v28 + 64) <= 8uLL)
  {
    v29 = 8;
  }

  else
  {
    v29 = *(v28 + 64);
  }

  v30 = *(v17 + 80);
  v31 = ((v10 | v30) + 32) & ~(v10 | v30);
  v32 = v16 + v10 + 1;
  v33 = v16 + 8 + (v32 & ~v10);
  v34 = *(v17 + 64);
  if (!v26)
  {
    ++v34;
  }

  v35 = v34 + ((v30 + 16 + (v33 & 0xFFFFFFFFFFFFFFF8)) & ~v30) + 7;
  v36 = *(v23 + 80);
  v37 = v31 + v36 + (v35 & 0xFFFFFFFFFFFFFFF8) + 8;
  v38 = *(v60 + 80) & 0xF8 | 7;
  v39 = *(v28 + 80) & 0xF8 | 7;
  v40 = ((v29 + ((v61 + v39 + ((*(v23 + 64) + v38 + (v37 & ~v36)) & ~v38) + 1) & ~v39) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v62 < a3)
  {
    if (v40 <= 3)
    {
      v41 = ((a3 - v62 + 255) >> 8) + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v27 = v42;
    }

    else
    {
      v27 = 0;
    }
  }

  if (v62 < a2)
  {
    v43 = ~v62 + a2;
    bzero(a1, v40);
    if (v40 <= 3)
    {
      v44 = (v43 >> 8) + 1;
    }

    else
    {
      v44 = 1;
    }

    if (v40 > 3)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }

    switch(v27)
    {
      case 1:
        *(a1 + v40) = v44;
        return;
      case 2:
        *(a1 + v40) = v44;
        return;
      case 3:
        goto LABEL_78;
      case 4:
        *(a1 + v40) = v44;
        return;
      default:
        return;
    }
  }

  v45 = ~v30;
  v46 = ~v36;
  switch(v27)
  {
    case 1:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    case 2:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    case 3:
LABEL_78:
      __break(1u);
      JUMPOUT(0x23BBD5148);
    case 4:
      *(a1 + v40) = 0;
      goto LABEL_53;
    default:
LABEL_53:
      if (!a2)
      {
        return;
      }

LABEL_54:
      if (v59 < v58)
      {
        v47 = (a1 + v37) & v46;
        v48 = a2;
        v26 = v58;
        v49 = v57;
LABEL_56:

        __swift_storeEnumTagSinglePayload(v47, v48, v26, v49);
        return;
      }

      v50 = (v35 & 0xFFFFFFF8) + v31 + 8;
      if (v59 < a2)
      {
        if (!v50)
        {
          return;
        }

        v51 = a2 - v56;
LABEL_71:
        bzero(a1, v50);
        *a1 = v51;
        return;
      }

      v51 = a2 - v56;
      if (a2 >= v56)
      {
        if (!v50)
        {
          return;
        }

        goto LABEL_71;
      }

      if (v56 == 0x7FFFFFFF)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *a1 = a2 - 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = a2;
        }

        return;
      }

      v52 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v10 | v30) + 16) & ~(v10 | v30));
      if (a2 < v55)
      {
        v47 = (v30 + 16 + ((v16 + 8 + ((v52 + v32) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & v45;
        v48 = a2 + 2;
        v49 = v54;
        goto LABEL_56;
      }

      v53 = ((((v33 & 0xFFFFFFF8) + v30 + 16) & v45) + v34 + 7) & 0xFFFFFFF8;
      if (v53 != -8)
      {
        bzero(v52, (v53 + 8));
        *v52 = a2 - v55;
      }

      return;
  }
}

uint64_t sub_23BBD51CC(uint64_t a1)
{
  v4 = sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_45();
  v8 = (v1 + *(a1 + 48));
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v9, 0);
    (*(v6 + 8))(v2, v4);
    LOBYTE(v9) = v12;
  }

  return v9 & 1;
}

uint64_t sub_23BBD5308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D40);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_7_8();
  v33[0] = v6;
  v33[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A30);
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  v26[0] = sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v7, &qword_27E198D40);
  v8 = sub_23BBDA018();
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  sub_23BBD5848(a1, v33);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_45();
  (*(v18 + 16))(&unk_23BBE95A0);
  v19 = sub_23BBDC378();
  v20 = sub_23BBD5670(v19, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v33);
  v28 = v4;
  v29 = v5;
  v30 = v2;
  v20(sub_23BBD8260, v27);

  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v21, &qword_27E198D40);
  OUTLINED_FUNCTION_1_69();
  WitnessTable = swift_getWitnessTable();
  v31 = v19;
  v32 = WitnessTable;
  OUTLINED_FUNCTION_1_9();
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v13, v8, v23);
  v24 = *(v10 + 8);
  v24(v13, v8);
  sub_23B9D2D88(v16, v8, v23);
  return (v24)(v16, v8);
}

uint64_t (*sub_23BBD5670(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_23BBD8A14;
}

uint64_t sub_23BBD56E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProductViewIconWrapper();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A30);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  sub_23B9A73C8();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, MEMORY[0x277CE13A0]);
}

unint64_t sub_23BBD5848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23BBDA308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9B70F0();
  v14 = sub_23BBDA2E8();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    goto LABEL_4;
  }

  v15 = (v3 + *(a1 + 56));
  v16 = *v15;
  if (*(v15 + 8) != 1)
  {

    sub_23BBDD5A8();
    v20 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v16, 0);
    (*(v7 + 8))(v9, v6);
    if (v21[15] != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v17 = sub_23BBDAB58();
    *(a2 + 24) = MEMORY[0x277CDF5C8];
    v18 = 0x4010000000000000;
    result = sub_23B9A7330();
    goto LABEL_7;
  }

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_4:
  v17 = sub_23BBDA9D8();
  *(a2 + 24) = MEMORY[0x277CDF570];
  v18 = 0x4028000000000000;
  result = sub_23B9A70B0();
LABEL_7:
  *(a2 + 32) = result;
  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23BBD5AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A30);
  MEMORY[0x28223BE20](v82);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v67 - v9;
  v10 = sub_23BBDA928();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_23BBDA438();
  v69 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ProductViewIconWrapper();
  v68 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  WitnessTable = swift_getWitnessTable();
  __src = v18;
  v107 = WitnessTable;
  v70 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v85 = &v67 - v23;
  v74 = v24;
  v25 = sub_23BBDA358();
  v75 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v72 = &v67 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  v76 = v25;
  v88 = sub_23BBDA358();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v78 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v71 = &v67 - v29;
  MEMORY[0x28223BE20](v30);
  v87 = &v67 - v31;
  v91 = a2;
  v92 = a3;
  v93 = a1;
  v90 = a2;
  sub_23BA33338(sub_23BBD826C, v20);
  v89 = a1;
  sub_23BAAE9D4(a1, v14, &qword_27E198D80);
  v32 = type metadata accessor for ProductViewConfiguration(0);
  LODWORD(v25) = __swift_getEnumTagSinglePayload(v14, 1, v32);
  sub_23B979910(v14, &qword_27E198D80);
  if (v25 == 1)
  {
    sub_23BBDA428();
  }

  else
  {
    __src = MEMORY[0x277D84F90];
    sub_23BBD8ED8(&qword_27E198E48, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50);
    sub_23BBDD6C8();
  }

  v33 = v70;
  sub_23BBDBC38();
  (*(v69 + 8))(v17, v15);
  (*(v68 + 8))(v20, v18);
  v34 = (v89 + *(type metadata accessor for RegularProductView() + 52));
  v35 = *v34;
  LODWORD(v69) = *(v34 + 8);
  v36 = v83;
  if (v69 == 1)
  {
    v37 = v35;
  }

  else
  {

    sub_23BBDD5A8();
    v38 = sub_23BBDB338();
    sub_23BBD9978();

    v39 = v79;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v35, 0);
    (*(v80 + 8))(v39, v81);
    v37 = __src;
  }

  v104 = 1;
  v103 = 1;
  if (v37)
  {
    v40 = 0x405A400000000000;
  }

  else
  {
    v40 = 0x4056000000000000;
  }

  v102 = 1;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v105 = 0;
  __src = 0;
  LOBYTE(v107) = 1;
  v108 = 0;
  v109 = 1;
  v110 = 0;
  v111 = 1;
  v112 = 0x4056000000000000;
  v113 = 0;
  v114 = v40;
  v115 = 0;
  v116 = 0x405A400000000000;
  v117 = 0;
  v97 = v18;
  v98 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v74;
  v43 = sub_23B9DCCD0(v74, OpaqueTypeConformance2);
  v44 = v72;
  v45 = v85;
  sub_23BA19724(&__src, v43, v46, v42, OpaqueTypeConformance2);
  (*(v73 + 8))(v45, v42);
  v47 = sub_23B9A6A40();
  v96[4] = OpaqueTypeConformance2;
  v96[5] = v47;
  v48 = v76;
  v49 = swift_getWitnessTable();
  v50 = v71;
  sub_23BBDB858();
  (*(v75 + 8))(v44, v48);
  v51 = sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
  v96[2] = v49;
  v96[3] = v51;
  v52 = v88;
  v53 = swift_getWitnessTable();
  sub_23B9D2D88(v50, v52, v53);
  v54 = *(v86 + 8);
  v54(v50, v52);
  *v36 = sub_23BBDAB58();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A38);
  sub_23BBD6694(v89, v90, a3, (v36 + *(v55 + 44)));
  sub_23B9A6AA4();
  v56 = sub_23BBDAB78();
  v57 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A40) + 36));
  *v57 = v56;
  v57[1] = sub_23B9A65D0;
  v57[2] = 0;
  if (!v69)
  {

    sub_23BBDD5A8();
    v58 = sub_23BBDB338();
    sub_23BBD9978();

    v59 = v79;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v35, 0);
    (*(v80 + 8))(v59, v81);
    LOBYTE(v35) = v97;
  }

  v60 = v82;
  v61 = (v36 + *(v82 + 36));
  *v61 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  *(v61 + *(type metadata accessor for ProductViewWrapperFrameModifier() + 20)) = v35 & 1;
  v62 = v87;
  v63 = v78;
  v64 = v88;
  (*(v86 + 16))(v78, v87, v88);
  v97 = v63;
  v65 = v84;
  sub_23BBD82CC(v36, v84);
  v98 = v65;
  v96[0] = v64;
  v96[1] = v60;
  v94 = v53;
  v95 = sub_23BBD8330();
  sub_23BB6739C(&v97, 2, v96);
  sub_23BBD84A4(v36);
  v54(v62, v64);
  sub_23BBD84A4(v65);
  return (v54)(v63, v64);
}

uint64_t sub_23BBD659C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RegularProductView();
  sub_23B9D2D88(a1 + *(v9 + 36), a2, a3);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23BBD6694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v100 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E68);
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v98 = (&v76 - v14);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A70);
  MEMORY[0x28223BE20](v90);
  v91 = (&v76 - v15);
  v80 = sub_23BBDB588();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = &v76 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D50);
  MEMORY[0x28223BE20](v89);
  v81 = (&v76 - v19);
  v20 = sub_23BBDA308();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x28223BE20](v20);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A78);
  MEMORY[0x28223BE20](v22 - 8);
  v95 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v101 = &v76 - v25;
  v85 = sub_23BBDB148();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A80);
  MEMORY[0x28223BE20](v83);
  v29 = &v76 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A88);
  v93 = *(v30 - 8);
  v94 = v30;
  MEMORY[0x28223BE20](v30);
  v92 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - v33;
  v35 = type metadata accessor for RegularProductView();
  sub_23BBD720C(v35, v102);
  v36 = __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  v37 = MEMORY[0x28223BE20](v36);
  (*(v39 + 16))(&v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v40 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(v102);
  *v29 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A90);
  v42 = a1;
  sub_23BBD755C(a1, a2, a3, v29 + *(v41 + 44));
  KeyPath = swift_getKeyPath();
  v44 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A98) + 36));
  *v44 = KeyPath;
  v44[1] = 0;
  v45 = swift_getKeyPath();
  v46 = v29 + *(v83 + 36);
  *v46 = v45;
  *(v46 + 8) = 0;
  sub_23BBDB128();
  sub_23BBD86AC();
  v47 = v34;
  v48 = v35;
  sub_23BBDB968();
  (*(v84 + 8))(v27, v85);
  sub_23B979910(v29, &qword_27E1A4A80);
  v49 = v86;
  sub_23B9B70F0();
  LOBYTE(v29) = sub_23BBDA2E8();
  (*(v87 + 8))(v49, v88);
  if (v29)
  {
    v50 = swift_getKeyPath();
    v51 = v81;
    *v81 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = swift_getKeyPath();
    *(v51 + 24) = 0;
    type metadata accessor for ProductViewAXTypeStyleButtonSpacer();
    v52 = v79;
    v53 = v78;
    v54 = v80;
    (*(v79 + 104))(v78, *MEMORY[0x277CE0AA8], v80);
    v102[0] = 0x4024000000000000;
    (*(v52 + 16))(v77, v53, v54);
    sub_23B974940();
    sub_23BBD9D18();
    (*(v52 + 8))(v53, v54);
    *(v51 + *(v89 + 36)) = 0xBFF0000000000000;
    sub_23BAAE9D4(v51, v91, &qword_27E198D50);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4AC8);
    sub_23B9A6DE4();
    sub_23BBD8900();
    v55 = v101;
    sub_23BBDACD8();
    sub_23B979910(v51, &qword_27E198D50);
    v56 = v55;
  }

  else
  {
    v57 = sub_23BBD7F9C(v48);
    v58 = v91;
    *v91 = v57;
    *(v58 + 8) = 0;
    v58[2] = -1.0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4AC8);
    sub_23B9A6DE4();
    sub_23BBD8900();
    v56 = v101;
    sub_23BBDACD8();
  }

  v59 = v96;
  sub_23BAAE9D4(v42, v96, &qword_27E198D80);
  v60 = type metadata accessor for ProductViewConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v60);
  v62 = v97;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B979910(v59, &qword_27E198D80);
    v63 = 1;
  }

  else
  {
    sub_23B9A7114(v59 + *(v60 + 24), v97, type metadata accessor for ProductViewButtonConfiguration);
    sub_23B9A7170(v59, type metadata accessor for ProductViewConfiguration);
    v63 = 0;
  }

  v64 = type metadata accessor for ProductViewButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
  v65 = v98;
  sub_23BA7C678(v62, v98);
  v67 = v92;
  v66 = v93;
  v68 = *(v93 + 16);
  v82 = v47;
  v69 = v94;
  v68(v92, v47, v94);
  v70 = v95;
  sub_23BAAE9D4(v56, v95, &qword_27E1A4A78);
  v71 = v99;
  sub_23BAAE9D4(v65, v99, &qword_27E198E68);
  v72 = v100;
  v68(v100, v67, v69);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4AD8);
  sub_23BAAE9D4(v70, &v72[*(v73 + 48)], &qword_27E1A4A78);
  sub_23BAAE9D4(v71, &v72[*(v73 + 64)], &qword_27E198E68);
  sub_23B979910(v65, &qword_27E198E68);
  sub_23B979910(v101, &qword_27E1A4A78);
  v74 = *(v66 + 8);
  v74(v82, v69);
  sub_23B979910(v71, &qword_27E198E68);
  sub_23B979910(v70, &qword_27E1A4A78);
  return (v74)(v67, v69);
}

unint64_t sub_23BBD720C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_23BBDA928();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA308();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9B70F0();
  v16 = sub_23BBDA2E8();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    goto LABEL_4;
  }

  v17 = v3 + *(a1 + 56);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_4:
      v19 = sub_23BBDAB58();
      a2[3] = &type metadata for TotalLineLimitLayout;
      a2[4] = sub_23B9A72CC();
      result = swift_allocObject();
      *a2 = result;
      *(result + 16) = 3;
      *(result + 24) = v19;
      *(result + 32) = 0x4000000000000000;
      *(result + 40) = 0;
      *(result + 48) = 0;
      v21 = (result + 64);
      *(result + 56) = 0x4010000000000000;
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v22 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v18, 0);
    (*(v27 + 8))(v11, v9);
    if (v28 != 1)
    {
      goto LABEL_4;
    }
  }

  sub_23BAAE9D4(v3, v8, &qword_27E198D80);
  v23 = type metadata accessor for ProductViewConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v23);
  sub_23B979910(v8, &qword_27E198D80);
  v25 = sub_23BBDAB58();
  if (EnumTagSinglePayload == 1)
  {
    v26 = 0x4010000000000000;
  }

  else
  {
    v26 = 0;
  }

  a2[3] = MEMORY[0x277CDF5C8];
  result = sub_23B9A7330();
  a2[4] = result;
  *a2 = v25;
  a2[1] = v26;
  v21 = a2 + 2;
LABEL_10:
  *v21 = 0;
  return result;
}

uint64_t sub_23BBD755C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v88 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = (v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (v76 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v76 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (v76 - v20);
  v22 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v22);
  v86 = v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v76 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v76 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v76 - v31;
  v85 = a1;
  sub_23BAAE9D4(a1, v21, &qword_27E198D80);
  v82 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v82) == 1)
  {
    sub_23B979910(v21, &qword_27E198D80);
  }

  else
  {
    v33 = *v21;
    v34 = v21[1];

    sub_23B9A7170(v21, type metadata accessor for ProductViewConfiguration);
    if (v34)
    {
      *v13 = v33;
      v13[1] = v34;
      v35 = type metadata accessor for ProductViewText.Storage(0);
      swift_storeEnumTagMultiPayload();
      v36 = v13;
      v37 = 0;
      v38 = v35;
      goto LABEL_6;
    }
  }

  v38 = type metadata accessor for ProductViewText.Storage(0);
  v36 = v13;
  v37 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for LayoutMetrics(0);
  v79 = __swift_project_value_buffer(v39, &unk_27E1BF7F8);
  sub_23B9A7114(v79, v29, type metadata accessor for LayoutMetrics);
  v40 = type metadata accessor for PlaceholderLayouts(0);
  v41 = *(v40 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v39, &unk_27E1BF810);
  sub_23B9A7114(v78, &v29[v41], type metadata accessor for LayoutMetrics);
  v42 = *(v40 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(v39, &unk_27E1BF828);
  sub_23B9A7114(v77, &v29[v42], type metadata accessor for LayoutMetrics);
  v43 = &v29[v22[10]];
  v44 = v22[13];
  *&v29[v44] = swift_getKeyPath();
  v76[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v45 = v22[14];
  *&v29[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B9E1164(v13, &v29[v22[5]]);
  v29[v22[6]] = 0;
  v29[v22[7]] = 0;
  v29[v22[8]] = 0;
  *v43 = 0;
  *(v43 + 1) = 0;
  v106 = 1;
  v104 = 0;
  v102 = 0;
  v100 = 1;
  v98 = 0;
  v96 = 0;
  v46 = &v29[v22[9]];
  *v46 = 0;
  v46[8] = 1;
  *(v46 + 3) = *&v105[3];
  *(v46 + 9) = *v105;
  *(v46 + 2) = 0x405E000000000000;
  v46[24] = 0;
  *(v46 + 7) = *&v103[3];
  *(v46 + 25) = *v103;
  *(v46 + 4) = 0x405E000000000000;
  v46[40] = 0;
  v47 = *v101;
  *(v46 + 11) = *&v101[3];
  *(v46 + 41) = v47;
  *(v46 + 6) = 0;
  v46[56] = v100;
  v48 = *v99;
  *(v46 + 15) = *&v99[3];
  *(v46 + 57) = v48;
  *(v46 + 8) = 0x4032000000000000;
  v46[72] = v98;
  v49 = *v97;
  *(v46 + 19) = *&v97[3];
  *(v46 + 73) = v49;
  *(v46 + 10) = 0x4032000000000000;
  v46[88] = v96;
  *&v29[v22[11]] = swift_getKeyPath();
  *&v29[v22[12]] = swift_getKeyPath();
  sub_23B9A7268(v29, v32);
  v50 = type metadata accessor for RegularProductView();
  v51 = v85;
  if (sub_23BBD51CC(v50))
  {
    sub_23BAAE9D4(v51, v18, &qword_27E198D80);
    if (__swift_getEnumTagSinglePayload(v18, 1, v82) == 1)
    {
      sub_23B979910(v18, &qword_27E198D80);
      goto LABEL_17;
    }

    v52 = *(v18 + 2);
    v53 = *(v18 + 3);

    sub_23B9A7170(v18, type metadata accessor for ProductViewConfiguration);
    v54 = sub_23B9D4CA8(v52, v53);

    if ((v54 & 1) == 0)
    {
LABEL_17:
      v58 = v80;
      sub_23BAAE9D4(v51, v80, &qword_27E198D80);
      if (__swift_getEnumTagSinglePayload(v58, 1, v82) == 1)
      {
        sub_23B979910(v58, &qword_27E198D80);
      }

      else
      {
        v60 = *(v58 + 16);
        v59 = *(v58 + 24);

        sub_23B9A7170(v58, type metadata accessor for ProductViewConfiguration);
        if (v59)
        {
          v61 = v81;
          *v81 = v60;
          v61[1] = v59;
          v62 = v61;
          v63 = type metadata accessor for ProductViewText.Storage(0);
          swift_storeEnumTagMultiPayload();
          v64 = v62;
          v65 = 0;
          v66 = v63;
LABEL_22:
          __swift_storeEnumTagSinglePayload(v64, v65, 1, v66);
          sub_23B9A7114(v79, v26, type metadata accessor for LayoutMetrics);
          sub_23B9A7114(v78, &v26[*(v40 + 20)], type metadata accessor for LayoutMetrics);
          sub_23B9A7114(v77, &v26[*(v40 + 24)], type metadata accessor for LayoutMetrics);
          v67 = &v26[v22[10]];
          v68 = v22[13];
          *&v26[v68] = swift_getKeyPath();
          swift_storeEnumTagMultiPayload();
          v69 = v22[14];
          *&v26[v69] = swift_getKeyPath();
          swift_storeEnumTagMultiPayload();
          sub_23B9E1164(v62, &v26[v22[5]]);
          v26[v22[6]] = 1;
          v26[v22[7]] = 0;
          v26[v22[8]] = 0;
          *v67 = 0;
          *(v67 + 1) = 0;
          v95 = 1;
          v94 = 0;
          v93 = 0;
          v92 = 1;
          v91 = 0;
          v90 = 0;
          v70 = &v26[v22[9]];
          *v70 = 0;
          v70[8] = 1;
          *(v70 + 2) = 0x4054000000000000;
          v70[24] = 0;
          *(v70 + 4) = 0x4054000000000000;
          v70[40] = 0;
          *(v70 + 6) = 0;
          v70[56] = 1;
          *(v70 + 8) = 0x4024000000000000;
          v70[72] = 0;
          *(v70 + 10) = 0x4024000000000000;
          v70[88] = 0;
          *&v26[v22[11]] = swift_getKeyPath();
          *&v26[v22[12]] = swift_getKeyPath();
          v55 = v87;
          sub_23B9A7268(v26, v87);
          v56 = v55;
          v57 = 0;
          goto LABEL_23;
        }
      }

      v66 = type metadata accessor for ProductViewText.Storage(0);
      v62 = v81;
      v64 = v81;
      v65 = 1;
      goto LABEL_22;
    }
  }

  v55 = v87;
  v56 = v87;
  v57 = 1;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v56, v57, 1, v22);
  v71 = v86;
  sub_23B9A7114(v32, v86, type metadata accessor for ProductViewText);
  v72 = v89;
  sub_23BAAE9D4(v55, v89, &qword_27E198E88);
  v73 = v88;
  sub_23B9A7114(v71, v88, type metadata accessor for ProductViewText);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A378);
  sub_23BAAE9D4(v72, v73 + *(v74 + 48), &qword_27E198E88);
  sub_23B979910(v55, &qword_27E198E88);
  sub_23B9A7170(v32, type metadata accessor for ProductViewText);
  sub_23B979910(v72, &qword_27E198E88);
  return sub_23B9A7170(v71, type metadata accessor for ProductViewText);
}

double sub_23BBD7F9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23BBDA308();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9B70F0();
  v12 = sub_23BBDA2E8();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = (v2 + *(a1 + 56));
    v14 = *v13;
    if (*(v13 + 8) == 1)
    {
      if (v14)
      {
        return 4.0;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v15 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v14, 0);
      (*(v5 + 8))(v7, v4);
      if (v20[14])
      {
        return 4.0;
      }
    }
  }

  v16 = (v2 + *(a1 + 52));
  if ((v16[1] & 1) == 0)
  {
    v17 = *v16;

    sub_23BBDD5A8();
    v18 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v17, 0);
    (*(v5 + 8))(v7, v4);
  }

  return 4.0;
}

uint64_t type metadata accessor for ProductViewWrapperFrameModifier()
{
  result = qword_27E1A4AE0;
  if (!qword_27E1A4AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BBD82CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A30);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return a2;
}

unint64_t sub_23BBD8330()
{
  result = qword_27E1A4A48;
  if (!qword_27E1A4A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A30);
    sub_23BBD83EC();
    sub_23BBD8ED8(&qword_27E1A4A68, type metadata accessor for ProductViewWrapperFrameModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4A48);
  }

  return result;
}

unint64_t sub_23BBD83EC()
{
  result = qword_27E1A4A50;
  if (!qword_27E1A4A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A40);
    sub_23B97B518(&qword_27E1A4A58, &qword_27E1A4A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4A50);
  }

  return result;
}

uint64_t sub_23BBD84A4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4A30);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_23BBD8504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDA308();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductViewWrapperFrameModifier();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4AF0) + 36);
  sub_23B973BD4();
  sub_23B9B70F0();
  v9 = sub_23BBDA2E8();
  (*(v5 + 8))(v7, v4);
  v10 = sub_23BBDC318();
  v12 = v11;
  v13 = type metadata accessor for LayoutMetricsModifier(0);
  *(v8 + *(v13 + 20)) = (v9 & 1) == 0;
  v14 = (v8 + *(v13 + 24));
  *v14 = v10;
  v14[1] = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A4AF8);
  return (*(*(v15 - 8) + 16))(a2, a1, v15);
}

unint64_t sub_23BBD86AC()
{
  result = qword_27E1A4AA0;
  if (!qword_27E1A4AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A80);
    sub_23BBD8764();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4AA0);
  }

  return result;
}

unint64_t sub_23BBD8764()
{
  result = qword_27E1A4AA8;
  if (!qword_27E1A4AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A98);
    sub_23BBD881C();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4AA8);
  }

  return result;
}

unint64_t sub_23BBD881C()
{
  result = qword_27E1A4AB0;
  if (!qword_27E1A4AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A90);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40);
    sub_23B97B518(&qword_27E1A4AB8, &qword_27E1A4AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4AB0);
  }

  return result;
}

unint64_t sub_23BBD8900()
{
  result = qword_27E1A4AD0;
  if (!qword_27E1A4AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4AC8);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4AD0);
  }

  return result;
}

uint64_t sub_23BBD89DC()
{

  return swift_deallocObject();
}

uint64_t sub_23BBD8A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23BBD8B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_23BBD8BC4()
{
  sub_23B9A3838(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23BBD8C68()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4A30);
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v1, &qword_27E198D40);
  sub_23BBDA018();
  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v2, &qword_27E198D40);
  OUTLINED_FUNCTION_1_69();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_9();
  return swift_getWitnessTable();
}

unint64_t sub_23BBD8DF0()
{
  result = qword_27E1A4B00;
  if (!qword_27E1A4B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A4AF0);
    sub_23B97B518(&qword_27E1A4B08, &qword_27E1A4AF8);
    sub_23BBD8ED8(&qword_27E198D70, type metadata accessor for LayoutMetricsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A4B00);
  }

  return result;
}

uint64_t sub_23BBD8ED8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27E1BF7B0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27E1BF7A4 > a2)
  {
    return 1;
  }

  if (dword_27E1BF7A4 < a2)
  {
    return 0;
  }

  return dword_27E1BF7A8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27E1BF7B8 == -1)
  {
    if (qword_27E1BF7C0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E1BF7C0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E1BF7B0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E1BF7A4 > a3)
      {
        return 1;
      }

      if (dword_27E1BF7A4 >= a3)
      {
        return dword_27E1BF7A8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E1BF7C0;
  if (qword_27E1BF7C0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E1BF7C0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEB65A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E1BF7A4, &dword_27E1BF7A8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}