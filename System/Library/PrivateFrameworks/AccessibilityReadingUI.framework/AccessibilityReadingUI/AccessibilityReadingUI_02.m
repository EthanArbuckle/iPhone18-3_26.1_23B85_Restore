uint64_t sub_23D86B780@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v37 = v8;
  v38 = v7;
  LODWORD(v36) = sub_23D869ED4();
  v15 = (a1 + *(v4 + 24));
  if (*v15)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v16 = sub_23D8DEB80();
    v35 = sub_23D8DEB70();

    sub_23D86BF68(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v17 = sub_23D8DE9C0();
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_23D86BFD0(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
    sub_23D86BF68(a1, &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v21 = sub_23D8DE9C0();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    sub_23D86BFD0(&v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v18);
    sub_23D8DE480();
    v23 = v42;
    LOBYTE(v18) = v36 & 1;
    v24 = v35 & 1;
    v36 = v43;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v26 = type metadata accessor for AXRCustomizationColorButton();
    *(a2 + v26[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v27 = (a2 + v26[6]);
    v28 = v38;
    *v27 = v37;
    v27[1] = v28;
    *(a2 + v26[7]) = v18;
    *(a2 + v26[8]) = v24;
    *(a2 + v26[9]) = 1;
    v29 = a2 + v26[10];
    *v29 = v23;
    *(v29 + 8) = v36;
    v30 = a2 + v26[11];
    v39 = 0;
    result = sub_23D8DE310();
    v32 = v41;
    *v30 = v40;
    *(v30 + 1) = v32;
  }

  else
  {
    v33 = v15[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D86BBCC@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AXRBackgroundColorSelectionView() + 24));
  if (*v3)
  {
    v4 = *v3;

    sub_23D8DC960();

    v5 = sub_23D8DC650();

    if (!v5)
    {
      result = sub_23D8DE1F0();
      v5 = result;
    }

    *a2 = v5;
  }

  else
  {
    v7 = v3[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D86BCA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23D8DC510();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a4 + *(type metadata accessor for AXRBackgroundColorSelectionView() + 24));
  if (*v11)
  {
    v12 = *a1;
    v13 = *v11;

    sub_23D8DC960();

    sub_23D8DC660();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = v11[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

unint64_t sub_23D86BE68()
{
  result = qword_27E2EE5F0;
  if (!qword_27E2EE5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE5E8, &unk_23D8E24D0);
    sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE5F0);
  }

  return result;
}

uint64_t sub_23D86BF20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D86BF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRBackgroundColorSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86C034@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRBackgroundColorSelectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D86BBCC(v6, a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for AXRBackgroundColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCCB0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23D8DCF90();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  v12 = *&v6[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D86C248(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRBackgroundColorSelectionView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D86BCA8(a1, v4, v5, v6);
}

unint64_t sub_23D86C2EC()
{
  result = qword_27E2EE620;
  if (!qword_27E2EE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE620);
  }

  return result;
}

uint64_t sub_23D86C340()
{
  v1 = type metadata accessor for AXRBackgroundColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCF90();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = *&v5[*(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D86C4D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRBackgroundColorSelectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D86A9CC(a1, v4);
}

uint64_t sub_23D86C558()
{
  v1 = type metadata accessor for AXRBackgroundColorSelectionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D8DCF90();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v5[*(v1 + 24)];

  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_23D86C704()
{
  v1 = *(type metadata accessor for AXRBackgroundColorSelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D86ABA8(v0 + v2);
}

uint64_t sub_23D86C79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86C80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86C87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D86C8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE668, &qword_23D8E25A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D86C950()
{
  result = qword_27E2EE670;
  if (!qword_27E2EE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE5D0, &unk_23D8E24B0);
    sub_23D835AD0(&qword_27E2EE678, &qword_27E2EE5B8, &unk_23D8E2470);
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE670);
  }

  return result;
}

uint64_t AXRTextDisplayContentView.init(presetsManager:readerBlockManager:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for AXRTextDisplayContentView() + 24);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  swift_storeEnumTagMultiPayload();
  sub_23D8DC9F0();
  sub_23D8708E4(&qword_27E2ED238, MEMORY[0x277CE73F8]);

  *a1 = sub_23D8DCEF0();
  a1[1] = v3;
  sub_23D8DC430();
  sub_23D8708E4(&unk_27E2F0420, MEMORY[0x277CE7230]);
  v4 = sub_23D8DCEF0();
  v6 = v5;

  a1[2] = v4;
  a1[3] = v6;
  return result;
}

uint64_t type metadata accessor for AXRTextDisplayContentView()
{
  result = qword_27E2EE6F0;
  if (!qword_27E2EE6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D86CBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for AXRTextDisplayContentView();
  sub_23D83C67C(v1 + *(v12 + 24), v11, &qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23D8701E0(v11, a1);
  }

  v14 = *v11;
  sub_23D8DEAB0();
  v15 = sub_23D8DD990();
  sub_23D8DCAD0();

  sub_23D8DD3B0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

void AXRTextDisplayContentView.spacingAfter(_:size:isFirstBlock:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if ((sub_23D8DC210() & 1) == 0)
    {
      sub_23D8DC1B0();
    }

    sub_23D86F5A0(a2);
  }
}

uint64_t AXRTextDisplayContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AXRTextDisplayContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *a1 = sub_23D8DD560();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE680, &unk_23D8E25F8) + 44);
  v8 = *(v1 + 24);
  v12[1] = sub_23D8DC3B0();
  swift_getKeyPath();
  sub_23D86F910(v2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23D86F978(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE688, &qword_23D8E2620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE690, &qword_23D8E2628);
  sub_23D835AD0(&qword_27E2EE698, &qword_27E2EE688, &qword_23D8E2620);
  sub_23D86F9E0();
  sub_23D86FAC4(&qword_27E2EE6B8, &qword_27E2EE690, &qword_23D8E2628, sub_23D86FA94);
  return sub_23D8DE4C0();
}

uint64_t sub_23D86D034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v5 = sub_23D8DD850();
  v69 = *(v5 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  v22 = sub_23D8DD790();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE6E8, &qword_23D8E2648);
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v67 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE6D8, &qword_23D8E2640);
  v28 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v67 - v29;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE6C8, &qword_23D8E2638);
  v30 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v77 = &v67 - v31;
  v79 = *a1;
  v80 = a2;
  sub_23D8DD560();
  LODWORD(v81) = 0;
  sub_23D8708E4(&qword_27E2ED2B8, MEMORY[0x277CE0428]);
  sub_23D8DED90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE720, &qword_23D8E26E8);
  sub_23D8700A4();
  v73 = v27;
  sub_23D8DCC70();
  v32 = a2;
  v33 = v69;
  v68 = v32;
  sub_23D86CBBC(v21);
  (*(v33 + 104))(v19, *MEMORY[0x277CE0560], v5);
  (*(v33 + 56))(v19, 0, 1, v5);
  v34 = *(v9 + 56);
  sub_23D83C67C(v21, v12, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v19, &v12[v34], &qword_27E2EE9E0, &qword_23D8E26D0);
  v35 = *(v33 + 48);
  if (v35(v12, 1, v5) != 1)
  {
    sub_23D83C67C(v12, v70, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v35(&v12[v34], 1, v5) != 1)
    {
      v37 = v67;
      (*(v33 + 32))(v67, &v12[v34], v5);
      sub_23D8708E4(&qword_27E2EEA10, MEMORY[0x277CE0570]);
      v38 = v70;
      v39 = sub_23D8DE820();
      v40 = *(v33 + 8);
      v40(v37, v5);
      sub_23D83C6E4(v19, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v21, &qword_27E2EE9E0, &qword_23D8E26D0);
      v40(v38, v5);
      sub_23D83C6E4(v12, &qword_27E2EE9E0, &qword_23D8E26D0);
      v36 = v77;
      if ((v39 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_23D83C6E4(v19, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v21, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v33 + 8))(v70, v5);
LABEL_6:
    sub_23D83C6E4(v12, &qword_27E2EDDB8, &qword_23D8E26E0);
    v36 = v77;
    goto LABEL_9;
  }

  sub_23D83C6E4(v19, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C6E4(v21, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v35(&v12[v34], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_23D83C6E4(v12, &qword_27E2EE9E0, &qword_23D8E26D0);
  v36 = v77;
LABEL_8:
  v41 = *(v68 + 8);
  sub_23D8DC960();
  sub_23D8DC7B0();

LABEL_9:
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v42 = v74;
  (*(v75 + 32))(v74, v73, v76);
  v43 = (v42 + *(v71 + 36));
  v44 = v82;
  *v43 = v81;
  v43[1] = v44;
  v43[2] = v83;
  v45 = sub_23D8DDA40();
  sub_23D8DCC20();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_23D83C744(v42, v36, &qword_27E2EE6D8, &qword_23D8E2640);
  v54 = v36 + *(v72 + 36);
  *v54 = v45;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49;
  *(v54 + 24) = v51;
  *(v54 + 32) = v53;
  *(v54 + 40) = 0;
  LOBYTE(v42) = sub_23D8DDA00();
  v55 = sub_23D8DDA20();
  sub_23D8DDA20();
  if (sub_23D8DDA20() != v42)
  {
    v55 = sub_23D8DDA20();
  }

  sub_23D8DCC20();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v78;
  sub_23D83C744(v36, v78, &qword_27E2EE6C8, &qword_23D8E2638);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE690, &qword_23D8E2628);
  v66 = v64 + *(result + 36);
  *v66 = v55;
  *(v66 + 8) = v57;
  *(v66 + 16) = v59;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = 0;
  return result;
}

uint64_t sub_23D86D894(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextDisplayContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v11[1] = sub_23D86F3B0(a1);
  swift_getKeyPath();
  sub_23D86F910(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23D86F978(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23D8703F4;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE750, &qword_23D8E2738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE738, &qword_23D8E26F0);
  sub_23D835AD0(&qword_27E2EE758, &qword_27E2EE750, &qword_23D8E2738);
  sub_23D8708E4(&qword_27E2EE760, MEMORY[0x277CC95F0]);
  sub_23D870128();
  return sub_23D8DE4C0();
}

uint64_t sub_23D86DAB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23D8DBF40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = *a2;
  return sub_23D8DC1E0();
}

uint64_t sub_23D86DB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23D8DCF90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE748, &qword_23D8E26F8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  *v17 = sub_23D8DD400();
  *(v17 + 1) = 0x4020000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE768, &qword_23D8E2740);
  sub_23D86DDC8(a2, a3, &v17[*(v18 + 44)]);
  v19 = &v17[*(v14 + 60)];
  sub_23D8DC1D0();
  v20 = sub_23D8DD9F0();
  v21 = *(a3 + 8);
  sub_23D8DC960();
  sub_23D8DC720();

  if (a1)
  {
    if ((sub_23D8DC210() & 1) == 0)
    {
      sub_23D8DC1B0();
    }

    sub_23D86F5A0(v12);
  }

  (*(v9 + 8))(v12, v8);
  sub_23D8DCC20();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_23D83C744(v17, a4, &qword_27E2EE748, &qword_23D8E26F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE738, &qword_23D8E26F0);
  v31 = a4 + *(result + 36);
  *v31 = v20;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_23D86DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AXRTextDisplayContentView();
  v132 = *(v6 - 8);
  v7 = *(v132 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = v8;
  v134 = &v114[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = type metadata accessor for AXRTextBlockView();
  v9 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v114[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE770, &qword_23D8E2748);
  v139 = *(v11 - 8);
  v12 = *(v139 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v114[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v137 = &v114[-v15];
  v130 = sub_23D8DCF90();
  v129 = *(v130 - 8);
  v16 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v114[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_23D8DBF40();
  v143 = *(v18 - 8);
  v19 = *(v143 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v142 = &v114[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v114[-v22];
  v24 = sub_23D8DC250();
  v25 = *(v24 - 8);
  v149 = v24;
  v150 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v147 = &v114[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v146 = &v114[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v126 = &v114[-v32];
  MEMORY[0x28223BE20](v31);
  v125 = &v114[-v33];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE778, &qword_23D8E2750);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v127 = &v114[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE780, &qword_23D8E2758);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v131 = &v114[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v43 = &v114[-v42];
  v44 = sub_23D8DC1B0();
  v144 = v43;
  v145 = a1;
  v148 = a2;
  v140 = v11;
  v141 = a3;
  if (v44)
  {
    v121 = v35;
    v122 = v34;
    v123 = v23;
    v124 = v18;
    sub_23D8DD480();
    v45 = sub_23D8DDC90();
    v47 = v46;
    v49 = v48;
    v50 = *(a2 + 8);
    v51 = sub_23D8DC960();
    v52 = sub_23D8DC210();
    v53 = sub_23D8DC1A0();
    blockFont(forModel:isHeader:headingLevel:)(v51, v52 & 1, v53, v54 & 1);

    v55 = sub_23D8DDC40();
    v57 = v56;
    v59 = v58;

    sub_23D83CB6C(v45, v47, v49 & 1);

    v119 = v50;
    v60 = v149;
    sub_23D8DC960();
    sub_23D8DC800();

    v117 = sub_23D8DDC00();
    v116 = v61;
    v115 = v62;
    v118 = v63;

    sub_23D83CB6C(v55, v57, v59 & 1);

    v64 = *(v148 + 24);
    v65 = v125;
    sub_23D8DC2A0();
    v66 = *MEMORY[0x277CE7200];
    v67 = v126;
    (*(v150 + 104))(v126, *MEMORY[0x277CE7200], v60);
    sub_23D8708E4(&qword_27E2EDE60, MEMORY[0x277CE7208]);
    sub_23D8DE980();
    sub_23D8DE980();
    v120 = v66;
    if (v151 == v156 && v152 == v157)
    {
      v68 = v149;
      v69 = *(v150 + 8);
      v69(v67, v149);
      v69(v65, v68);

      v18 = v124;
      v23 = v123;
    }

    else
    {
      v71 = sub_23D8DED20();
      v72 = v149;
      v73 = *(v150 + 8);
      v73(v67, v149);
      v73(v65, v72);

      v18 = v124;
      v23 = v123;
      if ((v71 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_23D8DC2C0();
    sub_23D8DC1D0();

    v74 = v142;
    sub_23D8DC1D0();
    sub_23D8708E4(&qword_27E2EE7B0, MEMORY[0x277CC95F0]);
    v75 = sub_23D8DE820();
    v76 = *(v143 + 8);
    v76(v74, v18);
    v76(v23, v18);
    if ((v75 & 1) == 0)
    {
      v77 = 0.2;
      goto LABEL_10;
    }

LABEL_8:
    v77 = 1.0;
LABEL_10:
    v78 = v117;
    v79 = v116;
    v151 = v117;
    v152 = v116;
    v80 = v115 & 1;
    v153 = v115 & 1;
    v154 = v118;
    v155 = v77;
    sub_23D8DC960();
    v81 = v128;
    sub_23D8DC720();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE7A0, &unk_23D8E27A0);
    sub_23D87085C();
    v82 = v127;
    sub_23D8DDDC0();
    (*(v129 + 8))(v81, v130);
    sub_23D83CB6C(v78, v79, v80);

    v83 = v121;
    v84 = v144;
    v85 = v122;
    (*(v121 + 32))(v144, v82, v122);
    (*(v83 + 56))(v84, 0, 1, v85);
    a2 = v148;
    v70 = v120;
    goto LABEL_11;
  }

  (*(v35 + 56))(v43, 1, 1, v34);
  v70 = *MEMORY[0x277CE7200];
LABEL_11:
  v86 = v139;
  v87 = *(a2 + 24);
  sub_23D8DC2C0();
  sub_23D8DC1D0();

  v88 = v23;
  v89 = v142;
  sub_23D8DC1D0();
  LODWORD(v139) = sub_23D8DBF30();
  v90 = *(v143 + 8);
  v90(v89, v18);
  v90(v88, v18);
  v91 = *(a2 + 8);

  sub_23D8DC2A0();
  (*(v150 + 104))(v147, v70, v149);
  sub_23D8708E4(&qword_27E2EDE60, MEMORY[0x277CE7208]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v151 == v156 && v152 == v157)
  {
    v92 = 1;
  }

  else
  {
    v92 = sub_23D8DED20();
  }

  v93 = v140;
  v94 = v149;
  v95 = *(v150 + 8);
  v95(v147, v149);
  v95(v146, v94);

  KeyPath = swift_getKeyPath();
  v97 = v135;
  *&v135[*(v136 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE788, &qword_23D8E2790);
  swift_storeEnumTagMultiPayload();
  v98 = v145;
  *v97 = v145;
  *(v97 + 8) = v139 & 1;
  sub_23D8DC9F0();
  sub_23D8708E4(&qword_27E2ED238, MEMORY[0x277CE73F8]);

  *(v97 + 16) = sub_23D8DCEF0();
  *(v97 + 24) = v99;
  *(v97 + 32) = 0x3FC999999999999ALL;
  *(v97 + 40) = v92 & 1;
  v100 = v134;
  sub_23D86F910(v148, v134);
  v101 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v102 = (v133 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  sub_23D86F978(v100, v103 + v101);
  *(v103 + v102) = v98;
  sub_23D8708E4(&qword_27E2EE790, type metadata accessor for AXRTextBlockView);

  v104 = v137;
  sub_23D8DDD60();

  sub_23D870728(v97);
  v105 = v144;
  v106 = v131;
  sub_23D870784(v144, v131);
  v107 = *(v86 + 16);
  v108 = v138;
  v107(v138, v104, v93);
  v109 = v141;
  sub_23D870784(v106, v141);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE798, &qword_23D8E2798);
  v107((v109 + *(v110 + 48)), v108, v93);
  v111 = v109 + *(v110 + 64);
  *v111 = 0;
  *(v111 + 8) = 1;
  v112 = *(v86 + 8);
  v112(v104, v93);
  sub_23D8707F4(v105);
  v112(v108, v93);
  return sub_23D8707F4(v106);
}

uint64_t sub_23D86EC20(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE58, &qword_23D8E1708);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v31 - v5;
  v39 = sub_23D8DBF60();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DC250();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v31 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v40 = *(a1 + 24);
  sub_23D8DC2A0();
  v20 = *MEMORY[0x277CE7200];
  v33 = v9[13];
  v33(v17, v20, v8);
  sub_23D8708E4(&qword_27E2EDE60, MEMORY[0x277CE7208]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v43 == v41 && v44 == v42)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_23D8DED20();
  }

  v22 = v9[1];
  v22(v17, v8);
  v22(v19, v8);

  if ((v21 & 1) == 0)
  {
    v23 = v35;
    sub_23D8DC2A0();
    v24 = v34;
    v33(v34, *MEMORY[0x277CE71E8], v8);
    sub_23D8DE980();
    sub_23D8DE980();
    if (v43 == v41 && v44 == v42)
    {
      v22(v24, v8);
      v22(v23, v8);
    }

    else
    {
      v25 = sub_23D8DED20();
      v22(v24, v8);
      v22(v23, v8);

      if ((v25 & 1) == 0)
      {
        return result;
      }
    }
  }

  v27 = v38;
  sub_23D8DC230();
  v28 = v37;
  v29 = v39;
  if ((*(v37 + 48))(v27, 1, v39) == 1)
  {
    return sub_23D83C6E4(v27, &qword_27E2EDE58, &qword_23D8E1708);
  }

  v30 = v32;
  (*(v28 + 32))(v32, v27, v29);
  sub_23D8DC300();
  return (*(v28 + 8))(v30, v29);
}

uint64_t sub_23D86F0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_23D8DD560();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE680, &unk_23D8E25F8) + 44);
  v8 = *(v2 + 24);
  v12[1] = sub_23D8DC3B0();
  swift_getKeyPath();
  sub_23D86F910(v3, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23D86F978(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE688, &qword_23D8E2620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE690, &qword_23D8E2628);
  sub_23D835AD0(&qword_27E2EE698, &qword_27E2EE688, &qword_23D8E2620);
  sub_23D86F9E0();
  sub_23D86FAC4(&qword_27E2EE6B8, &qword_27E2EE690, &qword_23D8E2628, sub_23D86FA94);
  return sub_23D8DE4C0();
}

uint64_t sub_23D86F2E8(uint64_t a1)
{
  v2 = sub_23D8DCE20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD360();
}

unint64_t sub_23D86F3B0(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x23EEF0DB0](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_23D8DECE0();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE7B8, &qword_23D8E27B0);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D86F5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE7C0, &qword_23D8E27B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_23D8DCF90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = *(v7 + 104);
  v11(v5, *MEMORY[0x277CDF9D8], v6);
  sub_23D8708E4(&qword_27E2EDD70, MEMORY[0x277CDFA28]);
  result = sub_23D8DE820();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_23D8708E4(&qword_27E2ED3F8, MEMORY[0x277CDFA28]);
  v13 = sub_23D8DE800();
  sub_23D83C6E4(v5, &unk_27E2EE7C0, &qword_23D8E27B8);
  if (v13)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11(v5, *MEMORY[0x277CDF988], v6);
  result = sub_23D8DE820();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = sub_23D8DE800();
  sub_23D83C6E4(v5, &unk_27E2EE7C0, &qword_23D8E27B8);
  if (v14)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11(v5, *MEMORY[0x277CDF9A8], v6);
  result = sub_23D8DE820();
  if (result)
  {
    sub_23D8DE800();
    sub_23D83C6E4(v5, &unk_27E2EE7C0, &qword_23D8E27B8);
    return (*(v7 + 8))(v10, v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23D86F910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextDisplayContentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextDisplayContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D86F9E0()
{
  result = qword_27E2EE6A0;
  if (!qword_27E2EE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE6A8, &qword_23D8E2630);
    sub_23D8708E4(&qword_27E2EE6B0, MEMORY[0x277CE71D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE6A0);
  }

  return result;
}

uint64_t sub_23D86FAC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23D86FB48()
{
  result = qword_27E2EE6D0;
  if (!qword_27E2EE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE6D8, &qword_23D8E2640);
    sub_23D835AD0(&qword_27E2EE6E0, &qword_27E2EE6E8, &qword_23D8E2648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE6D0);
  }

  return result;
}

uint64_t sub_23D86FC30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D86FD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D86FDB0()
{
  sub_23D86FE4C();
  if (v0 <= 0x3F)
  {
    sub_23D86FEE0();
    if (v1 <= 0x3F)
    {
      sub_23D86FF74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D86FE4C()
{
  if (!qword_27E2EE700)
  {
    sub_23D8DC9F0();
    sub_23D8708E4(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    v0 = sub_23D8DCF20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EE700);
    }
  }
}

void sub_23D86FEE0()
{
  if (!qword_27E2EE708)
  {
    sub_23D8DC430();
    sub_23D8708E4(&unk_27E2F0420, MEMORY[0x277CE7230]);
    v0 = sub_23D8DCF20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EE708);
    }
  }
}

void sub_23D86FF74()
{
  if (!qword_27E2ED608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE9E0, &qword_23D8E26D0);
    v0 = sub_23D8DCD20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED608);
    }
  }
}

uint64_t sub_23D87001C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRTextDisplayContentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D86D034(a1, v6, a2);
}

unint64_t sub_23D8700A4()
{
  result = qword_27E2EE728;
  if (!qword_27E2EE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE720, &qword_23D8E26E8);
    sub_23D870128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE728);
  }

  return result;
}

unint64_t sub_23D870128()
{
  result = qword_27E2EE730;
  if (!qword_27E2EE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE738, &qword_23D8E26F0);
    sub_23D835AD0(&qword_27E2EE740, &qword_27E2EE748, &qword_23D8E26F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE730);
  }

  return result;
}

uint64_t sub_23D8701E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for AXRTextDisplayContentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DD850();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8703F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AXRTextDisplayContentView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23D86DB7C(a1, a2, v8, a3);
}

uint64_t sub_23D87047C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D8704B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_23D87050C()
{
  v1 = (type metadata accessor for AXRTextDisplayContentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23D8DD850();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_23D87069C()
{
  v1 = *(type metadata accessor for AXRTextDisplayContentView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D86EC20(v0 + v2, v3);
}

uint64_t sub_23D870728(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextBlockView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D870784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE780, &qword_23D8E2758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8707F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE780, &qword_23D8E2758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D87085C()
{
  result = qword_27E2EE7A8;
  if (!qword_27E2EE7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE7A0, &unk_23D8E27A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE7A8);
  }

  return result;
}

uint64_t sub_23D8708E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D870938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23D83C67C(a3, v27 - v11, &qword_27E2ED120, &qword_23D8E03E0);
  v13 = sub_23D8DEA00();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23D83C6E4(v12, &qword_27E2ED120, &qword_23D8E03E0);
  }

  else
  {
    sub_23D8DE9F0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23D8DE9B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23D8DE890() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23D83C6E4(a3, &qword_27E2ED120, &qword_23D8E03E0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D83C6E4(a3, &qword_27E2ED120, &qword_23D8E03E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_23D870C38(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  v158 = *(v4 - 8);
  v156 = *(v158 + 64);
  MEMORY[0x28223BE20](v4);
  v157 = &v140 - v5;
  v155 = sub_23D8DD850();
  v160 = *(v155 - 8);
  v6 = *(v160 + 64);
  MEMORY[0x28223BE20](v155);
  v140 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v8 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v161 = &v140 - v9;
  v167 = sub_23D8DE750();
  v170 = *(v167 - 8);
  v10 = *(v170 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_23D8DE780();
  v168 = *(v165 - 8);
  v12 = *(v168 + 64);
  MEMORY[0x28223BE20](v165);
  v163 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEA28, &qword_23D8E2A98);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v145 = &v140 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEA30, &qword_23D8E2AA0);
  v147 = *(v149 - 8);
  v17 = *(v147 + 64);
  MEMORY[0x28223BE20](v149);
  v146 = &v140 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v141 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v159 = &v140 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v153 = &v140 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v140 - v27;
  v29 = sub_23D8DD3C0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v150 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v140 - v34;
  v36 = *(v1 + 8);
  v37 = objc_allocWithZone(type metadata accessor for AXRUITextView());
  v38 = sub_23D874D14(v36);
  v169 = v4;
  v39 = a1;
  sub_23D8DD930();
  sub_23D8DD280();
  v40 = *(v30 + 8);
  v40(v35, v29);
  v41 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  swift_beginAccess();
  sub_23D877C3C(v28, v38 + v41);
  swift_endAccess();
  v42 = *(v2 + 80);
  swift_unknownObjectWeakAssign();
  v180 = *(v2 + 96);
  v43 = v2;
  v44 = *(v2 + 88);
  v179 = v44;
  v152 = v29;
  v151 = v30 + 8;
  v148 = v40;
  if (v180 == 1)
  {
    v46 = v44;
  }

  else
  {

    sub_23D8DEAB0();
    v45 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();
    sub_23D83C6E4(&v179, &qword_27E2EEA38, &qword_23D8E2AA8);
    v40(v35, v29);
    v46 = aBlock;
  }

  swift_unknownObjectWeakAssign();

  v164 = v39;
  sub_23D8DD920();
  v47 = v178;
  v142 = v2;
  v48 = *(v2 + 32);
  v144 = *(v2 + 24);
  v49 = *(v2 + 40);
  v50 = *(v2 + 48);
  v51 = *(v2 + 56);
  v143 = *(v43 + 64);
  v52 = *(v43 + 72);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v53 = v38;
  v162 = v53;
  [v53 setDelegate_];
  v54 = &v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback];
  v55 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback];
  v56 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8];
  *v54 = v48;
  v54[1] = v49;
  sub_23D8556B0(v55);
  v57 = &v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback];
  v59 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback];
  v58 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback + 8];
  sub_23D83BCD8(v48);
  *v57 = v50;
  v57[1] = v51;
  sub_23D8556B0(v59);
  v60 = &v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck];
  v61 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck];
  v62 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck + 8];
  sub_23D83BCD8(v50);
  v63 = v143;
  *v60 = v143;
  *(v60 + 1) = v52;
  sub_23D8556B0(v61);
  v64 = objc_allocWithZone(MEMORY[0x277D75B80]);
  sub_23D83BCD8(v63);
  v65 = [v64 initWithTarget:v47 action:sel_handleTap_];
  [v65 setDelegate_];
  [v53 addGestureRecognizer_];
  aBlock = v144;
  v66 = sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
  v67 = sub_23D8DEAF0();
  v177 = v67;
  v68 = sub_23D8DEAE0();
  v69 = v145;
  (*(*(v68 - 8) + 56))(v145, 1, 1, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7A0, &unk_23D8E2AB0);
  sub_23D835AD0(&qword_27E2EEA50, &qword_27E2ED7A0, &unk_23D8E2AB0);
  sub_23D8787F4();
  v70 = v146;
  sub_23D8DCBC0();
  sub_23D83C6E4(v69, &qword_27E2EEA28, &qword_23D8E2A98);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23D835AD0(&unk_27E2EEA60, &qword_27E2EEA30, &qword_23D8E2AA0);
  v71 = v149;
  v72 = sub_23D8DCBF0();

  (*(v147 + 8))(v70, v71);
  v73 = *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription];
  *&v47[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription] = v72;

  v149 = v66;
  v74 = sub_23D8DEAF0();
  v75 = swift_allocObject();
  *(v75 + 16) = v47;
  v175 = sub_23D87889C;
  v176 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v172 = 1107296256;
  v173 = sub_23D876358;
  v174 = &block_descriptor_1;
  v76 = _Block_copy(&aBlock);
  v77 = v47;
  v78 = v162;
  v79 = v77;

  v80 = v163;
  sub_23D8DE770();
  aBlock = MEMORY[0x277D84F90];
  v81 = sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
  v83 = sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
  v84 = v166;
  v146 = v82;
  v145 = v83;
  v85 = v167;
  v147 = v81;
  sub_23D8DEBF0();
  MEMORY[0x23EEF0C50](0, v80, v84, v76);
  _Block_release(v76);

  v86 = *(v170 + 8);
  v170 += 8;
  v144 = v86;
  v86(v84, v85);
  v87 = *(v168 + 8);
  v168 += 8;
  v143 = v87;
  v87(v80, v165);

  v88 = v142;
  sub_23D8759F8(*v142);
  v89 = [objc_opt_self() clearColor];
  v90 = v88[2];
  v91 = sub_23D8DE120();
  if (v91)
  {
    v92 = v91;
    v93 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

    v89 = v93;
  }

  v94 = v153;
  v95 = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE9F0, &unk_23D8E3CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0D60;
  v97 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v98 = sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
  *(inited + 40) = v89;
  v99 = *MEMORY[0x277D741F0];
  *(inited + 64) = v98;
  *(inited + 72) = v99;
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 1;
  v100 = v97;
  v153 = v89;
  v101 = v99;
  sub_23D878A84(inited, &qword_27E2EEA20, &qword_23D8E2A90, &unk_27E2EEA00, &qword_23D8E2A80);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA00, &qword_23D8E2A80);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key);
  v102 = sub_23D8DE7C0();

  [v78 setLinkTextAttributes_];

  v103 = objc_opt_self();
  v104 = [v103 currentDevice];
  v142 = [v104 userInterfaceIdiom];

  v105 = [v103 currentDevice];
  v106 = [v105 orientation];

  IsLandscape = UIDeviceOrientationIsLandscape(v106);
  v108 = v150;
  sub_23D8DD930();
  sub_23D8DD280();
  v148(v108, v95);
  v109 = v160;
  v110 = v159;
  v111 = v155;
  (*(v160 + 104))(v159, *MEMORY[0x277CE0558], v155);
  (*(v109 + 56))(v110, 0, 1, v111);
  v112 = *(v154 + 48);
  v113 = v161;
  sub_23D83C67C(v94, v161, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v110, v113 + v112, &qword_27E2EE9E0, &qword_23D8E26D0);
  v114 = *(v109 + 48);
  if (v114(v113, 1, v111) != 1)
  {
    v116 = v141;
    sub_23D83C67C(v113, v141, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v114(v113 + v112, 1, v111) != 1)
    {
      v117 = v94;
      v118 = v116;
      v119 = v160;
      v120 = v113 + v112;
      v121 = v140;
      (*(v160 + 32))(v140, v120, v111);
      sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570]);
      v122 = sub_23D8DE820();
      v123 = *(v119 + 8);
      v123(v121, v111);
      sub_23D83C6E4(v159, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v117, &qword_27E2EE9E0, &qword_23D8E26D0);
      v123(v118, v111);
      sub_23D83C6E4(v113, &qword_27E2EE9E0, &qword_23D8E26D0);
      v115 = v162;
      if ((v122 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_23D83C6E4(v159, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v94, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v160 + 8))(v116, v111);
LABEL_11:
    sub_23D83C6E4(v113, &qword_27E2EDDB8, &qword_23D8E26E0);
    v115 = v162;
    goto LABEL_16;
  }

  sub_23D83C6E4(v110, &qword_27E2EE9E0, &qword_23D8E26D0);
  v113 = v161;
  sub_23D83C6E4(v94, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v114(v113 + v112, 1, v111) != 1)
  {
    goto LABEL_11;
  }

  sub_23D83C6E4(v113, &qword_27E2EE9E0, &qword_23D8E26D0);
  v115 = v162;
LABEL_13:
  v124 = !IsLandscape;
  if (v142)
  {
    v124 = 1;
  }

  if (v124)
  {
    v126 = v164;
    v139 = sub_23D878248();
    [v115 setTextContainerInset_];

    goto LABEL_17;
  }

LABEL_16:

  [v115 frame];
  Width = CGRectGetWidth(v181);
  sub_23D877074(Width);
  v126 = v164;
LABEL_17:
  v127 = sub_23D8DEAF0();
  v128 = v158;
  v129 = v157;
  v130 = v169;
  (*(v158 + 16))(v157, v126, v169);
  v131 = (*(v128 + 80) + 24) & ~*(v128 + 80);
  v132 = swift_allocObject();
  *(v132 + 16) = v115;
  (*(v128 + 32))(v132 + v131, v129, v130);
  v175 = sub_23D87899C;
  v176 = v132;
  aBlock = MEMORY[0x277D85DD0];
  v172 = 1107296256;
  v173 = sub_23D876358;
  v174 = &block_descriptor_95;
  v133 = _Block_copy(&aBlock);
  v134 = v115;

  v135 = v163;
  sub_23D8DE770();
  aBlock = MEMORY[0x277D84F90];
  v136 = v166;
  v137 = v167;
  sub_23D8DEBF0();
  MEMORY[0x23EEF0C50](0, v135, v136, v133);
  _Block_release(v133);

  v144(v136, v137);
  v143(v135, v165);
  return v134;
}

void sub_23D872084(void *a1)
{
  if ([a1 delegate])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
    sub_23D8DD920();
    [a1 setDelegate_];
  }
}

void sub_23D872120(char *a1, uint64_t a2)
{
  v3 = v2;
  v90 = sub_23D8DD850();
  v92 = *(v90 - 1);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  v77 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v8 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v78 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v77 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v77 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  v21 = sub_23D8DD3C0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v82 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v77 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  sub_23D8DD930();
  sub_23D8DD280();
  v28 = *(v22 + 8);
  v84 = v21;
  v83 = v22 + 8;
  v80 = v28;
  v28(v27, v21);
  v29 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  swift_beginAccess();
  sub_23D877C3C(v20, &a1[v29]);
  swift_endAccess();
  sub_23D8759F8(*v2);
  v30 = *(v2 + 8);
  if (*&a1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth] != v30)
  {
    *&a1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth] = v30;
  }

  v31 = [objc_opt_self() clearColor];
  v32 = *(v3 + 16);
  v33 = sub_23D8DE120();
  v91 = a2;
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

    v31 = v35;
  }

  v89 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE9F0, &unk_23D8E3CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0D60;
  v37 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v38 = sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
  *(inited + 40) = v31;
  v39 = *MEMORY[0x277D741F0];
  *(inited + 64) = v38;
  *(inited + 72) = v39;
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 1;
  v40 = v37;
  v86 = v31;
  v41 = v39;
  v42 = sub_23D878A84(inited, &qword_27E2EEA20, &qword_23D8E2A90, &unk_27E2EEA00, &qword_23D8E2A80);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA00, &qword_23D8E2A80);
  swift_arrayDestroy();
  v43 = a1;
  v44 = [a1 linkTextAttributes];
  if (v44)
  {
    v45 = v44;
    type metadata accessor for Key(0);
    sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key);
    v46 = sub_23D8DE7D0();

    sub_23D872BF8(v46);

    v47 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v48 = sub_23D8DE7C0();

    v49 = [v47 initWithDictionary_];

    sub_23D872BF8(v42);
    v50 = sub_23D8DE7C0();

    LOBYTE(v48) = [v49 isEqualToDictionary_];

    v79 = v43;
    if (v48)
    {
    }

    else
    {
      v51 = sub_23D8DE7C0();

      [v43 setLinkTextAttributes_];
    }

    v52 = v90;
    v53 = v89;
    v54 = objc_opt_self();
    v55 = [v54 currentDevice];
    v90 = [v55 userInterfaceIdiom];

    v56 = [v54 currentDevice];
    v57 = [v56 orientation];

    LODWORD(v89) = UIDeviceOrientationIsLandscape(v57);
    v58 = v82;
    sub_23D8DD930();
    v59 = v88;
    sub_23D8DD280();
    v80(v58, v84);
    v60 = v92;
    v61 = v87;
    (*(v92 + 104))(v87, *MEMORY[0x277CE0558], v52);
    (*(v60 + 56))(v61, 0, 1, v52);
    v62 = *(v85 + 48);
    sub_23D83C67C(v59, v53, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C67C(v61, v53 + v62, &qword_27E2EE9E0, &qword_23D8E26D0);
    v63 = *(v60 + 48);
    if (v63(v53, 1, v52) == 1)
    {
      sub_23D83C6E4(v61, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v59, &qword_27E2EE9E0, &qword_23D8E26D0);
      if (v63(v53 + v62, 1, v52) == 1)
      {
        sub_23D83C6E4(v53, &qword_27E2EE9E0, &qword_23D8E26D0);
        v64 = v79;
LABEL_16:
        v70 = v89 ^ 1;
        if (v90)
        {
          v70 = 1;
        }

        if (v70)
        {
          v72 = sub_23D878248();
          [v64 textContainerInset];
          if (vabdd_f64(v76, v72) > 0.5 || vabdd_f64(v75, v72) > 0.5 || fabs(v73) > 0.5 || fabs(v74 + -150.0) > 0.5)
          {
            [v64 setTextContainerInset_];
          }

          goto LABEL_20;
        }

LABEL_19:
        [v64 frame];
        Width = CGRectGetWidth(v93);
        sub_23D877074(Width);
LABEL_20:

        return;
      }
    }

    else
    {
      v65 = v78;
      sub_23D83C67C(v53, v78, &qword_27E2EE9E0, &qword_23D8E26D0);
      if (v63(v53 + v62, 1, v52) != 1)
      {
        v66 = v92;
        v67 = v53 + v62;
        v68 = v77;
        (*(v92 + 32))(v77, v67, v52);
        sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570]);
        LODWORD(v85) = sub_23D8DE820();
        v69 = *(v66 + 8);
        v69(v68, v52);
        sub_23D83C6E4(v61, &qword_27E2EE9E0, &qword_23D8E26D0);
        sub_23D83C6E4(v59, &qword_27E2EE9E0, &qword_23D8E26D0);
        v69(v65, v52);
        sub_23D83C6E4(v53, &qword_27E2EE9E0, &qword_23D8E26D0);
        v64 = v79;
        if ((v85 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      sub_23D83C6E4(v61, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v59, &qword_27E2EE9E0, &qword_23D8E26D0);
      (*(v92 + 8))(v65, v52);
    }

    sub_23D83C6E4(v53, &qword_27E2EDDB8, &qword_23D8E26E0);
    v64 = v79;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_23D872BF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEA18, &qword_23D8E2A88);
    v2 = sub_23D8DECF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_23D835A24(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_23D878788((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23D878788(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23D878788(v31, v32);
    v16 = *(v2 + 40);
    result = sub_23D8DEC00();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_23D878788(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23D872EC0(uint64_t a1)
{
  v3 = sub_23D8DCAF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v34 = swift_unknownObjectWeakLoadStrong();

        if (v34)
        {
          v17 = CACurrentMediaTime();
          if (a1 == 2)
          {
            if (v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] != 1)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (a1 != 1)
            {
LABEL_15:
              v21 = 0;
LABEL_16:
              v22 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastFetchTriggerTime;
              if (v17 - *&v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastFetchTriggerTime] >= 2.0)
              {
                v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] = a1 == 2;
                v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] = v21;
                v24 = v17;
                v25 = sub_23D8DEA00();
                (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
                sub_23D8DE9D0();
                v26 = v14;
                v27 = v34;
                v28 = v1;
                v29 = v1;
                v30 = sub_23D8DE9C0();
                v31 = swift_allocObject();
                v32 = MEMORY[0x277D85700];
                v31[2] = v30;
                v31[3] = v32;
                v31[4] = v26;
                v31[5] = a1;
                v31[6] = v27;
                v31[7] = v28;
                sub_23D870938(0, 0, v11, &unk_23D8E2AE0, v31);

                *&v29[v22] = v24;
                return;
              }

              goto LABEL_17;
            }

            if (v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] != 1)
            {
              v21 = 1;
              goto LABEL_16;
            }
          }

LABEL_17:

          v23 = v34;

          return;
        }
      }
    }
  }

  sub_23D8DC180();
  v18 = sub_23D8DCAE0();
  v19 = sub_23D8DEA90();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23D82C000, v18, v19, "BlockManager or AXRuntimeClient not available for content fetching", v20, 2u);
    MEMORY[0x23EEF15F0](v20, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_23D873270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = sub_23D8DE9D0();
  v7[4] = sub_23D8DE9C0();
  v10 = *(MEMORY[0x277CE7220] + 4);
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_23D87333C;

  return MEMORY[0x2821395A0](a5, a6);
}

uint64_t sub_23D87333C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D873478, v5, v4);
}

uint64_t sub_23D873478()
{
  v1 = v0[4];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent) = 0;
  *(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent) = 0;
  v3 = v0[1];

  return v3();
}

void sub_23D8734F4(int64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_23D873D80(v1);
  }
}

void sub_23D873550(void *a1)
{
  v2 = v1;
  [a1 contentOffset];
  v3 = (v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset);
  *v3 = v4;
  v3[1] = v5;
  v6 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling;
  if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling) == 1)
  {
    *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll) = 1;
    *(v1 + v6) = 0;
  }

  v7 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);

    v7(v9);
    sub_23D8556B0(v7);
  }

  v10 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer;
  [*(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer) invalidate];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_23D8794AC;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_23D87DA4C;
  v16[3] = &block_descriptor_140;
  v13 = _Block_copy(v16);

  v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v13 block:3.0];
  _Block_release(v13);
  v15 = *(v2 + v10);
  *(v2 + v10) = v14;
}

void sub_23D873754(void *a1)
{
  v3 = sub_23D8DCAF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isTextViewInitialized) == 1)
  {
    v11 = &off_278BEC000;
    if (([a1 isDragging] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
    {
      [a1 contentOffset];
      v12 = (v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset);
      if (vabdd_f64(v13, *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset + 8)) > 10.0)
      {
        [a1 contentOffset];
        *v12 = v14;
        v12[1] = v15;
        v16 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer;
        [*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer) invalidate];
        v17 = objc_opt_self();
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_23D8797F8;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23D87DA4C;
        aBlock[3] = &block_descriptor_136;
        v19 = _Block_copy(aBlock);

        v20 = [v17 scheduledTimerWithTimeInterval:0 repeats:v19 block:3.0];
        v21 = v19;
        v11 = &off_278BEC000;
        _Block_release(v21);
        v22 = *(v1 + v16);
        *(v1 + v16) = v20;

        v23 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
        if (v23)
        {
          v24 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);

          v23(v25);
          v11 = &off_278BEC000;
          sub_23D8556B0(v23);
        }
      }
    }

    if ((*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling) & 1) != 0 || ([a1 v11[406]] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
    {
      [a1 frame];
      v27 = v26;
      [a1 contentSize];
      v29 = v28;
      [a1 contentOffset];
      if (v29 - v27 <= 0.0)
      {
        sub_23D8DC180();
        v45 = sub_23D8DCAE0();
        v46 = sub_23D8DEA90();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_23D82C000, v45, v46, "Returning early as maximumOffset <= 0", v47, 2u);
          MEMORY[0x23EEF15F0](v47, -1, -1);
        }

        (*(v4 + 8))(v10, v3);
      }

      else
      {
        if (v30 < 0.0)
        {
          v30 = 0.0;
        }

        v31 = v30 / (v29 - v27);
        v32 = (v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition);
        v33 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition);
        v34 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition + 8);
        [a1 contentOffset];
        v36 = 2;
        if (v35 > 0.0)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v35 >= v34)
        {
          v36 = 1;
        }

        if (v34 == 0.0 && v33 == 0.0)
        {
          v39 = v37;
        }

        else
        {
          v39 = v36;
        }

        [a1 contentOffset];
        *v32 = v40;
        v32[1] = v41;
        if (v31 <= 0.3 && v39 == 2)
        {
          v48 = v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold;
          if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold) != 2 || vabds_f32(*(v48 + 8), v31) > 0.05)
          {
            *v48 = 2;
            *(v48 + 8) = v31;
            sub_23D872EC0(2);
          }
        }

        else if (v31 >= 0.7 && v39 == 1)
        {
          v44 = v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold;
          if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold) != 1 || vabds_f32(*(v44 + 8), v31) > 0.05)
          {
            *v44 = 1;
            *(v44 + 8) = v31;
            sub_23D872EC0(1);
          }
        }
      }
    }

    else
    {
      sub_23D8DC180();
      v49 = sub_23D8DCAE0();
      v50 = sub_23D8DEA90();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_23D82C000, v49, v50, "User didn't scroll or it wasn't a programmatic scroll - ignore it.", v51, 2u);
        MEMORY[0x23EEF15F0](v51, -1, -1);
      }

      (*(v4 + 8))(v8, v3);
    }
  }
}

void sub_23D873CAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll] = 0;
    v1 = *&Strong[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer];
    *&Strong[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer] = 0;
  }
}

void sub_23D873D80(int64_t a1)
{
  v3 = sub_23D8DE750();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DE780();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D8DE7A0();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v46 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll] != 1 && !*&v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer])
  {
    v20 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling;
    v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling] = 1;
    if (a1 == -1)
    {
      v50 = Strong;
      [Strong contentSize];
      v36 = v35;
      [v50 bounds];
      v37 = v36 - CGRectGetHeight(v55) + 120.0;
      v38 = 0.0;
      if (v37 >= 0.0)
      {
        v38 = v37;
      }

      [v50 setContentOffset:1 animated:{0.0, v38}];
      Strong = v50;
      goto LABEL_4;
    }

    v48 = v20;
    if ((a1 & 0x8000000000000000) == 0)
    {
      v46[0] = v4;
      v50 = Strong;
      v49 = Strong;
      v21 = [v49 text];
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = v21;
      v23 = sub_23D8DE870();
      v46[1] = v24;
      v47 = v23;

      v47 = sub_23D8DE8F0();

      if (v47 > a1)
      {
        v25 = [v49 text];

        if (!v25)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v48 = sub_23D8DE870();
        v50 = v26;

        v27 = sub_23D8DE8F0();

        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        if (a1 / v28 <= 0.85)
        {
          v31 = v1;
          v40 = v49;

          [v40 scrollRangeToVisible_];
LABEL_29:
          sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
          v48 = sub_23D8DEAF0();
          sub_23D8DE790();
          sub_23D8DE7B0();
          v41 = *(v52 + 8);
          v52 += 8;
          v50 = v41;
          (v41)(v16, v12);
          v42 = swift_allocObject();
          *(v42 + 16) = v31;
          aBlock[4] = sub_23D879498;
          aBlock[5] = v42;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23D876358;
          aBlock[3] = &block_descriptor_132;
          v47 = _Block_copy(aBlock);
          v43 = v31;

          sub_23D8DE770();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
          sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
          sub_23D8DEBF0();
          v45 = v47;
          v44 = v48;
          MEMORY[0x23EEF0C20](v18, v11, v7, v47);
          _Block_release(v45);

          (*(v46[0] + 8))(v7, v3);
          (*(v51 + 8))(v11, v8);
          (v50)(v18, v12);
          return;
        }

        v29 = [v49 text];

        if (!v29)
        {
LABEL_34:
          __break(1u);
          return;
        }

        v50 = sub_23D8DE870();
        v48 = v30;

        v50 = sub_23D8DE8F0();

        if (!__OFSUB__(v50, a1))
        {
          v31 = v1;
          if (&v50[-a1] >= 100)
          {
            v32 = 100;
          }

          else
          {
            v32 = &v50[-a1];
          }

          v33 = v49;
          [v49 scrollRangeToVisible_];
          sub_23D878DDC(v33);
          if (v34 > 0.0)
          {
            [v33 contentOffset];
            [v33 setContentOffset:1 animated:?];
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v39 = v49;

      Strong = v50;
    }

    v1[v48] = 0;
    return;
  }

LABEL_4:
}

void sub_23D874470(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  [v19 selectedRange];
  if (v4 >= 1)
  {
    [v19 setSelectedRange_];
LABEL_4:

    goto LABEL_5;
  }

  v6 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v1;
  v8 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck + 8);

  if (v6(v9))
  {
    if ([a1 state] == 3)
    {
      [a1 locationInView_];
      v10 = [v19 closestPositionToPoint_];
      if (v10)
      {
        v17 = v10;
        v18 = [objc_msgSend(v19 tokenizer)];
        swift_unknownObjectRelease();
        if (v18)
        {
          v11 = [v19 beginningOfDocument];

          v12 = [v18 start];
          v13 = [v19 offsetFromPosition:v11 toPosition:v12];

          v14 = *(v7 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback);
          if (v14)
          {
            v15 = *(v7 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback + 8);

            v14(v13);
            sub_23D8556B0(v6);
            v16 = v14;
          }

          else
          {
            v16 = v6;
          }

          sub_23D8556B0(v16);

          v5 = v18;
        }

        else
        {

          sub_23D8556B0(v6);
          v5 = v17;
        }

        goto LABEL_6;
      }
    }

    sub_23D8556B0(v6);
LABEL_5:
    v5 = v19;
LABEL_6:

    return;
  }

  sub_23D8556B0(v6);
}

id sub_23D874814()
{
  if (*&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription])
  {

    sub_23D8DCB00();
  }

  v1 = *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isTextViewInitialized] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXRUIContinuousTextView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23D874978()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling] = 0;
  v4 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownPeriod] = 0x4008000000000000;
  v5 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_currentScrollDirection] = 1;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastFetchTriggerTime] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_fetchCooldownPeriod] = 0x4000000000000000;
  v6 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold];
  *v6 = 1;
  *(v6 + 2) = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isTextViewInitialized] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AXRUIContinuousTextView.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_23D874B0C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for AXRUIContinuousTextView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_23D874B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D878A0C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23D874BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D878A0C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23D874C54()
{
  sub_23D878A0C();
  sub_23D8DD680();
  __break(1u);
}

uint64_t sub_23D874C7C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23D874CD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXRScrollCoordinator();
  result = sub_23D8DCB20();
  *a1 = result;
  return result;
}

id sub_23D874D14(double a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  v4 = sub_23D8DD850();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth] = a1;
  v5 = [objc_allocWithZone(MEMORY[0x277D742D8]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
  [v5 addLayoutManager_];
  v7 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v7 setWidthTracksTextView_];
  [v6 addTextContainer_];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AXRUITextView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_textContainer_, v7, 0.0, 0.0, 0.0, 0.0);
  sub_23D874FAC();

  return v8;
}

void sub_23D874FAC()
{
  [v0 setEditable_];
  [v0 setSelectable_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = [v0 textContainer];
  [v2 setLineFragmentPadding_];

  [v0 setUserInteractionEnabled_];
  [v0 setDataDetectorTypes_];
  v3 = sub_23D8DE830();
  [v0 setAccessibilityIdentifier_];

  [v0 setDelaysContentTouches_];
  [v0 setCanCancelContentTouches_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_clearSelectionOnTap_];
  [v4 setDelegate_];
  [v4 setCancelsTouchesInView_];
  [v4 setNumberOfTapsRequired_];
  v34 = v4;
  [v4 setNumberOfTouchesRequired_];
  v35 = v0;
  v5 = [v0 gestureRecognizers];
  if (v5)
  {
    v6 = v5;
    sub_23D856774(0, &qword_27E2EEAB0, 0x277D75548);
    v7 = sub_23D8DE990();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_33:

      [v35 addGestureRecognizer_];
      v33 = [objc_opt_self() defaultCenter];
      [v33 addObserver:v35 selector:sel_handleOrientationChange name:*MEMORY[0x277D76878] object:0];

      return;
    }
  }

  v8 = sub_23D8DECE0();
  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_4:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v28 = v7 + 32;
  v29 = v7 & 0xFFFFFFFFFFFFFF8;
  v11 = 0x277D75000uLL;
  v12 = &off_278BEC000;
  v31 = v8;
  v32 = v7;
  v30 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v13 = MEMORY[0x23EEF0DB0](v9, v7);
    }

    else
    {
      if (v9 >= *(v29 + 16))
      {
        goto LABEL_39;
      }

      v13 = *(v28 + 8 * v9);
    }

    v14 = v13;
    if (__OFADD__(v9++, 1))
    {
      break;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [v34 v12[383]];
    }

    v16 = *(v11 + 2040);
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v14;
      [v18 setCancelsTouchesInView_];
      [v18 setDelaysTouchesBegan_];
      [v18 setDelaysTouchesEnded_];

      v20 = [v35 gestureRecognizers];
      if (v20)
      {
        v21 = v20;
        sub_23D856774(0, &qword_27E2EEAB0, 0x277D75548);
        v22 = sub_23D8DE990();

        if (v22 >> 62)
        {
          v23 = sub_23D8DECE0();
          if (v23)
          {
LABEL_18:
            v24 = 0;
            while (1)
            {
              if ((v22 & 0xC000000000000001) != 0)
              {
                v25 = MEMORY[0x23EEF0DB0](v24, v22);
              }

              else
              {
                if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_37;
                }

                v25 = *(v22 + 8 * v24 + 32);
              }

              v26 = v25;
              v27 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

                v12 = &off_278BEC000;
                [v18 requireGestureRecognizerToFail_];

                v8 = v31;
                v7 = v32;
                v10 = v30;
                v11 = 0x277D75000;
                goto LABEL_6;
              }

              ++v24;
              if (v27 == v23)
              {
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
            break;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_18;
          }
        }

LABEL_30:

        v8 = v31;
        v7 = v32;
        v10 = v30;
        v11 = 0x277D75000;
        v12 = &off_278BEC000;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_6:
    if (v9 == v8)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_23D87550C()
{
  v0 = sub_23D8DE750();
  v25 = *(v0 - 8);
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D8DE780();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DE7A0();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
  v20 = sub_23D8DEAF0();
  sub_23D8DE790();
  sub_23D8DE7B0();
  v21 = *(v9 + 8);
  v21(v13, v8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23D878CBC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D876358;
  aBlock[3] = &block_descriptor_122;
  v17 = _Block_copy(aBlock);

  sub_23D8DE770();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
  sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
  sub_23D8DEBF0();
  v18 = v20;
  MEMORY[0x23EEF0C20](v15, v7, v3, v17);
  _Block_release(v17);

  (*(v25 + 8))(v3, v0);
  (*(v23 + 8))(v7, v24);
  return (v21)(v15, v22);
}

void sub_23D8758E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong frame];
    Width = CGRectGetWidth(v3);
    sub_23D877074(Width);
  }
}

void sub_23D8759F8(void *a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_23D8DE750();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DE780();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D8DE760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [v1 textStorage];
  v16 = [v1 attributedText];
  if (v16 && (v17 = v16, sub_23D856774(0, &qword_27E2EEAA8, 0x277CCA898), v18 = v37, v19 = sub_23D8DEB90(), v17, v18, (v19 & 1) != 0))
  {
    v20 = v38;
  }

  else
  {
    v21 = [v2 selectedRange];
    v23 = v22;
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    (*(v12 + 104))(v15, *MEMORY[0x277D851B8], v11);
    v33 = sub_23D8DEB10();
    (*(v12 + 8))(v15, v11);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v27 = v37;
    v26 = v38;
    v25[2] = v37;
    v25[3] = v24;
    v25[4] = v26;
    v25[5] = v21;
    v25[6] = v23;
    aBlock[4] = sub_23D878C2C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_111;
    v28 = _Block_copy(aBlock);
    v29 = v27;

    v30 = v38;
    sub_23D8DE770();
    v39 = MEMORY[0x277D84F90];
    sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
    sub_23D8DEBF0();
    v31 = v33;
    MEMORY[0x23EEF0C50](0, v10, v6, v28);
    _Block_release(v28);

    (*(v36 + 8))(v6, v3);
    (*(v34 + 8))(v10, v35);
  }
}

uint64_t sub_23D875EC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23D8DE750();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23D8DE780();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
  v26 = sub_23D8DEAF0();
  v18 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a3;
  v20[4] = v17;
  v20[5] = a4;
  v20[6] = a5;
  aBlock[4] = sub_23D878C8C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D876358;
  aBlock[3] = &block_descriptor_118;
  v21 = _Block_copy(aBlock);
  v22 = a3;
  v23 = v17;

  sub_23D8DE770();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
  sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
  sub_23D8DEBF0();
  v24 = v26;
  MEMORY[0x23EEF0C50](0, v16, v12, v21);
  _Block_release(v21);

  (*(v28 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v27);
}

void sub_23D876244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [v10 layoutManager];
    [v11 setAllowsNonContiguousLayout_];

    [a2 beginEditing];
    [a2 setAttributedString_];
    [a2 endEditing];
    v12 = [a2 length];
    if (v12 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0;
    }

    if (v12 >= a4)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }

    [v10 setSelectedRange_];

    [v10 invalidateIntrinsicContentSize];
  }
}

uint64_t sub_23D876358(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_23D87639C(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
    if (v6)
    {
      v7 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);

      v6(v8);
      sub_23D8556B0(v6);
    }
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for AXRUITextView();
  return objc_msgSendSuper2(&v10, sel_accessibilityScroll_, a1);
}

void sub_23D8765DC()
{
  v1 = v0;
  v2 = sub_23D8DBE00();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D76470];
  sub_23D8DE870();
  sub_23D8DEC20();
  if (!*(v3 + 16) || (v5 = sub_23D877E9C(v13), (v6 & 1) == 0))
  {

    sub_23D8359D0(v13);
LABEL_10:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_11;
  }

  sub_23D835A24(*(v3 + 56) + 32 * v5, &v14);
  sub_23D8359D0(v13);

  if (!*(&v15 + 1))
  {
LABEL_11:
    sub_23D83C6E4(&v14, &qword_27E2EEA98, &qword_23D8E2AD0);
    return;
  }

  sub_23D856774(0, &qword_27E2EEAA0, 0x277D750A0);
  if (swift_dynamicCast())
  {
    v7 = v13[0];
    v8 = [v13[0] accessibilityContainer];
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRelease();
      if (v9 == v1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v11 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
          v12 = Strong;
          sub_23D83BCD8(v11);

          if (v11)
          {
            v11();
            sub_23D8556B0(v11);
          }
        }
      }
    }
  }
}

id sub_23D8769D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXRUITextView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for AXRUITextView()
{
  result = qword_27E2EE9B8;
  if (!qword_27E2EE9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23D876CBC(double a1, double a2, double a3)
{
  v5 = sub_23D8DE750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D8DE780();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 frame];
  if (vabdd_f64(a3, v16) > 0.5)
  {
    result = [v3 frame];
    if (v17 > 0.0)
    {
      sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
      v22 = sub_23D8DEAF0();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_23D878CC4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23D876358;
      aBlock[3] = &block_descriptor_126;
      v21 = _Block_copy(aBlock);

      sub_23D8DE770();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
      sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
      sub_23D8DEBF0();
      v20 = v21;
      v19 = v22;
      MEMORY[0x23EEF0C50](0, v14, v9, v21);
      _Block_release(v20);

      (*(v6 + 8))(v9, v5);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void sub_23D876FF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];
    if (v2)
    {

      [v1 frame];
      sub_23D877074(v3);
    }
  }
}

uint64_t sub_23D877074(double a1)
{
  v3 = sub_23D8DD850();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v44[-v16];
  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 orientation];

  IsLandscape = UIDeviceOrientationIsLandscape(v20);
  v21 = [v18 currentDevice];
  v22 = [v21 userInterfaceIdiom];

  v23 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  swift_beginAccess();
  (*(v4 + 104))(v17, *MEMORY[0x277CE0560], v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v24 = *(v8 + 56);
  sub_23D83C67C(&v1[v23], v11, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v17, &v11[v24], &qword_27E2EE9E0, &qword_23D8E26D0);
  v25 = *(v4 + 48);
  if (v25(v11, 1, v3) != 1)
  {
    v27 = v47;
    sub_23D83C67C(v11, v47, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v25(&v11[v24], 1, v3) != 1)
    {
      v41 = v46;
      (*(v4 + 32))(v46, &v11[v24], v3);
      sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570]);
      v45 = sub_23D8DE820();
      v42 = *(v4 + 8);
      v42(v41, v3);
      sub_23D83C6E4(v17, &qword_27E2EE9E0, &qword_23D8E26D0);
      v42(v27, v3);
      result = sub_23D83C6E4(v11, &qword_27E2EE9E0, &qword_23D8E26D0);
      v43 = IsLandscape;
      if (v22)
      {
        v43 = 0;
      }

      if ((v45 & 1) != 0 || v43)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    sub_23D83C6E4(v17, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v4 + 8))(v27, v3);
LABEL_6:
    result = sub_23D83C6E4(v11, &qword_27E2EDDB8, &qword_23D8E26E0);
    v28 = IsLandscape;
    if (v22)
    {
      v28 = 0;
    }

    if (v28)
    {
      goto LABEL_9;
    }

LABEL_21:
    [v1 textContainerInset];
    v38 = 24.0;
    v40 = 24.0;
    v37 = v33;
    v39 = v35;
    return sub_23D8775A8(v33, v34, v35, v36, v37, v38, v39, v40);
  }

  sub_23D83C6E4(v17, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v25(&v11[v24], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  result = sub_23D83C6E4(v11, &qword_27E2EE9E0, &qword_23D8E26D0);
LABEL_9:
  if (a1 <= 0.0)
  {
    return result;
  }

  v29 = *&v1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth];
  v30 = v29 >= a1 || v29 <= 0.0;
  v31 = (a1 - v29) * 0.5;
  if (v30)
  {
    v32 = 24.0;
  }

  else
  {
    v32 = v31;
  }

  [v1 textContainerInset];
  v37 = v33;
  v38 = v32;
  v39 = v35;
  v40 = v32;
  return sub_23D8775A8(v33, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_23D8775A8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v14 = sub_23D8DE750();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D8DE780();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = MEMORY[0x28223BE20](v19);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = vabdd_f64(a4, a8);
  if (vabdd_f64(a2, a6) > 0.5 || v25 > 0.5)
  {
    v32 = result;
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v31 = sub_23D8DEAF0();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a5;
    *(v28 + 32) = a6;
    *(v28 + 40) = a7;
    *(v28 + 48) = a8;
    aBlock[4] = sub_23D878BD4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_104;
    v29 = _Block_copy(aBlock);

    sub_23D8DE770();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740);
    sub_23D8DEBF0();
    v30 = v31;
    MEMORY[0x23EEF0C50](0, v24, v18, v29);
    _Block_release(v29);

    (*(v15 + 8))(v18, v14);
    return (*(v20 + 8))(v24, v32);
  }

  return result;
}

void sub_23D877904(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setTextContainerInset_];
    [v9 invalidateIntrinsicContentSize];
  }
}

void sub_23D8779D0()
{
  sub_23D877A7C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23D877A7C()
{
  if (!qword_27E2EE9C8)
  {
    sub_23D8DD850();
    v0 = sub_23D8DEBD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EE9C8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_SiIegy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23D877B24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D877B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D877BE8()
{
  result = qword_27E2EE9D0;
  if (!qword_27E2EE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE9D0);
  }

  return result;
}

uint64_t sub_23D877C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D877CAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D877DA4;

  return v7(a1);
}

uint64_t sub_23D877DA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_23D877E9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D8DEC00();

  return sub_23D877FDC(a1, v5);
}

unint64_t sub_23D877EE0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23D8DE870();
  sub_23D8DED50();
  sub_23D8DE8C0();
  v4 = sub_23D8DED80();

  return sub_23D8780A4(a1, v4);
}

unint64_t sub_23D877F70(int a1)
{
  v3 = *(v1 + 40);
  sub_23D8DED50();
  sub_23D8DED70();
  v4 = sub_23D8DED80();

  return sub_23D8781A8(a1, v4);
}

unint64_t sub_23D877FDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D878798(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEF0D60](v9, a1);
      sub_23D8359D0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23D8780A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23D8DE870();
      v9 = v8;
      if (v7 == sub_23D8DE870() && v9 == v10)
      {
        break;
      }

      v12 = sub_23D8DED20();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23D8781A8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_23D878248()
{
  v0 = sub_23D8DD850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = sub_23D8DD3C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  sub_23D8DD930();
  sub_23D8DD280();
  (*(v19 + 8))(v22, v18);
  (*(v1 + 104))(v15, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v23 = *(v5 + 56);
  sub_23D83C67C(v17, v8, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v15, &v8[v23], &qword_27E2EE9E0, &qword_23D8E26D0);
  v24 = *(v1 + 48);
  if (v24(v8, 1, v0) == 1)
  {
    sub_23D83C6E4(v15, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v17, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v24(&v8[v23], 1, v0) == 1)
    {
      sub_23D83C6E4(v8, &qword_27E2EE9E0, &qword_23D8E26D0);
      return 24.0;
    }

    goto LABEL_6;
  }

  sub_23D83C67C(v8, v31, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v24(&v8[v23], 1, v0) == 1)
  {
    sub_23D83C6E4(v15, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v17, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v1 + 8))(v31, v0);
LABEL_6:
    sub_23D83C6E4(v8, &qword_27E2EDDB8, &qword_23D8E26E0);
    return 0.0;
  }

  v26 = v30;
  (*(v1 + 32))(v30, &v8[v23], v0);
  sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570]);
  v27 = v31;
  v28 = sub_23D8DE820();
  v29 = *(v1 + 8);
  v29(v26, v0);
  sub_23D83C6E4(v15, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C6E4(v17, &qword_27E2EE9E0, &qword_23D8E26D0);
  v29(v27, v0);
  sub_23D83C6E4(v8, &qword_27E2EE9E0, &qword_23D8E26D0);
  result = 0.0;
  if (v28)
  {
    return 24.0;
  }

  return result;
}

uint64_t sub_23D878740(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_23D878788(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23D8787F4()
{
  result = qword_27E2EEA58;
  if (!qword_27E2EEA58)
  {
    sub_23D856774(255, &unk_27E2EEA40, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEA58);
  }

  return result;
}

uint64_t sub_23D87885C()
{
  MEMORY[0x23EEF16A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8788CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_23D87899C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70) - 8) + 80);
  v2 = *(v0 + 16);

  sub_23D872084(v2);
}

unint64_t sub_23D878A0C()
{
  result = qword_27E2EEA80;
  if (!qword_27E2EEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEA80);
  }

  return result;
}

unint64_t sub_23D878A84(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_23D8DECF0();
    v10 = a1 + 32;

    while (1)
    {
      sub_23D83C67C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_23D877EE0(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_23D878788(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23D878B9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23D878BE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23D878C44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_23D878CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAC8, &unk_23D8E2B00);
  v3 = sub_23D8DECF0();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_23D877F70(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_23D877F70(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_23D878DDC(void *a1)
{
  result = [a1 text];
  if (result)
  {
    v2 = result;
    sub_23D8DE870();

    sub_23D8DE8F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D878EA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEAB8, &qword_23D8E3C70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21[-v4];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v7 = Strong;
  [a1 locationInView_];
  v8 = [v7 closestPositionToPoint_];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 textStylingAtPosition:v8 inDirection:0];
    if (v10)
    {

      v11 = [v7 textStylingAtPosition:v9 inDirection:0];
      if (v11)
      {
        v12 = v11;
        type metadata accessor for Key(0);
        sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key);
        v13 = sub_23D8DE7D0();

        if (*(v13 + 16))
        {
          v14 = sub_23D877EE0(*MEMORY[0x277D740E8]);
          if (v15)
          {
            sub_23D835A24(*(v13 + 56) + 32 * v14, v21);

            v16 = sub_23D8DBF20();
            v17 = swift_dynamicCast();
            v18 = *(v16 - 8);
            (*(v18 + 56))(v5, v17 ^ 1u, 1, v16);
            if ((*(v18 + 48))(v5, 1, v16) != 1)
            {
              sub_23D83C6E4(v5, &unk_27E2EEAB8, &qword_23D8E3C70);
              return 0;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
      }

      v20 = sub_23D8DBF20();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
LABEL_14:
      sub_23D83C6E4(v5, &unk_27E2EEAB8, &qword_23D8E3C70);
      return 1;
    }
  }

  return 1;
}

uint64_t sub_23D879198(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEAB8, &qword_23D8E3C70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20[-v5];
  [a1 locationInView_];
  v7 = [v1 closestPositionToPoint_];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = [v1 textStylingAtPosition:v7 inDirection:0];
  if (v9)
  {

    v10 = [v1 textStylingAtPosition:v8 inDirection:0];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for Key(0);
      sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key);
      v12 = sub_23D8DE7D0();

      if (*(v12 + 16))
      {
        v13 = sub_23D877EE0(*MEMORY[0x277D740E8]);
        if (v14)
        {
          sub_23D835A24(*(v12 + 56) + 32 * v13, v20);

          v15 = sub_23D8DBF20();
          v16 = swift_dynamicCast();
          v17 = *(v15 - 8);
          (*(v17 + 56))(v6, v16 ^ 1u, 1, v15);
          if ((*(v17 + 48))(v6, 1, v15) != 1)
          {
            sub_23D83C6E4(v6, &unk_27E2EEAB8, &qword_23D8E3C70);
            return 0;
          }

          goto LABEL_11;
        }
      }
    }

    v19 = sub_23D8DBF20();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
LABEL_11:
    sub_23D83C6E4(v6, &unk_27E2EEAB8, &qword_23D8E3C70);
    return 1;
  }

  return 1;
}

uint64_t sub_23D879460()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D8794C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D879518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D835CB4;

  return sub_23D873270(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23D8795EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D879624(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D836234;

  return sub_23D877CAC(a1, v5);
}

uint64_t sub_23D8796DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D835CB4;

  return sub_23D877CAC(a1, v5);
}

uint64_t sub_23D8797FC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D87985C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  sub_23D83C744(a1, a5, &qword_27E2ED118, "r^");
  v9 = type metadata accessor for SSRoundPipView();
  v10 = (a5 + v9[9]);
  type metadata accessor for SSStore();
  sub_23D87D9DC(&qword_27E2ED008, type metadata accessor for SSStore);
  *v10 = sub_23D8DD140();
  v10[1] = v11;
  v12 = (a5 + v9[10]);
  v13 = *(a4 + 8);
  result = sub_23D8DCEF0();
  *v12 = result;
  v12[1] = v15;
  v16 = a5 + v9[11];
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = 0;
  return result;
}

double sub_23D879960()
{
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  result = *&qword_27E2EEAD0 / 3.0;
  *&qword_27E2F3C78 = *&qword_27E2EEAD0 / 3.0;
  return result;
}

uint64_t sub_23D8799C0()
{
  result = AXDeviceIsPad();
  v1 = 60.0;
  if (result)
  {
    v1 = 64.0;
  }

  v2 = 90.0;
  if (result)
  {
    v2 = 96.0;
  }

  qword_27E2EEAD0 = *&v1;
  *algn_27E2EEAD8 = v2;
  return result;
}

double pipSize.getter()
{
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  return *&qword_27E2EEAD0;
}

uint64_t SSPipView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v118 = a2;
  v119 = sub_23D8DD530();
  v117 = *(v119 - 8);
  v5 = *(v117 + 64);
  v6 = MEMORY[0x28223BE20](v119);
  v116 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v120 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v127 = v10;
  v115 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_23D8DE150();
  v96 = *(v97 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23D8DCCB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v95 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE0, &qword_23D8E2B10);
  v21 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v23 = &v95 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE8, &qword_23D8E2B18);
  v24 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v26 = &v95 - v25;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAF0, &qword_23D8E2B20);
  v27 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v103 = &v95 - v28;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAF8, &qword_23D8E2B28);
  v29 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v122 = (&v95 - v30);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB00, &qword_23D8E2B30);
  v31 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v98 = &v95 - v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB08, &qword_23D8E2B38);
  v105 = *(v107 - 8);
  v33 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v123 = &v95 - v34;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB10, &qword_23D8E2B40);
  v108 = *(v111 - 8);
  v35 = *(v108 + 64);
  MEMORY[0x28223BE20](v111);
  v106 = &v95 - v36;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB18, &qword_23D8E2B48);
  v113 = *(v114 - 8);
  v37 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v109 = &v95 - v38;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB20, &qword_23D8E2B50);
  v39 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v112 = &v95 - v40;
  *v23 = sub_23D8DD560();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB28, &qword_23D8E2B58);
  v42 = *(a1 + 24);
  v43 = &v23[*(v41 + 44)];
  v125 = *(a1 + 32);
  v126 = v42;
  sub_23D87A838(v43);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v44 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB30, &unk_23D8E2B60) + 36)];
  v45 = v133;
  *v44 = v132;
  *(v44 + 1) = v45;
  *(v44 + 2) = v134;
  v23[*(v99 + 36)] = 0;
  sub_23D87B454(v20);
  (*(v14 + 104))(v18, *MEMORY[0x277CDF3C0], v13);
  v46 = sub_23D8DCCA0();
  v47 = *(v14 + 8);
  v47(v18, v13);
  v47(v20, v13);
  if (v46)
  {
    (*(v96 + 104))(v95, *MEMORY[0x277CE0EE0], v97);
    v48 = sub_23D8DE280();
  }

  else
  {
    v48 = sub_23D8DE240();
  }

  v49 = v48;
  v50 = sub_23D8DD9E0();
  sub_23D83C744(v23, v26, &qword_27E2EEAE0, &qword_23D8E2B10);
  v51 = &v26[*(v101 + 36)];
  *v51 = v49;
  v51[8] = v50;
  v52 = v124;
  sub_23D87AC7C(v124, &v130);
  v53 = v130;
  v54 = v103;
  sub_23D83C744(v26, v103, &qword_27E2EEAE8, &qword_23D8E2B18);
  v55 = v54 + *(v100 + 36);
  *v55 = v53;
  *(v55 + 8) = 256;
  sub_23D8DE220();
  v56 = sub_23D8DE250();

  v57 = v54;
  v58 = v122;
  sub_23D83C744(v57, v122, &qword_27E2EEAF0, &qword_23D8E2B20);
  v59 = &v58[*(v102 + 36)];
  *v59 = v56;
  v59[1] = 0x4020000000000000;
  v59[2] = 0;
  v59[3] = 0;
  v121 = v3;
  sub_23D87B654(v52);
  sub_23D8DBF90();
  v61 = v60;

  v62 = v98;
  sub_23D83C744(v58, v98, &qword_27E2EEAF8, &qword_23D8E2B28);
  v63 = v104;
  *(v62 + *(v104 + 36)) = v61;
  v64 = v120;
  v122 = *(v120 + 16);
  v65 = v115;
  v66 = v52;
  (v122)(v115, v3, v52);
  v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v68 = swift_allocObject();
  v69 = v125;
  *(v68 + 16) = v126;
  *(v68 + 24) = v69;
  v120 = *(v64 + 32);
  v70 = v66;
  (v120)(v68 + v67, v65, v66);
  v71 = sub_23D87AFA0();
  sub_23D8DDE20();

  sub_23D83C6E4(v62, &qword_27E2EEB00, &qword_23D8E2B30);
  (v122)(v65, v121, v70);
  v72 = swift_allocObject();
  v73 = v125;
  *(v72 + 16) = v126;
  *(v72 + 24) = v73;
  (v120)(v72 + v67, v65, v70);
  v130 = v63;
  v131 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v106;
  v76 = v107;
  v77 = v123;
  sub_23D8DDD60();

  (*(v105 + 8))(v77, v76);
  v78 = v124;
  (v122)(v65, v121, v124);
  v79 = swift_allocObject();
  v80 = v125;
  *(v79 + 16) = v126;
  *(v79 + 24) = v80;
  (v120)(v79 + v67, v65, v78);
  v130 = v76;
  v131 = OpaqueTypeConformance2;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v109;
  v83 = v111;
  sub_23D8DDD60();

  (*(v108 + 8))(v75, v83);
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v84 = 0xEC0000006C656261;
  v85 = 0x6C2E7069702E7373;
  if (qword_27E2F3C80)
  {
    v86 = qword_27E2F3C80;
    v87 = sub_23D8DE830();
    v88 = sub_23D8DE830();
    v89 = [v86 localizedStringForKey:v87 value:0 table:v88];

    v85 = sub_23D8DE870();
    v84 = v90;
  }

  v130 = v85;
  v131 = v84;
  v128 = v83;
  v129 = v81;
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v91 = v112;
  v92 = v114;
  sub_23D8DDE10();

  (*(v113 + 8))(v82, v92);
  v93 = v116;
  sub_23D8DD520();
  sub_23D8DCFF0();
  (*(v117 + 8))(v93, v119);
  return sub_23D83C6E4(v91, &qword_27E2EEB20, &qword_23D8E2B50);
}

uint64_t sub_23D87A838@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v15 = sub_23D8DD530();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D8DE2D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SSPipView();
  sub_23D87AB4C(v10);
  sub_23D8DE2E0();
  (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
  v11 = sub_23D8DE300();

  (*(v6 + 8))(v9, v5);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  LOBYTE(v20[0]) = 1;
  *&v19[3] = *&v19[27];
  *&v19[11] = *&v19[35];
  *&v19[19] = *&v19[43];
  v12 = sub_23D8DE220();
  v17 = v11;
  LOWORD(v18[0]) = 1;
  *(v18 + 2) = *v19;
  *(&v18[1] + 2) = *&v19[8];
  *(&v18[2] + 2) = *&v19[16];
  *&v18[3] = *&v19[23];
  *(&v18[3] + 1) = v12;
  sub_23D8DD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED28, &unk_23D8E2CE0);
  sub_23D87D8E8();
  sub_23D8DDD70();
  (*(v1 + 8))(v4, v15);
  v20[1] = v18[0];
  v20[2] = v18[1];
  v20[3] = v18[2];
  v20[4] = v18[3];
  v20[0] = v17;
  return sub_23D83C6E4(v20, &qword_27E2EED28, &unk_23D8E2CE0);
}

unint64_t sub_23D87AB4C(uint64_t a1)
{
  v3 = 0x7061742E646E6168;
  if ([*(v1 + *(a1 + 40) + 8) speakFingerState] != 4 && objc_msgSend(*(v1 + *(a1 + 40) + 8), sel_speakFingerState) != 1)
  {
    sub_23D87D864(a1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    if (v5 == 2)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  return v3;
}

uint64_t sub_23D87AC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DD4E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23D8DD830();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D87D864(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (v22[15] == 2)
  {
    if (qword_27E2ECEB8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27E2ECEB8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  (*(v5 + 104))(v8, *MEMORY[0x277CE0118], v4);
  (*(v5 + 16))(&v12[*(v9 + 20)], v8, v4);
  sub_23D8DD6E0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v5 + 8))(v8, v4);
  *v12 = v14;
  *(v12 + 1) = v16;
  *(v12 + 2) = v18;
  *(v12 + 3) = v20;
  sub_23D87D9DC(&qword_27E2EED48, MEMORY[0x277CE0550]);
  result = sub_23D8DE530();
  *a2 = result;
  return result;
}

unint64_t sub_23D87AFA0()
{
  result = qword_27E2EEB38;
  if (!qword_27E2EEB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB00, &qword_23D8E2B30);
    sub_23D87B02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB38);
  }

  return result;
}

unint64_t sub_23D87B02C()
{
  result = qword_27E2EEB40;
  if (!qword_27E2EEB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAF8, &qword_23D8E2B28);
    sub_23D87B0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB40);
  }

  return result;
}

unint64_t sub_23D87B0B8()
{
  result = qword_27E2EEB48;
  if (!qword_27E2EEB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAF0, &qword_23D8E2B20);
    sub_23D87B170();
    sub_23D835AD0(&qword_27E2EEB88, &qword_27E2EEB90, &qword_23D8E2B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB48);
  }

  return result;
}

unint64_t sub_23D87B170()
{
  result = qword_27E2EEB50;
  if (!qword_27E2EEB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE8, &qword_23D8E2B18);
    sub_23D87B228();
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB50);
  }

  return result;
}

unint64_t sub_23D87B228()
{
  result = qword_27E2EEB58;
  if (!qword_27E2EEB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE0, &qword_23D8E2B10);
    sub_23D87B2E0();
    sub_23D835AD0(&qword_27E2EEB78, &qword_27E2EEB80, &qword_23D8E2B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB58);
  }

  return result;
}

unint64_t sub_23D87B2E0()
{
  result = qword_27E2EEB60;
  if (!qword_27E2EEB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB30, &unk_23D8E2B60);
    sub_23D835AD0(&qword_27E2EEB68, &qword_27E2EEB70, &qword_23D8E2B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB60);
  }

  return result;
}

void sub_23D87B3B8(uint64_t (*a1)(void, void, void), SEL *a2)
{
  v4 = a1(0, *(v2 + 16), *(v2 + 24));
  v5 = v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
  sub_23D87CA44(v4, a2);
}

uint64_t sub_23D87B454@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23D83C67C(v2, &v17 - v11, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23D87B654(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  sub_23D8DBFB0();
  sub_23D87D9DC(qword_27E2EEC90, MEMORY[0x277CE78A0]);

  return sub_23D8DCD40();
}

uint64_t SSRoundPipView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a2;
  v88 = sub_23D8DD530();
  v86 = *(v88 - 8);
  v5 = *(v86 + 64);
  v6 = MEMORY[0x28223BE20](v88);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v89 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v97 = v10;
  v80 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE0, &qword_23D8E2B10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB98, &qword_23D8E2BA8);
  v15 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v17 = &v71 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBA0, &qword_23D8E2BB0);
  v75 = *(v78 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v96 = &v71 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBA8, &qword_23D8E2BB8);
  v77 = *(v79 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v71 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBB0, &qword_23D8E2BC0);
  v83 = *(v84 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v74 = &v71 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBB8, &qword_23D8E2BC8);
  v24 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v71 - v25;
  *v14 = sub_23D8DD560();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB28, &qword_23D8E2B58);
  v28 = *(a1 + 24);
  v27 = *(a1 + 32);
  sub_23D87C2A4(v3, v27, &v14[*(v26 + 44)]);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB30, &unk_23D8E2B60) + 36)];
  v30 = v105;
  *v29 = v104;
  *(v29 + 1) = v30;
  *(v29 + 2) = v106;
  v14[*(v11 + 36)] = 0;
  v31 = sub_23D8DE5D0();
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBC0, &qword_23D8E2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE8, &qword_23D8E2B18);
  v32 = sub_23D87B228();
  v94 = v27;
  v33 = v32;
  v34 = sub_23D87CBB8();
  v100 = v11;
  v101 = MEMORY[0x277CE1120];
  v102 = v33;
  v103 = v34;
  swift_getOpaqueTypeConformance2();
  v90 = v28;
  sub_23D87B170();
  v35 = v17;
  sub_23D8DE0A0();
  sub_23D83C6E4(v14, &qword_27E2EEAE0, &qword_23D8E2B10);
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBD0, &qword_23D8E2BD8) + 36)] = 256;
  sub_23D8DE220();
  v36 = sub_23D8DE250();

  v37 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBD8, &qword_23D8E2BE0) + 36)];
  *v37 = v36;
  v37[1] = 0x4020000000000000;
  v37[2] = 0;
  v37[3] = 0;
  v38 = v73;
  v39 = v3;
  v92 = v3;
  sub_23D87B654(v73);
  sub_23D8DBF90();
  v41 = v40;

  *(v35 + *(v95 + 36)) = v41;
  v42 = v89;
  v43 = *(v89 + 16);
  v91 = v89 + 16;
  v93 = v43;
  v44 = v80;
  v43(v80, v39, v38);
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = swift_allocObject();
  v47 = v90;
  v48 = v94;
  *(v46 + 16) = v90;
  *(v46 + 24) = v48;
  v89 = *(v42 + 32);
  (v89)(v46 + v45, v44, v38);
  v72 = sub_23D87CC5C();
  sub_23D8DDE20();

  sub_23D83C6E4(v35, &qword_27E2EEB98, &qword_23D8E2BA8);
  v93(v44, v92, v38);
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  (v89)(v49 + v45, v44, v38);
  v100 = v95;
  v101 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v76;
  v52 = v78;
  v53 = v96;
  sub_23D8DDD60();

  (*(v75 + 8))(v53, v52);
  v93(v44, v92, v38);
  v54 = swift_allocObject();
  v55 = v94;
  *(v54 + 16) = v90;
  *(v54 + 24) = v55;
  (v89)(v54 + v45, v44, v38);
  v100 = v52;
  v101 = OpaqueTypeConformance2;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v74;
  v58 = v79;
  sub_23D8DDD60();

  (*(v77 + 8))(v51, v58);
  v59 = v58;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v60 = 0xEC0000006C656261;
  v61 = 0x6C2E7069702E7373;
  if (qword_27E2F3C80)
  {
    v62 = qword_27E2F3C80;
    v63 = sub_23D8DE830();
    v64 = sub_23D8DE830();
    v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

    v61 = sub_23D8DE870();
    v60 = v66;
  }

  v100 = v61;
  v101 = v60;
  v98 = v59;
  v99 = v56;
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v67 = v82;
  v68 = v84;
  sub_23D8DDE10();

  (*(v83 + 8))(v57, v68);
  v69 = v85;
  sub_23D8DD520();
  sub_23D8DCFF0();
  (*(v86 + 8))(v69, v88);
  return sub_23D83C6E4(v67, &qword_27E2EEBB8, &qword_23D8E2BC8);
}

uint64_t sub_23D87C2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a2;
  v31 = a3;
  v4 = sub_23D8DD530();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DCCB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = sub_23D8DE2D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SSRoundPipView();
  v27 = a1;
  sub_23D87C6CC(v20);
  sub_23D8DE2E0();
  (*(v16 + 104))(v19, *MEMORY[0x277CE0FE0], v15);
  v26 = sub_23D8DE300();

  (*(v16 + 8))(v19, v15);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v36 = 1;
  *&v35[6] = v37;
  *&v35[22] = v38;
  *&v35[38] = v39;
  sub_23D87B454(v14);
  (*(v8 + 104))(v12, *MEMORY[0x277CDF3C0], v7);
  v21 = sub_23D8DCCA0();
  v22 = *(v8 + 8);
  v22(v12, v7);
  v22(v14, v7);
  if (v21)
  {
    v23 = sub_23D8DE240();
  }

  else
  {
    v23 = sub_23D8DE220();
  }

  v32 = v26;
  LOWORD(v33[0]) = 1;
  *(v33 + 2) = *v35;
  *(&v33[1] + 2) = *&v35[16];
  *(&v33[2] + 2) = *&v35[32];
  *&v33[3] = *&v35[46];
  *(&v33[3] + 1) = v23;
  v24 = v28;
  sub_23D8DD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED28, &unk_23D8E2CE0);
  sub_23D87D8E8();
  sub_23D8DDD70();
  (*(v29 + 8))(v24, v30);
  v34[2] = v33[1];
  v34[3] = v33[2];
  v34[4] = v33[3];
  v34[0] = v32;
  v34[1] = v33[0];
  return sub_23D83C6E4(v34, &qword_27E2EED28, &unk_23D8E2CE0);
}

unint64_t sub_23D87C6CC(uint64_t a1)
{
  v3 = 0x7061742E646E6168;
  if ([*(v1 + *(a1 + 40) + 8) speakFingerState] != 4 && objc_msgSend(*(v1 + *(a1 + 40) + 8), sel_speakFingerState) != 1)
  {
    return 0xD000000000000022;
  }

  return v3;
}

uint64_t sub_23D87C778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE0, &qword_23D8E2B10);
  sub_23D87B228();
  sub_23D87CBB8();
  return sub_23D8DDCC0();
}

uint64_t sub_23D87C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = sub_23D8DE150();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DCCB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_23D87B454(&v23 - v14);
  (*(v9 + 104))(v13, *MEMORY[0x277CDF3C0], v8);
  v16 = sub_23D8DCCA0();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v17(v15, v8);
  if (v16)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
    v18 = sub_23D8DE280();
  }

  else
  {
    v18 = sub_23D8DE240();
  }

  v19 = v18;
  v20 = sub_23D8DD9E0();
  sub_23D83C67C(v24, a2, &qword_27E2EEAE0, &qword_23D8E2B10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE8, &qword_23D8E2B18);
  v22 = a2 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20;
  return result;
}

void sub_23D87CA44(uint64_t a1, SEL *a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 *a2];

  if (v6 == 1)
  {
    v7 = &selRef_startNewReadAllFromGesture;
  }

  else
  {
    if (v6 != 2)
    {
      return;
    }

    v7 = &selRef_speakUnderFingerButtonPressed;
  }

  v8 = *(v2 + *(a1 + 40) + 8);
  v9 = *v7;

  [v8 v9];
}

uint64_t sub_23D87CAF8()
{
  sub_23D8DE640();
  sub_23D8DCE60();
}

uint64_t sub_23D87CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4(0);
  sub_23D87D864(v4);

  sub_23D86088C();
}

uint64_t sub_23D87CBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_23D87C7E4(a1, a2);
}

unint64_t sub_23D87CBB8()
{
  result = qword_27E2EEBC8;
  if (!qword_27E2EEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBC8);
  }

  return result;
}

unint64_t sub_23D87CC5C()
{
  result = qword_27E2EEBE0;
  if (!qword_27E2EEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB98, &qword_23D8E2BA8);
    sub_23D87CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBE0);
  }

  return result;
}

unint64_t sub_23D87CCE8()
{
  result = qword_27E2EEBE8;
  if (!qword_27E2EEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBD8, &qword_23D8E2BE0);
    sub_23D87CD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBE8);
  }

  return result;
}

unint64_t sub_23D87CD74()
{
  result = qword_27E2EEBF0;
  if (!qword_27E2EEBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBD0, &qword_23D8E2BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE0, &qword_23D8E2B10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBC0, &qword_23D8E2BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE8, &qword_23D8E2B18);
    sub_23D87B228();
    sub_23D87CBB8();
    swift_getOpaqueTypeConformance2();
    sub_23D87B170();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EEBF8, qword_27E2EEC00, &qword_23D8E2BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBF0);
  }

  return result;
}

uint64_t objectdestroyTm_4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *(v1 + 16), *(v1 + 24));
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = (v1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCCB0();
    (*(*(v7 - 8) + 8))(v1 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v2[9]);

  v10 = *(v6 + v2[10] + 8);
  swift_unknownObjectRelease();
  v11 = v6 + v2[11];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  sub_23D8531A4();

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

void sub_23D87D1E0()
{
  if (!qword_27E2ED618)
  {
    sub_23D8DCCB0();
    v0 = sub_23D8DCD20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2ED618);
    }
  }
}

void sub_23D87D238()
{
  if (!qword_27E2EEC88)
  {
    sub_23D8DBFB0();
    sub_23D87D9DC(qword_27E2EEC90, MEMORY[0x277CE78A0]);
    v0 = sub_23D8DCD50();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2EEC88);
    }
  }
}

void sub_23D87D2D8(uint64_t a1)
{
  sub_23D87D1E0();
  if (v2 <= 0x3F)
  {
    sub_23D83475C();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      v5 = *(*(a1 + 24) + 8);
      sub_23D8DCF20();
      if (v6 <= 0x3F)
      {
        sub_23D87D238();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
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

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_23D87D554()
{
  result = qword_27E2EED18;
  if (!qword_27E2EED18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB20, &qword_23D8E2B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB10, &qword_23D8E2B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB08, &qword_23D8E2B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB00, &qword_23D8E2B30);
    sub_23D87AFA0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D87D9DC(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED18);
  }

  return result;
}

unint64_t sub_23D87D6C4()
{
  result = qword_27E2EED20;
  if (!qword_27E2EED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBB8, &qword_23D8E2BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBA8, &qword_23D8E2BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBA0, &qword_23D8E2BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB98, &qword_23D8E2BA8);
    sub_23D87CC5C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D87D9DC(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED20);
  }

  return result;
}

uint64_t sub_23D87D864(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  if (!*v2)
  {
    v4 = v2[1];
    type metadata accessor for SSStore();
    sub_23D87D9DC(&qword_27E2ED008, type metadata accessor for SSStore);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

unint64_t sub_23D87D8E8()
{
  result = qword_27E2EED30;
  if (!qword_27E2EED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED28, &unk_23D8E2CE0);
    sub_23D855C08();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED30);
  }

  return result;
}

uint64_t sub_23D87D9DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23D87DA4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t SSLeadingView.init(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_23D8DE310();
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v4 = *(a1 + 8);
  result = sub_23D8DCEF0();
  *a2 = result;
  *(a2 + 8) = v6;
  return result;
}

uint64_t SSLeadingView.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v11 = *v1;
  v4 = v11;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  [v3 isSpeakingOrPaused];
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED50, &qword_23D8E2D70);
  sub_23D884078();
  sub_23D8DE060();

  v15[1] = v9[1];
  v15[2] = v9[2];
  v16[0] = v10[0];
  *(v16 + 9) = *(v10 + 9);
  v15[0] = v9[0];
  return sub_23D83C6E4(v15, &qword_27E2EED50, &qword_23D8E2D70);
}

__n128 sub_23D87DC90@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DE2D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  LOBYTE(v34) = *(v1 + 16);
  *(&v34 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (v22 == 1)
  {
    v10 = [v8 currentAppBundleId];
    if (v10)
    {
      v11 = v10;
      v12 = sub_23D8DE870();
      v14 = v13;

      v15.value._countAndFlagsBits = v12;
      v15.value._object = v14;
      iconForBundleId(_:)(v15);
      sub_23D8DE2B0();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      sub_23D8DE2B0();
    }

    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v17 = sub_23D8DE300();

    (*(v4 + 8))(v7, v3);
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    *&v21[38] = v33;
    *&v21[22] = v32;
    *&v21[6] = v31;
    v25 = *v21;
    v30 = 1;
    v20 = 0;
    v22 = v17;
    v23 = 0;
    v24 = 1;
    v26 = *&v21[16];
    *v27 = *&v21[32];
    *&v27[14] = *(&v33 + 1);
    v28 = 0;
  }

  else
  {
    sub_23D8DE2C0();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v16 = sub_23D8DE300();

    (*(v4 + 8))(v7, v3);
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    *&v29[38] = v33;
    *&v29[22] = v32;
    *&v29[6] = v31;
    v25 = *v29;
    LOBYTE(v34) = 1;
    v30 = 1;
    v22 = v16;
    v23 = 0;
    v24 = 1;
    v26 = *&v29[16];
    *v27 = *&v29[32];
    *&v27[14] = *(&v33 + 1);
    v28 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  sub_23D8DD6B0();
  v18 = v37[0];
  *(a1 + 32) = v36;
  *(a1 + 48) = v18;
  *(a1 + 57) = *(v37 + 9);
  result = v35;
  *a1 = v34;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23D87E028(uint64_t a1, char *a2)
{
  v2 = *a2;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  return swift_unknownObjectRelease();
}

uint64_t sub_23D87E0B8()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE340();
  return v2;
}

uint64_t SSTrailingView.recordingMagnitudes.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t SSTrailingView.init(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_23D8DE310();
  v39 = v40;
  v6 = *(a1 + 8);
  swift_unknownObjectRetain();
  v7 = sub_23D8DCEF0();
  v9 = v8;
  v10 = sub_23D8DE9A0();
  *(v10 + 16) = 5;
  __asm { FMOV            V0.4S, #1.0 }

  *(v10 + 32) = _Q0;
  *(v10 + 48) = 1065353216;
  v41 = MEMORY[0x277D84F90];
  sub_23D883E74(0, 5, 0);
  v16 = v41;
  v17 = *(v10 + 32);
  v18 = arc4random_uniform(0x14u);
  v20 = v18 + 5;
  if (v18 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v41 + 16);
    v19 = *(v41 + 24);
    v2 = v3 + 1;
    if (v3 < v19 >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_23D883E74((v19 > 1), v2, 1);
  v16 = v41;
LABEL_3:
  *(v16 + 16) = v2;
  *(v16 + 4 * v3 + 32) = v17 * v20;
  v21 = *(v10 + 36);
  v22 = arc4random_uniform(0x14u);
  v24 = v22 + 5;
  if (v22 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v16 + 16);
    v23 = *(v16 + 24);
    v2 = v3 + 1;
    if (v3 < v23 >> 1)
    {
      goto LABEL_5;
    }
  }

  sub_23D883E74((v23 > 1), v2, 1);
  v16 = v41;
LABEL_5:
  *(v16 + 16) = v2;
  *(v16 + 4 * v3 + 32) = v21 * v24;
  v25 = *(v10 + 40);
  v26 = arc4random_uniform(0x14u);
  v28 = v26 + 5;
  if (v26 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v16 + 16);
    v27 = *(v16 + 24);
    v2 = v3 + 1;
    if (v3 < v27 >> 1)
    {
      goto LABEL_7;
    }
  }

  sub_23D883E74((v27 > 1), v2, 1);
LABEL_7:
  v29 = v41;
  *(v41 + 16) = v2;
  *(v41 + 4 * v3 + 32) = v25 * v28;
  v30 = *(v10 + 44);
  v31 = arc4random_uniform(0x14u);
  v33 = v31 + 5;
  if (v31 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v41 + 16);
    v32 = *(v41 + 24);
    v2 = v3 + 1;
    if (v3 < v32 >> 1)
    {
      goto LABEL_9;
    }
  }

  sub_23D883E74((v32 > 1), v2, 1);
  v29 = v41;
LABEL_9:
  *(v29 + 16) = v2;
  *(v29 + 4 * v3 + 32) = v30 * v33;
  v34 = *(v10 + 48);
  v35 = arc4random_uniform(0x14u);
  v37 = v35 + 5;
  if (v35 >= 0xFFFFFFFB)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(v29 + 16);
  v36 = *(v29 + 24);
  v2 = v3 + 1;
  if (v3 >= v36 >> 1)
  {
LABEL_21:
    sub_23D883E74((v36 > 1), v2, 1);
    v29 = v41;
  }

  *(v29 + 16) = v2;
  *(v29 + 4 * v3 + 32) = v34 * v37;
  swift_unknownObjectRelease();

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v39;
  *(a2 + 24) = v42;
  *(a2 + 32) = v29;
  return result;
}

uint64_t SSTrailingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v4 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = v4;
  v5 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  v31 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v29 = v5;
  *(&v29 + 1) = v7;
  *&v30 = WitnessTable;
  *(&v30 + 1) = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v9 = sub_23D8DE390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = v2[1];
  v29 = *v2;
  v30 = v17;
  v31 = *(v2 + 4);
  v25 = v23;
  v26 = v22;
  v27 = &v29;
  sub_23D8DD420();
  sub_23D8DE380();
  v18 = swift_getWitnessTable();
  sub_23D8361EC(v14, v9, v18);
  v19 = *(v10 + 8);
  v19(v14, v9);
  sub_23D8361EC(v16, v9, v18);
  return (v19)(v16, v9);
}

uint64_t sub_23D87E780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a1;
  v23 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v5 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  v37 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  v33 = v5;
  v34 = v7;
  v35 = WitnessTable;
  v36 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v9 = sub_23D8DE390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  sub_23D8DD410();
  v24 = a2;
  v25 = v21;
  v26 = v22;
  sub_23D8DE380();
  v17 = swift_getWitnessTable();
  sub_23D8361EC(v14, v9, v17);
  v18 = *(v10 + 8);
  v18(v14, v9);
  v30 = 0;
  v31 = 1;
  v33 = &v30;
  (*(v10 + 16))(v14, v16, v9);
  v34 = v14;
  v29[0] = MEMORY[0x277CE1180];
  v29[1] = v9;
  v27 = MEMORY[0x277CE1170];
  v28 = v17;
  sub_23D8CF87C(&v33, 2uLL, v29);
  v18(v16, v9);
  return (v18)(v14, v9);
}

uint64_t sub_23D87EABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v7 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v25 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  v31 = v26;
  v32 = MEMORY[0x277D83A90];
  v33 = OpaqueTypeMetadata2;
  v34 = v23;
  v35 = MEMORY[0x277D83AB0];
  v8 = sub_23D8DE4E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v36 = *(a1 + 32);
  v30 = v36;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a1 + 32);
  sub_23D83C67C(&v36, &v31, &qword_27E2EED60, &qword_23D8E2D78);
  v18 = type metadata accessor for SSTrailingView();
  (*(*(v18 - 8) + 16))(&v31, a1, v18);
  v31 = v7;
  v32 = MEMORY[0x277D839B0];
  v33 = WitnessTable;
  v34 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D8DE4C0();
  v29 = OpaqueTypeConformance2;
  v19 = swift_getWitnessTable();
  sub_23D8361EC(v13, v8, v19);
  v20 = *(v9 + 8);
  v20(v13, v8);
  sub_23D8361EC(v15, v8, v19);
  return (v20)(v15, v8);
}

uint64_t sub_23D87EE2C@<X0>(float *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v9 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  *&v44 = v9;
  *(&v44 + 1) = MEMORY[0x277D839B0];
  *&v45 = WitnessTable;
  *(&v45 + 1) = MEMORY[0x277D839C8];
  v35 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *a1;
  v18 = *(a2 + 1);
  v19 = type metadata accessor for SSTrailingView();
  v20 = a2[1];
  v44 = *a2;
  v45 = v20;
  *&v46 = *(a2 + 4);
  swift_unknownObjectRetain();
  v21 = sub_23D87E0B8();
  sub_23D87F1F4(1, v21, v23, v22 & 1, a4, &v39, v17);
  v38 = [*(a2 + 1) isSpeaking];
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = a2[1];
  *(v24 + 32) = *a2;
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a2 + 4);
  (*(*(v19 - 8) + 16))(&v44, a2, v19);
  v26 = swift_checkMetadataState();
  v27 = MEMORY[0x277D839B0];
  v28 = WitnessTable;
  v29 = MEMORY[0x277D839C8];
  sub_23D8DE060();

  v46 = v41;
  v47 = v42;
  v48[0] = v43[0];
  *(v48 + 9) = *(v43 + 9);
  v44 = v39;
  v45 = v40;
  (*(*(v26 - 8) + 8))(&v44, v26);
  *&v39 = v26;
  *(&v39 + 1) = v27;
  *&v40 = v28;
  *(&v40 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D8361EC(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v31 = *(v36 + 8);
  v31(v14, OpaqueTypeMetadata2);
  sub_23D8361EC(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v31)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_23D87F1F4@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X6>, uint64_t a6@<X8>, float a7@<S0>)
{
  sub_23D8DE310();
  v13 = sub_23D883540();
  v15 = v14;
  if (a1)
  {
    v16 = 2.0;
  }

  else
  {
    v16 = 3.0;
  }

  if (a1)
  {
    v17 = 20.0;
  }

  else
  {
    v17 = 25.0;
  }

  v18 = *(a5 + 8);
  result = sub_23D8DCEF0();
  *a6 = a7;
  *(a6 + 4) = a1;
  *(a6 + 8) = v16;
  *(a6 + 16) = v17;
  *(a6 + 24) = v22;
  *(a6 + 32) = v23;
  *(a6 + 40) = v13;
  *(a6 + 48) = v15;
  *(a6 + 56) = result;
  *(a6 + 64) = v20;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  return result;
}

uint64_t sub_23D87F2F4(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 8);
  v12 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for SSTrailingView();
  (*(*(v8 - 8) + 16))(v10, a3, v8);
  v10[0] = v12;
  v11 = v6;
  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  swift_unknownObjectRelease();
}

uint64_t sub_23D87F3D4()
{
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE340();
  return v2;
}

uint64_t SSCustomView.recordingMagnitudes.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t SSCustomView.init(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_23D8DE310();
  v44 = v46;
  sub_23D8DE310();
  v5 = v48;
  v45 = v46;
  v6 = *(a1 + 8);
  swift_unknownObjectRetain();
  v7 = sub_23D8DCEF0();
  v9 = v8;
  v10 = sub_23D8DE9A0();
  *(v10 + 16) = 6;
  __asm { FMOV            V0.4S, #1.0 }

  *(v10 + 32) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v10 + 48) = _Q0;
  v47 = MEMORY[0x277D84F90];
  sub_23D883E74(0, 6, 0);
  v16 = v47;
  v17 = *(v10 + 32);
  v18 = arc4random_uniform(0x14u);
  v20 = v18 + 5;
  if (v18 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v43 = v48;
    v2 = *(v47 + 16);
    v19 = *(v47 + 24);
    v5 = v2 + 1;
    if (v2 < v19 >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_23D883E74((v19 > 1), v5, 1);
  v16 = v47;
LABEL_3:
  *(v16 + 16) = v5;
  *(v16 + 4 * v2 + 32) = v17 * v20;
  v21 = *(v10 + 36);
  v22 = arc4random_uniform(0x14u);
  v24 = v22 + 5;
  if (v22 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v16 + 16);
    v23 = *(v16 + 24);
    v5 = v2 + 1;
    if (v2 < v23 >> 1)
    {
      goto LABEL_5;
    }
  }

  sub_23D883E74((v23 > 1), v5, 1);
  v16 = v47;
LABEL_5:
  *(v16 + 16) = v5;
  *(v16 + 4 * v2 + 32) = v21 * v24;
  v25 = *(v10 + 40);
  v26 = arc4random_uniform(0x14u);
  v28 = v26 + 5;
  if (v26 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v16 + 16);
    v27 = *(v16 + 24);
    v5 = v24 + 1;
    if (v24 < v27 >> 1)
    {
      goto LABEL_7;
    }
  }

  sub_23D883E74((v27 > 1), v5, 1);
LABEL_7:
  v29 = v47;
  *(v47 + 16) = v5;
  *(v47 + 4 * v24 + 32) = v25 * v28;
  v30 = *(v10 + 44);
  v31 = arc4random_uniform(0x14u);
  v33 = v31 + 5;
  if (v31 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v47 + 16);
    v32 = *(v47 + 24);
    v5 = v28 + 1;
    if (v28 < v32 >> 1)
    {
      goto LABEL_9;
    }
  }

  sub_23D883E74((v32 > 1), v5, 1);
  v29 = v47;
LABEL_9:
  *(v29 + 16) = v5;
  *(v29 + 4 * v28 + 32) = v30 * v33;
  v34 = *(v10 + 48);
  v35 = arc4random_uniform(0x14u);
  v37 = v35 + 5;
  if (v35 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v29 + 16);
    v36 = *(v29 + 24);
    v5 = v28 + 1;
    if (v28 < v36 >> 1)
    {
      goto LABEL_11;
    }
  }

  sub_23D883E74((v36 > 1), v5, 1);
  v29 = v47;
LABEL_11:
  *(v29 + 16) = v5;
  *(v29 + 4 * v28 + 32) = v34 * v37;
  v38 = *(v10 + 52);
  v39 = arc4random_uniform(0x14u);
  v41 = v39 + 5;
  if (v39 >= 0xFFFFFFFB)
  {
    __break(1u);
    goto LABEL_25;
  }

  v37 = *(v29 + 16);
  v40 = *(v29 + 24);
  v5 = v37 + 1;
  if (v37 >= v40 >> 1)
  {
LABEL_25:
    sub_23D883E74((v40 > 1), v5, 1);
  }

  *(v47 + 16) = v5;
  *(v47 + 4 * v37 + 32) = v38 * v41;
  swift_unknownObjectRelease();

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v44;
  *(a2 + 24) = v48;
  *(a2 + 32) = v45;
  *(a2 + 40) = v43;
  *(a2 + 48) = v47;
  return result;
}

uint64_t SSCustomView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
  v44 = MEMORY[0x277CE0BD8];
  v45 = MEMORY[0x277CE1180];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v38 = a1;
  v3 = *(a1 + 24);
  v36 = *(a1 + 16);
  v35 = v3;
  v4 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839C8];
  v8 = MEMORY[0x277CE0E30];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  *&v51 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v49 = v4;
  *(&v49 + 1) = v6;
  *&v50 = WitnessTable;
  *(&v50 + 1) = v7;
  v9 = v7;
  v33[1] = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  v46 = sub_23D8DD020();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  sub_23D8DD020();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EED78, &qword_23D8E2D88);
  swift_getTupleTypeMetadata3();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v10 = sub_23D8DE410();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  v33[0] = swift_getWitnessTable();
  *&v49 = v10;
  *(&v49 + 1) = v6;
  *&v50 = v33[0];
  *(&v50 + 1) = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v33 - v20;
  v22 = v37[1];
  v49 = *v37;
  v50 = v22;
  v51 = v37[2];
  v52 = *(v37 + 6);
  v23 = v36;
  v24 = v35;
  v40 = v36;
  v41 = v35;
  v42 = &v49;
  sub_23D8DD560();
  sub_23D8DE400();
  v47 = [*(&v49 + 1) isSpeakingOrPaused];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = v50;
  *(v25 + 32) = v49;
  *(v25 + 48) = v26;
  *(v25 + 64) = v51;
  *(v25 + 80) = v52;
  (*(*(v38 - 8) + 16))(&v43, &v49);
  v27 = MEMORY[0x277D839B0];
  v28 = v33[0];
  v29 = MEMORY[0x277D839C8];
  sub_23D8DE060();

  (*(v34 + 8))(v13, v10);
  v43 = v10;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_23D8361EC(v19, OpaqueTypeMetadata2, v30);
  v31 = *(v15 + 8);
  v31(v19, OpaqueTypeMetadata2);
  sub_23D8361EC(v21, OpaqueTypeMetadata2, v30);
  return (v31)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_23D87FDF4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v68 = a4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2EED78, &qword_23D8E2D88);
  v4 = *(*(v66 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v66);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = (&v55 - v7);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
  v83 = MEMORY[0x277CE0BD8];
  v84 = MEMORY[0x277CE1180];
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v9 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x277D839B0];
  *&v86 = v9;
  *(&v86 + 1) = MEMORY[0x277D839B0];
  v12 = MEMORY[0x277D839C8];
  *&v87 = WitnessTable;
  *(&v87 + 1) = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  *&v86 = v8;
  *(&v86 + 1) = MEMORY[0x277D83A90];
  *&v87 = OpaqueTypeMetadata2;
  *(&v87 + 1) = v14;
  *&v88 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v86 = v9;
  *(&v86 + 1) = v11;
  *&v87 = WitnessTable;
  *(&v87 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  v85 = sub_23D8DD020();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v15 = sub_23D8DE390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = sub_23D8DD020();
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v58 = sub_23D8DD020();
  v60 = *(v58 - 8);
  v24 = *(v60 + 64);
  v25 = MEMORY[0x28223BE20](v58);
  v63 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v56 = &v55 - v28;
  MEMORY[0x28223BE20](v27);
  v57 = &v55 - v29;
  v69 = v61;
  v70 = v62;
  v30 = v64;
  v71 = v64;
  sub_23D8DD420();
  sub_23D8DE380();
  sub_23D8DDA00();
  v31 = swift_getWitnessTable();
  sub_23D8DE030();
  (*(v16 + 8))(v19, v15);
  LOBYTE(v19) = *(v30 + 16);
  v32 = *(v30 + 3);
  v33 = v30;
  v34 = type metadata accessor for SSCustomView();
  LOBYTE(v86) = v19 & 1;
  *(&v86 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  v79 = v31;
  v80 = MEMORY[0x277CDF918];
  v35 = swift_getWitnessTable();
  v36 = v56;
  sub_23D8DE020();
  (*(v59 + 8))(v23, v20);
  v77 = v35;
  v78 = MEMORY[0x277CDF900];
  v37 = v58;
  v62 = swift_getWitnessTable();
  v38 = v57;
  sub_23D8361EC(v36, v37, v62);
  v39 = v60;
  v40 = *(v60 + 8);
  v40(v36, v37);
  v41 = sub_23D8DD420();
  v42 = v65;
  *v65 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF000, &qword_23D8E3110) + 44);
  v44 = v33[1];
  v86 = *v33;
  v87 = v44;
  v88 = v33[2];
  v89 = *(v33 + 6);
  sub_23D881328(v34, v42 + v43);
  LOBYTE(v33) = sub_23D8DDA00();
  sub_23D8DCC20();
  v45 = v66;
  v46 = v42 + *(v66 + 36);
  *v46 = v33;
  *(v46 + 8) = v47;
  *(v46 + 16) = v48;
  *(v46 + 24) = v49;
  *(v46 + 32) = v50;
  *(v46 + 40) = 0;
  v75 = 0;
  v76 = 1;
  *&v86 = &v75;
  v51 = *(v39 + 16);
  v52 = v63;
  v51(v63, v38, v37);
  *(&v86 + 1) = v52;
  v53 = v67;
  sub_23D83C67C(v42, v67, qword_27E2EED78, &qword_23D8E2D88);
  *&v87 = v53;
  v82 = MEMORY[0x277CE1180];
  v83 = v37;
  v84 = v45;
  v72 = MEMORY[0x277CE1170];
  v73 = v62;
  v74 = sub_23D884EEC();
  sub_23D8CF87C(&v86, 3uLL, &v82);
  sub_23D83C6E4(v42, qword_27E2EED78, &qword_23D8E2D88);
  v40(v38, v37);
  sub_23D83C6E4(v53, qword_27E2EED78, &qword_23D8E2D88);
  return (v40)(v52, v37);
}

uint64_t sub_23D880630@<X0>(uint64_t a1@<X1>, void (*a2)(_BYTE *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v3 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  *&v54 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v52 = v3;
  *(&v52 + 1) = v5;
  *&v53 = WitnessTable;
  *(&v53 + 1) = v6;
  v49[6] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  v7 = sub_23D8DD020();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-v13];
  v15 = type metadata accessor for SSCustomView();
  sub_23D880AF8(v50);
  sub_23D880D1C(&v52);
  v25 = *(&v52 + 1);
  v16 = v52;
  v24 = v53;
  v17 = *(&v53 + 1);
  sub_23D880F50(v15, v12);
  v49[4] = swift_getWitnessTable();
  v49[5] = MEMORY[0x277CDF918];
  v18 = swift_getWitnessTable();
  v26 = v14;
  v27 = v18;
  v19 = v14;
  sub_23D8361EC(v12, v7, v18);
  v28 = *(v8 + 8);
  v28(v12, v7);
  v45 = v50[4];
  v46 = v50[5];
  v47 = v50[6];
  v48 = v51;
  v41 = v50[0];
  v42 = v50[1];
  v43 = v50[2];
  v44 = v50[3];
  v20 = v25;
  v37 = v16;
  v38 = v25;
  LOBYTE(v3) = v24;
  v39 = v24;
  v40 = v17;
  v49[0] = &v41;
  v49[1] = &v37;
  v35 = 0;
  v36 = 1;
  v49[2] = &v35;
  (*(v8 + 16))(v12, v19, v7);
  v49[3] = v12;
  sub_23D83C67C(v50, &v52, &qword_27E2EED70, &qword_23D8E2D80);
  sub_23D834028(v16, v20, v3);

  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED70, &qword_23D8E2D80);
  v34[1] = MEMORY[0x277CE0BD8];
  v34[2] = MEMORY[0x277CE1180];
  v34[3] = v7;
  v30 = sub_23D8853E8();
  v31 = MEMORY[0x277CE0BC8];
  v32 = MEMORY[0x277CE1170];
  v33 = v27;
  sub_23D8CF87C(v49, 4uLL, v34);
  sub_23D83CB6C(v16, v20, v3);

  sub_23D83C6E4(v50, &qword_27E2EED70, &qword_23D8E2D80);
  v21 = v28;
  v28(v26, v7);
  v21(v12, v7);
  sub_23D83CB6C(v37, v38, v39);

  v56 = v45;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  return sub_23D83C6E4(&v52, &qword_27E2EED70, &qword_23D8E2D80);
}

uint64_t sub_23D880AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DE2D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = [*(v1 + 8) currentAppBundleId];
  if (v8)
  {
    v9 = v8;
    v10 = sub_23D8DE870();
    v12 = v11;

    v13.value._countAndFlagsBits = v10;
    v13.value._object = v12;
    iconForBundleId(_:)(v13);
    sub_23D8DE2B0();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    sub_23D8DE2B0();
  }

  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v14 = sub_23D8DE300();

  (*(v4 + 8))(v7, v3);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v24 = 1;
  *&v23[6] = v25;
  *&v23[22] = v26;
  *&v23[38] = v27;
  v15 = sub_23D8DDA10();
  result = sub_23D8DCC20();
  v17 = *&v23[16];
  *(a1 + 18) = *v23;
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v17;
  *(a1 + 50) = *&v23[32];
  *(a1 + 64) = *&v23[46];
  *(a1 + 72) = v15;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_23D880D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 8) currentAppTitle];
  if (v3)
  {
    v4 = v3;
    sub_23D8DE870();
LABEL_7:

    goto LABEL_8;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v5 = qword_27E2F3C80;
    v6 = sub_23D8DE830();
    v7 = sub_23D8DE830();
    v4 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_23D8DE870();
    goto LABEL_7;
  }

LABEL_8:
  sub_23D8DE960();
  sub_23D83CB18();
  v8 = sub_23D8DDCB0();
  v10 = v9;
  v12 = v11;
  sub_23D8DDB50();
  v13 = sub_23D8DDC40();
  v15 = v14;
  v17 = v16;

  sub_23D83CB6C(v8, v10, v12 & 1);

  v18 = sub_23D8DDC20();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_23D83CB6C(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_23D880F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v4 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = v4;
  v5 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  *&v39 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v37 = v5;
  *(&v37 + 1) = v7;
  *&v38 = WitnessTable;
  *(&v38 + 1) = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v9 = sub_23D8DE390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = sub_23D8DD020();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  v22 = v2[1];
  v37 = *v2;
  v38 = v22;
  v39 = v2[2];
  v40 = *(v2 + 6);
  sub_23D8DD410();
  v31 = v29;
  v32 = v28;
  v33 = &v37;
  sub_23D8DE380();
  sub_23D8DDA30();
  v23 = swift_getWitnessTable();
  sub_23D8DE030();
  (*(v10 + 8))(v13, v9);
  v34 = v23;
  v35 = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  sub_23D8361EC(v19, v14, v24);
  v25 = *(v15 + 8);
  v25(v19, v14);
  sub_23D8361EC(v21, v14, v24);
  return (v25)(v21, v14);
}

uint64_t sub_23D881328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE590, &qword_23D8E2380);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE588, &qword_23D8E2378);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v48 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE580, &qword_23D8E2370);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v54 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v48 - v27;
  v29 = *(v2 + 8);
  v30 = *(v2 + 16);
  v31 = *(v2 + 24);
  v32 = *(v2 + 32);
  v33 = *(v2 + 40);
  v34 = *(v2 + 48);
  v72 = *v2;
  v28 = v72;
  v73 = v29;
  LOBYTE(v74) = v30;
  v75 = v31;
  LOBYTE(v76) = v32;
  v77 = v33;
  v78 = v34;
  sub_23D8822D4(a1, &v48 - v27);
  v72 = v28;
  v73 = v29;
  LOBYTE(v74) = v30;
  v75 = v31;
  LOBYTE(v76) = v32;
  v77 = v33;
  v78 = v34;
  v35 = v22;
  v53 = v22;
  v36 = a1;
  v37 = a1;
  v38 = MEMORY[0x277CE09F0];
  sub_23D882608(v36, sub_23D8850E8, sub_23D8850F8, MEMORY[0x277CE09F0], v35);
  v72 = v28;
  v73 = v29;
  LOBYTE(v74) = v30;
  v75 = v31;
  LOBYTE(v76) = v32;
  v77 = v33;
  v78 = v34;
  sub_23D882608(v37, sub_23D885058, sub_23D8850DC, MEMORY[0x277CE0978], v55);
  v72 = v28;
  v73 = v29;
  LOBYTE(v74) = v30;
  v75 = v31;
  LOBYTE(v76) = v32;
  v77 = v33;
  v78 = v34;
  sub_23D882608(v37, sub_23D885010, sub_23D885020, v38, v58);
  v72 = v28;
  v73 = v29;
  LOBYTE(v74) = v30;
  v75 = v31;
  LOBYTE(v76) = v32;
  v77 = v33;
  v78 = v34;
  v39 = v49;
  sub_23D882934(v37, v49);
  v70 = 0;
  v71 = 1;
  v72 = &v70;
  v40 = v54;
  sub_23D83C67C(v57, v54, &qword_27E2EE580, &qword_23D8E2370);
  v68 = 0;
  v69 = 1;
  v73 = v40;
  v74 = &v68;
  v41 = v56;
  sub_23D83C67C(v53, v56, &qword_27E2EE588, &qword_23D8E2378);
  v66 = 0;
  v67 = 1;
  v75 = v41;
  v76 = &v66;
  v42 = v55;
  v43 = v59;
  sub_23D83C67C(v55, v59, &qword_27E2EE588, &qword_23D8E2378);
  v64 = 0;
  v65 = 1;
  v77 = v43;
  v78 = &v64;
  v44 = v58;
  v45 = v50;
  sub_23D83C67C(v58, v50, &qword_27E2EE588, &qword_23D8E2378);
  v62 = 0;
  v63 = 1;
  v79 = v45;
  v80 = &v62;
  v46 = v51;
  sub_23D83C67C(v39, v51, &qword_27E2EE590, &qword_23D8E2380);
  v60 = 0;
  v61 = 1;
  v81 = v46;
  v82 = &v60;
  sub_23D862760(&v72, v52);
  sub_23D83C6E4(v39, &qword_27E2EE590, &qword_23D8E2380);
  sub_23D83C6E4(v44, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v42, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v53, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v57, &qword_27E2EE580, &qword_23D8E2370);
  sub_23D83C6E4(v46, &qword_27E2EE590, &qword_23D8E2380);
  sub_23D83C6E4(v45, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v59, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v56, &qword_27E2EE588, &qword_23D8E2378);
  return sub_23D83C6E4(v54, &qword_27E2EE580, &qword_23D8E2370);
}

uint64_t sub_23D881930(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_23D8DE640();
  sub_23D8DCE60();
}

uint64_t sub_23D8819A8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v12 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = type metadata accessor for SSCustomView();
  (*(*(v8 - 8) + 16))(v10, a1, v8);
  v10[0] = v12;
  v11 = v5;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  swift_unknownObjectRelease();
}

uint64_t sub_23D881AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v7 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  v25 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  v30 = v26;
  v31 = MEMORY[0x277D83A90];
  v32 = OpaqueTypeMetadata2;
  v33 = v23;
  v34 = MEMORY[0x277D83AB0];
  v8 = sub_23D8DE4E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v35 = *(a1 + 48);
  v36 = v35;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a1 + 32);
  *(v16 + 80) = *(a1 + 48);
  sub_23D83C67C(&v36, &v30, &qword_27E2EED60, &qword_23D8E2D78);
  v18 = type metadata accessor for SSCustomView();
  (*(*(v18 - 8) + 16))(&v30, a1, v18);
  v30 = v7;
  v31 = MEMORY[0x277D839B0];
  v32 = WitnessTable;
  v33 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D8DE4C0();
  v29 = OpaqueTypeConformance2;
  v19 = swift_getWitnessTable();
  sub_23D8361EC(v13, v8, v19);
  v20 = *(v9 + 8);
  v20(v13, v8);
  sub_23D8361EC(v15, v8, v19);
  return (v20)(v15, v8);
}

uint64_t sub_23D881E14@<X0>(float *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v9 = type metadata accessor for WaveformBarView();
  WitnessTable = swift_getWitnessTable();
  *&v44 = v9;
  *(&v44 + 1) = MEMORY[0x277D839B0];
  *&v45 = WitnessTable;
  *(&v45 + 1) = MEMORY[0x277D839C8];
  v35 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *a1;
  v18 = *(a2 + 1);
  v19 = type metadata accessor for SSCustomView();
  v20 = a2[1];
  v44 = *a2;
  v45 = v20;
  v46 = a2[2];
  *&v47 = *(a2 + 6);
  swift_unknownObjectRetain();
  v21 = sub_23D87F3D4();
  sub_23D87F1F4(0, v21, v23, v22 & 1, a4, &v39, v17);
  v38 = [*(a2 + 1) isSpeaking];
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v25 = a2[1];
  *(v24 + 32) = *a2;
  *(v24 + 48) = v25;
  *(v24 + 64) = a2[2];
  *(v24 + 80) = *(a2 + 6);
  (*(*(v19 - 8) + 16))(&v44, a2, v19);
  v26 = swift_checkMetadataState();
  v27 = MEMORY[0x277D839B0];
  v28 = WitnessTable;
  v29 = MEMORY[0x277D839C8];
  sub_23D8DE060();

  v46 = v41;
  v47 = v42;
  v48[0] = v43[0];
  *(v48 + 9) = *(v43 + 9);
  v44 = v39;
  v45 = v40;
  (*(*(v26 - 8) + 8))(&v44, v26);
  *&v39 = v26;
  *(&v39 + 1) = v27;
  *&v40 = v28;
  *(&v40 + 1) = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D8361EC(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v31 = *(v36 + 8);
  v31(v14, OpaqueTypeMetadata2);
  sub_23D8361EC(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v31)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_23D8821EC(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 8);
  v6 = *(a3 + 24);
  v13 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for SSCustomView();
  (*(*(v9 - 8) + 16))(v11, a3, v9);
  v11[0] = v13;
  v12 = v7;
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  swift_unknownObjectRelease();
}

uint64_t sub_23D8822D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF038, &qword_23D8E3168);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25[-v13];
  v15 = *(v2 + 16);
  v30[0] = *v2;
  v30[1] = v15;
  v30[2] = *(v2 + 32);
  v31 = *(v2 + 48);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  v19 = *(v2 + 16);
  *(v16 + 32) = *v2;
  *(v16 + 48) = v19;
  *(v16 + 64) = *(v2 + 32);
  *(v16 + 80) = *(v2 + 48);
  v26 = v17;
  v27 = v18;
  v28 = v30;
  (*(*(a1 - 8) + 16))(v29, v30, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF040, &qword_23D8E3170);
  sub_23D88514C();
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF090, &qword_27E2EF038, &qword_23D8E3168);
  sub_23D884FB0();
  sub_23D8DDD10();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  v20 = sub_23D8DE260();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF098, qword_23D8E3198) + 36)) = v20;
  sub_23D8DDB60();
  sub_23D8DDAC0();
  v21 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE580, &qword_23D8E2370);
  v24 = (a2 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v21;
  return result;
}

uint64_t sub_23D882608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v28[2] = a3;
  v29 = a4;
  v28[1] = a2;
  v8 = sub_23D8DD080();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF020, &qword_23D8E3128);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - v16;
  v18 = *(v5 + 16);
  v34[0] = *v5;
  v34[1] = v18;
  v34[2] = *(v5 + 32);
  v35 = *(v5 + 48);
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  v22 = *(v5 + 16);
  *(v19 + 32) = *v5;
  *(v19 + 48) = v22;
  *(v19 + 64) = *(v5 + 32);
  *(v19 + 80) = *(v5 + 48);
  v30 = v20;
  v31 = v21;
  v32 = v34;
  (*(*(a1 - 8) + 16))(v33, v34, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF028, &qword_27E2EF020, &qword_23D8E3128);
  sub_23D884FB0();
  sub_23D8DDD10();
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
  v23 = sub_23D8DE260();
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF030, &qword_23D8E3130) + 36)) = v23;
  v29();
  sub_23D8DDAC0();
  v24 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE588, &qword_23D8E2378);
  v27 = (a5 + *(result + 36));
  *v27 = KeyPath;
  v27[1] = v24;
  return result;
}

double sub_23D882934@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF020, &qword_23D8E3128);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  v15 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v15;
  v25[2] = *(v2 + 32);
  v26 = *(v2 + 48);
  v23 = *(a1 + 16);
  v24 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF028, &qword_27E2EF020, &qword_23D8E3128);
  sub_23D884FB0();
  sub_23D8DDD10();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  v16 = sub_23D8DE260();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF030, &qword_23D8E3130) + 36)) = v16;
  sub_23D8DDB50();
  sub_23D8DDAC0();
  v17 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE588, &qword_23D8E2378) + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  LOBYTE(KeyPath) = sub_23D8DDA30();
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE590, &qword_23D8E2380) + 36);
  *v20 = KeyPath;
  result = 0.0;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  return result;
}

double sub_23D882C3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  [*(a1 + 8) speakingRateAsMultiplier];
  *&v8 = v8;
  v28[0] = localizedNameFor(speed:)(*&v8);
  sub_23D83CB18();
  v9 = sub_23D8DDCB0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_23D8DDAB0();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = sub_23D8DDB30();
  sub_23D83C6E4(v7, &qword_27E2ED4F8, &qword_23D8E0C40);
  KeyPath = swift_getKeyPath();
  v27 = v13 & 1;
  v26 = 1;
  *&v22 = v9;
  *(&v22 + 1) = v11;
  LOBYTE(v23) = v13 & 1;
  *(&v23 + 1) = v15;
  *&v24 = 0;
  WORD4(v24) = 1;
  *&v25 = KeyPath;
  *(&v25 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF060, &qword_23D8E3180);
  sub_23D8852A0();
  sub_23D8DDF80();
  v28[0] = v22;
  v28[1] = v23;
  v28[2] = v24;
  v28[3] = v25;
  sub_23D83C6E4(v28, &qword_27E2EF060, &qword_23D8E3180);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF058, &qword_23D8E3178) + 36)) = 257;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF040, &qword_23D8E3170) + 36));
  v20 = v23;
  *v19 = v22;
  v19[1] = v20;
  result = *&v24;
  v19[2] = v24;
  return result;
}

double sub_23D882E8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DE2D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  [*(a1 + 8) isSpeaking];
  sub_23D8DE2C0();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_23D8DE300();

  (*(v5 + 8))(v8, v4);
  v10 = *(a1 + 24);
  v11 = *(a1 + 16) & 1;
  LOBYTE(v16) = v11;
  *(&v16 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v16) = v11;
  *(&v16 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v15[6] = v16;
  *&v15[22] = v17;
  *&v15[38] = v18;
  v12 = *&v15[16];
  *(a2 + 18) = *v15;
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v12;
  result = *&v15[32];
  *(a2 + 50) = *&v15[32];
  *(a2 + 64) = *&v15[46];
  return result;
}

double sub_23D8830E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DE2D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_23D8DE2C0();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_23D8DE300();

  (*(v5 + 8))(v8, v4);
  v10 = *(a1 + 24);
  v11 = *(a1 + 16) & 1;
  LOBYTE(v16) = v11;
  *(&v16 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v16) = v11;
  *(&v16 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v15[6] = v16;
  *&v15[22] = v17;
  *&v15[38] = v18;
  v12 = *&v15[16];
  *(a2 + 18) = *v15;
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v12;
  result = *&v15[32];
  *(a2 + 50) = *&v15[32];
  *(a2 + 64) = *&v15[46];
  return result;
}

double sub_23D88330C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DE2D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_23D8DE2C0();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_23D8DE300();

  (*(v5 + 8))(v8, v4);
  v10 = *(a1 + 24);
  v11 = *(a1 + 16) & 1;
  LOBYTE(v16) = v11;
  *(&v16 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v16) = v11;
  *(&v16 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v15[6] = v16;
  *&v15[22] = v17;
  *&v15[38] = v18;
  v12 = *&v15[16];
  *(a2 + 18) = *v15;
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v12;
  result = *&v15[32];
  *(a2 + 50) = *&v15[32];
  *(a2 + 64) = *&v15[46];
  return result;
}

uint64_t sub_23D883540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C0, &qword_23D8E0DF0);
  sub_23D8DE310();
  return v1;
}

uint64_t sub_23D883588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF80, &qword_23D8E30B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v45 - v7;
  v9 = *(v2 + 8);
  v10 = *(sub_23D8DD090() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_23D8DD4E0();
  (*(*(v12 - 8) + 104))(&v8[v10], v11, v12);
  *v8 = v9;
  *(v8 + 1) = v9;
  v13 = [objc_opt_self() systemDarkOrangeColor];
  sub_23D8DE130();
  v14 = sub_23D8DE540();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF88, &qword_23D8E30C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23D8E0D60;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;

  sub_23D8DE1F0();
  *(v17 + 48) = sub_23D8DE540();
  *(v17 + 56) = v18;
  sub_23D8DE700();
  sub_23D8DE6F0();
  sub_23D8DE550();
  sub_23D8DCE90();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF90, &qword_23D8E30C8);
  v20 = &v8[*(v19 + 52)];
  v21 = v49;
  *v20 = v48;
  *(v20 + 1) = v21;
  *(v20 + 4) = v50;
  *&v8[*(v19 + 56)] = 256;
  v22 = *(v3 + 16);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v23 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF98, &qword_23D8E30D0) + 36)];
  v24 = v52;
  *v23 = v51;
  *(v23 + 1) = v24;
  *(v23 + 2) = v53;
  v25 = sub_23D8DE5F0();
  v27 = v26;
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFA0, &qword_23D8E30D8) + 36)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFA8, &qword_23D8E30E0);
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  sub_23D883A44(v3, v28 + *(v29 + 36));
  *v28 = v25;
  v28[1] = v27;
  v32 = sub_23D8DE670();
  v46 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE320();
  v33 = v54[0];
  v34 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFB0, &qword_23D8E30E8) + 36)];
  *v34 = v32;
  v34[1] = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v31;
  v36 = *(v3 + 48);
  *(v35 + 64) = *(v3 + 32);
  *(v35 + 80) = v36;
  *(v35 + 96) = *(v3 + 64);
  *(v35 + 105) = *(v3 + 73);
  v37 = *(v3 + 16);
  *(v35 + 32) = *v3;
  *(v35 + 48) = v37;
  v38 = &v8[*(v5 + 36)];
  *v38 = sub_23D884B20;
  v38[1] = v35;
  v38[2] = 0;
  v38[3] = 0;
  v39 = *(*(a1 - 8) + 16);
  v39(&v46, v3, a1);
  v46 = *(v3 + 72);
  v47 = *(v3 + 88);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  MEMORY[0x23EEF05A0](v54, v40);
  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = v31;
  v42 = *(v3 + 48);
  *(v41 + 64) = *(v3 + 32);
  *(v41 + 80) = v42;
  *(v41 + 96) = *(v3 + 64);
  *(v41 + 105) = *(v3 + 73);
  v43 = *(v3 + 16);
  *(v41 + 32) = *v3;
  *(v41 + 48) = v43;
  v39(&v46, v3, a1);
  sub_23D884B84();
  sub_23D8DE060();

  return sub_23D83C6E4(v8, &qword_27E2EEF80, &qword_23D8E30B8);
}

double sub_23D883A44@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(sub_23D8DD090() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_23D8DD4E0();
  (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  *a2 = v4;
  *(a2 + 1) = v4;
  v10 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v8 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFF8, &unk_23D8E3100) + 36)];
  *v8 = v10;
  *(v8 + 1) = v11;
  result = *&v12;
  *(v8 + 2) = v12;
  return result;
}

uint64_t sub_23D883B5C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    v10 = *(a3 + 48);
    *(v9 + 64) = *(a3 + 32);
    *(v9 + 80) = v10;
    *(v9 + 96) = *(a3 + 64);
    *(v9 + 105) = *(a3 + 73);
    v11 = *(a3 + 16);
    *(v9 + 32) = *a3;
    *(v9 + 48) = v11;
    aBlock[4] = sub_23D884E98;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D87DA4C;
    aBlock[3] = &block_descriptor_2;
    v12 = _Block_copy(aBlock);
    v13 = type metadata accessor for WaveformBarView();
    (*(*(v13 - 8) + 16))(v19, a3, v13);

    v14 = [v8 scheduledTimerWithTimeInterval:1 repeats:v12 block:0.15];
    _Block_release(v12);
    v19[0] = *(a3 + 40);
    aBlock[0] = v14;
    v15 = &qword_27E2EDBE0;
    v16 = &qword_23D8E1538;
  }

  else
  {
    v19[0] = *(a3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
    sub_23D8DE320();
    [aBlock[0] invalidate];

    v17 = *(a3 + 8);
    v19[0] = *(a3 + 24);
    aBlock[0] = v17;
    v15 = &qword_27E2ED0E0;
    v16 = &qword_23D8E1700;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  return sub_23D8DE330();
}

void sub_23D883D70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v3 > v2)
  {
    __break(1u);
  }

  else if (COERCE__INT64(fabs(v2 - v3)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_23D883F98(0x20000000000001uLL);
    v5 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    sub_23D8DE330();
    return;
  }

  __break(1u);
}

uint64_t sub_23D883E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  *v8 = v2[4];
  *&v8[9] = *(v2 + 73);
  v4 = *v2;
  v5 = v2[1];
  return sub_23D883588(a1, a2);
}

char *sub_23D883E74(char *a1, int64_t a2, char a3)
{
  result = sub_23D883E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D883E94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0A8, &unk_23D8E31D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_23D883F98(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23EEF1600](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23EEF1600](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D884024()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D884064(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  return sub_23D87E028(a1, a2);
}

unint64_t sub_23D884078()
{
  result = qword_27E2EED58;
  if (!qword_27E2EED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED50, &qword_23D8E2D70);
    sub_23D855C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED58);
  }

  return result;
}

uint64_t sub_23D884130(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_23D881930(a1, a2);
}

uint64_t sub_23D884208()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D884244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23D88428C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23D8842E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23D884334(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23D88437C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23D8843DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23D884434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23D88447C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D884508(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  type metadata accessor for WaveformBarView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  sub_23D8DE4E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  return swift_getWitnessTable();
}

uint64_t sub_23D8846FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  type metadata accessor for WaveformBarView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78);
  sub_23D8DE4E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  sub_23D8DD020();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  sub_23D8DD020();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EED78, &qword_23D8E2D88);
  swift_getTupleTypeMetadata3();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE410();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D8849D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23D884A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D884A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D884B20()
{
  v3 = *(v0 + 56);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  return sub_23D8DE330();
}

unint64_t sub_23D884B84()
{
  result = qword_27E2EEFB8;
  if (!qword_27E2EEFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEF80, &qword_23D8E30B8);
    sub_23D884C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFB8);
  }

  return result;
}

unint64_t sub_23D884C10()
{
  result = qword_27E2EEFC0;
  if (!qword_27E2EEFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEFB0, &qword_23D8E30E8);
    sub_23D884CC8();
    sub_23D835AD0(&qword_27E2EEFE8, &qword_27E2EEFF0, &unk_23D8E30F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFC0);
  }

  return result;
}

unint64_t sub_23D884CC8()
{
  result = qword_27E2EEFC8;
  if (!qword_27E2EEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEFA0, &qword_23D8E30D8);
    sub_23D884D80();
    sub_23D835AD0(&qword_27E2EEFE0, &qword_27E2EEFA8, &qword_23D8E30E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFC8);
  }

  return result;
}

unint64_t sub_23D884D80()
{
  result = qword_27E2EEFD0;
  if (!qword_27E2EEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEF98, &qword_23D8E30D0);
    sub_23D835AD0(&qword_27E2EEFD8, &qword_27E2EEF90, &qword_23D8E30C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFD0);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);
  swift_unknownObjectRelease();
  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

void sub_23D884E98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23D883D70(a1, v1 + 32);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D884EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23D8819A8(*(v0 + 32), *(v0 + 40));
}

unint64_t sub_23D884EEC()
{
  result = qword_27E2EF008;
  if (!qword_27E2EF008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EED78, &qword_23D8E2D88);
    sub_23D835AD0(&qword_27E2EF010, &qword_27E2EF018, &unk_23D8E3118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF008);
  }

  return result;
}

double sub_23D884FA4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D88330C(v1[4], a1);
}

unint64_t sub_23D884FB0()
{
  result = qword_27E2ED4F0;
  if (!qword_27E2ED4F0)
  {
    sub_23D8DD080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED4F0);
  }

  return result;
}

double sub_23D885020@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D8830E8(v1[4], a1);
}

id sub_23D885058()
{
  v1 = *(v0 + 40);
  if ([v1 isSpeaking])
  {
    v2 = sel_pauseButtonPressed;
    v3 = v1;
  }

  else
  {
    v2 = sel_playButtonPressedForBundleID_sceneID_rootAccessibilityElementIdentifier_;
    v3 = v1;
  }

  return [v3 v2];
}

double sub_23D8850DC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D882E8C(v1[4], a1);
}

double sub_23D8850F8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D8830E8(v1[4], a1);
}

double sub_23D885140@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_23D882C3C(v1[4], a1);
}

unint64_t sub_23D88514C()
{
  result = qword_27E2EF048;
  if (!qword_27E2EF048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF040, &qword_23D8E3170);
    sub_23D8851D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF048);
  }

  return result;
}

unint64_t sub_23D8851D8()
{
  result = qword_27E2EF050;
  if (!qword_27E2EF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF058, &qword_23D8E3178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF060, &qword_23D8E3180);
    sub_23D8852A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF050);
  }

  return result;
}

unint64_t sub_23D8852A0()
{
  result = qword_27E2EF068;
  if (!qword_27E2EF068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF060, &qword_23D8E3180);
    sub_23D885378(&qword_27E2EF070, &qword_27E2EF078, &qword_23D8E3188);
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF068);
  }

  return result;
}

uint64_t sub_23D885378(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23D8853E8()
{
  result = qword_27E2EF0A0;
  if (!qword_27E2EF0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
    sub_23D855C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF0A0);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23D8854DC(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_23D8821EC(a1, a2, v2 + 32);
}

uint64_t objectdestroy_54Tm()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23D88554C(uint64_t a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_23D87F2F4(a1, a2, v2 + 32);
}

uint64_t get_witness_table_22AccessibilityReadingUI15AXRUIObservableRzlqd0__05SwiftC04ViewHD3_AcDPACE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAC19_ConditionalContentVyAC08ModifiedL0VyALyAC5ImageVAC18_AspectRatioLayoutVGAC06_FrameQ0VGATG_SbQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_Ieg_SgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D885640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23D88569C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23D885728@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_23D8DD770();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_23D8DCCB0();
  v7 = *(v62 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v62);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C0, &qword_23D8E32E8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v56 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C8, &qword_23D8E32F0);
  v16 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v18 = v56 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0D0, &qword_23D8E32F8);
  v61 = *(v63 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v59 = v56 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0D8, &qword_23D8E3300);
  v21 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v23 = v56 - v22;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0E0, &qword_23D8E3308);
  v24 = *(*(v67 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v67);
  v57 = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v66 = v56 - v27;
  v28 = *a1;
  v70 = a1[1];
  v71 = v28;
  v29 = *(a1 + 4);
  v56[1] = *(a1 + 5);
  v30 = swift_allocObject();
  v31 = a1[1];
  v30[1] = *a1;
  v30[2] = v31;
  v30[3] = a1[2];
  sub_23D83C67C(&v71, v69, &qword_27E2EF0E8, &qword_23D8E3310);
  sub_23D83C67C(&v70, v69, &qword_27E2EF0F0, &qword_23D8E3318);
  sub_23D855A1C();

  sub_23D8DE360();
  v32 = sub_23D8DE230();
  v33 = sub_23D8DD9E0();
  v34 = &v15[*(v12 + 44)];
  *v34 = v32;
  v34[8] = v33;
  if (v29)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v35 = sub_23D8DEB80();
    v36 = sub_23D8DEB70();

    v37 = MEMORY[0x277CDF3D0];
    if ((v36 & 1) == 0)
    {
      v37 = MEMORY[0x277CDF3C0];
    }

    v38 = v62;
    (*(v7 + 104))(v10, *v37, v62);
    KeyPath = swift_getKeyPath();
    v40 = &v18[*(v58 + 36)];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v7 + 32))(v40 + *(v41 + 28), v10, v38);
    *v40 = KeyPath;
    sub_23D886460(v15, v18);
    sub_23D8DD760();
    sub_23D8864D0();
    sub_23D8868D4(&qword_27E2ED300, MEMORY[0x277CDE0B8]);
    v42 = v59;
    v43 = v65;
    sub_23D8DDD10();
    (*(v64 + 8))(v6, v43);
    sub_23D88666C(v18);
    v44 = &v23[*(v60 + 36)];
    v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCF0, &qword_23D8E1608) + 40)];
    sub_23D8DD0E0();
    *v44 = 0;
    (*(v61 + 32))(v23, v42, v63);
    sub_23D8866D4();
    v46 = v57;
    sub_23D8DDEE0();
    sub_23D83C6E4(v23, &qword_27E2EF0D8, &qword_23D8E3300);
    v47 = 0x800000023D8E6850;
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v48 = 0xD000000000000010;
    if (qword_27E2F3C80)
    {
      v49 = qword_27E2F3C80;
      v50 = sub_23D8DE830();
      v51 = sub_23D8DE830();
      v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

      v48 = sub_23D8DE870();
      v47 = v53;
    }

    v69[0] = v48;
    v69[1] = v47;
    sub_23D83CB18();
    v54 = v66;
    sub_23D8DCFD0();

    sub_23D83C6E4(v46, &qword_27E2EF0E0, &qword_23D8E3308);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC98, &qword_23D8E15E0);
    sub_23D886818();
    sub_23D835AD0(&qword_27E2EDCF8, &qword_27E2EDC98, &qword_23D8E15E0);
    sub_23D8DDF70();
    return sub_23D83C6E4(v54, &qword_27E2EF0E0, &qword_23D8E3308);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8868D4(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D885F74(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = v2;
    sub_23D8DC3D0();

    v4 = *a1;
    if (*a1 >= 2)
    {
      v5 = a1[1];
      v6 = sub_23D83BCD8(*a1);
      v4(v6);

      sub_23D88691C(v4);
    }
  }

  else
  {
    v7 = a1[3];
    sub_23D8DC430();
    sub_23D8868D4(&unk_27E2F0420, MEMORY[0x277CE7230]);
    sub_23D8DD120();
    __break(1u);
  }
}

__n128 sub_23D886060@<Q0>(__n128 *a1@<X8>)
{
  sub_23D8DC9F0();
  sub_23D8868D4(&qword_27E2ED238, MEMORY[0x277CE73F8]);
  v2 = sub_23D8DD140();
  v4 = v3;
  sub_23D8DE310();
  sub_23D8DE310();
  result = v6;
  *a1 = v6;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u16[4] = 1;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u8[0] = v6.n128_u8[0];
  a1[3].n128_u64[1] = v6.n128_u64[1];
  return result;
}

__n128 sub_23D886158@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_23D8DD560();
  sub_23D8861C4(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_23D8861C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D886368@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  *a1 = sub_23D8DD560();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0B0, &qword_23D8E32D8) + 44);
  *v4 = sub_23D8DD420();
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0B8, &qword_23D8E32E0);
  return sub_23D885728(v7, v4 + *(v5 + 44));
}

uint64_t sub_23D8863FC()
{
  if (*(v0 + 16) >= 2uLL)
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D886460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C0, &qword_23D8E32E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D8864D0()
{
  result = qword_27E2EF0F8;
  if (!qword_27E2EF0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0C8, &qword_23D8E32F0);
    sub_23D886588();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF0F8);
  }

  return result;
}

unint64_t sub_23D886588()
{
  result = qword_27E2EF100;
  if (!qword_27E2EF100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0C0, &qword_23D8E32E8);
    sub_23D835AD0(&qword_27E2EF108, &qword_27E2EF110, &unk_23D8E3358);
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF100);
  }

  return result;
}

uint64_t sub_23D88666C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C8, &qword_23D8E32F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D8866D4()
{
  result = qword_27E2EF118;
  if (!qword_27E2EF118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0D8, &qword_23D8E3300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0C8, &qword_23D8E32F0);
    sub_23D8DD770();
    sub_23D8864D0();
    sub_23D8868D4(&qword_27E2ED300, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EDCE8, &qword_27E2EDCF0, &qword_23D8E1608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF118);
  }

  return result;
}

unint64_t sub_23D886818()
{
  result = qword_27E2EF120;
  if (!qword_27E2EF120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0E0, &qword_23D8E3308);
    sub_23D8866D4();
    sub_23D8868D4(&qword_27E2ED4D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF120);
  }

  return result;
}

uint64_t sub_23D8868D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D88691C(uint64_t result)
{
  if (result != 1)
  {
    return sub_23D8797C4();
  }

  return result;
}

uint64_t sub_23D886984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D886AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRTextColorSelectionView()
{
  result = qword_27E2EF138;
  if (!qword_27E2EF138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D886C50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23D83C67C(v2, &v17 - v11, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCCB0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_23D886E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AXRTextColorSelectionView();
  sub_23D83C67C(v1 + *(v12 + 20), v11, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D8DCF90();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D8DEAB0();
    v16 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D887058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE618, &unk_23D8E3490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E23D0;
  *(inited + 32) = sub_23D8DE220();
  *(inited + 40) = sub_23D8DE1B0();
  *(inited + 48) = sub_23D8DE1C0();
  *(inited + 56) = sub_23D8DE1D0();
  *(inited + 64) = sub_23D8DE240();
  v5 = v0;
  v2 = sub_23D8A5668(sub_23D8890B4, &v4, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2 & 1;
}

uint64_t sub_23D887128(uint64_t *a1, uint64_t a2)
{
  v9 = *a1;
  sub_23D86C2EC();

  sub_23D8DE2A0();
  v3 = (a2 + *(type metadata accessor for AXRTextColorSelectionView() + 24));
  if (*v3)
  {
    v4 = *v3;

    sub_23D8DC960();

    v5 = sub_23D8DC810();

    if (!v5)
    {
      sub_23D8DE220();
    }

    sub_23D8DE2A0();
    v6 = sub_23D8DE180();

    return v6 & 1;
  }

  else
  {
    v8 = v3[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D887288@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D8, &unk_23D8E24C0);
  v3 = *(v34 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v34);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5E0, &unk_23D8E3410);
  v33 = *(v10 - 8);
  v11 = v33;
  v12 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5E8, &unk_23D8E24D0);
  sub_23D86BE68();
  v32 = v17;
  sub_23D8DE520();
  v36 = a1;
  type metadata accessor for AXRCustomizationColorButton();
  sub_23D86BF20(&qword_27E2EE608, type metadata accessor for AXRCustomizationColorButton);
  v18 = v9;
  v30 = v9;
  sub_23D8DE520();
  v19 = *(v11 + 16);
  v31 = v10;
  v19(v15, v17, v10);
  v20 = v3[2];
  v21 = v18;
  v22 = v34;
  v20(v7, v21, v34);
  v23 = v35;
  v19(v35, v15, v10);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE610, &qword_23D8E24E0);
  v25 = v7;
  v20(&v23[*(v24 + 48)], v7, v22);
  v26 = v3[1];
  v26(v30, v22);
  v27 = *(v33 + 8);
  v28 = v31;
  v27(v32, v31);
  v26(v25, v22);
  return (v27)(v15, v28);
}

uint64_t sub_23D8875D8(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextColorSelectionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE618, &unk_23D8E3490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D8E23D0;
  *(v5 + 32) = sub_23D8DE220();
  *(v5 + 40) = sub_23D8DE1B0();
  *(v5 + 48) = sub_23D8DE1C0();
  *(v5 + 56) = sub_23D8DE1D0();
  *(v5 + 64) = sub_23D8DE240();
  v9[1] = v5;
  swift_getKeyPath();
  sub_23D888D50(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23D888DB8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE628, &unk_23D8E2570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE600, &unk_23D8E3420);
  sub_23D835AD0(&qword_27E2EE630, &qword_27E2EE628, &unk_23D8E2570);
  sub_23D86C2EC();
  sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420);
  return sub_23D8DE4C0();
}

uint64_t sub_23D887818(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextColorSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v16 = *a1;
  v7 = v16;
  sub_23D86C2EC();

  v8 = sub_23D8DE2A0();
  sub_23D888D50(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23D888DB8(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  v14 = a2;
  v15 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
  sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0);
  sub_23D8DE360();
}

uint64_t sub_23D8879F4(uint64_t a1)
{
  v2 = sub_23D8DC510();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for AXRTextColorSelectionView() + 24));
  if (*v7)
  {
    v8 = *v7;

    sub_23D8DC960();

    sub_23D8DC820();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = v7[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D887B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D887C04(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_23D887C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  MEMORY[0x28223BE20](v7);
  v98 = &v89 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v10 = *(*(v97 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v97);
  v103 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v89 - v14;
  MEMORY[0x28223BE20](v13);
  v102 = &v89 - v15;
  v16 = sub_23D8DCCB0();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = *(v93 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v89 - v20;
  v21 = sub_23D8DCF90();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB40();
  v111 = sub_23D8DE130();
  sub_23D8DCD60();
  v26 = v158;
  v105 = v160;
  v106 = v159;
  v27 = v161;
  v104 = v162;
  v28 = v163;
  v29 = sub_23D8DE5F0();
  v109 = v30;
  v110 = v29;
  v31 = sub_23D8DE5F0();
  v107 = v32;
  v108 = v31;
  v113 = a1;

  v112 = a2;
  sub_23D886E50(v25);
  v33 = sub_23D8DCF80();
  v34 = *(v22 + 8);
  v34(v25, v21);
  if (v33)
  {
    v35 = [objc_opt_self() mainScreen];
    [v35 bounds];
  }

  sub_23D886E50(v25);
  v36 = sub_23D8DCF80();
  v34(v25, v21);
  if (v36)
  {
    v37 = [objc_opt_self() mainScreen];
    [v37 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v95 = sub_23D8DDA30();
  sub_23D8DCC20();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v156 = 0;
  v127 = sub_23D8DE1A0();
  v128 = v46;
  sub_23D83CB18();
  v90 = sub_23D8DDCB0();
  v48 = v47;
  v50 = v49;
  v92 = v51;
  v52 = v89;
  sub_23D886C50(v89);
  v53 = v93;
  v54 = v94;
  v55 = v91;
  (*(v93 + 104))(v91, *MEMORY[0x277CDF3C0], v94);
  v56 = sub_23D8DCCA0();
  v57 = *(v53 + 8);
  v57(v55, v54);
  v57(v52, v54);
  if (v56)
  {
    v58 = sub_23D8DE240();
  }

  else
  {
    v58 = sub_23D8DE220();
  }

  v59 = v98;
  v127 = v58;
  v60 = v90;
  v91 = sub_23D8DDC10();
  v94 = v61;
  v63 = v62;
  v65 = v64;
  sub_23D83CB6C(v60, v48, v50 & 1);

  v127 = sub_23D8DE2C0();
  sub_23D8DDF80();

  v66 = (v112 + *(type metadata accessor for AXRTextColorSelectionView() + 24));
  if (*v66)
  {
    v67 = *v66;

    sub_23D8DC960();

    v68 = sub_23D8DC810();

    v98 = v65;
    LODWORD(v93) = v63;
    v69 = v91;
    if (!v68)
    {
      v68 = sub_23D8DE220();
    }

    v127 = v68;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v70 = sub_23D8DE180();

    if (v70)
    {
      v71 = 1.0;
    }

    else
    {
      v71 = 0.0;
    }

    v72 = v96;
    (*(v100 + 32))(v96, v59, v101);
    *(v72 + *(v97 + 36)) = v71;
    v73 = v102;
    sub_23D86C79C(v72, v102);
    v114 = v153;
    v115 = v154;
    v116 = v155;
    v74 = v103;
    sub_23D86C80C(v73, v103);
    *&v117 = v113;
    WORD4(v117) = 256;
    *(&v117 + 10) = v166;
    HIWORD(v117) = v167;
    *&v118 = v26;
    *(&v118 + 1) = __PAIR64__(v105, v106);
    *&v119 = v27;
    *(&v119 + 1) = v104;
    *&v120 = v28;
    *(&v120 + 1) = v111;
    LOWORD(v121) = 256;
    *(&v121 + 2) = v164;
    WORD3(v121) = v165;
    *(&v121 + 1) = v110;
    *&v122 = v109;
    *(&v122 + 1) = v108;
    *&v123[0] = v107;
    *(v123 + 8) = v153;
    *(&v123[2] + 8) = v155;
    *(&v123[1] + 8) = v154;
    v75 = v95;
    BYTE8(v123[3]) = v95;
    *(&v123[3] + 9) = *v157;
    HIDWORD(v123[3]) = *&v157[3];
    *&v124 = v39;
    *(&v124 + 1) = v41;
    *&v125 = v43;
    *(&v125 + 1) = v45;
    v126 = 0;
    v76 = v123[3];
    v77 = v124;
    v78 = v125;
    *(a4 + 192) = 0;
    *(a4 + 160) = v77;
    *(a4 + 176) = v78;
    v79 = v117;
    v80 = v118;
    v81 = v120;
    *(a4 + 32) = v119;
    *(a4 + 48) = v81;
    v82 = v121;
    *a4 = v79;
    *(a4 + 16) = v80;
    v83 = v123[1];
    *(a4 + 128) = v123[2];
    *(a4 + 144) = v76;
    v84 = v122;
    *(a4 + 96) = v123[0];
    *(a4 + 112) = v83;
    *(a4 + 64) = v82;
    *(a4 + 80) = v84;
    v85 = v94;
    *(a4 + 200) = v69;
    *(a4 + 208) = v85;
    LOBYTE(v72) = v93 & 1;
    *(a4 + 216) = v93 & 1;
    *(a4 + 224) = v98;
    *(a4 + 232) = 0;
    *(a4 + 240) = 1;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v74, a4 + *(v86 + 80));
    sub_23D83C67C(&v117, &v127, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v69, v85, v72);

    sub_23D86C87C(v73);
    sub_23D86C87C(v74);
    sub_23D83CB6C(v69, v85, v72);

    v127 = v113;
    LOWORD(v128) = 256;
    *(&v128 + 2) = v166;
    HIWORD(v128) = v167;
    v129 = v26;
    v130 = v106;
    v131 = v105;
    v132 = v27;
    v133 = v104;
    v134 = v28;
    v135 = v111;
    v136 = 256;
    v137 = v164;
    v138 = v165;
    v139 = v110;
    v140 = v109;
    v141 = v108;
    v142 = v107;
    v143 = v114;
    v144 = v115;
    v145 = v116;
    v146 = v75;
    *v147 = *v157;
    *&v147[3] = *&v157[3];
    v148 = v39;
    v149 = v41;
    v150 = v43;
    v151 = v45;
    v152 = 0;
    return sub_23D86C8E4(&v127);
  }

  else
  {
    v88 = v66[1];
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}