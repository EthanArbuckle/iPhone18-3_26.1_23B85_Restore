uint64_t sub_142A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_142A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3940) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_142630(v4, a1);
}

uint64_t sub_142AF8(uint64_t a1)
{
  v2 = type metadata accessor for ActionButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LegacyActionMenu.Child.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LegacyActionMenu.Child(0) + 20);

  return sub_4E45C(v3, a1);
}

uint64_t LegacyActionMenu.Child.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LegacyActionMenu.Child(0) + 20);

  return sub_F0030(a1, v3);
}

uint64_t LegacyActionMenu.Child.presentation.setter(char a1)
{
  result = type metadata accessor for LegacyActionMenu.Child(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t LegacyActionMenu.Child.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LegacyActionMenu.Child(0) + 28);

  return sub_1F958(v3, a1);
}

uint64_t LegacyActionMenu.Child.action.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for LegacyActionMenu.Child(0) + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v3);

  return sub_1D4F0(a1, v1 + v3);
}

uint64_t LegacyActionMenu.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LegacyActionMenu(0) + 24);

  return sub_4E45C(v3, a1);
}

uint64_t LegacyActionMenu.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LegacyActionMenu(0) + 24);

  return sub_F0030(a1, v3);
}

uint64_t LegacyActionMenu.children.getter()
{
  type metadata accessor for LegacyActionMenu(0);
}

uint64_t LegacyActionMenu.children.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LegacyActionMenu(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t LegacyActionMenu.Child.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v43 = sub_3EBF94();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_3EBDF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  sub_3EBE04();
  v33 = sub_3EBDC4();
  v36 = v15;
  v16 = *(v11 + 8);
  v39 = v11 + 8;
  v40 = v10;
  v37 = v16;
  v16(v14, v10);
  v17 = sub_3E7784();
  v18 = a1;
  sub_3EBE04();
  v42 = v4;
  v19 = *(v4 + 16);
  v20 = v35;
  v21 = v43;
  v19(v6, v35, v43);
  sub_1439BC(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v41 = v9;
  sub_3EC574();
  sub_3EBE04();
  v19(v6, v20, v21);
  sub_4CDFC();
  sub_3EC574();
  v22 = v45;
  v23 = v46;
  v24 = v38;
  sub_3EC244();
  if (v24)
  {

    (*(v42 + 8))(v20, v43);
    v37(v18, v40);
    return sub_1433A4(v41);
  }

  else
  {
    v26 = type metadata accessor for LegacyActionMenu.Child(0);
    v27 = v26[5];
    v28 = v34;
    (*(*(v17 - 8) + 56))(v34 + v27, 1, 1, v17);
    v29 = v36;
    *v28 = v33;
    v28[1] = v29;
    v30 = v22;
    v31 = v41;
    sub_14340C(v41, v28 + v27);
    (*(v42 + 8))(v20, v43);
    v37(v18, v40);
    sub_1433A4(v31);
    if (v23)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    *(v28 + v26[6]) = v32;
    return sub_1D4F0(&v44, v28 + v26[7]);
  }
}

uint64_t sub_1433A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14340C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t LegacyActionMenu.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v40 = a3;
  v45 = sub_3EBF94();
  v53 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_3EBDF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_3EBE04();
  v39 = sub_3EBDC4();
  v48 = v20;
  v21 = *(v11 + 8);
  v21(v19, v10);
  sub_3EBE04();
  v38 = sub_3EBDC4();
  v44 = v22;
  v50 = v10;
  v46 = v21;
  v42 = v11 + 8;
  v21(v16, v10);
  v23 = sub_3E7784();
  sub_3EBE04();
  v24 = *(v53 + 16);
  v25 = v47;
  v26 = v45;
  v24(v43, v47, v45);
  sub_1439BC(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v52 = v9;
  v27 = v25;
  v43 = v23;
  sub_3EC574();
  sub_3EBE04();
  v24(v49, v25, v26);
  type metadata accessor for LegacyActionMenu.Child(0);
  sub_1439BC(&qword_4F3950, type metadata accessor for LegacyActionMenu.Child);
  v28 = v51;
  v29 = sub_3ED624();
  if (v28)
  {

    (*(v53 + 8))(v25, v26);
    v46(a1, v50);
    return sub_1433A4(v52);
  }

  else
  {
    v31 = v29;
    (*(v53 + 8))(v27, v26);
    v46(a1, v50);
    v32 = type metadata accessor for LegacyActionMenu(0);
    v33 = *(v32 + 24);
    v34 = v40;
    (*(*(v43 - 1) + 56))(v40 + v33, 1, 1);
    v35 = v48;
    *v34 = v39;
    v34[1] = v35;
    v36 = v44;
    v34[2] = v38;
    v34[3] = v36;
    result = sub_F0030(v52, v34 + v33);
    *(v34 + *(v32 + 28)) = v31;
  }

  return result;
}

uint64_t sub_1439BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_143A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_143B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_143BD8()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_143CD4(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_143CD4(319, &unk_4F39C0, type metadata accessor for LegacyActionMenu.Child, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_143CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_143D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_143E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_143EFC()
{
  sub_1972C();
  if (v0 <= 0x3F)
  {
    sub_143CD4(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_83E10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

Swift::Int sub_143FD4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_1440D0()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_1441B4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_14431C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_144438()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_14453C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

Swift::Int sub_144638(uint64_t a1, char a2)
{
  sub_3EE954();
  if (a2)
  {
    v3 = 0x4046000000000000;
  }

  else
  {
    v3 = 0x4040000000000000;
  }

  sub_3EE994(v3);
  return sub_3EE9A4();
}

Swift::Int sub_144688()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t ActionMenu.init(id:title:subtitle:icon:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v17 = type metadata accessor for ActionMenu(0);
  v18 = *(v17 + 28);
  v19 = sub_3E7784();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_51F9C(a7, &a9[v18], &qword_4F1D50);
  *&a9[*(v17 + 32)] = a8;
  return result;
}

uint64_t sub_1448DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3938);
  result = swift_allocObject();
  *(result + 16) = 0;
  off_4F3A90[0] = result;
  return result;
}

uint64_t ActionMenu.Child.id.getter()
{
  v1 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ActionMenu.Item(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ActionMenu.Child(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_148C44(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_148CA8(v9, v3, type metadata accessor for ActionMenu);
      v11 = *v3;

      v12 = type metadata accessor for ActionMenu;
      v13 = v3;
    }

    else
    {
      sub_148CA8(v9, v6, type metadata accessor for ActionMenu.Item);
      v11 = *v6;

      v12 = type metadata accessor for ActionMenu.Item;
      v13 = v6;
    }

    sub_148D10(v13, v12);
  }

  else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v11 = *v9;
  }

  else
  {
    return *v9;
  }

  return v11;
}

uint64_t sub_144BB8@<X0>(uint64_t *a1@<X8>)
{
  result = ActionMenu.Child.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContentUnavailablePage.Presentation.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ActionMenu.Item.role.setter(char a1)
{
  result = type metadata accessor for ActionMenu.Item(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ActionMenu.Item.state.setter(char a1)
{
  result = type metadata accessor for ActionMenu.Item(0);
  *(v1 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t ActionMenu.Item.init(id:title:subtitle:icon:role:state:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a10, uint64_t a11)
{
  v17 = type metadata accessor for ActionMenu.Item(0);
  v18 = v17[7];
  v19 = sub_3E7784();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v17[8];
  v21 = &a9[v17[10]];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  sub_51F9C(a7, &a9[v18], &qword_4F1D50);
  a9[v20] = a8;
  a9[v17[9]] = a10 & 1;
  return sub_51F9C(a11, v21, &qword_4EDE00);
}

uint64_t ActionMenu.ItemRole.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_1450F4(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_3EE624(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ActionMenu.ItemState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_145168(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710895;
  }

  else
  {
    v3 = 28271;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_1451FC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_14526C()
{
  sub_3ED394();
}

Swift::Int sub_1452C8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_145340(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ActionMenu.children.getter()
{
  type metadata accessor for ActionMenu(0);
}

uint64_t ActionMenu.children.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionMenu(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t static ActionMenu.Child.item(id:title:subtitle:icon:role:state:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11)
{
  v28 = a3;
  v29 = a5;
  v30 = a10;
  v31 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  sub_FBD0(a7, &v28 - v18, &qword_4F1D50);
  sub_FBD0(a11, v32, &qword_4EDE00);
  v20 = type metadata accessor for ActionMenu.Item(0);
  v21 = v20[7];
  v22 = sub_3E7784();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = v20[8];
  v24 = &a9[v20[10]];
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  v25 = v29;
  *(a9 + 2) = v28;
  *(a9 + 3) = a4;
  *(a9 + 4) = v25;
  *(a9 + 5) = a6;

  sub_51F9C(v19, &a9[v21], &qword_4F1D50);
  v26 = v30;
  a9[v23] = v31;
  a9[v20[9]] = v26 & 1;
  sub_51F9C(v32, v24, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ActionMenu.Child.submenu(id:title:subtitle:icon:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v24 = a3;
  v25 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  sub_FBD0(a7, &v24 - v17, &qword_4F1D50);
  v19 = type metadata accessor for ActionMenu(0);
  v20 = *(v19 + 28);
  v21 = sub_3E7784();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  *a9 = a1;
  *(a9 + 1) = a2;
  v22 = v25;
  *(a9 + 2) = v24;
  *(a9 + 3) = a4;
  *(a9 + 4) = v22;
  *(a9 + 5) = a6;

  sub_51F9C(v18, &a9[v20], &qword_4F1D50);
  *&a9[*(v19 + 32)] = a8;
  type metadata accessor for ActionMenu.Child(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static ActionMenu.Child.deferred(id:factory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return sub_145964(a1, a2, a3, a4, a5);
}

{
  return sub_145964(a1, a2, a3, a4, a5);
}

uint64_t sub_145964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1459D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x646E696B24;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_145A6C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_145AE0()
{
  sub_3ED394();
}

Swift::Int sub_145B40()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_145BBC@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_3EE624(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_145C18(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (!*v1)
  {
    v2 = 0x646E696B24;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_145C48()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x646E696B24;
  }
}

uint64_t sub_145C74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_4B19F0;
  v9._object = a2;
  v6 = sub_3EE624(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_145CD8(uint64_t a1)
{
  v2 = sub_148D70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_145D14(uint64_t a1)
{
  v2 = sub_148D70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActionMenu.Child.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3A98);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v6 = type metadata accessor for ActionMenu.Child(0);
  __chkstk_darwin(v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_148D70();
  v19 = v47;
  sub_3EE9F4();
  if (!v19)
  {
    v20 = v14;
    v47 = v17;
    v21 = v45;
    v22 = v46;
    LOBYTE(v49) = 0;
    v23 = sub_3EE694();
    if (v23 == 1835365481 && v24 == 0xE400000000000000)
    {
      v28 = v22;
LABEL_9:

      sub_1F958(v48, &v49);
      ActionMenu.Item.init(from:)(&v49, v20);
      (*(v21 + 8))(v5, v28);
      swift_storeEnumTagMultiPayload();
      v29 = v47;
      sub_148CA8(v20, v47, type metadata accessor for ActionMenu.Child);
      v30 = v44;
      goto LABEL_21;
    }

    v26 = v22;
    v43 = v23;
    v27 = v24;
    if (sub_3EE804())
    {
      v28 = v26;
      goto LABEL_9;
    }

    v42 = v5;
    if (v43 == 0x756E656D627573 && v27 == 0xE700000000000000)
    {
      v33 = v26;

      v30 = v44;
    }

    else
    {
      v32 = sub_3EE804();
      v30 = v44;
      if ((v32 & 1) == 0)
      {
        v36 = v43 == 0x6574616C706D6574 && v27 == 0xE800000000000000;
        if (!v36 && (sub_3EE804() & 1) == 0)
        {
          v51 = 0;
          v49 = 0;
          v50 = 0xE000000000000000;
          sub_3EE3C4(42);

          v49 = 0x20646E696B24;
          v50 = 0xE600000000000000;
          v52._countAndFlagsBits = v43;
          v52._object = v27;
          sub_3ED3D4(v52);

          v53._object = 0x80000000004282D0;
          v53._countAndFlagsBits = 0xD000000000000022;
          sub_3ED3D4(v53);
          sub_3EE444();
          swift_allocError();
          sub_148DC4();
          v41 = v42;
          sub_3EE414();

          swift_willThrow();
          (*(v21 + 8))(v41, v26);
          return __swift_destroy_boxed_opaque_existential_1Tm(v48);
        }

        v37 = v21;
        v51 = 1;
        sub_148E28();
        v38 = v26;
        v39 = v42;
        sub_3EE6C4();
        (*(v37 + 8))(v39, v38);
        v40 = v50;
        *v8 = v49;
        v8[1] = v40;
        swift_storeEnumTagMultiPayload();
        v34 = v8;
        goto LABEL_20;
      }

      v33 = v26;
    }

    sub_1F958(v48, &v49);
    ActionMenu.init(from:)(&v49, v11);
    (*(v21 + 8))(v42, v33);
    swift_storeEnumTagMultiPayload();
    v34 = v11;
LABEL_20:
    v29 = v47;
    sub_148CA8(v34, v47, type metadata accessor for ActionMenu.Child);
LABEL_21:
    sub_148CA8(v29, v30, type metadata accessor for ActionMenu.Child);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

uint64_t ActionMenu.Item.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v69 = &v55[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v7 = &v55[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3778);
  __chkstk_darwin(v8 - 8);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v55[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3AB8);
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v55[-v15];
  v17 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = sub_148E7C();
  v19 = v71;
  sub_3EE9F4();
  if (!v19)
  {
    v64 = v18;
    v65 = v7;
    v71 = v10;
    v20 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3AC8);
    v76 = 2;
    sub_148ED0();
    sub_3EE684();
    v21 = v16;
    v22 = v73;
    v23 = v74;
    LOBYTE(v73) = 0;
    v24 = sub_3EE694();
    v25 = v14;
    v61 = v23;
    v62 = v26;
    v60 = v24;
    v63 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37B8);
    v76 = 1;
    sub_1413D0();
    sub_3EE684();
    v29 = v73;
    v28 = v74;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37D0);
    LOBYTE(v73) = 3;
    sub_1414E4();
    sub_3EE684();
    v58 = v29;
    v59 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3AE8);
    v76 = 4;
    sub_148FD8();
    sub_3EE684();
    v31 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B10);
    v76 = 5;
    sub_149134();
    sub_3EE684();
    v75 = v31;
    v57 = v25;
    v56 = v73;
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    sub_3EE9D4();
    v32 = v65;
    sub_3EBF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
    sub_3ED0C4();

    (*(v66 + 8))(v32, v67);
    if (!v73)
    {
      sub_4F8F0();
    }

    v76 = 6;
    v33 = sub_DCD8C(&v73);
    v34 = v61;
    if (v61 >= 2)
    {
      (*(v20 + 8))(v21, v57, v33);
      v40 = v68;
      v39 = v69;
      v38 = v63;
    }

    else
    {
      v35 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v37 = v36;
      (*(v20 + 8))(v21, v57);
      sub_1414D0(v63, v34);
      v38 = v35;
      v34 = v37;
      v40 = v68;
      v39 = v69;
    }

    v42 = v58;
    v41 = v59;
    if (v59 == &dword_0 + 1)
    {
      v42 = 0;
    }

    v70 = v42;
    if (v59 == &dword_0 + 1)
    {
      v41 = 0;
    }

    v68 = v41;
    v43 = v71;
    sub_149290(v13, v71);
    if ((*(*(v30 - 8) + 48))(v43, 1, v30) == 1)
    {
      sub_FCF8(v43, &qword_4F3778);
      v44 = sub_3E7784();
      (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
    }

    else
    {
      sub_FBD0(v43, v39, &qword_4F1D50);
      sub_FCF8(v43, &qword_4F37D0);
    }

    v63 = v38;
    if (v75 == 3)
    {
      v45 = 2;
    }

    else
    {
      v45 = v75;
    }

    if (v56 == 3)
    {
      v46 = 1;
    }

    else
    {
      v46 = (v56 == 2) | v56;
    }

    LODWORD(v71) = v46;
    v47 = type metadata accessor for ActionMenu.Item(0);
    v48 = v47[7];
    v49 = sub_3E7784();
    (*(*(v49 - 8) + 56))(&v40[v48], 1, 1, v49);
    v50 = v47[8];
    v51 = &v40[v47[10]];
    *(v51 + 32) = 0;
    *v51 = 0u;
    *(v51 + 16) = 0u;
    *v40 = v63;
    *(v40 + 1) = v34;
    v52 = v62;
    *(v40 + 2) = v60;
    *(v40 + 3) = v52;
    v53 = v69;
    v54 = v68;
    *(v40 + 4) = v70;
    *(v40 + 5) = v54;
    sub_51F9C(v53, &v40[v48], &qword_4F1D50);
    v40[v50] = v45;
    v40[v47[9]] = v71 & 1;
    sub_51F9C(&v73, v51, &qword_4EDE00);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

uint64_t ActionMenu.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3778);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B38);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_149300();
  v17 = v56;
  sub_3EE9F4();
  if (!v17)
  {
    v56 = v13;
    v53 = v5;
    v54 = v11;
    v52 = v8;
    v18 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3AC8);
    v60 = 0;
    sub_148ED0();
    v19 = v15;
    sub_3EE684();
    v20 = v12;
    v21 = v58;
    v22 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37B8);
    v60 = 1;
    sub_1413D0();
    sub_3EE684();
    v51 = v22;
    v24 = v58;
    v23 = v59;
    v60 = 2;
    sub_3EE684();
    v49 = v24;
    v50 = v23;
    v25 = v58;
    v26 = v59;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F37D0);
    LOBYTE(v58) = 3;
    sub_1414E4();
    sub_3EE684();
    v47 = v25;
    v48 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B48);
    v60 = 4;
    sub_149354();
    sub_3EE6C4();
    v29 = v51;
    v30 = v19;
    v46 = v58;
    if (v51 < 2)
    {
      v31 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v33 = v32;
      sub_1414D0(v21, v29);
      v21 = v31;
      v29 = v33;
    }

    v34 = v52;
    v35 = v27;
    (*(v56 + 8))(v30, v20);
    v56 = v21;
    if (v50 < 2)
    {
      sub_1414D0(v49, v50);
      v49 = 0;
      v50 = 0xE000000000000000;
    }

    v36 = v18;
    v37 = v53;
    if (v48 == 1)
    {
      v38 = 0;
    }

    else
    {
      v38 = v47;
    }

    if (v48 == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = v48;
    }

    sub_149290(v54, v34);
    v40 = v29;
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {
      sub_FCF8(v34, &qword_4F3778);
      v41 = sub_3E7784();
      (*(*(v41 - 8) + 56))(v37, 1, 1, v41);
    }

    else
    {
      sub_FBD0(v34, v37, &qword_4F1D50);
      sub_FCF8(v34, &qword_4F37D0);
    }

    v42 = type metadata accessor for ActionMenu(0);
    v43 = *(v42 + 28);
    v44 = sub_3E7784();
    (*(*(v44 - 8) + 56))(&v36[v43], 1, 1, v44);
    *v36 = v56;
    *(v36 + 1) = v40;
    v45 = v50;
    *(v36 + 2) = v49;
    *(v36 + 3) = v45;
    *(v36 + 4) = v38;
    *(v36 + 5) = v39;
    sub_51F9C(v37, &v36[v43], &qword_4F1D50);
    *&v36[*(v42 + 32)] = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

uint64_t ActionMenu.Child.encode(to:)(void *a1)
{
  v2 = sub_3EBE74();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3ECE84();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v6 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMenu.Item(0);
  __chkstk_darwin(v9 - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMenu.Child(0);
  __chkstk_darwin(v12);
  v14 = (v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B70);
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  __chkstk_darwin(v15);
  v18 = v40 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_148D70();
  v45 = v18;
  sub_3EEA14();
  sub_148C44(v44, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_148CA8(v14, v8, type metadata accessor for ActionMenu);
      LOBYTE(v49) = 0;
      v38 = v45;
      v37 = v46;
      v39 = v48;
      sub_3EE734();
      if (!v39)
      {
        ActionMenu.encode(to:)(a1);
      }

      sub_148D10(v8, type metadata accessor for ActionMenu);
      return (*(v47 + 8))(v38, v37);
    }

    else
    {
      sub_148CA8(v14, v11, type metadata accessor for ActionMenu.Item);
      LOBYTE(v49) = 0;
      v27 = v45;
      v26 = v46;
      v28 = v48;
      sub_3EE734();
      if (!v28)
      {
        ActionMenu.Item.encode(to:)(a1);
      }

      sub_148D10(v11, type metadata accessor for ActionMenu.Item);
      return (*(v47 + 8))(v27, v26);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v29 = *v14;
    v30 = v14[1];

    v31 = v41;
    sub_3ECE24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE64();
    v55._object = 0x8000000000428330;
    v55._countAndFlagsBits = 0xD000000000000022;
    sub_3EBE54(v55);
    v51 = &type metadata for String;
    v49 = v29;
    v50 = v30;
    sub_3EBE34();
    sub_FCF8(&v49, &unk_501090);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_3EBE54(v56);
    sub_3EBE84();
    v32 = v43;
    sub_3ECBA4();

    (*(v42 + 8))(v31, v32);
    return (*(v47 + 8))(v45, v46);
  }

  else
  {
    v20 = v45;
    if (EnumCaseMultiPayload == 3)
    {
      v21 = *v14;
      v22 = v14[1];

      v23 = v41;
      sub_3ECE24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
      sub_3EBE94();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_3EBE64();
      v53._countAndFlagsBits = 0xD000000000000025;
      v53._object = 0x8000000000428300;
      sub_3EBE54(v53);
      v51 = &type metadata for String;
      v49 = v21;
      v50 = v22;
      sub_3EBE34();
      sub_FCF8(&v49, &unk_501090);
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      sub_3EBE54(v54);
      sub_3EBE84();
      v24 = v43;
      sub_3ECBA4();

      (*(v42 + 8))(v23, v24);
      return (*(v47 + 8))(v20, v46);
    }

    else
    {
      v34 = *v14;
      v33 = v14[1];
      LOBYTE(v49) = 0;
      v35 = v46;
      v36 = v48;
      sub_3EE734();
      if (!v36)
      {
        v49 = v34;
        v50 = v33;
        v52 = 1;
        sub_1494F4();
        sub_3EE764();
      }

      (*(v47 + 8))(v20, v35);
    }
  }
}

uint64_t ActionMenu.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  __chkstk_darwin(v3);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_148E7C();
  sub_3EEA14();
  v11 = v1[1];
  v25 = *v1;
  v26 = v11;
  v27 = 2;
  sub_1494F4();
  v12 = v24;
  sub_3EE764();
  if (v12)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v24 = v10;
  v14 = v7;
  LOBYTE(v25) = 0;
  sub_3EE734();
  v15 = type metadata accessor for ActionMenu.Item(0);
  v20 = v6;
  LOBYTE(v25) = 3;
  sub_3E7784();
  sub_1494AC(&qword_4F00E0, &type metadata accessor for ArtworkModel);
  sub_3EE724();
  LOBYTE(v25) = *(v1 + v15[8]);
  v27 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B00);
  sub_149548();
  sub_3EE764();
  LOBYTE(v25) = *(v1 + v15[9]);
  v27 = 5;
  sub_149620();
  sub_3EE764();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3EEA04();
  v16 = v21;
  sub_3EBF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
  sub_3ED0C4();

  (*(v23 + 8))(v16, v22);
  if (!v25)
  {
    sub_4F8F0();
  }

  v17 = v20;
  v18 = v15[10];
  LOBYTE(v25) = 6;
  sub_DD0B8(v1 + v18);
  return (*(v14 + 8))(v9, v17);
}

uint64_t ActionMenu.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3BA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_149300();
  sub_3EEA14();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_1494F4();
  sub_3EE764();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_3EE734();
    LOBYTE(v14) = 2;
    sub_3EE6F4();
    v10 = type metadata accessor for ActionMenu(0);
    LOBYTE(v14) = 3;
    sub_3E7784();
    sub_1494AC(&qword_4F00E0, &type metadata accessor for ArtworkModel);
    sub_3EE724();
    v14 = *(v3 + *(v10 + 32));
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3B60);
    sub_149410(&qword_4F3BA8, &qword_4F3BB0);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_148148()
{
  sub_3ED394();
}

uint64_t sub_148238@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_14A2AC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_148268(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xE500000000000000;
  v6 = 0x6574617473;
  if (v2 != 5)
  {
    v6 = 0x6E6F69746361;
    v5 = 0xE600000000000000;
  }

  v7 = 1852793705;
  if (v2 != 3)
  {
    v7 = 1701605234;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656C746974627573;
  if (v2 != 1)
  {
    v9 = 25705;
    v8 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_148320()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6574617473;
  if (v1 != 5)
  {
    v3 = 0x6E6F69746361;
  }

  v4 = 1852793705;
  if (v1 != 3)
  {
    v4 = 1701605234;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 1)
  {
    v5 = 25705;
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

uint64_t sub_1483D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14A2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_148408(uint64_t a1)
{
  v2 = sub_148E7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_148444(uint64_t a1)
{
  v2 = sub_148E7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1484BC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_148588()
{
  sub_3ED394();
}

Swift::Int sub_148640()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_148708@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_14A2F8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_148738(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656C746974627573;
  v7 = 0xE400000000000000;
  v8 = 1852793705;
  if (v2 != 3)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1487C0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 1852793705;
  if (v1 != 3)
  {
    v4 = 0x6E6572646C696863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_148844@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_14A2F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_148878(uint64_t a1)
{
  v2 = sub_149300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1488B4(uint64_t a1)
{
  v2 = sub_149300();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t ActionMenu.ID.debugDescription.getter(uint64_t a1, void *a2)
{
  sub_3EE3C4(29);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_3ED3D4(v5);
  v6._countAndFlagsBits = 10530;
  v6._object = 0xE200000000000000;
  sub_3ED3D4(v6);
  return 0xD000000000000019;
}

unint64_t sub_1489B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_3EE3C4(29);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_3ED3D4(v4);
  v5._countAndFlagsBits = 10530;
  v5._object = 0xE200000000000000;
  sub_3ED3D4(v5);
  return 0xD000000000000019;
}

uint64_t sub_148A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_3DD9AC(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_148A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3DDA98(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_148AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3DDACC(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t _s8ShelfKit10ActionMenuV2IDVAEycfC_0()
{
  if (qword_4E89C8 != -1)
  {
    swift_once();
  }

  atomic_fetch_add((*(*off_4F3A90[0] + 136))(), 1uLL);
  sub_3EE3C4(38);

  v1._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v1);

  return 0xD000000000000024;
}

uint64_t sub_148C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenu.Child(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_148CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_148D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_148D70()
{
  result = qword_4F3AA0;
  if (!qword_4F3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AA0);
  }

  return result;
}

unint64_t sub_148DC4()
{
  result = qword_4F3AA8;
  if (!qword_4F3AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AA8);
  }

  return result;
}

unint64_t sub_148E28()
{
  result = qword_4F3AB0;
  if (!qword_4F3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AB0);
  }

  return result;
}

unint64_t sub_148E7C()
{
  result = qword_4F3AC0;
  if (!qword_4F3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AC0);
  }

  return result;
}

unint64_t sub_148ED0()
{
  result = qword_4F3AD0;
  if (!qword_4F3AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3AC8);
    sub_148F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AD0);
  }

  return result;
}

unint64_t sub_148F54()
{
  result = qword_4F3AD8;
  if (!qword_4F3AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3AE0);
    sub_148E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AD8);
  }

  return result;
}

unint64_t sub_148FD8()
{
  result = qword_4F3AF0;
  if (!qword_4F3AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3AE8);
    sub_14905C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AF0);
  }

  return result;
}

unint64_t sub_14905C()
{
  result = qword_4F3AF8;
  if (!qword_4F3AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3B00);
    sub_1490E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3AF8);
  }

  return result;
}

unint64_t sub_1490E0()
{
  result = qword_4F3B08;
  if (!qword_4F3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B08);
  }

  return result;
}

unint64_t sub_149134()
{
  result = qword_4F3B18;
  if (!qword_4F3B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3B10);
    sub_1491B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B18);
  }

  return result;
}

unint64_t sub_1491B8()
{
  result = qword_4F3B20;
  if (!qword_4F3B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3B28);
    sub_14923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B20);
  }

  return result;
}

unint64_t sub_14923C()
{
  result = qword_4F3B30;
  if (!qword_4F3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B30);
  }

  return result;
}

uint64_t sub_149290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_149300()
{
  result = qword_4F3B40;
  if (!qword_4F3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B40);
  }

  return result;
}

unint64_t sub_149354()
{
  result = qword_4F3B50;
  if (!qword_4F3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3B48);
    sub_149410(&qword_4F3B58, &qword_4F3B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B50);
  }

  return result;
}

uint64_t sub_149410(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3B60);
    sub_1494AC(a2, type metadata accessor for ActionMenu.Child);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1494AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1494F4()
{
  result = qword_4F3B78;
  if (!qword_4F3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B78);
  }

  return result;
}

unint64_t sub_149548()
{
  result = qword_4F3B88;
  if (!qword_4F3B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3B00);
    sub_1495CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B88);
  }

  return result;
}

unint64_t sub_1495CC()
{
  result = qword_4F3B90;
  if (!qword_4F3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B90);
  }

  return result;
}

unint64_t sub_149620()
{
  result = qword_4F3B98;
  if (!qword_4F3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3B98);
  }

  return result;
}

unint64_t sub_149678()
{
  result = qword_4F3BB8;
  if (!qword_4F3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3BB8);
  }

  return result;
}

unint64_t sub_1496CC()
{
  result = qword_4F3BC0;
  if (!qword_4F3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3BC0);
  }

  return result;
}

unint64_t sub_149728()
{
  result = qword_4F3BC8;
  if (!qword_4F3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3BC8);
  }

  return result;
}

unint64_t sub_149780()
{
  result = qword_4F3BD0;
  if (!qword_4F3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3BD0);
  }

  return result;
}

unint64_t sub_1497D8()
{
  result = qword_4F3BD8;
  if (!qword_4F3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3BD8);
  }

  return result;
}

unint64_t sub_149830()
{
  result = qword_4F3BE0;
  if (!qword_4F3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3BE0);
  }

  return result;
}

void sub_1498B4()
{
  sub_5FBE4(319, &qword_4E9978);
  if (v0 <= 0x3F)
  {
    sub_1499D0(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1499D0(319, &unk_4F3C50, type metadata accessor for ActionMenu.Child, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1499D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_149A44()
{
  type metadata accessor for ActionMenu.Item(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionMenu(319);
    if (v1 <= 0x3F)
    {
      sub_149AD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_149AD8()
{
  if (!qword_4F3D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1508);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F3D10);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_149CE0()
{
  sub_5FBE4(319, &qword_4E9978);
  if (v0 <= 0x3F)
  {
    sub_1499D0(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &unk_4F3DA8);
      if (v2 <= 0x3F)
      {
        sub_C30B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ActionMenu.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActionMenu.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_149F98()
{
  result = qword_4F3DF0;
  if (!qword_4F3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3DF0);
  }

  return result;
}

unint64_t sub_149FF0()
{
  result = qword_4F3DF8;
  if (!qword_4F3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3DF8);
  }

  return result;
}

unint64_t sub_14A048()
{
  result = qword_4F3E00;
  if (!qword_4F3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E00);
  }

  return result;
}

unint64_t sub_14A0A0()
{
  result = qword_4F3E08;
  if (!qword_4F3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E08);
  }

  return result;
}

unint64_t sub_14A0F8()
{
  result = qword_4F3E10;
  if (!qword_4F3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E10);
  }

  return result;
}

unint64_t sub_14A150()
{
  result = qword_4F3E18;
  if (!qword_4F3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E18);
  }

  return result;
}

unint64_t sub_14A1A8()
{
  result = qword_4F3E20;
  if (!qword_4F3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E20);
  }

  return result;
}

unint64_t sub_14A200()
{
  result = qword_4F3E28;
  if (!qword_4F3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E28);
  }

  return result;
}

unint64_t sub_14A258()
{
  result = qword_4F3E30;
  if (!qword_4F3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E30);
  }

  return result;
}

uint64_t sub_14A2AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1A40;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_14A2F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1B08;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_14A344()
{
  result = qword_4F3E38;
  if (!qword_4F3E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E38);
  }

  return result;
}

unint64_t sub_14A398()
{
  result = qword_4F3E40;
  if (!qword_4F3E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E40);
  }

  return result;
}

unint64_t sub_14A3EC()
{
  result = qword_4F3E48;
  if (!qword_4F3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E48);
  }

  return result;
}

uint64_t ActionMenu.Child.init(from:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for LegacyActionMenu.Child(0);
  v8 = v7;
  v9 = *(a1 + *(v7 + 24));
  if ((v9 & 4) != 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v10 = a1[1];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1F958(a1 + *(v7 + 28), &v27);
    v10 = a1[1];
    if (v10)
    {
LABEL_3:
      v24 = *a1;
      v11 = v10;
      goto LABEL_6;
    }
  }

  v24 = 0;
  v11 = 0xE000000000000000;
LABEL_6:
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  HIDWORD(v23) = v12;
  v13 = *(v8 + 20);

  v14 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v16 = v15;
  sub_4E45C(a1 + v13, v6);
  sub_14ADFC(a1, type metadata accessor for LegacyActionMenu.Child);
  v25[0] = v27;
  v25[1] = v28;
  v26 = v29;
  v17 = type metadata accessor for ActionMenu.Item(0);
  v18 = v17[7];
  v19 = sub_3E7784();
  (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
  v20 = v17[8];
  v21 = a2 + v17[10];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v24;
  a2[3] = v11;
  a2[4] = 0;
  a2[5] = 0;
  sub_51F9C(v6, a2 + v18, &qword_4F1D50);
  *(a2 + v20) = BYTE4(v23);
  *(a2 + v17[9]) = ((v9 >> 1) & 1) == 0;
  sub_51F9C(v25, v21, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ActionMenu.init(from:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for LegacyActionMenu.Child(0);
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = type metadata accessor for ActionMenu.Child(0);
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v12 - 8);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  v17 = a1[1];
  if (v17)
  {
    v56 = *a1;
    v55 = v17;
  }

  else
  {
    v56 = 0;
    v55 = 0xE000000000000000;
  }

  v18 = type metadata accessor for LegacyActionMenu(0);
  v19 = a1 + *(v18 + 24);
  v57 = v16;
  sub_4E45C(v19, v16);
  v20 = *(v18 + 28);
  v58 = a1;
  v21 = *(a1 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v80 = _swiftEmptyArrayStorage;

    sub_41A30(0, v22, 0);
    v23 = v80;
    v24 = v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v61 = 0x8000000000428380;
    v60 = *(v4 + 72);
    v25 = v67;
    v63 = v3;
    v62 = v8;
    while (1)
    {
      sub_14AD34(v24, v8);
      sub_14AD34(v8, v25);
      v26 = *(v25 + v3[6]);
      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      v70 = v27;
      v71 = v26;
      if ((v26 & 4) != 0)
      {
        v79 = 0;
        v77 = 0u;
        v78 = 0u;
        v28 = v25[1];
        if (v28)
        {
LABEL_13:
          v29 = *v25;
          v30 = v28;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1F958(v25 + v3[7], &v77);
        v28 = v25[1];
        if (v28)
        {
          goto LABEL_13;
        }
      }

      v29 = 0;
      v30 = 0xE000000000000000;
LABEL_14:
      v68 = v30;
      v69 = v29;
      v72 = v22;
      v73 = v23;
      v31 = v3[5];
      v32 = qword_4E89C8;

      if (v32 != -1)
      {
        swift_once();
      }

      add = atomic_fetch_add((*(*off_4F3A90[0] + 136))(), 1uLL);
      *&v74[0] = 0;
      *(&v74[0] + 1) = 0xE000000000000000;
      sub_3EE3C4(38);

      *&v74[0] = 0xD000000000000024;
      *(&v74[0] + 1) = v61;
      v76 = add;
      v81._countAndFlagsBits = sub_3EE7A4();
      sub_3ED3D4(v81);

      v34 = *(&v74[0] + 1);
      v35 = *&v74[0];
      v36 = v64;
      sub_4E45C(v25 + v31, v64);
      sub_14ADFC(v25, type metadata accessor for LegacyActionMenu.Child);
      v74[0] = v77;
      v74[1] = v78;
      v75 = v79;
      v37 = type metadata accessor for ActionMenu.Item(0);
      v38 = v37[7];
      v39 = sub_3E7784();
      (*(*(v39 - 8) + 56))(&v11[v38], 1, 1, v39);
      v40 = v37[8];
      v41 = &v11[v37[10]];
      *(v41 + 32) = 0;
      *v41 = 0u;
      *(v41 + 16) = 0u;
      *v11 = v35;
      *(v11 + 1) = v34;
      v42 = v68;
      *(v11 + 2) = v69;
      *(v11 + 3) = v42;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      sub_51F9C(v36, &v11[v38], &qword_4F1D50);
      v43 = v71;
      v11[v40] = v70;
      v11[v37[9]] = ((v43 >> 1) & 1) == 0;
      sub_51F9C(v74, v41, &qword_4EDE00);
      swift_storeEnumTagMultiPayload();
      v8 = v62;
      sub_14ADFC(v62, type metadata accessor for LegacyActionMenu.Child);
      v23 = v73;
      v80 = v73;
      v45 = v73[2];
      v44 = v73[3];
      if (v45 >= v44 >> 1)
      {
        sub_41A30(v44 > 1, v45 + 1, 1);
        v23 = v80;
      }

      v23[2] = v45 + 1;
      sub_14AD98(v11, v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v45);
      v24 += v60;
      v22 = v72 - 1;
      v3 = v63;
      v25 = v67;
      if (v72 == 1)
      {
        goto LABEL_21;
      }
    }
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_21:
  v46 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v48 = v47;
  sub_14ADFC(v58, type metadata accessor for LegacyActionMenu);
  v49 = type metadata accessor for ActionMenu(0);
  v50 = *(v49 + 28);
  v51 = sub_3E7784();
  v52 = v59;
  (*(*(v51 - 8) + 56))(v59 + v50, 1, 1, v51);
  *v52 = v46;
  v52[1] = v48;
  v53 = v55;
  v52[2] = v56;
  v52[3] = v53;
  v52[4] = 0;
  v52[5] = 0;
  result = sub_51F9C(v57, v52 + v50, &qword_4F1D50);
  *(v52 + *(v49 + 32)) = v23;
  return result;
}

uint64_t sub_14AD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyActionMenu.Child(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14AD98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenu.Child(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14ADFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ActionMenu.newStationContextMenu.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v46 = &v38 - v9;
  v11 = sub_3E7784();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v10, 1, 1, v11);
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v44 = type metadata accessor for ActionMenu.Child(0);
  v16 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
  v17 = swift_allocObject();
  v45 = v17;
  *(v17 + 16) = xmmword_3F5630;
  v18 = (v17 + v16);
  v19 = [objc_opt_self() mainBundle];
  v37._countAndFlagsBits = 0xE000000000000000;
  v49._countAndFlagsBits = 0x544154535F57454ELL;
  v49._object = 0xEB000000004E4F49;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v20.super.isa = v19;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v21 = sub_3E5A74(v49, v50, v20, v51, v37);
  v42 = v22;
  v43 = v21;

  v39 = v11;
  v40 = v7;
  v41 = v15;
  v13(v7, 1, 1, v11);
  v48[3] = type metadata accessor for TextFieldAlertAction();
  v48[4] = sub_14CC4C(&qword_501120, type metadata accessor for TextFieldAlertAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v48);
  static TextFieldAlertAction.newStation(then:)(0, 0, boxed_opaque_existential_0Tm);
  v38 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v25 = v24;
  sub_FBD0(v7, v4, &qword_4F1D50);
  sub_FBD0(v48, v47, &qword_4EDE00);
  v26 = type metadata accessor for ActionMenu.Item(0);
  v27 = v26[7];
  v13(v18 + v27, 1, 1, v11);
  v28 = v26[8];
  *(v18 + v28) = 2;
  v29 = v18 + v26[10];
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *v18 = v38;
  v18[1] = v25;
  v30 = v42;
  v18[2] = v43;
  v18[3] = v30;
  v18[4] = 0;
  v18[5] = 0;
  sub_51F9C(v4, v18 + v27, &qword_4F1D50);
  *(v18 + v28) = 2;
  *(v18 + v26[9]) = 1;
  sub_51F9C(v47, v29, &qword_4EDE00);
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v40, &qword_4F1D50);
  sub_FCF8(v48, &qword_4EDE00);
  v31 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v33 = v32;
  v34 = type metadata accessor for ActionMenu(0);
  v35 = *(v34 + 28);
  v13(a1 + v35, 1, 1, v39);
  *a1 = v31;
  a1[1] = v33;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  result = sub_51F9C(v46, a1 + v35, &qword_4F1D50);
  *(a1 + *(v34 + 32)) = v45;
  return result;
}

uint64_t static ActionMenu.stationContextMenu(for:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = sub_3E6AC4();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E6AE4();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v54 = type metadata accessor for ActionMenu.Child(0);
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v53 - v13);
  v15 = sub_3E7784();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v9, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v19 = *(v10 + 72);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_3F5310;
  v55 = v20;
  sub_14B828(a1, (v21 + v20));
  v56 = v19;
  v61 = a1;
  sub_14BFA0(a1, (v21 + v20 + v19));
  v22 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v24 = v23;
  v25 = type metadata accessor for ActionMenu(0);
  v26 = *(v25 + 28);
  v59 = v18;
  v60 = v15;
  v27 = v15;
  v28 = v17;
  v17(v14 + v26, 1, 1, v27);
  *v14 = v22;
  v14[1] = v24;
  v14[2] = 0;
  v14[3] = 0xE000000000000000;
  v14[4] = 0;
  v14[5] = 0;
  v29 = v14 + v26;
  v30 = v9;
  sub_51F9C(v9, v29, &qword_4F1D50);
  v58 = v25;
  *(v14 + *(v25 + 32)) = v21;
  swift_storeEnumTagMultiPayload();
  v31 = sub_E0140(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_E0140(v32 > 1, v33 + 1, 1, v31);
  }

  v31[2] = v33 + 1;
  v35 = v55;
  v34 = v56;
  sub_14AD98(v14, v31 + v55 + v33 * v56);
  v36 = OBJC_IVAR____TtC8ShelfKit13StationDetail_episodes;
  v37 = v61;
  swift_beginAccess();
  v38 = *(v37 + v36);
  if (v38)
  {
    if (v38 >> 62)
    {
      v52 = sub_3EE5A4();
      v39 = v53;
      if (!v52)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v39 = v53;
      if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_9;
      }
    }

    sub_14C650(v37, v39);
    v41 = v31[2];
    v40 = v31[3];
    if (v41 >= v40 >> 1)
    {
      v31 = sub_E0140(v40 > 1, v41 + 1, 1, v31);
    }

    v31[2] = v41 + 1;
    sub_14AD98(v39, v31 + v35 + v41 * v34);
  }

LABEL_9:
  v42 = v62;
  sub_3E6984();
  v43 = v65;
  sub_3E6AD4();
  (*(v63 + 8))(v42, v64);
  sub_3E6AB4();
  (*(v66 + 8))(v43, v67);
  sub_3E7774();
  v44 = v60;
  v28(v30, 0, 1, v60);
  v45 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v47 = v46;
  v49 = v57;
  v48 = v58;
  v50 = *(v58 + 28);
  v28(v57 + v50, 1, 1, v44);
  *v49 = v45;
  v49[1] = v47;
  v49[2] = 0;
  v49[3] = 0xE000000000000000;
  v49[4] = 0;
  v49[5] = 0;
  result = sub_51F9C(v30, v49 + v50, &qword_4F1D50);
  *(v49 + *(v48 + 32)) = v31;
  return result;
}

uint64_t sub_14B828@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_3EC194();
  __chkstk_darwin(v4 - 8);
  v58 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13C0);
  __chkstk_darwin(v6 - 8);
  v8 = v50 - v7;
  v50[3] = v50 - v7;
  v9 = sub_3EC1F4();
  __chkstk_darwin(v9 - 8);
  v50[4] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v11 - 8);
  v57 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v50 - v14;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v46._countAndFlagsBits = 0xEE006E6F69746174;
  v63._countAndFlagsBits = 0xD00000000000001BLL;
  v63._object = 0x80000000004283F0;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v18.super.isa = v17;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v19 = sub_3E5A74(v63, v67, v18, v71, v46);
  v55 = v20;
  v56 = v19;

  v51 = v15;
  sub_3E7774();
  v53 = sub_3E7784();
  v21 = *(v53 - 8);
  v52 = *(v21 + 56);
  v54 = v21 + 56;
  v52(v15, 0, 1, v53);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v22 = sub_3ECC34();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = [v16 mainBundle];
  v47._countAndFlagsBits = 0xE000000000000000;
  v64._object = 0x8000000000428410;
  v64._countAndFlagsBits = 0xD000000000000018;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v24.super.isa = v23;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  sub_3E5A74(v64, v68, v24, v72, v47);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_3F5630;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_4F39C();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;

  v50[2] = sub_3ED214();
  v50[1] = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB288);
  v50[0] = *(*(sub_3ECC24() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_3F5310;
  v29 = [v16 mainBundle];
  v48._countAndFlagsBits = 0xE000000000000000;
  v65._countAndFlagsBits = 0x435F4E4F49544341;
  v65._object = 0xED00004C45434E41;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v30.super.isa = v29;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_3E5A74(v65, v69, v30, v73, v48);

  sub_3ECBC4();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_3ECBF4();
  v31 = [v16 mainBundle];
  v49._countAndFlagsBits = 0xE000000000000000;
  v66._countAndFlagsBits = 0x53206574656C6544;
  v66._object = 0xEE006E6F69746174;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v32.super.isa = v31;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_3E5A74(v66, v70, v32, v74, v49);

  sub_3ECBB4();
  *(&v61 + 1) = type metadata accessor for DeleteStationAction();
  v62 = sub_14CC4C(&qword_5010D0, type metadata accessor for DeleteStationAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v60);
  v34 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID);
  v35 = v34;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *boxed_opaque_existential_0Tm = v34;
  boxed_opaque_existential_0Tm[1] = 0;
  *(boxed_opaque_existential_0Tm + 16) = 1;
  sub_3ECBF4();
  sub_3EC184();
  *(&v61 + 1) = sub_3ECC44();
  v62 = &protocol witness table for Models.AlertAction;
  __swift_allocate_boxed_opaque_existential_0Tm(&v60);
  sub_3ECBD4();
  v36 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v38 = v37;
  v39 = v57;
  sub_FACC(v51, v57, &qword_4F1D50);
  sub_FBD0(&v60, v59, &qword_4EDE00);
  v40 = type metadata accessor for ActionMenu.Item(0);
  v41 = v40[7];
  v52(a2 + v41, 1, 1, v53);
  v42 = v40[8];
  v43 = a2 + v40[10];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *a2 = v36;
  a2[1] = v38;
  v44 = v55;
  a2[2] = v56;
  a2[3] = v44;
  a2[4] = 0;
  a2[5] = 0;
  sub_51F9C(v39, a2 + v41, &qword_4F1D50);
  *(a2 + v42) = 1;
  *(a2 + v40[9]) = 1;
  sub_51F9C(v59, v43, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v60, &qword_4EDE00);
}

uint64_t sub_14BFA0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = sub_3E5FC4();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v61 = &v55 - v6;
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v14);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v17 - 8);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = [objc_opt_self() mainBundle];
  v54._countAndFlagsBits = 0xAB00000000A680E2;
  v70._object = 0x80000000004283D0;
  v70._countAndFlagsBits = 0xD00000000000001DLL;
  v71.value._countAndFlagsBits = 0;
  v71.value._object = 0;
  v23.super.isa = v22;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v24 = sub_3E5A74(v70, v71, v23, v72, v54);
  v62 = v25;
  v63 = v24;

  v56 = v21;
  sub_3E7774();
  v58 = sub_3E7784();
  v26 = *(v58 - 8);
  v57 = *(v26 + 56);
  v59 = v26 + 56;
  v57(v21, 0, 1, v58);
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  *v16 = v27;
  v16[1] = v28;
  v55 = v16;
  swift_storeEnumTagMultiPayload();

  v29 = v13;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v30 = type metadata accessor for FlowAction(0);
  v31 = swift_allocObject();
  sub_FC38(v16, v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v32 = (v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v32 = 0;
  v32[1] = 0;
  *(v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 6;
  *(v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v33 = v10;
  v34 = v29;
  v35 = v29;
  v36 = v7;
  (*(v8 + 16))(v10, v34, v7);
  v37 = sub_3EC634();
  v38 = v61;
  (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
  v39 = v65;
  sub_3E5FB4();
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;
  (*(v66 + 8))(v39, v67);
  (*(v8 + 8))(v35, v36);
  sub_FC9C(v55);
  *(v31 + 16) = v40;
  *(v31 + 24) = v42;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 48;
  (*(v8 + 32))(v31 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v33, v36);
  sub_FACC(v38, v31 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v69[3] = v30;
  v69[4] = sub_14CC4C(&qword_4F8A40, type metadata accessor for FlowAction);
  v69[0] = v31;
  v43 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v45 = v44;
  v46 = v64;
  sub_FACC(v56, v64, &qword_4F1D50);
  sub_FBD0(v69, v68, &qword_4EDE00);
  v47 = type metadata accessor for ActionMenu.Item(0);
  v48 = v47[7];
  v49 = v60;
  v57(v60 + v48, 1, 1, v58);
  v50 = v47[8];
  v51 = v49 + v47[10];
  *(v51 + 32) = 0;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *v49 = v43;
  v49[1] = v45;
  v52 = v62;
  v49[2] = v63;
  v49[3] = v52;
  v49[4] = 0;
  v49[5] = 0;
  sub_51F9C(v46, v49 + v48, &qword_4F1D50);
  *(v49 + v50) = 2;
  *(v49 + v47[9]) = 1;
  sub_51F9C(v68, v51, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(v69, &qword_4EDE00);
}

uint64_t sub_14C650@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_3E5FC4();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v58 = &v51 - v8;
  v57 = sub_3EC1F4();
  v9 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v14 - 8);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0xE400000000000000;
  v66._object = 0x80000000004283B0;
  v66._countAndFlagsBits = 0xD000000000000019;
  v67.value._countAndFlagsBits = 0;
  v67.value._object = 0;
  v20.super.isa = v19;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v21 = sub_3E5A74(v66, v67, v20, v68, v50);
  v59 = v22;
  v60 = v21;

  v52 = v18;
  sub_3E7774();
  v55 = sub_3E7784();
  v23 = *(v55 - 8);
  v54 = *(v23 + 56);
  v56 = v23 + 56;
  v54(v18, 0, 1, v55);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);

  v26 = v13;
  v51 = v13;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v27 = type metadata accessor for PlayStationAction();
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_stationUUID);
  *v29 = v24;
  v29[1] = v25;
  v30 = (v28 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeUUID);
  *v30 = 0;
  v30[1] = 0;
  v31 = v28 + OBJC_IVAR____TtC8ShelfKit17PlayStationAction_episodeAdamID;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v53;
  v33 = v26;
  v34 = v57;
  (*(v9 + 16))(v53, v33, v57);
  v35 = sub_3EC634();
  v36 = v58;
  (*(*(v35 - 8) + 56))(v58, 1, 1, v35);
  sub_3E5FB4();
  v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v39 = v38;
  (*(v62 + 8))(v6, v63);
  (*(v9 + 8))(v51, v34);
  *(v28 + 16) = v37;
  *(v28 + 24) = v39;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 32;
  (*(v9 + 32))(v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v32, v34);
  sub_FACC(v36, v28 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v65[3] = v27;
  v65[4] = sub_14CC4C(&qword_4EAC68, type metadata accessor for PlayStationAction);
  v65[0] = v28;
  v40 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v42 = v41;
  v43 = v61;
  sub_FACC(v52, v61, &qword_4F1D50);
  sub_FBD0(v65, v64, &qword_4EDE00);
  v44 = type metadata accessor for ActionMenu.Item(0);
  v45 = v44[7];
  v54(a2 + v45, 1, 1, v55);
  v46 = v44[8];
  v47 = a2 + v44[10];
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *a2 = v40;
  a2[1] = v42;
  v48 = v59;
  a2[2] = v60;
  a2[3] = v48;
  a2[4] = 0;
  a2[5] = 0;
  sub_51F9C(v43, a2 + v45, &qword_4F1D50);
  *(a2 + v46) = 2;
  *(a2 + v44[9]) = 1;
  sub_51F9C(v64, v47, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(v65, &qword_4EDE00);
}

uint64_t sub_14CC4C(unint64_t *a1, void (*a2)(uint64_t))
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

ShelfKit::ActionMenuBuilder __swiftcall ActionMenuBuilder.init()()
{
  v1 = v0;
  result.templates._rawValue = sub_625AC(_swiftEmptyArrayStorage);
  v1->templates._rawValue = result.templates._rawValue;
  return result;
}

UIMenu ActionMenuBuilder.buildMenu(_:asPartOf:)(void *a1, uint64_t a2)
{
  sub_36174(0, &qword_4EB5D0);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = type metadata accessor for ActionMenu(0);
  v9 = *(v8 + 28);

  v10 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(a1 + v9);
  v11 = sub_3ED204();
  v14 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(*(a1 + *(v8 + 32)), a2);
  v17._countAndFlagsBits = v4;
  v17._object = v5;
  v18.value._countAndFlagsBits = v6;
  v18.value._object = v7;
  v16.value.super.isa = v10;
  v16.is_nil = v11;
  v12.value = 0;
  return sub_3EDE14(v17, v18, v16, v12, 0xFFFFFFFFFFFFFFFFLL, v14, v15);
}

uint64_t ActionMenuBuilder.addTemplate(for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  *v5 = 0x8000000000000000;
  sub_3A340(sub_14E4EC, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *v5 = v13;
  return result;
}

uint64_t ActionMenuBuilder.addingTemplate(for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = 0x8000000000000000;
  sub_3A340(sub_14E7D8, v12, a1, a2, isUniquelyReferenced_nonNull_native);

  *a5 = v11;
  return result;
}

void *ActionMenuBuilder.buildMenuElements(for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v56 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v56);
  v5 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ActionMenu.Item(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMenu.Child(0);
  __chkstk_darwin(v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = *v2;
  v13 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v65 = *(v10 + 72);
    v61 = &v69;
    v54 = xmmword_3F7950;
    v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v8;
    v60 = v9;
    v55 = v5;
    do
    {
      sub_148C44(v15, v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_14E644(v12, v8, type metadata accessor for ActionMenu.Item);
          ActionMenuBuilder.buildMenuElement(_:asPartOf:)(v8, v66);
          sub_3ED564();
          if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_3ED5A4();
          }

          sub_3ED604();
          sub_148D10(v8, type metadata accessor for ActionMenu.Item);
          v13 = v73;
          goto LABEL_7;
        }

        sub_14E644(v12, v5, type metadata accessor for ActionMenu);
        v42 = v5[2];
        v41 = v5[3];
        v43 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v43 = v42 & 0xFFFFFFFFFFFFLL;
        }

        v59 = v43 == 0;
        v44 = sub_36174(0, &qword_4EB5D0);
        v45 = v5[5];
        v57 = v5[4];
        v58 = v44;
        v46 = v56;
        v47 = *(v56 + 28);

        v48 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v5 + v47);
        v49 = sub_3ED204();
        aBlock = v64;
        v52 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(*(v5 + *(v46 + 32)), v66);
        v77._countAndFlagsBits = v42;
        v77._object = v41;
        v79.value._countAndFlagsBits = v57;
        v79.value._object = v45;
        v75.value.super.isa = v48;
        v75.is_nil = v49;
        v50.value = v59;
        sub_3EDE14(v77, v79, v75, v50, 0xFFFFFFFFFFFFFFFFLL, v52, v53);
        sub_3ED564();
        if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();
        v13 = v73;
        sub_148D10(v5, type metadata accessor for ActionMenu);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v34 = v12[2];
          v35 = v12[3];

          v36 = objc_opt_self();
          v37 = swift_allocObject();
          v37[2] = v64;
          v37[3] = v34;
          v38 = v66;
          v37[4] = v35;
          v37[5] = v38;
          v71 = sub_14E638;
          v72 = v37;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_14DC28;
          v70 = &block_descriptor_19;
          v39 = _Block_copy(&aBlock);

          v40 = [v36 elementWithUncachedProvider:v39];
          _Block_release(v39);
          sub_3ED564();
          if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_3ED5A4();
          }

          sub_3ED604();

          v13 = v73;
          v12 = v62;
          v8 = v63;
          goto LABEL_7;
        }

        if (EnumCaseMultiPayload != 3)
        {
          v27 = *v12;
          v28 = v12[1];
          v29 = objc_opt_self();
          v30 = swift_allocObject();
          v30[2] = v64;
          v30[3] = v27;
          v31 = v66;
          v30[4] = v28;
          v30[5] = v31;
          v71 = sub_14E538;
          v72 = v30;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_14DC28;
          v70 = &block_descriptor_10;
          v32 = _Block_copy(&aBlock);

          v33 = [v29 elementWithUncachedProvider:v32];
          _Block_release(v32);
          sub_3ED564();
          if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_3ED5A4();
          }

          sub_3ED604();
          v13 = v73;
          v8 = v63;
          goto LABEL_7;
        }

        v16 = v12[2];
        v17 = v12[3];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        v19[2] = v64;
        v19[3] = v16;
        v20 = v66;
        v19[4] = v17;
        v19[5] = v20;
        v71 = sub_14E5BC;
        v72 = v19;
        aBlock = _NSConcreteStackBlock;
        v68 = 1107296256;
        v69 = sub_14DC28;
        v70 = &block_descriptor_13;
        v21 = _Block_copy(&aBlock);

        v22 = [v18 elementWithUncachedProvider:v21];
        _Block_release(v21);
        sub_36174(0, &qword_4EB5D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
        v23 = swift_allocObject();
        *(v23 + 16) = v54;
        *(v23 + 32) = v22;
        v24 = v22;
        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        v78.value._countAndFlagsBits = 0;
        v78.value._object = 0;
        v74.value.super.isa = 0;
        v74.is_nil = 0;
        v25.value = (&dword_0 + 1);
        sub_3EDE14(v76, v78, v74, v25, 0xFFFFFFFFFFFFFFFFLL, v23, v53);
        sub_3ED564();
        if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v73 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_3ED5A4();
        }

        sub_3ED604();

        v13 = v73;
        v5 = v55;
      }

      v12 = v62;
      v8 = v63;
LABEL_7:
      v15 += v65;
      --v14;
    }

    while (v14);
  }

  return v13;
}

uint64_t ActionMenuBuilder.buildMenuElement(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenu.Item(0);
  v5 = *(a1 + v4[8]);
  if (v5 != 2)
  {
    if ((v5 & 1) == 0)
    {
      sub_3EE804();
    }
  }

  sub_7A45C(a1 + v4[10], &v10);
  if (v11)
  {
    sub_1D4F0(&v10, v12);
    v6 = v4[7];

    _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(a1 + v6);
    sub_3ED204();
    sub_36174(0, &qword_4EA880);
    sub_1F958(v12, &v10);
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    sub_1D4F0(&v10, v7 + 24);

    v8 = sub_3EDEF4();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return v8;
  }

  else
  {
    sub_FCF8(&v10, &qword_4EDE00);

    sub_3ED204();
    sub_36174(0, &qword_4EA880);
    return sub_3EDEF4();
  }
}

UIMenu ActionMenuBuilder.buildSubmenu(_:asPartOf:)(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v15 = v5 == 0;
  sub_36174(0, &qword_4EB5D0);
  v6 = a1[4];
  v7 = a1[5];
  v8 = type metadata accessor for ActionMenu(0);
  v9 = *(v8 + 28);

  v10 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(a1 + v9);
  LOBYTE(v9) = sub_3ED204();
  v13 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(*(a1 + *(v8 + 32)), a2);
  v17._countAndFlagsBits = v3;
  v17._object = v4;
  v18.value._countAndFlagsBits = v6;
  v18.value._object = v7;
  v16.value.super.isa = v10;
  v16.is_nil = v9;
  v11.value = v15;
  return sub_3EDE14(v17, v18, v16, v11, 0xFFFFFFFFFFFFFFFFLL, v13, a2);
}

uint64_t sub_14DB10(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ActionMenu.Item(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v10);
  v13 = ActionMenuBuilder.buildMenuElement(_:asPartOf:)(v12, a6);
  sub_148D10(v12, type metadata accessor for ActionMenu.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3F7950;
  *(v14 + 32) = v13;
  v15 = v13;
  a1(v14);
}

uint64_t sub_14DC28(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_14E7C8, v4);
}

void sub_14DCBC(uint64_t a1, uint64_t a2)
{
  sub_36174(0, &unk_5010A0);
  isa = sub_3ED574().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_14DD38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a6;
  v30 = a2;
  v31 = a1;
  v7 = type metadata accessor for ActionMenu(0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  a4(v9);
  v12 = v11[2];
  v13 = v11[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v14 == 0;
  sub_36174(0, &qword_4EB5D0);
  v15 = v11[4];
  v16 = v11[5];
  v17 = *(v8 + 36);

  v18 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v11 + v17);
  v19 = sub_3ED204();
  v32 = v28;
  v25 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(*(v11 + *(v8 + 40)), v29);
  v34._countAndFlagsBits = v12;
  v34._object = v13;
  v35.value._countAndFlagsBits = v15;
  v35.value._object = v16;
  v33.value.super.isa = v18;
  v33.is_nil = v19;
  v20.value = v27;
  isa = sub_3EDE14(v34, v35, v33, v20, 0xFFFFFFFFFFFFFFFFLL, v25, v26).super.super.isa;
  sub_148D10(v11, type metadata accessor for ActionMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_3F7950;
  *(v22 + 32) = isa;
  v23 = isa;
  v31(v22);
}

void *sub_14DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_3EBE74();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3ECE84();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(v12 + 16) && (v13 = sub_552A8(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 16 * v13);
    v19[0] = a3;

    v15(&v18, v19);

    return v18;
  }

  else
  {
    sub_3ECE24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE64();
    v20._object = 0x8000000000428450;
    v20._countAndFlagsBits = 0xD000000000000020;
    sub_3EBE54(v20);
    v19[3] = &type metadata for ActionMenu.ID;
    v19[0] = a1;
    v19[1] = a2;

    sub_3EBE24();
    sub_FCF8(v19, &unk_501090);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_3EBE54(v21);
    sub_3EBE84();
    sub_3ECBA4();

    (*(v9 + 8))(v11, v8);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_14E1C0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  v11 = sub_3E6434();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  if ([a1 sender])
  {
    sub_3EE204();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  v12 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v10, v20, 0);

  sub_FCF8(v20, &unk_501090);
  sub_FCF8(v10, &qword_5005B0);
  sub_1F958(a3, v20);
  v21 = v12;
  sub_E69A0(v20, v19);
  v13 = swift_allocObject();
  v14 = v19[1];
  v13[1] = v19[0];
  v13[2] = v14;
  v13[3] = v19[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v15 = sub_3ECE04();
  v16 = sub_3ED6F4();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_4072F0;
  v17[5] = v13;
  v17[6] = v15;

  sub_E8ECC(0, 0, v7, &unk_407300, v17);

  return sub_E91B8(v20);
}

uint64_t sub_14E4B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14E4EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_14E538(void (*a1)(void))
{
  sub_14DF0C(v1[3], v1[4], v1[5]);
  a1();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_6Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_14E644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14E6AC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_14E708()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_14E748()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_14E790()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t ActionPerformer.init(_:asPartOf:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1D4F0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t ActionPerformer.callAsFunction()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v1 - 8);
  v3 = v10 - v2;
  sub_E69A0(v0, v10);
  v4 = swift_allocObject();
  v5 = v10[1];
  v4[1] = v10[0];
  v4[2] = v5;
  v4[3] = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v6 = sub_3ECE04();
  v7 = sub_3ED6F4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_4072F0;
  v8[5] = v4;
  v8[6] = v6;

  sub_E8ECC(0, 0, v3, &unk_407300, v8);

  return v6;
}

uint64_t sub_14E9AC(uint64_t a1)
{
  v1[2] = sub_3ED6B4();
  v1[3] = sub_3ED6A4();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_14EA6C;

  return ActionPerformer.callAsFunction()(a1);
}

uint64_t sub_14EA6C()
{
  *(*v1 + 40) = v0;

  v3 = sub_3ED684();
  if (v0)
  {
    v4 = sub_14EC2C;
  }

  else
  {
    v4 = sub_14EBC8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_14EBC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14EC2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14EC90()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t ActionPerformer.callAsFunction()(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_3EBE74();
  v2[16] = swift_task_alloc();
  v3 = sub_3ECE84();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = sub_3ED6B4();
  v2[21] = sub_3ED6A4();
  v4 = swift_task_alloc();
  v2[22] = v4;
  *v4 = v2;
  v4[1] = sub_14EE08;

  return sub_14F514();
}

uint64_t sub_14EE08()
{
  v2 = *v1;
  v2[23] = v0;

  v4 = sub_3ED684();
  v2[24] = v4;
  v2[25] = v3;
  if (v0)
  {
    v5 = sub_14F02C;
  }

  else
  {
    v5 = sub_14EF68;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_14EF68()
{
  v1 = *(v0 + 112);

  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_3EC204();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_14F02C()
{

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_14F0C4;

  return sub_14FF30();
}

uint64_t sub_14F0C4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_14F200;
  }

  else
  {
    v5 = sub_1511C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_14F200()
{
  v1 = v0[19];
  v13 = v0[17];
  v14 = v0[18];
  v2 = v0[15];
  v15 = v0[14];

  sub_3ECE34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
  sub_3EBE94();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3EBE64();
  v17._object = 0x8000000000428480;
  v17._countAndFlagsBits = 0xD000000000000013;
  sub_3EBE54(v17);
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v0[5] = v3;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0Tm, v4, v3);
  sub_3EBE44();
  sub_FCF8((v0 + 2), &unk_501090);
  v18._countAndFlagsBits = 0x6E6F73616572202CLL;
  v18._object = 0xEA0000000000203ALL;
  sub_3EBE54(v18);
  swift_getErrorValue();
  v7 = v0[10];
  v6 = v0[11];
  v0[9] = v6;
  v8 = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 6);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  sub_3EBE34();
  sub_FCF8((v0 + 6), &unk_501090);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_3EBE54(v19);
  sub_3EBE84();
  sub_3ECB94();

  (*(v14 + 8))(v1, v13);
  v9 = enum case for ActionOutcome.unsupported(_:);
  v10 = sub_3EC204();
  (*(*(v10 - 8) + 104))(v15, v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_14F514()
{
  v1[4] = v0;
  v2 = sub_3E6654();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_3EC204();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_3ED6B4();
  v1[12] = sub_3ED6A4();
  v5 = sub_3ED684();
  v1[13] = v5;
  v1[14] = v4;

  return _swift_task_switch(sub_14F670, v5, v4);
}

uint64_t sub_14F670()
{
  v0[15] = *(v0[4] + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F10);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_14F734;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_14F734()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_14FE14;
  }

  else
  {
    v5 = sub_14F870;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_14F870()
{
  v1 = v0[2];
  v0[18] = v1;
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v3 + 104))(v2, enum case for ActionMetricsBehavior.fromAction(_:), v4);
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_14FA24;
    v8 = v0[15];
    v9 = v0[11];
    v10 = v0[7];
    v11 = v0[4];

    return ActionRunner.perform(_:withMetrics:asPartOf:)(v9, v11, v10, v8, ObjectType, v5);
  }

  else
  {

    type metadata accessor for ActionPerformerError();
    sub_1510A8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_14FA24()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  v3 = v2[14];
  v4 = v2[13];
  if (v0)
  {
    v5 = sub_14FE9C;
  }

  else
  {
    v5 = sub_14FBAC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_14FBAC()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = *(v3 + 16);
  v5(v2, v1, v4);
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for ActionOutcome.performed(_:))
  {
    (*(v0[9] + 8))(v0[11], v0[8]);
    swift_unknownObjectRelease();

    v7 = v0[1];
  }

  else
  {
    v8 = v6;
    v9 = enum case for ActionOutcome.unsupported(_:);
    type metadata accessor for ActionPerformerError();
    sub_1510A8();
    swift_allocError();
    v11 = v10;
    v12 = v0[11];
    if (v8 == v9)
    {
      v13 = v0[8];
      v14 = v0[9];
      v15 = v0[4];
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      DynamicType = swift_getDynamicType();
      v17 = v15[4];
      *v11 = DynamicType;
      v11[1] = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v14 + 8))(v12, v13);
    }

    else
    {
      v18 = v0[9];
      v22 = v0[10];
      v19 = v0[8];
      v5(v10, v12, v19);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      v20 = *(v18 + 8);
      v20(v12, v19);
      v20(v22, v19);
    }

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_14FE14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14FE9C()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14FF30()
{
  v1[2] = v0;
  v2 = sub_3E6654();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_3EC204();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3E50);
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_3ED6B4();
  v1[15] = sub_3ED6A4();
  v6 = sub_3ED684();
  v1[16] = v6;
  v1[17] = v5;

  return _swift_task_switch(sub_150130, v6, v5);
}

uint64_t sub_150130()
{
  v0[18] = *(v0[2] + 40);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1501D8;
  v2 = v0[10];
  v3 = v0[11];

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v2, v3, v3);
}

uint64_t sub_1501D8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_150BE4;
  }

  else
  {
    v5 = sub_150314;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_150314()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_FCF8(v3, &qword_4F3E50);
    type metadata accessor for ActionPerformerError();
    sub_1510A8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    (*(v2 + 32))(v0[13], v3, v1);
    (*(v7 + 104))(v6, enum case for ActionMetricsBehavior.fromAction(_:), v8);
    v0[21] = sub_3ED6A4();
    v10 = sub_3ED684();
    v0[22] = v10;
    v0[23] = v9;

    return _swift_task_switch(sub_150500, v10, v9);
  }
}

uint64_t sub_150500()
{
  v0[24] = sub_3EC4C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1505E8;
  v4 = v0[9];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1505E8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_150A90;
  }

  else
  {
    v5 = sub_150740;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_150740()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);
  v4 = v0[16];
  v5 = v0[17];

  return _swift_task_switch(sub_1507CC, v4, v5);
}

uint64_t sub_1507CC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = *(v4 + 16);
  v5(v1, v2, v3);
  v6 = (*(v4 + 88))(v1, v3);
  if (v6 == enum case for ActionOutcome.performed(_:))
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    (*(v0[7] + 8))(v0[9], v0[6]);
    (*(v8 + 8))(v7, v9);

    v10 = v0[1];
  }

  else
  {
    v11 = v6;
    v12 = enum case for ActionOutcome.unsupported(_:);
    type metadata accessor for ActionPerformerError();
    sub_1510A8();
    swift_allocError();
    v14 = v13;
    v15 = v0[12];
    v27 = v0[11];
    v28 = v0[13];
    v16 = v0[9];
    if (v11 == v12)
    {
      v18 = v0[6];
      v17 = v0[7];
      v19 = v0[2];
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      DynamicType = swift_getDynamicType();
      v21 = v19[4];
      *v14 = DynamicType;
      v14[1] = v21;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v17 + 8))(v16, v18);
      (*(v15 + 8))(v28, v27);
    }

    else
    {
      v22 = v0[7];
      v26 = v0[8];
      v23 = v0[6];
      v5(v13, v16, v23);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v24 = *(v22 + 8);
      v24(v16, v23);
      (*(v15 + 8))(v28, v27);
      v24(v26, v23);
    }

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_150A90()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);
  v4 = v0[16];
  v5 = v0[17];

  return _swift_task_switch(sub_150B1C, v4, v5);
}

uint64_t sub_150B1C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_150BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_150C8C()
{
  v1 = v0;
  v2 = sub_3EC204();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPerformerError();
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_151044(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_3EE3C4(27);

    v12 = 0xD000000000000019;
    v13 = 0x80000000004284A0;
    v15._countAndFlagsBits = sub_3EEB34();
    sub_3ED3D4(v15);

    return v12;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_3EE3C4(26);
    v14._countAndFlagsBits = 0xD000000000000018;
    v14._object = 0x8000000000428500;
    sub_3ED3D4(v14);
    sub_3EE554();
    v10 = v12;
    (*(v3 + 8))(v5, v2);
    return v10;
  }
}

uint64_t sub_150EF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_150F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_150F9C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata accessor for ActionPerformerError()
{
  result = qword_4F3ED0;
  if (!qword_4F3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_151044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPerformerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1510A8()
{
  result = qword_4F3E58;
  if (!qword_4F3E58)
  {
    type metadata accessor for ActionPerformerError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3E58);
  }

  return result;
}

unint64_t sub_151100()
{
  result = sub_3EC204();
  if (v1 <= 0x3F)
  {
    result = sub_151174();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_151174()
{
  result = qword_4F3EE0;
  if (!qword_4F3EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_502170);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_4F3EE0);
  }

  return result;
}

uint64_t GroupedSearchResultsPage.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3ECCF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupedSearchResultsPage.results.getter()
{
  type metadata accessor for GroupedSearchResultsPage();
}

uint64_t type metadata accessor for GroupedSearchResultsPage()
{
  result = qword_4F3F98;
  if (!qword_4F3F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GroupedSearchResultsPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupedSearchResultsPage() + 24);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupedSearchResultsPage.init(id:results:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_3ECCF4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for GroupedSearchResultsPage();
  *(a4 + *(v9 + 20)) = a2;
  v10 = *(v9 + 24);
  v11 = sub_3EC164();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_151404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_3EC164();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static GroupedSearchResultsPage.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3EC544();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_3E5FC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E5FB4();
  _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  (*(v10 + 8))(v12, v9);
  v13 = sub_3ED2C4();
  v15 = v14;

  v25 = v13;
  v26 = v15;
  *&v32 = 45;
  *(&v32 + 1) = 0xE100000000000000;
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_68DC4();
  v16 = sub_3EE194();
  v18 = v17;

  v25 = sub_3E8014();
  v26 = v19;
  v39._countAndFlagsBits = 95;
  v39._object = 0xE100000000000000;
  sub_3ED3D4(v39);
  v40._countAndFlagsBits = v16;
  v40._object = v18;
  sub_3ED3D4(v40);
  sub_3ECCE4();
  v20 = sub_3E8014();
  v25 = v16;
  v26 = v18;
  v27 = v20;
  v28 = v21;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_3E6794();
  sub_3EC534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v3 + 16))(v5, v8, v2);
  v22 = type metadata accessor for GroupedSearchResultsPage();
  sub_3EC0C4();
  v38 = v32;
  sub_FCF8(&v38, &unk_4F8A10);
  v37 = v33;
  sub_FCF8(&v37, &qword_4E94E0);
  v36 = v34;
  sub_FCF8(&v36, &unk_4F8A20);
  sub_16AC0(v35);
  (*(v3 + 8))(v8, v2);

  *(a1 + *(v22 + 20)) = _swiftEmptyArrayStorage;
  return result;
}

Swift::Void __swiftcall GroupedSearchResultsPage.appending(results:at:)(Swift::OpaquePointer results, Swift::Int_optional at)
{
  if (at.is_nil || (value = at.value, *(*(v2 + *(type metadata accessor for GroupedSearchResultsPage() + 20)) + 16) <= at.value))
  {
    type metadata accessor for GroupedSearchResultsPage();

    sub_41318(v5);
  }

  else
  {

    sub_152DE4(value, value, results._rawValue, sub_E0168, sub_17C980);
  }
}

uint64_t GroupedSearchResultsPage.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v60 = a3;
  v56 = sub_3E5FC4();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3F10);
  __chkstk_darwin(v5 - 8);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v53 - v8;
  v63 = sub_3ECCF4();
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EC164();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v53 - v13;
  v14 = sub_3EBF94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v21 = sub_3EBDF4();
  v70 = *(v21 - 8);
  v71 = v21;
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3F18);
  v69 = a1;
  sub_3EBE04();
  v72 = v15;
  v73 = v14;
  v23 = *(v15 + 16);
  v23(v20, v80, v14);
  sub_1527FC();
  sub_3EC574();
  if (!v78)
  {
    v29 = sub_3ECEE4();
    sub_152974(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v31 = v30;
    v32 = type metadata accessor for GroupedSearchResultsPage();
    *v31 = 0x73746C75736572;
    v31[1] = 0xE700000000000000;
    v31[2] = v32;
    (*(*(v29 - 8) + 104))(v31, enum case for JSONError.missingProperty(_:), v29);
    swift_willThrow();
    v24 = v69;
    v26 = v80;
    v27 = v73;
    goto LABEL_5;
  }

  v61 = v78;
  v24 = v69;
  sub_3EBE04();
  v25 = v17;
  v26 = v80;
  v27 = v73;
  v23(v25, v80, v73);
  v28 = v67;
  sub_3EC0E4();
  if (v28)
  {

LABEL_5:
    (*(v72 + 8))(v26, v27);
    return (*(v70 + 8))(v24, v71);
  }

  v34 = v27;
  sub_3EBE04();
  v23(v20, v26, v27);
  v35 = v63;
  v36 = v62;
  sub_3EC574();
  v37 = v66;
  v38 = *(v66 + 48);
  if (v38(v36, 1, v35) == 1)
  {
    (*(v64 + 16))(v57, v68, v65);
    v39 = v58;
    sub_3ECCC4();
    if (v38(v39, 1, v35) == 1)
    {
      v40 = v54;
      sub_3E5FB4();
      _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      (*(v55 + 8))(v40, v56);
      v41 = sub_3ED2C4();
      v43 = v42;

      v78 = v41;
      v79 = v43;
      v76 = 45;
      v77 = 0xE100000000000000;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_68DC4();
      v44 = sub_3EE194();
      v45 = v24;
      v47 = v46;
      v35 = v63;

      v78 = sub_3E8014();
      v79 = v48;
      v81._countAndFlagsBits = 95;
      v81._object = 0xE100000000000000;
      sub_3ED3D4(v81);
      v82._countAndFlagsBits = v44;
      v36 = v62;
      v82._object = v47;
      sub_3ED3D4(v82);
      v49 = v59;
      sub_3ECCE4();

      (*(v72 + 8))(v80, v73);
      v50 = v58;
      (*(v70 + 8))(v45, v71);
      if (v38(v50, 1, v35) != 1)
      {
        sub_FCF8(v50, &qword_4F3F10);
      }
    }

    else
    {
      (*(v72 + 8))(v80, v73);
      (*(v70 + 8))(v24, v71);
      v49 = v59;
      (*(v37 + 32))(v59, v39, v35);
    }

    if (v38(v36, 1, v35) != 1)
    {
      sub_FCF8(v36, &qword_4F3F10);
    }
  }

  else
  {
    (*(v72 + 8))(v26, v34);
    (*(v70 + 8))(v24, v71);
    v49 = v59;
    (*(v37 + 32))(v59, v36, v35);
  }

  v51 = type metadata accessor for GroupedSearchResultsPage();
  v52 = v60;
  (*(v64 + 32))(v60 + *(v51 + 24), v68, v65);
  result = (*(v66 + 32))(v52, v49, v35);
  *(v52 + *(v51 + 20)) = v61;
  return result;
}

uint64_t GroupedSearchResultsPage.Result.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v5 = sub_3EBF94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v55 = sub_3EBDF4();
  v11 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v56 = a1;
  sub_3EBE04();
  v19 = *(v6 + 16);
  v19(v10, a2, v5);
  v20 = v54;
  v21 = sub_3E0CC8(v18, v10);
  if (v20)
  {
    (*(v6 + 8))(a2, v5);
    return (*(v11 + 8))(v56, v55);
  }

  else
  {
    v24 = v22;
    v49 = v19;
    v50 = v5;
    v44 = v21;
    v25 = v53;
    v54 = a2;
    sub_3EBE04();
    v43 = sub_3EBDC4();
    v27 = v26;
    v30 = *(v11 + 8);
    v29 = v11 + 8;
    v28 = v30;
    v31 = v15;
    v32 = v55;
    v30(v31, v55);
    if (v27)
    {
      v46 = v27;
      v47 = v28;
      v48 = v29;
      v45 = type metadata accessor for Page();
      sub_3EBE04();
      v33 = v52;
      v34 = v54;
      v35 = v50;
      v49(v52, v54, v50);
      v38 = Page.__allocating_init(deserializing:using:)(v25, v33);
      (*(v6 + 8))(v34, v35);
      result = v47(v56, v55);
      v39 = v51;
      v40 = v43;
      *v51 = v44;
      v39[1] = v24;
      v41 = v46;
      v39[2] = v40;
      v39[3] = v41;
      v39[4] = v38;
    }

    else
    {

      v36 = sub_3ECEE4();
      sub_152974(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      *v37 = 1701667182;
      v37[1] = 0xE400000000000000;
      v37[2] = &type metadata for GroupedSearchResultsPage.Result;
      (*(*(v36 - 8) + 104))(v37, enum case for JSONError.missingProperty(_:), v36);
      swift_willThrow();
      (*(v6 + 8))(v54, v50);
      return v28(v56, v32);
    }
  }

  return result;
}

uint64_t sub_15275C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_3EE5A4();
LABEL_9:
  result = sub_3EE404();
  *v1 = result;
  return result;
}

unint64_t sub_1527FC()
{
  result = qword_4F3F20;
  if (!qword_4F3F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F3F18);
    sub_152880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3F20);
  }

  return result;
}

unint64_t sub_152880()
{
  result = qword_4F3F28;
  if (!qword_4F3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3F28);
  }

  return result;
}

unint64_t sub_1528D8()
{
  result = qword_4F3F30;
  if (!qword_4F3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F3F30);
  }

  return result;
}

uint64_t sub_152974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1529D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3ECCF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_3EC164();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_152B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3ECCF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_3EC164();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_152C2C()
{
  sub_3ECCF4();
  if (v0 <= 0x3F)
  {
    sub_152CC8();
    if (v1 <= 0x3F)
    {
      sub_3EC164();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_152CC8()
{
  if (!qword_4F3FA8)
  {
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4F3FA8);
    }
  }
}

uint64_t sub_152D18(uint64_t a1, int a2)
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

uint64_t sub_152D60(uint64_t result, int a2, int a3)
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

uint64_t sub_152DE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(a3 + 16);
  v13 = __OFSUB__(v12, v10);
  v14 = v12 - v10;
  if (v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v7 + 24) >> 1)
  {
    v7 = a4();
    *v5 = v7;
  }

  result = a5(v9, a2, v12, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_152ED0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_E0E04(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_17CE08(v6, a2, 0);
  *v2 = v4;
  return result;
}

char *sub_152F90(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_3EE5A4();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_3EE5A4();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_15275C(result);

  return sub_17CE20(v6, v5, 1, v3);
}

uint64_t SearchHintsPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchHintsPage() + 24);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SearchHintsPage()
{
  result = qword_4F4040;
  if (!qword_4F4040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHintsPage.init(hints:shelves:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SearchHintsPage() + 24);
  v7 = sub_3EC164();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t SearchHintsPage.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_3EC164();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBF94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v32 = &v27 - v11;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = sub_3EBDF4();
  v36 = *(v15 - 8);
  v37 = v15;
  __chkstk_darwin(v15);
  v31 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  sub_3EBE04();
  v38 = v8;
  v19 = *(v8 + 16);
  v19(v14, a2, v7);
  type metadata accessor for SearchHint();
  sub_153654(&qword_4F3FE0, type metadata accessor for SearchHint);
  v20 = v35;
  v21 = sub_3ED624();
  if (v20)
  {
    (*(v38 + 8))(a2, v7);
    return (*(v36 + 8))(a1, v37);
  }

  else
  {
    v35 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1F80);
    sub_3EBE04();
    v19(v32, a2, v7);
    sub_111B64();
    sub_3EC574();
    if (v39)
    {
      v22 = v39;
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

    sub_3EBE04();
    v19(v33, a2, v7);
    v23 = v34;
    sub_3EC0E4();
    (*(v38 + 8))(a2, v7);
    (*(v36 + 8))(a1, v37);
    v24 = v30;
    *v30 = v35;
    v24[1] = v22;
    v25 = type metadata accessor for SearchHintsPage();
    return (*(v28 + 32))(v24 + *(v25 + 24), v23, v29);
  }
}

uint64_t sub_153654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1536C8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3EC164();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_153788(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3EC164();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15382C()
{
  sub_153900(319, &unk_4F4050, type metadata accessor for SearchHint);
  if (v0 <= 0x3F)
  {
    sub_153900(319, &qword_4F2A60, type metadata accessor for Shelf);
    if (v1 <= 0x3F)
    {
      sub_3EC164();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_153900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3ED674();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _CachableValueContainer.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EBDF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _CachableValueContainer.init(object:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_3EBDF4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for _CachableValueContainer();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t _CachableValueContainer.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v33 = a5;
  v8 = sub_3EBF94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBDF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 - 8);
  __chkstk_darwin(v16);
  v31 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v31 - v20;
  v22 = *(v13 + 16);
  v37 = a1;
  v34 = v23;
  v22(v15, a1, v19);
  v24 = a2;
  v25 = a2;
  v26 = v8;
  (*(v9 + 16))(v11, v25, v8);
  v27 = v36;
  v28 = a3;
  sub_3EC554();
  (*(v9 + 8))(v24, v26);
  if (v27)
  {
    return (*(v13 + 8))(v37, v34);
  }

  v30 = v31;
  (*(v32 + 32))(v31, v21, v28);
  return _CachableValueContainer.init(object:value:)(v37, v30, v28, v33);
}

uint64_t _CachableValueContainer.init(tryDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a2;
  v38 = a4;
  v39 = a5;
  v40 = a1;
  v36 = sub_3EBF94();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EBDF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3EE0F4();
  v32 = *(v13 - 8);
  v33 = v13;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = *(a3 - 8);
  __chkstk_darwin(v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v31 - v22;
  v34 = v10;
  v35 = v9;
  (*(v10 + 16))(v12, v40, v9, v21);
  v25 = v36;
  v24 = v37;
  (*(v6 + 16))(v8, v37, v36);
  sub_3EC564();
  (*(v6 + 8))(v24, v25);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v34 + 8))(v40, v35);
    (*(v32 + 8))(v15, v33);
    v26 = 1;
    v27 = v39;
  }

  else
  {
    v28 = *(v16 + 32);
    v28(v23, v15, a3);
    v28(v19, v23, a3);
    v27 = v39;
    _CachableValueContainer.init(object:value:)(v40, v19, a3, v39);
    v26 = 0;
  }

  v29 = type metadata accessor for _CachableValueContainer();
  return (*(*(v29 - 8) + 56))(v27, v26, 1, v29);
}

uint64_t sub_1541AC()
{
  result = sub_3EBDF4();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_154234(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_3EBDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_154474(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_3EBDF4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t Category.init(id:title:url:color:artwork:parent:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  v16 = type metadata accessor for Category();
  sub_FACC(a4, a9 + v16[6], &unk_4E9EE0);
  v17 = a9 + v16[7];
  *v17 = a5;
  v17[4] = BYTE4(a5) & 1;
  result = sub_FACC(a6, a9 + v16[8], &qword_4F1D50);
  v19 = a9 + v16[9];
  *v19 = a7;
  v19[8] = a8 & 1;
  *(a9 + v16[10]) = a10;
  return result;
}

uint64_t type metadata accessor for Category()
{
  result = qword_4F4190;
  if (!qword_4F4190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShowOffer.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Category.children.getter()
{
  type metadata accessor for Category();
}

Swift::Int sub_1549C4(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    sub_3EE954();
    sub_3EE994(v13);
    result = sub_3EE9A4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_154B34()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x746E65726170;
  if (v1 != 5)
  {
    v3 = 0x6E6572646C696863;
  }

  v4 = 0x726F6C6F63;
  if (v1 != 3)
  {
    v4 = 0x6B726F77747261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 7107189;
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

uint64_t sub_154BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_156B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_154C18(uint64_t a1)
{
  v2 = sub_15635C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_154C54(uint64_t a1)
{
  v2 = sub_15635C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void Category.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3E7784();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = sub_3E5DC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  sub_3EE994(*v1);
  sub_3ED394();
  v15 = type metadata accessor for Category();
  sub_FBD0(v1 + v15[6], v14, &unk_4E9EE0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_3EE974(1u);
    sub_156D40(&qword_4EBA98, &type metadata accessor for URL);
    sub_3ED124();
    (*(v9 + 8))(v11, v8);
  }

  v16 = v1 + v15[7];
  if (v16[4] == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    v17 = *v16;
    sub_3EE974(1u);
    sub_3EE984(bswap32(v17));
  }

  v18 = v23;
  sub_FBD0(v2 + v15[8], v23, &qword_4F1D50);
  if ((*(v24 + 48))(v18, 1, v25) == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    v19 = v22;
    sub_83F9C(v18, v22);
    sub_3EE974(1u);
    sub_3E7734();
    sub_1564BC(v19, &type metadata accessor for ArtworkModel);
  }

  v20 = v2 + v15[9];
  if (v20[8] == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    v21 = *v20;
    sub_3EE974(1u);
    sub_3EE994(v21);
  }

  sub_155B78(a1, *(v2 + v15[10]));
}

Swift::Int Category.hashValue.getter()
{
  sub_3EE954();
  Category.hash(into:)(v1);
  return sub_3EE9A4();
}

Swift::Int sub_1550D8()
{
  sub_3EE954();
  Category.hash(into:)(v1);
  return sub_3EE9A4();
}

uint64_t Category.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4108);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_15635C();
  sub_3EEA14();
  v15 = *v3;
  v17 = 0;
  sub_10F450();
  sub_3EE764();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_3EE734();
    v9 = type metadata accessor for Category();
    LOBYTE(v15) = 2;
    sub_3E5DC4();
    sub_156D40(&qword_4F0118, &type metadata accessor for URL);
    sub_3EE724();
    v10 = v3 + v9[7];
    v11 = *v10;
    LOBYTE(v10) = v10[4];
    LODWORD(v15) = v11;
    BYTE4(v15) = v10;
    v17 = 3;
    sub_1563B0();
    sub_3EE724();
    LOBYTE(v15) = 4;
    sub_3E7784();
    sub_156D40(&qword_4F00E0, &type metadata accessor for ArtworkModel);
    sub_3EE724();
    v12 = v3 + v9[9];
    v13 = *v12;
    LOBYTE(v12) = v12[8];
    v15 = v13;
    v16 = v12;
    v17 = 5;
    sub_3EE724();
    v15 = *(v3 + v9[10]);
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29A8);
    sub_11F524(&qword_4F29B0, sub_10F450);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Category.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4120);
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for Category();
  __chkstk_darwin(v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_15635C();
  v16 = v11;
  v17 = v35;
  sub_3EE9F4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  v35 = v8;
  v18 = v14;
  v39 = 0;
  v19 = sub_10F610();
  v20 = v34;
  sub_3EE6C4();
  *v18 = v37;
  LOBYTE(v37) = 1;
  v21 = sub_3EE694();
  v30[1] = v19;
  v18[1] = v21;
  v18[2] = v22;
  sub_3E5DC4();
  LOBYTE(v37) = 2;
  sub_156D40(&qword_4F0178, &type metadata accessor for URL);
  v31 = v18;
  v23 = v35;
  sub_3EE684();
  v24 = v31;
  sub_FACC(v23, v31 + v12[6], &unk_4E9EE0);
  v39 = 3;
  sub_156404();
  sub_3EE684();
  v35 = 0;
  v25 = BYTE4(v37);
  v26 = v24 + v12[7];
  *v26 = v37;
  *(v26 + 4) = v25;
  sub_3E7784();
  LOBYTE(v37) = 4;
  sub_156D40(&qword_4F0148, &type metadata accessor for ArtworkModel);
  sub_3EE684();
  sub_FACC(v5, v24 + v12[8], &qword_4F1D50);
  v39 = 5;
  sub_3EE684();
  v27 = v38;
  v28 = v24 + v12[9];
  *v28 = v37;
  *(v28 + 8) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F29A8);
  v39 = 6;
  sub_11F524(&qword_4F29C0, sub_10F610);
  sub_3EE6C4();
  MEMORY[0x680000002](v16, v20);
  *(v24 + v12[10]) = v37;
  sub_156458(v24, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return sub_1564BC(v24, type metadata accessor for Category);
}

void sub_155B78(uint64_t a1, uint64_t a2)
{
  sub_3EE9A4();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= sub_3EE9A4())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_3EE954();
    sub_3EE994(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      sub_3EE964(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _s8ShelfKit8CategoryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v58 = sub_3E7784();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v6 - 8);
  v59 = &v54 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4208);
  __chkstk_darwin(v57);
  v9 = &v54 - v8;
  v10 = sub_3E5DC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9870);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_12;
  }

  v55 = v9;
  v56 = v5;
  v20 = type metadata accessor for Category();
  v61 = a2;
  v54 = v20;
  v21 = *(v20 + 24);
  v22 = *(v17 + 48);
  sub_FBD0(a1 + v21, v19, &unk_4E9EE0);
  v23 = v61 + v21;
  v24 = v61;
  sub_FBD0(v23, &v19[v22], &unk_4E9EE0);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) == 1)
  {
    if (v25(&v19[v22], 1, v10) == 1)
    {
      sub_FCF8(v19, &unk_4E9EE0);
      goto LABEL_15;
    }

LABEL_10:
    v26 = &qword_4E9870;
    v27 = v19;
LABEL_11:
    sub_FCF8(v27, v26);
    goto LABEL_12;
  }

  sub_FBD0(v19, v16, &unk_4E9EE0);
  if (v25(&v19[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_10;
  }

  (*(v11 + 32))(v13, &v19[v22], v10);
  sub_156D40(&qword_4E9880, &type metadata accessor for URL);
  v30 = sub_3ED174();
  v31 = *(v11 + 8);
  v31(v13, v10);
  v31(v16, v10);
  v24 = v61;
  sub_FCF8(v19, &unk_4E9EE0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v32 = v54;
  v33 = *(v54 + 28);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (v24 + v33);
  v37 = *(v24 + v33 + 4);
  if (v35)
  {
    v39 = v55;
    v38 = v56;
    v41 = v59;
    v40 = v60;
    if (!v37)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    v39 = v55;
    v38 = v56;
    v41 = v59;
    v40 = v60;
    if (v37)
    {
      goto LABEL_12;
    }
  }

  v42 = *(v54 + 32);
  v43 = *(v57 + 48);
  sub_FBD0(a1 + v42, v39, &qword_4F1D50);
  v44 = v61 + v42;
  v45 = v61;
  sub_FBD0(v44, v39 + v43, &qword_4F1D50);
  v46 = *(v40 + 48);
  v47 = v58;
  if (v46(v39, 1, v58) != 1)
  {
    sub_FBD0(v39, v41, &qword_4F1D50);
    if (v46(v39 + v43, 1, v47) != 1)
    {
      sub_83F9C(v39 + v43, v38);
      v48 = sub_3E7724();
      sub_1564BC(v38, &type metadata accessor for ArtworkModel);
      sub_1564BC(v41, &type metadata accessor for ArtworkModel);
      sub_FCF8(v39, &qword_4F1D50);
      if ((v48 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

    sub_1564BC(v41, &type metadata accessor for ArtworkModel);
    goto LABEL_26;
  }

  if (v46(v39 + v43, 1, v47) != 1)
  {
LABEL_26:
    v26 = &qword_4F4208;
    v27 = v39;
    goto LABEL_11;
  }

  sub_FCF8(v39, &qword_4F1D50);
LABEL_28:
  v49 = *(v32 + 36);
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (v45 + v49);
  v53 = *(v45 + v49 + 8);
  if (v51)
  {
    if (v53)
    {
LABEL_34:
      v28 = sub_1549C4(*(a1 + *(v32 + 40)), *(v45 + *(v32 + 40)));
      return v28 & 1;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if ((v53 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_12:
  v28 = 0;
  return v28 & 1;
}

unint64_t sub_15635C()
{
  result = qword_4F4110;
  if (!qword_4F4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4110);
  }

  return result;
}

unint64_t sub_1563B0()
{
  result = qword_4F4118;
  if (!qword_4F4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4118);
  }

  return result;
}

unint64_t sub_156404()
{
  result = qword_4F4128;
  if (!qword_4F4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4128);
  }

  return result;
}

uint64_t sub_156458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Category();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1564BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15657C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1566CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_156808()
{
  sub_156944(319, &qword_4E9918, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4F41A0);
    if (v1 <= 0x3F)
    {
      sub_156944(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
      if (v2 <= 0x3F)
      {
        sub_5FBE4(319, &qword_4EC1B8);
        if (v3 <= 0x3F)
        {
          sub_156998();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_156944(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_156998()
{
  if (!qword_4F41A8)
  {
    sub_C2A1C();
    v0 = sub_3ED854();
    if (!v1)
    {
      atomic_store(v0, &qword_4F41A8);
    }
  }
}

unint64_t sub_156A08()
{
  result = qword_4F41F0;
  if (!qword_4F41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F41F0);
  }

  return result;
}

unint64_t sub_156A60()
{
  result = qword_4F41F8;
  if (!qword_4F41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F41F8);
  }

  return result;
}

unint64_t sub_156AB8()
{
  result = qword_4F4200;
  if (!qword_4F4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4200);
  }

  return result;
}

uint64_t sub_156B0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_3EE804();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_156D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CategorySection.ID.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766166;
  v2 = 0x6574736567677573;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 0x72616C75706F70;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_156E08(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = *a1;
  v5 = 0xE900000000000073;
  v6 = 0x6574736567677573;
  v7 = 0xE700000000000000;
  if (v4 == 2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  v8 = 0xE700000000000000;
  v9 = 0x72616C75706F70;
  if (!*a1)
  {
    v9 = 0x657469726F766166;
    v8 = 0xE900000000000073;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0x6574736567677573;
  if (*a2 != 2)
  {
    v12 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  if (*a2)
  {
    v3 = 0x72616C75706F70;
    v5 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v5;
  }

  else
  {
    v14 = v2;
  }

  if (v10 == v13 && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_3EE804();
  }

  return v15 & 1;
}

Swift::Int sub_156F44()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_15700C()
{
  sub_3ED394();
}

Swift::Int sub_1570BC()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_157180@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit15CategorySectionV2IDO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1571B0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x657469726F766166;
  v4 = 0x6574736567677573;
  v5 = 0xE700000000000000;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (*v1)
  {
    v3 = 0x72616C75706F70;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  a1[1] = v7;
}

ShelfKit::CategorySection::TitleStyle_optional __swiftcall CategorySection.TitleStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B1C20;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_CategorySection_TitleStyle_secondary;
  }

  else
  {
    v4.value = ShelfKit_CategorySection_TitleStyle_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t CategorySection.TitleStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_157374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261646E6F636573;
  }

  else
  {
    v3 = 0x7972616D697270;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v5 = 0x7261646E6F636573;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (*a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_157420()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1574A8()
{
  sub_3ED394();
}

Swift::Int sub_15751C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1575A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B1C20;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_157600(uint64_t *a1@<X8>)
{
  v2 = 0x7972616D697270;
  if (*v1)
  {
    v2 = 0x7261646E6F636573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CategorySection.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategorySection() + 28);

  return sub_158B1C(v3, a1);
}

uint64_t CategorySection.categories.getter()
{
  type metadata accessor for CategorySection();
}

uint64_t CategorySection.categories.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CategorySection() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CategorySection.init(id:title:titleStyle:description:categories:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  v10 = type metadata accessor for CategorySection();
  result = sub_158B8C(a5, a7 + *(v10 + 28));
  *(a7 + *(v10 + 32)) = a6;
  return result;
}

uint64_t sub_157864()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x797453656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x69726F6765746163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_1578FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_159490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_157924(uint64_t a1)
{
  v2 = sub_158BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_157960(uint64_t a1)
{
  v2 = sub_158BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CategorySection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Category();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3E5A54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  sub_3ED394();

  sub_3ED394();
  sub_3ED394();

  v14 = type metadata accessor for CategorySection();
  sub_158B1C(v2 + *(v14 + 28), v13);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_3EE974(0);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_3EE974(1u);
    sub_1596EC(&qword_4F4218, &type metadata accessor for AttributedString);
    sub_3ED124();
    (*(v8 + 8))(v10, v7);
  }

  v15 = *(v2 + *(v14 + 32));
  sub_3EE964(*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v18 = *(v20 + 72);
    do
    {
      sub_158E3C(v17, v6, type metadata accessor for Category);
      Category.hash(into:)(a1);
      sub_158EA4(v6, type metadata accessor for Category);
      v17 += v18;
      --v16;
    }

    while (v16);
  }
}

Swift::Int CategorySection.hashValue.getter()
{
  sub_3EE954();
  CategorySection.hash(into:)(v1);
  return sub_3EE9A4();
}

Swift::Int sub_157DA0()
{
  sub_3EE954();
  CategorySection.hash(into:)(v1);
  return sub_3EE9A4();
}

uint64_t CategorySection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_158BFC();
  sub_3EEA14();
  v18 = *v3;
  v17 = 0;
  sub_158C50();
  sub_3EE764();
  if (!v2)
  {
    v16 = 1;
    sub_3EE734();
    v15 = v3[24];
    v14 = 2;
    sub_158CA4();
    sub_3EE764();
    v9 = type metadata accessor for CategorySection();
    v13 = 3;
    sub_3E5A54();
    sub_1596EC(&qword_4F4240, &type metadata accessor for AttributedString);
    sub_3EE724();
    v12 = *&v3[*(v9 + 32)];
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0890);
    sub_158DA0(&qword_4F0898, &qword_4F08A0);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CategorySection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4248);
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CategorySection();
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_158BFC();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v22 = v6;
  v14 = v7;
  v15 = v12;
  v16 = v23;
  v32 = 0;
  sub_158CF8();
  v17 = v24;
  sub_3EE6C4();
  *v15 = v33;
  v31 = 1;
  *(v15 + 8) = sub_3EE694();
  *(v15 + 16) = v18;
  v29 = 2;
  sub_158D4C();
  sub_3EE6C4();
  *(v15 + 24) = v30;
  sub_3E5A54();
  v28 = 3;
  sub_1596EC(&qword_4F4260, &type metadata accessor for AttributedString);
  v19 = v22;
  sub_3EE684();
  sub_158B8C(v19, v15 + *(v10 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0890);
  v27 = 4;
  sub_158DA0(&qword_4F08B8, &qword_4F08C0);
  sub_3EE6C4();
  (*(v14 + 8))(v9, v17);
  *(v15 + *(v10 + 32)) = v26;
  sub_158E3C(v15, v16, type metadata accessor for CategorySection);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return sub_158EA4(v15, type metadata accessor for CategorySection);
}

uint64_t _s8ShelfKit15CategorySectionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_3E5A54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
  __chkstk_darwin(v7 - 8);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4358);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = *a1;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 0x6574736567677573;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (v12 == 2)
    {
      v14 = 0xE900000000000064;
    }

    else
    {
      v14 = 0xE700000000000000;
    }
  }

  else
  {
    if (*a1)
    {
      v13 = 0x72616C75706F70;
    }

    else
    {
      v13 = 0x657469726F766166;
    }

    if (*a1)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE900000000000073;
    }
  }

  v15 = 0xE900000000000073;
  v16 = 0x6574736567677573;
  v17 = 0xE700000000000000;
  if (*a2 == 2)
  {
    v17 = 0xE900000000000064;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  v18 = 0x72616C75706F70;
  if (*a2)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    v18 = 0x657469726F766166;
  }

  if (*a2 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  if (*a2 <= 1u)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (v13 == v19 && v14 == v20)
  {
  }

  else
  {
    v21 = sub_3EE804();

    if ((v21 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_3EE804() & 1) == 0)
  {
    goto LABEL_55;
  }

  if (a1[24])
  {
    v22 = 0x7261646E6F636573;
  }

  else
  {
    v22 = 0x7972616D697270;
  }

  if (a1[24])
  {
    v23 = 0xE900000000000079;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  if (a2[24])
  {
    v24 = 0x7261646E6F636573;
  }

  else
  {
    v24 = 0x7972616D697270;
  }

  if (a2[24])
  {
    v25 = 0xE900000000000079;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  if (v22 == v24 && v23 == v25)
  {
  }

  else
  {
    v26 = sub_3EE804();

    if ((v26 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v27 = type metadata accessor for CategorySection();
  v28 = *(v27 + 28);
  v29 = *(v9 + 48);
  sub_158B1C(&a1[v28], v11);
  sub_158B1C(&a2[v28], &v11[v29]);
  v30 = v5;
  v31 = *(v5 + 48);
  if (v31(v11, 1, v4) == 1)
  {
    if (v31(&v11[v29], 1, v4) == 1)
    {
      sub_FCF8(v11, &qword_4F4210);
LABEL_58:
      v33 = sub_115978(*&a1[*(v27 + 32)], *&a2[*(v27 + 32)]);
      return v33 & 1;
    }

    goto LABEL_54;
  }

  v32 = v40;
  sub_158B1C(v11, v40);
  if (v31(&v11[v29], 1, v4) == 1)
  {
    (*(v30 + 8))(v32, v4);
LABEL_54:
    sub_FCF8(v11, &qword_4F4358);
    goto LABEL_55;
  }

  v35 = v32;
  v36 = v39;
  (*(v30 + 32))(v39, &v11[v29], v4);
  sub_1596EC(&qword_4F4360, &type metadata accessor for AttributedString);
  v37 = sub_3ED174();
  v38 = *(v30 + 8);
  v38(v36, v4);
  v38(v35, v4);
  sub_FCF8(v11, &qword_4F4210);
  if (v37)
  {
    goto LABEL_58;
  }

LABEL_55:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s8ShelfKit15CategorySectionV2IDO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1BA0;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for CategorySection()
{
  result = qword_4F42E0;
  if (!qword_4F42E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_158B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_158B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_158BFC()
{
  result = qword_4F4228;
  if (!qword_4F4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4228);
  }

  return result;
}

unint64_t sub_158C50()
{
  result = qword_4F4230;
  if (!qword_4F4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4230);
  }

  return result;
}

unint64_t sub_158CA4()
{
  result = qword_4F4238;
  if (!qword_4F4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4238);
  }

  return result;
}

unint64_t sub_158CF8()
{
  result = qword_4F4250;
  if (!qword_4F4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4250);
  }

  return result;
}

unint64_t sub_158D4C()
{
  result = qword_4F4258;
  if (!qword_4F4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4258);
  }

  return result;
}

uint64_t sub_158DA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F0890);
    sub_1596EC(a2, type metadata accessor for Category);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_158E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_158EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_158F08()
{
  result = qword_4F4268;
  if (!qword_4F4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4268);
  }

  return result;
}

unint64_t sub_158F60()
{
  result = qword_4F4270;
  if (!qword_4F4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4270);
  }

  return result;
}

unint64_t sub_158FB8()
{
  result = qword_4F4278;
  if (!qword_4F4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4278);
  }

  return result;
}

uint64_t sub_159068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_159138(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1591E8()
{
  sub_1592F4(319, &unk_4F42F0, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1592F4(319, &qword_4F0940, type metadata accessor for Category, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1592F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_15938C()
{
  result = qword_4F4330;
  if (!qword_4F4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4330);
  }

  return result;
}

unint64_t sub_1593E4()
{
  result = qword_4F4338;
  if (!qword_4F4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4338);
  }

  return result;
}

unint64_t sub_15943C()
{
  result = qword_4F4340;
  if (!qword_4F4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4340);
  }

  return result;
}

uint64_t sub_159490(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_3EE804() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797453656C746974 && a2 == 0xEA0000000000656CLL || (sub_3EE804() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_3EE804() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365)
  {

    return 4;
  }

  else
  {
    v6 = sub_3EE804();

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

unint64_t sub_159644()
{
  result = qword_4F4348;
  if (!qword_4F4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4348);
  }

  return result;
}

unint64_t sub_159698()
{
  result = qword_4F4350;
  if (!qword_4F4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4350);
  }

  return result;
}

uint64_t sub_1596EC(unint64_t *a1, void (*a2)(uint64_t))
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

size_t EntitlementsActionProviding.entitlementsAction.getter(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = objc_allocWithZone(LSApplicationRecord);

  v9 = sub_15BB64(v6, v7, 0);
  if (v9)
  {

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_15984C(v10, a1, a2);
  if (!v12)
  {
    v12 = sub_15A260(v10, a1, a2);
    if (!v12)
    {
      v12 = sub_15ADD4(v6, v7, v10, a1, a2);
    }
  }

  v13 = v12;

  return v13;
}

size_t sub_15984C(char a1, uint64_t a2, uint64_t a3)
{
  v94 = a2;
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v86 - v10;
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  __chkstk_darwin(v15);
  v17 = &v86 - v16;
  v18 = sub_3E5FC4();
  v89 = *(v18 - 8);
  v90 = v18;
  __chkstk_darwin(v18);
  v88 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3EC1F4();
  v92 = *(v20 - 8);
  v93 = v20;
  __chkstk_darwin(v20);
  v87 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v91 = &v86 - v23;
  v24 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v24);
  v86 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v96 = (&v86 - v27);
  v28 = objc_opt_self();
  if (([v28 isRunningOnDesktop] & 1) == 0)
  {
    if ([v28 isRunningOnVisionOS])
    {
      sub_3E99E4();
      v32 = sub_3E99F4();
      v33 = sub_3ED9F4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "SKStoreProductViewController is not supported on visionOS.", v34, 2u);
      }

      (*(v6 + 8))(v11, v5);
      return 0;
    }

    if (a1)
    {
      sub_3E99E4();
      v35 = sub_3E99F4();
      v36 = sub_3ED9F4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "Will not present SKStoreProductViewController for installed app.", v37, 2u);
      }

      (*(v6 + 8))(v14, v5);
      return 0;
    }

    v38 = v94;
    v39 = (*(a3 + 16))(v94, a3);
    if (v40)
    {
      sub_3E99E4();
      v41 = sub_3E99F4();
      v42 = sub_3ED9D4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "Unable to present SKStoreProductViewController without app Adam ID.", v43, 2u);
      }

      (*(v6 + 8))(v17, v5);
      return 0;
    }

    v45 = v39;
    v46 = (*(a3 + 24))(v38, a3);
    v47 = v96;
    *v96 = v45;
    v47[1] = v46;
    v47[2] = v48;
    swift_storeEnumTagMultiPayload();
    v49 = sub_15B95C(v38);
    if (!v49)
    {
      v77 = v86;
      sub_FC38(v47, v86);
      v78 = v87;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      type metadata accessor for FlowAction(0);
      v66 = swift_allocObject();
      sub_FC38(v77, v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
      type metadata accessor for FlowAction.DestinationType(0);
      swift_storeEnumTagMultiPayload();
      v79 = (v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
      *v79 = 0;
      v79[1] = 0;
      *(v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
      *(v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
      *(v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
      v81 = v92;
      v80 = v93;
      (*(v92 + 16))(v66 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v78, v93);
      v82 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
      v83 = sub_3EC634();
      (*(*(v83 - 8) + 56))(v66 + v82, 1, 1, v83);
      v84 = v88;
      sub_3E5FB4();
      v72 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v74 = v85;
      (*(v89 + 8))(v84, v90);
      (*(v81 + 8))(v78, v80);
      sub_FC9C(v77);
      v76 = v47;
      goto LABEL_26;
    }

    v50 = v91;
    v51 = *(v92 + 16);
    v51(v91, v49 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v93);
    v52 = *(sub_3EC1E4() + 16);

    if (!v52)
    {
LABEL_24:
      v63 = v86;
      sub_FC38(v96, v86);
      v64 = v87;
      v65 = v93;
      v51(v87, v50, v93);
      type metadata accessor for FlowAction(0);
      v66 = swift_allocObject();
      sub_FC38(v63, v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
      type metadata accessor for FlowAction.DestinationType(0);
      swift_storeEnumTagMultiPayload();
      v67 = (v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
      *v67 = 0;
      v67[1] = 0;
      *(v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
      *(v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
      *(v66 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
      v51((v66 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v64, v65);
      v68 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
      v69 = sub_3EC634();
      (*(*(v69 - 8) + 56))(v66 + v68, 1, 1, v69);
      v70 = v50;
      v71 = v88;
      sub_3E5FB4();
      v72 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v74 = v73;

      (*(v89 + 8))(v71, v90);
      v75 = *(v92 + 8);
      v75(v64, v65);
      sub_FC9C(v63);
      v75(v70, v65);
      v76 = v96;
LABEL_26:
      sub_FC9C(v76);
      result = v66;
      *(v66 + 16) = v72;
      *(v66 + 24) = v74;
      *(v66 + 32) = 0;
      *(v66 + 40) = 0;
      *(v66 + 48) = 48;
      return result;
    }

    v53 = sub_3E7864();
    v55 = v54;
    v56 = sub_3E89C4();
    v58 = v57;
    v95 = sub_3EC1D4();
    v60 = v59;
    v61 = *v59;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v61;
    if (result)
    {
      if (v61[2])
      {
LABEL_23:
        sub_3EC044();
        v62 = sub_3EC024();
        v97[3] = &type metadata for String;
        v97[0] = v56;
        v97[1] = v58;
        sub_39AB8(v97, v53, v55);
        v62(v98, 0);
        v95(v99, 0);
        v50 = v91;
        goto LABEL_24;
      }
    }

    else
    {
      result = sub_2A511C(v61);
      *v60 = result;
      if (*(result + 16))
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    return result;
  }

  sub_3E99E4();
  v29 = sub_3E99F4();
  v30 = sub_3ED9F4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "SKStoreProductViewController is not supported on macOS.", v31, 2u);
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

size_t sub_15A260(char a1, void (*a2)(char *, char *, uint64_t), uint64_t a3)
{
  v105 = a2;
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v92 - v10;
  __chkstk_darwin(v12);
  v14 = v92 - v13;
  v95 = sub_3E5FC4();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v97 = v92 - v17;
  v18 = sub_3EC1F4();
  v98 = *(v18 - 8);
  v99 = v18;
  __chkstk_darwin(v18);
  v101 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v96 = v92 - v21;
  __chkstk_darwin(v22);
  v24 = v92 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v25 - 8);
  v27 = v92 - v26;
  v28 = sub_3E5DC4();
  v29 = *(v28 - 8);
  v103 = v28;
  v104 = v29;
  __chkstk_darwin(v28);
  v100 = v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v102 = v92 - v32;
  if (([objc_opt_self() isRunningOnDesktop] & 1) == 0)
  {
    if ((a1 & 1) == 0)
    {
      sub_3E99E4();
      v71 = sub_3E99F4();
      v72 = sub_3ED9F4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "Unable to deep-link to external app which is not installed.", v73, 2u);
      }

      (*(v6 + 8))(v11, v5);
      return 0;
    }

    (*(a3 + 32))(v105, a3);
    if (v36)
    {
      sub_3E5D94();

      v38 = v103;
      v37 = v104;
      if ((*(v104 + 48))(v27, 1, v103) != 1)
      {
        v39 = v102;
        (*(v37 + 32))(v102, v27, v38);
        v40 = sub_15B95C(v105);
        if (!v40)
        {
          v77 = *(v37 + 16);
          v78 = v100;
          v77(v100, v39, v38);
          v79 = v96;
          _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
          type metadata accessor for ExternalUrlAction();
          v80 = swift_allocObject();
          v77((v80 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url), v78, v38);
          *(v80 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = 0;
          *(v80 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = 1;
          v81 = v38;
          v83 = v98;
          v82 = v99;
          (*(v98 + 16))(v101, v79, v99);
          v84 = sub_3EC634();
          v85 = v37;
          v86 = v97;
          (*(*(v84 - 8) + 56))(v97, 1, 1, v84);
          v87 = v93;
          sub_3E5FB4();
          v88 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v90 = v89;
          (*(v94 + 8))(v87, v95);
          (*(v83 + 8))(v79, v82);
          v91 = *(v85 + 8);
          v91(v100, v81);
          v91(v102, v81);
          *(v80 + 16) = v88;
          *(v80 + 24) = v90;
          *(v80 + 32) = 0;
          *(v80 + 40) = 0;
          *(v80 + 48) = 32;
          (*(v83 + 32))(v80 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v101, v82);
          sub_14A10(v86, v80 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
          return v80;
        }

        v41 = *(v98 + 16);
        v92[1] = v40;
        v105 = v41;
        v92[0] = v98 + 16;
        v41(v24, (v40 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v99);
        v42 = *(sub_3EC1E4() + 16);

        if (!v42)
        {
LABEL_13:
          v55 = v103;
          v56 = v104;
          v57 = *(v104 + 16);
          v58 = v100;
          v57(v100, v102, v103);
          v59 = v99;
          v60 = v105;
          v105(v96, v24, v99);
          type metadata accessor for ExternalUrlAction();
          v61 = swift_allocObject();
          v57((v61 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url), v58, v55);
          *(v61 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = 0;
          *(v61 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = 1;
          v62 = v96;
          v60(v101, v96, v59);
          v63 = sub_3EC634();
          (*(*(v63 - 8) + 56))(v97, 1, 1, v63);
          v64 = v93;
          sub_3E5FB4();
          v65 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v105 = v66;

          (*(v94 + 8))(v64, v95);
          v67 = v98;
          v68 = *(v98 + 8);
          v68(v62, v59);
          v69 = *(v56 + 8);
          v69(v100, v55);
          v68(v24, v59);
          v69(v102, v55);
          v70 = v105;
          *(v61 + 16) = v65;
          *(v61 + 24) = v70;
          *(v61 + 32) = 0;
          *(v61 + 40) = 0;
          *(v61 + 48) = 32;
          (*(v67 + 32))(v61 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v101, v59);
          sub_14A10(v97, v61 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
          return v61;
        }

        v43 = sub_3E7864();
        v45 = v44;
        v46 = sub_3E89B4();
        v48 = v47;
        v49 = sub_3EC1D4();
        v51 = v50;
        v52 = *v50;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v51 = v52;
        if (result)
        {
          if (v52[2])
          {
LABEL_12:
            sub_3EC044();
            v54 = sub_3EC024();
            v106[3] = &type metadata for String;
            v106[0] = v46;
            v106[1] = v48;
            sub_39AB8(v106, v43, v45);
            v54(v107, 0);
            v49(v108, 0);
            goto LABEL_13;
          }
        }

        else
        {
          result = sub_2A511C(v52);
          *v51 = result;
          if (*(result + 16))
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      (*(v104 + 56))(v27, 1, 1, v103);
    }

    sub_FCF8(v27, &unk_4E9EE0);
    sub_3E99E4();
    v74 = sub_3E99F4();
    v75 = sub_3ED9F4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "Unable to deep-link to external app without a URL.", v76, 2u);
    }

    (*(v6 + 8))(v14, v5);
    return 0;
  }

  sub_3E99E4();
  v33 = sub_3E99F4();
  v34 = sub_3ED9F4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "Deep-linking to external app is not supported on macOS.", v35, 2u);
  }

  (*(v6 + 8))(v8, v5);
  return 0;
}

size_t sub_15ADD4(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v102 = a1;
  v103 = a2;
  v8 = sub_3E5DC4();
  v101 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E5FC4();
  v105 = *(v11 - 8);
  v106 = v11;
  __chkstk_darwin(v11);
  v104 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v13 - 8);
  v107 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EAFE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v89 - v16;
  v18 = sub_3EC1F4();
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v27 = __chkstk_darwin(v23);
  v29 = &v89 - v28;
  if ((a3 & 1) == 0)
  {

    return sub_15B95C(a4);
  }

  v98 = v26;
  v99 = v25;
  v100 = v24;
  if (((*(a5 + 40))(a4, a5, v27) & 1) == 0)
  {
    v65 = [objc_opt_self() isRunningOnDesktop];
    result = sub_15B95C(a4);
    if (v65)
    {
      return result;
    }

    if (result)
    {
      v66 = v100;
      (*(v100 + 16))(v17, result + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v18);

      (*(v66 + 56))(v17, 0, 1, v18);
      (*(v66 + 32))(v29, v17, v18);
    }

    else
    {
      v67 = v100;
      (*(v100 + 56))(v17, 1, 1, v18);
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      if ((*(v67 + 48))(v17, 1, v18) != 1)
      {
        sub_FCF8(v17, &qword_4EAFE0);
      }
    }

    v68 = *(sub_3EC1E4() + 16);

    if (!v68)
    {
LABEL_22:
      v76 = v100;
      v77 = *(v100 + 16);
      v78 = v98;
      v77(v98, v29, v18);
      type metadata accessor for OpenExternalAppAction();
      v79 = swift_allocObject();
      v80 = (v79 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_bundleID);
      v81 = v103;
      *v80 = v102;
      v80[1] = v81;
      *(v79 + OBJC_IVAR____TtC8ShelfKit21OpenExternalAppAction_requiresSignedInUser) = 1;
      v77(v99, v78, v18);
      v82 = sub_3EC634();
      v83 = v107;
      (*(*(v82 - 8) + 56))(v107, 1, 1, v82);

      v84 = v104;
      sub_3E5FB4();
      v85 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v87 = v86;
      (*(v105 + 8))(v84, v106);
      v88 = *(v76 + 8);
      v88(v78, v18);
      v88(v29, v18);
      *(v79 + 16) = v85;
      *(v79 + 24) = v87;
      *(v79 + 32) = 0;
      *(v79 + 40) = 0;
      *(v79 + 48) = 32;
      (*(v76 + 32))(v79 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v99, v18);
      sub_14A10(v83, v79 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      return v79;
    }

    v46 = sub_3E7864();
    v42 = v69;
    v70 = sub_3E89B4();
    v72 = v71;
    v44 = sub_3EC1D4();
    v20 = v73;
    v47 = *v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v47;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v47[2])
      {
LABEL_21:
        sub_3EC044();
        v75 = sub_3EC024();
        v110 = &type metadata for String;
        v108 = v70;
        v109 = v72;
        sub_39AB8(&v108, v46, v42);
        v75(v111, 0);
        v44(v112, 0);
        goto LABEL_22;
      }
    }

    else
    {
      v47 = sub_2A511C(v47);
      *v20 = v47;
      if (v47[2])
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v30 = sub_15B95C(a4);
  if (v30)
  {
    v31 = v30;
    v32 = type metadata accessor for ExternalUrlAction();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v92 = v32;
      v96 = v8;
      v34 = v100;
      v35 = *(v100 + 16);
      v95 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
      v36 = v98;
      v97 = v33;
      v102 = v35;
      v35(v98, v33 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v18);

      v37 = sub_3EC1E4();
      v103 = v31;
      v38 = v37;
      v39 = *(v34 + 8);
      v94 = v34 + 8;
      v93 = v39;
      v39(v36, v18);
      v40 = *(v38 + 16);

      if (v40)
      {
        v102(v20, &v95[v97], v18);
        v91 = sub_3E7864();
        v90 = v41;
        v42 = sub_3E89B4();
        v44 = v43;
        v95 = sub_3EC1D4();
        v46 = v45;
        v47 = *v45;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if (result)
        {
          if (v47[2])
          {
LABEL_8:
            sub_3EC044();
            v49 = sub_3EC024();
            v110 = &type metadata for String;
            v108 = v42;
            v109 = v44;
            sub_39AB8(&v108, v91, v90);
            v49(v111, 0);
            (v95)(v112, 0);
            v50 = v97;
            v51 = *(v97 + 40);
            v95 = *(v97 + 32);
            v91 = v51;

            v52 = *(v101 + 16);
            v53 = v96;
            v52(v10, v50 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url, v96);
            LOBYTE(v50) = *(v50 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive);
            v54 = v102;
            v102(v98, v20, v18);
            v55 = swift_allocObject();
            v52((v55 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url), v10, v53);
            *(v55 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = v50;
            *(v55 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = 0;
            v56 = v98;
            v54(v99, v98, v18);
            v57 = sub_3EC634();
            v58 = v107;
            (*(*(v57 - 8) + 56))(v107, 1, 1, v57);
            v59 = v104;
            sub_3E5FB4();
            v60 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
            v62 = v61;

            (*(v105 + 8))(v59, v106);
            v63 = v93;
            v93(v56, v18);
            (*(v101 + 8))(v10, v96);
            v63(v20, v18);
            *(v55 + 16) = v60;
            *(v55 + 24) = v62;
            v64 = v91;
            *(v55 + 32) = v95;
            *(v55 + 40) = v64;
            *(v55 + 48) = 32;
            (*(v100 + 32))(v55 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v99, v18);
            sub_14A10(v58, v55 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
            return v55;
          }

          goto LABEL_29;
        }

LABEL_28:
        result = sub_2A511C(v47);
        *v46 = result;
        if (*(result + 16))
        {
          goto LABEL_8;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  return sub_15B95C(a4);
}

uint64_t sub_15B95C(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v10 = __chkstk_darwin(v9);
  v11 = *(v3 + 16);
  v11(&v18 - v12, v1, a1, v10);
  type metadata accessor for UpsellBanner();
  if (swift_dynamicCast())
  {
    v13 = v19;
    v14 = &OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action;
  }

  else
  {
    (v11)(v8, v1, a1);
    type metadata accessor for UpsellInformation();
    if (swift_dynamicCast())
    {
      v16 = v19;
      v15 = *&v19[OBJC_IVAR____TtC8ShelfKit17UpsellInformation_externalUrlAction];

      return v15;
    }

    (v11)(v5, v1, a1);
    type metadata accessor for ShowHeader();
    if (!swift_dynamicCast())
    {
      return 0;
    }

    v13 = v19;
    v14 = &OBJC_IVAR____TtC8ShelfKit10ShowHeader_secondaryButtonAction;
  }

  v15 = *&v13[*v14];

  return v15;
}

id sub_15BB64(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_3ED204();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_3E5B84();

    swift_willThrow();
  }

  return v6;
}

uint64_t HighlightResource.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HighlightResource() + 24);

  return sub_189AC(v3, a1);
}

uint64_t type metadata accessor for HighlightResource()
{
  result = qword_4F43D8;
  if (!qword_4F43D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HighlightResource.init(id:adamID:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v6 = a5 + *(type metadata accessor for HighlightResource() + 24);

  return sub_1893C(a4, v6);
}

uint64_t sub_15BDA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64496D616461;
  if (v2 != 1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64496D616461;
  if (*a2 != 1)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_15BE88()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_15BF14()
{
  sub_3ED394();
}

Swift::Int sub_15BF8C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_15C014@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_15CB48(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_15C044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64496D616461;
  if (v2 != 1)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_15C08C()
{
  v1 = 0x64496D616461;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}