uint64_t sub_1B75A1BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75A1C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MapsTransactionInsight.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = type metadata accessor for MapsTransactionInsight(0);
  v43 = v18[5];
  *(a2 + v43) = 512;
  v19 = v18[6];
  v20 = type metadata accessor for MapsMerchant();
  v21 = *(v20 - 8);
  v45 = *(v21 + 56);
  v46 = v19;
  v44 = v21 + 56;
  v45(a2 + v19, 1, 1, v20);
  v22 = v18[7];
  v23 = type metadata accessor for MapsBrand();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v49 = v23;
  v50 = v22;
  v47 = v24 + 56;
  v48 = v25;
  (v25)(a2 + v22, 1, 1);
  v26 = [a1 updatedAt];
  if (v26)
  {
    v27 = v26;
    sub_1B77FF928();

    v28 = *(v12 + 32);
    v28(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v28(v17, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1B77FF938();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1B7205418(v10, &qword_1EB98EBD0);
    }
  }

  (*(v12 + 32))(a2, v17, v11);
  v29 = [a1 categoryAndSource];
  if (v29)
  {
    v30 = v29;
    TransactionCategory.init(_:)([v30 category], &v54);
    v31 = v54;
    TransactionCategorySource.init(_:)([v30 source], &v53);

    if (v53)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32 | v31;
  }

  else
  {
    v33 = 512;
  }

  v34 = v51;
  v35 = v52;
  *(a2 + v43) = v33;
  v36 = [a1 merchant];
  if (v36)
  {
    sub_1B72D2714(v36, v34);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = 1;
  v45(v34, v37, 1, v20);
  sub_1B7213740(v34, a2 + v46, &unk_1EB99CF50);
  v39 = [a1 brand];
  if (v39)
  {
    v40 = v39;
    sub_1B73D6748(v40, v35);

    v38 = 0;
  }

  v48(v35, v38, 1, v49);
  return sub_1B7213740(v35, a2 + v50, &qword_1EB9981B0);
}

uint64_t MapsTransactionInsight.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MapsTransactionInsight.updatedAt.setter(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MapsTransactionInsight.categoryAndSource.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for MapsTransactionInsight(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MapsTransactionInsight.categoryAndSource.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for MapsTransactionInsight(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t MapsTransactionInsight.init(updatedAt:categoryAndSource:merchant:brand:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for MapsTransactionInsight(0);
  v11 = v10[5];
  *(a5 + v11) = 512;
  v12 = v10[6];
  v13 = type metadata accessor for MapsMerchant();
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  v14 = v10[7];
  v15 = type metadata accessor for MapsBrand();
  (*(*(v15 - 8) + 56))(a5 + v14, 1, 1, v15);
  v16 = sub_1B77FF988();
  (*(*(v16 - 8) + 32))(a5, a1, v16);
  *(a5 + v11) = v9;
  sub_1B7213740(a3, a5 + v12, &unk_1EB99CF50);
  return sub_1B7213740(a4, a5 + v14, &qword_1EB9981B0);
}

unint64_t sub_1B75A268C()
{
  v1 = 0x4164657461647075;
  v2 = 0x746E61686372656DLL;
  if (*v0 != 2)
  {
    v2 = 0x646E617262;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1B75A270C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75A419C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75A2734(uint64_t a1)
{
  v2 = sub_1B75A3C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75A2770(uint64_t a1)
{
  v2 = sub_1B75A3C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsTransactionInsight.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75A3C88();
  sub_1B78023F8();
  v12 = 0;
  sub_1B77FF988();
  sub_1B71A7190(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
  sub_1B7801FC8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for MapsTransactionInsight(0) + 20));
    v10[11] = 1;
    sub_1B75A3CDC();
    sub_1B7801F38();
    v10[10] = 2;
    type metadata accessor for MapsMerchant();
    sub_1B71A7190(&qword_1EB99D0A0, type metadata accessor for MapsMerchant);
    sub_1B7801F38();
    v10[9] = 3;
    type metadata accessor for MapsBrand();
    sub_1B71A7190(&qword_1EB9981E0, type metadata accessor for MapsBrand);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MapsTransactionInsight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v27 - v6;
  v32 = sub_1B77FF988();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9981E8);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v27 - v8;
  v10 = type metadata accessor for MapsTransactionInsight(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[7];
  *&v13[v14] = 512;
  v15 = v11[8];
  v16 = type metadata accessor for MapsMerchant();
  v17 = *(*(v16 - 8) + 56);
  v37 = v15;
  v17(&v13[v15], 1, 1, v16);
  v18 = v11[9];
  v19 = type metadata accessor for MapsBrand();
  v20 = *(*(v19 - 8) + 56);
  v38 = v18;
  v20(&v13[v18], 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75A3C88();
  v34 = v9;
  v21 = v36;
  sub_1B78023C8();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B7205418(&v13[v37], &unk_1EB99CF50);
    return sub_1B7205418(&v13[v38], &qword_1EB9981B0);
  }

  else
  {
    v36 = v14;
    v23 = v29;
    v22 = v30;
    v43 = 0;
    sub_1B71A7190(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v24 = v32;
    sub_1B7801E48();
    (*(v23 + 32))(v13, v33, v24);
    v42 = 1;
    sub_1B75A3D30();
    sub_1B7801DB8();
    *&v13[v36] = v41;
    v40 = 2;
    sub_1B71A7190(&qword_1EB998200, type metadata accessor for MapsMerchant);
    sub_1B7801DB8();
    sub_1B7213740(v22, &v13[v37], &unk_1EB99CF50);
    v39 = 3;
    sub_1B71A7190(&unk_1EB998208, type metadata accessor for MapsBrand);
    v25 = v28;
    sub_1B7801DB8();
    (*(v31 + 8))(v34, v35);
    sub_1B7213740(v25, &v13[v38], &qword_1EB9981B0);
    sub_1B75A3D84(v13, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B75A430C(v13, type metadata accessor for MapsTransactionInsight);
  }
}

id MapsTransactionInsight.XPC.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B75A3D84(a1, v3 + OBJC_IVAR___XPCMapsTransactionInsight_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B75A430C(a1, type metadata accessor for MapsTransactionInsight);
  return v4;
}

id MapsTransactionInsight.XPC.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B75A3D84(a1, v1 + OBJC_IVAR___XPCMapsTransactionInsight_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B75A430C(a1, type metadata accessor for MapsTransactionInsight);
  return v4;
}

id MapsTransactionInsight.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208A60(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id MapsTransactionInsight.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208A60(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id MapsTransactionInsight.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsTransactionInsight.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B75A3504(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B75A3D84(a1, v3 + OBJC_IVAR___XPCMapsTransactionInsight_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B75A430C(a1, type metadata accessor for MapsTransactionInsight);
  return v4;
}

id MapsTransactionInsight.xpcValue.getter()
{
  v1 = type metadata accessor for MapsTransactionInsight(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75A3D84(v0, v3);
  v4 = type metadata accessor for MapsTransactionInsight.XPC(0);
  v5 = objc_allocWithZone(v4);
  sub_1B75A3D84(v3, v5 + OBJC_IVAR___XPCMapsTransactionInsight_value);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1B75A430C(v3, type metadata accessor for MapsTransactionInsight);
  return v6;
}

BOOL _s10FinanceKit22MapsTransactionInsightV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsBrand();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998260);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for MapsMerchant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D370);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  if ((sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for MapsTransactionInsight(0);
  v22 = *(v21 + 20);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  v25 = v24 & 0xFF00;
  if ((v23 & 0xFF00) == 0x200)
  {
    if (v25 != 512)
    {
      return 0;
    }
  }

  else if (v25 == 512 || v24 != v23 || ((v24 & 0x100) == 0) == (v23 & 0x100) >> 8)
  {
    return 0;
  }

  v45 = v6;
  v46 = v21;
  v26 = *(v21 + 24);
  v27 = *(v18 + 48);
  sub_1B7205588(a1 + v26, v20, &unk_1EB99CF50);
  v28 = a2 + v26;
  v29 = v27;
  sub_1B7205588(v28, &v20[v27], &unk_1EB99CF50);
  v30 = *(v12 + 48);
  if (v30(v20, 1, v11) == 1)
  {
    if (v30(&v20[v29], 1, v11) == 1)
    {
      sub_1B7205418(v20, &unk_1EB99CF50);
      goto LABEL_15;
    }

LABEL_13:
    v31 = &unk_1EB99D370;
    v32 = v20;
LABEL_21:
    sub_1B7205418(v32, v31);
    return 0;
  }

  sub_1B7205588(v20, v17, &unk_1EB99CF50);
  if (v30(&v20[v29], 1, v11) == 1)
  {
    sub_1B75A430C(v17, type metadata accessor for MapsMerchant);
    goto LABEL_13;
  }

  sub_1B75A436C(&v20[v29], v14, type metadata accessor for MapsMerchant);
  v33 = static MapsMerchant.== infix(_:_:)(v17, v14);
  sub_1B75A430C(v14, type metadata accessor for MapsMerchant);
  sub_1B75A430C(v17, type metadata accessor for MapsMerchant);
  sub_1B7205418(v20, &unk_1EB99CF50);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v34 = *(v46 + 28);
  v35 = *(v9 + 48);
  v36 = a1 + v34;
  v37 = v50;
  sub_1B7205588(v36, v50, &qword_1EB9981B0);
  sub_1B7205588(a2 + v34, v37 + v35, &qword_1EB9981B0);
  v38 = v49;
  v39 = *(v48 + 48);
  if (v39(v37, 1, v49) != 1)
  {
    v40 = v47;
    sub_1B7205588(v37, v47, &qword_1EB9981B0);
    if (v39(v37 + v35, 1, v38) == 1)
    {
      sub_1B75A430C(v40, type metadata accessor for MapsBrand);
      goto LABEL_20;
    }

    v42 = v37 + v35;
    v43 = v45;
    sub_1B75A436C(v42, v45, type metadata accessor for MapsBrand);
    v44 = static MapsBrand.== infix(_:_:)(v40, v43);
    sub_1B75A430C(v43, type metadata accessor for MapsBrand);
    sub_1B75A430C(v40, type metadata accessor for MapsBrand);
    sub_1B7205418(v37, &qword_1EB9981B0);
    return (v44 & 1) != 0;
  }

  if (v39(v37 + v35, 1, v38) != 1)
  {
LABEL_20:
    v31 = &qword_1EB998260;
    v32 = v37;
    goto LABEL_21;
  }

  sub_1B7205418(v37, &qword_1EB9981B0);
  return 1;
}

unint64_t sub_1B75A3C88()
{
  result = qword_1EB9981C0;
  if (!qword_1EB9981C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9981C0);
  }

  return result;
}

unint64_t sub_1B75A3CDC()
{
  result = qword_1EB9981D0;
  if (!qword_1EB9981D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9981D0);
  }

  return result;
}

unint64_t sub_1B75A3D30()
{
  result = qword_1EB9981F8;
  if (!qword_1EB9981F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9981F8);
  }

  return result;
}

uint64_t sub_1B75A3D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsTransactionInsight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B75A3E30()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B75A3F1C();
    if (v1 <= 0x3F)
    {
      sub_1B75A3F6C(319, &qword_1EB998230, type metadata accessor for MapsMerchant);
      if (v2 <= 0x3F)
      {
        sub_1B75A3F6C(319, &qword_1EB99D1E0, type metadata accessor for MapsBrand);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B75A3F1C()
{
  if (!qword_1EB998228)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB998228);
    }
  }
}

void sub_1B75A3F6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B75A3FC8()
{
  result = type metadata accessor for MapsTransactionInsight(319);
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

unint64_t sub_1B75A4098()
{
  result = qword_1EB998248;
  if (!qword_1EB998248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998248);
  }

  return result;
}

unint64_t sub_1B75A40F0()
{
  result = qword_1EB998250;
  if (!qword_1EB998250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998250);
  }

  return result;
}

unint64_t sub_1B75A4148()
{
  result = qword_1EB998258;
  if (!qword_1EB998258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998258);
  }

  return result;
}

uint64_t sub_1B75A419C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4164657461647075 && a2 == 0xE900000000000074;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7885B30 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E617262 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B75A430C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75A436C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id BankConnectEvaluationManager.__allocating_init(store:discoveryCardReevaluator:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1B75A53F0(a1, v10, v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

id BankConnectEvaluationManager.init(store:discoveryCardReevaluator:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1B75A53F0(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_1B75A45F4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10FinanceKit28BankConnectEvaluationManager_discoveryCardReevaluator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1B75A4724;

  return v6(v2, v3);
}

uint64_t sub_1B75A4724()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B75A4858, 0, 0);
}

uint64_t sub_1B75A4858()
{
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B78000B8();
  __swift_project_value_buffer(v2, qword_1EDAF65B0);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7198000, v4, v5, "Failed to refresh Bank Connect institution cache: %@", v8, 0xCu);
    sub_1B726B694(v9);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B75A4B60(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B75A4C08;

  return BankConnectEvaluationManager.reevaluateEligibility()();
}

uint64_t sub_1B75A4C08()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B75A4D98(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = [*(*(v3 + OBJC_IVAR____TtC10FinanceKit28BankConnectEvaluationManager_store) + 16) newBackgroundContext];
  v6 = v5;
  v7 = *(a1 + 16);
  if (v7 && (v8 = sub_1B7247064(v7, 0), v9 = sub_1B72619E8(v21, v8 + 4, v7, a1), v10 = v21[4], , v5 = sub_1B71B7B58(), v9 != v7))
  {
    __break(1u);
    swift_once();
    v11 = sub_1B78000B8();
    __swift_project_value_buffer(v11, qword_1EDAF65B0);
    v12 = v10;
    v13 = sub_1B7800098();
    v14 = sub_1B78011D8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1B7198000, v13, v14, a3, v15, 0xCu);
      sub_1B726B694(v16);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_1B7801468();

    return LOBYTE(v21[0]);
  }
}

uint64_t sub_1B75A502C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = sub_1B7800FA8();
  v7 = a1;
  LOBYTE(a4) = a4(v6);

  return a4 & 1;
}

unint64_t sub_1B75A50A0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  result = static ManagedInternalAccount.existingAccounts(withExternalAccountIDs:in:)(a1);
  if (!v2)
  {
    if (result >> 62)
    {
      v6 = sub_1B7801958();
    }

    else
    {
      v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v6 != 0;
  }

  return result;
}

uint64_t sub_1B75A5144@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v9 = sub_1B72D0D44(a1);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v9;
  (*(v6 + 8))(v8, v5);
  v19 = a2;
  if (v11 >> 62)
  {
LABEL_18:
    v12 = sub_1B7801958();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  do
  {
    v14 = v13;
    if (v12 == v13)
    {
      break;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B8CA5DC0](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = [v15 linkable];

    v13 = v14 + 1;
  }

  while (!v17);

  *v19 = v12 != v14;
  return result;
}

id BankConnectEvaluationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectEvaluationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B75A53F0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *&a3[OBJC_IVAR____TtC10FinanceKit28BankConnectEvaluationManager_store] = a1;
  sub_1B719B06C(v15, &a3[OBJC_IVAR____TtC10FinanceKit28BankConnectEvaluationManager_discoveryCardReevaluator]);
  v14.receiver = a3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_1B75A5528()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B7201BB0;

  return sub_1B75A4B60(v2, v3);
}

uint64_t BankConnectService.loadAccount(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for BankConnectService.Message();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75A566C, 0, 0);
}

uint64_t sub_1B75A566C()
{
  v1 = v0[7];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B7293C64;
  v4 = v0[7];
  v5 = v0[2];

  return sub_1B7275F3C(v5, v4);
}

uint64_t BankConnectService.loadAccount(for:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  *(v3 + 56) = *(a2 + 1);
  *(v3 + 72) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1B75A57F4, 0, 0);
}

uint64_t sub_1B75A57F4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  *v4 = v0[6];
  v4[1] = v3;
  v4[2] = v1;
  v4[3] = v2;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B75A58E4;
  v6 = v0[5];
  v7 = v0[2];

  return sub_1B7275F3C(v7, v6);
}

uint64_t sub_1B75A58E4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B731C248, 0, 0);
}

uint64_t sub_1B75A5A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[6] = v5;
  v4[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B75A5AE4, 0, 0);
}

uint64_t sub_1B75A5AE4()
{
  v1 = v0[6];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B72946AC;
  v4 = v0[6];
  v5 = v0[2];

  return sub_1B7275F3C(v5, v4);
}

uint64_t sub_1B75A5BC0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = *a2;
  *(v3 + 56) = *(a2 + 8);
  *(v3 + 72) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B75A5C74, 0, 0);
}

uint64_t sub_1B75A5C74()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  *v4 = v0[6];
  v4[1] = v3;
  v4[2] = v1;
  v4[3] = v2;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B75A5D64;
  v6 = v0[4];
  v7 = v0[2];

  return sub_1B7275F3C(v7, v6);
}

uint64_t sub_1B75A5D64()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B75A5EC8, 0, 0);
}

uint64_t sub_1B75A5EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of BankConnectAccountUpdating.loadAccount(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectAccountUpdating.loadAccount(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

uint64_t BankConnectService.insertOrUpdateInstitution(_:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = type metadata accessor for BankConnectService.Message();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75A6238, 0, 0);
}

uint64_t sub_1B75A6238()
{
  v1 = v0[13];
  v2 = v0[10];
  v0[14] = *(v0[11] + 16);
  sub_1B721D304(v2, v1);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B75A62C0, 0, 0);
}

uint64_t sub_1B75A62C0()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1B75A6364;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B75A6364()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B75A64F0;
  }

  else
  {
    v2 = sub_1B75A6480;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75A6480()
{
  sub_1B7267DAC(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B75A64F0()
{
  sub_1B7267DAC(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B75A6560(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.insertOrUpdateInstitution(_:)(a1);
}

uint64_t dispatch thunk of BankConnectInstitutionUpdating.insertOrUpdateInstitution(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

id static ManagedTransaction.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedTransaction;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedTransaction.dictionaryFetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedTransaction;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);
  [v0 setResultType_];
  return v0;
}

uint64_t static ManagedTransaction.predicateForTransactions(forAccountID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

id static ManagedTransaction.predicateForVisiblePassKitTransactions()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7290];
  v3 = MEMORY[0x1E69E72E8];
  *(v1 + 16) = xmmword_1B7807CD0;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 32) = 2;
  *(v0 + 32) = sub_1B78010E8();
  *(v0 + 40) = sub_1B78010E8();
  v4 = sub_1B7800C18();

  v5 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v5;
}

id sub_1B75A6A20(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1B748E338();
    v4 = sub_1B7800708();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _s10FinanceKit21CoreAnalyticsProviderC9sendEventyyAA0dG0_pF_0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = sub_1B7800838();

  sub_1B719B06C(a1, v8);
  v5 = swift_allocObject();
  sub_1B71E4C44(v8, v5 + 16);
  aBlock[4] = sub_1B75A6E44;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B75A6A20;
  aBlock[3] = &block_descriptor_9;
  v6 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t _s10FinanceKit21CoreAnalyticsProviderC10sendEventsyySayAA0D5Event_pGF_0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      sub_1B719B06C(v2, v10);
      v3 = v11;
      v4 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v4 + 8))(v3, v4);
      v5 = sub_1B7800838();

      sub_1B719B06C(v10, v9);
      v6 = swift_allocObject();
      sub_1B71E4C44(v9, v6 + 16);
      v8[4] = sub_1B75A6DE0;
      v8[5] = v6;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1B75A6A20;
      v8[3] = &block_descriptor_13;
      v7 = _Block_copy(v8);

      AnalyticsSendEventLazy();
      _Block_release(v7);

      result = __swift_destroy_boxed_opaque_existential_1(v10);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B75A6DEC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t RunningBoardServices.terminationRequest(forBundleIdentifier:explanation:)@<X0>(id (**a1)()@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69C7650]);
  v3 = sub_1B7800838();
  v4 = [v2 initWithExplanation_];

  v5 = sub_1B7800838();
  v6 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69C7660]) initWithPredicate:v6 context:v4];
  result = swift_allocObject();
  *(result + 16) = v7;
  *a1 = sub_1B75A7000;
  a1[1] = result;
  return result;
}

id sub_1B75A6F5C(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ([a1 execute_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_1B77FF318();

  return swift_willThrow();
}

uint64_t sub_1B75A701C@<X0>(id (**a1)()@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69C7650]);
  v3 = sub_1B7800838();
  v4 = [v2 initWithExplanation_];

  v5 = sub_1B7800838();
  v6 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69C7660]) initWithPredicate:v6 context:v4];
  result = swift_allocObject();
  *(result + 16) = v7;
  *a1 = sub_1B75A715C;
  a1[1] = result;
  return result;
}

uint64_t ImageProcessingService.__allocating_init(connection:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  [*(a1 + 16) resume];
  return v2;
}

uint64_t ImageProcessingService.init(connection:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  [*(a1 + 16) resume];
  return v1;
}

uint64_t ImageProcessingService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

CGColorRef ImageProcessingService.backgroundColor(forImageWithData:)(uint64_t a1, unint64_t a2)
{
  v6 = *(v2 + 16);
  sub_1B720ABEC(a1, a2);
  v7 = sub_1B741B504(v6, a1, a2);
  sub_1B720A388(a1, a2);
  if (v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    return 0;
  }

  v9 = StorableColor.cgColor.getter();

  return v9;
}

uint64_t ImageProcessingService.renderThumbnail(with:size:scale:options:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = a2[2];
  v12 = *(a2 + 24);
  *&v17 = a1;
  *(&v17 + 1) = a3;
  v18 = a4;
  v19 = a5;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v13 = *(v5 + 16);
  sub_1B720A8E4(&v17, &v15);

  sub_1B741A38C(v13, &v17, &v16);
  result = sub_1B720A994(&v17);
  if (!v6)
  {
    return v16;
  }

  return result;
}

uint64_t ImageProcessingService.generateIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(type metadata accessor for MapsTransactionInsight(0) - 8);
  v3[6] = v4;
  v3[7] = *(v4 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75A744C, 0, 0);
}

uint64_t sub_1B75A744C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = *(v0[5] + 16);
  sub_1B75A3D84(v0[4], v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[9] = v5;
  sub_1B75A823C(v1, v5 + v4);
  v0[2] = v3;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v6[2] = v0 + 2;
  v6[3] = &unk_1B7843370;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1B75A758C;

  return (sub_1B72BA130)(&unk_1B7843380, v6);
}

uint64_t sub_1B75A758C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1B75A778C;
  }

  else
  {

    v4 = sub_1B75A76B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B75A76B0()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR___XPCTransactionIcon_value];
    v10 = *&v1[OBJC_IVAR___XPCTransactionIcon_value + 8];
    v3 = v1[OBJC_IVAR___XPCTransactionIcon_value + 24];
    v4 = *&v1[OBJC_IVAR___XPCTransactionIcon_value + 32];
    sub_1B720ABEC(v2, *&v1[OBJC_IVAR___XPCTransactionIcon_value + 8]);
    v5 = v4;

    v6 = v10;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v6 = 0uLL;
    v4 = 1;
  }

  v7 = v0[3];
  *v7 = v2;
  *(v7 + 8) = v6;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B75A778C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B75A7804(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  type metadata accessor for MapsTransactionInsight(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[26] = v6;
  v3[27] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B75A7904, 0, 0);
}

uint64_t sub_1B75A7904()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 20;
  v4 = v0[26];
  v13 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  sub_1B75A3D84(v1[22], v4);
  v8 = type metadata accessor for MapsTransactionInsight.XPC(0);
  v9 = objc_allocWithZone(v8);
  sub_1B75A3D84(v4, v9 + OBJC_IVAR___XPCMapsTransactionInsight_value);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v10;
  sub_1B75A84AC(v4);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1B75A7B30;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B7800CE8();
  (*(v5 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B75A7D4C;
  v1[13] = &block_descriptor_14;
  [v13 generateIconFor:v10 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B75A7B30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1B75A7CC0;
  }

  else
  {
    v2 = sub_1B75A7C40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B75A7C40()
{
  v1 = *(v0 + 224);
  **(v0 + 168) = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B75A7CC0()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1B75A7D4C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280);
    sub_1B7800CF8();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998280);
    sub_1B7800D08();
  }
}

CGColorRef sub_1B75A7DF4(uint64_t a1, unint64_t a2)
{
  v6 = *(*v2 + 16);
  sub_1B720ABEC(a1, a2);
  v7 = sub_1B741B504(v6, a1, a2);
  sub_1B720A388(a1, a2);
  if (v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    return 0;
  }

  v9 = StorableColor.cgColor.getter();

  return v9;
}

uint64_t sub_1B75A7EA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return ImageProcessingService.generateIcon(for:)(a1, a2);
}

uint64_t sub_1B75A7F50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = *a2;
  v4[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B75A7F78, 0, 0);
}

uint64_t sub_1B75A7F78()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = v0 + 24;
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998278);
  *v3 = v0;
  v3[1] = sub_1B74BC120;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1B75A849C, v1, v4);
}

uint64_t _s10FinanceKit22ImageProcessingServiceCACycfC_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = sub_1B7800838();
  v2 = [v0 initWithServiceName_];

  v3 = type metadata accessor for XPCEntitlementChecker();
  v4 = swift_allocObject();
  v5 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(v4 + 16) = v6;
  v13[3] = v3;
  v13[4] = &protocol witness table for XPCEntitlementChecker;
  v13[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998288);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  sub_1B719B06C(v13, v7 + 24);
  v8 = objc_opt_self();
  v9 = v2;
  v10 = [v8 interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  [v9 setExportedInterface_];
  __swift_destroy_boxed_opaque_existential_1(v13);
  type metadata accessor for ImageProcessingService();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  [v9 resume];
  return v11;
}

uint64_t sub_1B75A823C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsTransactionInsight(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B75A82A0(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MapsTransactionInsight(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B723838C;

  return sub_1B75A7804(a1, a2, v2 + v7);
}

uint64_t sub_1B75A8384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B75A7F50(a1, v4, v5, v6);
}

uint64_t sub_1B75A84AC(uint64_t a1)
{
  v2 = type metadata accessor for MapsTransactionInsight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

objc_class *ManagedMapsMerchantImporter.addOrUpdateMerchant(_:in:)(uint64_t *a1, void *a2)
{
  v5 = type metadata accessor for MapsMerchant();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = type metadata accessor for ManagedMapsMerchant();
  v12 = v11;
  v13 = static ManagedMapsMerchant.merchant(withMUID:in:)(*a1);
  if (!v2)
  {
    v12 = v13;
    if (v13)
    {
      sub_1B77BEDC0(a1, v13);
      sub_1B745D4F8(a1);
    }

    else
    {
      sub_1B745E71C(a1, v10, type metadata accessor for MapsMerchant);
      v14 = objc_allocWithZone(v11);
      sub_1B745E71C(v10, v8, type metadata accessor for MapsMerchant);
      v15 = a2;
      v16 = sub_1B77BF7C8(v8, v15, v14);

      v12 = v16;
      sub_1B745D4F8(v10);

      sub_1B745E784(v10, type metadata accessor for MapsMerchant);
    }
  }

  return v12;
}

unsigned __int8 *sub_1B75A86F8(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for WPCClassificationMapsItem();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = HIBYTE(v20) & 0xF;
  v23 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v24 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {

    v26 = sub_1B75D5318(v21, v20, 10);
    v40 = v39;

    if (v40)
    {
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  if ((v20 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B7801B48();
    }

    v25 = *result;
    if (v25 == 43)
    {
      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v26 = 0;
          if (result)
          {
            v32 = result + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                goto LABEL_63;
              }

              v29 = __CFADD__(10 * v26, v33);
              v26 = 10 * v26 + v33;
              if (v29)
              {
                goto LABEL_63;
              }

              ++v32;
              if (!--v22)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_75;
    }

    if (v25 != 45)
    {
      if (v23)
      {
        v26 = 0;
        if (result)
        {
          while (1)
          {
            v36 = *result - 48;
            if (v36 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v26, 0xAuLL))
            {
              goto LABEL_63;
            }

            v29 = __CFADD__(10 * v26, v36);
            v26 = 10 * v26 + v36;
            if (v29)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v23)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v26 = 0;
      LOBYTE(v22) = 1;
LABEL_64:
      v56 = v22;
      if (v22)
      {
LABEL_65:
        sub_1B75A8D14();
        swift_allocError();
        swift_willThrow();
        return v20;
      }

LABEL_67:
      v41 = type metadata accessor for ManagedMapsMerchant();
      v20 = v41;
      v42 = static ManagedMapsMerchant.merchant(withMUID:in:)(v26);
      if (!v5)
      {
        v20 = v42;
        if (v42)
        {
          v43 = [v42 muid];
          sub_1B745E71C(a1, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
          v45 = v52;
          v44 = v53;
          sub_1B7228588(v52, v53);
          WPCClassificationMapsItem.init(muid:rawMerchant:encodedStylingInfo:)(v43, v12, v45, v44, v19);
          sub_1B77BE794(v19, v20);
          sub_1B745E784(v19, type metadata accessor for WPCClassificationMapsItem);
          sub_1B745DA00(a1);
        }

        else
        {
          sub_1B745E71C(a1, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
          v46 = objc_allocWithZone(v41);
          sub_1B745E71C(v12, v10, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
          v48 = v52;
          v47 = v53;
          sub_1B7228588(v52, v53);
          WPCClassificationMapsItem.init(muid:rawMerchant:encodedStylingInfo:)(v26, v10, v48, v47, v19);
          sub_1B745E71C(v19, v16, type metadata accessor for WPCClassificationMapsItem);
          v49 = v54;
          v50 = sub_1B77BF62C(v16, v49, v46);

          sub_1B745E784(v19, type metadata accessor for WPCClassificationMapsItem);
          v20 = v50;
          sub_1B745DA00(v12);

          sub_1B745E784(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
        }
      }

      return v20;
    }

    if (v23 >= 1)
    {
      v22 = v23 - 1;
      if (v23 != 1)
      {
        v26 = 0;
        if (result)
        {
          v27 = result + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v26, 0xAuLL))
            {
              goto LABEL_63;
            }

            v29 = 10 * v26 >= v28;
            v26 = 10 * v26 - v28;
            if (!v29)
            {
              goto LABEL_63;
            }

            ++v27;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v22) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v55[0] = *a1;
  v55[1] = v20 & 0xFFFFFFFFFFFFFFLL;
  if (v21 != 43)
  {
    if (v21 != 45)
    {
      if (v22)
      {
        v26 = 0;
        v37 = v55;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          if (!is_mul_ok(v26, 0xAuLL))
          {
            break;
          }

          v29 = __CFADD__(10 * v26, v38);
          v26 = 10 * v26 + v38;
          if (v29)
          {
            break;
          }

          ++v37;
          if (!--v22)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v22)
    {
      if (--v22)
      {
        v26 = 0;
        v30 = v55 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          if (!is_mul_ok(v26, 0xAuLL))
          {
            break;
          }

          v29 = 10 * v26 >= v31;
          v26 = 10 * v26 - v31;
          if (!v29)
          {
            break;
          }

          ++v30;
          if (!--v22)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_74;
  }

  if (v22)
  {
    if (--v22)
    {
      v26 = 0;
      v34 = v55 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        if (!is_mul_ok(v26, 0xAuLL))
        {
          break;
        }

        v29 = __CFADD__(10 * v26, v35);
        v26 = 10 * v26 + v35;
        if (v29)
        {
          break;
        }

        ++v34;
        if (!--v22)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_76:
  __break(1u);
  return result;
}

unint64_t sub_1B75A8D14()
{
  result = qword_1EB998290;
  if (!qword_1EB998290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998290);
  }

  return result;
}

unint64_t sub_1B75A8D7C()
{
  result = qword_1EB998298;
  if (!qword_1EB998298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998298);
  }

  return result;
}

uint64_t OrderChanges.fulfillments.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B75A8E1C(v2);
}

uint64_t OrderChanges.returns.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B75A8E1C(v2);
}

uint64_t sub_1B75A8E1C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t OrderChanges.init(previous:current:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v44 = a1;
  sub_1B7205588(a1, &v41 - v15, &qword_1EB9982A0);
  v17 = type metadata accessor for RawECommerceOrderContent(0);
  v18 = *(*(v17 - 1) + 48);
  if (v18(v16, 1, v17) == 1)
  {
    sub_1B7205418(v16, &qword_1EB9982A0);
    v19 = 3;
  }

  else
  {
    v19 = v16[v17[9]];
    sub_1B75A93B4(v16);
  }

  sub_1B75082A4(v19, *(a2 + v17[9]), v46);
  v43 = LOWORD(v46[0]);
  v20 = v44;
  sub_1B7205588(v44, v14, &qword_1EB9982A0);
  if (v18(v14, 1, v17) == 1)
  {
    sub_1B7205418(v14, &qword_1EB9982A0);
    v21 = *(a2 + v17[17]);

    v22 = 0;
  }

  else
  {
    v22 = *&v14[v17[17]];

    sub_1B75A93B4(v14);
    v21 = *(a2 + v17[17]);
    swift_bridgeObjectRetain_n();
    v23 = sub_1B7320A90(v22, v21);

    if (v23)
    {

      v21 = 0;
      v22 = 1;
    }
  }

  sub_1B7205588(v20, v11, &qword_1EB9982A0);
  if (v18(v11, 1, v17) == 1)
  {
    sub_1B7205418(v11, &qword_1EB9982A0);
    v24 = *(a2 + v17[16]);

    v25 = 0;
  }

  else
  {
    v25 = *&v11[v17[16]];

    sub_1B75A93B4(v11);
    v26 = a2;
    v24 = *(a2 + v17[16]);
    swift_bridgeObjectRetain_n();
    v27 = sub_1B7320A3C(v25, v24);

    if (v27)
    {

      v24 = 0;
      v25 = 1;
    }

    a2 = v26;
    v20 = v44;
  }

  sub_1B7205588(v20, v8, &qword_1EB9982A0);
  if (v18(v8, 1, v17) == 1)
  {
    sub_1B7205418(v8, &qword_1EB9982A0);
  }

  else
  {
    v28 = &v8[v17[14]];
    v29 = *(v28 + 3);
    v47 = *(v28 + 2);
    v48 = v29;
    v49 = *(v28 + 4);
    v30 = *(v28 + 1);
    v46[0] = *v28;
    v46[1] = v30;
    sub_1B7205588(v46, v45, &qword_1EB9982A8);
    sub_1B75A93B4(v8);
    if (*(&v47 + 1))
    {
      v31 = LOBYTE(v46[0]);
      sub_1B7205418(v46, &qword_1EB9982A8);
      v32 = (a2 + v17[14]);
      v33 = *v32;
      if (*(v32 + 5))
      {
        v34 = *v32;
      }

      else
      {
        v34 = 6;
      }

      if (v31 != 6)
      {
        v35 = a2;
        if (v34 == 6)
        {
          sub_1B7205418(v20, &qword_1EB9982A0);
        }

        else
        {
          v40 = sub_1B72C2AEC(v31, v34);
          sub_1B7205418(v20, &qword_1EB9982A0);
          LOWORD(v34) = v33;
          if (v40)
          {
            v37 = 7;
            a2 = v35;
            goto LABEL_29;
          }
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  v36 = (a2 + v17[14]);
  if (!*(v36 + 5))
  {
    sub_1B7205418(v20, &qword_1EB9982A0);
    goto LABEL_28;
  }

  v34 = *v36;
LABEL_24:
  sub_1B7205418(v20, &qword_1EB9982A0);
  if (v34 == 6)
  {
LABEL_28:
    v37 = 7;
    goto LABEL_29;
  }

  v35 = a2;
  LOWORD(v31) = 6;
LABEL_26:
  v37 = v31 | (v34 << 8);
  a2 = v35;
LABEL_29:
  result = sub_1B75A93B4(a2);
  v39 = v42;
  *v42 = v43;
  *(v39 + 1) = v22;
  *(v39 + 2) = v21;
  *(v39 + 3) = v25;
  *(v39 + 4) = v24;
  v39[20] = v37;
  return result;
}

uint64_t sub_1B75A93B4(uint64_t a1)
{
  v2 = type metadata accessor for RawECommerceOrderContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OrderChanges.init(previous:current:)(id a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  v85 = a2;
  v82 = a3;
  v4 = type metadata accessor for RawOrderReturn();
  v89 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v80[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v80[-v7];
  v90 = type metadata accessor for RawOrderFulfillment();
  v8 = *(v90 - 8);
  v9 = MEMORY[0x1EEE9AC00](v90);
  v11 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v80[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v80[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v80[-v18];
  if (a1)
  {
    ManagedECommerceOrderContent.status.getter(&v91);
    v20 = v91;
  }

  else
  {
    v20 = 3;
  }

  ManagedECommerceOrderContent.status.getter(&v92);
  sub_1B75082A4(v20, v92, &v91);
  v81 = v91;
  v84 = a1;
  if (a1)
  {
    v21 = a1;
    v22 = ManagedECommerceOrderContent.fulfillments.getter();

    v23 = *(v22 + 2);
    if (v23)
    {
      v91 = MEMORY[0x1E69E7CC0];
      sub_1B71FE544(0, v23, 0);
      v24 = 32;
      v25 = v91;
      v86 = v22;
      do
      {
        v26 = v25;
        v27 = *&v22[v24];
        if ((v27 & 0x8000000000000000) != 0)
        {
          v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
          ManagedOrderPickupFulfillment.rawOrderPickupFulfillment.getter(v17);
        }

        else
        {
          v28 = v27;
          ManagedOrderShippingFulfillment.rawOrderShippingFulfillment.getter(v17);
        }

        swift_storeEnumTagMultiPayload();
        sub_1B75A9E50(v17, v19, type metadata accessor for RawOrderFulfillment);

        v25 = v26;
        v91 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1B71FE544(v29 > 1, v30 + 1, 1);
          v25 = v91;
        }

        *(v25 + 16) = v30 + 1;
        sub_1B75A9E50(v19, v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, type metadata accessor for RawOrderFulfillment);
        v24 += 8;
        --v23;
        v22 = v86;
      }

      while (v23);
      v83 = v25;

      a1 = v84;
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v83 = 0;
  }

  v31 = ManagedECommerceOrderContent.fulfillments.getter();
  v32 = *(v31 + 2);
  v33 = v88;
  if (v32)
  {
    v91 = MEMORY[0x1E69E7CC0];
    sub_1B71FE544(0, v32, 0);
    v34 = 32;
    v35 = v91;
    do
    {
      v36 = *&v31[v34];
      if ((v36 & 0x8000000000000000) != 0)
      {
        v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
        ManagedOrderPickupFulfillment.rawOrderPickupFulfillment.getter(v11);
      }

      else
      {
        v37 = v36;
        ManagedOrderShippingFulfillment.rawOrderShippingFulfillment.getter(v11);
      }

      swift_storeEnumTagMultiPayload();
      sub_1B75A9E50(v11, v14, type metadata accessor for RawOrderFulfillment);

      v91 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1B71FE544(v38 > 1, v39 + 1, 1);
        v35 = v91;
      }

      *(v35 + 16) = v39 + 1;
      sub_1B75A9E50(v14, v35 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v39, type metadata accessor for RawOrderFulfillment);
      v34 += 8;
      --v32;
      v33 = v88;
    }

    while (v32);

    a1 = v84;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v40 = v83;
  v41 = v87;
  if (v83)
  {

    v42 = sub_1B7320A90(v40, v35);

    if (v42)
    {

      v35 = 0;
      v40 = 1;
    }
  }

  v83 = v40;
  if (!a1)
  {
    v47 = 0;
    goto LABEL_44;
  }

  v43 = a1;
  v44 = ManagedECommerceOrderContent.returns.getter();

  if (v44 >> 62)
  {
    v45 = sub_1B7801958();
    if (v45)
    {
      goto LABEL_32;
    }

LABEL_43:

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_43;
  }

LABEL_32:
  v91 = MEMORY[0x1E69E7CC0];
  sub_1B71FE500(0, v45 & ~(v45 >> 63), 0);
  if (v45 < 0)
  {
    goto LABEL_82;
  }

  v46 = 0;
  v47 = v91;
  do
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1B8CA5DC0](v46, v44);
    }

    else
    {
      v48 = *(v44 + 8 * v46 + 32);
    }

    v49 = v48;
    ManagedOrderReturn.rawOrderReturn.getter(v33);

    v91 = v47;
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1B71FE500(v50 > 1, v51 + 1, 1);
      v47 = v91;
    }

    ++v46;
    *(v47 + 16) = v51 + 1;
    sub_1B75A9E50(v33, v47 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v51, type metadata accessor for RawOrderReturn);
    v41 = v87;
  }

  while (v45 != v46);

LABEL_44:
  v52 = ManagedECommerceOrderContent.returns.getter();
  v53 = v52;
  if (v52 >> 62)
  {
    v54 = sub_1B7801958();
    v90 = v47;
    if (v54)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v90 = v47;
    if (v54)
    {
LABEL_46:
      v91 = MEMORY[0x1E69E7CC0];
      sub_1B71FE500(0, v54 & ~(v54 >> 63), 0);
      if ((v54 & 0x8000000000000000) == 0)
      {
        v55 = 0;
        v56 = v91;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1B8CA5DC0](v55, v53);
          }

          else
          {
            v57 = *(v53 + 8 * v55 + 32);
          }

          v58 = v57;
          ManagedOrderReturn.rawOrderReturn.getter(v41);

          v91 = v56;
          v60 = *(v56 + 16);
          v59 = *(v56 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_1B71FE500(v59 > 1, v60 + 1, 1);
            v56 = v91;
          }

          ++v55;
          *(v56 + 16) = v60 + 1;
          sub_1B75A9E50(v41, v56 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v60, type metadata accessor for RawOrderReturn);
        }

        while (v54 != v55);

        v61 = v90;
        if (v90)
        {
          goto LABEL_55;
        }

LABEL_59:
        v90 = 0;
        goto LABEL_60;
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  v56 = MEMORY[0x1E69E7CC0];
  v61 = v90;
  if (!v90)
  {
    goto LABEL_59;
  }

LABEL_55:

  v62 = sub_1B7320A3C(v61, v56);

  if (v62)
  {

    v56 = 0;
    v90 = 1;
  }

LABEL_60:
  if (!v84 || (v63 = [v84 payment]) == 0)
  {
    LOBYTE(v64) = 6;
    v69 = 1;
    goto LABEL_67;
  }

  v64 = v63;
  v65 = sub_1B7800838();
  [v64 willAccessValueForKey_];

  v66 = [v64 primitiveStatusValue];
  v67 = sub_1B7800838();
  [v64 didAccessValueForKey_];

  if (!v66)
  {

    LOBYTE(v64) = 6;
    v69 = 1;
LABEL_67:
    v70 = [v85 payment];
    if (v70)
    {
      v71 = v70;
      v72 = sub_1B7800838();
      [v71 willAccessValueForKey_];

      v73 = [v71 primitiveStatusValue];
      v74 = sub_1B7800838();
      [v71 didAccessValueForKey_];

      if (v73)
      {
        ManagedOrderPaymentStatus.init(rawValue:)([v73 shortValue]);
        v75 = v91;
        if (v91 != 6)
        {

          v76 = 0;
          v77 = 0x50403000100uLL >> (8 * v75);
          if (v69)
          {
            goto LABEL_77;
          }

          goto LABEL_74;
        }

        goto LABEL_83;
      }
    }

    LOWORD(v77) = 6;
    v76 = 1;
    if (v69)
    {
      goto LABEL_77;
    }

LABEL_74:
    if (v76)
    {

      goto LABEL_79;
    }

    v76 = sub_1B72C2AEC(v64, v77);
LABEL_77:

    if (v76)
    {
      v78 = 7;
LABEL_80:
      v79 = v82;
      *v82 = v81;
      *(v79 + 1) = v83;
      *(v79 + 2) = v35;
      *(v79 + 3) = v90;
      *(v79 + 4) = v56;
      v79[20] = v78;
      return;
    }

LABEL_79:
    v78 = v64 | (v77 << 8);
    goto LABEL_80;
  }

  ManagedOrderPaymentStatus.init(rawValue:)([v66 shortValue]);
  v68 = v91;
  if (v91 != 6)
  {

    v69 = 0;
    v64 = (0x50403000100uLL >> (8 * v68));
    goto LABEL_67;
  }

LABEL_84:
  __break(1u);
}

uint64_t sub_1B75A9E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit6ChangeOySayAA19RawOrderFulfillmentOGG(uint64_t *a1)
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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B75A9EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 42))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1B75A9F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t ApplicationIdentifier.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B75AA010()
{
  v1 = 0x6E65736E6F636572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65736E6F63;
  }
}

uint64_t sub_1B75AA074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75ABFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75AA09C(uint64_t a1)
{
  v2 = sub_1B75AAA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AA0D8(uint64_t a1)
{
  v2 = sub_1B75AAA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AA114(uint64_t a1)
{
  v2 = sub_1B75AAB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AA150(uint64_t a1)
{
  v2 = sub_1B75AAB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AA1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001B787E440 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B75AA23C(uint64_t a1)
{
  v2 = sub_1B75AAA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AA278(uint64_t a1)
{
  v2 = sub_1B75AAA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AA2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001B7885DB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B78020F8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B75AA364(uint64_t a1)
{
  v2 = sub_1B75AAAD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AA3A0(uint64_t a1)
{
  v2 = sub_1B75AAAD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectAuthorizationConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982B0);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982B8);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - v4;
  v5 = sub_1B77FFA18();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982C0);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for BankConnectAuthorizationConfiguration();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982C8);
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AAA2C();
  sub_1B78023F8();
  sub_1B75AB7F4(v44, v15, type metadata accessor for BankConnectAuthorizationConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v35;
    v20 = v42;
    v29 = v15;
    v23 = v43;
    (*(v42 + 32))(v9, v29, v43);
    v49 = 1;
    sub_1B75AAAD4();
    v30 = v37;
    v25 = v46;
    sub_1B7801ED8();
    sub_1B71A6970(&qword_1EB98F718);
    v31 = v38;
    sub_1B7801FC8();
    (*(v28 + 8))(v30, v31);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = v42;
    v21 = v36;
    v22 = v15;
    v23 = v43;
    (*(v42 + 32))(v36, v22, v43);
    v50 = 2;
    sub_1B75AAA80();
    v24 = v39;
    v25 = v46;
    sub_1B7801ED8();
    sub_1B71A6970(&qword_1EB98F718);
    v26 = v41;
    v27 = v47;
    sub_1B7801FC8();
    if (!v27)
    {
      (*(v40 + 8))(v24, v26);
      (*(v20 + 8))(v21, v23);
      return (*(v45 + 8))(v18, v25);
    }

    (*(v40 + 8))(v24, v26);
    v9 = v21;
LABEL_6:
    (*(v20 + 8))(v9, v23);
    return (*(v45 + 8))(v18, v25);
  }

  v48 = 0;
  sub_1B75AAB28();
  v33 = v46;
  sub_1B7801ED8();
  (*(v34 + 8))(v12, v10);
  return (*(v45 + 8))(v18, v33);
}

uint64_t type metadata accessor for BankConnectAuthorizationConfiguration()
{
  result = qword_1EDAF9598;
  if (!qword_1EDAF9598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B75AAA2C()
{
  result = qword_1EB9982D0;
  if (!qword_1EB9982D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9982D0);
  }

  return result;
}

unint64_t sub_1B75AAA80()
{
  result = qword_1EB9982D8;
  if (!qword_1EB9982D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9982D8);
  }

  return result;
}

unint64_t sub_1B75AAAD4()
{
  result = qword_1EB9982E0;
  if (!qword_1EB9982E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9982E0);
  }

  return result;
}

unint64_t sub_1B75AAB28()
{
  result = qword_1EB9982E8;
  if (!qword_1EB9982E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9982E8);
  }

  return result;
}

uint64_t BankConnectAuthorizationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982F0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9982F8);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998300);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998308);
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for BankConnectAuthorizationConfiguration();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v22 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B75AAA2C();
  v23 = v59;
  sub_1B78023C8();
  if (!v23)
  {
    v45 = v19;
    v46 = v16;
    v25 = v54;
    v24 = v55;
    v26 = v56;
    v59 = v21;
    v47 = v13;
    v27 = v58;
    v28 = sub_1B7801E98();
    v29 = (2 * *(v28 + 16)) | 1;
    v61 = v28;
    v62 = v28 + 32;
    v63 = 0;
    v64 = v29;
    v30 = sub_1B721CE54();
    if (v30 == 3 || v63 != v64 >> 1)
    {
      v33 = sub_1B7801B18();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v35 = v47;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v57 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v30)
      {
        if (v30 == 1)
        {
          v65 = 1;
          sub_1B75AAAD4();
          v31 = v24;
          sub_1B7801D38();
          v32 = v57;
          sub_1B77FFA18();
          sub_1B71A6970(&qword_1EB98F740);
          v40 = v45;
          v41 = v50;
          sub_1B7801E48();
          (*(v51 + 8))(v31, v41);
          (*(v32 + 8))(v12, v10);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v42 = v59;
          sub_1B75AB938(v40, v59, type metadata accessor for BankConnectAuthorizationConfiguration);
          v43 = v27;
        }

        else
        {
          v65 = 2;
          sub_1B75AAA80();
          sub_1B7801D38();
          v37 = v57;
          sub_1B77FFA18();
          sub_1B71A6970(&qword_1EB98F740);
          v38 = v46;
          v39 = v53;
          sub_1B7801E48();
          (*(v52 + 8))(v26, v39);
          (*(v37 + 8))(v12, v10);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v42 = v59;
          sub_1B75AB938(v38, v59, type metadata accessor for BankConnectAuthorizationConfiguration);
          v43 = v58;
        }
      }

      else
      {
        v65 = 0;
        sub_1B75AAB28();
        sub_1B7801D38();
        (*(v48 + 8))(v25, v49);
        (*(v57 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v42 = v59;
        swift_storeEnumTagMultiPayload();
        v43 = v27;
      }

      sub_1B75AB938(v42, v43, type metadata accessor for BankConnectAuthorizationConfiguration);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t BankConnectService.initiateConnectionAuthorization(for:fpanID:authorizationConfiguration:authorizationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v7 + 168) = a6;
  *(v7 + 112) = a5;
  *(v7 + 120) = v6;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  type metadata accessor for BankConnectAuthorizationSession();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = type metadata accessor for BankConnectService.Message();
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75AB41C, 0, 0);
}

uint64_t sub_1B75AB41C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 168);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  *(v0 + 152) = *(*(v0 + 120) + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998310);
  v8 = (v1 + v7[12]);
  v9 = v7[16];
  v10 = v7[20];
  sub_1B75AB7F4(v6, v1, type metadata accessor for Institution);
  *v8 = v5;
  v8[1] = v4;
  sub_1B75AB7F4(v2, v1 + v9, type metadata accessor for BankConnectAuthorizationConfiguration);
  *(v1 + v10) = v3;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B75AB544, 0, 0);
}

uint64_t sub_1B75AB544()
{
  v1 = v0[19];
  v2 = v0[16];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B75AB5F0;
  v3 = swift_continuation_init();
  sub_1B722E838(v3, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B75AB5F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = (*v0)[6];
  (*v0)[20] = v3;
  if (!v3)
  {
    v4 = v1[18];
    sub_1B75AB938(v1[16], v1[10], type metadata accessor for BankConnectAuthorizationSession);
    sub_1B7267DAC(v4);

    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B75AB778, 0, 0);
}

uint64_t sub_1B75AB778()
{
  sub_1B7267DAC(*(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B75AB7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75AB85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7201BB0;

  return BankConnectService.initiateConnectionAuthorization(for:fpanID:authorizationConfiguration:authorizationSource:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B75AB938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B75AB9A0()
{
  sub_1B75ABA24(319, &qword_1EDAF9448);
  if (v0 <= 0x3F)
  {
    sub_1B75ABA24(319, qword_1EDAF9450);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B75ABA24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B77FFA18();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t dispatch thunk of BankConnectConnectionAuthorizationInitiating.initiateConnectionAuthorization(for:fpanID:authorizationConfiguration:authorizationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B7201BB0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_1B75ABC14()
{
  result = qword_1EB998318;
  if (!qword_1EB998318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998318);
  }

  return result;
}

unint64_t sub_1B75ABC6C()
{
  result = qword_1EB998320;
  if (!qword_1EB998320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998320);
  }

  return result;
}

unint64_t sub_1B75ABCC4()
{
  result = qword_1EB998328;
  if (!qword_1EB998328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998328);
  }

  return result;
}

unint64_t sub_1B75ABD1C()
{
  result = qword_1EB998330;
  if (!qword_1EB998330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998330);
  }

  return result;
}

unint64_t sub_1B75ABD74()
{
  result = qword_1EB998338;
  if (!qword_1EB998338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998338);
  }

  return result;
}

unint64_t sub_1B75ABDCC()
{
  result = qword_1EB998340;
  if (!qword_1EB998340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998340);
  }

  return result;
}

unint64_t sub_1B75ABE24()
{
  result = qword_1EB998348;
  if (!qword_1EB998348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998348);
  }

  return result;
}

unint64_t sub_1B75ABE7C()
{
  result = qword_1EB998350;
  if (!qword_1EB998350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998350);
  }

  return result;
}

unint64_t sub_1B75ABED4()
{
  result = qword_1EB998358;
  if (!qword_1EB998358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998358);
  }

  return result;
}

unint64_t sub_1B75ABF2C()
{
  result = qword_1EB998360;
  if (!qword_1EB998360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998360);
  }

  return result;
}

unint64_t sub_1B75ABF84()
{
  result = qword_1EB998368;
  if (!qword_1EB998368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998368);
  }

  return result;
}

uint64_t sub_1B75ABFD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65736E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65736E6F636572 && a2 == 0xE900000000000074 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7885D90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t Order.Customer.familyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Order.Customer.familyName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Order.Customer.givenName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Order.Customer.givenName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Order.Customer.organizationName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Order.Customer.organizationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Order.Customer.emailAddress.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Order.Customer.emailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Order.Customer.phoneNumber.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Order.Customer.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

unint64_t sub_1B75AC3C0()
{
  v1 = *v0;
  v2 = 0x614E796C696D6166;
  v3 = 0xD000000000000010;
  v4 = 0x6464416C69616D65;
  if (v1 != 3)
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E6E65766967;
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

uint64_t sub_1B75AC478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75ACF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75AC4A0(uint64_t a1)
{
  v2 = sub_1B75ACD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AC4DC(uint64_t a1)
{
  v2 = sub_1B75ACD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.Customer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998370);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75ACD68();
  sub_1B78023F8();
  v18 = 0;
  v11 = v13[9];
  sub_1B7801EF8();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1B7801EF8();
  v16 = 2;
  sub_1B7801EF8();
  v15 = 3;
  sub_1B7801EF8();
  v14 = 4;
  sub_1B7801EF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.Customer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998380);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75ACD68();
  sub_1B78023C8();
  if (v2)
  {
    v34 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = 0uLL;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    *&v33 = sub_1B7801D78();
    *(&v33 + 1) = v10;
    LOBYTE(v40) = 1;
    v11 = sub_1B7801D78();
    v30 = a2;
    v32 = v11;
    v31 = v12;
    LOBYTE(v40) = 2;
    v13 = sub_1B7801D78();
    v15 = v14;
    LOBYTE(v40) = 3;
    v16 = sub_1B7801D78();
    v18 = v17;
    v49 = 4;
    v19 = sub_1B7801D78();
    v34 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    v24 = v33;
    v35 = v33;
    v25 = v31;
    *&v36 = v32;
    *(&v36 + 1) = v31;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v18;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    v26 = v38;
    v27 = v30;
    v30[2] = v37;
    v27[3] = v26;
    v27[4] = v39;
    v28 = v36;
    *v27 = v35;
    v27[1] = v28;
    sub_1B75ACDEC(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = __PAIR128__(*(&v33 + 1), v24);
    v41 = v32;
    v42 = v25;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v23;
  }

  return sub_1B75ACDBC(&v40);
}

uint64_t Order.Customer.formattedName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DF8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1B77FEEA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  if (v0[3] | v0[1])
  {
    v9 = objc_opt_self();
    (*(v5 + 56))(v3, 1, 1, v4);

    sub_1B77FEE78();
    v10 = sub_1B77FEE88();
    (*(v5 + 8))(v7, v4);
    v11 = [v9 localizedStringFromPersonNameComponents:v10 style:0 options:0];

    v8 = sub_1B7800868();
  }

  return v8;
}

__n128 Order.Customer.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  result = *(a1 + 64);
  *(a2 + 64) = result;
  return result;
}

unint64_t sub_1B75ACD68()
{
  result = qword_1EB998378;
  if (!qword_1EB998378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998378);
  }

  return result;
}

unint64_t sub_1B75ACE48()
{
  result = qword_1EB998388;
  if (!qword_1EB998388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998388);
  }

  return result;
}

unint64_t sub_1B75ACEA0()
{
  result = qword_1EB998390;
  if (!qword_1EB998390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998390);
  }

  return result;
}

unint64_t sub_1B75ACEF8()
{
  result = qword_1EB998398;
  if (!qword_1EB998398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998398);
  }

  return result;
}

uint64_t sub_1B75ACF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7881130 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

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

FinanceKit::OrderInsertOrUpdateOptions __swiftcall OrderInsertOrUpdateOptions.init(shouldNotifyUser:shouldOnboardUser:shouldForceUpdate:shouldSendAnalytics:shouldUpdateWalletMessages:)(Swift::Bool shouldNotifyUser, Swift::Bool shouldOnboardUser, Swift::Bool shouldForceUpdate, Swift::Bool shouldSendAnalytics, Swift::Bool shouldUpdateWalletMessages)
{
  *v5 = shouldNotifyUser;
  v5[1] = shouldOnboardUser;
  v5[2] = shouldForceUpdate;
  v5[3] = shouldUpdateWalletMessages;
  v5[4] = shouldSendAnalytics;
  result.shouldNotifyUser = shouldNotifyUser;
  return result;
}

unint64_t sub_1B75AD228()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B75AD2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75AF560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75AD2DC(uint64_t a1)
{
  v2 = sub_1B75AEC04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AD318(uint64_t a1)
{
  v2 = sub_1B75AEC04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderInsertOrUpdateOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v11[2] = v1[2];
  v11[3] = v8;
  v9 = v1[3];
  v11[0] = v1[4];
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AEC04();
  sub_1B78023F8();
  v16 = 0;
  sub_1B7801F88();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_1B7801F88();
  v14 = 2;
  sub_1B7801F88();
  v13 = 3;
  sub_1B7801F88();
  v12 = 4;
  sub_1B7801F88();
  return (*(v5 + 8))(v7, v4);
}

uint64_t OrderInsertOrUpdateOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AEC04();
  sub_1B78023C8();
  if (!v2)
  {
    v24 = 0;
    v9 = sub_1B7801E08();
    v23 = 1;
    v10 = sub_1B7801E08();
    v22 = 2;
    v19 = sub_1B7801E08();
    v21 = 3;
    v18 = sub_1B7801E08();
    v20 = 4;
    v12 = sub_1B7801E08();
    v16 = v10 & 1;
    v17 = v9 & 1;
    v13 = v19 & 1;
    v14 = v18 & 1;
    (*(v6 + 8))(v8, v5);
    v15 = v16;
    *a2 = v17;
    a2[1] = v15;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B75AD7F0()
{
  v1 = 0x64657461647075;
  if (*v0 != 1)
  {
    v1 = 0x6465726F6E6769;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465747265736E69;
  }
}

uint64_t sub_1B75AD84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75AF714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75AD874(uint64_t a1)
{
  v2 = sub_1B75AEC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AD8B0(uint64_t a1)
{
  v2 = sub_1B75AEC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AD8EC(uint64_t a1)
{
  v2 = sub_1B75AECAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AD928(uint64_t a1)
{
  v2 = sub_1B75AECAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AD964(uint64_t a1)
{
  v2 = sub_1B75AED54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AD9A0(uint64_t a1)
{
  v2 = sub_1B75AED54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AD9DC(uint64_t a1)
{
  v2 = sub_1B75AED00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75ADA18(uint64_t a1)
{
  v2 = sub_1B75AED00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderInsertOrUpdateResultType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983B8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983C0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983C8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AEC58();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B75AED00();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B75AECAC();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B75AED54();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t OrderInsertOrUpdateResultType.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t OrderInsertOrUpdateResultType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9983F8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998400);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998408);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998410);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B75AEC58();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for OrderInsertOrUpdateResultType;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B75AED00();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B75AECAC();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B75AED54();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t OrderInsertOrUpdateResult.fullyQualifiedOrderIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 OrderInsertOrUpdateResult.fullyQualifiedOrderIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

void __swiftcall OrderInsertOrUpdateResult.init(fullyQualifiedOrderIdentifier:resultType:)(FinanceKit::OrderInsertOrUpdateResult *__return_ptr retstr, FinanceKit::FullyQualifiedOrderIdentifier fullyQualifiedOrderIdentifier, FinanceKit::OrderInsertOrUpdateResultType resultType)
{
  v3 = *(fullyQualifiedOrderIdentifier.orderTypeIdentifier._countAndFlagsBits + 16);
  v4 = *(fullyQualifiedOrderIdentifier.orderTypeIdentifier._countAndFlagsBits + 24);
  v5 = *fullyQualifiedOrderIdentifier.orderTypeIdentifier._object;
  retstr->fullyQualifiedOrderIdentifier.orderTypeIdentifier = *fullyQualifiedOrderIdentifier.orderTypeIdentifier._countAndFlagsBits;
  retstr->fullyQualifiedOrderIdentifier.orderIdentifier._countAndFlagsBits = v3;
  retstr->fullyQualifiedOrderIdentifier.orderIdentifier._object = v4;
  retstr->resultType = v5;
}

uint64_t sub_1B75AE4E4()
{
  if (*v0)
  {
    return 0x7954746C75736572;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1B75AE528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001B7879EB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B75AE618(uint64_t a1)
{
  v2 = sub_1B75AEDA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AE654(uint64_t a1)
{
  v2 = sub_1B75AEDA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderInsertOrUpdateResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998418);
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v12 = v1[2];
  v19 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AEDA8();

  sub_1B78023F8();
  v15 = v6;
  v16 = v7;
  v17 = v12;
  v18 = v8;
  v20 = 0;
  sub_1B731BB9C();
  v9 = v13;
  sub_1B7801FC8();

  if (!v9)
  {
    LOBYTE(v15) = v19;
    v20 = 1;
    sub_1B75AEDFC();
    sub_1B7801FC8();
  }

  return (*(v14 + 8))(v5, v3);
}

uint64_t OrderInsertOrUpdateResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998430);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AEDA8();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1B731BBF0();
  sub_1B7801E48();
  v9 = v17;
  v10 = v19;
  v14 = v18;
  v15 = v16;
  v20 = 1;
  sub_1B75AEE50();
  sub_1B7801E48();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v14;
  *a2 = v15;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FinanceStore.insertOrUpdateOrder(data:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FinanceStore.Message();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[4];
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = v9;
  v10[17] = v11;
  v10[18] = v12;
  v10[19] = v13;
  v10[20] = v14;
  swift_storeEnumTagMultiPayload();
  sub_1B720ABEC(a1, a2);
  sub_1B73B9684(v10, a4);
  return sub_1B72A820C(v10);
}

unint64_t sub_1B75AEC04()
{
  result = qword_1EB9983A8;
  if (!qword_1EB9983A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9983A8);
  }

  return result;
}

unint64_t sub_1B75AEC58()
{
  result = qword_1EB9983D8;
  if (!qword_1EB9983D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9983D8);
  }

  return result;
}

unint64_t sub_1B75AECAC()
{
  result = qword_1EB9983E0;
  if (!qword_1EB9983E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9983E0);
  }

  return result;
}

unint64_t sub_1B75AED00()
{
  result = qword_1EB9983E8;
  if (!qword_1EB9983E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9983E8);
  }

  return result;
}

unint64_t sub_1B75AED54()
{
  result = qword_1EB9983F0;
  if (!qword_1EB9983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9983F0);
  }

  return result;
}

unint64_t sub_1B75AEDA8()
{
  result = qword_1EB998420;
  if (!qword_1EB998420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998420);
  }

  return result;
}

unint64_t sub_1B75AEDFC()
{
  result = qword_1EB998428;
  if (!qword_1EB998428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998428);
  }

  return result;
}

unint64_t sub_1B75AEE50()
{
  result = qword_1EB998438;
  if (!qword_1EB998438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998438);
  }

  return result;
}

unint64_t sub_1B75AEEA8()
{
  result = qword_1EB998440;
  if (!qword_1EB998440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998440);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OrderInsertOrUpdateOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderInsertOrUpdateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B75AF03C()
{
  result = qword_1EB998448;
  if (!qword_1EB998448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998448);
  }

  return result;
}

unint64_t sub_1B75AF094()
{
  result = qword_1EB998450;
  if (!qword_1EB998450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998450);
  }

  return result;
}

unint64_t sub_1B75AF0EC()
{
  result = qword_1EB998458;
  if (!qword_1EB998458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998458);
  }

  return result;
}

unint64_t sub_1B75AF144()
{
  result = qword_1EB998460;
  if (!qword_1EB998460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998460);
  }

  return result;
}

unint64_t sub_1B75AF19C()
{
  result = qword_1EB998468;
  if (!qword_1EB998468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998468);
  }

  return result;
}

unint64_t sub_1B75AF1F4()
{
  result = qword_1EB998470;
  if (!qword_1EB998470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998470);
  }

  return result;
}

unint64_t sub_1B75AF24C()
{
  result = qword_1EB998478;
  if (!qword_1EB998478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998478);
  }

  return result;
}

unint64_t sub_1B75AF2A4()
{
  result = qword_1EB998480;
  if (!qword_1EB998480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998480);
  }

  return result;
}

unint64_t sub_1B75AF2FC()
{
  result = qword_1EB998488;
  if (!qword_1EB998488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998488);
  }

  return result;
}

unint64_t sub_1B75AF354()
{
  result = qword_1EB998490;
  if (!qword_1EB998490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998490);
  }

  return result;
}

unint64_t sub_1B75AF3AC()
{
  result = qword_1EB998498;
  if (!qword_1EB998498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998498);
  }

  return result;
}

unint64_t sub_1B75AF404()
{
  result = qword_1EB9984A0;
  if (!qword_1EB9984A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984A0);
  }

  return result;
}

unint64_t sub_1B75AF45C()
{
  result = qword_1EB9984A8;
  if (!qword_1EB9984A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984A8);
  }

  return result;
}

unint64_t sub_1B75AF4B4()
{
  result = qword_1EB9984B0;
  if (!qword_1EB9984B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984B0);
  }

  return result;
}

unint64_t sub_1B75AF50C()
{
  result = qword_1EB9984B8;
  if (!qword_1EB9984B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984B8);
  }

  return result;
}

uint64_t sub_1B75AF560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001B7885DD0 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7885DF0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7885E10 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B7885E30 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7885E50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B75AF714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747265736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657461647075 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t OrderError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1B75AF860()
{
  result = qword_1EB9984C0;
  if (!qword_1EB9984C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984C0);
  }

  return result;
}

uint64_t sub_1B75AF8D8()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465746E617267;
  }
}

uint64_t sub_1B75AF928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75B0A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75AF950(uint64_t a1)
{
  v2 = sub_1B75AFEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AF98C(uint64_t a1)
{
  v2 = sub_1B75AFEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AF9C8(uint64_t a1)
{
  v2 = sub_1B75AFF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AFA04(uint64_t a1)
{
  v2 = sub_1B75AFF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AFA40(uint64_t a1)
{
  v2 = sub_1B75AFFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AFA7C(uint64_t a1)
{
  v2 = sub_1B75AFFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75AFAB8(uint64_t a1)
{
  v2 = sub_1B75AFEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75AFAF4(uint64_t a1)
{
  v2 = sub_1B75AFEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectOfflineLab.Permission.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9984C8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9984D0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9984D8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9984E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75AFEA8();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B75AFF50();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B75AFEFC();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B75AFFA4();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B75AFEA8()
{
  result = qword_1EB9984E8;
  if (!qword_1EB9984E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984E8);
  }

  return result;
}

unint64_t sub_1B75AFEFC()
{
  result = qword_1EB9984F0;
  if (!qword_1EB9984F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984F0);
  }

  return result;
}

unint64_t sub_1B75AFF50()
{
  result = qword_1EB9984F8;
  if (!qword_1EB9984F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9984F8);
  }

  return result;
}

unint64_t sub_1B75AFFA4()
{
  result = qword_1EB998500;
  if (!qword_1EB998500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998500);
  }

  return result;
}

uint64_t BankConnectOfflineLab.Permission.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t BankConnectOfflineLab.Permission.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998508);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998510);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998518);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998520);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B75AFEA8();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for BankConnectOfflineLab.Permission;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B75AFF50();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B75AFEFC();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B75AFFA4();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1B75B05E0()
{
  result = qword_1EB998528;
  if (!qword_1EB998528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998528);
  }

  return result;
}

unint64_t sub_1B75B0668()
{
  result = qword_1EB998530;
  if (!qword_1EB998530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB998538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998530);
  }

  return result;
}

unint64_t sub_1B75B0730()
{
  result = qword_1EB998540;
  if (!qword_1EB998540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998540);
  }

  return result;
}

unint64_t sub_1B75B0788()
{
  result = qword_1EB998548;
  if (!qword_1EB998548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998548);
  }

  return result;
}

unint64_t sub_1B75B07E0()
{
  result = qword_1EB998550;
  if (!qword_1EB998550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998550);
  }

  return result;
}

unint64_t sub_1B75B0838()
{
  result = qword_1EB998558;
  if (!qword_1EB998558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998558);
  }

  return result;
}

unint64_t sub_1B75B0890()
{
  result = qword_1EB998560;
  if (!qword_1EB998560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998560);
  }

  return result;
}

unint64_t sub_1B75B08E8()
{
  result = qword_1EB998568;
  if (!qword_1EB998568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998568);
  }

  return result;
}

unint64_t sub_1B75B0940()
{
  result = qword_1EB998570;
  if (!qword_1EB998570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998570);
  }

  return result;
}

unint64_t sub_1B75B0998()
{
  result = qword_1EB998578;
  if (!qword_1EB998578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998578);
  }

  return result;
}

unint64_t sub_1B75B09F0()
{
  result = qword_1EB998580;
  if (!qword_1EB998580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998580);
  }

  return result;
}

uint64_t sub_1B75B0A44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465746E617267 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696E6564 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B75B0B5C()
{
  if (*v0)
  {
    return 0x70756B636970;
  }

  else
  {
    return 0x676E697070696873;
  }
}

uint64_t sub_1B75B0B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697070696873 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756B636970 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B75B0C6C(uint64_t a1)
{
  v2 = sub_1B75B28B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B0CA8(uint64_t a1)
{
  v2 = sub_1B75B28B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75B0CE4(uint64_t a1)
{
  v2 = sub_1B75B2908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B0D20(uint64_t a1)
{
  v2 = sub_1B75B2908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75B0D5C(uint64_t a1)
{
  v2 = sub_1B75B295C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B0D98(uint64_t a1)
{
  v2 = sub_1B75B295C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.Fulfillment.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998588);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998590);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998598);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75B28B4();
  sub_1B78023F8();
  sub_1B75B2A60(v33, v12, type metadata accessor for Order.Fulfillment);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    sub_1B75B29F8(v12, v29, type metadata accessor for Order.PickupFulfillment);
    v36 = 1;
    sub_1B75B2908();
    v18 = v30;
    v19 = v34;
    sub_1B7801ED8();
    sub_1B75B29B0(&qword_1EB9985B0, type metadata accessor for Order.PickupFulfillment);
    v20 = v32;
    sub_1B7801FC8();
    (*(v31 + 8))(v18, v20);
    sub_1B75B2AC8(v17, type metadata accessor for Order.PickupFulfillment);
    return (*v16)(v15, v19);
  }

  else
  {
    sub_1B75B29F8(v12, v9, type metadata accessor for Order.ShippingFulfillment);
    v35 = 0;
    sub_1B75B295C();
    v22 = v34;
    sub_1B7801ED8();
    sub_1B75B29B0(&qword_1EB9985C0, type metadata accessor for Order.ShippingFulfillment);
    v23 = v27;
    sub_1B7801FC8();
    (*(v26 + 8))(v7, v23);
    sub_1B75B2AC8(v9, type metadata accessor for Order.ShippingFulfillment);
    return (*v16)(v15, v22);
  }
}

uint64_t Order.Fulfillment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9985C8);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9985D0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9985D8);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for Order.Fulfillment();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B75B28B4();
  v19 = v51;
  sub_1B78023C8();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v40 = v12;
  v41 = v15;
  v21 = v49;
  v20 = v50;
  v42 = 0;
  v39 = v17;
  v51 = v9;
  v22 = v48;
  v23 = sub_1B7801E98();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1B721CE4C();
  v26 = v6;
  v27 = v8;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v32 = sub_1B7801B18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v34 = v51;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    v57 = 0;
    sub_1B75B295C();
    v36 = v42;
    sub_1B7801D38();
    if (!v36)
    {
      type metadata accessor for Order.ShippingFulfillment();
      sub_1B75B29B0(&qword_1EB9985E8, type metadata accessor for Order.ShippingFulfillment);
      v30 = v41;
      v37 = v46;
      sub_1B7801E48();
      (*(v45 + 8))(v21, v37);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v57 = 1;
  sub_1B75B2908();
  v28 = v20;
  v29 = v42;
  sub_1B7801D38();
  if (v29)
  {
LABEL_8:
    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  type metadata accessor for Order.PickupFulfillment();
  sub_1B75B29B0(&qword_1EB9985E0, type metadata accessor for Order.PickupFulfillment);
  v30 = v40;
  v31 = v44;
  sub_1B7801E48();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  sub_1B75B29F8(v30, v39, type metadata accessor for Order.Fulfillment);
  sub_1B75B29F8(v38, v43, type metadata accessor for Order.Fulfillment);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t Order.Fulfillment.lineItems.getter()
{
  v1 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75B2A60(v0, v9, type metadata accessor for Order.Fulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B29F8(v9, v3, type metadata accessor for Order.PickupFulfillment);
    v10 = *v3;

    v11 = type metadata accessor for Order.PickupFulfillment;
    v12 = v3;
  }

  else
  {
    sub_1B75B29F8(v9, v6, type metadata accessor for Order.ShippingFulfillment);
    v10 = *v6;

    v11 = type metadata accessor for Order.ShippingFulfillment;
    v12 = v6;
  }

  sub_1B75B2AC8(v12, v11);
  return v10;
}

uint64_t Order.Fulfillment.statusDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75B2A60(v1, v10, type metadata accessor for Order.Fulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B29F8(v10, v4, type metadata accessor for Order.PickupFulfillment);
    v11 = *(v4 + 2);

    v12 = type metadata accessor for Order.PickupFulfillment;
    v13 = v4;
  }

  else
  {
    sub_1B75B29F8(v10, v7, type metadata accessor for Order.ShippingFulfillment);
    v11 = *(v7 + 6);

    v12 = type metadata accessor for Order.ShippingFulfillment;
    v13 = v7;
  }

  sub_1B75B2AC8(v13, v12);
  return v11;
}

uint64_t Order.Fulfillment.fulfillmentIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75B2A60(v1, v10, type metadata accessor for Order.Fulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B29F8(v10, v4, type metadata accessor for Order.PickupFulfillment);
    v11 = *&v4[*(v2 + 56)];

    v12 = type metadata accessor for Order.PickupFulfillment;
    v13 = v4;
  }

  else
  {
    sub_1B75B29F8(v10, v7, type metadata accessor for Order.ShippingFulfillment);
    v11 = *&v7[*(v5 + 60)];

    v12 = type metadata accessor for Order.ShippingFulfillment;
    v13 = v7;
  }

  sub_1B75B2AC8(v13, v12);
  return v11;
}

uint64_t Order.Fulfillment.pickupFulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75B2A60(v2, v6, type metadata accessor for Order.Fulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B29F8(v6, a1, type metadata accessor for Order.PickupFulfillment);
    v7 = 0;
  }

  else
  {
    sub_1B75B2AC8(v6, type metadata accessor for Order.Fulfillment);
    v7 = 1;
  }

  v8 = type metadata accessor for Order.PickupFulfillment();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t Order.Fulfillment.shippingFulfillment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Order.Fulfillment();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75B2A60(v2, v6, type metadata accessor for Order.Fulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B2AC8(v6, type metadata accessor for Order.Fulfillment);
    v7 = 1;
  }

  else
  {
    sub_1B75B29F8(v6, a1, type metadata accessor for Order.ShippingFulfillment);
    v7 = 0;
  }

  v8 = type metadata accessor for Order.ShippingFulfillment();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t Order.Fulfillment.init(_:previewResourceLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RawOrderPickupFulfillment();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23[-v10 - 8];
  v12 = type metadata accessor for RawOrderShippingFulfillment();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23[-v16 - 8];
  v18 = type metadata accessor for RawOrderFulfillment();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B75B2A60(a1, v20, type metadata accessor for RawOrderFulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B29F8(v20, v11, type metadata accessor for RawOrderPickupFulfillment);
    sub_1B75B2A60(v11, v9, type metadata accessor for RawOrderPickupFulfillment);
    sub_1B719B06C(a2, v23);
    Order.PickupFulfillment.init(_:previewResourceLoader:)(v9, v23, a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1B75B2AC8(a1, type metadata accessor for RawOrderFulfillment);
    sub_1B75B2AC8(v11, type metadata accessor for RawOrderPickupFulfillment);
  }

  else
  {
    sub_1B75B29F8(v20, v17, type metadata accessor for RawOrderShippingFulfillment);
    sub_1B75B2A60(v17, v15, type metadata accessor for RawOrderShippingFulfillment);
    sub_1B719B06C(a2, v23);
    Order.ShippingFulfillment.init(_:previewResourceLoader:)(v15, v23, a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1B75B2AC8(a1, type metadata accessor for RawOrderFulfillment);
    sub_1B75B2AC8(v17, type metadata accessor for RawOrderShippingFulfillment);
  }

  type metadata accessor for Order.Fulfillment();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Order.Fulfillment.init(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    Order.PickupFulfillment.init(_:)((a1 & 0x7FFFFFFFFFFFFFFFLL), a2);
  }

  else
  {
    Order.ShippingFulfillment.init(_:)(a1, a2);
  }

  type metadata accessor for Order.Fulfillment();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s10FinanceKit5OrderV11FulfillmentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.PickupFulfillment();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Order.ShippingFulfillment();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Order.Fulfillment();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998648);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1B75B2A60(a1, &v27 - v18, type metadata accessor for Order.Fulfillment);
  sub_1B75B2A60(a2, &v19[v20], type metadata accessor for Order.Fulfillment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B75B2A60(v19, v13, type metadata accessor for Order.Fulfillment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B75B29F8(&v19[v20], v6, type metadata accessor for Order.PickupFulfillment);
      v21 = _s10FinanceKit5OrderV17PickupFulfillmentV2eeoiySbAE_AEtFZ_0(v13, v6);
      sub_1B75B2AC8(v6, type metadata accessor for Order.PickupFulfillment);
      v22 = v13;
      v23 = type metadata accessor for Order.PickupFulfillment;
LABEL_9:
      sub_1B75B2AC8(v22, v23);
      sub_1B75B2AC8(v19, type metadata accessor for Order.Fulfillment);
      return v21 & 1;
    }

    v24 = type metadata accessor for Order.PickupFulfillment;
    v25 = v13;
  }

  else
  {
    sub_1B75B2A60(v19, v15, type metadata accessor for Order.Fulfillment);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B75B29F8(&v19[v20], v9, type metadata accessor for Order.ShippingFulfillment);
      v21 = _s10FinanceKit5OrderV19ShippingFulfillmentV2eeoiySbAE_AEtFZ_0(v15, v9);
      sub_1B75B2AC8(v9, type metadata accessor for Order.ShippingFulfillment);
      v22 = v15;
      v23 = type metadata accessor for Order.ShippingFulfillment;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Order.ShippingFulfillment;
    v25 = v15;
  }

  sub_1B75B2AC8(v25, v24);
  sub_1B75B2EE4(v19);
  v21 = 0;
  return v21 & 1;
}

uint64_t type metadata accessor for Order.Fulfillment()
{
  result = qword_1EB9985F0;
  if (!qword_1EB9985F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B75B28B4()
{
  result = qword_1EB9985A0;
  if (!qword_1EB9985A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9985A0);
  }

  return result;
}

unint64_t sub_1B75B2908()
{
  result = qword_1EB9985A8;
  if (!qword_1EB9985A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9985A8);
  }

  return result;
}

unint64_t sub_1B75B295C()
{
  result = qword_1EB9985B8;
  if (!qword_1EB9985B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9985B8);
  }

  return result;
}

uint64_t sub_1B75B29B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B75B29F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75B2A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75B2AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75B2B28()
{
  result = type metadata accessor for Order.ShippingFulfillment();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Order.PickupFulfillment();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B75B2BD0()
{
  result = qword_1EB998600;
  if (!qword_1EB998600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998600);
  }

  return result;
}

unint64_t sub_1B75B2C28()
{
  result = qword_1EB998608;
  if (!qword_1EB998608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998608);
  }

  return result;
}

unint64_t sub_1B75B2C80()
{
  result = qword_1EB998610;
  if (!qword_1EB998610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998610);
  }

  return result;
}

unint64_t sub_1B75B2CD8()
{
  result = qword_1EB998618;
  if (!qword_1EB998618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998618);
  }

  return result;
}

unint64_t sub_1B75B2D30()
{
  result = qword_1EB998620;
  if (!qword_1EB998620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998620);
  }

  return result;
}

unint64_t sub_1B75B2D88()
{
  result = qword_1EB998628;
  if (!qword_1EB998628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998628);
  }

  return result;
}

unint64_t sub_1B75B2DE0()
{
  result = qword_1EB998630;
  if (!qword_1EB998630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998630);
  }

  return result;
}

unint64_t sub_1B75B2E38()
{
  result = qword_1EB998638;
  if (!qword_1EB998638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998638);
  }

  return result;
}

unint64_t sub_1B75B2E90()
{
  result = qword_1EB998640;
  if (!qword_1EB998640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB998640);
  }

  return result;
}

uint64_t sub_1B75B2EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExtractedOrder.init(trackedOrderIdentifier:fullyQualifiedOrderIdentifier:orderNumber:orderDate:orderUpdateDate:merchant:shippingFulfillments:customer:payment:orderStatus:orderStatusUpdateDate:earliestEmailDateSent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, char *a13, uint64_t a14, uint64_t a15)
{
  v44 = *(a6 + 4);
  v43 = *(a6 + 5);
  v42 = *(a6 + 48);
  v58 = a11[4];
  v59 = a11[5];
  v60 = a11[6];
  v61 = a11[7];
  v54 = *a11;
  v55 = a11[1];
  v56 = a11[2];
  v57 = a11[3];
  v51 = *(a12 + 5);
  v52 = *(a12 + 4);
  v53 = *a13;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = -2;
  v17 = type metadata accessor for ExtractedOrder(0);
  v18 = (a9 + v17[11]);
  sub_1B71CDF28(v62);
  v19 = v62[5];
  v18[4] = v62[4];
  v18[5] = v19;
  v20 = v62[7];
  v18[6] = v62[6];
  v18[7] = v20;
  v21 = v62[1];
  *v18 = v62[0];
  v18[1] = v21;
  v22 = v62[3];
  v18[2] = v62[2];
  v18[3] = v22;
  v23 = (a9 + v17[12]);
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *v23 = 0u;
  v24 = v17[14];
  v25 = sub_1B77FF988();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v45 = a12[1];
  v46 = *a12;
  v28 = a3[1];
  v37 = *a3;
  v39 = *a6;
  v35 = v28;
  v36 = a6[1];
  v27(a9 + v24, 1, 1, v25);
  v29 = v17[15];
  v27(a9 + v29, 1, 1, v25);
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_1B74204FC(*(a9 + 16), *(a9 + 24));
  *(a9 + 16) = v37;
  *(a9 + 32) = v35;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = v39;
  *(a9 + 80) = v36;
  *(a9 + 96) = v44;
  *(a9 + 104) = v43;
  *(a9 + 112) = v42;
  (*(v26 + 32))(a9 + v17[8], a7, v25);
  sub_1B75BF228(a8, a9 + v17[9], type metadata accessor for ExtractedOrder.Merchant);
  *(a9 + v17[10]) = a10;
  v30 = v18[5];
  v63[4] = v18[4];
  v63[5] = v30;
  v31 = v18[7];
  v63[6] = v18[6];
  v63[7] = v31;
  v32 = v18[3];
  v63[2] = v18[2];
  v63[3] = v32;
  v33 = v18[1];
  v63[0] = *v18;
  v63[1] = v33;
  sub_1B7205418(v63, &qword_1EB996B60);
  v18[4] = v58;
  v18[5] = v59;
  v18[6] = v60;
  v18[7] = v61;
  *v18 = v54;
  v18[1] = v55;
  v18[2] = v56;
  v18[3] = v57;
  sub_1B75311F0(*v23, v23[1], v23[2], v23[3], v23[4], v23[5]);
  *v23 = v46;
  *(v23 + 1) = v45;
  v23[4] = v52;
  v23[5] = v51;
  *(a9 + v17[13]) = v53;
  sub_1B72DFF88(a14, a9 + v24);
  return sub_1B72DFF88(a15, a9 + v29);
}

uint64_t ExtractedOrder.Merchant.init(displayName:displayNameUpdateDate:domainName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ExtractedOrder.Merchant(0);
  v13 = *(v12 + 20);
  v14 = sub_1B77FF988();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 24)];
  *a6 = a1;
  *(a6 + 1) = a2;
  result = sub_1B72DFF88(a3, &a6[v13]);
  *v15 = a4;
  *(v15 + 1) = a5;
  return result;
}

uint64_t ExtractedOrder.ShippingFulfillment.init(status:trackingNumber:carrierName:shippingMethod:shippingDate:estimatedDeliveryDate:deliveryDate:shippingRecipient:fulfillmentUpdateDate:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11, __int128 *a12, uint64_t a13)
{
  v16 = *a1;
  v17 = *(a8 + 4);
  v18 = *(a8 + 5);
  v19 = *(a8 + 48);
  v48 = a10[4];
  *v49 = a10[5];
  *&v49[9] = *(a10 + 89);
  v44 = *a10;
  v45 = a10[1];
  v46 = a10[2];
  v47 = a10[3];
  v37 = *(a11 + 5);
  v38 = *(a11 + 4);
  v36 = *(a11 + 48);
  v54 = a12[4];
  v55 = a12[5];
  v56 = a12[6];
  v57 = a12[7];
  v50 = *a12;
  v51 = a12[1];
  v52 = a12[2];
  v53 = a12[3];
  *(a9 + 88) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 104) = -2;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 160) = 0x1FFFFFFFELL;
  *(a9 + 216) = 0;
  *(a9 + 200) = 0u;
  *(a9 + 184) = 0u;
  *(a9 + 168) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 224) = 0u;
  v20 = (a9 + 280);
  *(a9 + 272) = -2;
  sub_1B71CDF28(v58);
  v21 = v58[5];
  *(a9 + 344) = v58[4];
  *(a9 + 360) = v21;
  v22 = v58[7];
  *(a9 + 376) = v58[6];
  *(a9 + 392) = v22;
  v23 = v58[1];
  *v20 = v58[0];
  *(a9 + 296) = v23;
  v24 = v58[3];
  *(a9 + 312) = v58[2];
  *(a9 + 328) = v24;
  v25 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) + 48);
  v26 = sub_1B77FF988();
  v34 = a11[1];
  v35 = *a11;
  v32 = a8[1];
  v33 = *a8;
  (*(*(v26 - 8) + 56))(a9 + v25, 1, 1, v26);
  *a9 = v16;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 72) = v32;
  *(a9 + 56) = v33;
  *(a9 + 88) = v17;
  *(a9 + 96) = v18;
  *(a9 + 104) = v19;
  *(a9 + 176) = v48;
  *(a9 + 192) = *v49;
  *(a9 + 201) = *&v49[9];
  *(a9 + 112) = v44;
  *(a9 + 128) = v45;
  *(a9 + 144) = v46;
  *(a9 + 160) = v47;
  *(a9 + 224) = v35;
  *(a9 + 240) = v34;
  *(a9 + 256) = v38;
  *(a9 + 264) = v37;
  *(a9 + 272) = v36;
  v27 = *(a9 + 360);
  v59[4] = *(a9 + 344);
  v59[5] = v27;
  v28 = *(a9 + 392);
  v59[6] = *(a9 + 376);
  v59[7] = v28;
  v29 = *(a9 + 296);
  v59[0] = *v20;
  v59[1] = v29;
  v30 = *(a9 + 328);
  v59[2] = *(a9 + 312);
  v59[3] = v30;
  sub_1B7205418(v59, &qword_1EB996B70);
  *(a9 + 344) = v54;
  *(a9 + 360) = v55;
  *(a9 + 376) = v56;
  *(a9 + 392) = v57;
  *v20 = v50;
  *(a9 + 296) = v51;
  *(a9 + 312) = v52;
  *(a9 + 328) = v53;
  return sub_1B72DFF88(a13, a9 + v25);
}

__n128 sub_1B75B35C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 48) = xmmword_1B78301C0;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a8 + 96);
  v14[2] = *(a8 + 80);
  v14[3] = v10;
  v14[4] = *(a8 + 112);
  v11 = *(a8 + 64);
  v14[0] = *(a8 + 48);
  v14[1] = v11;
  sub_1B7205418(v14, &qword_1EB996B68);
  v12 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v12;
  *(a8 + 112) = *(a7 + 64);
  result = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = result;
  return result;
}

void __swiftcall ExtractedOrder.Address.init(street:city:state:postalCode:country:)(FinanceKit::ExtractedOrder::Address *__return_ptr retstr, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional postalCode, Swift::String_optional country)
{
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->postalCode = postalCode;
  retstr->country = country;
}

uint64_t ExtractedOrder.Payment.init(totalAmount:totalCurrencyCode:transactions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = BYTE4(a3) & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

__n128 ExtractedOrder.Payment.Transaction.init(amount:currencyCode:paymentMethod:transactionIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *(a6 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  sub_1B7531560(0, 1);
  result = *a6;
  *(a9 + 56) = *(a6 + 16);
  *(a9 + 40) = result;
  *(a9 + 72) = v13;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  return result;
}

void __swiftcall ExtractedOrder.Payment.Transaction.PaymentMethod.init(displayName:suffix:isApplePay:)(FinanceKit::ExtractedOrder::Payment::Transaction::PaymentMethod *__return_ptr retstr, Swift::String_optional displayName, Swift::String_optional suffix, Swift::Bool isApplePay)
{
  retstr->displayName = displayName;
  retstr->suffix = suffix;
  retstr->isApplePay = isApplePay;
}

FinanceKit::ExtractedOrder::OrderStatus_optional __swiftcall ExtractedOrder.OrderStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ExtractedOrder.Merchant.displayNameUpdateDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ExtractedOrder.Merchant(0) + 20);

  return sub_1B72DFF88(a1, v3);
}

uint64_t ExtractedOrder.Merchant.domainName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedOrder.Merchant(0) + 24));

  return v1;
}

uint64_t ExtractedOrder.Merchant.domainName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtractedOrder.Merchant(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1B75B39CC(uint64_t a1)
{
  v2 = sub_1B75BE3D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B3A08(uint64_t a1)
{
  v2 = sub_1B75BE3D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.Merchant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998650);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BE3D0();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F78();
  if (!v1)
  {
    type metadata accessor for ExtractedOrder.Merchant(0);
    v8[14] = 1;
    sub_1B77FF988();
    sub_1B71A71D8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    v8[13] = 2;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtractedOrder.Merchant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998660);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for ExtractedOrder.Merchant(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 20);
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 56);
  v32 = v13;
  v33 = v14;
  v16(v13 + v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BE3D0();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(v32 + v33, &qword_1EB98EBD0);
  }

  else
  {
    v28 = v10;
    v36 = 0;
    v17 = v31;
    v18 = sub_1B7801DF8();
    v19 = v32;
    *v32 = v18;
    *(v19 + 8) = v20;
    v27[1] = v20;
    v35 = 1;
    sub_1B71A71D8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    sub_1B7801DB8();
    sub_1B72DFF88(v6, v19 + v33);
    v34 = 2;
    v21 = sub_1B7801D78();
    v23 = v22;
    v24 = v17;
    v25 = (v19 + *(v28 + 24));
    (*(v30 + 8))(v9, v24);
    *v25 = v21;
    v25[1] = v23;
    sub_1B75BE7C0(v19, v29, type metadata accessor for ExtractedOrder.Merchant);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B75BE828(v19, type metadata accessor for ExtractedOrder.Merchant);
  }
}

FinanceKit::ExtractedOrder::ShippingFulfillment::Status_optional __swiftcall ExtractedOrder.ShippingFulfillment.Status.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ExtractedOrder.ShippingFulfillment.trackingNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExtractedOrder.ShippingFulfillment.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExtractedOrder.ShippingFulfillment.carrierName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExtractedOrder.ShippingFulfillment.carrierName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ExtractedOrder.ShippingFulfillment.shippingMethod.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ExtractedOrder.ShippingFulfillment.shippingMethod.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 ExtractedOrder.ShippingFulfillment.shippingDate.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v3;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 ExtractedOrder.ShippingFulfillment.shippingDate.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  result = *(a1 + 32);
  *(v1 + 88) = result;
  *(v1 + 104) = v2;
  return result;
}

__n128 ExtractedOrder.ShippingFulfillment.estimatedDeliveryDate.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  *(a1 + 64) = *(v1 + 176);
  *(a1 + 80) = v2;
  *(a1 + 89) = *(v1 + 201);
  v3 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v3;
  result = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = result;
  return result;
}

__n128 ExtractedOrder.ShippingFulfillment.estimatedDeliveryDate.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 176) = *(a1 + 64);
  *(v1 + 192) = v2;
  *(v1 + 201) = *(a1 + 89);
  v3 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v3;
  result = *(a1 + 48);
  *(v1 + 144) = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

__n128 ExtractedOrder.ShippingFulfillment.deliveryDate.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 240);
  *a1 = *(v1 + 224);
  *(a1 + 16) = v3;
  result = *(v1 + 256);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 ExtractedOrder.ShippingFulfillment.deliveryDate.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 224) = *a1;
  *(v1 + 240) = v3;
  result = *(a1 + 32);
  *(v1 + 256) = result;
  *(v1 + 272) = v2;
  return result;
}

uint64_t ExtractedOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 360);
  v14 = *(v1 + 344);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 392);
  v16 = *(v1 + 376);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 296);
  v11[0] = *(v1 + 280);
  v11[1] = v6;
  v8 = *(v1 + 328);
  v12 = *(v1 + 312);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B7205588(v11, &v10, &qword_1EB996B70);
}

__n128 ExtractedOrder.ShippingFulfillment.shippingRecipient.setter(uint64_t a1)
{
  v3 = (v1 + 280);
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[1];
  v13[0] = *v3;
  v13[1] = v6;
  v7 = v3[3];
  v13[2] = v3[2];
  v13[3] = v7;
  sub_1B7205418(v13, &qword_1EB996B70);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

uint64_t ExtractedOrder.ShippingFulfillment.fulfillmentUpdateDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) + 48);

  return sub_1B72DFF88(a1, v3);
}

unint64_t sub_1B75B45C0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x737574617473;
    v6 = 0x4E72656972726163;
    if (a1 != 2)
    {
      v6 = 0x676E697070696873;
    }

    if (a1)
    {
      v5 = 0x676E696B63617274;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x79726576696C6564;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E697070696873;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B75B4718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75C0408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75B4740(uint64_t a1)
{
  v2 = sub_1B75BE424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B477C(uint64_t a1)
{
  v2 = sub_1B75BE424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.ShippingFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998668);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BE424();
  sub_1B78023F8();
  LOBYTE(v37) = *v3;
  LOBYTE(v29) = 0;
  sub_1B75BE478();
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v37) = 1;
    sub_1B7801EF8();
    LOBYTE(v37) = 2;
    sub_1B7801EF8();
    LOBYTE(v37) = 3;
    sub_1B7801EF8();
    v9 = *(v3 + 104);
    v10 = *(v3 + 72);
    v49 = *(v3 + 56);
    v50 = v10;
    v51 = *(v3 + 88);
    v52 = v9;
    v48 = 4;
    sub_1B75BE4CC();
    sub_1B7801F38();
    v11 = *(v3 + 192);
    v41 = *(v3 + 176);
    v42[0] = v11;
    *(v42 + 9) = *(v3 + 201);
    v12 = *(v3 + 128);
    v37 = *(v3 + 112);
    v38 = v12;
    v13 = *(v3 + 160);
    v39 = *(v3 + 144);
    v40 = v13;
    LOBYTE(v29) = 5;
    sub_1B75BE520();
    sub_1B7801F38();
    v14 = *(v3 + 272);
    v15 = *(v3 + 240);
    v44 = *(v3 + 224);
    v45 = v15;
    v46 = *(v3 + 256);
    v47 = v14;
    v43 = 6;
    sub_1B75BE574();
    sub_1B7801F38();
    v16 = *(v3 + 360);
    v17 = *(v3 + 328);
    v41 = *(v3 + 344);
    v42[0] = v16;
    v18 = *(v3 + 360);
    v19 = *(v3 + 392);
    v42[1] = *(v3 + 376);
    v42[2] = v19;
    v20 = *(v3 + 296);
    v37 = *(v3 + 280);
    v38 = v20;
    v21 = *(v3 + 328);
    v23 = *(v3 + 280);
    v22 = *(v3 + 296);
    v39 = *(v3 + 312);
    v40 = v21;
    v33 = v41;
    v34 = v18;
    v24 = *(v3 + 392);
    v35 = v42[1];
    v36 = v24;
    v29 = v23;
    v30 = v22;
    v31 = v39;
    v32 = v17;
    v28 = 7;
    sub_1B7205588(&v37, v27, &qword_1EB996B70);
    sub_1B75BE5C8();
    sub_1B7801F38();
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v27[7] = v36;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_1B7205418(v27, &qword_1EB996B70);
    type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
    v26[15] = 8;
    sub_1B77FF988();
    sub_1B71A71D8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ExtractedOrder.ShippingFulfillment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = v50 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9986A0);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = v50 - v5;
  v7 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 88) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 56) = 0u;
  v10[104] = -2;
  *(v10 + 7) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 20) = 0x1FFFFFFFELL;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  v10[216] = 0;
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 16) = 0u;
  v10[272] = -2;
  sub_1B71CDF28(v85);
  v11 = v85[5];
  *(v10 + 344) = v85[4];
  *(v10 + 360) = v11;
  v12 = v85[7];
  *(v10 + 376) = v85[6];
  *(v10 + 392) = v12;
  v13 = v85[1];
  *(v10 + 280) = v85[0];
  *(v10 + 296) = v13;
  v14 = v85[3];
  *(v10 + 312) = v85[2];
  *(v10 + 328) = v14;
  v57 = (v10 + 280);
  v15 = *(v8 + 56);
  v16 = sub_1B77FF988();
  v17 = *(*(v16 - 8) + 56);
  v58 = v15;
  v17(&v10[v15], 1, 1, v16);
  v18 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B75BE424();
  v54 = v6;
  v19 = v56;
  sub_1B78023C8();
  if (v19)
  {
    v21 = v57;
    __swift_destroy_boxed_opaque_existential_1(v86);

    v22 = v21[5];
    v81 = v21[4];
    v82 = v22;
    v23 = v21[7];
    v83 = v21[6];
    v84 = v23;
    v24 = v21[1];
    v77 = *v21;
    v78 = v24;
    v25 = v21[3];
    v79 = v21[2];
    v80 = v25;
    sub_1B7205418(&v77, &qword_1EB996B70);
    return sub_1B7205418(&v10[v58], &qword_1EB98EBD0);
  }

  else
  {
    v56 = v16;
    v20 = v52;
    LOBYTE(v68[0]) = 0;
    sub_1B75BE61C();
    sub_1B7801E48();
    *v10 = v77;
    LOBYTE(v77) = 1;
    *(v10 + 1) = sub_1B7801D78();
    *(v10 + 2) = v26;
    v50[2] = v26;
    LOBYTE(v77) = 2;
    *(v10 + 3) = sub_1B7801D78();
    *(v10 + 4) = v27;
    v50[1] = v27;
    LOBYTE(v77) = 3;
    *(v10 + 5) = sub_1B7801D78();
    *(v10 + 6) = v28;
    LOBYTE(v68[0]) = 4;
    sub_1B75BE670();
    sub_1B7801DB8();
    v29 = v80;
    v30 = v78;
    *(v10 + 56) = v77;
    *(v10 + 72) = v30;
    *(v10 + 88) = v79;
    v10[104] = v29;
    v70 = 5;
    sub_1B75BE6C4();
    sub_1B7801DB8();
    v31 = v76[0];
    *(v10 + 11) = v75;
    *(v10 + 12) = v31;
    *(v10 + 201) = *(v76 + 9);
    v32 = v72;
    *(v10 + 7) = v71;
    *(v10 + 8) = v32;
    v33 = v74;
    *(v10 + 9) = v73;
    *(v10 + 10) = v33;
    LOBYTE(v68[0]) = 6;
    sub_1B75BE718();
    sub_1B7801DB8();
    v34 = v80;
    v35 = v78;
    *(v10 + 14) = v77;
    *(v10 + 15) = v35;
    *(v10 + 16) = v79;
    v10[272] = v34;
    v69 = 7;
    sub_1B75BE76C();
    sub_1B7801DB8();
    v36 = v57;
    v64 = v81;
    v65 = v82;
    v66 = v83;
    v67 = v84;
    v60 = v77;
    v61 = v78;
    v62 = v79;
    v63 = v80;
    v37 = *v57;
    v38 = v57[1];
    v39 = v57[3];
    v68[2] = v57[2];
    v68[3] = v39;
    v68[0] = v37;
    v68[1] = v38;
    v40 = v57[4];
    v41 = v57[5];
    v42 = v57[7];
    v68[6] = v57[6];
    v68[7] = v42;
    v68[4] = v40;
    v68[5] = v41;
    sub_1B7205418(v68, &qword_1EB996B70);
    v43 = v65;
    v36[4] = v64;
    v36[5] = v43;
    v44 = v67;
    v36[6] = v66;
    v36[7] = v44;
    v45 = v61;
    *v36 = v60;
    v36[1] = v45;
    v46 = v63;
    v36[2] = v62;
    v36[3] = v46;
    v59 = 8;
    sub_1B71A71D8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v47 = v55;
    v48 = v54;
    sub_1B7801DB8();
    (*(v20 + 8))(v48, v47);
    sub_1B72DFF88(v53, &v10[v58]);
    sub_1B75BE7C0(v10, v51, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    __swift_destroy_boxed_opaque_existential_1(v86);
    return sub_1B75BE828(v10, type metadata accessor for ExtractedOrder.ShippingFulfillment);
  }
}

uint64_t ExtractedOrder.ShippingRecipient.fullName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtractedOrder.ShippingRecipient.fullName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedOrder.ShippingRecipient.phoneNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExtractedOrder.ShippingRecipient.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ExtractedOrder.ShippingRecipient.emailAddress.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExtractedOrder.ShippingRecipient.emailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

__n128 ExtractedOrder.ShippingRecipient.address.setter(uint64_t a1)
{
  v3 = v1[6];
  v7[2] = v1[5];
  v7[3] = v3;
  v7[4] = v1[7];
  v4 = v1[4];
  v7[0] = v1[3];
  v7[1] = v4;
  sub_1B7205418(v7, &qword_1EB996B68);
  v5 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v5;
  v1[7] = *(a1 + 64);
  result = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = result;
  return result;
}

uint64_t sub_1B75B55BC(uint64_t a1)
{
  v2 = sub_1B75BE888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B55F8(uint64_t a1)
{
  v2 = sub_1B75BE888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.ShippingRecipient.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9986E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B75BE888();
  sub_1B78023C8();
  if (v2)
  {
    v74 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v43 = v6;
    LOBYTE(v64) = 0;
    *&v42 = sub_1B7801D78();
    *(&v42 + 1) = v17;
    LOBYTE(v64) = 1;
    v13 = sub_1B7801D78();
    v41 = v18;
    LOBYTE(v64) = 2;
    v19 = sub_1B7801D78();
    v74 = 0;
    v11 = v19;
    v10 = v20;
    v54 = 3;
    sub_1B75BE960();
    v21 = v74;
    sub_1B7801DB8();
    v74 = v21;
    if (!v21)
    {
      (*(v43 + 8))(v8, v5);
      v22 = v55;
      v39 = v55;
      v23 = v56;
      v24 = v57;
      v37 = v57;
      v38 = v56;
      v35 = v59;
      v36 = v58;
      v33 = v61;
      v34 = v60;
      v43 = v62;
      v40 = v63;
      v45[0] = xmmword_1B78301C0;
      memset(&v45[1], 0, 64);
      sub_1B7205418(v45, &qword_1EB996B68);
      v46 = v42;
      *&v47 = v13;
      *(&v47 + 1) = v41;
      *&v48 = v11;
      *(&v48 + 1) = v10;
      v49 = v22;
      *&v50 = v23;
      *(&v50 + 1) = v24;
      v26 = v35;
      v25 = v36;
      *&v51 = v36;
      *(&v51 + 1) = v35;
      v28 = v33;
      v27 = v34;
      *&v52 = v34;
      *(&v52 + 1) = v33;
      *&v53 = v43;
      *(&v53 + 1) = v40;
      v29 = v50;
      a2[2] = v48;
      a2[3] = v22;
      v30 = v53;
      v31 = v51;
      a2[6] = v52;
      a2[7] = v30;
      a2[4] = v29;
      a2[5] = v31;
      v32 = v47;
      *a2 = v46;
      a2[1] = v32;
      sub_1B75BE9B4(&v46, &v64);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v64 = v42;
      v65 = v13;
      v66 = v41;
      v67 = v11;
      v68 = v10;
      v69 = v39;
      *&v70 = v38;
      *(&v70 + 1) = v37;
      *&v71 = v25;
      *(&v71 + 1) = v26;
      *&v72 = v27;
      *(&v72 + 1) = v28;
      *&v73 = v43;
      *(&v73 + 1) = v40;
      return sub_1B75BE930(&v64);
    }

    (*(v43 + 8))(v8, v5);
    v14 = *(&v42 + 1);
    v15 = v42;
    v12 = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  *&v64 = v15;
  *(&v64 + 1) = v14;
  v65 = v13;
  v66 = v12;
  v67 = v11;
  v68 = v10;
  v69 = xmmword_1B78301C0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  return sub_1B75BE930(&v64);
}

uint64_t _s10FinanceKit14ExtractedOrderV17ShippingRecipientV7addressAC7AddressVSgvg_0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v9 = v1[5];
  v10 = v2;
  v11 = v1[7];
  v3 = v11;
  v4 = v1[4];
  v8[0] = v1[3];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B7205588(v8, &v7, &qword_1EB996B68);
}

uint64_t sub_1B75B5B70(uint64_t a1)
{
  v2 = sub_1B75BE9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B5BAC(uint64_t a1)
{
  v2 = sub_1B75BE9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75B5C2C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *v4;
  v17[4] = v4[1];
  v17[5] = v10;
  v11 = v4[2];
  v17[2] = v4[3];
  v17[3] = v11;
  v12 = v4[4];
  v17[0] = v4[5];
  v17[1] = v12;
  v13 = *(v4 + 6);
  v28 = *(v4 + 5);
  v29 = v13;
  v30 = *(v4 + 7);
  v14 = *(v4 + 4);
  v26 = *(v4 + 3);
  v27 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();
  sub_1B78023F8();
  LOBYTE(v21) = 0;
  v15 = v19;
  sub_1B7801EF8();
  if (!v15)
  {
    LOBYTE(v21) = 1;
    sub_1B7801EF8();
    LOBYTE(v21) = 2;
    sub_1B7801EF8();
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v31 = 3;
    sub_1B7205588(&v26, v20, &qword_1EB996B68);
    sub_1B75BE8DC();
    sub_1B7801F38();
    v20[2] = v23;
    v20[3] = v24;
    v20[4] = v25;
    v20[0] = v21;
    v20[1] = v22;
    sub_1B7205418(v20, &qword_1EB996B68);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ExtractedOrder.Customer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998708);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B75BE9EC();
  sub_1B78023C8();
  if (v2)
  {
    v74 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v43 = v6;
    LOBYTE(v64) = 0;
    *&v42 = sub_1B7801D78();
    *(&v42 + 1) = v17;
    LOBYTE(v64) = 1;
    v13 = sub_1B7801D78();
    v41 = v18;
    LOBYTE(v64) = 2;
    v19 = sub_1B7801D78();
    v74 = 0;
    v11 = v19;
    v10 = v20;
    v54 = 3;
    sub_1B75BE960();
    v21 = v74;
    sub_1B7801DB8();
    v74 = v21;
    if (!v21)
    {
      (*(v43 + 8))(v8, v5);
      v22 = v55;
      v39 = v55;
      v23 = v56;
      v24 = v57;
      v37 = v57;
      v38 = v56;
      v35 = v59;
      v36 = v58;
      v33 = v61;
      v34 = v60;
      v43 = v62;
      v40 = v63;
      v45[0] = xmmword_1B78301C0;
      memset(&v45[1], 0, 64);
      sub_1B7205418(v45, &qword_1EB996B68);
      v46 = v42;
      *&v47 = v13;
      *(&v47 + 1) = v41;
      *&v48 = v11;
      *(&v48 + 1) = v10;
      v49 = v22;
      *&v50 = v23;
      *(&v50 + 1) = v24;
      v26 = v35;
      v25 = v36;
      *&v51 = v36;
      *(&v51 + 1) = v35;
      v28 = v33;
      v27 = v34;
      *&v52 = v34;
      *(&v52 + 1) = v33;
      *&v53 = v43;
      *(&v53 + 1) = v40;
      v29 = v50;
      a2[2] = v48;
      a2[3] = v22;
      v30 = v53;
      v31 = v51;
      a2[6] = v52;
      a2[7] = v30;
      a2[4] = v29;
      a2[5] = v31;
      v32 = v47;
      *a2 = v46;
      a2[1] = v32;
      sub_1B75BEA70(&v46, &v64);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v64 = v42;
      v65 = v13;
      v66 = v41;
      v67 = v11;
      v68 = v10;
      v69 = v39;
      *&v70 = v38;
      *(&v70 + 1) = v37;
      *&v71 = v25;
      *(&v71 + 1) = v26;
      *&v72 = v27;
      *(&v72 + 1) = v28;
      *&v73 = v43;
      *(&v73 + 1) = v40;
      return sub_1B75BEA40(&v64);
    }

    (*(v43 + 8))(v8, v5);
    v14 = *(&v42 + 1);
    v15 = v42;
    v12 = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  *&v64 = v15;
  *(&v64 + 1) = v14;
  v65 = v13;
  v66 = v12;
  v67 = v11;
  v68 = v10;
  v69 = xmmword_1B78301C0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  return sub_1B75BEA40(&v64);
}

uint64_t ExtractedOrder.Address.street.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtractedOrder.Address.street.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedOrder.Address.city.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExtractedOrder.Address.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ExtractedOrder.Address.state.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExtractedOrder.Address.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ExtractedOrder.Address.postalCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ExtractedOrder.Address.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ExtractedOrder.Address.country.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ExtractedOrder.Address.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1B75B6570(uint64_t a1)
{
  v2 = sub_1B75BEAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B65AC(uint64_t a1)
{
  v2 = sub_1B75BEAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.Address.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998710);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEAA8();
  sub_1B78023F8();
  v18 = 0;
  v11 = v13[9];
  sub_1B7801EF8();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1B7801EF8();
  v16 = 2;
  sub_1B7801EF8();
  v15 = 3;
  sub_1B7801EF8();
  v14 = 4;
  sub_1B7801EF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtractedOrder.Address.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998720);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEAA8();
  sub_1B78023C8();
  if (v2)
  {
    v34 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = 0uLL;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    *&v33 = sub_1B7801D78();
    *(&v33 + 1) = v10;
    LOBYTE(v40) = 1;
    v11 = sub_1B7801D78();
    v30 = a2;
    v32 = v11;
    v31 = v12;
    LOBYTE(v40) = 2;
    v13 = sub_1B7801D78();
    v15 = v14;
    LOBYTE(v40) = 3;
    v16 = sub_1B7801D78();
    v18 = v17;
    v49 = 4;
    v19 = sub_1B7801D78();
    v34 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    v24 = v33;
    v35 = v33;
    v25 = v31;
    *&v36 = v32;
    *(&v36 + 1) = v31;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v18;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    v26 = v38;
    v27 = v30;
    v30[2] = v37;
    v27[3] = v26;
    v27[4] = v39;
    v28 = v36;
    *v27 = v35;
    v27[1] = v28;
    sub_1B7561B1C(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = __PAIR128__(*(&v33 + 1), v24);
    v41 = v32;
    v42 = v25;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v23;
  }

  return sub_1B75BEAFC(&v40);
}

uint64_t ExtractedOrder.Payment.Transaction.PaymentMethod.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtractedOrder.Payment.Transaction.PaymentMethod.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedOrder.Payment.Transaction.PaymentMethod.suffix.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ExtractedOrder.Payment.Transaction.PaymentMethod.suffix.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B75B6D54()
{
  v1 = 0x786966667573;
  if (*v0 != 1)
  {
    v1 = 0x50656C7070417369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1B75B6DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75C0700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75B6DE0(uint64_t a1)
{
  v2 = sub_1B75BEB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B6E1C(uint64_t a1)
{
  v2 = sub_1B75BEB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.Payment.Transaction.PaymentMethod.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998728);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEB2C();
  sub_1B78023F8();
  v14 = 0;
  v8 = v10[3];
  sub_1B7801EF8();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1B7801EF8();
  v12 = 2;
  sub_1B7801F88();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ExtractedOrder.Payment.Transaction.PaymentMethod.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEB2C();
  sub_1B78023C8();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_1B7801D78();
    v12 = v11;
    v19 = v9;
    v22 = 1;
    v13 = sub_1B7801D78();
    v15 = v14;
    v18 = v13;
    v21 = 2;
    v20 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    v16 = v20 & 1;
    v17 = v18;
    *a2 = v19;
    *(a2 + 8) = v12;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ExtractedOrder.Payment.Transaction.amount.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

uint64_t ExtractedOrder.Payment.Transaction.currencyCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExtractedOrder.Payment.Transaction.currencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ExtractedOrder.Payment.Transaction.paymentMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 72);
  return sub_1B75840E8(v2, v3);
}

__n128 ExtractedOrder.Payment.Transaction.paymentMethod.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1B7531560(*(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 40) = result;
  *(v1 + 72) = v3;
  return result;
}

uint64_t ExtractedOrder.Payment.Transaction.transactionIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ExtractedOrder.Payment.Transaction.transactionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1B75B7468(uint64_t a1)
{
  v2 = sub_1B75BEB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B74A4(uint64_t a1)
{
  v2 = sub_1B75BEB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.Payment.Transaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998740);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v37 = *(v1 + 20);
  v9 = *(v1 + 24);
  v28 = *(v1 + 32);
  v29 = v9;
  v10 = *(v1 + 40);
  v26 = *(v1 + 48);
  v27 = v10;
  v11 = *(v1 + 56);
  v24 = *(v1 + 64);
  v25 = v11;
  v23 = *(v1 + 72);
  v12 = *(v1 + 88);
  v22[0] = *(v1 + 80);
  v22[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEB80();
  sub_1B78023F8();
  v32 = v6;
  v33 = v7;
  LODWORD(v34) = v8;
  v13 = v5;
  BYTE4(v34) = v37;
  v38 = 0;
  type metadata accessor for Decimal(0);
  sub_1B71A71D8(&unk_1EB99DA30, type metadata accessor for Decimal);
  v14 = v31;
  sub_1B7801F38();
  if (v14)
  {
    return (*(v30 + 8))(v5, v3);
  }

  v16 = v23;
  v17 = v24;
  v18 = v25;
  v20 = v26;
  v19 = v27;
  v21 = v30;
  LOBYTE(v32) = 1;
  sub_1B7801EF8();
  v32 = v19;
  v33 = v20;
  v34 = v18;
  v35 = v17;
  v36 = v16;
  v38 = 2;
  sub_1B75840E8(v19, v20);
  sub_1B75BEBD4();
  sub_1B7801F38();
  sub_1B7531560(v32, v33);
  LOBYTE(v32) = 3;
  sub_1B7801EF8();
  return (*(v21 + 8))(v13, v3);
}

uint64_t ExtractedOrder.Payment.Transaction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998758);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v54 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEB80();
  sub_1B78023C8();
  if (v2)
  {
    v56 = 0;
    v32 = 0;
    v31 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = 0uLL;
    LODWORD(v40) = 0;
    BYTE4(v40) = v54;
    *(&v40 + 5) = v52;
    HIBYTE(v40) = v53;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 1;
    v45 = v31;
    v46 = v32;
    v47 = v56;
    *v48 = *v51;
    *&v48[3] = *&v51[3];
    v49 = 0;
    v50 = 0;
  }

  else
  {
    type metadata accessor for Decimal(0);
    LOBYTE(v33) = 0;
    sub_1B71A71D8(&unk_1EB99DAA0, type metadata accessor for Decimal);
    sub_1B7801DB8();
    v30 = v39;
    v55 = v40;
    v54 = BYTE4(v40);
    LOBYTE(v39) = 1;
    v29 = sub_1B7801D78();
    v28 = v10;
    LOBYTE(v33) = 2;
    sub_1B75BEC28();
    sub_1B7801DB8();
    v27 = a2;
    v11 = v39;
    v31 = v40;
    v32 = v41;
    v56 = v42;
    sub_1B7531560(0, 1);
    v38 = 3;
    v12 = sub_1B7801D78();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v33 = v30;
    LODWORD(v34) = v55;
    v26 = v54;
    BYTE4(v34) = v54;
    *(&v34 + 5) = v52;
    BYTE7(v34) = v53;
    *(&v34 + 1) = v29;
    v15 = v28;
    *v35 = v28;
    v25 = v11;
    *&v35[8] = v11;
    v24 = *(&v11 + 1);
    v16 = v31;
    *&v35[24] = v31;
    v17 = v32;
    *&v36 = v32;
    v18 = v56;
    BYTE8(v36) = v56;
    HIDWORD(v36) = *&v51[3];
    *(&v36 + 9) = *v51;
    *&v37 = v12;
    *(&v37 + 1) = v14;
    v19 = v34;
    v20 = v27;
    *v27 = v30;
    v20[1] = v19;
    v21 = *v35;
    v22 = *&v35[16];
    v23 = v37;
    v20[4] = v36;
    v20[5] = v23;
    v20[2] = v21;
    v20[3] = v22;
    sub_1B7326448(&v33, &v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = v30;
    LODWORD(v40) = v55;
    BYTE4(v40) = v26;
    *(&v40 + 5) = v52;
    HIBYTE(v40) = v53;
    v41 = v29;
    v42 = v15;
    v43 = v25;
    v44 = v24;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    *v48 = *v51;
    *&v48[3] = *&v51[3];
    v49 = v12;
    v50 = v14;
  }

  return sub_1B73264A4(&v39);
}

uint64_t ExtractedOrder.Payment.totalAmount.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

uint64_t ExtractedOrder.Payment.totalCurrencyCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExtractedOrder.Payment.totalCurrencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void ExtractedOrder.Payment.total.getter(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = 0uLL;
  if (*(v1 + 20))
  {
    v6 = 0uLL;
  }

  else
  {
    v5 = *(v1 + 32);
    v6 = 0uLL;
    if (v5)
    {
      v7 = *(v1 + 24);
      v8 = *(v1 + 16);
      v11 = v1;
      v9 = *v1;
      v10 = *(v11 + 8);

      CurrencyAmount.init(_:currencyCode:)(v9, v10, v8, v7, v5, v12);
      v4 = v12[0];
      v6 = v12[1];
      v3 = v13;
    }
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v3;
}

uint64_t ExtractedOrder.Payment.transactions.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1B75B7F50(uint64_t a1)
{
  v2 = sub_1B75BEC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B7F8C(uint64_t a1)
{
  v2 = sub_1B75BEC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.Payment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998768);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = *(v1 + 4);
  v22 = *(v1 + 20);
  v9 = v1[3];
  v15[1] = v1[4];
  v15[2] = v9;
  v15[0] = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEC7C();
  sub_1B78023F8();
  v18 = v7;
  v19 = v6;
  v20 = v8;
  v10 = v5;
  v21 = v22;
  v23 = 0;
  type metadata accessor for Decimal(0);
  sub_1B71A71D8(&unk_1EB99DA30, type metadata accessor for Decimal);
  v11 = v17;
  sub_1B7801F38();
  if (v11)
  {
    return (*(v16 + 8))(v5, v3);
  }

  v13 = v15[0];
  v14 = v16;
  LOBYTE(v18) = 1;
  sub_1B7801EF8();
  v18 = v13;
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998778);
  sub_1B75BED24(&qword_1EB998780, sub_1B75BECD0);
  sub_1B7801FC8();
  return (*(v14 + 8))(v10, v3);
}

uint64_t ExtractedOrder.Payment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEC7C();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for Decimal(0);
    v26 = 0;
    sub_1B71A71D8(&unk_1EB99DAA0, type metadata accessor for Decimal);
    sub_1B7801DB8();
    v19 = v21;
    v20 = v22;
    v25 = v23;
    v9 = v24;
    LOBYTE(v21) = 1;
    v10 = sub_1B7801D78();
    v13 = v12;
    v17 = v9;
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998778);
    v26 = 2;
    sub_1B75BED24(&qword_1EB998798, sub_1B75BED9C);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v14 = v20;
    v15 = v21;
    *a2 = v19;
    *(a2 + 8) = v14;
    *(a2 + 16) = v25;
    *(a2 + 20) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t ExtractedOrder.trackedOrderIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExtractedOrder.trackedOrderIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedOrder.fullyQualifiedOrderIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B7420484(v2, v3);
}

__n128 ExtractedOrder.fullyQualifiedOrderIdentifier.setter(uint64_t a1)
{
  sub_1B74204FC(*(v1 + 16), *(v1 + 24));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  return result;
}

uint64_t ExtractedOrder.orderNumber.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ExtractedOrder.orderNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 ExtractedOrder.orderDate.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v3;
  result = *(v1 + 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 ExtractedOrder.orderDate.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  result = *(a1 + 32);
  *(v1 + 96) = result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t ExtractedOrder.orderUpdateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExtractedOrder(0) + 32);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExtractedOrder.orderUpdateDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedOrder(0) + 32);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ExtractedOrder.merchant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ExtractedOrder(0) + 36);

  return sub_1B75BEDF0(a1, v3);
}

uint64_t ExtractedOrder.shippingFulfillments.getter()
{
  type metadata accessor for ExtractedOrder(0);
}

uint64_t ExtractedOrder.shippingFulfillments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedOrder(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtractedOrder.customer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExtractedOrder(0) + 44));
  v4 = v3[3];
  v5 = v3[5];
  v20 = v3[4];
  v6 = v20;
  v21 = v5;
  v7 = v3[7];
  v9 = v3[5];
  v22 = v3[6];
  v8 = v22;
  v23 = v7;
  v10 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v19 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  a1[2] = v18;
  a1[3] = v4;
  *a1 = v13;
  a1[1] = v11;
  v14 = v3[7];
  a1[6] = v8;
  a1[7] = v14;
  a1[4] = v6;
  a1[5] = v9;
  return sub_1B7205588(v17, &v16, &qword_1EB996B60);
}

__n128 ExtractedOrder.customer.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ExtractedOrder(0) + 44));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  sub_1B7205418(v13, &qword_1EB996B60);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

uint64_t ExtractedOrder.payment.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExtractedOrder(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_1B75BEE54(v4, v5, v6, v7, v8, v9);
}

__n128 ExtractedOrder.payment.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + *(type metadata accessor for ExtractedOrder(0) + 48));
  sub_1B75311F0(*v5, v5[1], v5[2], v5[3], v5[4], v5[5]);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v7;
  v5[4] = v3;
  v5[5] = v4;
  return result;
}

uint64_t ExtractedOrder.orderStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ExtractedOrder(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t ExtractedOrder.orderStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ExtractedOrder(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t ExtractedOrder.orderStatusUpdateDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ExtractedOrder(0) + 56);

  return sub_1B72DFF88(a1, v3);
}

uint64_t ExtractedOrder.earliestEmailDateSent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ExtractedOrder(0) + 60);

  return sub_1B72DFF88(a1, v3);
}

uint64_t sub_1B75B8EB8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x617453726564726FLL;
    if (a1 != 9)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000014;
    v7 = 0x72656D6F74737563;
    if (a1 != 7)
    {
      v7 = 0x746E656D796170;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D754E726564726FLL;
    v2 = 0x746144726564726FLL;
    v3 = 0x647055726564726FLL;
    if (a1 != 4)
    {
      v3 = 0x746E61686372656DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD00000000000001DLL;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B75B9068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75C0820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75B9090(uint64_t a1)
{
  v2 = sub_1B75BEE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75B90CC(uint64_t a1)
{
  v2 = sub_1B75BEE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedOrder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9987A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75BEE98();
  sub_1B78023F8();
  LOBYTE(v53) = 0;
  sub_1B7801F78();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = *(v3 + 40);
    *&v53 = *(v3 + 16);
    *(&v53 + 1) = v9;
    *&v54 = v10;
    *(&v54 + 1) = v11;
    LOBYTE(v45) = 1;
    sub_1B7420484(v53, v9);
    sub_1B731BB9C();
    sub_1B7801F38();
    sub_1B74204FC(v53, *(&v53 + 1));
    LOBYTE(v53) = 2;
    sub_1B7801F78();
    v12 = *(v3 + 112);
    v13 = *(v3 + 80);
    v53 = *(v3 + 64);
    v54 = v13;
    v55 = *(v3 + 96);
    LOBYTE(v56) = v12;
    LOBYTE(v45) = 3;
    sub_1B75BEEEC();
    sub_1B7801F38();
    v35 = type metadata accessor for ExtractedOrder(0);
    v63 = *(v35 + 32);
    LOBYTE(v53) = 4;
    v14 = sub_1B77FF988();
    v15 = sub_1B71A71D8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v63 = v14;
    sub_1B7801FC8();
    v34[1] = v15;
    LOBYTE(v53) = 5;
    type metadata accessor for ExtractedOrder.Merchant(0);
    sub_1B71A71D8(&qword_1EB9987C0, type metadata accessor for ExtractedOrder.Merchant);
    sub_1B7801FC8();
    v16 = v35;
    v62 = *(v3 + *(v35 + 40));
    v61 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9987C8);
    sub_1B75BF090(&qword_1EB9987D0, &qword_1EB9987D8);
    sub_1B7801FC8();
    v17 = (v3 + v16[11]);
    v18 = v17[5];
    v19 = v17[3];
    v57 = v17[4];
    v58 = v18;
    v20 = v17[5];
    v21 = v17[7];
    v59 = v17[6];
    v60 = v21;
    v22 = v17[1];
    v53 = *v17;
    v54 = v22;
    v23 = v17[3];
    v25 = *v17;
    v24 = v17[1];
    v55 = v17[2];
    v56 = v23;
    v49 = v57;
    v50 = v20;
    v26 = v17[7];
    v51 = v59;
    v52 = v26;
    v45 = v25;
    v46 = v24;
    v47 = v55;
    v48 = v19;
    v44 = 7;
    sub_1B7205588(&v53, v43, &qword_1EB996B60);
    sub_1B75BEF40();
    sub_1B7801F38();
    v43[5] = v50;
    v43[6] = v51;
    v43[7] = v52;
    v43[0] = v45;
    v43[1] = v46;
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    sub_1B7205418(v43, &qword_1EB996B60);
    v27 = (v3 + v16[12]);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v32 = v27[5];
    v37 = *v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v36 = 8;
    sub_1B75BEE54(v37, v28, v29, v30, v31, v32);
    sub_1B75BEF94();
    sub_1B7801F38();
    sub_1B75311F0(v37, v38, v39, v40, v41, v42);
    LOBYTE(v37) = *(v3 + v16[13]);
    v36 = 9;
    sub_1B75BEFE8();
    sub_1B7801FC8();
    LOBYTE(v37) = 10;
    sub_1B7801F38();
    LOBYTE(v37) = 11;
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ExtractedOrder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v66 - v6;
  *&v70 = type metadata accessor for ExtractedOrder.Merchant(0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  *&v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9987F8);
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v12 = &v66 - v11;
  v13 = type metadata accessor for ExtractedOrder(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 6) = 0u;
  v16[112] = -2;
  v17 = &v16[*(v14 + 44)];
  sub_1B71CDF28(v105);
  v18 = v105[5];
  *(v17 + 4) = v105[4];
  *(v17 + 5) = v18;
  v19 = v105[7];
  *(v17 + 6) = v105[6];
  *(v17 + 7) = v19;
  v20 = v105[1];
  *v17 = v105[0];
  *(v17 + 1) = v20;
  v21 = v105[3];
  *(v17 + 2) = v105[2];
  *(v17 + 3) = v21;
  v22 = &v16[v13[12]];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v81 = v22;
  *(v22 + 2) = 0u;
  v23 = v13[14];
  v74 = v9;
  v24 = *(v9 + 56);
  v80 = v23;
  v24(&v16[v23], 1, 1, v8);
  v106 = v13;
  v79 = v13[15];
  v75 = v8;
  v24(&v16[v79], 1, 1, v8);
  v25 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1B75BEE98();
  v26 = v12;
  v27 = v77;
  sub_1B78023C8();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v78);
    sub_1B74204FC(*(v16 + 2), *(v16 + 3));
    v30 = *(v17 + 5);
    v101 = *(v17 + 4);
    v102 = v30;
    v31 = *(v17 + 7);
    v103 = *(v17 + 6);
    v104 = v31;
    v32 = *(v17 + 1);
    v97 = *v17;
    v98 = v32;
    v33 = *(v17 + 3);
    v99 = *(v17 + 2);
    v100 = v33;
    sub_1B7205418(&v97, &qword_1EB996B60);
    sub_1B75311F0(*v81, v81[1], v81[2], v81[3], v81[4], v81[5]);
    sub_1B7205418(&v16[v80], &qword_1EB98EBD0);
    return sub_1B7205418(&v16[v79], &qword_1EB98EBD0);
  }

  else
  {
    v28 = v71;
    v29 = v72;
    LOBYTE(v97) = 0;
    *v16 = sub_1B7801DF8();
    *(v16 + 1) = v34;
    LOBYTE(v95[0]) = 1;
    sub_1B731BBF0();
    sub_1B7801DB8();
    v35 = *(v16 + 2);
    v36 = *(v16 + 3);
    v77 = v97;
    v66 = v98;
    sub_1B74204FC(v35, v36);
    v37 = v66;
    *(v16 + 1) = v77;
    *(v16 + 2) = v37;
    LOBYTE(v97) = 2;
    *(v16 + 6) = sub_1B7801DF8();
    *(v16 + 7) = v38;
    LOBYTE(v95[0]) = 3;
    sub_1B75BF03C();
    sub_1B7801DB8();
    v39 = v100;
    v40 = v98;
    *(v16 + 4) = v97;
    *(v16 + 5) = v40;
    *(v16 + 6) = v99;
    v16[112] = v39;
    LOBYTE(v97) = 4;
    v41 = sub_1B71A71D8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    v42 = v75;
    *&v77 = v41;
    sub_1B7801E48();
    v43 = v28;
    v44 = v106;
    (*(v74 + 32))(&v16[v106[8]], v43, v42);
    LOBYTE(v97) = 5;
    sub_1B71A71D8(&qword_1EB998808, type metadata accessor for ExtractedOrder.Merchant);
    sub_1B7801E48();
    sub_1B75BF228(v29, &v16[v44[9]], type metadata accessor for ExtractedOrder.Merchant);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9987C8);
    LOBYTE(v95[0]) = 6;
    sub_1B75BF090(&qword_1EB998810, &qword_1EB998818);
    sub_1B7801E48();
    *&v16[v44[10]] = v97;
    v96 = 7;
    sub_1B75BF12C();
    sub_1B7801DB8();
    v92 = v102;
    v93 = v103;
    v87 = v97;
    v88 = v98;
    v89 = v99;
    v90 = v100;
    v91 = v101;
    v45 = *v17;
    v46 = *(v17 + 2);
    v47 = *(v17 + 3);
    v95[1] = *(v17 + 1);
    v95[2] = v46;
    v94 = v104;
    v95[0] = v45;
    v48 = *(v17 + 7);
    v95[6] = *(v17 + 6);
    v95[7] = v48;
    v49 = *(v17 + 5);
    v95[4] = *(v17 + 4);
    v95[5] = v49;
    v95[3] = v47;
    sub_1B7205418(v95, &qword_1EB996B60);
    v50 = v92;
    v51 = v93;
    *(v17 + 4) = v91;
    *(v17 + 5) = v50;
    v52 = v94;
    *(v17 + 6) = v51;
    *(v17 + 7) = v52;
    v53 = v88;
    *v17 = v87;
    *(v17 + 1) = v53;
    v54 = v90;
    *(v17 + 2) = v89;
    *(v17 + 3) = v54;
    v82 = 8;
    sub_1B75BF180();
    sub_1B7801DB8();
    v55 = v85;
    v72 = v86;
    v56 = v81;
    v57 = *v81;
    v58 = v81[1];
    v59 = v81[2];
    v60 = v81[3];
    v61 = v81[4];
    v62 = v81[5];
    v70 = v84;
    v71 = v83;
    sub_1B75311F0(v57, v58, v59, v60, v61, v62);
    v63 = v70;
    *v56 = v71;
    *(v56 + 1) = v63;
    v64 = v72;
    v56[4] = v55;
    v56[5] = v64;
    v82 = 9;
    sub_1B75BF1D4();
    sub_1B7801E48();
    v16[v106[13]] = v83;
    LOBYTE(v83) = 10;
    sub_1B7801DB8();
    sub_1B72DFF88(v69, &v16[v80]);
    LOBYTE(v83) = 11;
    sub_1B7801DB8();
    (*(v73 + 8))(v26, v76);
    sub_1B72DFF88(v68, &v16[v79]);
    sub_1B75BE7C0(v16, v67, type metadata accessor for ExtractedOrder);
    __swift_destroy_boxed_opaque_existential_1(v78);
    return sub_1B75BE828(v16, type metadata accessor for ExtractedOrder);
  }
}

size_t ExtractedOrder.init(trackedOrderIdentifier:managedExtractedOrder:)@<X0>(__n128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, __n128 *a4@<X8>)
{
  v117 = a3;
  v109 = a2;
  v112 = a1;
  v5 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v102 - v14;
  v110 = type metadata accessor for ExtractedOrder.Merchant(0);
  MEMORY[0x1EEE9AC00](v110);
  v16 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  a4[1] = 0u;
  a4[2] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[7].n128_u8[0] = -2;
  v17 = type metadata accessor for ExtractedOrder(0);
  v18 = (a4 + v17[11]);
  sub_1B71CDF28(v130);
  v19 = v130[5];
  v18[4] = v130[4];
  v18[5] = v19;
  v20 = v130[7];
  v18[6] = v130[6];
  v18[7] = v20;
  v21 = v130[1];
  *v18 = v130[0];
  v18[1] = v21;
  v22 = v130[3];
  v18[2] = v130[2];
  v18[3] = v22;
  v23 = (a4 + v17[12]);
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  v103 = v18;
  v104 = v23;
  *v23 = 0u;
  v24 = v17[14];
  v25 = sub_1B77FF988();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v105 = v24;
  v27(a4 + v24, 1, 1, v25);
  v113 = v17;
  v114 = v28;
  v106 = v17[15];
  v115 = v27;
  v116 = v25;
  v27(a4 + v106, 1, 1, v25);
  v29 = v112;
  v112 = a4;
  v30 = v109;
  a4->n128_u64[0] = v29;
  a4->n128_u64[1] = v30;
  v31 = [v117 orderTypeIdentifier];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B7800868();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = [v117 orderIdentifier];
  if (!v36 || (v37 = v36, v38 = sub_1B7800868(), v40 = v39, v37, !v35) || !v40)
  {

    v33 = 0;
    v35 = 0;
    v38 = 0;
    v40 = 0;
  }

  v41 = v112;
  sub_1B74204FC(v112[1].n128_i64[0], v112[1].n128_i64[1]);
  v41[1].n128_u64[0] = v33;
  v41[1].n128_u64[1] = v35;
  v41[2].n128_u64[0] = v38;
  v41[2].n128_u64[1] = v40;
  v42 = v117;
  v43 = [v117 orderNumber];
  v44 = sub_1B7800868();
  v46 = v45;

  v41[3].n128_u64[0] = v44;
  v41[3].n128_u64[1] = v46;
  ManagedExtractedOrderContent.orderDate.getter(&v122);
  v47 = v125.n128_u8[0];
  v48 = v123;
  v41[4] = v122;
  v41[5] = v48;
  v41[6] = v124;
  v41[7].n128_u8[0] = v47;
  v49 = [v42 orderUpdateDate];
  sub_1B77FF928();

  v50 = [v42 merchantDisplayName];
  v51 = sub_1B7800868();
  v53 = v52;

  v54 = [v42 merchantDisplayNameUpdateDate];
  if (v54)
  {
    v55 = v111;
    v56 = v54;
    sub_1B77FF928();

    v57 = 0;
  }

  else
  {
    v57 = 1;
    v55 = v111;
  }

  v115(v55, v57, 1, v116);
  v58 = [v117 merchantDomain];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1B7800868();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  v63 = v110;
  v64 = *(v110 + 20);
  v115(v16 + v64, 1, 1, v116);
  v65 = (v16 + *(v63 + 24));
  *v16 = v51;
  v16[1] = v53;
  sub_1B72DFF88(v111, v16 + v64);
  *v65 = v60;
  v65[1] = v62;
  v66 = v112;
  sub_1B75BF228(v16, v112 + v113[9], type metadata accessor for ExtractedOrder.Merchant);
  v67 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  v68 = v67;
  if (v67 >> 62)
  {
    v69 = sub_1B7801958();
    if (v69)
    {
      goto LABEL_16;
    }

LABEL_26:

    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v69 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v69)
  {
    goto LABEL_26;
  }

LABEL_16:
  v122.n128_u64[0] = MEMORY[0x1E69E7CC0];
  result = sub_1B71FE2D4(0, v69 & ~(v69 >> 63), 0);
  if (v69 < 0)
  {
    __break(1u);
    return result;
  }

  v71 = 0;
  v72 = v122.n128_u64[0];
  do
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x1B8CA5DC0](v71, v68);
    }

    else
    {
      v73 = *(v68 + 8 * v71 + 32);
    }

    ExtractedOrder.ShippingFulfillment.init(managedShippingFulfillment:)(v73, v8);
    v122.n128_u64[0] = v72;
    v75 = *(v72 + 16);
    v74 = *(v72 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_1B71FE2D4(v74 > 1, v75 + 1, 1);
      v72 = v122.n128_u64[0];
    }

    ++v71;
    *(v72 + 16) = v75 + 1;
    sub_1B75BF228(v8, v72 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v75, type metadata accessor for ExtractedOrder.ShippingFulfillment);
  }

  while (v69 != v71);

  v66 = v112;
LABEL_27:
  v76 = v113;
  *(v66->n128_u64 + v113[10]) = v72;
  v77 = v117;
  ExtractedOrder.Customer.init(managedExtractedOrder:)(v77, v121);
  v78 = v103;
  v79 = v103[5];
  v126 = v103[4];
  v127 = v79;
  v80 = v103[7];
  v128 = v103[6];
  v129 = v80;
  v81 = v103[1];
  v122 = *v103;
  v123 = v81;
  v82 = v103[3];
  v124 = v103[2];
  v125 = v82;
  sub_1B7205418(&v122, &qword_1EB996B60);
  v83 = v121[5];
  v78[4] = v121[4];
  v78[5] = v83;
  v84 = v121[7];
  v78[6] = v121[6];
  v78[7] = v84;
  v85 = v121[1];
  *v78 = v121[0];
  v78[1] = v85;
  v86 = v121[3];
  v78[2] = v121[2];
  v78[3] = v86;
  v87 = v77;
  ExtractedOrder.Payment.init(managedExtractedOrder:)(v87, v118);
  v88 = v119;
  v89 = v120;
  v90 = v104;
  sub_1B75311F0(*v104, v104[1], v104[2], v104[3], v104[4], v104[5]);
  v91 = v118[1];
  *v90 = v118[0];
  *(v90 + 1) = v91;
  v90[4] = v88;
  v90[5] = v89;
  v92 = [v87 orderStatusValue];
  if (v92 >= 5)
  {
    v93 = 0;
  }

  else
  {
    v93 = v92;
  }

  v66->n128_u8[v76[13]] = v93;
  v94 = [v87 orderStatusUpdateDate];
  v95 = v107;
  if (v94)
  {
    v96 = v94;
    sub_1B77FF928();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = v108;
  v99 = 1;
  v115(v95, v97, 1, v116);
  sub_1B72DFF88(v95, v66 + v105);
  v100 = [v87 earliestEmailDateSent];
  if (v100)
  {
    v101 = v100;
    sub_1B77FF928();

    v99 = 0;
    v87 = v101;
  }

  v115(v98, v99, 1, v116);
  return sub_1B72DFF88(v98, v66 + v106);
}

double ExtractedOrder.ShippingFulfillment.init(managedShippingFulfillment:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 104) = -2;
  *(a2 + 112) = 0u;
  v4 = (a2 + 112);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0x1FFFFFFFELL;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  v5 = (a2 + 280);
  *(a2 + 272) = -2;
  sub_1B71CDF28(v60);
  v6 = v60[5];
  *(a2 + 344) = v60[4];
  *(a2 + 360) = v6;
  v7 = v60[7];
  *(a2 + 376) = v60[6];
  *(a2 + 392) = v7;
  v8 = v60[1];
  *v5 = v60[0];
  *(a2 + 296) = v8;
  v9 = v60[3];
  *(a2 + 312) = v60[2];
  *(a2 + 328) = v9;
  v10 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) + 48);
  v11 = sub_1B77FF988();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)([a1 statusValue]);
  *a2 = byte_1B7846302[v52];
  v12 = [a1 trackingNumber];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  v17 = [a1 carrierName];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B7800868();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(a2 + 24) = v19;
  *(a2 + 32) = v21;
  v22 = [a1 shippingMethod];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B7800868();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(a2 + 40) = v24;
  *(a2 + 48) = v26;
  ManagedExtractedOrderShippingFulfillment.shippingDate.getter(&v52);
  v27 = v55;
  v28 = v53;
  *(a2 + 56) = v52;
  *(a2 + 72) = v28;
  *(a2 + 88) = v54;
  *(a2 + 104) = v27;
  ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.getter(v43);
  v29 = v44[0];
  *(a2 + 176) = v43[4];
  *(a2 + 192) = v29;
  *(a2 + 201) = *(v44 + 9);
  v30 = v43[1];
  *v4 = v43[0];
  *(a2 + 128) = v30;
  v31 = v43[3];
  *(a2 + 144) = v43[2];
  *(a2 + 160) = v31;
  ManagedExtractedOrderShippingFulfillment.deliveryDate.getter(&v52);
  v32 = v55;
  v33 = v53;
  *(a2 + 224) = v52;
  *(a2 + 240) = v33;
  *(a2 + 256) = v54;
  *(a2 + 272) = v32;
  ExtractedOrder.ShippingRecipient.init(managedShippingFulfillment:)(a1, v45);
  v34 = *(a2 + 360);
  v56 = *(a2 + 344);
  v57 = v34;
  v35 = *(a2 + 392);
  v58 = *(a2 + 376);
  v59 = v35;
  v36 = *(a2 + 296);
  v52 = *v5;
  v53 = v36;
  v37 = *(a2 + 328);
  v54 = *(a2 + 312);
  v55 = v37;
  sub_1B7205418(&v52, &qword_1EB996B70);
  v38 = v49;
  *(a2 + 344) = v48;
  *(a2 + 360) = v38;
  v39 = v51;
  *(a2 + 376) = v50;
  *(a2 + 392) = v39;
  v40 = v45[1];
  *v5 = v45[0];
  *(a2 + 296) = v40;
  result = *&v46;
  v42 = v47;
  *(a2 + 312) = v46;
  *(a2 + 328) = v42;
  return result;
}

void ExtractedOrder.Customer.init(managedExtractedOrder:)(void *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = [a1 customerFullName];
  if (v4)
  {
    v5 = v4;
    v34.n128_u64[0] = sub_1B7800868();
    v34.n128_u64[1] = v6;
  }

  else
  {
    v34 = 0uLL;
  }

  v7 = [a1 customerPhoneNumber];
  if (v7)
  {
    v8 = v7;
    v32 = sub_1B7800868();
    v10 = v9;
  }

  else
  {
    v32 = 0;
    v10 = 0;
  }

  v11 = [a1 customerEmailAddress];
  if (v11)
  {
    v12 = v11;
    v33 = sub_1B7800868();
    v14 = v13;
  }

  else
  {
    v33 = 0;
    v14 = 0;
  }

  v15 = [a1 customerBillingAddress];
  if (v15)
  {
    v16 = v15;
    ExtractedOrder.Address.init(address:)(&v61, v16);

    object = v61.value.street.value._object;
    if (v34.n128_u64[1])
    {
      goto LABEL_18;
    }
  }

  else
  {

    v61.value.street.value._countAndFlagsBits = 0;
    memset(&v61.value.city, 0, 64);
    object = 1;
    if (v34.n128_u64[1])
    {
      goto LABEL_18;
    }
  }

  if (!v10 && !v14 && object == 1)
  {
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v48.n128_u64[0] = 0;
    v48.n128_u64[1] = 1;
    v49 = 0u;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    sub_1B75BEA40(&v45);
    sub_1B71CDF28(&v53);
    v18 = v58;
    a2[4] = v57;
    a2[5] = v18;
    v19 = v60;
    a2[6] = v59;
    a2[7] = v19;
    v20 = v54;
    *a2 = v53;
    a2[1] = v20;
    v21 = v56;
    a2[2] = v55;
    a2[3] = v21;
    return;
  }

LABEL_18:
  country = v61.value.country;
  postalCode = v61.value.postalCode;
  state = v61.value.state;
  countAndFlagsBits = v61.value.city.value._countAndFlagsBits;
  v22 = v61.value.city.value._object;
  v24 = v61.value.street.value._countAndFlagsBits;
  v36[0] = xmmword_1B78301C0;
  memset(&v36[1], 0, 64);
  sub_1B7205418(v36, &qword_1EB996B68);
  v37 = v34;
  v38.n128_u64[0] = v32;
  v38.n128_u64[1] = v10;
  v39.n128_u64[0] = v33;
  v39.n128_u64[1] = v14;
  v40.n128_u64[0] = v24;
  v40.n128_u64[1] = object;
  v41.n128_u64[0] = countAndFlagsBits;
  v41.n128_u64[1] = v22;
  v42 = state;
  v43 = postalCode;
  v44 = country;
  v47 = v39;
  v48 = v40;
  v51 = postalCode;
  v52 = country;
  v49 = v41;
  v50 = state;
  v45 = v34;
  v46 = v38;
  nullsub_1(&v45, v34);
  v25 = v50;
  a2[4] = v49;
  a2[5] = v25;
  v26 = v52;
  a2[6] = v51;
  a2[7] = v26;
  v27 = v46;
  *a2 = v45;
  a2[1] = v27;
  v28 = v48;
  a2[2] = v47;
  a2[3] = v28;
  v53 = v34;
  v54.n128_u64[0] = v32;
  v54.n128_u64[1] = v10;
  v55.n128_u64[0] = v33;
  v55.n128_u64[1] = v14;
  v56.n128_u64[0] = v24;
  v56.n128_u64[1] = object;
  v57.n128_u64[0] = countAndFlagsBits;
  v57.n128_u64[1] = v22;
  v58 = state;
  v59 = postalCode;
  v60 = country;
  sub_1B75BEA70(&v37, v35);
  sub_1B75BEA40(&v53);
}