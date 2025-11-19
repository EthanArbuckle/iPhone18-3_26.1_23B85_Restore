uint64_t sub_29D779E08(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v32 = sub_29D9341E8();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v32, v5);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D77B7D0();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D77B92C();
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934198();
  sub_29D934418();
  v36 = a2;
  sub_29D6B8230();
  v36 = sub_29D937268();
  v19 = MEMORY[0x29EDC2D78];
  sub_29D77B878(0, &qword_2A1A22410, MEMORY[0x29EDC2D78]);
  sub_29D77B8DC(&qword_2A1A22420, &qword_2A1A22410, v19);
  sub_29D938468();

  sub_29D77B788(&qword_2A1A22608, sub_29D77B7D0);
  v20 = sub_29D938418();
  (*(v8 + 8))(v12, v7);
  v36 = v20;
  v21 = v31;
  v22 = v32;
  (*(v3 + 16))(v31, v30, v32);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v3 + 32))(v25 + v23, v21, v22);
  *(v25 + v24) = v33;
  sub_29D77B9D8();
  sub_29D6CE0BC();
  sub_29D77B788(&qword_2A1A223F0, sub_29D77B9D8);
  sub_29D938468();

  sub_29D77B788(&qword_2A1A225C8, sub_29D77B92C);
  v26 = v34;
  v27 = sub_29D938418();
  (*(v35 + 8))(v18, v26);
  return v27;
}

uint64_t sub_29D77A24C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29D934178();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9341E8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  (*(v16 + 16))(v15, a2);
  sub_29D7798C4(v10);
  v17 = type metadata accessor for CardioFitnessClassificationStatusGenerator(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_29D77A584(v15, v10, a1);
  a3[3] = v17;
  result = sub_29D77B788(&qword_2A1A233D0, type metadata accessor for CardioFitnessClassificationStatusGenerator);
  a3[4] = result;
  *a3 = v20;
  return result;
}

uint64_t sub_29D77A3DC()
{
  v1 = OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_context;
  v2 = sub_29D9341E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart50CardioFitnessClassificationStatusGeneratorPipeline_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D77A4B0()
{
  result = sub_29D9341E8();
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

void *sub_29D77A584(uint64_t a1, uint64_t a2, int a3)
{
  v33 = a3;
  v29 = a1;
  v30 = a2;
  v6 = v3;
  v31 = *v3;
  v32 = v3;
  v28 = sub_29D9341E8();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v28, v9);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE508();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Heart42CardioFitnessClassificationStatusGenerator_domain;
  v18 = sub_29D934178();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6 + v17, a2, v18);
  v20 = v28;
  (*(v7 + 16))(v10, a1, v28);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = v21 + v8;
  v23 = (v21 + v8) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v21, v10, v20);
  *(v24 + v22) = v33;
  *(v24 + v23 + 8) = v31;
  sub_29D6CE59C();
  sub_29D77B788(&qword_2A1A24AB0, sub_29D6CE59C);
  sub_29D938378();
  sub_29D77B788(&qword_2A1A24A00, sub_29D6CE508);
  v25 = v34;
  v26 = sub_29D938418();
  (*(v19 + 8))(v30, v18);
  (*(v7 + 8))(v29, v20);
  (*(v35 + 8))(v16, v25);
  result = v32;
  v32[2] = v26;
  return result;
}

uint64_t sub_29D77A8D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  sub_29D6D09E0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D77ABBC(a1, a2);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  sub_29D935E88();
  v15 = sub_29D937878();
  v16 = sub_29D93A2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446466;
    v20 = sub_29D93AF08();
    v22 = sub_29D6C2364(v20, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = MEMORY[0x29ED6A340](v13, MEMORY[0x29EDC3A38]);
    v25 = sub_29D6C2364(v23, v24, &v30);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s]: Returning these changes: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v19, -1, -1);
    v26 = v18;
    a3 = v29;
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  v30 = v13;
  sub_29D77BBD8(0, &qword_2A1A249B8, MEMORY[0x29EDC9A40]);
  sub_29D938338();
  sub_29D77B788(&qword_2A1A24A58, sub_29D6D09E0);
  v27 = sub_29D938418();
  result = (*(v8 + 8))(v12, v7);
  *a3 = v27;
  return result;
}

uint64_t sub_29D77ABBC(uint64_t a1, char a2)
{
  v3 = sub_29D933F98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v23[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933108();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_29D9330F8();
  LOBYTE(v23[0]) = a2;
  sub_29D77BB84();
  v12 = sub_29D9330E8();
  v14 = v13;

  sub_29D934188();
  sub_29D693E2C(v23, v23[3]);
  v15 = sub_29D934118();
  v16 = [v15 profileIdentifier];

  sub_29D77B228(v16);
  sub_29D69417C(v23);
  sub_29D9341B8();
  sub_29D6AA230(v12, v14);
  sub_29D933F88();
  sub_29D77BBD8(0, &qword_2A1A21F60, MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  v22 = xmmword_29D93DDB0;
  *(v17 + 16) = xmmword_29D93DDB0;
  sub_29D77BC2C(0, &qword_2A1A21F78, MEMORY[0x29EDC37D8]);
  v18 = *(v4 + 72);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v22;
  (*(v4 + 16))(v20 + v19, v8, v3);
  *(v17 + 32) = v20;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 64;
  sub_29D6AA284(v12, v14);
  (*(v4 + 8))(v8, v3);
  return v17;
}

uint64_t sub_29D77AFE8()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC5Heart42CardioFitnessClassificationStatusGenerator_domain;
  v3 = sub_29D934178();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D77B0B4()
{
  result = sub_29D934178();
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

uint64_t sub_29D77B154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart42CardioFitnessClassificationStatusGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D77B1D0(unsigned __int8 *a1@<X8>)
{
  v2 = *MEMORY[0x29EDC5138];
  v3 = sub_29D9371B8();
  v4 = [v3 areAllRequirementsSatisfied];

  *a1 = v4;
}

unint64_t sub_29D77B228(void *a1)
{
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_29D93AA18();

  v13 = 0xD000000000000022;
  v14 = 0x800000029D960870;
  v8 = [a1 identifier];
  sub_29D933A38();

  v9 = sub_29D933A18();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  MEMORY[0x29ED6A240](v9, v11);

  return v13;
}

uint64_t sub_29D77B37C(uint64_t a1)
{
  v2 = sub_29D9341E8();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9342F8();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D934358();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v47, v47[3]);
  v22 = sub_29D934118();
  sub_29D69417C(v47);
  v46 = a1;
  sub_29D9341D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v41;
    v23 = v42;
    (*(v41 + 32))(v10, v15, v42);
    sub_29D77B788(&qword_2A1A24770, MEMORY[0x29EDC39C0]);
    swift_willThrowTypedImpl();
    (*(v24 + 8))(v10, v23);
    v25 = *MEMORY[0x29EDBA6C0];
    v26 = v22;
    v27 = 0;
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    sub_29D934348();
    (*(v17 + 8))(v21, v16);
    v28 = *MEMORY[0x29EDBA6C0];
    v29 = v22;
    v25 = v28;
    v27 = sub_29D939D28();
  }

  v30 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v25 healthStore:v22 currentCountryCode:v27];

  v32 = v43;
  v31 = v44;
  v34 = v45;
  v33 = v46;
  (*(v44 + 16))(v43, v46, v45);
  v35 = type metadata accessor for CardioFitnessClassificationStatusGeneratorPipeline(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  sub_29D779B38(v32, v30);

  (*(v31 + 8))(v33, v34);
  return v38;
}

uint64_t sub_29D77B788(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D77B7D0()
{
  if (!qword_2A1A22600)
  {
    v0 = MEMORY[0x29EDC2D78];
    sub_29D77B878(255, &qword_2A1A22410, MEMORY[0x29EDC2D78]);
    sub_29D77B8DC(&qword_2A1A22420, &qword_2A1A22410, v0);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22600);
    }
  }
}

void sub_29D77B878(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938238();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D77B8DC(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D77B878(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D77B92C()
{
  if (!qword_2A1A225C0)
  {
    sub_29D77B9D8();
    sub_29D6CE0BC();
    sub_29D77B788(&qword_2A1A223F0, sub_29D77B9D8);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A225C0);
    }
  }
}

void sub_29D77B9D8()
{
  if (!qword_2A1A223E8)
  {
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A223E8);
    }
  }
}

uint64_t sub_29D77BA38@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D77A24C(a1, v2 + v6, a2);
}

uint64_t sub_29D77BAE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_29D77A8D4(v1 + v4, v6, a1);
}

unint64_t sub_29D77BB84()
{
  result = qword_2A1A23BB8;
  if (!qword_2A1A23BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BB8);
  }

  return result;
}

void sub_29D77BBD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC3A38]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D77BC2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93AD48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for CardioFitnessOnboardingFactorsViewController()
{
  result = qword_2A17B42E8;
  if (!qword_2A17B42E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D77BD18()
{
  *(v0 + qword_2A17B42E0 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D77C524();
  v1 = *(sub_29D935398() - 8);
  v15 = *(v1 + 72);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_29D946CA0;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  sub_29D9334A8();

  v6 = [v4 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v7 = [v4 bundleForClass_];
  sub_29D9334A8();

  v8 = [v4 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v9 = [v4 bundleForClass_];
  sub_29D9334A8();

  v10 = [v4 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v11 = [v4 bundleForClass_];
  sub_29D9334A8();

  v12 = [v4 bundleForClass_];
  sub_29D9334A8();

  sub_29D935388();
  v13 = [v4 &selRef:ObjCClassFromMetadata initWithIconImage:0xE000000000000000 titleText:? detailText:? tintColor:? + 3];
  sub_29D9334A8();

  return sub_29D936B68();
}

id sub_29D77C320(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingFactorsViewController();
  return objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

uint64_t sub_29D77C364()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_29D888E9C(v0, result);

    return sub_29D936978();
  }

  return result;
}

void sub_29D77C3C4(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_29D77C57C();
    sub_29D936978();
  }
}

id sub_29D77C480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingFactorsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D77C4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B42E0 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D77C524()
{
  if (!qword_2A17B42F8)
  {
    sub_29D935398();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B42F8);
    }
  }
}

void sub_29D77C57C()
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446466;
    nullsub_1(ObjectType);
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v9);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D960A80, &v9);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: User pressed cancel button", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  sub_29D82A174(1, 0, 0, 0);
}

unint64_t sub_29D77C744()
{
  result = qword_2A1A22880;
  if (!qword_2A1A22880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22880);
  }

  return result;
}

uint64_t sub_29D77C828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D77C870(char a1, char a2)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93F680;
  if (a1)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (qword_2A1A257A0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_2A1A257A0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  *(v4 + 32) = sub_29D9334A8();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_29D9334A8();
  *(v4 + 56) = v6;
  return v4;
}

uint64_t sub_29D77CA78@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v28 - v5;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v28 - v10;
  v12 = sub_29D9346E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2C038;
  v28 = sub_29D9334A8();
  (*(v13 + 104))(v17, *MEMORY[0x29EDC1760], v12);
  v19 = v18;
  sub_29D934788();
  v20 = sub_29D934798();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D93F680;
  *(v21 + 32) = sub_29D9334A8();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_29D9334A8();
  *(v21 + 56) = v23;
  sub_29D934818();
  v24 = sub_29D934358();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = v29;
  sub_29D934988();
  v26 = sub_29D9349A8();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

uint64_t sub_29D77CEB0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v27 - v7;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v27 - v12;
  v14 = sub_29D9346E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2C038;
  v27 = sub_29D9334A8();
  (*(v15 + 104))(v19, *MEMORY[0x29EDC1768], v14);
  v21 = v20;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  if (a1)
  {
    sub_29D9347E8();
  }

  else
  {
    sub_29D9347D8();
  }

  sub_29D77C870(0, a1 & 1);
  sub_29D934818();
  v23 = sub_29D934358();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = v28;
  sub_29D934988();
  v25 = sub_29D9349A8();
  return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
}

uint64_t sub_29D77D268@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v201 = &v190 - v8;
  v9 = sub_29D9346B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v4);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v200 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v190 - v21;
  v23 = sub_29D9346E8();
  v202 = *(v23 - 8);
  v203 = v23;
  v24 = *(v202 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v199 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v190 - v29;
  v31 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v31)
  {
    __break(1u);
    goto LABEL_74;
  }

  a1 = v31;
  v32 = *MEMORY[0x29EDBA618];
  v33 = sub_29D939D68();
  v35 = v34;
  if (v33 == sub_29D939D68() && v35 == v36)
  {
    goto LABEL_4;
  }

  v37 = sub_29D93AD78();

  if (v37)
  {
LABEL_6:

    goto LABEL_7;
  }

  v41 = *MEMORY[0x29EDBA680];
  v42 = sub_29D939D68();
  v44 = v43;
  if (v42 == sub_29D939D68() && v44 == v45)
  {
    goto LABEL_4;
  }

  v46 = sub_29D93AD78();

  if (v46)
  {
    goto LABEL_6;
  }

  v47 = *MEMORY[0x29EDBA5A8];
  v48 = sub_29D939D68();
  v50 = v49;
  if (v48 == sub_29D939D68() && v50 == v51)
  {
LABEL_4:

LABEL_7:
    v38 = sub_29D9349A8();
    v39 = *(*(v38 - 8) + 56);

    return v39(a2, 1, 1, v38);
  }

  v52 = sub_29D93AD78();

  if (v52)
  {
    goto LABEL_6;
  }

  v53 = *MEMORY[0x29EDBA6A0];
  v54 = sub_29D939D68();
  v56 = v55;
  v58 = sub_29D939D68();
  v193 = a2;
  if (v54 == v58 && v56 == v57)
  {

LABEL_21:
    v60 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
    v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v62 = sub_29D9334A8();
    v64 = v63;
    (*(v202 + 104))(v30, *MEMORY[0x29EDC1750], v203);
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_29D93DDB0;
    *(v65 + 32) = v62;
    *(v65 + 40) = v64;
    v197 = v65;
    sub_29D935E88();
    v194 = sub_29D934808();
    v192 = v66;
    v67 = MEMORY[0x29ED64C30](v62, v64);
    v195 = v68;
    *&v196 = v67;

    v191 = sub_29D934808();
    v198 = v69;
    sub_29D77F1BC(v22);
    goto LABEL_33;
  }

  v59 = sub_29D93AD78();

  if (v59)
  {

    goto LABEL_21;
  }

  v70 = *MEMORY[0x29EDBA5D8];
  v71 = sub_29D939D68();
  v73 = v72;
  if (v71 != sub_29D939D68() || v73 != v74)
  {
    v75 = sub_29D93AD78();

    if (v75)
    {
LABEL_27:

      goto LABEL_31;
    }

    v76 = *MEMORY[0x29EDBA5D0];
    v77 = sub_29D939D68();
    v79 = v78;
    if (v77 != sub_29D939D68() || v79 != v80)
    {
      v98 = sub_29D93AD78();

      if (v98)
      {
        goto LABEL_27;
      }

      v99 = *MEMORY[0x29EDBA600];
      v100 = sub_29D939D68();
      v102 = v101;
      if (v100 == sub_29D939D68() && v102 == v103)
      {

        goto LABEL_43;
      }

      v104 = sub_29D93AD78();

      if (v104)
      {

LABEL_43:
        v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        v60 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
        if (qword_2A1A257A0 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_72;
      }

      v105 = *MEMORY[0x29EDBA688];
      v106 = sub_29D939D68();
      v108 = v107;
      if (v106 == sub_29D939D68() && v108 == v109)
      {

LABEL_50:
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        v111 = sub_29D9334A8();
        v113 = v112;
        (*(v202 + 104))(v30, *MEMORY[0x29EDC1750], v203);
        sub_29D6AA3B4(0, &qword_2A1A21F18);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_29D93DDB0;
        *(v114 + 32) = v111;
        *(v114 + 40) = v113;
        v197 = v114;
        sub_29D935E88();
        v194 = sub_29D934808();
        v192 = v115;
        v116 = MEMORY[0x29ED64C30](v111, v113);
        v195 = v117;
        *&v196 = v116;

        v191 = sub_29D934808();
        v198 = v118;
        sub_29D77ECC8(v22);
LABEL_53:
        v119 = sub_29D9336F8();
        (*(*(v119 - 8) + 56))(v22, 0, 1, v119);
LABEL_54:
        v60 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
        goto LABEL_34;
      }

      v110 = sub_29D93AD78();

      if (v110)
      {

        goto LABEL_50;
      }

      v120 = *MEMORY[0x29EDBA640];
      v121 = sub_29D939D68();
      v123 = v122;
      if (v121 == sub_29D939D68() && v123 == v124)
      {

LABEL_60:
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        v126 = sub_29D9334A8();
        v128 = v127;
        (*(v202 + 104))(v30, *MEMORY[0x29EDC1750], v203);
        sub_29D6AA3B4(0, &qword_2A1A21F18);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_29D93DDB0;
        *(v129 + 32) = v126;
        *(v129 + 40) = v128;
        v197 = v129;
        sub_29D935E88();
        v194 = sub_29D934808();
        v192 = v130;
        v131 = MEMORY[0x29ED64C30](v126, v128);
        v195 = v132;
        *&v196 = v131;

        v191 = sub_29D934808();
        v198 = v133;
        sub_29D77F1BC(v22);
        goto LABEL_53;
      }

      v125 = sub_29D93AD78();

      if (v125)
      {

        goto LABEL_60;
      }

      v134 = *MEMORY[0x29EDBA620];
      v135 = sub_29D939D68();
      v137 = v136;
      if (v135 == sub_29D939D68() && v137 == v138)
      {

LABEL_68:
        v140 = sub_29D934848();
        v198 = v141;
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
        v142 = swift_allocObject();
        v196 = xmmword_29D93DDB0;
        *(v142 + 16) = xmmword_29D93DDB0;
        *(v142 + 56) = MEMORY[0x29EDC99B0];
        *(v142 + 64) = sub_29D69AD24();
        v191 = v140;
        v143 = v198;
        *(v142 + 32) = v140;
        *(v142 + 40) = v143;
        sub_29D935E88();
        v144 = sub_29D939D38();
        v146 = v145;

        (*(v202 + 104))(v30, *MEMORY[0x29EDC1758], v203);
        sub_29D6AA3B4(0, &qword_2A1A21F18);
        v147 = swift_allocObject();
        v197 = v147;
        *(v147 + 16) = v196;
        v195 = v146;
        *&v196 = v144;
        *(v147 + 32) = v144;
        *(v147 + 40) = v146;
        sub_29D935E88();
        v194 = sub_29D934828();
        v192 = v148;
        v149 = MEMORY[0x29EDC1720];
LABEL_71:
        (*(v10 + 104))(v14, *v149, v9);
        sub_29D934698();
        v150 = v14;
        v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        (*(v10 + 8))(v150, v9);
        goto LABEL_54;
      }

      v139 = sub_29D93AD78();

      if (v139)
      {

        goto LABEL_68;
      }

LABEL_74:
      v151 = *MEMORY[0x29EDBA6A8];
      v152 = sub_29D939D68();
      v154 = v153;
      if (v152 == sub_29D939D68() && v154 == v155)
      {

LABEL_79:
        v157 = sub_29D934858();
        v198 = v158;
        if (qword_2A1A257A0 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
        v159 = swift_allocObject();
        v196 = xmmword_29D93DDB0;
        *(v159 + 16) = xmmword_29D93DDB0;
        *(v159 + 56) = MEMORY[0x29EDC99B0];
        *(v159 + 64) = sub_29D69AD24();
        v191 = v157;
        v160 = v198;
        *(v159 + 32) = v157;
        *(v159 + 40) = v160;
        sub_29D935E88();
        v161 = sub_29D939D38();
        v163 = v162;

        (*(v202 + 104))(v30, *MEMORY[0x29EDC1758], v203);
        sub_29D6AA3B4(0, &qword_2A1A21F18);
        v164 = swift_allocObject();
        v197 = v164;
        *(v164 + 16) = v196;
        v195 = v163;
        *&v196 = v161;
        *(v164 + 32) = v161;
        *(v164 + 40) = v163;
        sub_29D935E88();
        v194 = sub_29D934828();
        v192 = v165;
        v149 = MEMORY[0x29EDC1728];
        goto LABEL_71;
      }

      v156 = sub_29D93AD78();

      if (v156)
      {

        goto LABEL_79;
      }

      v166 = *MEMORY[0x29EDBA630];
      v167 = sub_29D939D68();
      v169 = v168;
      if (v167 == sub_29D939D68() && v169 == v170)
      {

LABEL_86:
        if (qword_2A17B0D48 != -1)
        {
          swift_once();
        }

        v172 = sub_29D9334A8();
        v174 = v173;
        (*(v202 + 104))(v30, *MEMORY[0x29EDC1750], v203);
        sub_29D6AA3B4(0, &qword_2A1A21F18);
        v175 = swift_allocObject();
        *(v175 + 16) = xmmword_29D93DDB0;
        *(v175 + 32) = v172;
        *(v175 + 40) = v174;
        v197 = v175;
        sub_29D935E88();
        v194 = sub_29D934808();
        v192 = v176;
        v177 = MEMORY[0x29ED64C30](v172, v174);
        v195 = v178;
        *&v196 = v177;

        v191 = sub_29D934808();
        v198 = v179;
        sub_29D77F1BC(v22);
        v180 = sub_29D9336F8();
        (*(*(v180 - 8) + 56))(v22, 0, 1, v180);
        goto LABEL_95;
      }

      v171 = sub_29D93AD78();

      if (v171)
      {
        goto LABEL_86;
      }

      if (sub_29D9347F8())
      {
        if (qword_2A1A257A0 == -1)
        {
          goto LABEL_94;
        }
      }

      else if (qword_2A1A257A0 == -1)
      {
LABEL_94:
        v181 = sub_29D9334A8();
        v183 = v182;
        (*(v202 + 104))(v30, *MEMORY[0x29EDC1750], v203);
        sub_29D6AA3B4(0, &qword_2A1A21F18);
        v184 = swift_allocObject();
        *(v184 + 16) = xmmword_29D93DDB0;
        *(v184 + 32) = v181;
        *(v184 + 40) = v183;
        v197 = v184;
        sub_29D935E88();
        v194 = sub_29D934808();
        v192 = v185;
        v186 = MEMORY[0x29ED64C30](v181, v183);
        v195 = v187;
        *&v196 = v186;

        v191 = sub_29D934808();
        v198 = v188;
        sub_29D77F1BC(v22);
        v189 = sub_29D9336F8();
        (*(*(v189 - 8) + 56))(v22, 0, 1, v189);
LABEL_95:
        v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
        goto LABEL_54;
      }

      swift_once();
      goto LABEL_94;
    }
  }

LABEL_31:
  v60 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  v61 = &OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
  if (qword_2A1A257A0 != -1)
  {
LABEL_72:
    swift_once();
  }

LABEL_32:
  v81 = sub_29D9334A8();
  v83 = v82;
  (*(v202 + 104))(v30, *MEMORY[0x29EDC1750], v203);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_29D93DDB0;
  *(v84 + 32) = v81;
  *(v84 + 40) = v83;
  v197 = v84;
  sub_29D935E88();
  v194 = sub_29D934808();
  v192 = v85;
  v86 = MEMORY[0x29ED64C30](v81, v83);
  v195 = v87;
  *&v196 = v86;

  v191 = sub_29D934808();
  v198 = v88;
  sub_29D77EF5C(v22);
LABEL_33:
  v89 = sub_29D9336F8();
  (*(*(v89 - 8) + 56))(v22, 0, 1, v89);
LABEL_34:
  if (v60[244] != -1)
  {
    swift_once();
  }

  v90 = v61[7];
  v190 = sub_29D9334A8();
  v91 = v202;
  v92 = v203;
  (*(v202 + 16))(v199, v30, v203);
  v93 = v90;
  v94 = v201;
  sub_29D934788();
  v95 = sub_29D934798();
  (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
  sub_29D6D962C(v22, v200);
  v96 = v193;
  sub_29D934978();
  sub_29D6D96C0(v22);
  (*(v91 + 8))(v30, v92);
  v97 = sub_29D9349A8();
  return (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
}

uint64_t sub_29D77E95C()
{
  v0 = *MEMORY[0x29EDC5158];
  v1 = *MEMORY[0x29EDC5158];
  return v0;
}

uint64_t sub_29D77E99C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1880];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D77EA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D77F498();

  return MEMORY[0x2A1C60FD8](a1, a2, a3, v6);
}

uint64_t sub_29D77EA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D77F498();

  return MEMORY[0x2A1C60FC0](a1, a2, v4);
}

unint64_t sub_29D77EABC()
{
  result = qword_2A1A22888;
  if (!qword_2A1A22888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22888);
  }

  return result;
}

uint64_t sub_29D77EB10()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D77EC7C();
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA478]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D77EBC0(uint64_t a1)
{
  v2 = sub_29D77EABC();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D77EC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D77EABC();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

unint64_t sub_29D77EC7C()
{
  result = qword_2A1A24918;
  if (!qword_2A1A24918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24918);
  }

  return result;
}

uint64_t sub_29D77ECC8@<X0>(uint64_t a1@<X8>)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v17 - v5;
  v7 = [objc_opt_self() seedExpiredLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v8 = sub_29D9336F8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_29D6D96C0(v6);
  sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93F680;
  v17[1] = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  sub_29D77F450();
  v12 = sub_29D939DA8();
  v14 = v13;
  v15 = MEMORY[0x29EDC99B0];
  *(v11 + 56) = MEMORY[0x29EDC99B0];
  v16 = sub_29D69AD24();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 64) = v16;
  *(v11 + 72) = 0xD00000000000001DLL;
  *(v11 + 80) = 0x800000029D960EC0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D77EF5C@<X0>(uint64_t a1@<X8>)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v16 - v5;
  sub_29D9336E8();
  v7 = sub_29D9336F8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v6, v7);
  }

  sub_29D6D96C0(v6);
  sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  v16[1] = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  sub_29D77F450();
  v11 = sub_29D939DA8();
  v13 = v12;
  v14 = MEMORY[0x29EDC99B0];
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v15 = sub_29D69AD24();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = 0xD000000000000025;
  *(v10 + 80) = 0x800000029D960E90;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D77F1BC@<X0>(uint64_t a1@<X8>)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = v17 - v5;
  v7 = [objc_opt_self() irregularHeartRhythmFooterLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  v8 = sub_29D9336F8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_29D6D96C0(v6);
  sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93F680;
  v17[1] = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  sub_29D77F450();
  v12 = sub_29D939DA8();
  v14 = v13;
  v15 = MEMORY[0x29EDC99B0];
  *(v11 + 56) = MEMORY[0x29EDC99B0];
  v16 = sub_29D69AD24();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 64) = v16;
  *(v11 + 72) = 0xD00000000000001BLL;
  *(v11 + 80) = 0x800000029D960EE0;
  sub_29D939D88();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

unint64_t sub_29D77F450()
{
  result = qword_2A17B4300;
  if (!qword_2A17B4300)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B4300);
  }

  return result;
}

unint64_t sub_29D77F498()
{
  result = qword_2A1A22890[0];
  if (!qword_2A1A22890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A22890);
  }

  return result;
}

uint64_t sub_29D77F4EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore;
  swift_beginAccess();
  sub_29D783054(a1, v1 + v3);
  swift_endAccess();
  sub_29D708D30(v1 + v3, &v6);
  if (v7)
  {
    sub_29D679D3C(&v6, v8);
    sub_29D780D68(v8);
    sub_29D782FB8(a1, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    return sub_29D69417C(v8);
  }

  else
  {
    v5 = MEMORY[0x29EDC3660];
    sub_29D782FB8(a1, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    return sub_29D782FB8(&v6, &qword_2A17B2B10, &qword_2A17B50D0, v5, sub_29D6B7370);
  }
}

id sub_29D77F640()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v2 = v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
  v3 = sub_29D9354E8();
  v5 = v4;
  if (v3 == sub_29D9354E8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_29D93AD78();

    if ((v8 & 1) == 0)
    {
      sub_29D7801D4();
    }
  }

  result = [v1 tableView];
  if (result)
  {
    v10 = result;
    sub_29D936938();
    sub_29D93A1E8();

    result = [v1 tableView];
    if (result)
    {
      v11 = result;
      sub_29D934B68();
      sub_29D93A1E8();

      v12 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType];
      v13 = *MEMORY[0x29EDC43C8];
      v14 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
      sub_29D783014(&qword_2A17B4388);
      return sub_29D936EF8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D77F838()
{
  v1 = v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
  v2 = sub_29D9354E8();
  v4 = v3;
  if (v2 == sub_29D9354E8() && v4 == v5)
  {
    goto LABEL_12;
  }

  v7 = sub_29D93AD78();

  if (v7)
  {
LABEL_13:
    v14 = *&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType];
    v15 = [*&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_viewControllerFactory] profile];
    sub_29D93A388();
    v16 = type metadata accessor for SummariesAtrialFibrillationListDataProvider();
    v17 = objc_allocWithZone(v16);
    v18 = [v15 healthStore];
    *&v17[OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_store] = v18;
    sub_29D6945AC(v21, &v17[OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_healthExperienceStore]);
    v20.receiver = v17;
    v20.super_class = v16;
    v19 = objc_msgSendSuper2(&v20, sel_initWithDisplayType_profile_, v14, v15);

    sub_29D69417C(v21);
    [v0 setDataProvider_];

    return;
  }

  v8 = sub_29D9354E8();
  v10 = v9;
  if (v8 == sub_29D9354E8() && v10 == v11)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = sub_29D93AD78();

  if (v13)
  {
    goto LABEL_13;
  }
}

uint64_t sub_29D77FA40()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager + 32);
  sub_29D693E2C((v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager), *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager + 24));
  v2 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType);
  sub_29D93A1F8();
  v3 = sub_29D934318();

  if (v3 == 2)
  {
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF40);
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = sub_29D93AF08();
      v11 = sub_29D6C2364(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Unable to fetch pinned status", v7, 0xCu);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_29D77FC44(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2BF40);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Setting favorite: %{BOOL}d", v7, 0x12u);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager + 32);
  sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager), *(v2 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager + 24));
  v13 = *(v2 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType);
  if (a1)
  {
    return sub_29D934328();
  }

  else
  {
    return sub_29D934338();
  }
}

id sub_29D77FDF8()
{
  v1 = v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
  v2 = sub_29D9354E8();
  v4 = v3;
  if (v2 == sub_29D9354E8() && v4 == v5)
  {
    goto LABEL_12;
  }

  v7 = sub_29D93AD78();

  if (v7)
  {
    goto LABEL_13;
  }

  v8 = sub_29D9354E8();
  v10 = v9;
  if (v8 == sub_29D9354E8() && v10 == v11)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = sub_29D93AD78();

  if ((v13 & 1) == 0)
  {
    v17.receiver = v0;
    v17.super_class = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    return objc_msgSendSuper2(&v17, sel_recomputeTotalSampleCount);
  }

LABEL_13:
  v15 = [objc_msgSend(v0 dataProvider)];
  sub_29D936978();
  if (v15 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [objc_msgSend(v0 dataProvider)];
    sub_29D936978();
  }

  return [v0 setTotalSampleCount_];
}

void sub_29D780008()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType];
  v9 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
  v10 = [v1 resolvedHealthToolbox];
  sub_29D9339E8();
  v11 = sub_29D933958();
  (*(v3 + 8))(v7, v2);
  v12 = [v8 wd:v9 addDataViewControllerWithHealthStore:v10 healthToolBox:v11 initialStartDate:?];

  v13 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 presentViewController:v13 animated:1 completion:0];
}

void sub_29D7801D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore;
  swift_beginAccess();
  sub_29D708D30(&v1[v2], v16);
  v3 = v17;
  if (v17)
  {
    v4 = sub_29D693E2C(v16, v17);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x2A1C7C4A8](v4, v4);
    v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v8);
    sub_29D782FB8(v16, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    v9 = sub_29D933EC8();
    (*(v5 + 8))(v8, v3);
    v10 = [*&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore] profileIdentifier];
    v11 = [v1 title];
    if (v11)
    {
      v12 = v11;
      sub_29D939D68();
    }

    v13 = v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
    type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    sub_29D783014(&qword_2A17B4378);
    v14 = sub_29D936C98();

    if (v14)
    {
      swift_beginAccess();
      sub_29D938258();
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    sub_29D782FB8(v16, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
    sub_29D93AB28();
    __break(1u);
  }
}

void sub_29D7804E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v46 = sub_29D937898();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v46, v4);
  v45 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D783564(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v38[3] = v38 - v9;
  sub_29D783564(0, &qword_2A17B2B20, MEMORY[0x29EDC4378]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v39 = v38 - v13;
  v14 = sub_29D939A78();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v40 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v41 = v38 - v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = ObjectType;
  v47 = v1;
  v23 = *&v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
  v24 = *MEMORY[0x29EDBA6F8];
  v25 = type metadata accessor for IRNFeatureRegulatoryInfoTransformProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v38[2] = v23;
  v38[1] = v24;
  v28 = sub_29D939A98();
  v49 = v25;
  v50 = MEMORY[0x29EDC43B8];
  v48 = v28;
  if (qword_2A17B0D78 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9336E8();

  v29 = v39;
  sub_29D939A48();
  v30 = sub_29D939A58();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v31 = v46;
  v32 = sub_29D69C6C0(v46, qword_2A1A2BF40);
  (*(v44 + 16))(v45, v32, v31);
  v33 = v41;
  sub_29D939A68();
  v34 = objc_allocWithZone(type metadata accessor for FeatureRegulatoryAboutViewController());
  v36 = v42;
  v35 = v43;
  (*(v42 + 16))(v40, v33, v43);
  v37 = sub_29D938CF8();
  (*(v36 + 8))(v33, v35);
  [v47 showAdaptively:v37 sender:0 animated:1];
}

void sub_29D780A54()
{
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2BF40);
  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446210;
    v5 = sub_29D93AF08();
    v7 = sub_29D6C2364(v5, v6, &v12);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s] Reenable IRN button action selected", v3, 0xCu);
    sub_29D69417C(v4);
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong navigationController];
    if (v10)
    {
      v11 = v10;
    }

    [v9 launchOnboardingToReenableFeature];
  }
}

uint64_t sub_29D780C20(uint64_t a1)
{
  v3 = sub_29D939A78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D938CF8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

void sub_29D780D68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29D936BE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v44[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
  v12 = sub_29D9354E8();
  v14 = v13;
  if (v12 == sub_29D9354E8() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_29D93AD78();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  v43 = ObjectType;
  v18 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource;
  if (*&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource])
  {
    v19 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource];

    v20 = sub_29D935F58();

    [v20 unregisterObserver_];
  }

  v21 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore];
  sub_29D6945AC(&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager], v44);
  v22 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  v23 = v21;
  sub_29D933EC8();
  v24 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType];
  (*(v6 + 104))(v10, *MEMORY[0x29EDC2A40], v5);
  v25 = sub_29D934BD8();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v24;
  v29 = sub_29D934BC8();
  v30 = *&v2[v18];
  *&v2[v18] = v29;

  v31 = sub_29D7814E4();
  v32 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems];
  *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = v31;

  [v2 reloadFeatureStatusSection];
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v33 = sub_29D937898();
  sub_29D69C6C0(v33, qword_2A1A2BF40);
  v34 = sub_29D937878();
  v35 = sub_29D93A2A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v36 = 136446210;
    v38 = sub_29D93AF08();
    v40 = sub_29D6C2364(v38, v39, v44);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s] Starting observation of feature status feed item changes", v36, 0xCu);
    sub_29D69417C(v37);
    MEMORY[0x29ED6BE30](v37, -1, -1);
    MEMORY[0x29ED6BE30](v36, -1, -1);
  }

  if (*&v2[v18])
  {
    v41 = *&v2[v18];

    v42 = sub_29D935F58();

    [v42 registerObserver_];
  }
}

uint64_t sub_29D78112C()
{
  v2 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = sub_29D93A928();
    if (sub_29D93A928() < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v5 = sub_29D93A928();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
  }

  v6 = v4 != 0;
  if (v5 < v6)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v2 & 0xC000000000000001) == 0 || v4 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_29D69567C(0, &qword_2A17B4380, 0x29EDC7D10);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_29D93AA28();
      v8 = v9;
    }

    while (v6 != v9);
  }

  if (v3)
  {
    v6 = sub_29D93AB68();
    v3 = v10;
    v1 = v11;
    v4 = v12;

    if ((v4 & 1) == 0)
    {
LABEL_16:
      sub_29D84FB20(v6, v3, v1, v4);
      v14 = v13;
LABEL_23:
      sub_29D936978();
      return v14;
    }
  }

  else
  {
    v1 = 0;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  sub_29D93AD98();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    sub_29D936978();
    v15 = MEMORY[0x29EDCA190];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v4 >> 1, v1))
  {
    goto LABEL_31;
  }

  if (v16 != (v4 >> 1) - v1)
  {
LABEL_32:
    swift_unknownObjectRelease_n();
    goto LABEL_16;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v14)
  {
    v14 = MEMORY[0x29EDCA190];
    goto LABEL_23;
  }

  return v14;
}

unint64_t sub_29D7813A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v1 < 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems);
  }

  if (sub_29D93A928() < 2)
  {
    return 0;
  }

  result = sub_29D93A928();
  if (result)
  {
LABEL_8:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v1 + 8 * v4 + 32);
LABEL_13:
        v6 = [v5 contentView];

        return v6;
      }

      __break(1u);
      return result;
    }

    sub_29D935E88();
    v5 = MEMORY[0x29ED6AE30](v4, v1);

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_29D7814E4()
{
  v1 = v0;
  swift_getObjectType();
  sub_29D75DD24();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource])
  {
    return MEMORY[0x29EDCA190];
  }

  v9 = *&v0[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource];

  sub_29D935F78();
  v10 = sub_29D937B98();
  (*(v4 + 8))(v8, v3);
  v11 = v10[2];

  v12 = MEMORY[0x29EDCA190];
  if (v11)
  {
    v13 = 0;
    v14 = v10 + 5;
    while (v13 < v10[2])
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      sub_29D935E88();
      sub_29D935F68();

      if (v33)
      {
        sub_29D679D3C(&v32, v34);
        sub_29D679D3C(v34, &v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_29D68FDD8(0, v12[2] + 1, 1, v12);
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v12 = sub_29D68FDD8((v17 > 1), v18 + 1, 1, v12);
        }

        v12[2] = v18 + 1;
        sub_29D679D3C(&v32, &v12[5 * v18 + 4]);
      }

      else
      {
        sub_29D782FB8(&v32, &qword_2A17B2C58, &qword_2A17B1140, MEMORY[0x29EDC18F8], sub_29D6B7370);
      }

      ++v13;
      v14 += 2;
      if (v11 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_13:

  *&v32 = MEMORY[0x29EDCA190];
  v19 = v12[2];
  if (v19)
  {
    v20 = 0;
    v10 = 0;
    v21 = v12 + 4;
    v28 = v19 - 1;
    v29 = v12 + 4;
    v30 = MEMORY[0x29EDCA190];
LABEL_15:
    v22 = &v21[5 * v20];
    v23 = v20;
    while (v23 < v12[2])
    {
      sub_29D6945AC(v22, v34);
      sub_29D781884(v34, v1, &v31);
      v24 = sub_29D69417C(v34);
      if (v31)
      {
        MEMORY[0x29ED6A300](v24);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29D939F78();
        }

        v20 = v23 + 1;
        sub_29D939FA8();
        v30 = v32;
        v21 = v29;
        if (v28 != v23)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }

      ++v23;
      v22 += 40;
      if (v19 == v23)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    __break(1u);

    sub_29D69417C(v34);

    __break(1u);
    return result;
  }

  v30 = MEMORY[0x29EDCA190];
LABEL_26:

  return v30;
}

uint64_t sub_29D781884@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_29D6945AC(a1, v21);
  sub_29D6B7370(0, &qword_2A17B1140);
  sub_29D6B7370(0, &qword_2A17B1080);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_29D782FB8(v19, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910], sub_29D6B7370);
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v16 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v16);

    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D961140);
    MEMORY[0x29ED6A240](2112093, 0xE300000000000000);
    v17 = a1[4];
    sub_29D693E2C(a1, a1[3]);
    v18 = sub_29D9348E8();
    MEMORY[0x29ED6A240](v18);

    MEMORY[0x29ED6A240](0xD0000000000000AELL, 0x800000029D961170);
LABEL_11:
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  sub_29D679D3C(v19, v22);
  sub_29D693E2C(v22, v22[3]);
  sub_29D9348F8();
  v6 = [a2 tableView];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_29D939D28();
  v9 = [v7 dequeueReusableCellWithIdentifier_];

  if (!v9)
  {
    goto LABEL_11;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_11;
  }

  v10 = v9;

  swift_getObjectType();
  sub_29D6945AC(v22, v21);
  sub_29D935828();
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v11 = v10;
    v12 = a2;
    sub_29D935D28();
  }

  v13 = v10;
  sub_29D781C80();
  sub_29D6AA360(&unk_2A243D980);
  v14 = sub_29D939D28();

  [v13 setAccessibilityIdentifier_];

  *a3 = v10;
  return sub_29D69417C(v22);
}

uint64_t sub_29D781C80()
{
  sub_29D782F64(0, &qword_2A1A21F18, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  v1 = *MEMORY[0x29EDC43E0];
  *(v0 + 32) = sub_29D939D68();
  *(v0 + 40) = v2;
  *(v0 + 48) = 5132873;
  *(v0 + 56) = 0xE300000000000000;
  v3 = sub_29D935E88();
  sub_29D88BBC8(v3);
  sub_29D782F64(0, &qword_2A17B3628, MEMORY[0x29EDC9A40]);
  sub_29D738398();
  v4 = sub_29D939CA8();

  return v4;
}

void sub_29D781D8C()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D933D48();
    v5 = [v2 cellForRowAtIndexPath_];

    if (v5)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v4 = v5;
        sub_29D935888();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for FeatureRegulatoryAboutViewController()
{
  result = qword_2A17B4368;
  if (!qword_2A17B4368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D78239C(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone_];
    v9 = v4;
    v8 = MEMORY[0x29EDCA190];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x29ED6A300]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29D939F78();
      }

      sub_29D939FA8();
    }
  }

  else
  {
    v9 = 0;
  }

  sub_29D782FB8(&v9, &qword_2A17B2B00, &qword_2A17B2B08, 0x29EDC7940, sub_29D69567C);
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  v6 = sub_29D939F18();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_29D782524(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return sub_29D69417C(v4);
}

uint64_t sub_29D782598(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D939A78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  (*(v5 + 16))(v9, a2, v4);
  v11 = sub_29D938CE8();
  (*(v5 + 8))(a2, v4);
  return v11;
}

id sub_29D7826A0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for FeatureRegulatoryAboutViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D782738(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D782778(void *a1)
{
  v1 = a1;
  sub_29D78239C(1);
}

void sub_29D7827C8(void *a1)
{
  v1 = a1;
  sub_29D78239C(0);
}

void sub_29D782818(void *a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  sub_29D783564(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v59 - v15;
  v63[3] = a5;
  v63[4] = a6;
  v17 = sub_29D693F78(v63);
  (*(*(a5 - 8) + 32))(v17, a2, a5);
  v18 = &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v20 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v20)
  {
    __break(1u);
    goto LABEL_22;
  }

  v21 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType] = v20;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_favoritesObserver] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource] = 0;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = MEMORY[0x29EDCA190];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_cancellables] = MEMORY[0x29EDCA1A0];
  v22 = [a1 profile];
  v23 = [v22 healthStore];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_providedHealthStore] = v23;
  sub_29D6945AC(v63, &a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_pinnedContentManager]);
  v24 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v24;
  v26 = [v24 displayTypeForObjectType_];

  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] = v26;
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_viewControllerFactory] = a1;
  v28 = a1;
  v29 = [v28 profile];
  v30 = [v29 healthStore];

  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = [v30 profileIdentifier];

  v32 = [v31 type];
  *&a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_profileType] = v32;
  if (a3 != 4)
  {
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = a3;
    v38 = qword_29D947568[a3];
LABEL_10:
    v39 = *&a4[v27];
    v40 = [v28 profile];
    v41 = type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    v62.receiver = a4;
    v62.super_class = v41;
    v42 = objc_msgSendSuper2(&v62, sel_initWithDisplayType_profile_mode_, v39, v40, v38);

    v43 = v42;
    sub_29D77F838();
    if ([*&v43[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_displayType] allowsManualEntry])
    {
      v44 = v43[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode];
      v45 = sub_29D9354E8();
      v47 = v46;
      if (v45 == sub_29D9354E8() && v47 == v48)
      {
      }

      else
      {
        v51 = sub_29D93AD78();

        if ((v51 & 1) == 0)
        {
LABEL_20:

          sub_29D69417C(v63);
          return;
        }
      }

      v52 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v43 action:sel_showAddDataVC];
      v60 = 0;
      v61 = 0xE000000000000000;
      v53 = v52;
      sub_29D93AA18();

      v54 = *MEMORY[0x29EDC43E0];
      v60 = sub_29D939D68();
      v61 = v55;
      MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D95B180);
      v56 = sub_29D939D28();

      [v53 setAccessibilityIdentifier_];

      v57 = qword_2A1A257A0;
      v49 = v53;
      if (v57 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v58 = sub_29D939D28();

      [v49 setAccessibilityValue_];

      v50 = [v43 navigationItem];
      [v50 setRightBarButtonItem_];
    }

    else
    {
      v49 = v28;
      v50 = v43;
    }

    v28 = v50;
    goto LABEL_20;
  }

  v33 = [v28 profile];
  v34 = [v33 healthStore];

  if (v34)
  {
    v35 = [v34 profileIdentifier];

    v36 = sub_29D9350C8();
    (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    v37 = MEMORY[0x29ED658D0](v35, v16);

    sub_29D782E90(v16);
    v38 = 0;
    a4[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_mode] = v37;
    goto LABEL_10;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_29D782E90(uint64_t a1)
{
  sub_29D783564(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D782F08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29D93A7F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D782F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D782FB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29D782F08(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D783014(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AtrialFibrillationDataTypeDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D783054(uint64_t a1, uint64_t a2)
{
  sub_29D782F08(0, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660], sub_29D6B7370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29D7830E4()
{
  v1 = v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_consumedHealthExperienceStore;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v3 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_objectType) = v3;
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_favoritesObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_cancellables) = MEMORY[0x29EDCA1A0];
  sub_29D93AB28();
  __break(1u);
}

void sub_29D7831E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (!*&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource])
  {
    goto LABEL_7;
  }

  v6 = *&v2[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_checklistTileDataSource];

  v7 = sub_29D935F48();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_29D93AD78();

    if ((v11 & 1) == 0)
    {
LABEL_7:
      if (qword_2A1A24670 != -1)
      {
        swift_once();
      }

      v12 = sub_29D937898();
      sub_29D69C6C0(v12, qword_2A1A2BF40);
      sub_29D935E88();
      oslog = sub_29D937878();
      v13 = sub_29D93A288();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136446466;
        v16 = sub_29D93AF08();
        v18 = sub_29D6C2364(v16, v17, &v30);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_29D6C2364(a1, a2, &v30);
        _os_log_impl(&dword_29D677000, oslog, v13, "[%{public}s] Received notification of unknown data source change from %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v15, -1, -1);
        MEMORY[0x29ED6BE30](v14, -1, -1);
      }

      return;
    }
  }

  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v19 = sub_29D937898();
  sub_29D69C6C0(v19, qword_2A1A2BF40);
  v20 = sub_29D937878();
  v21 = sub_29D93A2A8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136446210;
    v24 = sub_29D93AF08();
    v26 = sub_29D6C2364(v24, v25, &v30);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s] Received notification of feature status feed items change", v22, 0xCu);
    sub_29D69417C(v23);
    MEMORY[0x29ED6BE30](v23, -1, -1);
    MEMORY[0x29ED6BE30](v22, -1, -1);
  }

  v27 = sub_29D7814E4();
  v28 = *&v3[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems];
  *&v3[OBJC_IVAR____TtC5Heart46AtrialFibrillationDataTypeDetailViewController_allFeatureStatusCellsFromFeedItems] = v27;

  [v3 reloadFeatureStatusSection];
}

void sub_29D783564(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D7835B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_29D780A54();
}

uint64_t sub_29D7835CC()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D7836C4()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D7837A8()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D78389C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D784018();
  *a2 = result;
  return result;
}

void sub_29D7838CC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006D6F6F52;
  v4 = 0x6570795461746164;
  v5 = 0xE800000000000000;
  v6 = 0x73676E6974746573;
  v7 = 0x800000029D956D70;
  v8 = 0xD000000000000018;
  if (v2 == 3)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v7 = 0x800000029D956D90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000029D956D50;
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

void sub_29D783980(void *a1, char a2, char a3, char a4)
{
  v7 = *(v4 + 16);
  v8 = a4 == 0;
  v9 = type metadata accessor for BloodPressureJournalLoggingMainViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = 0;
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v13 = v7;
  v14 = sub_29D939D28();
  v15 = [v12 initWithCategory:2 domainName:v14 healthStore:v13];

  *(v11 + 24) = v15;
  v16 = type metadata accessor for BloodPressureJournalLoggingModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v13;

  v20 = sub_29D7B28C8(v19, v11, a3);

  type metadata accessor for BloodPressureJournalLoggingViewControllerFactory();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(v20 + 16);
  *(v21 + 24) = v22;
  v32.receiver = v10;
  v32.super_class = v9;

  v23 = v22;
  v24 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  [v24 setModalPresentationStyle_];
  [v24 setModalInPresentation_];
  v25 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A2443828;
  swift_unknownObjectWeakAssign();
  *&v26[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model] = v20;
  *&v26[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory] = v21;
  *&v26[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_healthStore] = v19;
  v26[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController] = 0;
  v26[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack] = v8;
  v31.receiver = v26;
  v31.super_class = v25;
  v27 = v19;

  v28 = objc_msgSendSuper2(&v31, sel_init);
  sub_29D740E10();

  v29 = *&v24[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator];
  *&v24[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = v28;

  [a1 presentViewController:v24 animated:a2 & 1 completion:0];
}

void sub_29D783C64(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = *(v4 + 16);
  v9 = type metadata accessor for BloodPressureJournalLoggingMainViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = 0;
  type metadata accessor for BloodPressureJournalBestPracticesManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v13 = v8;
  v14 = sub_29D939D28();
  v15 = [v12 initWithCategory:2 domainName:v14 healthStore:v13];

  *(v11 + 24) = v15;
  v16 = type metadata accessor for BloodPressureJournalLoggingModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v13;

  v20 = sub_29D7B28C8(v19, v11, a3);

  type metadata accessor for BloodPressureJournalLoggingViewControllerFactory();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(v20 + 16);
  *(v21 + 24) = v22;
  v36.receiver = v10;
  v36.super_class = v9;

  v23 = v22;
  v24 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  [v24 setModalPresentationStyle_];
  [v24 setModalInPresentation_];
  if (a1)
  {
    v25 = a4 == 0;
    v26 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
    ObjectType = swift_getObjectType();
    v28 = swift_unknownObjectRetain();
    v29 = sub_29D741DA0(v28, v20, v21, v19, 1, v25, v26, ObjectType, a2);
  }

  else
  {
    v30 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController + 8] = a2;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A2443828;
    swift_unknownObjectWeakAssign();
    *&v31[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model] = v20;
    *&v31[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory] = v21;
    *&v31[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_healthStore] = v19;
    v31[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController] = 0;
    v31[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack] = a4 == 0;
    v35.receiver = v31;
    v35.super_class = v30;
    v32 = v19;

    v29 = objc_msgSendSuper2(&v35, sel_init);
    sub_29D740E10();
  }

  v33 = *&v24[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator];
  *&v24[OBJC_IVAR____TtC5Heart45BloodPressureJournalLoggingMainViewController_coordinator] = v29;
}

unint64_t sub_29D783FC4()
{
  result = qword_2A17B4390;
  if (!qword_2A17B4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4390);
  }

  return result;
}

uint64_t sub_29D784018()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D784064()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews);
  if (v2)
  {
    sub_29D935E88();
  }

  else
  {
    v15 = OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews;
    v16 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    v3 = OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject;
    v4 = *(v1 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_healthStore);
    v5 = type metadata accessor for AFibBurdenLifeFactorView();
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      v8 = *(v1 + v3);
      v9 = byte_2A243DA68[v6 + 32];
      v10 = objc_allocWithZone(v5);
      sub_29D935E88();
      v11 = sub_29D762510(v9, v8, v4);
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      *&v11[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_delegate + 8] = &off_2A2444BB8;
      swift_unknownObjectWeakAssign();
      sub_29D93AAB8();
      v12 = *(v16 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      v6 = v7;
    }

    while (v7 != 5);
    v2 = v16;
    v13 = *(v1 + v15);
    *(v1 + v15) = v16;
    sub_29D935E88();
  }

  return v2;
}

uint64_t sub_29D784264(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2A1A24660 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF28);
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35[0] = v8;
      v35[1] = ObjectType;
      *v7 = 136446210;
      swift_getMetatypeMetadata();
      v9 = sub_29D939DA8();
      v11 = sub_29D6C2364(v9, v10, v35);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Updating view with new cache object", v7, 0xCu);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v12 = *(v2 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject);
    *(v2 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject) = a1;

    sub_29D935E88();
    v13 = sub_29D784064();
    v2 = v13;
    if (v13 >> 62)
    {
      break;
    }

    ObjectType = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!ObjectType)
    {
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x29ED6AE30](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v15 = *(v2 + 8 * i + 32);
      }

      v16 = v15;
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v18 = OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel;
      v19 = *&v15[OBJC_IVAR____TtC5Heart24AFibBurdenLifeFactorView_viewModel];
      sub_29D72EAE8(a1);
      v20 = sub_29D761F30();
      v21 = *&v16[v18];
      sub_29D72D070();
      v23 = v22;
      [v20 setImage_];

      v24 = sub_29D76200C();
      v25 = *&v16[v18];
      sub_29D72D448();
      v27 = v26;
      v29 = v28;
      v30 = *&v16[v18];
      v31 = sub_29D72D530();
      sub_29D7B9688(v27, v29, v31, v32);

      if (v17 == ObjectType)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  ObjectType = sub_29D93A928();
  if (ObjectType)
  {
    goto LABEL_6;
  }
}

void sub_29D784540()
{
  v180 = MEMORY[0x29EDCA190];
  v0 = 4;
  sub_29D93AAD8();
  v1 = 0;
  v2 = 1;
  v3 = 0x29EDC7000uLL;
  while (1)
  {
    if (v1)
    {
      goto LABEL_213;
    }

    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    sub_29D93AAB8();
    v6 = *(v180 + 16);
    sub_29D93AAE8();
    sub_29D93AAF8();
    sub_29D93AAC8();
    v1 = v2 == 4;
    if (v2 != 4)
    {
      break;
    }

    v2 = 0;
LABEL_3:
    if (!--v0)
    {
      goto LABEL_9;
    }
  }

  if (!__OFADD__(v2++, 1))
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_9:
  v8 = v180;
  v9 = sub_29D784064();
  if (v9 >> 62)
  {
    sub_29D69567C(0, &qword_2A17B2978, 0x29EDC7DA0);
    v10 = sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A17B2978, 0x29EDC7DA0);
    v10 = v9;
  }

  sub_29D88BF24(v11);
  if (v10 >> 62)
  {
    v12 = sub_29D93A928();
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x29ED6AE30](i, v10);
        }

        else
        {
          v14 = *(v10 + 8 * i + 32);
        }

        v15 = v14;
        [v178 addSubview_];
      }

      goto LABEL_21;
    }

    goto LABEL_209;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_21:

  sub_29D6A0C58();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D947690;
  v17 = OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews;
  v18 = *&v178[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews];
  if ((v18 & 0xC000000000000001) != 0)
  {
    v173 = *&v178[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews];
    sub_29D935E88();
    v19 = MEMORY[0x29ED6AE30](0, v18);

LABEL_24:
    v20 = [v19 topAnchor];

    v21 = [v178 topAnchor];
    v2 = &off_29F357000;
    v22 = [v20 constraintEqualToAnchor_];

    *(v16 + 32) = v22;
    v23 = *&v178[v17];
    if ((v23 & 0xC000000000000001) != 0)
    {
      v174 = *&v178[v17];
      sub_29D935E88();
      v24 = MEMORY[0x29ED6AE30](0, v23);
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_164:
        v32 = MEMORY[0x29ED6AE30](0, v180);
LABEL_33:
        v33 = v32;
        v34 = [v32 heightAnchor];

        HKUIOnePixel();
        v35 = [v34 constraintEqualToConstant_];

        *(v16 + 56) = v35;
        if (v3)
        {
          v36 = MEMORY[0x29ED6AE30](0, v180);
        }

        else
        {
          v36 = *(v180 + 32);
        }

        v37 = v36;
        v26 = [v36 topAnchor];

        v27 = *&v178[v17];
        if ((v27 & 0xC000000000000001) == 0)
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_170:
            sub_29D935E88();
            v52 = MEMORY[0x29ED6AE30](1, v26);

LABEL_51:
            v53 = [v52 topAnchor];

            if (v3)
            {
              v54 = MEMORY[0x29ED6AE30](0, v180);
            }

            else
            {
              v54 = *(v180 + 32);
            }

            v55 = v54;
            v56 = [v54 bottomAnchor];

            v57 = [v53 *(v2 + 1024)];
            *(v16 + 88) = v57;
            v29 = *&v178[v17];
            if ((v29 & 0xC000000000000001) == 0)
            {
              if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v58 = *(v29 + 40);
LABEL_57:
              v59 = [v58 leadingAnchor];

              v53 = [v178 leadingAnchor];
              v56 = [v59 *(v2 + 1024)];

              *(v16 + 96) = v56;
              v49 = *&v178[v17];
              if ((v49 & 0xC000000000000001) != 0)
              {
                goto LABEL_174;
              }

              if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
              {
                v60 = *(v49 + 40);
                goto LABEL_60;
              }

              goto LABEL_176;
            }

LABEL_172:
            sub_29D935E88();
            v58 = MEMORY[0x29ED6AE30](1, v29);

            goto LABEL_57;
          }

          v38 = *(v27 + 4);
LABEL_39:
          v39 = [v38 bottomAnchor];

          v40 = [v26 *(v2 + 1024)];
          *(v16 + 64) = v40;
          if (v3)
          {
            v41 = MEMORY[0x29ED6AE30](0, v180);
          }

          else
          {
            v41 = *(v180 + 32);
          }

          v42 = v41;
          v29 = [v41 leadingAnchor];

          v31 = *&v178[v17];
          if ((v31 & 0xC000000000000001) != 0)
          {
            goto LABEL_168;
          }

          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v43 = *(v31 + 4);
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_172;
        }

LABEL_166:
        sub_29D935E88();
        v38 = MEMORY[0x29ED6AE30](0, v27);

        goto LABEL_39;
      }

      v24 = *(v23 + 32);
    }

    v25 = [v24 leadingAnchor];

    v26 = [v178 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v16 + 40) = v27;
    v18 = *&v178[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_162;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v18 + 32);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_166;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v18 + 32);
    goto LABEL_24;
  }

  __break(1u);
LABEL_162:
  sub_29D935E88();
  v28 = MEMORY[0x29ED6AE30](0, v18);

LABEL_30:
  v29 = [v28 trailingAnchor];

  v30 = [v178 trailingAnchor];
  v31 = [v29 *(v2 + 1024)];

  *(v16 + 48) = v31;
  v3 = v180 & 0xC000000000000001;
  if ((v180 & 0xC000000000000001) != 0)
  {
    goto LABEL_164;
  }

  if (*(v180 + 16))
  {
    v32 = *(v180 + 32);
    goto LABEL_33;
  }

  __break(1u);
LABEL_168:
  sub_29D935E88();
  v43 = MEMORY[0x29ED6AE30](0, v31);

LABEL_45:
  v44 = sub_29D76200C();
  v45 = [v44 leadingAnchor];

  v46 = [v29 *(v2 + 1024)];
  *(v16 + 72) = v46;
  if (v3)
  {
    v47 = MEMORY[0x29ED6AE30](0, v180);
  }

  else
  {
    v47 = *(v180 + 32);
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v178 trailingAnchor];
  v51 = [v49 *(v2 + 1024)];

  *(v16 + 80) = v51;
  v26 = *&v178[v17];
  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_170;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v52 = *(v26 + 40);
    goto LABEL_51;
  }

  __break(1u);
LABEL_174:
  sub_29D935E88();
  v60 = MEMORY[0x29ED6AE30](1, v49);

LABEL_60:
  v61 = [v60 trailingAnchor];

  v62 = [v178 trailingAnchor];
  v63 = [v61 *(v2 + 1024)];

  *(v16 + 104) = v63;
  if (v3)
  {
    v64 = MEMORY[0x29ED6AE30](1, v180);
    goto LABEL_64;
  }

  if (*(v180 + 16) < 2uLL)
  {
    goto LABEL_210;
  }

  v64 = *(v180 + 40);
LABEL_64:
  v65 = v64;
  v66 = [v64 heightAnchor];

  HKUIOnePixel();
  v67 = [v66 constraintEqualToConstant_];

  *(v16 + 112) = v67;
  if (v3)
  {
    v68 = MEMORY[0x29ED6AE30](1, v180);
  }

  else
  {
    v68 = *(v180 + 40);
  }

  v69 = v68;
  v53 = [v68 topAnchor];

  v56 = *&v178[v17];
  if ((v56 & 0xC000000000000001) != 0)
  {
LABEL_177:
    sub_29D935E88();
    v70 = MEMORY[0x29ED6AE30](1, v56);

LABEL_70:
    v71 = [v70 bottomAnchor];

    v72 = [v53 *(v2 + 1024)];
    *(v16 + 120) = v72;
    if (v3)
    {
      v73 = MEMORY[0x29ED6AE30](1, v180);
    }

    else
    {
      v73 = *(v180 + 40);
    }

    v74 = v73;
    v75 = [v73 leadingAnchor];

    v76 = *&v178[v17];
    if ((v76 & 0xC000000000000001) != 0)
    {
      v175 = *&v178[v17];
      sub_29D935E88();
      v77 = MEMORY[0x29ED6AE30](1, v76);
    }

    else
    {
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_182:
        sub_29D935E88();
        v92 = MEMORY[0x29ED6AE30](2, v75);

LABEL_88:
        v93 = [v92 leadingAnchor];

        v87 = [v178 leadingAnchor];
        v90 = [v93 *(v2 + 1024)];

        *(v16 + 152) = v90;
        v83 = *&v178[v17];
        if ((v83 & 0xC000000000000001) == 0)
        {
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
          {
            goto LABEL_186;
          }

          v94 = *(v83 + 48);
          goto LABEL_91;
        }

LABEL_184:
        sub_29D935E88();
        v94 = MEMORY[0x29ED6AE30](2, v83);

LABEL_91:
        v95 = [v94 trailingAnchor];

        v96 = [v178 trailingAnchor];
        v97 = [v95 *(v2 + 1024)];

        *(v16 + 160) = v97;
        if (v3)
        {
          v98 = MEMORY[0x29ED6AE30](2, v180);
        }

        else
        {
          if (*(v180 + 16) < 3uLL)
          {
            goto LABEL_211;
          }

          v98 = *(v180 + 48);
        }

        v99 = v98;
        v100 = [v98 heightAnchor];

        HKUIOnePixel();
        v101 = [v100 constraintEqualToConstant_];

        *(v16 + 168) = v101;
        if (v3)
        {
          v102 = MEMORY[0x29ED6AE30](2, v180);
        }

        else
        {
          v102 = *(v180 + 48);
        }

        v103 = v102;
        v87 = [v102 topAnchor];

        v90 = *&v178[v17];
        if ((v90 & 0xC000000000000001) != 0)
        {
          goto LABEL_187;
        }

        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
        {
          v104 = *(v90 + 48);
          goto LABEL_101;
        }

        __break(1u);
        goto LABEL_190;
      }

      v77 = *(v76 + 40);
    }

    v78 = sub_29D76200C();
    v79 = [v78 leadingAnchor];

    v80 = [v75 *(v2 + 1024)];
    *(v16 + 128) = v80;
    if (v3)
    {
      v81 = MEMORY[0x29ED6AE30](1, v180);
    }

    else
    {
      v81 = *(v180 + 40);
    }

    v82 = v81;
    v83 = [v81 trailingAnchor];

    v84 = [v178 trailingAnchor];
    v85 = [v83 *(v2 + 1024)];

    *(v16 + 136) = v85;
    v53 = *&v178[v17];
    if ((v53 & 0xC000000000000001) != 0)
    {
      goto LABEL_180;
    }

    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v86 = *(v53 + 48);
      goto LABEL_82;
    }

    __break(1u);
    goto LABEL_184;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v70 = *(v56 + 40);
    goto LABEL_70;
  }

  __break(1u);
LABEL_180:
  sub_29D935E88();
  v86 = MEMORY[0x29ED6AE30](2, v53);

LABEL_82:
  v87 = [v86 topAnchor];

  if (v3)
  {
    v88 = MEMORY[0x29ED6AE30](1, v180);
  }

  else
  {
    v88 = *(v180 + 40);
  }

  v89 = v88;
  v90 = [v88 bottomAnchor];

  v91 = [v87 *(v2 + 1024)];
  *(v16 + 144) = v91;
  v75 = *&v178[v17];
  if ((v75 & 0xC000000000000001) != 0)
  {
    goto LABEL_182;
  }

  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v92 = *(v75 + 48);
    goto LABEL_88;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  sub_29D935E88();
  v104 = MEMORY[0x29ED6AE30](2, v90);

LABEL_101:
  v105 = [v104 bottomAnchor];

  v106 = [v87 *(v2 + 1024)];
  *(v16 + 176) = v106;
  if (v3)
  {
    v107 = MEMORY[0x29ED6AE30](2, v180);
  }

  else
  {
    v107 = *(v180 + 48);
  }

  v108 = v107;
  v109 = [v107 leadingAnchor];

  v110 = *&v178[v17];
  if ((v110 & 0xC000000000000001) != 0)
  {
    v176 = *&v178[v17];
    sub_29D935E88();
    v111 = MEMORY[0x29ED6AE30](2, v110);

LABEL_107:
    v112 = sub_29D76200C();
    v113 = [v112 leadingAnchor];

    v114 = [v109 *(v2 + 1024)];
    *(v16 + 184) = v114;
    if (v3)
    {
      v115 = MEMORY[0x29ED6AE30](2, v180);
    }

    else
    {
      v115 = *(v180 + 48);
    }

    v116 = v115;
    v117 = [v115 trailingAnchor];

    v118 = [v178 trailingAnchor];
    v119 = [v117 *(v2 + 1024)];

    *(v16 + 192) = v119;
    v87 = *&v178[v17];
    if ((v87 & 0xC000000000000001) == 0)
    {
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        __break(1u);
        goto LABEL_194;
      }

      v120 = *(v87 + 56);
LABEL_113:
      v121 = [v120 topAnchor];

      if (v3)
      {
        v122 = MEMORY[0x29ED6AE30](2, v180);
      }

      else
      {
        v122 = *(v180 + 48);
      }

      v123 = v122;
      v124 = [v122 bottomAnchor];

      v125 = [v121 *(v2 + 1024)];
      *(v16 + 200) = v125;
      v109 = *&v178[v17];
      if ((v109 & 0xC000000000000001) != 0)
      {
        goto LABEL_192;
      }

      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v126 = *(v109 + 56);
        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_196;
    }

LABEL_190:
    sub_29D935E88();
    v120 = MEMORY[0x29ED6AE30](3, v87);

    goto LABEL_113;
  }

  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v111 = *(v110 + 48);
    goto LABEL_107;
  }

  __break(1u);
LABEL_192:
  sub_29D935E88();
  v126 = MEMORY[0x29ED6AE30](3, v109);

LABEL_119:
  v127 = [v126 leadingAnchor];

  v121 = [v178 leadingAnchor];
  v124 = [v127 *(v2 + 1024)];

  *(v16 + 208) = v124;
  v117 = *&v178[v17];
  if ((v117 & 0xC000000000000001) != 0)
  {
LABEL_194:
    sub_29D935E88();
    v128 = MEMORY[0x29ED6AE30](3, v117);

LABEL_122:
    v129 = [v128 trailingAnchor];

    v130 = [v178 trailingAnchor];
    v131 = [v129 *(v2 + 1024)];

    *(v16 + 216) = v131;
    if (v3)
    {
      v132 = MEMORY[0x29ED6AE30](3, v180);
    }

    else
    {
      if (*(v180 + 16) < 4uLL)
      {
        goto LABEL_212;
      }

      v132 = *(v180 + 56);
    }

    v133 = v132;
    v134 = [v132 heightAnchor];

    HKUIOnePixel();
    v135 = [v134 constraintEqualToConstant_];

    *(v16 + 224) = v135;
    if (v3)
    {
      v136 = MEMORY[0x29ED6AE30](3, v180);
    }

    else
    {
      v136 = *(v180 + 56);
    }

    v137 = v136;
    v121 = [v136 topAnchor];

    v124 = *&v178[v17];
    if ((v124 & 0xC000000000000001) != 0)
    {
      goto LABEL_197;
    }

    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v138 = *(v124 + 56);
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_200;
  }

  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v128 = *(v117 + 56);
    goto LABEL_122;
  }

LABEL_196:
  __break(1u);
LABEL_197:
  sub_29D935E88();
  v138 = MEMORY[0x29ED6AE30](3, v124);

LABEL_132:
  v139 = [v138 bottomAnchor];

  v140 = [v121 *(v2 + 1024)];
  *(v16 + 232) = v140;
  if (v3)
  {
    v141 = MEMORY[0x29ED6AE30](3, v180);
  }

  else
  {
    v141 = *(v180 + 56);
  }

  v142 = v141;
  v143 = [v141 leadingAnchor];

  v144 = *&v178[v17];
  if ((v144 & 0xC000000000000001) != 0)
  {
    v177 = *&v178[v17];
    sub_29D935E88();
    v145 = MEMORY[0x29ED6AE30](3, v144);

LABEL_138:
    v146 = sub_29D76200C();
    v147 = [v146 leadingAnchor];

    v148 = [v143 *(v2 + 1024)];
    *(v16 + 240) = v148;
    if (v3)
    {
      v149 = MEMORY[0x29ED6AE30](3, v180);
    }

    else
    {
      v149 = *(v180 + 56);
    }

    v150 = v149;
    v151 = [v149 trailingAnchor];

    v152 = [v178 trailingAnchor];
    v153 = [v151 *(v2 + 1024)];

    *(v16 + 248) = v153;
    v121 = *&v178[v17];
    if ((v121 & 0xC000000000000001) == 0)
    {
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        __break(1u);
        goto LABEL_204;
      }

      v154 = *(v121 + 64);
      goto LABEL_144;
    }

LABEL_200:
    sub_29D935E88();
    v154 = MEMORY[0x29ED6AE30](4, v121);

LABEL_144:
    v155 = [v154 topAnchor];

    if (v3)
    {
      v156 = MEMORY[0x29ED6AE30](3, v180);
    }

    else
    {
      v156 = *(v180 + 56);
    }

    v157 = v156;

    v158 = [v157 bottomAnchor];

    v159 = [v155 *(v2 + 1024)];
    *(v16 + 256) = v159;
    v8 = *&v178[v17];
    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_202;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v160 = *(v8 + 64);
      goto LABEL_150;
    }

    __break(1u);
LABEL_206:
    sub_29D935E88();
    v168 = MEMORY[0x29ED6AE30](4, v155);

    goto LABEL_156;
  }

  if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v145 = *(v144 + 56);
    goto LABEL_138;
  }

  __break(1u);
LABEL_202:
  sub_29D935E88();
  v160 = MEMORY[0x29ED6AE30](4, v8);

LABEL_150:
  v161 = [v160 bottomAnchor];

  v162 = [v178 bottomAnchor];
  v163 = [v161 *(v2 + 1024)];

  *(v16 + 264) = v163;
  v8 = *&v178[v17];
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v164 = *(v8 + 64);
      goto LABEL_153;
    }

    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
    return;
  }

LABEL_204:
  sub_29D935E88();
  v164 = MEMORY[0x29ED6AE30](4, v8);

LABEL_153:
  v165 = [v164 leadingAnchor];

  v166 = [v178 leadingAnchor];
  v167 = [v165 *(v2 + 1024)];

  *(v16 + 272) = v167;
  v155 = *&v178[v17];
  if ((v155 & 0xC000000000000001) != 0)
  {
    goto LABEL_206;
  }

  if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
  {
    goto LABEL_208;
  }

  v168 = *(v155 + 64);
LABEL_156:
  v169 = objc_opt_self();
  v170 = [v168 trailingAnchor];

  v171 = [v178 trailingAnchor];
  v172 = [v170 *(v2 + 1024)];

  *(v16 + 280) = v172;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v179 = sub_29D939F18();

  [v169 activateConstraints_];
}

id sub_29D785E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D785F2C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = sub_29D938808();
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v87 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v86 = *(v6 - 8);
  v85 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29D938ED8();
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v77, v10);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D938BC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29D78D2A8;
  v71 = sub_29D78DE34;
  sub_29D78E588(0, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v69 - v22;
  sub_29D78DE9C();
  v78 = v24;
  v79 = *(v24 - 8);
  v25 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v70 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78E1C0();
  v80 = v28;
  v81 = *(v28 - 8);
  v29 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v74 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29D78E8CC;
  sub_29D78DD1C(0, &qword_2A17B46B0, sub_29D78E8CC);
  v82 = v32;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v75 = &v69 - v35;
  v92 = v1;
  sub_29D78D3A4(0);
  sub_29D78F9B4(&qword_2A17B45D0, sub_29D78D3A4);
  sub_29D939258();
  sub_29D78D2DC(0);
  v37 = &v23[*(v36 + 36)];
  *v37 = xmmword_29D947700;
  *(v37 + 1) = xmmword_29D947700;
  v37[32] = 0;
  sub_29D938BB8();
  sub_29D78D2A8(0);
  v39 = *(v38 + 36);
  (*(v13 + 16))(&v23[v39], v17, v12);
  v40 = *(v13 + 56);
  v40(&v23[v39], 0, 1, v12);
  KeyPath = swift_getKeyPath();
  v42 = v19;
  v43 = &v23[*(v19 + 36)];
  sub_29D78DE34(0);
  v45 = *(v44 + 28);
  (*(v13 + 32))(v43 + v45, v17, v12);
  v40(v43 + v45, 0, 1, v12);
  *v43 = KeyPath;
  v46 = sub_29D9390E8();
  v47 = v73;
  sub_29D938EC8();
  v48 = sub_29D78DF50();
  v49 = v70;
  MEMORY[0x29ED697D0](v46, 0, 0, v47, v42, v48);
  (*(v76 + 8))(v47, v77);
  sub_29D78EBE4(v23, &qword_2A17B44D0, v72, v71, sub_29D78E588);
  v50 = v69;
  v91 = v69;
  sub_29D78E32C();
  v52 = v51;
  v93 = v42;
  v94 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_29D78E3E0();
  v55 = v54;
  v56 = sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0);
  v93 = v55;
  v94 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v74;
  v59 = v78;
  sub_29D9394C8();
  (*(v79 + 8))(v49, v59);
  v93 = v59;
  v94 = v52;
  v95 = OpaqueTypeConformance2;
  v96 = v57;
  swift_getOpaqueTypeConformance2();
  v60 = v75;
  v61 = v80;
  sub_29D939458();
  (*(v81 + 8))(v58, v61);
  v62 = v84;
  sub_29D78F178(v50, v84, type metadata accessor for BloodPressureJournalAddDataView);
  v63 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v64 = swift_allocObject();
  sub_29D78EC4C(v62, v64 + v63);
  v65 = (v60 + *(v82 + 36));
  *v65 = sub_29D78ECB0;
  v65[1] = v64;
  v65[2] = 0;
  v65[3] = 0;
  sub_29D78F178(v50, v62, type metadata accessor for BloodPressureJournalAddDataView);
  v66 = swift_allocObject();
  sub_29D78EC4C(v62, v66 + v63);
  v67 = v87;
  sub_29D9387F8();
  sub_29D78EEF4();
  sub_29D9394F8();

  (*(v89 + 8))(v67, v90);
  return sub_29D78EBE4(v60, &qword_2A17B46B0, v83, MEMORY[0x29EDBC918], sub_29D78DD1C);
}

uint64_t sub_29D786828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  sub_29D78DD1C(0, &qword_2A17B45C8, type metadata accessor for FooterTextView);
  v67 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v64 - v6;
  sub_29D78D814();
  v70 = v8;
  v75 = *(v8 - 8);
  v9 = v75[8];
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v74 = &v64 - v14;
  sub_29D78D648();
  v68 = v15;
  v65 = *(v15 - 8);
  v16 = v65;
  v17 = *(v65 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v73 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v64 - v22;
  sub_29D78D460(0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v72 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v64 - v31;
  sub_29D786E48(&v64 - v31);
  v33 = [objc_opt_self() systemGroupedBackgroundColor];
  v78 = sub_29D939528();
  v34 = sub_29D939778();
  sub_29D78D494();
  *&v32[*(v35 + 36)] = v34;
  v36 = &v32[*(v25 + 44)];
  v66 = v32;
  v36[32] = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v77 = a1;
  sub_29D78D6AC();
  v37 = MEMORY[0x29EDBBE80];
  sub_29D78DB54(255, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
  v39 = v38;
  v40 = sub_29D9339F8();
  v41 = sub_29D78D7D0(&qword_2A17B4550, &qword_2A17B2FC0, v37);
  v42 = sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
  v78 = v39;
  v79 = v40;
  v80 = v41;
  v81 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v23;
  v64 = v23;
  sub_29D939818();
  v76 = a1;
  sub_29D788B60(v7);
  v44 = (a1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 36));
  v45 = *v44;
  v46 = v44[1];
  v47 = &v7[*(type metadata accessor for FooterTextView(0) + 20)];
  *v47 = v45;
  v47[1] = v46;
  *&v7[*(v67 + 36)] = xmmword_29D947710;
  sub_29D695554(v45);
  sub_29D78D8A8(0);
  sub_29D78F9B4(&qword_2A17B46C8, sub_29D78D8A8);
  sub_29D78F20C();
  v48 = v74;
  sub_29D939828();
  v49 = v72;
  sub_29D78F178(v32, v72, sub_29D78D460);
  v50 = *(v16 + 16);
  v51 = v73;
  v52 = v68;
  v50(v73, v43, v68);
  v53 = v75[2];
  v54 = v69;
  v55 = v48;
  v56 = v70;
  v53(v69, v55, v70);
  v57 = v49;
  v58 = v71;
  sub_29D78F178(v57, v71, sub_29D78D460);
  sub_29D78D3D8();
  v60 = v59;
  v50((v58 + *(v59 + 48)), v51, v52);
  v53((v58 + *(v60 + 64)), v54, v56);
  v61 = v75[1];
  v61(v74, v56);
  v62 = *(v65 + 8);
  v62(v64, v52);
  sub_29D78FB8C(v66, sub_29D78D460);
  v61(v54, v56);
  v62(v73, v52);
  return sub_29D78FB8C(v72, sub_29D78D460);
}

__n128 sub_29D786E48@<Q0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_29D933AA8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v28 - v12;
  v29 = sub_29D939A18();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v29, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A2BE98;
  (*(v5 + 16))(v10, v13, v4);
  sub_29D935E88();
  v20 = v19;
  sub_29D933A98();
  sub_29D939D98();
  (*(v5 + 8))(v13, v4);
  v21 = [objc_opt_self() systemPinkColor];
  sub_29D939A08();
  sub_29D9398A8();
  sub_29D9388E8();
  v22 = v30;
  (*(v14 + 32))(v30, v18, v29);
  sub_29D78DD1C(0, &qword_2A17B4510, MEMORY[0x29EDC4348]);
  v24 = v22 + *(v23 + 36);
  v25 = v36;
  *(v24 + 64) = v35;
  *(v24 + 80) = v25;
  *(v24 + 96) = v37;
  v26 = v32;
  *v24 = v31;
  *(v24 + 16) = v26;
  result = v34;
  *(v24 + 32) = v33;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_29D7871C8@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v80 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v71 = *(v80 - 8);
  v1 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v80, v2);
  v72 = v3;
  v73 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_29D9339F8();
  v75 = *(v79 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v79, v5);
  v74 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29D938E18();
  v64 = *(v70 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v70, v8);
  v69 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F3F4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v66 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F790(0, &qword_2A17B3370, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v78 = v63 - v17;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v19 = v18;
  v77 = *(v18 - 8);
  v20 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v63 - v22;
  v24 = sub_29D933AA8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8, v26);
  v27 = sub_29D939D18();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = v63 - v35;
  sub_29D78DB54(0, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
  v67 = *(v37 - 8);
  v68 = v37;
  v38 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v65 = v63 - v40;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v41 = qword_2A1A2BE98;
  (*(v28 + 16))(v33, v36, v27);
  sub_29D935E88();
  v42 = v41;
  sub_29D933A98();
  v43 = sub_29D939D98();
  v45 = v44;
  (*(v28 + 8))(v36, v27);
  v82 = v43;
  v83 = v45;
  v46 = v81;
  sub_29D939858();
  swift_getKeyPath();
  sub_29D939878();

  (*(v77 + 8))(v23, v19);
  v47 = *(v80 + 28);
  v48 = sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
  v49 = v79;
  result = sub_29D939CF8();
  if (result)
  {
    v51 = v75;
    v77 = *(v75 + 16);
    (v77)(v66, v46 + v47, v49);
    sub_29D78F790(0, &qword_2A17B4740, MEMORY[0x29EDBC000], MEMORY[0x29EDC9E90]);
    v63[1] = v19;
    v80 = v48;
    v52 = *(v64 + 72);
    v53 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_29D93F680;
    sub_29D938E08();
    sub_29D938DF8();
    v84 = v54;
    sub_29D78F9B4(&qword_2A17B4748, MEMORY[0x29EDBC000]);
    sub_29D78F488(0);
    sub_29D78F9B4(&unk_2A17B4758, sub_29D78F488);
    sub_29D93A888();
    sub_29D69AB60();
    v55 = v65;
    sub_29D938608();
    sub_29D939848();
    v56 = v82;
    swift_getKeyPath();
    v82 = v56;
    sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
    sub_29D933E18();

    v57 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
    swift_beginAccess();
    v58 = v74;
    (v77)(v74, v56 + v57, v49);

    v59 = v73;
    sub_29D78F178(v46, v73, type metadata accessor for BloodPressureJournalAddDataView);
    v60 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v61 = swift_allocObject();
    sub_29D78EC4C(v59, v61 + v60);
    sub_29D78D7D0(&qword_2A17B4550, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
    v62 = v68;
    sub_29D9394E8();

    (*(v51 + 8))(v58, v49);
    return (*(v67 + 8))(v55, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D787B5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  sub_29D78DA08();
  v44 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78D940();
  v10 = v9;
  v47 = *(v9 - 8);
  v11 = *(v47 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v46 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v45 = v38 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v43 = v38 - v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v39 = v38 - v22;
  sub_29D787F90(v8);
  v23 = (a1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 20));
  v42 = *v23;
  v41 = *(v23 + 1);
  v40 = v23[16];
  LOBYTE(v52) = v42;
  v53 = v41;
  v54 = v40;
  sub_29D78D090();
  v38[2] = v24;
  sub_29D938648();
  v52 = v49;
  v53 = v50;
  v54 = v51;
  LOBYTE(v49) = 0;
  sub_29D78E71C(0, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
  v38[1] = v25;
  sub_29D78DC6C();
  sub_29D78D118();
  v26 = v44;
  sub_29D9394B8();

  v27 = *(v4 + 8);
  v38[0] = v4 + 8;
  v27(v8, v26);
  sub_29D788578(v8);
  LOBYTE(v52) = v42;
  v53 = v41;
  v54 = v40;
  sub_29D938648();
  v52 = v49;
  v53 = v50;
  v54 = v51;
  LOBYTE(v49) = 1;
  v28 = v43;
  sub_29D9394B8();

  v27(v8, v26);
  v29 = v47;
  v30 = *(v47 + 16);
  v31 = v45;
  v32 = v39;
  v30(v45, v39, v10);
  v33 = v46;
  v30(v46, v28, v10);
  v34 = v48;
  v30(v48, v31, v10);
  sub_29D78D8DC();
  v30(&v34[*(v35 + 48)], v33, v10);
  v36 = *(v29 + 8);
  v36(v28, v10);
  v36(v32, v10);
  v36(v33, v10);
  return (v36)(v31, v10);
}

uint64_t sub_29D787F90@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v50 = v1;
  v52 = *(v1 - 8);
  v2 = v52[8];
  MEMORY[0x2A1C7C4A8](v1, v3);
  v47 = &v41 - v4;
  v5 = sub_29D933AA8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = sub_29D939D18();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v41 - v16;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2BE98;
  v44 = qword_2A1A2BE98;
  v43 = unk_2A1A2BEA0;
  v19 = qword_2A1A2BEA8;
  v46 = v9[2];
  v46(v14, v17, v8);
  v41 = v19;
  sub_29D935E88();
  v45 = v18;
  sub_29D933A98();
  v48 = sub_29D939D98();
  v49 = v20;
  v42 = v9[1];
  v42(v17, v8);
  v21 = v47;
  v22 = v50;
  sub_29D939858();
  swift_getKeyPath();
  v51 = v8;
  sub_29D939878();

  (v52[1])(v21, v22);
  v23 = v65;
  v24 = v66;
  v25 = v67;
  swift_getKeyPath();
  v62 = v23;
  v63 = v24;
  v64 = v25;
  sub_29D78F790(0, &qword_2A17B46F0, sub_29D78F314, MEMORY[0x29EDBCB78]);
  sub_29D939788();

  v27 = v58;
  v26 = v59;
  v50 = v60;
  LODWORD(v47) = v61;

  sub_29D939D08();
  v28 = v51;
  v46(v14, v17, v51);
  sub_29D935E88();
  v29 = v45;
  sub_29D933A98();
  v30 = sub_29D939D98();
  v32 = v31;
  v33 = (v42)(v17, v28);
  v52 = &v41;
  v34 = v49;
  v56 = v48;
  v57 = v49;
  MEMORY[0x2A1C7C4A8](v33, v35);
  *(&v41 - 8) = v36;
  *(&v41 - 7) = v34;
  *(&v41 - 6) = v27;
  *(&v41 - 5) = v26;
  *(&v41 - 4) = v50;
  *(&v41 - 24) = v47;
  *(&v41 - 2) = v30;
  *(&v41 - 1) = v32;
  sub_29D78E4C8(0, &qword_2A17B4588, sub_29D78DAAC, sub_29D78DBB4);
  sub_29D78DAAC();
  v38 = v37;
  v39 = sub_29D78DBB4();
  sub_29D935E88();
  v54 = v38;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  sub_29D69AB60();
  sub_29D9387A8();
}

uint64_t sub_29D788578@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v50 = v1;
  v52 = *(v1 - 8);
  v2 = v52[8];
  MEMORY[0x2A1C7C4A8](v1, v3);
  v47 = &v41 - v4;
  v5 = sub_29D933AA8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = sub_29D939D18();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v41 - v16;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2BE98;
  v44 = qword_2A1A2BE98;
  v43 = unk_2A1A2BEA0;
  v19 = qword_2A1A2BEA8;
  v46 = v9[2];
  v46(v14, v17, v8);
  v41 = v19;
  sub_29D935E88();
  v45 = v18;
  sub_29D933A98();
  v48 = sub_29D939D98();
  v49 = v20;
  v42 = v9[1];
  v42(v17, v8);
  v21 = v47;
  v22 = v50;
  sub_29D939858();
  swift_getKeyPath();
  v51 = v8;
  sub_29D939878();

  (v52[1])(v21, v22);
  v23 = v65;
  v24 = v66;
  v25 = v67;
  swift_getKeyPath();
  v62 = v23;
  v63 = v24;
  v64 = v25;
  sub_29D78F790(0, &qword_2A17B46F0, sub_29D78F314, MEMORY[0x29EDBCB78]);
  sub_29D939788();

  v27 = v58;
  v26 = v59;
  v50 = v60;
  LODWORD(v47) = v61;

  sub_29D939D08();
  v28 = v51;
  v46(v14, v17, v51);
  sub_29D935E88();
  v29 = v45;
  sub_29D933A98();
  v30 = sub_29D939D98();
  v32 = v31;
  v33 = (v42)(v17, v28);
  v52 = &v41;
  v34 = v49;
  v56 = v48;
  v57 = v49;
  MEMORY[0x2A1C7C4A8](v33, v35);
  *(&v41 - 8) = v36;
  *(&v41 - 7) = v34;
  *(&v41 - 6) = v27;
  *(&v41 - 5) = v26;
  *(&v41 - 4) = v50;
  *(&v41 - 24) = v47;
  *(&v41 - 2) = v30;
  *(&v41 - 1) = v32;
  sub_29D78E4C8(0, &qword_2A17B4588, sub_29D78DAAC, sub_29D78DBB4);
  sub_29D78DAAC();
  v38 = v37;
  v39 = sub_29D78DBB4();
  sub_29D935E88();
  v54 = v38;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  sub_29D69AB60();
  sub_29D9387A8();
}

uint64_t sub_29D788B60@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = sub_29D9334C8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v55 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9333A8();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D9333B8();
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v65, v10);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D9333D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D22BC(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F2E0(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8, v22);
  v60 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D933AA8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8, v26);
  v27 = sub_29D939D18();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v55 - v35;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v37 = qword_2A1A2BE98;
  v57 = unk_2A1A2BEA0;
  v38 = v28[2];
  v38(v33, v36, v27);
  sub_29D935E88();
  v58 = v37;
  sub_29D933A98();
  v56 = sub_29D939D98();
  v59 = v39;
  v40 = v28[1];
  v40(v36, v27);
  sub_29D939D08();
  v38(v33, v36, v27);
  sub_29D935E88();
  v41 = v58;
  sub_29D933A98();
  v42 = v56;
  v43 = sub_29D939D98();
  v45 = v44;
  v40(v36, v27);
  v46 = v59;
  v47 = sub_29D939E08();
  v49 = v48;
  v70 = v42;
  v71 = v46;
  sub_29D935E88();
  MEMORY[0x29ED6A240](23328, 0xE200000000000000);
  MEMORY[0x29ED6A240](v43, v45);

  MEMORY[0x29ED6A240](10333, 0xE200000000000000);
  MEMORY[0x29ED6A240](v47, v49);

  MEMORY[0x29ED6A240](41, 0xE100000000000000);
  v50 = sub_29D9336F8();
  (*(*(v50 - 8) + 56))(v61, 1, 1, v50);
  (*(v63 + 104))(v64, *MEMORY[0x29EDB9A10], v65);
  (*(v67 + 104))(v66, *MEMORY[0x29EDB9A08], v68);
  sub_29D9333C8();
  v51 = v60;
  sub_29D933458();

  v52 = sub_29D933468();
  v53 = *(v52 - 8);
  (*(v53 + 56))(v51, 0, 1, v52);
  return (*(v53 + 32))(v69, v51, v52);
}

uint64_t sub_29D7892C0(uint64_t a1)
{
  v2 = sub_29D938E68();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  sub_29D78E3E0();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D938E58();
  v18 = a1;
  sub_29D78E4C8(0, &qword_2A17B4650, sub_29D78E554, sub_29D78E76C);
  sub_29D78E554(255);
  v13 = v12;
  v14 = sub_29D78E76C();
  v19 = v13;
  v20 = v14;
  swift_getOpaqueTypeConformance2();
  sub_29D9386E8();
  v15 = sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0);
  MEMORY[0x29ED69290](v11, v6, v15);
  return (*(v7 + 8))(v11, v6);
}

void sub_29D7894D0(uint64_t a1@<X8>)
{
  v35 = a1;
  v36 = sub_29D9388B8();
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v36, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  v10 = sub_29D9385D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78E5FC();
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78E554(0);
  v33[1] = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9385C8();
  sub_29D78F178(v1, v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressureJournalAddDataView);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  sub_29D78EC4C(v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  MEMORY[0x29ED69AD0](v14, sub_29D78F104, v27);
  LOBYTE(v14) = sub_29D78A52C();
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v14 & 1) == 0;
  v30 = &v20[*(v16 + 36)];
  *v30 = KeyPath;
  v30[1] = sub_29D74D334;
  v30[2] = v29;
  v37 = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243DA90);
  v31 = sub_29D939F18();
  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    sub_29D78E81C();
    sub_29D939438();

    sub_29D78FB8C(v20, sub_29D78E5FC);
    sub_29D9388A8();
    sub_29D78E76C();
    sub_29D939408();
    (*(v34 + 8))(v5, v36);
    sub_29D78FB8C(v25, sub_29D78E554);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D7898D4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  sub_29D78D090();
  return sub_29D938638();
}

uint64_t sub_29D789940(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  sub_29D78D090();
  result = sub_29D938628();
  if (v6 != 2)
  {
    return sub_29D938638();
  }

  return result;
}

uint64_t sub_29D789A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v4 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v5 = sub_29D9339F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_29D789AF8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29D9339F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  v10 = *a2;
  return sub_29D7B0F3C(v8);
}

uint64_t sub_29D789BC4()
{
  v0 = sub_29D9339F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  v6 = v15;
  v7 = *(type metadata accessor for BloodPressureJournalAddDataView(0) + 28);
  sub_29D939848();
  v8 = v15;
  swift_getKeyPath();
  v15 = v8;
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v9 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  (*(v1 + 16))(v5, v8 + v9, v0);

  sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
  LOBYTE(v9) = sub_29D939CF8();
  (*(v1 + 8))(v5, v0);
  v10 = (v9 ^ 1) & 1;
  if (v10 == *(v6 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate))
  {
    *(v6 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate) = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v13);
    v14[-2] = v6;
    LOBYTE(v14[-1]) = v10;
    v14[2] = v6;
    sub_29D933E08();
  }
}

id sub_29D789EC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_29D789F80(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7B0A9C(v2);
}

double sub_29D789FB0(id a1)
{
  if (a1)
  {
    [a1 _value];
  }

  return result;
}

void sub_29D789FF0(uint64_t a1, id *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_opt_self() millimeterOfMercuryUnit];
    v5 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v3];
  }

  *a2 = v5;
}

id sub_29D78A094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_29D78A14C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_29D7B0CC4(v2);
}

uint64_t sub_29D78A17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a7;
  v44 = a8;
  v40 = a6;
  v38 = a4;
  v39 = a5;
  v37 = a1;
  v45 = a9;
  v42 = sub_29D933658();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v42, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D933AA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  sub_29D78F380();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v19, v23);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  sub_29D78DAAC();
  v41 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v37;
  v53 = a2;
  v48 = a3;
  v49 = v38;
  v50 = v39;
  v51 = v40 & 1;

  sub_29D935E88();
  sub_29D933A78();
  sub_29D74D930();
  sub_29D9335B8();
  sub_29D933648();
  MEMORY[0x29ED639E0](v15, v20);
  (*(v11 + 8))(v15, v42);
  (*(v21 + 8))(v26, v20);
  v46 = v43;
  v47 = v44;
  sub_29D69AB60();
  sub_29D935E88();
  sub_29D9392F8();
  sub_29D78F9B4(&qword_2A17B4720, sub_29D78F380);
  sub_29D9398D8();
  KeyPath = swift_getKeyPath();
  v34 = &v32[*(v41 + 36)];
  *v34 = KeyPath;
  v34[8] = 2;
  sub_29D78DBB4();
  sub_29D9393B8();
  return sub_29D78FB8C(v32, sub_29D78DAAC);
}

BOOL sub_29D78A52C()
{
  v1 = v0;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v2 = *(v15 + 48);
  v3 = v2;

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v5 = v4;
  if (!v2)
  {
LABEL_5:

    return 0;
  }

  v6 = *(v1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 24));
  v7 = v3;
  v8 = [v6 validateQuantity:v7 ofType:v5];

  if (v8 != 2)
  {
    sub_29D939848();
    swift_getKeyPath();
    sub_29D933E18();

    v9 = *(v15 + 56);
    v10 = v9;

    v4 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
    v11 = v4;
    if (v9)
    {
      v12 = v10;
      v13 = [v6 validateQuantity:v12 ofType:v11];

      return v13 != 2;
    }

    goto LABEL_5;
  }

  return 0;
}

id sub_29D78A78C(uint64_t a1)
{
  v72 = a1;
  sub_29D6D22BC(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v92 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69AC2C();
  v90 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933418();
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v87 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9333F8();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v85 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v84 = &v67 - v20;
  v21 = sub_29D933428();
  v86 = *(v21 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F920();
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D933468();
  v73 = *(v32 - 8);
  v33 = *(v73 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v38);
  v70 = &v67 - v39;
  v40 = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  [v40 setEditable_];
  [v40 setScrollEnabled_];
  [v40 setSelectable_];
  [v40 _setInteractiveTextSelectionDisabled_];
  [v40 setAdjustsFontForContentSizeCategory_];
  v41 = objc_opt_self();
  v42 = v40;
  v74 = v41;
  v43 = [v41 clearColor];
  [v42 setBackgroundColor_];
  v69 = v42;

  v44 = *(v73 + 16);
  v71 = v32;
  v44(v37, v91, v32);
  v91 = v37;
  sub_29D933438();
  v45 = v86;
  (*(v86 + 16))(v31, v25, v21);
  v46 = *(v27 + 44);
  v47 = v68;
  v48 = v31;
  v49 = sub_29D78F9B4(&qword_2A17B47A0, MEMORY[0x29EDB9A50]);
  sub_29D93A148();
  (*(v45 + 8))(v25, v21);
  v86 = v89 + 8;
  v79 = (v76 + 16);
  v78 = (v76 + 32);
  v77 = *MEMORY[0x29EDC80F8];
  v76 += 8;
  v82 = v31;
  v83 = v21;
  v81 = v46;
  v80 = v49;
  v75 = v14;
  while (1)
  {
    v50 = v87;
    sub_29D93A158();
    sub_29D78F9B4(&qword_2A17B47A8, MEMORY[0x29EDB9A40]);
    v51 = v88;
    v52 = sub_29D939CF8();
    (*v86)(v50, v51);
    if (v52)
    {
      break;
    }

    v53 = sub_29D93A178();
    v54 = v84;
    (*v79)(v84);
    v53(v95, 0);
    sub_29D93A168();
    v55 = v85;
    (*v78)(v85, v54, v14);
    sub_29D9333E8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
    v94 = sub_29D93A658();
    v89 = sub_29D78F9B4(&qword_2A17B16D0, sub_29D69AC2C);
    v56 = sub_29D933498();
    sub_29D933388();
    sub_29D78F9B4(&qword_2A17B47C0, MEMORY[0x29EDC7748]);
    v57 = v47;
    v58 = sub_29D9334E8();
    sub_29D78F9FC();
    sub_29D78FA90();
    sub_29D933618();
    v58(v93, 0);
    v47 = v57;

    v56(v95, 0);
    v59 = v92;
    sub_29D78FB8C(v57, sub_29D69AC2C);
    sub_29D78FAE4();
    sub_29D933408();
    v60 = sub_29D9336F8();
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      sub_29D78FB8C(v92, sub_29D6D22BC);
      sub_29D9333E8();
      swift_getKeyPath();
      swift_getKeyPath();
      v94 = [v74 secondaryLabelColor];
      v61 = sub_29D933498();
      v62 = sub_29D9334E8();
      sub_29D78FB38();
      sub_29D933618();
      v62(v93, 0);

      v61(v95, 0);
      sub_29D78FB8C(v47, sub_29D69AC2C);
      v14 = v75;
      (*v76)(v55, v75);
    }

    else
    {
      v14 = v75;
      (*v76)(v55, v75);
      sub_29D78FB8C(v92, sub_29D6D22BC);
    }

    v48 = v82;
  }

  sub_29D69567C(0, &qword_2A17B47E8, 0x29EDB9F30);
  sub_29D78FB8C(v48, sub_29D78F920);
  (*(v73 + 32))(v70, v91, v71);
  v63 = sub_29D93A4D8();
  v64 = v69;
  [v69 setAttributedText_];

  sub_29D78FBEC();
  sub_29D938FB8();
  v65 = v95[0];
  [v64 setDelegate_];

  return v64;
}

uint64_t sub_29D78B294(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_29D93AD58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a2 & 1) == 0)
  {
    v15 = *&a1;
    [a5 sizeThatFits_];
    v18 = v17;
    if (v16 <= *&a1)
    {
      v15 = v16;
    }

    (*(v9 + 104))(v13, *MEMORY[0x29EDC9EC0], v8);
    v19 = [a5 traitCollection];
    [v19 displayScale];
    sub_29D851BB8(v13, v20, v15);

    v21 = [a5 traitCollection];
    [v21 displayScale];
    sub_29D851BB8(v13, v22, v18);

    (*(v9 + 8))(v13, v8);
    return a1;
  }

  return result;
}

void sub_29D78B450()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtCV5HeartP33_EC6B7D1F88CF0668023BACCC5A7C26EA14FooterTextView11Coordinator_linkAction);
    v2 = Strong;
    sub_29D695554(v1);

    if (v1)
    {
      v1();
      sub_29D694784(v1);
    }
  }
}

id sub_29D78B690@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = type metadata accessor for FooterTextView.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV5HeartP33_EC6B7D1F88CF0668023BACCC5A7C26EA14FooterTextView11Coordinator_linkAction];
  *v9 = v5;
  v9[1] = v6;
  sub_29D695554(v5);
  v11.receiver = v8;
  v11.super_class = v7;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_29D78B764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView);

  return MEMORY[0x2A1C5CF40](a1, a2, a3, v6);
}

uint64_t sub_29D78B7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView);

  return MEMORY[0x2A1C5CF08](a1, a2, a3, v6);
}

void sub_29D78B88C()
{
  sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView);
  sub_29D938DB8();
  __break(1u);
}

id sub_29D78B8E4()
{
  v1 = qword_2A17B4460;
  v2 = *(v0 + qword_2A17B4460);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B4460);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D78B96C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (v1 + qword_2A17B4430);
  *v10 = 0;
  v10[1] = 0;
  v11 = qword_2A17B4450;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(v1 + v11) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v12 = qword_2A17B4458;
  *(v1 + v12) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  *(v1 + qword_2A17B4460) = 0;
  *(v1 + qword_2A17B4438) = a1;
  v13 = objc_allocWithZone(MEMORY[0x29EDC4740]);

  v14 = [v13 init];
  v15 = qword_2A17B4440;
  *(v2 + qword_2A17B4440) = v14;
  v16 = *(a1 + 16);
  type metadata accessor for BloodPressureSampleFormatter();
  swift_allocObject();
  *(v2 + qword_2A17B4448) = sub_29D7C07C4(v16);
  v17 = *(v2 + v15);
  type metadata accessor for BloodPressureJournalLoggingModel();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);

  v18 = v17;
  sub_29D939868();
  v19 = v5[7];
  sub_29D78D1B4();
  sub_29D938658();
  *&v9[v5[8]] = v18;
  v20 = &v9[v5[9]];
  sub_29D9339A8();
  v21 = &v9[v5[10]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v9[v5[11]];
  *v22 = 0;
  v22[1] = 0;
  v23 = sub_29D938CF8();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v23;

  v26 = sub_29D938D08();
  v28 = (v27 + v5[10]);
  v29 = *v28;
  v30 = v28[1];
  *v28 = sub_29D78F4F4;
  v28[1] = v24;
  sub_29D694784(v29);
  v26(v38, 0);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = sub_29D938D08();
  v34 = (v33 + v5[11]);
  v35 = *v34;
  v36 = v34[1];
  *v34 = sub_29D78F4FC;
  v34[1] = v31;
  sub_29D694784(v35);
  v32(v38, 0);

  return v25;
}

void sub_29D78BCC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D78C00C();
  }
}

void sub_29D78BD14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_2A17B4430);
    v2 = Strong;
    swift_unknownObjectRetain();

    if (v1)
    {
      sub_29D74109C(3);
      sub_29D936978();
    }
  }
}

void sub_29D78BDB4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BloodPressureJournalAddDataMainViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v2 = sub_29D78B8E4();
  [v1 setLeftBarButtonItem_];

  v3 = *&v0[qword_2A17B4460];
  sub_29D88BBC8(&unk_2A243DB70);
  v4 = sub_29D939F18();
  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v6 = sub_29D939D28();

    [v3 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D78BF10(void *a1)
{
  v1 = a1;
  sub_29D78BDB4();
}

uint64_t sub_29D78BF58(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  v3 = *&v2[qword_2A17B4438];
  sub_29D7B2224(2, 0);
  if (*&v2[qword_2A17B4430])
  {
    v4 = *&v2[qword_2A17B4430];
    swift_unknownObjectRetain();
    sub_29D741688(1, 0, 0, 0);

    sub_29D936978();
  }

  else
  {
  }

  return sub_29D69417C(v6);
}

void sub_29D78C00C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v55 - v14;
  v16 = *&v0[qword_2A17B4438];
  swift_getKeyPath();
  v65 = v16;
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  v17 = *(v16 + 48);
  if (!v17)
  {
    goto LABEL_8;
  }

  v62 = v6;
  swift_getKeyPath();
  v65 = v16;
  v18 = v17;
  sub_29D933E18();

  v19 = *(v16 + 56);
  if (!v19)
  {

LABEL_8:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2C008);
    v34 = sub_29D937878();
    v35 = sub_29D93A288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v65 = v37;
      *v36 = 136315138;
      v38 = sub_29D93AF08();
      v40 = sub_29D6C2364(v38, v39, &v65);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D677000, v34, v35, "[%s] User has inputted nil values; unable to go to next page", v36, 0xCu);
      sub_29D69417C(v37);
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    return;
  }

  v60 = v7;
  v20 = *&v1[qword_2A17B4440];
  v21 = *&v1[qword_2A17B4450];
  v22 = v19;
  v23 = [v20 validateQuantity:v18 ofType:v21];
  v24 = [v20 validateQuantity:v22 ofType:*&v1[qword_2A17B4458]];
  v25 = *&v1[qword_2A17B4448];
  v61 = v18;
  v26 = sub_29D7C08CC(v18);
  v28 = v27;
  ObjectType = v22;
  v29 = sub_29D7C08CC(v22);
  if (v23 == 1 || v24 == 1)
  {
    v56 = v29;
    v57 = v30;
    v58 = v26;
    v59 = v28;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v41 = qword_2A1A2BE98;
    v42 = v63;
    v43 = v60;
    (*(v63 + 16))(v12, v15, v60);
    sub_29D935E88();
    v44 = v41;
    sub_29D933A98();
    sub_29D939D98();
    (*(v42 + 8))(v15, v43);
    sub_29D78F790(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_29D93F680;
    v46 = MEMORY[0x29EDC99B0];
    *(v45 + 56) = MEMORY[0x29EDC99B0];
    v47 = sub_29D69AD24();
    v48 = v59;
    *(v45 + 32) = v58;
    *(v45 + 40) = v48;
    *(v45 + 96) = v46;
    *(v45 + 104) = v47;
    v50 = v56;
    v49 = v57;
    *(v45 + 64) = v47;
    *(v45 + 72) = v50;
    *(v45 + 80) = v49;
    v31 = sub_29D939D38();
    v32 = v51;

    goto LABEL_16;
  }

  if (v24 | v23)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
LABEL_16:
    v52 = v61;
    sub_29D78C5E4(v31, v32);

LABEL_17:

    return;
  }

  sub_29D7B2224(2, 3);
  v53 = *&v1[qword_2A17B4430];
  v52 = v61;
  if (!v53)
  {
    goto LABEL_17;
  }

  v54 = *&v1[qword_2A17B4430];
  swift_unknownObjectRetain();
  sub_29D831B0C(v1, v53);

  sub_29D936978();
}

void sub_29D78C5E4(void *a1, void *a2)
{
  v45 = a2;
  v44 = a1;
  v2 = sub_29D933AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939D18();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v37 - v15;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A2BE98;
  v18 = v8 + 2;
  v48 = v8[2];
  v49 = unk_2A1A2BEA0;
  v48(v13, v16, v7);
  sub_29D935E88();
  v43 = v17;
  sub_29D933A98();
  sub_29D939D98();
  v41 = v13;
  v47 = v8[1];
  v42 = v8 + 1;
  v47(v16, v7);
  v19 = sub_29D939D28();
  v20 = sub_29D939D28();

  v39 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  sub_29D939D08();
  v21 = v41;
  v44 = v18;
  v48(v41, v16, v7);
  sub_29D935E88();
  v40 = v43;
  sub_29D933A98();
  v45 = v17;
  v43 = v6;
  sub_29D939D98();
  v47(v16, v7);
  v22 = swift_allocObject();
  v23 = v46;
  *(v22 + 16) = v46;
  v38 = v23;
  v24 = sub_29D939D28();

  aBlock[4] = sub_29D78F770;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D799960;
  aBlock[3] = &unk_2A2444D98;
  v25 = _Block_copy(aBlock);

  v46 = objc_opt_self();
  v26 = [v46 actionWithTitle:v24 style:0 handler:v25];
  _Block_release(v25);

  aBlock[0] = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243DAD0);
  v27 = sub_29D939F18();
  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v29 = sub_29D939D28();

    [v26 setAccessibilityIdentifier_];

    sub_29D939D08();
    v48(v21, v16, v7);
    sub_29D935E88();
    v30 = v40;
    sub_29D933A98();
    sub_29D939D98();
    v47(v16, v7);
    v31 = sub_29D939D28();

    v32 = [v46 actionWithTitle:v31 style:1 handler:0];

    aBlock[0] = &unk_2A243D870;
    sub_29D88BBC8(&unk_2A243DB20);
    v33 = sub_29D939F18();
    v34 = HKUIJoinStringsForAutomationIdentifier();

    if (v34)
    {
      sub_29D939D68();

      swift_arrayDestroy();
      v35 = sub_29D939D28();

      [v32 setAccessibilityIdentifier_];

      v36 = v39;
      [v39 addAction_];
      [v36 addAction_];
      [v38 presentViewController:v36 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D78CCA4(uint64_t a1, char *a2)
{
  v3 = *&a2[qword_2A17B4438];
  result = sub_29D7B2224(2, 3);
  v5 = *&a2[qword_2A17B4430];
  if (v5)
  {
    v6 = *&a2[qword_2A17B4430];
    swift_unknownObjectRetain();
    sub_29D831B0C(a2, v5);

    return sub_29D936978();
  }

  return result;
}

void sub_29D78CD80()
{
  v1 = *(v0 + qword_2A17B4430);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B4438);

  v3 = *(v0 + qword_2A17B4448);

  v4 = *(v0 + qword_2A17B4460);
}

id sub_29D78CE28(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D78CE68(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B4430);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B4438);

  v4 = *(a1 + qword_2A17B4448);

  v5 = *(a1 + qword_2A17B4460);
}

void sub_29D78CF54()
{
  sub_29D78F790(319, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  if (v0 <= 0x3F)
  {
    sub_29D78D090();
    if (v1 <= 0x3F)
    {
      sub_29D69567C(319, &qword_2A17B44B8, 0x29EDC4740);
      if (v2 <= 0x3F)
      {
        sub_29D9339F8();
        if (v3 <= 0x3F)
        {
          sub_29D78F790(319, &qword_2A17B44C0, sub_29D71DF70, MEMORY[0x29EDC9C68]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D78D090()
{
  if (!qword_2A17B4498)
  {
    sub_29D78E71C(255, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
    sub_29D78D118();
    v0 = sub_29D938668();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4498);
    }
  }
}

unint64_t sub_29D78D118()
{
  result = qword_2A17B44A8;
  if (!qword_2A17B44A8)
  {
    sub_29D78E71C(255, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
    sub_29D78D1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B44A8);
  }

  return result;
}

unint64_t sub_29D78D1B4()
{
  result = qword_2A17B44B0;
  if (!qword_2A17B44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B44B0);
  }

  return result;
}

unint64_t sub_29D78D238()
{
  result = qword_2A17B44C8;
  if (!qword_2A17B44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B44C8);
  }

  return result;
}

uint64_t sub_29D78D28C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B4430);
  v4 = *(v2 + qword_2A17B4430);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

void sub_29D78D310()
{
  if (!qword_2A17B44E8)
  {
    sub_29D78D3A4(255);
    sub_29D78F9B4(&qword_2A17B45D0, sub_29D78D3A4);
    v0 = sub_29D939268();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B44E8);
    }
  }
}

void sub_29D78D3D8()
{
  if (!qword_2A17B44F8)
  {
    sub_29D78D460(255);
    sub_29D78D648();
    sub_29D78D814();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B44F8);
    }
  }
}

void sub_29D78D494()
{
  if (!qword_2A17B4508)
  {
    sub_29D78DD1C(255, &qword_2A17B4510, MEMORY[0x29EDC4348]);
    sub_29D78D520();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4508);
    }
  }
}

void sub_29D78D520()
{
  if (!qword_2A17B4518)
  {
    sub_29D938F68();
    sub_29D78F9B4(&qword_2A17B4520, MEMORY[0x29EDBC078]);
    v0 = sub_29D938EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4518);
    }
  }
}

void sub_29D78D5B4()
{
  if (!qword_2A17B4528)
  {
    sub_29D938E78();
    sub_29D78F9B4(&qword_2A17B4530, MEMORY[0x29EDBC020]);
    v0 = sub_29D938EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4528);
    }
  }
}

void sub_29D78D648()
{
  if (!qword_2A17B4538)
  {
    sub_29D78D6AC();
    v0 = sub_29D939838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4538);
    }
  }
}

void sub_29D78D6AC()
{
  if (!qword_2A17B4540)
  {
    v0 = MEMORY[0x29EDBBE80];
    sub_29D78DB54(255, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
    sub_29D9339F8();
    sub_29D78D7D0(&qword_2A17B4550, &qword_2A17B2FC0, v0);
    sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4540);
    }
  }
}

uint64_t sub_29D78D7D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D78DB54(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D78D814()
{
  if (!qword_2A17B4560)
  {
    sub_29D78D8A8(255);
    sub_29D78DD1C(255, &qword_2A17B45C8, type metadata accessor for FooterTextView);
    v0 = sub_29D939838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4560);
    }
  }
}

void sub_29D78D8DC()
{
  if (!qword_2A17B4570)
  {
    sub_29D78D940();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B4570);
    }
  }
}

void sub_29D78D940()
{
  if (!qword_2A17B4578)
  {
    sub_29D78DA08();
    sub_29D78E71C(255, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
    sub_29D78DC6C();
    sub_29D78D118();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4578);
    }
  }
}

void sub_29D78DA08()
{
  if (!qword_2A17B4580)
  {
    sub_29D78E4C8(255, &qword_2A17B4588, sub_29D78DAAC, sub_29D78DBB4);
    v0 = sub_29D9387B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4580);
    }
  }
}

void sub_29D78DAAC()
{
  if (!qword_2A17B4590)
  {
    sub_29D78DB54(255, &qword_2A17B4598, MEMORY[0x29EDBC2D0]);
    sub_29D78E71C(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4590);
    }
  }
}

void sub_29D78DB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D78DBB4()
{
  result = qword_2A17B45A8;
  if (!qword_2A17B45A8)
  {
    sub_29D78DAAC();
    sub_29D78D7D0(&unk_2A17B45B0, &qword_2A17B4598, MEMORY[0x29EDBC2D0]);
    sub_29D6F8E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B45A8);
  }

  return result;
}

unint64_t sub_29D78DC6C()
{
  result = qword_2A17B45C0;
  if (!qword_2A17B45C0)
  {
    sub_29D78DA08();
    sub_29D78DAAC();
    sub_29D78DBB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B45C0);
  }

  return result;
}

void sub_29D78DD1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D78DDA0()
{
  if (!qword_2A17B45D8)
  {
    sub_29D938FA8();
    sub_29D78F9B4(&qword_2A17B45E0, MEMORY[0x29EDBC088]);
    v0 = sub_29D938EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B45D8);
    }
  }
}

void sub_29D78DE9C()
{
  if (!qword_2A17B45F8)
  {
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B45F8);
    }
  }
}

unint64_t sub_29D78DF50()
{
  result = qword_2A17B4600;
  if (!qword_2A17B4600)
  {
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78E030();
    sub_29D78F9B4(&qword_2A17B4630, sub_29D78DE34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4600);
  }

  return result;
}

unint64_t sub_29D78E030()
{
  result = qword_2A17B4608;
  if (!qword_2A17B4608)
  {
    sub_29D78D2A8(255);
    sub_29D78E0E0();
    sub_29D78F9B4(&qword_2A17B4628, sub_29D78DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4608);
  }

  return result;
}

unint64_t sub_29D78E0E0()
{
  result = qword_2A17B4610;
  if (!qword_2A17B4610)
  {
    sub_29D78D2DC(255);
    sub_29D78F9B4(&qword_2A17B4618, sub_29D78D310);
    sub_29D78F9B4(&qword_2A17B4620, sub_29D78D5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4610);
  }

  return result;
}

void sub_29D78E1C0()
{
  if (!qword_2A17B4638)
  {
    sub_29D78DE9C();
    sub_29D78E32C();
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    swift_getOpaqueTypeConformance2();
    sub_29D78E3E0();
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4638);
    }
  }
}

void sub_29D78E32C()
{
  if (!qword_2A17B4640)
  {
    sub_29D78E3E0();
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4640);
    }
  }
}

void sub_29D78E3E0()
{
  if (!qword_2A17B4648)
  {
    sub_29D78E4C8(255, &qword_2A17B4650, sub_29D78E554, sub_29D78E76C);
    sub_29D78E554(255);
    sub_29D78E76C();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D9386F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4648);
    }
  }
}

void sub_29D78E4C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D78E588(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D78E5FC()
{
  if (!qword_2A17B4660)
  {
    sub_29D78E688();
    sub_29D78E71C(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4660);
    }
  }
}

void sub_29D78E688()
{
  if (!qword_2A17B4668)
  {
    sub_29D938BA8();
    sub_29D78F9B4(&unk_2A17B4670, MEMORY[0x29EDBBFC8]);
    v0 = sub_29D939718();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4668);
    }
  }
}

void sub_29D78E71C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D78E76C()
{
  result = qword_2A17B4680;
  if (!qword_2A17B4680)
  {
    sub_29D78E554(255);
    sub_29D78E81C();
    sub_29D78F9B4(&qword_2A17B46A0, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4680);
  }

  return result;
}

unint64_t sub_29D78E81C()
{
  result = qword_2A17B4688;
  if (!qword_2A17B4688)
  {
    sub_29D78E5FC();
    sub_29D78F9B4(&unk_2A17B4690, sub_29D78E688);
    sub_29D72883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4688);
  }

  return result;
}

void sub_29D78E8CC()
{
  if (!qword_2A17B46B8)
  {
    sub_29D78E1C0();
    sub_29D78DE9C();
    sub_29D78E32C();
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    swift_getOpaqueTypeConformance2();
    sub_29D78E3E0();
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B46B8);
    }
  }
}

uint64_t sub_29D78EA70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate);
  return result;
}

uint64_t sub_29D78EB48(uint64_t a1)
{
  sub_29D78DE68(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F178(a1, v6, sub_29D78DE68);
  return MEMORY[0x29ED68E30](v6);
}

uint64_t sub_29D78EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D78EC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalAddDataView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D78ECC8()
{
  v1 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[5] + 8);

  v7 = v1[7];
  v8 = sub_29D9339F8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v1[8]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = (v0 + v3 + v1[9]);
  if (*v11)
  {
    v12 = v11[1];
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D78EE80(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BloodPressureJournalAddDataView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_29D78EEF4()
{
  result = qword_2A17B46C0;
  if (!qword_2A17B46C0)
  {
    sub_29D78DD1C(255, &qword_2A17B46B0, sub_29D78E8CC);
    sub_29D78E1C0();
    sub_29D78DE9C();
    sub_29D78E32C();
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    swift_getOpaqueTypeConformance2();
    sub_29D78E3E0();
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B46C0);
  }

  return result;
}

uint64_t sub_29D78F104()
{
  v1 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

uint64_t sub_29D78F178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D78F20C()
{
  result = qword_2A17B46D0;
  if (!qword_2A17B46D0)
  {
    sub_29D78DD1C(255, &qword_2A17B45C8, type metadata accessor for FooterTextView);
    sub_29D78F9B4(&unk_2A17B46D8, type metadata accessor for FooterTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B46D0);
  }

  return result;
}

void sub_29D78F314()
{
  if (!qword_2A17B46F8)
  {
    sub_29D69567C(255, &qword_2A17B4700, 0x29EDBACF8);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B46F8);
    }
  }
}

void sub_29D78F380()
{
  if (!qword_2A17B4710)
  {
    sub_29D74D930();
    v0 = sub_29D9335F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4710);
    }
  }
}

void sub_29D78F3F4()
{
  if (!qword_2A17B4728)
  {
    sub_29D9339F8();
    sub_29D78F9B4(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D93ABC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4728);
    }
  }
}

uint64_t sub_29D78F504()
{
  v0 = sub_29D93A1A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D93A1B8();
  v6 = (*(v1 + 88))(v5, v0);
  v7 = *MEMORY[0x29EDC7880];
  (*(v1 + 8))(v5, v0);
  result = 0;
  if (v6 == v7)
  {
    sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    return sub_29D93A738();
  }

  return result;
}

void sub_29D78F690()
{
  v1 = (v0 + qword_2A17B4430);
  *v1 = 0;
  v1[1] = 0;
  v2 = qword_2A17B4450;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(v0 + v2) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v3 = qword_2A17B4458;
  *(v0 + v3) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  *(v0 + qword_2A17B4460) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D78F778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D78F790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D78F824()
{
  sub_29D933468();
  if (v0 <= 0x3F)
  {
    sub_29D78F790(319, &qword_2A17B44C0, sub_29D71DF70, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D78F920()
{
  if (!qword_2A17B4798)
  {
    sub_29D933428();
    sub_29D78F9B4(&qword_2A17B47A0, MEMORY[0x29EDB9A50]);
    v0 = sub_29D93AB18();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4798);
    }
  }
}

uint64_t sub_29D78F9B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D78F9FC()
{
  if (!qword_2A17B47C8)
  {
    sub_29D933388();
    sub_29D78F9B4(&qword_2A17B47C0, MEMORY[0x29EDC7748]);
    v0 = sub_29D933628();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B47C8);
    }
  }
}

unint64_t sub_29D78FA90()
{
  result = qword_2A17B47D0;
  if (!qword_2A17B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B47D0);
  }

  return result;
}

unint64_t sub_29D78FAE4()
{
  result = qword_2A17B47D8;
  if (!qword_2A17B47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B47D8);
  }

  return result;
}

unint64_t sub_29D78FB38()
{
  result = qword_2A17B47E0;
  if (!qword_2A17B47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B47E0);
  }

  return result;
}

uint64_t sub_29D78FB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D78FBEC()
{
  if (!qword_2A17B47F0)
  {
    type metadata accessor for FooterTextView(255);
    sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView);
    v0 = sub_29D938FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B47F0);
    }
  }
}

uint64_t sub_29D78FC84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29D939968();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D939998();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v31, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A17D0DB8);

  v17 = sub_29D937878();
  v18 = sub_29D93A2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v11;
    v21 = a2;
    v22 = a1;
    v23 = v20;
    aBlock[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D947B80, aBlock);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_29D6C2364(*(v3 + 16), *(v3 + 24), aBlock);
    _os_log_impl(&dword_29D677000, v17, v18, "[%s] Failing test with name %s", v19, 0x16u);
    swift_arrayDestroy();
    v24 = v23;
    a1 = v22;
    a2 = v21;
    v11 = v30;
    MEMORY[0x29ED6BE30](v24, -1, -1);
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v25 = sub_29D93A468();
  v26 = swift_allocObject();
  v26[2] = v3;
  v26[3] = a1;
  v26[4] = a2;
  aBlock[4] = sub_29D798968;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2444EE8;
  v27 = _Block_copy(aBlock);

  sub_29D935E88();

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D798910();
  sub_29D798A4C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v15, v10, v27);
  _Block_release(v27);

  (*(v32 + 8))(v10, v6);
  return (*(v11 + 8))(v15, v31);
}

uint64_t sub_29D7900B4(const char *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v5 = v3;
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D939998();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v18 = sub_29D937898();
  sub_29D69C6C0(v18, qword_2A17D0DB8);

  v19 = sub_29D937878();
  v20 = sub_29D93A2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v33 = v6;
    v24 = v13;
    v25 = v7;
    v26 = a1;
    v27 = v23;
    aBlock[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D947B80, aBlock);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_29D6C2364(*(v5 + 16), *(v5 + 24), aBlock);
    v28 = v26;
    v7 = v25;
    v13 = v24;
    v6 = v33;
    _os_log_impl(&dword_29D677000, v19, v20, v28, v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v27, -1, -1);
    v29 = v22;
    v12 = v34;
    MEMORY[0x29ED6BE30](v29, -1, -1);
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v30 = sub_29D93A468();
  aBlock[4] = v35;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = v36;
  v31 = _Block_copy(aBlock);

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D798910();
  sub_29D798A4C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v11, v31);
  _Block_release(v31);

  (*(v7 + 8))(v11, v6);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_29D7904B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_29D9377B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  v16 = a3;
  sub_29D9377A8();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter, v15, v10);
  v22 = 0xD000000000000029;
  v23 = 0x800000029D9617F0;
  sub_29D93A9A8();
  if (!*(a4 + 16) || (v17 = sub_29D6908F8(v24), (v18 & 1) == 0))
  {

    sub_29D69466C(v24);
LABEL_8:
    *(v5 + 40) = 0;
    return v5;
  }

  sub_29D694294(*(a4 + 56) + 32 * v17, v25);
  sub_29D69466C(v24);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  if (v22 == 5457241 && v23 == 0xE300000000000000)
  {

    v19 = 1;
  }

  else
  {
    v19 = sub_29D93AD78();
  }

  *(v5 + 40) = v19 & 1;
  return v5;
}

uint64_t sub_29D790700(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29D933CC8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_29D933CE8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v11 = sub_29D9331D8();
  v2[11] = v11;
  v12 = *(v11 - 8);
  v2[12] = v12;
  v13 = *(v12 + 64) + 15;
  v2[13] = swift_task_alloc();
  v14 = sub_29D9339F8();
  v2[14] = v14;
  v15 = *(v14 - 8);
  v2[15] = v15;
  v16 = *(v15 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D79093C, 0, 0);
}

uint64_t sub_29D79093C()
{
  v1 = v0[17];
  v2 = v0[15];
  v17 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  sub_29D9339E8();
  sub_29D933C88();
  (*(v7 + 104))(v8, *MEMORY[0x29EDB9CA0], v9);
  sub_29D933C38();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  result = (*(v2 + 48))(v3, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[13];
    v12 = v0[10];
    (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
    sub_29D933188();
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_29D790AF0;
    v14 = v0[13];
    v15 = v0[2];
    v16 = v0[3];

    return sub_29D7920B0(v14, v15);
  }

  return result;
}

uint64_t sub_29D790AF0()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7915C4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[20] = v4;
    *v4 = v3;
    v4[1] = sub_29D790C64;
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[13];

    return sub_29D792C80(v7, v5);
  }
}

uint64_t sub_29D790C64()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7916B4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[22] = v4;
    *v4 = v3;
    v4[1] = sub_29D790DD8;
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[13];

    return sub_29D792F94(v7, v5);
  }
}

uint64_t sub_29D790DD8()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7917A4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[24] = v4;
    *v4 = v3;
    v4[1] = sub_29D790F4C;
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[13];

    return sub_29D7931B4(v7, v5);
  }
}

uint64_t sub_29D790F4C()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D791894, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[26] = v4;
    *v4 = v3;
    v4[1] = sub_29D7910C0;
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[13];

    return sub_29D7933D4(v7, v5);
  }
}

uint64_t sub_29D7910C0()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D791984, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[28] = v4;
    *v4 = v3;
    v4[1] = sub_29D791234;
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[13];

    return sub_29D7935F4(v7, v5);
  }
}

uint64_t sub_29D791234()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D791A74, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[30] = v4;
    *v4 = v3;
    v4[1] = sub_29D7913A8;
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[13];

    return sub_29D793814(v7, v5);
  }
}

uint64_t sub_29D7913A8()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_29D791B64;
  }

  else
  {
    v3 = sub_29D7914BC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7914BC()
{
  v1 = *(v0 + 248);
  sub_29D796C04(*(v0 + 16));
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  (*(v5 + 8))(v3, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_29D7915C4()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D7916B4()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D7917A4()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D791894()
{
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D791984()
{
  v1 = v0[27];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D791A74()
{
  v1 = v0[29];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D791B64()
{
  v1 = v0[31];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D791C54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 88) = a1;
  *(v2 + 96) = v3;
  return MEMORY[0x2A1C73D48](sub_29D791C98, 0, 0);
}

uint64_t sub_29D791C98()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_29D791D44;
  v3 = swift_continuation_init();
  sub_29D7952B0(v3, v2, v1);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D791D44()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    *(*v0 + 104) = *(*v0 + 80);

    return MEMORY[0x2A1C73D48](sub_29D791E90, 0, 0);
  }
}

uint64_t sub_29D791E90()
{
  v23 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A17D0DB8);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = v7;
    v15 = [v14 description];
    v16 = sub_29D939D68();
    v18 = v17;

    v19 = sub_29D6C2364(v16, v18, &v22);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Got result during preWarm %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_29D7920B0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[20] = a2;
  v3[21] = v4;
  v3[19] = a1;
  v5 = sub_29D933B68();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();
  v8 = sub_29D933BA8();
  v3[25] = v8;
  v9 = *(v8 - 8);
  v3[26] = v9;
  v10 = *(v9 + 64) + 15;
  v3[27] = swift_task_alloc();
  v11 = sub_29D933B28();
  v3[28] = v11;
  v12 = *(v11 - 8);
  v3[29] = v12;
  v13 = *(v12 + 64) + 15;
  v3[30] = swift_task_alloc();
  v14 = sub_29D9339F8();
  v3[31] = v14;
  v15 = *(v14 - 8);
  v3[32] = v15;
  v16 = *(v15 + 64) + 15;
  v3[33] = swift_task_alloc();
  v17 = sub_29D933CE8();
  v3[34] = v17;
  v18 = *(v17 - 8);
  v3[35] = v18;
  v19 = *(v18 + 64) + 15;
  v3[36] = swift_task_alloc();
  v20 = MEMORY[0x29EDC9C68];
  sub_29D798A4C(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  sub_29D798A4C(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v20);
  v24 = *(*(v23 - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = sub_29D933318();
  v3[39] = v25;
  v26 = *(v25 - 8);
  v3[40] = v26;
  v27 = *(v26 + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D792410, 0, 0);
}

uint64_t sub_29D792410()
{
  v47 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[36];
  (*(v0[35] + 56))(v0[38], 1, 1, v0[34]);
  v4 = sub_29D933D38();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  LOBYTE(v38) = 1;
  LOBYTE(v37) = 1;
  LOBYTE(v36) = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v34) = 1;
  LOBYTE(v33) = 0;
  LOBYTE(v32) = 1;
  LOBYTE(v31) = 0;
  LOBYTE(v30) = 0;
  LOBYTE(v29) = 0;
  LOBYTE(v28) = 1;
  sub_29D933308();
  v0[18] = MEMORY[0x29EDCA190];
  sub_29D933C88();
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A17D0DB8);
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136315138;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v46);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29D677000, v6, v7, "[%s] Injecting AFib Burden data", v9, 0xCu);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v41 = v0[41];
  v39 = v0[36];
  v45 = v0[33];
  v14 = v0[30];
  v42 = v0[32];
  v43 = v0[31];
  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v40 = v0[24];
  v21 = v0[22];
  v20 = v0[23];
  v22 = v0[19];
  v44 = v0[20];
  sub_29D9331A8();
  (*(v15 + 104))(v14, *MEMORY[0x29EDB9C88], v16);
  v23 = swift_task_alloc();
  v23[2] = v22;
  v23[3] = v39;
  v23[4] = v0 + 18;
  (*(v17 + 104))(v18, *MEMORY[0x29EDB9C98], v19);
  (*(v20 + 104))(v40, *MEMORY[0x29EDB9C90], v21);
  sub_29D933B58();
  (*(v20 + 8))(v40, v21);
  (*(v17 + 8))(v18, v19);
  (*(v15 + 8))(v14, v16);
  (*(v42 + 8))(v45, v43);

  v0[42] = v0[18];
  sub_29D69567C(0, &qword_2A17B4878, 0x29EDBACB0);
  v24 = sub_29D939F18();
  v0[43] = v24;
  v0[2] = v0;
  v0[3] = sub_29D792924;
  v25 = swift_continuation_init();
  sub_29D7989D8(0, &qword_2A17B72C0);
  v0[17] = v26;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D806FD4;
  v0[13] = &unk_2A2444F88;
  v0[14] = v25;
  [v44 saveObjects:v24 withCompletion:{0, v28, 8, v29, 0, v30, 0, v31, 0, v32, 2, v33, 0, v34, 0, v35, 0, v36, 0, v37, 0, v38}];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D792924()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_29D792B54;
  }

  else
  {
    v3 = sub_29D792A34;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D792A34()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[38];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[33];
  v9 = v0[30];
  v12 = v0[27];
  v13 = v0[24];
  (*(v0[40] + 8))(v0[41], v0[39]);

  (*(v7 + 8))(v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_29D792B54()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v13 = v0[38];
  v14 = v0[37];
  v7 = v0[35];
  v8 = v0[36];
  v9 = v0[34];
  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[24];
  swift_willThrow();
  (*(v6 + 8))(v3, v5);

  (*(v7 + 8))(v8, v9);

  v10 = v0[1];
  v11 = v0[44];

  return v10();
}

uint64_t sub_29D792C80(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D792CC8, 0, 0);
}

uint64_t sub_29D792CC8()
{
  v15 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting sleep data", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_29D792EA0;
  v12 = v0[2];
  v11 = v0[3];

  return sub_29D796158(v12, v11, sub_29D794864, 0);
}

uint64_t sub_29D792EA0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29D792F94(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D792FDC, 0, 0);
}

uint64_t sub_29D792FDC()
{
  v15 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting mindfulness data", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_29D798B98;
  v12 = v0[2];
  v11 = v0[3];

  return sub_29D796158(v12, v11, sub_29D794C88, 0);
}

uint64_t sub_29D7931B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D7931FC, 0, 0);
}

uint64_t sub_29D7931FC()
{
  v15 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting Exercise Minute data", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_29D798B98;
  v12 = v0[2];
  v11 = v0[3];

  return sub_29D796158(v12, v11, sub_29D794DF4, 0);
}

uint64_t sub_29D7933D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D79341C, 0, 0);
}

uint64_t sub_29D79341C()
{
  v15 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting Body Mass data", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_29D798B98;
  v12 = v0[2];
  v11 = v0[3];

  return sub_29D796158(v12, v11, sub_29D79515C, 0);
}

uint64_t sub_29D7935F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D79363C, 0, 0);
}

uint64_t sub_29D79363C()
{
  v15 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting alcoholic data", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_29D798B98;
  v12 = v0[2];
  v11 = v0[3];

  return sub_29D796158(v12, v11, sub_29D79517C, 0);
}

uint64_t sub_29D793814(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[19] = a2;
  v3[20] = v4;
  v3[18] = a1;
  v5 = *(*(sub_29D9339F8() - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v6 = sub_29D939BD8();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v8 = *(v7 + 64) + 15;
  v3[24] = swift_task_alloc();
  v9 = sub_29D933CE8();
  v3[25] = v9;
  v10 = *(v9 - 8);
  v3[26] = v10;
  v11 = *(v10 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D793990, 0, 0);
}

uint64_t sub_29D793990()
{
  v27 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v25 = v0[22];
  v8 = v0[18];
  v9 = [objc_allocWithZone(MEMORY[0x29EDC51E0]) initWithHealthStore_];
  v0[29] = v9;
  sub_29D933C88();
  sub_29D933178();
  (*(v4 + 16))(v2, v1, v3);
  sub_29D939BB8();
  v10 = sub_29D939BC8();
  (*(v6 + 8))(v5, v25);
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v11 = sub_29D937898();
  sub_29D69C6C0(v11, qword_2A17D0DB8);
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[20];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_29D677000, v12, v13, "[%s] Injecting tachograms", v15, 0xCu);
    sub_29D69417C(v16);
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  if (__OFSUB__(v10, 44))
  {
    __break(1u);
  }

  else
  {
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v21 = sub_29D93A6E8();
    v0[30] = v21;
    v0[2] = v0;
    v0[7] = v0 + 32;
    v0[3] = sub_29D793CC0;
    v22 = swift_continuation_init();
    sub_29D7989D8(0, &qword_2A17B1910);
    v0[17] = v23;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29D8D0FE0;
    v0[13] = &unk_2A2444F38;
    v0[14] = v22;
    [v9 addTachogramsForStartDayIndex:v10 - 44 endDayIndex:v10 chanceOfAFib:0 chanceOfWrite:0 minutesBetweenSamples:v21 startingHour:0 endingHour:0 completion:v0 + 10];
    v20 = v0 + 2;
  }

  return MEMORY[0x2A1C73CC0](v20);
}

uint64_t sub_29D793CC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_29D793E98;
  }

  else
  {
    v3 = sub_29D793DD0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D793DD0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);

  (*(v5 + 8))(v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29D793E98()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[21];
  swift_willThrow();

  (*(v6 + 8))(v3, v7);

  v10 = v0[1];
  v11 = v0[31];

  return v10();
}

uint64_t sub_29D793F6C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(char *, uint64_t), void *a6)
{
  v75 = a5;
  v9 = sub_29D933D38();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v66 - v17;
  v19 = sub_29D9339F8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v76 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v66 - v27;
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v66 - v30;
  sub_29D6A0A20(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_29D6A0D34(v18);
  }

  (*(v20 + 32))(v31, v18, v19);
  sub_29D933178();
  v33 = sub_29D933978();
  v34 = *(v20 + 8);
  v34(v28, v19);
  if (v33)
  {
    v70 = v34;
    v71 = a6;
    v35 = sub_29D933958();
    v36 = v75;
    v37 = sub_29D933BB8();
    v38 = HKHRAFibBurdenPreviousWeekDayIndexRange();
    v40 = v39;

    v41 = objc_opt_self();
    v42 = v36;
    v43 = sub_29D933BB8();
    v72 = [v41 hk:v38 dateOnDayIndex:0 atHour:v43 calendar:?];

    v44 = __OFADD__(v38, v40);
    v45 = v38 + v40;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      v67 = v31;
      v46 = sub_29D933BB8();
      v47 = [v41 hk:v45 dateOnDayIndex:0 atHour:v46 calendar:?];

      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v68 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
      v48 = [objc_opt_self() percentUnit];
      v49 = [objc_opt_self() quantityWithUnit:v48 doubleValue:0.5];

      sub_29D933998();
      v69 = v47;
      sub_29D933998();
      sub_29D798A4C(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      v51 = *MEMORY[0x29EDBA810];
      *(inited + 32) = sub_29D939D68();
      *(inited + 40) = v52;
      sub_29D933CA8();
      v53 = sub_29D933D08();
      (*(v73 + 8))(v13, v74);
      v54 = [v53 name];

      v55 = sub_29D939D68();
      v57 = v56;

      *(inited + 72) = MEMORY[0x29EDC99B0];
      *(inited + 48) = v55;
      *(inited + 56) = v57;
      sub_29D73F010(inited);
      swift_setDeallocating();
      sub_29D798AB0(inited + 32);
      v58 = sub_29D933958();
      v59 = v76;
      v60 = sub_29D933958();
      v61 = sub_29D939C58();

      v62 = objc_opt_self();
      v63 = v68;
      v64 = [v62 quantitySampleWithType:v68 quantity:v49 startDate:v58 endDate:v60 metadata:v61];

      v42 = v70;
      v70(v59, v19);
      v42(v28, v19);
      v41 = v64;
      v65 = v71;
      MEMORY[0x29ED6A300]();
      if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_6:
        sub_29D939FA8();

        return (v42)(v67, v19);
      }
    }

    sub_29D939F78();
    goto LABEL_6;
  }

  result = (v34)(v31, v19);
  *a3 = 1;
  return result;
}

uint64_t sub_29D7945BC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  v31 = a5;
  v32 = a3;
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = &v31 - v14;
  v16 = sub_29D9339F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v31 - v24;
  sub_29D6A0A20(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_29D6A0D34(v15);
  }

  (*(v17 + 32))(v25, v15, v16);
  sub_29D933178();
  v27 = sub_29D933978();
  v28 = *(v17 + 8);
  v28(v22, v16);
  if (v27)
  {
    v29 = v31(v25, a7);
    MEMORY[0x29ED6A300]();
    if (*((*a8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((*a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();

    return (v28)(v25, v16);
  }

  else
  {
    result = (v28)(v25, v16);
    *v32 = 1;
  }

  return result;
}

uint64_t sub_29D794864(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933CC8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v40 - v15;
  v17 = sub_29D9339F8();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v42 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v49 = &v40 - v24;
  v25 = v4[13];
  v45 = *MEMORY[0x29EDB9CC8];
  v44 = v25;
  v25(v8);
  v48 = a2;
  sub_29D933C38();
  v26 = v4[1];
  v27 = v3;
  v47 = v4 + 1;
  v43 = v26;
  v26(v8, v3);
  v28 = v18[6];
  v29 = v17;
  result = v28(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = v18;
    v31 = v18[4];
    v31(v49, v16, v17);
    v44(v8, v45, v27);
    v32 = v46;
    sub_29D933C38();
    v43(v8, v27);
    result = v28(v32, 1, v17);
    if (result != 1)
    {
      v33 = v42;
      v31(v42, v32, v17);
      sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
      v34 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4D0]);
      v35 = v49;
      v36 = sub_29D933958();
      v37 = sub_29D933958();
      v38 = [objc_opt_self() categorySampleWithType:v34 value:1 startDate:v36 endDate:v37];

      v39 = v41[1];
      v39(v33, v29);
      v39(v35, v29);
      return v38;
    }
  }

  __break(1u);
  return result;
}

id sub_29D794C88()
{
  v0 = sub_29D9339F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v6 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4A8]);
  sub_29D933948();
  v7 = sub_29D933958();
  v8 = sub_29D933958();
  v9 = [objc_opt_self() categorySampleWithType:v6 value:0 startDate:v7 endDate:v8];

  (*(v1 + 8))(v5, v0);
  return v9;
}

uint64_t sub_29D794DF4(uint64_t a1, uint64_t a2)
{
  v27[0] = a1;
  v27[1] = a2;
  v2 = sub_29D933CC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v27 - v11;
  v13 = sub_29D9339F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v19 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA848]);
  v20 = [objc_opt_self() minuteUnit];
  v21 = [objc_opt_self() quantityWithUnit:v20 doubleValue:30.0];

  (*(v14 + 16))(v18, v27[0], v13);
  (*(v3 + 104))(v7, *MEMORY[0x29EDB9CE0], v2);
  sub_29D933C38();
  (*(v3 + 8))(v7, v2);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = sub_29D933958();
    v24 = sub_29D933958();
    v25 = [objc_opt_self() quantitySampleWithType:v19 quantity:v21 startDate:v23 endDate:v24];

    v26 = *(v14 + 8);
    v26(v18, v13);
    v26(v12, v13);
    return v25;
  }

  return result;
}

id sub_29D795194(double a1, uint64_t a2, uint64_t a3, id *a4, SEL *a5)
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v8 = MEMORY[0x29ED6A6C0](*a4);
  v9 = [objc_opt_self() *a5];
  v10 = [objc_opt_self() quantityWithUnit:v9 doubleValue:a1];

  v11 = sub_29D933958();
  v12 = sub_29D933958();
  v13 = [objc_opt_self() quantitySampleWithType:v8 quantity:v10 startDate:v11 endDate:v12];

  return v13;
}

void sub_29D7952B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v7 = objc_allocWithZone(MEMORY[0x29EDC51E8]);
  v10[4] = sub_29D7988C8;
  v10[5] = v6;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D7A09D0;
  v10[3] = &unk_2A2444E70;
  v8 = _Block_copy(v10);
  v9 = [v7 initWithResultsHandler_];
  _Block_release(v8);

  [a2 executeQuery_];
}

uint64_t sub_29D7953B8(int a1, void *a2, id a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    if (qword_2A17B0D08 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A17D0DB8);
    v8 = sub_29D937878();
    v9 = sub_29D93A2A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38 = v11;
      *v10 = 136315138;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v38);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] Resuming continuation throwing error", v10, 0xCu);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    sub_29D6A0CD0();
    swift_allocError();
    *v15 = a3;
LABEL_7:

    return swift_continuation_throwingResumeWithError();
  }

  if (!a2)
  {
    if (qword_2A17B0D08 != -1)
    {
      swift_once();
    }

    v27 = sub_29D937898();
    sub_29D69C6C0(v27, qword_2A17D0DB8);
    v28 = sub_29D937878();
    v29 = sub_29D93A298();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = sub_29D93AF08();
      v34 = sub_29D6C2364(v32, v33, &v38);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_29D677000, v28, v29, "[%s] No error but did not receive results as expected", v30, 0xCu);
      sub_29D69417C(v31);
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    sub_29D798874();
    v35 = swift_allocError();
    *v36 = 2;
    sub_29D6A0CD0();
    swift_allocError();
    *v37 = v35;
    goto LABEL_7;
  }

  v17 = qword_2A17B0D08;
  v18 = a2;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_29D937898();
  sub_29D69C6C0(v19, qword_2A17D0DB8);
  v20 = sub_29D937878();
  v21 = sub_29D93A2A8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    v24 = sub_29D93AF08();
    v26 = sub_29D6C2364(v24, v25, &v38);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_29D677000, v20, v21, "[%s] Resuming continuation returning results", v22, 0xCu);
    sub_29D69417C(v23);
    MEMORY[0x29ED6BE30](v23, -1, -1);
    MEMORY[0x29ED6BE30](v22, -1, -1);
  }

  **(*(a4 + 64) + 40) = v18;

  return swift_continuation_throwingResume();
}

uint64_t sub_29D79581C()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter;
  v3 = sub_29D9377B8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFExportPPTTestRunner()
{
  result = qword_2A17B4860;
  if (!qword_2A17B4860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D79591C()
{
  result = sub_29D9377B8();
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

void sub_29D7959D0(uint64_t a1)
{
  v1 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 16);
  v4 = sub_29D939D28();
  v5 = sub_29D939D28();
  [v2 failedTest:v4 withFailure:v5];
}

void sub_29D795A58(uint64_t a1)
{
  v1 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 16);
  v4 = sub_29D939D28();
  sub_29D73F2CC(MEMORY[0x29EDCA190]);
  v5 = sub_29D939C58();

  [v2 finishedTest:v4 extraResults:v5];
}

void sub_29D795B04(uint64_t a1)
{
  v1 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 16);
  v4 = sub_29D939D28();
  [v2 startedTest_];
}

uint64_t sub_29D795B64(uint64_t a1)
{
  v1[28] = a1;
  v2 = sub_29D9339F8();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v4 = *(v3 + 64) + 15;
  v1[31] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D795C24, 0, 0);
}

uint64_t sub_29D795C24()
{
  sub_29D798A4C(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  v2 = *MEMORY[0x29EDBA788];
  *(inited + 32) = sub_29D939D68();
  *(inited + 40) = v3;
  v4 = sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v5 = sub_29D93A6D8();
  *(inited + 72) = v4;
  *(inited + 48) = v5;
  sub_29D73F010(inited);
  swift_setDeallocating();
  sub_29D798AB0(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
  v7 = sub_29D939C58();

  v8 = [v6 initWithDictionary_];
  v0[32] = v8;

  v9 = sub_29D939D28();
  v0[33] = v9;
  v10 = [objc_allocWithZone(MEMORY[0x29EDB9FD8]) init];
  v11 = sub_29D939D28();
  v12 = [v10 dateFromString_];

  if (v12)
  {
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[29];
    sub_29D933998();

    v12 = sub_29D933958();
    (*(v14 + 8))(v13, v15);
  }

  v0[34] = v12;
  v16 = v0[28];
  v0[2] = v0;
  v0[3] = sub_29D795F30;
  v17 = swift_continuation_init();
  sub_29D7989D8(0, &qword_2A17B72C0);
  v0[27] = v18;
  v0[20] = MEMORY[0x29EDCA5F8];
  v0[21] = 1107296256;
  v0[22] = sub_29D806FD4;
  v0[23] = &unk_2A2444FB0;
  v0[24] = v17;
  [v16 setCurrentOnboardingVersionCompletedForCountryCode:v9 countryCodeProvenance:101 date:v12 settings:v8 completion:v0 + 20];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D795F30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_29D7960C4;
  }

  else
  {
    v3 = sub_29D796040;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D796040()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D7960C4()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[35];

  return v6();
}

uint64_t sub_29D796158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_29D933B68();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = sub_29D933BA8();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v11 = sub_29D933B28();
  v4[29] = v11;
  v12 = *(v11 - 8);
  v4[30] = v12;
  v13 = *(v12 + 64) + 15;
  v4[31] = swift_task_alloc();
  v14 = sub_29D9339F8();
  v4[32] = v14;
  v15 = *(v14 - 8);
  v4[33] = v15;
  v16 = *(v15 + 64) + 15;
  v4[34] = swift_task_alloc();
  v17 = sub_29D933CE8();
  v4[35] = v17;
  v18 = *(v17 - 8);
  v4[36] = v18;
  v19 = *(v18 + 64) + 15;
  v4[37] = swift_task_alloc();
  v20 = MEMORY[0x29EDC9C68];
  sub_29D798A4C(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v22 = *(*(v21 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  sub_29D798A4C(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v20);
  v24 = *(*(v23 - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v25 = sub_29D933318();
  v4[40] = v25;
  v26 = *(v25 - 8);
  v4[41] = v26;
  v27 = *(v26 + 64) + 15;
  v4[42] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D796494, 0, 0);
}

uint64_t sub_29D796494()
{
  v1 = v0;
  v26 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v27 = *(v0 + 272);
  v33 = *(v0 + 264);
  v34 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v36 = *(v0 + 216);
  v37 = *(v0 + 232);
  v29 = *(v0 + 208);
  v30 = *(v0 + 224);
  v32 = *(v0 + 200);
  v6 = *(v0 + 192);
  v31 = *(v0 + 184);
  v7 = *(v0 + 152);
  v35 = *(v0 + 160);
  v28 = *(v0 + 168);
  (*(*(v0 + 288) + 56))(*(v0 + 312), 1, 1, *(v0 + 280));
  v8 = sub_29D933D38();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  LOBYTE(v25) = 1;
  LOBYTE(v24) = 1;
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  LOBYTE(v21) = 1;
  LOBYTE(v20) = 1;
  LOBYTE(v19) = 1;
  LOBYTE(v18) = 0;
  LOBYTE(v17) = 0;
  LOBYTE(v16) = 0;
  LOBYTE(v15) = 1;
  sub_29D933308();
  *(v0 + 144) = MEMORY[0x29EDCA190];
  sub_29D933C88();
  sub_29D9331A8();
  (*(v4 + 104))(v5, *MEMORY[0x29EDB9C88], v37);
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  *(v9 + 24) = v28;
  *(v9 + 40) = v3;
  *(v9 + 48) = v0 + 144;
  (*(v36 + 104))(v30, *MEMORY[0x29EDB9C98], v29);
  (*(v6 + 104))(v32, *MEMORY[0x29EDB9C90], v31);
  sub_29D933B58();
  (*(v6 + 8))(v32, v31);
  (*(v36 + 8))(v30, v29);
  (*(v4 + 8))(v5, v37);
  (*(v33 + 8))(v27, v34);

  *(v0 + 344) = *(v0 + 144);
  sub_29D69567C(0, &qword_2A17B4878, 0x29EDBACB0);
  v10 = sub_29D939F18();
  *(v0 + 352) = v10;
  v11 = v0 + 16;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_29D7968A8;
  v12 = swift_continuation_init();
  sub_29D7989D8(0, &qword_2A17B72C0);
  v1[17] = v13;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D806FD4;
  v1[13] = &unk_2A2444F60;
  v1[14] = v12;
  [v35 saveObjects:v10 withCompletion:{0, v15, 12, v16, 0, v17, 0, v18, 0, v19, 0, v20, 0, v21, 0, v22, 0, v23, 0, v24, 0, v25}];

  return MEMORY[0x2A1C73CC0](v11);
}

uint64_t sub_29D7968A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_29D796AD8;
  }

  else
  {
    v3 = sub_29D7969B8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D7969B8()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[39];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[34];
  v9 = v0[31];
  v12 = v0[28];
  v13 = v0[25];
  (*(v0[41] + 8))(v0[42], v0[40]);

  (*(v7 + 8))(v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_29D796AD8()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[40];
  v6 = v0[41];
  v13 = v0[39];
  v14 = v0[38];
  v7 = v0[36];
  v8 = v0[37];
  v9 = v0[35];
  v15 = v0[34];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[25];
  swift_willThrow();
  (*(v6 + 8))(v3, v5);

  (*(v7 + 8))(v8, v9);

  v10 = v0[1];
  v11 = v0[45];

  return v10();
}

uint64_t sub_29D796C04(void *a1)
{
  v35 = a1;
  v39[1] = *MEMORY[0x29EDCA608];
  v34 = sub_29D933CE8();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v34, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933318();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29D9339F8();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v36, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v33 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x29EDB9FD8]) init];
  v21 = sub_29D939D28();
  v22 = [v20 dateFromString_];

  if (!v22)
  {
    __break(1u);
  }

  sub_29D933998();

  v23 = v36;
  (*(v11 + 32))(v19, v16, v36);
  sub_29D933C88();
  v24 = sub_29D933BB8();
  (*(v1 + 8))(v5, v34);
  v25 = sub_29D933958();
  v26 = [v24 hk:v25 dateOfBirthDateComponentsWithDate:?];

  sub_29D933298();
  v27 = sub_29D933288();
  v39[0] = 0;
  LOBYTE(v26) = [v35 _setDateOfBirthComponents_error_];

  if (v26)
  {
    v28 = *(v37 + 8);
    v29 = v39[0];
    v28(v10, v38);
  }

  else
  {
    v31 = v39[0];
    sub_29D933598();

    swift_willThrow();
    (*(v37 + 8))(v10, v38);
  }

  result = (*(v11 + 8))(v19, v23);
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29D796FD8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v3 = sub_29D9377C8();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = sub_29D937788();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D79714C, 0, 0);
}

uint64_t sub_29D79714C()
{
  v15 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  v0[23] = sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Starting test", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_29D797310;
  v11 = v0[10];
  v12 = v0[11];

  return sub_29D790700(v11);
}

uint64_t sub_29D797310()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_29D7980F4;
  }

  else
  {
    v3 = sub_29D797424;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D797424()
{
  v50 = v0;
  if (*(v0[11] + 40) == 1)
  {
    v1 = v0[23];
    v2 = sub_29D937878();
    v3 = sub_29D93A2A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[12];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v49 = v6;
      *v5 = 136315138;
      v7 = sub_29D93AF08();
      v9 = sub_29D6C2364(v7, v8, &v49);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_29D677000, v2, v3, "[%s] Pre warming tachogram classification cache", v5, 0xCu);
      sub_29D69417C(v6);
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }

    v10 = swift_task_alloc();
    v0[26] = v10;
    *v10 = v0;
    v10[1] = sub_29D797904;
    v11 = v0[10];
    v12 = v0[11];

    return sub_29D791C54(v11);
  }

  else
  {
    v14 = v0[22];
    sub_29D7900B4("[%s] Starting test with name %s", sub_29D798974, &unk_2A2444F10);
    v0[28] = OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter;
    sub_29D937778();
    v15 = sub_29D937798();
    v16 = sub_29D93A4F8();
    if (sub_29D93A7C8())
    {
      v17 = v0[22];
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_29D937768();
      _os_signpost_emit_with_name_impl(&dword_29D677000, v15, v16, v19, "AFibBurdenPDFExportLoad", "", v18, 2u);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[21];
    v23 = v0[17];
    v24 = v0[18];
    v25 = v0[10];

    (*(v24 + 16))(v22, v21, v23);
    v26 = sub_29D9377F8();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v0[29] = sub_29D9377E8();
    v29 = *(v24 + 8);
    v0[30] = v29;
    v0[31] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v21, v23);
    type metadata accessor for AFibBurdenPDFProvider();
    v30 = swift_allocObject();
    v0[32] = v30;
    v30[2] = v25;
    v31 = sub_29D935EC8();
    v32 = v25;
    v33 = sub_29D935E98();
    v34 = MEMORY[0x29EDC24D0];
    v30[6] = v31;
    v30[7] = v34;
    v30[3] = v33;
    v35 = HKHRAFibBurdenLogForCategory();
    v36 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v35 healthDataSource:v32];

    v30[8] = v36;
    sub_29D75B008(v0 + 2);
    v37 = sub_29D937878();
    v38 = sub_29D93A2A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[12];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      v42 = sub_29D93AF08();
      v44 = sub_29D6C2364(v42, v43, &v49);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_29D677000, v37, v38, "[%s] Requesting PDF to be configured", v40, 0xCu);
      sub_29D69417C(v41);
      MEMORY[0x29ED6BE30](v41, -1, -1);
      MEMORY[0x29ED6BE30](v40, -1, -1);
    }

    v46 = v0[5];
    v45 = v0[6];
    sub_29D693E2C(v0 + 2, v46);
    v47 = *(MEMORY[0x29EDC1EF0] + 4);
    v48 = swift_task_alloc();
    v0[33] = v48;
    *v48 = v0;
    v48[1] = sub_29D797DA4;

    return MEMORY[0x2A1C61600](v46, v45);
  }
}

uint64_t sub_29D797904()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_29D798318;
  }

  else
  {
    v3 = sub_29D797A18;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D797A18()
{
  v39 = v0;
  v1 = v0[22];
  v2 = v0[11];
  sub_29D7900B4("[%s] Starting test with name %s", sub_29D798974, &unk_2A2444F10);
  v0[28] = OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter;
  sub_29D937778();
  v3 = sub_29D937798();
  v4 = sub_29D93A4F8();
  if (sub_29D93A7C8())
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_29D937768();
    _os_signpost_emit_with_name_impl(&dword_29D677000, v3, v4, v7, "AFibBurdenPDFExportLoad", "", v6, 2u);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  v13 = v0[10];

  (*(v12 + 16))(v10, v9, v11);
  v14 = sub_29D9377F8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[29] = sub_29D9377E8();
  v17 = *(v12 + 8);
  v0[30] = v17;
  v0[31] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v11);
  type metadata accessor for AFibBurdenPDFProvider();
  v18 = swift_allocObject();
  v0[32] = v18;
  v18[2] = v13;
  v19 = sub_29D935EC8();
  v20 = v13;
  v21 = sub_29D935E98();
  v22 = MEMORY[0x29EDC24D0];
  v18[6] = v19;
  v18[7] = v22;
  v18[3] = v21;
  v23 = HKHRAFibBurdenLogForCategory();
  v24 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v23 healthDataSource:v20];

  v18[8] = v24;
  sub_29D75B008(v0 + 2);
  v25 = sub_29D937878();
  v26 = sub_29D93A2A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[12];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    v30 = sub_29D93AF08();
    v32 = sub_29D6C2364(v30, v31, &v38);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_29D677000, v25, v26, "[%s] Requesting PDF to be configured", v28, 0xCu);
    sub_29D69417C(v29);
    MEMORY[0x29ED6BE30](v29, -1, -1);
    MEMORY[0x29ED6BE30](v28, -1, -1);
  }

  v34 = v0[5];
  v33 = v0[6];
  sub_29D693E2C(v0 + 2, v34);
  v35 = *(MEMORY[0x29EDC1EF0] + 4);
  v36 = swift_task_alloc();
  v0[33] = v36;
  *v36 = v0;
  v36[1] = sub_29D797DA4;

  return MEMORY[0x2A1C61600](v34, v33);
}