unint64_t sub_1A5BCE6AC()
{
  result = qword_1EB221090;
  if (!qword_1EB221090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221090);
  }

  return result;
}

unint64_t sub_1A5BCE704()
{
  result = qword_1EB221098[0];
  if (!qword_1EB221098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB221098);
  }

  return result;
}

unint64_t sub_1A5BCE75C()
{
  result = qword_1EB221120;
  if (!qword_1EB221120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221120);
  }

  return result;
}

unint64_t sub_1A5BCE7B4()
{
  result = qword_1EB221128[0];
  if (!qword_1EB221128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB221128);
  }

  return result;
}

unint64_t sub_1A5BCE80C()
{
  result = qword_1EB2211B0;
  if (!qword_1EB2211B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2211B0);
  }

  return result;
}

unint64_t sub_1A5BCE864()
{
  result = qword_1EB2211B8[0];
  if (!qword_1EB2211B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2211B8);
  }

  return result;
}

uint64_t sub_1A5BCE8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656A624F74786574 && a2 == 0xEB00000000737463;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A6054BC0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A6055B60 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572694474786574 && a2 == 0xED00006E6F697463 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7469547369 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C676E6174636572 && a2 == 0xE900000000000065 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1A5BCEB70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A5BCEBB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A5BCEC1C(uint64_t a1)
{
  v2 = sub_1A5BCEEE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BCEC58(uint64_t a1)
{
  v2 = sub_1A5BCEEE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BCEC94(uint64_t a1)
{
  v2 = sub_1A5BCEF38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BCECD0(uint64_t a1)
{
  v2 = sub_1A5BCEF38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateAnimalSegmentationRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1148);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1150);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BCEEE4();
  sub_1A5FD4CDC();
  sub_1A5BCEF38();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BCEEE4()
{
  result = qword_1EB221250;
  if (!qword_1EB221250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221250);
  }

  return result;
}

unint64_t sub_1A5BCEF38()
{
  result = qword_1EB221258;
  if (!qword_1EB221258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221258);
  }

  return result;
}

uint64_t GenerateAnimalSegmentationRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateAnimalSegmentationRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1158);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1160);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BCEEE4();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BCEF38();
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
      *v13 = &type metadata for GenerateAnimalSegmentationRequest.Revision;
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

uint64_t sub_1A5BCF304(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1148);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1150);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BCEEE4();
  sub_1A5FD4CDC();
  sub_1A5BCEF38();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateAnimalSegmentationRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1278226488;
  *(a1 + 4) = 256;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1A5BCF540(uint64_t a1)
{
  v2 = sub_1A5BD0D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BCF57C(uint64_t a1)
{
  v2 = sub_1A5BD0D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BCF5B8(uint64_t a1)
{
  v2 = sub_1A5BD0CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BCF5F4(uint64_t a1)
{
  v2 = sub_1A5BD0CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BCF630(uint64_t a1)
{
  v2 = sub_1A5BD0C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BCF66C(uint64_t a1)
{
  v2 = sub_1A5BD0C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateAnimalSegmentationRequest.QualityLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1168);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1170);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1178);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BD0C60();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BD0CB4();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BD0D08();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t GenerateAnimalSegmentationRequest.QualityLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GenerateAnimalSegmentationRequest.QualityLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1180);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1188);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1190);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BD0C60();
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
    *v21 = &type metadata for GenerateAnimalSegmentationRequest.QualityLevel;
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
    sub_1A5BD0CB4();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BD0D08();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

__n128 GenerateAnimalSegmentationRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateAnimalSegmentationRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5BCFF48()
{
  sub_1A5BD0D5C();
  result = sub_1A5D4EC2C();
  qword_1EB221248 = result;
  return result;
}

uint64_t static GenerateAnimalSegmentationRequest.allSupportedRevisions.getter()
{
  if (qword_1EB221240 != -1)
  {
    swift_once();
  }
}

uint64_t GenerateAnimalSegmentationRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BD0D5C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateAnimalSegmentationRequest, v3);
}

uint64_t GenerateAnimalSegmentationRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 5);
  v4 = *(v1 + 40);
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](v3);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t GenerateAnimalSegmentationRequest.hashValue.getter()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BD01A4(uint64_t a1)
{
  v2 = sub_1A5BD0E04();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BD01E0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BD0D5C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BD0240(uint64_t a1)
{
  v2 = sub_1A5B5E3B8();

  return VisionRequest.description.getter(a1, v2);
}

_OWORD *sub_1A5BD0284@<X0>(void *a1@<X8>)
{
  if (*(v1 + 5))
  {
    result = 0;
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v6 = sub_1A5BD0DB0();
    v4 = &type metadata for GenerateAnimalSegmentationRequest;
    sub_1A5CC066C(&type metadata for GenerateAnimalSegmentationRequest, v6, v8);
    BYTE5(v8[0]) = 1;
    v5 = sub_1A5BD0D5C();
    result = swift_allocObject();
    v7 = v8[1];
    result[1] = v8[0];
    result[2] = v7;
    result[3] = v8[2];
  }

  *a1 = result;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

uint64_t sub_1A5BD0358(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E3B8();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5BD03A8(uint64_t a1)
{
  *v12 = *v1;
  v12[4] = *(v1 + 4);
  v3 = *(v1 + 5);
  *&v12[6] = *(v1 + 6);
  *v13 = *(v1 + 22);
  *&v13[10] = *(v1 + 32);
  v4 = sub_1A5BD0E04();
  v5 = sub_1A5BDA35C(a1, &type metadata for GenerateAnimalSegmentationRequest, v4);
  v6 = sub_1A5FD3D5C();
  v8 = v7;
  *&v13[2] = MEMORY[0x1E69E6530];
  *v12 = v3 & 1;
  sub_1A5B101C8(v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v11, v6, v8, isUniquelyReferenced_nonNull_native);

  return v5;
}

id sub_1A5BD0498(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v6 = type metadata accessor for PixelBufferObservation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v33 - v11;
  v35 = v3;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  if (*(v2 + 5))
  {
    if (*(a1 + 16) < 5uLL)
    {
      goto LABEL_33;
    }

    sub_1A5B101D8(a1 + 160, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F11B0);
    swift_dynamicCast();
    v4 = v43;
    if (v43 >> 62)
    {
      goto LABEL_34;
    }

    v16 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_35;
    }

    goto LABEL_5;
  }

  v4 = sub_1A5BD08F0(a1);
  if (!(v4 >> 62))
  {
    goto LABEL_17;
  }

LABEL_36:
  while (1)
  {
    v21 = sub_1A5FD484C();
    if (!v21)
    {
      break;
    }

    while (1)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1A5BD0A68(0, v21 & ~(v21 >> 63), 0);
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = v43;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v23 = 0;
          v24 = v34;
          do
          {
            v25 = MEMORY[0x1AC554EE0](v23, v4);
            v38 = 424;
            v39 = v12;
            v40 = v13;
            v41 = v14;
            v42 = v15;
            sub_1A5BF36E0(v25, &v38, v37, v24);
            v43 = v22;
            v27 = *(v22 + 16);
            v26 = *(v22 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1A5BD0A68(v26 > 1, v27 + 1, 1);
              v22 = v43;
            }

            ++v23;
            *(v22 + 16) = v27 + 1;
            sub_1A5BD0E58(v24, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27);
          }

          while (v21 != v23);
        }

        else
        {
          v28 = 32;
          do
          {
            v29 = *(v4 + v28);
            v38 = 424;
            v39 = v12;
            v40 = v13;
            v41 = v14;
            v42 = v15;
            v30 = v29;
            sub_1A5BF36E0(v30, &v38, v37, v9);
            v43 = v22;
            v32 = *(v22 + 16);
            v31 = *(v22 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1A5BD0A68(v31 > 1, v32 + 1, 1);
              v22 = v43;
            }

            *(v22 + 16) = v32 + 1;
            sub_1A5BD0E58(v9, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32);
            v28 += 8;
            --v21;
          }

          while (v21);
        }

        return v22;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v16 = sub_1A5FD484C();
      if (v16)
      {
        break;
      }

LABEL_35:

      v4 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        goto LABEL_36;
      }

LABEL_17:
      v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_37;
      }
    }

LABEL_5:
    v39 = MEMORY[0x1E69E7CC0];
    result = sub_1A5FD47AC();
    if (v16 < 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v33 = v9;
    v9 = 0;
    v36 = v4 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v18 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1AC554EE0](v9, v4);
      }

      else
      {
        if (v9 >= *(v36 + 16))
        {
          goto LABEL_31;
        }

        v19 = *(v4 + 8 * v9 + 32);
      }

      v20 = v19;
      result = [v19 instanceSegmentationMask];
      if (!result)
      {
        goto LABEL_40;
      }

      sub_1A5FD477C();
      sub_1A5FD47BC();
      sub_1A5FD47CC();
      sub_1A5FD478C();
      ++v9;
    }

    while (v18 != v16);

    v4 = v39;
    v9 = v33;
    if (!(v39 >> 62))
    {
      goto LABEL_17;
    }
  }

LABEL_37:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A5BD08F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1A5FD47AC();
    v4 = a1 + 32;
    do
    {
      sub_1A5B101D8(v4, &v5);
      sub_1A5BD172C();
      swift_dynamicCast();
      sub_1A5FD477C();
      sub_1A5FD47BC();
      sub_1A5FD47CC();
      sub_1A5FD478C();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void sub_1A5BD09FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5BD0DB0();

  sub_1A5CBFC30(a1, a2, a3, v6);
}

size_t sub_1A5BD0A68(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5BD0A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A5BD0A88(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1200);
  v10 = *(type metadata accessor for PixelBufferObservation() - 8);
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
  v15 = *(type metadata accessor for PixelBufferObservation() - 8);
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

unint64_t sub_1A5BD0C60()
{
  result = qword_1EB221260;
  if (!qword_1EB221260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221260);
  }

  return result;
}

unint64_t sub_1A5BD0CB4()
{
  result = qword_1EB221268;
  if (!qword_1EB221268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221268);
  }

  return result;
}

unint64_t sub_1A5BD0D08()
{
  result = qword_1EB221270[0];
  if (!qword_1EB221270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB221270);
  }

  return result;
}

unint64_t sub_1A5BD0D5C()
{
  result = qword_1EB1F1198;
  if (!qword_1EB1F1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1198);
  }

  return result;
}

unint64_t sub_1A5BD0DB0()
{
  result = qword_1EB1F11A0;
  if (!qword_1EB1F11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11A0);
  }

  return result;
}

unint64_t sub_1A5BD0E04()
{
  result = qword_1EB1F11A8;
  if (!qword_1EB1F11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11A8);
  }

  return result;
}

uint64_t sub_1A5BD0E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PixelBufferObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5BD0EBC()
{
  result = qword_1EB1F11B8;
  if (!qword_1EB1F11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11B8);
  }

  return result;
}

unint64_t sub_1A5BD0F18()
{
  result = qword_1EB1F11C0;
  if (!qword_1EB1F11C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F11C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11C0);
  }

  return result;
}

unint64_t sub_1A5BD0F80()
{
  result = qword_1EB1F11D0;
  if (!qword_1EB1F11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11D0);
  }

  return result;
}

unint64_t sub_1A5BD0FD4(uint64_t a1)
{
  result = sub_1A5B5E3B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BD1028()
{
  result = qword_1EB1F11D8;
  if (!qword_1EB1F11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11D8);
  }

  return result;
}

unint64_t sub_1A5BD1080()
{
  result = qword_1EB1F11E0;
  if (!qword_1EB1F11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11E0);
  }

  return result;
}

unint64_t sub_1A5BD10D8()
{
  result = qword_1EB1F11E8;
  if (!qword_1EB1F11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11E8);
  }

  return result;
}

uint64_t sub_1A5BD1158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BD1194()
{
  result = qword_1EB1F11F0;
  if (!qword_1EB1F11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11F0);
  }

  return result;
}

unint64_t sub_1A5BD11E8(uint64_t a1)
{
  result = sub_1A5BD0D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BD1210(uint64_t a1)
{
  result = sub_1A5BD1238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BD1238()
{
  result = qword_1EB1F11F8;
  if (!qword_1EB1F11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F11F8);
  }

  return result;
}

unint64_t sub_1A5BD1310()
{
  result = qword_1EB221E00[0];
  if (!qword_1EB221E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB221E00);
  }

  return result;
}

unint64_t sub_1A5BD1368()
{
  result = qword_1EB222210[0];
  if (!qword_1EB222210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB222210);
  }

  return result;
}

unint64_t sub_1A5BD13C0()
{
  result = qword_1EB222320;
  if (!qword_1EB222320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB222320);
  }

  return result;
}

unint64_t sub_1A5BD1418()
{
  result = qword_1EB222328[0];
  if (!qword_1EB222328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB222328);
  }

  return result;
}

unint64_t sub_1A5BD1470()
{
  result = qword_1EB2223B0;
  if (!qword_1EB2223B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2223B0);
  }

  return result;
}

unint64_t sub_1A5BD14C8()
{
  result = qword_1EB2223B8[0];
  if (!qword_1EB2223B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2223B8);
  }

  return result;
}

unint64_t sub_1A5BD1520()
{
  result = qword_1EB222440;
  if (!qword_1EB222440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB222440);
  }

  return result;
}

unint64_t sub_1A5BD1578()
{
  result = qword_1EB222448[0];
  if (!qword_1EB222448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB222448);
  }

  return result;
}

unint64_t sub_1A5BD15D0()
{
  result = qword_1EB2224D0;
  if (!qword_1EB2224D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2224D0);
  }

  return result;
}

unint64_t sub_1A5BD1628()
{
  result = qword_1EB2224D8[0];
  if (!qword_1EB2224D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2224D8);
  }

  return result;
}

unint64_t sub_1A5BD1680()
{
  result = qword_1EB222560;
  if (!qword_1EB222560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB222560);
  }

  return result;
}

unint64_t sub_1A5BD16D8()
{
  result = qword_1EB222568[0];
  if (!qword_1EB222568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB222568);
  }

  return result;
}

unint64_t sub_1A5BD172C()
{
  result = qword_1EB1EEF48;
  if (!qword_1EB1EEF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EEF48);
  }

  return result;
}

uint64_t sub_1A5BD1794()
{
  v1 = 0x4165707954317367;
  v2 = 0x4365707954317367;
  if (*v0 != 2)
  {
    v2 = 0x64656B6E696CLL;
  }

  if (*v0)
  {
    v1 = 0x4265707954317367;
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

uint64_t sub_1A5BD180C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BD4FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BD1834(uint64_t a1)
{
  v2 = sub_1A5BD1EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD1870(uint64_t a1)
{
  v2 = sub_1A5BD1EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BD18AC(uint64_t a1)
{
  v2 = sub_1A5BD2014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD18E8(uint64_t a1)
{
  v2 = sub_1A5BD2014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BD1924(uint64_t a1)
{
  v2 = sub_1A5BD1FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD1960(uint64_t a1)
{
  v2 = sub_1A5BD1FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BD199C(uint64_t a1)
{
  v2 = sub_1A5BD1F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD19D8(uint64_t a1)
{
  v2 = sub_1A5BD1F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BD1A14(uint64_t a1)
{
  v2 = sub_1A5BD1F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD1A50(uint64_t a1)
{
  v2 = sub_1A5BD1F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BarcodeObservation.CompositeType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1208);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1210);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1218);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1220);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1228);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BD1EC4();
  sub_1A5FD4CDC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1A5BD1F6C();
      v18 = v27;
      sub_1A5FD49EC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1A5BD1F18();
      v18 = v30;
      sub_1A5FD49EC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1A5BD1FC0();
    v18 = v24;
    sub_1A5FD49EC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1A5BD2014();
  sub_1A5FD49EC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1A5BD1EC4()
{
  result = qword_1EB2225F0;
  if (!qword_1EB2225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2225F0);
  }

  return result;
}

unint64_t sub_1A5BD1F18()
{
  result = qword_1EB2225F8;
  if (!qword_1EB2225F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2225F8);
  }

  return result;
}

unint64_t sub_1A5BD1F6C()
{
  result = qword_1EB222600;
  if (!qword_1EB222600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB222600);
  }

  return result;
}

unint64_t sub_1A5BD1FC0()
{
  result = qword_1EB222608;
  if (!qword_1EB222608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB222608);
  }

  return result;
}

unint64_t sub_1A5BD2014()
{
  result = qword_1EB222610;
  if (!qword_1EB222610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB222610);
  }

  return result;
}

uint64_t BarcodeObservation.CompositeType.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t BarcodeObservation.CompositeType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1230);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1238);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1240);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1248);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1250);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5BD1EC4();
  v17 = v48;
  sub_1A5FD4CCC();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_1A5FD49BC();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_1A5FD471C();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v27 = &type metadata for BarcodeObservation.CompositeType;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_1A5BD1FC0();
          v32 = v37;
          sub_1A5FD48CC();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_1A5BD2014();
          v28 = v37;
          sub_1A5FD48CC();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_1A5BD1F6C();
        v31 = v37;
        sub_1A5FD48CC();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_1A5BD1F18();
        v33 = v37;
        sub_1A5FD48CC();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t BarcodeObservation.payloadString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BarcodeObservation.payloadData.getter()
{
  v1 = *(v0 + 16);
  sub_1A5BD27F4(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1A5BD27F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A5B06670(a1, a2);
  }

  return a1;
}

uint64_t BarcodeObservation.supplementalPayloadString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BarcodeObservation.supplementalPayloadData.getter()
{
  v1 = *(v0 + 48);
  sub_1A5BD27F4(v1, *(v0 + 56));
  return v1;
}

__n128 BarcodeObservation.topLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

__n128 BarcodeObservation.topRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 88);
  *a1 = result;
  return result;
}

__n128 BarcodeObservation.bottomRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

__n128 BarcodeObservation.bottomLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = result;
  return result;
}

uint64_t BarcodeObservation.boundingRegion.getter@<X0>(char *a1@<X8>)
{
  v7 = *(v1 + 72);
  v2 = *(v1 + 88);
  v5 = *(v1 + 104);
  v6 = v2;
  v4 = *(v1 + 120);
  return sub_1A5C8BE38(&v7, &v6, &v5, &v4, a1);
}

uint64_t BarcodeObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BarcodeObservation() + 64);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BarcodeObservation()
{
  result = qword_1EB222BA0;
  if (!qword_1EB222BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 BarcodeObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BarcodeObservation() + 72);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t BarcodeObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for BarcodeObservation();
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t BarcodeObservation.description.getter()
{
  sub_1A5FD46AC();

  v1 = type metadata accessor for BarcodeObservation();
  v2 = sub_1A5C64D80(v1, &protocol witness table for BarcodeObservation);
  MEMORY[0x1AC554600](v2);

  v3 = v0[1];
  if (v3)
  {
    v4 = *v0;
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](v4, v3);
    MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A6055C40);
  }

  v5 = v0[5];
  if (v5)
  {
    v6 = v0[4];
    sub_1A5FD46AC();

    MEMORY[0x1AC554600](v6, v5);
    MEMORY[0x1AC554600](0xD00000000000001DLL, 0x80000001A6055C20);
  }

  v16[8] = 0;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x6C6F626D7973202CLL, 0xED0000203A79676FLL);
  *v16 = *(v0 + 66);
  sub_1A5FD481C();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A6055BA0);
  if (*(v0 + 67))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 67))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v7, v8);

  MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A6055BC0);
  if (*(v0 + 65))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 65))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v9, v10);

  MEMORY[0x1AC554600](*&v16[1], 0xE000000000000000);

  if (*(v0 + 64) != 4)
  {
    sub_1A5FD46AC();
    result = MEMORY[0x1AC554600](0xD00000000000001DLL, 0x80000001A6055C00);
    if (*(v0 + 64) == 4)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1A5FD481C();
    MEMORY[0x1AC554600](0, 0xE000000000000000);
  }

  if (v0[3] >> 60 != 15)
  {
    sub_1A5FD46AC();

    if (v0[3] >> 60 != 15)
    {
      v12 = sub_1A5FD358C();
      MEMORY[0x1AC554600](v12);

      MEMORY[0x1AC554600](0x616F6C796170202CLL, 0xEF203A6174614464);

      goto LABEL_23;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_23:
  if (v0[7] >> 60 == 15)
  {
LABEL_26:
    v14 = sub_1A5BD5964(&qword_1EB1F1258, type metadata accessor for BarcodeObservation);
    v15 = sub_1A5C29408(v1, &off_1F19596A8, v14);
    MEMORY[0x1AC554600](v15);

    MEMORY[0x1AC554600](41, 0xE100000000000000);

    MEMORY[0x1AC554600](8236, 0xE200000000000000);

    return 0xD000000000000013;
  }

  sub_1A5FD46AC();

  if (v0[7] >> 60 != 15)
  {
    v13 = sub_1A5FD358C();
    MEMORY[0x1AC554600](v13);

    MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A6055BE0);

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1A5BD2FB8(void *a1@<X0>, _BYTE *a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, unint64_t a6@<D0>, unint64_t a7@<D1>, unint64_t a8@<D2>, unint64_t a9@<D3>, unint64_t a10@<D4>, unint64_t a11@<D5>, unint64_t a12@<D6>, unint64_t a13@<D7>)
{
  v54 = *MEMORY[0x1E69E9840];
  v24 = *a3;
  *(a5 + 66) = *a2;
  v53 = 0;
  v25 = MRCDescriptorDecodePayloadAndSupplementalPayload();
  if (v25)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v52 = 0uLL;
      sub_1A5FD3D4C();
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  if (v53)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v52 = 0uLL;
      sub_1A5FD3D4C();
    }
  }

  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  v26 = MRCDescriptorCopyAttribute();
  v27 = 0xF000000000000000;
  if (v26)
  {
    valuePtr = v26;
    v28 = swift_dynamicCast();
    v29 = v52;
    if (v28)
    {
      v27 = *(&v52 + 1);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  *(a5 + 16) = v29;
  *(a5 + 24) = v27;
  v30 = MRCDescriptorCopyAttribute();
  if (v30 && (*&v52 = v30, swift_dynamicCast()))
  {
    v31 = valuePtr;
  }

  else
  {
    v31 = 0;
  }

  *(a5 + 65) = v31;
  v32 = MRCDescriptorCopyAttribute();
  if (v32 && (*&v52 = v32, swift_dynamicCast()))
  {
    v33 = valuePtr;
  }

  else
  {
    v33 = 0;
  }

  *(a5 + 67) = v33;
  if (MRCDescriptorCopyAttribute())
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = [v34 integerValue];
      swift_unknownObjectRelease();
      if ((v35 - 2) >= 3)
      {
        if (v35 == 5)
        {
          LOBYTE(v36) = 2;
        }

        else
        {
          LOBYTE(v36) = 4;
        }
      }

      else
      {
        v36 = 0x10003u >> (8 * (v35 - 2));
      }
    }

    else
    {
      swift_unknownObjectRelease();
      LOBYTE(v36) = 4;
    }
  }

  else
  {
    LOBYTE(v36) = 4;
  }

  *(a5 + 64) = v36;
  v37 = MRCDescriptorCopyAttribute();
  v38 = 0xF000000000000000;
  if (v37)
  {
    valuePtr = v37;
    v39 = swift_dynamicCast();
    v40 = v52;
    if (v39)
    {
      v38 = *(&v52 + 1);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  *(a5 + 48) = v40;
  *(a5 + 56) = v38;
  v41 = MRCDescriptorCopyAttribute();
  if (v41)
  {
    v42 = v41;
    v43 = [v41 respondsToSelector_];
    if (v43)
    {
      v44 = [v42 integerValue];
    }

    else
    {
      v44 = 0;
    }

    v45 = v43 ^ 1;
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0;
    v45 = 1;
  }

  v46 = type metadata accessor for BarcodeObservation();
  v47 = a5 + v46[20];
  *v47 = v44;
  *(v47 + 8) = v45 & 1;
  sub_1A5FD366C();
  v48 = MRCDescriptorCopyAttribute();
  if (v48)
  {
    type metadata accessor for CFNumber(0);
    v48 = swift_dynamicCastUnknownClassUnconditional();
  }

  LODWORD(valuePtr) = 0;
  CFNumberGetValue(v48, kCFNumberFloatType, &valuePtr);
  *(a5 + v46[17]) = valuePtr;
  v49 = a5 + v46[18];
  *(v49 + 48) = *(a4 + 48);
  v50 = *(a4 + 32);
  *(v49 + 16) = *(a4 + 16);
  *(v49 + 32) = v50;
  *v49 = *a4;
  *(a5 + v46[19]) = v24;
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(a7, a6));
  *(a5 + 72) = v52;
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(a9, a8));
  *(a5 + 88) = v52;
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(a13, a12));
  *(a5 + 120) = v52;
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(a11, a10));

  *(a5 + 104) = v52;
}

uint64_t BarcodeObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for BarcodeObservation();
  sub_1A5BD5964(&qword_1EB1F1260, type metadata accessor for BarcodeObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BD3528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_1A5FD367C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1A5BD35A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 72);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 sub_1A5BD35DC@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

__n128 sub_1A5BD35E8@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 88);
  *a1 = result;
  return result;
}

__n128 sub_1A5BD35F4@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

__n128 sub_1A5BD3600@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 120);
  *a1 = result;
  return result;
}

uint64_t sub_1A5BD360C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BD5964(&qword_1EB1F1258, type metadata accessor for BarcodeObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

unint64_t sub_1A5BD369C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746176726573626FLL;
    v7 = 0x5364616F6C796170;
    v8 = 0x4464616F6C796170;
    if (a1 != 3)
    {
      v8 = 0xD000000000000019;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C676E6174636572;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x676F6C6F626D7973;
    v2 = 0x49726F6C6F437369;
    if (a1 != 9)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    v4 = 0xD000000000000019;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A5BD3844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BD629C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BD3878(uint64_t a1)
{
  v2 = sub_1A5BD553C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD38B4(uint64_t a1)
{
  v2 = sub_1A5BD553C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BarcodeObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED20);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1268);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BD553C();
  sub_1A5FD4CDC();
  v33 = *v2;
  v34 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1270);
  sub_1A5BD5590();
  v13 = v32;
  sub_1A5FD4A5C();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v25 = v8;
  v26 = v2;
  v15 = *(v2 + 2);
  v16 = *(v2 + 3);
  v32 = v10;
  *&v33 = v15;
  *(&v33 + 1) = v16;
  v34 = 3;
  sub_1A5BD27F4(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1280);
  sub_1A5BD560C(&qword_1EB1F1288, &qword_1EB1F1280, &unk_1A6005038, sub_1A5B0A6B8);
  v17 = v9;
  sub_1A5FD4A5C();
  sub_1A5B33704(v33, *(&v33 + 1));
  v33 = v26[2];
  v34 = 4;
  sub_1A5FD4A5C();
  v18 = v32;
  v19 = *(v26 + 7);
  *&v33 = *(v26 + 6);
  *(&v33 + 1) = v19;
  v34 = 5;
  sub_1A5BD27F4(v33, v19);
  sub_1A5FD4A5C();
  sub_1A5B33704(v33, *(&v33 + 1));
  v20 = v26;
  LOBYTE(v33) = *(v26 + 64);
  v34 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1290);
  sub_1A5BD560C(&qword_1EB1F1298, &qword_1EB1F1290, &unk_1A6005040, sub_1A5BD5688);
  sub_1A5FD4A5C();
  LOBYTE(v33) = 7;
  sub_1A5FD4A2C();
  LOBYTE(v33) = *(v20 + 66);
  v34 = 8;
  sub_1A5B7734C();
  sub_1A5FD4A5C();
  LOBYTE(v33) = 9;
  sub_1A5FD4A2C();
  v21 = type metadata accessor for BarcodeObservation();
  LOBYTE(v33) = 10;
  sub_1A5FD49FC();
  LOBYTE(v33) = 1;
  sub_1A5B289B8();
  v22 = v25;
  sub_1A5FD49EC();
  sub_1A5C15020(v22, v21, &protocol witness table for BarcodeObservation);
  LOBYTE(v33) = 0;
  sub_1A5B0A360();
  v23 = v27;
  sub_1A5FD49EC();
  v24 = sub_1A5BD5964(&qword_1EB1F1258, type metadata accessor for BarcodeObservation);
  sub_1A5BBD46C(v23, v21, &off_1F19596A8, v24);
  (*(v28 + 8))(v23, v29);
  (*(v30 + 8))(v22, v31);
  return (*(v18 + 8))(0, v17);
}

uint64_t BarcodeObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1A5FD367C();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED38);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F12A8);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for BarcodeObservation();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5BD553C();
  v17 = v43;
  sub_1A5FD4CCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v33 = v9;
  v32 = v7;
  v43 = v15;
  LOBYTE(v45) = 2;
  v18 = v12;
  v19 = sub_1A5FD48EC();
  v20 = v43;
  *v43 = v19;
  *(v20 + 1) = v21;
  v48 = 3;
  sub_1A5B0A8B0();
  sub_1A5FD492C();
  *(v20 + 1) = v45;
  LOBYTE(v45) = 4;
  *(v20 + 4) = sub_1A5FD48EC();
  *(v20 + 5) = v22;
  v48 = 5;
  sub_1A5FD492C();
  *(v20 + 3) = v45;
  v48 = 6;
  sub_1A5BD56DC();
  sub_1A5FD492C();
  v20[64] = v45;
  LOBYTE(v45) = 7;
  v20[65] = sub_1A5FD494C() & 1;
  v48 = 8;
  sub_1A5B773F4();
  sub_1A5FD497C();
  v20[66] = v45;
  LOBYTE(v45) = 9;
  v20[67] = sub_1A5FD494C() & 1;
  LOBYTE(v45) = 10;
  v23 = sub_1A5FD491C();
  v24 = &v20[v13[20]];
  *v24 = v23;
  v24[8] = v25 & 1;
  LOBYTE(v45) = 1;
  sub_1A5B289B8();
  sub_1A5FD48CC();
  v48 = 0;
  sub_1A5B23E38();
  sub_1A5FD497C();
  *(v43 + 72) = v45;
  v48 = 1;
  sub_1A5FD497C();
  *(v43 + 88) = v45;
  v48 = 3;
  sub_1A5FD497C();
  *(v43 + 120) = v45;
  v48 = 2;
  sub_1A5FD497C();
  *(v43 + 104) = v45;
  LOBYTE(v45) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  LOBYTE(v45) = 0;
  sub_1A5BD5964(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v38 + 32))(&v43[v13[16]], v35, v39);
  LOBYTE(v45) = 1;
  sub_1A5FD495C();
  *&v43[v13[17]] = v26;
  v48 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *&v43[v13[19]] = v45;
  sub_1A5BBDB04(v46);
  (*(v36 + 8))(v40, v37);
  (*(v41 + 8))(v33, v32);
  (*(v42 + 8))(v18, v10);
  v27 = v43;
  v28 = &v43[v13[18]];
  v29 = v46[1];
  *v28 = v46[0];
  *(v28 + 1) = v29;
  *(v28 + 2) = v46[2];
  v28[48] = v47;
  sub_1A5BD5730(v27, v34);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1A5BD5794(v27);
}

void sub_1A5BD49E0(void *a1@<X0>, unsigned __int16 *a2@<X1>, _OWORD *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A5FD367C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a1;
  [v13 topLeft];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v15, v14));
  *&v16 = v94;
  v86 = v16;
  *&v16 = v95;
  v85 = v16;
  [v13 topRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v18, v17));
  *&v19 = v92;
  v84 = v19;
  *&v19 = v93;
  v83 = v19;
  [v13 bottomRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v21, v20));
  *&v22 = v90;
  v82 = v22;
  *&v22 = v91;
  v81 = v22;
  [v13 bottomLeft];
  v24 = v23;
  v26 = v25;

  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v26, v24));
  *&v27 = v88;
  v80 = v27;
  *&v27 = v89;
  v79 = v27;
  v28 = v13;
  v29 = [v28 uuid];
  sub_1A5FD365C();
  [v28 confidence];
  v31 = v30;

  sub_1A5C0A9FC([v28 symbology], &v87);
  v32 = v87;
  if (v87 == 25)
  {
    __break(1u);
  }

  else
  {
    v76 = v12;

    v33 = [v28 payloadStringValue];
    if (v33)
    {
      v34 = v33;
      v73 = sub_1A5FD3D5C();
      v72 = v35;
    }

    else
    {
      v73 = 0;
      v72 = 0;
    }

    v36 = [v28 payloadData];
    if (v36)
    {
      v37 = v36;
      v71 = sub_1A5FD35DC();
      v70 = v38;
    }

    else
    {
      v71 = 0;
      v70 = 0xF000000000000000;
    }

    v39 = [v28 supplementalPayloadString];
    if (v39)
    {
      v40 = v39;
      v69 = sub_1A5FD3D5C();
      v68 = v41;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    v75 = v9;
    v77 = v8;
    v42 = [v28 supplementalPayloadData];
    v78 = a3;
    v74 = v11;
    v43 = v32;
    if (v42)
    {
      v44 = v42;
      v45 = sub_1A5FD35DC();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xF000000000000000;
    }

    v48 = [v28 supplementalCompositeType];
    v49 = [v28 isGS1DataCarrier];
    v50 = [v28 isColorInverted];
    v51 = [v28 appClipCodeMetadataValue];
    v52 = v51;
    if (v51)
    {
      v53 = [v51 integerValue];
    }

    else
    {
      v53 = 0;
    }

    v54 = v52 == 0;
    if (v48 >= 5)
    {
      v55 = 4;
    }

    else
    {
      v55 = 0x201000304uLL >> (8 * v48);
    }

    v56 = v72;
    *a4 = v73;
    *(a4 + 8) = v56;
    v57 = v70;
    *(a4 + 16) = v71;
    *(a4 + 24) = v57;
    v58 = v68;
    *(a4 + 32) = v69;
    *(a4 + 40) = v58;
    *(a4 + 48) = v45;
    *(a4 + 56) = v47;
    *(a4 + 64) = v55;
    *(a4 + 65) = v49;
    *(a4 + 66) = v43;
    *(a4 + 67) = v50;
    v59 = type metadata accessor for BarcodeObservation();
    v60 = a4 + v59[20];
    *v60 = v53;
    *&v61 = v86;
    *(&v61 + 1) = v85;
    *&v62 = v84;
    *(&v62 + 1) = v83;
    *(v60 + 8) = v54;
    *(a4 + 88) = v62;
    *&v62 = v82;
    *(&v62 + 1) = v81;
    *&v63 = v80;
    *(&v63 + 1) = v79;
    *(a4 + 72) = v61;
    *(a4 + 120) = v63;
    *(a4 + 104) = v62;
    (*(v75 + 32))(a4 + v59[16], v74, v77);
    *(a4 + v59[17]) = v31;
    v64 = a4 + v59[18];
    v65 = v78;
    v66 = v78[1];
    *v64 = *v78;
    *(v64 + 16) = v66;
    *(v64 + 32) = v65[2];
    *(v64 + 48) = *(v65 + 48);
    *(a4 + v59[19]) = v76;
  }
}

void BarcodeObservation.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = -8;
  [a1 timeRange];
  v7 = 0;
  sub_1A5BD49E0(a1, &v5, &v6, a2);
}

uint64_t sub_1A5BD4FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4165707954317367 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4265707954317367 && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4365707954317367 && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656B6E696CLL && a2 == 0xE600000000000000)
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

BOOL _s6Vision18BarcodeObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A5FD4B0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_14;
    }

    sub_1A5BD27F4(*(a1 + 16), *(a1 + 24));
    sub_1A5BD27F4(v10, v9);
    sub_1A5B33704(v8, v7);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_14;
    }

    sub_1A5BD27F4(*(a1 + 16), *(a1 + 24));
    sub_1A5BD27F4(v10, v9);
    v12 = sub_1A5B09C58(v8, v7, v10, v9);
    sub_1A5B33704(v10, v9);
    sub_1A5B33704(v8, v7);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v13)
  {
    if (!v14 || (*(a1 + 32) != *(a2 + 32) || v13 != v14) && (sub_1A5FD4B0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_1A5BD27F4(*(a1 + 48), *(a1 + 56));
      sub_1A5BD27F4(v10, v9);
      sub_1A5B33704(v8, v7);
      goto LABEL_29;
    }

LABEL_14:
    sub_1A5BD27F4(v8, v7);
    sub_1A5BD27F4(v10, v9);
    sub_1A5B33704(v8, v7);
    sub_1A5B33704(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_14;
  }

  sub_1A5BD27F4(*(a1 + 48), *(a1 + 56));
  sub_1A5BD27F4(v10, v9);
  v15 = sub_1A5B09C58(v8, v7, v10, v9);
  sub_1A5B33704(v10, v9);
  sub_1A5B33704(v8, v7);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v16 = *(a1 + 64);
  v17 = *(a2 + 64);
  if (v16 == 4)
  {
    if (v17 != 4)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  if (*(a1 + 65) != *(a2 + 65))
  {
    return 0;
  }

  LOBYTE(v37[0]) = *(a1 + 66);
  LOBYTE(v36[0]) = *(a2 + 66);
  if ((static BarcodeSymbology.== infix(_:_:)(v37, v36) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 67) != *(a2 + 67))
  {
    return 0;
  }

  v37[0] = *(a1 + 72);
  v36[0] = *(a2 + 72);
  if (!static NormalizedPoint.== infix(_:_:)(v37, v36))
  {
    return 0;
  }

  v37[0] = *(a1 + 88);
  v36[0] = *(a2 + 88);
  if (!static NormalizedPoint.== infix(_:_:)(v37, v36))
  {
    return 0;
  }

  v37[0] = *(a1 + 104);
  v36[0] = *(a2 + 104);
  if (!static NormalizedPoint.== infix(_:_:)(v37, v36))
  {
    return 0;
  }

  v37[0] = *(a1 + 120);
  v36[0] = *(a2 + 120);
  if (!static NormalizedPoint.== infix(_:_:)(v37, v36))
  {
    return 0;
  }

  v18 = type metadata accessor for BarcodeObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v18[17]) != *(a2 + v18[17]))
  {
    return 0;
  }

  v19 = v18[18];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 48);
  v22 = a2 + v19;
  if (v21)
  {
    if (!*(v22 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(v22 + 48))
    {
      return 0;
    }

    v23 = *v20;
    v24 = v20[1];
    v25 = v20[2];
    v26 = *(v22 + 16);
    v27 = *(v22 + 32);
    v37[0] = *v22;
    v37[1] = v26;
    v37[2] = v27;
    v36[0] = v23;
    v36[1] = v24;
    v36[2] = v25;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v18[19];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 <= 0xFFF7)
  {
    if (v30 > 0xFFF7)
    {
      return 0;
    }

    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30 <= 0xFFF7)
  {
    return 0;
  }

  v31 = v18[20];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if ((v33 & 1) == 0)
  {
    if (*v32 != *v34)
    {
      v35 = 1;
    }

    return (v35 & 1) == 0;
  }

  return (v35 & 1) != 0;
}

unint64_t sub_1A5BD553C()
{
  result = qword_1EB222618[0];
  if (!qword_1EB222618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB222618);
  }

  return result;
}

unint64_t sub_1A5BD5590()
{
  result = qword_1EB1F1278;
  if (!qword_1EB1F1278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1278);
  }

  return result;
}

uint64_t sub_1A5BD560C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BD5688()
{
  result = qword_1EB1F12A0;
  if (!qword_1EB1F12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F12A0);
  }

  return result;
}

unint64_t sub_1A5BD56DC()
{
  result = qword_1EB1F12B0;
  if (!qword_1EB1F12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F12B0);
  }

  return result;
}

uint64_t sub_1A5BD5730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BD5794(uint64_t a1)
{
  v2 = type metadata accessor for BarcodeObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5BD57F4()
{
  result = qword_1EB1F12B8;
  if (!qword_1EB1F12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F12B8);
  }

  return result;
}

uint64_t sub_1A5BD5848(void *a1)
{
  a1[1] = sub_1A5BD5964(&qword_1EB1F12C0, type metadata accessor for BarcodeObservation);
  a1[2] = sub_1A5BD5964(&qword_1EB1F0440, type metadata accessor for BarcodeObservation);
  a1[3] = sub_1A5BD5964(&qword_1EB1F0388, type metadata accessor for BarcodeObservation);
  result = sub_1A5BD5964(&qword_1EB1F1260, type metadata accessor for BarcodeObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BD5964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BD59AC(uint64_t a1)
{
  result = sub_1A5BD5964(&qword_1EB1F1258, type metadata accessor for BarcodeObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BD5A2C()
{
  sub_1A5BD6634(319, &qword_1EB1F12C8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5BD6634(319, &qword_1EB1F12D0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A5BD6634(319, &qword_1EB1F12D8, &type metadata for BarcodeObservation.CompositeType, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5FD367C();
        if (v3 <= 0x3F)
        {
          sub_1A5B0AD5C();
          if (v4 <= 0x3F)
          {
            sub_1A5BD6634(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A5BD6634(319, &qword_1EB1F12E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for BarcodeObservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BarcodeObservation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5BD5DD0()
{
  result = qword_1EB2230B0[0];
  if (!qword_1EB2230B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2230B0);
  }

  return result;
}

unint64_t sub_1A5BD5E28()
{
  result = qword_1EB2232C0[0];
  if (!qword_1EB2232C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2232C0);
  }

  return result;
}

unint64_t sub_1A5BD5E80()
{
  result = qword_1EB2233D0;
  if (!qword_1EB2233D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2233D0);
  }

  return result;
}

unint64_t sub_1A5BD5ED8()
{
  result = qword_1EB2233D8[0];
  if (!qword_1EB2233D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2233D8);
  }

  return result;
}

unint64_t sub_1A5BD5F30()
{
  result = qword_1EB223460;
  if (!qword_1EB223460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223460);
  }

  return result;
}

unint64_t sub_1A5BD5F88()
{
  result = qword_1EB223468[0];
  if (!qword_1EB223468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223468);
  }

  return result;
}

unint64_t sub_1A5BD5FE0()
{
  result = qword_1EB2234F0;
  if (!qword_1EB2234F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2234F0);
  }

  return result;
}

unint64_t sub_1A5BD6038()
{
  result = qword_1EB2234F8[0];
  if (!qword_1EB2234F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2234F8);
  }

  return result;
}

unint64_t sub_1A5BD6090()
{
  result = qword_1EB223580;
  if (!qword_1EB223580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223580);
  }

  return result;
}

unint64_t sub_1A5BD60E8()
{
  result = qword_1EB223588[0];
  if (!qword_1EB223588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223588);
  }

  return result;
}

unint64_t sub_1A5BD6140()
{
  result = qword_1EB223610;
  if (!qword_1EB223610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223610);
  }

  return result;
}

unint64_t sub_1A5BD6198()
{
  result = qword_1EB223618[0];
  if (!qword_1EB223618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223618);
  }

  return result;
}

unint64_t sub_1A5BD61F0()
{
  result = qword_1EB2236A0;
  if (!qword_1EB2236A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2236A0);
  }

  return result;
}

unint64_t sub_1A5BD6248()
{
  result = qword_1EB2236A8[0];
  if (!qword_1EB2236A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2236A8);
  }

  return result;
}

uint64_t sub_1A5BD629C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C676E6174636572 && a2 == 0xE900000000000065 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5364616F6C796170 && a2 == 0xED0000676E697274 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4464616F6C796170 && a2 == 0xEB00000000617461 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A6055C60 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A6055C80 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A6055CA0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A6055CC0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676F6C6F626D7973 && a2 == 0xE900000000000079 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x49726F6C6F437369 && a2 == 0xEF6465747265766ELL || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A6055CE0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void sub_1A5BD6634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 TextObservation.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 TextObservation.topLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 TextObservation.topRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = result;
  return result;
}

__n128 TextObservation.bottomRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

__n128 TextObservation.bottomLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 88);
  *a1 = result;
  return result;
}

uint64_t TextObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TextObservation() + 40);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TextObservation()
{
  result = qword_1EB223AC0;
  if (!qword_1EB223AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TextObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextObservation() + 48);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t TextObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for TextObservation();
  *a1 = *(v1 + *(result + 52));
  return result;
}

unint64_t TextObservation.description.getter()
{
  sub_1A5FD46AC();

  v1 = type metadata accessor for TextObservation();
  v2 = sub_1A5C64D80(v1, &protocol witness table for TextObservation);
  MEMORY[0x1AC554600](v2);

  if (*v0)
  {
    sub_1A5FD46AC();

    v3 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v3);

    MEMORY[0x1AC554600](0x7365786F6220, 0xE600000000000000);
    MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A6055D20);
  }

  v4 = sub_1A5BD908C(&qword_1EB1F12E8, type metadata accessor for TextObservation);
  v5 = sub_1A5C29408(v1, &off_1F1959970, v4);
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](41, 0xE100000000000000);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);

  return 0xD000000000000010;
}

uint64_t TextObservation.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextObservation() + 56));

  return v1;
}

__n128 sub_1A5BD6A78@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, CGRect *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, CGFloat *a9@<X8>, float a10@<S0>, uint64_t a11, uint64_t a12, __int16 *a13)
{
  v18 = *a2;
  v17 = a2[1];
  v19 = *(a2 + 16);
  v20 = a3[1];
  v21 = *(a3 + 16);
  v49 = *a4;
  v47 = *a3;
  v48 = a4[1];
  v22 = *(a4 + 16);
  x = a5->origin.x;
  y = a5->origin.y;
  width = a5->size.width;
  height = a5->size.height;
  v27 = *a13;
  if (*(a1 + 16) != 1)
  {
    v30 = *(a1 + 8);
    a9[5] = *a1;
    *(a9 + 6) = v30;
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  MinX = CGRectGetMinX(*a5);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  *&v29 = CGRectGetMaxY(v53);
  NormalizedPoint.init(x:y:)(__PAIR128__(v29, *&MinX));
  *(a9 + 5) = v51;
  *(a9 + 6) = v52;
  if (v19)
  {
LABEL_5:
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    MaxX = CGRectGetMaxX(v54);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    *&v32 = CGRectGetMaxY(v55);
    NormalizedPoint.init(x:y:)(__PAIR128__(v32, *&MaxX));
    v18 = v51;
    v17 = v52;
  }

LABEL_6:
  *(a9 + 7) = v18;
  *(a9 + 8) = v17;
  v33 = v47;
  if (v21)
  {
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v34 = CGRectGetMaxX(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    *&v35 = CGRectGetMinY(v57);
    NormalizedPoint.init(x:y:)(__PAIR128__(v35, *&v34));
    v33 = v51;
    v20 = v52;
  }

  *(a9 + 9) = v33;
  *(a9 + 10) = v20;
  v37 = v48;
  v36 = v49;
  if (v22)
  {
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v38 = CGRectGetMinX(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    *&v39 = CGRectGetMinY(v59);
    NormalizedPoint.init(x:y:)(__PAIR128__(v39, *&v38));
    v36 = v51;
    v37 = v52;
  }

  *(a9 + 11) = v36;
  *(a9 + 12) = v37;
  a9[1] = x;
  a9[2] = y;
  a9[3] = width;
  a9[4] = height;
  *a9 = a6;
  v40 = type metadata accessor for TextObservation();
  v41 = (a9 + v40[14]);
  *v41 = a7;
  v41[1] = a8;
  v42 = v40[10];
  v43 = sub_1A5FD367C();
  (*(*(v43 - 8) + 32))(a9 + v42, a11, v43);
  *(a9 + v40[11]) = a10;
  *(a9 + v40[13]) = v27;
  v44 = a9 + v40[12];
  v45 = *(a12 + 16);
  *v44 = *a12;
  *(v44 + 1) = v45;
  result = *(a12 + 32);
  *(v44 + 2) = result;
  v44[48] = *(a12 + 48);
  return result;
}

uint64_t TextObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for TextObservation();
  sub_1A5BD908C(&qword_1EB1F12F0, type metadata accessor for TextObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BD6D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1A5FD367C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1A5BD6E08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 48);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 sub_1A5BD6E3C@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 sub_1A5BD6E48@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = result;
  return result;
}

uint64_t sub_1A5BD6E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BD908C(&qword_1EB1F12E8, type metadata accessor for TextObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5BD6ED8()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x6C676E6174636572;
  v4 = 0x676E69646E756F62;
  if (v1 != 3)
  {
    v4 = 0x746176726573626FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574636172616863;
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

uint64_t sub_1A5BD6F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BD8E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BD6FB4(uint64_t a1)
{
  v2 = sub_1A5BD86D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BD6FF0(uint64_t a1)
{
  v2 = sub_1A5BD86D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextObservation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED20);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F12F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BD86D4();
  v11 = v26;
  sub_1A5FD4CDC();
  v12 = type metadata accessor for TextObservation();
  v28 = *(v11 + *(v12 + 56));
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1270);
  sub_1A5BD8880(&qword_1EB1F1278);
  v13 = v27;
  sub_1A5FD4A5C();
  if (v13)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = *v11;
  v27 = v4;
  *&v28 = v15;
  v30 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1300);
  sub_1A5BD8728();
  sub_1A5FD4A5C();
  v16 = *(v11 + 3);
  v28 = *(v11 + 1);
  v29 = v16;
  v30 = 3;
  sub_1A5B0A30C();
  sub_1A5FD4A5C();
  v17 = v8;
  LOBYTE(v28) = 2;
  sub_1A5B289B8();
  sub_1A5FD49EC();
  sub_1A5C15020(v6, v12, &protocol witness table for TextObservation);
  LOBYTE(v28) = 4;
  sub_1A5B0A360();
  v21 = v6;
  v18 = v22;
  sub_1A5FD49EC();
  v19 = sub_1A5BD908C(&qword_1EB1F12E8, type metadata accessor for TextObservation);
  sub_1A5BBD46C(v18, v12, &off_1F1959970, v19);
  (*(v23 + 8))(v18, v24);
  (*(v25 + 8))(v21, v27);
  return (*(v17 + 8))(v10, v7);
}

uint64_t TextObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1A5FD367C();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED38);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1318);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for TextObservation();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A5BD86D4();
  v15 = v35;
  sub_1A5FD4CCC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v25 = v7;
  v24 = v5;
  v16 = v34;
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1270);
  v41 = 0;
  sub_1A5BD8880(&qword_1EB1F1320);
  sub_1A5FD497C();
  *&v13[v35[14]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1300);
  v41 = 1;
  sub_1A5BD88EC();
  sub_1A5FD497C();
  v17 = v37;
  *v13 = v37;
  v41 = 3;
  sub_1A5B0A400();
  sub_1A5FD497C();
  v23[2] = v17;
  v18 = v38;
  *(v13 + 8) = v37;
  *(v13 + 24) = v18;
  LOBYTE(v37) = 2;
  sub_1A5B289B8();
  sub_1A5FD48CC();
  v41 = 0;
  v23[1] = sub_1A5B23E38();
  sub_1A5FD497C();
  *(v13 + 40) = v37;
  v41 = 1;
  sub_1A5FD497C();
  *(v13 + 56) = v37;
  v41 = 3;
  sub_1A5FD497C();
  *(v13 + 88) = v37;
  v41 = 2;
  sub_1A5FD497C();
  *(v13 + 72) = v37;
  LOBYTE(v37) = 4;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  LOBYTE(v37) = 0;
  sub_1A5BD908C(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v27 + 32))(&v13[v35[10]], v29, v30);
  LOBYTE(v37) = 1;
  sub_1A5FD495C();
  *&v13[v35[11]] = v19;
  v41 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *&v13[v35[13]] = v37;
  sub_1A5BBDB04(v39);
  (*(v28 + 8))(v32, v31);
  (*(v33 + 8))(v25, v24);
  (*(v16 + 8))(v10, v8);
  v20 = &v13[v35[12]];
  v21 = v39[1];
  *v20 = v39[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v39[2];
  v20[48] = v40;
  sub_1A5BD9024(v13, v26, type metadata accessor for TextObservation);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1A5BD90D4(v13, type metadata accessor for TextObservation);
}

void sub_1A5BD7F04(void *a1@<X0>, unsigned __int16 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v9 = type metadata accessor for RectangleObservation();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = *a2;
  v13 = a3[1];
  v64 = *a3;
  v65 = v13;
  v14 = [a1 characterBoxes];
  if (!v14)
  {
    v19 = 0;
    goto LABEL_16;
  }

  v15 = v14;
  sub_1A5B1AC0C();
  v16 = sub_1A5FD3F4C();

  if (v16 >> 62)
  {
    v17 = sub_1A5FD484C();
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_15:

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_4:
  v74 = MEMORY[0x1E69E7CC0];
  sub_1A5B694C0(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return;
  }

  *&v61 = a1;
  *&v62 = a5;
  v18 = 0;
  v19 = v74;
  v20 = v63;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1AC554EE0](v18, v16);
    }

    else
    {
      v21 = *(v16 + 8 * v18 + 32);
    }

    LOWORD(v73[0]) = v66;
    v68 = v65;
    v67 = v64;
    sub_1A5B28024(v21, v73, &v67, v20, v12);
    v74 = v19;
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1A5B694C0(v22 > 1, v23 + 1, 1);
      v20 = v63;
      v19 = v74;
    }

    ++v18;
    *(v19 + 16) = v23 + 1;
    sub_1A5BD89A8(v12, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23);
  }

  while (v17 != v18);

  a5 = v62;
  a1 = v61;
LABEL_16:
  v24 = a1;
  [v24 topLeft];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v26, v25));
  *&v27 = v74;
  v65 = v27;
  *&v27 = v75;
  v64 = v27;
  [v24 topRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v29, v28));
  *&v30 = v73[0];
  v62 = v30;
  *&v30 = v73[1];
  v61 = v30;
  [v24 bottomRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v32, v31));
  *&v33 = v71;
  v60 = v33;
  *&v33 = v72;
  v59 = v33;
  [v24 bottomLeft];
  v35 = v34;
  v37 = v36;

  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v37, v35));
  *&v38 = v69;
  v58 = v38;
  *&v38 = v70;
  v57 = v38;
  [v24 boundingBox];
  NormalizedRect.init(normalizedRect:)(v76);
  v55 = v68;
  v56 = v67;
  v39 = [v24 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1A5FD3D5C();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = v24;
  v45 = [v44 uuid];
  v46 = type metadata accessor for TextObservation();
  sub_1A5FD365C();

  [v44 confidence];
  v48 = v47;

  *&v49 = v65;
  *(&v49 + 1) = v64;
  *&v50 = v62;
  *(&v50 + 1) = v61;
  *(a5 + 56) = v50;
  *(a5 + 40) = v49;
  *&v49 = v60;
  *(&v49 + 1) = v59;
  *&v50 = v58;
  *(&v50 + 1) = v57;
  *(a5 + 88) = v50;
  *(a5 + 72) = v49;
  *(a5 + 24) = v55;
  *(a5 + 8) = v56;
  *a5 = v19;
  v51 = (a5 + v46[14]);
  *v51 = v41;
  v51[1] = v43;
  *(a5 + v46[11]) = v48;
  *(a5 + v46[13]) = v66;
  v52 = a5 + v46[12];
  v53 = v63;
  v54 = v63[1];
  *v52 = *v63;
  *(v52 + 16) = v54;
  *(v52 + 32) = v53[2];
  *(v52 + 48) = *(v53 + 48);
}

void TextObservation.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = -8;
  static NormalizedRect.fullImage.getter(v5);
  [a1 timeRange];
  v8 = 0;
  sub_1A5BD7F04(a1, &v6, &v4, &v7, a2);
}

void sub_1A5BD844C(void *a1@<X0>, unsigned __int16 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  sub_1A5BD7F04(a1, &v7, v6, a4, a5);
}

BOOL _s6Vision15TextObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = sub_1A5B682E0(v4, v5);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v30.origin = *(a1 + 8);
  v30.size = v7;
  v8 = *(a2 + 24);
  v28.origin = *(a2 + 8);
  v28.size = v8;
  if (!static NormalizedRect.== infix(_:_:)(&v30, &v28))
  {
    return 0;
  }

  v30.origin = *(a1 + 40);
  v28.origin = *(a2 + 40);
  if (!static NormalizedPoint.== infix(_:_:)(&v30.origin.x, &v28.origin.x))
  {
    return 0;
  }

  v30.origin = *(a1 + 56);
  v28.origin = *(a2 + 56);
  if (!static NormalizedPoint.== infix(_:_:)(&v30.origin.x, &v28.origin.x))
  {
    return 0;
  }

  v30.origin = *(a1 + 72);
  v28.origin = *(a2 + 72);
  if (!static NormalizedPoint.== infix(_:_:)(&v30.origin.x, &v28.origin.x))
  {
    return 0;
  }

  v30.origin = *(a1 + 88);
  v28.origin = *(a2 + 88);
  if (!static NormalizedPoint.== infix(_:_:)(&v30.origin.x, &v28.origin.x))
  {
    return 0;
  }

  v9 = type metadata accessor for TextObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v9[11]) != *(a2 + v9[11]))
  {
    return 0;
  }

  v10 = v9[12];
  v11 = a1 + v10;
  v12 = *(a1 + v10 + 48);
  v13 = a2 + v10;
  if (v12)
  {
    if (!*(v13 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(v13 + 48))
    {
      return 0;
    }

    v14 = *v11;
    v15 = *(v11 + 16);
    v16 = *(v11 + 32);
    v17 = *(v13 + 16);
    v18 = *(v13 + 32);
    v30.origin = *v13;
    v30.size = v17;
    v31 = v18;
    v28.origin = v14;
    v28.size = v15;
    v29 = v16;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v9[13];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 <= 0xFFF7)
  {
    if (v21 > 0xFFF7)
    {
      return 0;
    }

    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21 <= 0xFFF7)
  {
    return 0;
  }

  v22 = v9[14];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    return v26 && (*v23 == *v25 && v24 == v26 || (sub_1A5FD4B0C() & 1) != 0);
  }

  return !v26;
}

unint64_t sub_1A5BD86D4()
{
  result = qword_1EB223730[0];
  if (!qword_1EB223730[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223730);
  }

  return result;
}

unint64_t sub_1A5BD8728()
{
  result = qword_1EB1F1308;
  if (!qword_1EB1F1308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1300);
    sub_1A5BD87E4(&qword_1EB1F1310, &qword_1EB1EED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1308);
  }

  return result;
}

uint64_t sub_1A5BD87E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EF8F0);
    sub_1A5BD908C(a2, type metadata accessor for RectangleObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5BD8880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1270);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BD88EC()
{
  result = qword_1EB1F1328;
  if (!qword_1EB1F1328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1300);
    sub_1A5BD87E4(&qword_1EB1F1330, &qword_1EB1EED58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1328);
  }

  return result;
}

uint64_t sub_1A5BD89A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangleObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BD8A0C(void *a1)
{
  a1[1] = sub_1A5BD908C(&qword_1EB1F1338, type metadata accessor for TextObservation);
  a1[2] = sub_1A5BD908C(&qword_1EB1F1340, type metadata accessor for TextObservation);
  a1[3] = sub_1A5BD908C(&qword_1EB1F1348, type metadata accessor for TextObservation);
  result = sub_1A5BD908C(&qword_1EB1F12F0, type metadata accessor for TextObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BD8B28(uint64_t a1)
{
  result = sub_1A5BD908C(&qword_1EB1F12E8, type metadata accessor for TextObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BD8BA8()
{
  sub_1A5BD8CE0();
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B0AD5C();
      if (v2 <= 0x3F)
      {
        sub_1A5B0BC48(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5B0BC48(319, &qword_1EB1F12C8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A5BD8CE0()
{
  if (!qword_1EB1F1350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EF8F0);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F1350);
    }
  }
}

unint64_t sub_1A5BD8D58()
{
  result = qword_1EB223BD0[0];
  if (!qword_1EB223BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223BD0);
  }

  return result;
}

unint64_t sub_1A5BD8DB0()
{
  result = qword_1EB223CE0;
  if (!qword_1EB223CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223CE0);
  }

  return result;
}

unint64_t sub_1A5BD8E08()
{
  result = qword_1EB223CE8[0];
  if (!qword_1EB223CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223CE8);
  }

  return result;
}

uint64_t sub_1A5BD8E5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xEE007365786F4272 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C676E6174636572 && a2 == 0xE900000000000065 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

uint64_t sub_1A5BD9024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BD908C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BD90D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A5BD9138(char a1, CGFloat *a2, double a3, double a4, double a5, double a6)
{
  if ((a1 & 1) != 0 || (v6 = *a2, v7 = a2[1], v8 = a2[2], v9 = a2[3], v19.origin.x = *a2, v19.origin.y = v7, v19.size.width = v8, v19.size.height = v9, v10 = a6, v11 = a5, v12 = a4, v13 = a3, static NormalizedRect.fullImage.getter(v18), v17.origin = v18[0], v17.size = v18[1], v14 = static NormalizedRect.== infix(_:_:)(&v19, &v17), a3 = v13, a4 = v12, a5 = v11, a6 = v10, v14))
  {

    NormalizedRect.init(normalizedRect:)(*&a3);
  }

  else
  {
    v19.origin.x = v6;
    v19.origin.y = v7;
    v19.size.width = v8;
    v19.size.height = v9;
    NormalizedRect.init(imageRect:in:normalizedTo:)(*&a3, __PAIR128__(1.0, 1.0), *&v15);
  }
}

void sub_1A5BD9220(char a1, CGFloat *a2, double a3, double a4)
{
  if ((a1 & 1) != 0 || (v4 = *a2, v5 = a2[1], v6 = a2[2], v7 = a2[3], v17.origin.x = *a2, v17.origin.y = v5, v17.size.width = v6, v17.size.height = v7, v8 = a4, v9 = a3, static NormalizedRect.fullImage.getter(v16), v15.origin = v16[0], v15.size = v16[1], v10 = static NormalizedRect.== infix(_:_:)(&v17, &v15), a3 = v9, a4 = v8, v10))
  {

    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(*&a4, *&a3));
  }

  else
  {
    v17.origin.x = v4;
    v17.origin.y = v5;
    v17.size.width = v6;
    v17.size.height = v7;
    NormalizedPoint.init(imagePoint:in:normalizedTo:)(__PAIR128__(*&v8, *&v9), __PAIR128__(1.0, 1.0), *&v11);
  }
}

uint64_t sub_1A5BD92EC(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  sub_1A5BD9578(0, a1, a2);
  v5 = v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(v5);

  v7 = sub_1A5FD3BDC();

  *&v24[0] = 0;
  v8 = [ObjCClassFromMetadata supportedImageSizeSetForOptions:v7 error:v24];

  v9 = *&v24[0];
  if (!v8)
  {
    v21 = *&v24[0];
    v22 = sub_1A5FD348C();

    swift_willThrow();
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A5B16F58(0, &unk_1EB1F1360);
  v10 = sub_1A5FD3F4C();
  v11 = v9;

  if (v10 >> 62)
  {
    v12 = sub_1A5FD484C();
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_7:
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A5BDAC18(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  v13 = 0;
  v2 = v23;
  if ((v10 & 0xC000000000000001) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  for (i = MEMORY[0x1AC554EE0](v13, v10); ; i = *(v10 + 8 * v13 + 32))
  {
    sub_1A5B50818(i, v24);
    v16 = *(v23 + 16);
    v15 = *(v23 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1A5BDAC18((v15 > 1), v16 + 1, 1);
    }

    *(v23 + 16) = v16 + 1;
    v17 = (v23 + 80 * v16);
    v17[2] = v24[0];
    v18 = v24[1];
    v19 = v24[2];
    v20 = v25[0];
    *(v17 + 89) = *(v25 + 9);
    v17[4] = v19;
    v17[5] = v20;
    v17[3] = v18;
    if (v12 - 1 == v13)
    {
      break;
    }

    ++v13;
    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_9;
    }

LABEL_10:
    ;
  }

  return v2;
}

uint64_t sub_1A5BD9578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  (*(a3 + 40))(a2, a3);
  if (!v6)
  {
    __break(1u);
  }

  v7 = (*(a3 + 48))(a1, a2, a3);
  v8 = objc_opt_self();
  v9 = sub_1A5FD3D2C();
  sub_1A5B37FAC(v7);
  v10 = sub_1A5FD3BDC();

  v20 = 0;
  v21[0] = 0;
  v11 = [v8 detectorClassAndConfigurationOptions:v21 forDetectorType:v9 options:v10 error:&v20];

  v12 = v11;
  v13 = v20;
  v14 = v21[0];
  if (!v12)
  {
    v16 = v20;
    v19 = v14;

    sub_1A5FD348C();

    swift_willThrow();
    return v16;
  }

  swift_getObjCClassMetadata();
  sub_1A5B16F58(0, &qword_1EB1EE628);
  result = swift_dynamicCastMetatypeUnconditional();
  if (v14)
  {
    v16 = result;
    v17 = v13;
    v18 = v14;

    v21[0] = 0;
    result = sub_1A5FD3BEC();
    if (v21[0])
    {

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5BD97B4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1A5FD425C();
  if (!v19)
  {
    return sub_1A5FD3F8C();
  }

  v41 = v19;
  v45 = sub_1A5FD47EC();
  v32 = sub_1A5FD47FC();
  sub_1A5FD479C();
  result = sub_1A5FD424C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1A5FD428C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1A5FD47DC();
      result = sub_1A5FD427C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5BD9BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a2;
  v9[7] = a1;
  v9[2] = a3;
  v9[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1370);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A5BDAC68();
  return sub_1A5BD97B4(sub_1A5BDAC38, v9, v4, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1A5BD9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B101D8(v10, &v27);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    v14 = *&v25[0];
    (*(v9 + 16))(v12, a2, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1398);
    if (swift_dynamicCast())
    {
      v22 = AssociatedConformanceWitness;
      v15 = a3;
      v17 = *(&v28 + 1);
      v16 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      v18 = v17;
      a3 = v15;
      AssociatedConformanceWitness = v22;
      (*(v16 + 16))(v25, v18, v16);
      v23 = v25[0];
      v24 = v25[1];
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      sub_1A5B10168(&v27, &unk_1EB1F13C0);
      static NormalizedRect.fullImage.getter(&v27);
      v23 = v27;
      v24 = v28;
    }

    v19 = swift_checkMetadataState();
    (*(*(*(a5 + 8) + 8) + 56))(v25, a4);
    v26 = v25[0];
    v27 = v23;
    v28 = v24;
    return (*(AssociatedConformanceWitness + 24))(v14, &v26, &v27, a3, v19, AssociatedConformanceWitness);
  }

  else
  {
    result = sub_1A5FD483C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5BDA018(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 72))();
  v4 = v3;
  v6 = v5;
  v7 = sub_1A5B729A4(v2, v3, v5);
  sub_1A5B4F9C8(v2, v4, v6);
  return v7;
}

uint64_t sub_1A5BDA08C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1380);
  if (swift_dynamicCast())
  {
    v4 = *(&v14 + 1);
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    (*(v5 + 8))(&v12, v4, v5);
    v6 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v13);
    LOBYTE(v13) = v6;
    result = sub_1A5B9D200();
    if (v8)
    {
      *&v13 = 0;
      *(&v13 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000018, 0x80000001A6055D40);
      v12 = v6;
      sub_1A5FD481C();
      MEMORY[0x1AC554600](0x70757320746F6E20, 0xEF2E646574726F70);
      v9 = v13;
      sub_1A5B16774();
      swift_allocError();
      *v10 = v9;
      *(v10 + 16) = 0;
      *(v10 + 20) = 2;
      return swift_willThrow();
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_1A5B10168(&v13, &unk_1EB1F1388);
    return 2;
  }

  return result;
}

uint64_t sub_1A5BDA2B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A5BD9578(0, a1, a2);
  v4 = sub_1A5BDB1D0(v2, v3);

  return v4;
}

unint64_t sub_1A5BDA35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = sub_1A5B3096C(MEMORY[0x1E69E7CC0]);
  v6 = *(a3 + 8);
  v7 = (*(v6 + 40))(a2, v6);
  sub_1A5C59428(v7);
  sub_1A5C59904(0);
  sub_1A5C593C8(0);
  v8 = sub_1A5FD3D5C();
  v10 = v9;
  v24 = MEMORY[0x1E69E6810];
  *&v23 = 0;
  sub_1A5B101C8(&v23, v22);
  v11 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v22, v8, v10, isUniquelyReferenced_nonNull_native);

  v25 = v11;
  v13 = *(v6 + 8);
  v14 = *(v13 + 56);
  v14(&v23, a2, v13);
  LOWORD(v22[0]) = v23;
  v15 = sub_1A5C752E0();
  if (!v15)
  {
    v14(&v23, a2, v13);
    LOWORD(v22[0]) = v23;
    sub_1A5C66384();
    sub_1A5D4B6C8();
    if (!a1)
    {
      return v25;
    }

    goto LABEL_3;
  }

  v16 = v15;
  v17 = v15;
  sub_1A5C5998C(v16);
  v18 = [v17 requestClassName];
  sub_1A5FD3D5C();

  sub_1A5D4B6C8();
  if (a1)
  {
LABEL_3:
    v19 = *(a1 + 16);
    v20 = v19;
    sub_1A5C59F48(v19);
  }

  return v25;
}

uint64_t sub_1A5BDA554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 40))(a2, a3);
  if (v8)
  {
    v9 = result;
    v10 = v8;
    v11 = (*(a3 + 48))(a1, a2, a3);
    v12 = sub_1A5CD3A8C(v9, v10, v11);

    if (v3)
    {
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1A5BDA628(CGFloat *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(*a1 + 168))();
  v7 = sub_1A5FD3BDC();

  v8 = sub_1A5FD3BDC();
  v9 = [ObjCClassFromMetadata areExistingInitializationOptions:v7 compatibleWithOptions:v8];

  result = 0;
  if (v9)
  {
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[7];
    v13 = a1[8];
    v25.origin.x = (*(*(a4 + 8) + 80))(a3);
    v25.origin.y = v14;
    v25.size.width = v15;
    v25.size.height = v16;
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    if (CGRectEqualToRect(v24, v25))
    {
      v17 = (*(*a1 + 192))();
      v18 = sub_1A5C59D6C(v17);
      v20 = v19;

      v21 = sub_1A5BDA08C(a3);
      if ((v20 & 1) == 0 && v18 == v21)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_1A5BDA80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1398);
  if (swift_dynamicCast())
  {
    v12 = __swift_destroy_boxed_opaque_existential_1(v23);
    v13 = v24;
    v14 = (*(**(a2 + 16) + 120))(v12);
    if (v13)
    {
      return;
    }

    v15 = v14;
    sub_1A5BDAA74(a1, v14, a3);

    v22 = a4;
    v24 = 0;
  }

  else
  {
    v22 = a4;
  }

  v16 = *(*(*(a2 + 16) + 80) + 16);
  v17 = *(*a1 + 208);
  v18 = v16;
  v19 = v17(v23);
  sub_1A5C59F48(v16);
  v19(v23, 0);
  v20 = [objc_allocWithZone(VNCanceller) init];
  v21 = v17(v23);
  sub_1A5C59EA8(v20);
  v21(v23, 0);
  (*(v22 + 56))(a1, a2, a3);
}

uint64_t sub_1A5BDAA74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a1 + 208);
  v7 = v6(v12);
  v8 = a2;
  sub_1A5C59AD8(a2);
  v7(v12, 0);
  result = sub_1A5BDA08C(a3);
  if (!v3)
  {
    v10 = result;
    v11 = v6(v12);
    sub_1A5C59E24(v10, 0);
    return v11(v12, 0);
  }

  return result;
}

uint64_t sub_1A5BDAB80(uint64_t a1)
{
  v2 = sub_1A5BDB840(&qword_1EB1EE600);
  v3 = sub_1A5BDB840(&qword_1EB1F3FB0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1A5BDAC18(char *a1, int64_t a2, char a3)
{
  result = sub_1A5BDACCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1A5BDAC68()
{
  result = qword_1EB1F1378;
  if (!qword_1EB1F1378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1378);
  }

  return result;
}

char *sub_1A5BDACCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1A5BDADDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F0150);
  v31 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1A5B102A4();
      result = sub_1A5FD3CAC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A5BDB074()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F0150);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_1A5BDB1D0(uint64_t a1, uint64_t a2)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v56 = sub_1A5FD3B5C();
  v3 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(a2);
  v7 = sub_1A5FD3BDC();

  v61[0] = 0;
  v8 = [ObjCClassFromMetadata supportedComputeStageDevicesForOptions:v7 error:v61];

  v9 = v61[0];
  if (v8)
  {
    type metadata accessor for VNComputeStage();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F13B0);
    sub_1A5BDB840(&qword_1EB1EE600);
    v10 = sub_1A5FD3C0C();
    v11 = v9;

    v12 = sub_1A5B54118(MEMORY[0x1E69E7CC0]);
    v13 = 0;
    v14 = 1 << *(v10 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v10 + 64;
    v17 = v15 & *(v10 + 64);
    v18 = (v14 + 63) >> 6;
    v59 = v3 + 32;
    v60 = v3;
    while (1)
    {
      while (1)
      {
        v19 = v13;
        if (!v17)
        {
          while (1)
          {
            v13 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v13 >= v18)
            {

              return v12;
            }

            v17 = *(v16 + 8 * v13);
            ++v19;
            if (v17)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

LABEL_9:
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v21 = (v13 << 9) | (8 * v20);
        v22 = *(*(v10 + 56) + v21);
        v23 = *(*(v10 + 48) + v21);

        sub_1A5B3BDA8(v23, v61);
        v24 = v61[0];
        if (LOBYTE(v61[0]) != 2)
        {
          break;
        }
      }

      v55 = v23;
      if (v22 >> 62)
      {
        v25 = sub_1A5FD484C();
        v53 = v18;
        v54 = v10;
        if (v25)
        {
LABEL_13:
          v52 = v12;
          v61[0] = MEMORY[0x1E69E7CC0];
          v58 = v25;
          sub_1A5B53F20(0, v25 & ~(v25 >> 63), 0);
          if (v58 < 0)
          {
            goto LABEL_40;
          }

          v26 = 0;
          v27 = v61[0];
          v57 = v22 & 0xC000000000000001;
          v28 = v56;
          do
          {
            if (v57)
            {
              MEMORY[0x1AC554EE0](v26, v22);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            sub_1A5FD3B4C();
            v29 = v27;
            v61[0] = v27;
            v30 = v5;
            v32 = v27[2];
            v31 = v27[3];
            if (v32 >= v31 >> 1)
            {
              sub_1A5B53F20(v31 > 1, v32 + 1, 1);
              v28 = v56;
              v29 = v61[0];
            }

            ++v26;
            v29[2] = v32 + 1;
            v27 = v29;
            (*(v60 + 32))(v29 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v32, v30, v28);
            v5 = v30;
          }

          while (v58 != v26);

          v12 = v52;
          goto LABEL_24;
        }
      }

      else
      {
        v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v53 = v18;
        v54 = v10;
        if (v25)
        {
          goto LABEL_13;
        }
      }

      v27 = MEMORY[0x1E69E7CC0];
LABEL_24:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v12;
      v34 = v12;
      v35 = v24 & 1;
      v36 = sub_1A5B0E238(v24 & 1);
      v38 = v34[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_39;
      }

      v42 = v37;
      if (v34[3] >= v41)
      {
        v44 = v55;
        if (isUniquelyReferenced_nonNull_native)
        {
          v45 = v61[0];
          if ((v37 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v46 = v36;
          sub_1A5BDB074();
          v44 = v55;
          v36 = v46;
          v45 = v61[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_31:
        *(v45[7] + 8 * v36) = v27;

        v18 = v53;
        v10 = v54;
        v12 = v45;
      }

      else
      {
        sub_1A5BDADDC(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_1A5B0E238(v24 & 1);
        if ((v42 & 1) != (v43 & 1))
        {
          result = sub_1A5FD4B8C();
          __break(1u);
          return result;
        }

        v44 = v55;
        v45 = v61[0];
        if (v42)
        {
          goto LABEL_31;
        }

LABEL_33:
        v45[(v36 >> 6) + 8] |= 1 << v36;
        *(v45[6] + v36) = v35;
        *(v45[7] + 8 * v36) = v27;

        v47 = v45[2];
        v40 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v40)
        {
          goto LABEL_41;
        }

        v12 = v45;
        v45[2] = v48;
        v18 = v53;
        v10 = v54;
      }
    }
  }

  v49 = v61[0];
  v50 = sub_1A5FD348C();

  swift_willThrow();
  v12 = sub_1A5B54118(MEMORY[0x1E69E7CC0]);

  return v12;
}

void type metadata accessor for VNComputeStage()
{
  if (!qword_1EB1EE5E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB1EE5E0);
    }
  }
}

uint64_t sub_1A5BDB840(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VNComputeStage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5BDB894(uint64_t a1)
{
  v2 = sub_1A5BDBB5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDB8D0(uint64_t a1)
{
  v2 = sub_1A5BDBB5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BDB90C(uint64_t a1)
{
  v2 = sub_1A5BDBBB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDB948(uint64_t a1)
{
  v2 = sub_1A5BDBBB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackRectangleRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDBB5C();
  sub_1A5FD4CDC();
  sub_1A5BDBBB0();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BDBB5C()
{
  result = qword_1EB223E10;
  if (!qword_1EB223E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223E10);
  }

  return result;
}

unint64_t sub_1A5BDBBB0()
{
  result = qword_1EB223E18;
  if (!qword_1EB223E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223E18);
  }

  return result;
}

uint64_t TrackRectangleRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t TrackRectangleRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13E8);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13F0);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDBB5C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BDBBB0();
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
      *v13 = &type metadata for TrackRectangleRequest.Revision;
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

uint64_t sub_1A5BDBF7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDBB5C();
  sub_1A5FD4CDC();
  sub_1A5BDBBB0();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrackRectangleRequest.__allocating_init(detectedRectangle:_:frameAnalysisSpacing:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  TrackRectangleRequest.init(detectedRectangle:_:frameAnalysisSpacing:)(a1, a2, a3, a4, a5, a6 & 1);
  return v12;
}

uint64_t TrackRectangleRequest.init(detectedRectangle:_:frameAnalysisSpacing:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *a2;
  static NormalizedRect.fullImage.getter(v23);
  v14 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F13F8);
  v15 = swift_allocObject();
  *(v15 + 64) = 0;
  v16 = v23[1];
  *(v15 + 16) = v23[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = 0;
  *(v15 + 56) = v14;
  *(v6 + 88) = v15;
  type metadata accessor for TrackRectangleRequest.State(0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 40) = 1;
  v18 = OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_lastResult;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1400);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *(v17 + OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_tracker) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1408);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v17;
  *(v6 + 96) = v20;
  sub_1A5FD366C();
  if (v13 == 1 && (sub_1A5BDEA50(&qword_1EB1F1410, type metadata accessor for TrackRectangleRequest), result = sub_1A5D4E900(), (v23[0].n128_u8[0] & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    sub_1A5B8E25C(a1, v6 + 16);
    if (a6)
    {
      a3 = *MEMORY[0x1E6960CC0];
      LODWORD(a4) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v22) = *(MEMORY[0x1E6960CC0] + 12);
      a5 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v22 = HIDWORD(a4);
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    *(v7 + 64) = a3;
    *(v7 + 72) = a4;
    *(v7 + 76) = v22;
    *(v7 + 80) = a5;
    return v7;
  }

  return result;
}

uint64_t sub_1A5BDC424(uint64_t a1)
{
  v2 = sub_1A5BDE9FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDC460(uint64_t a1)
{
  v2 = sub_1A5BDE9FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BDC49C()
{
  if (*v0)
  {
    return 1953718630;
  }

  else
  {
    return 0x6574617275636361;
  }
}

uint64_t sub_1A5BDC4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617275636361 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953718630 && a2 == 0xE400000000000000)
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

uint64_t sub_1A5BDC5AC(uint64_t a1)
{
  v2 = sub_1A5BDE954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDC5E8(uint64_t a1)
{
  v2 = sub_1A5BDE954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BDC624(uint64_t a1)
{
  v2 = sub_1A5BDE9A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDC660(uint64_t a1)
{
  v2 = sub_1A5BDE9A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackRectangleRequest.TrackingLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1418);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1420);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1428);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDE954();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BDE9A8();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BDE9FC();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t TrackRectangleRequest.TrackingLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t TrackRectangleRequest.TrackingLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1430);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1438);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1440);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDE954();
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
    *v21 = &type metadata for TrackRectangleRequest.TrackingLevel;
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
    sub_1A5BDE9A8();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BDE9FC();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void TrackRectangleRequest.trackingLevel.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 64));
  *a1 = *(v3 + 48);

  os_unfair_lock_unlock((v3 + 64));
}

void sub_1A5BDCEB4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 88);
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 48);
  os_unfair_lock_unlock((v3 + 64));
  *a2 = v4;
}

void sub_1A5BDCEFC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 88);
  os_unfair_lock_lock((v3 + 64));
  *(v3 + 48) = v2;

  os_unfair_lock_unlock((v3 + 64));
}

void TrackRectangleRequest.trackingLevel.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 64));
  *(v3 + 48) = v2;

  os_unfair_lock_unlock((v3 + 64));
}

void (*TrackRectangleRequest.trackingLevel.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 88);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 64));
  *(a1 + 8) = *(v3 + 48);
  os_unfair_lock_unlock((v3 + 64));
  return sub_1A5BDCFF0;
}

void sub_1A5BDCFF0(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 16);
  LOBYTE(v1[12]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 16);
}

void TrackRectangleRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 64));
}

__n128 sub_1A5BDD07C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + 88);
  os_unfair_lock_lock((v3 + 64));
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 64));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5BDD0CC(_OWORD *a1, uint64_t a2)
{
  v3 = *(*a2 + 88);
  os_unfair_lock_lock((v3 + 64));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 64));
}

void TrackRectangleRequest.regionOfInterest.setter(_OWORD *a1)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 64));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 64));
}

void (*TrackRectangleRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + 88);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 64));
  v6 = *(v5 + 32);
  *v4 = *(v5 + 16);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 64));
  return sub_1A5BDD1EC;
}

void sub_1A5BDD1EC(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = (*a1)[1];
  v4 = **a1;
  os_unfair_lock_lock((v2 + 64));
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  os_unfair_lock_unlock((v2 + 64));

  free(v1);
}

uint64_t TrackRectangleRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5BDEA50(&qword_1EB1F1448, type metadata accessor for TrackRectangleRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5BDD374(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v5 = type metadata accessor for TrackRectangleRequest(0);
  v6 = sub_1A5BDEA50(&qword_1EB1F1410, type metadata accessor for TrackRectangleRequest);
  result = a2(v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BDD418@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_lastResult;
  swift_beginAccess();
  return sub_1A5B31A34(v1 + v3, a1, &qword_1EB1F1450);
}

uint64_t sub_1A5BDD480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_lastResult;
  swift_beginAccess();
  sub_1A5BDEA98(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_1A5BDD540()
{
  v1 = OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_tracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A5BDD58C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_tracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A5BDD644()
{
  sub_1A5BDEB08(v0 + OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_lastResult);

  return swift_deallocClassInstance();
}

uint64_t sub_1A5BDD6B8()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_lastResult;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1400);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC6Vision21TrackRectangleRequest5State_tracker) = 0;
  return v0;
}

uint64_t (*sub_1A5BDD7A4(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5BDD894(uint64_t *a1))()
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

uint64_t (*sub_1A5BDD988(uint64_t *a1))()
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
  return sub_1A5B17040;
}

uint64_t TrackRectangleRequest.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC6Vision21TrackRectangleRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackRectangleRequest.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC6Vision21TrackRectangleRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TrackRectangleRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5BDEA50(&qword_1EB1F1458, type metadata accessor for TrackRectangleRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5BDDBF0(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 88);
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 64));
}

void sub_1A5BDDC3C(_OWORD *a1)
{
  v3 = *(*v1 + 88);
  os_unfair_lock_lock((v3 + 64));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 64));
}

uint64_t (*sub_1A5BDDC88(uint64_t **a1))()
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
  v2[4] = TrackRectangleRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5BDDD60(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BDEA50(&qword_1EB1F1448, type metadata accessor for TrackRectangleRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BDDDF4(uint64_t a1)
{
  v2 = sub_1A5BDEA50(&qword_1EB1EF7C0, type metadata accessor for TrackRectangleRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BDDE60(uint64_t a1, uint64_t a2)
{
  sub_1A5BDEA50(&qword_1EB1F1498, type metadata accessor for TrackRectangleRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5BDDEDC(uint64_t a1, uint64_t a2)
{
  sub_1A5BDEA50(&qword_1EB1F1498, type metadata accessor for TrackRectangleRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5BDDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 32)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650);
    return sub_1A5BDEB70(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5B16718(v8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5BDEA50(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1460);
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

uint64_t (*sub_1A5BDE16C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 88);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 64));
  v4 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 64));
  *a1 = v4;
  return sub_1A5BDE1D8;
}

uint64_t sub_1A5BDE1D8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 16);
    sub_1A5BDF760(&v2[4]);
    os_unfair_lock_unlock(v2 + 16);
  }

  else
  {
    os_unfair_lock_lock(v2 + 16);
    sub_1A5BDF760(&v2[4]);
    os_unfair_lock_unlock(v2 + 16);
  }
}

id sub_1A5BDE288()
{
  v1 = v0;
  v2 = sub_1A5FD367C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v36) = 248;
  result = sub_1A5C752E0();
  if (result)
  {
    v7 = result;
    v8 = v0[5];
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    (*(v9 + 16))(v42, v8, v9);
    v35 = *v42;
    v34 = *&v42[1];
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    (*(v11 + 24))(v41, v10, v11);
    v12 = *v41;
    v13 = *&v41[1];
    v14 = v0[5];
    v15 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
    (*(v15 + 32))(v40, v14, v15);
    v16 = *v40;
    v17 = *&v40[1];
    v18 = v0[5];
    v19 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
    (*(v19 + 40))(v39, v18, v19);
    v20 = *v39;
    v21 = *&v39[1];
    v23 = v0[5];
    v22 = v0[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    (*(*(v22 + 8) + 8))(&v36, v23);
    v24 = v36;
    v33 = v37;
    v25 = v38;
    v26 = objc_allocWithZone(VNRectangleObservation);
    v27 = [v26 initWithOriginatingRequestSpecifier:v7 topLeft:v35 topRight:v34 bottomRight:v12 bottomLeft:v13 boundingBox:{v16, v17, v20, v21, v24, v33, *(&v33 + 1), v25}];

    v28 = v1[5];
    v29 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v28);
    v30 = *(v29 + 40);
    v31 = v27;
    v30(v28, v29);
    v32 = sub_1A5FD363C();
    (*(v3 + 8))(v5, v2);
    [v31 setUUID_];

    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5BDE5B8()
{
  v1 = *(v0 + 88);
  os_unfair_lock_lock(v1 + 16);
  os_unfair_lock_unlock(v1 + 16);

  return sub_1A5FD3D5C();
}

uint64_t sub_1A5BDE618@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision21TrackRectangleRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5BDE6A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650) + 48);
  *a2 = v2;
  sub_1A5B31A34(a1, a2 + v5, &qword_1EB1EF7C8);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5BDE738()
{
  v1 = *(*v0 + 88);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 56);

  os_unfair_lock_unlock((v1 + 64));
  return v2;
}

uint64_t sub_1A5BDE77C()
{
  v1 = *(*v0 + 88);
  os_unfair_lock_lock(v1 + 16);
  sub_1A5BDF760(&v1[4]);
  os_unfair_lock_unlock(v1 + 16);
}

uint64_t (*sub_1A5BDE7E0(void *a1))()
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
  v2[4] = sub_1A5BDE16C(v2);
  return sub_1A5B17040;
}

unint64_t sub_1A5BDE954()
{
  result = qword_1EB223E20;
  if (!qword_1EB223E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223E20);
  }

  return result;
}

unint64_t sub_1A5BDE9A8()
{
  result = qword_1EB223E28;
  if (!qword_1EB223E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB223E28);
  }

  return result;
}

unint64_t sub_1A5BDE9FC()
{
  result = qword_1EB223E30[0];
  if (!qword_1EB223E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB223E30);
  }

  return result;
}

uint64_t sub_1A5BDEA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BDEA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BDEB08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5BDEB70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5BDEBF8()
{
  result = qword_1EB1F1468;
  if (!qword_1EB1F1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1468);
  }

  return result;
}

unint64_t sub_1A5BDEC54()
{
  result = qword_1EB1F1470;
  if (!qword_1EB1F1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1470);
  }

  return result;
}

unint64_t sub_1A5BDECBC()
{
  result = qword_1EB1F1480;
  if (!qword_1EB1F1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1480);
  }

  return result;
}

uint64_t sub_1A5BDED10(uint64_t a1)
{
  result = sub_1A5BDEA50(&qword_1EB1EF7C0, type metadata accessor for TrackRectangleRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5BDEE88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5BDEA50(a4, type metadata accessor for TrackRectangleRequest);
  result = sub_1A5BDEA50(a6, type metadata accessor for TrackRectangleRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5BDEF3C(uint64_t a1)
{
  result = sub_1A5BDEA50(&qword_1EB1F1410, type metadata accessor for TrackRectangleRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BDEF98()
{
  result = qword_1EB1F14A0;
  if (!qword_1EB1F14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F14A0);
  }

  return result;
}

unint64_t sub_1A5BDEFEC(uint64_t a1)
{
  result = sub_1A5BDF014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BDF014()
{
  result = qword_1EB1F14A8;
  if (!qword_1EB1F14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F14A8);
  }

  return result;
}

uint64_t sub_1A5BDF070()
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

void sub_1A5BDF19C()
{
  sub_1A5BDF240();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A5BDF240()
{
  if (!qword_1EB1F14B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1400);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F14B0);
    }
  }
}

unint64_t sub_1A5BDF2F8()
{
  result = qword_1EB224AE0[0];
  if (!qword_1EB224AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB224AE0);
  }

  return result;
}

unint64_t sub_1A5BDF350()
{
  result = qword_1EB224EF0;
  if (!qword_1EB224EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB224EF0);
  }

  return result;
}

unint64_t sub_1A5BDF3A8()
{
  result = qword_1EB225000;
  if (!qword_1EB225000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225000);
  }

  return result;
}

unint64_t sub_1A5BDF400()
{
  result = qword_1EB225008[0];
  if (!qword_1EB225008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225008);
  }

  return result;
}

unint64_t sub_1A5BDF458()
{
  result = qword_1EB225090;
  if (!qword_1EB225090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225090);
  }

  return result;
}

unint64_t sub_1A5BDF4B0()
{
  result = qword_1EB225098[0];
  if (!qword_1EB225098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225098);
  }

  return result;
}

unint64_t sub_1A5BDF508()
{
  result = qword_1EB225120;
  if (!qword_1EB225120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225120);
  }

  return result;
}

unint64_t sub_1A5BDF560()
{
  result = qword_1EB225128[0];
  if (!qword_1EB225128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225128);
  }

  return result;
}

unint64_t sub_1A5BDF5B8()
{
  result = qword_1EB2251B0;
  if (!qword_1EB2251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2251B0);
  }

  return result;
}

unint64_t sub_1A5BDF610()
{
  result = qword_1EB2251B8[0];
  if (!qword_1EB2251B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2251B8);
  }

  return result;
}

unint64_t sub_1A5BDF668()
{
  result = qword_1EB225240;
  if (!qword_1EB225240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225240);
  }

  return result;
}

unint64_t sub_1A5BDF6C0()
{
  result = qword_1EB225248[0];
  if (!qword_1EB225248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225248);
  }

  return result;
}

uint64_t sub_1A5BDF714(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1A5BDF790(uint64_t a1)
{
  v2 = sub_1A5BDFA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDF7CC(uint64_t a1)
{
  v2 = sub_1A5BDFA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BDF808(uint64_t a1)
{
  v2 = sub_1A5BDFAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BDF844(uint64_t a1)
{
  v2 = sub_1A5BDFAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectLensSmudgeRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F14C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F14C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDFA58();
  sub_1A5FD4CDC();
  sub_1A5BDFAAC();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BDFA58()
{
  result = qword_1EB2252E0;
  if (!qword_1EB2252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2252E0);
  }

  return result;
}

unint64_t sub_1A5BDFAAC()
{
  result = qword_1EB2252E8[0];
  if (!qword_1EB2252E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2252E8);
  }

  return result;
}

uint64_t DetectLensSmudgeRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectLensSmudgeRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F14D0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F14D8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDFA58();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BDFAAC();
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
      *v13 = &type metadata for DetectLensSmudgeRequest.Revision;
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

uint64_t sub_1A5BDFE78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F14C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F14C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BDFA58();
  sub_1A5FD4CDC();
  sub_1A5BDFAAC();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectLensSmudgeRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5BE0A30(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    a2[2].n128_u8[0] = 2;
    a2[2].n128_u64[1] = v5;
  }

  return result;
}

__n128 DetectLensSmudgeRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DetectLensSmudgeRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t static DetectLensSmudgeRequest.supportedRevisions.getter()
{
  if (![objc_opt_self() supportsExecution])
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EB2252D0 != -1)
  {
    swift_once();
  }
}

uint64_t DetectLensSmudgeRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BE0A30();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectLensSmudgeRequest, v3);
}

uint64_t sub_1A5BE0228()
{
  sub_1A5BE0A30();
  result = sub_1A5D4EC2C();
  qword_1EB2252D8 = result;
  return result;
}

uint64_t static DetectLensSmudgeRequest.allSupportedRevisions.getter()
{
  if (qword_1EB2252D0 != -1)
  {
    swift_once();
  }
}

uint64_t DetectLensSmudgeRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t DetectLensSmudgeRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BE0400(uint64_t a1)
{
  v2 = sub_1A5BE0F1C();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BE043C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BE0A30();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BE049C(uint64_t a1)
{
  v2 = sub_1A5B5EAD0();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BE04DC(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t sub_1A5BE0570()
{
  v1 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BE0618@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5B9D1A8(9, 0, 5);
  v3 = sub_1A5B12998();
  v4 = sub_1A5B9D178(v2, v3);
  v5 = sub_1A5B9D1A8(9, 0, 5);
  v6 = sub_1A5B12998();
  sub_1A5B9D178(v5, v6);
  v7 = sub_1A5B9D1A8(9, 0, 5);
  v8 = sub_1A5B12998();
  sub_1A5B9D178(v7, v8);
  v9 = sub_1A5B9D1A8(9, 0, 5);
  v10 = sub_1A5B12998();
  sub_1A5B9D178(v9, v10);
  result = TtTrkRpnNode::config(v4);
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1A5BE072C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EAD0();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5BE0778@<D0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(v5);
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  result = v5[0].n128_f64[0];
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  a1[2].n128_u64[0] = 2;
  a1[2].n128_u64[1] = v2;
  return result;
}

uint64_t DetectLensSmudgeRequest.Revision.isPublic.getter()
{
  v0 = sub_1A5B9D1A8(9, 0, 5);
  v1 = sub_1A5B12998();
  v2 = sub_1A5B9D178(v0, v1);
  v3 = sub_1A5B9D1A8(9, 0, 5);
  v4 = sub_1A5B12998();
  sub_1A5B9D178(v3, v4);
  v5 = sub_1A5B9D1A8(9, 0, 5);
  v6 = sub_1A5B12998();
  sub_1A5B9D178(v5, v6);
  v7 = sub_1A5B9D1A8(9, 0, 5);
  v8 = sub_1A5B12998();
  sub_1A5B9D178(v7, v8);
  TtTrkRpnNode::config(v2);
  return 1;
}

uint64_t sub_1A5BE08A8()
{
  v0 = sub_1A5B9D1A8(9, 0, 5);
  v1 = sub_1A5B12998();
  v2 = sub_1A5B9D178(v0, v1);
  v3 = sub_1A5B9D1A8(9, 0, 5);
  v4 = sub_1A5B12998();
  sub_1A5B9D178(v3, v4);
  v5 = sub_1A5B9D1A8(9, 0, 5);
  v6 = sub_1A5B12998();
  sub_1A5B9D178(v5, v6);
  v7 = sub_1A5B9D1A8(9, 0, 5);
  v8 = sub_1A5B12998();
  sub_1A5B9D178(v7, v8);
  TtTrkRpnNode::config(v2);
  return 1;
}

uint64_t _s6Vision23DetectLensSmudgeRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v10.origin = *a1;
  v10.size = v6;
  v7 = *(a2 + 16);
  v9.origin = *a2;
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

unint64_t sub_1A5BE0A30()
{
  result = qword_1EB1F14E0;
  if (!qword_1EB1F14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F14E0);
  }

  return result;
}

unint64_t sub_1A5BE0A84()
{
  result = qword_1EB1F14E8;
  if (!qword_1EB1F14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F14E8);
  }

  return result;
}

unint64_t sub_1A5BE0ADC(uint64_t a1)
{
  result = sub_1A5B5EAD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE0B04(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66E68();
  result = sub_1A5BE0B34();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BE0B34()
{
  result = qword_1EB1F14F0;
  if (!qword_1EB1F14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F14F0);
  }

  return result;
}

unint64_t sub_1A5BE0B8C()
{
  result = qword_1EB1F14F8;
  if (!qword_1EB1F14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F14F8);
  }

  return result;
}

unint64_t sub_1A5BE0BE4()
{
  result = qword_1EB1F1500;
  if (!qword_1EB1F1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1500);
  }

  return result;
}

unint64_t sub_1A5BE0C80(uint64_t a1)
{
  result = sub_1A5BE0A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE0CA8(uint64_t a1)
{
  result = sub_1A5BE0CD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE0CD0()
{
  result = qword_1EB1F1510;
  if (!qword_1EB1F1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1510);
  }

  return result;
}

unint64_t sub_1A5BE0D68()
{
  result = qword_1EB225B70[0];
  if (!qword_1EB225B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225B70);
  }

  return result;
}

unint64_t sub_1A5BE0DC0()
{
  result = qword_1EB225C80;
  if (!qword_1EB225C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225C80);
  }

  return result;
}

unint64_t sub_1A5BE0E18()
{
  result = qword_1EB225C88[0];
  if (!qword_1EB225C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225C88);
  }

  return result;
}

unint64_t sub_1A5BE0E70()
{
  result = qword_1EB225D10;
  if (!qword_1EB225D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225D10);
  }

  return result;
}

unint64_t sub_1A5BE0EC8()
{
  result = qword_1EB225D18[0];
  if (!qword_1EB225D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225D18);
  }

  return result;
}

unint64_t sub_1A5BE0F1C()
{
  result = qword_1EB1F1518;
  if (!qword_1EB1F1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1518);
  }

  return result;
}

uint64_t sub_1A5BE0F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BE0FD0(uint64_t a1)
{
  v2 = sub_1A5BE1298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE100C(uint64_t a1)
{
  v2 = sub_1A5BE1298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE1048(uint64_t a1)
{
  v2 = sub_1A5BE12EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE1084(uint64_t a1)
{
  v2 = sub_1A5BE12EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateImagePrintRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1528);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE1298();
  sub_1A5FD4CDC();
  sub_1A5BE12EC();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BE1298()
{
  result = qword_1EB225DB0;
  if (!qword_1EB225DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB225DB0);
  }

  return result;
}

unint64_t sub_1A5BE12EC()
{
  result = qword_1EB225DB8[0];
  if (!qword_1EB225DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB225DB8);
  }

  return result;
}

uint64_t GenerateImagePrintRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateImagePrintRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1530);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1538);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE1298();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BE12EC();
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
      *v13 = &type metadata for GenerateImagePrintRequest.Revision;
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

uint64_t sub_1A5BE16B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1528);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE1298();
  sub_1A5FD4CDC();
  sub_1A5BE12EC();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateImagePrintRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(a1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[2].n128_u64[0] = result;
  return result;
}

__n128 GenerateImagePrintRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 GenerateImagePrintRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5BE1900()
{
  sub_1A5BE23EC();
  result = sub_1A5D4EC2C();
  qword_1EB225DA8 = result;
  return result;
}

uint64_t static GenerateImagePrintRequest.allSupportedRevisions.getter()
{
  if (qword_1EB225DA0 != -1)
  {
    swift_once();
  }
}

uint64_t GenerateImagePrintRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BE23EC();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateImagePrintRequest, v3);
}

uint64_t static GenerateImagePrintRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t GenerateImagePrintRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t GenerateImagePrintRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BE1B54(uint64_t a1)
{
  v2 = sub_1A5BE2988();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BE1B90(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BE23EC();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BE1BF0(uint64_t a1)
{
  v2 = sub_1A5B5E2BC();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BE1C54(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E2BC();

  return sub_1A5D4E6C8(a1, a2);
}

void sub_1A5BE1CA0(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeaturePrintObservation();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_5;
    }

LABEL_32:
    v12 = sub_1A5FD484C();
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_30:

    return;
  }

  v48 = MEMORY[0x1E69E7CC0];
  sub_1A5FD47AC();
  v10 = a1 + 32;
  do
  {
    sub_1A5B101D8(v10, v46);
    sub_1A5BE2440();
    swift_dynamicCast();
    sub_1A5FD477C();
    sub_1A5FD47BC();
    sub_1A5FD47CC();
    sub_1A5FD478C();
    v10 += 32;
    --v8;
  }

  while (v8);
  v11 = v48;
  if (v48 >> 62)
  {
    goto LABEL_32;
  }

LABEL_5:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_30;
  }

LABEL_6:
  v46[0] = v9;
  sub_1A5BE21F4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v39 = v11;
    v40 = v11 & 0xC000000000000001;
    v14 = v46[0];
    v36[1] = v2;
    v37 = v11 & 0xFFFFFFFFFFFFFF8;
    v38 = v12;
    while (!__OFADD__(v13, 1))
    {
      if (v40)
      {
        v15 = MEMORY[0x1AC554EE0](v13, v11);
      }

      else
      {
        if (v13 >= *(v37 + 16))
        {
          goto LABEL_37;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 imageprint];
      v18 = [v17 descriptor];

      v19 = [v18 rawColorGaborDescriptor];
      if (!v19)
      {
        goto LABEL_41;
      }

      v20 = v19;
      v21 = sub_1A5FD35DC();
      v23 = v22;

      v24 = v23 >> 62;
      v45 = v13 + 1;
      if ((v23 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v27 = *(v21 + 16);
          v26 = *(v21 + 24);
          v25 = v26 - v27;
          if (__OFSUB__(v26, v27))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else if (v24)
      {
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          goto LABEL_39;
        }

        v25 = HIDWORD(v21) - v21;
      }

      else
      {
        v25 = BYTE6(v23);
      }

      LOBYTE(v48) = 2;
      v28 = sub_1A5C0F7EC();
      if (!v28)
      {
        goto LABEL_35;
      }

      if (v25 == 0x8000000000000000 && v28 == -1)
      {
        goto LABEL_36;
      }

      LOBYTE(v47) = 2;
      v29 = v25 / v28;
      v30 = [v16 uuid];
      v31 = v43;
      sub_1A5FD365C();

      [v16 confidence];
      LOWORD(v48) = 448;
      v32 = v41;
      sub_1A5B10824(v21, v23, v29, &v47, v31, v44, &v48, v41, v33);

      v46[0] = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1A5BE21F4(v34 > 1, v35 + 1, 1);
        v14 = v46[0];
      }

      *(v14 + 16) = v35 + 1;
      sub_1A5BE248C(v32, v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35);
      ++v13;
      v11 = v39;
      if (v45 == v38)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1A5BE211C(uint64_t a1)
{
  v2 = sub_1A5FD3D5C();
  v4 = v3;
  v8[3] = MEMORY[0x1E69E6530];
  v8[0] = 0;
  v5 = (*(*a1 + 208))(v7);
  sub_1A5B0DE30(v8, v2, v4);
  return v5(v7, 0);
}

size_t sub_1A5BE21F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5BE2214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A5BE2214(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1588);
  v10 = *(type metadata accessor for FeaturePrintObservation() - 8);
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
  v15 = *(type metadata accessor for FeaturePrintObservation() - 8);
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

unint64_t sub_1A5BE23EC()
{
  result = qword_1EB1F1540;
  if (!qword_1EB1F1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1540);
  }

  return result;
}

unint64_t sub_1A5BE2440()
{
  result = qword_1EB1F1548;
  if (!qword_1EB1F1548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F1548);
  }

  return result;
}

uint64_t sub_1A5BE248C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturePrintObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5BE24F0()
{
  result = qword_1EB1F1550;
  if (!qword_1EB1F1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1550);
  }

  return result;
}

unint64_t sub_1A5BE2548(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6643C();
  result = sub_1A5BE2578();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BE2578()
{
  result = qword_1EB1F1558;
  if (!qword_1EB1F1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1558);
  }

  return result;
}

unint64_t sub_1A5BE25D0()
{
  result = qword_1EB1F1560;
  if (!qword_1EB1F1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1560);
  }

  return result;
}

unint64_t sub_1A5BE2628()
{
  result = qword_1EB1F1568;
  if (!qword_1EB1F1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1568);
  }

  return result;
}

unint64_t sub_1A5BE267C(uint64_t a1)
{
  result = sub_1A5B5E2BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE26EC(uint64_t a1)
{
  result = sub_1A5BE23EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE2714(uint64_t a1)
{
  result = sub_1A5BE273C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE273C()
{
  result = qword_1EB1F1578;
  if (!qword_1EB1F1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1578);
  }

  return result;
}

unint64_t sub_1A5BE27D4()
{
  result = qword_1EB226640[0];
  if (!qword_1EB226640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB226640);
  }

  return result;
}

unint64_t sub_1A5BE282C()
{
  result = qword_1EB226750;
  if (!qword_1EB226750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB226750);
  }

  return result;
}

unint64_t sub_1A5BE2884()
{
  result = qword_1EB226758[0];
  if (!qword_1EB226758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB226758);
  }

  return result;
}

unint64_t sub_1A5BE28DC()
{
  result = qword_1EB2267E0;
  if (!qword_1EB2267E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2267E0);
  }

  return result;
}

unint64_t sub_1A5BE2934()
{
  result = qword_1EB2267E8[0];
  if (!qword_1EB2267E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2267E8);
  }

  return result;
}

unint64_t sub_1A5BE2988()
{
  result = qword_1EB1F1580;
  if (!qword_1EB1F1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1580);
  }

  return result;
}

uint64_t sub_1A5BE29DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BE2A3C(uint64_t a1)
{
  v2 = sub_1A5BE2D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE2A78(uint64_t a1)
{
  v2 = sub_1A5BE2D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE2AB4(uint64_t a1)
{
  v2 = sub_1A5BE2D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE2AF0(uint64_t a1)
{
  v2 = sub_1A5BE2D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectTextRectanglesRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1598);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE2D04();
  sub_1A5FD4CDC();
  sub_1A5BE2D58();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BE2D04()
{
  result = qword_1EB226890;
  if (!qword_1EB226890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB226890);
  }

  return result;
}

unint64_t sub_1A5BE2D58()
{
  result = qword_1EB226898;
  if (!qword_1EB226898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB226898);
  }

  return result;
}

uint64_t DetectTextRectanglesRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectTextRectanglesRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F15A0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F15A8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE2D04();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BE2D58();
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
      *v13 = &type metadata for DetectTextRectanglesRequest.Revision;
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

uint64_t sub_1A5BE3124(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1590);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1598);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE2D04();
  sub_1A5FD4CDC();
  sub_1A5BE2D58();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectTextRectanglesRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LOBYTE(v8[0]) = 0;
  static NormalizedRect.fullImage.getter((v8 + 8));
  BYTE8(v9) = 0;
  *&v10 = 10;
  WORD4(v10) = 257;
  BYTE10(v10) = 0;
  v11 = 0uLL;
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v12 = result;
  if (v3 == 1 && (sub_1A5BE4914(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v5 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v5;
    *(a2 + 64) = v11;
    *(a2 + 80) = v12;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
  }

  return result;
}

__n128 DetectTextRectanglesRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectTextRectanglesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5BE3430()
{
  sub_1A5BE4914();
  result = sub_1A5D4EB30();
  qword_1EB226878 = result;
  return result;
}

size_t DetectTextRectanglesRequest.supportedComputeStageDevices.getter()
{
  v16 = sub_1A5FD3B5C();
  v0 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  v4 = inited + 32;
  v5 = [objc_opt_self() allCPUComputeDevices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F0140);
  v6 = sub_1A5FD3F4C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *(inited + 40) = v10;
    v13 = sub_1A5B54118(inited);
    swift_setDeallocating();
    sub_1A5B5420C(v4);
    return v13;
  }

  v7 = sub_1A5FD484C();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1A5B53F20(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = inited + 32;
    v15 = inited;
    v9 = 0;
    v10 = v17;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1AC554EE0](v9, v6);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1A5FD3B4C();
      v17 = v10;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A5B53F20(v11 > 1, v12 + 1, 1);
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v12 + 1;
      (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v12, v2, v16);
    }

    while (v7 != v9);

    v4 = v14;
    inited = v15;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t DetectTextRectanglesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BE4914();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectTextRectanglesRequest, v3);
}

uint64_t sub_1A5BE3770()
{
  sub_1A5BE4914();
  result = sub_1A5D4EC2C();
  qword_1EB226888 = result;
  return result;
}

uint64_t sub_1A5BE37E8()
{
  if (*v0)
  {
    return 0x6143746964657263;
  }

  else
  {
    return 0x6C6172656E6567;
  }
}

uint64_t sub_1A5BE3830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6143746964657263 && a2 == 0xEF65726177416472)
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

uint64_t sub_1A5BE3914(uint64_t a1)
{
  v2 = sub_1A5BE4968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE3950(uint64_t a1)
{
  v2 = sub_1A5BE4968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE398C(uint64_t a1)
{
  v2 = sub_1A5BE49BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE39C8(uint64_t a1)
{
  v2 = sub_1A5BE49BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE3A04(uint64_t a1)
{
  v2 = sub_1A5BE4A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE3A40(uint64_t a1)
{
  v2 = sub_1A5BE4A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectTextRectanglesRequest.Algorithm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F15C8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F15D0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F15D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE4968();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BE49BC();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BE4A10();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t DetectTextRectanglesRequest.Algorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t DetectTextRectanglesRequest.Algorithm.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F15E0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F15E8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F15F0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE4968();
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
    *v21 = &type metadata for DetectTextRectanglesRequest.Algorithm;
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
    sub_1A5BE49BC();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BE4A10();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t DetectTextRectanglesRequest.additionalCharacters.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DetectTextRectanglesRequest.additionalCharacters.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t DetectTextRectanglesRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  sub_1A5FD4C3C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  MEMORY[0x1AC555420](v3);
  MEMORY[0x1AC555420](v4);
  sub_1A5FD4C3C();
  sub_1A5FD4C3C();
  sub_1A5BE4A64();
  sub_1A5FD3CBC();
  sub_1A5FD4C3C();
  if (v5)
  {
    sub_1A5FD3DBC();
  }

  return sub_1A5B0ED0C(a1, v6);
}

uint64_t DetectTextRectanglesRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectTextRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BE454C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BE4914();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BE45AC(uint64_t a1)
{
  v2 = sub_1A5B5E9E8();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BE45E8()
{
  sub_1A5FD4C1C();
  DetectTextRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BE462C()
{
  sub_1A5FD4C1C();
  DetectTextRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

double sub_1A5BE466C@<D0>(uint64_t a1@<X8>)
{
  LOBYTE(v5[0]) = 0;
  static NormalizedRect.fullImage.getter((v5 + 8));
  BYTE8(v6) = 0;
  *&v7 = 10;
  WORD4(v7) = 257;
  BYTE10(v7) = 0;
  v8 = 0uLL;
  v9 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 80) = v9;
  v2 = v7;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  *(a1 + 64) = v8;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1A5BE4704(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E9E8();

  return sub_1A5D4E6C8(a1, a2);
}

uint64_t _s6Vision27DetectTextRectanglesRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[58];
  v4 = a2[58];
  v17 = *(a2 + 8);
  v18 = *(a1 + 8);
  v19 = *(a2 + 9);
  v20 = *(a1 + 9);
  v15 = *(a2 + 10);
  v16 = *(a1 + 10);
  v5 = a2[57];
  v6 = a2[56];
  v7 = *(a2 + 6);
  v8 = a2[40];
  v9 = a1[57];
  v10 = a1[56];
  v11 = *(a1 + 6);
  v12 = a1[40];
  v13 = *(a1 + 24);
  v22.origin = *(a1 + 8);
  v22.size = v13;
  v14 = *(a2 + 24);
  v21.origin = *(a2 + 8);
  v21.size = v14;
  if (!static NormalizedRect.== infix(_:_:)(&v22, &v21))
  {
    return 0;
  }

  if ((v8 ^ v12))
  {
    return 0;
  }

  if (v11 != v7)
  {
    return 0;
  }

  if ((v6 ^ v10))
  {
    return 0;
  }

  if ((v5 ^ v9))
  {
    return 0;
  }

  LOBYTE(v22.origin.x) = v3;
  LOBYTE(v21.origin.x) = v4;
  if ((static TextRecognitionCharacterSet.== infix(_:_:)(&v22, &v21) & 1) == 0)
  {
    return 0;
  }

  if (v20)
  {
    if (v19 && (v18 == v17 && v20 == v19 || (sub_1A5FD4B0C() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v19)
  {
    return 0;
  }

LABEL_16:

  return sub_1A5B0D3C4(v16, v15);
}

unint64_t sub_1A5BE4914()
{
  result = qword_1EB1F15B8;
  if (!qword_1EB1F15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F15B8);
  }

  return result;
}

unint64_t sub_1A5BE4968()
{
  result = qword_1EB2268A0;
  if (!qword_1EB2268A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2268A0);
  }

  return result;
}

unint64_t sub_1A5BE49BC()
{
  result = qword_1EB2268A8;
  if (!qword_1EB2268A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2268A8);
  }

  return result;
}

unint64_t sub_1A5BE4A10()
{
  result = qword_1EB2268B0[0];
  if (!qword_1EB2268B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2268B0);
  }

  return result;
}

unint64_t sub_1A5BE4A64()
{
  result = qword_1EB1F1600;
  if (!qword_1EB1F1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1600);
  }

  return result;
}

unint64_t sub_1A5BE4AB8()
{
  result = qword_1EB1F1608;
  if (!qword_1EB1F1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1608);
  }

  return result;
}

unint64_t sub_1A5BE4B14()
{
  result = qword_1EB1F1610;
  if (!qword_1EB1F1610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1610);
  }

  return result;
}

unint64_t sub_1A5BE4B7C()
{
  result = qword_1EB1F1620;
  if (!qword_1EB1F1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1620);
  }

  return result;
}

unint64_t sub_1A5BE4BD0(uint64_t a1)
{
  result = sub_1A5B5E9E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE4BF8(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66D18();
  result = sub_1A5BE4C28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BE4C28()
{
  result = qword_1EB1F1638;
  if (!qword_1EB1F1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1638);
  }

  return result;
}

unint64_t sub_1A5BE4C80()
{
  result = qword_1EB1F1640;
  if (!qword_1EB1F1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1640);
  }

  return result;
}

unint64_t sub_1A5BE4CD8()
{
  result = qword_1EB1F1648;
  if (!qword_1EB1F1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1648);
  }

  return result;
}

unint64_t sub_1A5BE4D74(uint64_t a1)
{
  result = sub_1A5BE4914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE4D9C(uint64_t a1)
{
  result = sub_1A5BE4DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE4DC4()
{
  result = qword_1EB1F1660;
  if (!qword_1EB1F1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1660);
  }

  return result;
}

unint64_t sub_1A5BE4E9C()
{
  result = qword_1EB2273C0[0];
  if (!qword_1EB2273C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2273C0);
  }

  return result;
}

unint64_t sub_1A5BE4EF4()
{
  result = qword_1EB2277D0[0];
  if (!qword_1EB2277D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2277D0);
  }

  return result;
}

unint64_t sub_1A5BE4F4C()
{
  result = qword_1EB2278E0;
  if (!qword_1EB2278E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2278E0);
  }

  return result;
}

unint64_t sub_1A5BE4FA4()
{
  result = qword_1EB2278E8[0];
  if (!qword_1EB2278E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2278E8);
  }

  return result;
}

unint64_t sub_1A5BE4FFC()
{
  result = qword_1EB227970;
  if (!qword_1EB227970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227970);
  }

  return result;
}

unint64_t sub_1A5BE5054()
{
  result = qword_1EB227978;
  if (!qword_1EB227978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227978);
  }

  return result;
}

unint64_t sub_1A5BE50AC()
{
  result = qword_1EB227A00;
  if (!qword_1EB227A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227A00);
  }

  return result;
}

unint64_t sub_1A5BE5104()
{
  result = qword_1EB227A08[0];
  if (!qword_1EB227A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB227A08);
  }

  return result;
}

unint64_t sub_1A5BE515C()
{
  result = qword_1EB227A90;
  if (!qword_1EB227A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227A90);
  }

  return result;
}

unint64_t sub_1A5BE51B4()
{
  result = qword_1EB227A98[0];
  if (!qword_1EB227A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB227A98);
  }

  return result;
}

unint64_t sub_1A5BE520C()
{
  result = qword_1EB227B20;
  if (!qword_1EB227B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227B20);
  }

  return result;
}

unint64_t sub_1A5BE5264()
{
  result = qword_1EB227B28[0];
  if (!qword_1EB227B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB227B28);
  }

  return result;
}

uint64_t sub_1A5BE52B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BE5318(uint64_t a1)
{
  v2 = sub_1A5BE55E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE5354(uint64_t a1)
{
  v2 = sub_1A5BE55E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE5390(uint64_t a1)
{
  v2 = sub_1A5BE5634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE53CC(uint64_t a1)
{
  v2 = sub_1A5BE5634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateHumanAttributesSegmentationRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE55E0();
  sub_1A5FD4CDC();
  sub_1A5BE5634();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BE55E0()
{
  result = qword_1EB227BC0;
  if (!qword_1EB227BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227BC0);
  }

  return result;
}

unint64_t sub_1A5BE5634()
{
  result = qword_1EB227BC8;
  if (!qword_1EB227BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227BC8);
  }

  return result;
}

uint64_t GenerateHumanAttributesSegmentationRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateHumanAttributesSegmentationRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16B0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16B8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE55E0();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BE5634();
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
      *v13 = &type metadata for GenerateHumanAttributesSegmentationRequest.Revision;
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

uint64_t sub_1A5BE5A00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE55E0();
  sub_1A5FD4CDC();
  sub_1A5BE5634();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateHumanAttributesSegmentationRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1278226488;
  *(a1 + 4) = 256;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1A5BE5C3C(uint64_t a1)
{
  v2 = sub_1A5BE6D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE5C78(uint64_t a1)
{
  v2 = sub_1A5BE6D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE5CB4(uint64_t a1)
{
  v2 = sub_1A5BE6CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE5CF0(uint64_t a1)
{
  v2 = sub_1A5BE6CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BE5D2C(uint64_t a1)
{
  v2 = sub_1A5BE6C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE5D68(uint64_t a1)
{
  v2 = sub_1A5BE6C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateHumanAttributesSegmentationRequest.QualityLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16C0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16C8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16D0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE6C74();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BE6CC8();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BE6D1C();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t GenerateHumanAttributesSegmentationRequest.QualityLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GenerateHumanAttributesSegmentationRequest.QualityLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16D8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16E0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F16E8);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BE6C74();
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
    *v21 = &type metadata for GenerateHumanAttributesSegmentationRequest.QualityLevel;
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
    sub_1A5BE6CC8();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BE6D1C();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}