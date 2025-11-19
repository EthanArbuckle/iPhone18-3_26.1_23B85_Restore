unint64_t sub_1A5C29BD4()
{
  result = qword_1EB23D100;
  if (!qword_1EB23D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23D100);
  }

  return result;
}

unint64_t sub_1A5C29C28()
{
  result = qword_1EB23D108;
  if (!qword_1EB23D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23D108);
  }

  return result;
}

unint64_t sub_1A5C29C7C()
{
  result = qword_1EB23D110[0];
  if (!qword_1EB23D110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23D110);
  }

  return result;
}

uint64_t RecognizeObjectsRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeObjectsRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2560);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2568);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2570);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C29BD4();
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
    *v21 = &type metadata for RecognizeObjectsRequest.Revision;
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
    sub_1A5C29C28();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C29C7C();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t RecognizeObjectsRequest.init(revision:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 2;
  static NormalizedRect.fullImage.getter((a2 + 8));
  *(a2 + 44) = 0;
  *(a2 + 48) = 1;
  *(a2 + 52) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a2 + 80) = result;
  *(a2 + 40) = v3;
  return result;
}

__n128 RecognizeObjectsRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 RecognizeObjectsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C2A2AC()
{
  sub_1A5C2B19C();
  result = sub_1A5D4EC2C();
  qword_1EB23D0F8 = result;
  return result;
}

uint64_t static RecognizeObjectsRequest.allSupportedRevisions.getter()
{
  if (qword_1EB23D0F0 != -1)
  {
    swift_once();
  }
}

uint64_t RecognizeObjectsRequest.modelMinimumDetectionConfidence.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t RecognizeObjectsRequest.modelNonMaximumSuppressionThreshold.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

uint64_t RecognizeObjectsRequest.targetedIdentifiers.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RecognizeObjectsRequest.targetedIdentifiers.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t RecognizeObjectsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C2B19C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeObjectsRequest, v3);
}

uint64_t RecognizeObjectsRequest.supportedIdentifiers.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v1;
  v16[4] = *(v0 + 64);
  v17 = *(v0 + 80);
  v2 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v2;
  type metadata accessor for Session();
  Session.__allocating_init()();
  v3 = sub_1A5C2B1F0();

  sub_1A5BD9578(v4, &type metadata for RecognizeObjectsRequest, v3);
  v7 = v6;

  sub_1A5B16F58(0, &qword_1EB1EF148);
  if (swift_dynamicCastMetatype())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1A5B37FAC(v7);

    v9 = sub_1A5FD3BDC();

    *&v16[0] = 0;
    v10 = [ObjCClassFromMetadata allRecognizedObjectIdentifiersWithConfigurationOptions:v9 error:v16];

    v11 = *&v16[0];
    if (v10)
    {
      v12 = sub_1A5FD3F4C();
      v13 = v11;

      return v12;
    }

    v14 = *&v16[0];
    v15 = sub_1A5FD348C();

    swift_willThrow();
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t RecognizeObjectsRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  if (v4 == 1)
  {
    sub_1A5FD4C3C();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1A5FD4C3C();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1A5FD4C3C();
    return sub_1A5B0ED0C(a1, v7);
  }

  sub_1A5FD4C3C();
  sub_1A5FD4C4C();
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1A5FD4C3C();
  sub_1A5FD4C4C();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1A5FD4C3C();
  sub_1A5FD3DBC();
  return sub_1A5B0ED0C(a1, v7);
}

uint64_t RecognizeObjectsRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  RecognizeObjectsRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C2A86C(uint64_t a1)
{
  v2 = sub_1A5C2B1F0();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C2A8A8(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C2B19C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C2A914(uint64_t a1)
{
  v2 = sub_1A5B5E118();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C2A950()
{
  sub_1A5FD4C1C();
  RecognizeObjectsRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C2A994()
{
  sub_1A5FD4C1C();
  RecognizeObjectsRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C2AA20(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E118();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C2AA6C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LOBYTE(v8[0]) = 2;
  static NormalizedRect.fullImage.getter((v8 + 8));
  HIDWORD(v9) = 0;
  LOBYTE(v10) = 1;
  DWORD1(v10) = 0;
  BYTE8(v10) = 1;
  v11 = 0uLL;
  v12 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  BYTE8(v9) = v3;
  *(a2 + 80) = v12;
  v4 = v11;
  v5 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v5;
  result = *&v10;
  v7 = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v4;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1A5C2AAFC(uint64_t a1)
{
  v3 = v1[1];
  v26 = *v1;
  v27 = v3;
  v28 = *(v1 + 4);
  v29 = *(v1 + 40);
  v30 = *(v1 + 41);
  v31[0] = *(v1 + 57);
  *(v31 + 15) = *(v1 + 72);
  v4 = sub_1A5C2B1F0();
  result = sub_1A5BDA35C(a1, &type metadata for RecognizeObjectsRequest, v4);
  if ((v29 & 1) == 0)
  {
    v6 = result;
    v7 = sub_1A5FD3D5C();
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(&v27 + 1) = sub_1A5B16F58(0, &qword_1EB1F3E80);
    *&v26 = v10;
    sub_1A5B101C8(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v25, v7, v9, isUniquelyReferenced_nonNull_native);

    v12 = sub_1A5FD3D5C();
    v14 = v13;
    v15 = MEMORY[0x1E69E6370];
    *(&v27 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v26) = 1;
    sub_1A5B101C8(&v26, v25);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v25, v12, v14, v16);

    v17 = sub_1A5FD3D5C();
    v19 = v18;
    *(&v27 + 1) = v15;
    LOBYTE(v26) = 1;
    sub_1A5B101C8(&v26, v25);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v25, v17, v19, v20);

    v21 = sub_1A5FD3D5C();
    v23 = v22;
    *(&v27 + 1) = v15;
    LOBYTE(v26) = 1;
    sub_1A5B101C8(&v26, v25);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v25, v21, v23, v24);

    return v6;
  }

  return result;
}

void sub_1A5C2AD44(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2588);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

void sub_1A5C2AE8C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F2590);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

uint64_t sub_1A5C2AFA4()
{
  if (*v0)
  {
    return 3737841667;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A5C2AFC0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 3737841667)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t _s6Vision23RecognizeObjectsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v24.origin = *(a1 + 8);
  v24.size = *(a1 + 24);
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = *a2;
  v22 = *(a2 + 24);
  v23 = *(a2 + 8);
  v10 = a2[40];
  v11 = *(a2 + 11);
  v12 = a2[48];
  v13 = *(a2 + 13);
  v14 = a2[56];
  v16 = *(a2 + 8);
  v15 = *(a2 + 9);
  v20 = *(a2 + 10);
  v21 = *(a1 + 80);
  LOBYTE(v26.origin.x) = *a1;
  LOBYTE(v25.origin.x) = v9;
  if ((static ImageCropAndScaleAction.== infix(_:_:)(&v26, &v25) & 1) == 0)
  {
    return 0;
  }

  v26 = v24;
  v25.size = v22;
  v25.origin = v23;
  if (!static NormalizedRect.== infix(_:_:)(&v26, &v25) || ((v2 ^ v10) & 1) != 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v11)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v13)
    {
      v18 = v14;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v15 || (v8 != v16 || v7 != v15) && (sub_1A5FD4B0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v21, v20);
}

unint64_t sub_1A5C2B19C()
{
  result = qword_1EB1F2578;
  if (!qword_1EB1F2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2578);
  }

  return result;
}

unint64_t sub_1A5C2B1F0()
{
  result = qword_1EB1F2580;
  if (!qword_1EB1F2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2580);
  }

  return result;
}

unint64_t sub_1A5C2B244()
{
  result = qword_1EB1F2598;
  if (!qword_1EB1F2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2598);
  }

  return result;
}

unint64_t sub_1A5C2B29C(uint64_t a1)
{
  result = sub_1A5B5E118();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2B2C4(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6619C();
  result = sub_1A5C2B2F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C2B2F4()
{
  result = qword_1EB1F25A0;
  if (!qword_1EB1F25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25A0);
  }

  return result;
}

unint64_t sub_1A5C2B34C()
{
  result = qword_1EB1F25A8;
  if (!qword_1EB1F25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25A8);
  }

  return result;
}

unint64_t sub_1A5C2B3A4()
{
  result = qword_1EB1F25B0;
  if (!qword_1EB1F25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25B0);
  }

  return result;
}

unint64_t sub_1A5C2B3F8(uint64_t a1)
{
  result = sub_1A5C2B19C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2B420(uint64_t a1)
{
  result = sub_1A5C2B1F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2B448(uint64_t a1)
{
  result = sub_1A5C2B470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2B470()
{
  result = qword_1EB1F25B8;
  if (!qword_1EB1F25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25B8);
  }

  return result;
}

unint64_t sub_1A5C2B518()
{
  result = qword_1EB23DBA0[0];
  if (!qword_1EB23DBA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23DBA0);
  }

  return result;
}

unint64_t sub_1A5C2B570()
{
  result = qword_1EB23DCB0;
  if (!qword_1EB23DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23DCB0);
  }

  return result;
}

unint64_t sub_1A5C2B5C8()
{
  result = qword_1EB23DCB8[0];
  if (!qword_1EB23DCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23DCB8);
  }

  return result;
}

unint64_t sub_1A5C2B620()
{
  result = qword_1EB23DD40;
  if (!qword_1EB23DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23DD40);
  }

  return result;
}

unint64_t sub_1A5C2B678()
{
  result = qword_1EB23DD48[0];
  if (!qword_1EB23DD48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23DD48);
  }

  return result;
}

unint64_t sub_1A5C2B6D0()
{
  result = qword_1EB23DDD0;
  if (!qword_1EB23DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23DDD0);
  }

  return result;
}

unint64_t sub_1A5C2B728()
{
  result = qword_1EB23DDD8[0];
  if (!qword_1EB23DDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23DDD8);
  }

  return result;
}

uint64_t sub_1A5C2B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74654E656E656373 && a2 == 0xEA00000000003556)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5C2B844(uint64_t a1)
{
  v2 = sub_1A5C2BB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2B880(uint64_t a1)
{
  v2 = sub_1A5C2BB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C2B8BC(uint64_t a1)
{
  v2 = sub_1A5C2BB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2B8F8(uint64_t a1)
{
  v2 = sub_1A5C2BB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateImageFingerprintsRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2BB0C();
  sub_1A5FD4CDC();
  sub_1A5C2BB60();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C2BB0C()
{
  result = qword_1EB23DE70;
  if (!qword_1EB23DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23DE70);
  }

  return result;
}

unint64_t sub_1A5C2BB60()
{
  result = qword_1EB23DE78[0];
  if (!qword_1EB23DE78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23DE78);
  }

  return result;
}

uint64_t GenerateImageFingerprintsRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateImageFingerprintsRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25D0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25D8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2BB0C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C2BB60();
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
      *v13 = &type metadata for GenerateImageFingerprintsRequest.Revision;
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

uint64_t sub_1A5C2BF2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2BB0C();
  sub_1A5FD4CDC();
  sub_1A5C2BB60();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateImageFingerprintsRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

__n128 GenerateImageFingerprintsRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateImageFingerprintsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C2C1C0()
{
  sub_1A5C2C688();
  result = sub_1A5D4EC2C();
  qword_1EB23DE68 = result;
  return result;
}

uint64_t static GenerateImageFingerprintsRequest.supportedRevisions.getter()
{
  if (qword_1EB23DE60 != -1)
  {
    swift_once();
  }
}

uint64_t GenerateImageFingerprintsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C2C688();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateImageFingerprintsRequest, v3);
}

uint64_t GenerateImageFingerprintsRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t GenerateImageFingerprintsRequest.hashValue.getter()
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

uint64_t sub_1A5C2C400(uint64_t a1)
{
  v2 = sub_1A5C2C8B8();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C2C43C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C2C688();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C2C49C(uint64_t a1)
{
  v2 = sub_1A5B5E310();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C2C4DC(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E310();

  return sub_1A5D4E6C8(a1, a2);
}

void sub_1A5C2C528(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorImageFingerprintsConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F25E8);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

unint64_t sub_1A5C2C688()
{
  result = qword_1EB1F25E0;
  if (!qword_1EB1F25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25E0);
  }

  return result;
}

unint64_t sub_1A5C2C6DC()
{
  result = qword_1EB1F25F0;
  if (!qword_1EB1F25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25F0);
  }

  return result;
}

unint64_t sub_1A5C2C734(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66490();
  result = sub_1A5C2C764();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C2C764()
{
  result = qword_1EB1F25F8;
  if (!qword_1EB1F25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F25F8);
  }

  return result;
}

unint64_t sub_1A5C2C7BC()
{
  result = qword_1EB1F2600;
  if (!qword_1EB1F2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2600);
  }

  return result;
}

unint64_t sub_1A5C2C814()
{
  result = qword_1EB1F2608;
  if (!qword_1EB1F2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2608);
  }

  return result;
}

unint64_t sub_1A5C2C868(uint64_t a1)
{
  result = sub_1A5B5E310();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2C890(uint64_t a1)
{
  result = sub_1A5C2C8B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2C8B8()
{
  result = qword_1EB1F2610;
  if (!qword_1EB1F2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2610);
  }

  return result;
}

unint64_t sub_1A5C2C954(uint64_t a1)
{
  result = sub_1A5C2C688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2C97C(uint64_t a1)
{
  result = sub_1A5C2C9A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2C9A4()
{
  result = qword_1EB1F2620;
  if (!qword_1EB1F2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2620);
  }

  return result;
}

unint64_t sub_1A5C2CA3C()
{
  result = qword_1EB23E780[0];
  if (!qword_1EB23E780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23E780);
  }

  return result;
}

unint64_t sub_1A5C2CA94()
{
  result = qword_1EB23E890;
  if (!qword_1EB23E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23E890);
  }

  return result;
}

unint64_t sub_1A5C2CAEC()
{
  result = qword_1EB23E898[0];
  if (!qword_1EB23E898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23E898);
  }

  return result;
}

unint64_t sub_1A5C2CB44()
{
  result = qword_1EB23E920;
  if (!qword_1EB23E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23E920);
  }

  return result;
}

unint64_t sub_1A5C2CB9C()
{
  result = qword_1EB23E928[0];
  if (!qword_1EB23E928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23E928);
  }

  return result;
}

uint64_t sub_1A5C2CBF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntrospectableRequest.modelUserVersion(session:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1A5B4F960(v21);
    return 0;
  }

  sub_1A5B063D4(v21, v23);
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v10 = sub_1A5D4F438(a1, v8, v9);
  type metadata accessor for Detector();
  v11 = v24;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v13 = (*(v12 + 72))(v11, v12);
  v15 = v14;
  v17 = v16;
  sub_1A5C3B0CC(v13, v14, v16, v10);
  if (v2)
  {
    sub_1A5B4F9C8(v13, v15, v17);

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_1A5B4F9C8(v13, v15, v17);

  type metadata accessor for E5RTBasedDetector();
  v19 = swift_dynamicCastMetatype();
  if (!v19)
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
    return 0;
  }

  v20 = (*(v19 + 360))(v10);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

uint64_t sub_1A5C2CEF0(uint64_t a1)
{
  v2 = sub_1A5C2D1B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2CF2C(uint64_t a1)
{
  v2 = sub_1A5C2D1B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C2CF68(uint64_t a1)
{
  v2 = sub_1A5C2D20C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2CFA4(uint64_t a1)
{
  v2 = sub_1A5C2D20C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectRectanglesRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2628);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2630);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2D1B8();
  sub_1A5FD4CDC();
  sub_1A5C2D20C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C2D1B8()
{
  result = qword_1EB23E9D0;
  if (!qword_1EB23E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23E9D0);
  }

  return result;
}

unint64_t sub_1A5C2D20C()
{
  result = qword_1EB23E9D8;
  if (!qword_1EB23E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23E9D8);
  }

  return result;
}

uint64_t DetectRectanglesRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectRectanglesRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2638);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2640);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2D1B8();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C2D20C();
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
      *v13 = &type metadata for DetectRectanglesRequest.Revision;
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

uint64_t sub_1A5C2D5D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2628);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2630);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2D1B8();
  sub_1A5FD4CDC();
  sub_1A5C2D20C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DetectRectanglesRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LODWORD(v15) = 0;
  *(&v15 + 1) = 1;
  static NormalizedRect.fullImage.getter(v16);
  LOBYTE(v17) = 2;
  *(&v17 + 1) = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  if (v3 != 1 || (sub_1A5C2F0A0(), result = sub_1A5D4E900(), (v14 & 1) == 0))
  {
    v5 = sub_1A5C2F0F4();
    v6 = sub_1A5BDA018(&type metadata for DetectRectanglesRequest, v5);
    v8 = v7;
    v9 = sub_1A5FD3D5C();
    if (v8)
    {
      if (v9 == v6 && v8 == v10)
      {
      }

      else
      {
        v12 = sub_1A5FD4B0C();

        if ((v12 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      LOBYTE(v17) = 1;
    }

    else
    {
    }

LABEL_13:
    v13 = v16[1];
    *(a2 + 32) = v16[0];
    *(a2 + 48) = v13;
    *(a2 + 64) = v17;
    *a2 = xmmword_1A6012860;
    *(a2 + 16) = v15;
    return result;
  }

  __break(1u);
  return result;
}

__n128 DetectRectanglesRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectRectanglesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_1A5C2DA70()
{
  sub_1A5C2F0A0();
  result = sub_1A5D4EB30();
  qword_1EB23E9B8 = result;
  return result;
}

uint64_t DetectRectanglesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C2F0A0();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectRectanglesRequest, v3);
}

unint64_t sub_1A5C2DB40()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A5C2DB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001A60563F0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A6056410 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C2DC60(uint64_t a1)
{
  v2 = sub_1A5C2F148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2DC9C(uint64_t a1)
{
  v2 = sub_1A5C2F148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C2DCD8(uint64_t a1)
{
  v2 = sub_1A5C2F1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2DD14(uint64_t a1)
{
  v2 = sub_1A5C2F1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C2DD50(uint64_t a1)
{
  v2 = sub_1A5C2F19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2DD8C(uint64_t a1)
{
  v2 = sub_1A5C2F19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectRectanglesRequest.Algorithm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2658);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2660);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2668);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2F148();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C2F19C();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C2F1F0();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t DetectRectanglesRequest.Algorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t DetectRectanglesRequest.Algorithm.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2670);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2678);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2680);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2F148();
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
    *v21 = &type metadata for DetectRectanglesRequest.Algorithm;
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
    sub_1A5C2F19C();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C2F1F0();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1A5C2E58C()
{
  sub_1A5C2F0A0();
  result = sub_1A5D4EC2C();
  qword_1EB23E9C8 = result;
  return result;
}

uint64_t DetectRectanglesRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  MEMORY[0x1AC555420](v3);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  if (v4 != 2)
  {
    MEMORY[0x1AC555420](v4 & 1);
  }

  return sub_1A5B0ED0C(a1, v5);
}

uint64_t DetectRectanglesRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

__n128 sub_1A5C2E7A8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1A5C2E7B4(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_1A5C2E7C0(uint64_t a1)
{
  v2 = sub_1A5C2F0F4();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C2E7FC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C2F0A0();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C2E85C(uint64_t a1)
{
  v2 = sub_1A5B5EA7C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C2E898()
{
  sub_1A5FD4C1C();
  DetectRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C2E8DC()
{
  sub_1A5FD4C1C();
  DetectRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C2E924(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1A5C2E998(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EA7C();

  return sub_1A5D4E6C8(a1, a2);
}

__n128 sub_1A5C2E9E4@<Q0>(uint64_t a1@<X8>)
{
  v4 = 0;
  DetectRectanglesRequest.init(_:)(&v4, v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

void sub_1A5C2EA34(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + 3);
  v12 = *(v2 + 64);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5C2F244();
  if ([ObjCClassFromMetadata isSubclassOfClass_])
  {
    v60 = a2;
    v14 = sub_1A5FD3D5C();
    if (v12 == 2)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v16 = v14;
    v17 = v15;
    v18 = 1;
    if (v12)
    {
      v18 = 2;
    }

    v63 = MEMORY[0x1E69E6530];
    v62[0] = v18;
    v19 = *(*a1 + 208);
    v20 = v19(v61);
    sub_1A5B0DE30(v62, v16, v17);
    v20(v61, 0);
    v21 = sub_1A5FD3D5C();
    v23 = v22;
    v24 = MEMORY[0x1E69E6448];
    v63 = MEMORY[0x1E69E6448];
    LODWORD(v62[0]) = v10;
    v25 = v19(v61);
    sub_1A5B0DE30(v62, v21, v23);
    v25(v61, 0);
    v26 = sub_1A5FD3D5C();
    v28 = v27;
    v63 = MEMORY[0x1E69E6370];
    LOBYTE(v62[0]) = 0;
    v29 = v19(v61);
    sub_1A5B0DE30(v62, v26, v28);
    v29(v61, 0);
    v30 = sub_1A5FD3D5C();
    v32 = v31;
    v63 = v24;
    LODWORD(v62[0]) = v7;
    v33 = v19(v61);
    sub_1A5B0DE30(v62, v30, v32);
    v33(v61, 0);
    v34 = sub_1A5FD3D5C();
    v36 = v35;
    v63 = v24;
    LODWORD(v62[0]) = v6;
    v37 = v19(v61);
    sub_1A5B0DE30(v62, v34, v36);
    v37(v61, 0);
    v38 = sub_1A5FD3D5C();
    v40 = v39;
    v63 = v24;
    LODWORD(v62[0]) = v9;
    v41 = v19(v61);
    sub_1A5B0DE30(v62, v38, v40);
    v41(v61, 0);
    v42 = sub_1A5FD3D5C();
    v44 = v43;
    v63 = v24;
    LODWORD(v62[0]) = v8;
    v45 = v19(v61);
    sub_1A5B0DE30(v62, v42, v44);
    v46 = v45(v61, 0);
    v47 = v11;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11)
    {
      goto LABEL_19;
    }

    v48 = (*(**(v60 + 16) + 120))(v46);
    if (v3)
    {
      return;
    }

    v49 = v48;
    v50 = [v48 width];
    v51 = [v49 height];

    if (v51 <= v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = v51;
    }

    v53 = v52;
    if (v51 >= v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = v51;
    }

    v55 = ceil(v53 * 256.0 / v54);
    if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v55 > -9.22337204e18)
    {
      if (v55 < 9.22337204e18)
      {
        if ((v55 - 0x80000000000000) >> 56 == 255)
        {
          v47 = 16 * v55;
LABEL_19:
          v56 = sub_1A5FD3D5C();
          v58 = v57;
          v63 = MEMORY[0x1E69E6530];
          v62[0] = v47;
          v59 = v19(v61);
          sub_1A5B0DE30(v62, v56, v58);
          v59(v61, 0);
          return;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t _s6Vision23DetectRectanglesRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a1 + 48);
  v11.origin = *(a1 + 32);
  v11.size = v7;
  v8 = *(a2 + 48);
  v10.origin = *(a2 + 32);
  v10.size = v8;
  if (!static NormalizedRect.== infix(_:_:)(&v11, &v10))
  {
    return 0;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v4, v6);
}

unint64_t sub_1A5C2F0A0()
{
  result = qword_1EB1F2648;
  if (!qword_1EB1F2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2648);
  }

  return result;
}

unint64_t sub_1A5C2F0F4()
{
  result = qword_1EB1F2650;
  if (!qword_1EB1F2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2650);
  }

  return result;
}

unint64_t sub_1A5C2F148()
{
  result = qword_1EB23E9E0;
  if (!qword_1EB23E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23E9E0);
  }

  return result;
}

unint64_t sub_1A5C2F19C()
{
  result = qword_1EB23E9E8;
  if (!qword_1EB23E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23E9E8);
  }

  return result;
}

unint64_t sub_1A5C2F1F0()
{
  result = qword_1EB23E9F0[0];
  if (!qword_1EB23E9F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23E9F0);
  }

  return result;
}

unint64_t sub_1A5C2F244()
{
  result = qword_1EB1F2688;
  if (!qword_1EB1F2688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F2688);
  }

  return result;
}

unint64_t sub_1A5C2F290()
{
  result = qword_1EB1F2690;
  if (!qword_1EB1F2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2690);
  }

  return result;
}

unint64_t sub_1A5C2F2EC()
{
  result = qword_1EB1F2698;
  if (!qword_1EB1F2698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F26A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2698);
  }

  return result;
}

unint64_t sub_1A5C2F354()
{
  result = qword_1EB1F26A8;
  if (!qword_1EB1F26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F26A8);
  }

  return result;
}

unint64_t sub_1A5C2F3A8(uint64_t a1)
{
  result = sub_1A5B5EA7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2F3D0(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66DC0();
  result = sub_1A5C2F400();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C2F400()
{
  result = qword_1EB1F26B0;
  if (!qword_1EB1F26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F26B0);
  }

  return result;
}

unint64_t sub_1A5C2F458()
{
  result = qword_1EB1F26B8;
  if (!qword_1EB1F26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F26B8);
  }

  return result;
}

unint64_t sub_1A5C2F4B0()
{
  result = qword_1EB1F26C0;
  if (!qword_1EB1F26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F26C0);
  }

  return result;
}

unint64_t sub_1A5C2F54C(uint64_t a1)
{
  result = sub_1A5C2F0A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2F574(uint64_t a1)
{
  result = sub_1A5C2F59C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C2F59C()
{
  result = qword_1EB1F26C8;
  if (!qword_1EB1F26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F26C8);
  }

  return result;
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

uint64_t sub_1A5C2F60C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5C2F654(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

unint64_t sub_1A5C2F72C()
{
  result = qword_1EB23F500[0];
  if (!qword_1EB23F500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23F500);
  }

  return result;
}

unint64_t sub_1A5C2F784()
{
  result = qword_1EB23F910[0];
  if (!qword_1EB23F910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23F910);
  }

  return result;
}

unint64_t sub_1A5C2F7DC()
{
  result = qword_1EB23FA20;
  if (!qword_1EB23FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FA20);
  }

  return result;
}

unint64_t sub_1A5C2F834()
{
  result = qword_1EB23FA28[0];
  if (!qword_1EB23FA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23FA28);
  }

  return result;
}

unint64_t sub_1A5C2F88C()
{
  result = qword_1EB23FAB0;
  if (!qword_1EB23FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FAB0);
  }

  return result;
}

unint64_t sub_1A5C2F8E4()
{
  result = qword_1EB23FAB8[0];
  if (!qword_1EB23FAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23FAB8);
  }

  return result;
}

unint64_t sub_1A5C2F93C()
{
  result = qword_1EB23FB40;
  if (!qword_1EB23FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FB40);
  }

  return result;
}

unint64_t sub_1A5C2F994()
{
  result = qword_1EB23FB48[0];
  if (!qword_1EB23FB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23FB48);
  }

  return result;
}

unint64_t sub_1A5C2F9EC()
{
  result = qword_1EB23FBD0;
  if (!qword_1EB23FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FBD0);
  }

  return result;
}

unint64_t sub_1A5C2FA44()
{
  result = qword_1EB23FBD8[0];
  if (!qword_1EB23FBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23FBD8);
  }

  return result;
}

unint64_t sub_1A5C2FA9C()
{
  result = qword_1EB23FC60;
  if (!qword_1EB23FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FC60);
  }

  return result;
}

unint64_t sub_1A5C2FAF4()
{
  result = qword_1EB23FC68[0];
  if (!qword_1EB23FC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23FC68);
  }

  return result;
}

uint64_t sub_1A5C2FB48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C2FBE8(uint64_t a1)
{
  v2 = sub_1A5C2FEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2FC24(uint64_t a1)
{
  v2 = sub_1A5C2FEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C2FC60(uint64_t a1)
{
  v2 = sub_1A5C2FF04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C2FC9C(uint64_t a1)
{
  v2 = sub_1A5C2FF04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeTextRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2FEB0();
  sub_1A5FD4CDC();
  sub_1A5C2FF04();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C2FEB0()
{
  result = qword_1EB23FD90;
  if (!qword_1EB23FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FD90);
  }

  return result;
}

unint64_t sub_1A5C2FF04()
{
  result = qword_1EB23FD98;
  if (!qword_1EB23FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FD98);
  }

  return result;
}

uint64_t RecognizeTextRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeTextRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26E0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26E8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2FEB0();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C2FF04();
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
      *v13 = &type metadata for RecognizeTextRequest.Revision;
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

uint64_t sub_1A5C302D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C2FEB0();
  sub_1A5FD4CDC();
  sub_1A5C2FF04();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t RecognizeTextRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22[-v11];
  v13 = *a1;
  LODWORD(v23) = 1023410176;
  WORD2(v23) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF30);
  sub_1A5FD370C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A5FF36F0;
  sub_1A5FD368C();
  v15 = sub_1A5FD369C();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = sub_1A5FD36CC();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_1A5FD36AC();
  v17 = sub_1A5FD36BC();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  sub_1A5FD36EC();
  *(&v23 + 1) = v14;
  LOBYTE(v24) = 1;
  v18 = MEMORY[0x1E69E7CC0];
  *(&v24 + 1) = MEMORY[0x1E69E7CC0];
  static NormalizedRect.fullImage.getter(v25);
  LOBYTE(v26) = 0;
  result = sub_1A5B0F390(v18);
  *(&v26 + 1) = result;
  if (v13 == 1 && (sub_1A5C32E28(), result = sub_1A5D4E900(), (v22[15] & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v20 = v25[1];
    *(a2 + 32) = v25[0];
    *(a2 + 48) = v20;
    *(a2 + 64) = v26;
    v21 = v24;
    *a2 = v23;
    *(a2 + 16) = v21;
  }

  return result;
}

uint64_t sub_1A5C307F4(uint64_t a1)
{
  v2 = sub_1A5C32F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C30830(uint64_t a1)
{
  v2 = sub_1A5C32F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C3086C(uint64_t a1)
{
  v2 = sub_1A5C32E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C308A8(uint64_t a1)
{
  v2 = sub_1A5C32E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C308E4(uint64_t a1)
{
  v2 = sub_1A5C32ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C30920(uint64_t a1)
{
  v2 = sub_1A5C32ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeTextRequest.RecognitionLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F26F8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2700);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2708);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C32E7C();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C32ED0();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C32F24();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t RecognizeTextRequest.RecognitionLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeTextRequest.RecognitionLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2710);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2718);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2720);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C32E7C();
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
    *v21 = &type metadata for RecognizeTextRequest.RecognitionLevel;
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
    sub_1A5C32ED0();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C32F24();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t RecognizeTextRequest.recognitionLanguages.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t RecognizeTextRequest.customWords.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t RecognizeTextRequest.supportedRecognitionLanguages.getter()
{
  v36[5] = *MEMORY[0x1E69E9840];
  v1 = sub_1A5FD370C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6 - 8];
  v8 = *v0;
  v9 = *(v0 + 4);
  if ((v9 & 1) == 0)
  {
    sub_1A5FD396C();
    *v32 = v8;
    v32[4] = v9;
    v33 = *(v0 + 21);
    v34 = *(v0 + 37);
    *v35 = *(v0 + 53);
    *&v35[11] = *(v0 + 4);
    *&v32[5] = *(v0 + 5);
    v36[3] = sub_1A5FD3A6C();
    v36[4] = sub_1A5C33AA0(&qword_1EB1EFFD8, MEMORY[0x1E69D9C70]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    sub_1A5C31DB4(boxed_opaque_existential_1);
    v25 = sub_1A5FD393C();
    __swift_destroy_boxed_opaque_existential_1(v36);
    v26 = *(v25 + 16);
    if (v26)
    {
      *v32 = MEMORY[0x1E69E7CC0];
      sub_1A5B76B0C(0, v26, 0);
      v18 = *v32;
      v27 = v25 + 40;
      do
      {

        sub_1A5FD36DC();
        *v32 = v18;
        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1A5B76B0C(v28 > 1, v29 + 1, 1);
          v18 = *v32;
        }

        *(v18 + 16) = v29 + 1;
        (*(v2 + 32))(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v4, v1);
        v27 += 16;
        --v26;
      }

      while (v26);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  *v32 = *v0;
  v32[4] = v9;
  v33 = *(v0 + 21);
  v34 = *(v0 + 37);
  *v35 = *(v0 + 53);
  *&v35[11] = *(v0 + 4);
  *&v32[5] = *(v0 + 5);
  v10 = sub_1A5C31744(0);
  v11 = objc_opt_self();
  sub_1A5B37FAC(v10);

  v12 = sub_1A5FD3BDC();

  *v32 = 0;
  v13 = [v11 supportedLanguagesForProcessOptions:v12 error:v32];

  v14 = *v32;
  if (!v13)
  {
    v23 = *v32;
    v24 = sub_1A5FD348C();

    swift_willThrow();
    return MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1A5FD3F4C();
  v16 = v14;

  v17 = *(v15 + 16);
  if (!v17)
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  *v32 = MEMORY[0x1E69E7CC0];
  sub_1A5B76B0C(0, v17, 0);
  v18 = *v32;
  v19 = v15 + 40;
  do
  {

    sub_1A5FD36DC();
    *v32 = v18;
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1A5B76B0C(v20 > 1, v21 + 1, 1);
      v18 = *v32;
    }

    *(v18 + 16) = v21 + 1;
    (*(v2 + 32))(v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21, v7, v1);
    v19 += 16;
    --v17;
  }

  while (v17);
LABEL_18:

  return v18;
}

unint64_t sub_1A5C31744(uint64_t a1)
{
  v91 = sub_1A5FD370C();
  v3 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v6 = *(v1 + 4);
  v104 = *(v1 + 5);
  v7 = *(v1 + 3);
  v8 = *(v1 + 1);
  v103 = *(v1 + 16);
  *v96 = *(v1 + 17);
  *&v96[3] = v1[5];
  v9 = *(v1 + 3);
  v10 = *(v1 + 3);
  v98 = *(v1 + 2);
  v99 = v10;
  v102 = *(v1 + 64);
  LODWORD(v94) = v5;
  BYTE4(v94) = v6;
  BYTE5(v94) = v104;
  WORD3(v94) = v7;
  *(&v94 + 1) = v8;
  v95 = v103;
  v97 = v9;
  v100 = v102;
  v11 = *(v1 + 65);
  *&v101[7] = *(v1 + 9);
  *v101 = v11;
  v12 = sub_1A5C32F78();
  v13 = sub_1A5BDA35C(a1, &type metadata for RecognizeTextRequest, v12);
  v14 = sub_1A5FD3D5C();
  v16 = v15;
  v17 = MEMORY[0x1E69E6370];
  v97 = MEMORY[0x1E69E6370];
  LOBYTE(v94) = v6 & 1;
  sub_1A5B101C8(&v94, v93);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v13;
  sub_1A5B0E9AC(v93, v14, v16, isUniquelyReferenced_nonNull_native);

  v19 = v92;
  v20 = sub_1A5FD3D5C();
  v22 = v21;
  v97 = MEMORY[0x1E69E6530];
  *&v94 = 10;
  sub_1A5B101C8(&v94, v93);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v19;
  sub_1A5B0E9AC(v93, v20, v22, v23);

  v24 = v92;
  v25 = sub_1A5FD3D5C();
  v27 = v25;
  v28 = v26;
  v29 = *(v8 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v84 = v24;
    v85 = v25;
    v86 = v26;
    v87 = v9;
    *&v94 = MEMORY[0x1E69E7CC0];
    sub_1A5B76AEC(0, v29, 0);
    v30 = v94;
    v32 = *(v3 + 16);
    v31 = v3 + 16;
    v89 = v32;
    v33 = v8 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v88 = *(v31 + 56);
    v34 = (v31 - 8);
    do
    {
      v35 = v90;
      v36 = v91;
      v37 = v31;
      v89(v90, v33, v91);
      v38 = sub_1A5FD36FC();
      v40 = v39;
      (*v34)(v35, v36);
      *&v94 = v30;
      v42 = *(v30 + 16);
      v41 = *(v30 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1A5B76AEC((v41 > 1), v42 + 1, 1);
        v30 = v94;
      }

      *(v30 + 16) = v42 + 1;
      v43 = v30 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v33 += v88;
      --v29;
      v31 = v37;
    }

    while (v29);
    v17 = MEMORY[0x1E69E6370];
    v44 = v87;
    v28 = v86;
    v27 = v85;
    v24 = v84;
  }

  else
  {
    v44 = v9;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF60);
  v97 = v45;
  *&v94 = v30;
  sub_1A5B101C8(&v94, v93);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v24;
  sub_1A5B0E9AC(v93, v27, v28, v46);

  v47 = v92;
  v48 = sub_1A5FD3D5C();
  v50 = v49;
  v97 = MEMORY[0x1E69E6530];
  *&v94 = 3;
  sub_1A5B101C8(&v94, v93);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v47;
  sub_1A5B0E9AC(v93, v48, v50, v51);

  v52 = v92;
  v53 = sub_1A5FD3D5C();
  v55 = v54;
  v97 = v17;
  LOBYTE(v94) = v104;
  sub_1A5B101C8(&v94, v93);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v52;
  sub_1A5B0E9AC(v93, v53, v55, v56);

  v57 = v92;
  v58 = sub_1A5FD3D5C();
  v60 = v59;
  v97 = v17;
  LOBYTE(v94) = (v103 & 1) == 0;
  sub_1A5B101C8(&v94, v93);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v57;
  sub_1A5B0E9AC(v93, v58, v60, v61);

  v62 = v92;
  v63 = sub_1A5FD3D5C();
  v65 = v64;
  v97 = v45;
  *&v94 = v44;
  sub_1A5B101C8(&v94, v93);

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v62;
  sub_1A5B0E9AC(v93, v63, v65, v66);

  v67 = v92;
  v68 = sub_1A5FD3D5C();
  v70 = v69;
  v97 = v17;
  LOBYTE(v94) = 1;
  sub_1A5B101C8(&v94, v93);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v67;
  sub_1A5B0E9AC(v93, v68, v70, v71);

  v72 = v92;
  v73 = sub_1A5FD3D5C();
  v75 = v74;
  v97 = v17;
  LOBYTE(v94) = 1;
  sub_1A5B101C8(&v94, v93);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v72;
  sub_1A5B0E9AC(v93, v73, v75, v76);

  v77 = v92;
  v78 = sub_1A5FD3D5C();
  v80 = v79;
  v97 = v17;
  LOBYTE(v94) = v102;
  sub_1A5B101C8(&v94, v93);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v77;
  sub_1A5B0E9AC(v93, v78, v80, v81);

  return v92;
}

uint64_t sub_1A5C31DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v48 = sub_1A5FD370C();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5FD3B5C();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v36 - v12;
  v43 = *(v1 + 5);
  v13 = *(v1 + 8);
  v44 = *(v1 + 72);

  sub_1A5FD3A5C();
  sub_1A5FD3A4C();
  sub_1A5FD3A3C();
  sub_1A5FD399C();
  sub_1A5FD39BC();
  sub_1A5FD39CC();
  sub_1A5FD3A0C();
  sub_1A5FD39EC();
  sub_1A5FD398C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v37 = v5;
    v38 = a1;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1A5B76AEC(0, v14, 0);
    v15 = v49;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v45 = *(v16 + 56);
    v46 = v17;
    v47 = v16;
    v19 = (v16 - 8);
    do
    {
      v20 = v48;
      v46(v8, v18, v48);
      v21 = sub_1A5FD36FC();
      v23 = v22;
      (*v19)(v8, v20);
      v49 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A5B76AEC((v24 > 1), v25 + 1, 1);
        v15 = v49;
      }

      *(v15 + 16) = v25 + 1;
      v26 = v15 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 += v45;
      --v14;
    }

    while (v14);
    v5 = v37;
  }

  sub_1A5FD39FC();
  sub_1A5FD39DC();
  result = sub_1A5FD3A1C();
  v28 = v44;
  if (*(v44 + 16))
  {
    result = sub_1A5B0E238(0);
    if (v29)
    {
      v31 = v41;
      v30 = v42;
      v32 = *(v28 + 56) + *(v41 + 72) * result;
      v33 = *(v41 + 16);
      v34 = v39;
      v33(v39, v32, v42);
      v35 = v40;
      (*(v31 + 32))(v40, v34, v30);
      v33(v5, v35, v30);
      (*(v31 + 56))(v5, 0, 1, v30);
      sub_1A5FD39AC();
      return (*(v31 + 8))(v35, v30);
    }
  }

  return result;
}

size_t RecognizeTextRequest.supportedComputeStageDevices.getter()
{
  v1 = sub_1A5FD3B5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = *v0;
  v9 = *(v0 + 4);
  if (v9)
  {
    *v30 = *v0;
    v30[4] = v9;
    v31 = *(v0 + 21);
    v32 = *(v0 + 37);
    *v33 = *(v0 + 53);
    *&v33[11] = *(v0 + 4);
    *&v30[5] = *(v0 + 5);
    v10 = sub_1A5C31744(0);
    *v30 = v8;
    v30[4] = v9;
    v31 = *(v0 + 21);
    v32 = *(v0 + 37);
    *v33 = *(v0 + 53);
    *&v33[11] = *(v0 + 4);
    *&v30[5] = *(v0 + 5);
    v11 = sub_1A5B16F58(0, &qword_1EB1F2730);
    sub_1A5C32F78();
    v12 = sub_1A5BDA354(v11, v10);

    return v12;
  }

  sub_1A5FD396C();
  *v30 = v8;
  v30[4] = v9;
  v31 = *(v0 + 21);
  v32 = *(v0 + 37);
  *v33 = *(v0 + 53);
  *&v33[11] = *(v0 + 4);
  *&v30[5] = *(v0 + 5);
  v34[3] = sub_1A5FD3A6C();
  v34[4] = sub_1A5C33AA0(&qword_1EB1EFFD8, MEMORY[0x1E69D9C70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_1A5C31DB4(boxed_opaque_existential_1);
  v15 = sub_1A5FD394C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  v17 = inited + 32;
  if (!(v15 >> 62))
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_18:

    v19 = MEMORY[0x1E69E7CC0];
LABEL_19:
    *(inited + 40) = v19;
    v26 = sub_1A5B54118(inited);
    swift_setDeallocating();
    sub_1A5B10168(v17, &qword_1EB1F15C0);
    return v26;
  }

  v18 = sub_1A5FD484C();
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_5:
  *v30 = MEMORY[0x1E69E7CC0];
  result = sub_1A5B53F20(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v28 = inited;
    v29 = inited + 32;
    v19 = *v30;
    if ((v15 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v18; ++i)
      {
        MEMORY[0x1AC554EE0](i, v15);
        sub_1A5FD3B4C();
        *v30 = v19;
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1A5B53F20(v21 > 1, v22 + 1, 1);
          v19 = *v30;
        }

        *(v19 + 16) = v22 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22, v7, v1);
      }
    }

    else
    {
      v23 = 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1A5FD3B4C();
        *v30 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1A5B53F20(v24 > 1, v25 + 1, 1);
          v19 = *v30;
        }

        *(v19 + 16) = v25 + 1;
        (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25, v4, v1);
        v23 += 8;
        --v18;
      }

      while (v18);
    }

    v17 = v29;
    inited = v28;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

__n128 RecognizeTextRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 RecognizeTextRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_1A5C326A0()
{
  sub_1A5C32E28();
  result = sub_1A5D4EB30();
  qword_1EB23FD78 = result;
  return result;
}

uint64_t RecognizeTextRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C32E28();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeTextRequest, v3);
}

uint64_t sub_1A5C32758()
{
  sub_1A5C32E28();
  result = sub_1A5D4EC2C();
  qword_1EB23FD88 = result;
  return result;
}

uint64_t RecognizeTextRequest.hash(into:)(__int128 *a1)
{
  v3 = sub_1A5FD370C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 4);
  v8 = *(v1 + 8);
  v20[1] = *(v1 + 16);
  v21 = *(v1 + 24);
  v9 = *(v1 + 48);
  v22 = *(v1 + 32);
  v23 = v9;
  v24 = *(v1 + 64);
  v25 = *(v1 + 72);
  sub_1A5FD4C4C();
  MEMORY[0x1AC555420](v7);
  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v11 = v13;
    v14 = v8 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v11(v6, v14, v3);
      sub_1A5C33AA0(&qword_1EB1EFF70, MEMORY[0x1E6969720]);
      sub_1A5FD3CBC();
      (*(v12 - 8))(v6, v3);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  sub_1A5FD4C3C();
  v16 = v21;
  MEMORY[0x1AC555420](*(v21 + 16));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 40;
    do
    {

      sub_1A5FD3DBC();

      v18 += 16;
      --v17;
    }

    while (v17);
  }

  v26 = v22;
  v27 = v23;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5FD4C3C();
  return sub_1A5B0ED0C(a1, v25);
}

uint64_t RecognizeTextRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  RecognizeTextRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C32A98(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C32E28();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C32AEC(uint64_t a1)
{
  v2 = sub_1A5B5E79C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C32B28()
{
  sub_1A5FD4C1C();
  RecognizeTextRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C32B6C()
{
  sub_1A5FD4C1C();
  RecognizeTextRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C32BAC()
{
  if (*(v0 + 4) == 1)
  {
    return sub_1A5FD3D5C();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A5C32BF4(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E79C();

  return sub_1A5D4E6C8(a1, a2);
}

__n128 sub_1A5C32C40@<Q0>(uint64_t a1@<X8>)
{
  v4 = 0;
  RecognizeTextRequest.init(_:)(&v4, v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t _s6Vision20RecognizeTextRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((*(a1 + 4) ^ *(a2 + 4)))
  {
    return 0;
  }

  if ((*(a1 + 5) ^ *(a2 + 5)))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a2 + 24);
  v11 = *(a2 + 48);
  v12 = *(a2 + 32);
  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  if ((sub_1A5B73D5C(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((v8 ^ v9))
  {
    return 0;
  }

  if ((sub_1A5B73F70(v2, v5) & 1) == 0)
  {
    return 0;
  }

  v16.origin = v14;
  v16.size = v13;
  v15.origin = v12;
  v15.size = v11;
  if (!static NormalizedRect.== infix(_:_:)(&v16, &v15) || ((v3 ^ v6) & 1) != 0)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v4, v7);
}

unint64_t sub_1A5C32E28()
{
  result = qword_1EB1F26F0;
  if (!qword_1EB1F26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F26F0);
  }

  return result;
}

unint64_t sub_1A5C32E7C()
{
  result = qword_1EB23FDA0;
  if (!qword_1EB23FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FDA0);
  }

  return result;
}

unint64_t sub_1A5C32ED0()
{
  result = qword_1EB23FDA8;
  if (!qword_1EB23FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB23FDA8);
  }

  return result;
}

unint64_t sub_1A5C32F24()
{
  result = qword_1EB23FDB0[0];
  if (!qword_1EB23FDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB23FDB0);
  }

  return result;
}

unint64_t sub_1A5C32F78()
{
  result = qword_1EB1F2728;
  if (!qword_1EB1F2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2728);
  }

  return result;
}

void sub_1A5C32FCC(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B16F58(0, &qword_1EB1F2730);
  if ([ObjCClassFromMetadata isSubclassOfClass_])
  {
    v5 = [objc_allocWithZone(VNRecognizeTextRequest) init];
    v20[0] = 0;
    v6 = [v5 setRevision:3 error:v20];
    v7 = v20[0];
    if (v6)
    {
      v8 = sub_1A5FD3D5C();
      v10 = v9;
      v21 = MEMORY[0x1E69E6448];
      LODWORD(v20[0]) = v3;
      v11 = *(*a1 + 208);
      v12 = v7;
      v13 = v11(v19);
      sub_1A5B0DE30(v20, v8, v10);
      v13(v19, 0);
      v14 = sub_1A5FD3D5C();
      v16 = v15;
      v21 = sub_1A5B16F58(0, &qword_1EB1F2780);
      v20[0] = v5;
      v5 = v5;
      v17 = v11(v19);
      sub_1A5B0DE30(v20, v14, v16);
      v17(v19, 0);
    }

    else
    {
      v18 = v20[0];
      sub_1A5FD348C();

      swift_willThrow();
    }
  }
}

unint64_t sub_1A5C33204()
{
  result = qword_1EB1F2738;
  if (!qword_1EB1F2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2738);
  }

  return result;
}

unint64_t sub_1A5C33260()
{
  result = qword_1EB1F2740;
  if (!qword_1EB1F2740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2740);
  }

  return result;
}

unint64_t sub_1A5C332C8()
{
  result = qword_1EB1F2750;
  if (!qword_1EB1F2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2750);
  }

  return result;
}

unint64_t sub_1A5C3331C(uint64_t a1)
{
  result = sub_1A5B5E79C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C33344(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66A24();
  result = sub_1A5C33374();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C33374()
{
  result = qword_1EB1F2758;
  if (!qword_1EB1F2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2758);
  }

  return result;
}

unint64_t sub_1A5C333CC()
{
  result = qword_1EB1F2760;
  if (!qword_1EB1F2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2760);
  }

  return result;
}

unint64_t sub_1A5C33424()
{
  result = qword_1EB1F2768;
  if (!qword_1EB1F2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2768);
  }

  return result;
}

unint64_t sub_1A5C334C0(uint64_t a1)
{
  result = sub_1A5C32E28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C334E8(uint64_t a1)
{
  result = sub_1A5C33510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C33510()
{
  result = qword_1EB1F2778;
  if (!qword_1EB1F2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2778);
  }

  return result;
}

uint64_t sub_1A5C33564(uint64_t a1, int a2)
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

uint64_t sub_1A5C335AC(uint64_t result, int a2, int a3)
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

unint64_t sub_1A5C33684()
{
  result = qword_1EB2408C0[0];
  if (!qword_1EB2408C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2408C0);
  }

  return result;
}

unint64_t sub_1A5C336DC()
{
  result = qword_1EB240CD0[0];
  if (!qword_1EB240CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB240CD0);
  }

  return result;
}

unint64_t sub_1A5C33734()
{
  result = qword_1EB240DE0;
  if (!qword_1EB240DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB240DE0);
  }

  return result;
}

unint64_t sub_1A5C3378C()
{
  result = qword_1EB240DE8[0];
  if (!qword_1EB240DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB240DE8);
  }

  return result;
}

unint64_t sub_1A5C337E4()
{
  result = qword_1EB240E70;
  if (!qword_1EB240E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB240E70);
  }

  return result;
}

unint64_t sub_1A5C3383C()
{
  result = qword_1EB240E78;
  if (!qword_1EB240E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB240E78);
  }

  return result;
}

unint64_t sub_1A5C33894()
{
  result = qword_1EB240F00;
  if (!qword_1EB240F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB240F00);
  }

  return result;
}

unint64_t sub_1A5C338EC()
{
  result = qword_1EB240F08[0];
  if (!qword_1EB240F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB240F08);
  }

  return result;
}

unint64_t sub_1A5C33944()
{
  result = qword_1EB240F90;
  if (!qword_1EB240F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB240F90);
  }

  return result;
}

unint64_t sub_1A5C3399C()
{
  result = qword_1EB240F98[0];
  if (!qword_1EB240F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB240F98);
  }

  return result;
}

unint64_t sub_1A5C339F4()
{
  result = qword_1EB241020;
  if (!qword_1EB241020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB241020);
  }

  return result;
}

unint64_t sub_1A5C33A4C()
{
  result = qword_1EB241028[0];
  if (!qword_1EB241028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB241028);
  }

  return result;
}

uint64_t sub_1A5C33AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C33B24(uint64_t a1)
{
  v2 = sub_1A5C33F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C33B60(uint64_t a1)
{
  v2 = sub_1A5C33F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C33B9C(uint64_t a1)
{
  v2 = sub_1A5C33FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C33BD8(uint64_t a1)
{
  v2 = sub_1A5C33FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C33C14(uint64_t a1)
{
  v2 = sub_1A5C33F90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C33C50(uint64_t a1)
{
  v2 = sub_1A5C33F90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassifyCityNatureImageRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2788);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2790);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2798);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C33F3C();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C33F90();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C33FE4();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5C33F3C()
{
  result = qword_1EB2410C0;
  if (!qword_1EB2410C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2410C0);
  }

  return result;
}

unint64_t sub_1A5C33F90()
{
  result = qword_1EB2410C8;
  if (!qword_1EB2410C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2410C8);
  }

  return result;
}

unint64_t sub_1A5C33FE4()
{
  result = qword_1EB2410D0[0];
  if (!qword_1EB2410D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2410D0);
  }

  return result;
}

uint64_t ClassifyCityNatureImageRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t ClassifyCityNatureImageRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F27A0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F27A8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F27B0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C33F3C();
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
    *v21 = &type metadata for ClassifyCityNatureImageRequest.Revision;
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
    sub_1A5C33F90();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C33FE4();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t ClassifyCityNatureImageRequest.init(revision:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 2;
  static NormalizedRect.fullImage.getter((a2 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a2 + 48) = result;
  *(a2 + 40) = v3;
  return result;
}

uint64_t ClassifyCityNatureImageRequest.supportedIdentifiers.getter()
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = v0[40];
  v7 = *(v0 + 6);
  LOBYTE(v30) = *v0;
  *(&v30 + 1) = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v8 = sub_1A5C35068();
  sub_1A5BD9578(0, &type metadata for ClassifyCityNatureImageRequest, v8);
  v11 = v10;
  sub_1A5B16F58(0, &qword_1EB1EF148);
  if (!swift_dynamicCastMetatype())
  {

    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CoreSceneUnderstandingDetectorRecipient();
  v32 = &type metadata for ClassifyCityNatureImageRequest;
  v33 = sub_1A5C350BC();
  v12 = swift_allocObject();
  *&v30 = v12;
  *(v12 + 16) = v1;
  *(v12 + 24) = v2;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 48) = v5;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;

  v13 = sub_1A5C9ED80(&v30);
  v14 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorCityNatureConfiguration) initWithObservationsRecipient_];
  v15 = sub_1A5FD3D5C();
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A5FF3930;
  *(v18 + 32) = v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F27C8);
  *&v30 = v18;
  sub_1A5B101C8(&v30, v29);
  v19 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v29, v15, v17, isUniquelyReferenced_nonNull_native);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(v11);
  v22 = sub_1A5FD3BDC();

  *&v30 = 0;
  v23 = [ObjCClassFromMetadata allCityNatureIdentifiersWithConfigurationOptions:v22 error:&v30];

  v24 = v30;
  if (!v23)
  {
    v27 = v30;
    v28 = sub_1A5FD348C();

    swift_willThrow();

    return MEMORY[0x1E69E7CC0];
  }

  v25 = sub_1A5FD3F4C();
  v26 = v24;

  return v25;
}

__n128 ClassifyCityNatureImageRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ClassifyCityNatureImageRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C34920()
{
  sub_1A5C35110();
  result = sub_1A5D4EC2C();
  qword_1EB2410B8 = result;
  return result;
}

uint64_t static ClassifyCityNatureImageRequest.allSupportedRevisions.getter()
{
  if (qword_1EB2410B0 != -1)
  {
    swift_once();
  }
}

uint64_t ClassifyCityNatureImageRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C35110();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for ClassifyCityNatureImageRequest, v3);
}

uint64_t ClassifyCityNatureImageRequest.hash(into:)(__int128 *a1)
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

uint64_t ClassifyCityNatureImageRequest.hashValue.getter()
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

uint64_t sub_1A5C34B80(uint64_t a1)
{
  v2 = sub_1A5C35068();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C34BBC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C35110();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C34C2C(uint64_t a1)
{
  v2 = sub_1A5B5E604();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C34C6C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E604();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5C34CB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  LOBYTE(v15) = *v1;
  v5 = *(v1 + 24);
  v16 = *(v1 + 8);
  v17 = v5;
  v18 = v3;
  v19 = v4;
  v6 = sub_1A5C35068();
  result = sub_1A5BDA35C(a1, &type metadata for ClassifyCityNatureImageRequest, v6);
  if ((v3 & 1) == 0)
  {
    v8 = result;
    v9 = sub_1A5FD3D5C();
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *&v17 = sub_1A5B16F58(0, &qword_1EB1F3E80);
    v15 = v12;
    sub_1A5B101C8(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

    return v8;
  }

  return result;
}

void sub_1A5C34DD4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorCityNatureConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F27C8);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

void sub_1A5C34F1C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorCityNatureClassificationConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F27D8);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

uint64_t sub_1A5C35034@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1A5C35068()
{
  result = qword_1EB1F27B8;
  if (!qword_1EB1F27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27B8);
  }

  return result;
}

unint64_t sub_1A5C350BC()
{
  result = qword_1EB1F27C0;
  if (!qword_1EB1F27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27C0);
  }

  return result;
}

unint64_t sub_1A5C35110()
{
  result = qword_1EB1F27D0;
  if (!qword_1EB1F27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27D0);
  }

  return result;
}

unint64_t sub_1A5C35164()
{
  result = qword_1EB1F27E0;
  if (!qword_1EB1F27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27E0);
  }

  return result;
}

unint64_t sub_1A5C351BC(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66880();
  result = sub_1A5C351EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C351EC()
{
  result = qword_1EB1F27E8;
  if (!qword_1EB1F27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27E8);
  }

  return result;
}

unint64_t sub_1A5C35244()
{
  result = qword_1EB1F27F0;
  if (!qword_1EB1F27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27F0);
  }

  return result;
}

unint64_t sub_1A5C3529C()
{
  result = qword_1EB1F27F8;
  if (!qword_1EB1F27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F27F8);
  }

  return result;
}

unint64_t sub_1A5C352F0(uint64_t a1)
{
  result = sub_1A5B5E604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C35318(uint64_t a1)
{
  result = sub_1A5C35110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C35340(uint64_t a1)
{
  result = sub_1A5C35068();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C35368(uint64_t a1)
{
  result = sub_1A5C35390();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C35390()
{
  result = qword_1EB1F2800;
  if (!qword_1EB1F2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2800);
  }

  return result;
}

unint64_t sub_1A5C35438()
{
  result = qword_1EB241B60[0];
  if (!qword_1EB241B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB241B60);
  }

  return result;
}

unint64_t sub_1A5C35490()
{
  result = qword_1EB241C70;
  if (!qword_1EB241C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB241C70);
  }

  return result;
}

unint64_t sub_1A5C354E8()
{
  result = qword_1EB241C78;
  if (!qword_1EB241C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB241C78);
  }

  return result;
}

unint64_t sub_1A5C35540()
{
  result = qword_1EB241D00;
  if (!qword_1EB241D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB241D00);
  }

  return result;
}

unint64_t sub_1A5C35598()
{
  result = qword_1EB241D08[0];
  if (!qword_1EB241D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB241D08);
  }

  return result;
}

unint64_t sub_1A5C355F0()
{
  result = qword_1EB241D90;
  if (!qword_1EB241D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB241D90);
  }

  return result;
}

unint64_t sub_1A5C35648()
{
  result = qword_1EB241D98[0];
  if (!qword_1EB241D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB241D98);
  }

  return result;
}

uint64_t sub_1A5C356B8(uint64_t a1)
{
  v2 = sub_1A5C35980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C356F4(uint64_t a1)
{
  v2 = sub_1A5C35980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C35730(uint64_t a1)
{
  v2 = sub_1A5C359D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C3576C(uint64_t a1)
{
  v2 = sub_1A5C359D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectFaceGazeRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2808);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2810);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C35980();
  sub_1A5FD4CDC();
  sub_1A5C359D4();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C35980()
{
  result = qword_1EB241E20;
  if (!qword_1EB241E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB241E20);
  }

  return result;
}

unint64_t sub_1A5C359D4()
{
  result = qword_1EB241E28[0];
  if (!qword_1EB241E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB241E28);
  }

  return result;
}

uint64_t DetectFaceGazeRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectFaceGazeRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2818);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2820);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C35980();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C359D4();
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
      *v13 = &type metadata for DetectFaceGazeRequest.Revision;
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

uint64_t sub_1A5C35DA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2808);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2810);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C35980();
  sub_1A5FD4CDC();
  sub_1A5C359D4();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectFaceGazeRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0x3CF5C28F3E4CCCCDLL;
  *(a1 + 16) = 1008981770;
  *(a1 + 20) = 1;
  static NormalizedRect.fullImage.getter((a1 + 24));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 56) = result;
  return result;
}

uint64_t DetectFaceGazeRequest.inputFaceObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 DetectFaceGazeRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectFaceGazeRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t DetectFaceGazeRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C3708C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectFaceGazeRequest, v3);
}

uint64_t DetectFaceGazeRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 3);
  v13 = *(v1 + 5);
  v14 = v8;
  v15 = v1[7];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v11 = *(v4 + 72);
      do
      {
        sub_1A5C37134(v10, v6, type metadata accessor for FaceObservation);
        sub_1A5B102F8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
        sub_1A5FD3CBC();
        sub_1A5C3719C(v6, type metadata accessor for FaceObservation);
        v10 += v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  v16 = v14;
  v17 = v13;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v15);
}

uint64_t DetectFaceGazeRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectFaceGazeRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

__n128 sub_1A5C36404@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1A5C36414(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1A5C36444(uint64_t a1)
{
  v2 = sub_1A5C370E0();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C36480(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C3708C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C364E0(uint64_t a1)
{
  v2 = sub_1A5B5E4B4();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C3651C()
{
  sub_1A5FD4C1C();
  DetectFaceGazeRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C36560()
{
  sub_1A5FD4C1C();
  DetectFaceGazeRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C365A0@<X0>(uint64_t *a1@<X8>)
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
    v8 = 1;
    DetectFaceRectanglesRequest.init(_:)(&v8, &v9);
    v6 = *(v1 + 24);
    v10 = *(v1 + 40);
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

uint64_t sub_1A5C36658(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1A5C366CC(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E4B4();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C3671C@<D0>(_OWORD *a1@<X8>)
{
  *&v5 = 0;
  *(&v5 + 1) = 0x3CF5C28F3E4CCCCDLL;
  LODWORD(v6) = 1008981770;
  BYTE4(v6) = 1;
  static NormalizedRect.fullImage.getter((&v6 + 8));
  *(&v8 + 1) = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v2 = v6;
  *a1 = v5;
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

unint64_t sub_1A5C36794(uint64_t a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  v10 = *(v1 + 4);
  v50 = *(v1 + 20);
  *&v45 = v7;
  *(&v45 + 1) = __PAIR64__(v8, v9);
  v46 = v10;
  v47 = v50;
  v48 = *(v1 + 21);
  *v49 = *(v1 + 37);
  *&v49[11] = *(v1 + 3);
  v11 = sub_1A5C370E0();
  v12 = sub_1A5BDA35C(a1, &type metadata for DetectFaceGazeRequest, v11);
  v13 = sub_1A5FD3D5C();
  v15 = v14;
  v16 = MEMORY[0x1E69E6448];
  *(&v48 + 3) = MEMORY[0x1E69E6448];
  LODWORD(v45) = v9;
  sub_1A5B101C8(&v45, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v12;
  sub_1A5B0E9AC(v44, v13, v15, isUniquelyReferenced_nonNull_native);

  v18 = v43;
  v19 = sub_1A5FD3D5C();
  v21 = v20;
  *(&v48 + 3) = v16;
  LODWORD(v45) = v8;
  sub_1A5B101C8(&v45, v44);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v18;
  sub_1A5B0E9AC(v44, v19, v21, v22);

  v23 = v43;
  v24 = sub_1A5FD3D5C();
  v26 = v25;
  *(&v48 + 3) = v16;
  LODWORD(v45) = v10;
  sub_1A5B101C8(&v45, v44);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v23;
  sub_1A5B0E9AC(v44, v24, v26, v27);

  v28 = v43;
  v29 = sub_1A5FD3D5C();
  v31 = v30;
  *(&v48 + 3) = MEMORY[0x1E69E6370];
  LOBYTE(v45) = (v50 & 1) == 0;
  sub_1A5B101C8(&v45, v44);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v28;
  sub_1A5B0E9AC(v44, v29, v31, v32);

  v33 = v43;
  v34 = sub_1A5FD3D5C();
  v36 = v35;
  if (!v7 || (v37 = *(v7 + 16)) == 0)
  {
    *(&v48 + 3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2838);
LABEL_8:
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  *&v45 = MEMORY[0x1E69E7CC0];
  sub_1A5FD47AC();
  v38 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v39 = *(v4 + 72);
  do
  {
    sub_1A5C37134(v38, v6, type metadata accessor for FaceObservation);
    sub_1A5D0AA68();
    sub_1A5C3719C(v6, type metadata accessor for FaceObservation);
    sub_1A5FD477C();
    sub_1A5FD47BC();
    sub_1A5FD47CC();
    sub_1A5FD478C();
    v38 += v39;
    --v37;
  }

  while (v37);
  v40 = v45;
  *(&v48 + 3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2838);
  if (!v40)
  {
    goto LABEL_8;
  }

LABEL_9:
  *&v45 = v40;
  sub_1A5B101C8(&v45, v44);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v33;
  sub_1A5B0E9AC(v44, v34, v36, v41);

  return v43;
}

uint64_t sub_1A5C36B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceObservation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5C37134(a1, v10, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1A5C3719C(v10, type metadata accessor for VisionResult);
  }

  v12 = *(v10 + 7);

  v13 = sub_1A5FD3D5C();
  v14 = v13;
  v16 = v15;
  v17 = *(v12 + 16);
  if (v17)
  {
    v23 = v13;
    v25[0] = MEMORY[0x1E69E7CC0];
    sub_1A5FD47AC();
    v18 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = *(v5 + 72);
    do
    {
      sub_1A5C37134(v18, v7, type metadata accessor for FaceObservation);
      sub_1A5D0AA68();
      sub_1A5C3719C(v7, type metadata accessor for FaceObservation);
      sub_1A5FD477C();
      sub_1A5FD47BC();
      sub_1A5FD47CC();
      sub_1A5FD478C();
      v18 += v19;
      --v17;
    }

    while (v17);

    v20 = v25[0];
    v14 = v23;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2838);
  v25[0] = v20;
  v21 = (*(*a2 + 208))(v24);
  sub_1A5B0DE30(v25, v14, v16);
  return v21(v24, 0);
}

uint64_t sub_1A5C36E60(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = *(v2 + 40);
  v13[0] = *(v2 + 24);
  v13[1] = v8;
  v9 = type metadata accessor for FaceObservation(0);
  v10 = a1 + *(v9 + 52);
  v11 = *(v10 + 16);
  v14[0] = *v10;
  v14[1] = v11;
  v14[2] = *(v10 + 32);
  v15 = *(v10 + 48);
  sub_1A5D08E18(a2, v13, v14, v7);
  return sub_1A5C371FC(v7, a1 + *(v9 + 84));
}

uint64_t _s6Vision21DetectFaceGazeRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *a2;
  v12 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *(a2 + 16);
  v14 = *(a2 + 20);
  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v17 = *(a2 + 56);
  if (*a1)
  {
    if (!v10)
    {
      return 0;
    }

    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    v22 = *(a2 + 40);
    v23 = *(a2 + 24);

    v18 = sub_1A5B0E074(v2, v10);

    v16 = v22;
    v15 = v23;
    v8 = v24;
    v7 = v25;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 != v12 || v3 != v11 || v5 != v13)
  {
    return 0;
  }

  if ((v6 ^ v14))
  {
    return 0;
  }

  v27.origin = v7;
  v27.size = v8;
  v26.origin = v15;
  v26.size = v16;
  if (!static NormalizedRect.== infix(_:_:)(&v27, &v26))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v9, v17);
}

unint64_t sub_1A5C3708C()
{
  result = qword_1EB1F2828;
  if (!qword_1EB1F2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2828);
  }

  return result;
}

unint64_t sub_1A5C370E0()
{
  result = qword_1EB1F2830;
  if (!qword_1EB1F2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2830);
  }

  return result;
}

uint64_t sub_1A5C37134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5C3719C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5C371FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5C3726C()
{
  result = qword_1EB1F2848;
  if (!qword_1EB1F2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2848);
  }

  return result;
}

unint64_t sub_1A5C372C4(uint64_t a1)
{
  result = sub_1A5B5E4B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C372EC(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66730();
  result = sub_1A5C3731C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C3731C()
{
  result = qword_1EB1F2850;
  if (!qword_1EB1F2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2850);
  }

  return result;
}

unint64_t sub_1A5C37374()
{
  result = qword_1EB1F2858;
  if (!qword_1EB1F2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2858);
  }

  return result;
}

unint64_t sub_1A5C373CC()
{
  result = qword_1EB1F2860;
  if (!qword_1EB1F2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2860);
  }

  return result;
}

unint64_t sub_1A5C37420(uint64_t a1)
{
  result = sub_1A5C3708C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C37448(uint64_t a1)
{
  result = sub_1A5C37470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C37470()
{
  result = qword_1EB1F2868;
  if (!qword_1EB1F2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2868);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A5C374D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5C37520(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_1A5C375B4()
{
  result = qword_1EB2426B0[0];
  if (!qword_1EB2426B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2426B0);
  }

  return result;
}

unint64_t sub_1A5C3760C()
{
  result = qword_1EB2427C0;
  if (!qword_1EB2427C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2427C0);
  }

  return result;
}

unint64_t sub_1A5C37664()
{
  result = qword_1EB2427C8[0];
  if (!qword_1EB2427C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2427C8);
  }

  return result;
}

unint64_t sub_1A5C376BC()
{
  result = qword_1EB242850;
  if (!qword_1EB242850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB242850);
  }

  return result;
}

unint64_t sub_1A5C37714()
{
  result = qword_1EB242858[0];
  if (!qword_1EB242858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB242858);
  }

  return result;
}

uint64_t sub_1A5C3779C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D61437472616D73 && a2 == 0xE900000000000035)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5C3782C(uint64_t a1)
{
  v2 = sub_1A5C37AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C37868(uint64_t a1)
{
  v2 = sub_1A5C37AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C378A4(uint64_t a1)
{
  v2 = sub_1A5C37B48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C378E0(uint64_t a1)
{
  v2 = sub_1A5C37B48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeDocumentElementsRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2870);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2878);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C37AF4();
  sub_1A5FD4CDC();
  sub_1A5C37B48();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C37AF4()
{
  result = qword_1EB2428F0;
  if (!qword_1EB2428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2428F0);
  }

  return result;
}

unint64_t sub_1A5C37B48()
{
  result = qword_1EB2428F8;
  if (!qword_1EB2428F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2428F8);
  }

  return result;
}

uint64_t RecognizeDocumentElementsRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeDocumentElementsRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2880);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2888);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C37AF4();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C37B48();
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
      *v13 = &type metadata for RecognizeDocumentElementsRequest.Revision;
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

uint64_t sub_1A5C37F14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2870);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2878);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C37AF4();
  sub_1A5FD4CDC();
  sub_1A5C37B48();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t RecognizeDocumentElementsRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 0;
  *a1 = 0;
  static NormalizedRect.fullImage.getter((a1 + 8));
  *(a1 + 40) = 2;
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 48) = result;
  return result;
}

Vision::RecognizeDocumentElementsRequest::Element_optional __swiftcall RecognizeDocumentElementsRequest.Element.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecognizeDocumentElementsRequest.Element.rawValue.getter()
{
  v1 = 0xD000000000000028;
  v2 = 0xD00000000000002ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000002BLL;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002CLL;
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

void sub_1A5C3820C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000028;
  v3 = "entElementIdentifierText";
  v4 = 0xD00000000000002ALL;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000002BLL;
    v3 = "entElementIdentifierQRCode";
  }

  if (*v1)
  {
    v5 = "entElementIdentifierDocument";
  }

  else
  {
    v2 = 0xD00000000000002CLL;
    v5 = "unknown data type";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1A5C38290(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000028;
  v3 = "unknown data type";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "entElementIdentifierText";
      v5 = 0xD00000000000002ALL;
    }

    else
    {
      v6 = "entElementIdentifierQRCode";
      v5 = 0xD00000000000002BLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000028;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v4)
    {
      v6 = "entElementIdentifierDocument";
    }

    else
    {
      v6 = "unknown data type";
    }
  }

  if (a2 > 1u)
  {
    v3 = "entElementIdentifierText";
    v7 = 0xD00000000000002ALL;
    v8 = "entElementIdentifierQRCode";
    v2 = 0xD00000000000002BLL;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000002CLL;
    v8 = "entElementIdentifierDocument";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A5FD4B0C();
  }

  return v12 & 1;
}

uint64_t sub_1A5C38460()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C38518()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C385BC()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

void RecognizeDocumentElementsRequest.supportedIdentifiers.getter()
{
  sub_1A5CD38E8();
  v0 = sub_1A5C397CC();

  v2 = sub_1A5BDA554(v1, &type metadata for RecognizeDocumentElementsRequest, v0);

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 supportedDocumentElementIdentifiers];
    v5 = sub_1A5FD3F4C();

    v6 = 0;
    v7 = *(v5 + 16);
    v8 = v5 + 40;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v10 = v8 + 16 * v6;
    while (1)
    {
      if (v7 == v6)
      {

        return;
      }

      if (v6 >= *(v5 + 16))
      {
        break;
      }

      ++v6;
      v11 = v10 + 16;

      v12 = sub_1A5FD48AC();

      v10 = v11;
      if (v12 < 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A5C395CC(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v16 = sub_1A5C395CC((v13 > 1), v14 + 1, 1, v9);
          v15 = v14 + 1;
          v9 = v16;
        }

        *(v9 + 2) = v15;
        v9[v14 + 32] = v12;
        v8 = v5 + 40;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1A5C3890C()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x7A696E676F636572;
  }
}

uint64_t sub_1A5C38950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7A696E676F636572 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6056510 == a2)
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

uint64_t sub_1A5C38A3C(uint64_t a1)
{
  v2 = sub_1A5C39820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C38A78(uint64_t a1)
{
  v2 = sub_1A5C39820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeDocumentElementsRequest.ElementConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2898);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C39820();
  sub_1A5FD4CDC();
  v12 = 0;
  sub_1A5FD4A2C();
  if (!v2)
  {
    v11 = 1;
    sub_1A5FD4A2C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RecognizeDocumentElementsRequest.ElementConfiguration.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  return sub_1A5FD4C6C();
}

uint64_t RecognizeDocumentElementsRequest.ElementConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F28A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C39820();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1A5FD494C();
    v13 = 1;
    v11 = sub_1A5FD494C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5C38EE4()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C38F84()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  return sub_1A5FD4C6C();
}

void RecognizeDocumentElementsRequest.documentElements.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *RecognizeDocumentElementsRequest.documentElements.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

void RecognizeDocumentElementsRequest.textElements.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 3);
  *a1 = *(v1 + 2);
  a1[1] = v2;
}

_BYTE *RecognizeDocumentElementsRequest.textElements.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 2) = *result;
  *(v1 + 3) = v2;
  return result;
}

void RecognizeDocumentElementsRequest.machineReadableCodeElements.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 5);
  *a1 = *(v1 + 4);
  a1[1] = v2;
}

_BYTE *RecognizeDocumentElementsRequest.machineReadableCodeElements.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 4) = *result;
  *(v1 + 5) = v2;
  return result;
}

__n128 RecognizeDocumentElementsRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 RecognizeDocumentElementsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C39134()
{
  sub_1A5C39874();
  result = sub_1A5D4EC2C();
  qword_1EB2428E8 = result;
  return result;
}

uint64_t static RecognizeDocumentElementsRequest.allSupportedRevisions.getter()
{
  if (qword_1EB2428E0 != -1)
  {
    swift_once();
  }
}

uint64_t RecognizeDocumentElementsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C39874();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeDocumentElementsRequest, v3);
}

uint64_t RecognizeDocumentElementsRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t RecognizeDocumentElementsRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  RecognizeDocumentElementsRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C39364(uint64_t a1)
{
  v2 = sub_1A5C397CC();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C393A0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C39874();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C39400(uint64_t a1)
{
  v2 = sub_1A5B5E1C0();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C3943C()
{
  sub_1A5FD4C1C();
  RecognizeDocumentElementsRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C39480()
{
  sub_1A5FD4C1C();
  RecognizeDocumentElementsRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

double sub_1A5C394C0@<D0>(uint64_t a1@<X8>)
{
  WORD2(v5[0]) = 0;
  LODWORD(v5[0]) = 0;
  static NormalizedRect.fullImage.getter((v5 + 8));
  BYTE8(v6) = 2;
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1A5C3954C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E1C0();

  return sub_1A5D4E6C8(a1, a2);
}

char *sub_1A5C395CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F28F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t _s6Vision32RecognizeDocumentElementsRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  if ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  if ((a1[3] ^ a2[3]))
  {
    return 0;
  }

  if ((a1[4] ^ a2[4]))
  {
    return 0;
  }

  if ((a1[5] ^ a2[5]))
  {
    return 0;
  }

  v2 = a1[40];
  v3 = *(a1 + 6);
  v4 = a2[40];
  v5 = *(a2 + 6);
  v6 = *(a1 + 24);
  v10.origin = *(a1 + 8);
  v10.size = v6;
  v7 = *(a2 + 24);
  v9.origin = *(a2 + 8);
  v9.size = v7;
  if (!static NormalizedRect.== infix(_:_:)(&v10, &v9))
  {
    return 0;
  }

  LOBYTE(v10.origin.x) = v2;
  LOBYTE(v9.origin.x) = v4;
  if ((static ImageCropAndScaleAction.== infix(_:_:)(&v10, &v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v3, v5);
}

unint64_t sub_1A5C397CC()
{
  result = qword_1EB1F2890;
  if (!qword_1EB1F2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2890);
  }

  return result;
}

unint64_t sub_1A5C39820()
{
  result = qword_1EB242900[0];
  if (!qword_1EB242900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB242900);
  }

  return result;
}

unint64_t sub_1A5C39874()
{
  result = qword_1EB1F28A8;
  if (!qword_1EB1F28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28A8);
  }

  return result;
}

id sub_1A5C398C8(uint64_t a1)
{
  v3 = *v1;
  v59 = v1[1];
  v60 = v3;
  v58 = v1[2];
  v57 = v1[3];
  v56 = v1[4];
  v55 = v1[5];
  v51 = *(v1 + 6);
  v4 = *(v1 + 38);
  v52 = *(v1 + 22);
  v53 = v4;
  v54 = *(v1 + 27);
  v5 = sub_1A5FD3D5C();
  v7 = v6;
  v8 = MEMORY[0x1E69E6370];
  *(&v47 + 2) = MEMORY[0x1E69E6370];
  v46[0] = v3 & 1;
  v9 = *(*a1 + 208);
  v10 = v9(v50);
  sub_1A5B0DE30(v46, v5, v7);
  v10(v50, 0);
  v11 = sub_1A5FD3D5C();
  v13 = v12;
  v44 = v57;
  *(&v47 + 2) = v8;
  v46[0] = v58;
  v14 = v9(v50);
  sub_1A5B0DE30(v46, v11, v13);
  v14(v50, 0);
  v15 = sub_1A5FD3D5C();
  v17 = v16;
  v43 = v55;
  *(&v47 + 2) = v8;
  v46[0] = v56;
  v18 = v9(v50);
  sub_1A5B0DE30(v46, v15, v17);
  v18(v50, 0);
  v19 = sub_1A5FD3D5C();
  v21 = v20;
  *(&v47 + 2) = v8;
  LOBYTE(v3) = v59;
  v46[0] = v59 & 1;
  v22 = v9(v50);
  sub_1A5B0DE30(v46, v19, v21);
  v22(v50, 0);
  v23 = sub_1A5FD3D5C();
  v25 = v24;
  *(&v47 + 2) = v8;
  v46[0] = v44;
  v26 = v9(v50);
  sub_1A5B0DE30(v46, v23, v25);
  v26(v50, 0);
  v27 = sub_1A5FD3D5C();
  v29 = v28;
  *(&v47 + 2) = v8;
  v46[0] = v43;
  v30 = v9(v50);
  sub_1A5B0DE30(v46, v27, v29);
  v30(v50, 0);
  v31 = sub_1A5FD3D5C();
  v33 = v32;
  *&v46[6] = v51;
  v47 = v52;
  v46[0] = v60;
  v46[1] = v3;
  v46[2] = v58;
  v46[3] = v57;
  v46[4] = v56;
  v46[5] = v55;
  v48 = v53;
  v49 = v54;
  v34 = sub_1A5C397CC();
  result = sub_1A5BD9FC4(&type metadata for RecognizeDocumentElementsRequest, v34);
  if (result)
  {
    v36 = result;
    v50[3] = sub_1A5B16F58(0, &qword_1EB1EE5C0);
    v50[0] = v36;
    v37 = v9(v45);
    sub_1A5B0DE30(v50, v31, v33);
    v37(v45, 0);
    v38 = sub_1A5FD3D5C();
    v40 = v39;
    v41 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    *(&v47 + 2) = sub_1A5B16F58(0, &qword_1EB1F28F0);
    *v46 = v41;
    v42 = v9(v50);
    sub_1A5B0DE30(v46, v38, v40);
    return v42(v50, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A5C39D8C()
{
  result = qword_1EB1F28B0;
  if (!qword_1EB1F28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28B0);
  }

  return result;
}

unint64_t sub_1A5C39DE8()
{
  result = qword_1EB1F28B8;
  if (!qword_1EB1F28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28B8);
  }

  return result;
}

unint64_t sub_1A5C39E40()
{
  result = qword_1EB1F28C0;
  if (!qword_1EB1F28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28C0);
  }

  return result;
}

unint64_t sub_1A5C39E94(uint64_t a1)
{
  result = sub_1A5B5E1C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C39EBC(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66298();
  result = sub_1A5C39EEC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C39EEC()
{
  result = qword_1EB1F28C8;
  if (!qword_1EB1F28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28C8);
  }

  return result;
}

unint64_t sub_1A5C39F44()
{
  result = qword_1EB1F28D0;
  if (!qword_1EB1F28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28D0);
  }

  return result;
}

unint64_t sub_1A5C39F9C()
{
  result = qword_1EB1F28D8;
  if (!qword_1EB1F28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28D8);
  }

  return result;
}

unint64_t sub_1A5C39FF0(uint64_t a1)
{
  result = sub_1A5C39874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C3A018(uint64_t a1)
{
  result = sub_1A5C3A040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C3A040()
{
  result = qword_1EB1F28E0;
  if (!qword_1EB1F28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecognizeDocumentElementsRequest.ElementConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RecognizeDocumentElementsRequest.ElementConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5C3A268()
{
  result = qword_1EB243610[0];
  if (!qword_1EB243610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB243610);
  }

  return result;
}

unint64_t sub_1A5C3A2C0()
{
  result = qword_1EB243820[0];
  if (!qword_1EB243820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB243820);
  }

  return result;
}

unint64_t sub_1A5C3A318()
{
  result = qword_1EB243930;
  if (!qword_1EB243930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB243930);
  }

  return result;
}

unint64_t sub_1A5C3A370()
{
  result = qword_1EB243938[0];
  if (!qword_1EB243938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB243938);
  }

  return result;
}

unint64_t sub_1A5C3A3C8()
{
  result = qword_1EB2439C0;
  if (!qword_1EB2439C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2439C0);
  }

  return result;
}

unint64_t sub_1A5C3A420()
{
  result = qword_1EB2439C8[0];
  if (!qword_1EB2439C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2439C8);
  }

  return result;
}

unint64_t sub_1A5C3A478()
{
  result = qword_1EB243A50;
  if (!qword_1EB243A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB243A50);
  }

  return result;
}

unint64_t sub_1A5C3A4D0()
{
  result = qword_1EB243A58[0];
  if (!qword_1EB243A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB243A58);
  }

  return result;
}

unint64_t sub_1A5C3A524()
{
  result = qword_1EB1F28E8;
  if (!qword_1EB1F28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F28E8);
  }

  return result;
}

uint64_t sub_1A5C3A670()
{
  v0 = sub_1A5FD454C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1A5FD3ACC();
  __swift_allocate_value_buffer(v1, qword_1EB289720);
  __swift_project_value_buffer(v1, qword_1EB289720);
  sub_1A5FD453C();
  return sub_1A5FD3ABC();
}

uint64_t sub_1A5C3A734()
{
  if (qword_1EB1F99A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5FD3ACC();

  return __swift_project_value_buffer(v0, qword_1EB289720);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A5C3A844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v45 = a4;
  v54 = a3;
  v52 = a1;
  v53 = a2;
  v9 = sub_1A5FD3A9C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = sub_1A5FD3ACC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5C3A734();
  v47 = v15;
  v19 = *(v15 + 16);
  v49 = v14;
  v19(v17, v18, v14);
  v20 = sub_1A5C3A5EC();
  v21 = *v20;
  v22 = *(v20 + 16);
  sub_1A5FD3A8C();
  v23 = sub_1A5FD3AAC();
  v46 = sub_1A5FD43AC();
  result = sub_1A5FD452C();
  v55 = v6;
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v44[1] = a5;
  if (v22)
  {
    if (v21 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v21 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v21 >> 16 <= 0x10)
      {
        v21 = &v57;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v21)
  {
LABEL_10:
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v56 = v26;
    *v25 = 136315138;
    v27 = (*(v7 + 136))();
    v29 = v7;
    v30 = sub_1A5B4D654(v27, v28, &v56);

    *(v25 + 4) = v30;
    v7 = v29;
    v31 = sub_1A5FD3A7C();
    _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v23, v46, v31, v21, "Detector (%s): createDetector", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1AC558440](v26, -1, -1);
    MEMORY[0x1AC558440](v25, -1, -1);

    goto LABEL_11;
  }

  __break(1u);
LABEL_5:

LABEL_11:
  v33 = v50;
  v32 = v51;
  (*(v50 + 16))(v48, v13, v51);
  sub_1A5FD3B0C();
  swift_allocObject();
  v34 = sub_1A5FD3AFC();
  (*(v33 + 8))(v13, v32);
  (*(v47 + 8))(v17, v49);
  v35 = v55;
  v36 = (*(v7 + 160))(v52, v53, v54);
  if (v35)
  {
    v42 = v34;
    v43 = v7;
  }

  else
  {
    v37 = v45;
    v38 = (*(v36 + 152))(v45);
    v39 = *(v7 + 200);
    v40 = v7;
    v41 = v38;
    v39(v37);
    (*(v41 + 96))();

    v42 = v34;
    v43 = v40;
  }

  sub_1A5C3AC94(v42, v43);
}

uint64_t sub_1A5C3AC94(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = sub_1A5FD3ADC();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5FD3A9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5FD3ACC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5C3A734();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_1A5C3A5EC();
  v39 = *v13;
  v14 = *(v13 + 16);
  v15 = sub_1A5FD3AAC();
  sub_1A5FD3AEC();
  v34 = sub_1A5FD439C();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  v32 = v15;
  v33 = v4;
  if (v14)
  {
    if (!(v39 >> 32))
    {
      if ((v39 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v19 = v38;
      if (v39 >> 16 <= 0x10)
      {
        v17 = v5;
        v18 = v8;
        v39 = &v41;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v39)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v5;
  v18 = v8;
  v19 = v38;
LABEL_10:

  sub_1A5FD3B1C();

  v21 = v35;
  v20 = v36;
  v22 = v7;
  if ((*(v35 + 88))(v19, v36) == *MEMORY[0x1E69E93E8])
  {
    v23 = 0;
    v24 = 0;
    v38 = "[Error] Interval already ended";
  }

  else
  {
    (*(v21 + 8))(v19, v20);
    v38 = "Detector (%s): createDetector";
    v24 = 2;
    v23 = 1;
  }

  v25 = v32;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v40 = v27;
  *v26 = v24;
  *(v26 + 1) = v23;
  *(v26 + 2) = 2080;
  v28 = (*(v37 + 136))();
  v30 = sub_1A5B4D654(v28, v29, &v40);

  *(v26 + 4) = v30;
  v31 = sub_1A5FD3A7C();
  _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v25, v34, v31, v39, v38, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v27);
  MEMORY[0x1AC558440](v27, -1, -1);
  MEMORY[0x1AC558440](v26, -1, -1);

  (*(v17 + 8))(v22, v33);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1A5C3B0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(v4 + 160))();
  if (!v5)
  {
    v6 = (*(v8 + 152))(a4);
    (*(v4 + 200))(a4);
  }

  return v6;
}

uint64_t sub_1A5C3B164()
{
  sub_1A5B16774();
  swift_allocError();
  *v0 = 0xD00000000000001DLL;
  *(v0 + 8) = 0x80000001A6056960;
  *(v0 + 16) = 0;
  *(v0 + 20) = 20;
  return swift_willThrow();
}

uint64_t sub_1A5C3B20C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1A5C3B254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2900);
  sub_1A5FD3D7C();
  v0 = sub_1A5C3C7E0();

  return v0;
}

uint64_t sub_1A5C3B2C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A6014D30;
  *(inited + 32) = xmmword_1A6014D40;
  *(inited + 48) = 9;
  *(inited + 56) = type metadata accessor for ScreenGazeDetector();
  *(inited + 64) = xmmword_1A6014D50;
  *(inited + 80) = 9;
  *(inited + 88) = type metadata accessor for DeviceGazeDetector();
  *(inited + 96) = xmmword_1A6014D60;
  *(inited + 112) = 9;
  *(inited + 120) = type metadata accessor for CameraGazeDetector();
  *(inited + 128) = xmmword_1A6014D70;
  *(inited + 144) = 9;
  *(inited + 152) = type metadata accessor for FaceAnalyzerDetector();
  *(inited + 160) = xmmword_1A6014D80;
  *(inited + 176) = 9;
  *(inited + 184) = type metadata accessor for TorsoPrintGenerator();
  *(inited + 192) = xmmword_1A6014D90;
  *(inited + 208) = 9;
  *(inited + 216) = type metadata accessor for FaceLivelinessScoreDetector();
  v1 = sub_1A5C3C9BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2928);
  result = swift_arrayDestroy();
  qword_1EB289880 = v1;
  return result;
}

uint64_t sub_1A5C3B40C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v4 = 0x656C6C65636E6163;
    v5 = 0x6E6F6973736573;
    v6 = 0xD00000000000001ELL;
    if (a1 != 10)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000023;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000016;
    }

    if (a1 <= 8u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 2u)
    {
      v1 = 0xD00000000000001CLL;
      v2 = 0xD000000000000011;
      if (a1 != 4)
      {
        v2 = 0xD000000000000015;
      }

      v3 = a1 == 3;
    }

    else
    {
      v1 = 0xD000000000000017;
      v2 = 0xD000000000000011;
      if (a1 != 1)
      {
        v2 = 0xD00000000000001DLL;
      }

      v3 = a1 == 0;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A5C3B5A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1A5C3B40C(*a1);
  v5 = v4;
  if (v3 == sub_1A5C3B40C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();
  }

  return v8 & 1;
}

uint64_t sub_1A5C3B62C()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  sub_1A5C3B40C(v1);
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C3B690()
{
  sub_1A5C3B40C(*v0);
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C3B6E4()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  sub_1A5C3B40C(v1);
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C3B744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5C3CDE8();
  *a1 = result;
  return result;
}

uint64_t sub_1A5C3B774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5C3B40C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1A5C3B7A0(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  (*(*v2 + 128))();
  swift_beginAccess();
  v2[2] = a1;

  swift_beginAccess();
  sub_1A5B0E4A0(0x6E6F6973736573, 0xE700000000000000, v4);
  swift_endAccess();
  sub_1A5B10168(v4, &qword_1EB1F2E50);
  return v2;
}

void *sub_1A5C3B8C0(uint64_t a1)
{
  v1[2] = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  (*(*v1 + 128))();
  swift_beginAccess();
  v1[2] = a1;

  swift_beginAccess();
  sub_1A5B0E4A0(0x6E6F6973736573, 0xE700000000000000, v4);
  swift_endAccess();
  sub_1A5B10168(v4, &qword_1EB1F2E50);
  return v1;
}

uint64_t sub_1A5C3B9E0(uint64_t a1)
{
  v3 = type metadata accessor for ImageBuffer();
  result = sub_1A5B4460C(0xD000000000000011, 0x80000001A6056880, a1, v3, 1u, 1u);
  if (v1)
  {
    return v3;
  }

  if (*(result + 16))
  {
    sub_1A5B101D8(result + 32, v8);

    swift_dynamicCast();
    v3 = v9;
    v5 = sub_1A5B4AF3C();
    v6 = sub_1A5B4B05C();
    MEMORY[0x1EEE9AC00](v6);
    sub_1A5B451E8(v5, v7);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5C3BB2C(uint64_t a1)
{
  v2 = v1;
  v4 = (*(v1 + 168))();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  v7 = sub_1A5FD3D5C();
  v9 = v8;

  v11 = v4 + 56;
  v10 = *(v4 + 56);
  v28 = v7;
  v29 = v9;
  v12 = 1 << *(v4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v25 = v4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      if (!*(a1 + 16))
      {
        break;
      }

      v19 = (*(v25 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
      v21 = *v19;
      v20 = v19[1];
      v23 = v28;
      v22 = v29;

      result = sub_1A5B0E2A4(v23, v22);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      v14 &= v14 - 1;
      sub_1A5B101D8(*(a1 + 56) + 32 * result, v27);
      (*(v2 + 176))(v26, v21, v20, v27);
      MEMORY[0x1AC554600](58, 0xE100000000000000);
      MEMORY[0x1AC554600](v21, v20);

      MEMORY[0x1AC554600](8250, 0xE200000000000000);
      sub_1A5FD481C();
      MEMORY[0x1AC554600](0, 0xE000000000000000);

      __swift_destroy_boxed_opaque_existential_1(v26);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v28;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1A5C3BD78(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (qword_1EB243AE0 != -1)
  {
    v4 = result;
    v5 = a2;
    v6 = a3;
    swift_once();
    result = v4;
    a2 = v5;
    a3 = v6;
  }

  if (*(qword_1EB289880 + 16))
  {
    result = sub_1A5C3C4C8(result, a2, a3);
    if (v3)
    {
      type metadata accessor for Detector();
      return swift_dynamicCastMetatypeUnconditional();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5C3BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = sub_1A5C3BB2C(a4);
  v13 = v12;
  v14 = (*(v10 + 160))(a1, a2, a3);
  if (!v5)
  {
    (*(v14 + 152))(a4);
    v17 = (*(v10 + 200))(a4);
    v18 = sub_1A5C3BB2C(v17);
    v20 = v19;

    if (v11 == v18 && v13 == v20)
    {
    }

    else
    {
      v22 = sub_1A5FD4B0C();

      if ((v22 & 1) == 0)
      {
        v15 = 0;
        return v15 & 1;
      }
    }

    v15 = 1;
    return v15 & 1;
  }

  return v15 & 1;
}

uint64_t sub_1A5C3BFD8()
{
  sub_1A5B0E4A0(0xD000000000000011, 0x80000001A6056880, v1);
  sub_1A5B10168(v1, &qword_1EB1F2E50);
  sub_1A5B0E4A0(0x656C6C65636E6163, 0xE900000000000072, v1);
  return sub_1A5B10168(v1, &qword_1EB1F2E50);
}

unint64_t sub_1A5C3C078(uint64_t a1)
{
  v7 = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  (*(v1 + 208))(&v7);

  v3 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v3;
  sub_1A5C3CAD8(a1, sub_1A5C3C634, 0, isUniquelyReferenced_nonNull_native, &v6);

  v7 = v6;
  (*(v1 + 192))(&v7);
  return v7;
}

uint64_t sub_1A5C3C140()
{
  v2 = &type metadata for ImageCropAndScaleAction;
  v1[0] = 0;
  return sub_1A5B0DE30(v1, 0xD000000000000017, 0x80000001A6056820);
}

uint64_t sub_1A5C3C198()
{
  sub_1A5B16774();
  swift_allocError();
  *v0 = 0xD000000000000020;
  *(v0 + 8) = 0x80000001A6056980;
  *(v0 + 16) = 0;
  *(v0 + 20) = 20;
  return swift_willThrow();
}

uint64_t sub_1A5C3C208()
{
  sub_1A5B16774();
  swift_allocError();
  *v0 = 0xD00000000000001FLL;
  *(v0 + 8) = 0x80000001A60569B0;
  *(v0 + 16) = 0;
  *(v0 + 20) = 20;
  return swift_willThrow();
}

unint64_t sub_1A5C3C4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5C3CEF4();
  v6 = sub_1A5FD3CAC();
  return sub_1A5C3C550(a1, a2, a3, v6);
}

unint64_t sub_1A5C3C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1A5B72DAC();
    do
    {
      if (sub_1A5FD3D0C())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1A5C3C634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1A5B101D8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1A5C3C680@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A5B101D8(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1A5B101C8(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1A5B10168(v21, &qword_1EB1F2910);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C3C7E0()
{
  v0 = sub_1A5FD33BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5FD33AC();
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  v4 = sub_1A5FD3DCC();
  v5 = __OFADD__(v4, 5);
  result = v4 + 5;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1AC5545A0](result);
    v7 = objc_allocWithZone(MEMORY[0x1E696AE88]);
    v8 = sub_1A5FD3D2C();
    v9 = [v7 initWithString_];

    v10 = 0;
    while (([v9 isAtEnd] & 1) == 0)
    {
      v13 = sub_1A5FD44FC();
      if (v14)
      {
        MEMORY[0x1AC554600](v13);
      }

      v11 = sub_1A5FD44EC();
      if (v12)
      {
        if (v10)
        {
          v15 = v11;
          MEMORY[0x1AC554600](32, 0xE100000000000000);
          v11 = v15;
        }

        MEMORY[0x1AC554600](v11);

        v10 = 1;
      }
    }

    (*(v1 + 8))(v3, v0);

    return v16[0];
  }

  return result;
}

unint64_t sub_1A5C3C9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2930);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_1A5B72D90(v5, v6, *(i - 8));
      result = sub_1A5C3C4C8(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1A5C3CAD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1A5C3C680(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_1A5B101C8(v44, v42);
  v14 = *a5;
  result = sub_1A5B0E2A4(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1A5B0E544(v20, a4 & 1);
    result = sub_1A5B0E2A4(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1A5FD4B8C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1A5B0EB68();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1A5B101C8(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_1A5B101C8(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1A5C3C680(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_1A5B101C8(v44, v42);
        v32 = *a5;
        result = sub_1A5B0E2A4(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1A5B0E544(v36, 1);
          result = sub_1A5B0E2A4(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_1A5B101C8(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_1A5B101C8(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1A5C3C680(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1A5B2E3F4();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A5C3CDE8()
{
  v0 = sub_1A5FD48AC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A5C3CE90()
{
  result = qword_1EB1F2908;
  if (!qword_1EB1F2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2908);
  }

  return result;
}

unint64_t sub_1A5C3CEF4()
{
  result = qword_1EB1F2918;
  if (!qword_1EB1F2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2918);
  }

  return result;
}

uint64_t sub_1A5C3CFB0()
{
  sub_1A5C465A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5C3D004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v38 = a3;
  v37 = a2;
  v36 = a4;
  v35 = sub_1A5FD3A9C();
  v13 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = sub_1A5FD3ACC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;

  v23 = sub_1A5C3A734();
  (*(v20 + 16))(v22, v23, v19);
  v24 = sub_1A5C3A5F8();
  v34 = *v24;
  v25 = *(v24 + 16);
  sub_1A5FD3A8C();
  v26 = sub_1A5FD3AAC();
  v33 = sub_1A5FD43AC();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = v22;
  if ((v25 & 1) == 0)
  {
    v28 = v34;
    if (v34)
    {
LABEL_9:
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = sub_1A5FD3A7C();
      _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v26, v33, v30, v28, "Detector: process", v29, 2u);
      MEMORY[0x1AC558440](v29, -1, -1);
      v22 = v32;
LABEL_10:

      v31 = v35;
      (*(v13 + 16))(v15, v18, v35);
      sub_1A5FD3B0C();
      swift_allocObject();
      sub_1A5FD3AFC();
      (*(v13 + 8))(v18, v31);
      (*(v20 + 8))(v22, v19);
      (*(v38 + 24))(&v40, v37, a5, a6, a7, a8);

      sub_1A5C3D370();
    }

    __break(1u);
  }

  if (v34 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v34 & 0xFFFFF800) != 0xD800)
  {
    if (v34 >> 16 <= 0x10)
    {
      v28 = &v39;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1A5C3D370()
{
  v0 = sub_1A5FD3ADC();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A5FD3A9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5FD3ACC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5C3A734();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1A5C3A5F8();
  v27 = *v11;
  v12 = *(v11 + 16);
  v13 = sub_1A5FD3AAC();
  sub_1A5FD3AEC();
  v23 = sub_1A5FD439C();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  v22 = v3;
  if ((v12 & 1) == 0)
  {
    if (v27)
    {
      v15 = v26;
LABEL_9:

      sub_1A5FD3B1C();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v15, v25) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v15, v16);
        v18 = "Detector: process";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1A5FD3A7C();
      _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v13, v23, v20, v27, v18, v19, 2u);
      MEMORY[0x1AC558440](v19, -1, -1);
      v3 = v22;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v27 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    v15 = v26;
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1A5C3D6E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = (*(a3 + 32))();
  if (!v7)
  {
    v16 = v15;
    (*(a3 + 40))(v15, a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_1A5C3D7D8(uint64_t a1)
{
  sub_1A5FD46AC();

  v3 = sub_1A5FD4D0C();
  MEMORY[0x1AC554600](v3);

  sub_1A5BF63A0(2, 0xD00000000000002FLL, 0x80000001A6056AE0);

  result = sub_1A5B44B54(a1);
  if (!v1)
  {
    sub_1A5B54E3C();
    v5 = sub_1A5FD4ACC();
    v7 = v6;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D28794(v5, v7, v8);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A5C3D968(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  sub_1A5BF63A0(2, 0xD00000000000004CLL, 0x80000001A6056B10);
  v6 = v2;
  v8 = v4;
  v7 = v3;
  return sub_1A5B9E4C0(&v6);
}

uint64_t sub_1A5C3DA14(uint64_t a1)
{
  sub_1A5FD46AC();

  v3 = sub_1A5FD4D0C();
  MEMORY[0x1AC554600](v3);

  sub_1A5BF63A0(2, 0xD00000000000002FLL, 0x80000001A6056AE0);

  result = sub_1A5B44B54(a1);
  if (!v1)
  {
    sub_1A5B54E3C();
    v5 = sub_1A5FD4ACC();
    v7 = v6;
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D28794(v5, v7, v8);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A5C3DC30(char a1)
{
  result = 0x6567615F72747461;
  switch(a1)
  {
    case 1:
      result = 0x6579655F72747461;
      break;
    case 2:
      result = 0x696D735F72747461;
      break;
    case 3:
      result = 0x616C675F72747461;
      break;
    case 4:
    case 11:
      result = 0x6961685F72747461;
      break;
    case 5:
    case 6:
      result = 0x6B616D5F72747461;
      break;
    case 7:
    case 12:
      result = 0x6361665F72747461;
      break;
    case 8:
      result = 0x736F705F72747461;
      break;
    case 9:
      result = 0x6E65675F72747461;
      break;
    case 10:
      result = 0x7078655F72747461;
      break;
    case 13:
      result = 0x6874655F72747461;
      break;
    case 14:
      result = 0x696B735F72747461;
      break;
    case 15:
      result = 0x6165685F72747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5C3DE38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A5C3DC30(*a1);
  v5 = v4;
  if (v3 == sub_1A5C3DC30(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();
  }

  return v8 & 1;
}

uint64_t sub_1A5C3DEC0()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  sub_1A5C3DC30(v1);
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C3DF24()
{
  sub_1A5C3DC30(*v0);
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C3DF78()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  sub_1A5C3DC30(v1);
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C3DFD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5C3FB38();
  *a1 = result;
  return result;
}

uint64_t sub_1A5C3E008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5C3DC30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A5C3E058()
{
  v0 = sub_1A5C3BE34();
  v1 = MEMORY[0x1E69E7CD0];

  return sub_1A5C3E08C(v1, v0);
}

uint64_t sub_1A5C3E08C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1A5C3EA7C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5C3E190(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;

  v5 = sub_1A5C4C904();
  if (v2)
  {
  }

  v8 = v6;
  v9 = v5;
  v10 = sub_1A5B8ECC8();
  swift_beginAccess();
  v11 = *(**v10 + 120);

  v11(&v12, v9, v8, sub_1A5C3FB84, v4);

  if (v13)
  {

    sub_1A5B063D4(&v12, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2950);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2CE0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A5C3E354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  v1 = inited + 32;
  *(inited + 40) = MEMORY[0x1E69E7CC0];
  v2 = sub_1A5C3FC8C(inited);
  swift_setDeallocating();
  sub_1A5B10168(v1, &qword_1EB1F2CF0);
  return v2;
}

uint64_t sub_1A5C3E3F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for FaceObservation(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A5B44C18(a2, v9);
  if (!v3)
  {
    result = (*(v11 + 48))(v9, 1, v10);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1A5B2A89C(v9, v13);
      v15 = sub_1A5C3B40C(0xBu);
      v26 = 0;
      sub_1A5B443C8(v15, v16, a2, &v26, MEMORY[0x1E69E6370], &v27);

      if (v27 == 1)
      {
        v22 = 289;
        sub_1A5C41034(v13, a1, &v22);
      }

      v17 = sub_1A5C3B40C(0xAu);
      v24 = 0;
      sub_1A5B443C8(v17, v18, a2, &v24, MEMORY[0x1E69E6370], &v25);

      if (v25 == 1)
      {
        v23 = 314;
        sub_1A5C41430(v13, a1, &v23);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2D00);
      v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1A5FF36F0;
      sub_1A5B0F60C(v13, v20 + v19);
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2980);
      *a3 = v20;
      return sub_1A5B0F670(v13);
    }
  }

  return result;
}

uint64_t sub_1A5C3E6E8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v7 = 2 * a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      if (v7 <= 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    if (__OFSUB__(v9, v10))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v9 - v10 < v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!v8)
    {
      if (BYTE6(a2) >= v7)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_1A5FD46AC();
      sub_1A5FD481C();
      MEMORY[0x1AC554600](0x736920657A697320, 0xE900000000000020);
      v11 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v11);

      MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A6056CC0);
      v12 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v12);

      sub_1A5B16774();
      swift_allocError();
      sub_1A5D2869C(0, 0xE000000000000000, v13);

      return swift_willThrow();
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_32:
      __break(1u);
      return result;
    }

    if (HIDWORD(result) - result < v7)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (a3 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16) + 0x4000000000000000 >= 0)
    {
      v15 = (MEMORY[0x1E69E7CC0] + 32);
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v14 = sub_1A5FD3F9C();
  *(v14 + 16) = a3;
  v15 = (v14 + 32);
  bzero((v14 + 32), v7);
LABEL_20:
  sub_1A5C43914();
  sub_1A5FD33CC();
  v16 = *(v14 + 16);
  if (v16)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A5C3FA14(0, v16, 0);
    v17 = v26;
    v18 = *(v26 + 16);
    do
    {
      _H8 = *v15;
      v20 = *(v26 + 24);
      if (v18 >= v20 >> 1)
      {
        sub_1A5C3FA14((v20 > 1), v18 + 1, 1);
      }

      __asm { FCVT            S0, H8 }

      *(v26 + 16) = v18 + 1;
      *(v26 + 4 * v18 + 32) = _S0;
      ++v15;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  *(a5 + 16) = v17;
}

uint64_t sub_1A5C3EA4C()
{
  sub_1A5C4D048();

  return swift_deallocClassInstance();
}

uint64_t sub_1A5C3EA7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  v8 = sub_1A5FD4C6C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A5FD4B0C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A5C3EE2C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A5C3EBCC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2CC0);
  result = sub_1A5FD468C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A5C3EE2C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A5C3EBCC();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A5C3EFAC();
      goto LABEL_16;
    }

    sub_1A5C3F108();
  }

  v10 = *v4;
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  result = sub_1A5FD4C6C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A5FD4B0C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A5FD4B7C();
  __break(1u);
  return result;
}

void *sub_1A5C3EFAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2CC0);
  v2 = *v0;
  v3 = sub_1A5FD467C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A5C3F108()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2CC0);
  result = sub_1A5FD468C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1A5FD4C1C();

      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1A5C3F340(unsigned __int8 a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  a2();
  v5 = sub_1A5FD3CAC();
  return sub_1A5C3F51C(a1, v5, a4);
}

unint64_t sub_1A5C3F3C0(char a1, void (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = a1 & 1;
  a2();
  v5 = sub_1A5FD3CAC();
  return sub_1A5C3F444(v7, v5, a4);
}

unint64_t sub_1A5C3F444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3();
    do
    {
      if (sub_1A5FD3D0C())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A5C3F51C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3();
    do
    {
      if (sub_1A5FD3D0C())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A5C3F5F0(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v29, 0, 14);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6056CE0);
      MEMORY[0x1AC554600](0xD000000000000037, 0x80000001A6056D00);
      v30 = v29;
      v31 = v29;
      sub_1A5FD481C();
      sub_1A5BF63A0(2, v32, v33);

      swift_beginAccess();
      v10 = *a4;
      v11 = v29;
      v22 = v29;
      goto LABEL_24;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_1A5FD33EC();
    v14 = a1;
    if (a1)
    {
      a1 = sub_1A5FD341C();
      if (__OFSUB__(v12, a1))
      {
        goto LABEL_26;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v17 = a1;
    v16 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v14 = sub_1A5FD33EC();
      if (!v14)
      {
LABEL_15:
        v19 = sub_1A5FD340C();
        if (v19 >= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v19;
        }

        v21 = (v20 + v14);
        if (v14)
        {
          v9 = v21;
        }

        else
        {
          v9 = 0;
        }

        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1A5FD46AC();
        MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6056CE0);
        MEMORY[0x1AC554600](0xD000000000000037, 0x80000001A6056D00);
        v30 = v14;
        v31 = v9;
        sub_1A5FD481C();
        sub_1A5BF63A0(2, 0, 0xE000000000000000);

        swift_beginAccess();
        v10 = *a4;
        v11 = v14;
        goto LABEL_22;
      }

      v18 = sub_1A5FD341C();
      if (!__OFSUB__(v17, v18))
      {
        v14 += v17 - v18;
        goto LABEL_15;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v29[0] = a1;
  LOWORD(v29[1]) = a2;
  BYTE2(v29[1]) = BYTE2(a2);
  BYTE3(v29[1]) = BYTE3(a2);
  BYTE4(v29[1]) = BYTE4(a2);
  BYTE5(v29[1]) = BYTE5(a2);
  v9 = v29 + BYTE6(a2);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6056CE0);
  MEMORY[0x1AC554600](0xD000000000000037, 0x80000001A6056D00);
  v30 = v29;
  v31 = v9;
  sub_1A5FD481C();
  sub_1A5BF63A0(2, v32, v33);

  swift_beginAccess();
  v10 = *a4;
  v11 = v29;
LABEL_22:
  v22 = v9;
LABEL_24:
  v23 = sub_1A5B3AAF8(v11, v22, v10, a5);
  v25 = v24;
  swift_beginAccess();
  v26 = *a3;
  v27 = a3[1];
  *a3 = v23;
  a3[1] = v25;
  return sub_1A5B066DC(v26, v27);
}

char *sub_1A5C3FA14(char *a1, int64_t a2, char a3)
{
  result = sub_1A5C3FA34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5C3FA34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF1B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A5C3FB38()
{
  v0 = sub_1A5FD48AC();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A5C3FB84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5C4D894(*(v1 + 24));
  if (!v2)
  {
    if (result)
    {
      sub_1A5D32118(result, 1852399981, 0xE400000000000000, 0x706F726365636166, 0xE800000000000000, &unk_1F1961138, 0, 0, v8, 0, 0);
      v5 = v9;
      v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
      a1[3] = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);

      return __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1A5C3FC8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2D30);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1A5C3F3C0(v5, sub_1A5B102A4, &type metadata for ComputeStage, sub_1A5B10340);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1A5C3FDB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2CA8);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_1A5C3F340(v5, sub_1A5C43F2C, &type metadata for FaceObservation.Attributes.Age, sub_1A5C45330);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1A5C3FEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2C98);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_1A5C3F3C0(v5, sub_1A5C44028, &type metadata for FaceObservation.Attributes.Eyes, sub_1A5C452DC);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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