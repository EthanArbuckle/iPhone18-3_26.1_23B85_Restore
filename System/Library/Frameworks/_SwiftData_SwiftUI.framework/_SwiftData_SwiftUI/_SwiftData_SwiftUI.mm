uint64_t sub_23BC5A7B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23BC75988();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23BC5A7DC@<X0>(void *a1@<X8>)
{
  sub_23BC5C530();
  result = sub_23BC753B8();
  *a1 = v3;
  return result;
}

uint64_t sub_23BC5A8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = sub_23BC756C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23BC5A964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 32);
  result = sub_23BC756C8();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23BC5AA34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23BC5AA70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_23BC5AAA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_23BC64C24();
  *a2 = v4;

  return v4;
}

uint64_t sub_23BC5AAE4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_23BC5F7F0(v2);
}

__n128 sub_23BC5AB24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_23BC5AB30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23BC5E8B8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23BC5AB60(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23BC5E960();
}

uint64_t sub_23BC5AB94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BC75838();
  *a1 = result;
  return result;
}

uint64_t sub_23BC5ABC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23BC5ABD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BC75858();
  *a1 = result;
  return result;
}

uint64_t sub_23BC5AC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BC75818();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BC5AC80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + a3 - 16);
  v3 = *(a2 + a3 - 8);
  v5 = *a1;
  return sub_23BC756D8();
}

__n128 sub_23BC5ACCC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_23BC5ACD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BC5AD54@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEB7450]();
  *a1 = result;
  return result;
}

uint64_t sub_23BC5AD80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BC5AF30@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEB7460]();
  *a1 = result;
  return result;
}

uint64_t sub_23BC5AF94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0440, &qword_23BC77380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0450, &qword_23BC77388);
  sub_23BC69354(&qword_27E1C0448, &qword_27E1C0440, &qword_23BC77380);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BC5B058()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BC5B0A0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BC5B0E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BC5B120()
{
  if (v0[2])
  {

    v1 = v0[3];

    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23BC5B204(uint64_t a1, id *a2)
{
  result = sub_23BC75968();
  *a2 = 0;
  return result;
}

uint64_t sub_23BC5B27C(uint64_t a1, id *a2)
{
  v3 = sub_23BC75978();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BC5B2FC@<X0>(uint64_t *a1@<X8>)
{
  sub_23BC75988();
  v2 = sub_23BC75958();

  *a1 = v2;
  return result;
}

uint64_t sub_23BC5B340()
{
  v1 = *v0;
  v2 = sub_23BC75988();
  v3 = MEMORY[0x23EEB7AD0](v2);

  return v3;
}

uint64_t sub_23BC5B37C()
{
  v1 = *v0;
  sub_23BC75988();
  sub_23BC759B8();
}

uint64_t sub_23BC5B3D0()
{
  v1 = *v0;
  sub_23BC75988();
  sub_23BC75CE8();
  sub_23BC759B8();
  v2 = sub_23BC75D08();

  return v2;
}

uint64_t sub_23BC5B444(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23BC75988();
  v6 = v5;
  if (v4 == sub_23BC75988() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23BC75C78();
  }

  return v9 & 1;
}

uint64_t sub_23BC5B4CC(uint64_t a1)
{
  v2 = sub_23BC5B790(&qword_27E1BFF50, type metadata accessor for FileAttributeKey);
  v3 = sub_23BC5B790(&qword_27E1BFF58, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BC5B588@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23BC75958();

  *a2 = v5;
  return result;
}

uint64_t sub_23BC5B5D0(uint64_t a1)
{
  v2 = sub_23BC5B790(&qword_27E1BFF40, type metadata accessor for URLResourceKey);
  v3 = sub_23BC5B790(&qword_27E1BFF48, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_23BC5B6B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23BC5B790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BC5B948()
{
  v0 = sub_23BC75778();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23BC75798();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BC75638();
  v4 = sub_23BC758F8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_23BC758E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF60, &qword_23BC771B0);
  v7 = *(sub_23BC757B8() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_23BC76750;
  sub_23BC75788();
  sub_23BC75768();
  sub_23BC757C8();
  result = sub_23BC755F8();
  qword_27E1C1760 = result;
  return result;
}

uint64_t sub_23BC5BB38()
{
  if (qword_27E1BFEE0 != -1)
  {
    swift_once();
  }

  v0 = sub_23BC75588();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_23BC75598();
  qword_27E1C1768 = result;
  return result;
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

uint64_t AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BC75828();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = sub_23BC5BD64(&qword_27E1BFF68);
  v14 = sub_23BC5BD64(&qword_27E1BFF70);
  v15 = MEMORY[0x23EEB7300](v12, a2, a3, a4, v8, v13, v14);
  (*(v9 + 8))(a1, v8);
  return v15;
}

uint64_t sub_23BC5BD64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23BC75828();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppStorage.init<A>(_:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BC75828();
  v7 = sub_23BC5BD64(&qword_27E1BFF68);
  v8 = sub_23BC5BD64(&qword_27E1BFF70);

  return MEMORY[0x28212CD80](a1, a2, a3, v6, v7, v8);
}

uint64_t SceneStorage.init<A>(wrappedValue:_:)(char *a1)
{
  v2 = sub_23BC75828();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = v3[2];
  v10(&v13 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_23BC5C008(&qword_27E1BFF68);
  sub_23BC5C008(&qword_27E1BFF70);
  sub_23BC75278();
  v11 = v3[1];
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t sub_23BC5C008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23BC75828();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SceneStorage.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF78, &unk_23BC76760);
  v5 = sub_23BC5C194(&qword_27E1BFF80, &qword_27E1BFF68);
  v6 = sub_23BC5C194(&qword_27E1BFF88, &qword_27E1BFF70);
  v7 = sub_23BC5C21C();

  return MEMORY[0x28212D288](a1, a2, v4, v5, v6, v7);
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

uint64_t sub_23BC5C194(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1BFF78, &unk_23BC76760);
    sub_23BC5C008(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BC5C21C()
{
  result = qword_27E1BFF90;
  if (!qword_27E1BFF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1BFF78, &unk_23BC76760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1BFF90);
  }

  return result;
}

uint64_t View.modelContext(_:)()
{
  swift_getKeyPath();

  sub_23BC753F8();
}

uint64_t sub_23BC5C308@<X0>(void *a1@<X8>)
{
  sub_23BC5C530();
  result = sub_23BC753B8();
  *a1 = v3;
  return result;
}

uint64_t sub_23BC5C358(uint64_t *a1)
{
  v2 = *a1;
  sub_23BC5C530();

  return sub_23BC753C8();
}

uint64_t Scene.modelContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = swift_getKeyPath();
  v8[1] = a1;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF98, &qword_23BC76798);
  MEMORY[0x23EEB7510](v8, a2, v6, a3);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy0A4Data12ModelContextCSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1BFF98, &qword_23BC76798);
  sub_23BC75328();
  sub_23BC5C4E0(a2);
  return swift_getWitnessTable();
}

uint64_t sub_23BC5C4E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1BFF98, &qword_23BC76798);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BC5C530()
{
  result = qword_27E1BFFA8[0];
  if (!qword_27E1BFFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1BFFA8);
  }

  return result;
}

uint64_t sub_23BC5C5B0(uint64_t a1)
{
  v3 = sub_23BC753A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 48));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_23BC75B28();
    v11 = sub_23BC753E8();
    sub_23BC75178();

    sub_23BC75398();
    swift_getAtKeyPath();
    j__swift_release(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t sub_23BC5C700()
{
  swift_getObjectType();
  sub_23BC75458();
  return v1;
}

uint64_t sub_23BC5C744(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v7 = *v2;
  v8 = v2[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  type metadata accessor for QueryController();
  sub_23BC75478();
  sub_23BC75468();
  return v6;
}

uint64_t Query.modelContext.getter(uint64_t a1)
{
  result = sub_23BC5C5B0(a1);
  if (!result)
  {
    if (qword_27E1BFEE8 != -1)
    {
      swift_once();
    }
  }

  return result;
}

void *Query.fetchError.getter(uint64_t a1)
{
  v1 = sub_23BC5C744(a1);
  v2 = sub_23BC64C24();
  v3 = v2;

  return v2;
}

uint64_t Query.wrappedValue.getter(uint64_t a1)
{
  v2 = sub_23BC5C744(a1);
  sub_23BC5DA14();

  v3 = *(a1 + 16);
  sub_23BC75A68();
  v4 = *(a1 + 24);
  return swift_dynamicCast();
}

Swift::Void __swiftcall Query.update()()
{
  v2 = v0;
  sub_23BC75AA8();
  v3[1] = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = v1;
  sub_23BC5C9A8(sub_23BC5D650, v3);
}

uint64_t sub_23BC5C930(uint64_t a1)
{
  v2 = type metadata accessor for Query();
  v3 = sub_23BC5C744(v2);
  v4 = sub_23BC5C5B0(v2);
  sub_23BC5E338(v4, a1, *(a1 + *(v2 + 44)));
}

uint64_t sub_23BC5C9A8(uint64_t a1, uint64_t a2)
{
  sub_23BC75A98();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_23BC5D84C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD00000000000003FLL, 0x800000023BC77B20);
    v8 = sub_23BC75D18();
    MEMORY[0x23EEB7AB0](v8);

    MEMORY[0x23EEB7AB0](46, 0xE100000000000000);
    result = sub_23BC75C08();
    __break(1u);
  }

  return result;
}

uint64_t Query.init<A>(filter:sort:order:animation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  return sub_23BC5CC64(a1, a2, a3, a4, a5, MEMORY[0x277CC89F8], a6);
}

{
  return sub_23BC5CC64(a1, a2, a3, a4, a5, MEMORY[0x277CC8A00], a6);
}

uint64_t Query.init<>(_:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23BC75A68();
  v6 = type metadata accessor for Query();
  v7 = v6[11];
  v8 = a3 + v6[12];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = (a3 + v6[13]);
  type metadata accessor for QueryController();
  sub_23BC5D9B4();
  *v9 = sub_23BC5C700();
  v9[1] = v10;
  v11 = sub_23BC756C8();
  result = (*(*(v11 - 8) + 32))(a3, a1, v11);
  *(a3 + v7) = a2;
  return result;
}

uint64_t sub_23BC5CC64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void (*a6)(uint64_t, void, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v28 = a4;
  v29 = a7;
  v25 = a3;
  v24 = a1;
  v30 = *(*a2 + *MEMORY[0x277D84DE8]);
  sub_23BC750D8();
  v8 = sub_23BC75B48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_23BC756C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  (*(v9 + 16))(v12, a1, v8);
  v17 = sub_23BC74F28();
  sub_23BC75C68();
  v18 = *(*(v17 - 8) + 72);
  v19 = *(*(v17 - 8) + 80);
  swift_allocObject();
  sub_23BC75A08();

  v27(v20, v25 & 1, v26);
  sub_23BC75A68();
  sub_23BC756B8();

  v21 = sub_23BC75258();
  Query.init<>(_:transaction:)(v16, v21, v29);

  return (*(v9 + 8))(v24, v8);
}

uint64_t Query.init<A>(filter:sort:order:transaction:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  return sub_23BC5CF38(a1, a2, a3, a4, a5, MEMORY[0x277CC89F8], a6);
}

{
  return sub_23BC5CF38(a1, a2, a3, a4, a5, MEMORY[0x277CC8A00], a6);
}

uint64_t sub_23BC5CF38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void (*a6)(uint64_t, void, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a4;
  v24 = a3;
  v23 = a1;
  v29 = *(*a2 + *MEMORY[0x277D84DE8]);
  sub_23BC750D8();
  v8 = sub_23BC75B48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = sub_23BC756C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  (*(v9 + 16))(v12, a1, v8);
  v17 = sub_23BC74F28();
  sub_23BC75C68();
  v18 = *(*(v17 - 8) + 72);
  v19 = *(*(v17 - 8) + 80);
  swift_allocObject();
  sub_23BC75A08();

  v26(v20, v24 & 1, v25);
  sub_23BC75A68();
  sub_23BC756B8();
  Query.init<>(_:transaction:)(v16, v28, v27);

  return (*(v9 + 8))(v23, v8);
}

uint64_t Query.init<>(filter:sort:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  sub_23BC750D8();
  v5 = sub_23BC75B48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = sub_23BC756C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v16 - v12;
  (*(v6 + 16))(v9, a1, v5);
  sub_23BC756B8();

  v14 = sub_23BC75258();
  Query.init<>(_:transaction:)(v13, v14, a3);

  return (*(v6 + 8))(a1, v5);
}

uint64_t Query.init<>(filter:sort:transaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a3;
  sub_23BC750D8();
  v7 = sub_23BC75B48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = sub_23BC756C8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v17 - v14;
  (*(v8 + 16))(v11, a1, v7);
  sub_23BC756B8();
  Query.init<>(_:transaction:)(v15, a2, a4);
  return (*(v8 + 8))(a1, v7);
}

uint64_t Query.init<>(_:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BC75A68();
  v4 = type metadata accessor for Query();
  v5 = v4[11];
  v6 = a2 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = (a2 + v4[13]);
  type metadata accessor for QueryController();
  sub_23BC5D9B4();
  *v7 = sub_23BC5C700();
  v7[1] = v8;
  v9 = sub_23BC756C8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2, a1, v9);
  v11 = sub_23BC75258();
  result = (*(v10 + 8))(a1, v9);
  *(a2 + v5) = v11;
  return result;
}

uint64_t sub_23BC5D650()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23BC5C930(v0[5]);
}

void sub_23BC5D690(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  sub_23BC756C8();
  if (v3 <= 0x3F)
  {
    sub_23BC5D798();
    if (v4 <= 0x3F)
    {
      sub_23BC5D7E8();
      if (v5 <= 0x3F)
      {
        type metadata accessor for QueryController();
        sub_23BC75478();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BC5D798()
{
  if (!qword_27E1C0030)
  {
    v0 = sub_23BC75B48();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C0030);
    }
  }
}

void sub_23BC5D7E8()
{
  if (!qword_27E1C0038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1C0040, qword_23BC76840);
    v0 = sub_23BC75238();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C0038);
    }
  }
}

uint64_t sub_23BC5D84C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23BC5D8AC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = sub_23BC756C8();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_23BC75128();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

id sub_23BC5D9B4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_23BC5D9E8()
{
  v0 = sub_23BC64C24();
  v1 = v0;
  return v0;
}

uint64_t sub_23BC5DA14()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0328, &unk_23BC76C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00E8, &qword_23BC76918);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v45 - v9;
  v11 = *((v4 & v2) + 0x50);
  v12 = *((v4 & v2) + 0x58);
  v13 = sub_23BC756C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  if ((sub_23BC5E8B8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v47 = v10;
  v18 = *((*v3 & *v1) + 0x70);
  if (*(v1 + v18))
  {
    v19 = *(v1 + v18);

    sub_23BC75578();
    sub_23BC75628();

    v20 = sub_23BC758D8();

    if (v20 >> 62)
    {
      v21 = sub_23BC75C18();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D85000];
    if (!v21)
    {

      v34 = *(v1 + *((*v3 & *v1) + 0x68));
      *(v1 + *((*v3 & *v1) + 0x60)) = 0;
    }

    v22 = *MEMORY[0x277D85000] & *v1;
    v46 = *(v22 + 0x80);
    if (*(v1 + v46) == 1)
    {
      v23 = *(v22 + 120);
      swift_beginAccess();
      sub_23BC75668();
      swift_endAccess();
      sub_23BC5F274();
      v22 = *v3 & *v1;
    }

    v24 = *(v22 + 120);
    swift_beginAccess();
    v25 = *(v14 + 16);
    v45[3] = v24;
    v25(v17, v1 + v24, v13);
    v35 = sub_23BC75558();
    (*(v14 + 8))(v17, v13);
    v36 = *((*v3 & *v1) + 0x68);
    v37 = *(v1 + v36);
    *(v1 + v36) = v35;

    v38 = *((*v3 & *v1) + 0x98);
    v39 = *(v1 + v38);
    *(v1 + v38) = 0;

    if (*(v1 + v46) == 1)
    {
      *(v1 + v46) = 0;
      swift_beginAccess();
      sub_23BC75668();
      swift_endAccess();
      sub_23BC5F274();
      v40 = sub_23BC75AC8();
      v41 = v47;
      (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v1;
      v43 = v1;
      sub_23BC5FA8C(0, 0, v41, &unk_23BC76C48, v42);
    }

    *(v1 + *((*v3 & *v1) + 0x60)) = 0;
LABEL_18:
    v44 = *(v1 + *((*v3 & *v1) + 0x68));
  }

  if (qword_27E1BFEF8 != -1)
  {
    swift_once();
  }

  v26 = sub_23BC751A8();
  __swift_project_value_buffer(v26, qword_27E1C17C0);
  v27 = sub_23BC75188();
  v28 = sub_23BC75B28();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_23BC59000, v27, v28, "Set a .modelContext in view's environment to use Query", v29, 2u);
    MEMORY[0x23EEB8370](v29, -1, -1);
  }

  sub_23BC754A8();
  sub_23BC66784(&qword_27E1C0330, MEMORY[0x277CDD480]);
  v30 = swift_allocError();
  sub_23BC75498();
  v31 = *((*v3 & *v1) + 0x98);
  v32 = *(v1 + v31);
  *(v1 + v31) = v30;

  result = sub_23BC75A28();
  *(v1 + *((*v3 & *v1) + 0x60)) = 0;
  return result;
}

uint64_t sub_23BC5E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v35 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v10 = sub_23BC756C8();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - v14;
  if (sub_23BC5E8B8())
  {
    goto LABEL_12;
  }

  v16 = *v8 & *v3;
  if (*(v3 + *(v16 + 0x70)))
  {
    v37[0] = *(v3 + *((*v8 & *v3) + 0x70));
    if (a1)
    {
      v37[4] = a1;
      sub_23BC75588();
      sub_23BC66784(&qword_27E1C00E0, MEMORY[0x277CDD490]);

      v8 = MEMORY[0x277D85000];
      v17 = sub_23BC75948();

      if (v17)
      {
        v16 = *v8 & *v3;
        goto LABEL_7;
      }
    }
  }

  else if (!a1)
  {
LABEL_7:
    v18 = *(v16 + 120);
    swift_beginAccess();
    (*(v36 + 16))(v15, v3 + v18, v10);
    swift_getWitnessTable();
    LOBYTE(v18) = sub_23BC75948();
    (*(v36 + 8))(v15, v10);
    if (v18)
    {
      goto LABEL_12;
    }
  }

  v32 = a2;
  v33 = a3;
  v37[0] = sub_23BC756A8();
  MEMORY[0x28223BE20](v37[0]);
  v19 = v35;
  v31[-2] = v9;
  v31[-1] = v19;
  sub_23BC74F28();
  sub_23BC75A68();
  swift_getWitnessTable();
  v20 = sub_23BC759F8();

  v21 = *v8 & *v4;
  if (v20)
  {
LABEL_11:
    *(v4 + *(v21 + 96)) = 1;
    a2 = v32;
    a3 = v33;
    goto LABEL_12;
  }

  v22 = *((*v8 & *v4) + 0x78);
  swift_beginAccess();
  v23 = v34;
  v24 = (*(v36 + 16))(v34, v4 + v22, v10);
  v31[1] = v31;
  MEMORY[0x28223BE20](v24);
  v25 = v35;
  v31[-2] = v9;
  v31[-1] = v25;
  v26 = sub_23BC75698();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23BC75AF8();
  v26(v37, 0);
  swift_getWitnessTable();
  a2 = v32;
  LOBYTE(v22) = sub_23BC75948();
  (*(v36 + 8))(v23, v10);
  a3 = v33;
  v8 = MEMORY[0x277D85000];
  if ((v22 & 1) == 0)
  {
    v21 = *MEMORY[0x277D85000] & *v4;
    goto LABEL_11;
  }

LABEL_12:

  sub_23BC66590(v27);

  sub_23BC665F8(a2);
  v28 = *((*v8 & *v4) + 0x88);
  v29 = *(v4 + v28);
  *(v4 + v28) = a3;
  sub_23BC666D8(a3);
  return sub_23BC63C58(v29);
}

uint64_t sub_23BC5E8B8()
{
  v1 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  swift_getKeyPath();
  sub_23BC5EA1C();

  return *(v0 + *((*v1 & *v0) + 0x60));
}

uint64_t sub_23BC5E960()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  swift_getKeyPath();
  sub_23BC5EAAC();
}

uint64_t sub_23BC5EA1C()
{
  swift_getObjectType();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  swift_getWitnessTable();
  return sub_23BC75108();
}

uint64_t sub_23BC5EAAC()
{
  swift_getObjectType();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  swift_getWitnessTable();
  return sub_23BC750F8();
}

uint64_t sub_23BC5EB74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00C8, &qword_23BC76908);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v41 - v7;
  v9 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v10 = *(v2 + v9);
  if (a1)
  {
    v48[0] = a1;
    if (v10)
    {
      *&v45[0] = v10;
      sub_23BC75588();
      sub_23BC66784(&qword_27E1C00E0, MEMORY[0x277CDD490]);

      v11 = sub_23BC75948();

      if (v11)
      {
        return result;
      }
    }

    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver_];

    v10 = *(v2 + v9);
    if (!v10)
    {
LABEL_20:
      v40 = sub_23BC74F08();
      (*(*(v40 - 8) + 56))(v8, 1, 1, v40);
      sub_23BC5F204(v8);
      return sub_23BC667CC(v8, &qword_27E1C00C8, &qword_23BC76908);
    }
  }

  else if (!v10)
  {
    return result;
  }

  v41 = v8;
  v13 = objc_opt_self();

  v14 = [v13 defaultCenter];
  v15 = sub_23BC75958();
  [v14 addObserver:v2 selector:sel_didChange_ name:v15 object:v10];

  v16 = [v13 defaultCenter];
  sub_23BC75588();
  v17 = sub_23BC75568();
  [v16 addObserver:v2 selector:sel_didSaveChange_ name:v17 object:0];

  v18 = [v13 defaultCenter];
  sub_23BC75638();
  v19 = sub_23BC755D8();
  v20 = sub_23BC75578();
  v43 = v2;
  [v18 addObserver:v2 selector:sel_didRemoteChange_ name:v19 object:v20];

  sub_23BC75508();
  v42 = v10;
  sub_23BC75578();
  v21 = sub_23BC755E8();

  v22 = 0;
  v23 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v21 + 64);
  v27 = &unk_27E1C0310;
  v28 = (v24 + 63) >> 6;
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_13:
  while (1)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v29 >= v28)
    {

      v8 = v41;
      goto LABEL_20;
    }

    v26 = *(v23 + 8 * v29);
    ++v22;
    if (v26)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v31 = (v29 << 10) | (16 * v30);
        v32 = *(v21 + 56);
        v33 = (*(v21 + 48) + v31);
        v34 = v33[1];
        v44 = *v33;
        v47 = *(v32 + v31);
        swift_unknownObjectRetain_n();

        __swift_instantiateConcreteTypeFromMangledNameV2(v27, &qword_23BC76BE8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0318, &qword_23BC76BF0);
        if (swift_dynamicCast())
        {
          sub_23BC5ABC0(v45, v48);
          v35 = v21;
          v36 = v27;
          v37 = v49;
          v38 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v39 = v38;
          v27 = v36;
          v21 = v35;
          sub_23BC65708(v42, v43, v44, v34, v37, v39);

          swift_unknownObjectRelease();
          result = __swift_destroy_boxed_opaque_existential_1Tm(v48);
          v22 = v29;
          if (!v26)
          {
            goto LABEL_13;
          }
        }

        else
        {

          swift_unknownObjectRelease();
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          result = sub_23BC667CC(v45, &qword_27E1C0320, &qword_23BC76BF8);
          v22 = v29;
          if (!v26)
          {
            goto LABEL_13;
          }
        }

LABEL_12:
        v29 = v22;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BC5F0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_23BC75748();
}

uint64_t sub_23BC5F134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23BC5ABC0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_23BC648B8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_23BC667CC(a1, &qword_27E1C0118, &qword_23BC769E0);
    sub_23BC6438C(a2, a3, v10);

    return sub_23BC667CC(v10, &qword_27E1C0118, &qword_23BC769E0);
  }

  return result;
}

uint64_t sub_23BC5F204(uint64_t a1)
{
  result = sub_23BC65EBC(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  if (result)
  {

    return sub_23BC603F8(v1);
  }

  return result;
}

uint64_t sub_23BC5F274()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0x50);
  v5 = sub_23BC74F28();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = *((v3 & v2) + 0x78);
  swift_beginAccess();
  v8 = *((v3 & v2) + 0x58);
  sub_23BC756C8();
  v9 = sub_23BC756A8();
  swift_endAccess();
  v18[5] = v8;
  v19[0] = v9;
  v18[4] = v4;
  sub_23BC75A68();
  swift_getWitnessTable();
  LOBYTE(v2) = sub_23BC759F8();

  if ((v2 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v18[-2] = v4;
    v18[-1] = v8;
    swift_getKeyPath();
    sub_23BC75828();
    sub_23BC66784(&qword_27E1C0308, MEMORY[0x277CDD538]);
    sub_23BC5CB48();
    swift_beginAccess();
    v11 = sub_23BC75698();
    sub_23BC75A48();
    v11(v19, 0);
    result = swift_endAccess();
  }

  v12 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  if (*(v1 + v12))
  {
    v13 = *(v1 + v12);

    if (sub_23BC754F8())
    {
      swift_beginAccess();
      v14 = sub_23BC75648();
      swift_endAccess();
      v19[0] = v14;
      v18[1] = sub_23BC75BF8();
      sub_23BC75A68();
      swift_getWitnessTable();
      v15 = sub_23BC75AE8();

      if (v15)
      {
        v19[0] = sub_23BC75528();
        sub_23BC75AD8();
        swift_getWitnessTable();
        sub_23BC75A78();
        swift_beginAccess();
        sub_23BC75658();
        swift_endAccess();
      }

      swift_beginAccess();
      v16 = sub_23BC75678();
      swift_endAccess();
      v19[0] = v16;
      v17 = sub_23BC75AE8();

      if (v17)
      {
        v19[0] = sub_23BC75538();
        sub_23BC75AD8();
        swift_getWitnessTable();
        sub_23BC75A78();
        swift_beginAccess();
        sub_23BC75688();
        swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_23BC5F744(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_23BC5F7F0(void *a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  swift_getKeyPath();
  sub_23BC5EAAC();
}

uint64_t sub_23BC5F8D0()
{
  v1 = *(v0 + 16);
  sub_23BC5F930();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23BC5F930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00E8, &qword_23BC76918);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = sub_23BC75AC8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_23BC75AA8();
  v7 = v0;

  v8 = sub_23BC75A98();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = sub_23BC668E0;
  v9[5] = v5;
  sub_23BC5FA8C(0, 0, v4, &unk_23BC76C58, v9);
}

uint64_t sub_23BC5FA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00E8, &qword_23BC76918);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23BC63E24(a3, v27 - v11, &qword_27E1C00E8, &qword_23BC76918);
  v13 = sub_23BC75AC8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23BC667CC(v12, &qword_27E1C00E8, &qword_23BC76918);
  }

  else
  {
    sub_23BC75AB8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23BC75A88();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23BC759A8() + 32;
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

      sub_23BC667CC(a3, &qword_27E1C00E8, &qword_23BC76918);

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

  sub_23BC667CC(a3, &qword_27E1C00E8, &qword_23BC76918);
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

uint64_t sub_23BC5FD8C()
{
  sub_23BC74F28();
  v0 = sub_23BC74F18();
  swift_getKeyPath();
  if (v0)
  {
    sub_23BC75BF8();
    LOBYTE(v0) = sub_23BC75948();
  }

  return v0 & 1;
}

unint64_t sub_23BC5FE3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C02F8, &qword_23BC76B98);
    v2 = sub_23BC75C48();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_23BC65650(*(a1 + 48) + 40 * v14, v27);
        sub_23BC64CCC(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_23BC65650(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_23BC667CC(v24, &qword_27E1C02E8, &unk_23BC76B80);

          goto LABEL_23;
        }

        sub_23BC64CCC(v25 + 8, v23);
        sub_23BC667CC(v24, &qword_27E1C02E8, &unk_23BC76B80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0300, &qword_23BC76BA0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_23BC7345C(v21, v22);
        v15 = result;
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;

          v11 = v2[7];
          v12 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = v21;

          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23BC6011C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C02E0, &qword_23BC76B78);
    v2 = sub_23BC75C48();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_23BC65650(*(a1 + 48) + 40 * v14, v29);
        sub_23BC64CCC(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_23BC65650(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_23BC64CCC(v27 + 8, v22);
        sub_23BC667CC(v26, &qword_27E1C02E8, &unk_23BC76B80);
        v23 = v20;
        sub_23BC656AC(v22, v24);
        v15 = v23;
        sub_23BC656AC(v24, v25);
        sub_23BC656AC(v25, &v23);
        result = sub_23BC7345C(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_23BC656AC(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_23BC656AC(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_23BC667CC(v26, &qword_27E1C02E8, &unk_23BC76B80);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23BC603F8(void *a1)
{
  v1 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x88));
  if (v1 == 1)
  {
    return sub_23BC604C8();
  }

  MEMORY[0x28223BE20](a1);

  sub_23BC75338();
  return sub_23BC63C58(v1);
}

uint64_t sub_23BC604C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00E8, &qword_23BC76918);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = objc_opt_self();
  v7 = v0;
  if ([v6 isMainThread])
  {
    sub_23BC631F0(v7);
  }

  else
  {
    v9 = sub_23BC75AC8();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_23BC75AA8();

    v10 = sub_23BC75A98();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = sub_23BC63C68;
    v11[5] = v5;
    sub_23BC5FA8C(0, 0, v4, &unk_23BC76928, v11);
  }
}

uint64_t sub_23BC60690(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00C8, &qword_23BC76908);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  sub_23BC63E24(a1, v21 - v8, &qword_27E1C00C8, &qword_23BC76908);
  v10 = sub_23BC74F08();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_23BC667CC(v9, &qword_27E1C00C8, &qword_23BC76908);
    v22 = 0u;
    v23 = 0u;
LABEL_11:
    sub_23BC667CC(&v22, &qword_27E1C00D0, &qword_23BC76910);
    goto LABEL_12;
  }

  sub_23BC74EE8();
  (*(v11 + 8))(v9, v10);
  if (!*(&v23 + 1))
  {
    goto LABEL_11;
  }

  sub_23BC75588();
  if (swift_dynamicCast())
  {
    v12 = *((*v4 & *v2) + 0x70);
    v13 = *(v2 + v12);
    *&v22 = v21[0];
    if (!v13 || (v21[0] = v13, sub_23BC66784(&qword_27E1C00E0, MEMORY[0x277CDD490]), , v14 = sub_23BC75948(), , (v14 & 1) == 0))
    {
      v15 = sub_23BC75578();
      if (*(v2 + v12))
      {
        v16 = *(v2 + v12);

        v17 = sub_23BC75578();

        *&v22 = v15;
        if (v17)
        {
          v21[0] = v17;
          sub_23BC75638();
          sub_23BC66784(&qword_27E1C00D8, MEMORY[0x277CDD4B0]);
          v18 = sub_23BC75948();

          if ((v18 & 1) == 0)
          {
            return result;
          }

          goto LABEL_12;
        }
      }
    }
  }

LABEL_12:
  result = sub_23BC65EBC(a1, *(v5 + 80), *(v5 + 88));
  if (result)
  {
    *(v2 + *((*v4 & *v2) + 0x80)) = 1;
    v20 = *(v2 + *((*v4 & *v2) + 0x88));
    if (v20 == 1)
    {
      return sub_23BC604C8();
    }

    else
    {
      MEMORY[0x28223BE20](result);
      v21[-2] = v2;

      sub_23BC75338();
      return sub_23BC63C58(v20);
    }
  }

  return result;
}

uint64_t sub_23BC60AAC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00C8, &qword_23BC76908);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_23BC74ED8();
    v11 = sub_23BC74F08();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_23BC74F08();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = a1;
  a4(v10);

  return sub_23BC667CC(v10, &qword_27E1C00C8, &qword_23BC76908);
}

uint64_t sub_23BC60BE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00C8, &qword_23BC76908);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  sub_23BC63E24(a1, v20 - v6, &qword_27E1C00C8, &qword_23BC76908);
  v8 = sub_23BC74F08();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_23BC667CC(v7, &qword_27E1C00C8, &qword_23BC76908);
    v21 = 0u;
    v22 = 0u;
LABEL_11:
    sub_23BC667CC(&v21, &qword_27E1C00D0, &qword_23BC76910);
    goto LABEL_12;
  }

  sub_23BC74EE8();
  (*(v9 + 8))(v7, v8);
  if (!*(&v22 + 1))
  {
    goto LABEL_11;
  }

  sub_23BC75588();
  if (swift_dynamicCast())
  {
    v10 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
    v11 = *(v2 + v10);
    *&v21 = v20[0];
    if (!v11 || (v20[0] = v11, sub_23BC66784(&qword_27E1C00E0, MEMORY[0x277CDD490]), , v12 = sub_23BC75948(), , (v12 & 1) == 0))
    {
      v13 = sub_23BC75578();
      if (*(v2 + v10))
      {
        v14 = *(v2 + v10);

        v15 = sub_23BC75578();

        *&v21 = v13;
        if (v15)
        {
          v20[0] = v15;
          sub_23BC75638();
          sub_23BC66784(&qword_27E1C00D8, MEMORY[0x277CDD4B0]);
          v16 = sub_23BC75948();

          if ((v16 & 1) == 0)
          {
            return result;
          }

          goto LABEL_12;
        }
      }
    }
  }

LABEL_12:
  result = sub_23BC60FB4(a1);
  if (result)
  {
    v18 = MEMORY[0x277D85000];
    *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x80)) = 1;
    v19 = *(v2 + *((*v18 & *v2) + 0x88));
    if (v19 == 1)
    {
      return sub_23BC604C8();
    }

    else
    {
      MEMORY[0x28223BE20](result);
      v20[-2] = v2;

      sub_23BC75338();
      return sub_23BC63C58(v19);
    }
  }

  return result;
}

uint64_t sub_23BC60FB4(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v129 = *MEMORY[0x277D85000] & *v1;
  v136 = sub_23BC75868();
  v128 = *(v136 - 8);
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v136);
  v127 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00F0, &qword_23BC769B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v130 = &v107 - v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00F8, &qword_23BC769C0);
  v9 = *(v132 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v132);
  v133 = &v107 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0100, &qword_23BC769C8);
  v12 = *(v135 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v135);
  v131 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v134 = &v107 - v17;
  MEMORY[0x28223BE20](v16);
  v137 = &v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0108, &qword_23BC769D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v107 - v21;
  v23 = sub_23BC757F8();
  v144 = *(v23 - 8);
  v24 = *(v144 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v145 = &v107 - v29;
  MEMORY[0x28223BE20](v28);
  v142 = &v107 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00C8, &qword_23BC76908);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v107 - v33;
  sub_23BC63E24(a1, &v107 - v33, &qword_27E1C00C8, &qword_23BC76908);
  v35 = sub_23BC74F08();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_23BC667CC(v34, &qword_27E1C00C8, &qword_23BC76908);
    return 1;
  }

  v124 = v27;
  v37 = sub_23BC74EF8();
  (*(v36 + 8))(v34, v35);
  if (!v37)
  {
    return 1;
  }

  v38 = sub_23BC6011C(v37);

  if (!v38)
  {
    return 1;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_44;
  }

  v39 = sub_23BC7345C(0x5479726F74736948, 0xED0000736E656B6FLL);
  if ((v40 & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_23BC64CCC(*(v38 + 56) + 32 * v39, &v149);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0110, &qword_23BC769D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v41 = v148;
  v123 = *(v148 + 16);
  if (!v123)
  {
LABEL_44:

    return 1;
  }

  v42 = 0;
  v114 = 0;
  v43 = *v3 & *v146;
  v140 = *(v43 + 0x90);
  v110 = *(v43 + 112);
  v121 = v148 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
  v122 = v144 + 16;
  v139 = (v144 + 56);
  v125 = (v144 + 48);
  v120 = (v144 + 32);
  v126 = (v144 + 8);
  v109 = (v12 + 16);
  v108 = (v12 + 56);
  v111 = (v9 + 8);
  v112 = (v12 + 8);
  v107 = xmmword_23BC76750;
  v44 = v142;
  v138 = v23;
  v119 = v148;
  while (1)
  {
    if (v42 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_59;
    }

    v45 = *(v144 + 16);
    v45(v44, v121 + *(v144 + 72) * v42, v23);
    v46 = sub_23BC757E8();
    if (v46)
    {
      break;
    }

LABEL_11:
    ++v42;
    (*v126)(v44, v23);
    if (v42 == v123)
    {
      goto LABEL_44;
    }
  }

  v118 = v45;
  v47 = 0;
  v48 = v46 + 64;
  v49 = 1 << *(v46 + 32);
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v51 = v50 & *(v46 + 64);
  v3 = ((v49 + 63) >> 6);
  v143 = v46;
  while (v51)
  {
LABEL_25:
    v53 = __clz(__rbit64(v51)) | (v47 << 6);
    v54 = (*(v46 + 48) + 16 * v53);
    v55 = *v54;
    v35 = v54[1];
    v141 = *(*(v46 + 56) + 8 * v53);
    v56 = v146;
    v57 = v140;
    swift_beginAccess();
    v58 = *(v56 + v57);
    if (*(v58 + 16))
    {

      v59 = sub_23BC7345C(v55, v35);
      v60 = v55;
      if (v61)
      {
        sub_23BC64DA4(*(v58 + 56) + 40 * v59, &v149);
      }

      else
      {
        v151 = 0;
        v149 = 0u;
        v150 = 0u;
      }
    }

    else
    {
      v151 = 0;
      v149 = 0u;
      v150 = 0u;

      v60 = v55;
    }

    v23 = v138;
    v51 &= v51 - 1;
    swift_endAccess();
    if (!*(&v150 + 1))
    {

      sub_23BC667CC(&v149, &qword_27E1C0118, &qword_23BC769E0);
      (*v139)(v22, 1, 1, v23);
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0120, &qword_23BC769E8);
    v62 = swift_dynamicCast();
    (*v139)(v22, v62 ^ 1u, 1, v23);
    if ((*v125)(v22, 1, v23) == 1)
    {

LABEL_19:
      sub_23BC667CC(v22, &qword_27E1C0108, &qword_23BC769D0);
      v46 = v143;
    }

    else
    {
      (*v120)(v145, v22, v23);
      v63 = sub_23BC757E8();
      if (!v63)
      {
        goto LABEL_41;
      }

      v64 = v63;
      if (*(v63 + 16) && (v65 = sub_23BC7345C(v60, v35), (v66 & 1) != 0))
      {
        v117 = v60;
        v67 = *(*(v64 + 56) + 8 * v65);

        if (v67 >= v141)
        {
          goto LABEL_41;
        }

        v116 = &v107;
        MEMORY[0x28223BE20](v68);
        *(&v107 - 2) = v145;
        v147 = v136;
        sub_23BC750E8();
        sub_23BC758A8();
        v69 = *(v129 + 80);
        v70 = *(v129 + 88);
        v71 = sub_23BC75898();
        v115 = &v107;
        *(&v107 - 2) = MEMORY[0x28223BE20](v71);
        v72 = v134;
        sub_23BC750E8();

        MEMORY[0x28223BE20](v73);
        *(&v107 - 2) = v137;
        *(&v107 - 1) = v72;
        v74 = v131;
        sub_23BC750E8();
        v75 = v130;
        v76 = v74;
        v77 = v135;
        (*v109)(v130, v76, v135);
        (*v108)(v75, 0, 1, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0128, &qword_23BC769F0);
        v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0130, &qword_23BC769F8) - 8);
        v79 = *(v78 + 72);
        v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        *(swift_allocObject() + 16) = v107;
        swift_getKeyPath();
        sub_23BC74F38();
        v113 = sub_23BC66784(&qword_27E1C0138, MEMORY[0x277CDD588]);
        sub_23BC75718();
        sub_23BC756F8();
        if (*(v146 + v110))
        {
          v81 = *(v146 + v110);

          v82 = v114;
          v46 = sub_23BC754E8();
          if (!v82)
          {
            goto LABEL_49;
          }

          v114 = 0;
        }

        else
        {
        }

        (*v111)(v133, v132);
        v35 = v112;
        v83 = *v112;
        v84 = v135;
        (*v112)(v131, v135);
        v83(v134, v84);
        v83(v137, v84);
        (*v126)(v145, v23);
        v46 = v143;
      }

      else
      {

LABEL_41:

        (*v126)(v145, v23);
        v46 = v143;
      }
    }
  }

  while (1)
  {
    v52 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v52 >= v3)
    {

      v44 = v142;
      v41 = v119;
      goto LABEL_11;
    }

    v51 = *(v48 + 8 * v52);
    ++v47;
    if (v51)
    {
      v47 = v52;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_49:
  v86 = v46;

  *(&v150 + 1) = v23;
  v87 = sub_23BC66784(&qword_27E1C0140, MEMORY[0x277CDD510]);
  v151 = v87;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v149);
  v42 = v142;
  v89 = v118;
  v118(boxed_opaque_existential_1, v142, v23);
  swift_beginAccess();

  sub_23BC5F134(&v149, v117, v35);
  swift_endAccess();
  v90 = *(v86 + 16);
  if (v90)
  {
    v91 = v128;
    v92 = v86 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * (v90 - 1);
    v93 = v127;
    v94 = v136;
    (*(v128 + 16))(v127, v92, v136);

    sub_23BC75848();
    (*(v91 + 8))(v93, v94);
    v95 = sub_23BC757E8();
    v41 = v135;
    v3 = v133;
    if (v95)
    {
      v96 = v95;
      if (*(v95 + 16) && (v97 = sub_23BC7345C(v117, v35), (v98 & 1) != 0))
      {
        v99 = *(*(v96 + 56) + 8 * v97);

        if (v141 < v99)
        {
          *(&v150 + 1) = v23;
          v151 = v87;
          v100 = __swift_allocate_boxed_opaque_existential_1(&v149);
          v101 = v124;
          v89(v100, v124, v23);
          swift_beginAccess();
          sub_23BC5F134(&v149, v117, v35);
          swift_endAccess();

          v102 = *v126;
          (*v126)(v101, v23);
          goto LABEL_60;
        }
      }

      else
      {
      }
    }

LABEL_59:

    v102 = *v126;
    (*v126)(v124, v23);
LABEL_60:
    (*v111)(v3, v132);
    v106 = *v112;
    (*v112)(v131, v41);
    v102(v42, v23);
    v106(v134, v41);
    v106(v137, v41);
    v102(v145, v23);
    return 1;
  }

  else
  {

    (*v111)(v133, v132);
    v103 = *v112;
    v104 = v135;
    (*v112)(v131, v135);
    v105 = *v126;
    (*v126)(v42, v23);
    v103(v134, v104);
    v103(v137, v104);
    v105(v145, v23);
    return 0;
  }
}

uint64_t sub_23BC621C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29[1] = a2;
  v31 = a3;
  v30 = sub_23BC74FC8();
  v29[0] = *(v30 - 8);
  v4 = *(v29[0] + 64);
  MEMORY[0x28223BE20](v30);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0288, &qword_23BC76B30);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0150, &qword_23BC76A38);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0290, &qword_23BC76B38);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v29 - v20;
  v22 = *a1;
  sub_23BC65608(&qword_27E1C0168, &qword_27E1C0150, &qword_23BC76A38);
  sub_23BC74FE8();
  swift_getKeyPath();
  sub_23BC74F68();

  (*(v13 + 8))(v16, v12);
  sub_23BC757F8();
  sub_23BC74FD8();
  v23 = v29[0];
  v24 = v30;
  (*(v29[0] + 104))(v6, *MEMORY[0x277CC8FC0], v30);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0298, &qword_23BC76B70);
  v26 = v31;
  v31[3] = v25;
  v26[4] = sub_23BC653E4();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_23BC65608(&qword_27E1C02C8, &qword_27E1C0290, &qword_23BC76B38);
  sub_23BC65608(&qword_27E1C02D0, &qword_27E1C0288, &qword_23BC76B30);
  sub_23BC66784(&qword_27E1C02D8, MEMORY[0x277CDD510]);
  v27 = v32;
  sub_23BC74FA8();
  (*(v23 + 8))(v6, v24);
  (*(v33 + 8))(v11, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_23BC62630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0150, &qword_23BC76A38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C01B8, &qword_23BC76A58);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *a1;
  sub_23BC65608(&qword_27E1C0168, &qword_27E1C0150, &qword_23BC76A38);
  sub_23BC74FE8();
  swift_getKeyPath();
  sub_23BC74F68();

  (*(v6 + 8))(v9, v5);
  v19 = v18;
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C01C0, &qword_23BC76A90);
  a3[4] = sub_23BC65040();
  __swift_allocate_boxed_opaque_existential_1(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C01E0, &qword_23BC76A98);
  sub_23BC65608(&qword_27E1C0240, &qword_27E1C01B8, &qword_23BC76A58);
  sub_23BC65608(&qword_27E1C0248, &qword_27E1C01E0, &qword_23BC76A98);
  sub_23BC65608(&qword_27E1C0250, &qword_27E1C0258, &qword_23BC76AC8);
  sub_23BC74F78();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_23BC62948@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0238, &qword_23BC76AC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0228, &qword_23BC76AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0218, &qword_23BC76AB0);
  v14 = *(v13 - 8);
  v28 = v13;
  v29 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C01F0, &qword_23BC76AA0);
  v19 = *(v18 - 8);
  v26 = v18;
  v27 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0200, &qword_23BC76AA8);
  sub_23BC74FD8();
  sub_23BC65608(&qword_27E1C0260, &qword_27E1C0238, &qword_23BC76AC0);
  sub_23BC74FE8();
  swift_getKeyPath();
  sub_23BC74F68();

  (*(v4 + 8))(v7, v3);
  swift_getKeyPath();
  sub_23BC65608(&qword_27E1C0268, &qword_27E1C0228, &qword_23BC76AB8);
  sub_23BC74F68();

  (*(v9 + 8))(v12, v8);
  sub_23BC65608(&qword_27E1C0270, &qword_27E1C01F0, &qword_23BC76AA0);
  sub_23BC65608(&qword_27E1C0278, &qword_27E1C0218, &qword_23BC76AB0);
  sub_23BC65608(&qword_27E1C0280, &qword_27E1C0200, &qword_23BC76AA8);
  v23 = v26;
  v24 = v28;
  sub_23BC74F88();
  (*(v29 + 8))(v17, v24);
  return (*(v27 + 8))(v22, v23);
}

uint64_t sub_23BC62DB8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0150, &qword_23BC76A38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0158, &qword_23BC76A40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0160, &qword_23BC76A48);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v32 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v31 = v30 - v19;
  v30[0] = *a1;
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0100, &qword_23BC769C8);
  sub_23BC74FD8();
  v20 = sub_23BC65608(&qword_27E1C0168, &qword_27E1C0150, &qword_23BC76A38);
  sub_23BC74FE8();
  v39 = v4;
  v40 = v8;
  sub_23BC65608(&qword_27E1C0170, &qword_27E1C0158, &qword_23BC76A40);
  v38 = v20;
  sub_23BC74F98();
  v21 = *(v10 + 8);
  v21(v13, v9);
  v22 = *(v5 + 8);
  v22(v8, v4);
  sub_23BC74FD8();
  sub_23BC74FE8();
  v37 = v8;
  v23 = v32;
  sub_23BC74F98();
  v21(v13, v9);
  v22(v8, v4);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0178, &qword_23BC76A50);
  v25 = v36;
  v36[3] = v24;
  v25[4] = sub_23BC64E08();
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_23BC65608(&qword_27E1C01B0, &qword_27E1C0160, &qword_23BC76A48);
  v26 = v31;
  v27 = v34;
  sub_23BC74FB8();
  v28 = *(v35 + 8);
  v28(v23, v27);
  return (v28)(v26, v27);
}

uint64_t sub_23BC631F0(void *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  swift_getKeyPath();
  sub_23BC5EAAC();
}

uint64_t sub_23BC632A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BC75AA8();
  v5[4] = sub_23BC75A98();
  v7 = sub_23BC75A88();

  return MEMORY[0x2822009F8](sub_23BC63340, v7, v6);
}

uint64_t sub_23BC63340()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_23BC633AC(void *a1)
{
  v1 = (*MEMORY[0x277D85000] & *a1);
  v2 = *(a1 + v1[13]);
  v3 = v1[10];

  if (sub_23BC75A58())
  {
    v4 = 4;
    do
    {
      v5 = v4 - 4;
      v6 = sub_23BC75A38();
      sub_23BC75A18();
      if (v6)
      {
        v7 = *(v2 + 8 * v4);
        swift_unknownObjectRetain();
        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_23BC75BD8();
        v8 = v4 - 3;
        if (__OFADD__(v5, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v9 = v1[11];
      sub_23BC756E8();
      swift_unknownObjectRelease();
      ++v4;
    }

    while (v8 != sub_23BC75A58());
  }
}

uint64_t sub_23BC63504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23BC75AA8();
  v5[4] = sub_23BC75A98();
  v7 = sub_23BC75A88();

  return MEMORY[0x2822009F8](sub_23BC669E8, v7, v6);
}

id sub_23BC6359C()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v17 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v5 = sub_23BC750D8();
  v6 = sub_23BC75B48();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  *(v0 + *((v4 & v2) + 0x60)) = 1;
  v10 = *((*v3 & *v0) + 0x68);
  *(v0 + v10) = sub_23BC75A28();
  *(v0 + *((*v3 & *v0) + 0x70)) = 0;
  v11 = *((*v3 & *v0) + 0x78);
  (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
  v12 = *((v4 & v2) + 0x58);
  sub_23BC74F28();
  sub_23BC75A28();
  sub_23BC756B8();
  *(v0 + *((*v3 & *v0) + 0x80)) = 0;
  *(v0 + *((*v3 & *v0) + 0x88)) = 1;
  *(v0 + *((*v3 & *v0) + 0x90)) = MEMORY[0x277D84F98];
  *(v0 + *((*v3 & *v0) + 0x98)) = 0;
  v13 = v0 + *((*v3 & *v0) + 0xA0);
  sub_23BC75118();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_23BC63850()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BC63888(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];
  v5 = *&a1[*((*MEMORY[0x277D85000] & *a1) + 0x68)];

  v6 = *&a1[*((*v2 & *a1) + 0x70)];

  v7 = *((*v2 & *a1) + 0x78);
  v8 = *((v4 & v3) + 0x50);
  v9 = *((v4 & v3) + 0x58);
  v10 = sub_23BC756C8();
  (*(*(v10 - 8) + 8))(&a1[v7], v10);
  sub_23BC63C58(*&a1[*((*v2 & *a1) + 0x88)]);
  v11 = *&a1[*((*v2 & *a1) + 0x90)];

  v12 = *((*v2 & *a1) + 0xA0);
  v13 = sub_23BC75128();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v12], v13);
}

uint64_t sub_23BC63A68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23BC63B60;

  return v7(a1);
}

uint64_t sub_23BC63B60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23BC63C58(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23BC63C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BC63D30;

  return sub_23BC632A8(a1, v4, v5, v7, v6);
}

uint64_t sub_23BC63D30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23BC63E24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23BC63E8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BC66A5C;

  return sub_23BC63A68(a1, v5);
}

uint64_t sub_23BC63F44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BC63FFC;

  return sub_23BC63A68(a1, v5);
}

uint64_t sub_23BC63FFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23BC64154()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

size_t sub_23BC641B4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C02F0, &qword_23BC76B90);
  v10 = *(sub_23BC75828() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23BC75828() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

double sub_23BC6438C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23BC7345C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23BC64A7C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23BC5ABC0((*(v12 + 56) + 40 * v9), a3);
    sub_23BC646FC(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23BC64438(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0148, &qword_23BC76A30);
  v36 = a2;
  result = sub_23BC75C38();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_23BC5ABC0(v25, v37);
      }

      else
      {
        sub_23BC64DA4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23BC75CE8();
      sub_23BC759B8();
      result = sub_23BC75D08();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23BC5ABC0(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23BC646FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BC75B68() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_23BC75CE8();

      sub_23BC759B8();
      v15 = sub_23BC75D08();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23BC648B8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23BC7345C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23BC64A7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23BC64438(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23BC7345C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23BC75C88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_23BC5ABC0(a1, v23);
  }

  else
  {
    sub_23BC64A0C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_23BC64A0C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23BC5ABC0(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23BC64A7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0148, &qword_23BC76A30);
  v2 = *v0;
  v3 = sub_23BC75C28();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_23BC64DA4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23BC5ABC0(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_23BC64C24()
{
  v1 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  swift_getKeyPath();
  sub_23BC5EA1C();

  return *(v0 + *((*v1 & *v0) + 0x98));
}

uint64_t sub_23BC64CCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23BC64DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23BC64E08()
{
  result = qword_27E1C0180;
  if (!qword_27E1C0180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0178, &qword_23BC76A50);
    sub_23BC64E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0180);
  }

  return result;
}

unint64_t sub_23BC64E8C()
{
  result = qword_27E1C0188;
  if (!qword_27E1C0188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0160, &qword_23BC76A48);
    sub_23BC64F4C();
    sub_23BC65608(&qword_27E1C01A8, &qword_27E1C0150, &qword_23BC76A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0188);
  }

  return result;
}

unint64_t sub_23BC64F4C()
{
  result = qword_27E1C0190;
  if (!qword_27E1C0190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0158, &qword_23BC76A40);
    sub_23BC65608(&qword_27E1C0198, &qword_27E1C0100, &qword_23BC769C8);
    sub_23BC65608(&qword_27E1C01A0, &qword_27E1C0100, &qword_23BC769C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0190);
  }

  return result;
}

unint64_t sub_23BC65040()
{
  result = qword_27E1C01C8;
  if (!qword_27E1C01C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C01C0, &qword_23BC76A90);
    sub_23BC65488(&qword_27E1C01D0, &qword_27E1C01B8, &qword_23BC76A58);
    sub_23BC650E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C01C8);
  }

  return result;
}

unint64_t sub_23BC650E4()
{
  result = qword_27E1C01D8;
  if (!qword_27E1C01D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C01E0, &qword_23BC76A98);
    sub_23BC65170();
    sub_23BC652B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C01D8);
  }

  return result;
}

unint64_t sub_23BC65170()
{
  result = qword_27E1C01E8;
  if (!qword_27E1C01E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C01F0, &qword_23BC76AA0);
    sub_23BC65244(&qword_27E1C01F8);
    sub_23BC65244(&qword_27E1C0208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C01E8);
  }

  return result;
}

uint64_t sub_23BC65244(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0200, &qword_23BC76AA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BC652B0()
{
  result = qword_27E1C0210;
  if (!qword_27E1C0210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0218, &qword_23BC76AB0);
    sub_23BC65334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0210);
  }

  return result;
}

unint64_t sub_23BC65334()
{
  result = qword_27E1C0220;
  if (!qword_27E1C0220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0228, &qword_23BC76AB8);
    sub_23BC65608(&qword_27E1C0230, &qword_27E1C0238, &qword_23BC76AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0220);
  }

  return result;
}

unint64_t sub_23BC653E4()
{
  result = qword_27E1C02A0;
  if (!qword_27E1C02A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0298, &qword_23BC76B70);
    sub_23BC65488(&qword_27E1C02A8, &qword_27E1C0290, &qword_23BC76B38);
    sub_23BC65520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C02A0);
  }

  return result;
}

uint64_t sub_23BC65488(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23BC65608(&qword_27E1C01A8, &qword_27E1C0150, &qword_23BC76A38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BC65520()
{
  result = qword_27E1C02B0;
  if (!qword_27E1C02B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0288, &qword_23BC76B30);
    v1 = MEMORY[0x277CDD510];
    sub_23BC66784(&qword_27E1C02B8, MEMORY[0x277CDD510]);
    sub_23BC66784(&qword_27E1C02C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C02B0);
  }

  return result;
}

uint64_t sub_23BC65608(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

_OWORD *sub_23BC656AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23BC65708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a3;
  v49 = a1;
  v48 = *a2;
  v47 = *MEMORY[0x277D85000];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - v11;
  v46 = sub_23BC75B48();
  v45 = *(v46 - 8);
  v12 = *(v45 + 64);
  v13 = MEMORY[0x28223BE20](v46);
  v50 = &v39 - v14;
  v52 = *(AssociatedTypeWitness - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v39 - v16;
  v59[6] = AssociatedTypeWitness;
  v17 = sub_23BC750D8();
  v18 = sub_23BC75B48();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v39 - v20;
  v22 = sub_23BC75738();
  v51 = *(v22 - 8);
  v23 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  sub_23BC75728();
  v26 = sub_23BC74F28();
  sub_23BC75C68();
  v27 = *(*(v26 - 8) + 72);
  v28 = *(*(v26 - 8) + 80);
  swift_allocObject();
  v29 = sub_23BC75A08();
  v30 = v48;
  v53 = *((v47 & v48) + 0x50);
  v54 = a5;
  v48 = a2;
  v55 = *((v47 & v30) + 0x58);
  v56 = a6;
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_23BC5CB48();
  sub_23BC5C584(v29);
  sub_23BC75708();
  sub_23BC756F8();
  v31 = sub_23BC754E8();
  v34 = v44;
  v35 = v48;
  if (!v31)
  {
    (*(v51 + 8))(v25, v22);
    v32 = v50;
    (*(v52 + 56))(v50, 1, 1, AssociatedTypeWitness);
    return (*(v45 + 8))(v32, v46);
  }

  v59[0] = v31;
  sub_23BC75A68();
  swift_getWitnessTable();
  v32 = v50;
  sub_23BC75938();

  v36 = v52;
  if ((*(v52 + 48))(v32, 1, AssociatedTypeWitness) == 1)
  {
    (*(v51 + 8))(v25, v22);
    return (*(v45 + 8))(v32, v46);
  }

  (*(v36 + 32))(v34, v32, AssociatedTypeWitness);
  sub_23BC75758();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0120, &qword_23BC769E8);
  if (swift_dynamicCast())
  {
    sub_23BC5ABC0(v57, v59);
    sub_23BC64DA4(v59, v57);
    v37 = *((*MEMORY[0x277D85000] & *v35) + 0x90);
    swift_beginAccess();
    v38 = v40;

    sub_23BC5F134(v57, v41, v38);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    (*(v36 + 8))(v34, AssociatedTypeWitness);
    return (*(v51 + 8))(v25, v22);
  }

  else
  {
    (*(v36 + 8))(v34, AssociatedTypeWitness);
    (*(v51 + 8))(v25, v22);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    return sub_23BC667CC(v57, &qword_27E1C0118, &qword_23BC769E0);
  }
}

uint64_t sub_23BC65EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = sub_23BC75828();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF78, &unk_23BC76760);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C00C8, &qword_23BC76908);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  v16 = sub_23BC74F08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BC63E24(a1, v15, &qword_27E1C00C8, &qword_23BC76908);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_23BC667CC(v15, &qword_27E1C00C8, &qword_23BC76908);
    return 1;
  }

  (*(v17 + 32))(v20, v15, v16);
  v21 = sub_23BC74EF8();
  if (!v21 || (v22 = sub_23BC5FE3C(v21), , !v22))
  {
    (*(v17 + 8))(v20, v16);
    return 1;
  }

  v55 = v20;
  v56 = v17;
  v57 = v16;
  v58 = v11;
  v59 = v7;
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;

  v29 = 0;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v60 = v4;
  while (v26)
  {
    v63 = v30;
LABEL_16:
    v34 = v22;
    v35 = *(*(v22 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v26)))));
    v36 = *(v35 + 16);
    v37 = v31[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v38 > v31[3] >> 1)
    {
      if (v37 <= v38)
      {
        v39 = v37 + v36;
      }

      else
      {
        v39 = v37;
      }

      result = sub_23BC641B4(result, v39, 1, v31);
      v31 = result;
    }

    v4 = v60;
    v26 &= v26 - 1;
    if (*(v35 + 16))
    {
      v40 = v31[2];
      if ((v31[3] >> 1) - v40 < v36)
      {
        goto LABEL_42;
      }

      v41 = v31 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v40;
      swift_arrayInitWithCopy();

      v22 = v34;
      v30 = v63;
      if (v36)
      {
        v42 = v31[2];
        v43 = __OFADD__(v42, v36);
        v44 = v42 + v36;
        if (v43)
        {
          goto LABEL_43;
        }

        v31[2] = v44;
      }
    }

    else
    {

      v22 = v34;
      v30 = v63;
      if (v36)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = v59;
  while (1)
  {
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v33 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v33);
    ++v29;
    if (v26)
    {
      v63 = v30;
      v29 = v33;
      goto LABEL_16;
    }
  }

  sub_23BC758A8();
  result = sub_23BC75898();
  v63 = result;
  v45 = v31[2];
  if (!v45)
  {
LABEL_36:
    (*(v56 + 8))(v55, v57);

    v51 = v58;
    (*(v64 + 56))(v58, 1, 1, v4);
    sub_23BC667CC(v51, &qword_27E1BFF78, &unk_23BC76760);
    return 0;
  }

  v46 = 0;
  v62 = v64 + 16;
  v47 = (v64 + 8);
  while (v46 < v31[2])
  {
    (*(v64 + 16))(v32, v31 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v46, v4);
    v65[0] = sub_23BC75818();
    v65[1] = v48;
    MEMORY[0x28223BE20](v65[0]);
    *(&v54 - 2) = v65;
    v49 = v4;
    v50 = sub_23BC5F744(sub_23BC66534, (&v54 - 4), v63);

    if (v50)
    {
      (*(v56 + 8))(v55, v57);

      v52 = v64;
      v53 = v58;
      (*(v64 + 32))(v58, v32, v49);
      (*(v52 + 56))(v53, 0, 1, v49);
      sub_23BC667CC(v53, &qword_27E1BFF78, &unk_23BC76760);
      return 1;
    }

    ++v46;
    result = (*v47)(v32, v49);
    v4 = v49;
    if (v45 == v46)
    {
      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_23BC66534(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23BC75C78() & 1;
  }
}

uint64_t sub_23BC66590(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_23BC5EB74(v3);
}

uint64_t sub_23BC665F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = sub_23BC756C8();
  (*(*(v8 - 8) + 24))(&v1[v5], a1, v8);
  swift_endAccess();
  return sub_23BC5F274();
}

uint64_t sub_23BC666D8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_23BC666E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23BC5FD8C() & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23BC66784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BC667CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BC6682C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23BC66A24;

  return sub_23BC5F8B0(a1, v4, v5, v6);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BC66928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BC66A28;

  return sub_23BC63504(a1, v4, v5, v7, v6);
}

uint64_t sub_23BC66B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0340, &qword_23BC76C70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23BC76750;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  a10();
}

uint64_t sub_23BC66C90(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a1;
  v32 = 0;
  v31 = 0;
  v23[0] = a3;
  v23[1] = a4;
  v24 = a5;
  v25 = a6;
  v26 = a10;
  v27 = v19;
  v28 = 0;
  v29 = KeyPath;
  v30 = 0;

  a12(v23, a7, a11, a8);
}

uint64_t sub_23BC66DC4()
{
  sub_23BC68784(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_23BC66E00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CustomModelContainerState.ResolvedModelContainer();
  result = sub_23BC751B8();
  *a1 = result;
  return result;
}

uint64_t sub_23BC66E40()
{
  v0 = sub_23BC758B8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23BC757B8();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomModelContainerState.ResolvedModelContainer();
  v8 = swift_allocObject();
  sub_23BC757A8();

  sub_23BC758C8();
  v9 = sub_23BC758F8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_23BC75908();
  sub_23BC75638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF60, &qword_23BC771B0);
  v12 = *(v3 + 72);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23BC76750;
  (*(v3 + 16))(v14 + v13, v7, v2);
  v15 = sub_23BC755F8();
  (*(v4 + 8))(v7, v2);
  *(v8 + 16) = v15;
  *(v8 + 24) = 0;
  return v8;
}

void sub_23BC6707C()
{
  v1 = v0;
  v2 = sub_23BC753A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 3);
  v8 = *(v1 + 4);
  v9 = v1[40];
  type metadata accessor for CustomModelContainerState.ResolvedModelContainer();
  sub_23BC68AC0(&qword_27E1C0378, type metadata accessor for CustomModelContainerState.ResolvedModelContainer);
  v10 = sub_23BC75248();
  v11 = *(v10 + 16);
  LOBYTE(v9) = *(v10 + 24);
  sub_23BC68778(v11, v9);

  if ((v9 & 1) == 0)
  {
    sub_23BC755C8();
    sub_23BC68784(v11, 0);
    v12 = *v1;
    sub_23BC75518();
    if ((v1[1] & 1) == 0)
    {
      goto LABEL_12;
    }

    v18 = v1[56];
    v13 = *(v1 + 6);
    v17 = v13;
    if (v18 == 1)
    {
      v14 = v13;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    else
    {

      sub_23BC75B28();
      v15 = sub_23BC753E8();
      sub_23BC75178();

      sub_23BC75398();
      swift_getAtKeyPath();
      sub_23BC69210(&v17, &qword_27E1C0380, &qword_23BC77158);
      (*(v3 + 8))(v6, v2);
      if (!v16[1])
      {
LABEL_11:
        [objc_allocWithZone(MEMORY[0x277CCAD90]) init];
      }
    }

LABEL_12:
    sub_23BC754D8();

    return;
  }

  sub_23BC68784(v11, 1);
}

void sub_23BC6731C()
{
  v1 = *v0;
  v2 = v0[1];
  *v3 = v0[2];
  *&v3[9] = *(v0 + 41);
  sub_23BC6707C();
}

uint64_t sub_23BC67360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0360, &qword_23BC77118);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0368, &qword_23BC77120);
  v10 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v30 - v11;
  v12 = *(v3 + 1);
  v13 = *(v3 + 8);
  v32 = *(v3 + 16);
  v33 = v13;
  v14 = *(v3 + 24);
  v30[1] = *(v3 + 32);
  v15 = *(v3 + 40);
  v40 = *(v3 + 41);
  KeyPath = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0370, &qword_23BC77150);
  (*(*(v17 - 8) + 16))(v9, a1, v17);
  v18 = &v9[*(v6 + 44)];
  *v18 = v12 & 1;
  *(v18 + 1) = KeyPath;
  v18[16] = 0;
  v31 = swift_getKeyPath();
  type metadata accessor for CustomModelContainerState.ResolvedModelContainer();
  sub_23BC68AC0(&qword_27E1C0378, type metadata accessor for CustomModelContainerState.ResolvedModelContainer);
  v37 = v14;
  v19 = sub_23BC75248();
  v20 = *(v19 + 16);
  LOBYTE(KeyPath) = *(v19 + 24);
  sub_23BC68778(v20, KeyPath);

  if (KeyPath)
  {
    sub_23BC68784(v20, 1);
    if (qword_27E1BFEE8 != -1)
    {
      swift_once();
    }

    v21 = qword_27E1C1768;
  }

  else
  {
    v21 = sub_23BC755C8();
    sub_23BC68784(v20, 0);
  }

  v22 = v34;
  sub_23BC68B08(v9, v34, &qword_27E1C0360, &qword_23BC77118);
  v23 = (v22 + *(v35 + 36));
  *v23 = v31;
  v23[1] = v21;
  v24 = sub_23BC75248();
  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  sub_23BC68778(v25, v26);

  if (v26 == 1)
  {
    sub_23BC68784(v25, 1);
    v25 = 0;
  }

  v39 = v25;
  v41 = *(&v40 + 7);
  v42 = HIBYTE(v40);
  v27 = swift_allocObject();
  v28 = *(v3 + 16);
  v27[1] = *v3;
  v27[2] = v28;
  v27[3] = *(v3 + 32);
  *(v27 + 57) = *(v3 + 41);
  sub_23BC687C0(v33);
  sub_23BC687D0();
  sub_23BC687D8(&v41, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0388, &unk_23BC77160);
  sub_23BC68848();
  sub_23BC68A0C();
  sub_23BC75418();

  return sub_23BC69210(v22, &qword_27E1C0368, &qword_23BC77120);
}

uint64_t sub_23BC67760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_23BC67360(a1, a2);
}

uint64_t sub_23BC677A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C03C8, &qword_23BC77180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C03D0, &qword_23BC77188);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v40 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C03D8, &qword_23BC77190);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v39 - v12;
  v13 = *(v2 + 1);
  v14 = *(v3 + 8);
  v42 = *(v3 + 16);
  v43 = v14;
  v16 = *(v3 + 24);
  v15 = *(v3 + 32);
  v17 = *(v3 + 40);
  v55 = *(v3 + 41);
  KeyPath = swift_getKeyPath();
  LOBYTE(v50) = v13 & 1;
  v51 = KeyPath;
  LOBYTE(v52) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C03E0, &qword_23BC77198);
  v20 = sub_23BC69354(&qword_27E1C03E8, &qword_27E1C03E0, &qword_23BC77198);
  v41 = v7;
  MEMORY[0x23EEB7510](&v50, v19, &type metadata for SynchronizeSceneUndoManager, v20);

  v39 = swift_getKeyPath();
  type metadata accessor for CustomModelContainerState.ResolvedModelContainer();
  sub_23BC68AC0(&qword_27E1C0378, type metadata accessor for CustomModelContainerState.ResolvedModelContainer);
  LODWORD(v48) = v17;
  v21 = sub_23BC75248();
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  sub_23BC68778(v22, v23);

  if (v23)
  {
    sub_23BC68784(v22, 1);
    if (qword_27E1BFEE8 != -1)
    {
      swift_once();
    }

    v24 = qword_27E1C1768;
  }

  else
  {
    v24 = sub_23BC755C8();
    sub_23BC68784(v22, 0);
  }

  v25 = v40;
  sub_23BC68B08(v41, v40, &qword_27E1C03C8, &qword_23BC77180);
  v26 = (v25 + *(v49 + 36));
  *v26 = v39;
  v26[1] = v24;
  v27 = sub_23BC75248();
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  sub_23BC68778(v28, v29);

  if (v29 == 1)
  {
    sub_23BC68784(v28, 1);
    v28 = 0;
  }

  v54 = v28;
  v56 = *(&v55 + 7);
  v57 = HIBYTE(v55);
  v30 = swift_allocObject();
  v31 = *(v3 + 16);
  v30[1] = *v3;
  v30[2] = v31;
  v30[3] = *(v3 + 32);
  *(v30 + 57) = *(v3 + 41);
  sub_23BC687C0(v43);
  sub_23BC687D0();
  sub_23BC687D8(&v56, &v50);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0388, &unk_23BC77160);
  v33 = sub_23BC68BC8();
  v34 = sub_23BC68A0C();
  v35 = v44;
  v36 = v49;
  sub_23BC75448();

  sub_23BC69210(v25, &qword_27E1C03D0, &qword_23BC77188);
  v50 = v36;
  v51 = v32;
  v52 = v33;
  v53 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v46;
  sub_23BC75268();
  return (*(v45 + 8))(v35, v37);
}

void sub_23BC67CA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(a1 + 40);
    v4 = *(a1 + 24);
    v3 = *(a1 + 32);
    v5 = *(a1 + 16);
    type metadata accessor for CustomModelContainerState.ResolvedModelContainer();
    sub_23BC68AC0(&qword_27E1C0378, type metadata accessor for CustomModelContainerState.ResolvedModelContainer);
    v6 = sub_23BC75248();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    sub_23BC68778(v7, v8);

    v1(v7, v8);

    sub_23BC68784(v7, v8);
  }
}

uint64_t sub_23BC67D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_23BC677A4(a1, a2);
}

uint64_t sub_23BC67DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0438, &qword_23BC77378);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - v4;
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v0[16];
  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  j__swift_retain();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0440, &qword_23BC77380);
  v11 = sub_23BC69354(&qword_27E1C0448, &qword_27E1C0440, &qword_23BC77380);
  sub_23BC75438();

  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0450, &qword_23BC77388);
  v14[1] = v10;
  v14[2] = v12;
  v14[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_23BC75268();
  return (*(v2 + 8))(v5, v1);
}

void sub_23BC67FE4(id *a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_23BC753A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    if ((a4 & 1) == 0)
    {
      sub_23BC75B28();
      v13 = sub_23BC753E8();
      sub_23BC75178();

      sub_23BC75398();
      swift_getAtKeyPath();
      j__swift_release(a3, 0);
      (*(v9 + 8))(v12, v8);
      a3 = v15[1];
    }

    if (a3)
    {
      v14 = sub_23BC754C8();

      if (v14)
      {

        *a1 = v14;
      }
    }
  }
}

uint64_t sub_23BC6815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[16];
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0428, &qword_23BC77368);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0430, &qword_23BC77370) + 36));
  *v11 = KeyPath;
  v11[1] = sub_23BC691AC;
  v11[2] = v9;

  return j__swift_retain();
}

uint64_t sub_23BC6826C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = sub_23BC755C8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C03B8, &qword_23BC77170);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C03C0, &qword_23BC77178);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_23BC6831C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0408, &qword_23BC771A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - v3;
  v5 = *v0;
  KeyPath = swift_getKeyPath();
  v7 = sub_23BC755C8();
  v12[0] = KeyPath;
  v12[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0410, &qword_23BC771A8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF98, &qword_23BC76798);
  v10 = sub_23BC69354(&qword_2814F9F08, &qword_27E1C0410, &qword_23BC771A8);
  MEMORY[0x23EEB7510](v12, v8, v9, v10);

  sub_23BC68D8C();
  sub_23BC75268();
  return sub_23BC69210(v4, &qword_27E1C0408, &qword_23BC771A0);
}

uint64_t sub_23BC68498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23BC66E40();
}

unint64_t sub_23BC684C8()
{
  result = qword_27E1C0348;
  if (!qword_27E1C0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0348);
  }

  return result;
}

unint64_t sub_23BC6851C()
{
  result = qword_27E1C0350;
  if (!qword_27E1C0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0350);
  }

  return result;
}

unint64_t sub_23BC68570()
{
  result = qword_27E1C0358;
  if (!qword_27E1C0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0358);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx01_a5Data_aB0020CustomModelContainerC8Modifier33_C0145BB3D356D4B01704777C3D5D3ACCLLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  sub_23BC75328();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_23BC68628()
{
  result = qword_2814F9F18;
  if (!qword_2814F9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F9F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOy9SwiftData14ModelContainerCs5Error_pGIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

id sub_23BC68778(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23BC68784(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_23BC68798(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_23BC687C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BC687D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0380, &qword_23BC77158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BC68848()
{
  result = qword_27E1C0390;
  if (!qword_27E1C0390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0368, &qword_23BC77120);
    sub_23BC68900();
    sub_23BC69354(&qword_27E1BFFA0, &qword_27E1BFF98, &qword_23BC76798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0390);
  }

  return result;
}

unint64_t sub_23BC68900()
{
  result = qword_27E1C0398;
  if (!qword_27E1C0398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0360, &qword_23BC77118);
    sub_23BC69354(&qword_27E1C03A0, &qword_27E1C0370, &qword_23BC77150);
    sub_23BC689B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0398);
  }

  return result;
}

unint64_t sub_23BC689B8()
{
  result = qword_27E1C03A8;
  if (!qword_27E1C03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C03A8);
  }

  return result;
}

unint64_t sub_23BC68A0C()
{
  result = qword_27E1C03B0;
  if (!qword_27E1C03B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0388, &unk_23BC77160);
    sub_23BC68AC0(&qword_27E1C00D8, MEMORY[0x277CDD4B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C03B0);
  }

  return result;
}

uint64_t sub_23BC68AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BC68B08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_27Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_23BC68790();
  sub_23BC68798(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

unint64_t sub_23BC68BC8()
{
  result = qword_27E1C03F0;
  if (!qword_27E1C03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C03D0, &qword_23BC77188);
    sub_23BC68C80();
    sub_23BC69354(&qword_2814F9F00, &qword_27E1BFF98, &qword_23BC76798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C03F0);
  }

  return result;
}

unint64_t sub_23BC68C80()
{
  result = qword_27E1C03F8;
  if (!qword_27E1C03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C03C8, &qword_23BC77180);
    sub_23BC69354(&qword_27E1C03E8, &qword_27E1C03E0, &qword_23BC77198);
    sub_23BC68D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C03F8);
  }

  return result;
}

unint64_t sub_23BC68D38()
{
  result = qword_27E1C0400;
  if (!qword_27E1C0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0400);
  }

  return result;
}

unint64_t sub_23BC68D8C()
{
  result = qword_2814F9F10;
  if (!qword_2814F9F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0408, &qword_23BC771A0);
    sub_23BC69354(&qword_2814F9F08, &qword_27E1C0410, &qword_23BC771A8);
    sub_23BC69354(&qword_2814F9F00, &qword_27E1BFF98, &qword_23BC76798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F9F10);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23BC68E94(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
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

uint64_t sub_23BC68EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23BC68F3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23BC68F98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23BC6900C()
{
  result = qword_27E1C0418;
  if (!qword_27E1C0418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C03C0, &qword_23BC77178);
    sub_23BC69354(&qword_27E1C0420, &qword_27E1C03B8, &qword_23BC77170);
    sub_23BC69354(&qword_27E1BFFA0, &qword_27E1BFF98, &qword_23BC76798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0418);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAA01_c9Modifier_I0Vy01_a5Data_aB0020CustomModelContainercJ033_C0145BB3D356D4B01704777C3D5D3ACCLLVGAK22SynchronizeUndoManagerAMLLVGAA022_EnvironmentKeyWritingJ0Vy0aK00M7ContextCSgGG_AU0mN0CSgQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0388, &unk_23BC77160);
  a4();
  sub_23BC68A0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_61Tm()
{
  j__swift_release(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23BC69210(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23BC69270()
{
  result = qword_27E1C0458;
  if (!qword_27E1C0458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0430, &qword_23BC77370);
    sub_23BC69354(&qword_27E1C0460, &qword_27E1C0428, &qword_23BC77368);
    sub_23BC69354(&qword_27E1C0468, &qword_27E1C0470, &qword_23BC77390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0458);
  }

  return result;
}

uint64_t sub_23BC69354(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DocumentGroup<>.init(editing:migrationPlan:editor:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a9;
  v46 = a8;
  v41 = a6;
  v42 = a7;
  v43 = a4;
  v44 = a5;
  v13 = sub_23BC75168();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  sub_23BC75148();
  v20 = sub_23BC75158();
  v47 = *(v14 + 8);
  v47(v19, v13);
  if (v20)
  {
    v48 = v14 + 8;
    v21 = (sub_23BC75808() + 16);
    v22 = *v21;
    if (*v21)
    {
      v39 = a10;
      v38 = *&v21[2 * v22];

      v23 = *(v14 + 16);
      v23(v19, a1, v13);
      v23(v17, a1, v13);
      v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = a1;
      v26 = swift_allocObject();
      (*(v14 + 32))(v26 + v24, v17, v13);
      *(v26 + v25) = v38;
      v27 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v27 = a2;
      v27[1] = a3;
      v51 = &type metadata for ModelDocumentProvider;
      v52 = sub_23BC69ABC();
      v28 = swift_allocObject();
      v49 = v28;
      v29 = v42;
      v28[2] = v41;
      v28[3] = v29;
      v28[4] = sub_23BC69AA4;
      v28[5] = v26;
      type metadata accessor for ModelDocumentBox(0);
      v30 = swift_allocObject();
      v31 = v39;
      v30[2] = v46;
      v30[3] = v31;
      v32 = v44;
      v30[4] = v43;
      v30[5] = v32;
      sub_23BC69B30(&qword_27E1C0480, type metadata accessor for ModelDocumentBox);
      sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
      sub_23BC69B78();
      sub_23BC752C8();
      return (v47)(v40, v13);
    }
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD000000000000015, 0x800000023BC77DA0);
    v34 = sub_23BC75138();
    MEMORY[0x23EEB7AB0](v34);

    MEMORY[0x23EEB7AB0](0xD00000000000001BLL, 0x800000023BC77DC0);
    sub_23BC75148();
    v35 = sub_23BC75138();
    v37 = v36;
    v47(v19, v13);
    MEMORY[0x23EEB7AB0](v35, v37);

    MEMORY[0x23EEB7AB0](0xD0000000000000EELL, 0x800000023BC77DE0);
  }

  result = sub_23BC75C08();
  __break(1u);
  return result;
}

uint64_t sub_23BC698B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v6 = sub_23BC75168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 16);
  v18(v10, a1, v6);
  sub_23BC758F8();
  v19 = sub_23BC75878();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0640, &unk_23BC77920);
  v11 = *(v7 + 72);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v17 = xmmword_23BC76750;
  *(v13 + 16) = xmmword_23BC76750;
  v18((v13 + v12), v10, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  result = (*(v7 + 32))(v14 + v12, v10, v6);
  *a4 = v13;
  a4[1] = v14;
  v16 = v20;
  a4[2] = v19;
  a4[3] = v16;
  a4[4] = v21;
  return result;
}

unint64_t sub_23BC69ABC()
{
  result = qword_27E1C0478;
  if (!qword_27E1C0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0478);
  }

  return result;
}

uint64_t sub_23BC69B30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BC69B78()
{
  result = qword_27E1C0490;
  if (!qword_27E1C0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0490);
  }

  return result;
}

uint64_t DocumentGroup<>.init(viewing:migrationPlan:viewer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a5;
  v39 = a7;
  v37 = a4;
  v40 = a8;
  v12 = sub_23BC75168();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  sub_23BC75148();
  v19 = sub_23BC75158();
  v42 = *(v13 + 8);
  v43 = v13 + 8;
  v42(v18, v12);
  if (v19)
  {
    v41 = a6;
    v20 = (sub_23BC75808() + 16);
    if (*v20)
    {
      v35 = *&v20[2 * *v20];

      v21 = *(v13 + 16);
      v21(v18, a1, v12);
      v21(v16, a1, v12);
      v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = a1;
      v24 = swift_allocObject();
      (*(v13 + 32))(v24 + v22, v16, v12);
      *(v24 + v23) = v35;
      v25 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v25 = a2;
      v25[1] = a3;
      v46 = &type metadata for ModelDocumentProvider;
      v47 = sub_23BC69ABC();
      v26 = swift_allocObject();
      v44 = v26;
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = sub_23BC6A2B8;
      v26[5] = v24;
      type metadata accessor for ModelDocumentBox(0);
      v27 = swift_allocObject();
      v28 = v39;
      v27[2] = v41;
      v27[3] = v28;
      v29 = v38;
      v27[4] = v37;
      v27[5] = v29;
      sub_23BC69B30(&qword_27E1C0480, type metadata accessor for ModelDocumentBox);
      sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
      sub_23BC69B78();
      sub_23BC752D8();
      return (v42)(v36, v12);
    }
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD000000000000015, 0x800000023BC77DA0);
    v31 = sub_23BC75138();
    MEMORY[0x23EEB7AB0](v31);

    MEMORY[0x23EEB7AB0](0xD00000000000001BLL, 0x800000023BC77DC0);
    sub_23BC75148();
    v32 = sub_23BC75138();
    v34 = v33;
    v42(v18, v12);
    MEMORY[0x23EEB7AB0](v32, v34);

    MEMORY[0x23EEB7AB0](0xD0000000000000EELL, 0x800000023BC77DE0);
  }

  result = sub_23BC75C08();
  __break(1u);
  return result;
}

uint64_t sub_23BC6A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v21[1] = a2;
  v7 = sub_23BC75168();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a1, v7);
  sub_23BC758F8();
  v13 = sub_23BC75888();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0640, &unk_23BC77920);
  v14 = *(v8 + 72);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23BC76750;
  v12((v16 + v15), v11, v7);
  result = (*(v8 + 8))(v11, v7);
  v18 = MEMORY[0x277D84F90];
  *a5 = v16;
  a5[1] = v18;
  v20 = v22;
  v19 = v23;
  a5[2] = v13;
  a5[3] = v20;
  a5[4] = v19;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_23BC75168();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23BC6A2D0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_23BC75168() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);

  return a1(v1 + v3, v7, v8, v9, v10);
}

uint64_t DocumentGroup<>.init(editing:contentType:editor:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a9;
  v40 = a8;
  v35 = a6;
  v36 = a7;
  v37 = a4;
  v38 = a5;
  v34 = a2;
  v12 = sub_23BC75168();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  sub_23BC75148();
  v19 = a3;
  LOBYTE(a3) = sub_23BC75158();
  v41 = *(v13 + 8);
  v42 = v13 + 8;
  v41(v18, v12);
  if (a3)
  {
    v20 = *(v13 + 16);
    v20(v18, v19, v12);
    v20(v16, v19, v12);
    v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v22 = swift_allocObject();
    (*(v13 + 32))(v22 + v21, v16, v12);
    v23 = (v22 + ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    v24 = v34;
    *v23 = a1;
    v23[1] = v24;
    v45 = &type metadata for ModelDocumentProvider;
    v46 = sub_23BC69ABC();
    v25 = swift_allocObject();
    v43 = v25;
    v26 = v36;
    v25[2] = v35;
    v25[3] = v26;
    v25[4] = sub_23BC6AA20;
    v25[5] = v22;
    type metadata accessor for ModelDocumentBox(0);
    v27 = swift_allocObject();
    v27[2] = v40;
    v27[3] = a10;
    v28 = v38;
    v27[4] = v37;
    v27[5] = v28;
    sub_23BC69B30(&qword_27E1C0480, type metadata accessor for ModelDocumentBox);
    sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
    sub_23BC69B78();
    sub_23BC752C8();
    return (v41)(v19, v12);
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD000000000000015, 0x800000023BC77DA0);
    v30 = sub_23BC75138();
    MEMORY[0x23EEB7AB0](v30);

    MEMORY[0x23EEB7AB0](0xD00000000000001BLL, 0x800000023BC77DC0);
    sub_23BC75148();
    v31 = sub_23BC75138();
    v33 = v32;
    v41(v18, v12);
    MEMORY[0x23EEB7AB0](v31, v33);

    MEMORY[0x23EEB7AB0](0xD0000000000000EELL, 0x800000023BC77DE0);
    result = sub_23BC75C08();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC6A7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v7 = sub_23BC758B8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23BC75168();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = v10[8];
  MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v10[2];
  v25(v14, a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0340, &qword_23BC76C70);
  v15 = swift_allocObject();
  v26 = xmmword_23BC76750;
  *(v15 + 16) = xmmword_23BC76750;
  *(v15 + 32) = v24;
  *(v15 + 40) = a3;
  sub_23BC758C8();
  v16 = sub_23BC758F8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v24 = sub_23BC75908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0640, &unk_23BC77920);
  v19 = v10[9];
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  v25((v21 + v20), v14, v9);
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  result = (v11[4])(v22 + v20, v14, v9);
  *a4 = v21;
  a4[1] = v22;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = v24;
  return result;
}

uint64_t sub_23BC6AA38()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t DocumentGroup<>.init(editing:contentType:editor:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = a4;
  v37 = a8;
  v38 = a9;
  v39 = a7;
  v33 = a5;
  v34 = a6;
  v35 = a3;
  v11 = sub_23BC75168();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  sub_23BC75148();
  v18 = sub_23BC75158();
  v40 = *(v12 + 8);
  v40(v17, v11);
  if (v18)
  {
    v19 = *(v12 + 16);
    v19(v17, a2, v11);
    v19(v15, a2, v11);
    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = swift_allocObject();
    (*(v12 + 32))(v21 + v20, v15, v11);
    *(v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v43 = &type metadata for ModelDocumentProvider;
    v44 = sub_23BC69ABC();
    v22 = swift_allocObject();
    v41 = v22;
    v23 = v34;
    v22[2] = v33;
    v22[3] = v23;
    v22[4] = sub_23BC6B0B4;
    v22[5] = v21;
    type metadata accessor for ModelDocumentBox(0);
    v24 = swift_allocObject();
    v25 = v37;
    v24[2] = v39;
    v24[3] = v25;
    v26 = v36;
    v24[4] = v35;
    v24[5] = v26;
    sub_23BC69B30(&qword_27E1C0480, type metadata accessor for ModelDocumentBox);
    sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
    sub_23BC69B78();
    sub_23BC752C8();
    return (v40)(a2, v11);
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD000000000000015, 0x800000023BC77DA0);
    v28 = sub_23BC75138();
    MEMORY[0x23EEB7AB0](v28);

    MEMORY[0x23EEB7AB0](0xD00000000000001BLL, 0x800000023BC77DC0);
    sub_23BC75148();
    v29 = sub_23BC75138();
    v31 = v30;
    v40(v17, v11);
    MEMORY[0x23EEB7AB0](v29, v31);

    MEMORY[0x23EEB7AB0](0xD0000000000000EELL, 0x800000023BC77DE0);
    result = sub_23BC75C08();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC6AE80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23BC758B8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23BC75168();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = v7[8];
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7[2];
  v22(v11, a1, v6);

  sub_23BC758C8();
  v12 = sub_23BC758F8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v21 = sub_23BC75908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0640, &unk_23BC77920);
  v15 = v7[9];
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v20 = xmmword_23BC76750;
  *(v17 + 16) = xmmword_23BC76750;
  v22((v17 + v16), v11, v6);
  v18 = swift_allocObject();
  *(v18 + 16) = v20;
  result = (v8[4])(v18 + v16, v11, v6);
  *a2 = v17;
  a2[1] = v18;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v21;
  return result;
}

uint64_t DocumentGroup<>.init(viewing:contentType:viewer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a5;
  v35 = a7;
  v36 = a8;
  v37 = a6;
  v32 = a2;
  v33 = a4;
  v10 = sub_23BC75168();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  sub_23BC75148();
  v17 = sub_23BC75158();
  v38 = *(v11 + 8);
  v38(v16, v10);
  if (v17)
  {
    v18 = *(v11 + 16);
    v18(v16, a3, v10);
    v18(v14, a3, v10);
    v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v20 = swift_allocObject();
    (*(v11 + 32))(v20 + v19, v14, v10);
    v21 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    v22 = v32;
    *v21 = a1;
    v21[1] = v22;
    v41 = &type metadata for ModelDocumentProvider;
    v42 = sub_23BC69ABC();
    v23 = swift_allocObject();
    v39 = v23;
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = sub_23BC6B7B8;
    v23[5] = v20;
    type metadata accessor for ModelDocumentBox(0);
    v24 = swift_allocObject();
    v25 = v35;
    v24[2] = v37;
    v24[3] = v25;
    v26 = v34;
    v24[4] = v33;
    v24[5] = v26;
    sub_23BC69B30(&qword_27E1C0480, type metadata accessor for ModelDocumentBox);
    sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
    sub_23BC69B78();
    sub_23BC752D8();
    return (v38)(a3, v10);
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD000000000000015, 0x800000023BC77DA0);
    v28 = sub_23BC75138();
    MEMORY[0x23EEB7AB0](v28);

    MEMORY[0x23EEB7AB0](0xD00000000000001BLL, 0x800000023BC77DC0);
    sub_23BC75148();
    v29 = sub_23BC75138();
    v31 = v30;
    v38(v16, v10);
    MEMORY[0x23EEB7AB0](v29, v31);

    MEMORY[0x23EEB7AB0](0xD0000000000000EELL, 0x800000023BC77DE0);
    result = sub_23BC75C08();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC6B4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v6 = sub_23BC758B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_23BC75168();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = v9[8];
  MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v9[2];
  v14(v13, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0340, &qword_23BC76C70);
  v15 = swift_allocObject();
  v26 = xmmword_23BC76750;
  *(v15 + 16) = xmmword_23BC76750;
  v16 = v28;
  *(v15 + 32) = v27;
  *(v15 + 40) = v16;
  sub_23BC758C8();
  v17 = sub_23BC758F8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_23BC75908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0640, &unk_23BC77920);
  v21 = v9[9];
  v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  v14((v23 + v22), v13, v8);
  result = (v10[1])(v13, v8);
  v25 = MEMORY[0x277D84F90];
  *a4 = v23;
  a4[1] = v25;
  a4[3] = 0;
  a4[4] = 0;
  a4[2] = v20;
  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_23BC75168();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23BC6B7D0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_23BC75168() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t DocumentGroup<>.init(viewing:contentType:viewer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a4;
  v32 = a6;
  v33 = a7;
  v34 = a5;
  v30 = a3;
  v9 = sub_23BC75168();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  sub_23BC75148();
  v16 = sub_23BC75158();
  v35 = *(v10 + 8);
  v35(v15, v9);
  if (v16)
  {
    v17 = *(v10 + 16);
    v17(v15, a2, v9);
    v17(v13, a2, v9);
    v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v19 = swift_allocObject();
    (*(v10 + 32))(v19 + v18, v13, v9);
    *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v38 = &type metadata for ModelDocumentProvider;
    v39 = sub_23BC69ABC();
    v20 = swift_allocObject();
    v36 = v20;
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = sub_23BC6BF40;
    v20[5] = v19;
    type metadata accessor for ModelDocumentBox(0);
    v21 = swift_allocObject();
    v22 = v32;
    v21[2] = v34;
    v21[3] = v22;
    v23 = v31;
    v21[4] = v30;
    v21[5] = v23;
    sub_23BC69B30(&qword_27E1C0480, type metadata accessor for ModelDocumentBox);
    sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
    sub_23BC69B78();
    sub_23BC752D8();
    return (v35)(a2, v9);
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_23BC75BC8();
    MEMORY[0x23EEB7AB0](0xD000000000000015, 0x800000023BC77DA0);
    v25 = sub_23BC75138();
    MEMORY[0x23EEB7AB0](v25);

    MEMORY[0x23EEB7AB0](0xD00000000000001BLL, 0x800000023BC77DC0);
    sub_23BC75148();
    v26 = sub_23BC75138();
    v28 = v27;
    v35(v15, v9);
    MEMORY[0x23EEB7AB0](v26, v28);

    MEMORY[0x23EEB7AB0](0xD0000000000000EELL, 0x800000023BC77DE0);
    result = sub_23BC75C08();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC6BC9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v3 = sub_23BC758B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23BC75168();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = v6[8];
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v6[2];
  v11(v10, v22, v5);

  sub_23BC758C8();
  v12 = sub_23BC758F8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_23BC75908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0640, &unk_23BC77920);
  v16 = v6[9];
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23BC76750;
  v11((v18 + v17), v10, v5);
  result = (v7[1])(v10, v5);
  v20 = MEMORY[0x277D84F90];
  *a2 = v18;
  a2[1] = v20;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = v15;
  return result;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_23BC75168();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23BC6BF58(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_23BC75168() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t NewDocumentAction.callAsFunction(contentType:prepareDocument:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_23BC753D8();
}

uint64_t sub_23BC6C098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BC74320(a1, v11, &qword_27E1C0630, &qword_23BC77910);
  if (!v12)
  {
    return sub_23BC74388(v11, &qword_27E1C0630, &qword_23BC77910);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0638, &qword_23BC77918);
  result = swift_dynamicCast();
  if (result)
  {

    sub_23BC71624(v8);
    v12 = &type metadata for ModelDocumentProvider;
    v13 = sub_23BC69ABC();
    v7 = swift_allocObject();
    v11[0] = v7;

    v7[2] = a2;
    v7[3] = a3;
    v7[4] = v9;
    v7[5] = v10;
    return sub_23BC743E8(v11, a1, &qword_27E1C0630, &qword_23BC77910);
  }

  return result;
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

uint64_t sub_23BC6C1E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23BC6C230(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23BC6C2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr, uint64_t))
{
  type metadata accessor for ModelDocumentBox(0);
  v8 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument);
  v9 = *v8;
  v10 = v8[1];
  *v8 = a3;
  v8[1] = a4;
  sub_23BC71614(a3);
  v11 = sub_23BC71624(v9);
  a5(&v15, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  v12 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_23BC751F8();
  sub_23BC6D8D8(&v14);
  return sub_23BC72A78(v12);
}

uint64_t sub_23BC6C490@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BC73698();
  result = swift_unknownObjectRelease();
  *a1 = v2;
  return result;
}

uint64_t sub_23BC6C4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05C0, &qword_23BC778B8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05C8, &qword_23BC778C0) + 36));
  *v8 = KeyPath;
  v8[1] = v5;
}

void sub_23BC6C5B0(uint64_t a1)
{
  v4 = sub_23BC750C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23BC6C968(v1);
  if (!v2)
  {
    if (v6)
    {
      sub_23BC6CE30(a1);
    }

    else
    {
      if (qword_27E1BFEF0 != -1)
      {
        swift_once();
      }

      v7 = sub_23BC751A8();
      __swift_project_value_buffer(v7, qword_27E1C17A8);
      v8 = sub_23BC75188();
      v9 = sub_23BC75B28();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_23BC59000, v8, v9, "Non-package URLs are not supported.", v10, 2u);
        MEMORY[0x23EEB8370](v10, -1, -1);
      }

      sub_23BC74024();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_23BC6C968(char a1)
{
  v4 = sub_23BC750C8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v38[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0618, &qword_23BC778F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38[-v14];
  if (sub_23BC75018())
  {
    v16 = sub_23BC74F58();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 56))(v15, 1, 1, v16);
    MEMORY[0x28223BE20](v18);
    *&v38[-16] = v15;
    v19 = v1;
    LOBYTE(v1) = a1;
    sub_23BC71E9C(v19, 4, 0, sub_23BC740B4, &v38[-32]);
    if (!v2)
    {
      if ((*(v17 + 48))(v15, 1, v16))
      {
        LOBYTE(v1) = 0;
      }

      else
      {
        LOBYTE(v1) = sub_23BC74F48();
      }
    }

    sub_23BC74388(v15, &qword_27E1C0618, &qword_23BC778F8);
  }

  else
  {
    if (qword_27E1BFEF0 != -1)
    {
      swift_once();
    }

    v20 = sub_23BC751A8();
    __swift_project_value_buffer(v20, qword_27E1C17A8);
    v21 = v5[2];
    v21(v11, v1, v4);
    v21(v9, v1, v4);
    v22 = sub_23BC75188();
    v23 = sub_23BC75B28();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v24 = 136315394;
      v39 = v23;
      v25 = sub_23BC75098();
      v27 = v26;
      v28 = v5[1];
      v28(v11, v4);
      v29 = sub_23BC72EB4(v25, v27, &v41);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = sub_23BC750A8();
      if (v31)
      {
        v1 = v30;
      }

      else
      {
        v1 = 0x6E776F6E6B6E75;
      }

      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0xE700000000000000;
      }

      v28(v9, v4);
      v33 = sub_23BC72EB4(v1, v32, &v41);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_23BC59000, v22, v39, "Attempted opening %s with %s scheme.\nURLs with non-file scheme are not supported.", v24, 0x16u);
      v34 = v40;
      swift_arrayDestroy();
      MEMORY[0x23EEB8370](v34, -1, -1);
      MEMORY[0x23EEB8370](v24, -1, -1);
    }

    else
    {

      v35 = v5[1];
      LOBYTE(v1) = v35;
      v35(v9, v4);
      v35(v11, v4);
    }

    sub_23BC74024();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  return v1 & 1;
}

void sub_23BC6CE30(uint64_t a1)
{
  v3 = v1;
  v5 = sub_23BC750C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BC6C968(v1);
  if (!v2)
  {
    if (v10)
    {
      sub_23BC75348();
      type metadata accessor for ModelDocumentBox(0);
      v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);

      swift_unknownObjectRelease();
      if (v11)
      {
        (*(v6 + 16))(v9, a1, v5);
        if ((*(v11 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_readOnly) & 1) == 0)
        {
          v12 = *(v11 + 16);

          v13 = sub_23BC754B8();

          if (v13)
          {
            v14 = *(v11 + 16);

            sub_23BC75548();
          }
        }

        v20 = *(v11 + 32);

        sub_23BC75618();

        v21 = *(v11 + 32);

        sub_23BC755B8();

        sub_23BC71634(v3, v9);

        (*(v6 + 8))(v9, v5);
      }

      else
      {
        sub_23BC71634(v1, a1);
      }
    }

    else
    {
      if (qword_27E1BFEF0 != -1)
      {
        swift_once();
      }

      v15 = sub_23BC751A8();
      __swift_project_value_buffer(v15, qword_27E1C17A8);
      v16 = sub_23BC75188();
      v17 = sub_23BC75B28();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23BC59000, v16, v17, "Non-package URLs are not supported.", v18, 2u);
        MEMORY[0x23EEB8370](v18, -1, -1);
      }

      sub_23BC74024();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_23BC6D170(void *a1)
{
  v2 = sub_23BC750C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BC75088();
  v7 = a1;
  sub_23BC6C5B0(v6);
  (*(v3 + 8))(v6, v2);

  return 1;
}

uint64_t sub_23BC6D2BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_23BC750C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = a1;
  v15 = a4;
  sub_23BC75B58();
  swift_unknownObjectRelease();
  if (v15)
  {
    v16 = sub_23BC75928();
  }

  else
  {
    v16 = 0;
  }

  sub_23BC75088();

  sub_23BC739AC(v19, v16, v12);

  (*(v9 + 8))(v12, v8);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return 1;
}

uint64_t sub_23BC6D4B0(uint64_t a1)
{
  v3 = sub_23BC750C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v9 = qword_27E1C0498;
  *&v8[v9] = [objc_opt_self() defaultManager];
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_23BC75358();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_23BC6D60C()
{
  sub_23BC6D650(0);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelPlatformDocument(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BC6D650(void (*a1)(uint64_t))
{
  sub_23BC75348();
  type metadata accessor for ModelDocumentBox(0);
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);

  swift_unknownObjectRelease();
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_readOnly) & 1) == 0)
    {
      v3 = *(v2 + 16);

      v4 = sub_23BC754B8();

      if (v4)
      {
        v5 = *(v2 + 16);

        sub_23BC75548();
      }
    }

    v6 = *(v2 + 32);

    sub_23BC75618();

    v7 = *(v2 + 32);

    sub_23BC755B8();

    sub_23BC75348();
    v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);

    v9 = swift_unknownObjectRelease();
    if (v8)
    {
      sub_23BC70718();
    }

    if (a1)
    {
      a1(v9);
    }
  }

  else
  {
    sub_23BC75348();
    v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);

    result = swift_unknownObjectRelease();
    if (v11)
    {
      sub_23BC70718();
    }

    if (a1)
    {
      return (a1)(result);
    }
  }

  return result;
}

id sub_23BC6D86C(void *a1)
{
  v1 = a1;
  sub_23BC6D650(0);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ModelPlatformDocument(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23BC6D8D8(__int128 *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v11 = v2;
  v12 = *(a1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  if (v9)
  {
    sub_23BC72A78(v9);
  }

  *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_hasLoadedDocument) = v9 != 0;
  result = sub_23BC6E5CC();
  if (v10)
  {
    v4 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager;
    result = swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5)
    {
      v6 = swift_allocObject();
      v7 = v11;
      *(v6 + 16) = v10;
      *(v6 + 32) = v7;
      *(v6 + 48) = v12;
      v8 = v5;
      sub_23BC74320(&v10, &v9, &qword_27E1C0500, "h#");
      type metadata accessor for ModelDocumentBox(0);
      sub_23BC75B08();
    }
  }

  return result;
}

uint64_t sub_23BC6DA4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  v3 = v9;
  v4 = v10;
  v5 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = *(a2 + 16);
  v9 = *a2;
  v10 = v6;
  v11 = *(a2 + 32);

  sub_23BC74320(a2, v8, &qword_27E1C0500, "h#");
  sub_23BC751F8();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_23BC6D8D8(&v9);
  return sub_23BC72A78(v3);
}

uint64_t sub_23BC6DB7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();
}

uint64_t sub_23BC6DBF4(__int128 *a1)
{
  v2 = *(a1 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  v3 = v7;
  v4 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;
  v8 = a1[1];

  sub_23BC751F8();
  v8 = v4;
  sub_23BC6D8D8(&v7);
  return sub_23BC72A78(v3);
}

uint64_t sub_23BC6DD08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  return v1;
}

uint64_t sub_23BC6DD7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();
}

uint64_t sub_23BC6DDF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  return v1;
}

void sub_23BC6DE68(void *a1)
{
  v3 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);
  if (v6)
  {
    v7 = *(v1 + v3);
    v8 = *(v6 + 16);
    v9 = v7;

    sub_23BC754D8();
  }
}

void (*sub_23BC6DF14(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23BC6DF9C;
}

void sub_23BC6DF9C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);
    if (v5)
    {
      v6 = *(v5 + 16);
      v7 = *(v4 + v3[4]);

      sub_23BC754D8();
    }
  }

  free(v3);
}

uint64_t sub_23BC6E038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05A0, &qword_23BC77828);
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05A8, &qword_23BC77830);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v7 = *(*(v37 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05B0, &qword_23BC77838);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05B8, &qword_23BC77840);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__base;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0500, "h#");
  sub_23BC751C8();
  (*(v19 + 32))(v0 + v23, v22, v18);
  v24 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__context;
  *&v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1C0040, qword_23BC76840);
  sub_23BC751C8();
  (*(v14 + 32))(v0 + v24, v17, v13);
  v25 = (v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument);
  *v25 = 0;
  v25[1] = 0;
  *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_hasLoadedDocument) = 0;
  v26 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__fileURL;
  v27 = sub_23BC750C8();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  sub_23BC74320(v12, v10, &qword_27E1C0518, &qword_23BC77498);
  v28 = v38;
  sub_23BC751C8();
  sub_23BC74388(v12, &qword_27E1C0518, &qword_23BC77498);
  (*(v39 + 32))(v0 + v26, v28, v40);
  v29 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__isEditable;
  LOBYTE(v44) = 0;
  v30 = v41;
  sub_23BC751C8();
  (*(v42 + 32))(v0 + v29, v30, v43);
  *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager) = 0;
  v31 = v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName;
  strcpy((v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName), "StoreContent");
  *(v31 + 13) = 0;
  *(v31 + 14) = -5120;
  *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_wasOpened) = 1;
  *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_hasPrepared) = 0;
  *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument) = 0;
  *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  v32 = v44;
  v33 = v45;
  v34 = v46;
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = 0;
  v44 = 0u;
  v45 = 0u;

  sub_23BC751F8();
  v44 = v32;
  v45 = v33;
  v46 = v34;
  sub_23BC6D8D8(&v44);
  sub_23BC72A78(v32);
  return v0;
}

uint64_t *sub_23BC6E5CC()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_23BC750C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);
  if (v14)
  {
    v15 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);
    if (*(v14 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_readOnly) == 1)
    {
      v16 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);
    }

    else
    {
      v17 = *(v14 + 16);
      v18 = *(v3 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);

      v19 = sub_23BC754B8();

      if (v19)
      {
        v20 = *(v14 + 16);

        sub_23BC75548();
        if (v1)
        {

          v2 = 0;
        }

        else
        {
        }
      }
    }

    v21 = *(v14 + 32);

    sub_23BC75618();
    if (v2)
    {

      v2 = 0;
    }

    v22 = *(v14 + 32);

    sub_23BC755B8();

    if (v15)
    {
      sub_23BC70718();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  result = v66;
  if (v66)
  {
    sub_23BC72A78(v66);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23BC751E8();

    result = v66;
    if (v66)
    {
      v24 = *(v67 + 16);
      result = sub_23BC72A78(v66);
      if (!v24)
      {
        return result;
      }

      (*(v5 + 56))(v13, 1, 1, v4);
      v25 = *(v3 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName);
      v26 = *(v3 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName + 8);
      v27 = type metadata accessor for TemporaryDocument(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();

      result = sub_23BC6FDCC(v13, v25, v26);
      if (!result)
      {
        return result;
      }

      v30 = result;
      v56 = v5;
      v57 = v4;
      sub_23BC7057C(0);
      v31 = *(v3 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);
      *(v3 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument) = v30;

      v61 = v30;
      sub_23BC6FB90(v71);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23BC751E8();

      v32 = v66;
      if (v66)
      {
        v33 = v68;
        v59 = v69;
        v60 = v67;
        v58 = v70;
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23BC751E8();

        v34 = v63;
        if (v63)
        {
          v36 = v64;
          v35 = v65;
          sub_23BC72A78(v32);
          sub_23BC72A78(v34);
          v37 = type metadata accessor for Database(0);
          v38 = *(v37 + 48);
          v39 = *(v37 + 52);
          swift_allocObject();
          v40 = sub_23BC70BC0(v71, v33, v36, v35, 0);
          if (v2)
          {
            if (qword_27E1BFEF0 != -1)
            {
              swift_once();
            }

            v41 = sub_23BC751A8();
            __swift_project_value_buffer(v41, qword_27E1C17A8);

            v42 = v2;
            v43 = sub_23BC75188();
            v44 = sub_23BC75B28();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v66 = v71;
              *v45 = 136315394;
              v47 = v62;
              sub_23BC6FB90(v62);
              v48 = sub_23BC75098();
              v50 = v49;
              (*(v56 + 8))(v47, v57);
              v51 = sub_23BC72EB4(v48, v50, &v66);

              *(v45 + 4) = v51;
              *(v45 + 12) = 2112;
              v52 = v2;
              v53 = _swift_stdlib_bridgeErrorToNSError();
              *(v45 + 14) = v53;
              *v46 = v53;
              _os_log_impl(&dword_23BC59000, v43, v44, "Failed to create the database at %s: %@", v45, 0x16u);
              sub_23BC74388(v46, &qword_27E1C05D0, &qword_23BC778C8);
              MEMORY[0x23EEB8370](v46, -1, -1);
              v54 = v71;
              __swift_destroy_boxed_opaque_existential_0(v71);
              MEMORY[0x23EEB8370](v54, -1, -1);
              MEMORY[0x23EEB8370](v45, -1, -1);
            }

            swift_willThrow();
          }

          else
          {
            sub_23BC6EC94(v40);
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_23BC6EC94(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database;
  v5 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);
  if (v5)
  {
    v6 = *(v5 + 16);

    sub_23BC754D8();

    v7 = *(v2 + v4);
  }

  *(v2 + v4) = a1;

  if (a1)
  {
    v9 = *(a1 + 16);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23BC751F8();
    v10 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = *(a1 + 16);
    v13 = v11;

    sub_23BC754D8();
  }

  return result;
}

uint64_t sub_23BC6EDC8()
{
  v1 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_wasOpened;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_hasPrepared;
    if ((*(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_hasPrepared) & 1) == 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);
      if (v4)
      {
        v5 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager;
        swift_beginAccess();
        v6 = *(v0 + v5);

        [v6 disableUndoRegistration];
        v7 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument);
        if (v7)
        {
          v8 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument + 8);
          v9 = *(v4 + 16);
          sub_23BC71614(*(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument));

          v7(v10);
          sub_23BC71624(v7);
        }

        v11 = *(v0 + v5);
        [v11 enableUndoRegistration];

        *(v0 + v3) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_23BC6EF04()
{
  v1 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__base;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05B8, &qword_23BC77840);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__context;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05B0, &qword_23BC77838);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument + 8);
  sub_23BC71624(*(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_prepareDocument));
  v6 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__fileURL;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05A8, &qword_23BC77830);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox__isEditable;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05A0, &qword_23BC77828);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName + 8);

  v11 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);

  v12 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);

  return v0;
}

uint64_t sub_23BC6F0AC()
{
  sub_23BC6EF04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23BC6F10C()
{
  sub_23BC6F2C4(319, &qword_27E1C04F8, &qword_27E1C0500, "h#");
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_23BC6F2C4(319, &qword_27E1C0508, qword_27E1C0040, qword_23BC76840);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_23BC6F2C4(319, &qword_27E1C0510, &qword_27E1C0518, &qword_23BC77498);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_23BC6F318();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23BC6F2C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23BC75208();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23BC6F318()
{
  if (!qword_27E1C0520)
  {
    v0 = sub_23BC75208();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C0520);
    }
  }
}

uint64_t sub_23BC6F368@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModelDocumentBox(0);
  result = sub_23BC751B8();
  *a1 = result;
  return result;
}

uint64_t sub_23BC6F3B0()
{
  v0 = type metadata accessor for ModelDocumentBox(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23BC6E038();
  return v3;
}

uint64_t sub_23BC6F3FC()
{
  v1 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_wasOpened;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23BC6F440(char a1)
{
  v3 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_wasOpened;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_23BC6EDC8();
}

uint64_t (*sub_23BC6F494(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23BC6F4F8;
}

uint64_t sub_23BC6F4F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_23BC6EDC8();
  }

  return result;
}

uint64_t sub_23BC6F52C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();
}

uint64_t sub_23BC6F5A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC74320(a1, v5, &qword_27E1C0518, &qword_23BC77498);

  sub_23BC751F8();
  return sub_23BC74388(a1, &qword_27E1C0518, &qword_23BC77498);
}

uint64_t (*sub_23BC6F694(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23BC751D8();
  return sub_23BC748F8;
}

uint64_t sub_23BC6F738()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  return v1;
}

uint64_t sub_23BC6F7AC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23BC751F8();
}

uint64_t (*sub_23BC6F81C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23BC751D8();
  return sub_23BC6F8C0;
}

void sub_23BC6F8C4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void *sub_23BC6F92C()
{
  v1 = OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_undoManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_23BC6F97C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23BC6DF14(v2);
  return sub_23BC6F9EC;
}

void sub_23BC6F9EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23BC6FA34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  if (v2)
  {

    sub_23BC72A78(v1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC6FAE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  if (v1)
  {

    sub_23BC72A78(v1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC6FB90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument____lazy_storage___project;
  swift_beginAccess();
  sub_23BC74320(v1 + v10, v9, &qword_27E1C0518, &qword_23BC77498);
  v11 = sub_23BC750C8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_23BC74388(v9, &qword_27E1C0518, &qword_23BC77498);
  v13 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_databaseName);
  v14 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_databaseName + 8);

  sub_23BC75078();

  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_23BC743E8(v7, v1 + v10, &qword_27E1C0518, &qword_23BC77498);
  return swift_endAccess();
}

char *sub_23BC6FDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23BC75168();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v15 = sub_23BC750C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v74 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v75 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v70 - v22;
  v24 = *(v16 + 56);
  v72 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument____lazy_storage___project;
  v24(&v3[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument____lazy_storage___project], 1, 1, v15);
  v3[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_removed] = 1;
  v25 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_fileManager;
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v73 = v25;
  *&v3[v25] = v27;
  v28 = &v3[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_databaseName];
  *v28 = v82;
  *(v28 + 1) = a3;
  v71 = v28;
  v81 = v3;
  v82 = a1;
  sub_23BC74320(a1, v14, &qword_27E1C0518, &qword_23BC77498);
  v29 = *(v16 + 48);
  v30 = v29(v14, 1, v15);
  v80 = v26;
  if (v30 == 1)
  {
    v31 = v23;
    v32 = [v26 defaultManager];
    v83[0] = 0;
    v33 = [v32 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:v83];

    v34 = v83[0];
    if (!v33)
    {
      v63 = v83[0];
      v64 = sub_23BC75008();

      swift_willThrow();
      sub_23BC74388(v82, &qword_27E1C0518, &qword_23BC77498);
      if (v29(v14, 1, v15) != 1)
      {
        sub_23BC74388(v14, &qword_27E1C0518, &qword_23BC77498);
      }

      v43 = v81;
      sub_23BC74388(&v81[v72], &qword_27E1C0518, &qword_23BC77498);
      v65 = *(v71 + 1);

      goto LABEL_15;
    }

    sub_23BC75088();
    v35 = v34;

    v36 = v16;
    if (v29(v14, 1, v15) != 1)
    {
      sub_23BC74388(v14, &qword_27E1C0518, &qword_23BC77498);
    }
  }

  else
  {
    (*(v16 + 32))(v23, v14, v15);
    v31 = v23;
    v36 = v16;
  }

  v37 = v31;
  v38 = v79;
  sub_23BC74320(v82, v79, &qword_27E1C0518, &qword_23BC77498);
  if (v29(v38, 1, v15) == 1)
  {
    sub_23BC74388(v38, &qword_27E1C0518, &qword_23BC77498);
    v39 = 0xEB00000000746E65;
    v40 = 0x6D75636F4477654ELL;
  }

  else
  {
    v40 = sub_23BC75048();
    v39 = v41;
    (*(v36 + 8))(v38, v15);
  }

  v42 = v80;
  v43 = v81;
  v44 = &v81[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_documentName];
  *v44 = v40;
  v44[1] = v39;
  v45 = [v42 defaultManager];
  v46 = v37;
  v47 = sub_23BC75058();
  v83[0] = 0;
  v48 = [v45 URLForDirectory:99 inDomain:1 appropriateForURL:v47 create:1 error:v83];

  v49 = v83[0];
  if (!v48)
  {
    v59 = v83[0];
    v60 = sub_23BC75008();

    swift_willThrow();
    sub_23BC74388(v82, &qword_27E1C0518, &qword_23BC77498);
    (*(v36 + 8))(v37, v15);

    sub_23BC74388(&v43[v72], &qword_27E1C0518, &qword_23BC77498);
    v61 = *(v71 + 1);

    v62 = *&v43[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_documentName + 8];

LABEL_15:
    type metadata accessor for TemporaryDocument(0);
    v66 = *(*v43 + 48);
    v67 = *(*v43 + 52);
    swift_deallocPartialClassInstance();
    v43 = 0;
    goto LABEL_16;
  }

  v50 = v75;
  sub_23BC75088();
  v51 = v49;

  v52 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_tempDirectory;
  v53 = *(v36 + 32);
  v80 = v46;
  v81 = v53;
  (v53)(&v43[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_tempDirectory], v50, v15);
  v54 = v74;
  (*(v36 + 16))(v74, &v43[v52], v15);
  v55 = *v44;
  v56 = v44[1];

  v57 = v76;
  sub_23BC75148();
  sub_23BC75068();

  sub_23BC74388(v82, &qword_27E1C0518, &qword_23BC77498);
  (*(v77 + 8))(v57, v78);
  v58 = *(v36 + 8);
  v58(v54, v15);
  v58(v80, v15);
  (v81)(&v43[OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_document], v50, v15);
LABEL_16:
  v68 = *MEMORY[0x277D85DE8];
  return v43;
}

void sub_23BC7057C(void *a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_fileManager);
  v5 = sub_23BC75058();
  if (a1)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_23BC69B30(&qword_27E1BFF50, type metadata accessor for FileAttributeKey);
    a1 = sub_23BC75918();
  }

  v13[0] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:a1 error:v13];

  v7 = v13[0];
  if (v6)
  {
    *(v2 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_removed) = 0;
    v8 = *MEMORY[0x277D85DE8];

    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    v11 = sub_23BC75008();

    swift_willThrow();
    v12 = *MEMORY[0x277D85DE8];
  }
}

void sub_23BC70718()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_removed;
  if (*(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_removed))
  {
    goto LABEL_7;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_fileManager);
  v4 = sub_23BC75058();
  v11[0] = 0;
  LODWORD(v3) = [v3 removeItemAtURL:v4 error:v11];

  v5 = v11[0];
  if (!v3)
  {
    v8 = v11[0];
    v9 = sub_23BC75008();

    swift_willThrow();
LABEL_7:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  *(v2 + v1) = 1;
  v6 = *MEMORY[0x277D85DE8];

  v7 = v5;
}

uint64_t sub_23BC70840()
{
  v1 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_removed;
  if ((*(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_removed) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_fileManager);
    v4 = sub_23BC75058();
    v16[0] = 0;
    LOBYTE(v3) = [v3 removeItemAtURL:v4 error:v16];

    v5 = v16[0];
    if (v3)
    {
      *(v1 + v2) = 1;
      v6 = v5;
    }

    else
    {
      v7 = v16[0];
      v8 = sub_23BC75008();

      swift_willThrow();
    }
  }

  v9 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_tempDirectory;
  v10 = sub_23BC750C8();
  v11 = *(*(v10 - 8) + 8);
  v11(v1 + v9, v10);
  v11(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_document, v10);
  sub_23BC74388(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument____lazy_storage___project, &qword_27E1C0518, &qword_23BC77498);
  v12 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_databaseName + 8);

  v13 = *(v1 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D56517TemporaryDocument_documentName + 8);

  v14 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_23BC709EC()
{
  v0 = sub_23BC70840();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23BC70A68()
{
  v0 = sub_23BC750C8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23BC70B58();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23BC70B58()
{
  if (!qword_27E1C0570)
  {
    sub_23BC750C8();
    v0 = sub_23BC75B48();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C0570);
    }
  }
}

uint64_t sub_23BC70BC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v62 = a4;
  v64 = a5;
  v61 = a3;
  v70 = a1;
  v7 = sub_23BC75798();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BC757B8();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BC750C8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v59 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  type metadata accessor for Database.Error(0);
  sub_23BC69B30(&qword_27E1C05E0, type metadata accessor for Database.Error);
  v20 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v69 = v5;
  *(v5 + 24) = v20;
  if (qword_27E1BFEF0 != -1)
  {
    swift_once();
  }

  v21 = sub_23BC751A8();
  __swift_project_value_buffer(v21, qword_27E1C17A8);
  v58 = v14[2];
  v58(v19, v70, v13);
  v22 = sub_23BC75188();
  v23 = sub_23BC75B18();
  v24 = os_log_type_enabled(v22, v23);
  v65 = v14;
  if (v24)
  {
    v25 = v14;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56 = v13;
    v28 = v27;
    v71 = v27;
    *v26 = 136315394;
    v29 = sub_23BC75098();
    v55 = a2;
    v31 = v30;
    v57 = v25[1];
    v57(v19, v56);
    v32 = sub_23BC72EB4(v29, v31, &v71);

    *(v26 + 4) = v32;
    *(v26 + 12) = 1024;
    v33 = v64;
    *(v26 + 14) = v64 & 1;
    _os_log_impl(&dword_23BC59000, v22, v23, "Creating a document at %s, readOnly: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v34 = v28;
    v13 = v56;
    MEMORY[0x23EEB8370](v34, -1, -1);
    MEMORY[0x23EEB8370](v26, -1, -1);
  }

  else
  {

    v57 = v14[1];
    v57(v19, v13);
    v33 = v64;
  }

  v58(v59, v70, v13);

  sub_23BC75788();
  v35 = v66;
  sub_23BC757D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFF60, &qword_23BC771B0);
  v36 = v67;
  v37 = *(v67 + 72);
  v38 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23BC76750;
  v40 = v68;
  (*(v36 + 16))(v39 + v38, v35, v68);
  v41 = sub_23BC75638();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();

  v44 = v63;
  v45 = sub_23BC75608();
  if (v44)
  {

    v57(v70, v13);
    (*(v36 + 8))(v35, v40);
    v46 = v69;

    type metadata accessor for Database(0);
    v47 = *(*v46 + 48);
    v48 = *(*v46 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v49 = v33;
    v50 = v69;
    *(v69 + 32) = v45;
    *(v50 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_readOnly) = v49 & 1;
    v51 = sub_23BC75588();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();

    *(v50 + 16) = sub_23BC75598();

    sub_23BC75518();

    (*(v36 + 8))(v35, v40);
    (v65[4])(v50 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_url, v70, v13);
  }

  return v69;
}

void sub_23BC711D4()
{
  if (*(v0 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_readOnly) == 1)
  {
    if (qword_27E1BFEF0 != -1)
    {
      swift_once();
    }

    v1 = sub_23BC751A8();
    __swift_project_value_buffer(v1, qword_27E1C17A8);
    oslog = sub_23BC75188();
    v2 = sub_23BC75B28();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23BC59000, oslog, v2, "The application attempts to write to a read-only document: aborting.", v3, 2u);
      MEMORY[0x23EEB8370](v3, -1, -1);
    }
  }
}

uint64_t sub_23BC712E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_url;
  v4 = sub_23BC750C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23BC713BC()
{
  result = sub_23BC750C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftData12ModelContextCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BC714A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23BC714EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23BC71558(uint64_t a1)
{
  result = sub_23BC69B30(&qword_27E1C0488, type metadata accessor for ModelDocumentBox);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BC715B4()
{
  result = qword_27E1C0598;
  if (!qword_27E1C0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0598);
  }

  return result;
}

uint64_t sub_23BC71614(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BC71624(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_23BC71634(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BC750C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v48 - v10;
  sub_23BC75348();
  type metadata accessor for ModelDocumentBox(0);
  v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);

  swift_unknownObjectRelease();
  if (v12)
  {
    sub_23BC70718();
  }

  sub_23BC75348();
  v13 = swift_dynamicCastClassUnconditional();
  v14 = *(v13 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);
  *(v13 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument) = 0;
  swift_unknownObjectRelease();

  (*(v5 + 16))(v11, a2, v4);
  (*(v5 + 56))(v11, 0, 1, v4);
  sub_23BC75348();
  v15 = swift_dynamicCastClassUnconditional();
  v16 = *(v15 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName);
  v17 = *(v15 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName + 8);

  swift_unknownObjectRelease();
  v18 = type metadata accessor for TemporaryDocument(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_23BC6FDCC(v11, v16, v17);
  sub_23BC75348();
  v22 = swift_dynamicCastClassUnconditional();
  v23 = *(v22 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);
  *(v22 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument) = v21;
  swift_unknownObjectRelease();

  sub_23BC75348();
  v24 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_tempDocument);

  v25 = swift_unknownObjectRelease();
  if (!v24)
  {
    sub_23BC74024();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    return;
  }

  MEMORY[0x28223BE20](v25);
  v48[-2] = a1;
  v48[-1] = v24;
  v26 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v52[0] = 0;
  v27 = sub_23BC75058();
  v28 = swift_allocObject();
  v28[2] = sub_23BC74078;
  v28[3] = &v48[-4];
  v28[4] = v52;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_23BC74094;
  *(v29 + 24) = v28;
  v57 = sub_23BC748FC;
  v58 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_23BC72834;
  v56 = &block_descriptor_180;
  v30 = _Block_copy(&aBlock);

  [v26 coordinateReadingItemAtURL:v27 options:0 error:0 byAccessor:v30];

  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = v52[0];
  if (v52[0])
  {
    swift_willThrow();
    v31;

    v32 = v52[0];

    return;
  }

  v34 = v52[0];

  v50 = sub_23BC75348();
  v48[1] = swift_dynamicCastClassUnconditional();
  sub_23BC6FB90(v59);
  sub_23BC75348();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  v35 = aBlock;
  if (!aBlock)
  {
    goto LABEL_16;
  }

  v36 = v55;
  swift_unknownObjectRelease();

  v49 = v36;
  sub_23BC72A78(v35);
  sub_23BC75348();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  v37 = aBlock;
  if (!aBlock)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v48[2] = v55;
  v48[3] = v54;
  v39 = v56;
  v38 = v57;
  swift_unknownObjectRelease();
  sub_23BC75348();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();
  swift_unknownObjectRelease();

  v40 = v52[0];
  if (!v52[0])
  {
LABEL_18:
    __break(1u);
    return;
  }

  v41 = v52[1];
  sub_23BC72A78(v37);
  v42 = *(v41 + 16);
  sub_23BC72A78(v40);
  v43 = type metadata accessor for Database(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = v51;
  v47 = sub_23BC70BC0(v59, v49, v39, v38, v42 == 0);
  if (!v46)
  {
    sub_23BC6EC94(v47);
  }

  swift_unknownObjectRelease();
}

id sub_23BC71D9C(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + qword_27E1C0498);
  v3 = sub_23BC75058();
  v4 = sub_23BC75058();
  v9[0] = 0;
  v5 = [v2 copyItemAtURL:v3 toURL:v4 error:v9];

  if (v5)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_23BC75008();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23BC71E9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v20 = 0;
  v11 = sub_23BC75058();
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23BC748EC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_23BC74900;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BC72834;
  aBlock[3] = &block_descriptor_191;
  v15 = _Block_copy(aBlock);

  [v10 coordinateReadingItemAtURL:v11 options:v12 error:0 byAccessor:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = v20;
    if (v20)
    {
      swift_willThrow();
      v17;
    }

    v18 = v20;
  }
}

uint64_t sub_23BC72080(uint64_t a1, uint64_t a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = sub_23BC75028();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BC750C8();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = *(a2 + qword_27E1C0498);
  v32 = a1;
  v16 = sub_23BC75058();
  v35[0] = 0;
  v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v35];

  if (v17)
  {
    v18 = v35[0];
    sub_23BC75348();
    type metadata accessor for ModelDocumentBox(0);
    v19 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_database);

    result = swift_unknownObjectRelease();
    if (v19)
    {
      sub_23BC75348();
      v21 = swift_dynamicCastClassUnconditional();
      v23 = *(v21 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName);
      v22 = *(v21 + OBJC_IVAR____TtC18_SwiftData_SwiftUI16ModelDocumentBox_storeName + 8);

      swift_unknownObjectRelease();
      v35[0] = v23;
      v35[1] = v22;
      v24 = v31;
      (*(v31 + 104))(v7, *MEMORY[0x277CC91D0], v4);
      sub_23BC73D20();
      sub_23BC750B8();
      (*(v24 + 8))(v7, v4);

      sub_23BC711D4();
      v26 = v33;
      v25 = v34;
      (*(v33 + 16))(v12, v19 + OBJC_IVAR____TtC18_SwiftData_SwiftUIP33_524154066D3CC43FAE4463A0B504D5658Database_url, v34);
      sub_23BC73D74();
      v27 = *(v26 + 8);
      v27(v12, v25);
      v27(v14, v25);
    }
  }

  else
  {
    v28 = v35[0];
    sub_23BC75008();

    result = swift_willThrow();
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23BC7240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v16 = 0;
  v9 = sub_23BC75058();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = &v16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23BC748E8;
  *(v11 + 24) = v10;
  v15[4] = sub_23BC73CE0;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_23BC72834;
  v15[3] = &block_descriptor;
  v12 = _Block_copy(v15);

  [v8 coordinateWritingItemAtURL:v9 options:a2 error:0 byAccessor:v12];

  _Block_release(v12);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v13 = v16;
    if (v16)
    {
      swift_willThrow();
      v13;
    }

    v14 = v16;
  }
}

uint64_t sub_23BC725E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0618, &qword_23BC778F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0620, &qword_23BC77900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BC76750;
  v9 = *MEMORY[0x277CBE890];
  *(inited + 32) = *MEMORY[0x277CBE890];
  v10 = v9;
  sub_23BC740D0(inited);
  swift_setDeallocating();
  sub_23BC742C4(inited + 32);
  sub_23BC75038();

  if (!v2)
  {
    v12 = sub_23BC74F58();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    return sub_23BC743E8(v7, a2, &qword_27E1C0618, &qword_23BC778F8);
  }

  return result;
}

uint64_t sub_23BC7276C()
{
  v1 = *v0;
  sub_23BC75CE8();
  MEMORY[0x23EEB7DE0](v1);
  return sub_23BC75D08();
}

uint64_t sub_23BC727E0()
{
  v1 = *v0;
  sub_23BC75CE8();
  MEMORY[0x23EEB7DE0](v1);
  return sub_23BC75D08();
}

uint64_t sub_23BC72834(uint64_t a1)
{
  v2 = sub_23BC750C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23BC75088();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

double sub_23BC7299C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_23BC72A24(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  *&v8 = *a1;
  *(&v8 + 1) = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_23BC72ACC(v8);
  return sub_23BC6DBF4(&v8);
}

uint64_t sub_23BC72A78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BC72ACC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BC72B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  *a2 = v5;
  return result;
}

uint64_t sub_23BC72B98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23BC751F8();
}

uint64_t sub_23BC72C14(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();
}

uint64_t sub_23BC72C90(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0518, &qword_23BC77498);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_23BC74320(a1, &v13 - v9, &qword_27E1C0518, &qword_23BC77498);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC74320(v10, v8, &qword_27E1C0518, &qword_23BC77498);

  sub_23BC751F8();
  return sub_23BC74388(v10, &qword_27E1C0518, &qword_23BC77498);
}

uint64_t sub_23BC72DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC751E8();

  *a2 = v5;
  return result;
}

uint64_t sub_23BC72E40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23BC751F8();
}

uint64_t sub_23BC72EB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23BC72F80(v11, 0, 0, 1, a1, a2);
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
    sub_23BC64CCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23BC72F80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23BC7308C(a5, a6);
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
    result = sub_23BC75BE8();
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

uint64_t sub_23BC7308C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23BC730D8(a1, a2);
  sub_23BC73208(&unk_284E6D550);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23BC730D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_23BC732F4(v5, 0);
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

  result = sub_23BC75BE8();
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
        v10 = sub_23BC759D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23BC732F4(v10, 0);
        result = sub_23BC75BB8();
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

uint64_t sub_23BC73208(uint64_t result)
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

  result = sub_23BC73368(result, v12, 1, v3);
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

void *sub_23BC732F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05D8, &unk_23BC778D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23BC73368(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05D8, &unk_23BC778D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

unint64_t sub_23BC7345C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23BC75CE8();
  sub_23BC759B8();
  v6 = sub_23BC75D08();

  return sub_23BC73518(a1, a2, v6);
}

unint64_t sub_23BC734D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23BC75B78();

  return sub_23BC735D0(a1, v5);
}

unint64_t sub_23BC73518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23BC75C78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23BC735D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23BC65650(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEB7C70](v9, a1);
      sub_23BC73FD0(v9);
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

uint64_t sub_23BC73698()
{
  type metadata accessor for ModelDocumentBox(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23BC751E8();

    result = v2;
    if (v2)
    {
      return result;
    }

    __break(1u);
  }

  sub_23BC75BC8();

  swift_getObjectType();
  v1 = sub_23BC75D18();
  MEMORY[0x23EEB7AB0](v1);

  result = sub_23BC75C08();
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23BC73838(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23BC73870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0608, &qword_23BC778F0);
    v3 = sub_23BC75C48();
    v4 = a1 + 32;

    while (1)
    {
      sub_23BC74320(v4, v13, &qword_27E1C0600, &qword_23BC778E8);
      result = sub_23BC734D4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23BC656AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_23BC739AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23BC750C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_23BC73870(MEMORY[0x277D84F90]);
  }

  MEMORY[0x28223BE20](v10);
  *(&v26 - 2) = v3;
  sub_23BC7240C(a3, 0, sub_23BC73CC4, (&v26 - 4));
  if (v4)
  {
    if (qword_27E1BFEF0 != -1)
    {
      swift_once();
    }

    v13 = sub_23BC751A8();
    __swift_project_value_buffer(v13, qword_27E1C17A8);
    (*(v8 + 16))(v12, a3, v7);
    v14 = v4;
    v15 = sub_23BC75188();
    v16 = sub_23BC75B28();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v17 = 136315394;
      v18 = sub_23BC75098();
      v20 = v19;
      (*(v8 + 8))(v12, v7);
      v21 = sub_23BC72EB4(v18, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_23BC75C98();
      v24 = sub_23BC72EB4(v22, v23, &v28);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_23BC59000, v15, v16, "Failed to write the document at %s: %s.", v17, 0x16u);
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x23EEB8370](v25, -1, -1);
      MEMORY[0x23EEB8370](v17, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    swift_willThrow();
  }
}

uint64_t sub_23BC73CE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BC73D20()
{
  result = qword_27E1C05E8;
  if (!qword_27E1C05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C05E8);
  }

  return result;
}

id sub_23BC73D74()
{
  v15[15] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBE450]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];

  v2 = sub_23BC75058();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C05F0, &qword_23BC778E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BC76750;
  v4 = *MEMORY[0x277CBE2D8];
  v15[0] = sub_23BC75988();
  v15[1] = v5;
  sub_23BC75B98();
  v6 = sub_23BC73F84();
  v7 = sub_23BC75B38();
  *(inited + 96) = v6;
  *(inited + 72) = v7;
  sub_23BC73870(inited);
  swift_setDeallocating();
  sub_23BC74388(inited + 32, &qword_27E1C0600, &qword_23BC778E8);
  v8 = sub_23BC75918();

  v9 = sub_23BC75058();
  v10 = *MEMORY[0x277CBE2E8];
  v15[0] = 0;
  v11 = [v1 replacePersistentStoreAtURL:v2 destinationOptions:v8 withPersistentStoreFromURL:v9 sourceOptions:0 storeType:v10 error:v15];

  if (v11)
  {
    result = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_23BC75008();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23BC73F84()
{
  result = qword_27E1C05F8;
  if (!qword_27E1C05F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C05F8);
  }

  return result;
}

unint64_t sub_23BC74024()
{
  result = qword_27E1C0610;
  if (!qword_27E1C0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0610);
  }

  return result;
}

uint64_t sub_23BC74094(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_23BC72918(a1, *(v1 + 16));
}

uint64_t sub_23BC740D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C0628, &qword_23BC77908);
    v3 = sub_23BC75BA8();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_23BC75988();
      sub_23BC75CE8();
      v29 = v7;
      sub_23BC759B8();
      v9 = sub_23BC75D08();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_23BC75988();
        v20 = v19;
        if (v18 == sub_23BC75988() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_23BC75C78();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23BC742C4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC74320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23BC74388(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BC743E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for ModelDocumentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelDocumentError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23BC74618()
{
  sub_23BC7468C();
  if (v0 <= 0x3F)
  {
    sub_23BC74718();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23BC7468C()
{
  if (!qword_27E1C0658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0518, &qword_23BC77498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C0338, qword_23BC77950);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1C0658);
    }
  }
}

uint64_t sub_23BC74718()
{
  result = qword_27E1C0660;
  if (!qword_27E1C0660)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27E1C0660);
  }

  return result;
}

unint64_t sub_23BC74748()
{
  result = qword_27E1C0668;
  if (!qword_27E1C0668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C05C8, &qword_23BC778C0);
    sub_23BC7482C(&qword_27E1C0670, &qword_27E1C05C0, &qword_23BC778B8);
    sub_23BC7482C(&qword_27E1BFFA0, &qword_27E1BFF98, &qword_23BC76798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0668);
  }

  return result;
}

uint64_t sub_23BC7482C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23BC74878()
{
  result = qword_27E1C0678;
  if (!qword_27E1C0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0678);
  }

  return result;
}

uint64_t sub_23BC74904()
{
  v0 = sub_23BC751A8();
  __swift_allocate_value_buffer(v0, qword_27E1C17A8);
  __swift_project_value_buffer(v0, qword_27E1C17A8);
  return sub_23BC75198();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_23BC749E4()
{
  v0 = sub_23BC751A8();
  __swift_allocate_value_buffer(v0, qword_27E1C17C0);
  __swift_project_value_buffer(v0, qword_27E1C17C0);
  return sub_23BC75198();
}

uint64_t sub_23BC74A60()
{
  sub_23BC5C530();
  sub_23BC753B8();
  return v1;
}

uint64_t EnvironmentValues.modelContext.getter()
{
  sub_23BC5C530();
  sub_23BC753B8();
  result = v1;
  if (!v1)
  {
    if (qword_27E1BFEE8 != -1)
    {
      swift_once();
    }
  }

  return result;
}

uint64_t sub_23BC74B18@<X0>(uint64_t *a1@<X8>)
{
  sub_23BC5C530();
  sub_23BC753B8();
  result = v3;
  if (!v3)
  {
    if (qword_27E1BFEE8 != -1)
    {
      swift_once();
    }
  }

  *a1 = result;
  return result;
}

uint64_t sub_23BC74BA8(uint64_t *a1)
{
  v2 = *a1;
  sub_23BC5C530();

  return sub_23BC753C8();
}

uint64_t (*EnvironmentValues.modelContext.modify(uint64_t *a1))(void *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_23BC5C530();
  sub_23BC753B8();
  v3 = a1[1];
  if (!v3)
  {
    if (qword_27E1BFEE8 != -1)
    {
      swift_once();
    }
  }

  *a1 = v3;
  return sub_23BC74CEC;
}

uint64_t sub_23BC74CEC(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_23BC753C8();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_23BC753C8();
  }
}

uint64_t sub_23BC74D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BC74DFC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BC74DFC()
{
  result = qword_27E1C0680;
  if (!qword_27E1C0680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1C0040, qword_23BC76840);
    sub_23BC74E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C0680);
  }

  return result;
}

unint64_t sub_23BC74E80()
{
  result = qword_27E1C00E0;
  if (!qword_27E1C00E0)
  {
    sub_23BC75588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C00E0);
  }

  return result;
}