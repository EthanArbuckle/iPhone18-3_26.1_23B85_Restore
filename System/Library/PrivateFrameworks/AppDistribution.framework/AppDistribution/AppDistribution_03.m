unint64_t sub_23FF9708C()
{
  result = qword_27E3A34E8;
  if (!qword_27E3A34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A34E8);
  }

  return result;
}

unint64_t sub_23FF970E0()
{
  result = qword_27E3A34F0;
  if (!qword_27E3A34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A34F0);
  }

  return result;
}

unint64_t sub_23FF97134()
{
  result = qword_27E3A34F8;
  if (!qword_27E3A34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A34F8);
  }

  return result;
}

uint64_t sub_23FF97188(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23FF971CC()
{
  result = qword_27E3A3510;
  if (!qword_27E3A3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3510);
  }

  return result;
}

unint64_t sub_23FF97220()
{
  result = qword_27E3A3518;
  if (!qword_27E3A3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3518);
  }

  return result;
}

uint64_t sub_23FF97274(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23FF972C4()
{
  result = qword_27E3A3520;
  if (!qword_27E3A3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3520);
  }

  return result;
}

uint64_t ConfirmationSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A34D8, &qword_23FFE0840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3530, &qword_23FFE0858);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ConfirmationSheetContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23FF9708C();
  v36 = v11;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v33 = v7;
  v34 = v15;
  v18 = v8;
  LOBYTE(v39) = 0;
  v19 = sub_23FFD980C();
  v20 = v34;
  *v34 = v19;
  v20[1] = v21;
  v43 = 1;
  sub_23FF97A60();
  sub_23FFD97EC();
  v22 = v40;
  *(v20 + 1) = v39;
  *(v20 + 32) = v22;
  LOBYTE(v39) = 2;
  v20[5] = sub_23FFD980C();
  v20[6] = v23;
  LOBYTE(v39) = 3;
  v20[7] = sub_23FFD97BC();
  v20[8] = v24;
  v43 = 4;
  sub_23FF97AB4();
  sub_23FFD97EC();
  v25 = v40;
  *(v20 + 9) = v39;
  *(v20 + 11) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3500, &qword_23FFE0850);
  v43 = 5;
  sub_23FF97B08(&qword_27E3A3548, sub_23FF97B80);
  sub_23FFD97EC();
  v20[13] = v39;
  v43 = 6;
  sub_23FF97BD4();
  sub_23FFD97EC();
  v26 = v42;
  v27 = v40;
  *(v20 + 7) = v39;
  *(v20 + 8) = v27;
  *(v20 + 9) = v41;
  *(v20 + 160) = v26;
  v43 = 7;
  sub_23FF97C28();
  sub_23FFD983C();
  v28 = *(&v39 + 1);
  v29 = v40;
  v20[21] = v39;
  v20[22] = v28;
  *(v20 + 184) = v29;
  LOBYTE(v39) = 8;
  v20[24] = sub_23FFD97BC();
  v20[25] = v30;
  type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  LOBYTE(v39) = 9;
  sub_23FF97C7C(&qword_27E3A3568, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
  sub_23FFD97EC();
  (*(v18 + 8))(v36, v37);
  v31 = v34;
  sub_23FF64358(v33, v34 + *(v12 + 52), &qword_27E3A34D8, &qword_23FFE0840);
  sub_23FF99F18(v31, v35, type metadata accessor for ConfirmationSheetContext);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_23FF99F80(v31, type metadata accessor for ConfirmationSheetContext);
}

unint64_t sub_23FF97A60()
{
  result = qword_27E3A3538;
  if (!qword_27E3A3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3538);
  }

  return result;
}

unint64_t sub_23FF97AB4()
{
  result = qword_27E3A3540;
  if (!qword_27E3A3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3540);
  }

  return result;
}

uint64_t sub_23FF97B08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3500, &qword_23FFE0850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF97B80()
{
  result = qword_27E3A3550;
  if (!qword_27E3A3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3550);
  }

  return result;
}

unint64_t sub_23FF97BD4()
{
  result = qword_27E3A3558;
  if (!qword_27E3A3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3558);
  }

  return result;
}

unint64_t sub_23FF97C28()
{
  result = qword_27E3A3560;
  if (!qword_27E3A3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3560);
  }

  return result;
}

uint64_t sub_23FF97C7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ConfirmationSheetBulletPoint.icon.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetBulletPoint.header.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetBulletPoint.body.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ConfirmationSheetBulletPoint.init(icon:header:body:)(AppDistribution::ConfirmationSheetBulletPoint *__return_ptr retstr, Swift::String icon, Swift::String header, Swift::String body)
{
  retstr->field23FFF3884 = icon;
  retstr->field23FFF3890 = header;
  retstr->field23FFF389C = body;
}

uint64_t sub_23FF97D94()
{
  v1 = 0x726564616568;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_23FF97DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF9EA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF97E04(uint64_t a1)
{
  v2 = sub_23FF98040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF97E40(uint64_t a1)
{
  v2 = sub_23FF98040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetBulletPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3570, &qword_23FFE0860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98040();
  sub_23FFD9ACC();
  v18 = 0;
  v13 = v15[5];
  sub_23FFD98EC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_23FFD98EC();
  v16 = 2;
  sub_23FFD98EC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF98040()
{
  result = qword_27E3A3578;
  if (!qword_27E3A3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3578);
  }

  return result;
}

uint64_t ConfirmationSheetBulletPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3580, &qword_23FFE0868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98040();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_23FFD980C();
  v23 = v14;
  v25 = 2;
  v15 = sub_23FFD980C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

AppDistribution::ConfirmationSheetSymbol __swiftcall ConfirmationSheetSymbol.init(symbolName:enableHeirarchicalColors:)(AppDistribution::ConfirmationSheetSymbol symbolName, Swift::Bool_optional enableHeirarchicalColors)
{
  *v2 = symbolName.field23FFF38B8;
  *(v2 + 16) = enableHeirarchicalColors;
  symbolName.field23FFF38C4 = enableHeirarchicalColors;
  return symbolName;
}

unint64_t sub_23FF98350()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x614E6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_23FF98394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEB6E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF98480(uint64_t a1)
{
  v2 = sub_23FF9868C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF984BC(uint64_t a1)
{
  v2 = sub_23FF9868C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetSymbol.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3588, &qword_23FFE0870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9868C();
  sub_23FFD9ACC();
  v16 = 0;
  v11 = v13[1];
  sub_23FFD98EC();
  if (!v11)
  {
    v15 = 1;
    sub_23FFD98AC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF9868C()
{
  result = qword_27E3A3590;
  if (!qword_27E3A3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3590);
  }

  return result;
}

uint64_t ConfirmationSheetSymbol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3598, &qword_23FFE0878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9868C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_23FFD97CC();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetMoreInformationLink.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetMoreInformationLink.URL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

AppDistribution::ConfirmationSheetMoreInformationLink __swiftcall ConfirmationSheetMoreInformationLink.init(label:URL:)(Swift::String label, Swift::String URL)
{
  *v2 = label;
  v2[1] = URL;
  result.field23FFF38EC = URL;
  result.field23FFF38E0 = label;
  return result;
}

uint64_t sub_23FF98958()
{
  if (*v0)
  {
    result = 5001813;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_23FF98988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 5001813 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF98A60(uint64_t a1)
{
  v2 = sub_23FF98C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF98A9C(uint64_t a1)
{
  v2 = sub_23FF98C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetMoreInformationLink.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35A0, &qword_23FFE0880);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98C6C();
  sub_23FFD9ACC();
  v16 = 0;
  v12 = v14[3];
  sub_23FFD98EC();
  if (!v12)
  {
    v15 = 1;
    sub_23FFD98EC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF98C6C()
{
  result = qword_27E3A35A8;
  if (!qword_27E3A35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A35A8);
  }

  return result;
}

uint64_t ConfirmationSheetMoreInformationLink.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35B0, &qword_23FFE0888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF98C6C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_23FFD980C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.itemID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.versionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.distributorID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall ConfirmationSheetMiniProductPageConfiguration.init(itemID:versionID:distributorID:isForAppStore:)(AppDistribution::ConfirmationSheetMiniProductPageConfiguration *__return_ptr retstr, Swift::String itemID, Swift::String_optional versionID, Swift::String_optional distributorID, Swift::Bool_optional isForAppStore)
{
  retstr->field23FFF3908 = itemID;
  retstr->field23FFF3914 = versionID;
  retstr->field23FFF3920 = distributorID;
  retstr->field23FFF392C = isForAppStore;
}

uint64_t sub_23FF98F9C()
{
  v1 = 0x44496D657469;
  v2 = 0x7562697274736964;
  if (*v0 != 2)
  {
    v2 = 0x707041726F467369;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973726576;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23FF99030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF9EB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF99058(uint64_t a1)
{
  v2 = sub_23FF992C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF99094(uint64_t a1)
{
  v2 = sub_23FF992C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35B8, &qword_23FFE0890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v16 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF992C0();
  sub_23FFD9ACC();
  v20 = 0;
  v13 = v15[5];
  sub_23FFD98EC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_23FFD989C();
  v18 = 2;
  sub_23FFD989C();
  v17 = 3;
  sub_23FFD98AC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF992C0()
{
  result = qword_27E3A35C0;
  if (!qword_27E3A35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A35C0);
  }

  return result;
}

uint64_t ConfirmationSheetMiniProductPageConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35C8, &unk_23FFE0898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF992C0();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_23FFD980C();
  v27 = v12;
  v30 = 1;
  v13 = sub_23FFD97BC();
  v26 = v14;
  v24 = v13;
  v29 = 2;
  v23 = sub_23FFD97BC();
  v25 = v15;
  v28 = 3;
  v17 = sub_23FFD97CC();
  (*(v6 + 8))(v9, v5);
  v19 = v26;
  v18 = v27;
  *a2 = v11;
  *(a2 + 8) = v18;
  v20 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v19;
  v21 = v25;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConfirmationSheetOsloSheetConfiguration.paymentSheetTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.paymentSheetLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.processingText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.init(paymentSheetTitle:paymentSheetLabel:processingText:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v10 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  return sub_23FF64358(a7, a8 + *(v10 + 28), &qword_27E3A2418, &qword_23FFDADC0);
}

unint64_t sub_23FF9976C()
{
  v1 = 0x69737365636F7270;
  if (*v0 != 2)
  {
    v1 = 0x4C52556E6F6369;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23FF997FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF9ECA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF99824(uint64_t a1)
{
  v2 = sub_23FF99AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF99860(uint64_t a1)
{
  v2 = sub_23FF99AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetOsloSheetConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35D0, &qword_23FFE08A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF99AD8();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_23FFD98EC();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_23FFD98EC();
    v17 = *(type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0) + 28);
    v19[12] = 3;
    sub_23FFD8F6C();
    sub_23FF97C7C(&qword_27E3A2438, MEMORY[0x277CC9260]);
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23FF99AD8()
{
  result = qword_27E3A35D8;
  if (!qword_27E3A35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A35D8);
  }

  return result;
}

uint64_t ConfirmationSheetOsloSheetConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35E0, &qword_23FFE08B0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF99AD8();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  *v15 = sub_23FFD980C();
  v15[1] = v20;
  v31 = 1;
  v15[2] = sub_23FFD980C();
  v15[3] = v21;
  v30 = 2;
  v24[1] = 0;
  v15[4] = sub_23FFD980C();
  v15[5] = v22;
  sub_23FFD8F6C();
  v29 = 3;
  sub_23FF97C7C(&qword_27E3A2458, MEMORY[0x277CC9260]);
  sub_23FFD97EC();
  (*(v19 + 8))(v11, v18);
  sub_23FF64358(v17, v15 + *(v25 + 28), &qword_27E3A2418, &qword_23FFDADC0);
  sub_23FF99F18(v15, v26, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FF99F80(v15, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
}

uint64_t sub_23FF99F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FF99F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConfirmationSheetLAConfiguration.localizedReason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.touchIDTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.touchIDReason.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.passcodeTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ConfirmationSheetLAConfiguration.passcodeReason.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void __swiftcall ConfirmationSheetLAConfiguration.init(localizedReason:touchIDTitle:touchIDReason:passcodeTitle:passcodeReason:)(AppDistribution::ConfirmationSheetLAConfiguration *__return_ptr retstr, Swift::String localizedReason, Swift::String touchIDTitle, Swift::String touchIDReason, Swift::String passcodeTitle, Swift::String passcodeReason)
{
  retstr->field23FFF3988 = localizedReason;
  retstr->field23FFF3994 = touchIDTitle;
  retstr->field23FFF39A0 = touchIDReason;
  retstr->field23FFF39AC = passcodeTitle;
  retstr->field23FFF39B8 = passcodeReason;
}

uint64_t sub_23FF9A11C()
{
  v1 = 0x657A696C61636F6CLL;
  v2 = 0x5244496863756F74;
  if (*v0 != 2)
  {
    v2 = 0x65646F6373736170;
  }

  if (*v0)
  {
    v1 = 0x5444496863756F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23FF9A1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF9EE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF9A224(uint64_t a1)
{
  v2 = sub_23FF9A4C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9A260(uint64_t a1)
{
  v2 = sub_23FF9A4C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetLAConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35E8, &qword_23FFE08B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17[7] = v1[3];
  v17[8] = v10;
  v11 = v1[4];
  v17[5] = v1[5];
  v17[6] = v11;
  v12 = v1[6];
  v17[3] = v1[7];
  v17[4] = v12;
  v13 = v1[8];
  v17[1] = v1[9];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9A4C0();
  sub_23FFD9ACC();
  v22 = 0;
  v15 = v17[9];
  sub_23FFD98EC();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_23FFD98EC();
  v20 = 2;
  sub_23FFD98EC();
  v19 = 3;
  sub_23FFD98EC();
  v18 = 4;
  sub_23FFD98EC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FF9A4C0()
{
  result = qword_27E3A35F0;
  if (!qword_27E3A35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A35F0);
  }

  return result;
}

uint64_t ConfirmationSheetLAConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A35F8, &qword_23FFE08C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9A4C0();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_23FFD980C();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_23FFD980C();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_23FFD980C();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_23FFD980C();
  v29 = v16;
  v39 = 4;
  v17 = sub_23FFD980C();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v31;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  v23 = v36;
  a2[2] = v35;
  a2[3] = v23;
  a2[4] = v37;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  sub_23FF9A8EC(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v32;
  v38[2] = v28;
  v38[3] = v20;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v38[8] = v17;
  v38[9] = v19;
  return sub_23FF9A924(v38);
}

uint64_t sub_23FF9A99C(uint64_t a1)
{
  v2 = sub_23FF9AF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9A9D8(uint64_t a1)
{
  v2 = sub_23FF9AF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9AA14()
{
  if (*v0)
  {
    result = 0x6574696877;
  }

  else
  {
    result = 1702194274;
  }

  *v0;
  return result;
}

uint64_t sub_23FF9AA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702194274 && a2 == 0xE400000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574696877 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF9AB1C(uint64_t a1)
{
  v2 = sub_23FF9AEBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9AB58(uint64_t a1)
{
  v2 = sub_23FF9AEBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9AB94(uint64_t a1)
{
  v2 = sub_23FF9AF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9ABD0(uint64_t a1)
{
  v2 = sub_23FF9AF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetButtonStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3600, &qword_23FFE08C8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3608, &qword_23FFE08D0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3610, &qword_23FFE08D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9AEBC();
  sub_23FFD9ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23FF9AF10();
    v18 = v22;
    sub_23FFD988C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23FF9AF64();
    sub_23FFD988C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_23FF9AEBC()
{
  result = qword_27E3A3618;
  if (!qword_27E3A3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3618);
  }

  return result;
}

unint64_t sub_23FF9AF10()
{
  result = qword_27E3A3620;
  if (!qword_27E3A3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3620);
  }

  return result;
}

unint64_t sub_23FF9AF64()
{
  result = qword_27E3A3628;
  if (!qword_27E3A3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3628);
  }

  return result;
}

uint64_t ConfirmationSheetButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t ConfirmationSheetButtonStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3630, &qword_23FFE08E0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3638, &qword_23FFE08E8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3640, &unk_23FFE08F0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9AEBC();
  v16 = v36;
  sub_23FFD9AAC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_23FFD986C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23FF75230();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_23FFD970C();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
      *v26 = &type metadata for ConfirmationSheetButtonStyle;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_23FF9AF10();
        sub_23FFD979C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_23FF9AF64();
        sub_23FFD979C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ConfirmationSheetButton.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23FF9B564()
{
  if (*v0)
  {
    result = 0x656C797473;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_23FF9B594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FF9B66C(uint64_t a1)
{
  v2 = sub_23FF9B878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9B6A8(uint64_t a1)
{
  v2 = sub_23FF9B878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetButton.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3648, &qword_23FFE0900);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9B878();
  sub_23FFD9ACC();
  v17 = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_23FF9B8CC();
    sub_23FFD991C();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_23FF9B878()
{
  result = qword_27E3A3650;
  if (!qword_27E3A3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3650);
  }

  return result;
}

unint64_t sub_23FF9B8CC()
{
  result = qword_27E3A3658;
  if (!qword_27E3A3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3658);
  }

  return result;
}

uint64_t ConfirmationSheetButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3660, &qword_23FFE0908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9B878();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_23FF9BB14();
  sub_23FFD983C();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF9BB14()
{
  result = qword_27E3A3668;
  if (!qword_27E3A3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3668);
  }

  return result;
}

unint64_t sub_23FF9BB98()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_23FF9BBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FF9EFF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FF9BC14(uint64_t a1)
{
  v2 = sub_23FF9C3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BC50(uint64_t a1)
{
  v2 = sub_23FF9C3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9BC8C(uint64_t a1)
{
  v2 = sub_23FF9C4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BCC8(uint64_t a1)
{
  v2 = sub_23FF9C4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9BD04(uint64_t a1)
{
  v2 = sub_23FF9C54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BD40(uint64_t a1)
{
  v2 = sub_23FF9C54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF9BD7C(uint64_t a1)
{
  v2 = sub_23FF9C450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF9BDB8(uint64_t a1)
{
  v2 = sub_23FF9C450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConfirmationSheetPostPrimaryButtonAction.encode(to:)(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3670, &qword_23FFE0910);
  v37 = *(v38 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v32 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3678, &qword_23FFE0918);
  v40 = *(v41 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v32 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3680, &qword_23FFE0920);
  v34 = *(v35 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - v7;
  v33 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3688, &qword_23FFE0928);
  v16 = *(v43 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v43);
  v19 = &v32 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF9C3FC();
  sub_23FFD9ACC();
  sub_23FF99F18(v42, v15, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v15[3];
      v51 = v15[2];
      v52 = v22;
      v53 = v15[4];
      v23 = v15[1];
      v49 = *v15;
      v50 = v23;
      LOBYTE(v44) = 1;
      sub_23FF9C4A4();
      v24 = v39;
      v25 = v43;
      sub_23FFD988C();
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      sub_23FF9C4F8();
      v26 = v41;
      sub_23FFD991C();
      (*(v40 + 8))(v24, v26);
      (*(v16 + 8))(v19, v25);
      return sub_23FF9A924(&v49);
    }

    else
    {
      LOBYTE(v49) = 2;
      sub_23FF9C450();
      v30 = v36;
      v31 = v43;
      sub_23FFD988C();
      (*(v37 + 8))(v30, v38);
      return (*(v16 + 8))(v19, v31);
    }
  }

  else
  {
    sub_23FF9CDAC(v15, v11, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    LOBYTE(v49) = 0;
    sub_23FF9C54C();
    v28 = v43;
    sub_23FFD988C();
    sub_23FF97C7C(&qword_27E3A36B8, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    v29 = v35;
    sub_23FFD991C();
    (*(v34 + 8))(v8, v29);
    sub_23FF99F80(v11, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
    return (*(v16 + 8))(v19, v28);
  }
}

unint64_t sub_23FF9C3FC()
{
  result = qword_27E3A3690;
  if (!qword_27E3A3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3690);
  }

  return result;
}

unint64_t sub_23FF9C450()
{
  result = qword_27E3A3698;
  if (!qword_27E3A3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3698);
  }

  return result;
}

unint64_t sub_23FF9C4A4()
{
  result = qword_27E3A36A0;
  if (!qword_27E3A36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A36A0);
  }

  return result;
}

unint64_t sub_23FF9C4F8()
{
  result = qword_27E3A36A8;
  if (!qword_27E3A36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A36A8);
  }

  return result;
}

unint64_t sub_23FF9C54C()
{
  result = qword_27E3A36B0;
  if (!qword_27E3A36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A36B0);
  }

  return result;
}

uint64_t ConfirmationSheetPostPrimaryButtonAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36C0, &qword_23FFE0930);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v49 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36C8, &qword_23FFE0938);
  v55 = *(v52 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v49 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36D0, &qword_23FFE0940);
  v53 = *(v54 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v59 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A36D8, &qword_23FFE0948);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_23FF9C3FC();
  v25 = v63;
  sub_23FFD9AAC();
  if (!v25)
  {
    v50 = v20;
    v49 = v17;
    v27 = v59;
    v26 = v60;
    v28 = v61;
    v51 = v22;
    v63 = v13;
    v29 = sub_23FFD986C();
    v30 = (2 * *(v29 + 16)) | 1;
    v69 = v29;
    v70 = v29 + 32;
    v71 = 0;
    v72 = v30;
    v31 = sub_23FF7522C();
    v32 = v9;
    if (v31 != 3 && v71 == v72 >> 1)
    {
      if (v31)
      {
        if (v31 != 1)
        {
          LOBYTE(v64) = 2;
          sub_23FF9C450();
          sub_23FFD979C();
          v42 = v58;
          v43 = v62;
          (*(v56 + 8))(v28, v57);
          (*(v43 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v44 = v51;
          swift_storeEnumTagMultiPayload();
LABEL_12:
          sub_23FF9CDAC(v44, v42, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
          return __swift_destroy_boxed_opaque_existential_1(v73);
        }

        LOBYTE(v64) = 1;
        sub_23FF9C4A4();
        sub_23FFD979C();
        v33 = v62;
        sub_23FF9CE14();
        v34 = v52;
        sub_23FFD983C();
        (*(v55 + 8))(v26, v34);
        (*(v33 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v45 = v67;
        v46 = v49;
        v49[2] = v66;
        v46[3] = v45;
        v46[4] = v68;
        v47 = v65;
        *v46 = v64;
        v46[1] = v47;
        swift_storeEnumTagMultiPayload();
        v48 = v46;
      }

      else
      {
        LOBYTE(v64) = 0;
        sub_23FF9C54C();
        sub_23FFD979C();
        type metadata accessor for ConfirmationSheetOsloSheetConfiguration(0);
        sub_23FF97C7C(&qword_27E3A36E8, type metadata accessor for ConfirmationSheetOsloSheetConfiguration);
        v40 = v50;
        v41 = v54;
        sub_23FFD983C();
        (*(v53 + 8))(v27, v41);
        (*(v62 + 8))(v12, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v40;
      }

      v44 = v51;
      sub_23FF9CDAC(v48, v51, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
      v42 = v58;
      goto LABEL_12;
    }

    v35 = sub_23FFD970C();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
    *v37 = v63;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v62 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_23FF9CDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FF9CE14()
{
  result = qword_27E3A36E0;
  if (!qword_27E3A36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A36E0);
  }

  return result;
}

unint64_t sub_23FF9CE6C()
{
  result = qword_27E3A36F0;
  if (!qword_27E3A36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A36F0);
  }

  return result;
}

void sub_23FF9CF18()
{
  sub_23FF9D0DC(319, &qword_27E3A3708);
  if (v0 <= 0x3F)
  {
    sub_23FF9D0DC(319, &qword_27E3A2478);
    if (v1 <= 0x3F)
    {
      sub_23FF9D0DC(319, &qword_27E3A3710);
      if (v2 <= 0x3F)
      {
        sub_23FF9D078();
        if (v3 <= 0x3F)
        {
          sub_23FF9D0DC(319, &qword_27E3A3720);
          if (v4 <= 0x3F)
          {
            sub_23FF9D35C(319, &qword_27E3A3728, type metadata accessor for ConfirmationSheetPostPrimaryButtonAction);
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

void sub_23FF9D078()
{
  if (!qword_27E3A3718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3500, &qword_23FFE0850);
    v0 = sub_23FFD95CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3A3718);
    }
  }
}

void sub_23FF9D0DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23FFD95CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23FF9D154(uint64_t a1, int a2)
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

uint64_t sub_23FF9D19C(uint64_t result, int a2, int a3)
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

uint64_t sub_23FF9D1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23FF9D234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23FF9D2BC()
{
  sub_23FF9D35C(319, &qword_27E3A2480, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23FF9D35C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23FFD95CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23FF9D3CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23FF9D414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23FF9D498()
{
  result = type metadata accessor for ConfirmationSheetOsloSheetConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationSheetLAConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationSheetLAConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FF9D874()
{
  result = qword_27E3A3750;
  if (!qword_27E3A3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3750);
  }

  return result;
}

unint64_t sub_23FF9D8CC()
{
  result = qword_27E3A3758;
  if (!qword_27E3A3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3758);
  }

  return result;
}

unint64_t sub_23FF9D924()
{
  result = qword_27E3A3760;
  if (!qword_27E3A3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3760);
  }

  return result;
}

unint64_t sub_23FF9D97C()
{
  result = qword_27E3A3768;
  if (!qword_27E3A3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3768);
  }

  return result;
}

unint64_t sub_23FF9D9D4()
{
  result = qword_27E3A3770;
  if (!qword_27E3A3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3770);
  }

  return result;
}

unint64_t sub_23FF9DA2C()
{
  result = qword_27E3A3778;
  if (!qword_27E3A3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3778);
  }

  return result;
}

unint64_t sub_23FF9DA84()
{
  result = qword_27E3A3780;
  if (!qword_27E3A3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3780);
  }

  return result;
}

unint64_t sub_23FF9DADC()
{
  result = qword_27E3A3788;
  if (!qword_27E3A3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3788);
  }

  return result;
}

unint64_t sub_23FF9DB34()
{
  result = qword_27E3A3790;
  if (!qword_27E3A3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3790);
  }

  return result;
}

unint64_t sub_23FF9DB8C()
{
  result = qword_27E3A3798;
  if (!qword_27E3A3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3798);
  }

  return result;
}

unint64_t sub_23FF9DBE4()
{
  result = qword_27E3A37A0;
  if (!qword_27E3A37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37A0);
  }

  return result;
}

unint64_t sub_23FF9DC3C()
{
  result = qword_27E3A37A8;
  if (!qword_27E3A37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37A8);
  }

  return result;
}

unint64_t sub_23FF9DC94()
{
  result = qword_27E3A37B0;
  if (!qword_27E3A37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37B0);
  }

  return result;
}

unint64_t sub_23FF9DCEC()
{
  result = qword_27E3A37B8;
  if (!qword_27E3A37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37B8);
  }

  return result;
}

unint64_t sub_23FF9DD44()
{
  result = qword_27E3A37C0;
  if (!qword_27E3A37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37C0);
  }

  return result;
}

unint64_t sub_23FF9DD9C()
{
  result = qword_27E3A37C8;
  if (!qword_27E3A37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37C8);
  }

  return result;
}

unint64_t sub_23FF9DDF4()
{
  result = qword_27E3A37D0;
  if (!qword_27E3A37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37D0);
  }

  return result;
}

unint64_t sub_23FF9DE4C()
{
  result = qword_27E3A37D8;
  if (!qword_27E3A37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37D8);
  }

  return result;
}

unint64_t sub_23FF9DEA4()
{
  result = qword_27E3A37E0;
  if (!qword_27E3A37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37E0);
  }

  return result;
}

unint64_t sub_23FF9DEFC()
{
  result = qword_27E3A37E8;
  if (!qword_27E3A37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37E8);
  }

  return result;
}

unint64_t sub_23FF9DF54()
{
  result = qword_27E3A37F0;
  if (!qword_27E3A37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37F0);
  }

  return result;
}

unint64_t sub_23FF9DFAC()
{
  result = qword_27E3A37F8;
  if (!qword_27E3A37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A37F8);
  }

  return result;
}

unint64_t sub_23FF9E004()
{
  result = qword_27E3A3800;
  if (!qword_27E3A3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3800);
  }

  return result;
}

unint64_t sub_23FF9E05C()
{
  result = qword_27E3A3808;
  if (!qword_27E3A3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3808);
  }

  return result;
}

unint64_t sub_23FF9E0B4()
{
  result = qword_27E3A3810;
  if (!qword_27E3A3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3810);
  }

  return result;
}

unint64_t sub_23FF9E10C()
{
  result = qword_27E3A3818;
  if (!qword_27E3A3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3818);
  }

  return result;
}

unint64_t sub_23FF9E164()
{
  result = qword_27E3A3820;
  if (!qword_27E3A3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3820);
  }

  return result;
}

unint64_t sub_23FF9E1BC()
{
  result = qword_27E3A3828;
  if (!qword_27E3A3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3828);
  }

  return result;
}

unint64_t sub_23FF9E214()
{
  result = qword_27E3A3830;
  if (!qword_27E3A3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3830);
  }

  return result;
}

unint64_t sub_23FF9E26C()
{
  result = qword_27E3A3838;
  if (!qword_27E3A3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3838);
  }

  return result;
}

unint64_t sub_23FF9E2C4()
{
  result = qword_27E3A3840;
  if (!qword_27E3A3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3840);
  }

  return result;
}

unint64_t sub_23FF9E31C()
{
  result = qword_27E3A3848;
  if (!qword_27E3A3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3848);
  }

  return result;
}

unint64_t sub_23FF9E374()
{
  result = qword_27E3A3850;
  if (!qword_27E3A3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3850);
  }

  return result;
}

unint64_t sub_23FF9E3CC()
{
  result = qword_27E3A3858;
  if (!qword_27E3A3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3858);
  }

  return result;
}

unint64_t sub_23FF9E424()
{
  result = qword_27E3A3860;
  if (!qword_27E3A3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3860);
  }

  return result;
}

unint64_t sub_23FF9E47C()
{
  result = qword_27E3A3868;
  if (!qword_27E3A3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3868);
  }

  return result;
}

unint64_t sub_23FF9E4D4()
{
  result = qword_27E3A3870;
  if (!qword_27E3A3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3870);
  }

  return result;
}

unint64_t sub_23FF9E52C()
{
  result = qword_27E3A3878;
  if (!qword_27E3A3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3878);
  }

  return result;
}

unint64_t sub_23FF9E584()
{
  result = qword_27E3A3880;
  if (!qword_27E3A3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3880);
  }

  return result;
}

unint64_t sub_23FF9E5DC()
{
  result = qword_27E3A3888;
  if (!qword_27E3A3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3888);
  }

  return result;
}

unint64_t sub_23FF9E634()
{
  result = qword_27E3A3890;
  if (!qword_27E3A3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3890);
  }

  return result;
}

unint64_t sub_23FF9E68C()
{
  result = qword_27E3A3898;
  if (!qword_27E3A3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3898);
  }

  return result;
}

uint64_t sub_23FF9E6E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB640 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB660 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F5074656C6C7562 && a2 == 0xEC00000073746E69 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023FFEB680 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB6A0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB6C0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_23FF9EA18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852793705 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23FF9EB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707041726F467369 && a2 == 0xED000065726F7453)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23FF9ECA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000023FFEB700 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB720 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEE0074786554676ELL || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23FF9EE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xEF6E6F7361655264;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23FF9EFF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000023FFEB740 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB760 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB780 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23FF9F148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF9F1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSheetRequest.run()()
{
  *(v1 + 32) = v0;
  v2 = *(*(type metadata accessor for LaunchAngelXPCRequest(0) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF9F2A8, 0, 0);
}

uint64_t sub_23FF9F2A8()
{
  sub_23FF9F148(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FF9F368;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_23FF9F368()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23FF9F508;
  }

  else
  {
    v3 = sub_23FF9F47C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF9F47C()
{
  sub_23FF797E0(*(v0 + 40));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 2)
  {
    sub_23FF7983C(*(v0 + 16), v2);
    LOBYTE(v1) = 0;
  }

  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4(v1 & 1);
}

uint64_t sub_23FF9F508()
{
  sub_23FF797E0(v0[5]);

  v1 = v0[1];
  v2 = v0[7];

  return v1(0);
}

uint64_t type metadata accessor for ConfirmationSheetRequest()
{
  result = qword_27E3A38A0;
  if (!qword_27E3A38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF9F5F0()
{
  result = type metadata accessor for ConfirmationSheetContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static AppLibrary.getSearchTerritory(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23FF9F67C, 0, 0);
}

uint64_t sub_23FF9F67C()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF9F7A4;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF9F7A4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FF9F934;
  }

  else
  {
    v3 = sub_23FF9F8B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF9F8B8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  if (v4 != 7)
  {
    sub_23FF795B0(v2, v3, v4);
    v2 = 0;
    v3 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2, v3);
}

uint64_t sub_23FF9F934()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];

  return v3(0, 0);
}

uint64_t static AppLibrary.setSearchTerritory(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_23FFD946C();
  v4[13] = sub_23FFD945C();
  v6 = sub_23FFD942C();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x2822009F8](sub_23FF9FA44, v6, v5);
}

uint64_t sub_23FF9FA44()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 96);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v1;
  *(v0 + 64) = 5;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_23FF9FB78;

  return sub_23FF56EC0(v0 + 16, sub_23FF9FD90, 0);
}

uint64_t sub_23FF9FB78()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[12];
    v6 = v2[10];

    v7 = v2[14];
    v8 = v2[15];
    v9 = sub_23FFA106C;
  }

  else
  {
    v9 = sub_23FF9FCC0;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23FF9FCC0()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x2822009F8](sub_23FF9FD30, v3, v4);
}

uint64_t sub_23FF9FD30()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

void sub_23FF9FD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_11;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppLibrary.associatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23FF9FE8C, 0, 0);
}

uint64_t sub_23FF9FE8C()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF9FFB4;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF9FFB4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23FFA015C;
  }

  else
  {
    v3 = sub_23FFA00C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FFA00C8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);

  if (v4 != 2)
  {
    sub_23FF795B0(v3, v2, v4);
    v3 = MEMORY[0x277D84F90];
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_23FFA015C()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[1];
  v4 = MEMORY[0x277D84F90];

  return v3(v4);
}

uint64_t static AppLibrary.synchronousAssociatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x1000000000000000;
  v13 = 0;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(&v8, sub_23FFBF448, 0, &v6);
  v3 = v6;
  v4 = v7;

  result = v3;
  if (v4 != 2)
  {
    sub_23FF795B0(v3, *(&v3 + 1), v4);
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23FFA02E0()
{
  *(v0 + 16) = 3;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23FFA0408;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FFA0408()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_23FFA0664;
  }

  else
  {
    v3 = sub_23FFA051C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FFA051C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 72);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 80);
    type metadata accessor for MarketplaceKitError();
    sub_23FFA0F40(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_23FFA0664()
{
  v1 = *(v0 + 104);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall AppLibrary.beginIndeterminantProgress(itemID:versionID:version:shortVersion:account:)(Swift::UInt64 itemID, Swift::UInt64 versionID, Swift::String version, Swift::String shortVersion, Swift::String_optional account)
{
  object = account.value._object;
  countAndFlagsBits = account.value._countAndFlagsBits;
  v7 = shortVersion._object;
  v22 = shortVersion._countAndFlagsBits;
  v8 = version._object;
  *(&v21 + 1) = version._countAndFlagsBits;
  *&v21 = versionID;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v24 = v5;
  v14 = AppLibrary.app(forAppleItemID:)(itemID);
  swift_getKeyPath();
  *&v30[0] = v14;
  sub_23FFA0F40(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
  sub_23FFD8FEC();

  if (!*(v14 + 96))
  {
    v15 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());

    v16 = sub_23FF6D284(itemID);
    v26 = v21;
    *&v27 = v8;
    *(&v27 + 1) = v22;
    *&v28 = v7;
    *(&v28 + 1) = countAndFlagsBits;
    *&v29 = object;
    *(&v29 + 1) = v16;
    v30[0] = v21;
    v30[1] = v27;
    v30[2] = v28;
    v30[3] = v29;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v20 - 2) = v14;
    *(&v20 - 1) = v30;
    v25 = v14;
    sub_23FFD8FDC();
    sub_23FFA0F88(&v26);

    v18 = type metadata accessor for MarketplaceKitError();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19);
    *(&v20 - 2) = v14;
    *(&v20 - 1) = v13;
    v25 = v14;
    sub_23FFD8FDC();

    sub_23FFA0FDC(v13);
    AppLibrary.updateInstallState(forUpdated:)(v14);
  }
}

uint64_t AppLibrary.resetAppToAvailable(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8[-v4];
  memset(v14, 0, sizeof(v14));
  swift_getKeyPath();
  v11 = a1;
  v12 = v14;
  v13 = a1;
  sub_23FFA0F40(&qword_27E3A28C8, type metadata accessor for AppLibrary.App);
  sub_23FFD8FDC();

  v6 = type metadata accessor for MarketplaceKitError();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  swift_getKeyPath();
  v9 = a1;
  v10 = v5;
  v13 = a1;
  sub_23FFD8FDC();

  sub_23FFA0FDC(v5);
  return AppLibrary.updateInstallState(forUpdated:)(a1);
}

uint64_t RepairRequest.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RepairRequest.init(bundleID:isBackground:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AppLibrary.handleRepairRequest(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 32) = *(a1 + 24);

  return MEMORY[0x2822009F8](sub_23FFA0C98, 0, 0);
}

uint64_t sub_23FFA0C98()
{
  v3 = *(v2 + 32);
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v0 = *(v2 + 56);
    v1 = *(v2 + 24);
    if (qword_27E3A2160 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_23FFA0DC0;
  v5 = *(v2 + 16);

  return sub_23FF581E4(sub_23FF581E4, v5, v1, v0 ^ 1u | (v3 << 32), 1, sub_23FF93148, 0);
}

uint64_t sub_23FFA0DC0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_23FFA0EDC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_23FF88D50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23FFA0EDC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_23FFA0F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23FFA0FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CodableAuditToken.auditToken.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

void __swiftcall CodableAuditToken.init(auditToken:)(AppDistribution::CodableAuditToken *__return_ptr retstr, audit_token_t *auditToken)
{
  *retstr->field23FFF3D6C.val = auditToken;
  *&retstr->field23FFF3D6C.val[2] = v2;
  *&retstr->field23FFF3D6C.val[4] = v3;
  *&retstr->field23FFF3D6C.val[6] = v4;
}

uint64_t CodableAuditToken.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD9A9C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_23FF71690();
    sub_23FFD997C();
    v6 = v16;
    v7 = v17;
    v12 = 0u;
    v13 = 0u;
    v8 = sub_23FFD8F8C();
    [v8 getBytes:&v12 length:32];
    sub_23FF62F84(v6, v7);

    v14 = v12;
    v15 = v13;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v9 = v15;
    *a2 = v14;
    a2[1] = v9;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CodableAuditToken.encode(to:)(void *a1)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD9ABC();
  v3 = v1[1];
  v9[0] = *v1;
  v9[1] = v3;
  v4 = sub_23FFA17BC(v9, 32);
  v6 = v5;
  v10 = v4;
  v11 = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_23FF70D64();
  sub_23FFD998C();
  sub_23FF62F84(v4, v6);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_23FFA1328, 0, 0);
}

uint64_t sub_23FFA1328()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(v0 + 64) = 0;
  sub_23FF71730(v1, v2);
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_23FFA1454;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FFA1454()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_23FFA16A0;
  }

  else
  {
    v3 = sub_23FFA1568;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FFA1568()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (v3 == 4)
  {
    sub_23FF62F84(*(v0 + 128), *(v0 + 136));
    v6 = *(v0 + 8);

    return v6(v2, v1);
  }

  else
  {
    type metadata accessor for MarketplaceKitError();
    sub_23FF8F750();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v2, v1, v3);
    sub_23FF62F84(v5, v4);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23FFA16A0()
{
  sub_23FF62F84(v0[16], v0[17]);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t sub_23FFA1704(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23FFA17BC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23FFA1704(a1, &a1[a2]);
  }

  v3 = sub_23FFD8F0C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_23FFD8ECC();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23FFD8F7C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

AppDistribution::AppDistributorResult __swiftcall AppDistributorResult.init(distributorID:requestingBundleID:)(Swift::String distributorID, Swift::String requestingBundleID)
{
  *v2 = distributorID;
  v2[1] = requestingBundleID;
  result.field23FFF3DA4 = requestingBundleID;
  result.field23FFF3D98 = distributorID;
  return result;
}

unint64_t sub_23FFA18E8()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x7562697274736964;
  }

  *v0;
  return result;
}

uint64_t sub_23FFA1934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB7E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFA1A20(uint64_t a1)
{
  v2 = sub_23FFA1C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA1A5C(uint64_t a1)
{
  v2 = sub_23FFA1C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppDistributorResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38B0, &qword_23FFE20B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA1C2C();
  sub_23FFD9ACC();
  v16 = 0;
  v12 = v14[3];
  sub_23FFD98EC();
  if (!v12)
  {
    v15 = 1;
    sub_23FFD98EC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FFA1C2C()
{
  result = qword_27E3A38B8;
  if (!qword_27E3A38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A38B8);
  }

  return result;
}

uint64_t AppDistributorResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38C0, &qword_23FFE20B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA1C2C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_23FFD980C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFA1ED0()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = sub_23FFD930C();
  if (*(v3 + 16) && (v4 = sub_23FF88F80(0xD00000000000001BLL, 0x800000023FFEB7A0), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v0 + 56) = v7;

  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_23FFA2098;

  return sub_23FF58854(v0 + 16, v8, v7, sub_23FFA2250, 0);
}

uint64_t sub_23FFA2098()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_23FFA2238;
  }

  else
  {
    v4 = sub_23FFA21C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23FFA21C8()
{
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  AppDistributor.init(result:)(v5, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t *AppDistributor.init(result:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    v4 = *result;
    v6 = result[2];
    v5 = result[3];
    if (*result == 0xD000000000000012 && v3 == 0x800000023FFEAB80)
    {
      v9 = 0xD000000000000012;
      goto LABEL_10;
    }

    v8 = *result;
    if (sub_23FFD996C())
    {
      v9 = v4;
LABEL_10:
      result = sub_23FF97188(v9, v3);
      v4 = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if (v4 == 0xD000000000000014 && v3 == 0x800000023FFEB7C0)
    {
      v10 = 0xD000000000000014;
LABEL_17:
      result = sub_23FF97188(v10, v3);
      v4 = 0;
      v3 = 1;
      goto LABEL_11;
    }

    if (sub_23FFD996C())
    {
      v10 = v4;
      goto LABEL_17;
    }

    if (v4 == v6 && v3 == v5)
    {
      v11 = v4;
      v12 = v3;
    }

    else
    {
      if ((sub_23FFD996C() & 1) == 0)
      {

        result = sub_23FF97188(v4, v3);
        goto LABEL_11;
      }

      v11 = v4;
      v12 = v3;
    }

    result = sub_23FF97188(v11, v12);
    v4 = 0;
    v3 = 2;
  }

  else
  {
    v4 = 0;
    v3 = 3;
  }

LABEL_11:
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_23FFA241C()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6E6E4;
  v2 = *(v0 + 24);

  return sub_23FF58C40(v2, sub_23FFA2514, 0);
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution0A11DistributorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23FFA2550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
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

uint64_t sub_23FFA25A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_23FFA2624()
{
  result = qword_27E3A38C8;
  if (!qword_27E3A38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A38C8);
  }

  return result;
}

unint64_t sub_23FFA267C()
{
  result = qword_27E3A38D0;
  if (!qword_27E3A38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A38D0);
  }

  return result;
}

unint64_t sub_23FFA26D4()
{
  result = qword_27E3A38D8;
  if (!qword_27E3A38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A38D8);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TransactionReporting.TokenType.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_23FFA27A8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23FFA27B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static TransactionReporting.token(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  return MEMORY[0x2822009F8](sub_23FFA2830, 0, 0);
}

uint64_t sub_23FFA2830()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FFA2934;
  v2 = v0[4];
  v3 = v0[5];

  return sub_23FF59054((v0 + 2), v2, v3, 0, 0, sub_23FFA2AAC, 0);
}

uint64_t sub_23FFA2934()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_23FFA2A88;
  }

  else
  {
    v4 = sub_23FFA2A6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

AppDistribution::SKTransactionReportTokenRequest __swiftcall SKTransactionReportTokenRequest.init(tokenType:bundleIDOverride:)(Swift::String tokenType, Swift::String_optional bundleIDOverride)
{
  v2->value = tokenType;
  v2[1] = bundleIDOverride;
  result.field23FFF3E6C = bundleIDOverride;
  result.field23FFF3E60 = tokenType;
  return result;
}

void sub_23FFA2AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  [a1 tokenForTokenType:v8 reply:v9];
  _Block_release(v9);
}

uint64_t SKTransactionReportTokenRequest.tokenType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SKTransactionReportTokenRequest.bundleIDOverride.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_23FFA2BE8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7079546E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_23FFA2C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB800 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFA2D18(uint64_t a1)
{
  v2 = sub_23FFA2F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA2D54(uint64_t a1)
{
  v2 = sub_23FFA2F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKTransactionReportTokenRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38E0, &qword_23FFE22E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA2F24();
  sub_23FFD9ACC();
  v16 = 0;
  v12 = v14[3];
  sub_23FFD98EC();
  if (!v12)
  {
    v15 = 1;
    sub_23FFD989C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FFA2F24()
{
  result = qword_27E3A38E8;
  if (!qword_27E3A38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A38E8);
  }

  return result;
}

uint64_t SKTransactionReportTokenRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38F0, &qword_23FFE22F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA2F24();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_23FFD980C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_23FFD97BC();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFA31BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FFA3240(uint64_t a1)
{
  v2 = sub_23FFA33F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA327C(uint64_t a1)
{
  v2 = sub_23FFA33F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SKTransactionReportTokenResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38F8, &qword_23FFE22F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA33F4();
  sub_23FFD9ACC();
  sub_23FFD98EC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FFA33F4()
{
  result = qword_27E3A3900;
  if (!qword_27E3A3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3900);
  }

  return result;
}

uint64_t SKTransactionReportTokenResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3908, &qword_23FFE2300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA33F4();
  sub_23FFD9AAC();
  if (!v2)
  {
    v11 = sub_23FFD980C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FFA35D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A38F8, &qword_23FFE22F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA33F4();
  sub_23FFD9ACC();
  sub_23FFD98EC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FFA3774()
{
  result = qword_27E3A3910;
  if (!qword_27E3A3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3910);
  }

  return result;
}

unint64_t sub_23FFA37CC()
{
  result = qword_27E3A3918;
  if (!qword_27E3A3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3918);
  }

  return result;
}

unint64_t sub_23FFA3824()
{
  result = qword_27E3A3920;
  if (!qword_27E3A3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3920);
  }

  return result;
}

unint64_t sub_23FFA387C()
{
  result = qword_27E3A3928;
  if (!qword_27E3A3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3928);
  }

  return result;
}

unint64_t sub_23FFA38D4()
{
  result = qword_27E3A3930;
  if (!qword_27E3A3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3930);
  }

  return result;
}

unint64_t sub_23FFA392C()
{
  result = qword_27E3A3938;
  if (!qword_27E3A3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3938);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t UpdateMetadata.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpdateMetadata.bundleVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpdateMetadata.itemID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UpdateMetadata.shortVersionString.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)(AppDistribution::UpdateMetadata *__return_ptr retstr, Swift::String bundleID, Swift::String bundleVersion, Swift::String itemID, Swift::String shortVersionString)
{
  retstr->field23FFF3EE8 = bundleID;
  retstr->field23FFF3EF4 = bundleVersion;
  retstr->field23FFF3F00 = itemID;
  retstr->field23FFF3F0C = shortVersionString;
}

unint64_t sub_23FFA3A7C()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x44496D657469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6556656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23FFA3B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFA4338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFA3B2C(uint64_t a1)
{
  v2 = sub_23FFA3D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA3B68(uint64_t a1)
{
  v2 = sub_23FFA3D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3940, &qword_23FFE26D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA3D98();
  sub_23FFD9ACC();
  v20 = 0;
  v14 = v16[7];
  sub_23FFD98EC();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_23FFD98EC();
  v18 = 2;
  sub_23FFD98EC();
  v17 = 3;
  sub_23FFD98EC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23FFA3D98()
{
  result = qword_27E3A3948;
  if (!qword_27E3A3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3948);
  }

  return result;
}

uint64_t UpdateMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3950, &qword_23FFE26D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA3D98();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_23FFD980C();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_23FFD980C();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_23FFD980C();
  v27 = v15;
  v35 = 3;
  v16 = sub_23FFD980C();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_23FFA40E0(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_23FFA4118(v34);
}

uint64_t sub_23FFA4178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23FFA41C0(uint64_t result, int a2, int a3)
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

unint64_t sub_23FFA4234()
{
  result = qword_27E3A3958;
  if (!qword_27E3A3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3958);
  }

  return result;
}

unint64_t sub_23FFA428C()
{
  result = qword_27E3A3960;
  if (!qword_27E3A3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3960);
  }

  return result;
}

unint64_t sub_23FFA42E4()
{
  result = qword_27E3A3968;
  if (!qword_27E3A3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3968);
  }

  return result;
}

uint64_t sub_23FFA4338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB820 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t DeveloperApprovalSheetContext.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeveloperApprovalSheetContext.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletBody.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletTitle.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletBody.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletTitle.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletBody.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.allowButtonText.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.ignoreButtonText.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerID.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerName.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.supportURL.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeTitle.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeReason.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDTitle.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDReason.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

void __swiftcall DeveloperApprovalSheetContext.init(title:body:firstBulletTitle:firstBulletBody:secondBulletTitle:secondBulletBody:thirdBulletTitle:thirdBulletBody:allowButtonText:ignoreButtonText:developerID:developerName:supportURL:passcodeTitle:passcodeReason:touchIDTitle:touchIDReason:)(AppDistribution::DeveloperApprovalSheetContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String firstBulletTitle, Swift::String firstBulletBody, Swift::String secondBulletTitle, Swift::String secondBulletBody, Swift::String thirdBulletTitle, Swift::String thirdBulletBody, Swift::String allowButtonText, Swift::String ignoreButtonText, Swift::String developerID, Swift::String developerName, Swift::String_optional supportURL, Swift::String passcodeTitle, Swift::String passcodeReason, Swift::String touchIDTitle, Swift::String touchIDReason)
{
  retstr->field23FFF3F68 = title;
  retstr->field23FFF3F74 = body;
  retstr->field23FFF3F80 = firstBulletTitle;
  retstr->field23FFF3F8C = firstBulletBody;
  retstr->field23FFF3F98 = secondBulletTitle;
  retstr->field23FFF3FA4 = secondBulletBody;
  retstr->field23FFF3FB0 = thirdBulletTitle;
  retstr->field23FFF3FBC = thirdBulletBody;
  retstr->field23FFF3FC8 = allowButtonText;
  retstr->field23FFF3FD4 = ignoreButtonText;
  retstr->field23FFF3FE0 = developerID;
  retstr->field23FFF3FEC = developerName;
  retstr->field23FFF3FF8 = supportURL;
  retstr->field23FFF4004 = passcodeTitle;
  retstr->field23FFF4010 = passcodeReason;
  retstr->field23FFF401C = touchIDTitle;
  retstr->field23FFF4028 = touchIDReason;
}

uint64_t sub_23FFA4824(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 0x427473726966;
      goto LABEL_11;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      v3 = 0x426472696874;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C75000000000000;
      break;
    case 8:
      result = 0x747542776F6C6C61;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
      result = 0x65706F6C65766564;
      break;
    case 12:
      result = 0x5574726F70707573;
      break;
    case 13:
    case 14:
      result = 0x65646F6373736170;
      break;
    case 15:
      result = 0x5444496863756F74;
      break;
    case 16:
      result = 0x5244496863756F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23FFA4A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFA5F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFA4A44(uint64_t a1)
{
  v2 = sub_23FFA4FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA4A80(uint64_t a1)
{
  v2 = sub_23FFA4FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeveloperApprovalSheetContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3970, &qword_23FFE28A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v33[30] = v1[3];
  v33[31] = v10;
  v11 = v1[4];
  v33[28] = v1[5];
  v33[29] = v11;
  v12 = v1[6];
  v33[26] = v1[7];
  v33[27] = v12;
  v13 = v1[9];
  v33[24] = v1[8];
  v33[25] = v13;
  v14 = v1[11];
  v33[22] = v1[10];
  v33[23] = v14;
  v15 = v1[13];
  v33[20] = v1[12];
  v33[21] = v15;
  v16 = v1[15];
  v33[18] = v1[14];
  v33[19] = v16;
  v17 = v1[17];
  v33[16] = v1[16];
  v33[17] = v17;
  v18 = v1[19];
  v33[14] = v1[18];
  v33[15] = v18;
  v19 = v1[21];
  v33[12] = v1[20];
  v33[13] = v19;
  v20 = v1[23];
  v33[10] = v1[22];
  v33[11] = v20;
  v21 = v1[25];
  v33[8] = v1[24];
  v33[9] = v21;
  v22 = v1[27];
  v33[6] = v1[26];
  v33[7] = v22;
  v23 = v1[29];
  v33[4] = v1[28];
  v33[5] = v23;
  v24 = v1[31];
  v33[2] = v1[30];
  v33[3] = v24;
  v25 = v1[33];
  v33[1] = v1[32];
  v27 = a1[3];
  v26 = a1[4];
  v28 = a1;
  v30 = v29;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_23FFA4FC0();
  sub_23FFD9ACC();
  v35 = 0;
  v31 = v34;
  sub_23FFD98EC();
  if (!v31)
  {
    v34 = v25;
    v35 = 1;
    sub_23FFD98EC();
    v35 = 2;
    sub_23FFD98EC();
    v35 = 3;
    sub_23FFD98EC();
    v35 = 4;
    sub_23FFD98EC();
    v35 = 5;
    sub_23FFD98EC();
    v35 = 6;
    sub_23FFD98EC();
    v35 = 7;
    sub_23FFD98EC();
    v35 = 8;
    sub_23FFD98EC();
    v35 = 9;
    sub_23FFD98EC();
    v35 = 10;
    sub_23FFD98EC();
    v35 = 11;
    sub_23FFD98EC();
    v35 = 12;
    sub_23FFD989C();
    v35 = 13;
    sub_23FFD98EC();
    v35 = 14;
    sub_23FFD98EC();
    v35 = 15;
    sub_23FFD98EC();
    v35 = 16;
    sub_23FFD98EC();
  }

  return (*(v4 + 8))(v7, v30);
}

unint64_t sub_23FFA4FC0()
{
  result = qword_27E3A3978;
  if (!qword_27E3A3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3978);
  }

  return result;
}

uint64_t DeveloperApprovalSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3980, &qword_23FFE28A8);
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v77);
  v8 = &v43 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA4FC0();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v75 = a2;
  v76 = a1;
  v10 = v5;
  LOBYTE(v79[0]) = 0;
  v11 = sub_23FFD980C();
  v74 = v12;
  LOBYTE(v79[0]) = 1;
  v13 = sub_23FFD980C();
  v71 = v14;
  v73 = v13;
  LOBYTE(v79[0]) = 2;
  v70 = 0;
  v72 = sub_23FFD980C();
  v69 = v15;
  LOBYTE(v79[0]) = 3;
  v59 = sub_23FFD980C();
  v68 = v16;
  LOBYTE(v79[0]) = 4;
  v58 = sub_23FFD980C();
  v67 = v17;
  LOBYTE(v79[0]) = 5;
  v57 = sub_23FFD980C();
  v66 = v18;
  LOBYTE(v79[0]) = 6;
  v56 = sub_23FFD980C();
  v65 = v19;
  LOBYTE(v79[0]) = 7;
  v55 = sub_23FFD980C();
  v64 = v20;
  LOBYTE(v79[0]) = 8;
  v54 = sub_23FFD980C();
  v63 = v21;
  LOBYTE(v79[0]) = 9;
  v22 = sub_23FFD980C();
  v62 = v23;
  v24 = v22;
  LOBYTE(v79[0]) = 10;
  v25 = sub_23FFD980C();
  v61 = v26;
  v27 = v25;
  LOBYTE(v79[0]) = 11;
  v28 = sub_23FFD980C();
  v60 = v29;
  v30 = v28;
  LOBYTE(v79[0]) = 12;
  v52 = sub_23FFD97BC();
  v53 = v31;
  LOBYTE(v79[0]) = 13;
  v50 = sub_23FFD980C();
  v51 = v32;
  v70 = 0;
  LOBYTE(v79[0]) = 14;
  v47 = sub_23FFD980C();
  v49 = v33;
  LOBYTE(v79[0]) = 15;
  v46 = sub_23FFD980C();
  v48 = v34;
  v80 = 16;
  v35 = sub_23FFD980C();
  v45 = v36;
  v37 = v35;
  (*(v10 + 8))(v8, v77);
  v38 = v73;
  v78[0] = v11;
  v78[1] = v74;
  v39 = v71;
  v78[2] = v73;
  v78[3] = v71;
  v78[4] = v72;
  v78[5] = v69;
  v78[6] = v59;
  v78[7] = v68;
  v78[8] = v58;
  v78[9] = v67;
  v78[10] = v57;
  v78[11] = v66;
  v78[12] = v56;
  v78[13] = v65;
  v78[14] = v55;
  v78[15] = v64;
  v78[16] = v54;
  v78[17] = v63;
  v43 = v27;
  v44 = v24;
  v78[18] = v24;
  v78[19] = v62;
  v78[20] = v27;
  v78[21] = v61;
  v78[22] = v30;
  v78[23] = v60;
  v40 = v53;
  v78[24] = v52;
  v78[25] = v53;
  v41 = v51;
  v78[26] = v50;
  v78[27] = v51;
  v78[28] = v47;
  v78[29] = v49;
  v78[30] = v46;
  v78[31] = v48;
  v78[32] = v37;
  v78[33] = v45;
  memcpy(v75, v78, 0x110uLL);
  sub_23FFA5BAC(v78, v79);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v79[0] = v11;
  v79[1] = v74;
  v79[2] = v38;
  v79[3] = v39;
  v79[4] = v72;
  v79[5] = v69;
  v79[6] = v59;
  v79[7] = v68;
  v79[8] = v58;
  v79[9] = v67;
  v79[10] = v57;
  v79[11] = v66;
  v79[12] = v56;
  v79[13] = v65;
  v79[14] = v55;
  v79[15] = v64;
  v79[16] = v54;
  v79[17] = v63;
  v79[18] = v44;
  v79[19] = v62;
  v79[20] = v43;
  v79[21] = v61;
  v79[22] = v30;
  v79[23] = v60;
  v79[24] = v52;
  v79[25] = v40;
  v79[26] = v50;
  v79[27] = v41;
  v79[28] = v47;
  v79[29] = v49;
  v79[30] = v46;
  v79[31] = v48;
  v79[32] = v37;
  v79[33] = v45;
  return sub_23FFA5BE4(v79);
}

uint64_t sub_23FFA5C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_23FFA5C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FFA5E7C()
{
  result = qword_27E3A3988;
  if (!qword_27E3A3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3988);
  }

  return result;
}

unint64_t sub_23FFA5ED4()
{
  result = qword_27E3A3990;
  if (!qword_27E3A3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3990);
  }

  return result;
}

unint64_t sub_23FFA5F2C()
{
  result = qword_27E3A3998;
  if (!qword_27E3A3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3998);
  }

  return result;
}

uint64_t sub_23FFA5F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB840 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75427473726966 && a2 == 0xEF79646F4274656CLL || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB860 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB880 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB8A0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C75426472696874 && a2 == 0xEF79646F4274656CLL || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747542776F6C6C61 && a2 == 0xEF747865546E6F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023FFEB8C0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_23FFD996C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_23FFD996C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52 || (sub_23FFD996C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_23FFD996C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552 || (sub_23FFD996C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_23FFD996C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165)
  {

    return 16;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t OAuthAuthorizationContext.logKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OAuthAuthorizationContext.requestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OAuthAuthorizationContext() + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OAuthAuthorizationContext()
{
  result = qword_27E3A39B8;
  if (!qword_27E3A39B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(logKey:requestURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OAuthAuthorizationContext() + 20);
  v7 = sub_23FFD8F6C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_23FFA6674()
{
  if (*v0)
  {
    result = 0x5574736575716572;
  }

  else
  {
    result = 0x79654B676F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_23FFA66B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5574736575716572 && a2 == 0xEA00000000004C52)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFA6790(uint64_t a1)
{
  v2 = sub_23FFA69AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA67CC(uint64_t a1)
{
  v2 = sub_23FFA69AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OAuthAuthorizationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39A0, &qword_23FFE2B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA69AC();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = *(type metadata accessor for OAuthAuthorizationContext() + 20);
    v15[14] = 1;
    sub_23FFD8F6C();
    sub_23FF82E4C(&qword_27E3A2438);
    sub_23FFD991C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23FFA69AC()
{
  result = qword_27E3A39A8;
  if (!qword_27E3A39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A39A8);
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_23FFD8F6C();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39B0, &qword_23FFE2B38);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for OAuthAuthorizationContext();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFA69AC();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_23FFD980C();
  v13[1] = v17;
  v25 = 1;
  sub_23FF82E4C(&qword_27E3A2458);
  sub_23FFD983C();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_23FFA6D10(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FFA6D74(v13);
}

uint64_t sub_23FFA6D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFA6D74(uint64_t a1)
{
  v2 = type metadata accessor for OAuthAuthorizationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23FFA6E3C()
{
  result = qword_27E3A39C8;
  if (!qword_27E3A39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A39C8);
  }

  return result;
}

unint64_t sub_23FFA6E94()
{
  result = qword_27E3A39D0;
  if (!qword_27E3A39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A39D0);
  }

  return result;
}

unint64_t sub_23FFA6EEC()
{
  result = qword_27E3A39D8;
  if (!qword_27E3A39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A39D8);
  }

  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.installType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.appName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_23FFA6FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.metricsFieldData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0) + 32);
  v2 = *v1;
  sub_23FFA7094(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_23FFA7094(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23FF71730(a1, a2);
  }

  return a1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v13 = *(v12 + 28);
  v14 = sub_23FFD8F6C();
  result = (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0xE000000000000000;
  v16 = (a6 + *(v12 + 32));
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:appName:iconURL:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v13 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  result = sub_23FF6832C(a6, a9 + *(v13 + 28));
  v15 = (a9 + *(v13 + 32));
  *v15 = a7;
  v15[1] = a8;
  return result;
}

uint64_t sub_23FFA71D4()
{
  v1 = *v0;
  v2 = 0x6D6F6942776F6873;
  v3 = 0x656D614E707061;
  v4 = 0x4C52556E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x546C6C6174736E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FFA7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFAFA04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFA72B0(uint64_t a1)
{
  v2 = sub_23FFAD708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA72EC(uint64_t a1)
{
  v2 = sub_23FFAD708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39E0, &qword_23FFE2CD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAD708();
  sub_23FFD9ACC();
  v11 = *v3;
  LOBYTE(v22) = 0;
  sub_23FFD98FC();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v22) = 1;
    sub_23FFD98EC();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v22) = 2;
    sub_23FFD98EC();
    v16 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
    v17 = *(v16 + 28);
    LOBYTE(v22) = 3;
    sub_23FFD8F6C();
    sub_23FFAD75C(&qword_27E3A2438, MEMORY[0x277CC9260]);
    sub_23FFD98CC();
    v18 = (v3 + *(v16 + 32));
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    v21[15] = 4;
    sub_23FFA7094(v22, v19);
    sub_23FF70D64();
    sub_23FFD98CC();
    sub_23FF6EC6C(v22, v23);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39F0, &qword_23FFE2CE0);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v22 - v10;
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23FFAD708();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v18 = v23;
  LOBYTE(v26) = 0;
  *v15 = sub_23FFD981C() & 1;
  LOBYTE(v26) = 1;
  *(v15 + 1) = sub_23FFD980C();
  *(v15 + 2) = v19;
  LOBYTE(v26) = 2;
  *(v15 + 3) = sub_23FFD980C();
  *(v15 + 4) = v20;
  sub_23FFD8F6C();
  LOBYTE(v26) = 3;
  sub_23FFAD75C(&qword_27E3A2458, MEMORY[0x277CC9260]);
  sub_23FFD97EC();
  sub_23FF6832C(v7, &v15[*(v12 + 28)]);
  v27 = 4;
  sub_23FF71690();
  sub_23FFD97EC();
  (*(v8 + 8))(v11, v24);
  *&v15[*(v12 + 32)] = v26;
  sub_23FFADBC0(v15, v18, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_23FFADC28(v15, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
}

uint64_t InstallSheetContext.Source.WebInstallContext.appName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t InstallSheetContext.Source.WebInstallContext.iconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(domain:developerName:developerID:appName:isUpdate:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v11 = a9 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_23FF6832C(a11, v11);
}

uint64_t sub_23FFA7B04()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x656D614E707061;
  v4 = 0x6574616470557369;
  if (v1 != 4)
  {
    v4 = 0x4C52556E6F6369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65706F6C65766564;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FFA7BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFAFBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFA7BF8(uint64_t a1)
{
  v2 = sub_23FFADB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA7C34(uint64_t a1)
{
  v2 = sub_23FFADB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.WebInstallContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A39F8, &qword_23FFE2CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFADB6C();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v22[14] = 1;
    sub_23FFD98EC();
    v15 = v3[4];
    v16 = v3[5];
    v22[13] = 2;
    sub_23FFD98EC();
    v17 = v3[6];
    v18 = v3[7];
    v22[12] = 3;
    sub_23FFD98EC();
    v19 = *(v3 + 64);
    v22[11] = 4;
    sub_23FFD98FC();
    v20 = *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);
    v22[10] = 5;
    sub_23FFD8F6C();
    sub_23FFAD75C(&qword_27E3A2438, MEMORY[0x277CC9260]);
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A08, &qword_23FFE2CF0);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFADB6C();
  v30 = v11;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v17 = v28;
  v18 = v29;
  v36 = 0;
  *v15 = sub_23FFD980C();
  *(v15 + 1) = v19;
  v35 = 1;
  *(v15 + 2) = sub_23FFD980C();
  *(v15 + 3) = v20;
  v34 = 2;
  *(v15 + 4) = sub_23FFD980C();
  *(v15 + 5) = v21;
  v33 = 3;
  *(v15 + 6) = sub_23FFD980C();
  *(v15 + 7) = v22;
  v32 = 4;
  v15[64] = sub_23FFD981C() & 1;
  sub_23FFD8F6C();
  v31 = 5;
  sub_23FFAD75C(&qword_27E3A2458, MEMORY[0x277CC9260]);
  v23 = v26;
  sub_23FFD97EC();
  (*(v17 + 8))(v30, v18);
  sub_23FF6832C(v23, &v15[*(v12 + 36)]);
  sub_23FFADBC0(v15, v27, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FFADC28(v15, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
}

uint64_t InstallSheetContext.Source.DistributorContext.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.appName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_23FFA844C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_23FFA6FE0(v4, a2);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(name:id:appName:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);

  return sub_23FF6832C(a7, v9);
}

uint64_t sub_23FFA84F0()
{
  v1 = 1701667182;
  v2 = 0x656D614E707061;
  if (*v0 != 2)
  {
    v2 = 0x4C52556E6F6369;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23FFA8558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFAFDCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFA8580(uint64_t a1)
{
  v2 = sub_23FFAE01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA85BC(uint64_t a1)
{
  v2 = sub_23FFAE01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.DistributorContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A10, &qword_23FFE2CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE01C();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_23FFD98EC();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_23FFD98EC();
    v17 = *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);
    v19[12] = 3;
    sub_23FFD8F6C();
    sub_23FFAD75C(&qword_27E3A2438, MEMORY[0x277CC9260]);
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A20, &qword_23FFE2D00);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE01C();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  *v15 = sub_23FFD980C();
  v15[1] = v20;
  v31 = 1;
  v15[2] = sub_23FFD980C();
  v15[3] = v21;
  v30 = 2;
  v24[1] = 0;
  v15[4] = sub_23FFD980C();
  v15[5] = v22;
  sub_23FFD8F6C();
  v29 = 3;
  sub_23FFAD75C(&qword_27E3A2458, MEMORY[0x277CC9260]);
  sub_23FFD97EC();
  (*(v19 + 8))(v11, v18);
  sub_23FF6832C(v17, v15 + *(v25 + 28));
  sub_23FFADBC0(v15, v26, type metadata accessor for InstallSheetContext.Source.DistributorContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FFADC28(v15, type metadata accessor for InstallSheetContext.Source.DistributorContext);
}

uint64_t InstallSheetContext.Source.isAppStore.getter()
{
  v1 = type metadata accessor for InstallSheetContext.Source(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFADBC0(v0, v4, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1;
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_9:
      sub_23FFADC28(v4, v7);
      return v6;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v6 = 0;
      v7 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    v7 = type metadata accessor for InstallSheetContext.Source;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v6 = 0;
    v7 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    goto LABEL_9;
  }

  return v6;
}

uint64_t InstallSheetContext.Source.isWebInstall.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InstallSheetContext.Source(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstallSheetContext.Source;
  sub_23FFADBC0(v1, v5, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = 1;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v8 = 1;
      v9 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    }

    else
    {
      v8 = 0;
      v9 = type metadata accessor for InstallSheetContext.Source;
    }

    v6 = v9;
  }

  sub_23FFADC28(v5, v6);
  return v8;
}

uint64_t sub_23FFA8E68(uint64_t a1)
{
  v2 = sub_23FFAE2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA8EA4(uint64_t a1)
{
  v2 = sub_23FFAE2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA8EE0(uint64_t a1)
{
  v2 = sub_23FFAE29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA8F1C(uint64_t a1)
{
  v2 = sub_23FFAE29C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23FFA8F58()
{
  v1 = *v0;
  v2 = 0x65726F7453707061;
  v3 = 0xD000000000000016;
  v4 = 6448503;
  if (v1 != 4)
  {
    v4 = 0x4368746957626577;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x7562697274736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FFA902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFAFF28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFA9054(uint64_t a1)
{
  v2 = sub_23FFAE090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9090(uint64_t a1)
{
  v2 = sub_23FFAE090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA90CC()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_23FFA90F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFA91C8(uint64_t a1)
{
  v2 = sub_23FFAE248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9204(uint64_t a1)
{
  v2 = sub_23FFAE248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA9240(uint64_t a1)
{
  v2 = sub_23FFAE1F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA927C(uint64_t a1)
{
  v2 = sub_23FFAE1F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA92B8()
{
  if (*v0)
  {
    result = 0x65706F6C65766564;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_23FFA92FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFA93DC(uint64_t a1)
{
  v2 = sub_23FFAE138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9418(uint64_t a1)
{
  v2 = sub_23FFAE138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFA9454(uint64_t a1)
{
  v2 = sub_23FFAE0E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFA9490(uint64_t a1)
{
  v2 = sub_23FFAE0E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.Source.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A28, &qword_23FFE2D08);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v86 = &v68 - v4;
  v82 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A30, &qword_23FFE2D10);
  v85 = *(v87 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A38, &qword_23FFE2D18);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v79 = &v68 - v11;
  v74 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  v12 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A40, &qword_23FFE2D20);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v75 = &v68 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A48, &qword_23FFE2D28);
  v72 = *(v73 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v68 - v18;
  v69 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v19 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A50, &qword_23FFE2D30);
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - v23;
  v25 = type metadata accessor for InstallSheetContext.Source(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3A58, &qword_23FFE2D38);
  v90 = *(v29 - 8);
  v30 = *(v90 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v68 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE090();
  v91 = v32;
  sub_23FFD9ACC();
  sub_23FFADBC0(v93, v28, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v50 = v70;
      sub_23FFAE18C(v28, v70, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v95 = 1;
      sub_23FFAE29C();
      v51 = v71;
      v52 = v91;
      sub_23FFD988C();
      sub_23FFAD75C(&qword_27E3A3AA0, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v53 = v73;
      sub_23FFD991C();
      (*(v72 + 8))(v51, v53);
      sub_23FFADC28(v50, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      return (*(v90 + 8))(v52, v29);
    }

    v35 = v92;
    v36 = v29;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = *v28;
      v37 = v28[1];
      v40 = v28[2];
      v39 = v28[3];
      v98 = 2;
      sub_23FFAE248();
      v41 = v75;
      v42 = v91;
      sub_23FFD988C();
      v97 = 0;
      v43 = v77;
      sub_23FFD98EC();

      if (!v35)
      {
        v96 = 1;
        sub_23FFD98EC();
      }

      (*(v76 + 8))(v41, v43);
      v66 = *(v90 + 8);
      v67 = v42;
    }

    else
    {
      v62 = v78;
      sub_23FFAE18C(v28, v78, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v99 = 3;
      sub_23FFAE1F4();
      v63 = v79;
      v64 = v91;
      sub_23FFD988C();
      sub_23FFAD75C(&qword_27E3A3A88, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v65 = v81;
      sub_23FFD991C();
      (*(v80 + 8))(v63, v65);
      sub_23FFADC28(v62, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v66 = *(v90 + 8);
      v67 = v64;
    }

    return v66(v67, v36);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v55 = *v28;
    v54 = v28[1];
    v57 = v28[2];
    v56 = v28[3];
    v102 = 4;
    sub_23FFAE138();
    v58 = v83;
    v36 = v29;
    v59 = v91;
    sub_23FFD988C();
    v101 = 0;
    v60 = v87;
    v61 = v92;
    sub_23FFD98EC();

    if (!v61)
    {
      v100 = 1;
      sub_23FFD98EC();
    }

    (*(v85 + 8))(v58, v60);
    v66 = *(v90 + 8);
    v67 = v59;
    return v66(v67, v36);
  }

  v44 = v29;
  v45 = v91;
  if (EnumCaseMultiPayload == 4)
  {
    v46 = v84;
    sub_23FFAE18C(v28, v84, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
    v103 = 5;
    sub_23FFAE0E4();
    v47 = v86;
    sub_23FFD988C();
    sub_23FFAD75C(&qword_27E3A3A70, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
    v48 = v89;
    sub_23FFD991C();
    (*(v88 + 8))(v47, v48);
    sub_23FFADC28(v46, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  }

  else
  {
    v94 = 0;
    sub_23FFAE2F0();
    sub_23FFD988C();
    (*(v68 + 8))(v24, v21);
  }

  return (*(v90 + 8))(v45, v44);
}

uint64_t InstallSheetContext.Source.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AB0, &qword_23FFE2D40);
  v4 = *(v3 - 8);
  v104 = v3;
  v105 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v114 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AB8, &qword_23FFE2D48);
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = *(v102 + 64);
  MEMORY[0x28223BE20](v7);
  v113 = &v87 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AC0, &qword_23FFE2D50);
  v100 = *(v101 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v112 = &v87 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AC8, &qword_23FFE2D58);
  v98 = *(v99 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v111 = &v87 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AD0, &qword_23FFE2D60);
  v96 = *(v97 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v106 = &v87 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AD8, &qword_23FFE2D68);
  v93 = *(v94 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v109 = &v87 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3AE0, &unk_23FFE2D70);
  v115 = *(v110 - 8);
  v18 = *(v115 + 64);
  MEMORY[0x28223BE20](v110);
  v20 = &v87 - v19;
  v108 = type metadata accessor for InstallSheetContext.Source(0);
  v21 = *(*(v108 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v108);
  v95 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v87 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v87 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v87 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v87 - v36;
  v38 = a1[3];
  v39 = a1[4];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_23FFAE090();
  v40 = v116;
  sub_23FFD9AAC();
  if (!v40)
  {
    v90 = v35;
    v41 = v109;
    v91 = v29;
    v88 = v32;
    v89 = v26;
    v116 = 0;
    v42 = v111;
    v43 = v112;
    v45 = v113;
    v44 = v114;
    v92 = v37;
    v46 = v110;
    v47 = sub_23FFD986C();
    v48 = (2 * *(v47 + 16)) | 1;
    v118 = v47;
    v119 = v47 + 32;
    v120 = 0;
    v121 = v48;
    v49 = sub_23FF7523C();
    if (v49 == 6 || v120 != v121 >> 1)
    {
      v56 = sub_23FFD970C();
      swift_allocError();
      v58 = v57;
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
      *v58 = v108;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v49 <= 2u)
    {
      if (!v49)
      {
        v122 = 0;
        sub_23FFAE2F0();
        v64 = v116;
        sub_23FFD979C();
        v50 = v107;
        if (!v64)
        {
          (*(v93 + 8))(v41, v94);
          (*(v115 + 8))(v20, v46);
          swift_unknownObjectRelease();
          v55 = v92;
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      v50 = v107;
      v51 = v116;
      if (v49 == 1)
      {
        v122 = 1;
        sub_23FFAE29C();
        v52 = v106;
        sub_23FFD979C();
        if (!v51)
        {
          type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
          sub_23FFAD75C(&qword_27E3A3AF8, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
          v53 = v90;
          v54 = v97;
          sub_23FFD983C();
          (*(v96 + 8))(v52, v54);
          (*(v115 + 8))(v20, v46);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v55 = v92;
          sub_23FFAE18C(v53, v92, type metadata accessor for InstallSheetContext.Source);
LABEL_29:
          sub_23FFAE18C(v55, v50, type metadata accessor for InstallSheetContext.Source);
          return __swift_destroy_boxed_opaque_existential_1(v117);
        }

        goto LABEL_10;
      }

      v122 = 2;
      sub_23FFAE248();
      sub_23FFD979C();
      if (v51)
      {
LABEL_10:
        (*(v115 + 8))(v20, v46);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v117);
      }

      v122 = 0;
      v71 = v99;
      v72 = sub_23FFD980C();
      v79 = v78;
      v116 = v72;
      v122 = 1;
      v114 = sub_23FFD980C();
      v80 = v71;
      v81 = (v115 + 8);
      v86 = v85;
      (*(v98 + 8))(v42, v80);
      (*v81)(v20, v46);
      swift_unknownObjectRelease();
      v84 = v88;
      *v88 = v116;
      v84[1] = v79;
      v84[2] = v114;
      v84[3] = v86;
      goto LABEL_27;
    }

    if (v49 == 3)
    {
      v122 = 3;
      sub_23FFAE1F4();
      v65 = v116;
      sub_23FFD979C();
      if (v65)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
      sub_23FFAD75C(&qword_27E3A3AF0, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v66 = v91;
      v67 = v101;
      sub_23FFD983C();
      v68 = v115;
      (*(v100 + 8))(v43, v67);
      (*(v68 + 8))(v20, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v49 == 4)
      {
        v122 = 4;
        sub_23FFAE138();
        v61 = v116;
        sub_23FFD979C();
        if (v61)
        {
          goto LABEL_10;
        }

        v122 = 0;
        v62 = v103;
        v63 = sub_23FFD980C();
        v74 = v73;
        v75 = v20;
        v116 = v63;
        v122 = 1;
        v114 = sub_23FFD980C();
        v76 = (v115 + 8);
        v83 = v82;
        (*(v102 + 8))(v45, v62);
        (*v76)(v75, v46);
        swift_unknownObjectRelease();
        v84 = v89;
        *v89 = v116;
        v84[1] = v74;
        v84[2] = v114;
        v84[3] = v83;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        v77 = v84;
        goto LABEL_28;
      }

      v122 = 5;
      sub_23FFAE0E4();
      v69 = v116;
      sub_23FFD979C();
      if (v69)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
      sub_23FFAD75C(&qword_27E3A3AE8, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v66 = v95;
      v70 = v104;
      sub_23FFD983C();
      (*(v105 + 8))(v44, v70);
      (*(v115 + 8))(v20, v46);
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v77 = v66;
LABEL_28:
    v55 = v92;
    sub_23FFAE18C(v77, v92, type metadata accessor for InstallSheetContext.Source);
    v50 = v107;
    goto LABEL_29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v117);
}

uint64_t sub_23FFAAEA8(uint64_t a1)
{
  v2 = sub_23FFAE3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFAAEE4(uint64_t a1)
{
  v2 = sub_23FFAE3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFAAF20()
{
  if (*v0)
  {
    result = 0x6C7074656B72616DLL;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_23FFAAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23FFAB03C(uint64_t a1)
{
  v2 = sub_23FFAE344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFAB078(uint64_t a1)
{
  v2 = sub_23FFAE344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FFAB0B4(uint64_t a1)
{
  v2 = sub_23FFAE398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFAB0F0(uint64_t a1)
{
  v2 = sub_23FFAE398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.InstallType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B00, &qword_23FFE2D80);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B08, &qword_23FFE2D88);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B10, &qword_23FFE2D90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE344();
  sub_23FFD9ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23FFAE398();
    v18 = v22;
    sub_23FFD988C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23FFAE3EC();
    sub_23FFD988C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t InstallSheetContext.InstallType.hashValue.getter()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB41F0](v1);
  return sub_23FFD9A7C();
}

uint64_t InstallSheetContext.InstallType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B30, &qword_23FFE2D98);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B38, &qword_23FFE2DA0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B40, &qword_23FFE2DA8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE344();
  v16 = v36;
  sub_23FFD9AAC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_23FFD986C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23FF75230();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_23FFD970C();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960) + 48);
      *v26 = &type metadata for InstallSheetContext.InstallType;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_23FFAE398();
        sub_23FFD979C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_23FFAE3EC();
        sub_23FFD979C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t InstallSheetContext.versionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InstallSheetContext.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InstallSheetContext(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t InstallSheetContext.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext(0) + 36);
  v2 = *v1;
  sub_23FFA7094(*v1, *(v1 + 8));
  return v2;
}

uint64_t InstallSheetContext.learnMoreURL.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallSheetContext(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallSheetContext.init(itemID:versionID:source:type:logKey:learnMoreURL:authenticationContextData:showBiometricsForAppStoreInstall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *a6;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a7;
  a9[5] = a8;
  v17 = type metadata accessor for InstallSheetContext(0);
  result = sub_23FFAE18C(a5, a9 + v17[7], type metadata accessor for InstallSheetContext.Source);
  *(a9 + v17[8]) = v16;
  v19 = (a9 + v17[10]);
  *v19 = a10;
  v19[1] = a11;
  v20 = (a9 + v17[9]);
  *v20 = a12;
  v20[1] = a13;
  *(a9 + v17[11]) = a14;
  return result;
}

unint64_t sub_23FFABB4C()
{
  v1 = *v0;
  v2 = 0x44496D657469;
  v3 = 0x726F4D6E7261656CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79654B676F6CLL;
  if (v1 != 2)
  {
    v5 = 0x656372756F73;
  }

  if (*v0)
  {
    v2 = 0x496E6F6973726576;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FFABC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23FFB013C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23FFABC74(uint64_t a1)
{
  v2 = sub_23FFAE460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFABCB0(uint64_t a1)
{
  v2 = sub_23FFAE460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B48, &qword_23FFE2DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFAE460();
  sub_23FFD9ACC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    sub_23FFD989C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 2;
    sub_23FFD98EC();
    v17 = type metadata accessor for InstallSheetContext(0);
    v18 = v17[7];
    LOBYTE(v27) = 3;
    type metadata accessor for InstallSheetContext.Source(0);
    sub_23FFAD75C(&qword_27E3A3B58, type metadata accessor for InstallSheetContext.Source);
    sub_23FFD991C();
    LOBYTE(v27) = *(v3 + v17[8]);
    v29 = 4;
    sub_23FFAE4B4();
    sub_23FFD991C();
    v19 = (v3 + v17[9]);
    v20 = v19[1];
    v27 = *v19;
    v28 = v20;
    v29 = 5;
    sub_23FFA7094(v27, v20);
    sub_23FF70D64();
    sub_23FFD98CC();
    sub_23FF6EC6C(v27, v28);
    v21 = (v3 + v17[10]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v27) = 6;
    sub_23FFD98EC();
    v24 = *(v3 + v17[11]);
    LOBYTE(v27) = 7;
    sub_23FFD98FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InstallSheetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for InstallSheetContext.Source(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3B68, &qword_23FFE2DB8);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v10 = &v37 - v9;
  v11 = type metadata accessor for InstallSheetContext(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23FFAE460();
  v40 = v10;
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v17 = v39;
  LOBYTE(v43) = 0;
  *v14 = sub_23FFD980C();
  v14[1] = v19;
  LOBYTE(v43) = 1;
  v14[2] = sub_23FFD97BC();
  v14[3] = v20;
  LOBYTE(v43) = 2;
  v21 = sub_23FFD980C();
  v37 = 0;
  v14[4] = v21;
  v14[5] = v22;
  LOBYTE(v43) = 3;
  sub_23FFAD75C(&qword_27E3A3B70, type metadata accessor for InstallSheetContext.Source);
  v23 = v37;
  sub_23FFD983C();
  v37 = v23;
  if (v23)
  {
    (*(v17 + 8))(v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v24 = v14[1];

    v26 = v14[3];

    v25 = v14[5];
  }

  else
  {
    sub_23FFAE18C(v7, v14 + v11[7], type metadata accessor for InstallSheetContext.Source);
    v44 = 4;
    sub_23FFAE508();
    v27 = v40;
    v28 = v41;
    v29 = v37;
    sub_23FFD983C();
    if (v29)
    {
      (*(v17 + 8))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v30 = v14[1];

      v31 = v14[3];

      v32 = v14[5];

      return sub_23FFADC28(v14 + v11[7], type metadata accessor for InstallSheetContext.Source);
    }

    else
    {
      *(v14 + v11[8]) = v43;
      v44 = 5;
      sub_23FF71690();
      sub_23FFD97EC();
      *(v14 + v11[9]) = v43;
      LOBYTE(v43) = 6;
      v33 = sub_23FFD980C();
      v34 = (v14 + v11[10]);
      *v34 = v33;
      v34[1] = v35;
      LOBYTE(v43) = 7;
      v36 = sub_23FFD981C();
      (*(v17 + 8))(v27, v28);
      *(v14 + v11[11]) = v36 & 1;
      sub_23FFADBC0(v14, v38, type metadata accessor for InstallSheetContext);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return sub_23FFADC28(v14, type metadata accessor for InstallSheetContext);
    }
  }
}

uint64_t sub_23FFAC5DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23FFD8EDC();
    if (v10)
    {
      v11 = sub_23FFD8EFC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23FFD8EEC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23FFD8EDC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23FFD8EFC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23FFD8EEC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23FFAC80C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23FFAC99C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23FF62F84(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_23FFAC5DC(v14, a3, a4, &v13);
  v10 = v4;
  sub_23FF62F84(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_23FFAC99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23FFD8EDC();
  v11 = result;
  if (result)
  {
    result = sub_23FFD8EFC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23FFD8EEC();
  sub_23FFAC5DC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23FFACA54(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23FF71730(a3, a4);
          return sub_23FFAC80C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s15AppDistribution19InstallSheetContextV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for InstallSheetContext.Source(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v66 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v66 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v66 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = (&v66 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D40, &qword_23FFE3FF8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = (&v66 + *(v31 + 56) - v32);
  v34 = a1;
  v35 = &v66 - v32;
  sub_23FFADBC0(v34, &v66 - v32, type metadata accessor for InstallSheetContext.Source);
  sub_23FFADBC0(v69, v33, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23FFADBC0(v35, v20, type metadata accessor for InstallSheetContext.Source);
      v53 = *v20;
      v52 = v20[1];
      v55 = v20[2];
      v54 = v20[3];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v57 = v33[2];
        v56 = v33[3];
        if (v53 == *v33 && v52 == v33[1])
        {
          v62 = v33[1];
        }

        else
        {
          v59 = v33[1];
          v60 = sub_23FFD996C();

          if ((v60 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (v55 == v57 && v54 == v56)
        {
          goto LABEL_43;
        }

LABEL_44:
        v64 = sub_23FFD996C();

        if (v64)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    sub_23FFADBC0(v35, v17, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v46 = v68;
      sub_23FFAE18C(v33, v68, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v47 = _s15AppDistribution19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(v17, v46);
      v48 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
      sub_23FFADC28(v46, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v49 = v17;
LABEL_35:
      sub_23FFADC28(v49, v48);
      sub_23FFADC28(v35, type metadata accessor for InstallSheetContext.Source);
      return v47;
    }

    v50 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    v51 = v17;
LABEL_31:
    sub_23FFADC28(v51, v50);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23FFADBC0(v35, v28, type metadata accessor for InstallSheetContext.Source);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23FFAE18C(v33, v12, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v47 = _s15AppDistribution19InstallSheetContextV6SourceO0a5StoredE0V2eeoiySbAG_AGtFZ_0(v28, v12);
      v48 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
      sub_23FFADC28(v12, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v49 = v28;
      goto LABEL_35;
    }

    v50 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
    v51 = v28;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23FFADBC0(v35, v23, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v61 = v67;
      sub_23FFAE18C(v33, v67, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v47 = _s15AppDistribution19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(v23, v61);
      v48 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      sub_23FFADC28(v61, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v49 = v23;
      goto LABEL_35;
    }

    v50 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
    v51 = v23;
    goto LABEL_31;
  }

  sub_23FFADBC0(v35, v26, type metadata accessor for InstallSheetContext.Source);
  v38 = *v26;
  v37 = v26[1];
  v40 = v26[2];
  v39 = v26[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v33[2];
    v41 = v33[3];
    if (v38 == *v33 && v37 == v33[1])
    {
      v63 = v33[1];

LABEL_41:
      if (v40 == v42 && v39 == v41)
      {
LABEL_43:

LABEL_45:
        sub_23FFADC28(v35, type metadata accessor for InstallSheetContext.Source);
        return 1;
      }

      goto LABEL_44;
    }

    v44 = v33[1];
    v45 = sub_23FFD996C();

    if (v45)
    {
      goto LABEL_41;
    }

LABEL_23:

LABEL_47:
    sub_23FFADC28(v35, type metadata accessor for InstallSheetContext.Source);
    return 0;
  }

LABEL_28:

LABEL_32:
  sub_23FF64248(v35, &qword_27E3A3D40, &qword_23FFE3FF8);
  return 0;
}

BOOL _s15AppDistribution19InstallSheetContextV6SourceO0a5StoredE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_23FFD8F6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D48, &unk_23FFE4000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_23FFD996C() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_23FFD996C() & 1) == 0)
  {
    return 0;
  }

  v32 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v17 = *(v32 + 28);
  v18 = *(v13 + 48);
  sub_23FFA6FE0(a1 + v17, v16);
  sub_23FFA6FE0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23FF64248(v16, &qword_27E3A2418, &qword_23FFDADC0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_23FFA6FE0(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_23FF64248(v16, &qword_27E3A3D48, &unk_23FFE4000);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_23FFAD75C(&qword_27E3A3D50, MEMORY[0x277CC9260]);
  v20 = sub_23FFD932C();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_23FF64248(v16, &qword_27E3A2418, &qword_23FFDADC0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = *(v32 + 32);
  v23 = a1 + v22;
  v25 = *(a1 + v22);
  v24 = *(v23 + 1);
  v26 = (a2 + v22);
  v28 = *v26;
  v27 = v26[1];
  if (v24 >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      sub_23FFA7094(v25, *(v23 + 1));
      sub_23FFA7094(v28, v27);
      sub_23FF6EC6C(v25, v24);
      return 1;
    }

    goto LABEL_19;
  }

  if (v27 >> 60 == 15)
  {
LABEL_19:
    sub_23FFA7094(v25, *(v23 + 1));
    sub_23FFA7094(v28, v27);
    sub_23FF6EC6C(v25, v24);
    sub_23FF6EC6C(v28, v27);
    return 0;
  }

  sub_23FFA7094(v25, *(v23 + 1));
  sub_23FFA7094(v28, v27);
  v30 = sub_23FFACA54(v25, v24, v28, v27);
  sub_23FF6EC6C(v28, v27);
  sub_23FF6EC6C(v25, v24);
  return (v30 & 1) != 0;
}

unint64_t sub_23FFAD708()
{
  result = qword_27E3A39E8;
  if (!qword_27E3A39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A39E8);
  }

  return result;
}

uint64_t sub_23FFAD75C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL _s15AppDistribution19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23FFD8F6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D48, &unk_23FFE4000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23FFD996C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23FFD996C() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_23FFD996C() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_23FFD996C() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v17 = *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);
  v18 = *(v13 + 48);
  sub_23FFA6FE0(a1 + v17, v16);
  sub_23FFA6FE0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23FF64248(v16, &qword_27E3A2418, &qword_23FFDADC0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_23FFA6FE0(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_19:
    sub_23FF64248(v16, &qword_27E3A3D48, &unk_23FFE4000);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_23FFAD75C(&qword_27E3A3D50, MEMORY[0x277CC9260]);
  v21 = sub_23FFD932C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_23FF64248(v16, &qword_27E3A2418, &qword_23FFDADC0);
  return (v21 & 1) != 0;
}

unint64_t sub_23FFADB6C()
{
  result = qword_27E3A3A00;
  if (!qword_27E3A3A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A00);
  }

  return result;
}

uint64_t sub_23FFADBC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23FFADC28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s15AppDistribution19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_23FFD8F6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3D48, &unk_23FFE4000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23FFD996C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23FFD996C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23FFD996C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);
  v18 = *(v13 + 48);
  sub_23FFA6FE0(a1 + v17, v16);
  sub_23FFA6FE0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23FF64248(v16, &qword_27E3A2418, &qword_23FFDADC0);
      return 1;
    }

    goto LABEL_15;
  }

  sub_23FFA6FE0(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_15:
    sub_23FF64248(v16, &qword_27E3A3D48, &unk_23FFE4000);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_23FFAD75C(&qword_27E3A3D50, MEMORY[0x277CC9260]);
  v21 = sub_23FFD932C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_23FF64248(v16, &qword_27E3A2418, &qword_23FFDADC0);
  return (v21 & 1) != 0;
}

unint64_t sub_23FFAE01C()
{
  result = qword_27E3A3A18;
  if (!qword_27E3A3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A18);
  }

  return result;
}

unint64_t sub_23FFAE090()
{
  result = qword_27E3A3A60;
  if (!qword_27E3A3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A60);
  }

  return result;
}

unint64_t sub_23FFAE0E4()
{
  result = qword_27E3A3A68;
  if (!qword_27E3A3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A68);
  }

  return result;
}

unint64_t sub_23FFAE138()
{
  result = qword_27E3A3A78;
  if (!qword_27E3A3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A78);
  }

  return result;
}

uint64_t sub_23FFAE18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FFAE1F4()
{
  result = qword_27E3A3A80;
  if (!qword_27E3A3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A80);
  }

  return result;
}

unint64_t sub_23FFAE248()
{
  result = qword_27E3A3A90;
  if (!qword_27E3A3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A90);
  }

  return result;
}

unint64_t sub_23FFAE29C()
{
  result = qword_27E3A3A98;
  if (!qword_27E3A3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3A98);
  }

  return result;
}

unint64_t sub_23FFAE2F0()
{
  result = qword_27E3A3AA8;
  if (!qword_27E3A3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3AA8);
  }

  return result;
}

unint64_t sub_23FFAE344()
{
  result = qword_27E3A3B18;
  if (!qword_27E3A3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B18);
  }

  return result;
}

unint64_t sub_23FFAE398()
{
  result = qword_27E3A3B20;
  if (!qword_27E3A3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B20);
  }

  return result;
}

unint64_t sub_23FFAE3EC()
{
  result = qword_27E3A3B28;
  if (!qword_27E3A3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B28);
  }

  return result;
}

unint64_t sub_23FFAE460()
{
  result = qword_27E3A3B50;
  if (!qword_27E3A3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B50);
  }

  return result;
}

unint64_t sub_23FFAE4B4()
{
  result = qword_27E3A3B60;
  if (!qword_27E3A3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B60);
  }

  return result;
}

unint64_t sub_23FFAE508()
{
  result = qword_27E3A3B78;
  if (!qword_27E3A3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B78);
  }

  return result;
}

unint64_t sub_23FFAE560()
{
  result = qword_27E3A3B80;
  if (!qword_27E3A3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3A3B80);
  }

  return result;
}

void sub_23FFAE5DC()
{
  sub_23FF9D0DC(319, &qword_27E3A2478);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InstallSheetContext.Source(319);
    if (v1 <= 0x3F)
    {
      sub_23FF9D0DC(319, &qword_27E3A3B98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23FFAE6BC()
{
  sub_23FFAE7E0(319, &qword_27E3A3BB0, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  if (v0 <= 0x3F)
  {
    sub_23FF7EE70(319, &qword_27E3A3BB8);
    if (v1 <= 0x3F)
    {
      sub_23FFAE7E0(319, &qword_27E3A3BC0, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      if (v2 <= 0x3F)
      {
        sub_23FF7EE70(319, &qword_27E3A3BC8);
        if (v3 <= 0x3F)
        {
          sub_23FFAE7E0(319, &qword_27E3A3BD0, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23FFAE7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23FFAE854()
{
  sub_23FF59878();
  if (v0 <= 0x3F)
  {
    sub_23FF9D0DC(319, &qword_27E3A3B98);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23FFAE930()
{
  sub_23FF59878();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23FFAE9E8()
{
  sub_23FF59878();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}