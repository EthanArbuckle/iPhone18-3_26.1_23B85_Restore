void AXSUIVoiceOverSpeechView.init<>(overrideSettings:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B0, &qword_23D9DBDF0);
  v5 = a2 + v4[9];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v4[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B8, &qword_23D9DBE20);
  sub_23D9DA3A4();
  *v6 = v15;
  *(v6 + 16) = v16;
  if (a1)
  {
    v7 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v8 = *&a1[v7];
  }

  else
  {
    v9 = sub_23D9DAC94();
    v11 = MEMORY[0x23EEF3E90](v9, v10);
    v12 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v13 = *&v11[v12];
  }

  v14 = (a2 + v4[11]);
  sub_23D9DAC84();
  sub_23D91B760(&qword_27E2F41C0, MEMORY[0x277CE7988]);
  sub_23D9DA6C4();

  *v14 = 0;
  v14[1] = 0;
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

uint64_t sub_23D91AB54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41B8, &qword_23D9DBE20);
  sub_23D9DA3A4();
  return v1;
}

uint64_t sub_23D91ABA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23D91ABAC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23D9DAFC4();
  }
}

uint64_t sub_23D91ABDC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D9DB034();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D91AC28()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23D9DA914();
}

uint64_t sub_23D91AC30()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D9DB034();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D91AC78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_23D9D9954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(a1 + 36);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    *a2 = v12 & 1;
  }

  else
  {

    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D91F080(v12, 0);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_23D91ADD8@<X0>(_BYTE *a1@<X8>)
{
  sub_23D91F3A4();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D91AE28(char *a1)
{
  v2 = *a1;
  sub_23D91F3A4();
  return sub_23D9D9974();
}

uint64_t sub_23D91AE74(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4468, &qword_23D9DC2A8);
  sub_23D9DA3D4();
  return v4;
}

void AXSUIVoiceOverSpeechView.init(overrideSettings:extraSettings:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AXSUIVoiceOverSpeechView();
  v9 = a4 + v8[9];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = (a4 + v8[10]);
  *v10 = sub_23D91AB54();
  v10[1] = v11;
  v10[2] = v12;
  if (a1)
  {
    v13 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v14 = *&a1[v13];
  }

  else
  {
    sub_23D9DAC94();
    v15 = MEMORY[0x23EEF3E90]();
    v16 = *MEMORY[0x277CE7998];
    swift_beginAccess();
    v17 = *&v15[v16];
  }

  v18 = (a4 + v8[11]);
  swift_getObjectType();
  sub_23D91B760(&qword_27E2F41C0, MEMORY[0x277CE7988]);
  sub_23D9DA6C4();

  *v18 = a2;
  v18[1] = a3;
}

uint64_t AXSUIVoiceOverSpeechView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v51._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41C8, &qword_23D9DBE28);
  v51._object = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D0, &qword_23D9DBE30);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D8, &qword_23D9DBE38);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41E0, &qword_23D9DBE40);
  v44 = *(a1 + 16);
  v54 = sub_23D9DAD74();
  swift_getTupleTypeMetadata();
  sub_23D9DA7C4();
  WitnessTable = swift_getWitnessTable();
  v3 = type metadata accessor for AXSUIPlatformFormListView();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - v5;
  v7 = swift_getWitnessTable();
  v8 = sub_23D91B650();
  v9 = MEMORY[0x277D837D0];
  v51._countAndFlagsBits = v3;
  v51._object = MEMORY[0x277D837D0];
  v52 = v7;
  v53 = v8;
  v10 = v7;
  v33[2] = v7;
  v11 = v8;
  v33[1] = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = OpaqueTypeMetadata2;
  v39 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41F0, qword_23D9DBE48);
  v37 = v16;
  v51._countAndFlagsBits = v3;
  v51._object = v9;
  v52 = v10;
  v53 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeConformance2;
  v35 = sub_23D91B6A4();
  v51._countAndFlagsBits = OpaqueTypeMetadata2;
  v51._object = v16;
  v52 = OpaqueTypeConformance2;
  v53 = v35;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v33 - v24;
  v26 = *(v38 + 24);
  v48 = v44;
  v49 = v26;
  v27 = v42;
  v50 = v42;
  AXSUIPlatformFormListView.init(content:)(sub_23D91C428);
  v28._countAndFlagsBits = 0x545F484345455053;
  v28._object = 0xEC000000454C5449;
  v51 = AXSUILocString(_:)(v28);
  sub_23D9DA064();

  (*(v41 + 8))(v6, v3);
  v45 = v44;
  v46 = v26;
  v47 = v27;
  v29 = v34;
  sub_23D9DA1B4();
  (*(v39 + 8))(v15, v29);
  v30 = v19[2];
  v30(v25, v23, v18);
  v31 = v19[1];
  v31(v23, v18);
  v30(v43, v25, v18);
  return (v31)(v25, v18);
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

unint64_t sub_23D91B650()
{
  result = qword_27E2F41E8;
  if (!qword_27E2F41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F41E8);
  }

  return result;
}

unint64_t sub_23D91B6A4()
{
  result = qword_27E2F41F8;
  if (!qword_27E2F41F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41F0, qword_23D9DBE48);
    sub_23D91B760(&qword_27E2F4200, MEMORY[0x277CDD688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F41F8);
  }

  return result;
}

uint64_t sub_23D91B760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D91B7A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a4;
  v110 = *(a2 - 8);
  v7 = *(v110 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v101 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = v98 - v10;
  v109 = sub_23D9DAD74();
  v105 = *(v109 - 8);
  v11 = *(v105 + 64);
  v12 = MEMORY[0x28223BE20](v109);
  v123 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4368, &qword_23D9DC090);
  v102 = *(v15 - 8);
  v103 = v15;
  v16 = *(v102 + 64);
  MEMORY[0x28223BE20](v15);
  v99 = v98 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41E0, &qword_23D9DBE40);
  v18 = *(*(v104 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v104);
  v122 = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v119 = v98 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41D8, &qword_23D9DBE38);
  v106 = *(v121 - 8);
  v22 = *(v106 + 64);
  v23 = MEMORY[0x28223BE20](v121);
  v120 = v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v125 = v98 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41D0, &qword_23D9DBE30);
  v117 = *(v26 - 8);
  v118 = v26;
  v27 = *(v117 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v116 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = v98 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F41C8, &qword_23D9DBE28);
  v114 = *(v32 - 8);
  v115 = v32;
  v33 = *(v114 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v113 = v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v98 - v36;
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x800000023D9E39D0;
  v145 = AXSUILocString(_:)(v38);
  v132 = a2;
  v133 = a3;
  v134 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4370, &qword_23D9DC098);
  sub_23D91E940();
  v39 = sub_23D91B650();
  v111 = v37;
  sub_23D9DA654();
  v129 = a2;
  v130 = a3;
  v131 = a1;
  v40._object = 0x800000023D9E39F0;
  v40._countAndFlagsBits = 0xD000000000000011;
  v145 = AXSUILocString(_:)(v40);
  v145._countAndFlagsBits = sub_23D9D9F04();
  v145._object = v41;
  LOBYTE(v146) = v42 & 1;
  v147 = v43;
  v44._countAndFlagsBits = 0xD000000000000012;
  v44._object = 0x800000023D9E3A10;
  v141 = AXSUILocString(_:)(v44);
  v98[2] = v39;
  v141._countAndFlagsBits = sub_23D9D9F04();
  v141._object = v45;
  LOBYTE(v142) = v46 & 1;
  v143 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43A8, &qword_23D9DC0A8);
  v96 = sub_23D91EB18();
  v97 = MEMORY[0x277CE0BC0];
  v112 = v31;
  sub_23D9DA674();
  v126 = a2;
  v127 = a3;
  v128 = a1;
  sub_23D91D5F4(&v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43F0, &qword_23D9DC0C8);
  sub_23D91F01C(&qword_27E2F43F8, &qword_27E2F43F0, &qword_23D9DC0C8);
  sub_23D9DA694();
  v124 = a3;
  v48 = type metadata accessor for AXSUIVoiceOverSpeechView();
  v49 = sub_23D91AC78(v48, &v145);
  if (LOBYTE(v145._countAndFlagsBits) == 1)
  {
    MEMORY[0x28223BE20](v49);
    v98[1] = &v98[-6];
    v50 = v124;
    v98[-4] = a2;
    v98[-3] = v50;
    v96 = a1;
    if (qword_27E2F41A8 != -1)
    {
      swift_once();
    }

    v51 = 0xEE005245544F4F46;
    v52 = 0x5F50554B41455053;
    if (qword_27E2F7320)
    {
      v53 = qword_27E2F7320;
      v54 = sub_23D9DA8A4();
      v55 = sub_23D9DA8A4();
      v56 = sub_23D9DA8A4();
      v57 = [v53 localizedStringForKey:v54 value:v55 table:v56];

      v52 = sub_23D9DA8B4();
      v51 = v58;
    }

    v59 = v110;
    v145._countAndFlagsBits = v52;
    v145._object = v51;
    v145._countAndFlagsBits = sub_23D9D9F04();
    v145._object = v60;
    LOBYTE(v146) = v61 & 1;
    v147 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0);
    v63 = v99;
    sub_23D9DA694();
    v65 = v102;
    v64 = v103;
    v66 = v119;
    (*(v102 + 32))(v119, v63, v103);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v66 = v119;
    v59 = v110;
    v65 = v102;
    v64 = v103;
  }

  v68 = 1;
  (*(v65 + 56))(v66, v67, 1, v64);
  v69 = a1 + *(v48 + 44);
  v70 = *v69;
  v71 = v123;
  if (*v69)
  {
    v72 = *(v69 + 8);

    v74 = v101;
    v70(v73);
    sub_23D91F064(v70);
    v75 = *(v59 + 16);
    v76 = v100;
    v75(v100, v74, a2);
    v77 = *(v59 + 8);
    v77(v74, a2);
    v75(v74, v76, a2);
    v77(v76, a2);
    (*(v59 + 32))(v71, v74, a2);
    v68 = 0;
  }

  (*(v59 + 56))(v71, v68, 1, a2);
  v78 = v107;
  sub_23D995250(v71, v107);
  v79 = v105;
  v103 = *(v105 + 8);
  v110 = v105 + 8;
  v80 = v109;
  v103(v71, v109);
  v81 = v113;
  (*(v114 + 16))(v113, v111, v115);
  v145._countAndFlagsBits = v81;
  v82 = v116;
  v83 = v118;
  (*(v117 + 16))(v116, v112);
  v145._object = v82;
  v84 = v106;
  v85 = v120;
  v86 = v121;
  (*(v106 + 16))(v120, v125, v121);
  v146 = v85;
  v87 = v119;
  v88 = v122;
  sub_23D91F2DC(v119, v122, &qword_27E2F41E0, &qword_23D9DBE40);
  v147 = v88;
  (*(v79 + 16))(v71, v78, v80);
  v148 = v71;
  v89 = v115;
  v141._countAndFlagsBits = v115;
  v141._object = v83;
  v90 = v83;
  v142 = v86;
  v143 = v104;
  v144 = v80;
  v136 = sub_23D91ECE8();
  v137 = sub_23D91ED80();
  v138 = sub_23D91EE10();
  v139 = sub_23D91EED4();
  v135 = v124;
  WitnessTable = swift_getWitnessTable();
  sub_23D9952BC(&v145, 5uLL, &v141);
  v91 = v103;
  v103(v78, v80);
  sub_23D91F344(v87, &qword_27E2F41E0, &qword_23D9DBE40);
  v92 = *(v84 + 8);
  v92(v125, v86);
  v93 = *(v117 + 8);
  v93(v112, v90);
  v94 = *(v114 + 8);
  v94(v111, v89);
  v91(v123, v80);
  sub_23D91F344(v122, &qword_27E2F41E0, &qword_23D9DBE40);
  v92(v120, v121);
  v93(v116, v118);
  return (v94)(v113, v89);
}

uint64_t sub_23D91C434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4388, &qword_23D9DC0A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v4 = v9[1];
  sub_23D9DAC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4470, &qword_23D9DC2B0);
  sub_23D91B760(&qword_27E2F4478, MEMORY[0x277CE7988]);
  v5 = sub_23D9D8E44();

  AXSUISystemDefaultVoiceSelectionCell.init(voiceTable:)(v5, v3);
  KeyPath = swift_getKeyPath();
  v7 = &v3[*(v0 + 36)];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x800000023D9E39D0;
  *(v7 + 2) = KeyPath;
  v7[24] = 0;
  sub_23D91E9FC();
  sub_23D9DA114();
  return sub_23D91F344(v3, &qword_27E2F4388, &qword_23D9DC0A0);
}

double sub_23D91C634@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a2;
  v60 = a3;
  v6 = type metadata accessor for AXSUIVoiceOverSpeechView();
  v57 = *(v6 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = &v40[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  v16 = *(v9 + 8);
  v16(v15, v8);
  v51 = v67;
  v50 = v68;
  v17 = sub_23D91AE74(v6);
  v54 = v18;
  v55 = v17;
  v52 = v20;
  v53 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  v16(v13, v8);
  v49 = v65;
  v48 = v66;
  KeyPath = swift_getKeyPath();
  LOBYTE(v61) = 0;
  sub_23D9DA3A4();
  v45 = v63;
  v46 = *(&v63 + 1);
  v61 = 0;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9DA3A4();
  v43 = v63;
  v42 = v64;
  LOBYTE(v63) = 0;
  v44 = swift_getKeyPath();
  sub_23D91AC78(v6, &v67);
  v41 = v67;
  v21 = sub_23D91AE74(v6);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v56;
  v29 = v57;
  (*(v57 + 16))(v56, a1, v6);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v32 = v60;
  *(v31 + 16) = v59;
  *(v31 + 24) = v32;
  (*(v29 + 32))(v31 + v30, v28, v6);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F43A8, &qword_23D9DC0A8);
  sub_23D9D1374(v21, v23, v25, v27, sub_23D91F240, v31, 0, 0, (a4 + *(v33 + 36)));
  *a4 = v51;
  *(a4 + 8) = v50;
  *(a4 + 24) = v45;
  *(a4 + 25) = v67;
  *(a4 + 28) = *(&v67 + 3);
  v35 = v54;
  v34 = v55;
  *(a4 + 32) = v46;
  *(a4 + 40) = v34;
  v36 = v52;
  v37 = v53;
  *(a4 + 48) = v35;
  *(a4 + 56) = v37;
  *(a4 + 64) = v36;
  *(a4 + 72) = v43;
  v38 = KeyPath;
  *(a4 + 88) = v42;
  *(a4 + 96) = v38;
  *(a4 + 104) = 0;
  *(a4 + 108) = *(&v65 + 3);
  *(a4 + 105) = v65;
  *(a4 + 112) = v49;
  result = *&v48;
  *(a4 + 120) = v48;
  *(a4 + 136) = v44;
  *(a4 + 144) = v41;
  return result;
}

uint64_t sub_23D91CAD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DABE4();
  *a2 = result;
  return result;
}

uint64_t sub_23D91CB04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D9DABF4();
}

uint64_t sub_23D91CB30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v12 = *a1;
  v11 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v13 = sub_23D9D8C74();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  *a2 = v12;
  a2[1] = v11;
  v14 = type metadata accessor for VoiceRotorDetailView();
  v15 = *(v14 + 20);
  sub_23D9DAC84();
  sub_23D91B760(&qword_27E2F41C0, MEMORY[0x277CE7988]);
  sub_23D9DA6C4();
  v16 = *(v14 + 24);
  sub_23D91F2DC(v10, v8, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D91CD0C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4438, &qword_23D9DC128);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4440, &qword_23D9DC130);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  *v13 = sub_23D9D99B4();
  *(v13 + 1) = 0;
  v14 = 1;
  v13[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4448, &qword_23D9DC138);
  sub_23D91D084(&v13[*(v15 + 44)]);
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(v6 + 36)];
  *v17 = 0xD000000000000013;
  *(v17 + 1) = 0x800000023D9E3B20;
  *(v17 + 2) = KeyPath;
  v17[24] = 0;
  v18 = type metadata accessor for AXSUIVoiceOverSpeechView();
  sub_23D91AC78(v18, &v29);
  if ((v29 & 1) == 0)
  {
    *v11 = sub_23D9D99B4();
    *(v11 + 1) = 0;
    v11[16] = 1;
    sub_23D91D33C(&v11[*(v15 + 44)]);
    v19 = swift_getKeyPath();
    v20 = &v11[*(v6 + 36)];
    *v20 = 0xD000000000000012;
    *(v20 + 1) = 0x800000023D9E3B40;
    *(v20 + 2) = v19;
    v20[24] = 0;
    sub_23D91F090(v11, v28);
    v14 = 0;
  }

  v21 = v28;
  (*(v7 + 56))(v28, v14, 1, v6);
  sub_23D91F2DC(v13, v11, &qword_27E2F4440, &qword_23D9DC130);
  v22 = v26;
  sub_23D91F2DC(v21, v26, &qword_27E2F4438, &qword_23D9DC128);
  v23 = v27;
  sub_23D91F2DC(v11, v27, &qword_27E2F4440, &qword_23D9DC130);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4450, qword_23D9DC168);
  sub_23D91F2DC(v22, v23 + *(v24 + 48), &qword_27E2F4438, &qword_23D9DC128);
  sub_23D91F344(v21, &qword_27E2F4438, &qword_23D9DC128);
  sub_23D91F344(v13, &qword_27E2F4440, &qword_23D9DC130);
  sub_23D91F344(v22, &qword_27E2F4438, &qword_23D9DC128);
  return sub_23D91F344(v11, &qword_27E2F4440, &qword_23D9DC130);
}

uint64_t sub_23D91D084@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11._object = 0x800000023D9E3B20;
  v11._countAndFlagsBits = 0xD000000000000013;
  v14 = AXSUILocString(_:)(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v2 + 8))(v5, v1);
  sub_23D91B650();
  sub_23D9DA4C4();
  sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0);
  sub_23D9DA114();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23D91D2E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAC44();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D91D314(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23D9DAC54();
}

uint64_t sub_23D91D33C@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11._object = 0x800000023D9E3B40;
  v11._countAndFlagsBits = 0xD000000000000012;
  v14 = AXSUILocString(_:)(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v2 + 8))(v5, v1);
  sub_23D91B650();
  sub_23D9DA4C4();
  sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0);
  sub_23D9DA114();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23D91D59C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAC64();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D91D5CC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23D9DAC74();
}

uint64_t sub_23D91D5F4@<X0>(uint64_t a1@<X8>)
{
  sub_23D91AED8();
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23D91D650()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  v5._countAndFlagsBits = 0x50554B41455053;
  v5._object = 0xE700000000000000;
  v8 = AXSUILocString(_:)(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v1 + 8))(v4, v0);
  sub_23D91B650();
  return sub_23D9DA4C4();
}

uint64_t sub_23D91D7BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D9DAC24();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D91D7EC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23D9DAC34();
}

uint64_t sub_23D91D814()
{
  v0 = sub_23D9D9414();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4360, &qword_23D9DC088);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  sub_23D9DA6A4();
  v9 = v13[1];
  v10 = sub_23D9DAC04();

  v11 = *(v10 + 16);

  if (v11)
  {
    sub_23D9D9404();
    (*(v1 + 16))(v8, v4, v0);
    swift_storeEnumTagMultiPayload();
    sub_23D91B760(&qword_27E2F4200, MEMORY[0x277CDD688]);
    sub_23D9D9B14();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_23D91B760(&qword_27E2F4200, MEMORY[0x277CDD688]);
    return sub_23D9D9B14();
  }
}

uint64_t sub_23D91DA74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D91D814();
}

uint64_t sub_23D91DAA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D9D9CA4();

    return sub_23D9D96C4();
  }

  else
  {
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    sub_23D9D96C4();
    sub_23D9DAD74();
    swift_getWitnessTable();
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    return sub_23D9D96C4();
  }
}

uint64_t sub_23D91DC0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_23D9D9CA4();
    sub_23D9D96C4();
  }

  else
  {
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    sub_23D9D96C4();
    sub_23D9DAD74();
    swift_getWitnessTable();
    sub_23D9D9754();
    swift_getWitnessTable();
    sub_23D9D9C24();
    sub_23D9D96C4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D91DE0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23D9D9CA4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, a1, a4);
  (*(v9 + 32))(v17, v12, a4);
  v17[*(v13 + 36)] = a2;
  MEMORY[0x23EEF34C0](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

_DWORD *sub_23D91DFC4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23D91DFE0()
{
  v1 = *v0;
  sub_23D9DB034();
  sub_23D9DB054();
  return sub_23D9DB064();
}

uint64_t sub_23D91E054()
{
  v1 = *v0;
  sub_23D9DB034();
  sub_23D9DB054();
  return sub_23D9DB064();
}

uint64_t sub_23D91E0AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D91E0BC(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23D9D9614();
  }

  else
  {
    sub_23D9D9584();
  }

  return sub_23D9D96C4();
}

uint64_t sub_23D91E124(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_23D9D9614();
    sub_23D9D96C4();
    sub_23D91E218();
  }

  else
  {
    sub_23D9D9584();
    sub_23D9D96C4();
    sub_23D91B760(&qword_27E2F4228, MEMORY[0x277CDD8B8]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_23D91E218()
{
  result = qword_27E2F4220;
  if (!qword_27E2F4220)
  {
    sub_23D9D9614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4220);
  }

  return result;
}

void sub_23D91E2B0()
{
  sub_23D91E5A8();
  if (v0 <= 0x3F)
  {
    sub_23D91F478(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      sub_23D91E600(319, &qword_27E2F4340, &qword_27E2F41B8, &qword_23D9DBE20, MEMORY[0x277CE10B0]);
      if (v2 <= 0x3F)
      {
        sub_23D91E600(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23D91E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23D91E4E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

void sub_23D91E5A8()
{
  if (!qword_27E2F4330)
  {
    sub_23D9DAC84();
    v0 = sub_23D9DA6E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F4330);
    }
  }
}

void sub_23D91E600(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D91E664(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41C8, &qword_23D9DBE28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D0, &qword_23D9DBE30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D8, &qword_23D9DBE38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41E0, &qword_23D9DBE40);
  sub_23D9DAD74();
  swift_getTupleTypeMetadata();
  sub_23D9DA7C4();
  swift_getWitnessTable();
  type metadata accessor for AXSUIPlatformFormListView();
  swift_getWitnessTable();
  sub_23D91B650();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41F0, qword_23D9DBE48);
  swift_getOpaqueTypeConformance2();
  sub_23D91B6A4();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D91E83C(uint64_t a1, int a2)
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

uint64_t sub_23D91E884(uint64_t result, int a2, int a3)
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

unint64_t sub_23D91E8D4()
{
  result = qword_27E2F4358;
  if (!qword_27E2F4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4358);
  }

  return result;
}

uint64_t sub_23D91E934()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D91C434();
}

unint64_t sub_23D91E940()
{
  result = qword_27E2F4378;
  if (!qword_27E2F4378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4370, &qword_23D9DC098);
    sub_23D91E9FC();
    sub_23D91B760(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4378);
  }

  return result;
}

unint64_t sub_23D91E9FC()
{
  result = qword_27E2F4380;
  if (!qword_27E2F4380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4388, &qword_23D9DC0A0);
    sub_23D91B760(&unk_27E2F4390, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
    sub_23D91EAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4380);
  }

  return result;
}

unint64_t sub_23D91EAB8()
{
  result = qword_27E2F6370;
  if (!qword_27E2F6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6370);
  }

  return result;
}

unint64_t sub_23D91EB18()
{
  result = qword_27E2F43B0;
  if (!qword_27E2F43B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F43A8, &qword_23D9DC0A8);
    sub_23D91EBD0();
    sub_23D91F01C(&qword_27E2F43E0, &qword_27E2F43E8, &qword_23D9DC0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43B0);
  }

  return result;
}

unint64_t sub_23D91EBD0()
{
  result = qword_27E2F43B8;
  if (!qword_27E2F43B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F43C0, &qword_23D9DC0B0);
    sub_23D91EC88();
    sub_23D91F01C(&qword_27E2F43D0, &qword_27E2F43D8, &qword_23D9DC0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43B8);
  }

  return result;
}

unint64_t sub_23D91EC88()
{
  result = qword_27E2F43C8;
  if (!qword_27E2F43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43C8);
  }

  return result;
}

uint64_t sub_23D91ECDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_23D91CD0C(a1);
}

unint64_t sub_23D91ECE8()
{
  result = qword_27E2F4400;
  if (!qword_27E2F4400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41C8, &qword_23D9DBE28);
    sub_23D91E940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4400);
  }

  return result;
}

unint64_t sub_23D91ED80()
{
  result = qword_27E2F4408;
  if (!qword_27E2F4408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D0, &qword_23D9DBE30);
    sub_23D91EB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4408);
  }

  return result;
}

unint64_t sub_23D91EE10()
{
  result = qword_27E2F4410;
  if (!qword_27E2F4410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41D8, &qword_23D9DBE38);
    sub_23D91F01C(&qword_27E2F43F8, &qword_27E2F43F0, &qword_23D9DC0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4410);
  }

  return result;
}

unint64_t sub_23D91EED4()
{
  result = qword_27E2F4418;
  if (!qword_27E2F4418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F41E0, &qword_23D9DBE40);
    sub_23D91EF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4418);
  }

  return result;
}

unint64_t sub_23D91EF58()
{
  result = qword_27E2F4420;
  if (!qword_27E2F4420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4368, &qword_23D9DC090);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4420);
  }

  return result;
}

uint64_t sub_23D91F01C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D91F064(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D91F074()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23D91D650();
}

uint64_t sub_23D91F080(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23D91F090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4440, &qword_23D9DC130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D91F108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for AXSUIVoiceOverSpeechView() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F42A8, &unk_23D9DBF40);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_23D91F080(*(v5 + v3[11]), *(v5 + v3[11] + 8));
  v7 = v5 + v3[12];
  v8 = *(v7 + 8);

  v9 = *(v7 + 16);

  v10 = (v5 + v3[13]);
  if (*v10)
  {
    v11 = v10[1];
  }

  return swift_deallocObject();
}

uint64_t sub_23D91F240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for AXSUIVoiceOverSpeechView() - 8) + 80);

  return sub_23D91CB30(a1, a2);
}

uint64_t sub_23D91F2DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D91F344(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23D91F3A4()
{
  result = qword_27E2F4480;
  if (!qword_27E2F4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4480);
  }

  return result;
}

void sub_23D91F478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t AXSUIMacroLanguageDisambiguationSelection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4._object = 0x800000023D9E3B90;
  v4._countAndFlagsBits = 0xD000000000000015;
  AXSUILocString(_:)(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4560, &qword_23D9DC3F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D9DC3E0;
  v6 = sub_23D9D8934();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_23D91F908();
  if (!v8)
  {
    v6 = sub_23D9D88D4();
    v8 = v9;
  }

  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = sub_23D9DA8C4();
  v12 = v11;

  v13._countAndFlagsBits = 0x4749424D41534944;
  v13._object = 0xEE004E4F49544155;
  v43 = AXSUILocString(_:)(v13);
  sub_23D91B650();
  v43._countAndFlagsBits = sub_23D9D9F04();
  v43._object = v14;
  v44 = v15 & 1;
  v45 = v16;
  v39 = v10;
  v40 = v12;
  v39 = sub_23D9D9F04();
  v40 = v17;
  v41 = v18 & 1;
  v42 = v19;
  MEMORY[0x28223BE20](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4570, &qword_23D9DC3F8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4578, &qword_23D9DC400);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4580, &qword_23D9DC408);
  v22 = sub_23D9D9994();
  v23 = sub_23D91F01C(&qword_27E2F4588, &qword_27E2F4580, &qword_23D9DC408);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = MEMORY[0x277CDDD98];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v20;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_23D9DA674();
  v26 = v33;
  sub_23D92581C(v1, v33, type metadata accessor for AXSUIMacroLanguageDisambiguationSelection);
  v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v28 = swift_allocObject();
  sub_23D925888(v26, v28 + v27, type metadata accessor for AXSUIMacroLanguageDisambiguationSelection);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4598, &qword_23D9DC418);
  v30 = (v25 + *(result + 36));
  *v30 = sub_23D920738;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  return result;
}

unint64_t sub_23D91F908()
{
  result = qword_27E2F4568;
  if (!qword_27E2F4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4568);
  }

  return result;
}

uint64_t sub_23D91F95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_23D9D9994();
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4580, &qword_23D9DC408);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4578, &qword_23D9DC400);
  v15 = *(v14 - 8);
  v27 = v14;
  v28 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v19._countAndFlagsBits = 0x4749424D41534944;
  v19._object = 0xEE004E4F49544155;
  v33 = AXSUILocString(_:)(v19);
  v20 = a1 + *(type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0) + 20);
  sub_23D9DA584();
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47D8, &qword_23D9DC8C8);
  sub_23D92A334();
  sub_23D91F01C(&qword_27E2F47E8, &qword_27E2F47D8, &qword_23D9DC8C8);
  sub_23D91B650();
  sub_23D9DA484();
  sub_23D9D9984();
  v21 = sub_23D91F01C(&qword_27E2F4588, &qword_27E2F4580, &qword_23D9DC408);
  v22 = MEMORY[0x277CDDD98];
  v23 = v29;
  sub_23D9D9FE4();
  (*(v30 + 8))(v7, v23);
  (*(v26 + 8))(v13, v10);
  v33._countAndFlagsBits = v10;
  v33._object = v23;
  v34 = v21;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_23D9DA004();
  return (*(v28 + 8))(v18, v24);
}

uint64_t sub_23D91FD6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a1;
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47F0, &qword_23D9DC8D0);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47F8, &qword_23D9DC8D8);
  v46 = *(v48 - 8);
  v11 = v46;
  v12 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v48);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18._countAndFlagsBits = 0x544C5541464544;
  v18._object = 0xE700000000000000;
  v54 = AXSUILocString(_:)(v18);
  sub_23D91B650();
  v19 = sub_23D9D9F04();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_23D9D8954();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4208, &unk_23D9DC8E0) + 36)];
  sub_23D92A2BC(v10, v27, &qword_27E2F4210, &qword_23D9DBE60);
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4218, &qword_23D9DBE68) + 36)) = 1;
  *v17 = v19;
  *(v17 + 1) = v21;
  v17[16] = v23 & 1;
  *(v17 + 3) = v25;
  v45 = v17;
  v28 = (v47 + *(type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0) + 24));
  v30 = *v28;
  v29 = v28[1];
  v54._countAndFlagsBits = v30;
  v54._object = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47D0, &qword_23D9DC8C0);
  sub_23D9DA3B4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D927B50(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v31 = sub_23D92A334();
  v54._countAndFlagsBits = MEMORY[0x277CE0BD0];
  v54._object = v7;
  v55 = MEMORY[0x277CE0BC0];
  v56 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v53;
  v33 = v48;
  sub_23D9DA614();
  v34 = *(v11 + 16);
  v34(v15, v17, v33);
  v35 = v49;
  v36 = v50;
  v37 = *(v50 + 16);
  v38 = v32;
  v39 = v51;
  v37(v49, v38, v51);
  v40 = v52;
  v34(v52, v15, v33);
  v41 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4808, &qword_23D9DC908) + 48)];
  v37(v41, v35, v39);
  v42 = *(v36 + 8);
  v42(v53, v39);
  v43 = *(v46 + 8);
  v43(v45, v33);
  v42(v35, v39);
  return (v43)(v15, v33);
}

uint64_t sub_23D920290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  v8 = sub_23D9D8934();
  if (!v9)
  {
    v8 = sub_23D9D88D4();
  }

  v21[0] = v8;
  v21[1] = v9;
  sub_23D91B650();
  v10 = sub_23D9D9F04();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_23D9D8954();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4208, &unk_23D9DC8E0) + 36);
  sub_23D92A2BC(v7, v19, &qword_27E2F4210, &qword_23D9DBE60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4218, &qword_23D9DBE68);
  *(v19 + *(result + 36)) = 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_23D92043C(uint64_t a1)
{
  v2 = sub_23D9D8904();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_23D94FB78(*(v2 + 16), 0);
  v6 = *(sub_23D9D8954() - 8);
  v7 = sub_23D99F664(v12, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);

  sub_23D92A324();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v12[0] = v5;
  sub_23D925DBC(v12);

  v8 = a1 + *(type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0) + 24);
  v10 = *v8;
  v9 = *(v8 + 8);
  v12[0] = v10;
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47D0, &qword_23D9DC8C0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9205A8()
{
  v1 = type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);
  v14 = *(*(v1 - 8) + 64);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = (v2 + *(v1 + 20));
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410) + 32);
  if (!(*(v4 + 48))(&v6[v9], 1, v3))
  {
    v5(&v6[v9], v3);
  }

  v10 = (v2 + *(v1 + 24));
  v11 = *v10;

  v12 = v10[1];

  return swift_deallocObject();
}

BOOL sub_23D920764()
{
  sub_23D9D8934();
  if (!v0)
  {
    sub_23D9D88D4();
  }

  sub_23D9D8934();
  if (!v1)
  {
    sub_23D9D88D4();
  }

  sub_23D91B650();
  v2 = sub_23D9DAD94();

  return v2 == -1;
}

uint64_t sub_23D920814()
{
  v0 = *(type metadata accessor for AXSUILanguageDetailView(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  return sub_23D9DA3B4();
}

uint64_t sub_23D920868()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for AXSUILanguageDetailView(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_23D9DACD4();
    v9 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_23D9209B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = sub_23D9D8954();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v13, a4);
  sub_23D91F2DC(a1, v9, &qword_27E2F5900, &unk_23D9DC640);
  v15 = sub_23D9D8DC4();
  sub_23D95914C(v9, v13);
  return v15(v17, 0);
}

uint64_t sub_23D920B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-v9];
  v11 = sub_23D9D8954();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    (*(v14 + 16))(v16, a4);
    sub_23D91F2DC(a1, v10, &qword_27E2F4210, &qword_23D9DBE60);
    v17 = sub_23D9D8DC4();
    sub_23D959378(v10, v16);
    return v17(v18, 0);
  }

  return result;
}

uint64_t sub_23D920C9C()
{
  v1 = v0;
  v2 = type metadata accessor for AXSUILanguageDetailView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = (v1 + *(v3 + 56));
  v12 = *v11;
  v13 = v11[1];
  v23 = *v11;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4748, &qword_23D9DC7B8);
  sub_23D9DA3B4();
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
    sub_23D9DAA44();
  }

  v14 = sub_23D9DA9F4();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_23D92581C(v1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUILanguageDetailView);
  sub_23D9DA9B4();
  v15 = sub_23D9DA9A4();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_23D925888(v6, v17 + v16, type metadata accessor for AXSUILanguageDetailView);
  v19 = sub_23D9897D0(0, 0, v10, &unk_23D9DC7D8, v17);
  v23 = v12;
  v24 = v13;
  v22 = v19;
  return sub_23D9DA3C4();
}

uint64_t sub_23D920F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B8, &qword_23D9DC738) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C0, &qword_23D9DC740);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C8, &qword_23D9DC748);
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46D0, &qword_23D9DC750);
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = sub_23D9DA9B4();
  v4[24] = sub_23D9DA9A4();
  v19 = sub_23D9DA994();
  v4[25] = v19;
  v4[26] = v18;

  return MEMORY[0x2822009F8](sub_23D9211A0, v19, v18);
}

uint64_t sub_23D9211A0()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 64);
  v6 = type metadata accessor for AXSUILanguageDetailView(0);
  *(v0 + 216) = v6;
  v7 = *(v5 + *(v6 + 20));
  sub_23D9D8DB4();
  sub_23D920868();
  sub_23D9D8DD4();

  (*(v3 + 8))(v2, v4);
  v8 = (v5 + *(v6 + 44));
  v9 = *v8;
  *(v0 + 279) = *v8;
  v10 = *(v8 + 1);
  *(v0 + 224) = v10;
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 276) = 0;

  *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3C4();
  v11 = *(MEMORY[0x277CE6750] + 4);
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_23D921318;
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);

  return MEMORY[0x282138898](v15, v14);
}

uint64_t sub_23D921318()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23D921438, v4, v3);
}

uint64_t sub_23D921438()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 279);
  v18 = *(v0 + 176);
  v16 = *(v0 + 232);
  v17 = *(v0 + 160);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  *(v0 + 272) = *(*(v0 + 216) + 32);
  sub_23D91F2DC(v3, v4, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  sub_23D91F344(v3, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 277) = 1;
  sub_23D9DA3C4();

  sub_23D9D8E14();
  v7 = *(v0 + 184);
  v8 = sub_23D9DA9A4();
  *(v0 + 256) = v8;
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_23D9215D0;
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v12, v8, v14, v13);
}

uint64_t sub_23D9215D0()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23D921714, v5, v4);
}

uint64_t sub_23D921714()
{
  v1 = *(v0 + 72);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    v2 = *(v0 + 192);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 128);
    v28 = *(v0 + 120);
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);

    (*(v8 + 8))(v9, v10);
    (*(v4 + 8))(v3, v5);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 272);
    v27 = *(v0 + 224);
    v29 = *(v0 + 232);
    v15 = *(v0 + 279);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 64);
    sub_23D92A2BC(v1, v16, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D91F2DC(v16, v17, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D9DA3C4();
    sub_23D91F344(v16, &qword_27E2F5900, &unk_23D9DC640);
    *(v0 + 48) = v15;
    *(v0 + 56) = v27;
    *(v0 + 278) = 1;
    sub_23D9DA3C4();
    v19 = *(v0 + 184);
    v20 = sub_23D9DA9A4();
    *(v0 + 256) = v20;
    v21 = *(MEMORY[0x277D85798] + 4);
    v22 = swift_task_alloc();
    *(v0 + 264) = v22;
    *v22 = v0;
    v22[1] = sub_23D9215D0;
    v23 = *(v0 + 96);
    v24 = *(v0 + 72);
    v25 = *(v0 + 80);
    v26 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v24, v20, v26, v25);
  }
}

uint64_t sub_23D92196C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AXSUILanguageDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = v6;
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46D8, &qword_23D9DC758);
  v23 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  sub_23D921CA8(v1, &v23 - v10);
  KeyPath = swift_getKeyPath();
  v13 = &v11[*(v8 + 36)];
  *v13 = KeyPath;
  v13[8] = 0;
  v26 = type metadata accessor for AXSUILanguageDetailView;
  sub_23D92581C(v1, v7, type metadata accessor for AXSUILanguageDetailView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v24 = type metadata accessor for AXSUILanguageDetailView;
  sub_23D925888(v7, v15 + v14, type metadata accessor for AXSUILanguageDetailView);
  sub_23D9D8954();
  sub_23D92784C();
  sub_23D927B50(&qword_27E2F4730, MEMORY[0x277CC9640]);
  sub_23D9DA1E4();

  sub_23D91F344(v11, &qword_27E2F46D8, &qword_23D9DC758);
  v16 = v26;
  sub_23D92581C(v1, v7, v26);
  v17 = swift_allocObject();
  v18 = v24;
  sub_23D925888(v7, v17 + v14, v24);
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4738, &qword_23D9DC7A8) + 36));
  *v19 = sub_23D9277F0;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  sub_23D92581C(v1, v7, v16);
  v20 = swift_allocObject();
  sub_23D925888(v7, v20 + v14, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4740, &qword_23D9DC7B0);
  v22 = (a1 + *(result + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_23D927E80;
  v22[3] = v20;
  return result;
}

uint64_t sub_23D921CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v98 - v5;
  v6 = sub_23D9D8954();
  v111 = *(v6 - 8);
  *&v112 = v6;
  v7 = v111[8];
  MEMORY[0x28223BE20](v6);
  v100 = v8;
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v10 = *(*(v103 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v103);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v98 - v14;
  v102 = type metadata accessor for AXSUIVoiceSettings();
  v15 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4710, &qword_23D9DC798);
  v17 = *(*(v116 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v116);
  v107 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v98 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4768, &unk_23D9DC7F0);
  v21 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v115 = &v98 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v23 = *(*(v106 - 1) + 64);
  v24 = MEMORY[0x28223BE20](v106);
  v105 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v104 = &v98 - v26;
  v27 = type metadata accessor for AXSUILanguageDetailView(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v31 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v98 - v32;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A8, &unk_23D9DC460);
  v34 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v36 = &v98 - v35;
  v37 = a1;
  if (sub_23D9D88F4())
  {
    sub_23D92581C(a1, v33, type metadata accessor for AXSUILanguageDetailView);
    v38 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v110 = swift_allocObject();
    sub_23D925888(v33, v110 + v38, type metadata accessor for AXSUILanguageDetailView);
    sub_23D92581C(a1, v33, type metadata accessor for AXSUILanguageDetailView);
    v109 = swift_allocObject();
    sub_23D925888(v33, v109 + v38, type metadata accessor for AXSUILanguageDetailView);
    sub_23D92581C(a1, v33, type metadata accessor for AXSUILanguageDetailView);
    v108 = swift_allocObject();
    sub_23D925888(v33, v108 + v38, type metadata accessor for AXSUILanguageDetailView);
    sub_23D92581C(a1, v31, type metadata accessor for AXSUILanguageDetailView);
    v39 = swift_allocObject();
    sub_23D925888(v31, v39 + v38, type metadata accessor for AXSUILanguageDetailView);
    v40 = v113;
    v41 = v112;
    v42 = v111[7];
    v42(&v36[*(v113 + 68)], 1, 1, v112);
    v43 = v40[18];
    *&v36[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
    swift_storeEnumTagMultiPayload();
    v44 = &v36[v40[19]];
    LOBYTE(v123) = 1;
    sub_23D9DA3A4();
    v45 = *(&v120 + 1);
    *v44 = v120;
    *(v44 + 1) = v45;
    v46 = &v36[v40[20]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v47 = &v36[v40[21]];
    *v47 = swift_getKeyPath();
    v47[40] = 0;
    v48 = v40[22];
    v49 = v104;
    v42(v104, 1, 1, v41);
    sub_23D91F2DC(v49, v105, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D9DA3A4();
    sub_23D91F344(v49, &qword_27E2F4210, &qword_23D9DBE60);
    v50 = v109;
    v51 = v110;
    *v36 = sub_23D929B74;
    *(v36 + 1) = v51;
    *(v36 + 2) = sub_23D929C40;
    *(v36 + 3) = v50;
    v36[48] = 0;
    v52 = v108;
    *(v36 + 7) = sub_23D929D04;
    *(v36 + 8) = v52;
    *(v36 + 4) = sub_23D929D84;
    *(v36 + 5) = v39;
    v53 = &qword_27E2F45A8;
    v54 = &unk_23D9DC460;
    sub_23D91F2DC(v36, v115, &qword_27E2F45A8, &unk_23D9DC460);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F4630, &qword_27E2F45A8, &unk_23D9DC460);
    sub_23D927A14();
    sub_23D9D9B14();
    v55 = v36;
  }

  else
  {
    v56 = *(v27 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    v98 = v37;
    sub_23D9DA3D4();
    v57 = *(v27 + 20);
    v58 = v27;
    v99 = v27;
    v59 = *(v37 + v57);
    v60 = v111;
    v106 = v111[2];
    v61 = v37;
    v62 = v112;
    (v106)(v9, v61, v112);
    v63 = *(v60 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    (v60[4])(v64 + ((v63 + 24) & ~v63), v9, v62);

    sub_23D9DA524();

    sub_23D91F344(v13, &qword_27E2F4760, &qword_23D9E0740);
    v65 = v98;
    v66 = v108;
    sub_23D91F2DC(v98 + *(v58 + 28), v108, &qword_27E2F4670, &qword_23D9DC650);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
    v67 = v60[9];
    v68 = (v63 + 32) & ~v63;
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_23D9DC3E0;
    (v106)(v69 + v68, v65, v62);
    v70 = sub_23D93D8F8(v69);
    swift_setDeallocating();
    (v60[1])(v69 + v68, v62);
    swift_deallocClassInstance();
    *&v120 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
    sub_23D9DA5A4();

    v71 = v123;
    v72 = v102;
    v73 = v101;
    v74 = &v101[*(v102 + 28)];
    LOBYTE(v118) = 0;
    v112 = v124;
    sub_23D9DA3A4();
    v75 = *(&v120 + 1);
    *v74 = v120;
    *(v74 + 1) = v75;
    v76 = v73 + v72[8];
    sub_23D9D9C64();
    v77 = v72[10];
    v78 = sub_23D9D89C4();
    (*(*(v78 - 8) + 56))(v73 + v77, 1, 1, v78);
    v79 = (v73 + v72[12]);
    v80 = v73 + v72[13];
    *v80 = swift_getKeyPath();
    *(v80 + 8) = 0;
    v81 = v73 + v72[14];
    LOBYTE(v118) = 0;
    sub_23D9DA3A4();
    v82 = *(&v120 + 1);
    *v81 = v120;
    *(v81 + 8) = v82;
    v83 = v72[15];
    v118 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
    sub_23D9DA3A4();
    *(v73 + v83) = v120;
    v84 = v110;
    sub_23D91F2DC(v110, v73, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D929AE4(v66, v73 + v77);
    *(v73 + v72[11]) = 125;
    v85 = v73 + v72[5];
    *v85 = v71;
    *(v85 + 8) = v112;
    v86 = (v73 + v72[9]);
    *v86 = 0;
    v86[1] = 0;
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_23D9DA5A4();
    sub_23D91F344(v66, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v84, &qword_27E2F4760, &qword_23D9E0740);
    v87 = v121;
    v88 = v122;
    v89 = v73 + v72[6];
    *v89 = v120;
    *(v89 + 16) = v87;
    *(v89 + 24) = v88;
    *v79 = 0;
    v79[1] = 0;
    v90 = v65 + *(v99 + 44);
    LOBYTE(v88) = *v90;
    v91 = *(v90 + 8);
    LOBYTE(v120) = v88;
    *(&v120 + 1) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
    sub_23D9DA3B4();
    LOBYTE(v65) = v123;
    KeyPath = swift_getKeyPath();
    v93 = swift_allocObject();
    *(v93 + 16) = (v65 & 1) == 0;
    v94 = v107;
    sub_23D925888(v73, v107, type metadata accessor for AXSUIVoiceSettings);
    v95 = (v94 + *(v116 + 36));
    *v95 = KeyPath;
    v95[1] = sub_23D929B6C;
    v95[2] = v93;
    v53 = &qword_27E2F4710;
    v54 = &qword_23D9DC798;
    v96 = v109;
    sub_23D92A2BC(v94, v109, &qword_27E2F4710, &qword_23D9DC798);
    sub_23D91F2DC(v96, v115, &qword_27E2F4710, &qword_23D9DC798);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F4630, &qword_27E2F45A8, &unk_23D9DC460);
    sub_23D927A14();
    sub_23D9D9B14();
    v55 = v96;
  }

  return sub_23D91F344(v55, v53, v54);
}

double sub_23D9229A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v7 = *(*(v38 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v34 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v11 = *(*(v36 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_23D9D8954();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a4, a1, v17);
  v19 = type metadata accessor for AXSUILanguageDetailView(0);
  v20 = *(a3 + v19[5]);
  v21 = v19[7];
  v22 = sub_23D9D89C4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a4 + v21, v34, v22);
  (*(v23 + 56))(a4 + v21, 0, 1, v22);
  v24 = sub_23D9D8DA4();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = v35;
  (*(v18 + 56))(v35, 1, 1, v17);
  KeyPath = swift_getKeyPath();
  *(a4 + v19[5]) = v20;
  *(a4 + v19[6]) = 0;
  v27 = v19[8];
  sub_23D91F2DC(v16, v14, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v16, &qword_27E2F5900, &unk_23D9DC640);
  v28 = v19[9];
  sub_23D91F2DC(v25, v37, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  sub_23D91F344(v25, &qword_27E2F4210, &qword_23D9DBE60);
  v29 = a4 + v19[10];
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v30 = a4 + v19[11];
  LOBYTE(v39) = 0;
  sub_23D9DA3A4();
  v31 = *(&v40 + 1);
  *v30 = v40;
  *(v30 + 8) = v31;
  v32 = v19[12];
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  result = *&v40;
  *(a4 + v32) = v40;
  return result;
}

uint64_t sub_23D922D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v6 = *(*(v29 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v12 = *(*(v28 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v28);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = sub_23D9D8954();
  (*(*(v18 - 8) + 16))(a3, a1, v18);
  v19 = *(a2 + *(type metadata accessor for AXSUILanguageDetailView(0) + 20));
  v20 = sub_23D9D8DA4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = sub_23D9D8C74();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for AXSUILanguageAccessoryView(0);
  *(a3 + v23[5]) = v19;
  v24 = a3 + v23[6];
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  v25 = v23[7];
  sub_23D91F2DC(v17, v15, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v17, &qword_27E2F5900, &unk_23D9DC640);
  v26 = v23[8];
  sub_23D91F2DC(v11, v9, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v11, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D923034(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_23D927B50(&qword_27E2F58C0, MEMORY[0x277CC9640]), v9 = sub_23D9DA874(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_23D927B50(&qword_27E2F4730, MEMORY[0x277CC9640]);
      v17 = sub_23D9DA894();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_23D92324C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4780, &qword_23D9DC860);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_23D92334C(a1, &v11 - v7);
  sub_23D91F2DC(v8, v6, &qword_27E2F4780, &qword_23D9DC860);
  sub_23D929DE4();
  v9 = sub_23D9DA4D4();
  sub_23D91F344(v8, &qword_27E2F4780, &qword_23D9DC860);
  return v9;
}

uint64_t sub_23D92334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47C8, &qword_23D9DC880);
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - v5;
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v9;
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  v11 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47A8, &qword_23D9DC870);
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = type metadata accessor for AXSUILanguageDetailView(0);
  v19 = *(a1 + *(v18 + 24));
  if (v19)
  {
    v20 = v18;
    v49 = v3;
    v21 = *(v7 + 16);
    v53 = v17;
    v21(v17, a1, v6);
    v48 = v21;
    v22 = *(v20 + 36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
    sub_23D9DA3D4();
    v21(v10, a1, v6);
    v23 = *(v7 + 80);
    v24 = swift_allocObject();
    v46 = a1;
    *(v24 + 16) = v19;
    v47 = *(v7 + 32);
    v47(v24 + ((v23 + 24) & ~v23), v10, v6);
    v25 = type metadata accessor for AXSUIMacroLanguageDisambiguationSelection(0);
    v26 = *(v25 + 20);

    v45 = v6;
    v27 = v53;
    sub_23D9DA524();

    sub_23D91F344(v13, &qword_27E2F4590, &qword_23D9DC410);
    v28 = &v27[*(v25 + 24)];
    v58 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
    sub_23D9DA3A4();
    v29 = v60;
    *v28 = v59;
    *(v28 + 1) = v29;
    v30 = v52;
    sub_23D9D8DB4();
    v31 = v45;
    v32 = v46;
    v48(v10, v46, v45);
    v33 = swift_allocObject();
    v47(v33 + ((v23 + 16) & ~v23), v10, v31);
    v34 = v56;
    v35 = v53;
    v36 = &v53[*(v56 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
    v37 = v49;
    sub_23D9D8E24();

    (*(v51 + 8))(v30, v37);
    KeyPath = swift_getKeyPath();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F47C0, &qword_23D9DC878);
    sub_23D92581C(v32, &v36[v39[10]], type metadata accessor for AXSUILanguageDetailView);
    *&v36[v39[9]] = KeyPath;
    v36[v39[11]] = 1;
    v40 = v54;
    sub_23D92A2BC(v35, v54, &qword_27E2F47A8, &qword_23D9DC870);
    return (*(v55 + 56))(v40, 0, 1, v34);
  }

  else
  {
    v42 = v54;
    v43 = *(v55 + 56);
    v44 = v56;

    return v43(v42, 1, 1, v44);
  }
}

uint64_t sub_23D9238D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  sub_23D9DA9B4();
  v3[5] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D923970, v5, v4);
}

uint64_t sub_23D923970()
{
  v2 = v0[4];
  v1 = v0[5];

  if (*(v2 + 16) && (v3 = v0[4], v4 = sub_23D95E9D4(v0[3]), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = v0[2];
    v8 = *(v0[4] + 56);
    v9 = sub_23D9D8954();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, v8 + *(v10 + 72) * v6, v9);
    v11 = 0;
  }

  else
  {
    v9 = sub_23D9D8954();
    v10 = *(v9 - 8);
    v11 = 1;
  }

  (*(v10 + 56))(v0[2], v11, 1, v9);
  v12 = v0[1];

  return v12();
}

uint64_t sub_23D923AD0()
{
  v0 = *(type metadata accessor for AXSUILanguageDetailView(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  return sub_23D9DA3B4();
}

uint64_t sub_23D923B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_23D91F2DC(a1, &v10 - v7, &qword_27E2F4210, &qword_23D9DBE60);
  LODWORD(a1) = *(type metadata accessor for AXSUILanguageDetailView(0) + 36);
  sub_23D91F2DC(v8, v6, &qword_27E2F4210, &qword_23D9DBE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  sub_23D9DA3C4();
  return sub_23D91F344(v8, &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t sub_23D923C40(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for AXSUILanguageDetailView(0) + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4748, &qword_23D9DC7B8);
  result = sub_23D9DA3B4();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
    sub_23D9DAA44();
  }

  return result;
}

uint64_t sub_23D923CE0()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for AXSUILanguageAccessoryView(0) + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_23D9DACD4();
    v9 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_23D923E34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4230, &qword_23D9DBE70);
  v3 = *(*(v74 - 1) + 64);
  MEMORY[0x28223BE20](v74);
  v5 = &v69 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for AXSUILanguageAccessoryView(0);
  v11 = *(v10 + 32);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v73 = v11;
  sub_23D9DA3B4();
  v12 = sub_23D9D8C74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v76 = v5;
  if (v14)
  {
    sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
    v15 = 0xE300000000000000;
    v16 = 2108704;
  }

  else
  {
    v17 = *(v13 + 64);
    MEMORY[0x28223BE20](v14);
    v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v19, v9, v12);
    sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v16 = v20;
    v15 = v21;
    (*(v13 + 8))(v19, v12);
  }

  v78 = v16;
  v79 = v15;
  sub_23D91B650();
  v22 = sub_23D9D9F04();
  v24 = v23;
  v26 = v25;
  sub_23D9DA2F4();
  v27 = sub_23D9D9EB4();
  v29 = v28;
  LODWORD(v70) = v30;
  v71 = v31;

  sub_23D9274BC(v22, v24, v26 & 1);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v69 - v34;
  v36 = *(v10 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3B4();
  v37 = sub_23D9D8DA4();
  v38 = 0;
  v39 = 0;
  if (!(*(*(v37 - 8) + 48))(v35, 1, v37))
  {
    v38 = sub_23D9D8D84();
    v39 = v40;
  }

  sub_23D91F344(v35, &qword_27E2F5900, &unk_23D9DC640);
  v41 = v76;
  v42 = &v76[*(v74 + 9)];
  v43 = type metadata accessor for AXSUIVoiceLoader();
  v44 = v42 + *(v43 + 20);
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  v74 = &v69;
  *v42 = v38;
  v42[1] = v39;
  v46 = v42 + *(v43 + 24);
  *v46 = KeyPath;
  v46[8] = 0;
  *v41 = v27;
  *(v41 + 8) = v29;
  *(v41 + 16) = v70 & 1;
  *(v41 + 24) = v71;
  v47 = *(v10 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](KeyPath);
  sub_23D92581C(v2, &v69 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUILanguageAccessoryView);
  sub_23D9DA9B4();
  v49 = sub_23D9DA9A4();
  v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v51 = swift_allocObject();
  v52 = MEMORY[0x277D85700];
  *(v51 + 16) = v49;
  *(v51 + 24) = v52;
  sub_23D925888(&v69 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50, type metadata accessor for AXSUILanguageAccessoryView);
  v53 = sub_23D9DA9F4();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23D9DA9C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v71 = sub_23D9D9614();
    v72 = &v69;
    v70 = *(v71 - 8);
    v57 = *(v70 + 64);
    MEMORY[0x28223BE20](v71);
    v73 = &v69;
    v59 = &v69 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_23D9DAE64();

    v78 = 0xD000000000000043;
    v79 = 0x800000023D9E3BB0;
    v77 = 135;
    v60 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v60);

    MEMORY[0x28223BE20](v61);
    (*(v54 + 16))(&v69 - v56, &v69 - v56, v53);
    sub_23D9D9604();
    (*(v54 + 8))(&v69 - v56, v53);
    v62 = v75;
    sub_23D92A2BC(v76, v75, &qword_27E2F4230, &qword_23D9DBE70);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4238, &qword_23D9DBE78);
    return (*(v70 + 32))(v62 + *(v63 + 36), v59, v71);
  }

  else
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4240, &unk_23D9DBE80);
    v66 = v75;
    v67 = (v75 + *(v65 + 36));
    v68 = sub_23D9D9584();
    (*(v54 + 32))(&v67[*(v68 + 20)], &v69 - v56, v53);
    *v67 = &unk_23D9DC730;
    *(v67 + 1) = v51;
    return sub_23D92A2BC(v76, v66, &qword_27E2F4230, &qword_23D9DBE70);
  }
}

uint64_t sub_23D92462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B8, &qword_23D9DC738) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C0, &qword_23D9DC740);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v3[7] = v8;
  v9 = *(v8 - 8);
  v3[8] = v9;
  v10 = *(v9 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C8, &qword_23D9DC748);
  v3[11] = v11;
  v12 = *(v11 - 8);
  v3[12] = v12;
  v13 = *(v12 + 64) + 15;
  v3[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46D0, &qword_23D9DC750);
  v3[14] = v14;
  v15 = *(v14 - 8);
  v3[15] = v15;
  v16 = *(v15 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = sub_23D9DA9B4();
  v3[18] = sub_23D9DA9A4();
  v18 = sub_23D9DA994();
  v3[19] = v18;
  v3[20] = v17;

  return MEMORY[0x2822009F8](sub_23D9248AC, v18, v17);
}

uint64_t sub_23D9248AC()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[2];
  v6 = type metadata accessor for AXSUILanguageAccessoryView(0);
  v0[21] = v6;
  v7 = *(v5 + *(v6 + 20));
  sub_23D9D8DB4();
  sub_23D923CE0();
  sub_23D9D8DD4();

  (*(v3 + 8))(v2, v4);
  v8 = *(MEMORY[0x277CE6750] + 4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_23D9249D0;
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[10];

  return MEMORY[0x282138898](v12, v11);
}

uint64_t sub_23D9249D0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23D924AF0, v4, v3);
}

uint64_t sub_23D924AF0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);
  *(v0 + 208) = *(*(v0 + 168) + 28);
  sub_23D91F2DC(v3, v4, &qword_27E2F5900, &unk_23D9DC640);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  sub_23D91F344(v3, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9D8E14();
  v7 = *(v0 + 136);
  v8 = sub_23D9DA9A4();
  *(v0 + 192) = v8;
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = sub_23D924C54;
  v11 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v12, v8, v14, v13);
}

uint64_t sub_23D924C54()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_23D924D98, v5, v4);
}

uint64_t sub_23D924D98()
{
  v1 = *(v0 + 24);
  if ((*(*(v0 + 64) + 48))(v1, 1, *(v0 + 56)) == 1)
  {
    v2 = *(v0 + 144);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 80);
    v26 = *(v0 + 72);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 32);

    (*(v8 + 8))(v9, v10);
    (*(v4 + 8))(v3, v5);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 184);
    v14 = *(v0 + 208);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 16);
    sub_23D92A2BC(v1, v15, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D91F2DC(v15, v16, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D9DA3C4();
    sub_23D91F344(v15, &qword_27E2F5900, &unk_23D9DC640);
    v18 = *(v0 + 136);
    v19 = sub_23D9DA9A4();
    *(v0 + 192) = v19;
    v20 = *(MEMORY[0x277D85798] + 4);
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_23D924C54;
    v22 = *(v0 + 48);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
    v25 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v23, v19, v25, v24);
  }
}

uint64_t AXSUILanguageVoicePicker.init(voiceTable:macroLanguageDisambiguations:overrideLanguage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for AXSUILanguageVoicePicker(0);
  v9 = *(v8 + 28);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  a4[1] = a2;
  return sub_23D92A2BC(a3, a4 + *(v8 + 24), &qword_27E2F4210, &qword_23D9DBE60);
}

uint64_t AXSUILanguageVoicePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v4 = *(*(v29 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for AXSUILanguageVoicePicker(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D92581C(v2, v13, type metadata accessor for AXSUILanguageVoicePicker);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v27 = swift_allocObject();
  sub_23D925888(v13, v27 + v14, type metadata accessor for AXSUILanguageVoicePicker);
  sub_23D92581C(v2, v13, type metadata accessor for AXSUILanguageVoicePicker);
  v15 = swift_allocObject();
  sub_23D925888(v13, v15 + v14, type metadata accessor for AXSUILanguageVoicePicker);
  v16 = *(v10 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A8, &unk_23D9DC460);
  sub_23D91F2DC(v2 + v16, a1 + v17[17], &qword_27E2F4210, &qword_23D9DBE60);
  v18 = v17[18];
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v19 = a1 + v17[19];
  v30 = 1;
  sub_23D9DA3A4();
  v20 = v32;
  *v19 = v31;
  *(v19 + 8) = v20;
  v21 = a1 + v17[20];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a1 + v17[21];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  v23 = v17[22];
  v24 = sub_23D9D8954();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_23D91F2DC(v8, v28, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  result = sub_23D91F344(v8, &qword_27E2F4210, &qword_23D9DBE60);
  v26 = v27;
  *a1 = sub_23D9258F0;
  *(a1 + 8) = v26;
  *(a1 + 16) = sub_23D925D8C;
  *(a1 + 24) = v15;
  *(a1 + 48) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

double sub_23D92544C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v34 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v11 = *(*(v38 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v38);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = sub_23D9D8954();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a4, a1, v17);
  v19 = *a3;
  v20 = a3[1];
  v35 = v19;
  v21 = type metadata accessor for AXSUILanguageDetailView(0);
  v22 = v21[7];
  v23 = sub_23D9D89C4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a4 + v22, KeyPath, v23);
  (*(v24 + 56))(a4 + v22, 0, 1, v23);
  v25 = sub_23D9D8DA4();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v26 = v37;
  (*(v18 + 56))(v37, 1, 1, v17);
  KeyPath = swift_getKeyPath();
  *(a4 + v21[5]) = v35;
  *(a4 + v21[6]) = v20;
  v27 = v21[8];
  sub_23D91F2DC(v16, v14, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v16, &qword_27E2F5900, &unk_23D9DC640);
  v28 = v21[9];
  sub_23D91F2DC(v26, v39, &qword_27E2F4210, &qword_23D9DBE60);
  sub_23D9DA3A4();
  sub_23D91F344(v26, &qword_27E2F4210, &qword_23D9DBE60);
  v29 = a4 + v21[10];
  *v29 = KeyPath;
  *(v29 + 8) = 0;
  v30 = a4 + v21[11];
  LOBYTE(v41) = 0;
  sub_23D9DA3A4();
  v31 = *(&v42 + 1);
  *v30 = v42;
  *(v30 + 8) = v31;
  v32 = v21[12];
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  result = *&v42;
  *(a4 + v32) = v42;
  return result;
}

uint64_t sub_23D92581C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D925888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D92591C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v6 = *(*(v29 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v12 = *(*(v28 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v28);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = sub_23D9D8954();
  (*(*(v18 - 8) + 16))(a3, a1, v18);
  v19 = *a2;
  v20 = sub_23D9D8DA4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = sub_23D9D8C74();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  KeyPath = swift_getKeyPath();
  v23 = type metadata accessor for AXSUILanguageAccessoryView(0);
  *(a3 + v23[5]) = v19;
  v24 = a3 + v23[6];
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  v25 = v23[7];
  sub_23D91F2DC(v17, v15, &qword_27E2F5900, &unk_23D9DC640);

  sub_23D9DA3A4();
  sub_23D91F344(v17, &qword_27E2F5900, &unk_23D9DC640);
  v26 = v23[8];
  sub_23D91F2DC(v11, v9, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v11, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for AXSUILanguageVoicePicker(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(v1 + 24);
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v3[v6], 1, v7))
  {
    (*(v8 + 8))(&v3[v6], v7);
  }

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D9D9574();
    (*(*(v10 - 8) + 8))(&v3[v9], v10);
  }

  else
  {
    v11 = *&v3[v9];
  }

  return swift_deallocObject();
}

uint64_t sub_23D925DBC(void **a1)
{
  v2 = *(sub_23D9D8954() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23D951300(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23D928420(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_23D925EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_23D925FEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4590, &qword_23D9DC410);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23D926100()
{
  sub_23D9D8954();
  if (v0 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45C0, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE1200]);
    if (v1 <= 0x3F)
    {
      sub_23D927420(319, &qword_27E2F45C8, &qword_27E2F45D0, &unk_23D9DC5C0, MEMORY[0x277CE10B0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23D926208(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D926358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D926494()
{
  sub_23D927420(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
  if (v0 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45F8, &qword_27E2F4600, &qword_23D9DC5F8, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23D92736C(319, &qword_27E2F4608, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23D92736C(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_23D926644()
{
  result = qword_27E2F4620;
  if (!qword_27E2F4620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4628, &unk_23D9DC600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4578, &qword_23D9DC400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4580, &qword_23D9DC408);
    sub_23D9D9994();
    sub_23D91F01C(&qword_27E2F4588, &qword_27E2F4580, &qword_23D9DC408);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4620);
  }

  return result;
}

uint64_t sub_23D9267F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D926998(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23D9D8954();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_23D926B44()
{
  sub_23D9D8954();
  if (v0 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
    if (v1 <= 0x3F)
    {
      sub_23D92736C(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        sub_23D927420(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
        if (v3 <= 0x3F)
        {
          sub_23D927420(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23D926CD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_23D926ECC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23D9D8954();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23D9270CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D927104()
{
  sub_23D9D8954();
  if (v0 <= 0x3F)
  {
    sub_23D927420(319, &qword_27E2F45F0, &qword_27E2F4470, &qword_23D9DC2B0, MEMORY[0x277CE6748]);
    if (v1 <= 0x3F)
    {
      sub_23D927420(319, &qword_27E2F45F8, &qword_27E2F4600, &qword_23D9DC5F8, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23D92736C(319, &qword_27E2F4690, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23D927420(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
          if (v4 <= 0x3F)
          {
            sub_23D927420(319, &qword_27E2F4698, &qword_27E2F4210, &qword_23D9DBE60, MEMORY[0x277CE10B0]);
            if (v5 <= 0x3F)
            {
              sub_23D92736C(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
              if (v6 <= 0x3F)
              {
                sub_23D9273D0();
                if (v7 <= 0x3F)
                {
                  sub_23D927420(319, &qword_27E2F46A8, &qword_27E2F46B0, &qword_23D9E0CB0, MEMORY[0x277CE10B0]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_23D92736C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D9273D0()
{
  if (!qword_27E2F46A0)
  {
    v0 = sub_23D9DA3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F46A0);
    }
  }
}

void sub_23D927420(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D9274BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9274CC()
{
  v1 = type metadata accessor for AXSUILanguageAccessoryView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = sub_23D9D8954();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[5]);

  v7 = *(v0 + v2 + v1[6]);

  v8 = v0 + v2 + v1[7];
  v9 = sub_23D9D8DA4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790) + 28));

  v12 = v0 + v2 + v1[8];
  v13 = sub_23D9D8C74();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610) + 28));

  return swift_deallocObject();
}

uint64_t sub_23D92770C()
{
  v2 = *(type metadata accessor for AXSUILanguageAccessoryView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D92A70C;

  return sub_23D92462C(v4, v5, v0 + v3);
}

uint64_t sub_23D9277F0()
{
  v1 = *(type metadata accessor for AXSUILanguageDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23D920C9C();
}

unint64_t sub_23D92784C()
{
  result = qword_27E2F46E0;
  if (!qword_27E2F46E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F46D8, &qword_23D9DC758);
    sub_23D9278D8();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F46E0);
  }

  return result;
}

unint64_t sub_23D9278D8()
{
  result = qword_27E2F46E8;
  if (!qword_27E2F46E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F46F0, &qword_23D9DC788);
    sub_23D92795C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F46E8);
  }

  return result;
}

unint64_t sub_23D92795C()
{
  result = qword_27E2F46F8;
  if (!qword_27E2F46F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4700, &qword_23D9DC790);
    sub_23D91F01C(&qword_27E2F4630, &qword_27E2F45A8, &unk_23D9DC460);
    sub_23D927A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F46F8);
  }

  return result;
}

unint64_t sub_23D927A14()
{
  result = qword_27E2F4708;
  if (!qword_27E2F4708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4710, &qword_23D9DC798);
    sub_23D927B50(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings);
    sub_23D91F01C(&qword_27E2F4720, &qword_27E2F4728, &qword_23D9DC7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4708);
  }

  return result;
}

unint64_t sub_23D927AFC()
{
  result = qword_27E2F6C20;
  if (!qword_27E2F6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6C20);
  }

  return result;
}

uint64_t sub_23D927B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_58Tm()
{
  v1 = type metadata accessor for AXSUILanguageDetailView(0);
  v23 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(v2 + v1[5]);

  v7 = *(v2 + v1[6]);

  v8 = v1[7];
  v9 = sub_23D9D89C4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v11 = v2 + v1[8];
  v12 = sub_23D9D8DA4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790) + 28));

  v15 = v2 + v1[9];
  if (!(*(v4 + 48))(v15, 1, v3))
  {
    v5(v15, v3);
  }

  v16 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658) + 28));

  v17 = *(v2 + v1[10]);

  v18 = *(v2 + v1[11] + 8);

  v19 = (v2 + v1[12]);
  v20 = *v19;

  v21 = v19[1];

  return swift_deallocObject();
}

uint64_t sub_23D927EAC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23D927F28()
{
  v1 = type metadata accessor for AXSUILanguageDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + ((v2 + 32) & ~v2);
  v5 = sub_23D9D8954();
  v6 = *(v5 - 8);
  v24 = *(v6 + 8);
  v24(v4, v5);
  v7 = *(v4 + v1[5]);

  v8 = *(v4 + v1[6]);

  v9 = v1[7];
  v10 = sub_23D9D89C4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v4 + v1[8];
  v13 = sub_23D9D8DA4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790) + 28));

  v16 = v4 + v1[9];
  if (!(*(v6 + 48))(v16, 1, v5))
  {
    v24(v16, v5);
  }

  v17 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4678, &qword_23D9DC658) + 28));

  v18 = *(v4 + v1[10]);

  v19 = *(v4 + v1[11] + 8);

  v20 = (v4 + v1[12]);
  v21 = *v20;

  v22 = v20[1];

  return swift_deallocObject();
}

uint64_t sub_23D928220(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUILanguageDetailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D928310;

  return sub_23D920F20(a1, v6, v7, v1 + v5);
}

uint64_t sub_23D928310()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D928420(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23D9DAF84();
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
        sub_23D9D8954();
        v6 = sub_23D9DA984();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23D9D8954() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23D928830(v8, v9, a1, v4);
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
    return sub_23D92854C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23D92854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23D9D8954();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v36 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v16 + 16);
    v20 = v16 + 16;
    v22 = *(v20 + 56);
    v47 = (v20 - 8);
    v48 = v21;
    v53 = v20;
    v23 = v19 + v22 * (a3 - 1);
    v43 = -v22;
    v44 = (v20 + 16);
    v24 = a1 - a3;
    v45 = v19;
    v37 = v22;
    v25 = v19 + v22 * a3;
LABEL_5:
    v41 = v23;
    v42 = a3;
    v39 = v25;
    v40 = v24;
    while (1)
    {
      v26 = v48;
      v48(v18, v25, v8);
      v26(v14, v23, v8);
      v27 = sub_23D9D8934();
      if (!v28)
      {
        v27 = sub_23D9D88D4();
      }

      v51 = v27;
      v52 = v28;
      v29 = sub_23D9D8934();
      if (!v30)
      {
        v29 = sub_23D9D88D4();
      }

      v49 = v29;
      v50 = v30;
      sub_23D91B650();
      v31 = sub_23D9DAD94();

      v32 = *v47;
      (*v47)(v14, v8);
      result = (v32)(v18, v8);
      if (v31 != -1)
      {
LABEL_4:
        a3 = v42 + 1;
        v23 = v41 + v37;
        v24 = v40 - 1;
        v25 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v23, v34, v8);
      v23 += v43;
      v25 += v43;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23D928830(int64_t *a1, uint64_t a2, char *a3, int64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_23D9D8954();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v130 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v130 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v130 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v143 = &v130 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v145 = &v130 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  result = MEMORY[0x28223BE20](v25);
  v131 = &v130 - v29;
  v30 = *(a3 + 1);
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_108:
    a4 = *v134;
    if (!*v134)
    {
      goto LABEL_149;
    }

    v5 = v28;
    v20 = v32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v20;
LABEL_111:
      v161 = result;
      v20 = *(result + 16);
      if (v20 >= 2)
      {
        while (*a3)
        {
          v125 = *(result + 16 * v20);
          v126 = result;
          v127 = *(result + 16 * (v20 - 1) + 40);
          sub_23D929448(*a3 + *(v5 + 9) * v125, *a3 + *(v5 + 9) * *(result + 16 * (v20 - 1) + 32), *a3 + *(v5 + 9) * v127, a4);
          if (v6)
          {
          }

          if (v127 < v125)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_23D950D9C(v126);
          }

          if (v20 - 2 >= *(v126 + 2))
          {
            goto LABEL_137;
          }

          v128 = &v126[16 * v20];
          *v128 = v125;
          *(v128 + 1) = v127;
          v161 = v126;
          sub_23D950D10(v20 - 1);
          result = v161;
          v20 = *(v161 + 16);
          if (v20 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_23D950D9C(v20);
    goto LABEL_111;
  }

  v130 = v27;
  v31 = 0;
  v154 = v28 + 16;
  v155 = (v28 + 8);
  v153 = (v28 + 32);
  v32 = MEMORY[0x277D84F90];
  v136 = a3;
  v146 = v28;
  v133 = a4;
  v147 = v17;
  v152 = v9;
  v156 = v20;
  while (1)
  {
    v139 = v32;
    if (v31 + 1 >= v30)
    {
      v54 = v31 + 1;
    }

    else
    {
      v148 = v30;
      v33 = *a3;
      v34 = *(v28 + 72);
      v35 = &v33[v34 * (v31 + 1)];
      v135 = v6;
      v36 = *(v28 + 16);
      v37 = v131;
      (v36)(v131, v35, v9);
      v150 = v33;
      v38 = &v33[v34 * v31];
      v39 = v31;
      v40 = v130;
      v144 = v36;
      (v36)(v130, v38, v9);
      v41 = v135;
      LODWORD(v149) = sub_23D920764();
      v135 = v41;
      if (v41)
      {
        v129 = *v155;
        (*v155)(v40, v9);
        (v129)(v37, v9);
      }

      v5 = *v155;
      (*v155)(v40, v9);
      v142 = v5;
      result = (v5)(v37, v9);
      v132 = v39;
      v42 = v39 + 2;
      v43 = &v150[v34 * v42];
      v44 = v145;
      v45 = v34;
      v150 = v34;
      do
      {
        if (v148 == v42)
        {
          v54 = v148;
          goto LABEL_16;
        }

        v5 = v144;
        (v144)(v44, v43, v9);
        v49 = v143;
        (v5)(v143, v35, v9);
        v50 = sub_23D9D8934();
        if (!v51)
        {
          v50 = sub_23D9D88D4();
        }

        v159 = v50;
        v160 = v51;
        v52 = sub_23D9D8934();
        if (!v53)
        {
          v52 = sub_23D9D88D4();
        }

        v157 = v52;
        v158 = v53;
        sub_23D91B650();
        v46 = sub_23D9DAD94();

        v47 = v49;
        v48 = v142;
        (v142)(v47, v9);
        v44 = v145;
        result = (v48)(v145, v9);
        ++v42;
        v45 = v150;
        v43 = &v150[v43];
        v35 = &v150[v35];
        v17 = v147;
      }

      while (((v149 ^ (v46 != -1)) & 1) != 0);
      v54 = v42 - 1;
LABEL_16:
      v6 = v135;
      a3 = v136;
      v28 = v146;
      v55 = v139;
      a4 = v133;
      v20 = v156;
      v31 = v132;
      if (v149)
      {
        if (v54 < v132)
        {
          goto LABEL_142;
        }

        if (v132 < v54)
        {
          v56 = v45 * (v54 - 1);
          v57 = v54 * v45;
          v148 = v54;
          v58 = v54;
          v59 = v132;
          v60 = v132 * v45;
          do
          {
            if (v59 != --v58)
            {
              v5 = *a3;
              if (!*a3)
              {
                goto LABEL_146;
              }

              v61 = *v153;
              (*v153)(v138, &v5[v60], v9, v55);
              if (v60 < v56 || &v5[v60] >= &v5[v57])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v60 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v61)(&v5[v56], v138, v9);
              a3 = v136;
              v28 = v146;
              v55 = v139;
              v45 = v150;
            }

            ++v59;
            v56 -= v45;
            v57 -= v45;
            v60 += v45;
          }

          while (v59 < v58);
          v6 = v135;
          a4 = v133;
          v17 = v147;
          v54 = v148;
          v20 = v156;
          v31 = v132;
        }
      }
    }

    v62 = *(a3 + 1);
    if (v54 >= v62)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v54, v31))
    {
      goto LABEL_139;
    }

    if (v54 - v31 >= a4)
    {
LABEL_39:
      v64 = v54;
      if (v54 < v31)
      {
        goto LABEL_138;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v31, a4))
    {
      goto LABEL_140;
    }

    if (v31 + a4 >= v62)
    {
      v63 = *(a3 + 1);
    }

    else
    {
      v63 = v31 + a4;
    }

    if (v63 < v31)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v54 == v63)
    {
      goto LABEL_39;
    }

    v135 = v6;
    v111 = *a3;
    v112 = *(v28 + 72);
    v113 = *(v28 + 16);
    v114 = *a3 + v112 * (v54 - 1);
    v149 = -v112;
    v132 = v31;
    v5 = (v31 - v54);
    v150 = v111;
    v137 = v112;
    a4 = &v111[v54 * v112];
    v140 = v63;
LABEL_93:
    v148 = v54;
    v141 = a4;
    v142 = v5;
    v144 = v114;
    v115 = v114;
LABEL_94:
    v113(v20, a4, v9);
    v113(v17, v115, v9);
    v116 = sub_23D9D8934();
    if (!v117)
    {
      v116 = sub_23D9D88D4();
    }

    v159 = v116;
    v160 = v117;
    v118 = sub_23D9D8934();
    if (!v119)
    {
      v118 = sub_23D9D88D4();
    }

    v157 = v118;
    v158 = v119;
    sub_23D91B650();
    v120 = sub_23D9DAD94();

    v121 = *v155;
    v9 = v152;
    (*v155)(v17, v152);
    result = (v121)(v156, v9);
    if (v120 == -1)
    {
      break;
    }

    v20 = v156;
LABEL_92:
    v54 = v148 + 1;
    v114 = &v144[v137];
    v5 = v142 - 1;
    a4 = v141 + v137;
    v64 = v140;
    if (v148 + 1 != v140)
    {
      goto LABEL_93;
    }

    v6 = v135;
    a3 = v136;
    v31 = v132;
    if (v140 < v132)
    {
      goto LABEL_138;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v32 = v139;
    }

    else
    {
      result = sub_23D93C534(0, *(v139 + 2) + 1, 1, v139);
      v32 = result;
    }

    v66 = *(v32 + 2);
    v65 = *(v32 + 3);
    v20 = v66 + 1;
    v28 = v146;
    if (v66 >= v65 >> 1)
    {
      result = sub_23D93C534((v65 > 1), v66 + 1, 1, v32);
      v32 = result;
      v28 = v146;
    }

    *(v32 + 2) = v20;
    v67 = &v32[16 * v66];
    *(v67 + 4) = v31;
    *(v67 + 5) = v64;
    v140 = v64;
    v68 = *v134;
    if (!*v134)
    {
      goto LABEL_148;
    }

    if (v66)
    {
      while (2)
      {
        a4 = v20 - 1;
        if (v20 >= 4)
        {
          v73 = &v32[16 * v20 + 32];
          v74 = *(v73 - 64);
          v75 = *(v73 - 56);
          v79 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          if (v79)
          {
            goto LABEL_125;
          }

          v78 = *(v73 - 48);
          v77 = *(v73 - 40);
          v79 = __OFSUB__(v77, v78);
          v71 = v77 - v78;
          v72 = v79;
          if (v79)
          {
            goto LABEL_126;
          }

          v80 = &v32[16 * v20];
          v82 = *v80;
          v81 = *(v80 + 1);
          v79 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v79)
          {
            goto LABEL_128;
          }

          v79 = __OFADD__(v71, v83);
          v84 = v71 + v83;
          if (v79)
          {
            goto LABEL_131;
          }

          if (v84 >= v76)
          {
            v102 = &v32[16 * a4 + 32];
            v104 = *v102;
            v103 = *(v102 + 1);
            v79 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v79)
            {
              goto LABEL_135;
            }

            if (v71 < v105)
            {
              a4 = v20 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v72)
            {
              goto LABEL_127;
            }

            v85 = &v32[16 * v20];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_130;
            }

            v91 = &v32[16 * a4 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_134;
            }

            if (v89 + v94 < v71)
            {
              goto LABEL_73;
            }

            if (v71 < v94)
            {
              a4 = v20 - 2;
            }
          }
        }

        else
        {
          if (v20 == 3)
          {
            v69 = *(v32 + 4);
            v70 = *(v32 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
            goto LABEL_59;
          }

          v95 = &v32[16 * v20];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_73:
          if (v90)
          {
            goto LABEL_129;
          }

          v98 = &v32[16 * a4];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_132;
          }

          if (v101 < v89)
          {
            break;
          }
        }

        v106 = a4 - 1;
        if (a4 - 1 >= v20)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
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
          goto LABEL_141;
        }

        v107 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v5 = a3;
        a3 = v32;
        v20 = *&v32[16 * v106 + 32];
        v108 = *&v32[16 * a4 + 40];
        sub_23D929448(&v107[*(v28 + 72) * v20], &v107[*(v28 + 72) * *&v32[16 * a4 + 32]], &v107[*(v28 + 72) * v108], v68);
        if (v6)
        {
        }

        if (v108 < v20)
        {
          goto LABEL_123;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v109 = a3;
        }

        else
        {
          v109 = sub_23D950D9C(a3);
        }

        if (v106 >= *(v109 + 2))
        {
          goto LABEL_124;
        }

        a3 = v5;
        v110 = &v109[16 * v106];
        *(v110 + 4) = v20;
        *(v110 + 5) = v108;
        v161 = v109;
        result = sub_23D950D10(a4);
        v32 = v161;
        v20 = *(v161 + 16);
        v28 = v146;
        v17 = v147;
        if (v20 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v30 = *(a3 + 1);
    v31 = v140;
    a4 = v133;
    v20 = v156;
    if (v140 >= v30)
    {
      goto LABEL_108;
    }
  }

  if (v150)
  {
    v122 = *v153;
    v123 = v151;
    (*v153)(v151, a4, v9);
    swift_arrayInitWithTakeFrontToBack();
    v122(v115, v123, v9);
    v115 += v149;
    a4 += v149;
    v124 = __CFADD__(v5++, 1);
    v20 = v156;
    if (v124)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

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
  return result;
}

uint64_t sub_23D929448(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = a3;
  v7 = sub_23D9D8954();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v58 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_70;
  }

  v21 = v71 - a2;
  if (v71 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_71;
  }

  v22 = (a2 - a1) / v20;
  v78 = a1;
  v77 = a4;
  v69 = v20;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v24;
    if (v24 >= 1)
    {
      v42 = -v69;
      v61 = (v8 + 8);
      v62 = (v8 + 16);
      v43 = v41;
      v63 = a4;
      v70 = -v69;
      do
      {
        v59 = v41;
        v44 = a2;
        v45 = (a2 + v42);
        v47 = v66;
        v46 = v67;
        v64 = v44;
        v65 = v45;
        while (1)
        {
          v49 = v71;
          if (v44 <= a1)
          {
            v78 = v44;
            v76 = v59;
            goto LABEL_68;
          }

          v60 = v41;
          v69 = v43;
          v50 = *v62;
          v68 = v43 + v42;
          v50(v47);
          (v50)(v46, v45, v7);
          v51 = sub_23D9D8934();
          if (!v52)
          {
            v51 = sub_23D9D88D4();
          }

          v74 = v51;
          v75 = v52;
          v46 = v67;
          v53 = sub_23D9D8934();
          v43 = v69;
          if (!v54)
          {
            v53 = sub_23D9D88D4();
          }

          v71 = v49 + v70;
          v72 = v53;
          v73 = v54;
          sub_23D91B650();
          v55 = sub_23D9DAD94();

          v56 = *v61;
          (*v61)(v46, v7);
          v47 = v66;
          v56(v66, v7);
          if (v55 == -1)
          {
            break;
          }

          v57 = v68;
          v41 = v68;
          v45 = v65;
          if (v49 < v43 || v71 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v43 = v41;
          v44 = v64;
          v48 = v57 > v63;
          v42 = v70;
          if (!v48)
          {
            a2 = v64;
            goto LABEL_67;
          }
        }

        a2 = v65;
        if (v49 < v64 || v71 >= v64)
        {
          swift_arrayInitWithTakeFrontToBack();
          v41 = v60;
          v42 = v70;
        }

        else
        {
          v41 = v60;
          v42 = v70;
          if (v49 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v43 > v63);
    }

LABEL_67:
    v78 = a2;
    v76 = v41;
  }

  else
  {
    v23 = v22 * v20;
    v70 = v16;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v23;
    v76 = a4 + v23;
    if (v23 >= 1 && a2 < v71)
    {
      v65 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v26 = (v8 + 8);
      do
      {
        v27 = a2;
        v28 = v65;
        v65(v18, a2, v7);
        v28(v70, a4, v7);
        v29 = sub_23D9D8934();
        if (v30)
        {
          v31 = v30;
          v32 = a4;
        }

        else
        {
          v32 = a4;
          v29 = sub_23D9D88D4();
          v31 = v33;
        }

        v74 = v29;
        v75 = v31;
        v34 = v70;
        v35 = sub_23D9D8934();
        if (!v36)
        {
          v35 = sub_23D9D88D4();
        }

        v72 = v35;
        v73 = v36;
        sub_23D91B650();
        v37 = sub_23D9DAD94();

        v38 = *v26;
        (*v26)(v34, v7);
        v18 = v66;
        v38(v66, v7);
        if (v37 == -1)
        {
          a2 = v27 + v69;
          a4 = v32;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v40 = v69;
          goto LABEL_39;
        }

        v39 = v32;
        v40 = v69;
        a4 = v39 + v69;
        a2 = v27;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v77 = a4;
          goto LABEL_39;
        }

        v77 = a4;
LABEL_39:
        a1 += v40;
        v78 = a1;
      }

      while (a4 < v68 && a2 < v71);
    }
  }

LABEL_68:
  sub_23D99F580(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_23D929AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D929BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_23D929C6C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_23D929D04(uint64_t a1)
{
  v3 = *(type metadata accessor for AXSUILanguageDetailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = sub_23D9D8904();
  LOBYTE(a1) = sub_23D923034(a1, v5);

  return a1 & 1;
}

uint64_t sub_23D929D84()
{
  v1 = *(type metadata accessor for AXSUILanguageDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D92324C(v2);
}

unint64_t sub_23D929DE4()
{
  result = qword_27E2F4788;
  if (!qword_27E2F4788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4780, &qword_23D9DC860);
    sub_23D929E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4788);
  }

  return result;
}

unint64_t sub_23D929E68()
{
  result = qword_27E2F4790;
  if (!qword_27E2F4790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4798, &qword_23D9DC868);
    sub_23D929EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4790);
  }

  return result;
}

unint64_t sub_23D929EEC()
{
  result = qword_27E2F47A0;
  if (!qword_27E2F47A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F47A8, &qword_23D9DC870);
    sub_23D927B50(&qword_27E2F47B0, type metadata accessor for AXSUIMacroLanguageDisambiguationSelection);
    sub_23D91F01C(&qword_27E2F47B8, &qword_27E2F47C0, &qword_23D9DC878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F47A0);
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D92A0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_23D9D8954() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_23D92A148()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23D92A1D0(uint64_t a1, void *a2)
{
  v6 = *(sub_23D9D8954() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23D928310;

  return sub_23D9238D0(a1, a2, v2 + v7);
}

uint64_t sub_23D92A2BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D92A334()
{
  result = qword_27E2F47E0;
  if (!qword_27E2F47E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4210, &qword_23D9DBE60);
    sub_23D927B50(&qword_27E2F58C0, MEMORY[0x277CC9640]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F47E0);
  }

  return result;
}

uint64_t sub_23D92A3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4230, &qword_23D9DBE70);
  sub_23D92A44C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D92A44C()
{
  result = qword_27E2F4810;
  if (!qword_27E2F4810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4230, &qword_23D9DBE70);
    sub_23D927B50(&qword_27E2F4818, type metadata accessor for AXSUIVoiceLoader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4810);
  }

  return result;
}

uint64_t sub_23D92A54C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D92A5D0()
{
  result = qword_27E2F4828;
  if (!qword_27E2F4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4738, &qword_23D9DC7A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F46D8, &qword_23D9DC758);
    sub_23D9D8954();
    sub_23D92784C();
    sub_23D927B50(&qword_27E2F4730, MEMORY[0x277CC9640]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4828);
  }

  return result;
}

uint64_t sub_23D92A718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LiveSpeechAddPhraseView();
  sub_23D91F2DC(v1 + *(v12 + 20), v11, &qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D89C4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D92A920@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LiveSpeechAddPhraseView();
  sub_23D91F2DC(v1 + *(v12 + 24), v11, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9464();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D92AB28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LiveSpeechAddPhraseView();
  sub_23D91F2DC(v1 + *(v12 + 28), v11, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9574();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t LiveSpeechAddPhraseView.isRecent.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v4 isRecents];

    return v1;
  }

  else
  {
    v3 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.selectableCategories.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = v11;
    v12 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D9DAF34())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EEF4180](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v5 isRecents])
        {
        }

        else
        {
          sub_23D9DAEB4();
          v4 = *(v12 + 16);
          sub_23D9DAED4();
          sub_23D9DAEE4();
          sub_23D9DAEC4();
        }

        ++v3;
        if (v7 == i)
        {
          v8 = v12;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_19:

    return v8;
  }

  else
  {
    v10 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

BOOL LiveSpeechAddPhraseView.isPhraseEmpty.getter()
{
  v1 = sub_23D9D8814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 32));
  v7 = *v6;
  v8 = *(v6 + 2);
  v15 = v7;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3B4();
  v15 = *&v14[8];
  sub_23D9D8804();
  sub_23D91B650();
  v9 = sub_23D9DAD84();
  v11 = v10;
  (*(v2 + 8))(v5, v1);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 == 0;
}

uint64_t LiveSpeechAddPhraseView.isSamePhrase.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v11 text];

    v2 = sub_23D9DA8B4();
    v4 = v3;

    v5 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 32);
    *v12 = *v5;
    v13 = *(v5 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
    sub_23D9DA3B4();
    if (v2 == v9 && v4 == v10)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_23D9DAFC4();
    }

    return v6 & 1;
  }

  else
  {
    v8 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.isSameCategory.getter()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v14 categoryID];

    if (v1)
    {
      v2 = sub_23D9DA8B4();
      v4 = v3;
    }

    else
    {
      v2 = 0;
      v4 = 0;
    }

    v5 = (v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 40));
    v15 = *v5;
    v16 = v5[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
    sub_23D9DA3B4();
    v6 = [v13 categoryID];

    v7 = sub_23D9DA8B4();
    v9 = v8;

    if (v4)
    {
      if (v2 == v7 && v4 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_23D9DAFC4();
      }
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }

  else
  {
    v12 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.isSameLanguageCode.getter()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v6 = v20;
    v7 = [v20 inputID];

    if (v7)
    {
      v8 = sub_23D9DA8B4();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = *(type metadata accessor for LiveSpeechAddPhraseView() + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
    sub_23D9DA3B4();
    v12 = sub_23D9D88D4();
    v14 = v13;
    (*(v2 + 8))(v5, v1);
    if (v10)
    {
      if (v8 == v12 && v10 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_23D9DAFC4();
      }
    }

    else
    {
      v16 = 0;
    }

    return v16 & 1;
  }

  else
  {
    v18 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t LiveSpeechAddPhraseView.isSaveDisabled.getter()
{
  if (LiveSpeechAddPhraseView.isPhraseEmpty.getter() || (LiveSpeechAddPhraseView.phraseExists.getter() & 1) != 0)
  {
    return 1;
  }

  if ((LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) == 0 || (LiveSpeechAddPhraseView.isSameCategory.getter() & 1) == 0)
  {
    return 0;
  }

  return LiveSpeechAddPhraseView.isSameLanguageCode.getter();
}

uint64_t LiveSpeechAddPhraseView.phraseExists.getter()
{
  v1 = (v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 40));
  v3 = *v1;
  v2 = v1[1];
  v12 = v3;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  sub_23D9DA3B4();
  v4 = [v11 phrases];

  sub_23D9DACF4();
  v5 = sub_23D9DA974();

  v10 = v0;
  v6 = sub_23D92BA88(sub_23D93378C, &v9, v5);

  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v12)
    {
      v6 &= LiveSpeechAddPhraseView.isSamePhrase.getter() ^ 1;
    }

    return v6 & 1;
  }

  else
  {
    v8 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D92B97C(id *a1, uint64_t a2)
{
  v3 = [*a1 text];
  v4 = sub_23D9DA8B4();
  v6 = v5;

  v7 = (a2 + *(type metadata accessor for LiveSpeechAddPhraseView() + 32));
  v13 = *v7;
  v14 = *(v7 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3B4();
  if (v4 == v11 && v6 == v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23D9DAFC4();
  }

  return v9 & 1;
}

uint64_t sub_23D92BA88(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23EEF4180](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_23D9DAF34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_23D92BBB0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t LiveSpeechAddPhraseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4850, &qword_23D9DCA58);
  v72 = *(v74 - 8);
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4858, &qword_23D9DCA60);
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v57 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4860, &qword_23D9DCA68);
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4248, &qword_23D9DCA70);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v75 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4868, &qword_23D9DCA78);
  sub_23D91F01C(&qword_27E2F4870, &qword_27E2F4868, &qword_23D9DCA78);
  v62 = v13;
  sub_23D9D9E84();
  v14 = type metadata accessor for LiveSpeechAddPhraseView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = v1;
  sub_23D9337BC(v1, &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23D9DA9B4();
  v17 = sub_23D9DA9A4();
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_23D933AD0(&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v21 = sub_23D9DA9F4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_23D9DA9C4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v59 = sub_23D9D9614();
    v60 = &v57;
    v58 = *(v59 - 8);
    v25 = *(v58 + 64);
    MEMORY[0x28223BE20](v59);
    v61 = v7;
    v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    sub_23D9DAE64();

    v76._countAndFlagsBits = 0xD000000000000042;
    v76._object = 0x800000023D9E3C00;
    v79 = 81;
    v28 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v28);

    MEMORY[0x28223BE20](v29);
    (*(v22 + 16))(&v57 - v24, &v57 - v24, v21);
    sub_23D9D9604();
    (*(v22 + 8))(&v57 - v24, v21);
    v30 = v64;
    v31 = v65;
    (*(v63 + 32))(v65, v62, v64);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4250, &unk_23D9DBE90);
    v33 = v27;
    v7 = v61;
    (*(v58 + 32))(&v31[*(v32 + 36)], v33, v59);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4258, &qword_23D9DCAC0);
    v31 = v65;
    v35 = &v65[*(v34 + 36)];
    v36 = sub_23D9D9584();
    (*(v22 + 32))(&v35[*(v36 + 20)], &v57 - v24, v21);
    *v35 = &unk_23D9DCAA0;
    *(v35 + 1) = v19;
    v30 = v64;
    (*(v63 + 32))(v31, v62, v64);
  }

  v37._object = 0x800000023D9E3C50;
  v37._countAndFlagsBits = 0xD00000000000001BLL;
  v76 = AXSUILocString(_:)(v37);
  v38 = sub_23D91F01C(&qword_27E2F4888, &qword_27E2F4248, &qword_23D9DCA70);
  v79 = v30;
  v80 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_23D91B650();
  v41 = MEMORY[0x277D837D0];
  v42 = v66;
  v43 = v67;
  sub_23D9DA064();

  (*(v7 + 8))(v31, v42);
  v44 = sub_23D9D99A4();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v57 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 104))(v48, *MEMORY[0x277CDDDB8], v44);
  v76._countAndFlagsBits = v42;
  v76._object = v41;
  v77 = OpaqueTypeConformance2;
  v78 = v40;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v71;
  v51 = v69;
  sub_23D9DA144();
  (*(v45 + 8))(v48, v44);
  v52 = (*(v68 + 8))(v43, v51);
  MEMORY[0x28223BE20](v52);
  *(&v57 - 2) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4890, &qword_23D9DCAB0);
  v76._countAndFlagsBits = v51;
  v76._object = v49;
  swift_getOpaqueTypeConformance2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4898, &qword_23D9DCAB8);
  v54 = sub_23D91F01C(&qword_27E2F48A0, &qword_27E2F4898, &qword_23D9DCAB8);
  v76._countAndFlagsBits = v53;
  v76._object = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v74;
  sub_23D9DA1A4();
  return (*(v72 + 8))(v50, v55);
}

uint64_t sub_23D92C650@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4938, &unk_23D9DCC60);
  v60 = *(v61 - 1);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4940, &unk_23D9DDC10);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4948, &qword_23D9DCC70);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4950, &qword_23D9DCC78);
  v62 = *(v71 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v75 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4958, &qword_23D9DCC80);
  v67 = *(v68 - 8);
  v21 = v67[8];
  v22 = MEMORY[0x28223BE20](v68);
  v66 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v58 - v24;
  v78 = a1;
  sub_23D92EE8C(a1, &v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4960, &qword_23D9DCC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4968, &qword_23D9DCC90);
  sub_23D91F01C(&qword_27E2F4970, &qword_27E2F4960, &qword_23D9DCC88);
  sub_23D934850();
  v65 = v25;
  sub_23D9DA694();
  v26._object = 0x800000023D9E3C90;
  v26._countAndFlagsBits = 0xD000000000000011;
  v79 = AXSUILocString(_:)(v26);
  sub_23D91B650();
  v79._countAndFlagsBits = sub_23D9D9F04();
  v79._object = v27;
  v80 = v28 & 1;
  v81 = v29;
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4980, &qword_23D9DCC98);
  sub_23D9348DC();
  v64 = v20;
  sub_23D9DA664();
  v30._object = 0x800000023D9E3CB0;
  v30._countAndFlagsBits = 0xD000000000000011;
  v79 = AXSUILocString(_:)(v30);
  v79._countAndFlagsBits = sub_23D9D9F04();
  v79._object = v31;
  v80 = v32 & 1;
  v81 = v33;
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49A0, &qword_23D9DCCA8);
  sub_23D934994();
  v69 = v15;
  sub_23D9DA664();
  if (*a1)
  {
    v34 = v59;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v74 = v10;
    if (v79._countAndFlagsBits)
    {
      MEMORY[0x28223BE20](v35);
      *(&v58 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
      sub_23D934B8C();
      v36 = v58;
      sub_23D9DA684();
      v37 = v60;
      v38 = v72;
      v39 = v61;
      (*(v60 + 32))(v72, v36, v61);
      v40 = 0;
    }

    else
    {
      v40 = 1;
      v38 = v72;
      v39 = v61;
      v37 = v60;
    }

    (*(v37 + 56))(v38, v40, 1, v39);
    v41 = v67[2];
    v42 = v66;
    v43 = v68;
    v41(v66, v65, v68);
    v44 = v62;
    v61 = *(v62 + 16);
    (v61)(v75, v64, v71);
    v60 = *(v34 + 16);
    (v60)(v73, v69, v74);
    sub_23D91F2DC(v38, v70, &qword_27E2F4940, &unk_23D9DDC10);
    v45 = v63;
    v41(v63, v42, v43);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E0, &qword_23D9DCCC8);
    v47 = v71;
    (v61)(&v45[v46[12]], v75, v71);
    v48 = v73;
    v49 = v74;
    (v60)(&v45[v46[16]], v73, v74);
    v50 = &v45[v46[20]];
    v51 = v70;
    sub_23D91F2DC(v70, v50, &qword_27E2F4940, &unk_23D9DDC10);
    sub_23D91F344(v72, &qword_27E2F4940, &unk_23D9DDC10);
    v52 = *(v34 + 8);
    v52(v69, v49);
    v53 = *(v44 + 8);
    v53(v64, v47);
    v54 = v67[1];
    v55 = v68;
    v54(v65, v68);
    sub_23D91F344(v51, &qword_27E2F4940, &unk_23D9DDC10);
    v52(v48, v74);
    v53(v75, v47);
    return (v54)(v66, v55);
  }

  else
  {
    v57 = *(a1 + 1);
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D92CFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_23D9D89A4();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_23D9D89C4();
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = sub_23D9D8954();
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v14 = type metadata accessor for LiveSpeechAddPhraseView();
  v3[31] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v16 = sub_23D9D91D4();
  v3[34] = v16;
  v17 = *(v16 - 8);
  v3[35] = v17;
  v18 = *(v17 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_23D9DA9B4();
  v3[38] = sub_23D9DA9A4();
  v20 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D92D28C, v20, v19);
}

uint64_t sub_23D92D28C()
{
  v134 = v0;
  v1 = *(v0 + 112);
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (*(v0 + 312))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9384();

      v2 = *(v0 + 104);
      v3 = [v2 text];

      v4 = sub_23D9DA8B4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xE000000000000000;
    }

    v7 = *(v0 + 296);
    v8 = *(v0 + 264);
    v9 = *(v0 + 248);
    v10 = *(v0 + 112);
    v11 = v10 + *(v9 + 32);
    v12 = *v11;
    v13 = *(v11 + 16);
    *(v0 + 16) = v12;
    *(v0 + 32) = v13;
    *(v0 + 40) = v4;
    *(v0 + 48) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
    sub_23D9DA3C4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v14 = *(v0 + 72);
    v15 = (v10 + *(v9 + 40));
    v17 = *v15;
    v16 = v15[1];
    *(v0 + 56) = v17;
    *(v0 + 64) = v16;
    *(v0 + 80) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
    sub_23D9DA3C4();
    sub_23D9D8F14();
    sub_23D9337BC(v10, v8);
    v18 = sub_23D9D91C4();
    v19 = sub_23D9DACE4();
    if (!os_log_type_enabled(v18, v19))
    {
      v28 = *(v0 + 296);
      v29 = *(v0 + 272);
      v30 = *(v0 + 280);
      v31 = *(v0 + 264);

      v130 = *(v30 + 8);
      v130(v28, v29);
      sub_23D9347EC(v31);
      goto LABEL_16;
    }

    v20 = *(v0 + 264);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v133 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_23D9BDA5C(2036625250, 0xE400000000000000, &v133);
    *(v21 + 12) = 2080;
    if (*v20)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23D9D9384();

      v23 = *(v0 + 96);
      v24 = [v23 inputID];

      if (v24)
      {
        v25 = sub_23D9DA8B4();
        v27 = v26;
      }

      else
      {
        v27 = 0xE500000000000000;
        v25 = 0x3E6C696E3CLL;
      }

      v131 = *(v0 + 296);
      v35 = *(v0 + 272);
      v34 = *(v0 + 280);
      sub_23D9347EC(*(v0 + 264));
      v36 = sub_23D9BDA5C(v25, v27, &v133);

      *(v21 + 14) = v36;
      _os_log_impl(&dword_23D918000, v18, v19, "%s tapPhrase.inputID=%s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEF4BC0](v22, -1, -1);
      MEMORY[0x23EEF4BC0](v21, -1, -1);

      v37 = v131;
      v130 = *(v34 + 8);
      v130(v37, v35);
LABEL_16:
      v38 = *(v0 + 304);
      v39 = *(v0 + 208);
      v40 = *(v0 + 144);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D9D9384();

      v41 = *(v0 + 88);
      v42 = [v41 inputID];

      v43 = (v40 + 8);
      v44 = (v39 + 48);
      v126 = *(v0 + 200);
      if (!v42)
      {
        v50 = *(v0 + 192);
        v51 = *(v0 + 168);
        v52 = *(v0 + 176);
        v53 = *(v0 + 160);
        v55 = *(v0 + 128);
        v54 = *(v0 + 136);
        v56 = *(v0 + 112);
        sub_23D92A718(v50);
        sub_23D9D89B4();
        (*(v52 + 8))(v50, v51);
        sub_23D9D8994();
        (*v43)(v53, v54);
        if ((*v44)(v55, 1, v126) == 1)
        {
          sub_23D91F344(*(v0 + 128), &qword_27E2F4210, &qword_23D9DBE60);
        }

        else
        {
          v59 = *(v0 + 240);
          v60 = *(v0 + 248);
          v62 = *(v0 + 216);
          v61 = *(v0 + 224);
          v63 = *(v0 + 200);
          v64 = *(v0 + 208);
          v65 = *(v0 + 112);
          (*(v64 + 32))(v59, *(v0 + 128), v63);
          v66 = *(v64 + 16);
          v66(v61, v59, v63);
          v67 = *(v60 + 36);
          v66(v62, v61, v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
          sub_23D9DA3C4();
          v68 = *(v64 + 8);
          v68(v61, v63);
          v68(v59, v63);
        }

LABEL_28:
        v73 = *(v0 + 288);
        v74 = *(v0 + 256);
        v75 = *(v0 + 112);
        sub_23D9D8F14();
        sub_23D9337BC(v75, v74);
        v76 = sub_23D9D91C4();
        v77 = sub_23D9DACE4();
        v78 = os_log_type_enabled(v76, v77);
        v80 = *(v0 + 280);
        v79 = *(v0 + 288);
        v81 = *(v0 + 272);
        v82 = *(v0 + 256);
        if (v78)
        {
          v123 = *(v0 + 280);
          v127 = *(v0 + 288);
          v83 = *(v0 + 248);
          v84 = *(v0 + 224);
          v85 = *(v0 + 208);
          v119 = *(v0 + 200);
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v133 = v87;
          *v86 = 136315394;
          *(v86 + 4) = sub_23D9BDA5C(2036625250, 0xE400000000000000, &v133);
          *(v86 + 12) = 2080;
          v88 = *(v83 + 36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
          sub_23D9DA3B4();
          v89 = sub_23D9D88D4();
          v120 = v81;
          v91 = v90;
          (*(v85 + 8))(v84, v119);
          sub_23D9347EC(v82);
          v92 = sub_23D9BDA5C(v89, v91, &v133);

          *(v86 + 14) = v92;
          _os_log_impl(&dword_23D918000, v76, v77, "%s After .task() selectedLanguageCode=%s", v86, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEF4BC0](v87, -1, -1);
          MEMORY[0x23EEF4BC0](v86, -1, -1);

          v93 = v127;
          v94 = v120;
        }

        else
        {

          sub_23D9347EC(v82);
          v93 = v79;
          v94 = v81;
        }

        v130(v93, v94);
        v96 = *(v0 + 288);
        v95 = *(v0 + 296);
        v98 = *(v0 + 256);
        v97 = *(v0 + 264);
        v100 = *(v0 + 232);
        v99 = *(v0 + 240);
        v102 = *(v0 + 216);
        v101 = *(v0 + 224);
        v104 = *(v0 + 184);
        v103 = *(v0 + 192);
        v121 = *(v0 + 160);
        v124 = *(v0 + 152);
        v128 = *(v0 + 128);
        v132 = *(v0 + 120);

        v105 = *(v0 + 8);

        return v105();
      }

      v45 = *(v0 + 184);
      v46 = *(v0 + 152);
      v47 = *(v0 + 136);
      v48 = *(v0 + 120);
      sub_23D9DA8B4();

      sub_23D9D88B4();
      sub_23D9D89B4();
      sub_23D9D8994();
      (*v43)(v46, v47);
      if ((*v44)(v48, 1, v126) == 1)
      {
        v49 = *(v0 + 120);
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        sub_23D91F344(v49, &qword_27E2F4210, &qword_23D9DBE60);
        goto LABEL_28;
      }

      (*(*(v0 + 208) + 32))(*(v0 + 232), *(v0 + 120), *(v0 + 200));
      if (sub_23D9D8914())
      {
        v57 = *(v0 + 232);
        if (sub_23D9D88D4() != 7107949 || v58 != 0xE300000000000000)
        {
          v69 = sub_23D9DAFC4();

          if (v69)
          {
            goto LABEL_27;
          }

          v106 = *(v0 + 232);
          if (sub_23D9D88D4() != 0x696A6F6D65 || v107 != 0xE500000000000000)
          {
            v108 = sub_23D9DAFC4();

            if ((v108 & 1) == 0)
            {
              v109 = *(v0 + 248);
              v111 = *(v0 + 224);
              v110 = *(v0 + 232);
              v113 = *(v0 + 208);
              v112 = *(v0 + 216);
              v114 = *(v0 + 200);
              v115 = *(v0 + 176);
              v125 = *(v0 + 168);
              v129 = *(v0 + 184);
              v122 = *(v0 + 112);
              v116 = *(v113 + 16);
              v116(v111, v110, v114);
              v117 = *(v109 + 36);
              v116(v112, v111, v114);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
              sub_23D9DA3C4();
              v118 = *(v113 + 8);
              v118(v111, v114);
              v118(v110, v114);
              (*(v115 + 8))(v129, v125);
              goto LABEL_28;
            }

            goto LABEL_27;
          }
        }
      }

LABEL_27:
      v71 = *(v0 + 176);
      v70 = *(v0 + 184);
      v72 = *(v0 + 168);
      (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 200));
      (*(v71 + 8))(v70, v72);
      goto LABEL_28;
    }

    v1 = *(v0 + 264);
  }

  v32 = v1[1];
  type metadata accessor for LiveSpeechDataViewModel();
  sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);

  return sub_23D9D9784();
}

uint64_t sub_23D92DE60(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4898, &qword_23D9DCAB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_23D9D9BB4();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48F8, &qword_23D9DCC08);
  sub_23D9345D4();
  sub_23D9D94B4();
  v9 = sub_23D91F01C(&qword_27E2F48A0, &qword_27E2F4898, &qword_23D9DCAB8);
  MEMORY[0x23EEF2F00](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23D92E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for LiveSpeechAddPhraseView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4910, &qword_23D9DCC10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48F8, &qword_23D9DCC08);
  v14 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v25 - v15;
  sub_23D9337BC(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_23D933AD0(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_23D9DA404();
  if (LiveSpeechAddPhraseView.isPhraseEmpty.getter() || (LiveSpeechAddPhraseView.phraseExists.getter() & 1) != 0)
  {
    v19 = 1;
  }

  else if (LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) != 0 && (LiveSpeechAddPhraseView.isSameCategory.getter())
  {
    v19 = LiveSpeechAddPhraseView.isSameLanguageCode.getter();
  }

  else
  {
    v19 = 0;
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 & 1;
  (*(v6 + 32))(v13, v9, v26);
  v22 = &v13[*(v10 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_23D929B6C;
  v22[2] = v21;
  v23._countAndFlagsBits = 0x455641535F534CLL;
  v23._object = 0xE700000000000000;
  v29 = AXSUILocString(_:)(v23);
  sub_23D934690();
  sub_23D91B650();
  sub_23D9DA0A4();

  sub_23D91F344(v13, &qword_27E2F4910, &qword_23D9DCC10);
  sub_23D9D96A4();
  return sub_23D91F344(v16, &qword_27E2F48F8, &qword_23D9DCC08);
}

uint64_t sub_23D92E3D0()
{
  v1 = sub_23D9D9574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 44);
  v7 = *v6;
  v8 = *(v6 + 1);
  v12 = v7;
  v13 = v8;
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3C4();
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v12)
    {
      if ((LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) != 0 && (LiveSpeechAddPhraseView.isSameCategory.getter() & 1) == 0)
      {
        sub_23D931A1C();
      }

      else if ((LiveSpeechAddPhraseView.isSamePhrase.getter() & 1) != 0 || (LiveSpeechAddPhraseView.isSameCategory.getter() & 1) == 0)
      {
        sub_23D93259C();
      }

      else
      {
        sub_23D931FE8();
      }
    }

    else
    {
      sub_23D932A94();
    }

    sub_23D92AB28(v5);
    sub_23D9D9564();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v10 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D92E618@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_23D92E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23D9D99B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A80, &qword_23D9DCD98);
  return sub_23D92E7BC(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_23D92E7BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = a1;
  v60 = sub_23D9D9AE4();
  v61 = *(v60 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A88, &qword_23D9DCDA0);
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49[-v8];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A90, &qword_23D9DCDA8);
  v59 = *(v58 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v12 = &v49[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A98, &qword_23D9DCDB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v56 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v62 = &v49[-v17];
  v18._countAndFlagsBits = 0xD000000000000021;
  v18._object = 0x800000023D9E3D50;
  v69 = AXSUILocString(_:)(v18);
  sub_23D91B650();
  v53 = sub_23D9D9F04();
  v52 = v19;
  v21 = v20;
  v55 = v22;
  v54 = sub_23D9D9D94();
  sub_23D9D93F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v50 = v21 & 1;
  LOBYTE(v69._countAndFlagsBits) = v21 & 1;
  LOBYTE(v65) = 0;
  sub_23D9D9A04();
  v31 = (v51 + *(type metadata accessor for LiveSpeechAddPhraseView() + 32));
  v32 = *v31;
  v33 = *(v31 + 2);
  v65 = v32;
  *&v66 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3D4();
  sub_23D9DA7B4();
  sub_23D9D9AD4();
  v34 = sub_23D91F01C(&qword_27E2F4AA0, &qword_27E2F4A88, &qword_23D9DCDA0);
  v35 = sub_23D935830(&qword_27E2F4AA8, MEMORY[0x277CDDF28]);
  v36 = v60;
  sub_23D9DA034();
  (*(v61 + 8))(v5, v36);
  (*(v57 + 8))(v9, v6);
  v69._countAndFlagsBits = v6;
  v69._object = v36;
  v70 = v34;
  v71 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v62;
  v38 = v58;
  sub_23D9DA114();
  (*(v59 + 8))(v12, v38);
  v39 = v37;
  v40 = v56;
  sub_23D91F2DC(v39, v56, &qword_27E2F4A98, &qword_23D9DCDB0);
  v41 = v53;
  *&v65 = v53;
  v42 = v52;
  *(&v65 + 1) = v52;
  LOBYTE(v36) = v50;
  LOBYTE(v66) = v50;
  *(&v66 + 1) = *v64;
  DWORD1(v66) = *&v64[3];
  v43 = v55;
  *(&v66 + 1) = v55;
  LOBYTE(v6) = v54;
  LOBYTE(v67) = v54;
  *(&v67 + 1) = *v63;
  DWORD1(v67) = *&v63[3];
  *(&v67 + 1) = v24;
  *v68 = v26;
  *&v68[8] = v28;
  *&v68[16] = v30;
  v68[24] = 0;
  v44 = v65;
  v45 = v66;
  *(a2 + 57) = *&v68[9];
  v46 = *v68;
  a2[2] = v67;
  a2[3] = v46;
  *a2 = v44;
  a2[1] = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AB0, &qword_23D9DCDB8);
  sub_23D91F2DC(v40, a2 + *(v47 + 48), &qword_27E2F4A98, &qword_23D9DCDB0);
  sub_23D91F2DC(&v65, &v69, &qword_27E2F4AB8, &qword_23D9DCDC0);
  sub_23D91F344(v62, &qword_27E2F4A98, &qword_23D9DCDB0);
  sub_23D91F344(v40, &qword_27E2F4A98, &qword_23D9DCDB0);
  v69._countAndFlagsBits = v41;
  v69._object = v42;
  LOBYTE(v70) = v36;
  *(&v70 + 1) = *v64;
  HIDWORD(v70) = *&v64[3];
  v71 = v43;
  v72 = v6;
  *v73 = *v63;
  *&v73[3] = *&v63[3];
  v74 = v24;
  v75 = v26;
  v76 = v28;
  v77 = v30;
  v78 = 0;
  return sub_23D91F344(&v69, &qword_27E2F4AB8, &qword_23D9DCDC0);
}

uint64_t sub_23D92EE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4._object = 0x800000023D9E3D30;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  AXSUILocString(_:)(v4);
  sub_23D91B650();
  v5 = sub_23D9D9F04();
  v7 = v6;
  v9 = v8;
  sub_23D9DA274();
  v10 = sub_23D9D9EC4();
  v12 = v11;
  v14 = v13;
  v19 = v15;
  sub_23D9274BC(v5, v7, v9 & 1);

  v16 = (a1 + *(type metadata accessor for LiveSpeechAddPhraseView() + 44));
  v21 = *v16;
  v22 = *(v16 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  result = sub_23D9DA3B4();
  if ((v20 & 1) != 0 || (result = LiveSpeechAddPhraseView.phraseExists.getter(), v18 = 1.0, (result & 1) == 0))
  {
    v18 = 0.0;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_23D92EFF8(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPhraseView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23D9D8A74();
  swift_getKeyPath();
  sub_23D9337BC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D933AD0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D0, &unk_23D9DC5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4998, &qword_23D9DCCA0);
  sub_23D91F01C(&qword_27E2F4800, &qword_27E2F45D0, &unk_23D9DC5C0);
  sub_23D935830(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  sub_23D91F01C(&qword_27E2F4990, &qword_27E2F4998, &qword_23D9DCCA0);
  return sub_23D9DA614();
}

uint64_t sub_23D92F214(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LiveSpeechAddPhraseView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D9337BC(a2, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_23D933AD0(v11, v14 + v12);
  (*(v5 + 32))(v14 + v13, v7, v4);
  v17 = a2;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A60, &unk_23D9DCD80);
  sub_23D91F01C(&qword_27E2F4A68, &qword_27E2F4A60, &unk_23D9DCD80);
  return sub_23D9DA404();
}

uint64_t sub_23D92F464(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D9D8954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a2, v3);
  LODWORD(a2) = *(type metadata accessor for LiveSpeechAddPhraseView() + 36);
  v11(v8, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
  sub_23D9DA3C4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23D92F5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23D9D99B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A70, &unk_23D9DD780);
  return sub_23D92F624(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23D92F624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v94 = a3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  v92 = *(v93 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v81 = (&v76 - v6);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A30, &unk_23D9DD790);
  v79 = *(v80 - 8);
  v7 = *(v79 + 64);
  v8 = MEMORY[0x28223BE20](v80);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v76 - v10;
  v89 = sub_23D9D8954();
  v88 = *(v89 - 8);
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A38, &qword_23D9DCD00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v76 - v17;
  v18 = sub_23D9D9464();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v26 = sub_23D9D89C4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  sub_23D92A718(v30);
  v90 = a2;
  sub_23D9D88D4();
  v31 = sub_23D9D8984();
  v33 = v32;

  v34 = *(v27 + 8);
  v34(v30, v26);
  if (!v33)
  {
    sub_23D92A718(v30);
    v31 = sub_23D9D88C4();
    v33 = v35;
    v34(v30, v26);
  }

  v102 = v31;
  v103 = v33;
  sub_23D91B650();
  v36 = sub_23D9D9F04();
  v38 = v37;
  v40 = v39;
  sub_23D92A920(v25);
  (*(v19 + 104))(v23, *MEMORY[0x277CDF3C8], v18);
  v41 = sub_23D9D9454();
  v42 = *(v19 + 8);
  v42(v23, v18);
  v42(v25, v18);
  if (v41)
  {
    v43 = sub_23D9DA2C4();
  }

  else
  {
    v43 = sub_23D9DA2A4();
  }

  v102 = v43;
  v86 = sub_23D9D9EC4();
  v85 = v44;
  v46 = v45;
  v48 = v47;
  sub_23D9274BC(v36, v38, v40 & 1);

  v96 = sub_23D9D9D84();
  v83 = v46 & 1;
  v117 = v46 & 1;
  v114 = 1;
  *(&v84 + 1) = sub_23D9D9DD4();
  *&v84 = swift_getKeyPath();
  v49 = *(type metadata accessor for LiveSpeechAddPhraseView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
  v50 = v87;
  sub_23D9DA3B4();
  v51 = MEMORY[0x23EEF1C40](v90, v50);
  (*(v88 + 8))(v50, v89);
  v52 = 1;
  if (v51)
  {
    v102 = sub_23D9DA364();
    sub_23D9D9E14();
    v53 = v48;
    v54 = v77;
    sub_23D9D9F84();

    v55 = v79;
    v56 = *(v79 + 16);
    v57 = v78;
    v58 = v80;
    v56(v78, v54, v80);
    v59 = v81;
    *v81 = 0;
    *(v59 + 8) = 1;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A58, &unk_23D9DCD50);
    v56((v59 + *(v60 + 48)), v57, v58);
    v61 = *(v55 + 8);
    v62 = v54;
    v48 = v53;
    v61(v62, v58);
    v61(v57, v58);
    sub_23D9350AC(v59, v95);
    v52 = 0;
  }

  v63 = v95;
  (*(v92 + 56))(v95, v52, 1, v93);
  v64 = v91;
  sub_23D91F2DC(v63, v91, &qword_27E2F4A38, &qword_23D9DCD00);
  v65 = v86;
  *&v98 = v86;
  v66 = v85;
  *(&v98 + 1) = v85;
  v67 = v83;
  LOBYTE(v99) = v83;
  *(&v99 + 1) = *v116;
  DWORD1(v99) = *&v116[3];
  v82 = v48;
  *(&v99 + 1) = v48;
  v100[0] = v96;
  *&v100[1] = *v115;
  *&v100[4] = *&v115[3];
  memset(&v100[8], 0, 32);
  v100[40] = 1;
  *&v100[44] = *&v118[3];
  *&v100[41] = *v118;
  v68 = v84;
  v101 = v84;
  v69 = v99;
  v70 = v94;
  *v94 = v98;
  v70[1] = v69;
  v71 = *v100;
  v72 = *&v100[16];
  v73 = v101;
  v70[4] = *&v100[32];
  v70[5] = v73;
  v70[2] = v71;
  v70[3] = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A78, &qword_23D9DCD90);
  sub_23D91F2DC(v64, v70 + *(v74 + 48), &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F2DC(&v98, &v102, &qword_27E2F4A50, &unk_23D9DD820);
  sub_23D91F344(v63, &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F344(v64, &qword_27E2F4A38, &qword_23D9DCD00);
  v102 = v65;
  v103 = v66;
  v104 = v67;
  *v105 = *v116;
  *&v105[3] = *&v116[3];
  v106 = v82;
  v107 = v96;
  *v108 = *v115;
  *&v108[3] = *&v115[3];
  v109 = 0u;
  v110 = 0u;
  v111 = 1;
  *v112 = *v118;
  *&v112[3] = *&v118[3];
  v113 = v68;
  return sub_23D91F344(&v102, &qword_27E2F4A50, &unk_23D9DD820);
}

uint64_t sub_23D92FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49B8, &qword_23D9DCCB0);
  v17[0] = *(v7 - 8);
  v8 = *(v17[0] + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = LiveSpeechAddPhraseView.selectableCategories.getter();
  if (v11 >> 62)
  {
    v12 = sub_23D9DAF34();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < 1)
  {
    v16 = *(v17[0] + 56);

    return v16(a2, 1, 1, v7);
  }

  else
  {
    v17[1] = LiveSpeechAddPhraseView.selectableCategories.getter();
    sub_23D9337BC(a1, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_23D933AD0(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49F8, &unk_23D9DE140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49C8, &qword_23D9DCCB8);
    sub_23D91F01C(&qword_27E2F4A00, &qword_27E2F49F8, &unk_23D9DE140);
    sub_23D934A9C();
    sub_23D935830(&qword_27E2F4A08, MEMORY[0x277D70718]);
    sub_23D9DA624();
    (*(v17[0] + 32))(a2, v10, v7);
    return (*(v17[0] + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_23D9302DC(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49D8, &qword_23D9DCCC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-v10];
  v12 = *a1;
  sub_23D9337BC(a2, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_23D933AD0(&v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v22 = v12;
  v23 = a2;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A10, &qword_23D9DCCE0);
  sub_23D91F01C(&qword_27E2F4A18, &qword_27E2F4A10, &qword_23D9DCCE0);
  sub_23D9DA404();
  v16 = [v15 name];
  v17 = sub_23D9DA8B4();
  v19 = v18;

  v24 = 0xD00000000000001ALL;
  v25 = 0x800000023D9E3D10;
  MEMORY[0x23EEF3C30](v17, v19);

  sub_23D91F01C(&qword_27E2F49D0, &qword_27E2F49D8, &qword_23D9DCCC0);
  sub_23D9DA114();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23D9305D0(uint64_t a1, void *a2)
{
  v3 = (a1 + *(type metadata accessor for LiveSpeechAddPhraseView() + 40));
  v6 = *v3;
  v7 = v3[1];
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  return sub_23D9DA3C4();
}

uint64_t sub_23D930640@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23D9D99B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A20, &qword_23D9DCCE8);
  return sub_23D9306A8(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_23D9306A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v104 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v5);
  v95 = (&v91 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A30, &unk_23D9DD790);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A38, &qword_23D9DCD00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v103 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v110 = &v91 - v17;
  *(&v106 + 1) = sub_23D9D9464();
  v18 = *(*(&v106 + 1) - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](*(&v106 + 1));
  *&v106 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - v22;
  v24 = sub_23D9DA374();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  v29 = [a1 symbol];
  sub_23D9DA8B4();

  sub_23D9DA384();
  (*(v25 + 104))(v28, *MEMORY[0x277CE0FE8], v24);
  v109 = sub_23D9DA394();

  (*(v25 + 8))(v28, v24);
  sub_23D9DA734();
  sub_23D9D9544();
  v142 = 1;
  *&v141[6] = v143;
  *&v141[22] = v144;
  *&v141[38] = v145;
  v105 = a2;
  sub_23D92A920(v23);
  v30 = *MEMORY[0x277CDF3C8];
  v31 = v106;
  v99 = v18[13];
  v99(v106, v30, *(&v106 + 1));
  LOBYTE(v24) = sub_23D9D9454();
  v32 = v18[1];
  v32(v31, *(&v31 + 1));
  v100 = v18 + 1;
  v32(v23, *(&v31 + 1));
  if (v24)
  {
    v33 = sub_23D9DA2C4();
  }

  else
  {
    v33 = sub_23D9DA2A4();
  }

  v108 = v33;
  v34 = [v107 localizedName];
  v35 = sub_23D9DA8B4();
  v37 = v36;

  *&v117 = v35;
  *(&v117 + 1) = v37;
  sub_23D91B650();
  v38 = sub_23D9D9F04();
  KeyPath = v39;
  v98 = v40;
  v42 = v41;
  sub_23D92A920(v23);
  v43 = v106;
  v99(v106, v30, *(&v106 + 1));
  v44 = sub_23D9D9454();
  v32(v43, *(&v43 + 1));
  v32(v23, *(&v43 + 1));
  if (v44)
  {
    v45 = sub_23D9DA2C4();
  }

  else
  {
    v45 = sub_23D9DA2A4();
  }

  *&v117 = v45;
  v46 = KeyPath;
  *&v106 = sub_23D9D9EC4();
  *(&v106 + 1) = v47;
  v49 = v48;
  v100 = v50;
  sub_23D9274BC(v38, v46, v42 & 1);

  LODWORD(v98) = sub_23D9D9D84();
  v51 = v49 & 1;
  v139 = v49 & 1;
  v136 = 1;
  v99 = sub_23D9D9DD4();
  KeyPath = swift_getKeyPath();
  v52 = (v105 + *(type metadata accessor for LiveSpeechAddPhraseView() + 40));
  v54 = *v52;
  v53 = v52[1];
  *&v117 = v54;
  *(&v117 + 1) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  sub_23D9DA3B4();
  v55 = v113;
  v56 = [v113 categoryID];

  v57 = sub_23D9DA8B4();
  v59 = v58;

  v60 = [v107 categoryID];
  v61 = sub_23D9DA8B4();
  v63 = v62;

  if (v57 == v61 && v59 == v63)
  {
  }

  else
  {
    v64 = sub_23D9DAFC4();

    if ((v64 & 1) == 0)
    {
      v74 = 1;
      v73 = v110;
      goto LABEL_13;
    }
  }

  *&v117 = sub_23D9DA364();
  sub_23D9D9E14();
  v65 = v91;
  sub_23D9D9F84();

  v67 = v92;
  v66 = v93;
  v68 = *(v93 + 16);
  v69 = v94;
  v68(v92, v65, v94);
  v70 = v95;
  *v95 = 0;
  *(v70 + 8) = 1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A58, &unk_23D9DCD50);
  v68((v70 + *(v71 + 48)), v67, v69);
  v72 = *(v66 + 8);
  v72(v65, v69);
  v72(v67, v69);
  v73 = v110;
  sub_23D9350AC(v70, v110);
  v74 = 0;
LABEL_13:
  (*(v101 + 56))(v73, v74, 1, v102);
  v75 = v103;
  sub_23D91F2DC(v73, v103, &qword_27E2F4A38, &qword_23D9DCD00);
  v111[0] = v109;
  v111[1] = 0;
  LOWORD(v112[0]) = 1;
  *(v112 + 2) = *v141;
  *(&v112[1] + 2) = *&v141[16];
  *(&v112[2] + 2) = *&v141[32];
  *&v112[3] = *&v141[46];
  *(&v112[3] + 1) = v108;
  v76 = v109;
  v77 = v112[0];
  v78 = v112[2];
  v79 = v112[3];
  v80 = v104;
  v104[2] = v112[1];
  v80[3] = v78;
  *v80 = v76;
  v80[1] = v77;
  v113 = v106;
  v96 = v51;
  LOBYTE(v114) = v51;
  DWORD1(v114) = *&v138[3];
  *(&v114 + 1) = *v138;
  v81 = v100;
  *(&v114 + 1) = v100;
  v82 = v98;
  LOBYTE(v115[0]) = v98;
  DWORD1(v115[0]) = *&v137[3];
  *(v115 + 1) = *v137;
  *(&v115[1] + 8) = 0u;
  *(v115 + 8) = 0u;
  BYTE8(v115[2]) = 1;
  HIDWORD(v115[2]) = *&v140[3];
  *(&v115[2] + 9) = *v140;
  v83 = KeyPath;
  v84 = v99;
  *&v116 = KeyPath;
  *(&v116 + 1) = v99;
  v85 = v106;
  v86 = v114;
  v80[4] = v79;
  v80[5] = v85;
  v87 = v116;
  v80[9] = v115[2];
  v80[10] = v87;
  v88 = v115[1];
  v80[7] = v115[0];
  v80[8] = v88;
  v80[6] = v86;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A40, &qword_23D9DCD38);
  sub_23D91F2DC(v75, v80 + *(v89 + 64), &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F2DC(v111, &v117, &qword_27E2F4A48, &unk_23D9DCD40);
  sub_23D91F2DC(&v113, &v117, &qword_27E2F4A50, &unk_23D9DD820);
  sub_23D91F344(v110, &qword_27E2F4A38, &qword_23D9DCD00);
  sub_23D91F344(v75, &qword_27E2F4A38, &qword_23D9DCD00);
  v117 = v106;
  v118 = v96;
  *v119 = *v138;
  *&v119[3] = *&v138[3];
  v120 = v81;
  v121 = v82;
  *v122 = *v137;
  *&v122[3] = *&v137[3];
  v123 = 0u;
  v124 = 0u;
  v125 = 1;
  *v126 = *v140;
  *&v126[3] = *&v140[3];
  v127 = v83;
  v128 = v84;
  sub_23D91F344(&v117, &qword_27E2F4A50, &unk_23D9DD820);
  v129[0] = v109;
  v129[1] = 0;
  v130 = 1;
  v131 = 0;
  v132 = *v141;
  v133 = *&v141[16];
  *v134 = *&v141[32];
  *&v134[14] = *&v141[46];
  v135 = v108;
  return sub_23D91F344(v129, &qword_27E2F4A48, &unk_23D9DCD40);
}

uint64_t sub_23D931148(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPhraseView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_23D9337BC(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_23D933AD0(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_23D9DA404();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
  sub_23D9DA114();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23D931378(void *a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v42 = sub_23D9D91F4();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D9D91D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D9D9574();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D92AB28(v15);
  sub_23D9D9564();
  (*(v12 + 8))(v15, v11);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v16 = v43[0];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v17 = v43[0];
    v43[0] = 0;
    v18 = [v16 deletePhrase:v17 error:v43];

    if (v18)
    {
      v19 = v43[0];
    }

    else
    {
      v20 = v43[0];
      v21 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D9214();
      v22 = v21;
      v23 = sub_23D9D91C4();
      v24 = sub_23D9DACC4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v41 = v6;
        v26 = v25;
        v39 = swift_slowAlloc();
        v40 = v7;
        *v26 = 138412290;
        v27 = v5;
        v28 = v5;
        v29 = v42;
        (*(v2 + 104))(v28, *MEMORY[0x277D704D8], v42);
        sub_23D9D9204();
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v27, v29);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v30;
        v31 = v39;
        *v39 = v30;
        _os_log_impl(&dword_23D918000, v23, v24, "%@", v26, 0xCu);
        sub_23D91F344(v31, &qword_27E2F4930, &unk_23D9DCC50);
        v7 = v40;
        MEMORY[0x23EEF4BC0](v31, -1, -1);
        v32 = v26;
        v6 = v41;
        MEMORY[0x23EEF4BC0](v32, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }

    v33 = objc_opt_self();

    v34 = [v33 makeEmptyPhrase];
    swift_getKeyPath();
    swift_getKeyPath();
    v43[0] = v34;
    result = sub_23D9D9394();
    v36 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v37 = a1[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D931918@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E3CF0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  v3 = sub_23D9D9F04();
  v5 = v4;
  v7 = v6;
  sub_23D9DA274();
  v8 = sub_23D9D9EC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23D9274BC(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

id sub_23D931A1C()
{
  v38[2] = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23D9D91D4();
  v6 = *(v36 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v10 = v38[0];
    v11 = [v38[0] text];

    if (!v11)
    {
      sub_23D9DA8B4();
      v11 = sub_23D9DA8A4();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v12 = v38[0];
    v13 = [v38[0] categoryID];

    if (!v13)
    {
      sub_23D9DA8B4();
      v13 = sub_23D9DA8A4();
    }

    v14 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 40);
    v16 = *v14;
    v15 = *(v14 + 1);
    v38[0] = v16;
    v38[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
    sub_23D9DA3B4();
    v17 = v37;
    v18 = [v37 categoryID];

    if (!v18)
    {
      sub_23D9DA8B4();
      v18 = sub_23D9DA8A4();
    }

    v19 = objc_opt_self();
    v38[0] = 0;
    v20 = [v19 updatePhrase:v11 fromCategory:v13 toCategory:v18 error:v38];

    v21 = v38[0];
    if (v20)
    {
      v22 = *MEMORY[0x277D85DE8];

      return v21;
    }

    else
    {
      v35 = v38[0];
      v24 = v38[0];
      v25 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D8F14();
      v26 = v25;
      v27 = sub_23D9D91C4();
      v28 = sub_23D9DACC4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        (*(v2 + 104))(v5, *MEMORY[0x277D704D8], v1);
        sub_23D9D9204();
        v35 = v6;
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v5, v1);
        v6 = v35;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&dword_23D918000, v27, v28, "%@", v29, 0xCu);
        sub_23D91F344(v30, &qword_27E2F4930, &unk_23D9DCC50);
        MEMORY[0x23EEF4BC0](v30, -1, -1);
        MEMORY[0x23EEF4BC0](v29, -1, -1);
      }

      else
      {
      }

      result = (v6[1])(v9, v36);
      v32 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v33 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

id sub_23D931FE8()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23D9D91D4();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v10 = v36;
    v11 = [v36 text];

    if (!v11)
    {
      sub_23D9DA8B4();
      v11 = sub_23D9DA8A4();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v12 = v36;
    v13 = [v36 categoryID];

    if (!v13)
    {
      sub_23D9DA8B4();
      v13 = sub_23D9DA8A4();
    }

    v14 = objc_opt_self();
    v15 = v0 + *(type metadata accessor for LiveSpeechAddPhraseView() + 32);
    v16 = *v15;
    v17 = *(v15 + 2);
    v36 = v16;
    v37 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
    sub_23D9DA3B4();
    v18 = sub_23D9DA8A4();

    *&v36 = 0;
    v19 = [v14 updatePhrase:v11 categoryID:v13 withUpdatedText:v18 error:&v36];

    v20 = v36;
    if (v19)
    {
      v21 = *MEMORY[0x277D85DE8];

      return v20;
    }

    else
    {
      v34 = v36;
      v23 = v36;
      v24 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D8F14();
      v25 = v24;
      v26 = sub_23D9D91C4();
      v27 = sub_23D9DACC4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        (*(v2 + 104))(v5, *MEMORY[0x277D704D8], v1);
        sub_23D9D9204();
        v34 = v6;
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v2 + 8))(v5, v1);
        v6 = v34;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&dword_23D918000, v26, v27, "%@", v28, 0xCu);
        sub_23D91F344(v29, &qword_27E2F4930, &unk_23D9DCC50);
        MEMORY[0x23EEF4BC0](v29, -1, -1);
        MEMORY[0x23EEF4BC0](v28, -1, -1);
      }

      else
      {
      }

      result = (*(v6 + 8))(v9, v35);
      v31 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v32 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D93259C()
{
  v32[1] = *MEMORY[0x277D85DE8];
  v31 = sub_23D9D91F4();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D91D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v10 = v32[0];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v11 = v32[0];
    v32[0] = 0;
    v12 = [v10 deletePhrase:v11 error:v32];

    v13 = v32[0];
    if (v12)
    {
      v14 = objc_opt_self();

      v15 = v13;
      v16 = [v14 makeEmptyPhrase];
      swift_getKeyPath();
      swift_getKeyPath();
      v32[0] = v16;
      sub_23D9D9394();
      result = sub_23D932A94();
    }

    else
    {
      v18 = v32[0];
      v19 = sub_23D9D8824();

      swift_willThrow();
      sub_23D9D8F14();
      v20 = v19;
      v21 = sub_23D9D91C4();
      v22 = sub_23D9DACC4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v23 = 138412290;
        v24 = v31;
        (*(v1 + 104))(v4, *MEMORY[0x277D704D8], v31);
        sub_23D9D9204();
        v30 = v6;
        sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518]);
        swift_allocError();
        sub_23D9D91E4();
        (*(v1 + 8))(v4, v24);
        v6 = v30;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        v26 = v29;
        *v29 = v25;
        _os_log_impl(&dword_23D918000, v21, v22, "%@", v23, 0xCu);
        sub_23D91F344(v26, &qword_27E2F4930, &unk_23D9DCC50);
        MEMORY[0x23EEF4BC0](v26, -1, -1);
        MEMORY[0x23EEF4BC0](v23, -1, -1);
      }

      else
      {
      }

      result = (*(v6 + 8))(v9, v5);
    }

    v27 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v28 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

id sub_23D932A94()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = sub_23D9D91F4();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D91D4();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveSpeechAddPhraseView();
  v15 = (v0 + v14[10]);
  v17 = *v15;
  v16 = v15[1];
  *&v46 = v17;
  *(&v46 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4840, &qword_23D9DCA00);
  sub_23D9DA3B4();
  v18 = v45;
  v19 = (v0 + v14[8]);
  v20 = *v19;
  v21 = *(v19 + 2);
  v46 = v20;
  v47 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3B4();
  v22 = sub_23D9DA8A4();

  v23 = v14[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
  sub_23D9DA3B4();
  sub_23D9D88D4();
  (*(v10 + 8))(v13, v9);
  v24 = sub_23D9DA8A4();

  *&v46 = 0;
  v25 = [v18 addPhrase:v22 inputID:v24 error:&v46];

  v26 = v46;
  if (v25)
  {
    v27 = *MEMORY[0x277D85DE8];

    return v26;
  }

  else
  {
    v42 = v46;
    v29 = v46;
    v30 = sub_23D9D8824();

    swift_willThrow();
    sub_23D9D8F14();
    v31 = v30;
    v32 = sub_23D9D91C4();
    v33 = sub_23D9DACC4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v37 = v40;
      v36 = v41;
      (*(v40 + 104))(v4, *MEMORY[0x277D704D8], v41);
      sub_23D9D9204();
      sub_23D935830(&qword_27E2F4928, MEMORY[0x277D70518]);
      swift_allocError();
      sub_23D9D91E4();
      (*(v37 + 8))(v4, v36);
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v38;
      *v35 = v38;
      _os_log_impl(&dword_23D918000, v32, v33, "%@", v34, 0xCu);
      sub_23D91F344(v35, &qword_27E2F4930, &unk_23D9DCC50);
      MEMORY[0x23EEF4BC0](v35, -1, -1);
      MEMORY[0x23EEF4BC0](v34, -1, -1);
    }

    else
    {
    }

    result = (*(v43 + 8))(v8, v44);
    v39 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_23D932FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D9D8954();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  type metadata accessor for LiveSpeechDataViewModel();
  sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
  *a1 = sub_23D9D9794();
  a1[1] = v10;
  v11 = type metadata accessor for LiveSpeechAddPhraseView();
  v12 = v11[5];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  swift_storeEnumTagMultiPayload();
  v13 = v11[6];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  swift_storeEnumTagMultiPayload();
  v14 = v11[7];
  *(a1 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  v15 = a1 + v11[8];
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_23D9DA3A4();
  v16 = v27;
  *v15 = v26;
  *(v15 + 2) = v16;
  v17 = v11[9];
  sub_23D9D8924();
  (*(v3 + 16))(v7, v9, v2);
  sub_23D9DA3A4();
  (*(v3 + 8))(v9, v2);
  v18 = (a1 + v11[10]);
  v24 = [objc_opt_self() makeEmptyCategory];
  sub_23D9DAD44();
  sub_23D9DA3A4();
  v19 = *(&v26 + 1);
  *v18 = v26;
  v18[1] = v19;
  v20 = a1 + v11[11];
  LOBYTE(v24) = 0;
  result = sub_23D9DA3A4();
  v22 = *(&v26 + 1);
  *v20 = v26;
  *(v20 + 1) = v22;
  return result;
}

uint64_t sub_23D933328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v5;
  return result;
}

uint64_t sub_23D9333B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_23D9D9394();
}

uint64_t sub_23D93342C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v5;
  return result;
}

uint64_t sub_23D9334AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

uint64_t sub_23D933528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v5;
  return result;
}

uint64_t sub_23D9335A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

uint64_t sub_23D93361C(uint64_t a1)
{
  v2 = sub_23D9D89C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D9D98E4();
}

uint64_t type metadata accessor for LiveSpeechAddPhraseView()
{
  result = qword_27E2F48B8;
  if (!qword_27E2F48B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D9337BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D933820()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D9D89C4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9464();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D9D9574();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v5 + v1[8];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = v5 + v1[9];
  v20 = sub_23D9D8954();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08) + 28));

  v22 = v5 + v1[10];

  v23 = *(v22 + 8);

  v24 = *(v5 + v1[11] + 8);

  return swift_deallocObject();
}

uint64_t sub_23D933AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechAddPhraseView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D933B34()
{
  v2 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D92CFBC(v4, v5, v0 + v3);
}

uint64_t sub_23D933C48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48A8, &unk_23D9DCB20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D933E48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48A8, &unk_23D9DCB20);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_23D934034()
{
  sub_23D934258();
  if (v0 <= 0x3F)
  {
    sub_23D9342EC(319, &qword_27E2F48D0, MEMORY[0x277CC9788], MEMORY[0x277CDF470]);
    if (v1 <= 0x3F)
    {
      sub_23D9342EC(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8], MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        sub_23D9342EC(319, &qword_27E2F4610, MEMORY[0x277CDD840], MEMORY[0x277CDF470]);
        if (v3 <= 0x3F)
        {
          sub_23D934350(319, &qword_27E2F48E0);
          if (v4 <= 0x3F)
          {
            sub_23D9342EC(319, &qword_27E2F48E8, MEMORY[0x277CC9640], MEMORY[0x277CE10B0]);
            if (v5 <= 0x3F)
            {
              sub_23D9342EC(319, &qword_27E2F48F0, MEMORY[0x277D70718], MEMORY[0x277CE10B0]);
              if (v6 <= 0x3F)
              {
                sub_23D934350(319, &qword_27E2F46A0);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D934258()
{
  if (!qword_27E2F48C8)
  {
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D935830(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    v0 = sub_23D9D97A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F48C8);
    }
  }
}

void sub_23D9342EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D934350(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23D9DA3E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_23D93439C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4850, &qword_23D9DCA58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4890, &qword_23D9DCAB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4858, &qword_23D9DCA60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4860, &qword_23D9DCA68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4248, &qword_23D9DCA70);
  sub_23D91F01C(&qword_27E2F4888, &qword_27E2F4248, &qword_23D9DCA70);
  swift_getOpaqueTypeConformance2();
  sub_23D91B650();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4898, &qword_23D9DCAB8);
  sub_23D91F01C(&qword_27E2F48A0, &qword_27E2F4898, &qword_23D9DCAB8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D9345D4()
{
  result = qword_27E2F4900;
  if (!qword_27E2F4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F48F8, &qword_23D9DCC08);
    sub_23D934690();
    sub_23D935830(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4900);
  }

  return result;
}

unint64_t sub_23D934690()
{
  result = qword_27E2F4908;
  if (!qword_27E2F4908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4910, &qword_23D9DCC10);
    sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
    sub_23D91F01C(&qword_27E2F4720, &qword_27E2F4728, &qword_23D9DC7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4908);
  }

  return result;
}

uint64_t sub_23D934778()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23D92E3D0();
}

uint64_t sub_23D9347EC(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechAddPhraseView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D934850()
{
  result = qword_27E2F4978;
  if (!qword_27E2F4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4968, &qword_23D9DCC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4978);
  }

  return result;
}

unint64_t sub_23D9348DC()
{
  result = qword_27E2F4988;
  if (!qword_27E2F4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4980, &qword_23D9DCC98);
    sub_23D91F01C(&qword_27E2F4990, &qword_27E2F4998, &qword_23D9DCCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4988);
  }

  return result;
}

unint64_t sub_23D934994()
{
  result = qword_27E2F49A8;
  if (!qword_27E2F49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49A0, &qword_23D9DCCA8);
    sub_23D934A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49A8);
  }

  return result;
}

unint64_t sub_23D934A18()
{
  result = qword_27E2F49B0;
  if (!qword_27E2F49B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49B8, &qword_23D9DCCB0);
    sub_23D934A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49B0);
  }

  return result;
}

unint64_t sub_23D934A9C()
{
  result = qword_27E2F49C0;
  if (!qword_27E2F49C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49C8, &qword_23D9DCCB8);
    sub_23D91F01C(&qword_27E2F49D0, &qword_27E2F49D8, &qword_23D9DCCC0);
    sub_23D935830(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49C0);
  }

  return result;
}

unint64_t sub_23D934B8C()
{
  result = qword_27E2F49F0;
  if (!qword_27E2F49F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F49E8, &unk_23D9DCCD0);
    sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
    sub_23D935830(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F49F0);
  }

  return result;
}

uint64_t sub_23D934C74()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_23D931378(v2);
}

uint64_t sub_23D934CD4(void **a1)
{
  v3 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D9302DC(a1, v4);
}

uint64_t sub_23D934D54()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D9D89C4();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D9D9464();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
    v11 = *(v4 + v9);
  }

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9574();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  else
  {
    v14 = *(v4 + v12);
  }

  v15 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = v4 + v1[8];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = v4 + v1[9];
  v20 = sub_23D9D8954();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08) + 28));

  v22 = v4 + v1[10];

  v23 = *(v22 + 8);

  v24 = *(v4 + v1[11] + 8);

  return swift_deallocObject();
}

uint64_t sub_23D935010()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D9305D0(v0 + v2, v3);
}

uint64_t sub_23D9350AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4A28, &unk_23D9DCCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D89C4();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  else
  {
    v7 = *&v3[v5];
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D9D9464();
    (*(*(v9 - 8) + 8))(&v3[v8], v9);
  }

  else
  {
    v10 = *&v3[v8];
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D9D9574();
    (*(*(v12 - 8) + 8))(&v3[v11], v12);
  }

  else
  {
    v13 = *&v3[v11];
  }

  v14 = &v3[v1[8]];
  v15 = *(v14 + 1);

  v16 = *(v14 + 2);

  v17 = &v3[v1[9]];
  v18 = sub_23D9D8954();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08) + 28)];

  v20 = &v3[v1[10]];

  v21 = *(v20 + 1);

  v22 = *&v3[v1[11] + 8];

  return swift_deallocObject();
}

uint64_t sub_23D9353C4(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D92F214(a1, v4);
}

uint64_t sub_23D935444()
{
  v1 = type metadata accessor for LiveSpeechAddPhraseView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_23D9D8954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v30 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4878, &qword_23D9DCA88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D89C4();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
    v12 = *(v8 + v10);
  }

  v13 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D9D9464();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23D9D9574();
    (*(*(v17 - 8) + 8))(v8 + v16, v17);
  }

  else
  {
    v18 = *(v8 + v16);
  }

  v19 = (v3 + v4 + v7) & ~v7;
  v20 = v8 + v1[8];
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  v23 = v8 + v1[9];
  v24 = *(v6 + 8);
  v24(v23, v5);
  v25 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4848, &qword_23D9DCA08) + 28));

  v26 = v8 + v1[10];

  v27 = *(v26 + 8);

  v28 = *(v8 + v1[11] + 8);

  v24(v0 + v19, v5);

  return swift_deallocObject();
}

uint64_t sub_23D93575C()
{
  v1 = *(type metadata accessor for LiveSpeechAddPhraseView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_23D9D8954() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23D92F464(v0 + v2, v5);
}

uint64_t sub_23D935830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D935884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v15(v14);
  a5(v16);
  return sub_23D9DA674();
}

uint64_t sub_23D9359B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8(v7);
  return sub_23D9DA694();
}

uint64_t Section<>.init(axsuiHeaderLocKey:footerLocKey:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v13 = a2;
  v9 = a3;
  v10 = a4;
  sub_23D935884(a5, a6, sub_23D935D90, v11, sub_23D935B24, v8, MEMORY[0x277CE0BD0], a7, MEMORY[0x277CE0BD0]);
}

uint64_t sub_23D935B24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23D935B58(a1);
}

uint64_t sub_23D935B58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  else
  {
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_23D935CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  sub_23D9359B0(a3, a4, a7, v8, a5, MEMORY[0x277CE0BD0]);
}

uint64_t sub_23D935D1C@<X0>(uint64_t a1@<X8>)
{
  sub_23D91B650();

  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23D935D88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23D935D1C(a1);
}

uint64_t AXSUIGuestPassOnboardingView.init(isLearnMore:isPresented:presentDevicePicker:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AXSUIGuestPassOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_23D9D9184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AC0, &qword_23D9DCDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AC8, &qword_23D9DCDD8);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AD0, &qword_23D9DCDE0);
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = v1[1];
  v55 = *v1;
  v56 = v18;
  v57 = v1[2];
  v58 = *(v1 + 48);
  v19._object = 0x800000023D9E3DC0;
  v19._countAndFlagsBits = 0xD000000000000010;
  v20 = AXSUILocString(_:)(v19);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;
  v21 = sub_23D9DA8A4();
  v53 = sub_23D9364D4;
  v54 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_23D936614;
  v52 = &block_descriptor;
  v22 = _Block_copy(&aBlock);
  v23 = AXLocStringForDeviceVariant();
  _Block_release(v22);

  if (v23)
  {
    v41 = sub_23D9DA8B4();
    v40 = v24;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v39 = "@NSString16@?0@NSString8";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AD8, &qword_23D9DCDE8);
  v25 = *(v3 + 72);
  v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_23D9DC3E0;
  sub_23D9D9174();
  aBlock = v27;
  sub_23D937EA0(&qword_27E2F4AE0, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AE8, &qword_23D9DCDF0);
  sub_23D91F01C(&qword_27E2F4AF0, &qword_27E2F4AE8, &qword_23D9DCDF0);
  sub_23D9DADD4();
  sub_23D9DA5A4();
  v28 = (*(v3 + 8))(v6, v2);
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AF8, &qword_23D9DCDF8);
  sub_23D91F01C(&qword_27E2F4B00, &qword_27E2F4AF8, &qword_23D9DCDF8);
  sub_23D9D9164();
  sub_23D9DA724();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B08, &qword_23D9DCE00);
  v30 = sub_23D91F01C(&qword_27E2F4B10, &qword_27E2F4AC8, &qword_23D9DCDD8);
  v31 = sub_23D9372FC();
  v32 = MEMORY[0x277CE1358];
  v33 = MEMORY[0x277CE1348];
  sub_23D9DA214();
  v34 = (*(v45 + 8))(v13, v10);
  MEMORY[0x28223BE20](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B38, &qword_23D9DCE10);
  aBlock = v10;
  v50 = v32;
  v51 = v29;
  v52 = v30;
  v53 = v33;
  v54 = v31;
  swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B40, &qword_23D9DCE18);
  v36 = sub_23D937938();
  aBlock = v35;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  sub_23D9DA1A4();
  return (*(v46 + 8))(v17, v37);
}

uint64_t sub_23D9364D4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (qword_27E2F41A8 != -1)
    {
      v9 = result;
      swift_once();
      result = v9;
    }

    v2 = result;
    if (qword_27E2F7320)
    {
      v3 = qword_27E2F7320;
      v4 = sub_23D9DA8A4();
      v5 = sub_23D9DA8A4();
      v6 = sub_23D9DA8A4();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      v8 = sub_23D9DA8B4();
      return v8;
    }

    else
    {

      return v2;
    }
  }

  return result;
}

id sub_23D936614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_23D9DA8B4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
  v8 = v7;

  if (v8)
  {
    v9 = sub_23D9DA8A4();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D9366DC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AF8, &qword_23D9DCDF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (*a1)
  {
    v9 = *(v6 + 56);

    return v9(a2, 1, 1, v4);
  }

  else
  {
    v13 = v6;
    *v8 = sub_23D9D9AB4();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B70, &qword_23D9DCF18);
    sub_23D936858(a1, &v8[*(v11 + 44)]);
    sub_23D92A2BC(v8, a2, &qword_27E2F4AF8, &qword_23D9DCDF8);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_23D936858@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v53 = sub_23D9D91A4();
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B78, &qword_23D9DCF20);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v54);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v46 - v8;
  v9 = sub_23D9D9194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B80, &qword_23D9DCF28);
  v56 = *(v48 - 8);
  v19 = v56[8];
  v20 = MEMORY[0x28223BE20](v48);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = *(a1 + 48);
  sub_23D937DB4(a1, v58);
  sub_23D9DA404();
  sub_23D9D9434();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
  sub_23D937EA0(&qword_27E2F4B88, MEMORY[0x277CE76F0]);
  v26 = v23;
  v46 = v23;
  sub_23D9D9FB4();
  (*(v10 + 8))(v13, v9);
  v27 = *(v15 + 8);
  v27(v18, v14);
  v28 = swift_allocObject();
  v29 = *(a1 + 16);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a1 + 32);
  *(v28 + 64) = *(a1 + 48);
  sub_23D937DB4(a1, v58);
  sub_23D9DA404();
  v30 = v49;
  sub_23D9D9444();
  sub_23D937EA0(&qword_27E2F4B90, MEMORY[0x277CE7708]);
  v31 = v57;
  v32 = v53;
  sub_23D9D9FB4();
  (*(v51 + 8))(v30, v32);
  v27(v18, v14);
  v33 = v56[2];
  v34 = v47;
  v35 = v26;
  v36 = v48;
  v33(v47, v35, v48);
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v50;
  v40 = v54;
  v38(v50, v31, v54);
  v41 = v55;
  v33(v55, v34, v36);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B98, &qword_23D9DCF30);
  v38(&v41[*(v42 + 48)], v39, v40);
  v43 = *(v37 + 8);
  v43(v57, v40);
  v44 = v56[1];
  v44(v46, v36);
  v43(v39, v40);
  return (v44)(v34, v36);
}

uint64_t sub_23D936ED0(uint64_t a1)
{
  sub_23D9DAC94();
  v2 = MEMORY[0x23EEF3E90]();
  v3 = *MEMORY[0x277CE7990];
  swift_beginAccess();
  v4 = *&v2[v3];

  sub_23D9DABA4();
  v6 = *(a1 + 8);
  v8 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  sub_23D9DA564();
  v7 = *(a1 + 32);
  v9 = *(a1 + 48);
  return sub_23D9DA564();
}

uint64_t sub_23D936FB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_23D937104@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E3E40;
  v2._countAndFlagsBits = 0xD000000000000014;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D93717C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B28, &qword_23D9DCE08);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  sub_23D9D9D64();
  sub_23D9D93F4();
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = 0;
  v13 = &v8[*(v5 + 44)];
  sub_23D9D9C84();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4AC8, &qword_23D9DCDD8);
  (*(*(v14 - 8) + 16))(v8, a1, v14);
  sub_23D9D9D74();
  AXDeviceIsPad();
  sub_23D9D93F4();
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  v22 = 0;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B08, &qword_23D9DCE00) + 36);
  sub_23D9D9C84();
  return sub_23D92A2BC(v8, a2, &qword_27E2F4B28, &qword_23D9DCE08);
}

unint64_t sub_23D9372FC()
{
  result = qword_27E2F4B18;
  if (!qword_27E2F4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B08, &qword_23D9DCE00);
    sub_23D9373B8();
    sub_23D937EA0(&qword_27E2F4B30, MEMORY[0x277CE0658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4B18);
  }

  return result;
}

unint64_t sub_23D9373B8()
{
  result = qword_27E2F4B20;
  if (!qword_27E2F4B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B28, &qword_23D9DCE08);
    sub_23D91F01C(&qword_27E2F4B10, &qword_27E2F4AC8, &qword_23D9DCDD8);
    sub_23D937EA0(&qword_27E2F4B30, MEMORY[0x277CE0658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4B20);
  }

  return result;
}

uint64_t sub_23D9374A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B60, &unk_23D9DCF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - v7;
  v9 = sub_23D9D9BC4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B40, &qword_23D9DCE18);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - v19;
  if (*a1)
  {
    v21 = sub_23D9D9B94();
    v31[1] = v31;
    MEMORY[0x28223BE20](v21);
    v32 = v8;
    v33 = a2;
    v31[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
    v31[0] = v11;
    sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
    v22 = v34;
    sub_23D9D94B4();
    v23 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20);
    v24 = v32;
    v25 = v31[0];
    MEMORY[0x23EEF2F00](v22, v31[0], v23);
    (*(v5 + 16))(v18, v24, v4);
    (*(v5 + 56))(v18, 0, 1, v4);
    v36 = v25;
    v37 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EEF2F10](v18, v4, OpaqueTypeConformance2);
    sub_23D937D3C(v18);
    (*(v5 + 8))(v24, v4);
    (*(v35 + 8))(v22, v25);
  }

  else
  {
    (*(v5 + 56))(v18, 1, 1, v4);
    v27 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20);
    v36 = v11;
    v37 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EEF2F10](v18, v4, v28);
    sub_23D937D3C(v18);
  }

  v29 = sub_23D937938();
  MEMORY[0x23EEF2F00](v20, v14, v29);
  return sub_23D937D3C(v20);
}

unint64_t sub_23D937938()
{
  result = qword_27E2F4B48;
  if (!qword_27E2F4B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B40, &qword_23D9DCE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
    sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4B48);
  }

  return result;
}

uint64_t sub_23D937A48(uint64_t a1)
{
  v2._countAndFlagsBits = 1162760004;
  v2._object = 0xE400000000000000;
  v7 = AXSUILocString(_:)(v2);
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  sub_23D937DB4(a1, v6);
  sub_23D91B650();
  return sub_23D9DA434();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23D937B20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}