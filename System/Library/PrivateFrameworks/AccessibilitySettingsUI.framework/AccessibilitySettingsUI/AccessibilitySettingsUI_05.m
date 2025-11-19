uint64_t sub_23D9A7210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31[1] = a3;
  v35 = a4;
  v34 = *(a2 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  v39 = MEMORY[0x277D837D0];
  v40 = v10;
  v41 = MEMORY[0x277D837E0];
  v11 = sub_23D9DA474();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - v13;
  v15 = sub_23D9D96C4();
  v33 = *(v15 - 8);
  v16 = *(v33 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v31 - v21;
  v23 = *(a1 + 40);
  (*(a1 + 32))(v20);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  v38 = v24;
  v39 = v25;
  sub_23D9DA154();
  (*(v34 + 8))(v8, a2);
  WitnessTable = swift_getWitnessTable();
  View.axSpecifier(_:)(v24, v25, v11, WitnessTable);
  (*(v32 + 8))(v14, v11);
  v27 = sub_23D91EAB8();
  v36 = WitnessTable;
  v37 = v27;
  v28 = swift_getWitnessTable();
  sub_23D91F510(v19, v15, v28);
  v29 = *(v33 + 8);
  v29(v19, v15);
  sub_23D91F510(v22, v15, v28);
  return (v29)(v22, v15);
}

uint64_t sub_23D9A753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v9 = type metadata accessor for AXSUISpecifierLink();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_23D9DA9F4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  sub_23D9DA9B4();
  v19 = sub_23D9DA9A4();
  v20 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  v23 = v26;
  *(v21 + 6) = a4;
  *(v21 + 7) = v23;
  (*(v10 + 32))(&v21[v20], v13, v9);
  sub_23D9BB718(0, 0, v17, &unk_23D9E1AC8, v21);
}

uint64_t sub_23D9A775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  sub_23D9DA9B4();
  v8[11] = sub_23D9DA9A4();
  v10 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9A77FC, v10, v9);
}

uint64_t sub_23D9A77FC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v3 = type metadata accessor for AXSUISpecifierLink();
  sub_23D9A6684(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23D9A7888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a8;
  v25 = a5;
  v26 = a6;
  v28 = a9;
  v29 = a11;
  v27 = a10;
  v34[0] = MEMORY[0x277D839B0];
  v34[1] = a10;
  v34[2] = MEMORY[0x277D839C0];
  v34[3] = a12;
  v17 = type metadata accessor for AXValueNavigationDestination();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v25 - v20);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();

  v23 = v25;
  v22 = v26;
  sub_23D9AE1F4(a4, v25, v26, a7 & 1);
  sub_23D9A8078(v34, a4, v23, v22, a7 & 1, MEMORY[0x277D839B0], v27, MEMORY[0x277D839C0], v21, a12);
  MEMORY[0x23EEF34C0](v21, v30, v17, v29);

  return (*(v18 + 8))(v21, v17);
}

void *AXSUISpecifierLink<>.init(id:axsuiLabelLocKey:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  return sub_23D9A642C(a1, a2, sub_23D9A85D8, v18, a5, a6, MEMORY[0x277CE0BD0], a7, a9, MEMORY[0x277CE0BC0], a8);
}

uint64_t sub_23D9A7B7C@<X0>(uint64_t a1@<X8>)
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

uint64_t AXSUISpecifierLink.init<>(id:navigationTitle:uiKitDestination:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v26 - v20;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v31 = 0;
  sub_23D9DA3A4();
  v22 = v28;
  *(a9 + 80) = v27;
  *(a9 + 88) = v22;
  v27 = a8;
  v28 = MEMORY[0x277CE1420];
  v29 = a10;
  v30 = MEMORY[0x277CE1418];
  v23 = *(type metadata accessor for AXSUISpecifierLink() + 68);
  v24 = sub_23D9D88A4();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  result = sub_23D9A86D4(v21);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a5;
  *(a9 + 56) = a3;
  *(a9 + 64) = v26;
  *(a9 + 72) = 1;
  return result;
}

uint64_t sub_23D9A7E48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_23D91F2DC(v2, &v16 - v11, &unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  v14 = *v12;
  sub_23D9DACD4();
  v15 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23D9A8028(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 16);
  sub_23D9DAD74();
  v3 = sub_23D9DA604();
  return MEMORY[0x23EEF3850](v3);
}

uint64_t sub_23D9A8078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v36 = a5;
  v35 = a4;
  v37 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - v18;
  v20 = sub_23D9DAD74();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v35 - v22;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  swift_storeEnumTagMultiPayload();
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a10;
  v24 = type metadata accessor for AXValueNavigationDestination();
  v25 = v24[15];
  (*(*(a6 - 8) + 56))(v23, 1, 1, a6);
  sub_23D9A85E0(v23);
  v26 = v24[16];
  v27 = sub_23D9D88A4();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  sub_23D9A86D4(v19);
  v28 = a9 + v24[17];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = a9 + v24[18];
  v42 = 0;
  sub_23D9DA3A4();
  v30 = v39;
  *v29 = v38;
  *(v29 + 1) = v30;
  v31 = a9 + v24[14];
  *v31 = a2;
  *(v31 + 1) = a3;
  *(v31 + 2) = v35;
  v31[24] = v36 & 1;
  v32 = v24[13];
  v33 = sub_23D9DA604();
  return (*(*(v33 - 8) + 32))(a9 + v32, v37, v33);
}

uint64_t sub_23D9A8330(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9A8344()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for AXSUISpecifierLink() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  type metadata accessor for AXSUISpecifierLink();
  return sub_23D9A65CC();
}

uint64_t sub_23D9A83E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[5];
  return sub_23D9A7210(v1[6], v1[2], v1[4], a1);
}

uint64_t objectdestroyTm_10()
{
  v12 = *(v0 + 16);
  v13 = *(v0 + 32);
  v1 = (type metadata accessor for AXSUISpecifierLink() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  sub_23D98504C(*v3, *(v3 + 8));
  v4 = *(v3 + 24);

  v5 = *(v3 + 40);

  sub_23D9A8330(*(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
  v6 = *(v3 + 88);

  v7 = v3 + v1[19];
  v8 = sub_23D9D88A4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8) + 28));

  return swift_deallocObject();
}

uint64_t sub_23D9A85A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23D9A85D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_23D9A7B7C(a1);
}

uint64_t sub_23D9A85E0(uint64_t a1)
{
  v2 = sub_23D9DAD74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  sub_23D9DA3A4();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23D9A86D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_23D91F2DC(a1, &v6 - v4, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  return sub_23D9AD698(a1);
}

uint64_t sub_23D9A8794(uint64_t a1)
{
  v1 = *(a1 + 60);
  v2 = *(a1 + 16);
  sub_23D9DAD74();
  sub_23D9DA3E4();
  return sub_23D9DA3D4();
}

void sub_23D9A87E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_23D9DAD74();
  sub_23D9DA604();

  JUMPOUT(0x23EEF3850);
}

uint64_t sub_23D9A8830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = *(a1 + 32);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v37 - v9;
  v10 = *(v8 + 16);
  v11 = sub_23D9DAD74();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23D9DAD74();
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  sub_23D9A87E4(a1);
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    (*(v37 + 8))(v15, v38);
    (*(v42 + 56))(v24, 1, 1, v4);
    v27 = *(a1 + 56);
  }

  else
  {
    (*(v16 + 32))(v19, v15, v10);
    v28 = v2 + *(a1 + 68);
    v29 = *(v28 + 8);
    v30 = v40;
    (*v28)(v19);
    (*(v16 + 8))(v19, v10);
    v27 = *(a1 + 56);
    v31 = v39;
    sub_23D91F510(v30, v4, v27);
    v32 = v42;
    v33 = *(v42 + 8);
    v33(v30, v4);
    sub_23D91F510(v31, v4, v27);
    v33(v31, v4);
    (*(v32 + 32))(v24, v30, v4);
    (*(v32 + 56))(v24, 0, 1, v4);
  }

  sub_23D995250(v24, v26);
  v34 = *(v41 + 8);
  v34(v24, v20);
  v44 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_23D91F510(v26, v20, WitnessTable);
  return (v34)(v26, v20);
}

uint64_t sub_23D9A8C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23D9DAD74();
  v8 = sub_23D9DA604();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AXValueNavigationDestination.WrapperView();
  v10 = (a4 + *(result + 68));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_23D9A8D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(a2 + 64);
  sub_23D91F2DC(a1, &v9 - v7, &unk_27E2F6A30, &qword_23D9E0BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
  sub_23D9DA3C4();
  return sub_23D9AD698(a1);
}

uint64_t sub_23D9A8E30(uint64_t a1)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 68));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_23D9DACD4();
    v11 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t sub_23D9A8F80(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  return v4;
}

uint64_t sub_23D9A8FE0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 72));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9A9048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a1;
  v72 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  *&v76 = v7 + 24;
  v74 = *(v7 + 16);
  *&v75 = v7 + 40;
  v8 = sub_23D9DAD74();
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  swift_getWitnessTable();
  v12 = sub_23D9D9C34();
  WitnessTable = swift_getWitnessTable();
  v59 = WitnessTable;
  v73 = *(a2 + 32);
  v87 = *(v73 + 8);
  v60 = v8;
  v58 = swift_getWitnessTable();
  v83 = v12;
  v84 = v8;
  v85 = WitnessTable;
  v86 = v58;
  v62 = MEMORY[0x277CE0E38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v56 = &v51 - v15;
  v65 = sub_23D9D96C4();
  v70 = *(v65 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v65);
  v57 = &v51 - v17;
  v69 = sub_23D9D96C4();
  v71 = *(v69 - 8);
  v18 = *(v71 + 64);
  v19 = MEMORY[0x28223BE20](v69);
  v63 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = &v51 - v21;
  v22 = v3;
  v78 = v3;
  sub_23D9A8028(a2);
  v23 = v5;
  v55 = *(v5 + 16);
  v77 = v5 + 16;
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55(v51, v22, a2);
  v54 = *(v5 + 80);
  v24 = (v54 + 48) & ~v54;
  v53 = v6;
  v25 = swift_allocObject();
  *&v27 = v73;
  *&v26 = v74;
  *(&v26 + 1) = *v76;
  *(&v27 + 1) = *v75;
  v75 = v27;
  v76 = v26;
  *(v25 + 16) = v26;
  *(v25 + 32) = v27;
  v28 = *(v23 + 32);
  v73 = v23 + 32;
  v74 = v28;
  v28(v25 + v24, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v52 = swift_checkMetadataState();
  v29 = v60;
  v30 = v59;
  v31 = v58;
  sub_23D9DA1E4();

  (*(v66 + 8))(v11, v29);
  v32 = v51;
  v33 = v55;
  v55(v51, v78, a2);
  v34 = swift_allocObject();
  v35 = v75;
  *(v34 + 16) = v76;
  *(v34 + 32) = v35;
  v74(v34 + v24, v32, a2);
  v83 = v52;
  v84 = v29;
  v85 = v30;
  v86 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v57;
  v38 = OpaqueTypeMetadata2;
  v39 = v56;
  sub_23D9D9FD4();

  (*(v64 + 8))(v39, v38);
  v33(v32, v78, a2);
  v40 = swift_allocObject();
  v41 = v75;
  *(v40 + 16) = v76;
  *(v40 + 32) = v41;
  v74(v40 + v24, v32, a2);
  v42 = MEMORY[0x277CE0788];
  v81 = OpaqueTypeConformance2;
  v82 = MEMORY[0x277CE0788];
  v43 = v65;
  v44 = swift_getWitnessTable();
  v45 = v63;
  sub_23D9DA1D4();

  (*(v70 + 8))(v37, v43);
  v79 = v44;
  v80 = v42;
  v46 = v69;
  v47 = swift_getWitnessTable();
  v48 = v67;
  sub_23D91F510(v45, v46, v47);
  v49 = *(v71 + 8);
  v49(v45, v46);
  sub_23D91F510(v48, v46, v47);
  return (v49)(v48, v46);
}

uint64_t sub_23D9A97D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_23D9D88A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23D9DAD74();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v23 = *(v19 + 16);
  v29 = a2;
  v23(&v29 - v21, a2, v18);
  v33 = a4;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v24 = type metadata accessor for AXValueNavigationDestination();
  sub_23D9AE108(v22, v24);
  (*(v19 + 8))(v22, v18);
  v25 = *(v24 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
  sub_23D9DA3B4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_23D9AD698(v12);
  }

  (*(v14 + 32))(v17, v12, v13);
  v27 = (*(*(a4 - 8) + 48))(v29, 1, a4);
  v28 = sub_23D9A8E30(v24);
  if (v27 == 1)
  {
    if (v28)
    {
      sub_23D95B350(v17);
LABEL_8:
    }
  }

  else if (v28)
  {
    sub_23D95B348(v17);
    goto LABEL_8;
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_23D9A9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v117 = a2;
  v118 = a3;
  v107 = a3;
  v108 = a4;
  v119 = a4;
  v120 = a5;
  v110 = a5;
  v7 = type metadata accessor for AXValueNavigationDestination();
  v97 = *(v7 - 8);
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v7);
  v96 = &v94 - v9;
  v112 = sub_23D9D88A4();
  v113 = *(v112 - 8);
  v10 = *(v113 + 64);
  v11 = MEMORY[0x28223BE20](v112);
  v101 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v94 - v13;
  v100 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  v14 = *(*(v100 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v100);
  v98 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v106 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v94 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v94 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v94 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v105 = &v94 - v31;
  MEMORY[0x28223BE20](v30);
  v103 = &v94 - v32;
  v33 = sub_23D9DAD74();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v94 - v36;
  sub_23D9A8FE0(1, v7);
  v38 = a1 + *(v7 + 56);
  v39 = *(v38 + 8);
  v111 = *v38;
  v40 = *(v38 + 16);
  if (*(v38 + 24) == 1)
  {
    v41 = v39;
    (*(*(a2 - 8) + 56))(v37, 1, 1, a2);
    sub_23D9AD700(v37, v7);
    (*(v34 + 8))(v37, v33);

    v42 = sub_23D9A8E30(v7);
    v43 = v40;
    v109 = a1;
    if (v42)
    {
      v44 = v42;
      v110 = v7;
      v45 = *(v7 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
      v46 = v105;
      sub_23D9DA3B4();
      sub_23D91F2DC(v46, v29, &unk_27E2F6A30, &qword_23D9E0BC0);
      v47 = v100;
      v48 = v98;
      v98[*(v100 + 20)] = 0;
      *(v48 + *(v47 + 24)) = v111;
      v49 = (v48 + *(v47 + 28));
      *v49 = v41;
      v49[1] = v43;
      sub_23D91F2DC(v29, v26, &unk_27E2F6A30, &qword_23D9E0BC0);
      v50 = v113;
      v51 = *(v113 + 48);
      v52 = v112;
      if (v51(v26, 1, v112) == 1)
      {
        v53 = v99;
        sub_23D9D8894();
        sub_23D9AD698(v29);
        if (v51(v26, 1, v52) != 1)
        {
          sub_23D9AD698(v26);
        }
      }

      else
      {
        sub_23D9AD698(v29);
        v53 = v99;
        (*(v50 + 32))(v99, v26, v52);
      }

      (*(v50 + 32))(v48, v53, v52);
      v90 = v102;
      sub_23D9AD7EC(v48, v102);
      v91 = *(v113 + 16);
      v92 = v101;
      v91(v101, v90, v52);
      v120 = v47;
      v121 = sub_23D9AE4C0(&qword_27E2F5650, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
      v93 = __swift_allocate_boxed_opaque_existential_1(&v117);
      sub_23D9AD850(v90, v93);
      swift_getKeyPath();
      v114 = v44;
      sub_23D9AE4C0(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
      sub_23D9D8A14();

      v114 = v44;
      swift_getKeyPath();
      sub_23D9D8A34();

      swift_beginAccess();
      sub_23D959568(&v117, v92);
      swift_endAccess();
      v114 = v44;
      swift_getKeyPath();
      v86 = v112;
      sub_23D9D8A24();

      sub_23D9AD698(v105);

      v88 = v103;
      v91(v103, v90, v86);
      v87 = v113;
      sub_23D9AD8BC(v90);
      v85 = 0;
      v7 = v110;
    }

    else
    {
      v85 = 1;
      sub_23D9A8330(v111, v41, v43, 1);
      v86 = v112;
      v87 = v113;
      v88 = v103;
    }

    (*(v87 + 56))(v88, v85, 1, v86);
    return sub_23D9A8D60(v88, v7);
  }

  else
  {
    v105 = *(v38 + 16);
    v54 = v39;

    v55 = sub_23D9A8E30(v7);
    v56 = v7;
    if (v55)
    {
      v57 = *(v7 + 64);
      v103 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
      sub_23D9DA3B4();
      v58 = v97;
      v59 = v96;
      (*(v97 + 16))(v96, a1, v7);
      v60 = (*(v58 + 80) + 48) & ~*(v58 + 80);
      v61 = swift_allocObject();
      v95 = a2;
      *(v61 + 2) = a2;
      v62 = v108;
      *(v61 + 3) = v107;
      *(v61 + 4) = v62;
      *(v61 + 5) = v110;
      (*(v58 + 32))(&v61[v60], v59, v56);
      v63 = &v61[(v8 + v60 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v63 = v111;
      *(v63 + 1) = v54;

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
      sub_23D9D96C4();
      v109 = a1;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
      sub_23D9D96C4();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F63E0, &qword_23D9E0688);
      sub_23D9D96C4();
      sub_23D9D96C4();
      type metadata accessor for AXNavigationSink(255);
      sub_23D9D96C4();
      v102 = v54;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
      v64 = sub_23D9D96C4();
      v65 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
      v133 = v110;
      v134 = v65;
      v66 = v56;
      WitnessTable = swift_getWitnessTable();
      v68 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
      v131 = WitnessTable;
      v132 = v68;
      v69 = swift_getWitnessTable();
      v70 = sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688);
      v129 = v69;
      v130 = v70;
      v71 = swift_getWitnessTable();
      v72 = sub_23D927AFC();
      v127 = v71;
      v128 = v72;
      v73 = swift_getWitnessTable();
      v74 = sub_23D9AE4C0(&qword_27E2F63D0, type metadata accessor for AXNavigationSink);
      v125 = v73;
      v126 = v74;
      v54 = v102;
      v75 = swift_getWitnessTable();
      v76 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
      v123 = v75;
      v124 = v76;
      v77 = swift_getWitnessTable();
      v117 = v95;
      v118 = v107;
      v119 = v64;
      v120 = v108;
      v121 = v110;
      v122 = v77;
      type metadata accessor for AXValueNavigationDestination.WrapperView();
      v78 = sub_23D9D96C4();
      v115 = swift_getWitnessTable();
      v116 = MEMORY[0x277CE0788];
      v79 = swift_getWitnessTable();
      v80 = v104;
      v81 = v106;
      v82 = v78;
      v56 = v66;
      v83 = v111;
      sub_23D95A874(v106, sub_23D9AD5A4, v61, v82, v79, v104);

      sub_23D9AD698(v81);
      v84 = 0;
    }

    else
    {
      v84 = 1;
      v83 = v111;
      v80 = v104;
    }

    (*(v113 + 56))(v80, v84, 1, v112);
    sub_23D9A8D60(v80, v56);
    return sub_23D9A8330(v83, v54, v105, 0);
  }
}

uint64_t sub_23D9AA7E8@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v68 = a6;
  v79 = a3;
  v72 = a2;
  v77 = a1;
  v73 = a8;
  v82 = a4;
  v83 = a5;
  v75 = a4;
  v67 = a5;
  v84 = a6;
  v85 = a7;
  v71 = type metadata accessor for AXValueNavigationDestination();
  v70 = *(v71 - 8);
  v78 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v55 - v9;
  sub_23D9DAD74();
  v10 = sub_23D9DA604();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F63E0, &qword_23D9E0688);
  sub_23D9D96C4();
  sub_23D9D96C4();
  type metadata accessor for AXNavigationSink(255);
  sub_23D9D96C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5830, &qword_23D9DEFA0);
  v13 = sub_23D9D96C4();
  v14 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
  v98 = a7;
  v99 = v14;
  v15 = MEMORY[0x277CDFAD0];
  WitnessTable = swift_getWitnessTable();
  v17 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
  v96 = WitnessTable;
  v97 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688);
  v94 = v18;
  v95 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23D927AFC();
  v92 = v20;
  v93 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23D9AE4C0(&qword_27E2F63D0, type metadata accessor for AXNavigationSink);
  v90 = v22;
  v91 = v23;
  v66 = v15;
  v24 = swift_getWitnessTable();
  v25 = sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
  v88 = v24;
  v89 = v25;
  v60 = v13;
  v58 = swift_getWitnessTable();
  v26 = v75;
  v27 = v67;
  v82 = v75;
  v83 = v67;
  v28 = v68;
  v84 = v13;
  v85 = v68;
  v57 = a7;
  v86 = a7;
  v87 = v58;
  v61 = type metadata accessor for AXValueNavigationDestination.WrapperView();
  v64 = *(v61 - 8);
  v29 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v74 = &v55 - v30;
  v63 = sub_23D9D96C4();
  v65 = *(v63 - 8);
  v31 = *(v65 + 64);
  v32 = MEMORY[0x28223BE20](v63);
  v59 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v62 = &v55 - v34;
  v35 = v71;
  v36 = v77;
  sub_23D9A8794(v71);
  v37 = v70;
  v38 = *(v70 + 16);
  v55 = v70 + 16;
  v56 = v38;
  v39 = v69;
  v38(v69, v36, v35);
  v40 = *(v37 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = v26;
  *(v41 + 3) = v27;
  v42 = v57;
  *(v41 + 4) = v28;
  *(v41 + 5) = v42;
  v43 = v42;
  v44 = v79;
  *(v41 + 6) = v72;
  *(v41 + 7) = v44;
  v72 = *(v37 + 32);
  v72(&v41[(v40 + 64) & ~v40], v39, v35);
  sub_23D9A8C84(v76, sub_23D9ADC34, v41, v74);
  v56(v39, v77, v35);
  v45 = swift_allocObject();
  *(v45 + 2) = v75;
  *(v45 + 3) = v27;
  *(v45 + 4) = v28;
  *(v45 + 5) = v43;
  v72(&v45[(v40 + 48) & ~v40], v39, v35);

  v46 = v61;
  v47 = swift_getWitnessTable();
  v48 = v59;
  v49 = v74;
  sub_23D9D9FD4();

  (*(v64 + 8))(v49, v46);
  v80 = v47;
  v81 = MEMORY[0x277CE0788];
  v50 = v63;
  v51 = swift_getWitnessTable();
  v52 = v62;
  sub_23D91F510(v48, v50, v51);
  v53 = *(v65 + 8);
  v53(v48, v50);
  sub_23D91F510(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_23D9AB000@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v62 = a7;
  v61 = a5;
  v59 = a3;
  v60 = a2;
  v77 = a9;
  v13 = sub_23D9D9954();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a6 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6738, &qword_23D9E0F78);
  v64 = sub_23D9D96C4();
  v67 = *(v64 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  v78 = v56 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6C00, &unk_23D9E0F80);
  v66 = sub_23D9D96C4();
  v72 = *(v66 - 8);
  v24 = *(v72 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = v56 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F63E0, &qword_23D9E0688);
  v71 = sub_23D9D96C4();
  v73 = *(v71 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  v65 = v56 - v27;
  v70 = sub_23D9D96C4();
  v74 = *(v70 - 8);
  v28 = *(v74 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = v56 - v29;
  type metadata accessor for AXNavigationSink(255);
  v30 = sub_23D9D96C4();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v68 = v56 - v33;
  v60(a1);
  swift_getKeyPath();
  v89[0] = v61;
  v89[1] = a6;
  v89[2] = v62;
  v89[3] = a8;
  type metadata accessor for AXValueNavigationDestination();
  v56[1] = a4;
  sub_23D9A7E48(v18);
  sub_23D9A016C();
  sub_23D9D9964();
  v34 = *(v14 + 8);
  v57 = v13;
  v34(v18, v13);
  v62 = v34;
  sub_23D9D9FC4();

  __swift_destroy_boxed_opaque_existential_0(v89);
  (*(v58 + 8))(v21, a6);
  swift_getKeyPath();
  sub_23D9A7E48(v18);
  sub_23D9589B0();
  sub_23D9D9964();
  v34(v18, v13);
  v35 = sub_23D91F01C(&qword_27E2F6740, &qword_27E2F6738, &qword_23D9E0F78);
  v87 = a8;
  v88 = v35;
  v36 = v64;
  WitnessTable = swift_getWitnessTable();
  v38 = v63;
  v39 = v78;
  sub_23D9D9FC4();

  (*(v67 + 8))(v39, v36);
  swift_getKeyPath();
  sub_23D9A7E48(v18);
  sub_23D985430();
  sub_23D9D9964();
  v62(v18, v57);
  v40 = v89[0];
  v41 = sub_23D91F01C(&unk_27E2F6C10, &unk_27E2F6C00, &unk_23D9E0F80);
  v85 = WitnessTable;
  v86 = v41;
  v42 = v66;
  v43 = swift_getWitnessTable();
  v44 = v65;
  sub_23D9D9FC4();

  (*(v72 + 8))(v38, v42);
  v45 = sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688);
  v83 = v43;
  v84 = v45;
  v46 = v71;
  v47 = swift_getWitnessTable();
  v48 = v69;
  View.axSettingsAppearance()(v46, v47);
  (*(v73 + 8))(v44, v46);
  v49 = sub_23D927AFC();
  v81 = v47;
  v82 = v49;
  v50 = v70;
  v51 = swift_getWitnessTable();
  v52 = v68;
  View.axNavigationSink()(v50, v51);
  (*(v74 + 8))(v48, v50);
  swift_getKeyPath();
  v89[0] = 0;
  v53 = sub_23D9AE4C0(&qword_27E2F63D0, type metadata accessor for AXNavigationSink);
  v79 = v51;
  v80 = v53;
  v54 = v75;
  swift_getWitnessTable();
  sub_23D9D9FC4();

  return (*(v76 + 8))(v52, v54);
}

uint64_t sub_23D9AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23D9DAD74();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_23D9D88A4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v22 = type metadata accessor for AXValueNavigationDestination();
  result = sub_23D9A8F80(v22);
  if (result)
  {
    v24 = *(v22 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
    sub_23D9DA3B4();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_23D9AD698(v16);
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      if (sub_23D9A8E30(v22))
      {
        sub_23D95B350(v21);
      }

      (*(v18 + 8))(v21, v17);
    }

    (*(*(a2 - 8) + 56))(v12, 1, 1, a2);
    sub_23D9AD700(v12, v22);
    return (*(v25 + 8))(v12, v26);
  }

  return result;
}

uint64_t View.axNavigationDestination<A>(isPresented:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a9;
  v25 = a4;
  v26 = a5;
  v32[0] = MEMORY[0x277D839B0];
  v32[1] = a7;
  v32[2] = MEMORY[0x277D839C0];
  v32[3] = a10;
  v27 = type metadata accessor for AXValueNavigationDestination();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = (&v25 - v18);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v21 = a8;
  v20[4] = a8;
  v20[5] = a10;
  v22 = v26;
  v20[6] = v25;
  v20[7] = v22;

  sub_23D9A8078(v32, sub_23D9AECE8, v20, 0, 0, MEMORY[0x277D839B0], a7, MEMORY[0x277D839C0], v19, a10);
  v23 = v27;
  MEMORY[0x23EEF34C0](v19, a6, v27, v21);

  return (*(v16 + 8))(v19, v23);
}

_BYTE *sub_23D9ABDEC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void sub_23D9ABE38(uint64_t a1)
{
  sub_23D9AD01C(319, &qword_27E2F6AC8, type metadata accessor for AXSUIPreferenceController);
  if (v2 <= 0x3F)
  {
    sub_23D95F334();
    if (v3 <= 0x3F)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 40);
      type metadata accessor for AXValueNavigationDestination.Destination();
      if (v4 <= 0x3F)
      {
        sub_23D9273D0();
        if (v5 <= 0x3F)
        {
          sub_23D9AD070(319, qword_27E2F6AE0, &unk_27E2F6A30, &qword_23D9E0BC0, MEMORY[0x277CE10B0]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23D9ABF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D9AC05C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23D9AC124(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[2];
  sub_23D9DA474();
  sub_23D9D96C4();
  swift_getWitnessTable();
  sub_23D91EAB8();
  swift_getWitnessTable();
  sub_23D9DA444();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getWitnessTable();
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0);
  swift_getOpaqueTypeMetadata2();
  sub_23D9D96C4();
  type metadata accessor for AXValueNavigationDestination();
  sub_23D9D96C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AC368(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  type metadata accessor for AXValueNavigationDestination();
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AC40C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v4 = a1[1];
  v5 = a1[3];
  type metadata accessor for AXValueNavigationDestination();
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AC4BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D9AC504(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23D9AC54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_23D9AC5A0(uint64_t a1)
{
  sub_23D9AD01C(319, &qword_27E2F67D0, MEMORY[0x277CE0048]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_23D9DAD74();
    sub_23D9DA604();
    if (v4 <= 0x3F)
    {
      v10 = *(a1 + 24);
      v11 = *(a1 + 40);
      type metadata accessor for AXValueNavigationDestination.Destination();
      if (v5 <= 0x3F)
      {
        sub_23D9DA3E4();
        if (v6 <= 0x3F)
        {
          sub_23D9AD070(319, qword_27E2F6AE0, &unk_27E2F6A30, &qword_23D9E0BC0, MEMORY[0x277CE10B0]);
          if (v7 <= 0x3F)
          {
            sub_23D9AD070(319, &qword_27E2F5770, &qword_27E2F5778, qword_23D9E1970, MEMORY[0x277CDF470]);
            if (v8 <= 0x3F)
            {
              sub_23D9273D0();
              if (v9 <= 0x3F)
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

uint64_t sub_23D9AC74C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23D9D9954() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v11;
  }

  v46 = v13;
  v14 = *(sub_23D9D88A4() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 80);
  if (v10)
  {
    v20 = *(v9 + 64);
  }

  else
  {
    v20 = *(v9 + 64) + 1;
  }

  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v16)
  {
    v23 = 7;
  }

  else
  {
    v23 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = v19 | 7;
  v25 = v7 + (v19 | 7) + 1;
  v26 = ((v19 + 16) & ~v19) + v20;
  v27 = (v19 | 7) + 25;
  v28 = v20 + 7;
  v29 = v21 & 0xF8 | 7;
  v30 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 8;
  if (v18 < a2)
  {
    v31 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + ((v30 + ((v27 + ((v26 + (v25 & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & ~v29) + 40;
    v22 = v31 & 0xFFFFFFF8;
    if ((v31 & 0xFFFFFFF8) != 0)
    {
      v32 = 2;
    }

    else
    {
      v32 = a2 - v18 + 1;
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

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v35 = *(a1 + v31);
        if (!v35)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v35 = *(a1 + v31);
        if (!v35)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (!v34)
      {
        goto LABEL_48;
      }

      v35 = *(a1 + v31);
      if (!v35)
      {
        goto LABEL_48;
      }
    }

    v37 = v35 - 1;
    if (v22)
    {
      v37 = 0;
      v38 = *a1;
    }

    else
    {
      v38 = 0;
    }

    return v18 + (v38 | v37) + 1;
  }

LABEL_48:
  v39 = ~v24;
  v40 = (a1 + v25) & v39;
  if (v17 <= v12)
  {
    v43 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) == 0)
    {
      v44 = *v43;
      if (v44 >= 0xFFFFFFFF)
      {
        LODWORD(v44) = -1;
      }

      return (v44 + 1);
    }

    v42 = (*(v9 + 48))((v43 + v19 + 8) & ~v19, v10, v8, v22);
LABEL_58:
    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }

  v41 = (v27 + ((v26 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) & v39;
  if (v46 != v18)
  {
    v42 = (*(v15 + 48))((v30 + v41) & ~v29);
    goto LABEL_58;
  }

  if (v11 >= 0x7FFFFFFE)
  {
    v42 = (*(v9 + 48))(v41, v10, v8, v22);
    goto LABEL_58;
  }

  v45 = *((v28 + v41) & 0xFFFFFFFFFFFFFFF8);
  if (v45 >= 0xFFFFFFFF)
  {
    LODWORD(v45) = -1;
  }

  if ((v45 + 1) >= 2)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

void sub_23D9ACAB0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(sub_23D9D9954() - 8) + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v53 = *(a4 + 16);
  v9 = *(v53 - 8);
  v56 = v9;
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v11;
  }

  v54 = v13;
  v14 = 0;
  v15 = *(sub_23D9D88A4() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = v19;
  }

  if (v10)
  {
    v21 = *(v9 + 64);
  }

  else
  {
    v21 = *(v9 + 64) + 1;
  }

  v22 = *(v9 + 80);
  v23 = v22 | 7;
  v24 = v8 + (v22 | 7) + 1;
  v25 = ((v22 + 16) & ~v22) + v21;
  v26 = (v22 | 7) + 25;
  v27 = *(v15 + 80) & 0xF8 | 7;
  v28 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + v27 + 8;
  v29 = *(v15 + 64);
  if (!v17)
  {
    ++v29;
  }

  v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~(v22 | 7))) & ~v27) + 40;
  if (v20 < a3)
  {
    if (((v29 + 7) & 0xFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFF8)) & ~(v22 | 7))) & ~(*(v15 + 80) & 0xF8 | 7)) == -40)
    {
      v31 = a3 - v20 + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v14 = v32;
    }

    else
    {
      v14 = 0;
    }
  }

  v33 = a2;
  if (a2 > v20)
  {
    if (((v29 + 7) & 0xFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFF8)) & ~(v22 | 7))) & ~v27) == -40)
    {
      v34 = a2 - v20;
    }

    else
    {
      v34 = 1;
    }

    if (((v29 + 7) & 0xFFFFFFF8) + ((v28 + ((v26 + ((v25 + (v24 & ~(v22 | 7)) + 7) & 0xFFFFFFF8)) & ~(v22 | 7))) & ~v27) != -40)
    {
      v35 = ~v20 + a2;
      bzero(a1, v30);
      *a1 = v35;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v30) = v34;
      }

      else
      {
        *(a1 + v30) = v34;
      }
    }

    else if (v14)
    {
      *(a1 + v30) = v34;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *(a1 + v30) = 0;
  }

  else if (v14)
  {
    *(a1 + v30) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  v36 = (a1 + v24) & ~v23;
  if (v18 > v12)
  {
    v36 = (v26 + ((v25 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
    if (v54 != v20)
    {
      v42 = (v28 + v36) & ~v27;
      if (v19 >= v33)
      {
        if (v18 >= v33)
        {
          v52 = *(v16 + 56);

          v52((v28 + v36) & ~v27, v33 + 1);
        }

        else
        {
          if (v29 <= 3)
          {
            v48 = ~(-1 << (8 * v29));
          }

          else
          {
            v48 = -1;
          }

          if (v29)
          {
            v49 = v48 & (~v18 + v33);
            if (v29 <= 3)
            {
              v50 = v29;
            }

            else
            {
              v50 = 4;
            }

            bzero(((v28 + v36) & ~v27), v29);
            if (v50 > 2)
            {
              if (v50 == 3)
              {
                *v42 = v49;
                *(v42 + 2) = BYTE2(v49);
              }

              else
              {
                *v42 = v49;
              }
            }

            else if (v50 == 1)
            {
              *v42 = v49;
            }

            else
            {
              *v42 = v49;
            }
          }
        }
      }

      else
      {
        v43 = (v29 + 7) & 0xFFFFFFF8;
        if (v43 != -8)
        {
          v44 = ~v19 + v33;
          bzero(((v28 + v36) & ~v27), (v43 + 8));
          *v42 = v44;
        }
      }

      return;
    }

    if (v11 < 0x7FFFFFFE)
    {
      v47 = ((v21 + 7 + v36) & 0xFFFFFFFFFFFFFFF8);
      if (v33 > 0x7FFFFFFE)
      {
        *v47 = 0;
        *v47 = v33 - 0x7FFFFFFF;
      }

      else
      {
        *v47 = v33;
      }

      return;
    }

    if (v11 < v33)
    {
      goto LABEL_61;
    }

    goto LABEL_107;
  }

  if (v12 >= v33)
  {
    v45 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v11 & 0x80000000) == 0)
    {
      if ((v33 & 0x80000000) != 0)
      {
        v46 = v33 & 0x7FFFFFFF;
      }

      else
      {
        v46 = v33 - 1;
      }

      *v45 = v46;
      return;
    }

    v36 = (v45 + v22 + 8) & ~v22;
    if (v11 < v33)
    {
LABEL_61:
      if (v21 <= 3)
      {
        v37 = ~(-1 << (8 * v21));
      }

      else
      {
        v37 = -1;
      }

      if (v21)
      {
        v38 = v37 & (~v11 + v33);
        if (v21 <= 3)
        {
          v39 = v21;
        }

        else
        {
          v39 = 4;
        }

        v40 = v36;
LABEL_78:
        bzero(v40, v21);
        if (v39 > 2)
        {
          if (v39 == 3)
          {
            *v36 = v38;
            *(v36 + 2) = BYTE2(v38);
          }

          else
          {
            *v36 = v38;
          }
        }

        else if (v39 == 1)
        {
          *v36 = v38;
        }

        else
        {
          *v36 = v38;
        }

        return;
      }

      return;
    }

LABEL_107:
    v51 = *(v56 + 56);

    v51(v36, v33 + 1, v10, v53);
    return;
  }

  if (v25 <= 3)
  {
    v41 = ~(-1 << (8 * v25));
  }

  else
  {
    v41 = -1;
  }

  if (v25)
  {
    v38 = v41 & (~v12 + v33);
    if (v25 <= 3)
    {
      v39 = ((v22 + 16) & ~v22) + v21;
    }

    else
    {
      v39 = 4;
    }

    v40 = ((a1 + v24) & ~v23);
    v21 += (v22 + 16) & ~v22;
    goto LABEL_78;
  }
}

void sub_23D9AD01C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D9AD070(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D9AD0F0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AXValueNavigationDestination() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_23D9A97D8(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_23D9AD1AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for AXValueNavigationDestination() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = type metadata accessor for AXValueNavigationDestination();
  return sub_23D9A8FE0(0, v7);
}

uint64_t sub_23D9AD27C()
{
  v23 = *(v0 + 16);
  v27 = *(v0 + 32);
  v1 = type metadata accessor for AXValueNavigationDestination();
  v26 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v25 = (v26 + 48) & ~v26;
  v2 = (v0 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_23D9D9954();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
    v4 = *v2;
  }

  v5 = v2 + v1[13];
  v6 = *v5;

  v7 = *(v5 + 1);

  sub_23D9DAD74();
  v8 = *(sub_23D9DA604() + 32);
  v9 = *(v23 - 8);
  v10 = *(v9 + 48);
  if (!v10(&v5[v8], 1, v23))
  {
    (*(v9 + 8))(&v5[v8], v23);
  }

  sub_23D9A8330(*(v2 + v1[14]), *(v2 + v1[14] + 8), *(v2 + v1[14] + 16), *(v2 + v1[14] + 24));
  v11 = v2 + v1[15];
  if (!v10(v11, 1, v23))
  {
    (*(v9 + 8))(v11, v23);
  }

  v12 = *&v11[*(sub_23D9DA3E4() + 28)];

  v13 = v2 + v1[16];
  v14 = sub_23D9D88A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8) + 28)];

  v17 = v2 + v1[17];
  v18 = *v17;
  v19 = v17[8];
  j__swift_release();
  v20 = *(v2 + v1[18] + 8);

  v21 = *(v0 + ((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_23D9AD5A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for AXValueNavigationDestination() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 1);

  return sub_23D9AA7E8(v1 + v8, v10, v11, v3, v4, v5, v6, a1);
}

uint64_t sub_23D9AD698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9AD700(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_23D9DAD74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(a2 + 52);
  (*(v9 + 16))(&v11 - v7, a1, v5);
  sub_23D9DA604();
  return sub_23D9DA564();
}

uint64_t sub_23D9AD7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9AD850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9AD8BC(uint64_t a1)
{
  v2 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9AD918()
{
  v23 = *(v0 + 16);
  v26 = *(v0 + 32);
  v1 = type metadata accessor for AXValueNavigationDestination();
  v25 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 56);

  v3 = (v0 + ((v25 + 64) & ~v25));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9954();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
    v5 = *v3;
  }

  v6 = v3 + v1[13];
  v7 = *v6;

  v8 = *(v6 + 1);

  sub_23D9DAD74();
  v9 = *(sub_23D9DA604() + 32);
  v10 = *(v23 - 8);
  v11 = *(v10 + 48);
  if (!v11(&v6[v9], 1, v23))
  {
    (*(v10 + 8))(&v6[v9], v23);
  }

  sub_23D9A8330(*(v3 + v1[14]), *(v3 + v1[14] + 8), *(v3 + v1[14] + 16), *(v3 + v1[14] + 24));
  v12 = v3 + v1[15];
  if (!v11(v12, 1, v23))
  {
    (*(v10 + 8))(v12, v23);
  }

  v13 = *&v12[*(sub_23D9DA3E4() + 28)];

  v14 = v3 + v1[16];
  v15 = sub_23D9D88A4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8) + 28)];

  v18 = v3 + v1[17];
  v19 = *v18;
  v20 = v18[8];
  j__swift_release();
  v21 = *(v3 + v1[18] + 8);

  return swift_deallocObject();
}

uint64_t sub_23D9ADC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AXValueNavigationDestination() - 8);
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_23D9AB000(a1, v10, v11, v12, v5, v6, v7, v8, a2);
}

uint64_t objectdestroy_28Tm()
{
  v22 = *(v0 + 16);
  v25 = *(v0 + 32);
  v1 = type metadata accessor for AXValueNavigationDestination();
  v24 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((v24 + 48) & ~v24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_23D9D9954();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
    v4 = *v2;
  }

  v5 = v2 + v1[13];
  v6 = *v5;

  v7 = *(v5 + 1);

  sub_23D9DAD74();
  v8 = *(sub_23D9DA604() + 32);
  v9 = *(v22 - 8);
  v10 = *(v9 + 48);
  if (!v10(&v5[v8], 1, v22))
  {
    (*(v9 + 8))(&v5[v8], v22);
  }

  sub_23D9A8330(*(v2 + v1[14]), *(v2 + v1[14] + 8), *(v2 + v1[14] + 16), *(v2 + v1[14] + 24));
  v11 = v2 + v1[15];
  if (!v10(v11, 1, v22))
  {
    (*(v9 + 8))(v11, v22);
  }

  v12 = *&v11[*(sub_23D9DA3E4() + 28)];

  v13 = v2 + v1[16];
  v14 = sub_23D9D88A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8) + 28)];

  v17 = v2 + v1[17];
  v18 = *v17;
  v19 = v17[8];
  j__swift_release();
  v20 = *(v2 + v1[18] + 8);

  return swift_deallocObject();
}

uint64_t sub_23D9AE030(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v11[0] = v2[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(a1(0, v11) - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a2(v8, v3, v4, v5, v6);
}

uint64_t sub_23D9AE108(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_23D9DAD74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(a2 + 60);
  (*(v9 + 16))(&v11 - v7, a1, v5);
  sub_23D9DA3E4();
  return sub_23D9DA3C4();
}

uint64_t sub_23D9AE1F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9AE208()
{
  v13 = *(v0 + 32);
  v14 = *(v0 + 48);
  v1 = (type metadata accessor for AXSUISpecifierLink() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_23D98504C(*(v0 + v2), *(v0 + v2 + 8));
  v5 = *(v0 + v2 + 24);

  v6 = *(v0 + v2 + 40);

  sub_23D9A8330(*(v0 + v2 + 48), *(v0 + v2 + 56), *(v0 + v2 + 64), *(v0 + v2 + 72));
  v7 = *(v0 + v2 + 88);

  v8 = v0 + v2 + v1[19];
  v9 = sub_23D9D88A4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8) + 28));

  return swift_deallocObject();
}

uint64_t sub_23D9AE390(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for AXSUISpecifierLink() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_23D9A057C;

  return sub_23D9A775C(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_23D9AE4C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9AE508(void *a1)
{
  v2 = *(v1 + 48);
  if (*(v2 + 16) == *a1 && *(v2 + 24) == a1[1])
  {
    return 1;
  }

  else
  {
    return sub_23D9DAFC4() & 1;
  }
}

uint64_t sub_23D9AE558(void *a1)
{
  v2 = *(v1 + 48);
  if (*a1 == *(v2 + 16) && a1[1] == *(v2 + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_23D9DAFC4() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23D9AE5B4()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_23D9AE5EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

unint64_t sub_23D9AE614(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_23D9DAD74();
  result = sub_23D9DA604();
  if (v3 <= 0x3F)
  {
    result = sub_23D95F334();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D9AE6A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_23D9AE830(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_23D9AEA98(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for AXValueNavigationDestination();
  swift_getWitnessTable();
  sub_23D9D9C34();
  sub_23D9DAD74();
  swift_getWitnessTable();
  v4 = *(v3 + 8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D9D96C4();
  sub_23D9D96C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23D9AEC44(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9AEC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  sub_23D9DAD74();
  return swift_getWitnessTable();
}

uint64_t EnvironmentValues.speechViewContext.getter()
{
  sub_23D91F3A4();

  return sub_23D9D9964();
}

uint64_t EnvironmentValues.speechViewContext.setter(char *a1)
{
  v2 = *a1;
  sub_23D91F3A4();
  return sub_23D9D9974();
}

uint64_t EnvironmentValues.voiceResolver.getter()
{
  sub_23D9589B0();
  sub_23D9D9964();
  return v1;
}

uint64_t EnvironmentValues.boundLanguage.getter()
{
  sub_23D9AEE6C();

  return sub_23D9D9964();
}

unint64_t sub_23D9AEE6C()
{
  result = qword_27E2F6D00;
  if (!qword_27E2F6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D00);
  }

  return result;
}

uint64_t sub_23D9AEF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_23D93C220(a1, &v10 - v7);
  sub_23D93C220(v8, v6);
  sub_23D9AEE6C();
  sub_23D9D9974();
  return sub_23D9AF084(v8);
}

uint64_t EnvironmentValues.boundLanguage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D93C220(a1, &v6 - v4);
  sub_23D9AEE6C();
  sub_23D9D9974();
  return sub_23D9AF084(a1);
}

uint64_t sub_23D9AF084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.voiceFetcher.getter()
{
  sub_23D9A016C();

  return sub_23D9D9964();
}

uint64_t EnvironmentValues.voiceFetcher.setter(uint64_t *a1)
{
  sub_23D960024(a1, v3);
  sub_23D9A016C();
  sub_23D9D9974();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AXSUIVoiceOverSpeechViewContext.hashValue.getter()
{
  v1 = *v0;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](v1);
  return sub_23D9DB064();
}

uint64_t sub_23D9AF214()
{
  v1 = *v0;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](v1);
  return sub_23D9DB064();
}

uint64_t sub_23D9AF288()
{
  v1 = *v0;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](v1);
  return sub_23D9DB064();
}

uint64_t sub_23D9AF2CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D9D8C54();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_23D9D9104();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D70788]);
  v8 = sub_23D9D8CB4();
  v9 = sub_23D9D8CA4();
  v14[4] = v8;
  v14[5] = MEMORY[0x277D70368];
  v14[1] = v9;
  v14[0] = MEMORY[0x277D84F90];
  sub_23D9B0480(&qword_27E2F6890, MEMORY[0x277D702B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6898, &qword_23D9E1110);
  sub_23D91F01C(&qword_27E2F68A0, &qword_27E2F6898, &qword_23D9E1110);
  sub_23D9DADD4();
  v10 = sub_23D9D9124();
  v11 = objc_allocWithZone(v10);
  result = sub_23D9D9114();
  v13 = MEMORY[0x277D707A0];
  a1[3] = v10;
  a1[4] = v13;
  *a1 = result;
  return result;
}

uint64_t sub_23D9AF50C()
{
  v0 = sub_23D9D8C54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-1] - v6;
  v8 = sub_23D9D8EF4();
  v15[3] = v8;
  v15[4] = sub_23D9B0480(&qword_27E2F6D18, MEMORY[0x277CE67D8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE67C8], v8);
  LOBYTE(v8) = sub_23D9D8A64();
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    sub_23D9D8C64();
    sub_23D9D8C44();
    sub_23D9B0480(&qword_27E2F6890, MEMORY[0x277D702B8]);
    v11 = sub_23D9DADB4();
    v12 = *(v1 + 8);
    v12(v5, v0);
    v12(v7, v0);
    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

void (*EnvironmentValues.voiceFetcher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_23D9A016C();
  sub_23D9D9964();
  return sub_23D9AF7A8;
}

void sub_23D9AF7A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  if (a2)
  {
    sub_23D960024(*a1, (v2 + 5));
    sub_23D960024((v2 + 5), (v2 + 10));
    sub_23D9D9974();
    __swift_destroy_boxed_opaque_existential_0(v2 + 5);
  }

  else
  {
    sub_23D960024(*a1, (v2 + 5));
    sub_23D9D9974();
  }

  __swift_destroy_boxed_opaque_existential_0(v2);

  free(v2);
}

uint64_t sub_23D9AF858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9B01B4();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.voiceResolver.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_23D9589B0();
  sub_23D9D9964();
  return sub_23D9AF8E0;
}

uint64_t sub_23D9AF8E0(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_23D9D9974();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_23D9D9974();
  }
}

uint64_t sub_23D9AF974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D9AFF48();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.speechViewContext.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_23D91F3A4();
  sub_23D9D9964();
  return sub_23D9AFA38;
}

uint64_t sub_23D9AFA38(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_23D9D9974();
}

uint64_t sub_23D9AFA70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D9D8954();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_23D9AFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D9B03CC();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.boundLanguage.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_23D9AEE6C();
  sub_23D9D9964();
  return sub_23D9AFC58;
}

void sub_23D9AFC58(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_23D93C220((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_23D93C220(v3[2], v3[1]);
    sub_23D9D9974();
    sub_23D9AF084(v7);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_23D9D9974();
  }

  sub_23D9AF084(v4);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t View.voiceFetcher(_:)()
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

uint64_t View.voiceResolver(_:)()
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

uint64_t View.speechViewContext(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_23D9D9FC4();
}

uint64_t View.boundLanguage(_:)()
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

unint64_t sub_23D9AFF48()
{
  result = qword_27E2F6D08;
  if (!qword_27E2F6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXSUIVoiceOverSpeechViewContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy024TextToSpeechVoiceBankingB00M15PickableFetcher_pGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_23D9D96C4();
  sub_23D91F01C(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_23D9B01B4()
{
  v0 = sub_23D9D8AC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D8C54();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_23D9D8AE4();
  v11 = MEMORY[0x277D84F90];
  sub_23D9B0480(&qword_27E2F6890, MEMORY[0x277D702B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6898, &qword_23D9E1110);
  sub_23D91F01C(&qword_27E2F68A0, &qword_27E2F6898, &qword_23D9E1110);
  sub_23D9DADD4();
  v7 = sub_23D9D8CB4();
  v8 = sub_23D9D8CA4();
  v12 = v7;
  v13 = MEMORY[0x277D70368];
  v11 = v8;
  (*(v1 + 104))(v4, *MEMORY[0x277D700F8], v0);
  return sub_23D9D8A94();
}

unint64_t sub_23D9B03CC()
{
  result = qword_27E2F6D10;
  if (!qword_27E2F6D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4210, &qword_23D9DBE60);
    sub_23D9B0480(&qword_27E2F4730, MEMORY[0x277CC9640]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D10);
  }

  return result;
}

uint64_t sub_23D9B0480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9B04E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t AXSUIVoiceSettings.init(selection:preferredLocale:enabledSettings:languages:userDefinedName:voiceName:extraContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = *a3;
  v20 = type metadata accessor for AXSUIVoiceSettings();
  v21 = a9 + v20[7];
  sub_23D9DA3A4();
  *v21 = v40;
  *(v21 + 8) = *(&v40 + 1);
  v22 = a9 + v20[8];
  sub_23D9D9C64();
  v23 = v20[10];
  v24 = sub_23D9D89C4();
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = a9 + v20[13];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v20[14];
  sub_23D9DA3A4();
  *v26 = v40;
  *(v26 + 8) = *(&v40 + 1);
  v27 = v20[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(a9 + v27) = v40;
  sub_23D91F2DC(a1, a9, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(a2, a9 + v23);
  *(a9 + v20[11]) = v19;
  v28 = (a9 + v20[5]);
  *v28 = a4;
  v28[1] = a5;
  v28[2] = a6;
  v29 = (a9 + v20[9]);
  *v29 = a14;
  v29[1] = a15;
  if (a8)
  {
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(a1, &qword_27E2F4760, &qword_23D9E0740);
    v33 = a7;
  }

  else
  {
    sub_23D9DA5A4();
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(a1, &qword_27E2F4760, &qword_23D9E0740);
    a8 = *(&v40 + 1);
    v33 = v40;
    a10 = v41;
    a11 = v42;
  }

  v34 = (a9 + v20[12]);
  v35 = (a9 + v20[6]);
  *v35 = v33;
  v35[1] = a8;
  v35[2] = a10;
  v35[3] = a11;
  *v34 = a12;
  v34[1] = a13;
  return result;
}

{
  v55 = a5;
  v56 = a6;
  v58 = a12;
  v59 = a13;
  v53 = a15;
  v54 = a4;
  v51 = a7;
  v52 = a14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v50 - v26;
  v28 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  v57 = a1;
  sub_23D9DA4E4();
  sub_23D91F2DC(a2, v23, &qword_27E2F4670, &qword_23D9DC650);
  v29 = type metadata accessor for AXSUIVoiceSettings();
  v30 = a9 + v29[7];
  LOBYTE(v60) = 0;
  sub_23D9DA3A4();
  v31 = *(&v62 + 1);
  *v30 = v62;
  *(v30 + 8) = v31;
  v32 = a9 + v29[8];
  sub_23D9D9C64();
  v33 = v29[10];
  v34 = sub_23D9D89C4();
  (*(*(v34 - 8) + 56))(a9 + v33, 1, 1, v34);
  v35 = a9 + v29[13];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v29[14];
  LOBYTE(v60) = 0;
  sub_23D9DA3A4();
  v37 = *(&v62 + 1);
  *v36 = v62;
  *(v36 + 8) = v37;
  v38 = v29[15];
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(a9 + v38) = v62;
  sub_23D91F2DC(v27, a9, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v23, a9 + v33);
  *(a9 + v29[11]) = v28;
  v39 = (a9 + v29[5]);
  v40 = v55;
  *v39 = v54;
  v39[1] = v40;
  v39[2] = v56;
  v41 = (a9 + v29[9]);
  v42 = v53;
  *v41 = v52;
  v41[1] = v42;
  if (a8)
  {
    v44 = a11;
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v57, &qword_27E2F6658, &qword_23D9E1E80);
    sub_23D91F344(v23, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v27, &qword_27E2F4760, &qword_23D9E0740);
    v64 = a11;
    v46 = v51;
  }

  else
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_23D9DA5A4();
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v57, &qword_27E2F6658, &qword_23D9E1E80);
    sub_23D91F344(v23, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v27, &qword_27E2F4760, &qword_23D9E0740);
    a8 = *(&v62 + 1);
    v46 = v62;
    a10 = v63;
    v44 = v64;
  }

  v47 = (a9 + v29[12]);
  v48 = (a9 + v29[6]);
  *v48 = v46;
  v48[1] = a8;
  v48[2] = a10;
  v48[3] = v44;
  v49 = v59;
  *v47 = v58;
  v47[1] = v49;
  return result;
}

uint64_t type metadata accessor for AXSUIVoiceSettings()
{
  result = qword_27E2F6E00;
  if (!qword_27E2F6E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D9B0828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D8D84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D9B0854(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D9D8D94();
}

float AXSUIFasterSlider.init(value:in:step:minValImage:maxValImage:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>, float a10@<S2>, float a11@<S3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v22._countAndFlagsBits = 0x4553414552434E49;
  v22._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v22);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v23._countAndFlagsBits = 0x4553414552434544;
  v23._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v23);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v24._countAndFlagsBits = 0x4553414552434544;
  v24._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v24);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v25._countAndFlagsBits = 0x4553414552434E49;
  v25._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v25);
  v26 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  *(a7 + 80) = v26;
  v33 = a1;
  v34 = a2;
  v35 = a8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v32, v27);
  sub_23D9DA3A4();
  result = v30;
  *a7 = v30;
  *(a7 + 8) = v31;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a8;
  *(a7 + 36) = a9;
  *(a7 + 40) = a10;
  *(a7 + 44) = a11;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

uint64_t AXSUIFasterSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
  v3 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v5 = v50 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D30, &qword_23D9E1E98);
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v8 = v50 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D38, &qword_23D9E1EA0);
  v9 = *(*(v53 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v54 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D40, &qword_23D9E1EA8);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v55 = v50 - v15;
  v16 = v1[3];
  v72 = v1[2];
  v73 = v16;
  v74 = v1[4];
  v75 = *(v1 + 10);
  v17 = v1[1];
  v70 = *v1;
  v71 = v17;
  v68 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D48, &qword_23D9E1EB0);
  sub_23D9DA3D4();
  v18 = v64;
  v19 = v65;
  v20 = *(&v72 + 4);
  v21 = HIDWORD(v72);
  v22 = swift_allocObject();
  v23 = v73;
  *(v22 + 48) = v72;
  *(v22 + 64) = v23;
  *(v22 + 80) = v74;
  *(v22 + 96) = v75;
  v24 = v71;
  *(v22 + 16) = v70;
  *(v22 + 32) = v24;
  v68 = v18;
  v69 = v19;
  v67 = v20;
  v66 = v21;
  sub_23D9B8854(&v70, &v64);

  v25 = sub_23D9DA384();
  v26 = sub_23D9D9E44();
  KeyPath = swift_getKeyPath();
  *&v64 = v25;
  *(&v64 + 1) = KeyPath;
  v65 = v26;
  v28 = *MEMORY[0x277CDF990];
  v29 = sub_23D9D9664();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v60 = v28;
  v59 = v31;
  v58 = v30 + 104;
  v31(v5, v28, v29);
  v57 = sub_23D9BA55C(&qword_27E2F5198, MEMORY[0x277CDFA20]);
  result = sub_23D9DA894();
  if (result)
  {
    v50[0] = v22;
    v51 = v13;
    v52 = a1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D50, &unk_23D9E1EE8);
    v34 = sub_23D9B88E4();
    sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50);
    v50[2] = v33;
    v50[1] = v34;
    sub_23D9DA044();
    sub_23D91F344(v5, &qword_27E2F5180, &qword_23D9DDF50);

    v35 = sub_23D9DA2F4();
    v36 = swift_getKeyPath();
    v37 = &v8[*(v63 + 36)];
    *v37 = v36;
    v37[1] = v35;
    sub_23D9B89F4();
    sub_23D9DA0C4();
    sub_23D91F344(v8, &qword_27E2F6D30, &qword_23D9E1E98);

    v38 = sub_23D9DA384();
    v39 = sub_23D9D9E44();
    v40 = swift_getKeyPath();
    *&v64 = v38;
    *(&v64 + 1) = v40;
    v65 = v39;
    v59(v5, v60, v29);
    result = sub_23D9DA894();
    if (result)
    {
      sub_23D9DA044();
      sub_23D91F344(v5, &qword_27E2F5180, &qword_23D9DDF50);

      v41 = sub_23D9DA2F4();
      v42 = swift_getKeyPath();
      v43 = &v8[*(v63 + 36)];
      *v43 = v42;
      v43[1] = v41;
      sub_23D9DA0C4();
      sub_23D91F344(v8, &qword_27E2F6D30, &qword_23D9E1E98);
      sub_23D9B8B48();
      sub_23D98048C();
      v44 = v55;
      sub_23D9DA494();
      v64 = v71;
      LODWORD(v65) = v72;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
      MEMORY[0x23EEF3850](&v68, v45);
      v46 = swift_allocObject();
      v47 = v73;
      *(v46 + 48) = v72;
      *(v46 + 64) = v47;
      *(v46 + 80) = v74;
      *(v46 + 96) = v75;
      v48 = v71;
      *(v46 + 16) = v70;
      *(v46 + 32) = v48;
      sub_23D9B8854(&v70, &v64);
      sub_23D91F01C(&qword_27E2F6D70, &qword_27E2F6D40, &qword_23D9E1EA8);
      v49 = v51;
      sub_23D9DA1E4();

      return (*(v56 + 8))(v44, v49);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D9B16C4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23D9B180C(uint64_t result, __int128 *a2)
{
  if ((result & 1) == 0)
  {
    v3 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D48, &qword_23D9E1EB0);
    sub_23D9DA3B4();
    v4 = a2[1];
    v5 = *(a2 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
    return sub_23D9DA564();
  }

  return result;
}

uint64_t sub_23D9B189C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = a3[1];
  v8 = *(a3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v6, v4);
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D48, &qword_23D9E1EB0);
  return sub_23D9DA3C4();
}

BOOL sub_23D9B19C4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23D9B19F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23D9B1A20@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23D9B1B0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t AXSUIVoiceSettings.init<A>(selection:preferredLocale:enabledSettings:languages:userDefinedName:voiceName:extraContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v60 = a6;
  v61 = a8;
  v56 = a7;
  v58 = a4;
  v59 = a5;
  v67 = a12;
  v68 = a13;
  v66 = a17;
  v64 = a16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v55 - v27;
  v57 = *a3;
  v65 = a1;
  sub_23D91F2DC(a1, &v55 - v27, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D91F2DC(a2, v24, &qword_27E2F4670, &qword_23D9DC650);
  v29 = swift_allocObject();
  v30 = v66;
  *(v29 + 2) = v64;
  *(v29 + 3) = v30;
  *(v29 + 4) = a14;
  *(v29 + 5) = a15;
  v31 = type metadata accessor for AXSUIVoiceSettings();
  v32 = a9 + v31[7];
  LOBYTE(v69) = 0;
  v62 = a14;
  v63 = a15;
  sub_23D99FD1C(a14);
  sub_23D9DA3A4();
  v33 = *(&v71 + 1);
  *v32 = v71;
  *(v32 + 8) = v33;
  v34 = a9 + v31[8];
  sub_23D9D9C64();
  v35 = v31[10];
  v36 = sub_23D9D89C4();
  (*(*(v36 - 8) + 56))(a9 + v35, 1, 1, v36);
  v37 = a9 + v31[13];
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  v38 = a9 + v31[14];
  LOBYTE(v69) = 0;
  sub_23D9DA3A4();
  v39 = *(&v71 + 1);
  *v38 = v71;
  *(v38 + 8) = v39;
  v40 = v31[15];
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(a9 + v40) = v71;
  v64 = v28;
  sub_23D91F2DC(v28, a9, &qword_27E2F4760, &qword_23D9E0740);
  v66 = v24;
  sub_23D929AE4(v24, a9 + v35);
  v41 = v58;
  *(a9 + v31[11]) = v57;
  v42 = (a9 + v31[5]);
  v44 = v59;
  v43 = v60;
  *v42 = v41;
  v42[1] = v44;
  v42[2] = v43;
  v45 = (a9 + v31[9]);
  *v45 = sub_23D9B8CAC;
  v45[1] = v29;
  if (v61)
  {
    v46 = v61;
    v47 = a2;
    v49 = a11;
    sub_23D91F064(v62);
    sub_23D91F344(v47, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v65, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D91F344(v66, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v64, &qword_27E2F4760, &qword_23D9E0740);
    v73 = a11;
    v51 = v56;
  }

  else
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_23D9DA5A4();
    sub_23D91F064(v62);
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v65, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D91F344(v66, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v64, &qword_27E2F4760, &qword_23D9E0740);
    v46 = *(&v71 + 1);
    v51 = v71;
    a10 = v72;
    v49 = v73;
  }

  v52 = (a9 + v31[12]);
  v53 = (a9 + v31[6]);
  *v53 = v51;
  v53[1] = v46;
  v53[2] = a10;
  v53[3] = v49;
  v54 = v68;
  *v52 = v67;
  v52[1] = v54;
  return result;
}

uint64_t sub_23D9B1F7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23D9DAD74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v15 - v11;
  if (a1)
  {
    a1(v10);
    (*(*(a3 - 8) + 56))(v12, 0, 1, a3);
  }

  else
  {
    (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
  }

  v15[1] = a4;
  swift_getWitnessTable();
  v13 = sub_23D964D1C(v12, v7);
  (*(v8 + 8))(v12, v7);
  return v13;
}

uint64_t sub_23D9B2104()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_23D9D8DA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  sub_23D9DA584();
  v17 = sub_23D9D8954();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  LOBYTE(v19) = 1;
  sub_23D9D8D74();
  sub_23D9DA544();
  (*(v5 + 8))(v8, v4);
  sub_23D91F344(v12, &qword_27E2F4760, &qword_23D9E0740);
  swift_getKeyPath();
  sub_23D9DA504();

  sub_23D91F344(v16, &qword_27E2F6658, &qword_23D9E1E80);
  return v19;
}

uint64_t AXSUIVoiceSettings.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - v4;
  v6 = type metadata accessor for AXSUIVoiceSettings();
  v32 = *(v6 - 8);
  v36 = *(v32 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D78, &qword_23D9E1F28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D80, &qword_23D9E1F30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D88, &qword_23D9E1F38);
  v17 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v31 - v18;
  sub_23D9B291C(v2, v12);
  v19._object = 0x800000023D9E4A90;
  v19._countAndFlagsBits = 0xD000000000000010;
  v39 = AXSUILocString(_:)(v19);
  sub_23D91F01C(&qword_27E2F6D90, &qword_27E2F6D78, &qword_23D9E1F28);
  sub_23D91B650();
  sub_23D9DA0A4();

  sub_23D91F344(v12, &qword_27E2F6D78, &qword_23D9E1F28);
  sub_23D9B8CB8(v2, v8);
  v20 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v21 = swift_allocObject();
  sub_23D9B8D1C(v8, v21 + v20);
  v22 = &v16[*(v13 + 36)];
  *v22 = sub_23D9B8D80;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x23EEF3850]();
  sub_23D9B8D98();
  sub_23D9B8F0C();
  v24 = v31;
  sub_23D9DA1E4();
  sub_23D91F344(v5, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F344(v16, &qword_27E2F6D80, &qword_23D9E1F30);
  MEMORY[0x23EEF3850](v23);
  sub_23D9B8CB8(v2, v8);
  v25 = swift_allocObject();
  sub_23D9B8D1C(v8, v25 + v20);
  v26 = v24 + *(v33 + 36);
  sub_23D91F2DC(v5, v26, &qword_27E2F5900, &unk_23D9DC640);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6DC0, &qword_23D9E1F50);
  v28 = (v26 + v27[9]);
  *v28 = sub_23D9B8FC0;
  v28[1] = v25;
  *(v26 + v27[10]) = 150;
  v29 = v27[11];
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6DC8, &unk_23D9E1F58);
  sub_23D9DA3A4();
  sub_23D91F344(v5, &qword_27E2F5900, &unk_23D9DC640);
  *(v26 + v29) = v39;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53F8, &qword_23D9DE200);
  sub_23D9B9048();
  sub_23D91F01C(&qword_27E2F53F0, &qword_27E2F53F8, &qword_23D9DE200);
  sub_23D9DA1B4();
  return sub_23D91F344(v24, &qword_27E2F6D88, &qword_23D9E1F38);
}

uint64_t sub_23D9B291C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v252 = a2;
  v244 = sub_23D9D9CE4();
  v243 = *(v244 - 8);
  v3 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v242 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E28, &qword_23D9E22B8);
  v241 = *(v245 - 8);
  v5 = *(v241 + 64);
  MEMORY[0x28223BE20](v245);
  v240 = &v202 - v6;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E30, &qword_23D9E22C0);
  v247 = *(v248 - 8);
  v7 = *(v247 + 64);
  MEMORY[0x28223BE20](v248);
  v246 = &v202 - v8;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E38, &qword_23D9E22C8);
  v9 = *(*(v249 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v249);
  v265 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v263 = &v202 - v12;
  v13 = type metadata accessor for AXSUIVoiceSettings();
  v237 = *(v13 - 8);
  v14 = *(v237 + 64);
  MEMORY[0x28223BE20](v13);
  v238 = v15;
  v239 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50C8, &qword_23D9DDAF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v236 = &v202 - v18;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v250 = *(v251 - 8);
  v19 = *(v250 + 64);
  MEMORY[0x28223BE20](v251);
  v264 = &v202 - v20;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E40, &qword_23D9E22D0);
  v254 = *(v255 - 8);
  v21 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v228 = &v202 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E48, &qword_23D9E22D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v262 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v267 = &v202 - v27;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E50, &qword_23D9E22E0);
  v234 = *(v235 - 8);
  v28 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v227 = &v202 - v29;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E58, &qword_23D9E22E8);
  v223 = *(v224 - 8);
  v30 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v214 = &v202 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E60, &qword_23D9E22F0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v226 = &v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v225 = &v202 - v36;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v37 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v212 = &v202 - v38;
  v221 = sub_23D9D9144();
  v220 = *(v221 - 8);
  v39 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v211 = &v202 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E68, &qword_23D9E22F8);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v222 = &v202 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v233 = &v202 - v45;
  v219 = sub_23D9D9954();
  v218 = *(v219 - 8);
  v46 = *(v218 + 64);
  MEMORY[0x28223BE20](v219);
  v217 = &v202 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E70, &qword_23D9E2300);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v260 = &v202 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v274 = &v202 - v52;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E78, &qword_23D9E2308);
  v231 = *(v232 - 8);
  v53 = *(v231 + 64);
  MEMORY[0x28223BE20](v232);
  v253 = &v202 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E80, &qword_23D9E2310);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v271 = &v202 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v259 = &v202 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v270 = &v202 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v273 = &v202 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v272 = &v202 - v66;
  MEMORY[0x28223BE20](v65);
  v269 = &v202 - v67;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E88, &unk_23D9E2318);
  v68 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v230);
  v70 = &v202 - v69;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v71 = *(*(v215 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v215);
  v74 = &v202 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v76 = &v202 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v80 = &v202 - v79;
  v81 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  v82 = *(*(v81 - 1) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = (&v202 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E90, &qword_23D9E2328);
  v85 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v216 = &v202 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E98, &qword_23D9E2330);
  v88 = *(*(v87 - 8) + 64);
  v89 = MEMORY[0x28223BE20](v87 - 8);
  v258 = &v202 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v268 = &v202 - v91;
  v266 = v13;
  v92 = a1 + *(v13 + 36);
  v93 = *v92;
  if (*v92)
  {
    v94 = *(v92 + 8);

    v96 = a1;
    v97 = v93(v95);
    sub_23D91F064(v93);
    v257 = v97;
    a1 = v96;
  }

  else
  {
    v257 = 0;
  }

  v98 = *(a1 + v266[11]);
  v261 = a1;
  v256 = v98;
  if ((v98 & 0x40) != 0)
  {
    v100._countAndFlagsBits = 0x5F544C5541464544;
    v100._object = 0xED00004543494F56;
    v101 = AXSUILocString(_:)(v100);
    countAndFlagsBits = v101._countAndFlagsBits;
    object = v101._object;
    v207 = sub_23D9B2104();
    v206 = v102;
    v205 = v103;
    v204 = v104;
    v105 = v266;
    v106 = a1 + v266[10];
    v210 = v80;
    sub_23D91F2DC(v106, v80, &qword_27E2F4670, &qword_23D9DC650);
    v107 = (a1 + v105[5]);
    v108 = v107[1];
    v110 = v107[2];
    v277._countAndFlagsBits = *v107;
    v109 = v277._countAndFlagsBits;
    v277._object = v108;
    v278 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
    MEMORY[0x23EEF3850](&v275);
    v111 = *(v275 + 16);

    v203 = v111 == 0;
    v277._countAndFlagsBits = v109;
    v277._object = v108;
    v278 = v110;
    sub_23D9DA584();
    v112 = v275;
    v113 = sub_23D9D89C4();
    v202 = v276;
    v98 = v81[5];
    (*(*(v113 - 8) + 56))(&v98[v84], 1, 1, v113);
    v114 = v81[9];
    v115 = sub_23D9D8C74();
    (*(*(v115 - 8) + 56))(v76, 1, 1, v115);
    sub_23D91F2DC(v76, v74, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9DA3A4();
    sub_23D91F344(v76, &qword_27E2F4460, &qword_23D9DC2A0);
    v116 = v84 + v81[11];
    LOBYTE(v275) = 0;
    sub_23D9DA3A4();
    v117 = v277._object;
    *v116 = v277._countAndFlagsBits;
    *(v116 + 1) = v117;
    v118 = v81[12];
    *(v84 + v118) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
    swift_storeEnumTagMultiPayload();
    v119 = v81[13];
    *(v84 + v119) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
    swift_storeEnumTagMultiPayload();
    v120 = object;
    *v84 = countAndFlagsBits;
    v84[1] = v120;
    v121 = (v84 + v81[8]);
    v122 = v206;
    *v121 = v207;
    v121[1] = v122;
    v123 = v204;
    v121[2] = v205;
    v121[3] = v123;
    v124 = v84 + v81[10];
    *v124 = v112;
    *(v124 + 8) = v202;
    v125 = &v98[v84];
    LOBYTE(v98) = v256;
    v99 = v274;
    sub_23D93DA98(v210, v125);
    *(v84 + v81[7]) = 1;
    *(v84 + v81[6]) = v203;
    sub_23D9BA55C(&qword_27E2F6EA8, type metadata accessor for AXSUIGenericVoiceSelectionCell);
    v126 = v216;
    sub_23D9DA114();
    sub_23D9BA974(v84);
    sub_23D91F2DC(v126, v70, &qword_27E2F6E90, &qword_23D9E2328);
    swift_storeEnumTagMultiPayload();
    sub_23D9BA470();
    sub_23D9D9B14();
    sub_23D91F344(v126, &qword_27E2F6E90, &qword_23D9E2328);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_23D9BA470();
    sub_23D9D9B14();
    v99 = v274;
  }

  v127 = v231;
  v128 = v232;
  if (v98)
  {
    v132._countAndFlagsBits = 1163149650;
    v132._object = 0xE400000000000000;
    v277 = AXSUILocString(_:)(v132);
    MEMORY[0x28223BE20](v277._countAndFlagsBits);
    v130 = v261;
    *(&v202 - 2) = v261;
    sub_23D9BA904();
    sub_23D91B650();
    v133 = v253;
    sub_23D9DA654();
    v131 = v269;
    (*(v127 + 32))(v269, v133, v128);
    v129 = 0;
  }

  else
  {
    v129 = 1;
    v130 = v261;
    v131 = v269;
  }

  v134 = *(v127 + 56);
  v135 = 1;
  v134(v131, v129, 1, v128);
  if ((v98 & 4) != 0)
  {
    v136._countAndFlagsBits = 0x4843544950;
    v136._object = 0xE500000000000000;
    v277 = AXSUILocString(_:)(v136);
    MEMORY[0x28223BE20](v277._countAndFlagsBits);
    *(&v202 - 2) = v130;
    sub_23D9BA904();
    sub_23D91B650();
    v98 = v253;
    sub_23D9DA654();
    v137 = v98;
    LOBYTE(v98) = v256;
    (*(v127 + 32))(v272, v137, v128);
    v135 = 0;
  }

  v138 = 1;
  v134(v272, v135, 1, v128);
  if ((v98 & 8) != 0)
  {
    v139._countAndFlagsBits = 0x454D554C4F56;
    v139._object = 0xE600000000000000;
    v277 = AXSUILocString(_:)(v139);
    MEMORY[0x28223BE20](v277._countAndFlagsBits);
    *(&v202 - 2) = v130;
    sub_23D9BA904();
    sub_23D91B650();
    v98 = v253;
    sub_23D9DA654();
    v140 = v98;
    LOBYTE(v98) = v256;
    (*(v127 + 32))(v273, v140, v128);
    v138 = 0;
  }

  v134(v273, v138, 1, v128);
  v141 = v130 + v266[13];
  v142 = *v141;
  if (*(v141 + 8) == 1)
  {
    if (v142)
    {
LABEL_16:
      v143 = 1;
      goto LABEL_24;
    }
  }

  else
  {

    sub_23D9DACD4();
    v144 = sub_23D9D9D24();
    sub_23D9D91B4();

    v145 = v217;
    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D91F080(v142, 0);
    (*(v218 + 8))(v145, v219);
    if (v277._countAndFlagsBits)
    {
      goto LABEL_16;
    }
  }

  if ((v98 & 0x10) != 0)
  {
    v153 = v212;
    sub_23D9DA584();
    swift_getKeyPath();
    sub_23D9DA514();

    sub_23D91F344(v153, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D9DA584();
    swift_getKeyPath();
    sub_23D9DA514();

    sub_23D91F344(v153, &qword_27E2F4760, &qword_23D9E0740);
    v154 = v211;
    v130 = v261;
    sub_23D9D9134();
    v152 = v220;
    v150 = v233;
    v151 = v221;
    (*(v220 + 32))(v233, v154, v221);
    v146 = 0;
    v147 = v225;
    v148 = v224;
    v149 = v223;
  }

  else
  {
    v146 = 1;
    v147 = v225;
    v148 = v224;
    v149 = v223;
    v150 = v233;
    v151 = v221;
    v152 = v220;
  }

  v155 = 1;
  (*(v152 + 56))(v150, v146, 1, v151);
  if ((v256 & 0x20) != 0)
  {
    v156._countAndFlagsBits = 0x46455F4F49445541;
    v156._object = 0xED00005354434546;
    v277 = AXSUILocString(_:)(v156);
    MEMORY[0x28223BE20](v277._countAndFlagsBits);
    *(&v202 - 2) = v130;
    sub_23D9BA7E4();
    sub_23D91B650();
    v157 = v214;
    sub_23D9DA654();
    (*(v149 + 32))(v147, v157, v148);
    v155 = 0;
  }

  (*(v149 + 56))(v147, v155, 1, v148);
  v158 = v233;
  v159 = v222;
  sub_23D91F2DC(v233, v222, &qword_27E2F6E68, &qword_23D9E22F8);
  v160 = v226;
  sub_23D91F2DC(v147, v226, &qword_27E2F6E60, &qword_23D9E22F0);
  v161 = v227;
  sub_23D91F2DC(v159, v227, &qword_27E2F6E68, &qword_23D9E22F8);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EB0, &qword_23D9E2338);
  sub_23D91F2DC(v160, v161 + *(v162 + 48), &qword_27E2F6E60, &qword_23D9E22F0);
  sub_23D91F344(v147, &qword_27E2F6E60, &qword_23D9E22F0);
  sub_23D91F344(v158, &qword_27E2F6E68, &qword_23D9E22F8);
  sub_23D91F344(v160, &qword_27E2F6E60, &qword_23D9E22F0);
  sub_23D91F344(v159, &qword_27E2F6E68, &qword_23D9E22F8);
  v99 = v274;
  sub_23D9BA5A4(v161, v274);
  v143 = 0;
LABEL_24:
  v163 = 1;
  (*(v234 + 56))(v99, v143, 1, v235);
  if (os_variant_has_internal_ui())
  {
    v164 = sub_23D9D9A04();
    MEMORY[0x28223BE20](v164);
    *(&v202 - 2) = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6ED8, &qword_23D9E2350);
    v130 = v261;
    sub_23D91F01C(&qword_27E2F6EE0, &qword_27E2F6ED8, &qword_23D9E2350);
    v165 = v228;
    sub_23D9DA644();
    (*(v254 + 32))(v267, v165, v255);
    v163 = 0;
  }

  (*(v254 + 56))(v267, v163, 1, v255);
  v166 = v236;
  sub_23D9D93B4();
  v167 = sub_23D9D93E4();
  (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
  v168 = v239;
  sub_23D9B8CB8(v130, v239);
  v169 = (*(v237 + 80) + 16) & ~*(v237 + 80);
  v170 = swift_allocObject();
  sub_23D9B8D1C(v168, v170 + v169);
  v171 = v264;
  v172 = sub_23D9DA3F4();
  MEMORY[0x28223BE20](v172);
  *(&v202 - 2) = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EB8, &qword_23D9E2340);
  sub_23D91F01C(&qword_27E2F6EC0, &qword_27E2F6EB8, &qword_23D9E2340);
  v173 = v240;
  sub_23D9DA684();
  v174 = v242;
  sub_23D9D9CD4();
  v175 = sub_23D9BA6A8();
  v176 = v246;
  v177 = v245;
  sub_23D9DA0D4();
  (*(v243 + 8))(v174, v244);
  (*(v241 + 8))(v173, v177);
  v178._countAndFlagsBits = 0xD000000000000014;
  v178._object = 0x800000023D9E4AD0;
  v277 = AXSUILocString(_:)(v178);
  sub_23D91B650();
  v179 = sub_23D9D9F04();
  v181 = v180;
  v183 = v182;
  v277._countAndFlagsBits = v177;
  v277._object = v175;
  swift_getOpaqueTypeConformance2();
  v184 = v265;
  v185 = v248;
  sub_23D9DA094();
  sub_23D9274BC(v179, v181, v183 & 1);

  (*(v247 + 8))(v176, v185);
  v186._countAndFlagsBits = 0xD00000000000001CLL;
  v186._object = 0x800000023D9E4AF0;
  v277 = AXSUILocString(_:)(v186);
  v187 = sub_23D9D9F04();
  v189 = v188;
  LOBYTE(v185) = v190;
  v191 = v263;
  sub_23D9D9674();
  sub_23D9274BC(v187, v189, v185 & 1);

  v192 = v184;
  sub_23D91F344(v184, &qword_27E2F6E38, &qword_23D9E22C8);
  v193 = v258;
  sub_23D91F2DC(v268, v258, &qword_27E2F6E98, &qword_23D9E2330);
  sub_23D91F2DC(v269, v270, &qword_27E2F6E80, &qword_23D9E2310);
  v194 = v259;
  sub_23D91F2DC(v272, v259, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v273, v271, &qword_27E2F6E80, &qword_23D9E2310);
  v195 = v260;
  sub_23D91F2DC(v274, v260, &qword_27E2F6E70, &qword_23D9E2300);
  v196 = v267;
  v197 = v262;
  sub_23D91F2DC(v267, v262, &qword_27E2F6E48, &qword_23D9E22D8);
  sub_23D9BA764(v191, v192);
  v198 = v252;
  *v252 = v257;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6ED0, &qword_23D9E2348);
  sub_23D91F2DC(v193, v198 + v199[12], &qword_27E2F6E98, &qword_23D9E2330);
  sub_23D91F2DC(v270, v198 + v199[16], &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v194, v198 + v199[20], &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v271, v198 + v199[24], &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v195, v198 + v199[28], &qword_27E2F6E70, &qword_23D9E2300);
  sub_23D91F2DC(v197, v198 + v199[32], &qword_27E2F6E48, &qword_23D9E22D8);
  v200 = v265;
  sub_23D9BA764(v265, v198 + v199[36]);
  sub_23D91F344(v263, &qword_27E2F6E38, &qword_23D9E22C8);
  sub_23D91F344(v196, &qword_27E2F6E48, &qword_23D9E22D8);
  sub_23D91F344(v274, &qword_27E2F6E70, &qword_23D9E2300);
  sub_23D91F344(v273, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v272, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v269, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v268, &qword_27E2F6E98, &qword_23D9E2330);
  sub_23D91F344(v200, &qword_27E2F6E38, &qword_23D9E22C8);
  sub_23D91F344(v262, &qword_27E2F6E48, &qword_23D9E22D8);
  sub_23D91F344(v260, &qword_27E2F6E70, &qword_23D9E2300);
  sub_23D91F344(v271, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v259, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v270, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v258, &qword_27E2F6E98, &qword_23D9E2330);

  return (*(v250 + 8))(v264, v251);
}

uint64_t sub_23D9B49EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  sub_23D9DA584();
  swift_getKeyPath();
  LODWORD(v21) = 1056964608;
  sub_23D9DA4F4();

  sub_23D91F344(v5, &qword_27E2F4760, &qword_23D9E0740);
  v6 = v24;
  v7 = v25;
  v8 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v10._countAndFlagsBits = 0x4553414552434E49;
  v10._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v10);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v11._countAndFlagsBits = 0x4553414552434544;
  v11._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v11);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v12._countAndFlagsBits = 0x4553414552434544;
  v12._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v12);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v13._countAndFlagsBits = 0x4553414552434E49;
  v13._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v13);
  v14 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v20, v15);
  v18[1] = v20;
  result = sub_23D9DA3A4();
  v17 = v19;
  *a1 = v18[2];
  *(a1 + 8) = v17;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 36) = 0x3F80000000000000;
  *(a1 + 44) = 1028443341;
  strcpy((a1 + 48), "tortoise.fill");
  *(a1 + 62) = -4864;
  *(a1 + 64) = 0x6C69662E65726168;
  *(a1 + 72) = 0xE90000000000006CLL;
  *(a1 + 80) = v14;
  return result;
}

double sub_23D9B4D1C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  sub_23D9DA584();
  swift_getKeyPath();
  LODWORD(v21) = 1056964608;
  sub_23D9DA4F4();

  sub_23D91F344(v5, &qword_27E2F4760, &qword_23D9E0740);
  v6 = v24;
  v7 = v25;
  v8 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v10._countAndFlagsBits = 0x4553414552434E49;
  v10._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v10);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v11._countAndFlagsBits = 0x4553414552434544;
  v11._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v11);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v12._countAndFlagsBits = 0x4553414552434544;
  v12._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v12);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v13._countAndFlagsBits = 0x4553414552434E49;
  v13._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v13);
  v14 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v20, v15);
  v18[3] = v20;
  sub_23D9DA3A4();
  v16 = v19;
  *a1 = v18[4];
  *(a1 + 8) = v16;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  result = 0.0078125;
  *(a1 + 36) = 0x3F80000000000000;
  *(a1 + 44) = 1028443341;
  *(a1 + 48) = 0x6F6C2E6863746970;
  *(a1 + 56) = 0xE900000000000077;
  *(a1 + 64) = 0x69682E6863746970;
  *(a1 + 72) = 0xEA00000000006867;
  *(a1 + 80) = v14;
  return result;
}

uint64_t sub_23D9B5028@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  sub_23D9DA584();
  swift_getKeyPath();
  LODWORD(v21) = 1065353216;
  sub_23D9DA4F4();

  sub_23D91F344(v5, &qword_27E2F4760, &qword_23D9E0740);
  v6 = v24;
  v7 = v25;
  v8 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v10._countAndFlagsBits = 0x4553414552434E49;
  v10._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v10);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v11._countAndFlagsBits = 0x4553414552434544;
  v11._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v11);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v12._countAndFlagsBits = 0x4553414552434544;
  v12._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v12);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v13._countAndFlagsBits = 0x4553414552434E49;
  v13._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v13);
  v14 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v20, v15);
  v18[3] = v20;
  result = sub_23D9DA3A4();
  v17 = v19;
  *a1 = v18[4];
  *(a1 + 8) = v17;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 36) = 0x3F8000003D4CCCCDLL;
  *(a1 + 44) = 1028443341;
  strcpy((a1 + 48), "speaker.fill");
  *(a1 + 61) = 0;
  *(a1 + 62) = -5120;
  *(a1 + 64) = 0xD000000000000013;
  *(a1 + 72) = 0x800000023D9E4A70;
  *(a1 + 80) = v14;
  return result;
}

double sub_23D9B5334@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  sub_23D9DA584();
  swift_getKeyPath();
  sub_23D9DA514();

  sub_23D91F344(v5, &qword_27E2F4760, &qword_23D9E0740);
  v17 = v20;
  v18 = v21;
  v19 = v22;
  v16 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F00, &qword_23D9E24E8);
  sub_23D9DA544();

  v6 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F08, &qword_23D9E24F0);
  v7 = sub_23D9D8BA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D9DC3E0;
  v12 = *MEMORY[0x277D70158];
  v13 = *(v8 + 104);
  v15 = v24;
  v13(v11 + v10, v12, v7);
  *a1 = v6;
  result = *&v15;
  *(a1 + 8) = v15;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_23D9B5544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXSUIVoiceSettings();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23D9B8CB8(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23D9B8D1C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  return sub_23D9BEA7C(0x616C506F69647561, 0xEF646E756F726779, sub_23D9B57D0, 0, sub_23D9BAE7C, v8, a2);
}

__n128 sub_23D9B5680@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - v4;
  sub_23D9DA584();
  swift_getKeyPath();
  sub_23D9DA514();

  sub_23D91F344(v5, &qword_27E2F4760, &qword_23D9E0740);
  v7[1] = v7[4];
  v7[2] = v7[5];
  v7[3] = v7[6];
  v7[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F00, &qword_23D9E24E8);
  sub_23D9DA544();

  result = v8;
  *a1 = v7[7];
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_23D9B57D0@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4B30;
  v2._countAndFlagsBits = 0xD000000000000010;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D9B5840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x23EEF3850]();
  v10 = sub_23D9D8DA4();
  v11 = *(*(v10 - 8) + 48);
  if (!v11(v9, 1, v10))
  {
    v13[4] = 1;
    sub_23D9D8D04();
  }

  if (!v11(v9, 1, v10))
  {
    v13[8] = 1;
    sub_23D9D8D44();
  }

  if (!v11(v9, 1, v10))
  {
    v13[12] = 1;
    sub_23D9D8D24();
  }

  if (!v11(v9, 1, v10))
  {
    sub_23D9D8CE4();
  }

  if (!v11(v9, 1, v10))
  {
    sub_23D9D8D64();
  }

  sub_23D91F2DC(v9, v7, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v7, v4, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA564();
  sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
  return sub_23D91F344(v9, &qword_27E2F5900, &unk_23D9DC640);
}

uint64_t sub_23D9B5AB8@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4AD0;
  v2._countAndFlagsBits = 0xD000000000000014;
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

uint64_t sub_23D9B5BBC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23D9D9AC4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F10, &qword_23D9E24F8);
  return sub_23D9B5C14(a1 + *(v2 + 44));
}

uint64_t sub_23D9B5C14@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v35 = *(v33 - 8);
  v1 = v35;
  v2 = *(v35 + 64);
  v3 = MEMORY[0x28223BE20](v33);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - v5;
  v32 = *(v1 + 16);
  v32();
  v6._object = 0x800000023D9E4AF0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v38 = AXSUILocString(_:)(v6);
  sub_23D91B650();
  v7 = sub_23D9D9F04();
  v9 = v8;
  v11 = v10;
  sub_23D9D9DC4();
  v12 = sub_23D9D9EE4();
  v14 = v13;
  v16 = v15;

  sub_23D9274BC(v7, v9, v11 & 1);

  sub_23D9DA2F4();
  v17 = sub_23D9D9EB4();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_23D9274BC(v12, v14, v16 & 1);

  v24 = v37;
  v25 = v33;
  v26 = v34;
  v27 = v32;
  (v32)(v37, v34, v33);
  v28 = v36;
  (v27)(v36, v24, v25);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F18, &qword_23D9E2500) + 48);
  *v29 = v17;
  *(v29 + 8) = v19;
  *(v29 + 16) = v21 & 1;
  *(v29 + 24) = v23;
  sub_23D91E0AC(v17, v19, v21 & 1);
  v30 = *(v35 + 8);

  v30(v26, v25);
  sub_23D9274BC(v17, v19, v21 & 1);

  return (v30)(v37, v25);
}

void sub_23D9B5EDC(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D9B8CB8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D9B8D1C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  aBlock[4] = sub_23D9BA440;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D9A0AF4;
  aBlock[3] = &block_descriptor_3;
  v7 = _Block_copy(aBlock);

  AXPerformBlockOnMainThreadAfterDelay();
  _Block_release(v7);
}

uint64_t sub_23D9B6040()
{
  v0 = *(type metadata accessor for AXSUIVoiceSettings() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);
  return sub_23D9D9C54();
}

uint64_t sub_23D9B60A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_23D9DA9F4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_23D9DA9B4();
  v5 = sub_23D9DA9A4();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  sub_23D9BB718(0, 0, v3, &unk_23D9E22B0, v6);
}

uint64_t sub_23D9B61AC()
{
  sub_23D9DA9B4();
  v0[2] = sub_23D9DA9A4();
  v2 = sub_23D9DA994();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_23D9B6240, v2, v1);
}

uint64_t sub_23D9B6240()
{
  sub_23D9D8BC4();
  *(v0 + 40) = sub_23D9D8BB4();
  v1 = *(MEMORY[0x277D701B0] + 4);
  v4 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23D9B62F8;

  return v4();
}

uint64_t sub_23D9B62F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_23D9B643C, v5, v4);
}

uint64_t sub_23D9B643C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9B649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = type metadata accessor for AXSUIVoiceSettings();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = sub_23D9D8DA4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  result = v20(a1, 1, v18);
  if (result != 1)
  {
    v37 = v10;
    v22 = a2;
    sub_23D91F2DC(a1, v17, &qword_27E2F5900, &unk_23D9DC640);
    if (v20(v17, 1, v18) == 1)
    {
      sub_23D91F344(v17, &qword_27E2F5900, &unk_23D9DC640);
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v23 = sub_23D9D8D84();
      v24 = v25;
      (*(v19 + 8))(v17, v18);
    }

    sub_23D91F2DC(v22, v15, &qword_27E2F5900, &unk_23D9DC640);
    if (v20(v15, 1, v18) == 1)
    {
      sub_23D91F344(v15, &qword_27E2F5900, &unk_23D9DC640);
      v26 = v37;
      if (!v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v27 = sub_23D9D8D84();
      v29 = v28;
      (*(v19 + 8))(v15, v18);
      v26 = v37;
      if (v24)
      {
        if (v29)
        {
          if (v23 == v27 && v24 == v29)
          {
          }

          else
          {
            v30 = sub_23D9DAFC4();

            if ((v30 & 1) == 0)
            {
              return result;
            }
          }

          goto LABEL_17;
        }
      }

      else if (!v29)
      {
LABEL_17:
        v31 = sub_23D9DA9F4();
        (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
        v32 = v40;
        sub_23D9B8CB8(v39, v40);
        sub_23D9DA9B4();
        v33 = sub_23D9DA9A4();
        v34 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        *(v35 + 16) = v33;
        *(v35 + 24) = v36;
        sub_23D9B8D1C(v32, v35 + v34);
        sub_23D9897D0(0, 0, v26, &unk_23D9E22A0, v35);
      }
    }
  }

  return result;
}

uint64_t sub_23D9B68D8()
{
  v0[2] = sub_23D9DA9B4();
  v0[3] = sub_23D9DA9A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23D9B6984;

  return sub_23D9B6BA8();
}

uint64_t sub_23D9B6984()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_23D9DA994();
  if (v2)
  {
    v8 = sub_23D9B6B44;
  }

  else
  {
    v8 = sub_23D9B6AE0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23D9B6AE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9B6B44()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_23D9B6BA8()
{
  v1[10] = v0;
  v2 = type metadata accessor for AXSUIVoiceSettings();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v1[13] = *(v3 + 64);
  v1[14] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = sub_23D9DA9B4();
  v1[17] = sub_23D9DA9A4();
  v6 = sub_23D9DA994();
  v1[18] = v6;
  v1[19] = v5;

  return MEMORY[0x2822009F8](sub_23D9B6CE0, v6, v5);
}

uint64_t sub_23D9B6CE0()
{
  sub_23D9D8BC4();
  *(v0 + 160) = sub_23D9D8BB4();
  v1 = *(MEMORY[0x277D701B0] + 4);
  v4 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_23D9B6D98;

  return v4();
}

uint64_t sub_23D9B6D98()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23D9B6EDC, v5, v4);
}

uint64_t sub_23D9B6EDC()
{
  v1 = (v0[10] + *(v0[11] + 60));
  v2 = *v1;
  v0[22] = *v1;
  v3 = v1[1];
  v0[2] = v2;
  v0[23] = v3;
  v0[3] = v3;
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4748, &qword_23D9DC7B8);
  sub_23D9DA3B4();
  v4 = v0[8];
  v0[25] = v4;
  if (v4)
  {
    v5 = *(MEMORY[0x277D857D0] + 4);
    v6 = swift_task_alloc();
    v0[26] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
    *v6 = v0;
    v6[1] = sub_23D9B7164;
    v8 = MEMORY[0x277D84950];
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 6, v4, v9, v7, v8);
  }

  else
  {
    v10 = v0[17];

    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[22];
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    v19 = v0[10];
    v20 = sub_23D9DA9F4();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    sub_23D9B8CB8(v19, v16);
    v21 = sub_23D9DA9A4();
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v21;
    *(v23 + 24) = v24;
    sub_23D9B8D1C(v16, v23 + v22);
    v25 = sub_23D9897D0(0, 0, v15, &unk_23D9E2290, v23);
    v0[4] = v13;
    v0[5] = v12;
    v0[9] = v25;
    sub_23D9DA3C4();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_23D9B7164()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  sub_23D9B9E00(*(v1 + 48), *(v1 + 56));
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23D9B72C0, v5, v4);
}

uint64_t sub_23D9B72C0()
{
  v1 = v0[17];

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[10];
  v11 = sub_23D9DA9F4();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_23D9B8CB8(v10, v7);
  v12 = sub_23D9DA9A4();
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_23D9B8D1C(v7, v14 + v13);
  v16 = sub_23D9897D0(0, 0, v6, &unk_23D9E2290, v14);
  v0[4] = v4;
  v0[5] = v3;
  v0[9] = v16;
  sub_23D9DA3C4();

  v17 = v0[1];

  return v17();
}

uint64_t sub_23D9B7444(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D9B8CB8(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D9B8D1C(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return sub_23D9DA404();
}

uint64_t sub_23D9B7578(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_23D9DA9F4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_23D9B8CB8(a1, v5);
  sub_23D9DA9B4();
  v11 = sub_23D9DA9A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_23D9B8D1C(v5, v13 + v12);
  sub_23D9897D0(0, 0, v9, &unk_23D9E2278, v13);
}

uint64_t sub_23D9B7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_23D9DA9B4();
  v4[5] = sub_23D9DA9A4();
  v6 = sub_23D9DA994();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23D9B77C8, v6, v5);
}

uint64_t sub_23D9B77C8()
{
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for AXSUIVoiceSettings() + 56));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  if (*(v0 + 96))
  {
    sub_23D9D8BC4();
    *(v0 + 80) = sub_23D9D8BB4();
    v5 = *(MEMORY[0x277D701B0] + 4);
    v10 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = sub_23D9B7AD4;

    return v10();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_23D9B7934;
    v9 = *(v0 + 32);

    return sub_23D9B6BA8();
  }
}

uint64_t sub_23D9B7934()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_23D9B7C18;
  }

  else
  {
    v7 = sub_23D9B7A70;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23D9B7A70()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9B7AD4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23D9BAF28, v5, v4);
}

uint64_t sub_23D9B7C18()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_23D9B7C7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AXSUIVoiceSettings() + 56));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  result = sub_23D9DA384();
  *a2 = result;
  return result;
}

uint64_t sub_23D9B7D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_23D9D8DA4();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_23D9DA9B4();
  v4[7] = sub_23D9DA9A4();
  v10 = sub_23D9DA994();
  v4[8] = v10;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_23D9B7E58, v10, v9);
}

uint64_t sub_23D9B7E58()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  sub_23D9DA744();
  sub_23D9D9594();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x23EEF3850](v5);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[7];
    v7 = v0[3];

    sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
    v8 = v0[6];
    v10 = v0[2];
    v9 = v0[3];
    *(swift_task_alloc() + 16) = v10;
    sub_23D9DA744();
    sub_23D9D9594();

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    sub_23D9D8BC4();
    v0[10] = sub_23D9D8BB4();
    v13 = *(MEMORY[0x277D701C0] + 4);
    v16 = (*MEMORY[0x277D701C0] + MEMORY[0x277D701C0]);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_23D9B80B4;
    v15 = v0[6];

    return v16(v15);
  }
}

uint64_t sub_23D9B80B4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = v2[10];

  v6 = v2[9];
  v7 = v2[8];
  if (v0)
  {
    v8 = sub_23D9B8304;
  }

  else
  {
    v8 = sub_23D9B8208;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23D9B8208()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  (*(v4 + 8))(v2, v3);
  v5 = v0[12];
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  *(swift_task_alloc() + 16) = v8;
  sub_23D9DA744();
  sub_23D9D9594();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23D9B8304()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  (*(v4 + 8))(v2, v3);
  *(swift_task_alloc() + 16) = v6;
  sub_23D9DA744();
  sub_23D9D9594();

  v7 = v0[1];
  v8 = v0[12];

  return v7();
}

uint64_t sub_23D9B8400(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AXSUIVoiceSettings() + 56));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9B8484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9894();
  *a1 = result;
  return result;
}

uint64_t sub_23D9B84B0(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D9D98A4();
}

uint64_t sub_23D9B84DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9804();
  *a1 = result;
  return result;
}

uint64_t sub_23D9B8508(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D9D9814();
}

unint64_t sub_23D9B8534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5920, &qword_23D9DF030);
    v3 = sub_23D9DAF74();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23D960590(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_23D9B8638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F28, &qword_23D9E2510);
    v3 = sub_23D9DAF74();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23D960590(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_23D9B8734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F20, &qword_23D9E2508);
    v3 = sub_23D9DAF74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23D960590(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_23D9B888C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9894();
  *a1 = result;
  return result;
}

uint64_t sub_23D9B88B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D9D98A4();
}

unint64_t sub_23D9B88E4()
{
  result = qword_27E2F6D58;
  if (!qword_27E2F6D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D50, &unk_23D9E1EE8);
    sub_23D91F01C(&qword_27E2F5398, &qword_27E2F53A0, &qword_23D9DDFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D58);
  }

  return result;
}

uint64_t sub_23D9B899C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9804();
  *a1 = result;
  return result;
}

uint64_t sub_23D9B89C8(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D9D9814();
}

unint64_t sub_23D9B89F4()
{
  result = qword_27E2F6D60;
  if (!qword_27E2F6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D30, &qword_23D9E1E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D50, &unk_23D9E1EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5180, &qword_23D9DDF50);
    sub_23D9B88E4();
    sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F5C20, &qword_27E2F5C28, &qword_23D9DF690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D60);
  }

  return result;
}

unint64_t sub_23D9B8B48()
{
  result = qword_27E2F6D68;
  if (!qword_27E2F6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D38, &qword_23D9E1EA0);
    sub_23D9B89F4();
    sub_23D9BA55C(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D68);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_23D9B8C6C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_23D9B8CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceSettings();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9B8D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceSettings();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9B8D98()
{
  result = qword_27E2F6DA0;
  if (!qword_27E2F6DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D80, &qword_23D9E1F30);
    sub_23D9B8E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DA0);
  }

  return result;
}

unint64_t sub_23D9B8E24()
{
  result = qword_27E2F6DA8;
  if (!qword_27E2F6DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6DB0, &qword_23D9E1F48);
    sub_23D91F01C(&qword_27E2F6D90, &qword_27E2F6D78, &qword_23D9E1F28);
    sub_23D9BA55C(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DA8);
  }

  return result;
}

unint64_t sub_23D9B8F0C()
{
  result = qword_27E2F6DB8;
  if (!qword_27E2F6DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5900, &unk_23D9DC640);
    sub_23D9BA55C(&qword_27E2F65D8, MEMORY[0x277CE6738]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DB8);
  }

  return result;
}

uint64_t sub_23D9B8FC0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXSUIVoiceSettings() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9B649C(a1, a2, v6);
}

unint64_t sub_23D9B9048()
{
  result = qword_27E2F6DD0;
  if (!qword_27E2F6DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D88, &qword_23D9E1F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D80, &qword_23D9E1F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5900, &unk_23D9DC640);
    sub_23D9B8D98();
    sub_23D9B8F0C();
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F6DD8, &qword_27E2F6DC0, &qword_23D9E1F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DD0);
  }

  return result;
}

unint64_t sub_23D9B9188()
{
  result = qword_27E2F6DE0;
  if (!qword_27E2F6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DE0);
  }

  return result;
}

unint64_t sub_23D9B91E0()
{
  result = qword_27E2F6DE8;
  if (!qword_27E2F6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DE8);
  }

  return result;
}

unint64_t sub_23D9B9238()
{
  result = qword_27E2F6DF0;
  if (!qword_27E2F6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DF0);
  }

  return result;
}

unint64_t sub_23D9B9290()
{
  result = qword_27E2F6DF8;
  if (!qword_27E2F6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DF8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23D9B9324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D9B936C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23D9B93E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
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
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D9B9594(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
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
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_23D9B9730()
{
  sub_23D9B9AC0(319, &qword_27E2F6518, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE1200]);
  if (v0 <= 0x3F)
  {
    sub_23D9B9AC0(319, &qword_27E2F6E10, &qword_27E2F4778, &qword_23D9DC800, MEMORY[0x277CE1200]);
    if (v1 <= 0x3F)
    {
      sub_23D9B9A70(319, &qword_27E2F6E18, MEMORY[0x277D837D0], MEMORY[0x277CE1200]);
      if (v2 <= 0x3F)
      {
        sub_23D9B9A70(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
        if (v3 <= 0x3F)
        {
          sub_23D9B99C0();
          if (v4 <= 0x3F)
          {
            sub_23D9B9AC0(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23D9B9A18();
              if (v6 <= 0x3F)
              {
                sub_23D9B9A70(319, &qword_27E2F5718, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_23D9B9A70(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
                  if (v8 <= 0x3F)
                  {
                    sub_23D9B9AC0(319, &qword_27E2F46A8, &qword_27E2F46B0, &qword_23D9E0CB0, MEMORY[0x277CE10B0]);
                    if (v9 <= 0x3F)
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
}

void sub_23D9B99C0()
{
  if (!qword_27E2F6E20)
  {
    v0 = sub_23D9D9C74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F6E20);
    }
  }
}

void sub_23D9B9A18()
{
  if (!qword_27E2F4690)
  {
    sub_23D9D89C4();
    v0 = sub_23D9DAD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F4690);
    }
  }
}

void sub_23D9B9A70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23D9B9AC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for AXSUIVoiceSettings.Settings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AXSUIVoiceSettings.Settings(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23D9B9B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D40, &qword_23D9E1EA8);
  sub_23D91F01C(&qword_27E2F6D70, &qword_27E2F6D40, &qword_23D9E1EA8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9B9C28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D88, &qword_23D9E1F38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F53F8, &qword_23D9DE200);
  sub_23D9B9048();
  sub_23D91F01C(&qword_27E2F53F0, &qword_27E2F53F8, &qword_23D9DE200);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9B9D10(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUIVoiceSettings() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D928310;

  return sub_23D9B7730(a1, v6, v7, v1 + v5);
}

void sub_23D9B9E00(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_23D9B9E0C(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUIVoiceSettings() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D92A70C;

  return sub_23D9B7D2C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for AXSUIVoiceSettings();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740) + 32);
  v9 = sub_23D9D8DA4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + v1[5]);
  v12 = *v11;

  v13 = v11[1];

  v14 = v11[2];

  v15 = (v5 + v1[6]);
  v16 = *v15;

  v17 = v15[1];

  v18 = v15[3];

  v19 = *(v5 + v1[7] + 8);

  v20 = v5 + v1[8];
  v21 = sub_23D9D9CB4();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v20, 1, v21))
  {
    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40) + 40));

  v24 = (v5 + v1[9]);
  if (*v24)
  {
    v25 = v24[1];
  }

  v26 = v1[10];
  v27 = sub_23D9D89C4();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v5 + v26, 1, v27))
  {
    (*(v28 + 8))(v5 + v26, v27);
  }

  v29 = *(v5 + v1[12] + 8);

  sub_23D91F080(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v30 = *(v5 + v1[14] + 8);

  v31 = (v5 + v1[15]);
  v32 = *v31;

  v33 = v31[1];

  return swift_deallocObject();
}

uint64_t sub_23D9BA26C()
{
  v2 = *(type metadata accessor for AXSUIVoiceSettings() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D92A70C;

  return sub_23D9B68D8();
}

uint64_t sub_23D9BA35C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D9BA394()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D928310;

  return sub_23D9B61AC();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D9BA470()
{
  result = qword_27E2F6EA0;
  if (!qword_27E2F6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6E90, &qword_23D9E2328);
    sub_23D9BA55C(&qword_27E2F6EA8, type metadata accessor for AXSUIGenericVoiceSelectionCell);
    sub_23D9BA55C(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EA0);
  }

  return result;
}

uint64_t sub_23D9BA55C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D9BA5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E50, &qword_23D9E22E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9BA62C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXSUIVoiceSettings() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23D9BA6A8()
{
  result = qword_27E2F6EC8;
  if (!qword_27E2F6EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6E28, &qword_23D9E22B8);
    sub_23D91F01C(&qword_27E2F6EC0, &qword_27E2F6EB8, &qword_23D9E2340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EC8);
  }

  return result;
}

uint64_t sub_23D9BA764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E38, &qword_23D9E22C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9BA7E4()
{
  result = qword_27E2F6EE8;
  if (!qword_27E2F6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EE8);
  }

  return result;
}

uint64_t sub_23D9BA838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D8D84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D9BA864(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D9D8D94();
}

uint64_t sub_23D9BA8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D8CD4();
  *a1 = result;
  return result;
}

uint64_t sub_23D9BA8D0(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D9D8CE4();
}

unint64_t sub_23D9BA904()
{
  result = qword_27E2F6EF0;
  if (!qword_27E2F6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EF0);
  }

  return result;
}

uint64_t sub_23D9BA974(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9BA9D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D8CF4();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_23D9BAA1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D8D14();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_23D9BAA68@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D8D34();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_23D9BAAF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D8D54();
  *a1 = result;
  return result;
}

uint64_t sub_23D9BAB24(uint64_t *a1)
{
  v1 = *a1;

  return sub_23D9D8D64();
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = type metadata accessor for AXSUIVoiceSettings();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740) + 32);
  v7 = sub_23D9D8DA4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v3[v6], 1, v7))
  {
    (*(v8 + 8))(&v3[v6], v7);
  }

  v9 = &v3[v1[5]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(v9 + 2);

  v13 = &v3[v1[6]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(v13 + 3);

  v17 = *&v3[v1[7] + 8];

  v18 = &v3[v1[8]];
  v19 = sub_23D9D9CB4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40) + 40)];

  v22 = &v3[v1[9]];
  if (*v22)
  {
    v23 = *(v22 + 1);
  }

  v24 = v1[10];
  v25 = sub_23D9D89C4();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(&v3[v24], 1, v25))
  {
    (*(v26 + 8))(&v3[v24], v25);
  }

  v27 = *&v3[v1[12] + 8];

  sub_23D91F080(*&v3[v1[13]], v3[v1[13] + 8]);
  v28 = *&v3[v1[14] + 8];

  v29 = &v3[v1[15]];
  v30 = *v29;

  v31 = *(v29 + 1);

  return swift_deallocObject();
}

double sub_23D9BAE7C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for AXSUIVoiceSettings() - 8) + 80);

  *&result = sub_23D9B5680(a1).n128_u64[0];
  return result;
}

uint64_t sub_23D9BAF40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_23D9BB01C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AXSUIVoiceLoader()
{
  result = qword_27E2F6F38;
  if (!qword_27E2F6F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D9BB118()
{
  sub_23D95F008();
  if (v0 <= 0x3F)
  {
    sub_23D9BB1B4();
    if (v1 <= 0x3F)
    {
      sub_23D9BB218();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D9BB1B4()
{
  if (!qword_27E2F6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4460, &qword_23D9DC2A0);
    v0 = sub_23D9DA604();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F6F48);
    }
  }
}

void sub_23D9BB218()
{
  if (!qword_27E2F4658)
  {
    sub_23D9D8AE4();
    v0 = sub_23D9D9484();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F4658);
    }
  }
}

void sub_23D9BB28C()
{
  v0 = sub_23D9D8BE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = sub_23D9D8BF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  sub_23D9D8C34();
  v16 = (*(v9 + 88))(v15, v8);
  if (v16 == *MEMORY[0x277D70240])
  {
    (*(v9 + 16))(v13, v15, v8);
    (*(v9 + 96))(v13, v8);
    (*(v1 + 32))(v7, v13, v0);
    (*(v1 + 16))(v5, v7, v0);
    v17 = (*(v1 + 88))(v5, v0);
    if (v17 == *MEMORY[0x277D70210] || v17 == *MEMORY[0x277D70208] || v17 == *MEMORY[0x277D70220])
    {
      v20._countAndFlagsBits = 0x504F545F49524953;
      v20._object = 0xE800000000000000;
      AXSUILocString(_:)(v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4560, &qword_23D9DC3F0);
      v21 = swift_allocObject();
      v36 = v8;
      v22 = v21;
      *(v21 + 16) = xmmword_23D9DC3E0;
      v23 = sub_23D9D8C14();
      v25 = v24;
      v22[7] = MEMORY[0x277D837D0];
      v22[8] = sub_23D91F908();
      v22[4] = v23;
      v22[5] = v25;
      sub_23D9DA8C4();

      (*(v1 + 8))(v7, v0);
      (*(v9 + 8))(v15, v36);
      return;
    }

    v34 = *(v1 + 8);
    v34(v7, v0);
    v34(v5, v0);
    goto LABEL_15;
  }

  if (v16 != *MEMORY[0x277D70238] || (v26 = sub_23D9D8BD4(), v27 = [v26 manufacturerName], v26, !v27))
  {
LABEL_15:
    (*(v9 + 8))(v15, v8);
    sub_23D9D8C14();
    return;
  }

  v37 = sub_23D9D8C14();
  v38 = v28;
  MEMORY[0x23EEF3C30](10272, 0xE200000000000000);
  v29 = sub_23D9D8BD4();
  v30 = [v29 manufacturerName];

  if (v30)
  {
    v31 = sub_23D9DA8B4();
    v33 = v32;

    MEMORY[0x23EEF3C30](v31, v33);

    MEMORY[0x23EEF3C30](41, 0xE100000000000000);
    (*(v9 + 8))(v15, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D9BB718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23D91F2DC(a3, v27 - v11, qword_27E2F6C70, &unk_23D9E0A10);
  v13 = sub_23D9DA9F4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23D91F344(v12, qword_27E2F6C70, &unk_23D9E0A10);
  }

  else
  {
    sub_23D9DA9E4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23D9DA994();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23D9DA8F4() + 32;
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

      sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);

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

  sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);
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

uint64_t sub_23D9BBA18()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for AXSUIVoiceLoader() + 24));
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

uint64_t sub_23D9BBB68()
{
  v1[2] = v0;
  v2 = sub_23D9D8C74();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for AXSUIVoiceLoader();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = sub_23D9D91D4();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_23D9DA9B4();
  v1[16] = sub_23D9DA9A4();
  v12 = sub_23D9DA994();
  v1[17] = v12;
  v1[18] = v11;

  return MEMORY[0x2822009F8](sub_23D9BBD50, v12, v11);
}

uint64_t sub_23D9BBD50()
{
  v45 = v0;
  v1 = v0[2];
  v2 = *v1;
  v0[19] = *v1;
  v3 = v1[1];
  v0[20] = v3;
  if (v3)
  {
    v4 = v0[15];
    sub_23D9D8F04();

    v5 = sub_23D9D91C4();
    v6 = sub_23D9DACA4();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    v9 = v0[11];
    v10 = v0[12];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_23D9BDA5C(0x6F56657461647075, 0xED00002928656369, &v44);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_23D9BDA5C(v2, v3, &v44);
      _os_log_impl(&dword_23D918000, v5, v6, "AXSUIVoiceLoader::%s - voiceId=%s. Will await voiceResolver.voice", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEF4BC0](v12, -1, -1);
      MEMORY[0x23EEF4BC0](v11, -1, -1);
    }

    v13 = *(v10 + 8);
    v13(v8, v9);
    v0[21] = v13;
    v14 = v0[2];
    v0[22] = sub_23D9BBA18();
    v15 = *(MEMORY[0x277D70100] + 4);
    v43 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_23D9BC198;
    v17 = v0[10];

    return v43(v17, v2, v3);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[13];

    sub_23D9D8F04();
    v21 = sub_23D9D91C4();
    v22 = sub_23D9DACA4();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_23D9BDA5C(0x6F56657461647075, 0xED00002928656369, &v44);
      _os_log_impl(&dword_23D918000, v21, v22, "AXSUIVoiceLoader::%s - voiceId was nil. Setting voice to nil", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23EEF4BC0](v28, -1, -1);
      MEMORY[0x23EEF4BC0](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
    v30 = v0[9];
    v29 = v0[10];
    v31 = v0[6];
    v32 = v0[2];
    (*(v0[4] + 56))(v29, 1, 1, v0[3]);
    v33 = *(v31 + 20);
    sub_23D91F2DC(v29, v30, &qword_27E2F4460, &qword_23D9DC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
    sub_23D9DA564();
    sub_23D91F344(v29, &qword_27E2F4460, &qword_23D9DC2A0);
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[13];
    v38 = v0[9];
    v37 = v0[10];
    v40 = v0[7];
    v39 = v0[8];
    v41 = v0[5];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_23D9BC198()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_23D9BC2DC, v5, v4);
}

uint64_t sub_23D9BC2DC()
{
  v53 = v0;
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v51 = v6;
  v9 = *(v6 + 20);
  sub_23D91F2DC(v4, v5, &qword_27E2F4460, &qword_23D9DC2A0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
  sub_23D9DA564();
  sub_23D91F344(v4, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9D8F04();
  sub_23D9BCF18(v8, v7);

  v10 = sub_23D9D91C4();
  v11 = sub_23D9DACA4();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[4];
    v48 = v0[3];
    v17 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v17 = 136315650;
    *(v17 + 4) = sub_23D9BDA5C(0x6F56657461647075, 0xED00002928656369, &v52);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_23D9BDA5C(v13, v12, &v52);
    *(v17 + 22) = 2080;
    v18 = v14 + *(v51 + 20);
    MEMORY[0x23EEF3850](v50);
    v19 = (*(v16 + 48))(v15, 1, v48);
    v20 = v0[8];
    if (v19)
    {
      sub_23D91F344(v0[8], &qword_27E2F4460, &qword_23D9DC2A0);
      v21 = 0xE500000000000000;
      v22 = 0x3E6C696E3CLL;
    }

    else
    {
      v30 = v0[4];
      v31 = v0[5];
      v32 = v0[3];
      (*(v30 + 16))(v31, v0[8], v32);
      sub_23D91F344(v20, &qword_27E2F4460, &qword_23D9DC2A0);
      v22 = sub_23D9D8C24();
      v21 = v33;
      (*(v30 + 8))(v31, v32);
    }

    v23 = v0[21];
    v34 = v0[14];
    v35 = v0[11];
    v36 = v0[12];
    sub_23D9BE004(v0[7]);
    v37 = sub_23D9BDA5C(v22, v21, &v52);

    *(v17 + 24) = v37;
    _os_log_impl(&dword_23D918000, v10, v11, "AXSUIVoiceLoader::%s - voiceId=%s. Did await voiceResolver.voice = %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEF4BC0](v49, -1, -1);
    MEMORY[0x23EEF4BC0](v17, -1, -1);

    v28 = v34;
    v29 = v35;
  }

  else
  {
    v23 = v0[21];
    v24 = v0[14];
    v25 = v0[11];
    v26 = v0[12];
    v27 = v0[7];

    sub_23D9BE004(v27);
    v28 = v24;
    v29 = v25;
  }

  v23(v28, v29);
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[13];
  v42 = v0[9];
  v41 = v0[10];
  v44 = v0[7];
  v43 = v0[8];
  v45 = v0[5];

  v46 = v0[1];

  return v46();
}

uint64_t sub_23D9BC6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = type metadata accessor for AXSUIVoiceLoader();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F50, &qword_23D9E25A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  sub_23D9BCF18(v3, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_23D9BCF80(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = &v11[*(v8 + 36)];
  v15 = &v14[*(sub_23D9D9584() + 20)];
  sub_23D9DA9C4();
  *v14 = &unk_23D9E25B0;
  *(v14 + 1) = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F58, &qword_23D9E25B8);
  (*(*(v16 - 8) + 16))(v11, a1, v16);
  v17 = v3[1];
  v20[2] = *v3;
  v20[3] = v17;
  sub_23D9BCF18(v3, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_23D9BCF80(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9BD29C();
  sub_23D9BD3E4();
  sub_23D9DA1E4();

  return sub_23D91F344(v11, &qword_27E2F6F50, &qword_23D9E25A0);
}

uint64_t sub_23D9BC92C()
{
  v0[2] = sub_23D9DA9B4();
  v0[3] = sub_23D9DA9A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23D9BC9D8;

  return sub_23D9BBB68();
}

uint64_t sub_23D9BC9D8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9BE0F8, v5, v4);
}

uint64_t sub_23D9BCB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AXSUIVoiceLoader();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_23D9DA9F4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_23D9BCF18(a3, v7);
  sub_23D9DA9B4();
  v13 = sub_23D9DA9A4();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_23D9BCF80(v7, v15 + v14);
  sub_23D9BB718(0, 0, v11, &unk_23D9E25C8, v15);
}

uint64_t sub_23D9BCCCC()
{
  v0[2] = sub_23D9DA9B4();
  v0[3] = sub_23D9DA9A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23D9BCD78;

  return sub_23D9BBB68();
}

uint64_t sub_23D9BCD78()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9BCEB4, v5, v4);
}

uint64_t sub_23D9BCEB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9BCF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceLoader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9BCF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceLoader();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9BCFE4()
{
  v1 = *(type metadata accessor for AXSUIVoiceLoader() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_23D92A70C;

  return sub_23D9BC92C();
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for AXSUIVoiceLoader();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = (v3 + *(v1 + 20));
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520) + 32);
  v9 = sub_23D9D8C74();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v5[v8], 1, v9))
  {
    (*(v10 + 8))(&v5[v8], v9);
  }

  v11 = *(v3 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_23D9BD21C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXSUIVoiceLoader() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9BCB14(a1, a2, v6);
}

unint64_t sub_23D9BD29C()
{
  result = qword_27E2F6F60;
  if (!qword_27E2F6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F50, &qword_23D9E25A0);
    sub_23D9BD328();
    sub_23D9BD38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6F60);
  }

  return result;
}

unint64_t sub_23D9BD328()
{
  result = qword_27E2F6F68;
  if (!qword_27E2F6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F58, &qword_23D9E25B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6F68);
  }

  return result;
}

unint64_t sub_23D9BD38C()
{
  result = qword_27E2F4228;
  if (!qword_27E2F4228)
  {
    sub_23D9D9584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4228);
  }

  return result;
}

unint64_t sub_23D9BD3E4()
{
  result = qword_27E2F6F70;
  if (!qword_27E2F6F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4458, &qword_23D9DD3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6F70);
  }

  return result;
}

uint64_t sub_23D9BD460()
{
  v1 = type metadata accessor for AXSUIVoiceLoader();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = (v0 + v2 + *(v1 + 20));
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520) + 32);
  v10 = sub_23D9D8C74();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v6[v9], 1, v10))
  {
    (*(v11 + 8))(&v6[v9], v10);
  }

  v12 = *(v0 + v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_23D9BD5D4()
{
  v2 = *(type metadata accessor for AXSUIVoiceLoader() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D9BCCCC();
}

uint64_t sub_23D9BD6C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D9BD7BC;

  return v7(a1);
}

uint64_t sub_23D9BD7BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23D9BD8B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23D9BD8EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D92A70C;

  return sub_23D9BD6C4(a1, v5);
}

uint64_t sub_23D9BD9A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23D928310;

  return sub_23D9BD6C4(a1, v5);
}

uint64_t sub_23D9BDA5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D9BDB28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23D939E34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D9BDB28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23D9BDC34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23D9DAEA4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23D9BDC34(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D9BDC80(a1, a2);
  sub_23D9BDDB0(&unk_284FDD748);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D9BDC80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D9BDE9C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23D9DAEA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23D9DA944();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D9BDE9C(v10, 0);
        result = sub_23D9DAE54();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23D9BDDB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23D9BDF10(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23D9BDE9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F78, &unk_23D9E25F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D9BDF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F78, &unk_23D9E25F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23D9BE004(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceLoader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9BE060()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F50, &qword_23D9E25A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9BD29C();
  sub_23D9BD3E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9BE0FC()
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E2F7320;
  if (qword_27E2F7320)
  {
    v1 = qword_27E2F7320;
    v2 = sub_23D9DA8A4();
    v3 = sub_23D9DA8A4();

    v4 = sub_23D9DA8A4();
    v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  sub_23D9D9F04();
  if (v0)
  {
    v6 = sub_23D9DA8A4();
    v7 = sub_23D9DA8A4();

    v8 = sub_23D9DA8A4();
    v9 = [v0 localizedStringForKey:v6 value:v7 table:v8];

    sub_23D9DA8B4();
  }

  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7078, &qword_23D9E2920);
  sub_23D91F01C(&qword_27E2F7070, &qword_27E2F7078, &qword_23D9E2920);
  return sub_23D9DA674();
}

uint64_t sub_23D9BE3B4()
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E2F7320;
  if (qword_27E2F7320)
  {
    v1 = qword_27E2F7320;
    v2 = sub_23D9DA8A4();
    v3 = sub_23D9DA8A4();

    v4 = sub_23D9DA8A4();
    v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  sub_23D9D9F04();
  if (v0)
  {
    v6 = sub_23D9DA8A4();
    v7 = sub_23D9DA8A4();

    v8 = sub_23D9DA8A4();
    v9 = [v0 localizedStringForKey:v6 value:v7 table:v8];

    sub_23D9DA8B4();
  }

  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7090, &qword_23D9E2928);
  sub_23D9C35CC();
  return sub_23D9DA674();
}

uint64_t sub_23D9BE640()
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v0 = qword_27E2F7320;
    v1 = sub_23D9DA8A4();
    v2 = sub_23D9DA8A4();

    v3 = sub_23D9DA8A4();
    v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70C8, &unk_23D9E29C0);
  sub_23D91F01C(&qword_27E2F70D0, &qword_27E2F70C8, &unk_23D9E29C0);
  return sub_23D9DA694();
}

uint64_t sub_23D9BE854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a5;
  v34 = a6;
  v31 = a4;
  v32 = a11;
  v29 = a3;
  v30 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v35 = 0;
  sub_23D9DA3A4();
  v23 = v37;
  *(a9 + 80) = v36;
  *(a9 + 88) = v23;
  LODWORD(a8) = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) + 68);
  v24 = sub_23D9D88A4();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  sub_23D91F2DC(v22, v20, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  sub_23D91F344(v22, &unk_27E2F6A30, &qword_23D9E0BC0);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v25 = v31;
  *(a9 + 32) = v29;
  *(a9 + 40) = v25;
  result = swift_allocObject();
  v27 = v34;
  *(result + 16) = v33;
  *(result + 24) = v27;
  *(a9 + 48) = v32;
  *(a9 + 56) = result;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t LiveSpeechSettingsView.init(settings:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LiveSpeechSettingsView(0);
  v3 = (a1 + v2[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F80, &qword_23D9E2600);
  sub_23D9DA3A4();
  *v3 = v11;
  v3[1] = v12;
  v4 = a1 + v2[6];
  sub_23D9DA3A4();
  *v4 = v11;
  *(v4 + 8) = v12;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_23D9DA8B4();
    v9 = v8;

    if (v7 == 0xD000000000000010 && 0x800000023D9E40E0 == v9)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = sub_23D9DAFC4();
    }
  }

  *(a1 + v2[7]) = v6 & 1;
  sub_23D9DAC94();
  sub_23D9C2AB4(&qword_27E2F6F88, MEMORY[0x277CE79A0]);
  return sub_23D9DA6C4();
}

void sub_23D9BECB4()
{
  v1 = *(v0 + *(type metadata accessor for LiveSpeechSettingsView(0) + 28));
  v2 = sub_23D9DA8A4();
  if (v1 == 1)
  {
    v3 = AXLocStringKeyForExclusiveModel();

    if (v3)
    {
LABEL_5:
      v4 = sub_23D9DA8B4();
      v6 = v5;

      v7._countAndFlagsBits = v4;
      v7._object = v6;
      AXSUILocString(_:)(v7);

      return;
    }

    __break(1u);
  }

  v3 = AXLocStringKeyForHomeButtonAndExclusiveModel();

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_23D9BED90@<X0>(BOOL *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  sub_23D9DA6A4();
  v2 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v3 = *&v12[v2];

  v4 = sub_23D9DAB44();
  v5 = *(v4 + 16);
  v6 = 32;
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *(v4 + v6);
    v6 += 4;
  }

  while (v9 != 33);
  v10 = v7 != 0;

  *a1 = v10;
  return result;
}

void sub_23D9BEE58(_BYTE *a1)
{
  if (*a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
    sub_23D9DA6A4();
    v1 = MEMORY[0x277CE7910];
    v2 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v3 = *(v37[0] + v2);

    v4 = sub_23D9DAB44();
    v5 = *(v4 + 16);
    v6 = 32;
    while (v5)
    {
      v7 = *(v4 + v6);
      v6 += 4;
      --v5;
      if (v7 == 33)
      {
        goto LABEL_5;
      }
    }

    sub_23D9DA6A4();
    v27 = *v1;
    swift_beginAccess();
    v28 = *(v37[0] + v27);

    v29 = sub_23D9DAB34();
    v31 = v30;
    v32 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v31 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_23D93C8B4(0, *(v32 + 2) + 1, 1, v32);
      *v31 = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_23D93C8B4((v34 > 1), v35 + 1, 1, v32);
      *v31 = v32;
    }

    *(v32 + 2) = v35 + 1;
    *&v32[4 * v35 + 32] = 33;
    v29(v37, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
    sub_23D9DA6A4();
    v8 = MEMORY[0x277CE7910];
    v9 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v10 = *(v37[0] + v9);

    v11 = sub_23D9DAB44();
    v12 = *(v11 + 16);
    v13 = 32;
    do
    {
      if (!v12)
      {
LABEL_5:

        return;
      }

      v14 = *(v11 + v13);
      v13 += 4;
      --v12;
    }

    while (v14 != 33);

    sub_23D9DA6A4();
    v15 = *v8;
    swift_beginAccess();
    v16 = *&v40[v15];

    sub_23D9DA6A4();
    v17 = *v8;
    swift_beginAccess();
    v18 = *&v39[v17];

    v19 = sub_23D9DAB44();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      v22 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v21++;
        v25 = v26;
        if (v26 != 33)
        {
          v38 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23D9647C8(0, *(v22 + 2) + 1, 1);
            v22 = v38;
          }

          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          if (v24 >= v23 >> 1)
          {
            sub_23D9647C8((v23 > 1), v24 + 1, 1);
            v22 = v38;
          }

          *(v22 + 2) = v24 + 1;
          *&v22[4 * v24 + 32] = v25;
        }

        --v20;
      }

      while (v20);
    }

    sub_23D9DAB54();

    sub_23D9DA6A4();
    v36 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v28 = *&v38[v36];

    sub_23D9DAB74();
  }
}

uint64_t LiveSpeechSettingsView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiveSpeechSettingsView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_23D9BF450(v2, a1);
  v8 = v2 + *(v5 + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  v22 = v9;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v11 = v20[2];
  v20[0] = v20[1];
  v12 = v21;
  sub_23D9C2EE0(v2, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_23D9C2F4C(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LiveSpeechSettingsView);
  v15 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F90, &qword_23D9E2608) + 36)];
  *v15 = v20[0];
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = sub_23D9C0BA0;
  *(v15 + 4) = v14;
  sub_23D9C2EE0(v2, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v16 = swift_allocObject();
  sub_23D9C2F4C(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13, type metadata accessor for LiveSpeechSettingsView);
  v17 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F98, &qword_23D9E2620) + 36)];
  v18 = &v17[*(sub_23D9D9584() + 20)];
  result = sub_23D9DA9C4();
  *v17 = &unk_23D9E2618;
  *(v17 + 1) = v16;
  return result;
}

uint64_t sub_23D9BF450@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7028, &qword_23D9E28E0);
  v64 = *(v66 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v60 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7030, &qword_23D9E28E8);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7038, &qword_23D9E28F0);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v60 - v10;
  v11 = sub_23D9D8EF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7040, &qword_23D9E28F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v77 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7048, &qword_23D9E2900);
  v69 = *(v71 - 8);
  v22 = *(v69 + 64);
  v23 = MEMORY[0x28223BE20](v71);
  v76 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v60 - v25;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7050, &qword_23D9E2908);
  v67 = *(v68 - 8);
  v27 = *(v67 + 64);
  v28 = MEMORY[0x28223BE20](v68);
  v75 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v60 - v30;
  sub_23D9BECB4();
  v79 = a1;
  v80 = v32;
  v81 = v33;
  sub_23D91B650();
  v80 = sub_23D9D9F04();
  v81 = v34;
  v82 = v35 & 1;
  v83 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7058, &unk_23D9E2910);
  sub_23D9C3390();
  v74 = v31;
  sub_23D9DA694();
  v37 = v26;
  sub_23D9BE640();
  (*(v12 + 104))(v15, *MEMORY[0x277CE67B0], v11);
  v38 = sub_23D9D8EE4();
  (*(v12 + 8))(v15, v11);
  v78 = a1;
  v73 = v21;
  if (v38)
  {
    v39 = v61;
    sub_23D9BE0FC();
    v40 = v62;
    (*(v62 + 16))(v7, v39, v8);
    swift_storeEnumTagMultiPayload();
    sub_23D9C3480();
    sub_23D9C353C();
    sub_23D9D9B14();
    (*(v40 + 8))(v39, v8);
  }

  else
  {
    v41 = v63;
    sub_23D9BE3B4();
    v42 = v64;
    v43 = v66;
    (*(v64 + 16))(v7, v41, v66);
    swift_storeEnumTagMultiPayload();
    sub_23D9C3480();
    sub_23D9C353C();
    sub_23D9D9B14();
    (*(v42 + 8))(v41, v43);
  }

  v44 = v67;
  v45 = *(v67 + 16);
  v46 = v75;
  v47 = v68;
  v45(v75, v74, v68);
  v48 = v69;
  v49 = *(v69 + 16);
  v65 = v37;
  v50 = v37;
  v51 = v71;
  v49(v76, v50, v71);
  sub_23D91F2DC(v73, v77, &qword_27E2F7040, &qword_23D9E28F8);
  v52 = v72;
  v45(v72, v46, v47);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70A0, &qword_23D9E2930);
  v54 = v76;
  v49(&v52[*(v53 + 48)], v76, v51);
  v55 = &v52[*(v53 + 64)];
  v56 = v77;
  sub_23D91F2DC(v77, v55, &qword_27E2F7040, &qword_23D9E28F8);
  sub_23D91F344(v73, &qword_27E2F7040, &qword_23D9E28F8);
  v57 = *(v48 + 8);
  v57(v65, v51);
  v58 = *(v44 + 8);
  v58(v74, v47);
  sub_23D91F344(v56, &qword_27E2F7040, &qword_23D9E28F8);
  v57(v54, v51);
  return (v58)(v75, v47);
}

uint64_t sub_23D9BFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for LiveSpeechSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v7 = *(v6 - 8);
  v21 = v6;
  v22 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11._countAndFlagsBits = 0x4550535F4556494CLL;
  v11._object = 0xEB00000000484345;
  v24 = AXSUILocString(_:)(v11);
  sub_23D9C2EE0(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  sub_23D9DA9B4();
  v12 = sub_23D9DA9A4();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  v16 = v15;
  sub_23D9C2F4C(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LiveSpeechSettingsView);
  sub_23D9C2EE0(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v17 = sub_23D9DA9A4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  sub_23D9C2F4C(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13, type metadata accessor for LiveSpeechSettingsView);
  sub_23D9DA594();
  sub_23D91B650();
  sub_23D9DA4C4();
  sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0);
  v19 = v21;
  sub_23D9DA114();
  return (*(v22 + 8))(v10, v19);
}

uint64_t sub_23D9BFFB8@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000010;
  *(v2 + 24) = 0x800000023D9E4C50;
  return sub_23D9BE854(0x53455341524850, 0xE700000000000000, sub_23D9A85D8, v2, sub_23D9C0088, 0, &qword_27E2F70C8, &unk_23D9E29C0, a1, &unk_284FE0FF8, sub_23D9C3AF8);
}

uint64_t sub_23D9C0088()
{
  sub_23D9DA3A4();
  v0._object = 0x800000023D9E4C50;
  v0._countAndFlagsBits = 0xD000000000000010;
  AXSUILocString(_:)(v0);
  sub_23D9C3854();
  sub_23D91B650();
  sub_23D9DA064();

  sub_23D94CFE4();
}

uint64_t sub_23D9C0170@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a1;
  v42 = a2;
  v2 = type metadata accessor for LiveSpeechSettingsView(0);
  v38 = *(v2 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v17 + 8))(v20, v16);
  v21 = v51;
  v22 = v52;
  v23 = v53;
  swift_getKeyPath();
  v48 = v21;
  v49 = v22;
  v50 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70A8, &qword_23D9E2988);
  sub_23D9DA574();

  v24 = v45;
  v25 = v46;
  v26 = v47;

  sub_23D9C2EE0(v36, v4, type metadata accessor for LiveSpeechSettingsView);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_23D9C2F4C(v4, v28 + v27, type metadata accessor for LiveSpeechSettingsView);
  v43 = 0xD00000000000001FLL;
  v44 = 0x800000023D9E4C10;
  sub_23D9DA404();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
  v29 = v40;
  sub_23D9DA114();
  (*(v41 + 8))(v9, v29);
  v30 = v39;
  sub_23D91F2DC(v15, v39, &qword_27E2F49E8, &unk_23D9DCCD0);
  v31 = v42;
  *v42 = v24;
  v31[1] = v25;
  v31[2] = v26;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70B0, &qword_23D9E2990);
  sub_23D91F2DC(v30, v32 + *(v33 + 48), &qword_27E2F49E8, &unk_23D9DCCD0);

  sub_23D91F344(v15, &qword_27E2F49E8, &unk_23D9DCCD0);
  sub_23D91F344(v30, &qword_27E2F49E8, &unk_23D9DCCD0);
}

uint64_t sub_23D9C0654(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LiveSpeechSettingsView(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C06C8(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28));
  v7 = *v5;
  v6 = v5[1];
  v11[2] = v7;
  v11[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7020, &qword_23D9E28D8);
  sub_23D9DA3B4();
  sub_23D9C2EE0(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_23D9C2F4C(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LiveSpeechSettingsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F80, &qword_23D9E2600);
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  sub_23D91F01C(&qword_27E2F70B8, &qword_27E2F6F80, &qword_23D9E2600);
  sub_23D9C2AB4(&qword_27E2F7098, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  sub_23D9C37C0();
  return sub_23D9DA624();
}

uint64_t sub_23D9C08DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  sub_23D9DA6A4();
  v15 = v19[1];
  KeyPath = swift_getKeyPath();
  v17 = sub_23D9D8C74();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 0;
  LODWORD(v13) = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) + 28);
  sub_23D91F2DC(v10, v8, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D9C0A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  sub_23D9DA6A4();
  v4 = (a1 + *(type metadata accessor for LiveSpeechSettingsView(0) + 24));
  v10 = *v4;
  v11 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  sub_23D9DAC94();
  sub_23D9C2AB4(&qword_27E2F6F88, MEMORY[0x277CE79A0]);
  sub_23D9DA6C4();
  result = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView();
  v6 = a2 + *(result + 20);
  *v6 = v7;
  *(v6 + 8) = v8;
  *(v6 + 16) = v9;
  return result;
}

uint64_t sub_23D9C0BCC(uint64_t a1)
{
  *(v1 + 96) = a1;
  sub_23D9DA9B4();
  *(v1 + 104) = sub_23D9DA9A4();
  v3 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9C0C64, v3, v2);
}

void sub_23D9C0C64()
{
  v1 = [objc_opt_self() sharedInputModeController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v1 enabledInputModeLanguages];

  if (!v3)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v4 = v0[13];

  v5 = sub_23D9DA974();

  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    v9 = MEMORY[0x277D84F90];
    do
    {
      sub_23D939E34(v8, (v0 + 2));
      sub_23D939E34((v0 + 2), (v0 + 6));
      if (swift_dynamicCast())
      {
        v11 = v0[10];
        v10 = v0[11];
        v12 = objc_opt_self();
        v13 = sub_23D9DA8A4();
        v14 = [v12 displayNameForKeyboardIdentifier_];

        if (v14)
        {
          v15 = sub_23D9DA8B4();
          v17 = v16;

          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_23D93C9B8(0, *(v9 + 2) + 1, 1, v9);
          }

          v19 = *(v9 + 2);
          v18 = *(v9 + 3);
          if (v19 >= v18 >> 1)
          {
            v9 = sub_23D93C9B8((v18 > 1), v19 + 1, 1, v9);
          }

          *(v9 + 2) = v19 + 1;
          v20 = &v9[32 * v19];
          *(v20 + 4) = v11;
          *(v20 + 5) = v10;
          *(v20 + 6) = v15;
          *(v20 + 7) = v17;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }

      v8 += 32;
      --v7;
    }

    while (v7);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v21 = v0[12];
  v22 = (v21 + *(type metadata accessor for LiveSpeechSettingsView(0) + 20));
  v24 = *v22;
  v23 = v22[1];
  v0[2] = v24;
  v0[3] = v23;
  v0[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7020, &qword_23D9E28D8);
  sub_23D9DA3C4();
  v25 = v0[1];

  v25();
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = (v3 + v1[7]);
  v6 = *v5;

  v7 = v5[1];

  v8 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_23D9C1030()
{
  v2 = *(type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D92A70C;

  return sub_23D9C0BCC(v0 + v3);
}

uint64_t sub_23D9C1118()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23D9C1258()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23D9DB034();
  sub_23D9DA914();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D9C12C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23D9DA914();

  return sub_23D9DA914();
}

uint64_t sub_23D9C1310()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23D9DB034();
  sub_23D9DA914();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D9C1374(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23D9DAFC4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23D9DAFC4();
    }
  }

  return result;
}

uint64_t sub_23D9C1418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23D9DA9B4();
  v3[5] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_23D9C14B4, v5, v4);
}

uint64_t sub_23D9C14B4()
{
  v1 = v0[3];
  v2 = sub_23D9D8D84();
  v0[8] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[4];
    v0[9] = sub_23D9C1118();
    v7 = *(MEMORY[0x277D70100] + 4);
    v15 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_23D9C1614;
    v9 = v0[2];

    return v15(v9, v4, v5);
  }

  else
  {
    v11 = v0[5];
    v12 = v0[2];

    v13 = sub_23D9D8C74();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23D9C1614()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23D9C1774, v6, v5);
}

uint64_t sub_23D9C1774()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9C17D4()
{
  v0 = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  return sub_23D9DA3B4();
}

uint64_t sub_23D9C1828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v3 = *(*(v29 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v29);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for LiveSpeechVoiceSelectionView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v25 = a1[1];
  v26 = v12;
  v13 = a1[4];
  v14 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = sub_23D9D8DA4();
  v17 = *(*(v16 - 8) + 56);
  v17(v7, 1, 1, v16);
  v18 = *(v8 + 28);

  v24 = v15;
  sub_23D9DA5A4();
  sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
  *(v11 + 1) = swift_getKeyPath();
  v11[16] = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  v19 = *(v8 + 32);
  v17(v7, 1, 1, v16);
  sub_23D91F2DC(v7, v27, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
  *v11 = v24;
  v20 = v25;
  *(v11 + 3) = v26;
  *(v11 + 4) = v20;
  v21 = a1[3];
  v30 = a1[2];
  v31 = v21;
  sub_23D9C2AB4(&qword_27E2F7018, type metadata accessor for LiveSpeechVoiceSelectionView);
  sub_23D91B650();
  sub_23D9DA064();
  return sub_23D9C332C(v11);
}

double sub_23D9C1AE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  v34 = *(v4 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64C8, &qword_23D9E0770);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v29 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64D0, &unk_23D9E0778);
  v35 = *(v32 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v29 - v11;
  v36 = sub_23D9D99B4();
  v44 = 1;
  sub_23D9C1FDC(a1, &v38);
  v47 = v40;
  v48 = v41;
  v45 = v38;
  v46 = v39;
  v50[2] = v40;
  v50[3] = v41;
  v50[4] = v42;
  v50[1] = v39;
  v49 = v42;
  v50[0] = v38;
  sub_23D91F2DC(&v45, &v37, &qword_27E2F4DB8, &unk_23D9E2850);
  sub_23D91F344(v50, &qword_27E2F4DB8, &unk_23D9E2850);
  *&v43[23] = v46;
  *&v43[39] = v47;
  *&v43[55] = v48;
  *&v43[71] = v49;
  *&v43[7] = v45;
  v30 = v44;
  v13 = a1[4];
  v14 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v15 = *(v13 + v14);
  sub_23D9DAB84();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64E0, &qword_23D9E07F8);
  sub_23D9C2AB4(&qword_27E2F64E8, MEMORY[0x277CE7908]);
  sub_23D9D8E44();

  sub_23D9D8DB4();

  v17 = *a1;
  v18 = a1[1];
  sub_23D9D8AE4();
  sub_23D9D8AD4();
  sub_23D9D8DF4();

  (*(v6 + 8))(v9, v29);
  v19 = v31;
  sub_23D9C2EE0(a1, v31, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_23D9C2F4C(v19, v21 + v20, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7008, &qword_23D9E2870) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v23 = v32;
  sub_23D9D8E24();

  (*(v35 + 8))(v12, v23);
  KeyPath = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7010, &unk_23D9E28A0);
  sub_23D9C2EE0(a1, v22 + v25[10], type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  *(v22 + v25[9]) = KeyPath;
  *(v22 + v25[11]) = 1;
  v26 = *&v43[48];
  *(a2 + 49) = *&v43[32];
  *(a2 + 65) = v26;
  *(a2 + 81) = *&v43[64];
  result = *v43;
  v28 = *&v43[16];
  *(a2 + 17) = *v43;
  *a2 = v36;
  *(a2 + 8) = 0;
  *(a2 + 16) = v30;
  *(a2 + 96) = *&v43[79];
  *(a2 + 33) = v28;
  return result;
}

uint64_t sub_23D9C1FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40[-v11];
  v13 = *(a1 + 24);
  v48 = *(a1 + 16);
  v49 = v13;
  sub_23D91B650();

  v14 = sub_23D9D9F04();
  v42 = v15;
  v43 = v14;
  v41 = v16;
  v44 = v17;
  LODWORD(v13) = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3B4();
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    v18 = 0xE300000000000000;
    v19 = 2108704;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v19 = v20;
    v18 = v21;
    (*(v5 + 8))(v8, v4);
  }

  v48 = v19;
  v49 = v18;
  v22 = sub_23D9D9F04();
  v24 = v23;
  v26 = v25;
  sub_23D9DA2F4();
  v27 = sub_23D9D9EB4();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_23D9274BC(v22, v24, v26 & 1);

  v34 = v41 & 1;
  LOBYTE(v48) = v41 & 1;
  v47 = v41 & 1;
  v46 = 1;
  v35 = v31 & 1;
  v45 = v31 & 1;
  v36 = v31 & 1;
  v38 = v42;
  v37 = v43;
  *a2 = v43;
  *(a2 + 8) = v38;
  *(a2 + 16) = v34;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v27;
  *(a2 + 56) = v29;
  *(a2 + 64) = v36;
  *(a2 + 72) = v33;
  sub_23D91E0AC(v37, v38, v34);

  sub_23D91E0AC(v27, v29, v35);

  sub_23D9274BC(v27, v29, v35);

  sub_23D9274BC(v37, v38, v48);
}

uint64_t sub_23D9C2318()
{
  v0 = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  return sub_23D9DA3B4();
}

uint64_t sub_23D9C2370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_23D91F2DC(a1, &v10 - v7, &qword_27E2F4460, &qword_23D9DC2A0);
  LODWORD(a1) = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) + 28);
  sub_23D91F2DC(v8, v6, &qword_27E2F4460, &qword_23D9DC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3C4();
  return sub_23D91F344(v8, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D9C2488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1 - 8);
  v7 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *v2;
  v11 = *(v3 + 8);
  sub_23D9C2EE0(v3, &v16 - v8, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_23D9C2F4C(v9, v13 + v12, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  sub_23D9C2EE0(v3, v7, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v14 = swift_allocObject();
  sub_23D9C2F4C(v7, v14 + v12, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);

  return sub_23D9BE854(v10, v11, sub_23D9C31D0, v14, sub_23D9C2FB4, v13, &qword_27E2F7000, &qword_23D9E2848, v17, &unk_284FE0F30, sub_23D99275C);
}

uint64_t sub_23D9C2684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}