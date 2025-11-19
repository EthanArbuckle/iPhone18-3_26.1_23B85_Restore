uint64_t sub_1A5C142B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C142FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6365747A61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x393365646F63 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6843393365646F63 && a2 == 0xEE006D75736B6365 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7546393365646F63 && a2 == 0xEF49494353416C6CLL || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A60560F0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x333965646F63 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69333965646F63 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x38323165646F63 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7274614D61746164 && a2 == 0xEA00000000007869 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 946757989 && a2 == 0xE400000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x33316E6165 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x35666F3269 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65684335666F3269 && a2 == 0xED00006D75736B63 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x3431667469 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x373134666470 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 29297 && a2 == 0xE200000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 1701015669 && a2 == 0xE400000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x72616261646F63 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4261746144317367 && a2 == 0xEA00000000007261 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A6056110 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A6056130 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4644506F7263696DLL && a2 == 0xEB00000000373134 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x52516F7263696DLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7373656C5069736DLL && a2 == 0xEA00000000007965 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4370696C43707061 && a2 == 0xEB0000000065646FLL)
  {

    return 24;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_1A5C14AA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

double QuadrilateralProviding.boundingBox.getter(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v4(v41);
  v40 = v41[0];
  v5 = NormalizedPoint.x.getter();
  v34 = a2[3];
  v34(&v39, a1, a2);
  v38 = v39;
  v6 = NormalizedPoint.x.getter();
  v33 = a2[5];
  v33(&v37, a1, a2);
  v36 = v37;
  v7 = NormalizedPoint.x.getter();
  v32 = a2[4];
  v32(&v35, a1, a2);
  v8 = NormalizedPoint.x.getter();
  if (v6 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v7 < v9)
  {
    v9 = v7;
  }

  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  (v4)(v41, a1, a2);
  v40 = v41[0];
  v11 = NormalizedPoint.y.getter();
  v34(&v39, a1, a2);
  v38 = v39;
  v12 = NormalizedPoint.y.getter();
  v33(&v37, a1, a2);
  v36 = v37;
  v13 = NormalizedPoint.y.getter();
  v32(&v35, a1, a2);
  v14 = NormalizedPoint.y.getter();
  if (v11 > v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v15 <= v13)
  {
    v15 = v13;
  }

  if (v15 > v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  (v4)(v41, a1, a2);
  v40 = v41[0];
  v17 = NormalizedPoint.x.getter();
  v34(&v39, a1, a2);
  v38 = v39;
  v18 = NormalizedPoint.x.getter();
  v33(&v37, a1, a2);
  v36 = v37;
  v19 = NormalizedPoint.x.getter();
  v32(&v35, a1, a2);
  v20 = NormalizedPoint.x.getter();
  if (v17 > v18)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  if (v21 <= v19)
  {
    v21 = v19;
  }

  if (v21 > v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  (v4)(v41, a1, a2);
  v40 = v41[0];
  v23 = NormalizedPoint.y.getter();
  v34(&v39, a1, a2);
  v38 = v39;
  v24 = NormalizedPoint.y.getter();
  v33(&v37, a1, a2);
  v36 = v37;
  v25 = NormalizedPoint.y.getter();
  v32(&v35, a1, a2);
  v26 = NormalizedPoint.y.getter();
  if (v24 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24;
  }

  if (v25 < v27)
  {
    v27 = v25;
  }

  if (v26 < v27)
  {
    v27 = v26;
  }

  v30 = v10;

  v28 = v22 - v10;
  v29 = v16 - v27;
  *&result = NormalizedRect.init(x:y:width:height:)(*(&v27 - 1));
  return result;
}

uint64_t sub_1A5C15020(uint64_t a1, uint64_t a2, void (**a3)(void *__return_ptr, void, void))
{
  (a3)[2](&v7, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED20);
  sub_1A5B23D90();
  result = sub_1A5FD4A5C();
  if (!v3)
  {
    (a3)[3](&v7, a2, a3);
    sub_1A5FD4A5C();
    (a3)[5](&v7, a2, a3);
    sub_1A5FD4A5C();
    (a3)[4](&v7, a2, a3);
    return sub_1A5FD4A5C();
  }

  return result;
}

uint64_t sub_1A5C15200(uint64_t a1, void (**a2)(void, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A600F570;
  a2[2](a1, a2);
  a2[3](a1, a2);
  a2[4](a1, a2);
  a2[5](a1, a2);
  return v4;
}

uint64_t sub_1A5C152E0(uint64_t a1, void (**a2)(void *__return_ptr, void, void))
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x3A7466654C706F74, 0xE900000000000020);
  (a2)[2](&v9, a1, a2);
  sub_1A5B234B0();
  v4 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x676952706F74202CLL, 0xEC000000203A7468);
  (a2)[3](&v9, a1, a2);
  v5 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](0x6D6F74746F62202CLL, 0xEE00203A7466654CLL);
  (a2)[5](&v9, a1, a2);
  v6 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v6);

  MEMORY[0x1AC554600](0x6D6F74746F62202CLL, 0xEF203A7468676952);
  (a2)[4](&v9, a1, a2);
  v7 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v7);

  return v10;
}

uint64_t sub_1A5C15524()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x654C6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

uint64_t sub_1A5C155AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C1564C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C155D4(uint64_t a1)
{
  v2 = sub_1A5B289B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C15610(uint64_t a1)
{
  v2 = sub_1A5B289B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C1564C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

unint64_t sub_1A5C157C0()
{
  result = qword_1EB1F20F8;
  if (!qword_1EB1F20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F20F8);
  }

  return result;
}

unint64_t sub_1A5C15818()
{
  result = qword_1EB1F2100;
  if (!qword_1EB1F2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2100);
  }

  return result;
}

unint64_t sub_1A5C15870()
{
  result = qword_1EB1F2108;
  if (!qword_1EB1F2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2108);
  }

  return result;
}

id sub_1A5C15924()
{
  type metadata accessor for ImageRequestHandler();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_1A5C159AC()
{
  if (*v0)
  {
    return 0x74654E656E656373;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1A5C159F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697369766572 && a2 == 0xE900000000000032;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74654E656E656373 && a2 == 0xEA00000000003356)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C15ADC(uint64_t a1)
{
  v2 = sub_1A5C15EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C15B18(uint64_t a1)
{
  v2 = sub_1A5C15EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C15B54(uint64_t a1)
{
  v2 = sub_1A5C15F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C15B90(uint64_t a1)
{
  v2 = sub_1A5C15F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C15BCC(uint64_t a1)
{
  v2 = sub_1A5C15F48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C15C08(uint64_t a1)
{
  v2 = sub_1A5C15F48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateImageFeaturePrintRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2110);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2118);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2120);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C15EF4();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C15F48();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C15F9C();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5C15EF4()
{
  result = qword_1EB237F80;
  if (!qword_1EB237F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237F80);
  }

  return result;
}

unint64_t sub_1A5C15F48()
{
  result = qword_1EB237F88;
  if (!qword_1EB237F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237F88);
  }

  return result;
}

unint64_t sub_1A5C15F9C()
{
  result = qword_1EB237F90[0];
  if (!qword_1EB237F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237F90);
  }

  return result;
}

uint64_t GenerateImageFeaturePrintRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GenerateImageFeaturePrintRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2128);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2130);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2138);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C15EF4();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for GenerateImageFeaturePrintRequest.Revision;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5C15F48();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C15F9C();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t GenerateImageFeaturePrintRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 2 && (sub_1A5C16E88(), result = sub_1A5D4E900(), LOBYTE(v3) = v7, v7 == 2))
  {
    __break(1u);
  }

  else
  {
    *a2 = 2;
    v6 = v8[1];
    *(a2 + 8) = v8[0];
    *(a2 + 24) = v6;
    *(a2 + 40) = v3 & 1;
    *(a2 + 48) = v5;
  }

  return result;
}

__n128 GenerateImageFeaturePrintRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateImageFeaturePrintRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C16618()
{
  sub_1A5C16E88();
  result = sub_1A5D4EB30();
  qword_1EB237F68 = result;
  return result;
}

uint64_t GenerateImageFeaturePrintRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C16E88();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateImageFeaturePrintRequest, v3);
}

uint64_t sub_1A5C166DC()
{
  sub_1A5C16E88();
  result = sub_1A5D4EC2C();
  qword_1EB237F78 = result;
  return result;
}

uint64_t GenerateImageFeaturePrintRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t GenerateImageFeaturePrintRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A5FD4C1C();
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C1689C(uint64_t a1)
{
  v2 = sub_1A5C16EDC();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C168D8(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C16E88();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C16944(uint64_t a1)
{
  v2 = sub_1A5B5E940();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C169D0(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E940();

  return sub_1A5D4E6C8(a1, a2);
}

__n128 sub_1A5C16A1C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v7);
  v4 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  result = v7[0];
  v6 = v7[1];
  *a2 = 2;
  *(a2 + 8) = result;
  *(a2 + 24) = v6;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

unint64_t sub_1A5C16A80(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  LOBYTE(v15) = *v1;
  v5 = *(v1 + 24);
  v16 = *(v1 + 8);
  v17 = v5;
  v18 = v3;
  v19 = v4;
  v6 = sub_1A5C16EDC();
  result = sub_1A5BDA35C(a1, &type metadata for GenerateImageFeaturePrintRequest, v6);
  if (v3 == 1)
  {
    v8 = result;
    v9 = sub_1A5FD3D5C();
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *&v17 = sub_1A5BBE7F8();
    v15 = v12;
    sub_1A5B101C8(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

    return v8;
  }

  return result;
}

void sub_1A5C16BC0(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t *a5)
{
  v7 = [objc_allocWithZone(*a3) initWithObservationsRecipient_];
  v8 = sub_1A5FD3D5C();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A5FF3930;
  *(v11 + 32) = v7;
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v16[0] = v11;
  v12 = *(*a1 + 208);
  v13 = v7;
  v14 = v12(v15);
  sub_1A5B0DE30(v16, v8, v10);
  v14(v15, 0);
}

uint64_t sub_1A5C16D20()
{
  if (*v0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1A5C16D38@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t GenerateImageFeaturePrintRequest.Revision.isPublic.getter()
{
  v1 = *v0;
  if ((v1 & 1) == 0)
  {
    v2 = sub_1A5B9D1A0();
    v3 = sub_1A5B9D1A0();
    LODWORD(v2) = sub_1A5B9D1A8(8, v2, v3);
    v4 = sub_1A5B12998();
    v5 = sub_1A5B9D178(v2, v4);
    v6 = sub_1A5B9D1A0();
    v7 = sub_1A5B9D1A0();
    LODWORD(v6) = sub_1A5B9D1A8(8, v6, v7);
    v8 = sub_1A5B12998();
    sub_1A5B9D178(v6, v8);
    v9 = sub_1A5B9D1A0();
    v10 = sub_1A5B9D1A0();
    LODWORD(v9) = sub_1A5B9D1A8(8, v9, v10);
    v11 = sub_1A5B12998();
    sub_1A5B9D178(v9, v11);
    v12 = sub_1A5B9D1A0();
    v13 = sub_1A5B9D1A0();
    LODWORD(v12) = sub_1A5B9D1A8(8, v12, v13);
    v14 = sub_1A5B12998();
    sub_1A5B9D178(v12, v14);
    TtTrkRpnNode::config(v5);
  }

  return v1 ^ 1u;
}

unint64_t sub_1A5C16E88()
{
  result = qword_1EB1F2140;
  if (!qword_1EB1F2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2140);
  }

  return result;
}

unint64_t sub_1A5C16EDC()
{
  result = qword_1EB1F2148;
  if (!qword_1EB1F2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2148);
  }

  return result;
}

unint64_t sub_1A5C16F30()
{
  result = qword_1EB1F2160;
  if (!qword_1EB1F2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2160);
  }

  return result;
}

unint64_t sub_1A5C16F88(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66C70();
  result = sub_1A5C16FB8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C16FB8()
{
  result = qword_1EB1F2168;
  if (!qword_1EB1F2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2168);
  }

  return result;
}

unint64_t sub_1A5C17010()
{
  result = qword_1EB1F2170;
  if (!qword_1EB1F2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2170);
  }

  return result;
}

unint64_t sub_1A5C17068()
{
  result = qword_1EB1F2178;
  if (!qword_1EB1F2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2178);
  }

  return result;
}

unint64_t sub_1A5C170BC(uint64_t a1)
{
  result = sub_1A5B5E940();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C170E4(uint64_t a1)
{
  result = sub_1A5C16E88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C1710C(uint64_t a1)
{
  result = sub_1A5C16EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C17134(uint64_t a1)
{
  result = sub_1A5C1715C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C1715C()
{
  result = qword_1EB1F2180;
  if (!qword_1EB1F2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2180);
  }

  return result;
}

unint64_t sub_1A5C17204()
{
  result = qword_1EB238A20[0];
  if (!qword_1EB238A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB238A20);
  }

  return result;
}

unint64_t sub_1A5C1725C()
{
  result = qword_1EB238B30;
  if (!qword_1EB238B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB238B30);
  }

  return result;
}

unint64_t sub_1A5C172B4()
{
  result = qword_1EB238B38[0];
  if (!qword_1EB238B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB238B38);
  }

  return result;
}

unint64_t sub_1A5C1730C()
{
  result = qword_1EB238BC0;
  if (!qword_1EB238BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB238BC0);
  }

  return result;
}

unint64_t sub_1A5C17364()
{
  result = qword_1EB238BC8[0];
  if (!qword_1EB238BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB238BC8);
  }

  return result;
}

unint64_t sub_1A5C173BC()
{
  result = qword_1EB238C50;
  if (!qword_1EB238C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB238C50);
  }

  return result;
}

unint64_t sub_1A5C17414()
{
  result = qword_1EB238C58[0];
  if (!qword_1EB238C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB238C58);
  }

  return result;
}

uint64_t ContoursObservation.Contour.points.getter()
{
  v0 = ContoursObservation.Contour.normalizedPoints.getter();
  v1 = v0[2];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A5B25FD8(0, v1, 0);
    v2 = 4;
    v3 = v9;
    do
    {
      NormalizedPoint.init(x:y:)(__PAIR128__(COERCE_FLOAT(HIDWORD(v0[v2])), COERCE_FLOAT(v0[v2])));
      v4 = v8;
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A5B25FD8((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 16 * v6 + 32) = v4;
      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ContoursObservation.Contour.boundingQuad.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ContoursObservation.Contour(0);
  sub_1A5C17830(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for RectangleObservation();
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1A5BD89A8(v5, a1);
  }

  v9 = sub_1A5C8C3B0(a1);
  result = (v8)(v5, 1, v7, v9);
  if (result != 1)
  {
    return sub_1A5C178A0(v5);
  }

  return result;
}

uint64_t ContoursObservation.Contour.boundingBox.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for RectangleObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ContoursObservation.Contour(0);
  sub_1A5C17830(v0 + *(v8 + 20), v3);
  v9 = *(v5 + 48);
  if ((v9)(v3, 1, v4) == 1)
  {
    v10 = sub_1A5C8C3B0(v7);
    if (v9(v3, 1, v4, v10) != 1)
    {
      sub_1A5C178A0(v3);
    }
  }

  else
  {
    sub_1A5BD89A8(v3, v7);
  }

  QuadrilateralProviding.boundingBox.getter(v4, &protocol witness table for RectangleObservation);
  return sub_1A5B28A70(v7);
}

uint64_t sub_1A5C17830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5C178A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5C17934()
{
  if (*v0)
  {
    return 0x646572757361656DLL;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_1A5C17974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E657265666572 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646572757361656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C17A58(uint64_t a1)
{
  v2 = sub_1A5C17E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C17A94(uint64_t a1)
{
  v2 = sub_1A5C17E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C17AD0(uint64_t a1)
{
  v2 = sub_1A5C17EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C17B0C(uint64_t a1)
{
  v2 = sub_1A5C17EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C17B48(uint64_t a1)
{
  v2 = sub_1A5C17F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C17B84(uint64_t a1)
{
  v2 = sub_1A5C17F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HumanBodyPose3DObservation.EstimationTechnique.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2188);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2190);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2198);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C17E70();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C17EC4();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C17F18();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5C17E70()
{
  result = qword_1EB238CF0;
  if (!qword_1EB238CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB238CF0);
  }

  return result;
}

unint64_t sub_1A5C17EC4()
{
  result = qword_1EB238CF8;
  if (!qword_1EB238CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB238CF8);
  }

  return result;
}

unint64_t sub_1A5C17F18()
{
  result = qword_1EB238D00;
  if (!qword_1EB238D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB238D00);
  }

  return result;
}

uint64_t HumanBodyPose3DObservation.EstimationTechnique.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t HumanBodyPose3DObservation.EstimationTechnique.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21A0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21A8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21B0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C17E70();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for HumanBodyPose3DObservation.EstimationTechnique;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5C17EC4();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C17F18();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t HumanBodyPose3DObservation.bodyHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HumanBodyPose3DObservation() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for HumanBodyPose3DObservation()
{
  result = qword_1EB239710;
  if (!qword_1EB239710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *HumanBodyPose3DObservation.availableJointNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for HumanBodyPose3DObservation() + 44));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A5C1E08C(*(v1 + 16), 0);
  v4 = sub_1A5B2E2F8(&v6, v3 + 32, v2, v1);

  sub_1A5B2E3F4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t HumanBodyPose3DObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HumanBodyPose3DObservation() + 28);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 HumanBodyPose3DObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HumanBodyPose3DObservation() + 36);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t HumanBodyPose3DObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for HumanBodyPose3DObservation();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t HumanBodyPose3DObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000026, 0x80000001A60561D0);
  v0 = type metadata accessor for HumanBodyPose3DObservation();
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x2C73746E696F6A20, 0xE900000000000020);
  v2 = sub_1A5C1E5E8(&qword_1EB1F21C0, type metadata accessor for HumanBodyPose3DObservation);
  v3 = sub_1A5C29408(v0, &off_1F195DE88, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

void __swiftcall HumanBodyPose3DObservation.joint(for:)(Vision::Joint3D_optional *__return_ptr retstr, Vision::HumanBodyPose3DObservation::JointName a2)
{
  v3 = a2;
  v5 = *(v2 + *(type metadata accessor for HumanBodyPose3DObservation() + 44));
  if (*(v5 + 16) && (v6 = sub_1A5C1CEC8(*v3), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 160 * v6);
    v9 = v8[1];
    v22 = *v8;
    v23 = v9;
    v10 = v8[5];
    v12 = v8[2];
    v11 = v8[3];
    v26 = v8[4];
    v27 = v10;
    v24 = v12;
    v25 = v11;
    v13 = v8[6];
    v14 = v8[7];
    v15 = v8[9];
    v30 = v8[8];
    v31 = v15;
    v28 = v13;
    v29 = v14;
    memmove(retstr, v8, 0xA0uLL);
    TtTrkRpnNode::config(retstr);
    sub_1A5C1E11C(&v22, &v21);
  }

  else
  {
    sub_1A5C1E100(&v22);
    v16 = v29;
    retstr->value.localPosition.columns[2] = v28;
    retstr->value.localPosition.columns[3] = v16;
    v17 = v31;
    retstr->value.identifier = v30;
    retstr->value.parentJoint = v17;
    v18 = v25;
    retstr->value.position.columns[2] = v24;
    retstr->value.position.columns[3] = v18;
    v19 = v27;
    retstr->value.localPosition.columns[0] = v26;
    retstr->value.localPosition.columns[1] = v19;
    v20 = v23;
    retstr->value.position.columns[0] = v22;
    retstr->value.position.columns[1] = v20;
  }
}

uint64_t HumanBodyPose3DObservation.allJoints(in:)(char *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for HumanBodyPose3DObservation();
  v4 = v3;
  if (v2 == 6)
  {
    v5 = *(v1 + *(v3 + 44));

    return v5;
  }

  v6 = *(v1 + *(v3 + 40));
  if (v6 <= 0xFFF7 && v6 >> 3 == 13)
  {
    v7 = *(&off_1E77B0AC0 + v2);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1A5C1E3E0(MEMORY[0x1E69E7CC0]);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_28:

    return v5;
  }

  v9 = 0;
  v10 = *(v1 + *(v4 + 44));
  while (v9 < *(v7 + 16))
  {
    v26 = *(v7 + v9 + 32);
    if (!*(v10 + 16) || (v27 = sub_1A5C1CEC8(*(v7 + v9 + 32)), (v28 & 1) == 0))
    {
      v46 = sub_1A5C1CEC8(v26);
      if (v47)
      {
        v48 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v5;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A5C1DEC4();
          v5 = *&v71[0];
        }

        v50 = (v5[7] + 160 * v48);
        v51 = v50[1];
        v72 = *v50;
        v73 = v51;
        v52 = v50[5];
        v54 = v50[2];
        v53 = v50[3];
        v76 = v50[4];
        v77 = v52;
        v74 = v54;
        v75 = v53;
        v55 = v50[6];
        v56 = v50[7];
        v57 = v50[9];
        v80 = v50[8];
        v81 = v57;
        v78 = v55;
        v79 = v56;
        sub_1A5C1E594(&v72);
        sub_1A5C1D9BC(v48, v5);
      }

      goto LABEL_10;
    }

    v29 = (*(v10 + 56) + 160 * v27);
    v30 = v29[1];
    v72 = *v29;
    v73 = v30;
    v31 = v29[5];
    v33 = v29[2];
    v32 = v29[3];
    v76 = v29[4];
    v77 = v31;
    v74 = v33;
    v75 = v32;
    v34 = v29[6];
    v35 = v29[7];
    v36 = v29[9];
    v80 = v29[8];
    v81 = v36;
    v78 = v34;
    v79 = v35;
    sub_1A5C1E11C(&v72, v71);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v5;
    v38 = sub_1A5C1CEC8(v26);
    v40 = v5[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_31;
    }

    v44 = v39;
    if (v5[3] < v43)
    {
      sub_1A5C1D458(v43, v37);
      v38 = sub_1A5C1CEC8(v26);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v44)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    if (v37)
    {
      goto LABEL_23;
    }

    v68 = v38;
    sub_1A5C1DEC4();
    v38 = v68;
    if (v44)
    {
LABEL_9:
      v5 = v70;
      v11 = (v70[7] + 160 * v38);
      v12 = v11[1];
      v71[0] = *v11;
      v71[1] = v12;
      v13 = v11[5];
      v15 = v11[2];
      v14 = v11[3];
      v71[4] = v11[4];
      v71[5] = v13;
      v71[2] = v15;
      v71[3] = v14;
      v16 = v11[9];
      v18 = v11[6];
      v17 = v11[7];
      v71[8] = v11[8];
      v71[9] = v16;
      v71[6] = v18;
      v71[7] = v17;
      v19 = v73;
      *v11 = v72;
      v11[1] = v19;
      v20 = v74;
      v21 = v75;
      v22 = v77;
      v11[4] = v76;
      v11[5] = v22;
      v11[2] = v20;
      v11[3] = v21;
      v23 = v78;
      v24 = v79;
      v25 = v81;
      v11[8] = v80;
      v11[9] = v25;
      v11[6] = v23;
      v11[7] = v24;
      sub_1A5C1E594(v71);
      goto LABEL_10;
    }

LABEL_24:
    v5 = v70;
    v70[(v38 >> 6) + 8] |= 1 << v38;
    *(v70[6] + v38) = v26;
    v58 = (v70[7] + 160 * v38);
    v60 = v80;
    v59 = v81;
    v61 = v79;
    v58[6] = v78;
    v58[7] = v61;
    v58[8] = v60;
    v58[9] = v59;
    v63 = v76;
    v62 = v77;
    v64 = v75;
    v58[2] = v74;
    v58[3] = v64;
    v58[4] = v63;
    v58[5] = v62;
    v65 = v73;
    *v58 = v72;
    v58[1] = v65;
    v66 = v70[2];
    v42 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v42)
    {
      goto LABEL_32;
    }

    v70[2] = v67;
LABEL_10:
    if (v8 == ++v9)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

Vision::NormalizedPoint __swiftcall HumanBodyPose3DObservation.pointInImage(for:)(Vision::HumanBodyPose3DObservation::JointName a1)
{
  v3 = a1;
  v4 = v1;
  v5 = type metadata accessor for HumanBodyPose3DObservation();
  if (*(*(v2 + *(v5 + 44)) + 16) && (v6 = v5, v7 = sub_1A5C1CEC8(*v3), (v8 & 1) != 0))
  {
    TtTrkRpnNode::config(v7);
    NormalizedPoint.init(imagePoint:in:)(__PAIR128__(v10, v9), *(v2 + *(v6 + 56)));
    v13 = NormalizedPoint.verticallyFlipped()();
    y = v13.cgPoint.y;
    x = v13.cgPoint.x;
  }

  else
  {

    static NormalizedPoint.zero.getter(v4);
  }

  result.cgPoint.y = y;
  result.cgPoint.x = x;
  return result;
}

Vision::HumanBodyPose3DObservation::JointName __swiftcall HumanBodyPose3DObservation.parentJointName(for:)(Vision::HumanBodyPose3DObservation::JointName a1)
{
  v3 = a1;
  v4 = v1;
  v5 = type metadata accessor for HumanBodyPose3DObservation();
  v6 = *(v2 + *(v5 + 44));
  if (*(v6 + 16))
  {
    v5 = sub_1A5C1CEC8(*v3);
    v7 = 15;
    if (v8)
    {
      v9 = *(v6 + 56) + 160 * v5;
      v10 = *(v9 + 144);
      v11 = *(v9 + 152);

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      LOBYTE(v5) = HumanBodyPose3DObservation.JointName.init(rawValue:)(v12);
      if (v14 == 17)
      {
        v7 = 15;
      }

      else
      {
        v7 = v14;
      }
    }
  }

  else
  {
    v7 = 15;
  }

  *v4 = v7;
  return v5;
}

Vision::HumanBodyPose3DObservation::JointName_optional __swiftcall HumanBodyPose3DObservation.JointName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD4B2C();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void __swiftcall HumanBodyPose3DObservation.cameraRelativePosition(for:)(simd_float4x4 *__return_ptr retstr, Vision::HumanBodyPose3DObservation::JointName a2)
{
  v3 = a2;
  if (*(*(v2 + *(type metadata accessor for HumanBodyPose3DObservation() + 44)) + 16))
  {
    sub_1A5C1CEC8(*v3);
  }
}

uint64_t HumanBodyPose3DObservation.JointName.rawValue.getter()
{
  result = 0x64616548706F74;
  switch(*v0)
  {
    case 1:
      result = 0x65487265746E6563;
      break;
    case 2:
      result = 0x68537265746E6563;
      break;
    case 3:
      result = 0x756F68537466656CLL;
      break;
    case 4:
      result = 0x6F68537468676972;
      break;
    case 5:
      result = 0x6F626C457466656CLL;
      break;
    case 6:
      result = 0x626C457468676972;
      break;
    case 7:
      result = 0x736972577466656CLL;
      break;
    case 8:
      result = 0x6972577468676972;
      break;
    case 9:
      result = 0x7069487466656CLL;
      break;
    case 0xA:
      result = 0x7069487468676972;
      break;
    case 0xB:
      result = 0x65656E4B7466656CLL;
      break;
    case 0xC:
      result = 0x656E4B7468676972;
      break;
    case 0xD:
      result = 0x6C6B6E417466656CLL;
      break;
    case 0xE:
      result = 0x6B6E417468676972;
      break;
    case 0xF:
      result = 1953460082;
      break;
    case 0x10:
      result = 0x656E697073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5C19204()
{
  v0 = HumanBodyPose3DObservation.JointName.rawValue.getter();
  v2 = v1;
  if (v0 == HumanBodyPose3DObservation.JointName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A5FD4B0C();
  }

  return v5 & 1;
}

uint64_t sub_1A5C192A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6D72417468676972;
  v6 = 0xE800000000000000;
  v7 = 0x67654C7468676972;
  if (a1 != 4)
  {
    v7 = 0x6F73726F74;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6D72417466656CLL;
  if (a1 != 1)
  {
    v8 = 0x67654C7466656CLL;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 1684104552;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x6D72417468676972)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x67654C7468676972)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x6F73726F74)
      {
LABEL_34:
        v12 = sub_1A5FD4B0C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x6D72417466656CLL)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x67654C7466656CLL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1684104552)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_1A5C19480@<X0>(uint64_t *a1@<X8>)
{
  result = HumanBodyPose3DObservation.JointName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5C194A8()
{
  sub_1A5FD4C1C();
  HumanBodyPose3DObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C19510()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C1960C()
{
  HumanBodyPose3DObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C19670()
{
  sub_1A5FD4C1C();
  HumanBodyPose3DObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C196D4()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

Vision::HumanBodyPose3DObservation::JointsGroupName_optional __swiftcall HumanBodyPose3DObservation.JointsGroupName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HumanBodyPose3DObservation.JointsGroupName.rawValue.getter()
{
  v1 = *v0;
  v2 = 1684104552;
  v3 = 0x6D72417468676972;
  v4 = 0x67654C7468676972;
  if (v1 != 4)
  {
    v4 = 0x6F73726F74;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D72417466656CLL;
  if (v1 != 1)
  {
    v5 = 0x67654C7466656CLL;
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

void sub_1A5C199A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684104552;
  v5 = 0xE800000000000000;
  v6 = 0x6D72417468676972;
  v7 = 0xE800000000000000;
  v8 = 0x67654C7468676972;
  if (v2 != 4)
  {
    v8 = 0x6F73726F74;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6D72417466656CLL;
  if (v2 != 1)
  {
    v9 = 0x67654C7466656CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
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

uint64_t sub_1A5C19A6C()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C19B5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v38 = result;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v3 << 6);
LABEL_15:
      v15 = *(*(v38 + 48) + v10);
      v16 = (*(v38 + 56) + 160 * v10);
      v17 = v16[1];
      v42 = *v16;
      v43 = v17;
      v18 = v16[5];
      v20 = v16[2];
      v19 = v16[3];
      v46 = v16[4];
      v47 = v18;
      v44 = v20;
      v45 = v19;
      v21 = v16[9];
      v23 = v16[6];
      v22 = v16[7];
      v50 = v16[8];
      v51 = v21;
      v48 = v23;
      v49 = v22;
      *&v52[111] = v16[6];
      *&v52[127] = v16[7];
      *&v52[143] = v16[8];
      *&v52[159] = v16[9];
      *&v52[47] = v16[2];
      *&v52[63] = v16[3];
      *&v52[79] = v16[4];
      *&v52[95] = v16[5];
      *&v52[15] = *v16;
      *&v52[31] = v16[1];
      v53 = v15;
      v54 = *v52;
      v55 = *&v52[16];
      v58 = *&v52[64];
      v59 = *&v52[80];
      v56 = *&v52[32];
      v57 = *&v52[48];
      *&v63[15] = *&v52[159];
      v62 = *&v52[128];
      *v63 = *&v52[144];
      v60 = *&v52[96];
      v61 = *&v52[112];
      TtTrkRpnNode::config(&v53);
      sub_1A5C1E11C(&v42, v41);
      v24 = v53;
      *&v64[128] = v62;
      *&v64[144] = *v63;
      *&v64[159] = *&v63[15];
      *&v64[64] = v58;
      *&v64[80] = v59;
      *&v64[112] = v61;
      *&v64[96] = v60;
      *v64 = v54;
      *&v64[16] = v55;
      v26 = v56;
      v25 = v57;
      v12 = v3;
LABEL_16:
      *&v64[48] = v25;
      *&v64[32] = v26;
      v62 = *&v64[128];
      *v63 = *&v64[144];
      *&v63[15] = *&v64[159];
      v58 = *&v64[64];
      v59 = *&v64[80];
      v60 = *&v64[96];
      v61 = *&v64[112];
      v54 = *v64;
      v55 = *&v64[16];
      v56 = v26;
      v57 = v25;
      v53 = v24;
      result = sub_1A5C1FAF4(&v53);
      if (result == 1)
      {
        break;
      }

      *&v52[96] = *&v64[111];
      *&v52[112] = *&v64[127];
      *&v52[128] = *&v64[143];
      *&v52[144] = *&v64[159];
      *&v52[32] = *&v64[47];
      *&v52[48] = *&v64[63];
      *&v52[64] = *&v64[79];
      *&v52[80] = *&v64[95];
      *v52 = *&v64[15];
      *&v52[16] = *&v64[31];
      v27 = sub_1A5C1CEC8(v24);
      if ((v28 & 1) == 0)
      {
        v48 = *&v52[96];
        v49 = *&v52[112];
        v50 = *&v52[128];
        v51 = *&v52[144];
        v44 = *&v52[32];
        v45 = *&v52[48];
        v46 = *&v52[64];
        v47 = *&v52[80];
        v42 = *v52;
        v43 = *&v52[16];
        sub_1A5C1E594(&v42);
        return 0;
      }

      v29 = (*(a2 + 56) + 160 * v27);
      v30 = v29[1];
      v40[0] = *v29;
      v40[1] = v30;
      v31 = v29[5];
      v33 = v29[2];
      v32 = v29[3];
      v40[4] = v29[4];
      v40[5] = v31;
      v40[2] = v33;
      v40[3] = v32;
      v34 = v29[9];
      v36 = v29[6];
      v35 = v29[7];
      v40[8] = v29[8];
      v40[9] = v34;
      v40[6] = v36;
      v40[7] = v35;
      memmove(__dst, v29, 0xA0uLL);
      sub_1A5C1E11C(v40, &v42);
      sub_1A5C1FB0C();
      v37 = sub_1A5FD3D0C();
      v41[6] = __dst[6];
      v41[7] = __dst[7];
      v41[8] = __dst[8];
      v41[9] = __dst[9];
      v41[2] = __dst[2];
      v41[3] = __dst[3];
      v41[4] = __dst[4];
      v41[5] = __dst[5];
      v41[0] = __dst[0];
      v41[1] = __dst[1];
      sub_1A5C1E594(v41);
      v48 = *&v52[96];
      v49 = *&v52[112];
      v50 = *&v52[128];
      v51 = *&v52[144];
      v44 = *&v52[32];
      v45 = *&v52[48];
      v46 = *&v52[64];
      v47 = *&v52[80];
      v42 = *v52;
      v43 = *&v52[16];
      result = sub_1A5C1E594(&v42);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v3 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v3 + 1)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_1A5C1FB60(&v53);
        v7 = 0;
        v24 = v53;
        *&v64[128] = v62;
        *&v64[144] = *v63;
        *&v64[159] = *&v63[15];
        *&v64[64] = v58;
        *&v64[80] = v59;
        *&v64[112] = v61;
        *&v64[96] = v60;
        *v64 = v54;
        *&v64[16] = v55;
        v26 = v56;
        v25 = v57;
        goto LABEL_16;
      }

      v14 = *(v4 + 8 * v13);
      ++v3;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v3 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t HumanBodyPose3DObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for HumanBodyPose3DObservation();
  sub_1A5C1E5E8(&qword_1EB1F21C8, type metadata accessor for HumanBodyPose3DObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C1A020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C1E5E8(&qword_1EB1F21C0, type metadata accessor for HumanBodyPose3DObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

void sub_1A5C1A0A4(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v68 = *a2;
  v7 = sub_1A5C1E3E0(MEMORY[0x1E69E7CC0]);
  v8 = [a1 availableJointNames];
  _s3__C9JointNameVMa_0(0);
  v9 = sub_1A5FD3F4C();

  v10 = *(v9 + 16);
  if (v10)
  {
    v64 = a3;
    v66 = a4;
    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      v74[0] = 0;
      v13 = v12;
      v14 = [a1 recognizedPointForJointName:v13 error:v74];
      v15 = v74[0];
      if (v14)
      {
        v16 = v14;
        v17 = v13;
        v18 = v15;
        sub_1A5C1A888(v17, v74);
        v19 = LOBYTE(v74[0]);
        sub_1A5C1A888([v16 parentJoint], v74);
        if (LOBYTE(v74[0]) == 17)
        {
LABEL_3:
        }

        else
        {
          [v16 position];
          [v16 localPosition];
          v22 = 0xE700000000000000;
          v23 = 0x64616548706F74;
          switch(v19)
          {
            case 0:
              break;
            case 1:
              v23 = 0x65487265746E6563;
              v24 = 25697;
              goto LABEL_27;
            case 2:
              v23 = 0x68537265746E6563;
              v22 = 0xEE007265646C756FLL;
              break;
            case 3:
              v23 = 0x756F68537466656CLL;
              v22 = 0xEC0000007265646CLL;
              break;
            case 4:
              v23 = 0x6F68537468676972;
              v22 = 0xED00007265646C75;
              break;
            case 5:
              v22 = 0xE900000000000077;
              v23 = 0x6F626C457466656CLL;
              break;
            case 6:
              v22 = 0xEA0000000000776FLL;
              v23 = 0x626C457468676972;
              break;
            case 7:
              v22 = 0xE900000000000074;
              v23 = 0x736972577466656CLL;
              break;
            case 8:
              v23 = 0x6972577468676972;
              v24 = 29811;
LABEL_27:
              v22 = (v24 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000);
              break;
            case 9:
              v23 = 0x7069487466656CLL;
              break;
            case 10:
              v22 = 0xE800000000000000;
              v23 = 0x7069487468676972;
              break;
            case 11:
              v22 = 0xE800000000000000;
              v23 = 0x65656E4B7466656CLL;
              break;
            case 12:
              v23 = 0x656E4B7468676972;
              goto LABEL_23;
            case 13:
              v23 = 0x6C6B6E417466656CLL;
LABEL_23:
              v22 = 0xE900000000000065;
              break;
            case 14:
              v22 = 0xEA0000000000656CLL;
              v23 = 0x6B6E417468676972;
              break;
            case 15:
              v22 = 0xE400000000000000;
              v23 = 1953460082;
              break;
            case 16:
              v22 = 0xE500000000000000;
              v23 = 0x656E697073;
              break;
            default:
              goto LABEL_3;
          }

          v27 = 0xE700000000000000;
          v28 = 0x64616548706F74;
          switch(v19)
          {
            case 0:
              break;
            case 1:
              v28 = 0x65487265746E6563;
              v29 = 25697;
              goto LABEL_46;
            case 2:
              v28 = 0x68537265746E6563;
              v27 = 0xEE007265646C756FLL;
              break;
            case 3:
              v28 = 0x756F68537466656CLL;
              v27 = 0xEC0000007265646CLL;
              break;
            case 4:
              v28 = 0x6F68537468676972;
              v27 = 0xED00007265646C75;
              break;
            case 5:
              v27 = 0xE900000000000077;
              v28 = 0x6F626C457466656CLL;
              break;
            case 6:
              v27 = 0xEA0000000000776FLL;
              v28 = 0x626C457468676972;
              break;
            case 7:
              v27 = 0xE900000000000074;
              v28 = 0x736972577466656CLL;
              break;
            case 8:
              v28 = 0x6972577468676972;
              v29 = 29811;
LABEL_46:
              v27 = v29 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 9:
              v28 = 0x7069487466656CLL;
              break;
            case 10:
              v27 = 0xE800000000000000;
              v28 = 0x7069487468676972;
              break;
            case 11:
              v27 = 0xE800000000000000;
              v28 = 0x65656E4B7466656CLL;
              break;
            case 12:
              v28 = 0x656E4B7468676972;
              goto LABEL_42;
            case 13:
              v28 = 0x6C6B6E417466656CLL;
LABEL_42:
              v27 = 0xE900000000000065;
              break;
            case 14:
              v27 = 0xEA0000000000656CLL;
              v28 = 0x6B6E417468676972;
              break;
            case 15:
              v27 = 0xE400000000000000;
              v28 = 1953460082;
              break;
            case 16:
              v27 = 0xE500000000000000;
              v28 = 0x656E697073;
              break;
            default:
              JUMPOUT(0);
          }

          Joint3D.init(position:localPosition:identifer:parentJoint:)(&v73, v23, v22, *&v28, *&v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74[0] = v7;
          sub_1A5C1DD4C(&v73, v19, isUniquelyReferenced_nonNull_native);

          v7 = v74[0];
        }
      }

      else
      {
        v25 = v74[0];
        v26 = sub_1A5FD348C();

        swift_willThrow();
      }

      v11 += 8;
      --v10;
    }

    while (v10);

    a4 = v66;
    a3 = v64;
  }

  else
  {
  }

  v31 = [a1 heightEstimation] == 1;
  [a1 bodyHeight];
  v32 = [objc_opt_self() meters];
  v33 = type metadata accessor for HumanBodyPose3DObservation();
  sub_1A5C1E658();
  sub_1A5FD336C();
  [a1 cameraOriginMatrix];
  v71 = v35;
  v72 = v34;
  v69 = v37;
  v70 = v36;
  v38 = a1;
  v39 = [v38 uuid];
  sub_1A5FD365C();

  [v38 confidence];
  v41 = v40;

  [v38 _cameraIntrinsics];
  v65 = v43;
  v67 = v42;
  v63 = v44;
  [v38 _cameraRootTransform];
  v61 = v46;
  v62 = v45;
  v59 = v48;
  v60 = v47;
  [v38 _inputSize];
  v50 = v49;
  v52 = v51;

  *a4 = v31;
  v53 = &a4[v33[6]];
  *v53 = v72;
  *(v53 + 1) = v71;
  *(v53 + 2) = v70;
  *(v53 + 3) = v69;
  *&a4[v33[8]] = v41;
  v54 = &a4[v33[9]];
  v55 = *(a3 + 16);
  *v54 = *a3;
  *(v54 + 1) = v55;
  *(v54 + 2) = *(a3 + 32);
  v54[48] = *(a3 + 48);
  *&a4[v33[10]] = v68;
  *&a4[v33[11]] = v7;
  v56 = &a4[v33[12]];
  *v56 = v67;
  *(v56 + 1) = v65;
  *(v56 + 2) = v63;
  v57 = &a4[v33[13]];
  *v57 = v62;
  *(v57 + 1) = v61;
  *(v57 + 2) = v60;
  *(v57 + 3) = v59;
  v58 = &a4[v33[14]];
  *v58 = v50;
  *(v58 + 1) = v52;
}

void sub_1A5C1A888(void *a1@<X0>, char *a2@<X8>)
{
  sub_1A5FD3D5C();
  v4 = a1;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v7 = sub_1A5FD3D5C();
  v9 = v8;
  if (v7 == sub_1A5FD3D5C() && v9 == v10)
  {

    goto LABEL_10;
  }

  v12 = sub_1A5FD4B0C();

  if (v12)
  {
LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v13 = v4;
  v14 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v15 = sub_1A5FD3D2C();

  v16 = sub_1A5FD3D5C();
  v18 = v17;
  if (v16 == sub_1A5FD3D5C() && v18 == v19)
  {

LABEL_13:

    v20 = 1;
    goto LABEL_11;
  }

  v21 = sub_1A5FD4B0C();

  if (v21)
  {
    goto LABEL_13;
  }

  sub_1A5FD3D5C();
  v22 = v13;
  v23 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v24 = sub_1A5FD3D2C();

  v25 = sub_1A5FD3D5C();
  v27 = v26;
  if (v25 == sub_1A5FD3D5C() && v27 == v28)
  {

LABEL_18:

    v20 = 2;
    goto LABEL_11;
  }

  v29 = sub_1A5FD4B0C();

  if (v29)
  {
    goto LABEL_18;
  }

  sub_1A5FD3D5C();
  v30 = v22;
  v31 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v32 = sub_1A5FD3D2C();

  v33 = sub_1A5FD3D5C();
  v35 = v34;
  if (v33 == sub_1A5FD3D5C() && v35 == v36)
  {

LABEL_23:

    v20 = 3;
    goto LABEL_11;
  }

  v37 = sub_1A5FD4B0C();

  if (v37)
  {
    goto LABEL_23;
  }

  sub_1A5FD3D5C();
  v38 = v30;
  v39 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v40 = sub_1A5FD3D2C();

  v41 = sub_1A5FD3D5C();
  v43 = v42;
  if (v41 == sub_1A5FD3D5C() && v43 == v44)
  {

LABEL_28:

    v20 = 4;
    goto LABEL_11;
  }

  v45 = sub_1A5FD4B0C();

  if (v45)
  {
    goto LABEL_28;
  }

  sub_1A5FD3D5C();
  v46 = v38;
  v47 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v48 = sub_1A5FD3D2C();

  v49 = sub_1A5FD3D5C();
  v51 = v50;
  if (v49 == sub_1A5FD3D5C() && v51 == v52)
  {

LABEL_33:

    v20 = 5;
    goto LABEL_11;
  }

  v53 = sub_1A5FD4B0C();

  if (v53)
  {
    goto LABEL_33;
  }

  sub_1A5FD3D5C();
  v54 = v46;
  v55 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v56 = sub_1A5FD3D2C();

  v57 = sub_1A5FD3D5C();
  v59 = v58;
  if (v57 == sub_1A5FD3D5C() && v59 == v60)
  {

LABEL_38:

    v20 = 6;
    goto LABEL_11;
  }

  v61 = sub_1A5FD4B0C();

  if (v61)
  {
    goto LABEL_38;
  }

  sub_1A5FD3D5C();
  v62 = v54;
  v63 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v64 = sub_1A5FD3D2C();

  v65 = sub_1A5FD3D5C();
  v67 = v66;
  if (v65 == sub_1A5FD3D5C() && v67 == v68)
  {

LABEL_43:

    v20 = 7;
    goto LABEL_11;
  }

  v69 = sub_1A5FD4B0C();

  if (v69)
  {
    goto LABEL_43;
  }

  sub_1A5FD3D5C();
  v70 = v62;
  v71 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v72 = sub_1A5FD3D2C();

  v73 = sub_1A5FD3D5C();
  v75 = v74;
  if (v73 == sub_1A5FD3D5C() && v75 == v76)
  {

LABEL_48:

    v20 = 8;
    goto LABEL_11;
  }

  v77 = sub_1A5FD4B0C();

  if (v77)
  {
    goto LABEL_48;
  }

  sub_1A5FD3D5C();
  v78 = v70;
  v79 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v80 = sub_1A5FD3D2C();

  v81 = sub_1A5FD3D5C();
  v83 = v82;
  if (v81 == sub_1A5FD3D5C() && v83 == v84)
  {

LABEL_53:

    v20 = 9;
    goto LABEL_11;
  }

  v85 = sub_1A5FD4B0C();

  if (v85)
  {
    goto LABEL_53;
  }

  sub_1A5FD3D5C();
  v86 = v78;
  v87 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v88 = sub_1A5FD3D2C();

  v89 = sub_1A5FD3D5C();
  v91 = v90;
  if (v89 == sub_1A5FD3D5C() && v91 == v92)
  {

LABEL_58:

    v20 = 10;
    goto LABEL_11;
  }

  v93 = sub_1A5FD4B0C();

  if (v93)
  {
    goto LABEL_58;
  }

  sub_1A5FD3D5C();
  v94 = v86;
  v95 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v96 = sub_1A5FD3D2C();

  v97 = sub_1A5FD3D5C();
  v99 = v98;
  if (v97 == sub_1A5FD3D5C() && v99 == v100)
  {

LABEL_63:

    v20 = 11;
    goto LABEL_11;
  }

  v101 = sub_1A5FD4B0C();

  if (v101)
  {
    goto LABEL_63;
  }

  sub_1A5FD3D5C();
  v102 = v94;
  v103 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v104 = sub_1A5FD3D2C();

  v105 = sub_1A5FD3D5C();
  v107 = v106;
  if (v105 == sub_1A5FD3D5C() && v107 == v108)
  {

LABEL_68:

    v20 = 12;
    goto LABEL_11;
  }

  v109 = sub_1A5FD4B0C();

  if (v109)
  {
    goto LABEL_68;
  }

  sub_1A5FD3D5C();
  v110 = v102;
  v111 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v112 = sub_1A5FD3D2C();

  v113 = sub_1A5FD3D5C();
  v115 = v114;
  if (v113 == sub_1A5FD3D5C() && v115 == v116)
  {

LABEL_73:

    v20 = 13;
    goto LABEL_11;
  }

  v117 = sub_1A5FD4B0C();

  if (v117)
  {
    goto LABEL_73;
  }

  sub_1A5FD3D5C();
  v118 = v110;
  v119 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v120 = sub_1A5FD3D2C();

  v121 = sub_1A5FD3D5C();
  v123 = v122;
  if (v121 == sub_1A5FD3D5C() && v123 == v124)
  {

LABEL_78:

    v20 = 14;
    goto LABEL_11;
  }

  v125 = sub_1A5FD4B0C();

  if (v125)
  {
    goto LABEL_78;
  }

  sub_1A5FD3D5C();
  v126 = v118;
  v127 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v128 = sub_1A5FD3D2C();

  v129 = sub_1A5FD3D5C();
  v131 = v130;
  if (v129 == sub_1A5FD3D5C() && v131 == v132)
  {

LABEL_83:

    v20 = 15;
    goto LABEL_11;
  }

  v133 = sub_1A5FD4B0C();

  if (v133)
  {
    goto LABEL_83;
  }

  sub_1A5FD3D5C();
  v134 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v135 = sub_1A5FD3D2C();

  v136 = sub_1A5FD3D5C();
  v138 = v137;
  if (v136 == sub_1A5FD3D5C() && v138 == v139)
  {

    v20 = 16;
  }

  else
  {
    v140 = sub_1A5FD4B0C();

    if (v140)
    {
      v20 = 16;
    }

    else
    {
      v20 = 17;
    }
  }

LABEL_11:
  *a2 = v20;
}

void HumanBodyPose3DObservation.init(_:)(void *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = -8;
  [a1 timeRange];
  v7 = 0;
  sub_1A5C1A0A4(a1, &v5, &v6, a2);
}

uint64_t sub_1A5C1B8B8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x616D497475706E69;
    if (v1 != 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000012;
    if (v1 != 4)
    {
      v6 = 0x69736E6972746E69;
    }

    if (*v0 <= 5u)
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
    v2 = 0x746176726573626FLL;
    v3 = 0xD000000000000010;
    if (v1 != 2)
    {
      v3 = 0x6769654879646F62;
    }

    if (*v0)
    {
      v2 = 0x746E696F4A6C6C61;
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
}

uint64_t sub_1A5C1B9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C1F7EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C1BA0C(uint64_t a1)
{
  v2 = sub_1A5C1E6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C1BA48(uint64_t a1)
{
  v2 = sub_1A5C1E6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HumanBodyPose3DObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21B8);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  *&v54 = &v45 - v3;
  v58 = sub_1A5FD367C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  *&v59 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21D8);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for HumanBodyPose3DObservation();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C1E6A4();
  v14 = v62;
  sub_1A5FD4CCC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v59;
  v50 = v7;
  v48 = v5;
  v62 = a1;
  v49 = v11;
  v51 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21E0);
  v66 = 1;
  sub_1A5C1E8B4(&qword_1EB1F21E8, sub_1A5C1E6F8, sub_1A5C1E74C);
  sub_1A5FD497C();
  v17 = v49;
  *&v51[v49[11]] = v63;
  LOBYTE(v63) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v18 = v17;
  v47 = v10;
  LOBYTE(v63) = 0;
  sub_1A5C1E5E8(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v19 = v15;
  v20 = v58;
  sub_1A5FD497C();
  v21 = v18;
  v22 = v18[7];
  v23 = v51;
  (*(v56 + 32))(&v51[v22], v19, v20);
  LOBYTE(v63) = 1;
  sub_1A5FD495C();
  *&v23[v21[8]] = v24;
  v66 = 3;
  sub_1A5B0A454();
  sub_1A5FD497C();
  *&v23[v21[10]] = v63;
  sub_1A5BBDB04(v64);
  v25 = &v23[v21[9]];
  v26 = v64[1];
  *v25 = v64[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v64[2];
  v25[48] = v65;
  v66 = 2;
  sub_1A5C1E7A0();
  sub_1A5FD497C();
  *v23 = v63;
  LOBYTE(v63) = 3;
  sub_1A5C1EC64(&qword_1EB1F2208, &qword_1EB1F21B8);
  v27 = v54;
  sub_1A5FD497C();
  (*(v53 + 32))(&v23[v21[5]], v27, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2210);
  v66 = 4;
  sub_1A5C1EA40(&qword_1EB1F2218, &qword_1EB1F2220);
  sub_1A5FD497C();
  result = v63;
  v28 = *(v63 + 16);
  if (!v28)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v28 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 < 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v28 == 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v29 = *(v63 + 48);
  v59 = *(v63 + 32);
  v54 = v29;
  v30 = *(v63 + 80);
  v46 = *(v63 + 64);
  v45 = v30;

  v31 = &v51[v49[6]];
  v32 = v54;
  *v31 = v59;
  v31[1] = v32;
  v33 = v45;
  v31[2] = v46;
  v31[3] = v33;
  v66 = 7;
  sub_1A5FD497C();
  result = v63;
  v34 = *(v63 + 16);
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v34 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v34 < 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v34 == 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = *(v63 + 48);
  v59 = *(v63 + 32);
  v54 = v35;
  v36 = *(v63 + 80);
  v46 = *(v63 + 64);
  v45 = v36;

  v37 = &v51[v49[13]];
  v38 = v54;
  *v37 = v59;
  v37[1] = v38;
  v39 = v45;
  v37[2] = v46;
  v37[3] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2230);
  v66 = 5;
  sub_1A5C1EAD8(&qword_1EB1F2238, &qword_1EB1EECB0);
  sub_1A5FD497C();
  result = v63;
  v40 = *(v63 + 16);
  if (!v40)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v40 == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v40 >= 3)
  {
    v41 = *(v63 + 48);
    v59 = *(v63 + 32);
    v54 = v41;
    v46 = *(v63 + 64);

    v42 = &v51[v49[12]];
    v43 = v54;
    *v42 = v59;
    v42[1] = v43;
    v42[2] = v46;
    type metadata accessor for CGSize(0);
    v66 = 6;
    sub_1A5C1E5E8(&qword_1EB1F2240, type metadata accessor for CGSize);
    sub_1A5FD497C();
    (*(v57 + 8))(v50, v48);
    (*(v60 + 8))(v47, v61);
    v44 = v51;
    *&v51[v49[14]] = v63;
    sub_1A5C1E7F4(v44, v52);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_1A5C1E858(v44);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t HumanBodyPose3DObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2248);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C1E6A4();
  sub_1A5FD4CDC();
  v11 = type metadata accessor for HumanBodyPose3DObservation();
  *&v37 = *&v2[v11[11]];
  v38 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21E0);
  sub_1A5C1E8B4(&qword_1EB1F2250, sub_1A5C1E944, sub_1A5C1E998);
  v12 = v36;
  sub_1A5FD4A5C();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v36 = v6;
  LOBYTE(v37) = *v2;
  v38 = 2;
  sub_1A5C1E9EC();
  sub_1A5FD4A5C();
  v33 = v4;
  v34 = v10;
  LOBYTE(v37) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F21B8);
  sub_1A5C1EC64(&qword_1EB1F2270, &qword_1EB1F21B8);
  sub_1A5FD4A5C();
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2278);
  v14 = swift_allocObject();
  v31 = xmmword_1A600F570;
  v14[1] = xmmword_1A600F570;
  v15 = v11[6];
  v32 = v2;
  v16 = &v2[v15];
  v17 = v16[1];
  v14[2] = *v16;
  v14[3] = v17;
  v18 = v16[3];
  v14[4] = v16[2];
  v14[5] = v18;
  *&v37 = v14;
  v38 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2210);
  sub_1A5C1EA40(&qword_1EB1F2280, &qword_1EB1F2288);
  sub_1A5FD4A5C();

  v19 = swift_allocObject();
  v19[1] = v31;
  v20 = &v32[v11[13]];
  v21 = v20[1];
  v19[2] = *v20;
  v19[3] = v21;
  v22 = v20[3];
  v19[4] = v20[2];
  v19[5] = v22;
  *&v37 = v19;
  v38 = 7;
  v23 = v34;
  sub_1A5FD4A5C();

  v24 = v32;
  v37 = *&v32[v11[14]];
  v38 = 6;
  type metadata accessor for CGSize(0);
  sub_1A5C1E5E8(&qword_1EB1F2290, type metadata accessor for CGSize);
  sub_1A5FD4A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2298);
  v25 = swift_allocObject();
  v25[1] = xmmword_1A600FCE0;
  v26 = &v24[v11[12]];
  v27 = v26[1];
  v25[2] = *v26;
  v25[3] = v27;
  v25[4] = v26[2];
  *&v37 = v25;
  v38 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2230);
  sub_1A5C1EAD8(&qword_1EB1F22A0, &qword_1EB1EEC90);
  sub_1A5FD4A5C();

  LOBYTE(v37) = 0;
  sub_1A5B0A360();
  v28 = v36;
  sub_1A5FD49EC();
  v29 = sub_1A5C1E5E8(&qword_1EB1F21C0, type metadata accessor for HumanBodyPose3DObservation);
  sub_1A5BBD46C(v28, v11, &off_1F195DE88, v29);
  (*(v35 + 8))(v28, v33);
  return (*(v13 + 8))(v23, 0);
}

uint64_t sub_1A5C1CDD8(uint64_t a1)
{
  v2 = sub_1A5C1E5E8(&unk_1EB1F3FD0, _s3__C9JointNameVMa_0);
  v3 = sub_1A5C1E5E8(&qword_1EB1F2318, _s3__C9JointNameVMa_0);
  v4 = sub_1A5C1E5E8(&qword_1EB1F3FE0, type metadata accessor for VNRecognizedPointKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1A5C1CEC8(char a1)
{
  sub_1A5FD4C1C();
  HumanBodyPose3DObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  v2 = sub_1A5FD4C6C();

  return sub_1A5C1CF54(a1, v2);
}

unint64_t sub_1A5C1CF54(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x64616548706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x65487265746E6563;
          v9 = 25697;
          goto LABEL_21;
        case 2:
          v8 = 0x68537265746E6563;
          v7 = 0xEE007265646C756FLL;
          break;
        case 3:
          v8 = 0x756F68537466656CLL;
          v7 = 0xEC0000007265646CLL;
          break;
        case 4:
          v8 = 0x6F68537468676972;
          v7 = 0xED00007265646C75;
          break;
        case 5:
          v7 = 0xE900000000000077;
          v8 = 0x6F626C457466656CLL;
          break;
        case 6:
          v7 = 0xEA0000000000776FLL;
          v8 = 0x626C457468676972;
          break;
        case 7:
          v7 = 0xE900000000000074;
          v8 = 0x736972577466656CLL;
          break;
        case 8:
          v8 = 0x6972577468676972;
          v9 = 29811;
LABEL_21:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          break;
        case 9:
          v8 = 0x7069487466656CLL;
          break;
        case 0xA:
          v7 = 0xE800000000000000;
          v8 = 0x7069487468676972;
          break;
        case 0xB:
          v7 = 0xE800000000000000;
          v8 = 0x65656E4B7466656CLL;
          break;
        case 0xC:
          v8 = 0x656E4B7468676972;
          goto LABEL_17;
        case 0xD:
          v8 = 0x6C6B6E417466656CLL;
LABEL_17:
          v7 = 0xE900000000000065;
          break;
        case 0xE:
          v7 = 0xEA0000000000656CLL;
          v8 = 0x6B6E417468676972;
          break;
        case 0xF:
          v7 = 0xE400000000000000;
          v8 = 1953460082;
          break;
        case 0x10:
          v7 = 0xE500000000000000;
          v8 = 0x656E697073;
          break;
        default:
          break;
      }

      v10 = 0xE700000000000000;
      v11 = 0x64616548706F74;
      switch(a1)
      {
        case 1:
          v12 = 0x65487265746E6563;
          v13 = 25697;
          goto LABEL_57;
        case 2:
          v10 = 0xEE007265646C756FLL;
          if (v8 != 0x68537265746E6563)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 3:
          v10 = 0xEC0000007265646CLL;
          if (v8 != 0x756F68537466656CLL)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 4:
          v10 = 0xED00007265646C75;
          if (v8 != 0x6F68537468676972)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 5:
          v10 = 0xE900000000000077;
          if (v8 != 0x6F626C457466656CLL)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 6:
          v10 = 0xEA0000000000776FLL;
          if (v8 != 0x626C457468676972)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 7:
          v10 = 0xE900000000000074;
          if (v8 != 0x736972577466656CLL)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 8:
          v12 = 0x6972577468676972;
          v13 = 29811;
LABEL_57:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          if (v8 != v12)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 9:
          if (v8 != 0x7069487466656CLL)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 10:
          v10 = 0xE800000000000000;
          v11 = 0x7069487468676972;
          goto LABEL_51;
        case 11:
          v10 = 0xE800000000000000;
          if (v8 != 0x65656E4B7466656CLL)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 12:
          v14 = 0x656E4B7468676972;
          goto LABEL_46;
        case 13:
          v14 = 0x6C6B6E417466656CLL;
LABEL_46:
          v10 = 0xE900000000000065;
          if (v8 != v14)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 14:
          v10 = 0xEA0000000000656CLL;
          if (v8 != 0x6B6E417468676972)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 15:
          v10 = 0xE400000000000000;
          if (v8 != 1953460082)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        case 16:
          v10 = 0xE500000000000000;
          if (v8 != 0x656E697073)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        default:
LABEL_51:
          if (v8 != v11)
          {
            goto LABEL_53;
          }

LABEL_52:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_53:
          v15 = sub_1A5FD4B0C();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1A5C1D458(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2330);
  v39 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(v5 + 56) + 160 * v23;
      if (v39)
      {
        v42 = *(v25 + 16);
        v43 = *v25;
        v40 = *(v25 + 48);
        v41 = *(v25 + 32);
        v46 = *(v25 + 80);
        v47 = *(v25 + 64);
        v44 = *(v25 + 112);
        v45 = *(v25 + 96);
        v26 = *(v25 + 136);
        v49 = *(v25 + 128);
        v50 = *(v25 + 144);
        v48 = *(v25 + 152);
      }

      else
      {
        v27 = *(v25 + 16);
        v52[0] = *v25;
        v52[1] = v27;
        v28 = *(v25 + 80);
        v30 = *(v25 + 32);
        v29 = *(v25 + 48);
        v55 = *(v25 + 64);
        v56 = v28;
        v53 = v30;
        v54 = v29;
        v31 = *(v25 + 144);
        v33 = *(v25 + 96);
        v32 = *(v25 + 112);
        v59 = *(v25 + 128);
        v60 = v31;
        v57 = v33;
        v58 = v32;
        v48 = *(&v31 + 1);
        v26 = *(&v59 + 1);
        v49 = v59;
        v50 = v31;
        v46 = v56;
        v47 = v55;
        v44 = v32;
        v45 = v33;
        v42 = v27;
        v43 = v52[0];
        v40 = v54;
        v41 = v53;
        sub_1A5C1E11C(v52, v51);
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();

      result = sub_1A5FD4C6C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v15) >> 6;
        while (++v17 != v35 || (v34 & 1) == 0)
        {
          v36 = v17 == v35;
          if (v17 == v35)
          {
            v17 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v17);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = *(v7 + 56) + 160 * v18;
      *v19 = v43;
      *(v19 + 16) = v42;
      *(v19 + 32) = v41;
      *(v19 + 48) = v40;
      *(v19 + 64) = v47;
      *(v19 + 80) = v46;
      *(v19 + 96) = v45;
      *(v19 + 112) = v44;
      *(v19 + 128) = v49;
      *(v19 + 136) = v26;
      *(v19 + 144) = v50;
      *(v19 + 152) = v48;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v39)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1A5C1D9BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A5FD463C() + 1) & ~v5;
    do
    {
      sub_1A5FD4C1C();
      sub_1A5FD3DBC();

      result = sub_1A5FD4C6C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        result = v13 + 160 * v3;
        v14 = (v13 + 160 * v6);
        if (v3 != v6 || result >= v14 + 160)
        {
          result = memmove(result, v14, 0xA0uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A5C1DD4C(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A5C1CEC8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A5C1D458(v14, a3 & 1);
      result = sub_1A5C1CEC8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A5FD4B8C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A5C1DEC4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = (v19[7] + 160 * result);
    v22 = a1[1];
    *v21 = *a1;
    v21[1] = v22;
    v23 = a1[2];
    v24 = a1[3];
    v25 = a1[5];
    v21[4] = a1[4];
    v21[5] = v25;
    v21[2] = v23;
    v21[3] = v24;
    v26 = a1[6];
    v27 = a1[7];
    v28 = a1[9];
    v21[8] = a1[8];
    v21[9] = v28;
    v21[6] = v26;
    v21[7] = v27;
    v29 = v19[2];
    v13 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v13)
    {
      v19[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 160 * result;

  return sub_1A5C1FBF0(a1, v20);
}

void *sub_1A5C1DEC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2330);
  v2 = *v0;
  v3 = sub_1A5FD485C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 160 * v17);
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[5];
        v40 = v19[4];
        v41 = v22;
        v39 = v21;
        v23 = v19[9];
        v25 = v19[6];
        v24 = v19[7];
        v44 = v19[8];
        v45 = v23;
        v42 = v25;
        v43 = v24;
        v26 = v19[1];
        v36 = *v19;
        v37 = v26;
        v38 = v20;
        *(*(v4 + 48) + v17) = v18;
        v27 = (*(v4 + 56) + 160 * v17);
        v28 = v37;
        *v27 = v36;
        v27[1] = v28;
        v29 = v38;
        v30 = v39;
        v31 = v41;
        v27[4] = v40;
        v27[5] = v31;
        v27[2] = v29;
        v27[3] = v30;
        v32 = v42;
        v33 = v43;
        v34 = v45;
        v27[8] = v44;
        v27[9] = v34;
        v27[6] = v32;
        v27[7] = v33;
        result = sub_1A5C1E11C(&v36, &v35);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A5C1E08C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2340);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double sub_1A5C1E100(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL _s6Vision26HumanBodyPose3DObservationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = type metadata accessor for HumanBodyPose3DObservation();
  sub_1A5C1E658();
  if ((sub_1A5FD335C() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[6];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&a1[v6 + 16], *&a2[v6 + 16]), vceqq_f32(*&a1[v6], *&a2[v6])), vandq_s8(vceqq_f32(*&a1[v6 + 32], *&a2[v6 + 32]), vceqq_f32(*&a1[v6 + 48], *&a2[v6 + 48])))) & 0x80000000) == 0 || (sub_1A5FD364C() & 1) == 0 || *&a1[v5[8]] != *&a2[v5[8]])
  {
    return 0;
  }

  v7 = v5[9];
  v8 = a1[v7 + 48];
  v9 = &a2[v7];
  if (v8)
  {
    if (!v9[48])
    {
      return 0;
    }
  }

  else if ((v9[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
  {
    return 0;
  }

  v10 = v5[10];
  v11 = *&a1[v10];
  v12 = *&a2[v10];
  if (v11 > 0xFFF7)
  {
    if (v12 > 0xFFF7)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v12 > 0xFFF7)
  {
    return 0;
  }

  sub_1A5B0BB44();
  if ((sub_1A5FD3D0C() & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if ((sub_1A5C19B5C(*&a1[v5[11]], *&a2[v5[11]]) & 1) == 0)
  {
    return 0;
  }

  v13 = v5[12];
  v14 = vandq_s8(vandq_s8(vceqq_f32(*&a1[v13 + 16], *&a2[v13 + 16]), vceqq_f32(*&a1[v13], *&a2[v13])), vceqq_f32(*&a1[v13 + 32], *&a2[v13 + 32]));
  v14.i32[3] = v14.i32[2];
  if ((vminvq_u32(v14) & 0x80000000) == 0)
  {
    return 0;
  }

  v15 = v5[13];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&a1[v15 + 16], *&a2[v15 + 16]), vceqq_f32(*&a1[v15], *&a2[v15])), vandq_s8(vceqq_f32(*&a1[v15 + 32], *&a2[v15 + 32]), vceqq_f32(*&a1[v15 + 48], *&a2[v15 + 48])))) & 0x80000000) == 0)
  {
    return 0;
  }

  v16 = v5[14];
  v17 = *&a1[v16];
  v18 = *&a1[v16 + 8];
  v19 = &a2[v16];
  v20 = v19[1];
  v21 = v17 == *v19;
  return v18 == v20 && v21;
}

unint64_t sub_1A5C1E3E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2330);
  v3 = sub_1A5FD487C();

  v4 = *(a1 + 176);
  v40 = *(a1 + 160);
  v41 = v4;
  v42 = *(a1 + 192);
  v5 = *(a1 + 112);
  v36 = *(a1 + 96);
  v37 = v5;
  v6 = *(a1 + 144);
  v38 = *(a1 + 128);
  v39 = v6;
  v7 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v7;
  v8 = *(a1 + 80);
  v34 = *(a1 + 64);
  v35 = v8;
  v9 = v32;
  sub_1A5C1FB80(&v32, v31);
  result = sub_1A5C1CEC8(v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 208);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v9;
    v13 = (v3[7] + 160 * result);
    v14 = v34;
    *v13 = v33;
    v13[1] = v14;
    v15 = v35;
    v16 = v36;
    v17 = v38;
    v13[4] = v37;
    v13[5] = v17;
    v13[2] = v15;
    v13[3] = v16;
    v18 = v39;
    v19 = v40;
    v20 = v42;
    v13[8] = v41;
    v13[9] = v20;
    v13[6] = v18;
    v13[7] = v19;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v12 + 11;
    v25 = v12[9];
    v40 = v12[8];
    v41 = v25;
    v42 = v12[10];
    v26 = v12[5];
    v36 = v12[4];
    v37 = v26;
    v27 = v12[7];
    v38 = v12[6];
    v39 = v27;
    v28 = v12[1];
    v32 = *v12;
    v33 = v28;
    v29 = v12[3];
    v34 = v12[2];
    v35 = v29;
    v9 = v32;
    sub_1A5C1FB80(&v32, v31);
    result = sub_1A5C1CEC8(v9);
    v12 = v24;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5C1E5E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5C1E658()
{
  result = qword_1EB1F21D0;
  if (!qword_1EB1F21D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F21D0);
  }

  return result;
}

unint64_t sub_1A5C1E6A4()
{
  result = qword_1EB238D08[0];
  if (!qword_1EB238D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB238D08);
  }

  return result;
}

unint64_t sub_1A5C1E6F8()
{
  result = qword_1EB1F21F0;
  if (!qword_1EB1F21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F21F0);
  }

  return result;
}

unint64_t sub_1A5C1E74C()
{
  result = qword_1EB1F21F8;
  if (!qword_1EB1F21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F21F8);
  }

  return result;
}

unint64_t sub_1A5C1E7A0()
{
  result = qword_1EB1F2200;
  if (!qword_1EB1F2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2200);
  }

  return result;
}

uint64_t sub_1A5C1E7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanBodyPose3DObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5C1E858(uint64_t a1)
{
  v2 = type metadata accessor for HumanBodyPose3DObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5C1E8B4(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F21E0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5C1E944()
{
  result = qword_1EB1F2258;
  if (!qword_1EB1F2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2258);
  }

  return result;
}

unint64_t sub_1A5C1E998()
{
  result = qword_1EB1F2260;
  if (!qword_1EB1F2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2260);
  }

  return result;
}

unint64_t sub_1A5C1E9EC()
{
  result = qword_1EB1F2268;
  if (!qword_1EB1F2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2268);
  }

  return result;
}

uint64_t sub_1A5C1EA40(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2210);
    sub_1A5C1EC64(a2, &qword_1EB1F2228);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5C1EAD8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2230);
    sub_1A5C1EC64(a2, &qword_1EB1EEC58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5C1EB74()
{
  result = qword_1EB1F22A8;
  if (!qword_1EB1F22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F22A8);
  }

  return result;
}

unint64_t sub_1A5C1EBCC()
{
  result = qword_1EB1F22B0;
  if (!qword_1EB1F22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F22B0);
  }

  return result;
}

uint64_t sub_1A5C1EC64(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5C1ECB0()
{
  result = qword_1EB1F22C8;
  if (!qword_1EB1F22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F22C8);
  }

  return result;
}

uint64_t sub_1A5C1ED04(void *a1)
{
  a1[1] = sub_1A5C1E5E8(&qword_1EB1F22D0, type metadata accessor for HumanBodyPose3DObservation);
  a1[2] = sub_1A5C1E5E8(&qword_1EB1F22D8, type metadata accessor for HumanBodyPose3DObservation);
  a1[3] = sub_1A5C1E5E8(&qword_1EB1F22E0, type metadata accessor for HumanBodyPose3DObservation);
  result = sub_1A5C1E5E8(&qword_1EB1F21C8, type metadata accessor for HumanBodyPose3DObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5C1EE20(uint64_t a1)
{
  result = sub_1A5C1E5E8(&qword_1EB1F21C0, type metadata accessor for HumanBodyPose3DObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C1EEA0()
{
  sub_1A5C1F07C(319, &qword_1EB1F22E8, sub_1A5C1E658, MEMORY[0x1E6968070]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for simd_float4x4(319);
    if (v1 <= 0x3F)
    {
      sub_1A5FD367C();
      if (v2 <= 0x3F)
      {
        sub_1A5C1F07C(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5C1FC4C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A5C1F0E0();
            if (v5 <= 0x3F)
            {
              type metadata accessor for simd_float3x3(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for CGSize(319);
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

void sub_1A5C1F07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A5C1F0E0()
{
  if (!qword_1EB1F22F0)
  {
    sub_1A5C1F144();
    v0 = sub_1A5FD3C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F22F0);
    }
  }
}

unint64_t sub_1A5C1F144()
{
  result = qword_1EB1F22F8;
  if (!qword_1EB1F22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F22F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HumanBodyPose3DObservation.JointName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HumanBodyPose3DObservation.JointName(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A5C1F308(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5C1F328(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_1A5C1F3A8()
{
  result = qword_1EB239A20[0];
  if (!qword_1EB239A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB239A20);
  }

  return result;
}

unint64_t sub_1A5C1F4D8()
{
  result = qword_1EB239F30[0];
  if (!qword_1EB239F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB239F30);
  }

  return result;
}

unint64_t sub_1A5C1F530()
{
  result = qword_1EB23A040;
  if (!qword_1EB23A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23A040);
  }

  return result;
}

unint64_t sub_1A5C1F588()
{
  result = qword_1EB23A048[0];
  if (!qword_1EB23A048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23A048);
  }

  return result;
}

unint64_t sub_1A5C1F5E0()
{
  result = qword_1EB23A0D0;
  if (!qword_1EB23A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23A0D0);
  }

  return result;
}

unint64_t sub_1A5C1F638()
{
  result = qword_1EB23A0D8[0];
  if (!qword_1EB23A0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23A0D8);
  }

  return result;
}

unint64_t sub_1A5C1F690()
{
  result = qword_1EB23A160;
  if (!qword_1EB23A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23A160);
  }

  return result;
}

unint64_t sub_1A5C1F6E8()
{
  result = qword_1EB23A168[0];
  if (!qword_1EB23A168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23A168);
  }

  return result;
}

unint64_t sub_1A5C1F740()
{
  result = qword_1EB23A1F0;
  if (!qword_1EB23A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23A1F0);
  }

  return result;
}

unint64_t sub_1A5C1F798()
{
  result = qword_1EB23A1F8[0];
  if (!qword_1EB23A1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23A1F8);
  }

  return result;
}

uint64_t sub_1A5C1F7EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F4A6C6C61 && a2 == 0xE900000000000073 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A6056200 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6769654879646F62 && a2 == 0xEA00000000007468 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A6056220 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69736E6972746E69 && a2 == 0xEA00000000007363 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616D497475706E69 && a2 == 0xEE00657A69536567 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A6056240 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1A5C1FAA0()
{
  result = qword_1EB1F2320;
  if (!qword_1EB1F2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2320);
  }

  return result;
}

uint64_t sub_1A5C1FAF4(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1A5C1FB0C()
{
  result = qword_1EB1F2328;
  if (!qword_1EB1F2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2328);
  }

  return result;
}

double sub_1A5C1FB60(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A5C1FB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A5C1FC4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A5C1FCB0(uint64_t a1)
{
  v2 = sub_1A5C1FF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C1FCEC(uint64_t a1)
{
  v2 = sub_1A5C1FF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C1FD28(uint64_t a1)
{
  v2 = sub_1A5C1FFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C1FD64(uint64_t a1)
{
  v2 = sub_1A5C1FFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectFaceLandmarksRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2348);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2350);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C1FF78();
  sub_1A5FD4CDC();
  sub_1A5C1FFCC();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C1FF78()
{
  result = qword_1EB23A2A0;
  if (!qword_1EB23A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23A2A0);
  }

  return result;
}

unint64_t sub_1A5C1FFCC()
{
  result = qword_1EB23A2A8[0];
  if (!qword_1EB23A2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23A2A8);
  }

  return result;
}

uint64_t DetectFaceLandmarksRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectFaceLandmarksRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2358);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2360);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C1FF78();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C1FFCC();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for DetectFaceLandmarksRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C20398(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2348);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2350);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C1FF78();
  sub_1A5FD4CDC();
  sub_1A5C1FFCC();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectFaceLandmarksRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5B2A848(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    v6 = v8[1];
    *(a2 + 8) = v8[0];
    *(a2 + 24) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = v5;
  }

  return result;
}

uint64_t DetectFaceLandmarksRequest.inputFaceObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 DetectFaceLandmarksRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectFaceLandmarksRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C206A8()
{
  sub_1A5B2A848();
  result = sub_1A5D4EB30();
  qword_1EB23A288 = result;
  return result;
}

uint64_t DetectFaceLandmarksRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5B2A848();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectFaceLandmarksRequest, v3);
}

uint64_t sub_1A5C20760()
{
  sub_1A5B2A848();
  result = sub_1A5D4EC2C();
  qword_1EB23A298 = result;
  return result;
}

uint64_t DetectFaceLandmarksRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v14 = *(v1 + 3);
  v15 = v8;
  v9 = v1[6];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      do
      {
        sub_1A5B0F60C(v11, v6);
        sub_1A5B102F8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
        sub_1A5FD3CBC();
        sub_1A5B0F670(v6);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  v16 = v15;
  v17 = v14;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  return sub_1A5B0ED0C(a1, v9);
}

uint64_t DetectFaceLandmarksRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = v0[6];
  v6 = *v0;
  v3 = *(v0 + 3);
  v7 = *(v0 + 1);
  v8 = v3;
  v9 = v1;
  v10 = v2;
  sub_1A5FD4C1C();
  DetectFaceLandmarksRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C20A28(uint64_t a1)
{
  v2 = sub_1A5C2100C();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C20A64(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B2A848();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C20AC4(uint64_t a1)
{
  v2 = sub_1A5B5EC20();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C20B00()
{
  v1 = *(v0 + 40);
  v2 = v0[6];
  v6 = *v0;
  v3 = *(v0 + 3);
  v7 = *(v0 + 1);
  v8 = v3;
  v9 = v1;
  v10 = v2;
  sub_1A5FD4C1C();
  DetectFaceLandmarksRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C20B6C()
{
  v1 = *(v0 + 40);
  v2 = v0[6];
  v6 = *v0;
  v3 = *(v0 + 3);
  v7 = *(v0 + 1);
  v8 = v3;
  v9 = v1;
  v10 = v2;
  sub_1A5FD4C1C();
  DetectFaceLandmarksRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C20BD0@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v8 = 6;
    DetectFaceRectanglesRequest.init(_:)(&v8, &v9);
    v6 = *(v1 + 8);
    v10 = *(v1 + 24);
    v9 = v6;
    v4 = sub_1A5B0F5B8();
    result = swift_allocObject();
    v7 = v10;
    *(result + 16) = v9;
    *(result + 32) = v7;
    *(result + 48) = v11;
    *(result + 64) = v12;
    v3 = &type metadata for DetectFaceRectanglesRequest;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A5C20CA8(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EC20();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C20CF8@<D0>(uint64_t a1@<X8>)
{
  *&v6[0] = 0;
  static NormalizedRect.fullImage.getter((v6 + 8));
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v3 = v7;
  result = 0.0;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  return result;
}

unint64_t sub_1A5C20D50(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v24 = *v1;
  v5 = *(v1 + 24);
  v25 = *(v1 + 8);
  v27 = *(&v5 + 1);
  v28 = v3;
  v29 = v4;
  v6 = sub_1A5C2100C();
  v7 = sub_1A5BDA35C(a1, &type metadata for DetectFaceLandmarksRequest, v6);
  v8 = sub_1A5FD3D5C();
  v10 = v9;
  v11 = MEMORY[0x1E69E6370];
  v26 = MEMORY[0x1E69E6370];
  LOBYTE(v24) = v3;
  sub_1A5B101C8(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v23, v8, v10, isUniquelyReferenced_nonNull_native);

  v13 = sub_1A5FD3D5C();
  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v26 = sub_1A5BBE7F8();
  v24 = v16;
  sub_1A5B101C8(&v24, v23);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v23, v13, v15, v17);

  v18 = sub_1A5FD3D5C();
  v20 = v19;
  v26 = v11;
  LOBYTE(v24) = v3;
  sub_1A5B101C8(&v24, v23);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v23, v18, v20, v21);

  return v7;
}

__n128 sub_1A5C20F14(uint64_t a1, void *a2)
{
  sub_1A5D08748(a2, v13);
  v9 = v13[1];
  v10 = v13[0];
  v7 = v13[3];
  v8 = v13[2];
  v3 = v14;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v12 = *(a1 + 64);
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  sub_1A5C21060(v11);
  *a1 = v10;
  *(a1 + 16) = v9;
  result = v8;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 64) = v3;
  return result;
}

unint64_t sub_1A5C2100C()
{
  result = qword_1EB1F2368;
  if (!qword_1EB1F2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2368);
  }

  return result;
}

uint64_t sub_1A5C21060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5C210C8()
{
  result = qword_1EB1F2378;
  if (!qword_1EB1F2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2378);
  }

  return result;
}

unint64_t sub_1A5C21120(uint64_t a1)
{
  result = sub_1A5B5EC20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C21148(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6700C();
  result = sub_1A5C21178();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C21178()
{
  result = qword_1EB1F2380;
  if (!qword_1EB1F2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2380);
  }

  return result;
}

unint64_t sub_1A5C211D0()
{
  result = qword_1EB1F2388;
  if (!qword_1EB1F2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2388);
  }

  return result;
}

unint64_t sub_1A5C21228()
{
  result = qword_1EB1F2390;
  if (!qword_1EB1F2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2390);
  }

  return result;
}

unint64_t sub_1A5C2127C(uint64_t a1)
{
  result = sub_1A5B2A848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C212A4(uint64_t a1)
{
  result = sub_1A5C212CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C212CC()
{
  result = qword_1EB1F2398;
  if (!qword_1EB1F2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2398);
  }

  return result;
}

unint64_t sub_1A5C21364()
{
  result = qword_1EB23AB30[0];
  if (!qword_1EB23AB30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23AB30);
  }

  return result;
}

unint64_t sub_1A5C213BC()
{
  result = qword_1EB23AC40;
  if (!qword_1EB23AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23AC40);
  }

  return result;
}

unint64_t sub_1A5C21414()
{
  result = qword_1EB23AC48[0];
  if (!qword_1EB23AC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23AC48);
  }

  return result;
}

unint64_t sub_1A5C2146C()
{
  result = qword_1EB23ACD0;
  if (!qword_1EB23ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23ACD0);
  }

  return result;
}

unint64_t sub_1A5C214C4()
{
  result = qword_1EB23ACD8[0];
  if (!qword_1EB23ACD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23ACD8);
  }

  return result;
}

uint64_t sub_1A5C21530(uint64_t a1)
{
  v2 = sub_1A5C217F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2156C(uint64_t a1)
{
  v2 = sub_1A5C217F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C215A8(uint64_t a1)
{
  v2 = sub_1A5C2184C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C215E4(uint64_t a1)
{
  v2 = sub_1A5C2184C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateAttentionBasedSaliencyImageRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C217F8();
  sub_1A5FD4CDC();
  sub_1A5C2184C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C217F8()
{
  result = qword_1EB23AD80;
  if (!qword_1EB23AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23AD80);
  }

  return result;
}

unint64_t sub_1A5C2184C()
{
  result = qword_1EB23AD88[0];
  if (!qword_1EB23AD88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23AD88);
  }

  return result;
}

uint64_t GenerateAttentionBasedSaliencyImageRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateAttentionBasedSaliencyImageRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23B0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23B8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C217F8();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C2184C();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for GenerateAttentionBasedSaliencyImageRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C21C18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C217F8();
  sub_1A5FD4CDC();
  sub_1A5C2184C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateAttentionBasedSaliencyImageRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5C223E4(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    a2[2].n128_u64[0] = v5;
  }

  return result;
}

__n128 GenerateAttentionBasedSaliencyImageRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 GenerateAttentionBasedSaliencyImageRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5C21EB4()
{
  sub_1A5C223E4();
  result = sub_1A5D4EB30();
  qword_1EB23AD68 = result;
  return result;
}

uint64_t GenerateAttentionBasedSaliencyImageRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C223E4();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateAttentionBasedSaliencyImageRequest, v3);
}

uint64_t sub_1A5C21F6C()
{
  sub_1A5C223E4();
  result = sub_1A5D4EC2C();
  qword_1EB23AD78 = result;
  return result;
}

uint64_t static GenerateAttentionBasedSaliencyImageRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v8.origin = *a1;
  v8.size = v4;
  v5 = *(a2 + 16);
  v7.origin = *a2;
  v7.size = v5;
  if (!static NormalizedRect.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v2, v3);
}

uint64_t GenerateAttentionBasedSaliencyImageRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t GenerateAttentionBasedSaliencyImageRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C22130(uint64_t a1)
{
  v2 = sub_1A5C22614();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C2216C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C223E4();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C221CC(uint64_t a1)
{
  v2 = sub_1A5B5E994();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C22208(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E994();

  return sub_1A5D4E6C8(a1, a2);
}

void sub_1A5C22254(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorImageSaliencyAConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F23C8);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

unint64_t sub_1A5C223E4()
{
  result = qword_1EB1F23C0;
  if (!qword_1EB1F23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F23C0);
  }

  return result;
}

unint64_t sub_1A5C22438()
{
  result = qword_1EB1F23D0;
  if (!qword_1EB1F23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F23D0);
  }

  return result;
}

unint64_t sub_1A5C22490(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66CC4();
  result = sub_1A5C224C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C224C0()
{
  result = qword_1EB1F23D8;
  if (!qword_1EB1F23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F23D8);
  }

  return result;
}

unint64_t sub_1A5C22518()
{
  result = qword_1EB1F23E0;
  if (!qword_1EB1F23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F23E0);
  }

  return result;
}

unint64_t sub_1A5C22570()
{
  result = qword_1EB1F23E8;
  if (!qword_1EB1F23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F23E8);
  }

  return result;
}

unint64_t sub_1A5C225C4(uint64_t a1)
{
  result = sub_1A5B5E994();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C225EC(uint64_t a1)
{
  result = sub_1A5C22614();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C22614()
{
  result = qword_1EB1F23F0;
  if (!qword_1EB1F23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F23F0);
  }

  return result;
}

unint64_t sub_1A5C226B0(uint64_t a1)
{
  result = sub_1A5C223E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C226D8(uint64_t a1)
{
  result = sub_1A5C22700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C22700()
{
  result = qword_1EB1F2400;
  if (!qword_1EB1F2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2400);
  }

  return result;
}

unint64_t sub_1A5C22798()
{
  result = qword_1EB23B690[0];
  if (!qword_1EB23B690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23B690);
  }

  return result;
}

unint64_t sub_1A5C227F0()
{
  result = qword_1EB23B7A0;
  if (!qword_1EB23B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23B7A0);
  }

  return result;
}

unint64_t sub_1A5C22848()
{
  result = qword_1EB23B7A8[0];
  if (!qword_1EB23B7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23B7A8);
  }

  return result;
}

unint64_t sub_1A5C228A0()
{
  result = qword_1EB23B830;
  if (!qword_1EB23B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23B830);
  }

  return result;
}

unint64_t sub_1A5C228F8()
{
  result = qword_1EB23B838[0];
  if (!qword_1EB23B838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23B838);
  }

  return result;
}

uint64_t sub_1A5C2294C(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall AnimalBodyPoseObservation.joint(for:)(Vision::Joint_optional *__return_ptr retstr, Vision::AnimalBodyPoseObservation::JointName a2)
{
  v3 = a2;
  v5 = *(v2 + *(type metadata accessor for AnimalBodyPoseObservation() + 32));
  if (*(v5 + 16) && (v6 = sub_1A5C264B8(*v3), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    v11 = *(v8 + 32);
    retstr->value.location = *v8;
    retstr->value.jointName._countAndFlagsBits = v10;
    retstr->value.jointName._object = v9;
    retstr->value.confidence = v11;
  }

  else
  {
    retstr->value.confidence = 0.0;
    retstr->value.location = 0u;
    retstr->value.jointName = 0u;
  }
}

uint64_t type metadata accessor for AnimalBodyPoseObservation()
{
  result = qword_1EB23C1E0;
  if (!qword_1EB23C1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnimalBodyPoseObservation.allJoints(in:)(char *a1)
{
  v4 = *a1;
  v1 = type metadata accessor for AnimalBodyPoseObservation();
  v2 = sub_1A5C27354(&qword_1EB1F2408, type metadata accessor for AnimalBodyPoseObservation);
  return sub_1A5C054A8(&v4, v1, v2);
}

void *AnimalBodyPoseObservation.availableJointNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnimalBodyPoseObservation() + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A5C272E0(*(v1 + 16), 0);
  v4 = sub_1A5B2E2F8(&v6, v3 + 32, v2, v1);

  sub_1A5B2E3F4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t AnimalBodyPoseObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 AnimalBodyPoseObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnimalBodyPoseObservation() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t AnimalBodyPoseObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AnimalBodyPoseObservation();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AnimalBodyPoseObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000025, 0x80000001A60563C0);
  v0 = type metadata accessor for AnimalBodyPoseObservation();
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x2C73746E696F6A20, 0xE900000000000020);
  v2 = sub_1A5C27354(&qword_1EB1F2410, type metadata accessor for AnimalBodyPoseObservation);
  v3 = sub_1A5C29408(v0, &off_1F195ED18, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

Vision::AnimalBodyPoseObservation::JointName_optional __swiftcall AnimalBodyPoseObservation.JointName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD4B2C();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t AnimalBodyPoseObservation.JointName.rawValue.getter()
{
  result = 0x547261457466656CLL;
  switch(*v0)
  {
    case 1:
      result = 0x4D7261457466656CLL;
      break;
    case 2:
      result = 0x427261457466656CLL;
      break;
    case 3:
      result = 0x6579457466656CLL;
      break;
    case 4:
      result = 1801676142;
      break;
    case 5:
      result = 1702063982;
      break;
    case 6:
      result = 0x6579457468676972;
      break;
    case 7:
    case 8:
    case 9:
      result = 0x7261457468676972;
      break;
    case 0xA:
    case 0xE:
    case 0x12:
      result = 0x6B6361427466656CLL;
      break;
    case 0xB:
      result = 0x6E6F72467466656CLL;
      break;
    case 0xC:
    case 0x11:
    case 0x15:
      result = 0x6F72467468676972;
      break;
    case 0xD:
      result = 0x6361427468676972;
      break;
    case 0xF:
      result = 0x6E6F72467466656CLL;
      break;
    case 0x10:
      result = 0x6361427468676972;
      break;
    case 0x13:
      result = 0x6E6F72467466656CLL;
      break;
    case 0x14:
      result = 0x6361427468676972;
      break;
    case 0x16:
      result = 0x706F546C696174;
      break;
    case 0x17:
      result = 0x6464694D6C696174;
      break;
    case 0x18:
      result = 0x74746F426C696174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5C23254()
{
  v0 = AnimalBodyPoseObservation.JointName.rawValue.getter();
  v2 = v1;
  if (v0 == AnimalBodyPoseObservation.JointName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A5FD4B0C();
  }

  return v5 & 1;
}

uint64_t sub_1A5C232F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684104552;
    }

    else
    {
      v4 = 0x7367656C65726F66;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x7367656C646E6968;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1818845556;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6B6E757274;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684104552;
    }

    else
    {
      v9 = 0x7367656C65726F66;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1818845556;
    if (a2 != 3)
    {
      v6 = 0x6B6E757274;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7367656C646E6968;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A5FD4B0C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A5C23460@<X0>(uint64_t *a1@<X8>)
{
  result = AnimalBodyPoseObservation.JointName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5C23488()
{
  sub_1A5FD4C1C();
  AnimalBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C234F0()
{
  AnimalBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C23554()
{
  sub_1A5FD4C1C();
  AnimalBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

Vision::AnimalBodyPoseObservation::JointsGroupName_optional __swiftcall AnimalBodyPoseObservation.JointsGroupName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AnimalBodyPoseObservation.JointsGroupName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7367656C65726F66;
  v3 = 0x7367656C646E6968;
  v4 = 1818845556;
  if (v1 != 3)
  {
    v4 = 0x6B6E757274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684104552;
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

void sub_1A5C23764(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7367656C65726F66;
  v5 = 0xE800000000000000;
  v6 = 0x7367656C646E6968;
  v7 = 0xE400000000000000;
  v8 = 1818845556;
  if (v2 != 3)
  {
    v8 = 0x6B6E757274;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684104552;
    v3 = 0xE400000000000000;
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

uint64_t sub_1A5C23800()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C238D0()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C2398C()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C23A5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = *(*(v2 + 48) + (v8 | (v3 << 6)));
    if (!)
    {
      return 1;
    }

    sub_1A5C264B8(v11);
    if ((v12 & 1) == 0)
    {

      return 0;
    }

    sub_1A5B23E90();

    v13 = sub_1A5FD3D0C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnimalBodyPoseObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for AnimalBodyPoseObservation();
  sub_1A5C27354(&qword_1EB1F2418, type metadata accessor for AnimalBodyPoseObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C23CB0(char *a1, uint64_t a2)
{
  v5 = *a1;
  v3 = sub_1A5C27354(&qword_1EB1F2408, type metadata accessor for AnimalBodyPoseObservation);
  return sub_1A5C054A8(&v5, a2, v3);
}

uint64_t sub_1A5C23D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C27354(&qword_1EB1F2410, type metadata accessor for AnimalBodyPoseObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5C23DA8()
{
  if (*v0)
  {
    return 0x746E696F4A6C6C61;
  }

  else
  {
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5C23DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E696F4A6C6C61 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C23ED8(uint64_t a1)
{
  v2 = sub_1A5C274DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C23F14(uint64_t a1)
{
  v2 = sub_1A5C274DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimalBodyPoseObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v36 = sub_1A5FD367C();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2420);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AnimalBodyPoseObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A5C274DC();
  v14 = v37;
  sub_1A5FD4CCC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v37 = v10;
  v29 = v4;
  v30 = v6;
  v16 = v34;
  v15 = v35;
  v17 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2428);
  v39 = 1;
  sub_1A5C27644(&qword_1EB1F2430, sub_1A5C27530, sub_1A5BC4878);
  v18 = v9;
  sub_1A5FD497C();
  v19 = v42;
  *&v12[v37[8]] = v42;
  LOBYTE(v42) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v27 = v19;
  v28 = v18;
  LOBYTE(v42) = 0;
  sub_1A5C27354(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v32 + 32))(v12, v15, v17);
  LOBYTE(v42) = 1;
  sub_1A5FD495C();
  *&v12[v37[5]] = v20;
  v39 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v21 = v33;
  v22 = v37;
  *&v12[v37[7]] = v42;
  v23 = v30;
  sub_1A5BBDB04(v40);
  (*(v21 + 8))(v23, v29);
  (*(v16 + 8))(v28, v7);
  v24 = &v12[v22[6]];
  v25 = v40[1];
  *v24 = v40[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v40[2];
  v24[48] = v41;
  sub_1A5C27584(v12, v31);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1A5C275E8(v12);
}

uint64_t AnimalBodyPoseObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2440);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C274DC();
  sub_1A5FD4CDC();
  v12 = type metadata accessor for AnimalBodyPoseObservation();
  v20 = *(v3 + *(v12 + 32));
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2428);
  sub_1A5C27644(&qword_1EB1F2448, sub_1A5C276D4, sub_1A5BC4A74);
  sub_1A5FD4A5C();
  if (!v2)
  {
    v18 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v13 = sub_1A5C27354(&qword_1EB1F2410, type metadata accessor for AnimalBodyPoseObservation);
    sub_1A5BBD46C(v7, v12, &off_1F195ED18, v13);
    (*(v16 + 8))(v7, v17);
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_1A5C24860(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for AnimalBodyPoseObservation() + 28));
  if (v3 > 0xFFF7 || v3 >> 3 != 5)
  {
    return 0;
  }

  v4 = &unk_1F195EC00;
  v5 = &unk_1F195EC58;
  v6 = &unk_1F195EC80;
  if (v2 != 3)
  {
    v6 = &unk_1F195ECA8;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (v2)
  {
    v4 = &unk_1F195EC28;
  }

  if (v2 <= 1)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

int *sub_1A5C24904@<X0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = sub_1A5C27728(MEMORY[0x1E69E7CC0]);
  v9 = [a1 availableJointNames];
  _s3__C9JointNameVMa_1(0);
  v10 = sub_1A5FD3F4C();

  v59 = *(v10 + 16);
  if (!v59)
  {

    goto LABEL_22;
  }

  v54 = v7;
  v55 = a3;
  v56 = a4;
  v11 = 0;
  v12 = *(v10 + 16);
  v57 = v10;
  v58 = a1;
  do
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v15 = *(v10 + 8 * v11 + 32);
    *&v61 = 0;
    v16 = v15;
    v17 = [a1 recognizedPointForJointName:v16 error:&v61];
    v18 = v61;
    if (!v17)
    {
      v13 = v61;
      v14 = sub_1A5FD348C();

      swift_willThrow();
      goto LABEL_4;
    }

    v19 = v17;
    v20 = v16;
    v21 = v18;
    sub_1A5C24CFC(v20, &v61);
    v22 = v61;
    if (v61 == 25)
    {

      goto LABEL_4;
    }

    [v19 location];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v24, v23));
    v60 = v61;
    v25 = AnimalBodyPoseObservation.JointName.rawValue.getter();
    v27 = v26;
    [v19 confidence];
    sub_1A5B23BA0(&v60, v25, v27, &v61, v28);
    v29 = v61;
    v31 = v62;
    v30 = v63;
    v32 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = v8;
    v34 = sub_1A5C264B8(v22);
    v36 = v8[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_24;
    }

    v40 = v35;
    if (v8[3] < v39)
    {
      sub_1A5C26BC4(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_1A5C264B8(v22);
      if ((v40 & 1) != (v41 & 1))
      {
        result = sub_1A5FD4B8C();
        __break(1u);
        return result;
      }

LABEL_14:
      v8 = v60;
      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v43 = v34;
    sub_1A5C27164();
    v34 = v43;
    v8 = v60;
    if ((v40 & 1) == 0)
    {
LABEL_17:
      v8[(v34 >> 6) + 8] |= 1 << v34;
      *(v8[6] + v34) = v22;
      v44 = v8[7] + 40 * v34;
      *v44 = v29;
      *(v44 + 16) = v31;
      *(v44 + 24) = v30;
      *(v44 + 32) = v32;

      v45 = v8[2];
      v38 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v8[2] = v46;
      goto LABEL_19;
    }

LABEL_15:
    v42 = v8[7] + 40 * v34;
    *v42 = v29;
    *(v42 + 16) = v31;
    *(v42 + 24) = v30;
    *(v42 + 32) = v32;

LABEL_19:
    v10 = v57;
    a1 = v58;
    v12 = v59;
LABEL_4:
    ++v11;
  }

  while (v12 != v11);

  a3 = v55;
  a4 = v56;
  v7 = v54;
LABEL_22:
  v47 = a1;
  v48 = [v47 uuid];
  sub_1A5FD365C();

  [v47 confidence];
  v50 = v49;

  result = type metadata accessor for AnimalBodyPoseObservation();
  *(a4 + result[5]) = v50;
  v51 = a4 + result[6];
  v52 = *(a3 + 16);
  *v51 = *a3;
  *(v51 + 16) = v52;
  *(v51 + 32) = *(a3 + 32);
  *(v51 + 48) = *(a3 + 48);
  *(a4 + result[7]) = v7;
  *(a4 + result[8]) = v8;
  return result;
}

void sub_1A5C24CFC(void *a1@<X0>, char *a2@<X8>)
{
  sub_1A5FD3D5C();
  v4 = a1;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v7 = sub_1A5FD3D5C();
  v9 = v8;
  if (v7 == sub_1A5FD3D5C() && v9 == v10)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v12 = sub_1A5FD4B0C();

  v13 = 0;
  if (v12)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1A5FD3D5C();
  v14 = v4;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v15 = sub_1A5FD3D5C();
  v17 = v16;
  if (v15 == sub_1A5FD3D5C() && v17 == v18)
  {
    v13 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v19 = sub_1A5FD4B0C();

  if (v19)
  {
    v13 = 1;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v20 = v14;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v21 = sub_1A5FD3D5C();
  v23 = v22;
  if (v21 == sub_1A5FD3D5C() && v23 == v24)
  {
    v13 = 2;
    goto LABEL_10;
  }

  v25 = sub_1A5FD4B0C();

  if (v25)
  {
    v13 = 2;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v26 = v20;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v27 = sub_1A5FD3D5C();
  v29 = v28;
  if (v27 == sub_1A5FD3D5C() && v29 == v30)
  {
    v13 = 3;
    goto LABEL_10;
  }

  v31 = sub_1A5FD4B0C();

  if (v31)
  {
    v13 = 3;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v32 = v26;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v33 = sub_1A5FD3D5C();
  v35 = v34;
  if (v33 == sub_1A5FD3D5C() && v35 == v36)
  {
    v13 = 4;
    goto LABEL_10;
  }

  v37 = sub_1A5FD4B0C();

  if (v37)
  {
    v13 = 4;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v38 = v32;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v39 = sub_1A5FD3D5C();
  v41 = v40;
  if (v39 == sub_1A5FD3D5C() && v41 == v42)
  {
    v13 = 5;
    goto LABEL_10;
  }

  v43 = sub_1A5FD4B0C();

  if (v43)
  {
    v13 = 5;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v44 = v38;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v45 = sub_1A5FD3D5C();
  v47 = v46;
  if (v45 == sub_1A5FD3D5C() && v47 == v48)
  {
    v13 = 6;
    goto LABEL_10;
  }

  v49 = sub_1A5FD4B0C();

  if (v49)
  {
    v13 = 6;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v50 = v44;
  v51 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v52 = sub_1A5FD3D2C();

  v53 = sub_1A5FD3D5C();
  v55 = v54;
  if (v53 == sub_1A5FD3D5C() && v55 == v56)
  {

LABEL_44:

    v13 = 7;
    goto LABEL_12;
  }

  v57 = sub_1A5FD4B0C();

  if (v57)
  {
    goto LABEL_44;
  }

  sub_1A5FD3D5C();
  v58 = v50;
  v59 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v60 = sub_1A5FD3D2C();

  v61 = sub_1A5FD3D5C();
  v63 = v62;
  if (v61 == sub_1A5FD3D5C() && v63 == v64)
  {

LABEL_49:

    v13 = 8;
    goto LABEL_12;
  }

  v65 = sub_1A5FD4B0C();

  if (v65)
  {
    goto LABEL_49;
  }

  sub_1A5FD3D5C();
  v66 = v58;
  v67 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v68 = sub_1A5FD3D2C();

  v69 = sub_1A5FD3D5C();
  v71 = v70;
  if (v69 == sub_1A5FD3D5C() && v71 == v72)
  {

LABEL_54:

    v13 = 9;
    goto LABEL_12;
  }

  v73 = sub_1A5FD4B0C();

  if (v73)
  {
    goto LABEL_54;
  }

  sub_1A5FD3D5C();
  v74 = v66;
  v75 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v76 = sub_1A5FD3D2C();

  v77 = sub_1A5FD3D5C();
  v79 = v78;
  if (v77 == sub_1A5FD3D5C() && v79 == v80)
  {

LABEL_59:

    v13 = 10;
    goto LABEL_12;
  }

  v81 = sub_1A5FD4B0C();

  if (v81)
  {
    goto LABEL_59;
  }

  sub_1A5FD3D5C();
  v82 = v74;
  v83 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v84 = sub_1A5FD3D2C();

  v85 = sub_1A5FD3D5C();
  v87 = v86;
  if (v85 == sub_1A5FD3D5C() && v87 == v88)
  {

LABEL_64:

    v13 = 11;
    goto LABEL_12;
  }

  v89 = sub_1A5FD4B0C();

  if (v89)
  {
    goto LABEL_64;
  }

  sub_1A5FD3D5C();
  v90 = v82;
  v91 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v92 = sub_1A5FD3D2C();

  v93 = sub_1A5FD3D5C();
  v95 = v94;
  if (v93 == sub_1A5FD3D5C() && v95 == v96)
  {

LABEL_69:

    v13 = 12;
    goto LABEL_12;
  }

  v97 = sub_1A5FD4B0C();

  if (v97)
  {
    goto LABEL_69;
  }

  sub_1A5FD3D5C();
  v98 = v90;
  v99 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v100 = sub_1A5FD3D2C();

  v101 = sub_1A5FD3D5C();
  v103 = v102;
  if (v101 == sub_1A5FD3D5C() && v103 == v104)
  {

LABEL_74:

    v13 = 13;
    goto LABEL_12;
  }

  v105 = sub_1A5FD4B0C();

  if (v105)
  {
    goto LABEL_74;
  }

  sub_1A5FD3D5C();
  v106 = v98;
  v107 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v108 = sub_1A5FD3D2C();

  v109 = sub_1A5FD3D5C();
  v111 = v110;
  if (v109 == sub_1A5FD3D5C() && v111 == v112)
  {

LABEL_79:

    v13 = 14;
    goto LABEL_12;
  }

  v113 = sub_1A5FD4B0C();

  if (v113)
  {
    goto LABEL_79;
  }

  sub_1A5FD3D5C();
  v114 = v106;
  v115 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v116 = sub_1A5FD3D2C();

  v117 = sub_1A5FD3D5C();
  v119 = v118;
  if (v117 == sub_1A5FD3D5C() && v119 == v120)
  {

LABEL_84:

    v13 = 15;
    goto LABEL_12;
  }

  v121 = sub_1A5FD4B0C();

  if (v121)
  {
    goto LABEL_84;
  }

  sub_1A5FD3D5C();
  v122 = v114;
  v123 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v124 = sub_1A5FD3D2C();

  v125 = sub_1A5FD3D5C();
  v127 = v126;
  if (v125 == sub_1A5FD3D5C() && v127 == v128)
  {

LABEL_89:

    v13 = 16;
    goto LABEL_12;
  }

  v129 = sub_1A5FD4B0C();

  if (v129)
  {
    goto LABEL_89;
  }

  sub_1A5FD3D5C();
  v130 = v122;
  v131 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v132 = sub_1A5FD3D2C();

  v133 = sub_1A5FD3D5C();
  v135 = v134;
  if (v133 == sub_1A5FD3D5C() && v135 == v136)
  {

LABEL_94:

    v13 = 17;
    goto LABEL_12;
  }

  v137 = sub_1A5FD4B0C();

  if (v137)
  {
    goto LABEL_94;
  }

  sub_1A5FD3D5C();
  v138 = v130;
  v139 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v140 = sub_1A5FD3D2C();

  v141 = sub_1A5FD3D5C();
  v143 = v142;
  if (v141 == sub_1A5FD3D5C() && v143 == v144)
  {

LABEL_99:

    v13 = 18;
    goto LABEL_12;
  }

  v145 = sub_1A5FD4B0C();

  if (v145)
  {
    goto LABEL_99;
  }

  sub_1A5FD3D5C();
  v146 = v138;
  v147 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v148 = sub_1A5FD3D2C();

  v149 = sub_1A5FD3D5C();
  v151 = v150;
  if (v149 == sub_1A5FD3D5C() && v151 == v152)
  {

LABEL_104:

    v13 = 19;
    goto LABEL_12;
  }

  v153 = sub_1A5FD4B0C();

  if (v153)
  {
    goto LABEL_104;
  }

  sub_1A5FD3D5C();
  v154 = v146;
  v155 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v156 = sub_1A5FD3D2C();

  v157 = sub_1A5FD3D5C();
  v159 = v158;
  if (v157 == sub_1A5FD3D5C() && v159 == v160)
  {

LABEL_109:

    v13 = 20;
    goto LABEL_12;
  }

  v161 = sub_1A5FD4B0C();

  if (v161)
  {
    goto LABEL_109;
  }

  sub_1A5FD3D5C();
  v162 = v154;
  v163 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v164 = sub_1A5FD3D2C();

  v165 = sub_1A5FD3D5C();
  v167 = v166;
  if (v165 == sub_1A5FD3D5C() && v167 == v168)
  {

LABEL_114:

    v13 = 21;
    goto LABEL_12;
  }

  v169 = sub_1A5FD4B0C();

  if (v169)
  {
    goto LABEL_114;
  }

  sub_1A5FD3D5C();
  v170 = v162;
  v171 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v172 = sub_1A5FD3D2C();

  v173 = sub_1A5FD3D5C();
  v175 = v174;
  if (v173 == sub_1A5FD3D5C() && v175 == v176)
  {

LABEL_119:

    v13 = 22;
    goto LABEL_12;
  }

  v177 = sub_1A5FD4B0C();

  if (v177)
  {
    goto LABEL_119;
  }

  sub_1A5FD3D5C();
  v178 = v170;
  v179 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v180 = sub_1A5FD3D2C();

  v181 = sub_1A5FD3D5C();
  v183 = v182;
  if (v181 == sub_1A5FD3D5C() && v183 == v184)
  {

LABEL_124:

    v13 = 23;
    goto LABEL_12;
  }

  v185 = sub_1A5FD4B0C();

  if (v185)
  {
    goto LABEL_124;
  }

  sub_1A5FD3D5C();
  v186 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v187 = sub_1A5FD3D2C();

  v188 = sub_1A5FD3D5C();
  v190 = v189;
  if (v188 == sub_1A5FD3D5C() && v190 == v191)
  {

    v13 = 24;
  }

  else
  {
    v192 = sub_1A5FD4B0C();

    if (v192)
    {
      v13 = 24;
    }

    else
    {
      v13 = 25;
    }
  }

LABEL_12:
  *a2 = v13;
}

int *AnimalBodyPoseObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = -8;
  [a1 timeRange];
  v8 = 0;
  return sub_1A5C24904(a1, &v6, &v7, a2);
}

uint64_t sub_1A5C263C8(uint64_t a1)
{
  v2 = sub_1A5C27354(&qword_1EB1F24D0, _s3__C9JointNameVMa_1);
  v3 = sub_1A5C27354(&qword_1EB1F4000, _s3__C9JointNameVMa_1);
  v4 = sub_1A5C27354(&qword_1EB1F3FE0, type metadata accessor for VNRecognizedPointKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1A5C264B8(char a1)
{
  sub_1A5FD4C1C();
  AnimalBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  v2 = sub_1A5FD4C6C();

  return sub_1A5C26544(a1, v2);
}

unint64_t sub_1A5C26544(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA0000000000706FLL;
      v8 = 0x547261457466656CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x4D7261457466656CLL;
          v9 = 1818518633;
          goto LABEL_6;
        case 2:
          v8 = 0x427261457466656CLL;
          v7 = 0xED00006D6F74746FLL;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x6579457466656CLL;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1801676142;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1702063982;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x6579457468676972;
          break;
        case 7:
          v7 = 0xEB00000000706F54;
          goto LABEL_29;
        case 8:
          v11 = 0x656C6464694DLL;
          goto LABEL_28;
        case 9:
          v11 = 0x6D6F74746F42;
LABEL_28:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_29:
          v8 = 0x7261457468676972;
          break;
        case 0xA:
          v7 = 0xED0000776F626C45;
          goto LABEL_26;
        case 0xB:
          v10 = 0xEE00776F626C456BLL;
          goto LABEL_32;
        case 0xC:
          v7 = 0xEF776F626C45746ELL;
          goto LABEL_21;
        case 0xD:
          v8 = 0x6361427468676972;
          v7 = 0xEE00776F626C456BLL;
          break;
        case 0xE:
          v7 = 0xEC00000065656E4BLL;
          goto LABEL_26;
        case 0xF:
          v10 = 0xED000065656E4B6BLL;
          goto LABEL_32;
        case 0x10:
          v8 = 0x6361427468676972;
          v9 = 1701727083;
LABEL_6:
          v7 = v9 | 0xED00006500000000;
          break;
        case 0x11:
          v7 = 0xEE0065656E4B746ELL;
          goto LABEL_21;
        case 0x12:
          v7 = 0xEB00000000776150;
LABEL_26:
          v8 = 0x6B6361427466656CLL;
          break;
        case 0x13:
          v10 = 0xEC0000007761506BLL;
LABEL_32:
          v7 = v10 + 9;
          v8 = 0x6E6F72467466656CLL;
          break;
        case 0x14:
          v8 = 0x6361427468676972;
          v7 = 0xEC0000007761506BLL;
          break;
        case 0x15:
          v7 = 0xED0000776150746ELL;
LABEL_21:
          v8 = 0x6F72467468676972;
          break;
        case 0x16:
          v7 = 0xE700000000000000;
          v8 = 0x706F546C696174;
          break;
        case 0x17:
          v8 = 0x6464694D6C696174;
          v7 = 0xEA0000000000656CLL;
          break;
        case 0x18:
          v8 = 0x74746F426C696174;
          v7 = 0xEA00000000006D6FLL;
          break;
        default:
          break;
      }

      v12 = 0xEA0000000000706FLL;
      v13 = 0x547261457466656CLL;
      switch(a1)
      {
        case 1:
          v14 = 0x4D7261457466656CLL;
          v15 = 1818518633;
          goto LABEL_37;
        case 2:
          v14 = 0x427261457466656CLL;
          v16 = 0x6D6F74746FLL;
          goto LABEL_47;
        case 3:
          v12 = 0xE700000000000000;
          if (v8 != 0x6579457466656CLL)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 4:
          v12 = 0xE400000000000000;
          if (v8 != 1801676142)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 5:
          v12 = 0xE400000000000000;
          if (v8 != 1702063982)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 6:
          v12 = 0xE800000000000000;
          if (v8 != 0x6579457468676972)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 7:
          v12 = 0xEB00000000706F54;
          goto LABEL_71;
        case 8:
          v18 = 0x656C6464694DLL;
          goto LABEL_70;
        case 9:
          v18 = 0x6D6F74746F42;
LABEL_70:
          v12 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_71:
          if (v8 != 0x7261457468676972)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 10:
          v12 = 0xED0000776F626C45;
          goto LABEL_67;
        case 11:
          v17 = 0xEE00776F626C456BLL;
          goto LABEL_76;
        case 12:
          v12 = 0xEF776F626C45746ELL;
          goto LABEL_59;
        case 13:
          v12 = 0xEE00776F626C456BLL;
          if (v8 != 0x6361427468676972)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 14:
          v12 = 0xEC00000065656E4BLL;
          goto LABEL_67;
        case 15:
          v17 = 0xED000065656E4B6BLL;
          goto LABEL_76;
        case 16:
          v14 = 0x6361427468676972;
          v15 = 1701727083;
LABEL_37:
          v16 = v15 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_47:
          v12 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v14)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 17:
          v12 = 0xEE0065656E4B746ELL;
          goto LABEL_59;
        case 18:
          v12 = 0xEB00000000776150;
LABEL_67:
          if (v8 != 0x6B6361427466656CLL)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 19:
          v17 = 0xEC0000007761506BLL;
LABEL_76:
          v12 = v17 + 9;
          v13 = 0x6E6F72467466656CLL;
          goto LABEL_77;
        case 20:
          v12 = 0xEC0000007761506BLL;
          if (v8 != 0x6361427468676972)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 21:
          v12 = 0xED0000776150746ELL;
LABEL_59:
          if (v8 != 0x6F72467468676972)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 22:
          v12 = 0xE700000000000000;
          if (v8 != 0x706F546C696174)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 23:
          v12 = 0xEA0000000000656CLL;
          if (v8 != 0x6464694D6C696174)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        case 24:
          v12 = 0xEA00000000006D6FLL;
          if (v8 != 0x74746F426C696174)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        default:
LABEL_77:
          if (v8 != v13)
          {
            goto LABEL_79;
          }

LABEL_78:
          if (v7 == v12)
          {

            return v4;
          }

LABEL_79:
          v19 = sub_1A5FD4B0C();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1A5C26BC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24D8);
  v34 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = *(v5 + 56) + 40 * v24;
      v36 = *v26;
      v27 = *(v26 + 24);
      v35 = *(v26 + 16);
      v28 = *(v26 + 32);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();

      result = sub_1A5FD4C6C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = (-1 << v16) & ~*(v14 + 8 * (v16 >> 6));
      if (!v18)
      {
        v29 = 0;
        v30 = (63 - v15) >> 6;
        while (++v17 != v30 || (v29 & 1) == 0)
        {
          v31 = v17 == v30;
          if (v17 == v30)
          {
            v17 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v17);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v17 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v18)) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v25;
      v20 = *(v7 + 56) + 40 * v19;
      *v20 = v36;
      *(v20 + 16) = v35;
      *(v20 + 24) = v27;
      *(v20 + 32) = v28;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A5C27164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24D8);
  v2 = *v0;
  v3 = sub_1A5FD485C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(v2 + 56) + 40 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        *(v23 + 24) = v19;
        *(v23 + 32) = v21;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A5C272E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A5C27354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s6Vision25AnimalBodyPoseObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A5FD364C() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = type metadata accessor for AnimalBodyPoseObservation();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    goto LABEL_14;
  }

  v5 = v4[6];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if (v6)
  {
    if (!*(v7 + 48))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(v7 + 48))
    {
      goto LABEL_14;
    }

    v8 = v4;
    v9 = sub_1A5FD42BC();
    v4 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 <= 0xFFF7)
  {
    if (v12 > 0xFFF7)
    {
      goto LABEL_14;
    }

    v13 = v4;
    sub_1A5B0BB44();
    v14 = sub_1A5FD3D0C();
    v4 = v13;
    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v12 <= 0xFFF7)
  {
LABEL_14:
    v15 = 0;
    return v15 & 1;
  }

  v15 = sub_1A5C23A5C(*(a1 + v4[8]), *(a2 + v4[8]));
  return v15 & 1;
}

unint64_t sub_1A5C274DC()
{
  result = qword_1EB23B8D0[0];
  if (!qword_1EB23B8D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23B8D0);
  }

  return result;
}

unint64_t sub_1A5C27530()
{
  result = qword_1EB1F2438;
  if (!qword_1EB1F2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2438);
  }

  return result;
}

uint64_t sub_1A5C27584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimalBodyPoseObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5C275E8(uint64_t a1)
{
  v2 = type metadata accessor for AnimalBodyPoseObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5C27644(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2428);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5C276D4()
{
  result = qword_1EB1F2450;
  if (!qword_1EB1F2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2450);
  }

  return result;
}

unint64_t sub_1A5C27728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24D8);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 72); ; i += 12)
    {
      v5 = *(i - 40);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;

      result = sub_1A5C264B8(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v13 = v3[7] + 40 * result;
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *(v13 + 32) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A5C27878()
{
  result = qword_1EB1F2458;
  if (!qword_1EB1F2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2458);
  }

  return result;
}

unint64_t sub_1A5C278D0()
{
  result = qword_1EB1F2460;
  if (!qword_1EB1F2460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2460);
  }

  return result;
}

unint64_t sub_1A5C27938()
{
  result = qword_1EB1F2470;
  if (!qword_1EB1F2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2470);
  }

  return result;
}

uint64_t sub_1A5C2798C(void *a1)
{
  a1[1] = sub_1A5C27354(&qword_1EB1F2478, type metadata accessor for AnimalBodyPoseObservation);
  a1[2] = sub_1A5C27354(&qword_1EB1F2480, type metadata accessor for AnimalBodyPoseObservation);
  a1[3] = sub_1A5C27354(&qword_1EB1F2488, type metadata accessor for AnimalBodyPoseObservation);
  result = sub_1A5C27354(&qword_1EB1F2418, type metadata accessor for AnimalBodyPoseObservation);
  a1[4] = result;
  return result;
}

unint64_t sub_1A5C27A6C()
{
  result = qword_1EB1F2490;
  if (!qword_1EB1F2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2490);
  }

  return result;
}

unint64_t sub_1A5C27AC4()
{
  result = qword_1EB1F2498;
  if (!qword_1EB1F2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2498);
  }

  return result;
}

unint64_t sub_1A5C27B1C()
{
  result = qword_1EB1F24A0;
  if (!qword_1EB1F24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F24A0);
  }

  return result;
}

unint64_t sub_1A5C27B74()
{
  result = qword_1EB1F24A8;
  if (!qword_1EB1F24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F24A8);
  }

  return result;
}

uint64_t sub_1A5C27C10(uint64_t a1)
{
  result = sub_1A5C27354(&qword_1EB1F24B0, type metadata accessor for AnimalBodyPoseObservation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5C27C68(uint64_t a1)
{
  result = sub_1A5C27354(&qword_1EB1F2410, type metadata accessor for AnimalBodyPoseObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C27CE8()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5BC5934(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5C27DC8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A5C27DC8()
{
  if (!qword_1EB1F24B8)
  {
    sub_1A5C27A6C();
    v0 = sub_1A5FD3C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F24B8);
    }
  }
}

unint64_t sub_1A5C27E60()
{
  result = qword_1EB23C2F0[0];
  if (!qword_1EB23C2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23C2F0);
  }

  return result;
}

unint64_t sub_1A5C27F90()
{
  result = qword_1EB23C580;
  if (!qword_1EB23C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23C580);
  }

  return result;
}

unint64_t sub_1A5C27FE8()
{
  result = qword_1EB23C588[0];
  if (!qword_1EB23C588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23C588);
  }

  return result;
}

uint64_t sub_1A5C2804C(uint64_t a1)
{
  v2 = sub_1A5C28314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C28088(uint64_t a1)
{
  v2 = sub_1A5C28314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C280C4(uint64_t a1)
{
  v2 = sub_1A5C28368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C28100(uint64_t a1)
{
  v2 = sub_1A5C28368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateForegroundInstanceMaskRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C28314();
  sub_1A5FD4CDC();
  sub_1A5C28368();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C28314()
{
  result = qword_1EB23C630;
  if (!qword_1EB23C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23C630);
  }

  return result;
}

unint64_t sub_1A5C28368()
{
  result = qword_1EB23C638[0];
  if (!qword_1EB23C638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23C638);
  }

  return result;
}

uint64_t GenerateForegroundInstanceMaskRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateForegroundInstanceMaskRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24F8);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2500);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C28314();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C28368();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for GenerateForegroundInstanceMaskRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C28734(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F24F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C28314();
  sub_1A5FD4CDC();
  sub_1A5C28368();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateForegroundInstanceMaskRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5C28DE0(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    a2[2].n128_u64[0] = v5;
  }

  return result;
}

__n128 GenerateForegroundInstanceMaskRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 GenerateForegroundInstanceMaskRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5C289D0()
{
  sub_1A5C28DE0();
  result = sub_1A5D4EB30();
  qword_1EB23C618 = result;
  return result;
}

uint64_t GenerateForegroundInstanceMaskRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C28DE0();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateForegroundInstanceMaskRequest, v3);
}

uint64_t sub_1A5C28A88()
{
  sub_1A5C28DE0();
  result = sub_1A5D4EC2C();
  qword_1EB23C628 = result;
  return result;
}

uint64_t static GenerateForegroundInstanceMaskRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v8.origin = *a1;
  v8.size = v4;
  v5 = *(a2 + 16);
  v7.origin = *a2;
  v7.size = v5;
  if (!static NormalizedRect.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v2, v3);
}

uint64_t GenerateForegroundInstanceMaskRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t GenerateForegroundInstanceMaskRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C28C4C(uint64_t a1)
{
  v2 = sub_1A5C29284();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C28C88(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C28DE0();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C28CE8(uint64_t a1)
{
  v2 = sub_1A5B5E8EC();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C28D4C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E8EC();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5C28DE0()
{
  result = qword_1EB1F2508;
  if (!qword_1EB1F2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2508);
  }

  return result;
}

unint64_t sub_1A5C28E34()
{
  result = qword_1EB1F2510;
  if (!qword_1EB1F2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2510);
  }

  return result;
}

unint64_t sub_1A5C28E8C(uint64_t a1)
{
  result = sub_1A5B5E8EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C28EB4(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66C1C();
  result = sub_1A5C28EE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C28EE4()
{
  result = qword_1EB1F2518;
  if (!qword_1EB1F2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2518);
  }

  return result;
}

unint64_t sub_1A5C28F3C()
{
  result = qword_1EB1F2520;
  if (!qword_1EB1F2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2520);
  }

  return result;
}

unint64_t sub_1A5C28F94()
{
  result = qword_1EB1F2528;
  if (!qword_1EB1F2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2528);
  }

  return result;
}

unint64_t sub_1A5C28FE8(uint64_t a1)
{
  result = sub_1A5C28DE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C29010(uint64_t a1)
{
  result = sub_1A5C29038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C29038()
{
  result = qword_1EB1F2530;
  if (!qword_1EB1F2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2530);
  }

  return result;
}

unint64_t sub_1A5C290D0()
{
  result = qword_1EB23CEC0[0];
  if (!qword_1EB23CEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23CEC0);
  }

  return result;
}

unint64_t sub_1A5C29128()
{
  result = qword_1EB23CFD0;
  if (!qword_1EB23CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23CFD0);
  }

  return result;
}

unint64_t sub_1A5C29180()
{
  result = qword_1EB23CFD8[0];
  if (!qword_1EB23CFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23CFD8);
  }

  return result;
}

unint64_t sub_1A5C291D8()
{
  result = qword_1EB23D060;
  if (!qword_1EB23D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23D060);
  }

  return result;
}

unint64_t sub_1A5C29230()
{
  result = qword_1EB23D068[0];
  if (!qword_1EB23D068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23D068);
  }

  return result;
}

unint64_t sub_1A5C29284()
{
  result = qword_1EB1F2538;
  if (!qword_1EB1F2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2538);
  }

  return result;
}

uint64_t VisionObservation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5FD367C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 40))(a2, a3);
  sub_1A5C296FC(&qword_1EB1EEA78);
  sub_1A5FD3CBC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A5C29408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5FD367C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &range - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.start.value = 0;
  *&v14.start.timescale = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x203A64697575, 0xE600000000000000);
  (*(a3 + 40))(a1, a3);
  sub_1A5C296FC(&qword_1EB1EE738);
  v9 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v9);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x1AC554600](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  (*(a3 + 48))(a1, a3);
  sub_1A5FD420C();
  v13 = *&v14.start.value;
  (*(a3 + 56))(&v14, a1, a3);
  if ((v15 & 1) == 0)
  {
    v16 = v14;
    MEMORY[0x1AC554600](0x6152656D6974202CLL, 0xED0000203A65676ELL);
    if (sub_1A5FD42FC())
    {
      if (sub_1A5FD42AC())
      {
        MEMORY[0x1AC554600](0x696E696665646E69, 0xEA00000000006574);
      }

      else
      {
        range = v14;
        range.start.value = CMTimeRangeCopyDescription(0, &range);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2540);
        v10 = sub_1A5FD3D7C();
        MEMORY[0x1AC554600](v10);
      }
    }

    else
    {
      MEMORY[0x1AC554600](0x64696C61766E69, 0xE700000000000000);
    }
  }

  return v13;
}

uint64_t sub_1A5C296FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A5FD367C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5C297BC(uint64_t a1)
{
  v2 = sub_1A5C29BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C297F8(uint64_t a1)
{
  v2 = sub_1A5C29BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C29834(uint64_t a1)
{
  v2 = sub_1A5C29C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C29870(uint64_t a1)
{
  v2 = sub_1A5C29C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C298AC(uint64_t a1)
{
  v2 = sub_1A5C29C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C298E8(uint64_t a1)
{
  v2 = sub_1A5C29C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeObjectsRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2548);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2550);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2558);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C29BD4();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C29C28();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C29C7C();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}