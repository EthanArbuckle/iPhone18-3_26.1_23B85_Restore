__n128 CalculateBlurScoreRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 CalculateBlurScoreRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1A5CD2394()
{
  sub_1A5CD2A88();
  result = sub_1A5D4EC2C();
  qword_1EB261BE8 = result;
  return result;
}

uint64_t static CalculateBlurScoreRequest.allSupportedRevisions.getter()
{
  if (qword_1EB261BE0 != -1)
  {
    swift_once();
  }
}

uint64_t CalculateBlurScoreRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CD2A88();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for CalculateBlurScoreRequest, v3);
}

uint64_t CalculateBlurScoreRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 6);
  MEMORY[0x1AC555420](*v1);
  MEMORY[0x1AC555420](v3);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t CalculateBlurScoreRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 6);
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  MEMORY[0x1AC555420](v2);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v5, v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CD25CC(uint64_t a1)
{
  v2 = sub_1A5CD33D8();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CD2608(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CD2A88();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CD2668(uint64_t a1)
{
  v2 = sub_1A5B5E508();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CD26A8(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 6);
  MEMORY[0x1AC555420](*v1);
  MEMORY[0x1AC555420](v3);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t sub_1A5CD273C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 6);
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  MEMORY[0x1AC555420](v2);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v5, v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CD2814(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E508();

  return sub_1A5D4E6C8(a1, a2);
}

__n128 sub_1A5CD2860@<Q0>(uint64_t a1@<X8>)
{
  *&v5[0] = 1024;
  static NormalizedRect.fullImage.getter((v5 + 8));
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v3 = v6;
  *a1 = 0;
  result = v5[1];
  *(a1 + 8) = v5[0];
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;
  return result;
}

uint64_t _s6Vision25CalculateBlurScoreRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v3 = *(a1 + 6);
  v4 = *(a2 + 6);
  v5 = *(a1 + 2);
  v9.origin = *(a1 + 1);
  v9.size = v5;
  v6 = *(a2 + 2);
  v8.origin = *(a2 + 1);
  v8.size = v6;
  if (!static NormalizedRect.== infix(_:_:)(&v9, &v8))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v3, v4);
}

unint64_t sub_1A5CD298C()
{
  result = qword_1EB261C00;
  if (!qword_1EB261C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261C00);
  }

  return result;
}

unint64_t sub_1A5CD29E0()
{
  result = qword_1EB261C08;
  if (!qword_1EB261C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB261C08);
  }

  return result;
}

unint64_t sub_1A5CD2A34()
{
  result = qword_1EB261C10[0];
  if (!qword_1EB261C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB261C10);
  }

  return result;
}

unint64_t sub_1A5CD2A88()
{
  result = qword_1EB1F4BB0;
  if (!qword_1EB1F4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BB0);
  }

  return result;
}

uint64_t sub_1A5CD2ADC(uint64_t a1)
{
  sub_1A5CD342C();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = *(v1 + 1);
    v5 = *v1;
    v6 = sub_1A5FD3D5C();
    v8 = v7;
    v17 = MEMORY[0x1E69E6530];
    v16[0] = v4;
    v9 = *(*a1 + 208);
    v10 = v9(v15);
    sub_1A5B0DE30(v16, v6, v8);
    v10(v15, 0);
    v11 = sub_1A5FD3D5C();
    v13 = v12;
    v17 = MEMORY[0x1E69E6810];
    v16[0] = v5;
    v14 = v9(v15);
    sub_1A5B0DE30(v16, v11, v13);
    return v14(v15, 0);
  }

  return result;
}

unint64_t sub_1A5CD2C40()
{
  result = qword_1EB1F4BB8;
  if (!qword_1EB1F4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BB8);
  }

  return result;
}

unint64_t sub_1A5CD2C9C()
{
  result = qword_1EB1F4BC0;
  if (!qword_1EB1F4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BC0);
  }

  return result;
}

unint64_t sub_1A5CD2CF0(uint64_t a1)
{
  result = sub_1A5B5E508();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD2D18(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B668D4();
  result = sub_1A5CD2D48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CD2D48()
{
  result = qword_1EB1F4BC8;
  if (!qword_1EB1F4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BC8);
  }

  return result;
}

unint64_t sub_1A5CD2DA0()
{
  result = qword_1EB1F4BD0;
  if (!qword_1EB1F4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BD0);
  }

  return result;
}

unint64_t sub_1A5CD2DF8()
{
  result = qword_1EB1F4BD8;
  if (!qword_1EB1F4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BD8);
  }

  return result;
}

unint64_t sub_1A5CD2E94(uint64_t a1)
{
  result = sub_1A5CD2A88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD2EBC(uint64_t a1)
{
  result = sub_1A5CD2EE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD2EE4()
{
  result = qword_1EB1F4BE8;
  if (!qword_1EB1F4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BE8);
  }

  return result;
}

unint64_t sub_1A5CD2FBC()
{
  result = qword_1EB2626A0[0];
  if (!qword_1EB2626A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2626A0);
  }

  return result;
}

unint64_t sub_1A5CD3014()
{
  result = qword_1EB262AB0[0];
  if (!qword_1EB262AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB262AB0);
  }

  return result;
}

unint64_t sub_1A5CD306C()
{
  result = qword_1EB262BC0;
  if (!qword_1EB262BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262BC0);
  }

  return result;
}

unint64_t sub_1A5CD30C4()
{
  result = qword_1EB262BC8[0];
  if (!qword_1EB262BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB262BC8);
  }

  return result;
}

unint64_t sub_1A5CD311C()
{
  result = qword_1EB262C50;
  if (!qword_1EB262C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262C50);
  }

  return result;
}

unint64_t sub_1A5CD3174()
{
  result = qword_1EB262C58[0];
  if (!qword_1EB262C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB262C58);
  }

  return result;
}

unint64_t sub_1A5CD31CC()
{
  result = qword_1EB262CE0;
  if (!qword_1EB262CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262CE0);
  }

  return result;
}

unint64_t sub_1A5CD3224()
{
  result = qword_1EB262CE8[0];
  if (!qword_1EB262CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB262CE8);
  }

  return result;
}

unint64_t sub_1A5CD327C()
{
  result = qword_1EB262D70;
  if (!qword_1EB262D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262D70);
  }

  return result;
}

unint64_t sub_1A5CD32D4()
{
  result = qword_1EB262D78;
  if (!qword_1EB262D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262D78);
  }

  return result;
}

unint64_t sub_1A5CD332C()
{
  result = qword_1EB262E00;
  if (!qword_1EB262E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262E00);
  }

  return result;
}

unint64_t sub_1A5CD3384()
{
  result = qword_1EB262E08[0];
  if (!qword_1EB262E08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB262E08);
  }

  return result;
}

unint64_t sub_1A5CD33D8()
{
  result = qword_1EB1F4BF0;
  if (!qword_1EB1F4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4BF0);
  }

  return result;
}

unint64_t sub_1A5CD342C()
{
  result = qword_1EB1F4BF8;
  if (!qword_1EB1F4BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F4BF8);
  }

  return result;
}

uint64_t sub_1A5CD3478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Session.__allocating_init()()
{
  v30 = sub_1A5FD3A9C();
  v1 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5FD3ACC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(VNSession) init];
  v29 = v0;
  v9 = swift_allocObject();
  v10 = sub_1A5C485AC();
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;

  v11 = sub_1A5C3A734();
  (*(v5 + 16))(v7, v11, v4);
  v12 = sub_1A5C3A5BC();
  v13 = *v12;
  v14 = *(v12 + 16);

  sub_1A5FD3A8C();
  v15 = sub_1A5FD3AAC();
  v28 = sub_1A5FD43BC();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v25 = v5;
  v26 = v4;
  v27 = v1;
  if ((v14 & 1) == 0)
  {

    if (!v13)
    {
      __break(1u);
LABEL_5:

      (*(v1 + 8))(v3, v30);
      (*(v5 + 8))(v7, v4);
      return v9;
    }

LABEL_10:
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    v19 = sub_1A5B39728();
    v21 = v20;

    v22 = sub_1A5B4D654(v19, v21, &v31);

    *(v17 + 4) = v22;
    v23 = sub_1A5FD3A7C();
    _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v15, v28, v23, v13, "Session (%s) created", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1AC558440](v18, -1, -1);
    MEMORY[0x1AC558440](v17, -1, -1);

    (*(v27 + 8))(v3, v30);
    (*(v25 + 8))(v7, v26);
    return v9;
  }

  if (v13 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v13 & 0xFFFFF800) != 0xD800)
  {
    if (v13 >> 16 <= 0x10)
    {

      v13 = &v31;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1A5CD3844(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_1A5C485AC();
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_1A5CD3884()
{
  v0 = [objc_opt_self() globalSession];
  type metadata accessor for Session();
  v1 = swift_allocObject();
  result = sub_1A5C485AC();
  *(v1 + 16) = v0;
  *(v1 + 24) = result;
  qword_1EB1F8F08 = v1;
  return result;
}

uint64_t *sub_1A5CD38E8()
{
  if (qword_1EB1F9250 != -1)
  {
    swift_once();
  }

  return &qword_1EB1F8F08;
}

uint64_t static Session.global.getter()
{
  if (qword_1EB1F9250 != -1)
  {
    swift_once();
  }
}

id sub_1A5CD3994(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 16);
  sub_1A5B37FAC(a1);
  v3 = sub_1A5FD3BDC();

  v8[0] = 0;
  v4 = [v2 trackerResourcesConfiguredWithOptions:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v4;
}

id sub_1A5CD3A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 16);
  v6 = sub_1A5FD3D2C();
  sub_1A5B37FAC(a3);
  v7 = sub_1A5FD3BDC();

  v12[0] = 0;
  v8 = [v5 detectorOfType:v6 configuredWithOptions:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v8;
}

id sub_1A5CD3BA4(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(a2);
  v6 = sub_1A5FD3BDC();

  v11[0] = 0;
  v7 = [v4 detectorOfClass:ObjCClassFromMetadata configuredWithOptions:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v7;
}

Swift::Void __swiftcall Session.releaseCachedResources()()
{
  *(v0 + 24) = sub_1A5C485AC([*(v0 + 16) releaseCachedResources]);
}

uint64_t Session.deinit()
{
  v1 = v0;
  v31 = *v0;
  v2 = sub_1A5FD3A9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5FD3ACC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5C3A734();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1A5C3A5C8();
  v12 = *v11;
  v13 = *(v11 + 16);

  sub_1A5FD3A8C();
  v14 = sub_1A5FD3AAC();
  v30 = sub_1A5FD43BC();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
LABEL_11:

    return v1;
  }

  v26 = v14;
  v27 = v6;
  v28 = v3;
  v29 = v2;
  if ((v13 & 1) == 0)
  {

    if (v12)
    {
      v16 = v5;
      v17 = v12;
LABEL_10:
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      v20 = sub_1A5B39728();
      v22 = sub_1A5B4D654(v20, v21, &v32);

      *(v18 + 4) = v22;
      v23 = sub_1A5FD3A7C();
      v24 = v26;
      _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v26, v30, v23, v17, "Session (%s) deallocated", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1AC558440](v19, -1, -1);
      MEMORY[0x1AC558440](v18, -1, -1);

      (*(v28 + 8))(v16, v29);
      (*(v7 + 8))(v9, v27);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v12 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v16 = v5;

      v17 = &v32;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CD408C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 24);

  sub_1A5C47120(v9, a4);

  return sub_1A5CD4114(a1, a2, a3);
}

uint64_t sub_1A5CD4114(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v41 = sub_1A5FD3A9C();
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5FD3ACC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5C3A734();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_1A5C3A5D4();
  v40 = *v14;
  v15 = *(v14 + 16);
  v16 = a2;
  v17 = a2;
  v18 = a3;
  sub_1A5B72D90(a1, v17, a3);
  sub_1A5FD3A8C();
  v19 = sub_1A5FD3AAC();
  v39 = sub_1A5FD43BC();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {

    sub_1A5B4F9C8(a1, v16, v18);
    (*(v6 + 8))(v8, v41);
    return (*(v10 + 8))(v12, v9);
  }

  v37 = v12;
  v38 = v19;
  v21 = a1;
  v35 = v8;
  v36 = v6;
  v34 = v9;
  if (v15)
  {
    if (!(v40 >> 32))
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v23 = v37;
      v24 = v38;
      if (v40 >> 16 <= 0x10)
      {
        v22 = v16;
        v25 = v21;
        sub_1A5B4F9C8(v21, v22, v18);
        v26 = v42;
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v16;
  result = sub_1A5B4F9C8(a1, v16, v18);
  if (!v40)
  {
    __break(1u);
    goto LABEL_13;
  }

  v23 = v37;
  v24 = v38;
  v25 = v21;
  v26 = v40;
LABEL_10:
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v44 = v28;
  *v27 = 136315138;
  v42[0] = v25;
  v42[1] = v22;
  v43 = v18;
  sub_1A5B72D90(v25, v22, v18);
  v29 = sub_1A5FD3D7C();
  v31 = sub_1A5B4D654(v29, v30, &v44);

  *(v27 + 4) = v31;
  v32 = v35;
  v33 = sub_1A5FD3A7C();
  _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v24, v39, v33, v26, "Session acquired detector of type %s", v27, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v28);
  MEMORY[0x1AC558440](v28, -1, -1);
  MEMORY[0x1AC558440](v27, -1, -1);

  (*(v36 + 8))(v32, v41);
  return (*(v10 + 8))(v23, v34);
}

uint64_t sub_1A5CD44A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *(*v4 + 24);

  sub_1A5C47120(v9, a4);

  return sub_1A5CD4114(a1, a2, a3);
}

uint64_t sub_1A5CD4530@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);

  sub_1A5C472B4(v3, a1);
}

uint64_t sub_1A5CD45AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);

  sub_1A5C47324(v3, a1);
}

uint64_t sub_1A5CD4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 24);

  sub_1A5C477A8(a1, a2, a3, a4, v9);
}

uint64_t sub_1A5CD46A0()
{

  sub_1A5C47D24(v0);
}

uint64_t Session.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x726F746365746564, 0xEF203A6568636143);
  sub_1A5FD481C();
  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.prepareForPerformingRequests(_:)(Swift::OpaquePointer a1)
{
  v3 = *(a1._rawValue + 2);
  if (v3)
  {
    v4 = v1;
    for (i = a1._rawValue + 32; ; i += 40)
    {
      sub_1A5B180A0(i, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
      swift_dynamicCast();
      v6 = v18;
      v7 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      sub_1A5D4F438(v4, v6, v7);
      v8 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v10 = (*(v9 + 72))(v8, v9);
      v12 = v11;
      v14 = v13;
      v15 = *(v4 + 24);

      sub_1A5C47120(v15, v16);
      if (v2)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_1A5CD4114(v10, v12, v14);
      sub_1A5B4F9C8(v10, v12, v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      if (!--v3)
      {
        return;
      }
    }

    sub_1A5CD4114(v10, v12, v14);
    sub_1A5B4F9C8(v10, v12, v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }
}

uint64_t Session.prepareForPerformingRequestsAsync(_:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5CD4994, 0, 0);
}

uint64_t sub_1A5CD4994()
{
  v1 = v0;
  v2 = *(v0 + 96);
  type metadata accessor for RequestPerformingContext();
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 1;

  sub_1A5CD9278(v3, 0, 0, v1 + 144);
  *(v1 + 112) = v4;
  type metadata accessor for ExecutionPlan();

  v6 = sub_1A5D57818(v5);
  v7 = v6;
  *(v1 + 120) = v6;
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = v1 + 16;
    v10 = v1 + 56;
    v11 = *(v1 + 96);
    v16 = v1;
    v12 = *(*v6 + 112);
    v13 = v11 + 32;
    do
    {
      sub_1A5B180A0(v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
      swift_dynamicCast();
      v12(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v13 += 40;
      --v8;
    }

    while (v8);
    v1 = v16;
  }

  v17 = (*(*v7 + 136) + **(*v7 + 136));
  v14 = swift_task_alloc();
  *(v1 + 128) = v14;
  *v14 = v1;
  v14[1] = sub_1A5CD4BF8;

  return v17();
}

uint64_t sub_1A5CD4BF8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A5CD4D78;
  }

  else
  {
    v2 = sub_1A5CD4D0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5CD4D0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CD4D78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5CD4DE4(Swift::OpaquePointer a1)
{
  Session.prepareForPerformingRequests(_:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A5CD4EAC(uint64_t a1)
{
  v2 = sub_1A5CD5174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD4EE8(uint64_t a1)
{
  v2 = sub_1A5CD5174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CD4F24(uint64_t a1)
{
  v2 = sub_1A5CD51C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD4F60(uint64_t a1)
{
  v2 = sub_1A5CD51C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateObjectnessBasedSaliencyImageRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD5174();
  sub_1A5FD4CDC();
  sub_1A5CD51C8();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CD5174()
{
  result = qword_1EB262F30;
  if (!qword_1EB262F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB262F30);
  }

  return result;
}

unint64_t sub_1A5CD51C8()
{
  result = qword_1EB262F38[0];
  if (!qword_1EB262F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB262F38);
  }

  return result;
}

uint64_t GenerateObjectnessBasedSaliencyImageRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateObjectnessBasedSaliencyImageRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C10);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C18);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD5174();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CD51C8();
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
      *v13 = &type metadata for GenerateObjectnessBasedSaliencyImageRequest.Revision;
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

uint64_t sub_1A5CD5594(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD5174();
  sub_1A5FD4CDC();
  sub_1A5CD51C8();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateObjectnessBasedSaliencyImageRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5CD5D60(), result = sub_1A5D4E900(), (v7 & 1) != 0))
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

__n128 GenerateObjectnessBasedSaliencyImageRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 GenerateObjectnessBasedSaliencyImageRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5CD5830()
{
  sub_1A5CD5D60();
  result = sub_1A5D4EB30();
  qword_1EB262F18 = result;
  return result;
}

uint64_t GenerateObjectnessBasedSaliencyImageRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CD5D60();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateObjectnessBasedSaliencyImageRequest, v3);
}

uint64_t sub_1A5CD58E8()
{
  sub_1A5CD5D60();
  result = sub_1A5D4EC2C();
  qword_1EB262F28 = result;
  return result;
}

uint64_t static GenerateObjectnessBasedSaliencyImageRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t GenerateObjectnessBasedSaliencyImageRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t GenerateObjectnessBasedSaliencyImageRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CD5AAC(uint64_t a1)
{
  v2 = sub_1A5CD5F90();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CD5AE8(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CD5D60();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CD5B48(uint64_t a1)
{
  v2 = sub_1A5B5E898();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CD5B84(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E898();

  return sub_1A5D4E6C8(a1, a2);
}

void sub_1A5CD5BD0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorImageSaliencyOConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C28);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

unint64_t sub_1A5CD5D60()
{
  result = qword_1EB1F4C20;
  if (!qword_1EB1F4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C20);
  }

  return result;
}

unint64_t sub_1A5CD5DB4()
{
  result = qword_1EB1F4C30;
  if (!qword_1EB1F4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C30);
  }

  return result;
}

unint64_t sub_1A5CD5E0C(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66BC8();
  result = sub_1A5CD5E3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CD5E3C()
{
  result = qword_1EB1F4C38;
  if (!qword_1EB1F4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C38);
  }

  return result;
}

unint64_t sub_1A5CD5E94()
{
  result = qword_1EB1F4C40;
  if (!qword_1EB1F4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C40);
  }

  return result;
}

unint64_t sub_1A5CD5EEC()
{
  result = qword_1EB1F4C48;
  if (!qword_1EB1F4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C48);
  }

  return result;
}

unint64_t sub_1A5CD5F40(uint64_t a1)
{
  result = sub_1A5B5E898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD5F68(uint64_t a1)
{
  result = sub_1A5CD5F90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD5F90()
{
  result = qword_1EB1F4C50;
  if (!qword_1EB1F4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C50);
  }

  return result;
}

unint64_t sub_1A5CD5FE4(uint64_t a1)
{
  result = sub_1A5CD5D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD600C(uint64_t a1)
{
  result = sub_1A5CD6034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD6034()
{
  result = qword_1EB1F4C58;
  if (!qword_1EB1F4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4C58);
  }

  return result;
}

unint64_t sub_1A5CD60CC()
{
  result = qword_1EB263840[0];
  if (!qword_1EB263840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB263840);
  }

  return result;
}

unint64_t sub_1A5CD6124()
{
  result = qword_1EB263950;
  if (!qword_1EB263950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB263950);
  }

  return result;
}

unint64_t sub_1A5CD617C()
{
  result = qword_1EB263958[0];
  if (!qword_1EB263958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB263958);
  }

  return result;
}

unint64_t sub_1A5CD61D4()
{
  result = qword_1EB2639E0;
  if (!qword_1EB2639E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2639E0);
  }

  return result;
}

unint64_t sub_1A5CD622C()
{
  result = qword_1EB2639E8[0];
  if (!qword_1EB2639E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2639E8);
  }

  return result;
}

uint64_t sub_1A5CD6298(uint64_t a1)
{
  v2 = sub_1A5CD6560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD62D4(uint64_t a1)
{
  v2 = sub_1A5CD6560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CD6310(uint64_t a1)
{
  v2 = sub_1A5CD65B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD634C(uint64_t a1)
{
  v2 = sub_1A5CD65B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackMaskRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD6560();
  sub_1A5FD4CDC();
  sub_1A5CD65B4();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CD6560()
{
  result = qword_1EB263A80;
  if (!qword_1EB263A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB263A80);
  }

  return result;
}

unint64_t sub_1A5CD65B4()
{
  result = qword_1EB263A88[0];
  if (!qword_1EB263A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB263A88);
  }

  return result;
}

uint64_t TrackMaskRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t TrackMaskRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C70);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4C78);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD6560();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CD65B4();
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
      *v13 = &type metadata for TrackMaskRequest.Revision;
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

uint64_t sub_1A5CD6980(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD6560();
  sub_1A5FD4CDC();
  sub_1A5CD65B4();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrackMaskRequest.__allocating_init(revision:mask:frameAnalysisSpacing:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v11 = swift_allocObject();
  TrackMaskRequest.init(revision:mask:frameAnalysisSpacing:)(v11, a2, a3, a4, a5, a6 & 1);
  return v11;
}

uint64_t TrackMaskRequest.init(revision:mask:frameAnalysisSpacing:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C88);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  LOBYTE(v32) = 0;
  static NormalizedRect.fullImage.getter(v33);
  v15 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v16 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C90);
  v17 = swift_allocObject();
  *(v17 + 64) = 0;
  *(v17 + 16) = v16;
  v18 = v33[0];
  *(v17 + 40) = v33[1];
  *(v17 + 24) = v18;
  *(v17 + 56) = v15;
  *(v6 + 40) = v17;
  sub_1A5FD366C();
  if (a6)
  {
    a3 = *MEMORY[0x1E6960CC0];
    LODWORD(a4) = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v19) = *(MEMORY[0x1E6960CC0] + 12);
    a5 = *(MEMORY[0x1E6960CC0] + 16);
  }

  else
  {
    v19 = HIDWORD(a4);
  }

  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 28) = v19;
  *(v6 + 32) = a5;
  v20 = objc_allocWithZone(VNTrackMaskDetectorState);
  v32 = a3;
  v33[0].n128_u64[0] = __PAIR64__(v19, a4);
  v33[0].n128_u64[1] = a5;
  v21 = [v20 initWithFrameUpdateSpacing:&v32 mask:a2];
  type metadata accessor for TrackMaskRequest.State(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastResult;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C98);
  v25 = *(*(v24 - 8) + 56);
  v31 = a2;
  v25(v22 + v23, 1, 1, v24);
  v26 = v22 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastAnalyzedTimeStamp;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *v26 = 0;
  *(v26 + 24) = 1;
  v25(v14, 1, 1, v24);
  swift_beginAccess();
  v27 = v21;
  sub_1A5CD87E4(v14, v22 + v23);
  swift_endAccess();
  swift_beginAccess();
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v22 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_detectorState) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4CA0);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;

  *(v28 + 16) = v22;

  *(v6 + 48) = v28;
  return v6;
}

uint64_t sub_1A5CD6E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastResult;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C98);
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v9 = v5 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastAnalyzedTimeStamp;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 1;
  v8(v4, 1, 1, v7);
  swift_beginAccess();
  sub_1A5CD87E4(v4, v5 + v6);
  swift_endAccess();
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v5 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_detectorState) = a1;
  return v5;
}

uint64_t TrackMaskRequest.generateCropRect.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

void sub_1A5CD7060(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 64));
  *a2 = v4;
}

void sub_1A5CD70A8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 40);
  os_unfair_lock_lock((v3 + 64));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 64));
}

void TrackMaskRequest.generateCropRect.setter(char a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 64));
  *(v3 + 16) = a1;

  os_unfair_lock_unlock((v3 + 64));
}

void (*TrackMaskRequest.generateCropRect.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 40);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 64));
  *(a1 + 8) = v4;
  return sub_1A5CD7198;
}

void sub_1A5CD7198(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 16);
  LOBYTE(v1[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 16);
}

void TrackMaskRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 64));
}

__n128 sub_1A5CD7234@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 64));
  v5 = *(v3 + 40);
  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 64));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5CD7288(__int128 *a1, uint64_t a2)
{
  v3 = *(*a2 + 40);
  os_unfair_lock_lock((v3 + 64));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 64));
}

void TrackMaskRequest.regionOfInterest.setter(__int128 *a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 64));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 64));
}

void (*TrackMaskRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 64));
  v6 = *(v5 + 40);
  *v4 = *(v5 + 24);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 64));
  return sub_1A5CD73B4;
}

void sub_1A5CD73B4(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = (*a1)[1];
  v4 = **a1;
  os_unfair_lock_lock((v2 + 64));
  *(v2 + 40) = v3;
  *(v2 + 24) = v4;
  os_unfair_lock_unlock((v2 + 64));

  free(v1);
}

uint64_t sub_1A5CD741C()
{
  type metadata accessor for TrackMaskRequest(0);
  sub_1A5CD8874(&qword_1EB1F4D08, type metadata accessor for TrackMaskRequest);
  result = sub_1A5D4EC2C();
  qword_1EB263A78 = result;
  return result;
}

uint64_t static TrackMaskRequest.allSupportedRevisions.getter()
{
  if (qword_1EB263A70 != -1)
  {
    swift_once();
  }
}

uint64_t TrackMaskRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5CD8874(&qword_1EB1F4CA8, type metadata accessor for TrackMaskRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5CD759C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastResult;
  swift_beginAccess();
  return sub_1A5B31A34(v1 + v3, a1, &qword_1EB1F4C88);
}

uint64_t sub_1A5CD7604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastResult;
  swift_beginAccess();
  sub_1A5CD87E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A5CD76C4()
{
  v1 = v0 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastAnalyzedTimeStamp;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A5CD7714(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastAnalyzedTimeStamp;
  result = swift_beginAccess();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4 & 1;
  return result;
}

uint64_t sub_1A5CD77E8()
{
  sub_1A5B10168(v0 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_lastResult, &qword_1EB1F4C88);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A5CD78B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5CD79A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B17040;
}

uint64_t TrackMaskRequest.deinit()
{

  v1 = OBJC_IVAR____TtC6Vision16TrackMaskRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackMaskRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6Vision16TrackMaskRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TrackMaskRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5CD8874(&unk_1EB1F4CB0, type metadata accessor for TrackMaskRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5CD7C00(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 40);
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 64));
}

void sub_1A5CD7C50(__int128 *a1)
{
  v3 = *(*v1 + 40);
  os_unfair_lock_lock((v3 + 64));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 64));
}

uint64_t (*sub_1A5CD7CA0(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TrackMaskRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5CD7D14(uint64_t a1)
{
  v2 = sub_1A5CD8874(&qword_1EB1F4CE0, type metadata accessor for TrackMaskRequest);

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CD7D80(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CD8874(&qword_1EB1F4CA8, type metadata accessor for TrackMaskRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CD7E14(uint64_t a1)
{
  v2 = sub_1A5CD8874(&unk_1EB1F4CF0, type metadata accessor for TrackMaskRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CD7E80(uint64_t a1, uint64_t a2)
{
  sub_1A5CD8874(&qword_1EB1F4D10, type metadata accessor for TrackMaskRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5CD7EFC(uint64_t a1, uint64_t a2)
{
  sub_1A5CD8874(&qword_1EB1F4D10, type metadata accessor for TrackMaskRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5CD7F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 68)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0);
    return sub_1A5BE9B14(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5B16718(v8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5CD8874(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CC0);
    v12 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v12);

    v13 = v17[0];
    v14 = v17[1];
    sub_1A5B16774();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 20) = 1;
    return swift_willThrow();
  }
}

uint64_t (*sub_1A5CD818C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 64));
  *a1 = v4;
  return sub_1A5BDE1D8;
}

uint64_t sub_1A5CD81F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision16TrackMaskRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5CD8288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0) + 48);
  *a2 = v2;
  sub_1A5B31A34(a1, a2 + v5, &qword_1EB1EF6F8);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5CD8318()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 56);

  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

uint64_t sub_1A5CD835C()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock(v1 + 16);
  sub_1A5BDF760(&v1[4]);
  os_unfair_lock_unlock(v1 + 16);
}

uint64_t (*sub_1A5CD83C0(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A5CD818C(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5CD84D8(void *a1, uint64_t a2)
{
  sub_1A5B16F58(0, &qword_1EB1F4D60);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v5 = sub_1A5FD3D5C();
    v7 = v6;
    v8 = *(*a1 + OBJC_IVAR____TtCC6Vision16TrackMaskRequest5State_detectorState);
    v13[3] = sub_1A5B16F58(0, &qword_1EB1F4D68);
    v13[0] = v8;
    v9 = *(*a2 + 208);
    v10 = v8;
    v11 = v9(v12);
    sub_1A5B0DE30(v13, v5, v7);
    return v11(v12, 0);
  }

  return result;
}

unint64_t sub_1A5CD85EC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  *&v15 = v1;
  v5 = sub_1A5CD8874(&qword_1EB1F4CE0, type metadata accessor for TrackMaskRequest);
  v6 = sub_1A5BDA35C(a1, v4, v5);
  v7 = sub_1A5FD3D5C();
  v9 = v8;
  v10 = v2[5];
  os_unfair_lock_lock((v10 + 64));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 64));
  v16 = MEMORY[0x1E69E6370];
  LOBYTE(v15) = v11;
  sub_1A5B101C8(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v14, v7, v9, isUniquelyReferenced_nonNull_native);

  return v6;
}

void sub_1A5CD8740()
{
  v2 = *(*v0 + 48);
  os_unfair_lock_lock((v2 + 24));
  sub_1A5CD9258((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1A5CD87E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4C88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CD8874(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1A5CD88BC()
{
  v13[1] = *MEMORY[0x1E69E9840];
  sub_1A5B16F58(0, &qword_1EB1F4D60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B45D10(MEMORY[0x1E69E7CC0]);
  v1 = sub_1A5FD3BDC();

  v13[0] = 0;
  v2 = [ObjCClassFromMetadata supportedComputeStageDevicesForOptions:v1 error:v13];

  v3 = v13[0];
  if (!v2)
  {
    v11 = v13[0];
    v12 = sub_1A5FD348C();

    swift_willThrow();
    return 0;
  }

  type metadata accessor for VNComputeStage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F13B0);
  sub_1A5CD8874(&qword_1EB1EE600, type metadata accessor for VNComputeStage);
  v4 = sub_1A5FD3C0C();
  v5 = v3;

  if (!*(v4 + 16) || (v6 = sub_1A5BC794C(@"VNComputeStageMain"), (v7 & 1) == 0))
  {

    return 0;
  }

  v8 = *(*(v4 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    v9 = sub_1A5FD484C();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v9 > 0;
}

unint64_t sub_1A5CD8AF4()
{
  result = qword_1EB1F4CE8;
  if (!qword_1EB1F4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4CE8);
  }

  return result;
}

uint64_t sub_1A5CD8B4C(uint64_t a1)
{
  result = sub_1A5CD8874(&unk_1EB1F4CF0, type metadata accessor for TrackMaskRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5CD8C7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5CD8874(a4, type metadata accessor for TrackMaskRequest);
  result = sub_1A5CD8874(a6, type metadata accessor for TrackMaskRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CD8CEC()
{
  result = qword_1EB1F4D18;
  if (!qword_1EB1F4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4D18);
  }

  return result;
}

uint64_t sub_1A5CD8D88(uint64_t a1)
{
  result = sub_1A5CD8874(&qword_1EB1F4D08, type metadata accessor for TrackMaskRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD8DE0(uint64_t a1)
{
  result = sub_1A5CD8E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CD8E08()
{
  result = qword_1EB1F4D30;
  if (!qword_1EB1F4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4D30);
  }

  return result;
}

uint64_t sub_1A5CD8E64()
{
  result = sub_1A5FD367C();
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

void sub_1A5CD8F74()
{
  sub_1A5CD901C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A5CD901C()
{
  if (!qword_1EB1F4D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F4C98);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F4D40);
    }
  }
}

unint64_t sub_1A5CD90A4()
{
  result = qword_1EB264430[0];
  if (!qword_1EB264430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB264430);
  }

  return result;
}

unint64_t sub_1A5CD90FC()
{
  result = qword_1EB264540;
  if (!qword_1EB264540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB264540);
  }

  return result;
}

unint64_t sub_1A5CD9154()
{
  result = qword_1EB264548[0];
  if (!qword_1EB264548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB264548);
  }

  return result;
}

unint64_t sub_1A5CD91AC()
{
  result = qword_1EB2645D0;
  if (!qword_1EB2645D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2645D0);
  }

  return result;
}

unint64_t sub_1A5CD9204()
{
  result = qword_1EB2645D8[0];
  if (!qword_1EB2645D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2645D8);
  }

  return result;
}

__n128 sub_1A5CD9278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
  *(v8 + 16) = a3;
  v9 = *(a4 + 16);
  *(v8 + 24) = *a4;
  *(v8 + 40) = v9;
  result = *(a4 + 32);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a4 + 48);
  return result;
}

id sub_1A5CD92E8()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    return v1;
  }

  sub_1A5B16774();
  swift_allocError();
  *v3 = 0xD000000000000028;
  *(v3 + 8) = 0x80000001A6059EE0;
  *(v3 + 16) = 0;
  *(v3 + 20) = 0;
  return swift_willThrow();
}

uint64_t sub_1A5CD9368()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A5CD93E4(uint64_t a1)
{
  v2 = sub_1A5CD96AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD9420(uint64_t a1)
{
  v2 = sub_1A5CD96AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CD945C(uint64_t a1)
{
  v2 = sub_1A5CD9700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CD9498(uint64_t a1)
{
  v2 = sub_1A5CD9700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectHumanBodyPoseRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4D70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4D78);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD96AC();
  sub_1A5FD4CDC();
  sub_1A5CD9700();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CD96AC()
{
  result = qword_1EB264780;
  if (!qword_1EB264780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB264780);
  }

  return result;
}

unint64_t sub_1A5CD9700()
{
  result = qword_1EB264788[0];
  if (!qword_1EB264788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB264788);
  }

  return result;
}

uint64_t DetectHumanBodyPoseRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectHumanBodyPoseRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4D80);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4D88);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD96AC();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CD9700();
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
      *v13 = &type metadata for DetectHumanBodyPoseRequest.Revision;
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

uint64_t sub_1A5CD9ACC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4D70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4D78);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CD96AC();
  sub_1A5FD4CDC();
  sub_1A5CD9700();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectHumanBodyPoseRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5CDA748(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    a2[2].n128_u8[0] = 1;
    a2[2].n128_u64[1] = v5;
  }

  return result;
}

__n128 DetectHumanBodyPoseRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DetectHumanBodyPoseRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5CD9D88()
{
  sub_1A5CDA748();
  result = sub_1A5D4EB30();
  qword_1EB264768 = result;
  return result;
}

uint64_t DetectHumanBodyPoseRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CDA748();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectHumanBodyPoseRequest, v3);
}

uint64_t sub_1A5CD9E70()
{
  sub_1A5CDA748();
  result = sub_1A5D4EC2C();
  qword_1EB264778 = result;
  return result;
}

BOOL sub_1A5CD9ED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-v2];
  v4 = sub_1A5FD3B5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = *(v0 + 32);
  v12 = *(v0 + 5);
  v13 = v0[1];
  v19 = *v0;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v18 = 0;
  sub_1A5B5EB78();
  VisionRequest.computeDevice(for:)(&v18, &type metadata for DetectHumanBodyPoseRequest, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A5B10168(v3, &qword_1EB1EEA90);
    return 0;
  }

  else
  {
    v15 = *(v5 + 32);
    v15(v10, v3, v4);
    v15(v7, v10, v4);
    v14 = (*(v5 + 88))(v7, v4) == *MEMORY[0x1E695FD10];
    (*(v5 + 8))(v7, v4);
  }

  return v14;
}

uint64_t DetectHumanBodyPoseRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t DetectHumanBodyPoseRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDA20C(uint64_t a1)
{
  v2 = sub_1A5CDA79C();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CDA248(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CDA748();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CDA2A8(uint64_t a1)
{
  v2 = sub_1A5B5EB78();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CDA2E8(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t sub_1A5CDA364()
{
  v1 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDA41C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EB78();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5CDA468@<D0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(v5);
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  result = v5[0].n128_f64[0];
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  a1[2].n128_u64[0] = 1;
  a1[2].n128_u64[1] = v2;
  return result;
}

unint64_t sub_1A5CDA4B4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  v8 = v1[5];
  v9 = sub_1A5CDA79C();
  v10 = sub_1A5BDA35C(a1, &type metadata for DetectHumanBodyPoseRequest, v9);
  v38 = v3;
  v39 = v4;
  v40 = v5;
  v41 = v6;
  v42 = v7;
  v43 = v8;
  v11 = sub_1A5BDA018(&type metadata for DetectHumanBodyPoseRequest, v9);
  v13 = v12;
  v14 = sub_1A5FD3D5C();
  if (v13)
  {
    if (v14 == v11 && v13 == v15)
    {
    }

    else
    {
      v17 = sub_1A5FD4B0C();

      if ((v17 & 1) == 0)
      {
        return v10;
      }
    }

    v18 = sub_1A5FD3D5C();
    v20 = v19;
    *&v31 = v3;
    *(&v31 + 1) = v4;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    v35 = v8;
    v21 = sub_1A5CD9ED0();
    v37 = MEMORY[0x1E69E6370];
    LOBYTE(v36) = v21;
    sub_1A5B101C8(&v36, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v30, v18, v20, isUniquelyReferenced_nonNull_native);

    v23 = sub_1A5FD3D5C();
    v25 = v24;
    v26 = sub_1A5B16F58(0, &qword_1EB1F3E80);
    v27 = sub_1A5FD447C();
    v33 = v26;
    *&v31 = v27;
    sub_1A5B101C8(&v31, &v36);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v30[0] = v10;
    sub_1A5B0E9AC(&v36, v23, v25, v28);

    return *&v30[0];
  }

  else
  {
  }

  return v10;
}

unint64_t sub_1A5CDA748()
{
  result = qword_1EB1F4D90;
  if (!qword_1EB1F4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4D90);
  }

  return result;
}

unint64_t sub_1A5CDA79C()
{
  result = qword_1EB1F4D98;
  if (!qword_1EB1F4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4D98);
  }

  return result;
}

id sub_1A5CDA7F0(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B16F58(0, &qword_1EB1F4DD0);
  result = [ObjCClassFromMetadata isSubclassOfClass_];
  if (result)
  {
    v4 = sub_1A5FD3D5C();
    v6 = v5;
    v9[3] = sub_1A5B16F58(0, &qword_1EB1F3E80);
    v9[0] = sub_1A5FD447C();
    v7 = (*(*a1 + 208))(v8);
    sub_1A5B0DE30(v9, v4, v6);
    return v7(v8, 0);
  }

  return result;
}

unint64_t sub_1A5CDA918()
{
  result = qword_1EB1F4DA0;
  if (!qword_1EB1F4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4DA0);
  }

  return result;
}

unint64_t sub_1A5CDA970(uint64_t a1)
{
  result = sub_1A5B5EB78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CDA998(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66F64();
  result = sub_1A5CDA9C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CDA9C8()
{
  result = qword_1EB1F4DA8;
  if (!qword_1EB1F4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4DA8);
  }

  return result;
}

unint64_t sub_1A5CDAA20()
{
  result = qword_1EB1F4DB0;
  if (!qword_1EB1F4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4DB0);
  }

  return result;
}

unint64_t sub_1A5CDAA78()
{
  result = qword_1EB1F4DB8;
  if (!qword_1EB1F4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4DB8);
  }

  return result;
}

unint64_t sub_1A5CDAB14(uint64_t a1)
{
  result = sub_1A5CDA748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CDAB3C(uint64_t a1)
{
  result = sub_1A5CDAB64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CDAB64()
{
  result = qword_1EB1F4DC8;
  if (!qword_1EB1F4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4DC8);
  }

  return result;
}

unint64_t sub_1A5CDABFC()
{
  result = qword_1EB265010[0];
  if (!qword_1EB265010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB265010);
  }

  return result;
}

unint64_t sub_1A5CDAC54()
{
  result = qword_1EB265120;
  if (!qword_1EB265120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB265120);
  }

  return result;
}

unint64_t sub_1A5CDACAC()
{
  result = qword_1EB265128[0];
  if (!qword_1EB265128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB265128);
  }

  return result;
}

unint64_t sub_1A5CDAD04()
{
  result = qword_1EB2651B0;
  if (!qword_1EB2651B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2651B0);
  }

  return result;
}

unint64_t sub_1A5CDAD5C()
{
  result = qword_1EB2651B8[0];
  if (!qword_1EB2651B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2651B8);
  }

  return result;
}

uint64_t sub_1A5CDADB0(unint64_t *a1, void (*a2)(uint64_t))
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

double OpticalFlowObservation.size.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpticalFlowObservation() + 32));
  Width = CVPixelBufferGetWidth(v1);
  CVPixelBufferGetHeight(v1);
  return Width;
}

uint64_t type metadata accessor for OpticalFlowObservation()
{
  result = qword_1EB265640;
  if (!qword_1EB265640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpticalFlowObservation.pixelFormat.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpticalFlowObservation() + 32));

  return CVPixelBufferGetPixelFormatType(v1);
}

uint64_t OpticalFlowObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 OpticalFlowObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OpticalFlowObservation() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t OpticalFlowObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for OpticalFlowObservation();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t OpticalFlowObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6059F50);
  v1 = type metadata accessor for OpticalFlowObservation();
  v2 = *(v0 + *(v1 + 32));
  CVPixelBufferGetWidth(v2);
  CVPixelBufferGetHeight(v2);
  v3 = sub_1A5FD41EC();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0x746867696568202CLL, 0xEA0000000000203ALL);
  CVPixelBufferGetWidth(v2);
  CVPixelBufferGetHeight(v2);
  v4 = sub_1A5FD41EC();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x466C65786970202CLL, 0xEF203A74616D726FLL);
  CVPixelBufferGetPixelFormatType(v2);
  v5 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v6 = sub_1A5CDC110(&qword_1EB1F4DD8, type metadata accessor for OpticalFlowObservation);
  v7 = sub_1A5C29408(v1, &off_1F196A4A8, v6);
  MEMORY[0x1AC554600](v7);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t OpticalFlowObservation.withUnsafePointer<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + *(type metadata accessor for OpticalFlowObservation() + 32));
  CVPixelBufferLockBaseAddress(v3, 1uLL);
  if (CVPixelBufferGetBaseAddress(v3))
  {
    a1();

    return CVPixelBufferUnlockBaseAddress(v3, 1uLL);
  }

  else
  {
    result = sub_1A5FD483C();
    __break(1u);
  }

  return result;
}

Swift::tuple_Float_Float __swiftcall OpticalFlowObservation.flow(at:)(Vision::NormalizedPoint at)
{
  v28 = *v1;
  v3 = type metadata accessor for OpticalFlowObservation();
  v4 = *(v2 + *(v3 + 32));
  Width = CVPixelBufferGetWidth(v4);
  *&v6 = CVPixelBufferGetHeight(v4);
  sub_1A5B0BCC4(&v27);
  v26 = v27;
  v7 = NormalizedPoint.toImageCoordinates(_:origin:)(__PAIR128__(v6, Width), &v26);
  v8 = round(v7.x);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = round(v7.y);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = v8;
  if (v8 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = v9;
  if (v9 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = CVPixelBufferGetWidth(v4);
  CVPixelBufferGetHeight(v4);
  v13 = v12;
  if (v12 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  if (Height <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 >= Height)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = CVPixelBufferGetWidth(v4);
  CVPixelBufferGetHeight(v4);
  v16 = v15;
  if (v15 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = v11 * v16;
  if ((v11 * v16) >> 64 != v17 >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = v10 + v17;
  if (__OFADD__(v10, v17))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  if (PixelFormatType != 843264104)
  {
    if (PixelFormatType == 843264102)
    {
      v23 = sub_1A5CDC110(&qword_1EB1F4DE0, type metadata accessor for OpticalFlowObservation);
      sub_1A5C5F074(v18, v3, &type metadata for OpticalFlowObservation.PixelUV_32F, v23, &v28);
      v22 = v28;
      goto LABEL_23;
    }

LABEL_42:
    sub_1A5FD483C();
    __break(1u);
    goto LABEL_43;
  }

  v20 = sub_1A5CDC110(&qword_1EB1F4DE0, type metadata accessor for OpticalFlowObservation);
  sub_1A5C5F074(v18, v3, &type metadata for OpticalFlowObservation.PixelUV_16F, v20, &v28);
  v21.i32[0] = v28;
  v22 = vcvtq_f32_f16(v21).u64[0];
LABEL_23:
  v24 = *(&v22 + 1);
LABEL_43:
  result._0 = *&v22;
  result._1 = v24;
  return result;
}

uint64_t OpticalFlowObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for OpticalFlowObservation();
  sub_1A5CDC110(&qword_1EB1F4DE8, type metadata accessor for OpticalFlowObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

double sub_1A5CDB6AC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  Width = CVPixelBufferGetWidth(v2);
  CVPixelBufferGetHeight(v2);
  return Width;
}

__n128 sub_1A5CDB6F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, int *a5@<X5>, uint64_t a6@<X8>, float a7@<S0>)
{
  v13 = *a3;
  v14 = sub_1A5FD367C();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = a5[6];
  *(a6 + a5[5]) = a7;
  v16 = a6 + v15;
  v17 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v17;
  result = *(a2 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a2 + 48);
  v19 = a5[8];
  *(a6 + a5[7]) = v13;
  *(a6 + v19) = a4;
  return result;
}

uint64_t sub_1A5CDB7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5CDC110(&qword_1EB1F4DD8, type metadata accessor for OpticalFlowObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t OpticalFlowObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 pixelBuffer];
  v10 = sub_1A5B3AB70();

  v11 = a1;
  v12 = [v11 uuid];
  sub_1A5FD365C();

  [v11 confidence];
  v14 = v13;
  [v11 timeRange];
  v15 = v25;
  v16 = v26;
  v21 = v24;
  v22 = v23;

  (*(v5 + 32))(a2, v8, v4);
  v17 = type metadata accessor for OpticalFlowObservation();
  *(a2 + v17[5]) = v14;
  v18 = a2 + v17[6];
  v19 = v21;
  *v18 = v22;
  *(v18 + 16) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 0;
  *(a2 + v17[7]) = -8;
  *(a2 + v17[8]) = v10;
  return (*(*(v17 - 1) + 56))(a2, 0, 1, v17);
}

__n128 sub_1A5CDBBA0@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, int *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a1;
  v10 = [v9 uuid];
  sub_1A5FD365C();

  [v9 confidence];
  v12 = v11;

  v13 = [v9 pixelBuffer];
  v14 = a4[6];
  *(a5 + a4[5]) = v12;
  v15 = a5 + v14;
  *(v15 + 48) = *(a3 + 48);
  result = *(a3 + 16);
  v17 = *(a3 + 32);
  *(v15 + 16) = result;
  *(v15 + 32) = v17;
  *v15 = *a3;
  v18 = a4[8];
  *(a5 + a4[7]) = v8;
  *(a5 + v18) = v13;
  return result;
}

id _s6Vision22OpticalFlowObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A5FD367C();
  sub_1A5CDC110(&qword_1EB1F0490, MEMORY[0x1E69695A8]);
  if ((sub_1A5FD3D0C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OpticalFlowObservation();
  v5 = v4[6];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if (v6)
  {
    if (!*(v7 + 48))
    {
      return 0;
    }
  }

  else if ((*(v7 + 48) & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[5]) == *(a2 + v4[5]))
  {
    v8 = v4[7];
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    if (v9 <= 0xFFF7)
    {
      if (v10 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }

      return [objc_opt_self() isCVPixelBuffer:*(a1 + v4[8]) equalToCVPixelBuffer:*(a2 + v4[8])];
    }

    if (v10 > 0xFFF7)
    {
      return [objc_opt_self() isCVPixelBuffer:*(a1 + v4[8]) equalToCVPixelBuffer:*(a2 + v4[8])];
    }
  }

  return 0;
}

uint64_t sub_1A5CDBE00(void *a1)
{
  a1[1] = sub_1A5CDC110(&qword_1EB1F4DF0, type metadata accessor for OpticalFlowObservation);
  a1[2] = sub_1A5CDC110(&qword_1EB1F4DF8, type metadata accessor for OpticalFlowObservation);
  a1[3] = sub_1A5CDC110(&qword_1EB1F4E00, type metadata accessor for OpticalFlowObservation);
  result = sub_1A5CDC110(&qword_1EB1F4DE8, type metadata accessor for OpticalFlowObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5CDBED4(uint64_t a1)
{
  result = sub_1A5CDC110(&qword_1EB1F4DD8, type metadata accessor for OpticalFlowObservation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5CDBF74(uint64_t a1)
{
  result = sub_1A5CDC110(&qword_1EB1F4DD8, type metadata accessor for OpticalFlowObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5CDBFF4()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5B57E7C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CVBuffer(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A5CDC110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Joint3D.identifier.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t Joint3D.parentJoint.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_1A5CDC1D8()
{
  v1 = 0x6E6F697469736F70;
  v2 = 0x696669746E656469;
  if (*v0 != 2)
  {
    v2 = 0x6F4A746E65726170;
  }

  if (*v0)
  {
    v1 = 0x736F506C61636F6CLL;
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

uint64_t sub_1A5CDC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5CDCD80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CDC294(uint64_t a1)
{
  v2 = sub_1A5CDCEF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CDC2D0(uint64_t a1)
{
  v2 = sub_1A5CDCEF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Joint3D.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDCEF8();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = a1;
  v38 = v5;
  v8 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2210);
  LOBYTE(v40) = 0;
  sub_1A5CDCF4C(&qword_1EB1F2218, &qword_1EB1F2220);
  sub_1A5FD497C();
  result = *&v50[0];
  v10 = *(*&v50[0] + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 == 3)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(*&v50[0] + 32);
  v35 = *(*&v50[0] + 48);
  v36 = v11;
  v12 = *(*&v50[0] + 64);
  v33 = *(*&v50[0] + 80);
  v34 = v12;

  LOBYTE(v40) = 1;
  sub_1A5FD497C();
  result = *&v50[0];
  v13 = *(*&v50[0] + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  if (v13 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 < 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 != 3)
  {
    v14 = *(*&v50[0] + 32);
    v31 = *(*&v50[0] + 48);
    v32 = v14;
    v15 = *(*&v50[0] + 64);
    v29 = *(*&v50[0] + 80);
    v30 = v15;

    LOBYTE(v50[0]) = 2;
    v28 = sub_1A5FD493C();
    v17 = v16;
    v55 = 3;
    v18 = sub_1A5FD493C();
    v20 = v19;
    (*(v38 + 8))(v7, v4);
    v40 = v36;
    v41 = v35;
    v42 = v34;
    v43 = v33;
    v44 = v32;
    v45 = v31;
    v46 = v30;
    v47 = v29;
    v21 = v28;
    *&v48 = v28;
    *(&v48 + 1) = v17;
    *&v49 = v18;
    *(&v49 + 1) = v20;
    v22 = v29;
    v8[6] = v30;
    v8[7] = v22;
    v23 = v49;
    v8[8] = v48;
    v8[9] = v23;
    v24 = v43;
    v8[2] = v42;
    v8[3] = v24;
    v25 = v45;
    v8[4] = v44;
    v8[5] = v25;
    v26 = v41;
    *v8 = v40;
    v8[1] = v26;
    sub_1A5C1E11C(&v40, v50);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v50[0] = v36;
    v50[1] = v35;
    v50[2] = v34;
    v50[3] = v33;
    v50[4] = v32;
    v50[5] = v31;
    v50[6] = v30;
    v50[7] = v29;
    v51 = v21;
    v52 = v17;
    v53 = v18;
    v54 = v20;
    return sub_1A5C1E594(v50);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t Joint3D.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - v6;
  v8 = *v1;
  v33 = v1[1];
  v34 = v8;
  v9 = v1[2];
  v31 = v1[3];
  v32 = v9;
  v10 = v1[4];
  v29 = v1[5];
  v30 = v10;
  v11 = v1[6];
  v27 = v1[7];
  v28 = v11;
  v12 = *(v1 + 16);
  v25[2] = *(v1 + 17);
  v25[3] = v12;
  v13 = *(v1 + 19);
  v25[1] = *(v1 + 18);
  v25[0] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDCEF8();
  sub_1A5FD4CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2278);
  v14 = swift_allocObject();
  v26 = xmmword_1A600F570;
  v16 = v33;
  v15 = v34;
  v14[1] = xmmword_1A600F570;
  v14[2] = v15;
  v17 = v31;
  v18 = v32;
  v14[3] = v16;
  v14[4] = v18;
  v14[5] = v17;
  v36 = v14;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2210);
  sub_1A5CDCF4C(&qword_1EB1F2280, &qword_1EB1F2288);
  sub_1A5FD4A5C();

  if (!v2)
  {
    v19 = swift_allocObject();
    v21 = v29;
    v20 = v30;
    v19[1] = v26;
    v19[2] = v20;
    v22 = v27;
    v23 = v28;
    v19[3] = v21;
    v19[4] = v23;
    v19[5] = v22;
    v36 = v19;
    v35 = 1;
    sub_1A5FD4A5C();

    LOBYTE(v36) = 2;
    sub_1A5FD4A1C();
    LOBYTE(v36) = 3;
    sub_1A5FD4A1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Joint3D.hash(into:)()
{
  sub_1A5FD3DBC();
  sub_1A5FD3DBC();
  sub_1A5B39894();

  return sub_1A5B39894();
}

void __swiftcall Joint3D.init(position:localPosition:identifer:parentJoint:)(Vision::Joint3D *__return_ptr retstr, simd_float4x4 *position, simd_float4x4 *localPosition, Swift::String identifer, Swift::String parentJoint)
{
  retstr->position.columns[0] = v5;
  retstr->position.columns[1] = v6;
  retstr->position.columns[2] = v7;
  retstr->position.columns[3] = v8;
  retstr->localPosition.columns[0] = v9;
  retstr->localPosition.columns[1] = v10;
  retstr->localPosition.columns[2] = v11;
  retstr->localPosition.columns[3] = v12;
  retstr->parentJoint = identifer;
  retstr->identifier._countAndFlagsBits = position;
  retstr->identifier._object = localPosition;
}

uint64_t Joint3D.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5FD3DBC();
  sub_1A5B39894();
  sub_1A5B39894();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDCB8C()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5FD3DBC();
  sub_1A5B39894();
  sub_1A5B39894();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDCC3C()
{
  sub_1A5FD3DBC();
  sub_1A5FD3DBC();
  sub_1A5B39894();

  return sub_1A5B39894();
}

uint64_t sub_1A5CDCCD4()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  sub_1A5FD3DBC();
  sub_1A5B39894();
  sub_1A5B39894();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDCD80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736F506C61636F6CLL && a2 == 0xED00006E6F697469 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4A746E65726170 && a2 == 0xEB00000000746E69)
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

unint64_t sub_1A5CDCEF8()
{
  result = qword_1EB1F4E10;
  if (!qword_1EB1F4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E10);
  }

  return result;
}

uint64_t sub_1A5CDCF4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2210);
    sub_1A5CDCFD4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5CDCFD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2228);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s6Vision7Joint3DV2eeoiySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) == 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[6], a2[6]), vceqq_f32(a1[7], a2[7])), vandq_s8(vceqq_f32(a1[5], a2[5]), vceqq_f32(a1[4], a2[4])))) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = a1[9].i64[0];
  v4 = a1[9].i64[1];
  v5 = a2[9].i64[0];
  v6 = a2[9].i64[1];
  if ((a1[8].i64[0] != a2[8].i64[0] || a1[8].i64[1] != a2[8].i64[1]) && (sub_1A5FD4B0C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1A5FD4B0C();
}

unint64_t sub_1A5CDD140()
{
  result = qword_1EB1F4E20;
  if (!qword_1EB1F4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E20);
  }

  return result;
}

unint64_t sub_1A5CDD198()
{
  result = qword_1EB1F4E28;
  if (!qword_1EB1F4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E28);
  }

  return result;
}

unint64_t sub_1A5CDD1F0()
{
  result = qword_1EB1F4E30;
  if (!qword_1EB1F4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E30);
  }

  return result;
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1A5CDD274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5CDD2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A5CDD370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A6059FD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A5CDD404(uint64_t a1)
{
  v2 = sub_1A5CDD6CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CDD440(uint64_t a1)
{
  v2 = sub_1A5CDD6CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CDD47C(uint64_t a1)
{
  v2 = sub_1A5CDD720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CDD4B8(uint64_t a1)
{
  v2 = sub_1A5CDD720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassifyMemeImageRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDD6CC();
  sub_1A5FD4CDC();
  sub_1A5CDD720();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5CDD6CC()
{
  result = qword_1EB265AE0;
  if (!qword_1EB265AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB265AE0);
  }

  return result;
}

unint64_t sub_1A5CDD720()
{
  result = qword_1EB265AE8[0];
  if (!qword_1EB265AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB265AE8);
  }

  return result;
}

uint64_t ClassifyMemeImageRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t ClassifyMemeImageRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E48);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E50);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDD6CC();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5CDD720();
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
      *v13 = &type metadata for ClassifyMemeImageRequest.Revision;
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

uint64_t sub_1A5CDDAEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4E40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDD6CC();
  sub_1A5FD4CDC();
  sub_1A5CDD720();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t ClassifyMemeImageRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

__n128 ClassifyMemeImageRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ClassifyMemeImageRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5CDDD80()
{
  sub_1A5CDE3E4();
  result = sub_1A5D4EC2C();
  qword_1EB265AD8 = result;
  return result;
}

uint64_t static ClassifyMemeImageRequest.allSupportedRevisions.getter()
{
  if (qword_1EB265AD0 != -1)
  {
    swift_once();
  }
}

uint64_t ClassifyMemeImageRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5CDE3E4();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for ClassifyMemeImageRequest, v3);
}

uint64_t ClassifyMemeImageRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t ClassifyMemeImageRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDDFC0(uint64_t a1)
{
  v2 = sub_1A5CDE8EC();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5CDDFFC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5CDE3E4();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5CDE05C(uint64_t a1)
{
  v2 = sub_1A5B5E5B0();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5CDE0C4(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E5B0();

  return sub_1A5D4E6C8(a1, a2);
}

uint64_t sub_1A5CDE110(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = type metadata accessor for ClassificationObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v2 + 8);
    v22 = *(v2 + 24);
    v23 = v12;
    v13 = a1 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = &selRef__isAnimalFaceprintingSupportedForRequestRevision_;
    while (1)
    {
      sub_1A5B101D8(v13, v26);
      sub_1A5B101D8(v26, v25);
      sub_1A5BEA66C();
      if (!swift_dynamicCast())
      {
        break;
      }

      v16 = v27;
      [v27 v15[489]];
      if (v17 <= 0.0)
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        LOWORD(v27) = 368;
        v25[0] = v23;
        v25[1] = v22;
        sub_1A5C5C324(v16, &v27, v24, v7);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_1A5CDE438(v7, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A5BE9B84(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_1A5BE9B84(v18 > 1, v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        sub_1A5CDE438(v10, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19);
        v15 = &selRef__isAnimalFaceprintingSupportedForRequestRevision_;
      }

      v13 += 32;
      if (!--v11)
      {
        return v14;
      }
    }

    result = sub_1A5FD483C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1A5CDE3E4()
{
  result = qword_1EB1F4E58;
  if (!qword_1EB1F4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E58);
  }

  return result;
}

uint64_t sub_1A5CDE438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5CDE49C()
{
  result = qword_1EB1F4E60;
  if (!qword_1EB1F4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E60);
  }

  return result;
}

unint64_t sub_1A5CDE4F4(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6682C();
  result = sub_1A5CDE524();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5CDE524()
{
  result = qword_1EB1F4E68;
  if (!qword_1EB1F4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E68);
  }

  return result;
}

unint64_t sub_1A5CDE57C()
{
  result = qword_1EB1F4E70;
  if (!qword_1EB1F4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E70);
  }

  return result;
}

unint64_t sub_1A5CDE5D4()
{
  result = qword_1EB1F4E78;
  if (!qword_1EB1F4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E78);
  }

  return result;
}

unint64_t sub_1A5CDE628(uint64_t a1)
{
  result = sub_1A5B5E5B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CDE650(uint64_t a1)
{
  result = sub_1A5CDE3E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CDE678(uint64_t a1)
{
  result = sub_1A5CDE6A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5CDE6A0()
{
  result = qword_1EB1F4E80;
  if (!qword_1EB1F4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E80);
  }

  return result;
}

unint64_t sub_1A5CDE738()
{
  result = qword_1EB266370[0];
  if (!qword_1EB266370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB266370);
  }

  return result;
}

unint64_t sub_1A5CDE790()
{
  result = qword_1EB266480;
  if (!qword_1EB266480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266480);
  }

  return result;
}

unint64_t sub_1A5CDE7E8()
{
  result = qword_1EB266488[0];
  if (!qword_1EB266488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB266488);
  }

  return result;
}

unint64_t sub_1A5CDE840()
{
  result = qword_1EB266510;
  if (!qword_1EB266510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266510);
  }

  return result;
}

unint64_t sub_1A5CDE898()
{
  result = qword_1EB266518[0];
  if (!qword_1EB266518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB266518);
  }

  return result;
}

unint64_t sub_1A5CDE8EC()
{
  result = qword_1EB1F4E88;
  if (!qword_1EB1F4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4E88);
  }

  return result;
}

uint64_t ImageBlurObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageBlurObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageBlurObservation()
{
  result = qword_1EB266930;
  if (!qword_1EB266930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImageBlurObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageBlurObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ImageBlurObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ImageBlurObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ImageBlurObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A6059FF0);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v0 = type metadata accessor for ImageBlurObservation();
  v1 = sub_1A5CDFB28(&qword_1EB1F4E90, type metadata accessor for ImageBlurObservation);
  v2 = sub_1A5C29408(v0, &off_1F196AA68, v1);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t ImageBlurObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ImageBlurObservation();
  sub_1A5CDFB28(&qword_1EB1F4E98, type metadata accessor for ImageBlurObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CDEC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5CDFB28(&qword_1EB1F4E90, type metadata accessor for ImageBlurObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5CDECD8()
{
  if (*v0)
  {
    return 0x746176726573626FLL;
  }

  else
  {
    return 0x726F635372756C62;
  }
}

uint64_t sub_1A5CDED20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F635372756C62 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1A5CDEE08(uint64_t a1)
{
  v2 = sub_1A5CDF8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CDEE44(uint64_t a1)
{
  v2 = sub_1A5CDF8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageBlurObservation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v13 = *(v3 - 8);
  v14 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EA0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDF8F8();
  sub_1A5FD4CDC();
  v16 = 0;
  sub_1A5FD4A3C();
  if (!v1)
  {
    v15 = 1;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v10 = type metadata accessor for ImageBlurObservation();
    v11 = sub_1A5CDFB28(&qword_1EB1F4E90, type metadata accessor for ImageBlurObservation);
    sub_1A5BBD46C(v5, v10, &off_1F196AA68, v11);
    (*(v13 + 8))(v5, v14);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ImageBlurObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v42 = sub_1A5FD367C();
  v37 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EA8);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ImageBlurObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5CDF8F8();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v10;
  v35 = v6;
  v43 = v12;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  LOBYTE(v47) = 0;
  sub_1A5FD495C();
  *v43 = v17;
  LOBYTE(v47) = 1;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v32 = v9;
  v33 = v7;
  LOBYTE(v47) = 0;
  sub_1A5CDFB28(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v18 = v15;
  sub_1A5FD497C();
  v19 = v34;
  v20 = v43;
  (*(v37 + 32))(v43 + *(v34 + 20), v18, v16);
  LOBYTE(v47) = 1;
  sub_1A5FD495C();
  *(v20 + *(v19 + 24)) = v21;
  v46 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v22 = v19;
  v23 = v14;
  v24 = v35;
  v25 = v36;
  v26 = v38;
  v27 = v43;
  *(v43 + *(v22 + 32)) = v47;
  sub_1A5BBDB04(v44);
  (*(v26 + 8))(v24, v39);
  (*(v23 + 8))(v32, v33);
  v28 = v27 + *(v22 + 28);
  v29 = v44[1];
  *v28 = v44[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v44[2];
  *(v28 + 48) = v45;
  sub_1A5CDF94C(v27, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A5CDF9B0(v27);
}

void sub_1A5CDF680(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 blurScore];
  if (v8)
  {
    v9 = v8;
    [v8 floatValue];
    v11 = v10;

    v12 = a1;
    v13 = [v12 uuid];
    v14 = type metadata accessor for ImageBlurObservation();
    sub_1A5FD365C();

    [v12 confidence];
    v16 = v15;

    *a4 = v11;
    *(a4 + v14[6]) = v16;
    v17 = a4 + v14[7];
    v18 = *(a3 + 16);
    *v17 = *a3;
    *(v17 + 1) = v18;
    *(v17 + 2) = *(a3 + 32);
    v17[48] = *(a3 + 48);
    *(a4 + v14[8]) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s6Vision20ImageBlurObservationV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for ImageBlurObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if ((v6 & 1) == 0)
  {
    if ((v7[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v9 = v4[8];
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    if (v10 <= 0xFFF7)
    {
      if (v11 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (v7[48])
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1A5CDF8F8()
{
  result = qword_1EB2665A0[0];
  if (!qword_1EB2665A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2665A0);
  }

  return result;
}

uint64_t sub_1A5CDF94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageBlurObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5CDF9B0(uint64_t a1)
{
  v2 = type metadata accessor for ImageBlurObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5CDFA0C(void *a1)
{
  a1[1] = sub_1A5CDFB28(&qword_1EB1EFA10, type metadata accessor for ImageBlurObservation);
  a1[2] = sub_1A5CDFB28(&qword_1EB1F4EB0, type metadata accessor for ImageBlurObservation);
  a1[3] = sub_1A5CDFB28(&qword_1EB1F4EB8, type metadata accessor for ImageBlurObservation);
  result = sub_1A5CDFB28(&qword_1EB1F4E98, type metadata accessor for ImageBlurObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5CDFB28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5CDFB70(uint64_t a1)
{
  result = sub_1A5CDFB28(&qword_1EB1F4E90, type metadata accessor for ImageBlurObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5CDFBF0()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5B1217C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A5CDFCD4()
{
  result = qword_1EB266A40[0];
  if (!qword_1EB266A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB266A40);
  }

  return result;
}

unint64_t sub_1A5CDFD2C()
{
  result = qword_1EB266B50;
  if (!qword_1EB266B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266B50);
  }

  return result;
}

unint64_t sub_1A5CDFD84()
{
  result = qword_1EB266B58[0];
  if (!qword_1EB266B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB266B58);
  }

  return result;
}

double FaceObservation.init(boundingBox:revision:)@<D0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v50 = &v46 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *a2;
  if (v13 == 6)
  {
    v13 = -8;
  }

  v51 = v13;
  v14 = objc_opt_self();
  v15 = [v14 radians];
  v16 = type metadata accessor for FaceObservation(0);
  sub_1A5B16F58(0, &qword_1EB1EE608);
  sub_1A5FD336C();
  v17 = [v14 radians];
  sub_1A5FD336C();
  v18 = [v14 radians];
  sub_1A5FD336C();
  sub_1A5FD366C();
  static NormalizedRect.fullImage.getter(v52);
  sub_1A5CE02A4(v53);
  v19 = type metadata accessor for FaceObservation.Gaze(0);
  v20 = *(*(v19 - 8) + 56);
  v48 = v52[1];
  v49 = v52[0];
  v20(v8, 1, 1, v19);
  *(a3 + 8) = 0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v21 = a3 + v16[8];
  *(v21 + 4) = -16;
  *v21 = 0;
  v22 = a3 + v16[15];
  *v22 = 0;
  *(v22 + 12) = -16;
  *(v22 + 8) = 0;
  v23 = a3 + v16[16];
  *v23 = 0;
  *(v23 + 12) = -16;
  *(v23 + 8) = 0;
  v24 = a3 + v16[17];
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = -16;
  v25 = a3 + v16[18];
  *(v25 + 4) = -16;
  *v25 = 0;
  v26 = a3 + v16[19];
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 34) = 0;
  *(v26 + 32) = -16;
  v46 = v16[20];
  memcpy(a3 + v46, v53, 0x102uLL);
  v47 = v16[21];
  v20(a3 + v47, 1, 1, v19);
  v27 = a3 + v16[22];
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  *(v27 + 80) = -16;
  v28 = a3 + v16[23];
  *v28 = 0;
  *(v28 + 8) = 0;
  v29 = a3 + v16[24];
  *(v29 + 80) = 0;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  v30 = a3 + v16[25];
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 1;
  v31 = a3 + v16[26];
  v32 = a3 + v16[27];
  v33 = *a3;
  v34 = a3[1];
  v35 = a3[2];
  v36 = a3[3];
  v55 = *(a3 + 8);
  v54[2] = v35;
  v54[3] = v36;
  v54[0] = v33;
  v54[1] = v34;
  sub_1A5B10168(v54, &qword_1EB1F2370);
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *(a3 + 8) = 0;
  *(v21 + 4) = -16;
  *v21 = 0;
  v37 = (a3 + v16[9]);
  *v37 = v9;
  v37[1] = v10;
  v37[2] = v11;
  v37[3] = v12;
  *(a3 + v16[12]) = 1065353216;
  v38 = a3 + v16[13];
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *v38 = 0u;
  *(v38 + 48) = 1;
  *(a3 + v16[14]) = v51;
  v39 = (a3 + v16[28]);
  v40 = v48;
  *v39 = v49;
  v39[1] = v40;
  v41 = (a3 + v16[10]);
  *v41 = v9;
  v41[1] = v10;
  v41[2] = v11;
  v41[3] = v12;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 1;
  *v31 = 0;
  *(v31 + 4) = 1;
  *v32 = 0;
  *(v32 + 4) = 1;
  v42 = v46;
  memcpy(v56, a3 + v46, 0x102uLL);
  sub_1A5B10168(v56, &qword_1EB1F2BB0);
  memcpy(a3 + v42, v53, 0x102uLL);
  sub_1A5C371FC(v50, a3 + v47);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = -16;

  *v28 = 0;
  *(v28 + 8) = 0;
  v43 = *(v29 + 48);
  v57[2] = *(v29 + 32);
  v57[3] = v43;
  v57[4] = *(v29 + 64);
  v58 = *(v29 + 80);
  v44 = *(v29 + 16);
  v57[0] = *v29;
  v57[1] = v44;
  sub_1A5B10168(v57, &qword_1EB1F4A48);
  result = 0.0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 0;
  return result;
}

double sub_1A5CE02A4(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t FaceObservation.landmarks.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1A5B31A34(v8, v7, &qword_1EB1F2370);
}

uint64_t FaceObservation.roll.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FaceObservation(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FaceObservation.yaw.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FaceObservation(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FaceObservation.pitch.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FaceObservation(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t FaceObservation.faceCaptureQuality.getter()
{
  v1 = type metadata accessor for FaceObservation(0);
  v2 = *(v0 + *(v1 + 32));
  if (((v2 | (*(v0 + *(v1 + 32) + 4) << 32)) & 0xFFF800000000) == 0xFFF000000000)
  {
    v2 = 0;
  }

  return v2 | ((((*(v0 + *(v1 + 32)) | (*(v0 + *(v1 + 32) + 4) << 32)) & 0xFFF800000000) == 0xFFF000000000) << 32);
}

uint64_t FaceObservation.captureQuality.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FaceObservation(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  *(a1 + 4) = *(v4 + 2);
  *a1 = v5;
  return result;
}

__n128 FaceObservation.boundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 36);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 FaceObservation.unalignedBoundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 40);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t FaceObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FaceObservation(0) + 44);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 FaceObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 52);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t FaceObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FaceObservation(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t FaceObservation.deviceGaze.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FaceObservation(0);
  v4 = (v1 + *(result + 60));
  v5 = *v4;
  v6 = *(v4 + 2);
  LOWORD(v4) = *(v4 + 6);
  *a1 = v5;
  *(a1 + 12) = v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t FaceObservation.cameraGaze.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FaceObservation(0);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  v6 = *(v4 + 2);
  LOWORD(v4) = *(v4 + 6);
  *a1 = v5;
  *(a1 + 12) = v4;
  *(a1 + 8) = v6;
  return result;
}

__n128 FaceObservation.faceScreenGaze.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 68);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t FaceObservation.faceLivelinessScore.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FaceObservation(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  *(a1 + 4) = *(v4 + 2);
  *a1 = v5;
  return result;
}

uint64_t FaceObservation.facePrint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 76);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 34);
  v9 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 34) = v8;
  *(a1 + 32) = v9;

  return sub_1A5B06658(v4, v5, v6, v7, v9);
}

uint64_t FaceObservation.attributes.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FaceObservation(0) + 80);
  memcpy(__dst, (v1 + v3), 0x102uLL);
  memcpy(a1, (v1 + v3), 0x102uLL);
  return sub_1A5B31A34(__dst, &v5, &qword_1EB1F2BB0);
}

__n128 FaceObservation.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 88);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = *(v3 + 80);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  return result;
}

uint64_t FaceObservation.expressions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FaceObservation(0) + 92));
  v4 = *v3;
  LOWORD(v3) = *(v3 + 4);
  *a1 = v4;
  *(a1 + 8) = v3;
}

uint64_t FaceObservation.segments.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 96);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_1A5B31A34(v12, v11, &qword_1EB1F4A48);
}

__n128 FaceObservation.alignedBoundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceObservation(0) + 100);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1A5CE0B30()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x726F6353657A6167, 0xEC000000203A7365);
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605A270);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605A290);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605A2B0);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0, 0xE000000000000000);

  MEMORY[0x1AC554600](0x6556657A6167203BLL, 0xEE00203A726F7463);
  type metadata accessor for CGPoint(0);
  sub_1A5FD481C();
  MEMORY[0x1AC554600](0, 0xE000000000000000);
}

uint64_t FaceObservation.description.getter()
{
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_1A5FD46AC();
  v31 = 0;
  v32 = 0xE000000000000000;
  MEMORY[0x1AC554600](0x203A64697575, 0xE600000000000000);
  v1 = type metadata accessor for FaceObservation(0);
  sub_1A5FD367C();
  sub_1A5D13500(&qword_1EB1EE738, MEMORY[0x1E69695A8]);
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0x69646E756F620A3BLL, 0xEF203A786F42676ELL);
  v3 = sub_1A5C64D80(v1, &protocol witness table for FaceObservation);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0x6469666E6F630A3BLL, 0xEE00203A65636E65);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0x6152656D69740A3BLL, 0xED0000203A65676ELL);
  v4 = (v0 + v1[13]);
  v5 = *(v4 + 48);
  v6 = v4[1];
  v33 = *v4;
  v34 = v6;
  v35 = v4[2];
  LOBYTE(v36) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE748);
  v7 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v7);

  MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A605A010);
  v8 = (v0 + v1[28]);
  v9 = v8[1];
  v33 = *v8;
  v34 = v9;
  sub_1A5B06A88();
  v10 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v10);

  MEMORY[0x1AC554600](0x203A6C6C6F720A3BLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8);
  sub_1A5FD337C();
  sub_1A5CE1210();
  v11 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v11);

  MEMORY[0x1AC554600](0x203A7761790A3BLL, 0xE700000000000000);
  sub_1A5FD337C();
  v12 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v12);

  MEMORY[0x1AC554600](0x3A68637469700A3BLL, 0xE900000000000020);
  sub_1A5FD337C();
  *&v33 = v13;
  v14 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v14);

  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605A030);
  v15 = (v0 + v1[8]);
  v16 = *v15;
  WORD2(v33) = *(v15 + 2);
  LODWORD(v33) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4ED8);
  v17 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v17);

  MEMORY[0x1AC554600](0x616D646E616C0A3BLL, 0xED0000203A736B72);
  v18 = v0[1];
  v19 = v0[3];
  v35 = v0[2];
  v36 = v19;
  v20 = v0[1];
  v33 = *v0;
  v34 = v20;
  v21 = v0[3];
  v28 = v35;
  v29 = v21;
  v37 = *(v0 + 8);
  v30 = *(v0 + 8);
  v26 = v33;
  v27 = v18;
  sub_1A5B31A34(&v33, v25, &qword_1EB1F2370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2370);
  v22 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v22);

  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A605A050);
  LOWORD(v26) = *(v0 + v1[14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
  v23 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v23);

  return v31;
}

unint64_t sub_1A5CE1210()
{
  result = qword_1EB1F4ED0;
  if (!qword_1EB1F4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4ED0);
  }

  return result;
}

double FaceObservation.init(unalignedBoundingBox:alignedBoundingBox:revision:)@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, __int128 *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v54 = &v50 - v9;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = *a3;
  if (v15 == 6)
  {
    v15 = -8;
  }

  v57 = v15;
  v16 = objc_opt_self();
  v17 = [v16 radians];
  v18 = type metadata accessor for FaceObservation(0);
  sub_1A5B16F58(0, &qword_1EB1EE608);
  v19 = *a1;
  v55 = a1[1];
  v56 = v19;
  sub_1A5FD336C();
  v20 = [v16 radians];
  sub_1A5FD336C();
  v21 = [v16 radians];
  sub_1A5FD336C();
  sub_1A5FD366C();
  static NormalizedRect.fullImage.getter(v58);
  sub_1A5CE02A4(v59);
  v22 = type metadata accessor for FaceObservation.Gaze(0);
  v23 = *(*(v22 - 8) + 56);
  v52 = v58[1];
  v53 = v58[0];
  v23(v10, 1, 1, v22);
  *(a4 + 8) = 0;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v24 = a4 + v18[8];
  *(v24 + 4) = -16;
  *v24 = 0;
  v25 = a4 + v18[15];
  *v25 = 0;
  *(v25 + 12) = -16;
  *(v25 + 8) = 0;
  v26 = a4 + v18[16];
  *v26 = 0;
  *(v26 + 12) = -16;
  *(v26 + 8) = 0;
  v27 = a4 + v18[17];
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = -16;
  v28 = a4 + v18[18];
  *(v28 + 4) = -16;
  *v28 = 0;
  v29 = a4 + v18[19];
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 34) = 0;
  *(v29 + 32) = -16;
  v50 = v18[20];
  memcpy(a4 + v50, v59, 0x102uLL);
  v51 = v18[21];
  v23(a4 + v51, 1, 1, v22);
  v30 = a4 + v18[22];
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *v30 = 0u;
  *(v30 + 80) = -16;
  v31 = a4 + v18[23];
  *v31 = 0;
  *(v31 + 8) = 0;
  v32 = a4 + v18[24];
  *(v32 + 80) = 0;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *v32 = 0u;
  v33 = a4 + v18[25];
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 1;
  v34 = a4 + v18[26];
  v35 = a4 + v18[27];
  v36 = *a4;
  v37 = a4[1];
  v38 = a4[2];
  v39 = a4[3];
  v61 = *(a4 + 8);
  v60[2] = v38;
  v60[3] = v39;
  v60[0] = v36;
  v60[1] = v37;
  sub_1A5B10168(v60, &qword_1EB1F2370);
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *(a4 + 8) = 0;
  *(v24 + 4) = -16;
  *v24 = 0;
  v40 = (a4 + v18[9]);
  *v40 = v11;
  v40[1] = v12;
  v40[2] = v13;
  v40[3] = v14;
  *(a4 + v18[12]) = 1065353216;
  v41 = a4 + v18[13];
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *v41 = 0u;
  *(v41 + 48) = 1;
  *(a4 + v18[14]) = v57;
  v42 = (a4 + v18[28]);
  v43 = v52;
  *v42 = v53;
  v42[1] = v43;
  v44 = (a4 + v18[10]);
  v45 = v55;
  *v44 = v56;
  v44[1] = v45;
  *v33 = v11;
  *(v33 + 8) = v12;
  *(v33 + 16) = v13;
  *(v33 + 24) = v14;
  *(v33 + 32) = 0;
  *v34 = 0;
  *(v34 + 4) = 1;
  *v35 = 0;
  *(v35 + 4) = 1;
  v46 = v50;
  memcpy(v62, a4 + v50, 0x102uLL);
  sub_1A5B10168(v62, &qword_1EB1F2BB0);
  memcpy(a4 + v46, v59, 0x102uLL);
  sub_1A5C371FC(v54, a4 + v51);
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *(v30 + 64) = 0u;
  *(v30 + 80) = -16;

  *v31 = 0;
  *(v31 + 8) = 0;
  v47 = *(v32 + 48);
  v63[2] = *(v32 + 32);
  v63[3] = v47;
  v63[4] = *(v32 + 64);
  v64 = *(v32 + 80);
  v48 = *(v32 + 16);
  v63[0] = *v32;
  v63[1] = v48;
  sub_1A5B10168(v63, &qword_1EB1F4A48);
  result = 0.0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0;
  return result;
}

uint64_t FaceObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for FaceObservation(0);
  sub_1A5D13500(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE17A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1A5FD367C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1A5CE1828@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 sub_1A5CE185C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A5CE1870(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5D13500(&qword_1EB1F4798, type metadata accessor for FaceObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

unint64_t FaceObservation.CaptureQuality.description.getter()
{
  sub_1A5FD46AC();

  sub_1A5B23504();
  v0 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_1A5CE19A0()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_1A5CE19DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6052B00 == a2)
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

uint64_t sub_1A5CE1ABC(uint64_t a1)
{
  v2 = sub_1A5D13548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE1AF8(uint64_t a1)
{
  v2 = sub_1A5D13548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__int16 *sub_1A5CE1BBC@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *result;
  *a2 = a3;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_1A5CE1C30@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *v3;
  v7 = *(v3 + 3);
  v28 = *(v3 + 3);
  v29 = *(v3 + 2);
  v8 = *(v3 + 8);
  if (qword_1EB266BE0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v9 = qword_1EB266BF0;
    if (!*(qword_1EB266BF0 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    result = sub_1A5D0E134(result);
    if ((v10 & 1) == 0)
    {
      goto LABEL_23;
    }

    v11 = *(*(v9 + 56) + 8 * result);
    v12 = *(v11 + 16);

    static NormalizedPoint.zero.getter(&v30);
    if (!v12)
    {
      break;
    }

    v27 = v30;
    result = sub_1A5FD3F9C();
    v13 = result;
    *(result + 16) = v12;
    v14 = (result + 32);
    if (v12 < 4)
    {
      v15 = 0;
      v16 = v27;
LABEL_11:
      v20 = v12 - v15;
      do
      {
        *v14++ = v16;
        --v20;
      }

      while (v20);
      goto LABEL_13;
    }

    v15 = v12 & 0x7FFFFFFFFFFFFFFCLL;
    v14 += v12 & 0x7FFFFFFFFFFFFFFCLL;
    *&v17 = v27.i64[0];
    *(&v17 + 1) = vdupq_laneq_s64(v27, 1).u64[0];
    v18 = (result + 64);
    v19 = v12 & 0x7FFFFFFFFFFFFFFCLL;
    v16 = v27;
    do
    {
      *(v18 - 2) = v17;
      *(v18 - 1) = v17;
      *v18 = v17;
      v18[1] = v17;
      v18 += 4;
      v19 -= 4;
    }

    while (v19);
    if (v12 != v15)
    {
      goto LABEL_11;
    }

LABEL_13:
    if (v12 > *(result + 16))
    {
      goto LABEL_24;
    }

    v21 = (v11 + 32);
    v22 = *(v7 + 16);
    v23 = 32;
    while (1)
    {
      v25 = *v21++;
      v24 = v25;
      if (v25 >= v22)
      {
        break;
      }

      *(result + v23) = *(v7 + 32 + 16 * v24);
      v23 += 16;
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    v26 = result;
    swift_once();
    result = v26;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(a3 + 32) = v29;
  *(a3 + 48) = v28;
  *a3 = v5;
  *(a3 + 8) = v13;
  *(a3 + 16) = v8;
  *(a3 + 24) = v6;
}

uint64_t FaceObservation.Landmarks2D.description.getter()
{
  v1 = *(v0 + 24);
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605A0A0);
  v2 = MEMORY[0x1AC554750](v1, &type metadata for NormalizedPoint);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A6052A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
  v3 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A605A0C0);
  sub_1A5B06A88();
  v4 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v4);

  return 0;
}

uint64_t sub_1A5CE2194()
{
  v0 = sub_1A5FD3F9C();
  *(v0 + 16) = 76;
  bzero((v0 + 32), 0x260uLL);
  *(v0 + 32) = xmmword_1A6027760;
  *(v0 + 48) = xmmword_1A6027770;
  *(v0 + 64) = xmmword_1A6027780;
  *(v0 + 80) = xmmword_1A6027790;
  *(v0 + 96) = xmmword_1A60277A0;
  *(v0 + 112) = xmmword_1A60277B0;
  *(v0 + 128) = xmmword_1A60277C0;
  *(v0 + 144) = xmmword_1A60277D0;
  *(v0 + 160) = xmmword_1A60277E0;
  *(v0 + 176) = xmmword_1A60277F0;
  *(v0 + 192) = xmmword_1A6027800;
  *(v0 + 208) = xmmword_1A6027810;
  *(v0 + 224) = xmmword_1A6027820;
  *(v0 + 240) = xmmword_1A6027830;
  *(v0 + 256) = xmmword_1A6027840;
  *(v0 + 272) = xmmword_1A6027850;
  *(v0 + 288) = xmmword_1A6027860;
  *(v0 + 304) = xmmword_1A6027870;
  *(v0 + 320) = xmmword_1A6027880;
  *(v0 + 336) = xmmword_1A6027890;
  *(v0 + 352) = xmmword_1A60278A0;
  *(v0 + 368) = xmmword_1A60278B0;
  *(v0 + 384) = xmmword_1A60278C0;
  *(v0 + 400) = xmmword_1A60278D0;
  *(v0 + 416) = xmmword_1A60278E0;
  *(v0 + 432) = xmmword_1A60278F0;
  *(v0 + 448) = xmmword_1A6027900;
  *(v0 + 464) = xmmword_1A6027910;
  *(v0 + 480) = xmmword_1A6027920;
  *(v0 + 496) = xmmword_1A6027930;
  *(v0 + 512) = xmmword_1A6027940;
  *(v0 + 528) = xmmword_1A6027950;
  *(v0 + 544) = xmmword_1A6027960;
  *(v0 + 560) = xmmword_1A6027970;
  *(v0 + 576) = xmmword_1A6027980;
  *(v0 + 592) = xmmword_1A6027990;
  *(v0 + 608) = xmmword_1A60279A0;
  *(v0 + 624) = xmmword_1A60279B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B90);
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  *(inited + 40) = &unk_1F196AB08;
  *(inited + 48) = 2;
  *(inited + 56) = &unk_1F196ABB0;
  *(inited + 64) = 3;
  *(inited + 72) = &unk_1F196AC88;
  *(inited + 80) = 4;
  *(inited + 88) = &unk_1F196ACD8;
  *(inited + 96) = 5;
  *(inited + 104) = &unk_1F196AD38;
  *(inited + 112) = 6;
  *(inited + 120) = &unk_1F196ADF8;
  *(inited + 128) = 7;
  *(inited + 136) = &unk_1F196AE48;
  *(inited + 144) = 8;
  *(inited + 152) = &unk_1F196AE98;
  *(inited + 160) = 9;
  *(inited + 168) = &unk_1F196AEC0;
  *(inited + 176) = 10;
  *(inited + 184) = &unk_1F196AF40;
  *(inited + 192) = 11;
  *(inited + 200) = &unk_1F196AF90;
  *(inited + 208) = 12;
  *(inited + 216) = &unk_1F196AFE0;
  *(inited + 224) = 13;
  *(inited + 16) = xmmword_1A60279C0;
  *(inited + 232) = &unk_1F196B008;
  *(inited + 240) = 14;
  *(inited + 248) = &unk_1F196B088;
  *(inited + 256) = 15;
  *(inited + 264) = &unk_1F196B118;
  *(inited + 272) = 16;
  *(inited + 280) = &unk_1F196B168;
  *(inited + 288) = 17;
  *(inited + 296) = &unk_1F196B1D8;
  *(inited + 304) = 0;
  *(inited + 312) = v0;
  v2 = sub_1A5D15834(inited);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B98);
  result = swift_arrayDestroy();
  qword_1EB266BE8 = v0;
  qword_1EB266BF0 = v2;
  return result;
}

uint64_t sub_1A5CE2548(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5CE25A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE2600()
{
  v1 = *v0;
  v2 = 0x6B72616D646E616CLL;
  v3 = 0xD000000000000011;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001CLL;
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

uint64_t sub_1A5CE26B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D15944(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CE26E0(uint64_t a1)
{
  v2 = sub_1A5D1359C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE271C(uint64_t a1)
{
  v2 = sub_1A5D1359C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Landmarks2D.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = v8;
  v10 = *(v1 + 2);
  v15 = *(v1 + 3);
  v16 = v10;
  v17 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1359C();
  sub_1A5FD4CDC();
  LOWORD(v21) = v7;
  v23 = 0;
  sub_1A5B0A760();
  v11 = v20;
  sub_1A5FD4A0C();
  if (!v11)
  {
    v12 = v17;
    v13 = v18;
    *&v21 = v19;
    *(&v21 + 1) = v9;
    v23 = 1;
    sub_1A5B06670(v19, v9);
    sub_1A5B0A6B8();
    sub_1A5FD4A5C();
    sub_1A5B066DC(v21, *(&v21 + 1));
    *&v21 = v13;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEC80);
    sub_1A5D135F0();
    sub_1A5FD4A5C();
    v21 = v16;
    v22 = v15;
    v23 = 3;
    sub_1A5B0A30C();
    sub_1A5FD4A5C();
    *&v21 = v12;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E28);
    sub_1A5C84B90(&qword_1EB1F3E20);
    sub_1A5FD4A0C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FaceObservation.Landmarks2D.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 8);
  if (*v1 < 0xFFF8u)
  {
    sub_1A5FD4C3C();
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  else
  {
    sub_1A5FD4C3C();
  }

  sub_1A5FD35EC();
  MEMORY[0x1AC555420](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    sub_1A5B23DE4();
    do
    {
      v6 += 16;
      sub_1A5FD3CBC();
      --v5;
    }

    while (v5);
  }

  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  if (!v4)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5FD4C3C();
  return sub_1A5D10504(a1, v4);
}

uint64_t FaceObservation.Landmarks2D.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.Landmarks2D.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Landmarks2D.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1359C();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v9 = v30;
  LOBYTE(v25) = 1;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v23 = v30;
  v24 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEC80);
  LOBYTE(v25) = 2;
  sub_1A5D13674();
  sub_1A5FD497C();
  v22 = v30;
  LOBYTE(v25) = 3;
  sub_1A5B0A400();
  sub_1A5FD497C();
  v10 = v30;
  v11 = v31;
  v12 = v32;
  v13 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E28);
  v39 = 4;
  sub_1A5C84B90(&qword_1EB1F3E48);
  sub_1A5FD492C();
  (*(v6 + 8))(v8, v5);
  v14 = v40;
  LOWORD(v25) = v9;
  v15 = v23;
  *(&v25 + 1) = v23;
  v16 = v24;
  v17 = v22;
  *&v26 = v24;
  *(&v26 + 1) = v22;
  *&v27 = v10;
  *(&v27 + 1) = v11;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  v29 = v40;
  *(a2 + 64) = v40;
  v18 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v18;
  v19 = v26;
  *a2 = v25;
  *(a2 + 16) = v19;
  sub_1A5D136F8(&v25, &v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOWORD(v30) = v9;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  return sub_1A5D13730(&v30);
}

uint64_t sub_1A5CE303C()
{
  sub_1A5FD4C1C();
  FaceObservation.Landmarks2D.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE3080()
{
  sub_1A5FD4C1C();
  FaceObservation.Landmarks2D.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE30BC(uint64_t a1)
{
  v2 = sub_1A5D1385C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE30F8(uint64_t a1)
{
  v2 = sub_1A5D1385C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE3134()
{
  v1 = 0x656E6E6F63736964;
  if (*v0 != 1)
  {
    v1 = 0x687461506E65706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61506465736F6C63;
  }
}

uint64_t sub_1A5CE319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D15B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CE31C4(uint64_t a1)
{
  v2 = sub_1A5D13760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE3200(uint64_t a1)
{
  v2 = sub_1A5D13760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE323C(uint64_t a1)
{
  v2 = sub_1A5D13808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE3278(uint64_t a1)
{
  v2 = sub_1A5D13808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE32B4(uint64_t a1)
{
  v2 = sub_1A5D137B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE32F0(uint64_t a1)
{
  v2 = sub_1A5D137B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Landmarks2D.Region.PointsClassification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F00);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F08);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F10);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13760();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5D13808();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5D137B4();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5D1385C();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t FaceObservation.Landmarks2D.Region.PointsClassification.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F20);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F28);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F30);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F38);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13760();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1A5D13808();
          v27 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1A5D137B4();
          v31 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1A5D1385C();
        v29 = v34;
        sub_1A5FD48CC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_1A5FD471C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
  *v23 = &type metadata for FaceObservation.Landmarks2D.Region.PointsClassification;
  sub_1A5FD48DC();
  sub_1A5FD470C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t FaceObservation.Landmarks2D.Region.pointsInImageCoordinates(_:origin:)(double a1, double a2)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v22 = *(v2 + 48);
    v23 = *(v2 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    sub_1A5BCCD74(0, v4, 0);
    v5 = v25;
    v11 = (v3 + 32);
    do
    {
      v12 = *v11;
      v13 = v23;
      v24[0] = v23;
      v24[1] = v22;
      v24[2] = v12;
      v14 = a1;
      *&v12 = a2;
      v17 = NormalizedPoint.toImageCoordinates(from:imageSize:origin:)(*(&v8 - 3), __PAIR128__(v10, v9), v24);
      y = v17.y;
      x = v17.x;
      v25 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1A5BCCD74((v18 > 1), v19 + 1, 1);
        y = v17.y;
        x = v17.x;
        v5 = v25;
      }

      *(v5 + 16) = v19 + 1;
      v20 = v5 + 16 * v19;
      *(v20 + 32) = x;
      *(v20 + 40) = y;
      ++v11;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t FaceObservation.Landmarks2D.Region.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = *(v1 + 12);
  MEMORY[0x1AC555420](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = v5 + 32;
    sub_1A5B23DE4();
    do
    {
      v8 += 16;
      sub_1A5FD3CBC();
      --v7;
    }

    while (v7);
  }

  MEMORY[0x1AC555420](v3);
  sub_1A5FD4C3C();
  if (v4)
  {
    sub_1A5D10504(a1, v4);
  }

  if (v6 >= 0xFFF8)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5FD4C3C();
  sub_1A5B0A85C();
  return sub_1A5FD3CBC();
}

uint64_t FaceObservation.Landmarks2D.Region.description.getter()
{
  v1 = *(v0 + 8);
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x203A73746E696F70, 0xE800000000000000);
  v2 = MEMORY[0x1AC554750](v1, &type metadata for NormalizedPoint);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A605A0F0);
  sub_1A5FD481C();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605A110);
  sub_1A5B06A88();
  v3 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0xD00000000000001FLL, 0x80000001A605A130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
  v4 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v4);

  return 0;
}

unint64_t sub_1A5CE40A8()
{
  v1 = *v0;
  v2 = 0x73746E696F70;
  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0x6E756F4265636166;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1A5CE4158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5D15C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CE4180(uint64_t a1)
{
  v2 = sub_1A5D138B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE41BC(uint64_t a1)
{
  v2 = sub_1A5D138B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Landmarks2D.Region.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v9;
  v21 = *(v1 + 12);
  v10 = *(v1 + 2);
  v15 = *(v1 + 3);
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D138B0();
  v11 = v4;
  sub_1A5FD4CDC();
  LOBYTE(v19) = v8;
  v22 = 0;
  sub_1A5D13904();
  sub_1A5FD4A5C();
  if (!v2)
  {
    v12 = v17;
    v13 = v21;
    *&v19 = v18;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEC80);
    sub_1A5D135F0();
    sub_1A5FD4A5C();
    *&v19 = v12;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E28);
    sub_1A5C84B90(&qword_1EB1F3E20);
    sub_1A5FD4A0C();
    LOWORD(v19) = v13;
    v22 = 3;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
    v19 = v16;
    v20 = v15;
    v22 = 4;
    sub_1A5B0A30C();
    sub_1A5FD4A5C();
  }

  return (*(v5 + 8))(v7, v11);
}

uint64_t FaceObservation.Landmarks2D.Region.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.Landmarks2D.Region.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Landmarks2D.Region.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D138B0();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  sub_1A5D13958();
  sub_1A5FD497C();
  v9 = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEC80);
  LOBYTE(v21) = 1;
  sub_1A5D13674();
  sub_1A5FD497C();
  v20 = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3E28);
  LOBYTE(v21) = 2;
  sub_1A5C84B90(&qword_1EB1F3E48);
  sub_1A5FD492C();
  v19 = v25[0];
  LOBYTE(v21) = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v10 = v25[0];
  v31 = 4;
  sub_1A5B0A400();
  sub_1A5FD497C();
  (*(v6 + 8))(v8, v5);
  v11 = v29;
  v12 = v30;
  LOBYTE(v21) = v9;
  v13 = v20;
  *(&v21 + 1) = v20;
  v14 = v19;
  *&v22 = v19;
  WORD4(v22) = v10;
  v23 = v29;
  v24 = v30;
  v15 = v22;
  *a2 = v21;
  a2[1] = v15;
  v16 = v24;
  a2[2] = v23;
  a2[3] = v16;
  sub_1A5D139AC(&v21, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v25[0]) = v9;
  v25[1] = v13;
  v25[2] = v14;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  return sub_1A5D139E4(v25);
}

uint64_t sub_1A5CE4958()
{
  sub_1A5FD4C1C();
  FaceObservation.Landmarks2D.Region.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE499C()
{
  sub_1A5FD4C1C();
  FaceObservation.Landmarks2D.Region.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE49DC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  MEMORY[0x1AC555420](v5);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1AC555420](v7);
      --v5;
    }

    while (v5);
  }

  v8 = v2[1];
  v9 = *(v8 + 16);
  MEMORY[0x1AC555420](v9);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      MEMORY[0x1AC555420](v11);
      --v9;
    }

    while (v9);
  }

  v12 = v2[2];
  v13 = *(v12 + 16);
  MEMORY[0x1AC555420](v13);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      MEMORY[0x1AC555420](v15);
      --v13;
    }

    while (v13);
  }

  v16 = v2[3];
  v17 = *(v16 + 16);
  MEMORY[0x1AC555420](v17);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      MEMORY[0x1AC555420](v19);
      --v17;
    }

    while (v17);
  }

  v20 = v2[4];
  v21 = *(v20 + 16);
  MEMORY[0x1AC555420](v21);
  if (v21)
  {
    v22 = (v20 + 32);
    do
    {
      v23 = *v22++;
      MEMORY[0x1AC555420](v23);
      --v21;
    }

    while (v21);
  }

  v24 = v2[5];
  v25 = *(v24 + 16);
  MEMORY[0x1AC555420](v25);
  if (v25)
  {
    v26 = (v24 + 32);
    do
    {
      v27 = *v26++;
      MEMORY[0x1AC555420](v27);
      --v25;
    }

    while (v25);
  }

  v28 = v2[6];
  v29 = *(v28 + 16);
  MEMORY[0x1AC555420](v29);
  if (v29)
  {
    v30 = (v28 + 32);
    do
    {
      v31 = *v30++;
      MEMORY[0x1AC555420](v31);
      --v29;
    }

    while (v29);
  }

  v32 = v2[7];
  v33 = *(v32 + 16);
  MEMORY[0x1AC555420](v33);
  if (v33)
  {
    v34 = (v32 + 32);
    do
    {
      v35 = *v34++;
      MEMORY[0x1AC555420](v35);
      --v33;
    }

    while (v33);
  }

  v36 = v2[8];
  v37 = *(v36 + 16);
  MEMORY[0x1AC555420](v37);
  if (v37)
  {
    v38 = (v36 + 32);
    do
    {
      v39 = *v38++;
      MEMORY[0x1AC555420](v39);
      --v37;
    }

    while (v37);
  }

  v40 = v2[9];
  v41 = *(v40 + 16);
  MEMORY[0x1AC555420](v41);
  if (v41)
  {
    v42 = (v40 + 32);
    do
    {
      v43 = *v42++;
      MEMORY[0x1AC555420](v43);
      --v41;
    }

    while (v41);
  }

  v44 = v2[10];
  v45 = *(v44 + 16);
  MEMORY[0x1AC555420](v45);
  if (v45)
  {
    v46 = (v44 + 32);
    do
    {
      v47 = *v46++;
      MEMORY[0x1AC555420](v47);
      --v45;
    }

    while (v45);
  }

  v48 = v2[11];
  v49 = *(v48 + 16);
  MEMORY[0x1AC555420](v49);
  if (v49)
  {
    v50 = (v48 + 32);
    do
    {
      v51 = *v50++;
      MEMORY[0x1AC555420](v51);
      --v49;
    }

    while (v49);
  }

  v52 = v2[12];
  v53 = *(v52 + 16);
  MEMORY[0x1AC555420](v53);
  if (v53)
  {
    v54 = (v52 + 32);
    do
    {
      v55 = *v54++;
      MEMORY[0x1AC555420](v55);
      --v53;
    }

    while (v53);
  }

  v56 = v2[13];
  v57 = *(v56 + 16);
  MEMORY[0x1AC555420](v57);
  if (v57)
  {
    v58 = (v56 + 32);
    do
    {
      v59 = *v58++;
      MEMORY[0x1AC555420](v59);
      --v57;
    }

    while (v57);
  }

  v60 = v2[14];
  v61 = *(v60 + 16);
  MEMORY[0x1AC555420](v61);
  if (v61)
  {
    v62 = (v60 + 32);
    do
    {
      v63 = *v62++;
      MEMORY[0x1AC555420](v63);
      --v61;
    }

    while (v61);
  }

  v64 = v2[15];
  v65 = *(v64 + 16);
  MEMORY[0x1AC555420](v65);
  if (v65)
  {
    v66 = (v64 + 32);
    do
    {
      v67 = *v66++;
      MEMORY[0x1AC555420](v67);
      --v65;
    }

    while (v65);
  }

  v68 = v2[16];
  v69 = *(v68 + 16);
  MEMORY[0x1AC555420](v69);
  if (v69)
  {
    v70 = (v68 + 32);
    do
    {
      v71 = *v70++;
      MEMORY[0x1AC555420](v71);
      --v69;
    }

    while (v69);
  }

  v72 = v2[17];
  v73 = *(v72 + 16);
  MEMORY[0x1AC555420](v73);
  if (v73)
  {
    v74 = (v72 + 32);
    do
    {
      v75 = *v74++;
      MEMORY[0x1AC555420](v75);
      --v73;
    }

    while (v73);
  }

  MEMORY[0x1AC555420](v2[18]);
  v76 = v2[19];

  return sub_1A5D0FC88(a1, v76);
}

uint64_t sub_1A5CE4CF8()
{
  sub_1A5FD4C1C();
  sub_1A5CE49DC(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE4D3C()
{
  sub_1A5FD4C1C();
  sub_1A5CE49DC(v1);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.FacePrint.ConfidenceScoreType.description.getter()
{
  if (*v0)
  {
    return 0x64696F6D676973;
  }

  else
  {
    return 0x78616D74666F73;
  }
}

uint64_t sub_1A5CE4DC8(uint64_t a1)
{
  v2 = sub_1A5D13A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE4E04(uint64_t a1)
{
  v2 = sub_1A5D13A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE4E40(uint64_t a1)
{
  v2 = sub_1A5D13A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE4E7C(uint64_t a1)
{
  v2 = sub_1A5D13A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE4EB8(uint64_t a1)
{
  v2 = sub_1A5D13ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE4EF4(uint64_t a1)
{
  v2 = sub_1A5D13ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.FacePrint.ConfidenceScoreType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F60);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F68);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13A14();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5D13A68();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5D13ABC();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FaceObservation.FacePrint.ConfidenceScoreType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F78);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F80);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F88);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13A14();
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
    *v21 = &type metadata for FaceObservation.FacePrint.ConfidenceScoreType;
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
    sub_1A5D13A68();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5D13ABC();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t FaceObservation.FacePrint.data.getter()
{
  v1 = *v0;
  sub_1A5B06670(*v0, *(v0 + 8));
  return v1;
}

uint64_t FaceObservation.FacePrint.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A5B066DC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

float FaceObservation.FacePrint.distance(to:distanceFunction:)(__int128 *a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = *(a1 + 7);
  v6 = *(a1 + 16);
  v7 = *(a1 + 34);
  v8 = *a2;
  v9 = *(v2 + 2);
  v10 = *(v2 + 24);
  v11 = *(v2 + 7);
  v12 = *(v2 + 16);
  v13 = *(v2 + 34);
  v21 = *v2;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v15 = *a1;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v27 = v8;
  sub_1A5BB157C(&v15, &v27, &type metadata for FaceObservation.FacePrint, &off_1F196B3A8);
  return result;
}

uint64_t FaceObservation.FacePrint.lengthInBytes.getter()
{
  v1 = *(v0 + 16);
  if (!*(v0 + 24))
  {
    if ((v1 - 0x2000000000000000) >> 62 == 3)
    {
      return 4 * v1;
    }

    goto LABEL_10;
  }

  if (*(v0 + 24) == 1)
  {
    if ((v1 - 0x1000000000000000) >> 61 == 7)
    {
      return 8 * v1;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 + 0x4000000000000000 >= 0)
  {
    return 2 * v1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t FaceObservation.FacePrint.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x43746E656D656C65, 0xEE00203A746E756FLL);
  v3 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0x6E656D656C65203BLL, 0xEF203A6570795474);
  sub_1A5FD481C();
  result = MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A6052AC0);
  if (!v2)
  {
    if ((v1 - 0x2000000000000000) >> 62 == 3)
    {
      goto LABEL_8;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if ((v1 - 0x1000000000000000) >> 61 == 7)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (v1 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v5 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v5);

    MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A6052AE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F90);
    v6 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v6);

    MEMORY[0x1AC554600](0x6469666E6F63203BLL, 0xEE00203A65636E65);
    sub_1A5FD420C();
    MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A605A150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
    v7 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v7);

    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t FaceObservation.FacePrint.init(with:_:_:confidence:confidenceScoreType:requestDescriptor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, _WORD *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v8 = *a4;
  v9 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v8;
  *(a7 + 28) = a8;
  *(a7 + 34) = v9;
  *(a7 + 32) = *a6;
  return result;
}

uint64_t sub_1A5CE5C04(uint64_t a1)
{
  v2 = sub_1A5D13B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE5C40(uint64_t a1)
{
  v2 = sub_1A5D13B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.FacePrint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4F98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v22 = *(v1 + 16);
  v10 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = v10;
  HIDWORD(v19) = *(v1 + 34);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1A5B06670(v8, v9);
  sub_1A5D13B10();
  sub_1A5FD4CDC();
  v24 = v8;
  v25 = v9;
  v23 = 0;
  sub_1A5B0A6B8();
  sub_1A5FD4A5C();
  if (v2)
  {
    sub_1A5B066DC(v24, v25);
  }

  else
  {
    v16 = v20;
    v15 = v21;
    v17 = BYTE4(v19);
    sub_1A5B066DC(v24, v25);
    LOBYTE(v24) = 1;
    sub_1A5FD4A4C();
    LOBYTE(v24) = v15;
    v23 = 2;
    sub_1A5B0A70C();
    sub_1A5FD4A5C();
    LOBYTE(v24) = 3;
    sub_1A5FD4A3C();
    LOWORD(v24) = v16;
    v23 = 4;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
    LOBYTE(v24) = v17;
    v23 = 5;
    sub_1A5D13B64();
    sub_1A5FD4A0C();
  }

  return (*(v5 + 8))(v7, v14);
}

uint64_t FaceObservation.FacePrint.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 34);
  sub_1A5FD35EC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0A808();
  sub_1A5FD3CBC();
  sub_1A5FD4C4C();
  if (v2 < 0xFFF8)
  {
    sub_1A5FD4C3C();
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
    if (v3 != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A5FD4C3C();
    if (v3 != 2)
    {
LABEL_3:
      sub_1A5FD4C3C();
      return MEMORY[0x1AC555420](v3 & 1);
    }
  }

  return sub_1A5FD4C3C();
}

uint64_t FaceObservation.FacePrint.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.FacePrint.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.FacePrint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4FA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D13B10();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v10 = v21;
  v9 = v22;
  LOBYTE(v21) = 1;
  v19 = sub_1A5FD496C();
  v20 = 2;
  sub_1A5B0A904();
  sub_1A5FD497C();
  v18 = v21;
  LOBYTE(v21) = 3;
  sub_1A5FD495C();
  v12 = v11;
  v20 = 4;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v17 = v21;
  v20 = 5;
  sub_1A5D13BB8();
  sub_1A5FD492C();
  (*(v6 + 8))(v8, v5);
  v14 = v21;
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v19;
  v15 = v17;
  *(a2 + 24) = v18;
  *(a2 + 28) = v12;
  *(a2 + 32) = v15;
  *(a2 + 34) = v14;
  sub_1A5B06670(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A5B066DC(v10, v9);
}

uint64_t sub_1A5CE63CC()
{
  sub_1A5FD4C1C();
  FaceObservation.FacePrint.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE6444()
{
  sub_1A5FD4C1C();
  FaceObservation.FacePrint.hash(into:)();
  return sub_1A5FD4C6C();
}

float FaceObservation.Attributes.Attribute.confidence.getter()
{
  sub_1A5FD3C8C();
  result = v1;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

float FaceObservation.Attributes.Attribute.confidence(for:)()
{
  sub_1A5FD3C8C();
  result = v1;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t FaceObservation.Attributes.Attribute.description.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_1A5FD3D7C();
}

uint64_t sub_1A5CE668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1A5FD456C();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v28 = a1;
  v34 = a1;
  v30 = a2;
  v31 = a3;
  v26 = a3;
  v32 = a4;
  v33 = a5;
  sub_1A5FD3C5C();
  swift_getWitnessTable();
  sub_1A5FD3E9C();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    result = (*(v24 + 8))(v14, v25);
    __break(1u);
  }

  else
  {
    v22 = *(v18 + 32);
    (v22)(v17, v14, a2);
    (v22)(v21, v17, a2);
    v34 = a2;
    v35 = v26;
    v36 = v27;
    v37 = a5;
    *(v29 + *(type metadata accessor for FaceObservation.Attributes.Attribute() + 52)) = v28;
    return v22();
  }

  return result;
}

uint64_t static FaceObservation.Attributes.Attribute.== infix(_:_:)()
{
  if (sub_1A5FD3D0C())
  {
    type metadata accessor for FaceObservation.Attributes.Attribute();
    v0 = sub_1A5FD3C7C();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1A5CE6A1C(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v11 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = v10 | (v4 << 6);
      v15 = *(*(v3 + 48) + v14);
      v16 = (*(v3 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      sub_1A5B06670(*v16, v17);
      result = v15 == 15;
      if (v15 == 15)
      {
        return result;
      }

      v88 = v11;
      v20 = sub_1A5D0E0CC(v15);
      if ((v21 & 1) == 0)
      {
        goto LABEL_155;
      }

      v22 = (*(v2 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v24 >> 62;
      v26 = v17 >> 62;
      if (v24 >> 62 != 3)
      {
        break;
      }

      if (v23)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v28 = v27 && v17 >> 62 == 3;
      if (!v28 || (!v18 ? (v29 = v17 == 0xC000000000000000) : (v29 = 0), !v29))
      {
LABEL_39:
        v32 = 0;
        if (v26 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v26)
        {
          v36 = BYTE6(v17);
          goto LABEL_46;
        }

        LODWORD(v36) = HIDWORD(v18) - v18;
        if (!__OFSUB__(HIDWORD(v18), v18))
        {
          v36 = v36;
          goto LABEL_46;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
      }

      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_59:
      sub_1A5B066DC(v30, v31);
      v8 = v88;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_39;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
        if (v26 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_161;
    }

    if (v25)
    {
      LODWORD(v32) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_162;
      }

      v32 = v32;
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = BYTE6(v24);
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v26 != 2)
    {
      if (v32)
      {
        goto LABEL_155;
      }

LABEL_58:
      v30 = v18;
      v31 = v17;
      goto LABEL_59;
    }

    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_160;
    }

LABEL_46:
    if (v32 != v36)
    {
LABEL_155:
      sub_1A5B066DC(v18, v17);
      return 0;
    }

    if (v32 < 1)
    {
      goto LABEL_58;
    }

    if (v25 > 1)
    {
      break;
    }

    if (!v25)
    {
      __s1[0] = v23;
      LOWORD(__s1[1]) = v24;
      BYTE2(__s1[1]) = BYTE2(v24);
      BYTE3(__s1[1]) = BYTE3(v24);
      BYTE4(__s1[1]) = BYTE4(v24);
      BYTE5(__s1[1]) = BYTE5(v24);
      if (!v26)
      {
        goto LABEL_81;
      }

      v86 = v23;
      if (v26 != 1)
      {
        v65 = *(v18 + 16);
        v82 = *(v18 + 24);
        sub_1A5B06670(v23, v24);
        v62 = sub_1A5FD33EC();
        v85 = v2;
        if (v62)
        {
          v66 = sub_1A5FD341C();
          if (__OFSUB__(v65, v66))
          {
            goto LABEL_177;
          }

          v62 += v65 - v66;
        }

        v64 = &v82[-v65];
        if (__OFSUB__(v82, v65))
        {
          goto LABEL_169;
        }

        result = sub_1A5FD340C();
        if (!v62)
        {
          goto LABEL_187;
        }

        goto LABEL_119;
      }

      v78 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      sub_1A5B06670(v23, v24);
      v39 = sub_1A5FD33EC();
      if (!v39)
      {
        goto LABEL_186;
      }

      v40 = v39;
      v41 = sub_1A5FD341C();
      if (__OFSUB__(v18, v41))
      {
        goto LABEL_171;
      }

      v42 = (v18 - v41 + v40);
      result = sub_1A5FD340C();
      if (!v42)
      {
        goto LABEL_193;
      }

      goto LABEL_77;
    }

    v84 = v2;
    v47 = v23;
    if (v23 > v23 >> 32)
    {
      goto LABEL_163;
    }

    v86 = v23;
    sub_1A5B06670(v23, v24);
    v48 = sub_1A5FD33EC();
    if (v48)
    {
      v49 = v48;
      v50 = sub_1A5FD341C();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_165;
      }

      v80 = (v47 - v50 + v49);
    }

    else
    {
      v80 = 0;
    }

    sub_1A5FD340C();
    v3 = a1;
    if (v26 == 2)
    {
      v74 = *(v18 + 16);
      v73 = *(v18 + 24);
      v42 = sub_1A5FD33EC();
      if (v42)
      {
        v75 = sub_1A5FD341C();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_179;
        }

        v42 += v74 - v75;
      }

      v35 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      if (v35)
      {
        goto LABEL_175;
      }

      v77 = sub_1A5FD340C();
      if (v77 >= v76)
      {
        v58 = v76;
      }

      else
      {
        v58 = v77;
      }

      result = v80;
      if (!v80)
      {
        goto LABEL_197;
      }

      v2 = v84;
      if (!v42)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v80;
        v2 = v84;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v80)
        {
          goto LABEL_194;
        }

        goto LABEL_150;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_174;
      }

      v42 = sub_1A5FD33EC();
      if (v42)
      {
        v59 = sub_1A5FD341C();
        if (__OFSUB__(v18, v59))
        {
          goto LABEL_181;
        }

        v42 += v18 - v59;
      }

      v2 = v84;
      v60 = sub_1A5FD340C();
      if (v60 >= (v18 >> 32) - v18)
      {
        v58 = (v18 >> 32) - v18;
      }

      else
      {
        v58 = v60;
      }

      result = v80;
      if (!v80)
      {
        goto LABEL_185;
      }

      if (!v42)
      {
        goto LABEL_184;
      }
    }

LABEL_144:
    if (result == v42)
    {
      sub_1A5B066DC(v86, v24);
      sub_1A5B066DC(v18, v17);
      v3 = a1;
      v8 = v88;
    }

    else
    {
      v54 = v58;
LABEL_147:
      v55 = memcmp(result, v42, v54);
      sub_1A5B066DC(v86, v24);
      sub_1A5B066DC(v18, v17);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v88;
      result = 0;
      if (v55)
      {
        return result;
      }
    }
  }

  if (v25 == 2)
  {
    v83 = v2;
    v86 = v23;
    v43 = *(v23 + 16);
    sub_1A5B06670(v23, v24);
    v44 = sub_1A5FD33EC();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1A5FD341C();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_164;
      }

      v79 = (v43 - v46 + v45);
    }

    else
    {
      v79 = 0;
    }

    sub_1A5FD340C();
    v3 = a1;
    if (v26 == 2)
    {
      v69 = *(v18 + 16);
      v68 = *(v18 + 24);
      v42 = sub_1A5FD33EC();
      if (v42)
      {
        v70 = sub_1A5FD341C();
        if (__OFSUB__(v69, v70))
        {
          goto LABEL_178;
        }

        v42 += v69 - v70;
      }

      v35 = __OFSUB__(v68, v69);
      v71 = v68 - v69;
      if (v35)
      {
        goto LABEL_173;
      }

      v72 = sub_1A5FD340C();
      if (v72 >= v71)
      {
        v58 = v71;
      }

      else
      {
        v58 = v72;
      }

      result = v79;
      if (!v79)
      {
        goto LABEL_190;
      }

      v2 = v83;
      if (!v42)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v79;
        v2 = v83;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v79)
        {
          goto LABEL_188;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_1A5B066DC(v86, v24);
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_170;
      }

      v42 = sub_1A5FD33EC();
      if (v42)
      {
        v56 = sub_1A5FD341C();
        if (__OFSUB__(v18, v56))
        {
          goto LABEL_180;
        }

        v42 += v18 - v56;
      }

      v2 = v83;
      v57 = sub_1A5FD340C();
      if (v57 >= (v18 >> 32) - v18)
      {
        v58 = (v18 >> 32) - v18;
      }

      else
      {
        v58 = v57;
      }

      result = v79;
      if (!v79)
      {
        goto LABEL_192;
      }

      if (!v42)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_144;
  }

  memset(__s1, 0, 14);
  if (v26 == 2)
  {
    v61 = *(v18 + 16);
    v81 = *(v18 + 24);
    v86 = v23;
    sub_1A5B06670(v23, v24);
    v62 = sub_1A5FD33EC();
    v85 = v2;
    if (v62)
    {
      v63 = sub_1A5FD341C();
      if (__OFSUB__(v61, v63))
      {
        goto LABEL_176;
      }

      v62 += v61 - v63;
    }

    v64 = &v81[-v61];
    if (__OFSUB__(v81, v61))
    {
      goto LABEL_168;
    }

    result = sub_1A5FD340C();
    if (!v62)
    {
      goto LABEL_195;
    }

LABEL_119:
    if (result >= v64)
    {
      v67 = v64;
    }

    else
    {
      v67 = result;
    }

    v55 = memcmp(__s1, v62, v67);
    sub_1A5B066DC(v86, v24);
    sub_1A5B066DC(v18, v17);
    v2 = v85;
    goto LABEL_148;
  }

  if (v26 != 1)
  {
LABEL_81:
    __s2 = v18;
    v90 = v17;
    v91 = BYTE2(v17);
    v92 = BYTE3(v17);
    v93 = BYTE4(v17);
    v94 = BYTE5(v17);
    v55 = memcmp(__s1, &__s2, BYTE6(v17));
LABEL_151:
    sub_1A5B066DC(v18, v17);
    goto LABEL_152;
  }

  v78 = ((v18 >> 32) - v18);
  if (v18 >> 32 < v18)
  {
    goto LABEL_166;
  }

  v86 = v23;
  sub_1A5B06670(v23, v24);
  v51 = sub_1A5FD33EC();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1A5FD341C();
    if (__OFSUB__(v18, v53))
    {
      goto LABEL_172;
    }

    v42 = (v18 - v53 + v52);
    result = sub_1A5FD340C();
    if (!v42)
    {
      goto LABEL_183;
    }

LABEL_77:
    if (result >= v78)
    {
      v54 = v78;
    }

    else
    {
      v54 = result;
    }

    result = __s1;
    goto LABEL_147;
  }

  sub_1A5FD340C();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  result = sub_1A5FD340C();
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
  return result;
}

unint64_t sub_1A5CE7384(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 15;
    if (v13 != 15)
    {
      v15 = *(*(v3 + 56) + v12);
      result = sub_1A5D0E0CC(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE74A4(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1A5D0E134(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(*(a2 + 56) + 8 * result);
    v16 = *(v15 + 16);
    if (v16 != *(v13 + 16))
    {
      return 0;
    }

    if (v16)
    {
      v17 = v15 == v13;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = (v15 + 32);
      v19 = (v13 + 32);
      while (v16)
      {
        if (*v18 != *v19)
        {
          return 0;
        }

        ++v18;
        ++v19;
        if (!--v16)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_27;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A5CE75F4(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56) + 12 * v12;
    v14 = *v13;
    v15 = *(v13 + 4);
    v16 = *(v13 + 8);
    v17 = sub_1A5D0E134(*(*(v3 + 48) + v12));
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = v17;
    result = 0;
    v20 = *(a2 + 56) + 12 * v19;
    v21 = *v20 == v14 && *(v20 + 4) == v15;
    if (!v21 || ((v16 ^ *(v20 + 8)) & 1) != 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE7730(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 7;
    if (v13 != 7)
    {
      v15 = *(*(v3 + 56) + 4 * v12);
      result = sub_1A5D0E134(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 4 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE7858(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 6;
    if (v13 != 6)
    {
      v15 = *(*(v3 + 56) + 4 * v12);
      result = sub_1A5D0E134(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 4 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE7980(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      v15 = *(*(v3 + 56) + 4 * v12);
      result = sub_1A5D0E134(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 4 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE7AA8(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 4 * v12);
    result = sub_1A5D0E19C(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 4 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5CE7BB0(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 5;
    if (v13 != 5)
    {
      v15 = *(*(v3 + 56) + 4 * v12);
      result = sub_1A5D0E134(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 4 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5CE7CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A605A350 == a2)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A5CE7DE0(char a1)
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](a1 & 1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE7E28(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1A5CE7E7C()
{
  sub_1A5FD4C1C();
  sub_1A5CE7DB8(v2, *v0);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5CE7EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5CE7CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5CE7EEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A5CE7F40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FaceObservation.Attributes.Attribute.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = v4;
  v15 = *(a2 + 16);
  v20 = v15;
  v21 = v4;
  v22 = v13;
  type metadata accessor for FaceObservation.Attributes.Attribute.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1A5FD4A9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v14;
  v10 = v16;
  sub_1A5FD4CDC();
  LOBYTE(v20) = 0;
  v11 = v17;
  sub_1A5FD4A5C();
  if (!v11)
  {
    *&v20 = *(v10 + *(a2 + 52));
    v23 = 1;
    sub_1A5FD3C5C();
    v18 = v9;
    v19 = MEMORY[0x1E69E6458];
    swift_getWitnessTable();
    sub_1A5FD4A5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FaceObservation.Attributes.Attribute.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  sub_1A5FD3CBC();
  v7 = *(v2 + *(a2 + 52));
  v8 = MEMORY[0x1E69E6448];
  v9 = MEMORY[0x1E69E6460];

  return MEMORY[0x1EEE68920](a1, v7, v5, v8, v6, v9);
}

uint64_t FaceObservation.Attributes.Attribute.hashValue.getter(uint64_t a1)
{
  sub_1A5FD4C1C();
  FaceObservation.Attributes.Attribute.hash(into:)(v3, a1);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Attributes.Attribute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v32 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  type metadata accessor for FaceObservation.Attributes.Attribute.CodingKeys();
  swift_getWitnessTable();
  v37 = sub_1A5FD49DC();
  v31 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v29 - v16;
  v33 = a5;
  v34 = a2;
  v41 = a2;
  v42 = a3;
  v36 = a3;
  v43 = a4;
  v44 = a5;
  v18 = type metadata accessor for FaceObservation.Attributes.Attribute();
  v29 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v38;
  sub_1A5FD4CCC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v20;
  v23 = v32;
  v38 = v18;
  v24 = v31;
  LOBYTE(v41) = 0;
  v25 = v34;
  sub_1A5FD497C();
  (*(v23 + 32))(v22, v35, v25);
  sub_1A5FD3C5C();
  v45 = 1;
  v39 = v36;
  v40 = MEMORY[0x1E69E6478];
  swift_getWitnessTable();
  sub_1A5FD497C();
  (*(v24 + 8))(v17, v37);
  v26 = v38;
  *&v22[*(v38 + 52)] = v41;
  v27 = v29;
  (*(v29 + 16))(v30, v22, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v27 + 8))(v22, v26);
}

uint64_t sub_1A5CE8674(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C1C();
  FaceObservation.Attributes.Attribute.hash(into:)(v4, a2);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Attributes.Age.description.getter()
{
  v1 = *v0;
  v2 = 2036490594;
  v3 = 0x756441676E756F79;
  v4 = 0x746C756461;
  if (v1 != 3)
  {
    v4 = 0x726F696E6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646C696863;
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

uint64_t sub_1A5CE8794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1A5FD3D5C() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_1A5FD4B0C();

  if (v8)
  {
    v9 = 0;
LABEL_9:

    *a3 = v9;
    return result;
  }

  if (sub_1A5FD3D5C() == a1 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_1A5FD4B0C();

  if (v13)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v14 == a2)
  {
    v9 = 2;
    goto LABEL_8;
  }

  v16 = sub_1A5FD4B0C();

  if (v16)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v17 == a2)
  {
    v9 = 3;
    goto LABEL_8;
  }

  v18 = sub_1A5FD4B0C();

  if (v18)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (sub_1A5FD3D5C() == a1 && v19 == a2)
  {
    v9 = 4;
    goto LABEL_8;
  }

  v20 = sub_1A5FD4B0C();

  if (v20)
  {
    v9 = 4;
    goto LABEL_9;
  }

  sub_1A5FD46AC();

  MEMORY[0x1AC554600](a1, a2);
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

uint64_t sub_1A5CE8A14(uint64_t a1)
{
  v2 = sub_1A5D13D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5CE8A50(uint64_t a1)
{
  v2 = sub_1A5D13D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5CE8A8C(uint64_t a1)
{
  v2 = sub_1A5D13E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}