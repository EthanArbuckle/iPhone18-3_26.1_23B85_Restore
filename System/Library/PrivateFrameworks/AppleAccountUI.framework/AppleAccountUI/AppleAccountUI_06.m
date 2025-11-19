uint64_t sub_1C54B4874()
{
  v1 = *(type metadata accessor for SharedNameRowView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C54B4648(v2);
}

uint64_t sub_1C54B48D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v7 = sub_1C55967A4();
  v4[6] = v7;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C54B4994, v7, v5);
}

uint64_t sub_1C54B4994()
{
  v4 = v0[4];
  v0[2] = v0;
  v1 = sub_1C54B2520();
  v0[8] = v1;
  v7 = *(v4 + *(type metadata accessor for SharedNameRowView() + 28));
  v0[9] = v7;
  MEMORY[0x1E69E5928](v7);
  v6 = (*(*v1 + 560) + **(*v1 + 560));
  v2 = swift_task_alloc();
  *(v5 + 80) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_1C54B4B10;

  return v6(v7);
}

uint64_t sub_1C54B4B10()
{
  v5 = *v0;
  v4 = *(*v0 + 72);
  *(*v0 + 16) = *v0;

  v1 = *(v5 + 56);
  v2 = *(v5 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C545F50C, v2, v1);
}

uint64_t sub_1C54B4C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v7 = a1;
  v12 = sub_1C54B6D6C;
  v25 = 0;
  v24 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5D0);
  v13 = *(v19 - 8);
  v14 = v19 - 8;
  v8 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v17 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v18 = &v6 - v9;
  v25 = &v6 - v9;
  v24 = v4;
  v10 = &v22;
  v23 = v4;
  v11 = type metadata accessor for SharedNameView();
  sub_1C54B6D74();
  sub_1C5595174();
  v16 = sub_1C54B5014();
  sub_1C540EFD8(v17, v19, v18);
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v17, v19);
  (*(v13 + 16))(v17, v18, v19);
  sub_1C540EFD8(v17, v19, v15);
  v21(v17, v19);
  return (v21)(v18, v19);
}

uint64_t sub_1C54B4E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SharedNameRowView();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1C54B4C90(v3, a1);
}

unint64_t sub_1C54B4F00()
{
  v2 = qword_1EC15D5D8;
  if (!qword_1EC15D5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5A0);
    sub_1C54B4544();
    sub_1C54B45CC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B5014()
{
  v2 = qword_1EC15D5E0;
  if (!qword_1EC15D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B509C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v9 = a1;
  v18 = 0;
  v17 = 0;
  v8 = 0;
  v13 = type metadata accessor for SharedNameView();
  v6 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v5 - v6);
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v6);
  v16 = (&v5 - v7);
  v18 = &v5 - v7;
  v17 = a1;
  v11 = sub_1C54B2520();
  v10 = *(v9 + *(type metadata accessor for SharedNameRowView() + 28));
  MEMORY[0x1E69E5928](v10);
  sub_1C5437344(v11, v10, v15);
  v14 = sub_1C54B6D74();
  sub_1C540EFD8(v15, v13, v16);
  sub_1C54375F0(v15);
  sub_1C5437488(v16, v15);
  sub_1C540EFD8(v15, v13, v12);
  sub_1C54375F0(v15);
  return sub_1C54375F0(v16);
}

char *SharedNameRowView.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v57 = a1;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v47 = 0;
  v37 = sub_1C55962E4();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v41 = v23 - v40;
  v42 = sub_1C5594994();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v46 = v23 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5E8);
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v58 = v23 - v51;
  v70 = v23 - v51;
  v53 = type metadata accessor for SharedNameRowView();
  v52 = (*(*(v53 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v57);
  v55 = (v23 - v52);
  v69 = v23 - v52;
  v68 = v2;
  swift_getKeyPath();
  sub_1C5595024();
  v56 = v53[6];
  v54 = 1;
  v3 = sub_1C5409594();
  v4 = v57;
  v5 = v55 + v56;
  *v5 = v3 & v54;
  *(v5 + 1) = v6;
  v60 = v4[3];
  v61 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v60);
  sub_1C54B2F88();
  v7 = v59;
  sub_1C5596F24();
  v62 = v7;
  v63 = v7;
  if (v7)
  {
    v23[2] = v63;
    v23[0] = v63;
    __swift_destroy_boxed_opaque_existential_0(v57);
    sub_1C5480400(v55);
    result = v55 + v53[6];
    sub_1C5373718();
  }

  else
  {
    v8 = sub_1C5596D74();
    v32 = 0;
    v33 = v8;
    v34 = v9;
    v35 = 0;
    v64 = v8;
    v65 = v9;
    if (v9)
    {
      v66 = v64;
      v67 = v65;
    }

    else
    {
      sub_1C5594984();
      v66 = sub_1C5594944();
      v67 = v10;
      (*(v43 + 8))(v46, v42);
      if (v65)
      {
        sub_1C5401ECC();
      }
    }

    v11 = v57;
    v12 = v67;
    v13 = (v55 + v53[8]);
    *v13 = v66;
    v13[1] = v12;
    v24 = v11[3];
    v23[3] = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v24);
    sub_1C5596F14();
    v25 = sub_1C55962D4();
    v29 = *(v38 + 8);
    v28 = v38 + 8;
    v29(v41, v37);
    v14 = RUIDecodingUserInfo.account.getter();
    v15 = v25;
    *(v55 + v53[7]) = v14;
    MEMORY[0x1E69E5920](v15);
    v27 = v57[3];
    v26 = v57[4];
    __swift_project_boxed_opaque_existential_0(v57, v27);
    sub_1C5596F14();
    v31 = sub_1C55962D4();
    v29(v41, v37);
    RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
    v30 = (v55 + v53[5]);
    v16 = sub_1C5436D54();
    v17 = v30;
    v18 = v16;
    v19 = v31;
    *v30 = v18;
    v17[1] = v20;
    v21 = MEMORY[0x1E69E5920](v19);
    (*(v49 + 8))(v58, v48, v21);
    sub_1C54B39A8(v55, v36);
    __swift_destroy_boxed_opaque_existential_0(v57);
    return sub_1C54B5864(v55);
  }

  return result;
}

uint64_t sub_1C54B5864(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for SharedNameRowView();

  MEMORY[0x1E69E5920](*(a1 + *(v3 + 28)));

  return a1;
}

uint64_t SharedNameRowView.init(account:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v27 = a1;
  v26 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v22 = 0;
  v23 = type metadata accessor for SharedNameRowView();
  v19 = (*(*(v23 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = (&v18 - v19);
  v31 = &v18 - v19;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v29 = v3;
  swift_getKeyPath();
  sub_1C5595024();
  v20 = v23[6];
  v21 = 1;
  v4 = sub_1C5409594();
  v5 = v28 + v20;
  *v5 = v4 & v21;
  *(v5 + 1) = v6;
  v7 = sub_1C55965F4();
  v8 = v27;
  v9 = (v28 + v23[8]);
  *v9 = v7;
  v9[1] = v10;
  MEMORY[0x1E69E5928](v8);
  *(v28 + v23[7]) = v27;

  v24 = v23[5];
  v11 = sub_1C5436D54();
  v12 = v28;
  v14 = v13;
  v15 = v25;
  v16 = (v28 + v24);
  *v16 = v11;
  v16[1] = v14;
  sub_1C54B39A8(v12, v15);

  MEMORY[0x1E69E5920](v27);
  return sub_1C54B5864(v28);
}

uint64_t sub_1C54B5BA0@<X0>(uint64_t *a1@<X8>)
{
  result = SharedNameRowView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C54B5BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v9 = a1;
  v12 = sub_1C54B6544;
  v34 = 0;
  v33 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5F0);
  v7 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v6 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5F8);
  v8 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v6 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D600);
  v10 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v29 = &v6 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v30 = &v6 - v11;
  v34 = &v6 - v11;
  v33 = v4;
  v13 = &v31;
  v32 = v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D608);
  v15 = sub_1C54B654C();
  sub_1C5412C88();
  v16 = 0;
  v17 = 1;
  sub_1C5596024();
  v19 = sub_1C55957A4();
  sub_1C54B65D4();
  sub_1C5595D84();
  sub_1C5367538(v20);
  sub_1C5596244();
  v23 = sub_1C54B665C();
  v24 = sub_1C543F8AC();
  v22 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C5367538(v25);
  v28 = sub_1C54B6700();
  sub_1C540EFD8(v29, v27, v30);
  sub_1C5367538(v29);
  sub_1C5367624(v30, v29);
  sub_1C540EFD8(v29, v27, v26);
  sub_1C5367538(v29);
  return sub_1C5367538(v30);
}

uint64_t sub_1C54B5ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v29 = MEMORY[0x1E6981198];
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v14 = 0;
  v23 = sub_1C5595F34();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v11 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v10 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20);
  v12 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v10 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v13 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v10 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  v15 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v14);
  v42 = &v10 - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v10 - v16;
  v57 = &v10 - v16;
  v45 = sub_1C5595654();
  v35 = *(v45 - 8);
  v36 = v45 - 8;
  v18 = *(v35 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v45);
  v43 = &v10 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v10 - v19;
  v56 = &v10 - v19;
  v55 = a1;
  sub_1C5595664();
  v38 = sub_1C5489378();
  sub_1C540EFD8(v43, v45, v48);
  v47 = *(v35 + 8);
  v46 = v35 + 8;
  v47(v43, v45);
  sub_1C55965F4();
  v6 = sub_1C5595EF4();
  v24 = &v54;
  v54 = v6;
  (*(v20 + 104))(v22, *MEMORY[0x1E69816C8], v23);
  sub_1C5595AA4();
  (*(v20 + 8))(v22, v23);
  sub_1C5410D10();
  sub_1C5595864();
  v25 = v7;
  v28 = sub_1C547EEF0();
  sub_1C5595A94();
  sub_1C547EF94(v26);
  v8 = sub_1C5485DB0();
  v30 = &v53;
  v53 = v8;
  v52[2] = v27;
  v52[3] = v28;
  swift_getOpaqueTypeConformance2();
  sub_1C5595BA4();
  (*(v31 + 8))(v33, v34);
  v39 = sub_1C54893F8();
  sub_1C540EFD8(v42, v37, v44);
  sub_1C5362FB4(v42);
  (*(v35 + 16))(v43, v48, v45);
  v41 = v52;
  v52[0] = v43;
  sub_1C536301C(v44, v42);
  v52[1] = v42;
  v51[0] = v45;
  v51[1] = v37;
  v49 = v38;
  v50 = v39;
  sub_1C540F5A0(v41, 2uLL, v51, v40);
  sub_1C5362FB4(v42);
  v47(v43, v45);
  sub_1C5362FB4(v44);
  return (v47)(v48, v45);
}

unint64_t sub_1C54B654C()
{
  v2 = qword_1EC15D610;
  if (!qword_1EC15D610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B65D4()
{
  v2 = qword_1EC15D618;
  if (!qword_1EC15D618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B665C()
{
  v2 = qword_1EC15D630;
  if (!qword_1EC15D630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5F8);
    sub_1C54B65D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6700()
{
  v2 = qword_1EC15D638;
  if (!qword_1EC15D638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D600);
    sub_1C54B665C();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B67D8()
{
  v2 = qword_1EC15D640;
  if (!qword_1EC15D640)
  {
    type metadata accessor for SharedNameRowView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6870()
{
  v2 = qword_1EC15D648;
  if (!qword_1EC15D648)
  {
    type metadata accessor for SharedNameRowView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6908()
{
  v2 = qword_1EC15D650;
  if (!qword_1EC15D650)
  {
    type metadata accessor for SharedNameRowView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6A40()
{
  v5 = sub_1C5488DC4();
  if (v0 <= 0x3F)
  {
    v5 = sub_1C543D9C0();
    if (v1 <= 0x3F)
    {
      v5 = sub_1C5433F94();
      if (v2 <= 0x3F)
      {
        v5 = sub_1C543D95C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

unint64_t sub_1C54B6BC8()
{
  v2 = qword_1EC1641B0[0];
  if (!qword_1EC1641B0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC1641B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6C5C()
{
  v2 = qword_1EC1642C0;
  if (!qword_1EC1642C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC1642C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6CF0()
{
  v2 = qword_1EC1642C8[0];
  if (!qword_1EC1642C8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC1642C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B6D74()
{
  v2 = qword_1EC15D658;
  if (!qword_1EC15D658)
  {
    type metadata accessor for SharedNameView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B6DF4(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for SharedNameRowView() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54B48D8(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C54B6F10(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 & 1;
  v12 = *(a1 + 96);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 96) = v12;
  return result;
}

uint64_t sub_1C54B70A0()
{
  sub_1C55965F4();
  sub_1C55953C4();
  return sub_1C55959E4();
}

uint64_t sub_1C54B7184()
{
  sub_1C55965F4();
  sub_1C55953C4();
  return sub_1C55959E4();
}

uint64_t sub_1C54B7240()
{
  sub_1C55965F4();
  sub_1C5439370();
  type metadata accessor for ReviewCustodianListViewFactory();
  sub_1C54B72C4();
  return sub_1C5595F54();
}

id sub_1C54B72C4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t sub_1C54B731C(uint64_t a1, uint64_t a2)
{
  sub_1C55965F4();
  sub_1C5594DA4();
  sub_1C5596E04();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1C54141E8();
  sub_1C5594D94();
  sub_1C540FCD8();
  sub_1C5594CF4();

  sub_1C5594CF4();
  sub_1C5594CF4();

  sub_1C5594CF4();
  v6 = sub_1C5594D14();

  sub_1C541439C();
  sub_1C541439C();

  return v6;
}

void sub_1C54B74F4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  v20 = 0;
  v25 = a1;
  v26 = a2;
  sub_1C54BA2F4();
  v2 = sub_1C55965F4();
  v19 = sub_1C54B77D0(v2, v3);
  if (v19)
  {
    v16 = v19;
    v15 = v19;
    v20 = v19;
    v11 = 1;
    v14 = sub_1C5596784();
    sub_1C55965F4();
    v12 = v4;
    v13 = sub_1C5596554();

    [v19 setValue:v14 forKey:v13];

    swift_unknownObjectRelease();
  }

  v8 = [objc_opt_self() defaultCenter];
  sub_1C5594CF4();
  sub_1C5594CF4();
  v10 = sub_1C5596554();
  v9 = v10;
  v5 = v10;

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v7 = 0;
  [v8 postNotificationName:v10 object:{0, v6}];
  swift_unknownObjectRelease();
}

uint64_t sub_1C54B7818()
{
  v1 = sub_1C55965F4();
  sub_1C5594CF4();
  sub_1C5401ECC();
  return v1;
}

uint64_t sub_1C54B79B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54B7058();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C54B79E8()
{
  sub_1C55965F4();
  sub_1C5594CF4();
  v1 = sub_1C5596554();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1C54B7A70()
{
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1C54B7AC4()
{
  v2 = *(v0 + 8);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54B7B04(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t RecoveryContactUpsellTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = MEMORY[0x1E6982BB0];
  v19 = &unk_1C55B2BB8;
  v20 = "Fatal error";
  v21 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v22 = "AppleAccountUI/RecoveryContactUpsellTip.swift";
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v50 = 0;
  v23 = sub_1C5596814();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v8 - v26;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660);
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v28 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v56 = v8 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D668);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v52 = v8 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v8 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v8 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D680);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v8 - v40;
  v42 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8 - v40);
  v43 = v8 - v42;
  v44 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8 - v42);
  v46 = v8 - v44;
  v68 = v8 - v44;
  v47 = *v45;
  v48 = v45[1];
  v49 = v45[2];
  v65 = v47;
  v66 = v48;
  v67 = v49;
  sub_1C5594CF4();
  v51 = v64;
  v64[3] = &unk_1F447A280;
  v64[4] = sub_1C54B8390();
  v64[0] = v48;
  v64[1] = v49;
  sub_1C54B840C();
  sub_1C5594CD4();
  v53 = sub_1C5595EB4();
  sub_1C54B8428();
  sub_1C5595CF4();

  (*(v54 + 8))(v56, v57);
  v58 = [objc_opt_self() tableCellGroupedBackgroundColor];
  if (v58)
  {
    v16 = v58;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v3 = sub_1C5595E44();
  v8[1] = &v63;
  v63 = v3;
  v10 = sub_1C54B84B0();
  v9 = MEMORY[0x1E69815C0];
  v11 = MEMORY[0x1E6981568];
  sub_1C5595A44();
  sub_1C5410D10();
  sub_1C54B8558(v52);
  v12 = sub_1C55957D4();
  v59 = v29;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1C5595D84();
  (*(v32 + 8))(v35, v31);
  MEMORY[0x1E69E5928](v47);
  sub_1C5594CF4();
  v4 = swift_allocObject();
  v5 = v48;
  v6 = v49;
  v14 = v4;
  v4[2] = v47;
  v4[3] = v5;
  v4[4] = v6;
  v13 = sub_1C54B923C();
  sub_1C545EBE4();
  sub_1C5595CE4();
  (*(v24 + 8))(v27, v23);

  sub_1C5367DA8(v38);
  v15 = sub_1C54B9348();
  sub_1C540EFD8(v43, v39, v46);
  sub_1C5367E10(v43);
  sub_1C5367F00(v46, v41);
  sub_1C540EFD8(v41, v39, v17);
  sub_1C5367E10(v41);
  return sub_1C5367E10(v46);
}

unint64_t sub_1C54B8390()
{
  v2 = qword_1EC15D688;
  if (!qword_1EC15D688)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D688);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B8428()
{
  v2 = qword_1EC15D690;
  if (!qword_1EC15D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D660);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D690);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B84B0()
{
  v2 = qword_1EC15D698;
  if (!qword_1EC15D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D668);
    sub_1C54B8428();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D698);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B8558(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D668);

  return a1;
}

uint64_t sub_1C54B85FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a3;
  v3[14] = a2;
  v3[13] = a1;
  v3[11] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[12] = 0;
  v4 = sub_1C5594DC4();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D6E8);
  v3[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D6F0);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D6F8);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  v3[27] = sub_1C55967E4();
  v3[28] = sub_1C55967D4();
  v12 = sub_1C55967A4();
  v3[29] = v12;
  v3[30] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C54B88A4, v12, v7);
}

uint64_t sub_1C54B88A4()
{
  v12 = MEMORY[0x1E69E85E0];
  v8 = v0[23];
  v7 = v0[22];
  v9 = v0[21];
  v6 = v0[15];
  v5 = v0[14];
  v0[11] = v0;
  sub_1C5594CF4();
  v0[9] = v5;
  v0[10] = v6;
  sub_1C54B8390();
  sub_1C5594C84();

  sub_1C5596824();
  (*(v7 + 8))(v8, v9);
  v11 = sub_1C55967D4();
  v0[31] = v11;
  v1 = swift_task_alloc();
  v10[32] = v1;
  *v1 = v10[11];
  v1[1] = sub_1C54B8A1C;
  v2 = v10[24];
  v3 = v10[20];

  return MEMORY[0x1EEE6D9C8](v3, v11, v12, v2);
}

uint64_t sub_1C54B8A1C()
{
  v4 = *v0;
  *(*v0 + 88) = *v0;

  swift_unknownObjectRelease();
  v1 = *(v4 + 240);
  v2 = *(v4 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1C54B8B7C, v2, v1);
}

uint64_t sub_1C54B8B7C()
{
  v31 = MEMORY[0x1E69E85E0];
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[16];
  v0[11] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v30[25] + 8))();

    v4 = *(v30[11] + 8);

    return v4();
  }

  else
  {
    v27 = v30[18];
    v26 = v30[16];
    v25 = v30[17];
    (*(v25 + 32))();
    v24 = *MEMORY[0x1E6982AF8];
    v6 = sub_1C5594D54();
    (*(*(v6 - 8) + 104))(v27, v24);
    (*(v25 + 104))(v27, *MEMORY[0x1E6982B68], v26);
    v29 = sub_1C5594DB4();
    v28 = *(v25 + 8);
    v28(v27, v26);
    if (v29)
    {
      sub_1C54BA2F4();
      v8 = sub_1C55965F4();
      v23 = sub_1C54B77D0(v8, v9);
      if (v23)
      {
        v30[12] = v23;
        v22 = sub_1C5596784();
        sub_1C55965F4();
        v21 = sub_1C5596554();

        [v23 setValue:v22 forKey:v21];
        MEMORY[0x1E69E5920](v21);
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v23);
      }

      v19 = v30[13];
      v20 = [objc_opt_self() defaultCenter];
      MEMORY[0x1E69E5928](v19);
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = 0;
      v30[5] = 0;
      if (v30[5])
      {
        v17 = v30[5];
        v15 = __swift_project_boxed_opaque_existential_0(v30 + 2, v17);
        v16 = *(v17 - 8);
        v18 = swift_task_alloc();
        (*(v16 + 16))(v18, v15, v17);
        sub_1C5596E14();
        (*(v16 + 8))(v18, v17);

        __swift_destroy_boxed_opaque_existential_0((v30 + 2));
      }

      v14 = v30[13];
      [v20 postNotificationName_object_];
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v14);
      v7 = MEMORY[0x1E69E5920](v20);
    }

    (v28)(v30[19], v30[16], v7);
    v13 = sub_1C55967D4();
    v30[31] = v13;
    v10 = swift_task_alloc();
    v30[32] = v10;
    *v10 = v30[11];
    v10[1] = sub_1C54B8A1C;
    v11 = v30[24];
    v12 = v30[20];

    return MEMORY[0x1EEE6D9C8](v12, v13, v31, v11);
  }
}

uint64_t sub_1C54B916C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C54B85FC(v7, v5, v6);
}

unint64_t sub_1C54B923C()
{
  v2 = qword_1EC15D6A0;
  if (!qword_1EC15D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D668);
    sub_1C54B84B0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B9348()
{
  v2 = qword_1EC15D6A8;
  if (!qword_1EC15D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D680);
    sub_1C54B923C();
    sub_1C545EFB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6A8);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1C54B93F0@<Q0>(__n128 *a1@<X8>)
{
  sub_1C55965F4();
  sub_1C5594CF4();
  v3 = sub_1C5596554();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  v5.n128_u64[0] = v3;
  v5.n128_u64[1] = sub_1C54B7818();
  result = v5;
  *a1 = v5;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1C54B94AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C55965F4();
  sub_1C5594CF4();
  v4 = sub_1C5596554();
  MEMORY[0x1E69E5928](v4);

  MEMORY[0x1E69E5920](v4);
  result = a1;
  *a3 = v4;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

unint64_t sub_1C54B9588()
{
  v2 = qword_1EC15D6B0;
  if (!qword_1EC15D6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B9638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54B977C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C54B9960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54B9A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for Name()
{
  v4 = qword_1EC15D6B8;
  if (!qword_1EC15D6B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D6B8);
      return v1;
    }
  }

  return v4;
}

id sub_1C54B9CF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_1C5596554();

    v2 = [v7 initWithSuiteName_];
  }

  else
  {
    v2 = [v7 initWithSuiteName_];
  }

  v5 = v2;
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1C54B9DA0()
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C54B9DDC()
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C54B9E28()
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C54B9E78()
{
  sub_1C54BA1F4();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C54B9EC4()
{
  sub_1C54BA274();
  sub_1C54BA1F4();
  return sub_1C5596D04();
}

unint64_t sub_1C54B9F28()
{
  v2 = qword_1EC15D6C0;
  if (!qword_1EC15D6C0)
  {
    type metadata accessor for Name();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B9FC0()
{
  v2 = qword_1EC15D6C8;
  if (!qword_1EC15D6C8)
  {
    type metadata accessor for Name();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA174()
{
  v2 = qword_1EC15D6D0;
  if (!qword_1EC15D6D0)
  {
    type metadata accessor for Name();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA1F4()
{
  v2 = qword_1EC15D6D8;
  if (!qword_1EC15D6D8)
  {
    type metadata accessor for Name();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA274()
{
  v2 = qword_1EC15D6E0;
  if (!qword_1EC15D6E0)
  {
    type metadata accessor for Name();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BA2F4()
{
  v2 = qword_1EC15D700;
  if (!qword_1EC15D700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D700);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54BA358()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 20));
  sub_1C5594CF4();
  return v2;
}

uint64_t type metadata accessor for AnalyticsDataSharingRowElement()
{
  v1 = qword_1EC164D50;
  if (!qword_1EC164D50)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C54BA414()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 24));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA45C()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 28));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA4A4()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA4EC()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 36));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA534()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 40));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA57C()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 44));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54BA5C4()
{
  type metadata accessor for AnalyticsDataSharingRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C54BA65C()
{
  type metadata accessor for AnalyticsDataSharingRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C54BA720(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 48));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C54BA80C()
{
  type metadata accessor for AnalyticsDataSharingRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54BA8BC()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 48));

  return v2 & 1;
}

uint64_t sub_1C54BA908(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 48);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C54BA964()
{
  type metadata accessor for AnalyticsDataSharingRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C54BA9FC()
{
  type metadata accessor for AnalyticsDataSharingRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C54BAAC0(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 52));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C54BABAC()
{
  type metadata accessor for AnalyticsDataSharingRowElement();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54BAC5C()
{
  v2 = *(v0 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 52));

  return v2 & 1;
}

uint64_t sub_1C54BACA8(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for AnalyticsDataSharingRowElement() + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C54BAD04@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v8 = sub_1C54BBAF0;
  v25 = 0;
  v24 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D708);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v3 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D710);
  v6 = *(*(v18 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v3 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v3 - v5);
  v21 = &v3 - v7;
  v25 = &v3 - v7;
  v24 = v1;
  v9 = &v22;
  v23 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D718);
  v11 = sub_1C54BBAF8();
  sub_1C5412C88();
  v12 = 0;
  v13 = 1;
  sub_1C5596024();
  v15 = sub_1C54BBCA0();
  sub_1C5411148();
  sub_1C5595D84();
  sub_1C5368094(v16);
  v19 = sub_1C54BBD28();
  sub_1C540EFD8(v20, v18, v21);
  sub_1C5368094(v20);
  sub_1C53681A8(v21, v20);
  sub_1C540EFD8(v20, v18, v17);
  sub_1C5368094(v20);
  return sub_1C5368094(v21);
}

uint64_t sub_1C54BAF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = a1;
  v57 = &unk_1C55C98F8;
  v58 = &unk_1C55C98A0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v94 = 0;
  v89 = 0;
  v59 = sub_1C5596384();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v23 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (v65[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v23 - v67;
  v69 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v67);
  v70 = &v23 - v69;
  v71 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v69);
  v72 = &v23 - v71;
  v100 = &v23 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748);
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (v74[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v23 - v76;
  v78 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v76);
  v79 = &v23 - v78;
  v80 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v78);
  v81 = &v23 - v80;
  v99 = &v23 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D718);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v23 - v83;
  v85 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v83);
  v86 = &v23 - v85;
  v98 = &v23 - v85;
  v97 = a1;
  if (sub_1C54BA964())
  {
    v8 = v56;
    v50 = type metadata accessor for AnalyticsDataSharingRowElement();
    v9 = (v8 + *(v50 + 24));
    v47 = *v9;
    v49 = v9[1];
    sub_1C5594CF4();
    v10 = (v8 + *(v50 + 32));
    v46 = *v10;
    v48 = v10[1];
    sub_1C5594CF4();
    v51 = sub_1C54BBC20();
    sub_1C5450D48(v47, v49, v46, v48, v50, v79);

    v90 = v50;
    v91 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v79, v73, v81);
    v53 = v74[1];
    v54 = v74 + 1;
    v53(v79, v73);
    v89 = v79;
    v45 = v74[2];
    v44 = v74 + 2;
    v45(v77, v81, v73);
    sub_1C540EFD8(v77, v73, v79);
    v53(v77, v73);
    v45(v77, v79, v73);
    v87 = v50;
    v88 = v51;
    v11 = swift_getOpaqueTypeConformance2();
    sub_1C540FD1C(v77, v73, v64, OpaqueTypeConformance2, v11, v84);
    v53(v77, v73);
    sub_1C5368580(v84, v86);
    v53(v79, v73);
    v53(v81, v73);
  }

  else
  {
    v12 = v56;
    v39 = type metadata accessor for AnalyticsDataSharingRowElement();
    v13 = (v12 + v39[6]);
    v30 = *v13;
    v38 = v13[1];
    sub_1C5594CF4();
    v14 = (v12 + v39[7]);
    v27 = *v14;
    v37 = v14[1];
    sub_1C5594CF4();
    v15 = (v12 + v39[9]);
    v28 = *v15;
    v36 = v15[1];
    sub_1C5594CF4();
    v16 = (v12 + v39[10]);
    v29 = *v16;
    v35 = v16[1];
    sub_1C5594CF4();
    v17 = (v12 + v39[11]);
    v26 = *v17;
    v34 = v17[1];
    sub_1C5594CF4();
    (*(v60 + 16))(v63, v12, v59);
    v32 = sub_1C54BA80C();
    v33 = v18;
    v25 = v19;
    v40 = sub_1C54BBC20();
    v31 = v22;
    v22[7] = v40;
    sub_1C5452AB8(v30, v38, v27, v37, v28, v36, v29, v35, v70, v26, v34, v63, v32, v33, v25 & 1, v39);

    (*(v60 + 8))(v63, v59);

    v95 = v39;
    v96 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    sub_1C540EFD8(v70, v64, v72);
    v42 = v65[1];
    v43 = v65 + 1;
    v42(v70, v64);
    v94 = v70;
    v24 = v65[2];
    v23 = v65 + 2;
    v24(v68, v72, v64);
    sub_1C540EFD8(v68, v64, v70);
    v42(v68, v64);
    v24(v68, v70, v64);
    v92 = v39;
    v93 = v40;
    v20 = swift_getOpaqueTypeConformance2();
    sub_1C54108A0(v68, v73, v64, v20, v41, v84);
    v42(v68, v64);
    sub_1C5368580(v84, v86);
    v42(v70, v64);
    v42(v72, v64);
  }

  sub_1C5368690(v86, v84);
  sub_1C54BBAF8();
  sub_1C540EFD8(v84, v82, v55);
  sub_1C53687A0(v84);
  return sub_1C53687A0(v86);
}

unint64_t sub_1C54BBAF8()
{
  v2 = qword_1EC15D720;
  if (!qword_1EC15D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D718);
    type metadata accessor for AnalyticsDataSharingRowElement();
    sub_1C54BBC20();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D720);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBC20()
{
  v2 = qword_1EC15D728;
  if (!qword_1EC15D728)
  {
    type metadata accessor for AnalyticsDataSharingRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBCA0()
{
  v2 = qword_1EC15D730;
  if (!qword_1EC15D730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D708);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBD28()
{
  v2 = qword_1EC15D758;
  if (!qword_1EC15D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D710);
    sub_1C54BBCA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBE18()
{
  v2 = qword_1EC15D760;
  if (!qword_1EC15D760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BBF94()
{
  v2 = qword_1EC15D768;
  if (!qword_1EC15D768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D768);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54BC040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v112 = a1;
  v93 = "Fatal error";
  v94 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v95 = "AppleAccountUI/AnalyticsDataSharingRowElement.swift";
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D770);
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v100 = &v45 - v99;
  v131 = &v45 - v99;
  v101 = 0;
  v102 = sub_1C5596384();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101);
  v106 = &v45 - v105;
  v107 = type metadata accessor for AnalyticsDataSharingRowElement();
  v108 = (*(*(v107 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v107);
  v111 = &v45 - v108;
  v130 = &v45 - v108;
  v129 = v3;
  v110 = *(v2 + 48);
  v109 = 1;
  v4 = sub_1C5409594();
  v5 = v112;
  v6 = v111 + v110;
  *v6 = v4 & v109;
  *(v6 + 8) = v7;
  v115 = v5[3];
  v113 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v115);
  v8 = v114;
  v9 = sub_1C5596F04();
  v116 = v8;
  v117 = v9;
  v118 = v10;
  v119 = v8;
  if (v8)
  {
    v47 = v119;
    v48 = 256;
  }

  else
  {
    v11 = v112;
    v12 = v118;
    v13 = (v111 + v107[5]);
    *v13 = v117;
    v13[1] = v12;
    v89 = v128;
    sub_1C5432498(v11, v128);
    v14 = v116;
    sub_1C5596374();
    v90 = v14;
    v91 = v14;
    if (v14)
    {
      v47 = v91;
      v48 = 258;
    }

    else
    {
      (*(v103 + 32))(v111, v106, v102);
      v85 = v112[3];
      v86 = v112[4];
      __swift_project_boxed_opaque_existential_0(v112, v85);
      sub_1C54BBF94();
      v15 = v90;
      sub_1C5596F24();
      v87 = v15;
      v88 = v15;
      if (!v15)
      {
        v127 = 0;
        v16 = sub_1C5596D74();
        v81 = 0;
        v82 = v16;
        v83 = v17;
        v84 = 0;
        v18 = (v111 + v107[6]);
        *v18 = v16;
        v18[1] = v17;
        v126 = 1;
        v19 = sub_1C5596D74();
        v77 = 0;
        v78 = v19;
        v79 = v20;
        v80 = 0;
        v21 = (v111 + v107[7]);
        *v21 = v19;
        v21[1] = v20;
        v125 = 4;
        v22 = sub_1C5596D74();
        v73 = 0;
        v74 = v22;
        v75 = v23;
        v76 = 0;
        v24 = (v111 + v107[8]);
        *v24 = v22;
        v24[1] = v23;
        v124 = 2;
        v25 = sub_1C5596D74();
        v69 = 0;
        v70 = v25;
        v71 = v26;
        v72 = 0;
        v27 = (v111 + v107[9]);
        *v27 = v25;
        v27[1] = v26;
        v123 = 3;
        v28 = sub_1C5596D74();
        v65 = 0;
        v66 = v28;
        v67 = v29;
        v68 = 0;
        v30 = (v111 + v107[10]);
        *v30 = v28;
        v30[1] = v29;
        v122 = 5;
        v31 = sub_1C5596D74();
        v61 = 0;
        v62 = v31;
        v63 = v32;
        v64 = 0;
        v33 = (v111 + v107[11]);
        *v33 = v31;
        v33[1] = v32;
        v60 = [objc_opt_self() sharedConnection];
        if (v60)
        {
          v59 = v60;
        }

        else
        {
          sub_1C5596C94();
          __break(1u);
        }

        v52 = v59;
        v50 = *MEMORY[0x1E69ADE40];
        MEMORY[0x1E69E5928](v50);
        sub_1C5596574();
        v49 = v34;
        v51 = sub_1C5596554();

        *&v35 = MEMORY[0x1E69E5920](v50).n128_u64[0];
        v53 = [v52 effectiveBoolValueForSetting_];
        MEMORY[0x1E69E5920](v51);
        MEMORY[0x1E69E5920](v52);
        v56 = &v121;
        v121 = v53;
        v54 = &v120;
        v57 = 1;
        v120 = 1;
        v55 = type metadata accessor for MCRestrictedBoolType();
        sub_1C54BCE08();
        sub_1C5596E24();
        v58 = (v111 + v107[13]);
        v36 = sub_1C5409594();
        v37 = v58;
        v38 = v97;
        v39 = v36;
        v40 = v100;
        v42 = v41;
        v43 = v96;
        *v58 = v39 & v57;
        *(v37 + 1) = v42;
        (*(v38 + 8))(v40, v43);
        sub_1C54BCE88(v111, v92);
        __swift_destroy_boxed_opaque_existential_0(v112);
        return sub_1C54BD13C(v111);
      }

      v47 = v88;
      v48 = 259;
    }
  }

  v46 = v48;
  v45 = v47;
  __swift_destroy_boxed_opaque_existential_0(v112);
  if (v46)
  {
    (*(v103 + 8))(v111, v102);
  }

  if ((v46 & 2) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v46 & 4) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v46 & 8) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v46 & 0x10) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v46 & 0x20) != 0)
  {
    sub_1C5401ECC();
  }

  if ((v46 & 0x40) != 0)
  {
    sub_1C5401ECC();
  }

  result = v111 + v107[12];
  sub_1C5373718();
  return result;
}

uint64_t type metadata accessor for MCRestrictedBoolType()
{
  v4 = qword_1EC15D7A8;
  if (!qword_1EC15D7A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D7A8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C54BCE08()
{
  v2 = qword_1EC15D778;
  if (!qword_1EC15D778)
  {
    type metadata accessor for MCRestrictedBoolType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D778);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54BCE88(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(a2, a1);
  v30 = type metadata accessor for AnalyticsDataSharingRowElement();
  v3 = (a1 + v30[5]);
  v13 = (a2 + v30[5]);
  *v13 = *v3;
  v14 = v3[1];
  sub_1C5594CF4();
  v13[1] = v14;
  v4 = v30[6];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1C5594CF4();
  *(v15 + 8) = v16;
  v5 = v30[7];
  v17 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v18 = *(a1 + v5 + 8);
  sub_1C5594CF4();
  *(v17 + 8) = v18;
  v6 = v30[8];
  v19 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v20 = *(a1 + v6 + 8);
  sub_1C5594CF4();
  *(v19 + 8) = v20;
  v7 = v30[9];
  v21 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v22 = *(a1 + v7 + 8);
  sub_1C5594CF4();
  *(v21 + 8) = v22;
  v8 = v30[10];
  v23 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v24 = *(a1 + v8 + 8);
  sub_1C5594CF4();
  *(v23 + 8) = v24;
  v9 = v30[11];
  v25 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v26 = *(a1 + v9 + 8);
  sub_1C5594CF4();
  *(v25 + 8) = v26;
  v10 = v30[12];
  v28 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v29 = *(a1 + v10 + 8);

  *(v28 + 8) = v29;
  v11 = v30[13];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  result = a2;
  *(v32 + 8) = v33;
  return result;
}

uint64_t sub_1C54BD13C(uint64_t a1)
{
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for AnalyticsDataSharingRowElement();

  return a1;
}

uint64_t sub_1C54BD2EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54BA358();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C54BD334()
{
  v2 = qword_1EC15D780;
  if (!qword_1EC15D780)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD3C8()
{
  v2 = qword_1EC15D788;
  if (!qword_1EC15D788)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD45C()
{
  v2 = qword_1EC15D790;
  if (!qword_1EC15D790)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD524()
{
  v2 = qword_1EC15D798;
  if (!qword_1EC15D798)
  {
    type metadata accessor for AnalyticsDataSharingRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54BD5BC()
{
  v2 = qword_1EC15D7A0;
  if (!qword_1EC15D7A0)
  {
    type metadata accessor for AnalyticsDataSharingRowElement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54BD6A4()
{
  v4 = sub_1C5596384();
  if (v0 <= 0x3F)
  {
    v4 = sub_1C5433E58();
    if (v1 <= 0x3F)
    {
      v4 = sub_1C5433F94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1C54BD814@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C54BD854@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C54BD884()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C54BD8E0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  swift_endAccess();
}

uint64_t sub_1C54BD9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C5594CF4();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1C54BDA08()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  v3 = *(v2 + 24);
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54BDAC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 144))(v2);
  a2[1] = v3;
}

uint64_t sub_1C54BDB4C(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 152))(v4, v6);
}

uint64_t sub_1C54BDBE4(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = a1;
  v30 = 0;
  v16 = 0;
  v31 = a1;
  v32 = a2;
  v17 = &v29;
  swift_beginAccess();
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  sub_1C5594CF4();
  swift_endAccess();
  v28[0] = v18;
  v28[1] = v19;
  v26 = v20;
  v27 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F0);
  sub_1C54C0B98();
  v23 = v28;
  v24 = sub_1C542908C();
  sub_1C5401ECC();
  if (v24)
  {
    v3 = v15;
    v4 = v16;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    sub_1C5594CF4();
    v13 = &v9;
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 288))(v5, sub_1C54C0C2C);
    v14 = v4;

    v10 = v14;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v9 = &v25;
    swift_beginAccess();
    v6 = v15;
    v7 = v21;
    *(v15 + 24) = v20;
    *(v6 + 32) = v7;

    swift_endAccess();

    v10 = v16;
  }
}

uint64_t sub_1C54BDE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5594CF4();
  sub_1C5594CF4();
  swift_beginAccess();
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;

  swift_endAccess();
}

void (*sub_1C54BDF30(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 280))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54BD950();
  return sub_1C54BE110;
}

void sub_1C54BE110(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BE1CC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BE1CC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54BE1CC(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C54BE308()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t sub_1C54BE32C()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 44);
  swift_endAccess();
  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  return v4;
}

uint64_t sub_1C54BE398(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  swift_beginAccess();
  *(v1 + 40) = v3;
  *(v1 + 44) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1C54BE460@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1C54BE4A8()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  v3 = *(v2 + 40);
  v4 = *(v2 + 44);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1C54BE578@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;

  v3 = (*(*v5 + 192))(v2);
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3) & 1;
}

uint64_t sub_1C54BE610(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);

  LODWORD(v4) = v2;
  BYTE4(v4) = v3 & 1;
  sub_1C54BE688(v4);
}

uint64_t sub_1C54BE688(uint64_t a1)
{
  v29 = 0;
  v15 = 0;
  v32 = a1;
  v21 = a1;
  v16 = a1;
  v22 = BYTE4(a1);
  v17 = BYTE4(a1);
  v30 = a1;
  v31 = BYTE4(a1);
  v18 = &v28;
  swift_beginAccess();
  v19 = *(v1 + 40);
  v20 = *(v1 + 44);
  swift_endAccess();
  v26 = v19;
  v27 = v20;
  v24 = v21;
  v25 = v22;
  if (sub_1C542905C())
  {
    v2 = v14;
    v3 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v8;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 288))(v4, sub_1C54C0D50);
    v13 = v3;

    return v13;
  }

  else
  {
    v8 = &v23;
    swift_beginAccess();
    v5 = v17;
    v6 = v14;
    *(v14 + 40) = v16;
    *(v6 + 44) = v5 & 1;
    swift_endAccess();
    return v15;
  }
}

uint64_t sub_1C54BE8C8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = BYTE4(a2);
  swift_beginAccess();
  *(a1 + 40) = v3;
  *(a1 + 44) = v4 & 1;
  return swift_endAccess();
}

void (*sub_1C54BE974(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 280))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54BE404();
  return sub_1C54BEB54;
}

void sub_1C54BEB54(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BEC10(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BEC10(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54BEC10(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C54BED4C()
{
  swift_beginAccess();
  v2 = *(v0 + 48);

  swift_endAccess();
  return v2;
}

uint64_t sub_1C54BED9C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 48) = a1;

  swift_endAccess();
}

uint64_t sub_1C54BEE58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_1C54BEE98()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  v3 = *(v2 + 48);

  swift_endAccess();
  return v3;
}

uint64_t sub_1C54BEF4C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1C54BEE98();
}

uint64_t sub_1C54BEFA8(uint64_t *a1)
{
  sub_1C5413AF4(a1, &v3);
  v2 = v3;

  sub_1C54BF010(v2);
}

uint64_t sub_1C54BF010(uint64_t a1)
{
  v16 = a1;
  v24 = 0;
  v13 = 0;
  v25 = a1;
  v14 = &v23;
  swift_beginAccess();
  v15 = *(v1 + 48);

  swift_endAccess();
  v22 = v15;
  v21 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7C0);
  sub_1C54C0D9C();
  v18 = &v22;
  v19 = sub_1C542908C();
  sub_1C5410D10();
  if (v19)
  {
    v2 = v12;
    v3 = v13;
    KeyPath = swift_getKeyPath();
    v8 = KeyPath;

    v10 = v6;
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 288))(v4, sub_1C54C0EBC);
    v11 = v3;

    v7 = v11;
  }

  else
  {

    v6[1] = &v20;
    swift_beginAccess();
    *(v12 + 48) = v16;

    swift_endAccess();

    v7 = v13;
  }
}

uint64_t sub_1C54BF26C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(a1 + 48) = a2;

  swift_endAccess();
}

void (*sub_1C54BF300(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 280))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C54BEDFC();
  return sub_1C54BF4E0;
}

void sub_1C54BF4E0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BF59C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54BF59C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54BF59C(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C54C0C5C();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C54BF704()
{
  sub_1C54888D0();
  v6 = sub_1C5404B48();
  v7 = [v6 aa_primaryAppleAccount];
  *&v0 = MEMORY[0x1E69E5920](v6).n128_u64[0];
  if (!v7)
  {
    return 0;
  }

  v5 = [v7 aa_altDSID];
  if (v5)
  {
    v3 = sub_1C5596574();
    MEMORY[0x1E69E5920](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1E69E5920](v7);
  return v4;
}

uint64_t sub_1C54BF8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[4] = 0;
  LODWORD(v9) = 0;
  BYTE4(v9) = 1;
  sub_1C54BE460(v9, (v3 + 5));
  v3[6] = 0;
  sub_1C5594B14();
  MEMORY[0x1E69E5928](a1);
  v3[2] = a1;
  sub_1C54BDBE4(a2, a3);
  MEMORY[0x1E69E5920](a1);
  return v8;
}

uint64_t sub_1C54BF9A0()
{
  v1[23] = v0;
  v1[20] = v1;
  v1[21] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[22] = 0;
  v2 = sub_1C5594C74();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[21] = v0;
  sub_1C55967E4();
  v1[27] = sub_1C55967D4();
  v5 = sub_1C55967A4();
  v1[28] = v5;
  v1[29] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C54BFAE0, v5, v3);
}

uint64_t sub_1C54BFAE0()
{
  v1 = v0[23];
  v0[20] = v0;
  v10 = (*(*v1 + 144))();
  v0[30] = v2;
  if (v2)
  {
    v3 = *(v9 + 184);
    *(v9 + 144) = v10;
    *(v9 + 152) = v2;
    v8 = *(v3 + 16);
    *(v9 + 248) = v8;
    MEMORY[0x1E69E5928](v8);
    sub_1C5594CF4();
    v7 = sub_1C5596554();
    *(v9 + 256) = v7;

    *(v9 + 16) = *(v9 + 160);
    *(v9 + 56) = v9 + 272;
    *(v9 + 24) = sub_1C54BFD6C;
    v6 = swift_continuation_init();
    *(v9 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7E8);
    *(v9 + 112) = v6;
    *(v9 + 80) = MEMORY[0x1E69E9820];
    *(v9 + 88) = 1107296256;
    *(v9 + 92) = 0;
    *(v9 + 96) = sub_1C54C06D8;
    *(v9 + 104) = &block_descriptor_11;
    [v8 globalStateForAltDSID:v7 completion:?];

    return MEMORY[0x1EEE6DEC8](v9 + 16);
  }

  else
  {
    LODWORD(v11) = 0;
    BYTE4(v11) = 0;
    sub_1C54BE688(v11);

    v4 = *(*(v9 + 160) + 8);

    return v4();
  }
}

uint64_t sub_1C54BFD6C()
{
  v6 = *v0;
  v6[20] = *v0;
  v1 = v6[6];
  v6[33] = v1;
  if (v1)
  {
    v2 = v6[29];
    v3 = v6[28];
    v4 = sub_1C54BFFE4;
  }

  else
  {
    v2 = v6[29];
    v3 = v6[28];
    v4 = sub_1C54BFED4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C54BFED4()
{
  v4 = *(v0 + 256);
  v3 = *(v0 + 248);
  *(v0 + 160) = v0;
  LODWORD(v5) = *(v0 + 272);
  BYTE4(v5) = 0;
  sub_1C54BE688(v5);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);

  v1 = *(*(v0 + 160) + 8);

  return v1();
}

uint64_t sub_1C54BFFE4()
{
  v36 = v0;
  v21 = v0[33];
  v18 = v0[32];
  v17 = v0[31];
  v16 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v0[20] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  v1 = v21;
  v0[22] = v21;
  v2 = sub_1C54B05F8();
  (*(v19 + 16))(v16, v2, v20);
  v3 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  sub_1C54398B0();

  v29 = sub_1C5594C54();
  v30 = sub_1C5596954();
  v25 = swift_allocObject();
  *(v25 + 16) = 64;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C5467F9C;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C5467FA4;
  *(v24 + 24) = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1C545C6DC;
  *(v27 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v28 = v4;

  *v28 = sub_1C545C6D4;
  v28[1] = v25;

  v28[2] = sub_1C545C6D4;
  v28[3] = v26;

  v28[4] = sub_1C545C6E8;
  v28[5] = v27;
  sub_1C540FCD8();

  if (os_log_type_enabled(v29, v30))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v13 = sub_1C5419DC0(1);
    v14 = sub_1C5419DC0(0);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    sub_1C5419E14(2, &v31);
    sub_1C5419E14(1, &v31);
    v34 = sub_1C545C6D4;
    v35 = v25;
    sub_1C5419E28(&v34, &v31, &v32, &v33);
    v34 = sub_1C545C6D4;
    v35 = v26;
    sub_1C5419E28(&v34, &v31, &v32, &v33);
    v34 = sub_1C545C6E8;
    v35 = v27;
    sub_1C5419E28(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_1C5355000, v29, v30, "Failed to fetch attestation state with error: %@", buf, 0xCu);
    sub_1C5419E74(v13);
    sub_1C5419E74(v14);
    sub_1C5596A54();
  }

  else
  {
  }

  v11 = v15[33];
  v9 = v15[26];
  v10 = v15[24];
  v8 = v15[25];
  v5 = MEMORY[0x1E69E5920](v29);
  (*(v8 + 8))(v9, v10, v5);

  v6 = *(v15[20] + 8);

  return v6();
}

double sub_1C54C06D8(uint64_t a1, int a2, void *a3)
{
  MEMORY[0x1E69E5928](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = type metadata accessor for AgeRangeGlobalState();
    sub_1C542501C(v10, a3, v6);
  }

  else
  {
    v11 = a2;
    v3 = type metadata accessor for AgeRangeGlobalState();
    sub_1C5425080(v10, &v11, v3);
  }

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C54C07A4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C54C0810(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1C5594B24();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1C54C0C5C();
  sub_1C5594AE4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C54C0980@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1C5594B24();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1C54C0C5C();
  v8 = v22;
  sub_1C5594AD4();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_1C54C0B98()
{
  v2 = qword_1EC15D7B0;
  if (!qword_1EC15D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C1F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C0C5C()
{
  v2 = qword_1EC15D7B8;
  if (!qword_1EC15D7B8)
  {
    type metadata accessor for AgeRangeRowViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for AgeRangeRowViewModel()
{
  v1 = qword_1EC164F00;
  if (!qword_1EC164F00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C54C0D50()
{
  LODWORD(v2) = *(v0 + 24);
  BYTE4(v2) = *(v0 + 28) & 1;
  return sub_1C54BE8C8(*(v0 + 16), v2);
}

unint64_t sub_1C54C0D9C()
{
  v2 = qword_1EC15D7C8;
  if (!qword_1EC15D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D7C0);
    sub_1C54C0E34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C0E34()
{
  v2 = qword_1EC15D7D0;
  if (!qword_1EC15D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D7D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C0EE8()
{
  v2 = qword_1EC15D7E0;
  if (!qword_1EC15D7E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D7E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54C0F8C()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1C5401ECC();
  sub_1C5410D10();
  v3 = OBJC_IVAR____TtC14AppleAccountUI20AgeRangeRowViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C54C10A4()
{
  updated = sub_1C5594B24();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t __swift_memcpy5_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t sub_1C54C11C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 5))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C54C12D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    if (a3)
    {
      *(result + 5) = 1;
    }
  }

  else if (a3)
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t sub_1C54C15F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v72 = a5;
  v78 = a4;
  v77 = a3;
  v81 = a2;
  v80 = a1;
  v91 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v73 = 0;
  v105 = a5;
  v74 = *(a5 - 8);
  v75 = v74;
  MEMORY[0x1EEE9AC00](0);
  v76 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1C5594C74();
  v82 = v88;
  v83 = *(v88 - 8);
  v87 = v83;
  v84 = v83;
  v85 = *(v83 + 64);
  v7 = MEMORY[0x1EEE9AC00](v80);
  v8 = v39 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v8;
  v104 = v7;
  v103 = v9;
  v101 = v10;
  v102 = v11;
  v100 = v12;
  v13 = sub_1C54B05F8();
  (*(v87 + 16))(v8, v13, v88);
  v93 = sub_1C5594C54();
  v89 = v93;
  v92 = sub_1C5596944();
  v90 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v94 = sub_1C5596E04();
  if (os_log_type_enabled(v93, v92))
  {
    v14 = v73;
    v62 = sub_1C5596A74();
    v58 = v62;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v60 = 0;
    v63 = sub_1C5419DC0(0);
    v61 = v63;
    v64 = sub_1C5419DC0(v60);
    v98 = v62;
    v97 = v63;
    v96 = v64;
    v65 = 0;
    v66 = &v98;
    sub_1C5419E14(0, &v98);
    sub_1C5419E14(v65, v66);
    v95 = v94;
    v67 = v39;
    MEMORY[0x1EEE9AC00](v39);
    v68 = &v39[-12];
    *&v39[-8] = v15;
    *&v39[-6] = &v97;
    *&v39[-4] = &v96;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v70 = v14;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v89, v90, "presentDetailsView was called.", v58, 2u);
      v56 = 0;
      sub_1C5419E74(v61);
      sub_1C5419E74(v64);
      sub_1C5596A54();

      v57 = v70;
    }
  }

  else
  {

    v57 = v73;
  }

  (*(v84 + 8))(v86, v82);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7F8);
  v40 = sub_1C5596E04();
  v41 = v16;
  v39[1] = 1;
  v17 = sub_1C55965F4();
  v18 = v80;
  v19 = v41;
  *v41 = v17;
  v19[1] = v20;
  v21 = v18;
  v22 = sub_1C5403328();
  v23 = v80;
  v24 = v41;
  v41[5] = v22;
  v24[2] = v23;
  v25 = sub_1C55965F4();
  v26 = v81;
  v28 = v27;
  v29 = v41;
  v41[6] = v25;
  v29[7] = v28;
  v29[11] = MEMORY[0x1E69E6530];
  v29[8] = v26;
  v30 = sub_1C55965F4();
  v31 = v41;
  v41[12] = v30;
  v31[13] = v32;
  sub_1C5594CF4();
  v33 = v77;
  v34 = v41;
  v35 = v78;
  v45 = MEMORY[0x1E69E6158];
  v41[17] = MEMORY[0x1E69E6158];
  v34[14] = v33;
  v34[15] = v35;
  sub_1C540FCD8();
  v48 = MEMORY[0x1E69E7CA0] + 8;
  v46 = MEMORY[0x1E69E6168];
  v55 = sub_1C5596454();
  v99 = v55;
  v54 = [objc_opt_self() defaultCenter];
  v43 = (*(v71 + 16))(v72);
  v44 = v36;
  sub_1C5594CF4();
  v53 = sub_1C5596554();
  v37 = v53;

  (*(v75 + 16))(v76, v79, v72);
  v52 = sub_1C5596E14();
  (*(v75 + 8))(v76, v72);
  sub_1C5594CF4();
  v47 = MEMORY[0x1E69E69B8];
  v49 = MEMORY[0x1E69E69C0];
  v50 = sub_1C5596CB4();
  v51 = sub_1C5596434();

  [v54 postNotificationName:v53 object:v52 userInfo:v51];

  swift_unknownObjectRelease();
}

void sub_1C54C1EA0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v42 = 0;
  v50 = 0;
  v32 = 0;
  v51 = a1;
  v39 = sub_1C5594C74();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v2 = v9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  v50 = v3;
  v4 = sub_1C54B05F8();
  (*(v38 + 16))(v2, v4, v39);
  v44 = sub_1C5594C54();
  v40 = v44;
  v43 = sub_1C5596944();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v45 = sub_1C5596E04();
  if (os_log_type_enabled(v44, v43))
  {
    v5 = v32;
    v21 = sub_1C5596A74();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v19 = 0;
    v22 = sub_1C5419DC0(0);
    v20 = v22;
    v23 = sub_1C5419DC0(v19);
    v49[0] = v21;
    v48 = v22;
    v47 = v23;
    v24 = 0;
    v25 = v49;
    sub_1C5419E14(0, v49);
    sub_1C5419E14(v24, v25);
    v46 = v45;
    v26 = v9;
    MEMORY[0x1EEE9AC00](v9);
    v27 = &v9[-6];
    v9[-4] = v6;
    v9[-3] = &v48;
    v9[-2] = &v47;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v29 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v40, v41, "presentAddTrustedContactsView was called.", v17, 2u);
      v15 = 0;
      sub_1C5419E74(v20);
      sub_1C5419E74(v23);
      sub_1C5596A54();

      v16 = v29;
    }
  }

  else
  {

    v16 = v32;
  }

  (*(v35 + 8))(v37, v33);
  v10 = [objc_opt_self() defaultCenter];
  v11 = (*(v30 + 8))(v31);
  v13 = v7;
  sub_1C5594CF4();
  v14 = sub_1C5596554();
  v12 = v14;
  v8 = v14;

  memset(&v49[1], 0, 32);
  v9[9] = 0;
  v9[1] = 0;
  [v10 postNotificationName:v12 object:?];
  swift_unknownObjectRelease();
}

uint64_t sub_1C54C25BC()
{
  sub_1C55965F4();
  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C54C26CC()
{
  sub_1C55965F4();
  sub_1C55953C4();
  sub_1C5439370();
  sub_1C5576C44();
  return sub_1C55959E4();
}

uint64_t sub_1C54C27E8()
{
  v23 = sub_1C54C2E64;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v33 = 0;
  v24 = 0;
  v25 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = v5 - v25;
  v0 = sub_1C5596544();
  v27 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = v5 - v27;
  v41 = sub_1C54C2BB4() & 1;
  if (v41)
  {
    v18 = 1;
    sub_1C55965F4();
    sub_1C55964E4();
    v19 = 0;
    sub_1C5439370();
    v20 = sub_1C5576C44();
    sub_1C54982B4();
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v18 & 1;
  }

  else
  {
    *&v15[1] = 1;
    sub_1C55965F4();
    sub_1C55964E4();
    v16 = 0;
    sub_1C5439370();
    v17 = sub_1C5576C44();
    sub_1C54982B4();
    v38 = 0;
    v39 = 0;
    v40 = *v15 & 0x100;
  }

  v21 = sub_1C5596594();
  v22 = v1;
  v13 = v1;
  v5[0] = v21;
  v36 = v21;
  v37 = v1;
  v5[2] = 0;
  v7 = sub_1C5594DA4();
  v6 = sub_1C5596E04();
  v5[1] = v2;
  sub_1C5594CF4();
  v5[3] = v34;
  v34[0] = v5[0];
  v34[1] = v13;
  sub_1C54141E8();
  sub_1C5594D94();
  v3 = v6;
  sub_1C540FCD8();
  v8 = v3;
  v9 = sub_1C5594CF4();

  sub_1C5594CF4();
  v12 = &v35;
  v35 = v9;
  v10 = sub_1C5594CF4();

  sub_1C5594CF4();
  v11 = &v33;
  v33 = v10;
  v14 = sub_1C5594D14();

  sub_1C541439C();
  sub_1C541439C();

  return v14;
}

uint64_t sub_1C54C2BB4()
{
  sub_1C54C4CB0();
  v0 = sub_1C55965F4();
  v9 = sub_1C54C2DD0(v0, v1, 1);
  MEMORY[0x1E69E5928](v9);
  if (!v9)
  {
    goto LABEL_10;
  }

  v7 = [v9 applicationState];
  v8 = [v7 isInstalled];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v9);
  if (v8)
  {
    v6 = 1;
  }

  else
  {
    v4 = [v9 applicationState];
    v5 = [v4 isPlaceholder];
    MEMORY[0x1E69E5920](v4);
    v6 = v5;
  }

  MEMORY[0x1E69E5920](v9);
  if ((v6 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v9);
LABEL_10:
    MEMORY[0x1E69E5920](v9);
    v3 = 0;
    return v3 & 1;
  }

  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v9);
  v3 = 1;
  return v3 & 1;
}

id sub_1C54C2DD0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_1C54C4660(a1, a2, a3 & 1);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1C54C2E64()
{
  v24 = 0;
  v11 = 0;
  v21 = sub_1C55948B4();
  v8 = *(v21 - 8);
  v9 = v21 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v21);
  v1 = &v5 - v5;
  v10 = &v5 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v20 = &v5 - v6;
  v24 = &v5 - v6;
  v7 = [objc_opt_self() passwordManagerURL];
  sub_1C5594894();
  (*(v8 + 32))(v20, v1, v21);
  MEMORY[0x1E69E5920](v7);
  v19 = [objc_opt_self() sharedApplication];
  (*(v8 + 16))(v1, v20, v21);
  v18 = sub_1C5594884();
  v23 = *(v8 + 8);
  v22 = v8 + 8;
  v23(v10, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D848);
  v12 = sub_1C5596E04();
  v13 = type metadata accessor for OpenExternalURLOptionsKey();
  v15 = sub_1C54C4C30();
  v14 = MEMORY[0x1E69E7CA0] + 8;
  v16 = sub_1C5596454();
  v17 = sub_1C5596434();

  [v19 openURL:v18 options:v17 completionHandler:0];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  v3 = MEMORY[0x1E69E5920](v19);
  return (v23)(v20, v21, v3);
}

uint64_t sub_1C54C31E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_1C54C3224();
  result = MEMORY[0x1C6945830](a1, v2);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1C54C3224()
{
  v2 = qword_1EC15D800;
  if (!qword_1EC15D800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D800);
    return WitnessTable;
  }

  return v2;
}

uint64_t SIWAShareAccountsTipView.id.getter()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t SIWAShareAccountsTipView.id.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t *SIWAShareAccountsTipView.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  nullsub_1(a1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = sub_1C5596F04();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v7;
  v9 = v2;
  sub_1C54C3530();
  sub_1C5594E04();

  sub_1C5402BDC(&v8, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = &v8;
  sub_1C5401ECC();
  return result;
}

uint64_t SIWAShareAccountsTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v8 = sub_1C54C3CB0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D808);
  v5 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v17 = (&v4 - v6);
  v23 = &v4 - v6;
  v7 = *v1;
  v12 = v1[1];
  v21 = v7;
  v22 = v12;
  sub_1C5594CF4();
  v9 = &v18;
  v19 = v7;
  v20 = v12;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678);
  v11 = sub_1C54B923C();
  sub_1C5410F68();
  sub_1C5596074();

  v15 = sub_1C54C3CBC();
  sub_1C540EFD8(v16, v14, v17);
  sub_1C53689D8(v16);
  sub_1C5368A64(v17, v16);
  sub_1C540EFD8(v16, v14, v13);
  sub_1C53689D8(v16);
  return sub_1C53689D8(v17);
}

uint64_t sub_1C54C36FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v32 = a1;
  v31 = a2;
  v19 = MEMORY[0x1E6982BB0];
  v20 = "Fatal error";
  v21 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v22 = "AppleAccountUI/SIWAShareAccountsTipView.swift";
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v23 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v11 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D668);
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v41 = &v11 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v11 - v29;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v11 - v34;
  v36 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v37 = &v11 - v36;
  v38 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v11 - v38;
  v58 = &v11 - v38;
  v56 = v7;
  v57 = v8;
  v40 = &v53;
  v54 = &unk_1F447A5B0;
  v55 = sub_1C54C3224();
  sub_1C54B840C();
  sub_1C5594CD4();
  v42 = sub_1C5595EB4();
  sub_1C54B8428();
  sub_1C5595CF4();

  (*(v43 + 8))(v45, v46);
  v47 = [objc_opt_self() tableCellGroupedBackgroundColor];
  if (v47)
  {
    v17 = v47;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v9 = sub_1C5595E44();
  v11 = &v52;
  v52 = v9;
  v13 = sub_1C54B84B0();
  v12 = MEMORY[0x1E69815C0];
  v14 = MEMORY[0x1E6981568];
  sub_1C5595A44();
  sub_1C5410D10();
  sub_1C54B8558(v41);
  v15 = sub_1C5595804();
  v48 = v24;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C5595D84();
  (*(v27 + 8))(v30, v26);
  v16 = sub_1C54B923C();
  sub_1C540EFD8(v37, v33, v39);
  sub_1C5367DA8(v37);
  sub_1C5368B68(v39, v35);
  sub_1C540EFD8(v35, v33, v18);
  sub_1C5367DA8(v35);
  return sub_1C5367DA8(v39);
}

unint64_t sub_1C54C3CBC()
{
  v2 = qword_1EC15D810;
  if (!qword_1EC15D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D810);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54C3DB0@<X0>(uint64_t *a1@<X8>)
{
  result = SIWAShareAccountsTipView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id static SIWAShareAccountsTipViewFactory.createSIWATip()()
{
  v14 = "Fatal error";
  v15 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v16 = "AppleAccountUI/SIWAShareAccountsTipView.swift";
  v35 = 0;
  v34 = 0;
  v30 = 0;
  v0 = sub_1C5595774();
  v17 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v18 = &v5[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D660);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v23 = *(v20 + 64);
  v22 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v5[-v22];
  v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5[-v22]);
  v26 = &v5[-v25];
  v35 = &v5[-v25];
  v34 = v1;
  v27 = sub_1C54C3530();
  sub_1C5594E04();
  v28 = 0;
  v29 = 0;

  v13 = v28;
  v2 = v28;
  v3 = sub_1C5594D34();
  v12 = v2;
  if (v2)
  {
  }

  nullsub_1(v3);
  v9 = &v31;
  v32 = &unk_1F447A5B0;
  v33 = sub_1C54C3224();
  sub_1C54B840C();
  sub_1C5594CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D820);
  (*(v20 + 16))(v24, v26, v19);
  v10 = sub_1C5595484();
  v30 = v10;
  MEMORY[0x1E69E5928](v10);
  v11 = [v10 view];
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    v8 = v11;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v7 = v8;
  v6 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  sub_1C5595764();
  sub_1C5595474();
  (*(v20 + 8))(v26, v19);
  return v10;
}

id SIWAShareAccountsTipViewFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SIWAShareAccountsTipViewFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id SIWAShareAccountsTipViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SIWAShareAccountsTipViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C54C43CC()
{
  v2 = qword_1EC15D828;
  if (!qword_1EC15D828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4460()
{
  v2 = qword_1EC15D830;
  if (!qword_1EC15D830)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C44F4()
{
  v2 = qword_1EC15D838;
  if (!qword_1EC15D838)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D838);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4588()
{
  v2 = qword_1EC15D840;
  if (!qword_1EC15D840)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D840);
    return WitnessTable;
  }

  return v2;
}

id sub_1C54C4660(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1C5596554();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D860);
  sub_1C54C4D14();
  sub_1C5596E34();
  v8 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:v9];
  MEMORY[0x1E69E5928](0);
  MEMORY[0x1E69E5920](0);
  if (v8)
  {
    MEMORY[0x1E69E5920](v6);

    return v8;
  }

  else
  {
    sub_1C5594874();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    MEMORY[0x1E69E5920](v6);

    return v4;
  }
}

uint64_t sub_1C54C481C()
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C54C4858()
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C54C48A4()
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C54C48F4()
{
  sub_1C54C4F64();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C54C4A5C()
{
  sub_1C54C4C30();
  sub_1C54C4F64();
  return sub_1C5596D04();
}

uint64_t sub_1C54C4AA8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1C5594D64();
      v1 = sub_1C5596734();
      sub_1C5594CF4();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1C5594D64();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for OpenExternalURLOptionsKey()
{
  v4 = qword_1EC15D870;
  if (!qword_1EC15D870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D870);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C54C4C30()
{
  v2 = qword_1EC15D850;
  if (!qword_1EC15D850)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4CB0()
{
  v2 = qword_1EC15D858;
  if (!qword_1EC15D858)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D858);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54C4D14()
{
  v2 = qword_1EC15D868;
  if (!qword_1EC15D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D860);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4DB4()
{
  v2 = qword_1EC15D878;
  if (!qword_1EC15D878)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4E4C()
{
  v2 = qword_1EC15D880;
  if (!qword_1EC15D880)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4EE4()
{
  v2 = qword_1EC15D888;
  if (!qword_1EC15D888)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54C4F64()
{
  v2 = qword_1EC15D890;
  if (!qword_1EC15D890)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54C4FE4()
{
  sub_1C5596E04();
  *v0 = "messageTitle";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  *(v0 + 24) = "messageSubTitle";
  *(v0 + 32) = 15;
  *(v0 + 40) = 2;
  *(v0 + 48) = "acceptButtonLabel";
  *(v0 + 56) = 17;
  *(v0 + 64) = 2;
  *(v0 + 72) = "declineButtonLabel";
  *(v0 + 80) = 18;
  *(v0 + 88) = 2;
  *(v0 + 96) = "acceptedButtonLabel";
  *(v0 + 104) = 19;
  *(v0 + 112) = 2;
  *(v0 + 120) = "declinedButtonLabel";
  *(v0 + 128) = 19;
  *(v0 + 136) = 2;
  *(v0 + 144) = "custodianID";
  *(v0 + 152) = 11;
  *(v0 + 160) = 2;
  *(v0 + 168) = "senderHandle";
  *(v0 + 176) = 12;
  *(v0 + 184) = 2;
  *(v0 + 192) = "unknown";
  *(v0 + 200) = 7;
  *(v0 + 208) = 2;
  sub_1C540FCD8();
  v4 = sub_1C5596D64();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_20:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_20;
    case 2:
      v3 = 2;
      goto LABEL_20;
    case 3:
      v3 = 3;
      goto LABEL_20;
    case 4:
      v3 = 4;
      goto LABEL_20;
    case 5:
      v3 = 5;
      goto LABEL_20;
    case 6:
      v3 = 6;
      goto LABEL_20;
    case 7:
      v3 = 7;
      goto LABEL_20;
    case 8:
      v3 = 8;
      goto LABEL_20;
  }

  return 9;
}

unint64_t sub_1C54C5594()
{
  v2 = qword_1EC15D898;
  if (!qword_1EC15D898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54C56E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C54C4FE4();
  *a1 = result;
  return result;
}

uint64_t sub_1C54C5718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54C5314();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t InviteMessageDetails.title.getter()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.title.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t InviteMessageDetails.subTitle.getter()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.subTitle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t InviteMessageDetails.acceptButttonLabel.getter()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.acceptButttonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t InviteMessageDetails.declineButtonLabel.getter()
{
  v2 = *(v0 + 48);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.declineButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t InviteMessageDetails.acceptedButtonLabel.getter()
{
  v2 = *(v0 + 64);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.acceptedButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t InviteMessageDetails.declinedButtonLabel.getter()
{
  v2 = *(v0 + 80);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.declinedButtonLabel.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t InviteMessageDetails.custodianUID.getter()
{
  v2 = *(v0 + 104);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.custodianUID.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t InviteMessageDetails.senderHandle.getter()
{
  v2 = *(v0 + 128);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.senderHandle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t InviteMessageDetails.senderFullName.getter()
{
  v2 = *(v0 + 144);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.senderFullName.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t InviteMessageDetails.senderFirstName.getter()
{
  v2 = *(v0 + 160);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.senderFirstName.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t InviteMessageDetails.recipientHandle.getter()
{
  v2 = *(v0 + 176);
  sub_1C5594CF4();
  return v2;
}

uint64_t InviteMessageDetails.recipientHandle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
}

void __swiftcall InviteMessageDetails.init()(AppleAccountUI::InviteMessageDetails *__return_ptr retstr)
{
  memset(__b, 0, 0xC3uLL);
  __b[0] = sub_1C55965F4();
  __b[1] = v1;
  __b[2] = sub_1C55965F4();
  __b[3] = v2;
  __b[4] = sub_1C55965F4();
  __b[5] = v3;
  __b[6] = sub_1C55965F4();
  __b[7] = v4;
  __b[8] = sub_1C55965F4();
  __b[9] = v5;
  __b[10] = sub_1C55965F4();
  __b[11] = v6;
  LOBYTE(__b[12]) = 0;
  __b[13] = sub_1C55965F4();
  __b[14] = v7;
  __b[15] = -1;
  __b[16] = sub_1C55965F4();
  __b[17] = v8;
  __b[18] = sub_1C55965F4();
  __b[19] = v9;
  __b[20] = sub_1C55965F4();
  __b[21] = v10;
  __b[22] = sub_1C55965F4();
  __b[23] = v11;
  LOWORD(__b[24]) = 0;
  BYTE2(__b[24]) = 0;
  memcpy(retstr, __b, 0xC3uLL);
}

uint64_t static InviteMessageDetails.detailsFrom(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 541) = a3 & 1;
  *(v3 + 3600) = a2;
  *(v3 + 3592) = a1;
  *(v3 + 3360) = v3;
  *(v3 + 3368) = 0;
  *(v3 + 3816) = 0;
  *(v3 + 3392) = 0;
  memset((v3 + 944), 0, 0xC3uLL);
  *(v3 + 3408) = 0;
  *(v3 + 3456) = 0;
  *(v3 + 3464) = 0;
  *(v3 + 3200) = 0;
  *(v3 + 3208) = 0;
  *(v3 + 3488) = 0;
  *(v3 + 3496) = 0;
  *(v3 + 3248) = 0;
  *(v3 + 3256) = 0;
  *(v3 + 3264) = 0;
  *(v3 + 3272) = 0;
  *(v3 + 3512) = 0;
  *(v3 + 3296) = 0;
  *(v3 + 3304) = 0;
  *(v3 + 3536) = 0;
  *(v3 + 3312) = 0;
  *(v3 + 3320) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8A0);
  *(v3 + 3608) = swift_task_alloc();
  v4 = sub_1C5594994();
  *(v3 + 3616) = v4;
  *(v3 + 3624) = *(v4 - 8);
  *(v3 + 3632) = swift_task_alloc();
  v5 = sub_1C5594C74();
  *(v3 + 3640) = v5;
  *(v3 + 3648) = *(v5 - 8);
  *(v3 + 3656) = swift_task_alloc();
  *(v3 + 3664) = swift_task_alloc();
  *(v3 + 3672) = swift_task_alloc();
  *(v3 + 3680) = swift_task_alloc();
  *(v3 + 3688) = swift_task_alloc();
  *(v3 + 3696) = swift_task_alloc();
  *(v3 + 3704) = swift_task_alloc();
  *(v3 + 3368) = a2;
  *(v3 + 3816) = a3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C54C6860, 0, 0);
}

uint64_t sub_1C54C6860()
{
  *(v0 + 3360) = v0;
  v37 = sub_1C55946B4();
  if (v37)
  {
    *(v36 + 3576) = v37;
    sub_1C54D1DB4();
    *(v36 + 3584) = sub_1C5596414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D918);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D920);
    sub_1C54D6CC8();
    sub_1C55966A4();
    sub_1C541439C();
    v35 = *(v36 + 3376);
  }

  else
  {
    v35 = 0;
  }

  *(v36 + 3384) = v35;
  if (*(v36 + 3384))
  {
    v38 = *(v36 + 3384);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8A8);
    sub_1C5596E04();
    sub_1C54D1DB4();
    v38 = sub_1C5596454();
    if (*(v36 + 3384))
    {
      sub_1C541439C();
    }
  }

  v1 = *(v36 + 3704);
  v31 = *(v36 + 3640);
  v30 = *(v36 + 3648);
  *(v36 + 3712) = v38;
  *(v36 + 3392) = v38;
  v2 = sub_1C5542A40();
  v3 = *(v30 + 16);
  *(v36 + 3720) = v3;
  *(v36 + 3728) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v31);
  oslog = sub_1C5594C54();
  v32 = sub_1C5596974();
  *(v36 + 3736) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v34 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v32))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v27 = sub_1C5419DC0(0);
    v28 = sub_1C5419DC0(0);
    *(v36 + 3544) = buf;
    *(v36 + 3552) = v27;
    *(v36 + 3560) = v28;
    sub_1C5419E14(0, (v36 + 3544));
    sub_1C5419E14(0, (v36 + 3544));
    *(v36 + 3568) = v34;
    v29 = swift_task_alloc();
    v29[2] = v36 + 3544;
    v29[3] = v36 + 3552;
    v29[4] = v36 + 3560;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v32, "Building message..", buf, 2u);
    sub_1C5419E74(v27);
    sub_1C5419E74(v28);
    sub_1C5596A54();
  }

  *(v36 + 3744) = 0;
  v24 = *(v36 + 3704);
  v25 = *(v36 + 3640);
  v23 = *(v36 + 3648);
  v4 = MEMORY[0x1E69E5920](oslog);
  v5 = *(v23 + 8);
  *(v36 + 3752) = v5;
  *(v36 + 3760) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v24, v25, v4);
  InviteMessageDetails.init()((v36 + 944));
  *(v36 + 339) = 0;
  sub_1C54D1DB4();
  sub_1C5596464();
  v6 = *(v36 + 2984);
  *(v36 + 2992) = *(v36 + 2976);
  *(v36 + 3000) = v6;
  if (*(v36 + 3000))
  {
    v39 = *(v36 + 2992);
    v40 = *(v36 + 3000);
  }

  else
  {
    v39 = sub_1C55965F4();
    v40 = v7;
    if (*(v36 + 3000))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 944) = v39;
  *(v36 + 952) = v40;

  *(v36 + 340) = 1;
  sub_1C5596464();
  v8 = *(v36 + 3016);
  *(v36 + 3024) = *(v36 + 3008);
  *(v36 + 3032) = v8;
  if (*(v36 + 3032))
  {
    v41 = *(v36 + 3024);
    v42 = *(v36 + 3032);
  }

  else
  {
    v41 = sub_1C55965F4();
    v42 = v9;
    if (*(v36 + 3032))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 960) = v41;
  *(v36 + 968) = v42;

  *(v36 + 341) = 2;
  sub_1C5596464();
  v10 = *(v36 + 3048);
  *(v36 + 3056) = *(v36 + 3040);
  *(v36 + 3064) = v10;
  if (*(v36 + 3064))
  {
    v43 = *(v36 + 3056);
    v44 = *(v36 + 3064);
  }

  else
  {
    v43 = sub_1C55965F4();
    v44 = v11;
    if (*(v36 + 3064))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 976) = v43;
  *(v36 + 984) = v44;

  *(v36 + 342) = 3;
  sub_1C5596464();
  v12 = *(v36 + 3080);
  *(v36 + 3088) = *(v36 + 3072);
  *(v36 + 3096) = v12;
  if (*(v36 + 3096))
  {
    v45 = *(v36 + 3088);
    v46 = *(v36 + 3096);
  }

  else
  {
    v45 = sub_1C55965F4();
    v46 = v13;
    if (*(v36 + 3096))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 992) = v45;
  *(v36 + 1000) = v46;

  *(v36 + 343) = 4;
  sub_1C5596464();
  v14 = *(v36 + 3112);
  *(v36 + 3120) = *(v36 + 3104);
  *(v36 + 3128) = v14;
  if (*(v36 + 3128))
  {
    v47 = *(v36 + 3120);
    v48 = *(v36 + 3128);
  }

  else
  {
    v47 = sub_1C55965F4();
    v48 = v15;
    if (*(v36 + 3128))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 1008) = v47;
  *(v36 + 1016) = v48;

  *(v36 + 539) = 5;
  sub_1C5596464();
  v16 = *(v36 + 3144);
  *(v36 + 3152) = *(v36 + 3136);
  *(v36 + 3160) = v16;
  if (*(v36 + 3160))
  {
    v49 = *(v36 + 3152);
    v50 = *(v36 + 3160);
  }

  else
  {
    v49 = sub_1C55965F4();
    v50 = v17;
    if (*(v36 + 3160))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 1024) = v49;
  *(v36 + 1032) = v50;

  *(v36 + 540) = 6;
  sub_1C5596464();
  v18 = *(v36 + 3176);
  *(v36 + 3184) = *(v36 + 3168);
  *(v36 + 3192) = v18;
  if (*(v36 + 3192))
  {
    v51 = *(v36 + 3184);
    v52 = *(v36 + 3192);
  }

  else
  {
    v51 = sub_1C55965F4();
    v52 = v19;
    if (*(v36 + 3192))
    {
      sub_1C5401ECC();
    }
  }

  *(v36 + 1048) = v51;
  *(v36 + 1056) = v52;

  *(v36 + 3768) = sub_1C5404B78();
  v22 = sub_1C5404B48();
  *(v36 + 3776) = v22;
  *(v36 + 16) = *(v36 + 3360);
  *(v36 + 56) = v36 + 3400;
  *(v36 + 24) = sub_1C54C76E8;
  v21 = swift_continuation_init();
  *(v36 + 2800) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8B8);
  *(v36 + 2776) = v21;
  *(v36 + 2744) = MEMORY[0x1E69E9820];
  *(v36 + 2752) = 1107296256;
  *(v36 + 2756) = 0;
  *(v36 + 2760) = sub_1C54D1F2C;
  *(v36 + 2768) = &block_descriptor_12;
  [v22 fetchTrustedContactsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v36 + 16);
}

uint64_t sub_1C54C76E8()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 3360) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 3784) = v1;
  if (v1)
  {
    v2 = sub_1C54CE590;
  }

  else
  {
    v2 = sub_1C54C785C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C54C785C()
{
  v166 = v0;
  v1 = v0[472];
  v0[420] = v0;
  v150 = v0[425];
  v0[439] = v150;
  MEMORY[0x1E69E5920](v1);
  sub_1C5594CF4();
  v0[440] = v150;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D900);
  sub_1C54D6C20();
  sub_1C5596914();
  v151 = v0[468];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D910);
    sub_1C5596C74();
    v148 = *(v149 + 3528);
    if (!v148)
    {
      break;
    }

    v139 = *(v149 + 3632);
    v140 = *(v149 + 3616);
    v138 = *(v149 + 3624);
    *(v149 + 3536) = v148;
    v141 = *(v149 + 1048);
    v145 = *(v149 + 1056);
    sub_1C5594CF4();
    v144 = [v148 custodianID];
    sub_1C5594974();
    v142 = sub_1C5594944();
    v143 = v2;
    (*(v138 + 8))(v139, v140);
    v146 = MEMORY[0x1C69471A0](v141, v145, v142, v143);

    MEMORY[0x1E69E5920](v144);

    if (v146)
    {
      v101 = *(v149 + 3720);
      v3 = *(v149 + 3696);
      v100 = *(v149 + 3640);
      v102 = sub_1C54D20A0(v148);
      v103 = v4;
      *(v149 + 3312) = v102;
      *(v149 + 3320) = v4;
      v5 = sub_1C5542A40();
      v101(v3, v5, v100);
      MEMORY[0x1E69E5928](v148);
      v105 = swift_allocObject();
      *(v105 + 16) = v148;
      sub_1C5594CF4();
      v107 = swift_allocObject();
      *(v107 + 16) = v102;
      *(v107 + 24) = v103;
      MEMORY[0x1E69E5928](v148);
      v109 = swift_allocObject();
      *(v109 + 16) = v148;
      MEMORY[0x1E69E5928](v148);
      v111 = swift_allocObject();
      *(v111 + 16) = v148;
      MEMORY[0x1E69E5928](v148);
      v113 = swift_allocObject();
      *(v113 + 16) = v148;
      MEMORY[0x1E69E5928](v148);
      v104 = swift_allocObject();
      *(v104 + 16) = v148;

      v115 = swift_allocObject();
      *(v115 + 16) = sub_1C54D6A3C;
      *(v115 + 24) = v104;

      oslog = sub_1C5594C54();
      v137 = sub_1C5596974();
      v117 = swift_allocObject();
      *(v117 + 16) = 32;
      v118 = swift_allocObject();
      *(v118 + 16) = 8;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_1C54D6CA8;
      *(v106 + 24) = v105;
      v119 = swift_allocObject();
      *(v119 + 16) = sub_1C5473EFC;
      *(v119 + 24) = v106;
      v120 = swift_allocObject();
      *(v120 + 16) = 32;
      v121 = swift_allocObject();
      *(v121 + 16) = 8;
      v108 = swift_allocObject();
      *(v108 + 16) = sub_1C5499100;
      *(v108 + 24) = v107;
      v122 = swift_allocObject();
      *(v122 + 16) = sub_1C5473EFC;
      *(v122 + 24) = v108;
      v123 = swift_allocObject();
      *(v123 + 16) = 32;
      v124 = swift_allocObject();
      *(v124 + 16) = 8;
      v110 = swift_allocObject();
      *(v110 + 16) = sub_1C54D6CB0;
      *(v110 + 24) = v109;
      v125 = swift_allocObject();
      *(v125 + 16) = sub_1C5473EFC;
      *(v125 + 24) = v110;
      v126 = swift_allocObject();
      *(v126 + 16) = 32;
      v127 = swift_allocObject();
      *(v127 + 16) = 8;
      v112 = swift_allocObject();
      *(v112 + 16) = sub_1C54D6CB8;
      *(v112 + 24) = v111;
      v128 = swift_allocObject();
      *(v128 + 16) = sub_1C5473EFC;
      *(v128 + 24) = v112;
      v129 = swift_allocObject();
      *(v129 + 16) = 32;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_1C54D6CC0;
      *(v114 + 24) = v113;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_1C5473EFC;
      *(v131 + 24) = v114;
      v132 = swift_allocObject();
      *(v132 + 16) = 32;
      v133 = swift_allocObject();
      *(v133 + 16) = 8;
      v116 = swift_allocObject();
      *(v116 + 16) = sub_1C54D6A44;
      *(v116 + 24) = v115;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_1C5473EFC;
      *(v134 + 24) = v116;
      sub_1C5596E04();
      v135 = v6;

      *v135 = sub_1C545C6D4;
      v135[1] = v117;

      v135[2] = sub_1C545C6D4;
      v135[3] = v118;

      v135[4] = sub_1C5473FA4;
      v135[5] = v119;

      v135[6] = sub_1C545C6D4;
      v135[7] = v120;

      v135[8] = sub_1C545C6D4;
      v135[9] = v121;

      v135[10] = sub_1C5473FA4;
      v135[11] = v122;

      v135[12] = sub_1C545C6D4;
      v135[13] = v123;

      v135[14] = sub_1C545C6D4;
      v135[15] = v124;

      v135[16] = sub_1C5473FA4;
      v135[17] = v125;

      v135[18] = sub_1C545C6D4;
      v135[19] = v126;

      v135[20] = sub_1C545C6D4;
      v135[21] = v127;

      v135[22] = sub_1C5473FA4;
      v135[23] = v128;

      v135[24] = sub_1C545C6D4;
      v135[25] = v129;

      v135[26] = sub_1C545C6D4;
      v135[27] = v130;

      v135[28] = sub_1C5473FA4;
      v135[29] = v131;

      v135[30] = sub_1C545C6D4;
      v135[31] = v132;

      v135[32] = sub_1C545C6D4;
      v135[33] = v133;

      v135[34] = sub_1C5473FA4;
      v135[35] = v134;
      sub_1C540FCD8();

      if (os_log_type_enabled(oslog, v137))
      {
        buf = sub_1C5596A74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v98 = sub_1C5419DC0(0);
        v99 = sub_1C5419DC0(6);
        v161 = buf;
        v162 = v98;
        v163 = v99;
        sub_1C5419E14(2, &v161);
        sub_1C5419E14(6, &v161);
        v164 = sub_1C545C6D4;
        v165 = v117;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        if (v151)
        {
        }

        v164 = sub_1C545C6D4;
        v165 = v118;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C5473FA4;
        v165 = v119;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v120;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v121;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C5473FA4;
        v165 = v122;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v123;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v124;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C5473FA4;
        v165 = v125;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v126;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v127;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C5473FA4;
        v165 = v128;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v129;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v130;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C5473FA4;
        v165 = v131;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v132;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C545C6D4;
        v165 = v133;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        v164 = sub_1C5473FA4;
        v165 = v134;
        sub_1C5419E28(&v164, &v161, &v162, &v163);
        _os_log_impl(&dword_1C5355000, oslog, v137, "trustedContact is a match message.isSender = true %s %s %s %s %s %s", buf, 0x3Eu);
        sub_1C5419E74(v98);
        sub_1C5419E74(v99);
        sub_1C5596A54();

        v95 = 0;
        v96 = 0;
      }

      else
      {

        v95 = v151;
        v96 = v147;
      }

      v92 = *(v149 + 3752);
      v90 = *(v149 + 3696);
      v91 = *(v149 + 3640);
      v8 = MEMORY[0x1E69E5920](oslog);
      v92(v90, v91, v8);
      v93 = [v148 handle];
      *(v149 + 1072) = sub_1C5596574();
      *(v149 + 1080) = v9;

      *(v149 + 1064) = [v148 status];
      *(v149 + 1136) = 1;
      v94 = [v148 displayName];
      if (v94)
      {
        v86 = sub_1C5596574();
        v87 = v10;
        MEMORY[0x1E69E5920](v94);
        v88 = v86;
        v89 = v87;
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      *(v149 + 3328) = v88;
      *(v149 + 3336) = v89;
      if (*(v149 + 3336))
      {
        v11 = *(v149 + 3336);
        v157 = *(v149 + 3328);
        v158 = v11;
      }

      else
      {
        v157 = sub_1C55965F4();
        v158 = v12;
        if (*(v149 + 3336))
        {
          sub_1C5401ECC();
        }
      }

      v13 = v158;
      *(v149 + 1088) = v157;
      *(v149 + 1096) = v13;

      v85 = [v148 firstName];
      if (v85)
      {
        v81 = sub_1C5596574();
        v82 = v14;
        MEMORY[0x1E69E5920](v85);
        v83 = v81;
        v84 = v82;
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      *(v149 + 3344) = v83;
      *(v149 + 3352) = v84;
      if (*(v149 + 3352))
      {
        v15 = *(v149 + 3352);
        v159 = *(v149 + 3344);
        v160 = v15;
      }

      else
      {
        v159 = sub_1C55965F4();
        v160 = v16;
        if (*(v149 + 3352))
        {
          sub_1C5401ECC();
        }
      }

      v17 = v160;
      *(v149 + 1104) = v159;
      *(v149 + 1112) = v17;

      v79 = v95;
      v80 = v96;
    }

    else
    {
      v79 = v151;
      v80 = v147;
    }

    MEMORY[0x1E69E5920](v148);
    v151 = v79;
    v147 = v80;
  }

  sub_1C541439C();

  *(v149 + 3792) = v151;
  if (*(v149 + 1136))
  {
    v51 = *(v149 + 3720);
    v18 = *(v149 + 3680);
    v50 = *(v149 + 3640);
    v19 = sub_1C5542A40();
    v51(v18, v19, v50);
    memcpy((v149 + 144), (v149 + 944), 0xC3uLL);
    sub_1C54D605C(v149 + 144, v149 + 1144);
    v52 = swift_allocObject();
    memcpy((v52 + 16), (v149 + 144), 0xC3uLL);
    memcpy((v149 + 344), (v149 + 944), 0xC3uLL);
    sub_1C54D605C(v149 + 344, v149 + 1344);
    v54 = swift_allocObject();
    memcpy((v54 + 16), (v149 + 344), 0xC3uLL);
    memcpy((v149 + 544), (v149 + 944), 0xC3uLL);
    sub_1C54D605C(v149 + 544, v149 + 1544);
    v56 = swift_allocObject();
    memcpy((v56 + 16), (v149 + 544), 0xC3uLL);
    memcpy((v149 + 744), (v149 + 944), 0xC3uLL);
    sub_1C54D605C(v149 + 744, v149 + 1744);
    v60 = swift_allocObject();
    memcpy((v60 + 16), (v149 + 744), 0xC3uLL);
    log = sub_1C5594C54();
    v76 = sub_1C5596974();
    v62 = swift_allocObject();
    *(v62 + 16) = 32;
    v63 = swift_allocObject();
    *(v63 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1C54D6234;
    *(v53 + 24) = v52;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1C5473EFC;
    *(v64 + 24) = v53;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v66 = swift_allocObject();
    *(v66 + 16) = 8;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1C54D623C;
    *(v55 + 24) = v54;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1C5473EFC;
    *(v67 + 24) = v55;
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = 4;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1C54D6244;
    *(v57 + 24) = v56;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C54D66AC;
    *(v58 + 24) = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C54D66E0;
    *(v59 + 24) = v58;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_1C54D6728;
    *(v70 + 24) = v59;
    v71 = swift_allocObject();
    *(v71 + 16) = 32;
    v72 = swift_allocObject();
    *(v72 + 16) = 8;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C54D624C;
    *(v61 + 24) = v60;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1C5473EFC;
    *(v73 + 24) = v61;
    sub_1C5596E04();
    v74 = v20;

    *v74 = sub_1C545C6D4;
    v74[1] = v62;

    v74[2] = sub_1C545C6D4;
    v74[3] = v63;

    v74[4] = sub_1C5473FA4;
    v74[5] = v64;

    v74[6] = sub_1C545C6D4;
    v74[7] = v65;

    v74[8] = sub_1C545C6D4;
    v74[9] = v66;

    v74[10] = sub_1C5473FA4;
    v74[11] = v67;

    v74[12] = sub_1C545C6D4;
    v74[13] = v68;

    v74[14] = sub_1C545C6D4;
    v74[15] = v69;

    v74[16] = sub_1C54D6734;
    v74[17] = v70;

    v74[18] = sub_1C545C6D4;
    v74[19] = v71;

    v74[20] = sub_1C545C6D4;
    v74[21] = v72;

    v74[22] = sub_1C5473FA4;
    v74[23] = v73;
    sub_1C540FCD8();

    if (os_log_type_enabled(log, v76))
    {
      v47 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v48 = sub_1C5419DC0(0);
      v49 = sub_1C5419DC0(3);
      v152 = v47;
      v153 = v48;
      v154 = v49;
      sub_1C5419E14(2, &v152);
      sub_1C5419E14(4, &v152);
      v155 = sub_1C545C6D4;
      v156 = v62;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      if (v151)
      {
      }

      v155 = sub_1C545C6D4;
      v156 = v63;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C5473FA4;
      v156 = v64;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C545C6D4;
      v156 = v65;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C545C6D4;
      v156 = v66;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C5473FA4;
      v156 = v67;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C545C6D4;
      v156 = v68;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C545C6D4;
      v156 = v69;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C54D6734;
      v156 = v70;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C545C6D4;
      v156 = v71;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C545C6D4;
      v156 = v72;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      v155 = sub_1C5473FA4;
      v156 = v73;
      sub_1C5419E28(&v155, &v152, &v153, &v154);
      _os_log_impl(&dword_1C5355000, log, v76, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", v47, 0x26u);
      sub_1C5419E74(v48);
      sub_1C5419E74(v49);
      sub_1C5596A54();

      v46 = 0;
    }

    else
    {

      v46 = v151;
    }

    v44 = *(v149 + 3752);
    v42 = *(v149 + 3680);
    v43 = *(v149 + 3640);
    v45 = *(v149 + 541);
    v21 = MEMORY[0x1E69E5920](log);
    v44(v42, v43, v21);
    if (v45)
    {
      v38 = *(v149 + 3720);
      v22 = *(v149 + 3672);
      v37 = *(v149 + 3640);
      v23 = sub_1C5542A40();
      v38(v22, v23, v37);
      v40 = sub_1C5594C54();
      v39 = sub_1C5596974();
      v41 = sub_1C5596E04();
      if (os_log_type_enabled(v40, v39))
      {
        v33 = sub_1C5596A74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v34 = sub_1C5419DC0(0);
        v35 = sub_1C5419DC0(0);
        *(v149 + 3416) = v33;
        *(v149 + 3424) = v34;
        *(v149 + 3432) = v35;
        sub_1C5419E14(0, (v149 + 3416));
        sub_1C5419E14(0, (v149 + 3416));
        *(v149 + 3440) = v41;
        v36 = swift_task_alloc();
        v36[2] = v149 + 3416;
        v36[3] = v149 + 3424;
        v36[4] = v149 + 3432;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        if (v46)
        {
        }

        _os_log_impl(&dword_1C5355000, v40, v39, "Message is in compose screen, return message with minimal details", v33, 2u);
        sub_1C5419E74(v34);
        sub_1C5419E74(v35);
        sub_1C5596A54();
      }

      else
      {
      }

      v31 = *(v149 + 3752);
      v29 = *(v149 + 3672);
      v30 = *(v149 + 3640);
      v32 = *(v149 + 3592);
      v24 = MEMORY[0x1E69E5920](v40);
      v31(v29, v30, v24);
      swift_beginAccess();
      memcpy((v149 + 2344), (v149 + 944), 0xC3uLL);
      sub_1C54D605C(v149 + 2344, v149 + 2544);
      swift_endAccess();
      v32[3] = &type metadata for InviteMessageDetails;
      v32[4] = &protocol witness table for InviteMessageDetails;
      v25 = swift_allocObject();
      *v32 = v25;
      memcpy((v25 + 16), (v149 + 2344), 0xC3uLL);
      sub_1C54D6820();
    }

    else
    {
      v28 = *(v149 + 3592);
      swift_beginAccess();
      memcpy((v149 + 1944), (v149 + 944), 0xC3uLL);
      sub_1C54D605C(v149 + 1944, v149 + 2144);
      swift_endAccess();
      v28[3] = &type metadata for InviteMessageDetails;
      v28[4] = &protocol witness table for InviteMessageDetails;
      v26 = swift_allocObject();
      *v28 = v26;
      memcpy((v26 + 16), (v149 + 1944), 0xC3uLL);
      sub_1C54D6820();
    }

    v27 = *(*(v149 + 3360) + 8);

    return v27();
  }

  else
  {
    v78 = sub_1C5404B48();
    *(v149 + 3800) = v78;
    *(v149 + 80) = *(v149 + 3360);
    *(v149 + 120) = v149 + 3448;
    *(v149 + 88) = sub_1C54CB748;
    v77 = swift_continuation_init();
    *(v149 + 2864) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C0);
    *(v149 + 2840) = v77;
    *(v149 + 2808) = MEMORY[0x1E69E9820];
    *(v149 + 2816) = 1107296256;
    *(v149 + 2820) = 0;
    *(v149 + 2824) = sub_1C54D2B74;
    *(v149 + 2832) = &block_descriptor_113;
    [v78 fetchCustodianshipInfoWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v149 + 80);
  }
}

uint64_t sub_1C54CB748()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 3360) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 3808) = v1;
  if (v1)
  {
    v2 = sub_1C54D0250;
  }

  else
  {
    v2 = sub_1C54CB8BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C54CB8BC()
{
  v146 = v0;
  v1 = v0[475];
  v0[420] = v0;
  v134 = v0[431];
  v0[433] = v134;
  MEMORY[0x1E69E5920](v1);
  sub_1C5594CF4();
  v0[434] = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C8);
  sub_1C54D6904();
  sub_1C5596914();
  v135 = v0[474];
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8D8);
    sub_1C5596C74();
    v132 = *(v133 + 3480);
    if (!v132)
    {
      break;
    }

    v126 = *(v133 + 3608);
    *(v133 + 3488) = v132;
    v123 = swift_allocObject();
    *(v133 + 3496) = v123 + 16;
    v124 = [v132 0x1FC0F9863];
    *(v123 + 16) = sub_1C5596574();
    *(v123 + 24) = v2;
    v129 = [v132 0x1FC0F9863];
    *(v133 + 3216) = sub_1C5596574();
    *(v133 + 3224) = v3;
    *(v133 + 3232) = sub_1C55965F4();
    *(v133 + 3240) = v4;
    v5 = sub_1C55949C4();
    (*(*(v5 - 8) + 56))(v126, 1);
    v125 = sub_1C54141E8();
    sub_1C54D2CA8();
    v28 = v125;
    v127 = sub_1C5596AD4();
    v128 = v6;
    v130 = v7;
    sub_1C54D698C(v126);
    sub_1C5401ECC();
    sub_1C5401ECC();
    *&v8 = MEMORY[0x1E69E5920](v129).n128_u64[0];
    if ((v130 & 1) == 0)
    {
      *(v133 + 3264) = v127;
      *(v133 + 3272) = v128;
      v122 = [v132 ownerHandle];
      *(v133 + 3280) = sub_1C5596574();
      *(v133 + 3288) = v9;
      *(v133 + 3504) = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8E8);
      sub_1C54D6B20();
      sub_1C54D6B98();
      sub_1C5596904();

      v120 = sub_1C5596674();
      v121 = v10;

      MEMORY[0x1E69E5920](v122);
      swift_beginAccess();
      *(v123 + 16) = v120;
      *(v123 + 24) = v121;

      swift_endAccess();
    }

    v112 = *(v133 + 3632);
    v113 = *(v133 + 3616);
    v111 = *(v133 + 3624);
    v108 = [v132 statusDescription];
    v109 = sub_1C5596574();
    v110 = v11;
    *(v133 + 3248) = v109;
    *(v133 + 3256) = v11;
    MEMORY[0x1E69E5920](v108);
    v114 = *(v133 + 1048);
    v118 = *(v133 + 1056);
    sub_1C5594CF4();
    v117 = [v132 custodianID];
    sub_1C5594974();
    v115 = sub_1C5594944();
    v116 = v12;
    (*(v111 + 8))(v112, v113);
    v119 = MEMORY[0x1C69471A0](v114, v118, v115, v116);

    MEMORY[0x1E69E5920](v117);

    if (v119)
    {
      v89 = *(v133 + 3720);
      v13 = *(v133 + 3688);
      v88 = *(v133 + 3640);
      v14 = sub_1C5542A40();
      v89(v13, v14, v88);

      sub_1C5594CF4();
      v92 = swift_allocObject();
      *(v92 + 16) = v109;
      *(v92 + 24) = v110;
      MEMORY[0x1E69E5928](v132);
      v90 = swift_allocObject();
      *(v90 + 16) = v132;

      v94 = swift_allocObject();
      *(v94 + 16) = sub_1C54D6A3C;
      *(v94 + 24) = v90;

      oslog = sub_1C5594C54();
      v107 = sub_1C5596974();
      v96 = swift_allocObject();
      *(v96 + 16) = 32;
      v97 = swift_allocObject();
      *(v97 + 16) = 8;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_1C54D6A34;
      *(v91 + 24) = v123;
      v98 = swift_allocObject();
      *(v98 + 16) = sub_1C5473EFC;
      *(v98 + 24) = v91;
      v99 = swift_allocObject();
      *(v99 + 16) = 32;
      v100 = swift_allocObject();
      *(v100 + 16) = 8;
      v93 = swift_allocObject();
      *(v93 + 16) = sub_1C5499100;
      *(v93 + 24) = v92;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_1C5473EFC;
      *(v101 + 24) = v93;
      v102 = swift_allocObject();
      *(v102 + 16) = 32;
      v103 = swift_allocObject();
      *(v103 + 16) = 8;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_1C54D6A44;
      *(v95 + 24) = v94;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_1C5473EFC;
      *(v104 + 24) = v95;
      sub_1C5596E04();
      v105 = v15;

      *v105 = sub_1C545C6D4;
      v105[1] = v96;

      v105[2] = sub_1C545C6D4;
      v105[3] = v97;

      v105[4] = sub_1C5473FA4;
      v105[5] = v98;

      v105[6] = sub_1C545C6D4;
      v105[7] = v99;

      v105[8] = sub_1C545C6D4;
      v105[9] = v100;

      v105[10] = sub_1C5473FA4;
      v105[11] = v101;

      v105[12] = sub_1C545C6D4;
      v105[13] = v102;

      v105[14] = sub_1C545C6D4;
      v105[15] = v103;

      v105[16] = sub_1C5473FA4;
      v105[17] = v104;
      sub_1C540FCD8();

      if (os_log_type_enabled(oslog, v107))
      {
        buf = sub_1C5596A74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v86 = sub_1C5419DC0(0);
        v87 = sub_1C5419DC0(3);
        v141 = buf;
        v142 = v86;
        v143 = v87;
        sub_1C5419E14(2, &v141);
        sub_1C5419E14(3, &v141);
        v144 = sub_1C545C6D4;
        v145 = v96;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        if (v135)
        {
        }

        v144 = sub_1C545C6D4;
        v145 = v97;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C5473FA4;
        v145 = v98;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C545C6D4;
        v145 = v99;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C545C6D4;
        v145 = v100;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C5473FA4;
        v145 = v101;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C545C6D4;
        v145 = v102;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C545C6D4;
        v145 = v103;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        v144 = sub_1C5473FA4;
        v145 = v104;
        sub_1C5419E28(&v144, &v141, &v142, &v143);
        _os_log_impl(&dword_1C5355000, oslog, v107, "trustedContactOwner is a match %s %s %s", buf, 0x20u);
        sub_1C5419E74(v86);
        sub_1C5419E74(v87);
        sub_1C5596A54();

        v83 = 0;
        v84 = 0;
      }

      else
      {

        v83 = v135;
        v84 = v131;
      }

      v80 = *(v133 + 3752);
      v78 = *(v133 + 3688);
      v79 = *(v133 + 3640);
      v17 = MEMORY[0x1E69E5920](oslog);
      v80(v78, v79, v17);
      *(v133 + 1137) = 1;
      *(v133 + 1064) = [v132 status];
      v81 = v83;
      v82 = v84;
    }

    else
    {
      v81 = v135;
      v82 = v131;
    }

    MEMORY[0x1E69E5920](v132);
    v135 = v81;
    v131 = v82;
  }

  sub_1C541439C();

  v52 = *(v133 + 3720);
  v18 = *(v133 + 3680);
  v51 = *(v133 + 3640);
  v19 = sub_1C5542A40();
  v52(v18, v19, v51);
  memcpy((v133 + 144), (v133 + 944), 0xC3uLL);
  sub_1C54D605C(v133 + 144, v133 + 1144);
  v53 = swift_allocObject();
  memcpy((v53 + 16), (v133 + 144), 0xC3uLL);
  memcpy((v133 + 344), (v133 + 944), 0xC3uLL);
  sub_1C54D605C(v133 + 344, v133 + 1344);
  v55 = swift_allocObject();
  memcpy((v55 + 16), (v133 + 344), 0xC3uLL);
  memcpy((v133 + 544), (v133 + 944), 0xC3uLL);
  sub_1C54D605C(v133 + 544, v133 + 1544);
  v57 = swift_allocObject();
  memcpy((v57 + 16), (v133 + 544), 0xC3uLL);
  memcpy((v133 + 744), (v133 + 944), 0xC3uLL);
  sub_1C54D605C(v133 + 744, v133 + 1744);
  v61 = swift_allocObject();
  memcpy((v61 + 16), (v133 + 744), 0xC3uLL);
  log = sub_1C5594C54();
  v77 = sub_1C5596974();
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1C54D6234;
  *(v54 + 24) = v53;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1C5473EFC;
  *(v65 + 24) = v54;
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1C54D623C;
  *(v56 + 24) = v55;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1C5473EFC;
  *(v68 + 24) = v56;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = 4;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1C54D6244;
  *(v58 + 24) = v57;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1C54D66AC;
  *(v59 + 24) = v58;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1C54D66E0;
  *(v60 + 24) = v59;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1C54D6728;
  *(v71 + 24) = v60;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1C54D624C;
  *(v62 + 24) = v61;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1C5473EFC;
  *(v74 + 24) = v62;
  sub_1C5596E04();
  v75 = v20;

  *v75 = sub_1C545C6D4;
  v75[1] = v63;

  v75[2] = sub_1C545C6D4;
  v75[3] = v64;

  v75[4] = sub_1C5473FA4;
  v75[5] = v65;

  v75[6] = sub_1C545C6D4;
  v75[7] = v66;

  v75[8] = sub_1C545C6D4;
  v75[9] = v67;

  v75[10] = sub_1C5473FA4;
  v75[11] = v68;

  v75[12] = sub_1C545C6D4;
  v75[13] = v69;

  v75[14] = sub_1C545C6D4;
  v75[15] = v70;

  v75[16] = sub_1C54D6734;
  v75[17] = v71;

  v75[18] = sub_1C545C6D4;
  v75[19] = v72;

  v75[20] = sub_1C545C6D4;
  v75[21] = v73;

  v75[22] = sub_1C5473FA4;
  v75[23] = v74;
  sub_1C540FCD8();

  if (os_log_type_enabled(log, v77))
  {
    v48 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v49 = sub_1C5419DC0(0);
    v50 = sub_1C5419DC0(3);
    v136 = v48;
    v137 = v49;
    v138 = v50;
    sub_1C5419E14(2, &v136);
    sub_1C5419E14(4, &v136);
    v139 = sub_1C545C6D4;
    v140 = v63;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    if (v135)
    {
    }

    v139 = sub_1C545C6D4;
    v140 = v64;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C5473FA4;
    v140 = v65;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C545C6D4;
    v140 = v66;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C545C6D4;
    v140 = v67;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C5473FA4;
    v140 = v68;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C545C6D4;
    v140 = v69;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C545C6D4;
    v140 = v70;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C54D6734;
    v140 = v71;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C545C6D4;
    v140 = v72;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C545C6D4;
    v140 = v73;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    v139 = sub_1C5473FA4;
    v140 = v74;
    sub_1C5419E28(&v139, &v136, &v137, &v138);
    _os_log_impl(&dword_1C5355000, log, v77, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", v48, 0x26u);
    sub_1C5419E74(v49);
    sub_1C5419E74(v50);
    sub_1C5596A54();

    v47 = 0;
  }

  else
  {

    v47 = v135;
  }

  v45 = *(v133 + 3752);
  v43 = *(v133 + 3680);
  v44 = *(v133 + 3640);
  v46 = *(v133 + 541);
  v21 = MEMORY[0x1E69E5920](log);
  v45(v43, v44, v21);
  if (v46)
  {
    v39 = *(v133 + 3720);
    v22 = *(v133 + 3672);
    v38 = *(v133 + 3640);
    v23 = sub_1C5542A40();
    v39(v22, v23, v38);
    v41 = sub_1C5594C54();
    v40 = sub_1C5596974();
    v42 = sub_1C5596E04();
    if (os_log_type_enabled(v41, v40))
    {
      v34 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v35 = sub_1C5419DC0(0);
      v36 = sub_1C5419DC0(0);
      *(v133 + 3416) = v34;
      *(v133 + 3424) = v35;
      *(v133 + 3432) = v36;
      sub_1C5419E14(0, (v133 + 3416));
      sub_1C5419E14(0, (v133 + 3416));
      *(v133 + 3440) = v42;
      v37 = swift_task_alloc();
      v37[2] = v133 + 3416;
      v37[3] = v133 + 3424;
      v37[4] = v133 + 3432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      if (v47)
      {
      }

      _os_log_impl(&dword_1C5355000, v41, v40, "Message is in compose screen, return message with minimal details", v34, 2u);
      sub_1C5419E74(v35);
      sub_1C5419E74(v36);
      sub_1C5596A54();
    }

    else
    {
    }

    v32 = *(v133 + 3752);
    v30 = *(v133 + 3672);
    v31 = *(v133 + 3640);
    v33 = *(v133 + 3592);
    v24 = MEMORY[0x1E69E5920](v41);
    v32(v30, v31, v24);
    swift_beginAccess();
    memcpy((v133 + 2344), (v133 + 944), 0xC3uLL);
    sub_1C54D605C(v133 + 2344, v133 + 2544);
    swift_endAccess();
    v33[3] = &type metadata for InviteMessageDetails;
    v33[4] = &protocol witness table for InviteMessageDetails;
    v25 = swift_allocObject();
    *v33 = v25;
    memcpy((v25 + 16), (v133 + 2344), 0xC3uLL);
    sub_1C54D6820();
  }

  else
  {
    v29 = *(v133 + 3592);
    swift_beginAccess();
    memcpy((v133 + 1944), (v133 + 944), 0xC3uLL);
    sub_1C54D605C(v133 + 1944, v133 + 2144);
    swift_endAccess();
    v29[3] = &type metadata for InviteMessageDetails;
    v29[4] = &protocol witness table for InviteMessageDetails;
    v26 = swift_allocObject();
    *v29 = v26;
    memcpy((v26 + 16), (v133 + 1944), 0xC3uLL);
    sub_1C54D6820();
  }

  v27 = *(*(v133 + 3360) + 8);

  return v27();
}

uint64_t sub_1C54CE590()
{
  v98 = v0;
  v79 = v0[473];
  v76 = v0[472];
  v78 = v0[465];
  v75 = v0[458];
  v77 = v0[455];
  v0[420] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v76);
  v1 = v79;
  v0[426] = v79;
  v2 = sub_1C5542A40();
  v78(v75, v2, v77);
  v3 = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  oslog = sub_1C5594C54();
  v87 = sub_1C5596954();
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v83 = swift_allocObject();
  *(v83 + 16) = 8;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1C54D2B6C;
  *(v81 + 24) = v80;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1C5473EFC;
  *(v84 + 24) = v81;
  sub_1C5596E04();
  v85 = v4;

  *v85 = sub_1C545C6D4;
  v85[1] = v82;

  v85[2] = sub_1C545C6D4;
  v85[3] = v83;

  v85[4] = sub_1C5473FA4;
  v85[5] = v84;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v87))
  {
    v21 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v22 = sub_1C5419DC0(0);
    v23 = sub_1C5419DC0(1);
    v93 = v21;
    v94 = v22;
    v95 = v23;
    sub_1C5419E14(2, &v93);
    sub_1C5419E14(1, &v93);
    v96 = sub_1C545C6D4;
    v97 = v82;
    sub_1C5419E28(&v96, &v93, &v94, &v95);
    v96 = sub_1C545C6D4;
    v97 = v83;
    sub_1C5419E28(&v96, &v93, &v94, &v95);
    v96 = sub_1C5473FA4;
    v97 = v84;
    sub_1C5419E28(&v96, &v93, &v94, &v95);
    _os_log_impl(&dword_1C5355000, oslog, v87, "fetchTrustedContacts : %s", v21, 0xCu);
    sub_1C5419E74(v22);
    sub_1C5419E74(v23);
    sub_1C5596A54();
  }

  else
  {
  }

  v20 = *(v74 + 3784);
  v19 = *(v74 + 3752);
  v17 = *(v74 + 3664);
  v18 = *(v74 + 3640);
  v15 = MEMORY[0x1E69E5920](oslog);
  v19(v17, v18, v15);

  *(v74 + 3792) = 0;
  if (*(v74 + 1136))
  {
    v46 = *(v74 + 3720);
    v5 = *(v74 + 3680);
    v45 = *(v74 + 3640);
    v6 = sub_1C5542A40();
    v46(v5, v6, v45);
    memcpy((v74 + 144), (v74 + 944), 0xC3uLL);
    sub_1C54D605C(v74 + 144, v74 + 1144);
    v47 = swift_allocObject();
    memcpy((v47 + 16), (v74 + 144), 0xC3uLL);
    memcpy((v74 + 344), (v74 + 944), 0xC3uLL);
    sub_1C54D605C(v74 + 344, v74 + 1344);
    v49 = swift_allocObject();
    memcpy((v49 + 16), (v74 + 344), 0xC3uLL);
    memcpy((v74 + 544), (v74 + 944), 0xC3uLL);
    sub_1C54D605C(v74 + 544, v74 + 1544);
    v51 = swift_allocObject();
    memcpy((v51 + 16), (v74 + 544), 0xC3uLL);
    memcpy((v74 + 744), (v74 + 944), 0xC3uLL);
    sub_1C54D605C(v74 + 744, v74 + 1744);
    v55 = swift_allocObject();
    memcpy((v55 + 16), (v74 + 744), 0xC3uLL);
    log = sub_1C5594C54();
    v71 = sub_1C5596974();
    v57 = swift_allocObject();
    *(v57 + 16) = 32;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1C54D6234;
    *(v48 + 24) = v47;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1C5473EFC;
    *(v59 + 24) = v48;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C54D623C;
    *(v50 + 24) = v49;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1C5473EFC;
    *(v62 + 24) = v50;
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = 4;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1C54D6244;
    *(v52 + 24) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1C54D66AC;
    *(v53 + 24) = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1C54D66E0;
    *(v54 + 24) = v53;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1C54D6728;
    *(v65 + 24) = v54;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1C54D624C;
    *(v56 + 24) = v55;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1C5473EFC;
    *(v68 + 24) = v56;
    sub_1C5596E04();
    v69 = v7;

    *v69 = sub_1C545C6D4;
    v69[1] = v57;

    v69[2] = sub_1C545C6D4;
    v69[3] = v58;

    v69[4] = sub_1C5473FA4;
    v69[5] = v59;

    v69[6] = sub_1C545C6D4;
    v69[7] = v60;

    v69[8] = sub_1C545C6D4;
    v69[9] = v61;

    v69[10] = sub_1C5473FA4;
    v69[11] = v62;

    v69[12] = sub_1C545C6D4;
    v69[13] = v63;

    v69[14] = sub_1C545C6D4;
    v69[15] = v64;

    v69[16] = sub_1C54D6734;
    v69[17] = v65;

    v69[18] = sub_1C545C6D4;
    v69[19] = v66;

    v69[20] = sub_1C545C6D4;
    v69[21] = v67;

    v69[22] = sub_1C5473FA4;
    v69[23] = v68;
    sub_1C540FCD8();

    if (os_log_type_enabled(log, v71))
    {
      buf = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v43 = sub_1C5419DC0(0);
      v44 = sub_1C5419DC0(3);
      v88 = buf;
      v89 = v43;
      v90 = v44;
      sub_1C5419E14(2, &v88);
      sub_1C5419E14(4, &v88);
      v91 = sub_1C545C6D4;
      v92 = v57;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v58;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C5473FA4;
      v92 = v59;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v60;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v61;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C5473FA4;
      v92 = v62;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v63;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v64;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C54D6734;
      v92 = v65;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v66;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C545C6D4;
      v92 = v67;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      v91 = sub_1C5473FA4;
      v92 = v68;
      sub_1C5419E28(&v91, &v88, &v89, &v90);
      _os_log_impl(&dword_1C5355000, log, v71, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", buf, 0x26u);
      sub_1C5419E74(v43);
      sub_1C5419E74(v44);
      sub_1C5596A54();
    }

    else
    {
    }

    v40 = *(v74 + 3752);
    v38 = *(v74 + 3680);
    v39 = *(v74 + 3640);
    v41 = *(v74 + 541);
    v8 = MEMORY[0x1E69E5920](log);
    v40(v38, v39, v8);
    if (v41)
    {
      v34 = *(v74 + 3720);
      v9 = *(v74 + 3672);
      v33 = *(v74 + 3640);
      v10 = sub_1C5542A40();
      v34(v9, v10, v33);
      v36 = sub_1C5594C54();
      v35 = sub_1C5596974();
      v37 = sub_1C5596E04();
      if (os_log_type_enabled(v36, v35))
      {
        v29 = sub_1C5596A74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v30 = sub_1C5419DC0(0);
        v31 = sub_1C5419DC0(0);
        *(v74 + 3416) = v29;
        *(v74 + 3424) = v30;
        *(v74 + 3432) = v31;
        sub_1C5419E14(0, (v74 + 3416));
        sub_1C5419E14(0, (v74 + 3416));
        *(v74 + 3440) = v37;
        v32 = swift_task_alloc();
        v32[2] = v74 + 3416;
        v32[3] = v74 + 3424;
        v32[4] = v74 + 3432;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();

        _os_log_impl(&dword_1C5355000, v36, v35, "Message is in compose screen, return message with minimal details", v29, 2u);
        sub_1C5419E74(v30);
        sub_1C5419E74(v31);
        sub_1C5596A54();
      }

      v27 = *(v74 + 3752);
      v25 = *(v74 + 3672);
      v26 = *(v74 + 3640);
      v28 = *(v74 + 3592);
      v11 = MEMORY[0x1E69E5920](v36);
      v27(v25, v26, v11);
      swift_beginAccess();
      memcpy((v74 + 2344), (v74 + 944), 0xC3uLL);
      sub_1C54D605C(v74 + 2344, v74 + 2544);
      swift_endAccess();
      v28[3] = &type metadata for InviteMessageDetails;
      v28[4] = &protocol witness table for InviteMessageDetails;
      v12 = swift_allocObject();
      *v28 = v12;
      memcpy((v12 + 16), (v74 + 2344), 0xC3uLL);
      sub_1C54D6820();
    }

    else
    {
      v24 = *(v74 + 3592);
      swift_beginAccess();
      memcpy((v74 + 1944), (v74 + 944), 0xC3uLL);
      sub_1C54D605C(v74 + 1944, v74 + 2144);
      swift_endAccess();
      v24[3] = &type metadata for InviteMessageDetails;
      v24[4] = &protocol witness table for InviteMessageDetails;
      v13 = swift_allocObject();
      *v24 = v13;
      memcpy((v13 + 16), (v74 + 1944), 0xC3uLL);
      sub_1C54D6820();
    }

    v14 = *(*(v74 + 3360) + 8);

    return v14();
  }

  else
  {
    v73 = sub_1C5404B48();
    *(v74 + 3800) = v73;
    *(v74 + 80) = *(v74 + 3360);
    *(v74 + 120) = v74 + 3448;
    *(v74 + 88) = sub_1C54CB748;
    v72 = swift_continuation_init();
    *(v74 + 2864) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C0);
    *(v74 + 2840) = v72;
    *(v74 + 2808) = MEMORY[0x1E69E9820];
    *(v74 + 2816) = 1107296256;
    *(v74 + 2820) = 0;
    *(v74 + 2824) = sub_1C54D2B74;
    *(v74 + 2832) = &block_descriptor_113;
    [v73 fetchCustodianshipInfoWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v74 + 80);
  }
}

uint64_t sub_1C54D0250()
{
  v96 = v0;
  v77 = v0[476];
  v74 = v0[475];
  v76 = v0[465];
  v73 = v0[457];
  v75 = v0[455];
  v0[420] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v74);
  v1 = v77;
  v0[432] = v77;
  v2 = sub_1C5542A40();
  v76(v73, v2, v75);
  v3 = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  oslog = sub_1C5594C54();
  v85 = sub_1C5596954();
  v80 = swift_allocObject();
  *(v80 + 16) = 32;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1C54D2B6C;
  *(v79 + 24) = v78;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1C5473EFC;
  *(v82 + 24) = v79;
  sub_1C5596E04();
  v83 = v4;

  *v83 = sub_1C545C6D4;
  v83[1] = v80;

  v83[2] = sub_1C545C6D4;
  v83[3] = v81;

  v83[4] = sub_1C5473FA4;
  v83[5] = v82;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v85))
  {
    v34 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v35 = sub_1C5419DC0(0);
    v36 = sub_1C5419DC0(1);
    v91 = v34;
    v92 = v35;
    v93 = v36;
    sub_1C5419E14(2, &v91);
    sub_1C5419E14(1, &v91);
    v94 = sub_1C545C6D4;
    v95 = v80;
    sub_1C5419E28(&v94, &v91, &v92, &v93);
    v94 = sub_1C545C6D4;
    v95 = v81;
    sub_1C5419E28(&v94, &v91, &v92, &v93);
    v94 = sub_1C5473FA4;
    v95 = v82;
    sub_1C5419E28(&v94, &v91, &v92, &v93);
    _os_log_impl(&dword_1C5355000, oslog, v85, "fetchMyCustodianshipOwners : %s", v34, 0xCu);
    sub_1C5419E74(v35);
    sub_1C5419E74(v36);
    sub_1C5596A54();
  }

  else
  {
  }

  v20 = *(v72 + 3808);
  v19 = *(v72 + 3752);
  v17 = *(v72 + 3656);
  v18 = *(v72 + 3640);
  v13 = MEMORY[0x1E69E5920](oslog);
  v19(v17, v18, v13);

  v22 = *(v72 + 3720);
  v14 = *(v72 + 3680);
  v21 = *(v72 + 3640);
  v15 = sub_1C5542A40();
  v22(v14, v15, v21);
  memcpy((v72 + 144), (v72 + 944), 0xC3uLL);
  sub_1C54D605C(v72 + 144, v72 + 1144);
  v23 = swift_allocObject();
  memcpy((v23 + 16), (v72 + 144), 0xC3uLL);
  memcpy((v72 + 344), (v72 + 944), 0xC3uLL);
  sub_1C54D605C(v72 + 344, v72 + 1344);
  v25 = swift_allocObject();
  memcpy((v25 + 16), (v72 + 344), 0xC3uLL);
  memcpy((v72 + 544), (v72 + 944), 0xC3uLL);
  sub_1C54D605C(v72 + 544, v72 + 1544);
  v27 = swift_allocObject();
  memcpy((v27 + 16), (v72 + 544), 0xC3uLL);
  memcpy((v72 + 744), (v72 + 944), 0xC3uLL);
  sub_1C54D605C(v72 + 744, v72 + 1744);
  v31 = swift_allocObject();
  memcpy((v31 + 16), (v72 + 744), 0xC3uLL);
  log = sub_1C5594C54();
  v56 = sub_1C5596974();
  v71 = swift_allocObject();
  *(v71 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C54D6234;
  *(v24 + 24) = v23;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1C5473EFC;
  *(v58 + 24) = v24;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1C54D623C;
  *(v26 + 24) = v25;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1C5473EFC;
  *(v61 + 24) = v26;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 4;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C54D6244;
  *(v28 + 24) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1C54D66AC;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1C54D66E0;
  *(v30 + 24) = v29;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1C54D6728;
  *(v64 + 24) = v30;
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1C54D624C;
  *(v32 + 24) = v31;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C5473EFC;
  *(v67 + 24) = v32;
  sub_1C5596E04();
  v33 = v16;

  *v33 = sub_1C545C6D4;
  v33[1] = v71;

  v33[2] = sub_1C545C6D4;
  v33[3] = v57;

  v33[4] = sub_1C5473FA4;
  v33[5] = v58;

  v33[6] = sub_1C545C6D4;
  v33[7] = v59;

  v33[8] = sub_1C545C6D4;
  v33[9] = v60;

  v33[10] = sub_1C5473FA4;
  v33[11] = v61;

  v33[12] = sub_1C545C6D4;
  v33[13] = v62;

  v33[14] = sub_1C545C6D4;
  v33[15] = v63;

  v33[16] = sub_1C54D6734;
  v33[17] = v64;

  v33[18] = sub_1C545C6D4;
  v33[19] = v65;

  v33[20] = sub_1C545C6D4;
  v33[21] = v66;

  v33[22] = sub_1C5473FA4;
  v33[23] = v67;
  sub_1C540FCD8();

  if (os_log_type_enabled(log, v56))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v69 = sub_1C5419DC0(0);
    v70 = sub_1C5419DC0(3);
    v86 = buf;
    v87 = v69;
    v88 = v70;
    sub_1C5419E14(2, &v86);
    sub_1C5419E14(4, &v86);
    v89 = sub_1C545C6D4;
    v90 = v71;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v57;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C5473FA4;
    v90 = v58;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v59;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v60;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C5473FA4;
    v90 = v61;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v62;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v63;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C54D6734;
    v90 = v64;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v65;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C545C6D4;
    v90 = v66;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    v89 = sub_1C5473FA4;
    v90 = v67;
    sub_1C5419E28(&v89, &v86, &v87, &v88);
    _os_log_impl(&dword_1C5355000, log, v56, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", buf, 0x26u);
    sub_1C5419E74(v69);
    sub_1C5419E74(v70);
    sub_1C5596A54();
  }

  else
  {
  }

  v53 = *(v72 + 3752);
  v51 = *(v72 + 3680);
  v52 = *(v72 + 3640);
  v54 = *(v72 + 541);
  v5 = MEMORY[0x1E69E5920](log);
  v53(v51, v52, v5);
  if (v54)
  {
    v47 = *(v72 + 3720);
    v6 = *(v72 + 3672);
    v46 = *(v72 + 3640);
    v7 = sub_1C5542A40();
    v47(v6, v7, v46);
    v49 = sub_1C5594C54();
    v48 = sub_1C5596974();
    v50 = sub_1C5596E04();
    if (os_log_type_enabled(v49, v48))
    {
      v42 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v43 = sub_1C5419DC0(0);
      v44 = sub_1C5419DC0(0);
      *(v72 + 3416) = v42;
      *(v72 + 3424) = v43;
      *(v72 + 3432) = v44;
      sub_1C5419E14(0, (v72 + 3416));
      sub_1C5419E14(0, (v72 + 3416));
      *(v72 + 3440) = v50;
      v45 = swift_task_alloc();
      v45[2] = v72 + 3416;
      v45[3] = v72 + 3424;
      v45[4] = v72 + 3432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v49, v48, "Message is in compose screen, return message with minimal details", v42, 2u);
      sub_1C5419E74(v43);
      sub_1C5419E74(v44);
      sub_1C5596A54();
    }

    v40 = *(v72 + 3752);
    v38 = *(v72 + 3672);
    v39 = *(v72 + 3640);
    v41 = *(v72 + 3592);
    v8 = MEMORY[0x1E69E5920](v49);
    v40(v38, v39, v8);
    swift_beginAccess();
    memcpy((v72 + 2344), (v72 + 944), 0xC3uLL);
    sub_1C54D605C(v72 + 2344, v72 + 2544);
    swift_endAccess();
    v41[3] = &type metadata for InviteMessageDetails;
    v41[4] = &protocol witness table for InviteMessageDetails;
    v9 = swift_allocObject();
    *v41 = v9;
    memcpy((v9 + 16), (v72 + 2344), 0xC3uLL);
    sub_1C54D6820();
  }

  else
  {
    v37 = *(v72 + 3592);
    swift_beginAccess();
    memcpy((v72 + 1944), (v72 + 944), 0xC3uLL);
    sub_1C54D605C(v72 + 1944, v72 + 2144);
    swift_endAccess();
    v37[3] = &type metadata for InviteMessageDetails;
    v37[4] = &protocol witness table for InviteMessageDetails;
    v10 = swift_allocObject();
    *v37 = v10;
    memcpy((v10 + 16), (v72 + 1944), 0xC3uLL);
    sub_1C54D6820();
  }

  v11 = *(*(v72 + 3360) + 8);

  return v11();
}

unint64_t sub_1C54D1DB4()
{
  v2 = qword_1EC15D8B0;
  if (!qword_1EC15D8B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D1E30()
{
  sub_1C5594694();
  sub_1C54C4FE4();
  sub_1C55946A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D920);
  return sub_1C5596474();
}

double sub_1C54D1F2C(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D900);
    sub_1C542501C(v10, a3, v6);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    sub_1C54D829C();
    v11 = sub_1C5596714();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D900);
    sub_1C5425080(v10, &v11, v3);
    MEMORY[0x1E69E5920](a2);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C54D20A0(void *a1)
{
  [a1 isAcceptedAndShared];
  sub_1C55965F4();
  [a1 isIdMSConfirmed];
  sub_1C55965F4();
  sub_1C55965F4();
  [a1 preflightStatus];
  type metadata accessor for TrustedContactPreflightStatus();
  sub_1C54D6DE8();
  if ((sub_1C55964D4() & 1) == 0 && (sub_1C55964D4() & 1) == 0)
  {
    sub_1C55964D4();
  }

  sub_1C55965F4();
  sub_1C5594CF4();

  sub_1C54D4F3C(a1);
  sub_1C5594CF4();
  sub_1C5596DF4();
  v1 = sub_1C55965F4();
  MEMORY[0x1C6947980](v1);

  sub_1C5596DD4();
  v2 = sub_1C55965F4();
  MEMORY[0x1C6947980](v2);

  sub_1C5596DD4();
  v3 = sub_1C55965F4();
  MEMORY[0x1C6947980](v3);

  sub_1C5596DD4();
  sub_1C5401ECC();
  v4 = sub_1C55965F4();
  MEMORY[0x1C6947980](v4);

  sub_1C5594CF4();
  sub_1C5401ECC();
  sub_1C55965D4();
  sub_1C54141E8();
  v6 = sub_1C5596AE4();
  sub_1C5401ECC();
  sub_1C5401ECC();
  sub_1C5401ECC();
  sub_1C5401ECC();

  return v6;
}

uint64_t sub_1C54D26BC(void *a1)
{
  v2 = [a1 handle];
  v3 = sub_1C5596574();
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1C54D2718(void *a1)
{
  v7 = [a1 firstName];
  if (v7)
  {
    v3 = sub_1C5596574();
    v4 = v1;
    MEMORY[0x1E69E5920](v7);
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C54D2824(void *a1)
{
  v7 = [a1 lastName];
  if (v7)
  {
    v3 = sub_1C5596574();
    v4 = v1;
    MEMORY[0x1E69E5920](v7);
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C54D2930(void *a1)
{
  v7 = [a1 displayName];
  if (v7)
  {
    v3 = sub_1C5596574();
    v4 = v1;
    MEMORY[0x1E69E5920](v7);
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return sub_1C55965F4();
  }
}

double sub_1C54D2A3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2;
  v3 = a1;
  v9 = sub_1C5594994();
  v5 = *(v9 - 8);
  v6 = v9 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v3 - v4;
  v10 = [MEMORY[0x1EEE9AC00](v3) custodianID];
  sub_1C5594974();
  (*(v5 + 32))(v7, v8, v9);
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

double sub_1C54D2B74(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C8);
    sub_1C542501C(v10, a3, v6);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    sub_1C54D8208();
    v11 = sub_1C5596714();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8C8);
    sub_1C5425080(v10, &v11, v3);
    MEMORY[0x1E69E5920](a2);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C54D2CA8()
{
  sub_1C54D5FB0(0);

  return 0;
}

uint64_t sub_1C54D2CE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54D2D44(uint64_t a1)
{
  v2 = *(a1 + 128);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54D2D88(uint64_t a1)
{
  v2 = *(a1 + 176);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54D2DEC(uint64_t a1)
{
  v2 = *(a1 + 104);
  sub_1C5594CF4();
  return v2;
}

uint64_t static InviteMessageDetails.detailsPreviewFrom(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v305 = &title;
  v306 = &v431;
  v307 = &v419;
  v308 = &v407;
  v309 = &v400;
  v310 = &v356;
  v311 = &v342;
  v316 = v2;
  v3 = v1;
  v312 = v4;
  v313 = v2;
  v406 = 0;
  v405 = 0;
  v401 = 0;
  v314 = 0u;
  memset(&v400, 0, 195);
  v315 = 0;
  v317 = sub_1C5594C74();
  v318 = *(v317 - 8);
  v319 = v318;
  v321 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v317 - 8);
  v323 = (v321 + 15) & 0xFFFFFFFFFFFFFFF0;
  v320 = v166 - v323;
  MEMORY[0x1EEE9AC00](v166 - v323);
  v322 = v166 - v323;
  MEMORY[0x1EEE9AC00](v166 - v323);
  v324 = v166 - v323;
  v406 = v3;
  v405 = v5;
  v325 = sub_1C55946B4();
  if (v325)
  {
    v304 = v325;
    v6 = v315;
    v327 = v325;
    sub_1C54D1DB4();
    v326 = sub_1C5596414();
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D918);
    v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D920);
    sub_1C54D6CC8();
    sub_1C55966A4();
    v303 = v6;
    if (v6)
    {
      result = 0;
      __break(1u);
      return result;
    }

    sub_1C541439C();
    v299 = v403;
    v300 = v303;
  }

  else
  {
    v299 = 0;
    v300 = v315;
  }

  v298 = v300;
  v402 = v299;
  if (v299)
  {
    v404 = v402;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D8A8);
    v297 = sub_1C5596E04();
    sub_1C54D1DB4();
    v404 = sub_1C5596454();
    if (v402)
    {
      sub_1C541439C();
    }
  }

  v7 = v324;
  v288 = v404;
  v401 = v404;
  v8 = sub_1C5542A40();
  v289 = *(v319 + 16);
  v290 = (v319 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v289(v7, v8, v317);
  v295 = sub_1C5594C54();
  v291 = v295;
  v294 = sub_1C5596974();
  v292 = v294;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v296 = sub_1C5596E04();
  if (os_log_type_enabled(v295, v294))
  {
    v9 = v298;
    v279 = sub_1C5596A74();
    v275 = v279;
    v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v277 = 0;
    v280 = sub_1C5419DC0(0);
    v278 = v280;
    v281 = sub_1C5419DC0(v277);
    v331 = v279;
    v330 = v280;
    v329 = v281;
    v282 = 0;
    v283 = &v331;
    sub_1C5419E14(0, &v331);
    sub_1C5419E14(v282, v283);
    v328 = v296;
    v284 = v166;
    MEMORY[0x1EEE9AC00](v166);
    v285 = &v166[-6];
    v166[-4] = v10;
    v166[-3] = &v330;
    v166[-2] = &v329;
    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v287 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v291, v292, "Building message..", v275, 2u);
      v273 = 0;
      sub_1C5419E74(v278);
      sub_1C5419E74(v281);
      sub_1C5596A54();

      v274 = v287;
    }
  }

  else
  {

    v274 = v298;
  }

  v269 = v274;

  v270 = *(v319 + 8);
  v271 = (v319 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v270(v324, v317);
  InviteMessageDetails.init()(&v400);
  v397 = 0;
  v272 = sub_1C54D1DB4();
  sub_1C5596464();
  v396 = v398;
  if (v398._object)
  {
    v399 = v396;
  }

  else
  {
    v399._countAndFlagsBits = sub_1C55965F4();
    v399._object = v11;
    if (v396._object)
    {
      sub_1C5401ECC();
    }
  }

  v400.title = v399;

  v393 = 1;
  sub_1C5596464();
  v392 = v394;
  if (v394._object)
  {
    v395 = v392;
  }

  else
  {
    v395._countAndFlagsBits = sub_1C55965F4();
    v395._object = v12;
    if (v392._object)
    {
      sub_1C5401ECC();
    }
  }

  v400.subTitle = v395;

  v389 = 2;
  sub_1C5596464();
  v388 = v390;
  if (v390._object)
  {
    v391 = v388;
  }

  else
  {
    v391._countAndFlagsBits = sub_1C55965F4();
    v391._object = v13;
    if (v388._object)
    {
      sub_1C5401ECC();
    }
  }

  v400.acceptButttonLabel = v391;

  v385 = 3;
  sub_1C5596464();
  v384 = v386;
  if (v386._object)
  {
    v387 = v384;
  }

  else
  {
    v387._countAndFlagsBits = sub_1C55965F4();
    v387._object = v14;
    if (v384._object)
    {
      sub_1C5401ECC();
    }
  }

  v400.declineButtonLabel = v387;

  v381 = 4;
  sub_1C5596464();
  v380 = v382;
  if (v382._object)
  {
    v383 = v380;
  }

  else
  {
    v383._countAndFlagsBits = sub_1C55965F4();
    v383._object = v15;
    if (v380._object)
    {
      sub_1C5401ECC();
    }
  }

  v400.acceptedButtonLabel = v383;

  v377 = 5;
  sub_1C5596464();
  v376 = v378;
  if (v378._object)
  {
    v379 = v376;
  }

  else
  {
    v379._countAndFlagsBits = sub_1C55965F4();
    v379._object = v16;
    if (v376._object)
    {
      sub_1C5401ECC();
    }
  }

  v400.declinedButtonLabel = v379;

  v373 = 6;
  sub_1C5596464();
  v372 = v374;
  if (v374._object)
  {
    v375 = v372;
  }

  else
  {
    v375._countAndFlagsBits = sub_1C55965F4();
    v375._object = v17;
    if (v372._object)
    {
      sub_1C5401ECC();
    }
  }

  v18 = v322;
  v400.custodianUID = v375;

  v400.isPreview = 1;
  v19 = sub_1C5542A40();
  v289(v18, v19, v317);
  title = v400.title;
  acceptedButtonLabel = v400.acceptedButtonLabel;
  declineButtonLabel = v400.declineButtonLabel;
  acceptButttonLabel = v400.acceptButttonLabel;
  subTitle = v400.subTitle;
  senderHandle = v400.senderHandle;
  v450 = *&v400.custodianUID._object;
  v449 = *&v400.isPending;
  declinedButtonLabel = v400.declinedButtonLabel;
  senderFullName = v400.senderFullName;
  senderFirstName = v400.senderFirstName;
  recipientHandle = v400.recipientHandle;
  *(&v305[11]._object + 7) = *(&v309->recipientHandle._object + 7);
  v454 = recipientHandle;
  v453 = senderFirstName;
  v452 = senderFullName;
  sub_1C54D605C(&title, &v371);
  v223 = 211;
  v249 = 7;
  v23 = swift_allocObject();
  v24 = v305;
  v25 = v306;
  v26 = v309;
  v228 = v23;
  *(v23 + 16) = title;
  v27 = subTitle;
  v28 = acceptButttonLabel;
  v29 = declineButtonLabel;
  *(v23 + 80) = acceptedButtonLabel;
  *(v23 + 64) = v29;
  *(v23 + 48) = v28;
  *(v23 + 32) = v27;
  v30 = declinedButtonLabel;
  v31 = v449;
  v32 = v450;
  *(v23 + 144) = senderHandle;
  *(v23 + 128) = v32;
  *(v23 + 112) = v31;
  *(v23 + 96) = v30;
  v33 = v452;
  v34 = v453;
  v35 = v454;
  *(v23 + 207) = *(&v24[11]._object + 7);
  *(v23 + 192) = v35;
  *(v23 + 176) = v34;
  *(v23 + 160) = v33;
  v431 = v400.title;
  v435 = v400.acceptedButtonLabel;
  v434 = v400.declineButtonLabel;
  v433 = v400.acceptButttonLabel;
  v432 = v400.subTitle;
  v439 = v400.senderHandle;
  v438 = *&v400.custodianUID._object;
  v437 = *&v400.isPending;
  v436 = v400.declinedButtonLabel;
  v36 = v400.senderFullName;
  v37 = v400.senderFirstName;
  v38 = v400.recipientHandle;
  *(&v25[11]._object + 7) = *(&v26->recipientHandle._object + 7);
  v442 = v38;
  v441 = v37;
  v440 = v36;
  sub_1C54D605C(&v431, &v370);
  v39 = swift_allocObject();
  v40 = v306;
  v41 = v307;
  v42 = v309;
  v233 = v39;
  *(v39 + 16) = v431;
  v43 = v432;
  v44 = v433;
  v45 = v434;
  *(v39 + 80) = v435;
  *(v39 + 64) = v45;
  *(v39 + 48) = v44;
  *(v39 + 32) = v43;
  v46 = v436;
  v47 = v437;
  v48 = v438;
  *(v39 + 144) = v439;
  *(v39 + 128) = v48;
  *(v39 + 112) = v47;
  *(v39 + 96) = v46;
  v49 = v440;
  v50 = v441;
  v51 = v442;
  *(v39 + 207) = *(&v40[11]._object + 7);
  *(v39 + 192) = v51;
  *(v39 + 176) = v50;
  *(v39 + 160) = v49;
  v419 = v400.title;
  v423 = v400.acceptedButtonLabel;
  v422 = v400.declineButtonLabel;
  v421 = v400.acceptButttonLabel;
  v420 = v400.subTitle;
  v427 = v400.senderHandle;
  v426 = *&v400.custodianUID._object;
  v425 = *&v400.isPending;
  v424 = v400.declinedButtonLabel;
  v52 = v400.senderFullName;
  v53 = v400.senderFirstName;
  v54 = v400.recipientHandle;
  *(&v41[11]._object + 7) = *(&v42->recipientHandle._object + 7);
  v430 = v54;
  v429 = v53;
  v428 = v52;
  sub_1C54D605C(&v419, &v369);
  v55 = swift_allocObject();
  v56 = v307;
  v57 = v309;
  v58 = v308;
  v238 = v55;
  *(v55 + 16) = v419;
  v59 = v420;
  v60 = v421;
  v61 = v422;
  *(v55 + 80) = v423;
  *(v55 + 64) = v61;
  *(v55 + 48) = v60;
  *(v55 + 32) = v59;
  v62 = v424;
  v63 = v425;
  v64 = v426;
  *(v55 + 144) = v427;
  *(v55 + 128) = v64;
  *(v55 + 112) = v63;
  *(v55 + 96) = v62;
  v65 = v428;
  v66 = v429;
  v67 = v430;
  *(v55 + 207) = *(&v56[11]._object + 7);
  *(v55 + 192) = v67;
  *(v55 + 176) = v66;
  *(v55 + 160) = v65;
  v407 = v400.title;
  v411 = v400.acceptedButtonLabel;
  v410 = v400.declineButtonLabel;
  v409 = v400.acceptButttonLabel;
  v408 = v400.subTitle;
  v415 = v400.senderHandle;
  v414 = *&v400.custodianUID._object;
  v413 = *&v400.isPending;
  v412 = v400.declinedButtonLabel;
  v68 = v400.senderFullName;
  v69 = v400.senderFirstName;
  v70 = v400.recipientHandle;
  *(&v58[11]._object + 7) = *(&v57->recipientHandle._object + 7);
  v418 = v70;
  v417 = v69;
  v416 = v68;
  sub_1C54D605C(&v407, &v368);
  v71 = swift_allocObject();
  v72 = v308;
  v250 = v71;
  *(v71 + 16) = v407;
  v73 = v408;
  v74 = v409;
  v75 = v410;
  *(v71 + 80) = v411;
  *(v71 + 64) = v75;
  *(v71 + 48) = v74;
  *(v71 + 32) = v73;
  v76 = v412;
  v77 = v413;
  v78 = v414;
  *(v71 + 144) = v415;
  *(v71 + 128) = v78;
  *(v71 + 112) = v77;
  *(v71 + 96) = v76;
  v79 = v416;
  v80 = v417;
  v81 = v418;
  *(v71 + 207) = *(&v72[11]._object + 7);
  *(v71 + 192) = v81;
  *(v71 + 176) = v80;
  *(v71 + 160) = v79;
  v268 = sub_1C5594C54();
  v224 = v268;
  v267 = sub_1C5596974();
  v225 = v267;
  v244 = 17;
  v253 = swift_allocObject();
  v226 = v253;
  v243 = 32;
  *(v253 + 16) = 32;
  v82 = swift_allocObject();
  v83 = v243;
  v254 = v82;
  v227 = v82;
  v246 = 8;
  *(v82 + 16) = 8;
  v248 = v83;
  v84 = swift_allocObject();
  v85 = v228;
  v229 = v84;
  *(v84 + 16) = sub_1C54D6234;
  *(v84 + 24) = v85;
  v86 = swift_allocObject();
  v87 = v229;
  v255 = v86;
  v230 = v86;
  *(v86 + 16) = sub_1C5473EFC;
  *(v86 + 24) = v87;
  v256 = swift_allocObject();
  v231 = v256;
  *(v256 + 16) = v243;
  v257 = swift_allocObject();
  v232 = v257;
  *(v257 + 16) = v246;
  v88 = swift_allocObject();
  v89 = v233;
  v234 = v88;
  *(v88 + 16) = sub_1C54D623C;
  *(v88 + 24) = v89;
  v90 = swift_allocObject();
  v91 = v234;
  v258 = v90;
  v235 = v90;
  *(v90 + 16) = sub_1C5473EFC;
  *(v90 + 24) = v91;
  v259 = swift_allocObject();
  v236 = v259;
  *(v259 + 16) = 0;
  v260 = swift_allocObject();
  v237 = v260;
  *(v260 + 16) = 4;
  v92 = swift_allocObject();
  v93 = v238;
  v239 = v92;
  *(v92 + 16) = sub_1C54D6244;
  *(v92 + 24) = v93;
  v94 = swift_allocObject();
  v95 = v239;
  v240 = v94;
  *(v94 + 16) = sub_1C54D66AC;
  *(v94 + 24) = v95;
  v96 = swift_allocObject();
  v97 = v240;
  v241 = v96;
  *(v96 + 16) = sub_1C54D66E0;
  *(v96 + 24) = v97;
  v98 = swift_allocObject();
  v99 = v241;
  v261 = v98;
  v242 = v98;
  *(v98 + 16) = sub_1C54D6728;
  *(v98 + 24) = v99;
  v262 = swift_allocObject();
  v245 = v262;
  *(v262 + 16) = v243;
  v263 = swift_allocObject();
  v247 = v263;
  *(v263 + 16) = v246;
  v100 = swift_allocObject();
  v101 = v250;
  v251 = v100;
  *(v100 + 16) = sub_1C54D624C;
  *(v100 + 24) = v101;
  v102 = swift_allocObject();
  v103 = v251;
  v266 = v102;
  v252 = v102;
  *(v102 + 16) = sub_1C5473EFC;
  *(v102 + 24) = v103;
  v264 = sub_1C5596E04();
  v265 = v104;

  v105 = v253;
  v106 = v265;
  *v265 = sub_1C545C6D4;
  v106[1] = v105;

  v107 = v254;
  v108 = v265;
  v265[2] = sub_1C545C6D4;
  v108[3] = v107;

  v109 = v255;
  v110 = v265;
  v265[4] = sub_1C5473FA4;
  v110[5] = v109;

  v111 = v256;
  v112 = v265;
  v265[6] = sub_1C545C6D4;
  v112[7] = v111;

  v113 = v257;
  v114 = v265;
  v265[8] = sub_1C545C6D4;
  v114[9] = v113;

  v115 = v258;
  v116 = v265;
  v265[10] = sub_1C5473FA4;
  v116[11] = v115;

  v117 = v259;
  v118 = v265;
  v265[12] = sub_1C545C6D4;
  v118[13] = v117;

  v119 = v260;
  v120 = v265;
  v265[14] = sub_1C545C6D4;
  v120[15] = v119;

  v121 = v261;
  v122 = v265;
  v265[16] = sub_1C54D6734;
  v122[17] = v121;

  v123 = v262;
  v124 = v265;
  v265[18] = sub_1C545C6D4;
  v124[19] = v123;

  v125 = v263;
  v126 = v265;
  v265[20] = sub_1C545C6D4;
  v126[21] = v125;

  v127 = v265;
  v128 = v266;
  v265[22] = sub_1C5473FA4;
  v127[23] = v128;
  sub_1C540FCD8();

  if (os_log_type_enabled(v268, v267))
  {
    v129 = v269;
    v217 = sub_1C5596A74();
    v214 = v217;
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v218 = sub_1C5419DC0(0);
    v216 = v218;
    v219 = sub_1C5419DC0(3);
    v336[0] = v217;
    v335 = v218;
    v334 = v219;
    v220 = v336;
    sub_1C5419E14(2, v336);
    sub_1C5419E14(4, v220);
    v332 = sub_1C545C6D4;
    v333 = v226;
    sub_1C5419E28(&v332, v220, &v335, &v334);
    v221 = v129;
    v222 = v129;
    if (v129)
    {
      v212 = 0;

      __break(1u);
    }

    else
    {
      v332 = sub_1C545C6D4;
      v333 = v227;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v210 = 0;
      v211 = 0;
      v332 = sub_1C5473FA4;
      v333 = v230;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v208 = 0;
      v209 = 0;
      v332 = sub_1C545C6D4;
      v333 = v231;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v206 = 0;
      v207 = 0;
      v332 = sub_1C545C6D4;
      v333 = v232;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v204 = 0;
      v205 = 0;
      v332 = sub_1C5473FA4;
      v333 = v235;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v202 = 0;
      v203 = 0;
      v332 = sub_1C545C6D4;
      v333 = v236;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v200 = 0;
      v201 = 0;
      v332 = sub_1C545C6D4;
      v333 = v237;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v198 = 0;
      v199 = 0;
      v332 = sub_1C54D6734;
      v333 = v242;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v196 = 0;
      v197 = 0;
      v332 = sub_1C545C6D4;
      v333 = v245;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v194 = 0;
      v195 = 0;
      v332 = sub_1C545C6D4;
      v333 = v247;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v192 = 0;
      v193 = 0;
      v332 = sub_1C5473FA4;
      v333 = v252;
      sub_1C5419E28(&v332, v336, &v335, &v334);
      v190 = 0;
      v191 = 0;
      _os_log_impl(&dword_1C5355000, v224, v225, "trustedContact Message message.senderHandle %s , message.recipientHandle: %s , message.isSender : %{BOOL}d message.custodianUID :%s", v214, 0x26u);
      sub_1C5419E74(v216);
      sub_1C5419E74(v219);
      sub_1C5596A54();

      v213 = v190;
    }
  }

  else
  {
    v130 = v269;

    v213 = v130;
  }

  v189 = v213;

  v270(v322, v317);
  if (v313)
  {
    v131 = v320;
    v132 = sub_1C5542A40();
    v289(v131, v132, v317);
    v187 = sub_1C5594C54();
    v184 = v187;
    v186 = sub_1C5596974();
    v185 = v186;
    v188 = sub_1C5596E04();
    if (os_log_type_enabled(v187, v186))
    {
      v133 = v189;
      v175 = sub_1C5596A74();
      v171 = v175;
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v173 = 0;
      v176 = sub_1C5419DC0(0);
      v174 = v176;
      v177 = sub_1C5419DC0(v173);
      v339 = v175;
      v338 = v176;
      v337 = v177;
      v178 = 0;
      v179 = &v339;
      sub_1C5419E14(0, &v339);
      sub_1C5419E14(v178, v179);
      v336[2] = v188;
      v180 = v166;
      MEMORY[0x1EEE9AC00](v166);
      v181 = &v166[-6];
      v166[-4] = v134;
      v166[-3] = &v338;
      v166[-2] = &v337;
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v183 = v133;
      if (v133)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v184, v185, "Message is in compose screen, return message with minimal details", v171, 2u);
        v169 = 0;
        sub_1C5419E74(v174);
        sub_1C5419E74(v177);
        sub_1C5596A54();

        v170 = v183;
      }
    }

    else
    {

      v170 = v189;
    }

    v167 = v170;

    v270(v320, v317);
    v166[4] = &v400;
    v166[3] = &v341;
    swift_beginAccess();
    v342 = v400.title;
    v346 = v400.acceptedButtonLabel;
    v345 = v400.declineButtonLabel;
    v344 = v400.acceptButttonLabel;
    v343 = v400.subTitle;
    v350 = v400.senderHandle;
    v349 = *&v400.custodianUID._object;
    v348 = *&v400.isPending;
    v347 = v400.declinedButtonLabel;
    v135 = v400.senderFullName;
    v136 = v400.senderFirstName;
    v137 = v400.recipientHandle;
    *(&v311[11]._object + 7) = *(&v309->recipientHandle._object + 7);
    v353 = v137;
    v352 = v136;
    v351 = v135;
    sub_1C54D605C(&v342, &v340);
    swift_endAccess();
    v138 = v312;
    v312[3] = &type metadata for InviteMessageDetails;
    v138[4] = &protocol witness table for InviteMessageDetails;
    v139 = swift_allocObject();
    v140 = v311;
    v166[5] = v139;
    *v312 = v139;
    *(v139 + 16) = v342;
    v141 = v343;
    v142 = v344;
    v143 = v345;
    *(v139 + 80) = v346;
    *(v139 + 64) = v143;
    *(v139 + 48) = v142;
    *(v139 + 32) = v141;
    v144 = v347;
    v145 = v348;
    v146 = v349;
    *(v139 + 144) = v350;
    *(v139 + 128) = v146;
    *(v139 + 112) = v145;
    *(v139 + 96) = v144;
    v147 = v351;
    v148 = v352;
    v149 = v353;
    *(v139 + 207) = *(&v140[11]._object + 7);
    *(v139 + 192) = v149;
    *(v139 + 176) = v148;
    *(v139 + 160) = v147;
    sub_1C54D6820();

    return v167;
  }

  else
  {
    v166[1] = &v400;
    v166[0] = &v355;
    swift_beginAccess();
    v356 = v400.title;
    v360 = v400.acceptedButtonLabel;
    v359 = v400.declineButtonLabel;
    v358 = v400.acceptButttonLabel;
    v357 = v400.subTitle;
    v364 = v400.senderHandle;
    v363 = *&v400.custodianUID._object;
    v362 = *&v400.isPending;
    v361 = v400.declinedButtonLabel;
    v150 = v400.senderFullName;
    v151 = v400.senderFirstName;
    v152 = v400.recipientHandle;
    *(&v310[11]._object + 7) = *(&v309->recipientHandle._object + 7);
    v367 = v152;
    v366 = v151;
    v365 = v150;
    sub_1C54D605C(&v356, &v354);
    swift_endAccess();
    v153 = v312;
    v312[3] = &type metadata for InviteMessageDetails;
    v153[4] = &protocol witness table for InviteMessageDetails;
    v154 = swift_allocObject();
    v155 = v310;
    v166[2] = v154;
    *v312 = v154;
    *(v154 + 16) = v356;
    v156 = v357;
    v157 = v358;
    v158 = v359;
    *(v154 + 80) = v360;
    *(v154 + 64) = v158;
    *(v154 + 48) = v157;
    *(v154 + 32) = v156;
    v159 = v361;
    v160 = v362;
    v161 = v363;
    *(v154 + 144) = v364;
    *(v154 + 128) = v161;
    *(v154 + 112) = v160;
    *(v154 + 96) = v159;
    v162 = v365;
    v163 = v366;
    v164 = v367;
    *(v154 + 207) = *(&v155[11]._object + 7);
    *(v154 + 192) = v164;
    *(v154 + 176) = v163;
    *(v154 + 160) = v162;
    sub_1C54D6820();

    return v189;
  }
}

uint64_t sub_1C54D4F3C(void *a1)
{
  [a1 status];
  type metadata accessor for Status();
  sub_1C5462A94();
  if ((sub_1C55964D4() & 1) == 0 && (sub_1C55964D4() & 1) == 0 && (sub_1C55964D4() & 1) == 0 && (sub_1C55964D4() & 1) == 0 && (sub_1C55964D4() & 1) == 0)
  {
    sub_1C55964D4();
  }

  return sub_1C55965F4();
}

void (*sub_1C54D5224(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.title.modify();
  return sub_1C545A074;
}

void (*sub_1C54D52C4(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.subTitle.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5364(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.acceptButttonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5404(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.declineButtonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D54A4(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.acceptedButtonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5544(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.declinedButtonLabel.modify();
  return sub_1C545A074;
}

void (*sub_1C54D55EC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isPending.modify();
  return sub_1C545A074;
}

void (*sub_1C54D568C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.custodianUID.modify();
  return sub_1C545A074;
}

void (*sub_1C54D572C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.inviteStatus.modify();
  return sub_1C545A074;
}

void (*sub_1C54D57CC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.senderHandle.modify();
  return sub_1C545A074;
}

void (*sub_1C54D586C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.senderFullName.modify();
  return sub_1C545A074;
}

void (*sub_1C54D590C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.senderFirstName.modify();
  return sub_1C545A074;
}

void (*sub_1C54D59AC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.recipientHandle.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5A54(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isSender.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5AFC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isRecipient.modify();
  return sub_1C545A074;
}

void (*sub_1C54D5BA4(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InviteMessageDetails.isPreview.modify();
  return sub_1C545A074;
}

uint64_t sub_1C54D5C2C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return static InviteMessageDetails.detailsFrom(_:_:)(a1, a2, a3 & 1);
}

uint64_t sub_1C54D5D10()
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D54();
}

uint64_t sub_1C54D5D4C()
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D24();
}

uint64_t sub_1C54D5D98()
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C54D5DE8()
{
  sub_1C54D8070();
  sub_1C5462B94();
  return sub_1C5596D44();
}

uint64_t sub_1C54D5E80()
{
  sub_1C54D80F0();
  sub_1C54D8070();
  return sub_1C5596D04();
}

uint64_t sub_1C54D5FB0(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_1C5596734();
    sub_1C5594CF4();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1C54D605C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C5594CF4();
  *(a2 + 40) = v5;
  *(a2 + 48) = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_1C5594CF4();
  *(a2 + 56) = v6;
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 72);
  sub_1C5594CF4();
  *(a2 + 72) = v7;
  *(a2 + 80) = *(a1 + 80);
  v8 = *(a1 + 88);
  sub_1C5594CF4();
  *(a2 + 88) = v8;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  v9 = *(a1 + 112);
  sub_1C5594CF4();
  *(a2 + 112) = v9;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = *(a1 + 128);
  v10 = *(a1 + 136);
  sub_1C5594CF4();
  *(a2 + 136) = v10;
  *(a2 + 144) = *(a1 + 144);
  v11 = *(a1 + 152);
  sub_1C5594CF4();
  *(a2 + 152) = v11;
  *(a2 + 160) = *(a1 + 160);
  v12 = *(a1 + 168);
  sub_1C5594CF4();
  *(a2 + 168) = v12;
  *(a2 + 176) = *(a1 + 176);
  v14 = *(a1 + 184);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 184) = v14;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 193) = *(a1 + 193);
  *(a2 + 194) = *(a1 + 194);
  return result;
}

uint64_t sub_1C54D6254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_1C5596C84() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_1C5596CC4();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x1EEE9AC00](v22);
    v15 = v28;
    v16 = v10;
    sub_1C54D6490(v9, sub_1C54D826C, v14, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7CA8]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_1C54D6490@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1C5596CC4();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1C54D66EC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C54D6734(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1C54D67A8();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1C54D6254(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1C54D67A8()
{
  v2 = qword_1EC15E480;
  if (!qword_1EC15E480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E480);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C54D6820()
{
}

unint64_t sub_1C54D6904()
{
  v2 = qword_1EC15D8D0;
  if (!qword_1EC15D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D8C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D698C(uint64_t a1)
{
  v3 = sub_1C55949C4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1C54D6A44()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1C5594994();
  v1 = sub_1C54D6AA0();

  return sub_1C54AE938(v5, v3, v4, v1);
}

unint64_t sub_1C54D6AA0()
{
  v2 = qword_1EC15D8E0;
  if (!qword_1EC15D8E0)
  {
    sub_1C5594994();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6B20()
{
  v2 = qword_1EC15D8F0;
  if (!qword_1EC15D8F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6B98()
{
  v2 = qword_1EC15D8F8;
  if (!qword_1EC15D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D8F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6C20()
{
  v2 = qword_1EC15D908;
  if (!qword_1EC15D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D900);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6CC8()
{
  v2 = qword_1EC15D928;
  if (!qword_1EC15D928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D928);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for TrustedContactPreflightStatus()
{
  v4 = qword_1EC15D940;
  if (!qword_1EC15D940)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D940);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C54D6DE8()
{
  v2 = qword_1EC15D930;
  if (!qword_1EC15D930)
  {
    type metadata accessor for TrustedContactPreflightStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D6E80()
{
  v2 = qword_1EC15D938;
  if (!qword_1EC15D938)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D6EFC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C54D7064(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t dispatch thunk of static InviteMessageDetailsProtocol.detailsFrom(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v13 = (*(a5 + 400) + **(a5 + 400));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1C5405B1C;

  return v13(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_1C54D7BE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 195))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54D7D00(uint64_t result, int a2, int a3)
{
  v3 = (result + 195);
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 176) = 0;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 194) = 0;
    *(result + 192) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1C54D7F40()
{
  v2 = qword_1EC15D948;
  if (!qword_1EC15D948)
  {
    type metadata accessor for TrustedContactPreflightStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D7FD8()
{
  v2 = qword_1EC15D950;
  if (!qword_1EC15D950)
  {
    type metadata accessor for TrustedContactPreflightStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D8070()
{
  v2 = qword_1EC15D958;
  if (!qword_1EC15D958)
  {
    type metadata accessor for TrustedContactPreflightStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54D80F0()
{
  v2 = qword_1EC15D960;
  if (!qword_1EC15D960)
  {
    type metadata accessor for TrustedContactPreflightStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D960);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_1EC15D978;
  if (!qword_1EC15D978)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15D978);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C54D8208()
{
  v2 = qword_1EC15D968;
  if (!qword_1EC15D968)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D968);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54D829C()
{
  v2 = qword_1EC15D970;
  if (!qword_1EC15D970)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D970);
    return ObjCClassMetadata;
  }

  return v2;
}

id static InviteMessageViewFactory.createInviteMessageViewUI(urlComponents:)(uint64_t a1)
{
  v15 = a1;
  v7 = "Fatal error";
  v8 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v9 = "AppleAccountUI/InviteMessageView.swift";
  v26 = 0;
  v25 = 0;
  v21 = 0;
  v14 = sub_1C55946D4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v3 - v10;
  v26 = MEMORY[0x1EEE9AC00](v15);
  v25 = v1;
  MEMORY[0x1E69E5928](v26);
  sub_1C55946C4();
  v16 = v24;
  static InviteMessageDetails.detailsPreviewFrom(_:_:)(v13);
  (*(v11 + 8))(v13, v14);
  MEMORY[0x1E69E5920](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D980);
  v17 = v22;
  sub_1C5432498(v16, v22);
  v18 = v23;
  InviteMessageView.init(message:)(v17, v23);
  v19 = sub_1C5595484();
  v21 = v19;
  MEMORY[0x1E69E5928](v19);
  v20 = [v19 view];
  MEMORY[0x1E69E5920](v19);
  if (v20)
  {
    v6 = v20;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v5 = v6;
  v4 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

_BYTE *InviteMessageView.init(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v6 = a1;
  sub_1C5432498(a1, v5);
  sub_1C5458604(v5, __b);
  sub_1C5432498(__b, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = __b;
  sub_1C54D8644(__b);
  return result;
}

id InviteMessageViewFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for InviteMessageViewFactory();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id InviteMessageViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InviteMessageViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InviteMessageView.message.setter(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_1C5432498(a1, v4);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v4, __dst);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t InviteMessageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v13 = sub_1C54D9314;
  v43 = 0;
  v42 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D988);
  v7 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v7 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D990);
  v8 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v7 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D998);
  v9 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v7 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9A0);
  v10 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v7 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9A8);
  v11 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v11);
  v38 = &v7 - v12;
  v43 = &v7 - v12;
  v42 = v1;
  v16 = sub_1C5595434();
  v14 = &v39;
  v40 = v1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9B0);
  sub_1C54D931C();
  v31 = 0;
  sub_1C5596064();
  v18 = sub_1C5596E04();
  v17 = v3;
  *v3 = sub_1C55957E4();
  v4 = sub_1C55957F4();
  v5 = v18;
  v17[1] = v4;
  sub_1C540FCD8();
  v19 = v5;
  sub_1C54DA7DC();
  sub_1C5596B04();
  v21 = v41;
  sub_1C54DA854();
  v23 = 0x4030000000000000;
  sub_1C5595D84();
  sub_1C54DA8DC(v22);
  v25 = sub_1C55957D4();
  sub_1C54DAFF8();
  sub_1C5595D84();
  sub_1C54DA8DC(v26);
  v28 = sub_1C55957C4();
  sub_1C54DB09C();
  sub_1C5595D84();
  sub_1C54DA8DC(v29);
  v32 = sub_1C54DB140();
  sub_1C5410F68();
  sub_1C5595D24();
  sub_1C54DA8DC(v33);
  v36 = sub_1C54DB1E4();
  sub_1C540EFD8(v37, v35, v38);
  sub_1C54DA8DC(v37);
  sub_1C54DB288(v38, v37);
  sub_1C540EFD8(v37, v35, v34);
  sub_1C54DA8DC(v37);
  return sub_1C54DA8DC(v38);
}

uint64_t sub_1C54D8DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v21 = a1;
  v22 = sub_1C54ECBC8;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAC0);
  v11 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v34 = &v10 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v11);
  v37 = &v10 - v12;
  v55 = &v10 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD00);
  v13 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v35 = &v10 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v13);
  v38 = &v10 - v14;
  v54 = &v10 - v14;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D0);
  v15 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v21);
  v36 = &v10 - v15;
  v16 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v39 = &v10 - v16;
  v53 = &v10 - v16;
  v52 = v6;
  v19 = v48;
  sub_1C5432498(v6, v48);
  v18 = v49;
  v17 = v50;
  __swift_project_boxed_opaque_existential_0(v19, v49);
  v7 = (*(v17 + 368))(v18);
  v20 = 1;
  sub_1C54D93A4(v7 & 1, &v51);
  __swift_destroy_boxed_opaque_existential_0(v19);
  v47 = v51;
  sub_1C54ECA24();
  sub_1C5595C34();
  v8 = v21;
  v29 = sub_1C54ECAA0();
  sub_1C540EFD8(v36, v26, v39);
  sub_1C54ECB48(v36);
  v25 = sub_1C5595434();
  v23 = &v40;
  v41 = v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD18);
  sub_1C54ECBD0();
  sub_1C5596064();
  v30 = sub_1C54ECC58();
  sub_1C540EFD8(v35, v27, v38);
  sub_1C54ECCE0(v35);
  InviteMessageView.footerView.getter(v34);
  v31 = sub_1C54DE3D0();
  sub_1C540EFD8(v34, v28, v37);
  sub_1C54DE478(v34);
  sub_1C54ECE24(v39, v36);
  v33 = v46;
  v46[0] = v36;
  sub_1C54ECEC4(v38, v35);
  v46[1] = v35;
  sub_1C54DDB54(v37, v34);
  v46[2] = v34;
  v45[0] = v26;
  v45[1] = v27;
  v45[2] = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  sub_1C540F5A0(v33, 3uLL, v45, v32);
  sub_1C54DE478(v34);
  sub_1C54ECCE0(v35);
  sub_1C54ECB48(v36);
  sub_1C54DE478(v37);
  sub_1C54ECCE0(v38);
  return sub_1C54ECB48(v39);
}

unint64_t sub_1C54D931C()
{
  v2 = qword_1EC15D9B8;
  if (!qword_1EC15D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D9B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D9B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54D93AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v64 = a1;
  v170 = 0;
  v169 = 0;
  v133 = 0;
  v59 = sub_1C55958D4();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v36 - v62;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v65 = (*(*(v98 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v64);
  v66 = &v36 - v65;
  v67 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v68 = &v36 - v67;
  v69 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v100 = &v36 - v69;
  v70 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v97 = &v36 - v70;
  v170 = &v36 - v70;
  v169 = v8;
  v75 = v166;
  sub_1C5432498(v8, v166);
  v72 = v167;
  v71 = v168;
  __swift_project_boxed_opaque_existential_0(v75, v167);
  v9 = (*(v71 + 8))(v72);
  v73 = v165;
  v165[0] = v9;
  v165[1] = v10;
  v74 = sub_1C54141E8();
  v161 = sub_1C5595A04();
  v162 = v11;
  v163 = v12;
  v164 = v13;
  v77 = v161;
  v78 = v11;
  v79 = v12;
  v80 = v13;
  __swift_destroy_boxed_opaque_existential_0(v75);
  v76 = sub_1C5595814();
  v157 = v77;
  v158 = v78;
  v94 = 1;
  v159 = v79 & 1;
  v160 = v80;
  v153 = sub_1C55959C4();
  v154 = v14;
  v155 = v15;
  v156 = v16;
  v82 = v153;
  v83 = v14;
  v81 = v15;
  v84 = v16;

  sub_1C5412EA0(v77, v78, v79 & 1);

  sub_1C5595854();
  v149 = v82;
  v150 = v83;
  v151 = v81 & 1 & v94;
  v152 = v84;
  v145 = sub_1C5595974();
  v146 = v17;
  v147 = v18;
  v148 = v19;
  v86 = v145;
  v87 = v17;
  v88 = v18;
  v89 = v19;
  sub_1C5412EA0(v82, v83, v81 & 1);

  v85 = sub_1C5595EA4();
  v141 = v86;
  v142 = v87;
  v143 = v88 & 1 & v94;
  v144 = v89;
  v137 = sub_1C5595984();
  v138 = v20;
  v139 = v21;
  v140 = v22;
  v90 = v137;
  v91 = v20;
  v92 = v21;
  v93 = v22;

  sub_1C5412EA0(v86, v87, v88 & 1);

  v96 = v134;
  v134[0] = v90;
  v134[1] = v91;
  v135 = v92 & 1 & v94;
  v136 = v93;
  sub_1C55965F4();
  v95 = v23;
  sub_1C5595C84();

  sub_1C5414260(v96);
  v99 = sub_1C547AC88();
  sub_1C540EFD8(v100, v98, v97);
  sub_1C547EC90(v100);
  v133 = v100;
  v38 = v130;
  sub_1C5432498(v64, v130);
  v37 = v131;
  v36 = v132;
  __swift_project_boxed_opaque_existential_0(v38, v131);
  v128 = (*(v36 + 32))(v37);
  v129 = v24;
  v124 = sub_1C5595A04();
  v125 = v25;
  v126 = v26;
  v127 = v27;
  v40 = v124;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  __swift_destroy_boxed_opaque_existential_0(v38);
  v39 = sub_1C5595EA4();
  v120 = v40;
  v121 = v41;
  v54 = 1;
  v122 = v42 & 1;
  v123 = v43;
  v116 = sub_1C5595984();
  v117 = v28;
  v118 = v29;
  v119 = v30;
  v46 = v116;
  v47 = v28;
  v48 = v29;
  v49 = v30;

  sub_1C5412EA0(v40, v41, v42 & 1);

  v44 = sub_1C5595914();
  (*(v60 + 104))(v63, *MEMORY[0x1E6980EA8], v59);
  v45 = sub_1C5595904();
  (*(v60 + 8))(v63, v59);

  v112 = v46;
  v113 = v47;
  v114 = v48 & 1 & v54;
  v115 = v49;
  v108 = sub_1C55959C4();
  v109 = v31;
  v110 = v32;
  v111 = v33;
  v50 = v108;
  v51 = v31;
  v52 = v32;
  v53 = v33;

  sub_1C5412EA0(v46, v47, v48 & 1);

  v56 = v105;
  v105[0] = v50;
  v105[1] = v51;
  v106 = v52 & 1 & v54;
  v107 = v53;
  sub_1C55965F4();
  v55 = v34;
  sub_1C5595C84();

  sub_1C5414260(v56);
  sub_1C540EFD8(v68, v98, v100);
  sub_1C547EC90(v68);
  sub_1C547ED34(v97, v68);
  v57 = v104;
  v104[0] = v68;
  sub_1C547ED34(v100, v66);
  v104[1] = v66;
  v103[0] = v98;
  v103[1] = v98;
  v101 = v99;
  v102 = v99;
  sub_1C540F5A0(v57, 2uLL, v103, v58);
  sub_1C547EC90(v66);
  sub_1C547EC90(v68);
  sub_1C547EC90(v100);
  return sub_1C547EC90(v97);
}

uint64_t InviteMessageView.footerView.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA98);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v18 - v39;
  v41 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v39);
  v42 = &v18 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v41);
  v44 = &v18 - v43;
  v91 = &v18 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAA0);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v18 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAA8);
  v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v18 - v49;
  v51 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v49);
  v52 = &v18 - v51;
  v53 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v51);
  v54 = &v18 - v53;
  v90 = &v18 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAB0);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v18 - v56;
  v58 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v56);
  v59 = &v18 - v58;
  v60 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v18 - v58);
  v61 = &v18 - v60;
  v89 = &v18 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAB8);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v18 - v63;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAC0);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v18 - v67;
  v69 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v18 - v69;
  v88 = &v18 - v69;
  v87 = v9;
  v73 = v84;
  sub_1C5432498(v9, v84);
  v72 = v85;
  v71 = v86;
  __swift_project_boxed_opaque_existential_0(v73, v85);
  v74 = (*(v71 + 368))(v72);
  __swift_destroy_boxed_opaque_existential_0(v73);
  if (v74)
  {
    sub_1C5596234();
    v33 = MEMORY[0x1E6981E70];
    v34 = MEMORY[0x1E6981E60];
    sub_1C540EFD8(v35, MEMORY[0x1E6981E70], v35);
    sub_1C540EFD8(v35, v33, v35);
    v10 = sub_1C54DCD80();
    sub_1C540FD1C(v35, v33, v55, v34, v10, v64);
    v36 = sub_1C54DCE08();
    v11 = sub_1C54DCEAC();
    sub_1C540FD1C(v64, v62, v45, v36, v11, v68);
    sub_1C54DF39C(v64);
    sub_1C54DD318(v68, v70);
  }

  else
  {
    v31 = v81;
    sub_1C5432498(v65, v81);
    v30 = v82;
    v29 = v83;
    __swift_project_boxed_opaque_existential_0(v31, v82);
    v32 = (*(v29 + 320))(v30);
    __swift_destroy_boxed_opaque_existential_0(v31);
    if (v32)
    {
      InviteMessageView.senderFooter.getter(v59);
      v28 = sub_1C54DCD80();
      sub_1C540EFD8(v59, v55, v61);
      sub_1C54DF184(v59);
      v75 = v59;
      sub_1C54DF270(v61, v57);
      sub_1C540EFD8(v57, v55, v59);
      sub_1C54DF184(v57);
      sub_1C54DF270(v59, v57);
      sub_1C54108A0(v57, MEMORY[0x1E6981E70], v55, MEMORY[0x1E6981E60], v28, v64);
      sub_1C54DF184(v57);
      v27 = sub_1C54DCE08();
      v12 = sub_1C54DCEAC();
      sub_1C540FD1C(v64, v62, v45, v27, v12, v68);
      sub_1C54DF39C(v64);
      sub_1C54DD318(v68, v70);
      sub_1C54DF184(v59);
      sub_1C54DF184(v61);
    }

    else
    {
      v25 = v78;
      sub_1C5432498(v65, v78);
      v24 = v79;
      v23 = v80;
      __swift_project_boxed_opaque_existential_0(v25, v79);
      v26 = (*(v23 + 344))(v24);
      __swift_destroy_boxed_opaque_existential_0(v25);
      if (v26)
      {
        InviteMessageView.receiverFooter.getter(v52);
        v22 = sub_1C54DCC50();
        sub_1C540EFD8(v52, v48, v54);
        sub_1C54DE964(v52);
        v76 = v52;
        sub_1C54DEC30(v54, v50);
        sub_1C540EFD8(v50, v48, v52);
        sub_1C54DE964(v50);
        sub_1C54DEC30(v52, v50);
        v13 = sub_1C54DC9B0();
        sub_1C540FD1C(v50, v48, v38, v22, v13, v47);
        sub_1C54DE964(v50);
        v21 = sub_1C54DCE08();
        v14 = sub_1C54DCEAC();
        sub_1C54108A0(v47, v62, v45, v21, v14, v68);
        sub_1C54DCF54(v47);
        sub_1C54DD318(v68, v70);
        sub_1C54DE964(v52);
        sub_1C54DE964(v54);
      }

      else
      {
        InviteMessageView.recordMissingFooter.getter(v42);
        v20 = sub_1C54DC9B0();
        sub_1C540EFD8(v42, v38, v44);
        sub_1C54DCA38(v42);
        v77 = v42;
        sub_1C54DCB24(v44, v40);
        sub_1C540EFD8(v40, v38, v42);
        sub_1C54DCA38(v40);
        sub_1C54DCB24(v42, v40);
        v15 = sub_1C54DCC50();
        sub_1C54108A0(v40, v48, v38, v15, v20, v47);
        sub_1C54DCA38(v40);
        v19 = sub_1C54DCE08();
        v16 = sub_1C54DCEAC();
        sub_1C54108A0(v47, v62, v45, v19, v16, v68);
        sub_1C54DCF54(v47);
        sub_1C54DD318(v68, v70);
        sub_1C54DCA38(v42);
        sub_1C54DCA38(v44);
      }
    }
  }

  sub_1C54DDB54(v70, v68);
  sub_1C54DE3D0();
  sub_1C540EFD8(v68, v66, v37);
  sub_1C54DE478(v68);
  return sub_1C54DE478(v70);
}

unint64_t sub_1C54DA7DC()
{
  v2 = qword_1EC15E110;
  if (!qword_1EC15E110)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DA854()
{
  v2 = qword_1EC15D9C0;
  if (!qword_1EC15D9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D988);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D9C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54DA8DC(uint64_t a1)
{
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9C8) + 44);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D0) + 36);
  v30 = sub_1C5595754();
  v31 = *(*(v30 - 8) + 8);
  v31(a1 + v23 + v24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D8);
  v26 = *(v32 + 48);
  v27 = a1 + v23 + v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E0) + 44);
  sub_1C5412EA0(*v27, *(v27 + 8), *(v27 + 16) & 1);

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  (v31)(v27 + *(v28 + 36), v30);
  v29 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E8) + 48);
  sub_1C5412EA0(*v29, *(v29 + 8), *(v29 + 16) & 1);

  (v31)(v29 + *(v28 + 36), v30);
  v33 = *(v32 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = a1 + v23 + v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48) + 44);
      v5 = sub_1C55960F4();
      (*(*(v5 - 8) + 8))(v8);
      v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50) + 48);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
      (*(*(v6 - 8) + 8))(v9);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = a1 + v23 + v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
        v3 = sub_1C55960F4();
        (*(*(v3 - 8) + 8))(v10);
        v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
        (*(*(v4 - 8) + 8))(v11);
      }

      else
      {
        v14 = a1 + v23 + v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28) + 44);
        v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 8);
        (v15)(v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
        v12 = v14 + *(v16 + 36);
        v18 = sub_1C5595244();
        v13 = v12 + *(v18 + 20);
        v19 = sub_1C55953F4();
        v20 = *(*(v19 - 8) + 8);
        v20(v13);
        v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40) + 48);
        v15();

        (v20)(v17 + *(v16 + 36) + *(v18 + 20), v19);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = a1 + v23 + v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
      v1 = sub_1C55960F4();
      (*(*(v1 - 8) + 8))(v21);
      v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
      (*(*(v2 - 8) + 8))(v22);
    }
  }

  return a1;
}