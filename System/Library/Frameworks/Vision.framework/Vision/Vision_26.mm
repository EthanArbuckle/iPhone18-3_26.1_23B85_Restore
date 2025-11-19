uint64_t sub_1A5D53B2C(uint64_t a1)
{
  v2 = sub_1A5D545E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageExposureObservation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v13 = *(v3 - 8);
  v14 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D545E0();
  sub_1A5FD4CDC();
  v16 = 0;
  sub_1A5FD4A3C();
  if (!v1)
  {
    v15 = 1;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v10 = type metadata accessor for ImageExposureObservation();
    v11 = sub_1A5D54810(&qword_1EB1F62B0, type metadata accessor for ImageExposureObservation);
    sub_1A5BBD46C(v5, v10, &off_1F1970B68, v11);
    (*(v13 + 8))(v5, v14);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ImageExposureObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62C8);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ImageExposureObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D545E0();
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
  sub_1A5D54810(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
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
  sub_1A5D54634(v27, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A5D54698(v27);
}

void sub_1A5D54368(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 exposureScore];
  if (v8)
  {
    v9 = v8;
    [v8 floatValue];
    v11 = v10;

    v12 = a1;
    v13 = [v12 uuid];
    v14 = type metadata accessor for ImageExposureObservation();
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

uint64_t _s6Vision24ImageExposureObservationV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for ImageExposureObservation();
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

unint64_t sub_1A5D545E0()
{
  result = qword_1EB283CE0[0];
  if (!qword_1EB283CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB283CE0);
  }

  return result;
}

uint64_t sub_1A5D54634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageExposureObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5D54698(uint64_t a1)
{
  v2 = type metadata accessor for ImageExposureObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5D546F4(void *a1)
{
  a1[1] = sub_1A5D54810(&qword_1EB1EFA00, type metadata accessor for ImageExposureObservation);
  a1[2] = sub_1A5D54810(&qword_1EB1F62D0, type metadata accessor for ImageExposureObservation);
  a1[3] = sub_1A5D54810(&qword_1EB1F62D8, type metadata accessor for ImageExposureObservation);
  result = sub_1A5D54810(&qword_1EB1F62B8, type metadata accessor for ImageExposureObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5D54810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5D54858(uint64_t a1)
{
  result = sub_1A5D54810(&qword_1EB1F62B0, type metadata accessor for ImageExposureObservation);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D548EC()
{
  result = qword_1EB284180[0];
  if (!qword_1EB284180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB284180);
  }

  return result;
}

unint64_t sub_1A5D54944()
{
  result = qword_1EB284290;
  if (!qword_1EB284290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB284290);
  }

  return result;
}

unint64_t sub_1A5D5499C()
{
  result = qword_1EB284298[0];
  if (!qword_1EB284298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB284298);
  }

  return result;
}

uint64_t sub_1A5D54A00(uint64_t a1)
{
  v2 = sub_1A5D54D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D54A3C(uint64_t a1)
{
  v2 = sub_1A5D54D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D54A78(uint64_t a1)
{
  v2 = sub_1A5D54CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D54AB4(uint64_t a1)
{
  v2 = sub_1A5D54CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeAnimalFacesRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D54CC8();
  sub_1A5FD4CDC();
  sub_1A5D54D1C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5D54CC8()
{
  result = qword_1EB284320;
  if (!qword_1EB284320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB284320);
  }

  return result;
}

unint64_t sub_1A5D54D1C()
{
  result = qword_1EB284328[0];
  if (!qword_1EB284328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB284328);
  }

  return result;
}

uint64_t RecognizeAnimalFacesRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeAnimalFacesRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62F8);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6300);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D54CC8();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5D54D1C();
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
      *v13 = &type metadata for RecognizeAnimalFacesRequest.Revision;
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

uint64_t sub_1A5D550E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F62F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D54CC8();
  sub_1A5FD4CDC();
  sub_1A5D54D1C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

Vision::RecognizeAnimalFacesRequest::Animal_optional __swiftcall RecognizeAnimalFacesRequest.Animal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RecognizeAnimalFacesRequest.Animal.rawValue.getter()
{
  if (*v0)
  {
    return 0x65636146746143;
  }

  else
  {
    return 0x65636146676F44;
  }
}

uint64_t sub_1A5D55358@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5FD48AC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A5D553B8(uint64_t *a1@<X8>)
{
  v2 = 0x65636146676F44;
  if (*v1)
  {
    v2 = 0x65636146746143;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1A5D553F0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65636146746143;
  }

  else
  {
    v2 = 0x65636146676F44;
  }

  if (*a2)
  {
    v3 = 0x65636146746143;
  }

  else
  {
    v3 = 0x65636146676F44;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A5FD4B0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A5D55528()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D555A0()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5D555FC()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

unint64_t RecognizeAnimalFacesRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(a1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[2].n128_u64[0] = result;
  return result;
}

void RecognizeAnimalFacesRequest.supportedAnimals.getter()
{
  v0 = sub_1A5D55DBC();
  sub_1A5BD9578(0, &type metadata for RecognizeAnimalFacesRequest, v0);

  sub_1A5B16F58(0, &qword_1EB1F6310);
  if (swift_dynamicCastMetatype())
  {
    v1 = [swift_getObjCClassFromMetadata() knownAnimalFaceIdentifiers];
    v2 = sub_1A5FD3F4C();

    v3 = 0;
    v4 = *(v2 + 16);
    v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v6 = v2 + 40 + 16 * v3;
    while (1)
    {
      if (v4 == v3)
      {

        return;
      }

      if (v3 >= *(v2 + 16))
      {
        break;
      }

      ++v3;

      v7 = sub_1A5FD48AC();

      if (!v7)
      {
        v8 = 0;
        goto LABEL_12;
      }

      v6 += 16;
      if (v7 == 1)
      {
        v8 = 1;
LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1A5D55CC8(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1A5D55CC8((v9 > 1), v10 + 1, 1, v5);
        }

        *(v5 + 2) = v10 + 1;
        v5[v10 + 32] = v8;
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

__n128 RecognizeAnimalFacesRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 RecognizeAnimalFacesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t RecognizeAnimalFacesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5D55E10();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeAnimalFacesRequest, v3);
}

uint64_t static RecognizeAnimalFacesRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t RecognizeAnimalFacesRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t RecognizeAnimalFacesRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D55A84(uint64_t a1)
{
  v2 = sub_1A5D55DBC();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5D55AC0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5D55E10();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5D55B20(uint64_t a1)
{
  v2 = sub_1A5B5E214();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5D55B5C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E214();

  return sub_1A5D4E6C8(a1, a2);
}

id sub_1A5D55C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = sub_1A5D55E64();
    return sub_1A5D23E14(a1, a2, a3, v7);
  }

  return result;
}

char *sub_1A5D55CC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6368);
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

unint64_t sub_1A5D55DBC()
{
  result = qword_1EB1F6308;
  if (!qword_1EB1F6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6308);
  }

  return result;
}

unint64_t sub_1A5D55E10()
{
  result = qword_1EB1F6318;
  if (!qword_1EB1F6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6318);
  }

  return result;
}

unint64_t sub_1A5D55E64()
{
  result = qword_1EB1F6320;
  if (!qword_1EB1F6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6320);
  }

  return result;
}

unint64_t sub_1A5D55EB8()
{
  result = qword_1EB1F6328;
  if (!qword_1EB1F6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6328);
  }

  return result;
}

unint64_t sub_1A5D55F14()
{
  result = qword_1EB1F6330;
  if (!qword_1EB1F6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6330);
  }

  return result;
}

unint64_t sub_1A5D55F68(uint64_t a1)
{
  result = sub_1A5B5E214();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D55FBC()
{
  result = qword_1EB1F6338;
  if (!qword_1EB1F6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6338);
  }

  return result;
}

unint64_t sub_1A5D56014()
{
  result = qword_1EB1F6340;
  if (!qword_1EB1F6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6340);
  }

  return result;
}

unint64_t sub_1A5D5606C()
{
  result = qword_1EB1F6348;
  if (!qword_1EB1F6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6348);
  }

  return result;
}

uint64_t sub_1A5D560EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5D56128()
{
  result = qword_1EB1F6350;
  if (!qword_1EB1F6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6350);
  }

  return result;
}

unint64_t sub_1A5D5617C(uint64_t a1)
{
  result = sub_1A5D55E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D561A4(uint64_t a1)
{
  result = sub_1A5D561CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5D561CC()
{
  result = qword_1EB1F6358;
  if (!qword_1EB1F6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6358);
  }

  return result;
}

unint64_t sub_1A5D56274()
{
  result = qword_1EB284EB0[0];
  if (!qword_1EB284EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB284EB0);
  }

  return result;
}

unint64_t sub_1A5D562CC()
{
  result = qword_1EB284FC0;
  if (!qword_1EB284FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB284FC0);
  }

  return result;
}

unint64_t sub_1A5D56324()
{
  result = qword_1EB284FC8[0];
  if (!qword_1EB284FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB284FC8);
  }

  return result;
}

unint64_t sub_1A5D5637C()
{
  result = qword_1EB285050;
  if (!qword_1EB285050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB285050);
  }

  return result;
}

unint64_t sub_1A5D563D4()
{
  result = qword_1EB285058[0];
  if (!qword_1EB285058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB285058);
  }

  return result;
}

unint64_t sub_1A5D56428()
{
  result = qword_1EB1F6360;
  if (!qword_1EB1F6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F6360);
  }

  return result;
}

uint64_t SmudgeObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SmudgeObservation()
{
  result = qword_1EB285470;
  if (!qword_1EB285470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SmudgeObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SmudgeObservation() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t SmudgeObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SmudgeObservation();
  *a1 = *(v1 + *(result + 28));
  return result;
}

unint64_t SmudgeObservation.description.getter()
{
  sub_1A5FD46AC();

  v0 = type metadata accessor for SmudgeObservation();
  v1 = sub_1A5D57570(&qword_1EB1F6370, type metadata accessor for SmudgeObservation);
  v2 = sub_1A5C29408(v0, &off_1F1971070, v1);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t SmudgeObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for SmudgeObservation();
  sub_1A5D57570(&qword_1EB1F6378, type metadata accessor for SmudgeObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D56744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5D57570(&qword_1EB1F6370, type metadata accessor for SmudgeObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

unint64_t sub_1A5D567C0(uint64_t a1)
{
  sub_1A5FD46AC();

  v2 = sub_1A5D57570(&qword_1EB1F6370, type metadata accessor for SmudgeObservation);
  v3 = sub_1A5C29408(a1, &off_1F1971070, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1A5D568C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1A5D56950(uint64_t a1)
{
  v2 = sub_1A5D57340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D5698C(uint64_t a1)
{
  v2 = sub_1A5D57340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SmudgeObservation.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v2 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6380);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D57340();
  sub_1A5FD4CDC();
  sub_1A5B0A360();
  sub_1A5FD49EC();
  v9 = type metadata accessor for SmudgeObservation();
  v10 = sub_1A5D57570(&qword_1EB1F6370, type metadata accessor for SmudgeObservation);
  sub_1A5BBD46C(v4, v9, &off_1F1971070, v10);
  (*(v2 + 8))(v4, v13);
  return (*(v6 + 8))(v8, v5);
}

uint64_t SmudgeObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1A5FD367C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6388);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for SmudgeObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D57340();
  v13 = v42;
  sub_1A5FD4CCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v10;
  v34 = v12;
  v42 = a1;
  v15 = v37;
  v14 = v38;
  v17 = v39;
  v16 = v40;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v31 = v9;
  v32 = v7;
  LOBYTE(v46) = 0;
  sub_1A5D57570(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  v18 = v34;
  (*(v17 + 32))(v34, v14, v16);
  LOBYTE(v46) = 1;
  sub_1A5FD495C();
  *&v18[*(v33 + 20)] = v19;
  v45 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v20 = v15;
  v21 = v42;
  v22 = v36;
  v23 = v33;
  *&v34[*(v33 + 28)] = v46;
  v24 = v41;
  sub_1A5BBDB04(v43);
  (*(v22 + 8))(v24, v5);
  (*(v20 + 8))(v31, v32);
  v26 = v34;
  v25 = v35;
  v27 = &v34[*(v23 + 24)];
  v28 = v43[1];
  *v27 = v43[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v43[2];
  v27[48] = v44;
  sub_1A5D57394(v26, v25);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1A5D573F8(v26);
}

__n128 sub_1A5D57164@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, int *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a1;
  v10 = [v9 uuid];
  sub_1A5FD365C();

  [v9 confidence];
  v12 = v11;

  v13 = a4[6];
  *(a5 + a4[5]) = v12;
  v14 = a5 + v13;
  *(v14 + 48) = *(a3 + 48);
  result = *(a3 + 16);
  v16 = *(a3 + 32);
  *(v14 + 16) = result;
  *(v14 + 32) = v16;
  *v14 = *a3;
  *(a5 + a4[7]) = v8;
  return result;
}

uint64_t _s6Vision17SmudgeObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A5FD364C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SmudgeObservation();
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if ((v6 & 1) == 0)
  {
    if (*(v7 + 48))
    {
      return 0;
    }

    v8 = v4;
    v9 = sub_1A5FD42BC();
    v4 = v8;
    if ((v9 & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    v10 = v4[7];
    v11 = *(a1 + v10);
    v12 = *(a2 + v10);
    if (v11 <= 0xFFF7)
    {
      if (v12 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (*(v7 + 48))
  {
    goto LABEL_8;
  }

  return 0;
}

unint64_t sub_1A5D57340()
{
  result = qword_1EB2850E0[0];
  if (!qword_1EB2850E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2850E0);
  }

  return result;
}

uint64_t sub_1A5D57394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmudgeObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5D573F8(uint64_t a1)
{
  v2 = type metadata accessor for SmudgeObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5D57454(void *a1)
{
  a1[1] = sub_1A5D57570(&qword_1EB1EFAE0, type metadata accessor for SmudgeObservation);
  a1[2] = sub_1A5D57570(&qword_1EB1F6390, type metadata accessor for SmudgeObservation);
  a1[3] = sub_1A5D57570(&qword_1EB1F6398, type metadata accessor for SmudgeObservation);
  result = sub_1A5D57570(&qword_1EB1F6378, type metadata accessor for SmudgeObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5D57570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5D575B8(uint64_t a1)
{
  result = sub_1A5D57570(&qword_1EB1F6370, type metadata accessor for SmudgeObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5D57638()
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

unint64_t sub_1A5D57714()
{
  result = qword_1EB285580[0];
  if (!qword_1EB285580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB285580);
  }

  return result;
}

unint64_t sub_1A5D5776C()
{
  result = qword_1EB285690;
  if (!qword_1EB285690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB285690);
  }

  return result;
}

unint64_t sub_1A5D577C4()
{
  result = qword_1EB285698[0];
  if (!qword_1EB285698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB285698);
  }

  return result;
}

void *sub_1A5D57818(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  result[3] = MEMORY[0x1E69E7CC0];
  result[4] = v3;
  result[2] = a1;
  return result;
}

uint64_t sub_1A5D57858(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 96))(&v9, v3, v4);
  if (v10)
  {
    sub_1A5B063D4(&v9, v11);
    (*(*v1 + 120))(v11, a1);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_1A5B10168(&v9, &qword_1EB1EF4E8);
    sub_1A5D59FEC(a1);
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 48))(a1, v1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1A5D57A18(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1A5D59FEC(a2);
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 48))(a2, v2, ObjectType, v8);
  (*(*v2 + 112))(a1);
  v10 = *(v8 + 8);
  swift_unknownObjectRetain();
  sub_1A5D5A83C(a1, v6, v3, v11, v10);
  return swift_unknownObjectRelease_n();
}

uint64_t sub_1A5D57BA0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63A8);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v29 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF938);
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v29 - v5;
  swift_beginAccess();
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);

  v38 = v1;
  result = swift_beginAccess();
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v37 = v6 + 32;
    v11 = MEMORY[0x1E69E7CC0];
    while (v10 < *(v6 + 16))
    {
      v12 = *(v37 + 16 * v10++);
      v13 = *(v38 + 24);
      v14 = *(v13 + 16);
      v39 = v12;
      if (v14)
      {
        v15 = v13 + 32;
        v16 = v12;
        swift_unknownObjectRetain();

        v17 = 0;
        while (1)
        {
          if (v17 >= *(v13 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          sub_1A5D5A948(v15, v40);
          v18 = v41;
          swift_unknownObjectRetain();
          sub_1A5D5A980(v40);
          result = swift_unknownObjectRelease();
          if (v18 == v16)
          {
            break;
          }

          ++v17;
          v15 += 56;
          if (v14 == v17)
          {

            goto LABEL_11;
          }
        }

        swift_unknownObjectRelease();

        if (v10 == v9)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_unknownObjectRetain();
LABEL_11:
        result = swift_isUniquelyReferenced_nonNull_native();
        v42 = v11;
        if ((result & 1) == 0)
        {
          result = sub_1A5D5A24C(0, *(v11 + 16) + 1, 1);
          v11 = v42;
        }

        v19 = v39;
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1A5D5A24C((v20 > 1), v21 + 1, 1);
          v19 = v39;
          v11 = v42;
        }

        *(v11 + 16) = v21 + 1;
        *(v11 + 16 * v21 + 32) = v19;
        if (v10 == v9)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_21:
    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_19:

    MEMORY[0x1EEE9AC00](v22);
    *(&v29 - 4) = v11;
    *(&v29 - 3) = v23;
    *(&v29 - 2) = v24;
    type metadata accessor for VisionResult(0);
    (*(v32 + 104))(v31, *MEMORY[0x1E69E8650], v33);
    v25 = v29;
    sub_1A5FD411C();

    v26 = v34;
    v27 = v30;
    v28 = v35;
    (*(v34 + 16))(v30, v25, v35);
    sub_1A5B60B10(v27);
    return (*(v26 + 8))(v25, v28);
  }

  return result;
}

uint64_t sub_1A5D57FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1A5FD40AC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  *(v17 + 6) = a4;
  (*(v9 + 32))(&v17[v16], v11, v8);

  sub_1A5BB62AC(0, 0, v14, &unk_1A6036760, v17);
}

uint64_t sub_1A5D581FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A5D58220, 0, 0);
}

uint64_t sub_1A5D58220()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B8);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1A5D5831C;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1A5D5831C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A5D58434, 0, 0);
}

uint64_t sub_1A5D58434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B0);
  sub_1A5FD40CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5D584A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[28] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63C0);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = *(type metadata accessor for VisionResult(0) - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63C8);
  v6[42] = v8;
  v6[43] = *(v8 - 8);
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5D58698, 0, 0);
}

uint64_t sub_1A5D58698()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = **(v0 + 224);
    v4 = (v1 + 32);
    v5 = sub_1A5FD40AC();
    v6 = *(v5 - 8);
    v8 = *(v6 + 56);
    v6 += 56;
    v7 = v8;
    v24 = (v6 - 8);
    v25 = v8;
    v26 = v3;
    v23 = (v6 - 48);
    while (1)
    {
      v9 = *(v0 + 240);
      v27 = *v4;
      v7(*(v0 + 328), 1, 1, v5);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v27;
      *(v10 + 48) = v9;
      swift_unknownObjectRetain_n();

      if (swift_taskGroup_addPending())
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_4:
      sub_1A5B10168(*(v0 + 328), &unk_1EB1F30E0);
      ++v4;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v12 = *(v0 + 320);
    sub_1A5BB8B94(*(v0 + 328), v12);
    v13 = (*v24)(v12, 1, v5);
    v14 = *(v0 + 320);
    if (v13 == 1)
    {
      sub_1A5B10168(*(v0 + 320), &unk_1EB1F30E0);
      if (*v11)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1A5FD404C();
        v17 = v16;
        swift_unknownObjectRelease();
LABEL_11:
        v18 = swift_allocObject();
        *(v18 + 16) = &unk_1A60367A0;
        *(v18 + 24) = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B8);
        v19 = v17 | v15;
        if (v17 | v15)
        {
          v19 = v0 + 112;
          *(v0 + 112) = 0;
          *(v0 + 120) = 0;
          *(v0 + 128) = v15;
          *(v0 + 136) = v17;
        }

        *(v0 + 192) = 1;
        *(v0 + 200) = v19;
        *(v0 + 208) = v26;
        swift_task_create();

        swift_unknownObjectRelease();

        v7 = v25;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1A5FD409C();
      (*v23)(v14, v5);
      if (*v11)
      {
        goto LABEL_8;
      }
    }

    v15 = 0;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B8);
  sub_1A5FD405C();
  v20 = swift_task_alloc();
  *(v0 + 360) = v20;
  *v20 = v0;
  v20[1] = sub_1A5D58A2C;
  v21 = *(v0 + 336);

  return MEMORY[0x1EEE6D8A8](v0 + 216, 0, 0, v21);
}

uint64_t sub_1A5D58A2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A5D58B28, 0, 0);
}

uint64_t sub_1A5D58B28()
{
  v1 = v0[27];
  if (v1)
  {
    v40 = *(v1 + 16);
    if (v40)
    {
      v2 = v0 + 9;
      v35 = (v0 + 2);
      v3 = v0[36];
      v39 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v4 = 0;
      v38 = *(v3 + 72);
      do
      {
        v10 = v0[31];
        v41 = v4;
        sub_1A5B166B4(v39 + v4 * v38, v0[38]);
        v11 = *(v10 + 24);
        v12 = *(v11 + 16);

        if (v12)
        {
          v13 = 0;
          v14 = 0;
          while (1)
          {
            v15 = *(v11 + v13 + 56);
            v16 = *(v11 + v13 + 64);
            __swift_project_boxed_opaque_existential_1((v11 + v13 + 32), v15);
            sub_1A5B5C574(v2);
            v17 = (*(v16 + 88))(v2, v15, v16);
            __swift_destroy_boxed_opaque_existential_1(v2);
            if (v17)
            {
              break;
            }

            ++v14;
            v13 += 56;
            if (v12 == v14)
            {
              goto LABEL_4;
            }
          }

          v18 = v0[31];

          v23 = *(v18 + 24);
          if (v14 >= *(v23 + 16))
          {
            __break(1u);
            return MEMORY[0x1EEE6D8A8](v19, v20, v21, v22);
          }

          v24 = v0[38];
          v36 = v0[39];
          v37 = v0[30];
          v25 = v23 + v13;
          v27 = *(v25 + 72);
          v26 = *(v25 + 80);
          ObjectType = swift_getObjectType();
          v29 = *(v26 + 24);
          swift_unknownObjectRetain();
          v29(v24, ObjectType, v26);
          swift_beginAccess();
          sub_1A5D59404(v14, v35);
          sub_1A5D5A980(v35);
          swift_endAccess();
          v30 = sub_1A5FD40AC();
          (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
          v31 = swift_allocObject();
          v31[2] = 0;
          v31[3] = 0;
          v31[4] = v27;
          v31[5] = v26;
          v31[6] = v37;

          sub_1A5D591C4(v36, &unk_1A60367B0, v31);
          sub_1A5B10168(v36, &unk_1EB1F30E0);
        }

        else
        {
LABEL_4:
          v5 = v0[37];
          v6 = v0[38];
          v8 = v0[34];
          v7 = v0[35];
          v9 = v0[33];

          sub_1A5B166B4(v6, v5);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B0);
          sub_1A5FD40BC();
          (*(v8 + 8))(v7, v9);
        }

        v4 = v41 + 1;
        sub_1A5B16718(v0[38]);
      }

      while (v41 + 1 != v40);
    }

    v32 = swift_task_alloc();
    v0[45] = v32;
    *v32 = v0;
    v32[1] = sub_1A5D58A2C;
    v22 = v0[42];
    v19 = (v0 + 27);
    v20 = 0;
    v21 = 0;

    return MEMORY[0x1EEE6D8A8](v19, v20, v21, v22);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1A5D58F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 8) + **(a5 + 8));
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1A5D590C4;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_1A5D590C4(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A5D5B2F8, 0, 0);
}

uint64_t sub_1A5D591C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v20 - v8;
  v10 = *v3;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1A5BB8B94(a1, v9);
  v12 = sub_1A5FD40AC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    sub_1A5FD409C();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_1A5B10168(v9, &unk_1EB1F30E0);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A5FD404C();
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_8:
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B8);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

uint64_t sub_1A5D59404@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A5D5A3A0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A5D594AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  ObjectType = swift_getObjectType();
  v12 = (*(a5 + 8) + **(a5 + 8));
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1A5D595E8;

  return v12(a6, ObjectType, a5);
}

uint64_t sub_1A5D595E8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A5D596E8, 0, 0);
}

uint64_t sub_1A5D59728()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A5D597E8;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1A5D597E8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1A5D598FC;
  }

  else
  {
    v2 = sub_1A5B60FC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5D59914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5D599BC, 0, 0);
}

uint64_t sub_1A5D599BC()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = **(v0 + 96);
    v5 = sub_1A5FD40AC();
    v6 = *(v5 - 8);
    v24 = *(v6 + 56);
    v21 = (v6 + 48);
    v20 = (v6 + 8);

    v7 = 32;
    v22 = v4;
    v23 = v2;
    while (1)
    {
      v8 = *(v0 + 104);
      v25 = *(v2 + v7);
      v24(*(v0 + 120), 1, 1, v5);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = (v9 + 16);
      *(v9 + 24) = 0;
      *(v9 + 32) = v25;
      *(v9 + 48) = v8;
      swift_unknownObjectRetain_n();

      if (swift_taskGroup_addPending())
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_4:
      sub_1A5B10168(*(v0 + 120), &unk_1EB1F30E0);
      v7 += 16;
      if (!--v3)
      {

        goto LABEL_16;
      }
    }

    v11 = *(v0 + 112);
    sub_1A5BB8B94(*(v0 + 120), v11);
    v12 = (*v21)(v11, 1, v5);
    v13 = *(v0 + 112);
    if (v12 == 1)
    {
      sub_1A5B10168(*(v0 + 112), &unk_1EB1F30E0);
      if (*v10)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1A5FD404C();
        v16 = v15;
        swift_unknownObjectRelease();
LABEL_11:

        if (v16 | v14)
        {
          v17 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v14;
          *(v0 + 40) = v16;
        }

        else
        {
          v17 = 0;
        }

        *(v0 + 72) = 1;
        *(v0 + 80) = v17;
        *(v0 + 88) = v22;
        swift_task_create();

        swift_unknownObjectRelease();

        v2 = v23;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1A5FD409C();
      (*v20)(v13, v5);
      if (*v10)
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    v16 = 0;
    goto LABEL_11;
  }

LABEL_16:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A5D59CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1A5D59D04, 0, 0);
}

uint64_t sub_1A5D59D04()
{
  v1 = v0[4];
  v9 = v0[3];
  ObjectType = swift_getObjectType();
  v3 = *(*(v1 + 16) + 80);
  v0[5] = v3;
  v4 = *(v9 + 32);

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1A5D59E4C;
  v6 = v0[3];

  return v8(v3, ObjectType, v6);
}

uint64_t sub_1A5D59E4C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A5D59F88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A5D59F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5D59FEC(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 72))(v3, v4);
  v7 = v6;
  v9 = v8;
  v10 = sub_1A5B72514(v5, v6, v8);
  v28 = v11;
  sub_1A5B4F9C8(v5, v7, v9);
  swift_beginAccess();
  v29 = v2;
  v12 = *(v2 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {

    v15 = 0;
    v16 = 32;
    while (v15 < *(v12 + 16))
    {
      v17 = *(v12 + v16);
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = result;
        result = swift_getObjectType();
        if (result == v10)
        {
          v20 = result;
          v21 = *(v19 + 40);
          swift_unknownObjectRetain();
          if (v21(v32, v20, v19))
          {

            return v17;
          }

          result = swift_unknownObjectRelease();
        }
      }

      ++v15;
      v16 += 16;
      if (v13 == v15)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_1A5B180A0(v32, v31);
    v22 = *(*(v29 + 16) + 80);
    v23 = *(v28 + 72);

    v17 = v10;
    v24 = v23(v31, v22, v10, v28);
    if (!v30)
    {
      v17 = v24;
      v25 = *(v28 + 8);
      v26 = swift_unknownObjectRetain();
      sub_1A5D5A728(v26, v29, v27, v25);
      swift_unknownObjectRelease();
    }

    return v17;
  }

  return result;
}

uint64_t sub_1A5D5A204()
{

  return swift_deallocClassInstance();
}

void *sub_1A5D5A24C(void *a1, int64_t a2, char a3)
{
  result = sub_1A5D5A26C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A5D5A26C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A5D5A3B4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A5D5A4E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A5D5A610(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 32);
  v6 = v5[2];
  v7 = v6 + 1;
  v8 = 4;
  while (--v7)
  {
    v9 = v5[v8];
    v8 += 2;
    if (v9 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1A5D5A3B4(0, v6 + 1, 1, v5);
    *(a2 + 32) = v5;
  }

  v12 = v5[2];
  v11 = v5[3];
  if (v12 >= v11 >> 1)
  {
    v5 = sub_1A5D5A3B4((v11 > 1), v12 + 1, 1, v5);
  }

  v5[2] = v12 + 1;
  v13 = &v5[2 * v12];
  v13[4] = a1;
  v13[5] = &off_1F1967180;
  *(a2 + 32) = v5;
  swift_endAccess();
}

uint64_t sub_1A5D5A728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a2 + 32);
  v9 = v8[2];
  v10 = v9 + 1;
  v11 = 4;
  while (--v10)
  {
    v12 = v8[v11];
    v11 += 2;
    if (v12 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A5D5A3B4(0, v9 + 1, 1, v8);
    *(a2 + 32) = v8;
  }

  v15 = v8[2];
  v14 = v8[3];
  if (v15 >= v14 >> 1)
  {
    v8 = sub_1A5D5A3B4((v14 > 1), v15 + 1, 1, v8);
  }

  v8[2] = v15 + 1;
  v16 = &v8[2 * v15];
  v16[4] = a1;
  v16[5] = a4;
  *(a2 + 32) = v8;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A5D5A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A5B180A0(a1, v19);
  v20 = a2;
  v21 = a5;
  sub_1A5D5A948(v19, v17);
  swift_beginAccess();
  v8 = *(a3 + 24);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 24) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A5D5A4E8(0, *(v8 + 2) + 1, 1, v8);
    *(a3 + 24) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A5D5A4E8((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[56 * v11];
  v13 = v17[0];
  v14 = v17[1];
  v15 = v17[2];
  *(v12 + 10) = v18;
  *(v12 + 3) = v14;
  *(v12 + 4) = v15;
  *(v12 + 2) = v13;
  *(a3 + 24) = v8;
  swift_endAccess();
  return sub_1A5D5A980(v19);
}

uint64_t sub_1A5D5A9BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5D59914(v5, a2, v2);
}

uint64_t sub_1A5D5AA54(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1A5D5AB48;

  return v5(v2 + 16);
}

uint64_t sub_1A5D5AB48()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

BOOL sub_1A5D5AC78(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v12[3] = v6;
  v12[4] = *(v7 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
  v10 = (*(v5 + 88))(v12, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return (v10 & 1) != 0 && a1[5] == a2[5];
}

uint64_t sub_1A5D5AD90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A5D5ADD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A5D5AE34()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A5B10404;

  return sub_1A5D59CE0(v5, v6, v2, v3, v4);
}

uint64_t sub_1A5D5AEDC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63B0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A5B0CE78;

  return sub_1A5D581FC(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_1A5D5AFD4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A5B10404;

  return sub_1A5D584A8(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_1A5D5B090(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A5B10404;

  return sub_1A5D58F88(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A5D5B18C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A5B10404;

  return sub_1A5D594AC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A5D5B240(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B10404;

  return sub_1A5D5AA54(a1, v4);
}

uint64_t sub_1A5D5B3B4()
{
  v1 = *v0;
  sub_1A5D5B3F4(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_1A5D5B3F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1A5D5B40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A5B0CE78;

  return sub_1A5D5C1D8();
}

uint64_t sub_1A5D5B620(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A5D5B6C8;

  return sub_1A5D5C1D8();
}

uint64_t sub_1A5D5B6C8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1A5FD347C();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

id sub_1A5D5B8C8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A5D5B8FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelCatalogWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A5D5B970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelCatalogWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A5D5B9A4(uint64_t a1)
{
  if (MEMORY[0x1E69B2528])
  {
    v3 = MEMORY[0x1E69B2530] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || MEMORY[0x1E69B2510] == 0 || MEMORY[0x1E69B2518] == 0 || MEMORY[0x1E69B2520] == 0)
  {
    return 0;
  }

  v15[6] = v1;
  v15[7] = v2;
  v8 = sub_1A5FD38CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (MEMORY[0x1E69B2500] && v13 == *MEMORY[0x1E69B2500])
  {
    return 0x6E776F6420746F6ELL;
  }

  if (MEMORY[0x1E69B24F8] && v13 == *MEMORY[0x1E69B24F8])
  {
    return 0xD000000000000011;
  }

  if (MEMORY[0x1E69B2508] && v13 == *MEMORY[0x1E69B2508])
  {
    return 0xD000000000000016;
  }

  if (MEMORY[0x1E69B24F0] && v13 == *MEMORY[0x1E69B24F0])
  {
    return 0xD000000000000017;
  }

  (*(v9 + 8))(v12, v8);
  return 0x206E776F6E6B6E75;
}

uint64_t sub_1A5D5BBFC(uint64_t result)
{
  if (MEMORY[0x1E69B24A8])
  {
    v3 = MEMORY[0x1E69B24B0] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && MEMORY[0x1E69B24B8] != 0)
  {
    v38 = v1;
    v39 = v2;
    v5 = result;
    v6 = sub_1A5FD387C();
    v37 = v34;
    v36 = *(v6 - 8);
    v7 = *(v36 + 64);
    MEMORY[0x1EEE9AC00](v6);
    v35 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = (v34 - v35);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v9 = sub_1A5FD384C();
    v34[1] = v34;
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A5FD386C();
    sub_1A5FD383C();
    v13 = (*(v10 + 8))(v12, v9);
    v14 = v36;
    v15 = MEMORY[0x1EEE9AC00](v13);
    v16 = (v34 - v35);
    (*(v14 + 16))(v34 - v35, v8, v6, v15);
    v17 = (*(v14 + 88))(v16, v6);
    if (MEMORY[0x1E69B2488] && v17 == *MEMORY[0x1E69B2488])
    {
      (*(v14 + 96))(v16, v6);
      v18 = sub_1A5FD38CC();
      v35 = v34;
      v19 = *(v18 - 8);
      v20 = MEMORY[0x1EEE9AC00](v18);
      v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 32))(v22, v16, v18, v20);
      v23 = sub_1A5D5B9A4(v22);
      v25 = v24;
      sub_1A5D5D084();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v25;
      *(v26 + 16) = 1;
      swift_willThrow();
      (*(v19 + 8))(v22, v18);
      return (*(v14 + 8))(v8, v6);
    }

    if (MEMORY[0x1E69B2490] && v17 == *MEMORY[0x1E69B2490])
    {
      sub_1A5D5D084();
      swift_allocError();
      *v27 = 0xD000000000000048;
      *(v27 + 8) = 0x80000001A605D390;
      v28 = 3;
LABEL_28:
      *(v27 + 16) = v28;
      goto LABEL_29;
    }

    if (MEMORY[0x1E69B2498] && v17 == *MEMORY[0x1E69B2498])
    {
      sub_1A5D5D084();
      swift_allocError();
      *v29 = 0xD00000000000007DLL;
      *(v29 + 8) = 0x80000001A605D310;
    }

    else
    {
      if (!MEMORY[0x1E69B24A0] || v17 != *MEMORY[0x1E69B24A0])
      {
        if (MEMORY[0x1E69B2480] && v17 == *MEMORY[0x1E69B2480])
        {
          v30 = 0x80000001A605D2E0;
          sub_1A5D5D084();
          swift_allocError();
          v31 = 0xD00000000000002ELL;
        }

        else
        {
          if (!MEMORY[0x1E69B2478] || v17 != *MEMORY[0x1E69B2478])
          {
            sub_1A5D5D084();
            swift_allocError();
            *v32 = 0xD000000000000020;
            *(v32 + 8) = 0x80000001A605D280;
            *(v32 + 16) = 3;
            swift_willThrow();
            v33 = *(v14 + 8);
            v33(v8, v6);
            return (v33)(v16, v6);
          }

          v30 = 0x80000001A605D2B0;
          sub_1A5D5D084();
          swift_allocError();
          v31 = 0xD000000000000021;
        }

        *v27 = v31;
        *(v27 + 8) = v30;
        v28 = 1;
        goto LABEL_28;
      }

      sub_1A5D5D084();
      swift_allocError();
      *v29 = xmmword_1A60367F0;
    }

    *(v29 + 16) = 0;
LABEL_29:
    swift_willThrow();
    return (*(v14 + 8))(v8, v6);
  }

  return result;
}

uint64_t sub_1A5D5C1F4()
{
  if (MEMORY[0x1E69B20A0])
  {
    v1 = MEMORY[0x1E69B20A8] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1 && MEMORY[0x1E69B20B0] != 0)
  {
    sub_1A5FD37FC();
    v4 = sub_1A5FD380C();
    v0[7] = v4;
    v5 = *(v4 - 8);
    v6 = swift_task_alloc();
    v0[8] = v6;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_1A5FD382C();
    sub_1A5FD37EC();

    v7 = swift_task_alloc();
    (*(v5 + 16))(v7, v6, v4);
    v8 = (*(v5 + 88))(v7, v4);
    if (MEMORY[0x1E69B2118] && v8 == *MEMORY[0x1E69B2118])
    {
      v9 = *(v5 + 8);
      v0[9] = v9;
      v0[10] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9(v7, v4);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63F8);
      v0[11] = v10;
      v0[12] = *(v10 - 8);
      v0[13] = swift_task_alloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6400);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A5FF36F0;
      v13 = v0[5];
      v12 = v0[6];
      v14 = __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
      *(v11 + 56) = v13;
      *(v11 + 64) = *(v12 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
      sub_1A5FD37DC();

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6408);
      v0[14] = v27;
      v0[15] = *(v27 - 8);
      v0[16] = swift_task_alloc();
      sub_1A5FD40DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F6410);
      v0[17] = swift_task_alloc();
      v28 = swift_task_alloc();
      v0[18] = v28;
      *v28 = v0;
      v28[1] = sub_1A5D5C848;
      v29 = v0[17];
      v30 = v0[14];

      return MEMORY[0x1EEE6D9C8](v29, 0, 0, v30);
    }

    if (MEMORY[0x1E69B2108] && v8 == *MEMORY[0x1E69B2108] || MEMORY[0x1E69B2100] && v8 == *MEMORY[0x1E69B2100])
    {
      (*(v5 + 96))(v7, v4);
      v16 = *v7;
      v17 = v7[1];
      sub_1A5D5D084();
      v18 = swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v17;
      *(v19 + 16) = 0;
    }

    else
    {
      if (!MEMORY[0x1E69B2110] || v8 != *MEMORY[0x1E69B2110])
      {
        sub_1A5D5D084();
        v18 = swift_allocError();
        *v23 = 0xD000000000000034;
        *(v23 + 8) = 0x80000001A605D200;
        *(v23 + 16) = 0;
        swift_willThrow();
        v24 = *(v5 + 8);
        v24(v6, v4);
        v24(v7, v4);
        goto LABEL_23;
      }

      (*(v5 + 96))(v7, v4);
      v20 = *v7;
      v21 = v7[1];
      sub_1A5D5D084();
      v18 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 3;
    }

    swift_willThrow();
    (*(v5 + 8))(v6, v4);
LABEL_23:

    sub_1A5D5BBFC((v0 + 2));

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    goto LABEL_24;
  }

  sub_1A5D5D084();
  swift_allocError();
  *v3 = 0xD000000000000035;
  *(v3 + 8) = 0x80000001A605D440;
  *(v3 + 16) = 0;
  swift_willThrow();
LABEL_24:
  v25 = v0[1];

  return v25();
}

uint64_t sub_1A5D5C848()
{

  return MEMORY[0x1EEE6DFA0](sub_1A5D5C944, 0, 0);
}

uint64_t sub_1A5D5C944()
{
  v1 = v0[17];
  v2 = sub_1A5FD38BC();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[9];
    v9 = v0[7];
    v8 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v6 + 8))(v4, v5);
    v7(v8, v9);

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    (*(v3 + 32))(v12, v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A5FF36F0;
    sub_1A5FD38AC();
    *(v13 + 56) = MEMORY[0x1E69E63B0];
    *(v13 + 32) = v14;
    sub_1A5FD4BFC();

    (*(v3 + 8))(v12, v2);

    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_1A5D5C848;
    v16 = v0[17];
    v17 = v0[14];

    return MEMORY[0x1EEE6D9C8](v16, 0, 0, v17);
  }
}

id sub_1A5D5CBF0()
{
  if (MEMORY[0x1E69B20A0])
  {
    v1 = MEMORY[0x1E69B20A8] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || MEMORY[0x1E69B20B0] == 0)
  {
    v3 = 0x80000001A605D200;
    sub_1A5D5D084();
    swift_allocError();
    *v4 = 0xD000000000000034;
    *(v4 + 8) = 0x80000001A605D200;
    *(v4 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    sub_1A5FD37FC();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F63F0);
    v6 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v23 - v7;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_1A5FD385C();
    if (v0)
    {
      sub_1A5D5BBFC(v29);

LABEL_14:
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1A5FD46AC();

      v27 = 0xD000000000000019;
      v28 = 0x80000001A605D240;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v19 = sub_1A5FD382C();
      MEMORY[0x1AC554600](v19);

      MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A605D260);
      v3 = v27;
      v20 = v28;
      sub_1A5D5D084();
      swift_allocError();
      *v21 = v3;
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v29);
      return v3;
    }

    v26 = sub_1A5FD353C();
    v31 = v23;
    v24 = *(v26 - 8);
    MEMORY[0x1EEE9AC00](v26);
    v25 = v23;
    v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = v6;
    v12 = sub_1A5FD389C();
    v23[1] = v23;
    v13 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v12);
    v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = sub_1A5FD381C();
    MEMORY[0x1AC554080](v16);
    (*(v13 + 8))(v15, v12);
    sub_1A5FD34BC();
    v17 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v18 = sub_1A5FD3D2C();

    v3 = [v17 initWithString_];

    (*(v24 + 8))(v10, v26);
    (*(v11 + 8))(v8, v5);
    if (!v3)
    {
      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return v3;
}

unint64_t sub_1A5D5D084()
{
  result = qword_1EB1F63E8;
  if (!qword_1EB1F63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F63E8);
  }

  return result;
}

uint64_t sub_1A5D5D0F0()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A5B0CE78;

  return v5();
}

uint64_t sub_1A5D5D264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A5D5D2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A5D5D308()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A5B0CE78;

  return sub_1A5D5B620(v2);
}

uint64_t sub_1A5D5D3B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A5B10404;

  return sub_1A5C5A93C(a1, v4, v5, v6);
}

uint64_t *rtcv::LoggerDevNull::instance(rtcv::LoggerDevNull *this)
{
  if ((atomic_load_explicit(&qword_1EB2858A8, memory_order_acquire) & 1) == 0)
  {
    rtcv::LoggerDevNull::instance();
  }

  return &_MergedGlobals;
}

void rtcv::Logger::Logger(rtcv::Logger *this)
{
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 192) = 7;
  operator new();
}

void rtcv::Logger::setTarget(void **a1, uint64_t *a2)
{
  for (i = 0; i != 24; i += 3)
  {
    std::vector<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](&a1[i]);
  }

  rtcv::Logger::addTargetBetweenSeverities(a1, a2, 0, 7u);
}

void rtcv::Logger::Target::log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::lock((a1 + 8));
  (*(*a1 + 16))(a1, a2, a3, &a9);
  std::mutex::unlock((a1 + 8));
}

uint64_t rtcv::ConsoleLogTarget::doLog(uint64_t a1, int a2, const char *a3, va_list a4)
{
  fprintf(*(a1 + 72), "< %-8s > ", rtcv::Logger::severityToString(rtcv::Logger::Severity)::stringArr[a2]);
  v7 = *(a1 + 72);

  return vfprintf(v7, a3, a4);
}

void *rtcv::Logger::instance(rtcv::Logger *this)
{
  if ((atomic_load_explicit(&qword_1EB2858B0, memory_order_acquire) & 1) == 0)
  {
    rtcv::Logger::instance();
  }

  return &unk_1EB2858B8;
}

void rtcv::Logger::~Logger(rtcv::Logger *this)
{
  for (i = 168; i != -24; i -= 24)
  {
    v3 = (this + i);
    std::vector<std::shared_ptr<espresso_buffer_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void rtcv::Logger::addTargetBetweenSeverities(void **a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  std::shared_ptr<rtcv::Logger::Target>::shared_ptr[abi:nn200100]<rtcv::Logger::Target,std::default_delete<rtcv::Logger::Target>,0>(&v7, a2);
  if (a3 <= a4)
  {
    do
    {
      rtcv::Logger::addTargetForSeverity(a1, &v7, a3++);
    }

    while (a4 >= a3);
  }

  if (*(&v7 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
  }
}

void **rtcv::Logger::addTargetForSeverity(void **result, __int128 *a2, unsigned int a3)
{
  v4 = &result[3 * a3];
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v9 = (v5 - *v4) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::shared_ptr<rtcv::Logger::Target>>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - *v4;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v19[4] = &result[3 * a3];
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<rtcv::Logger::Target>>>(&result[3 * a3], v12);
    }

    v13 = 16 * v9;
    v14 = *a2;
    *(16 * v9) = *a2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v8 = (v13 + 16);
    v15 = v4[1] - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v4[1] = v8;
    v18 = v4[2];
    v4[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::shared_ptr<rtcv::Logger::Target>>::~__split_buffer(v19);
  }

  else
  {
    v7 = *(a2 + 1);
    *v5 = *a2;
    v5[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v5 + 2;
  }

  v4[1] = v8;
  return result;
}

void rtcv::ConsoleLogTarget::~ConsoleLogTarget(rtcv::ConsoleLogTarget *this)
{
  *this = &unk_1F1971398;
  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_1F1971398;
  std::mutex::~mutex((this + 8));

  JUMPOUT(0x1AC556B00);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<rtcv::Logger::Target>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<std::shared_ptr<rtcv::Logger::Target>>::__throw_length_error[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<rtcv::Logger::Target>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<rtcv::Logger::Target>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<rtcv::Logger::Target>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *std::shared_ptr<rtcv::Logger::Target>::shared_ptr[abi:nn200100]<rtcv::Logger::Target,std::default_delete<rtcv::Logger::Target>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<rtcv::Logger::Target  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t std::__shared_ptr_pointer<rtcv::Logger::Target  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

float bmClamp(float a1, float a2, float a3)
{
  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

float bmSoftmax2(float a1, float a2)
{
  if (a1 >= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  v4 = expf(a1 - v3);
  v5 = expf(a2 - v3);
  return v5 / (v4 + v5);
}

void rtcv::Logger::log<(rtcv::Logger::Severity)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 192) >= 3u)
  {
    v13 = v8;
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    while (v9 != v10)
    {
      v12 = *v9;
      v9 += 2;
      rtcv::Logger::Target::log(v12, 3, a2, a4, a5, a6, a7, a8, v13);
    }
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<std::shared_ptr<rtcv::Logger::Target>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 192) >= 3u)
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    while (v8 != v9)
    {
      v12 = *v8;
      v8 += 2;
      rtcv::Logger::Target::log(v12, 3, a2, a4, a5, a6, a7, a8, *a3);
    }
  }
}

void rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &,rtcv::SimResizeModel &,rtcv::SimResizeStretch &>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 192) >= 3u)
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    while (v8 != v9)
    {
      v12 = *v8;
      v8 += 2;
      rtcv::Logger::Target::log(v12, 3, a2, a4, a5, a6, a7, a8, *a3);
    }
  }
}

BOOL rtcv::simCropResizeExtendMean(rtcv::LoggerDevNull *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, void *a8, float a9, float a10, float a11, unsigned int a12, unsigned int a13, unsigned int a14, uint64_t a15)
{
  v27 = a6;
  v28 = a5;
  v26 = a7;
  if (a6 | a5 | a7)
  {
    v18 = rtcv::LoggerDevNull::instance(a1);
    v19 = rtcv::LoggerDevNull::devNull(v18);
    v20 = fprintf(v19, "Pixel format (%d), model (%d), or stretch (%d) not supported!\n", a5, a6, a7);
    v21 = rtcv::Logger::instance(v20);
    rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &,rtcv::SimResizeModel &,rtcv::SimResizeStretch &>(v21, "Pixel format (%d), model (%d), or stretch (%d) not supported!\n", &v28, &v27, &v26, v22, v23, v24);
    return 0;
  }

  else
  {
    src.data = a1;
    src.height = a3;
    src.width = a2;
    src.rowBytes = a4;
    dest.data = a8;
    dest.height = a13;
    dest.width = a12;
    dest.rowBytes = a14;
    backColor = *a15;
    v31 = *(a15 + 1);
    v32 = -1;
    transform.a = a11;
    *&transform.b = 0;
    transform.d = a11;
    transform.tx = -(a11 * a9);
    transform.ty = a13 - (a11 * (a3 - a10));
    return vImageAffineWarp_ARGB8888(&src, &dest, 0, &transform, &backColor, 4u) == 0;
  }
}

uint64_t rtcv::simImageChMeanTempBytes(rtcv *this, int a2)
{
  v3 = this;
  BmMixedBufSize::BmMixedBufSize(&v5);
  return (v5 + 12 * v3 * a2 + 9);
}

float rtcv::simImageChMean(unsigned __int8 *a1, int a2, int a3, unsigned int a4, float *a5, uint64_t a6, _BYTE *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = a4;
  if (a4)
  {
    v8 = rtcv::LoggerDevNull::instance(a1);
    v9 = rtcv::LoggerDevNull::devNull(v8);
    v10 = fprintf(v9, "Pixel format (%d) not supported!\n", a4);
    v11 = rtcv::Logger::instance(v10);
    rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &>(v11, "Pixel format (%d) not supported!\n", &v29, v12, v13, v14, v15, v16);
  }

  else
  {
    BmMixedBufSize::BmMixedBufSize(&__C);
    if (a5)
    {
      v23 = ((a5 + HIDWORD(__C) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v24 = 4 * a2 * a3 - a5;
      v25 = a5 + (v23 + v24) + 3;
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      a5 = ((a5 + (v25 & 0xFFFFFFFC) + v24 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    }

    else
    {
      v23 = 0;
      v26 = 0;
    }

    v27 = (a3 * a2);
    v31 = 0.0;
    __C = 0;
    vDSP_vfltu8(a1, 4, a5, 1, v27);
    vDSP_vfltu8(a1 + 1, 4, v26, 1, v27);
    vDSP_vfltu8(a1 + 2, 4, v23, 1, v27);
    vDSP_meanv(a5, 1, &__C, v27);
    vDSP_meanv(v26, 1, &__C + 1, v27);
    vDSP_meanv(v23, 1, &v31, v27);
    v28 = *(&__C + 1);
    *a7 = (*&__C + 0.5);
    a7[1] = (v28 + 0.5);
    result = v31 + 0.5;
    a7[2] = (v31 + 0.5);
  }

  return result;
}

uint64_t TtTrkRpnCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    operator new();
  }

  return 4294967292;
}

uint64_t TtTrkRpnDestroy(TtTrkRpnNode **a1)
{
  if (!a1)
  {
    return 4294967292;
  }

  v2 = *a1;
  if (!v2)
  {
    return 4294967292;
  }

  TtTrkRpnNode::~TtTrkRpnNode(v2);
  MEMORY[0x1AC556B00]();
  MEMORY[0x1AC556B00](a1, 0x10A0C40FC37F48CLL);
  return 0;
}

uint64_t TtTrkRpnStart(rtcv::LoggerDevNull **a1, unsigned int *a2)
{
  if (a1 && a2 && (v2 = *a1) != 0)
  {
    return TtTrkRpnNode::restart(v2, a2);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t TtTrkRpnStop(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t TtTrkRpnGetParams(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      result = 0;
      v5 = *(a1 + 24);
      *a3 = *(a1 + 8);
      *(a3 + 16) = v5;
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v8 = *(a1 + 88);
      *(a3 + 64) = *(a1 + 72);
      *(a3 + 80) = v8;
      *(a3 + 32) = v6;
      *(a3 + 48) = v7;
      v9 = *(a1 + 104);
      v10 = *(a1 + 120);
      v11 = *(a1 + 152);
      *(a3 + 128) = *(a1 + 136);
      *(a3 + 144) = v11;
      *(a3 + 96) = v9;
      *(a3 + 112) = v10;
      v12 = *(a1 + 168);
      v13 = *(a1 + 184);
      v14 = *(a1 + 200);
      *(a3 + 208) = *(a1 + 216);
      *(a3 + 176) = v13;
      *(a3 + 192) = v14;
      *(a3 + 160) = v12;
    }
  }

  return result;
}

uint64_t TtTrkRpnExemplarPreProcess(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a6)
          {
            if (a7)
            {
              result = TtTrkRpnNode::setUpNetBuffers(a5, (a1 + 8), a7);
              if (!result)
              {
                if (!*(a2 + 8) || (result = TtTrkRpnNode::restart(*a1, a4), !result))
                {
                  v13 = *a1;

                  return TtTrkRpnNode::exemplarPreProcess(v13, a2, (a3 + 184), (a3 + 180), a4, a6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TtTrkRpnInstancePreProcess(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a6)
          {
            if (a7)
            {
              result = TtTrkRpnNode::setUpNetBuffers(a5, (a1 + 8), a7);
              if (!result)
              {
                if (*(a2 + 8))
                {
                  return 4294967294;
                }

                else
                {
                  v13 = *a1;

                  return TtTrkRpnNode::instancePreProcess(v13, a2, a3 + 184, a3 + 180, a4, a6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TtTrkRpnPreProcessCropResizeRef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (!a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2 && *a1 && a4 && a6 && *a3)
  {
    if ((*(a3 + 12) & 3) != 0)
    {
      v12 = rtcv::LoggerDevNull::instance(0xFFFFFFFCLL);
      v13 = rtcv::LoggerDevNull::devNull(v12);
      v14 = "Invalid source image!\n";
      v15 = "Invalid source image!\n";
      v16 = 22;
LABEL_9:
      v17 = fwrite(v15, v16, 1uLL, v13);
      v18 = rtcv::Logger::instance(v17);
      rtcv::Logger::log<(rtcv::Logger::Severity)3>(v18, v14, v19, v20, v21, v22, v23, v24);
      return 4294967292;
    }

    result = TtTrkRpnNode::setUpNetBuffers(a7, (a1 + 8), a1 + 220);
    if (!result)
    {
      if (*(a4 + 80))
      {
        *(a4 + 80) = 0;
        v26 = *(a1 + 220);
        if (!v26)
        {
          v33 = rtcv::LoggerDevNull::instance(result);
          v13 = rtcv::LoggerDevNull::devNull(v33);
          v14 = "Invalid instanceResult buffer!\n";
          goto LABEL_32;
        }

        v27 = *(a1 + 232);
        if (v27 != *(a1 + 28) * *(a1 + 20))
        {
          goto LABEL_29;
        }

        v28 = *(a1 + 228);
        if (v28 != *(a1 + 24))
        {
          goto LABEL_29;
        }

        v29 = *(a1 + 236);
        if (v29 < v27 || (v29 & 0x3F) != 0)
        {
          v35 = rtcv::LoggerDevNull::instance(result);
          v36 = rtcv::LoggerDevNull::devNull(v35);
          v37 = fprintf(v36, "Invalid output buffer rowBytes (%d)!\n", *(a1 + 236));
          v38 = rtcv::Logger::instance(v37);
          v44 = (a1 + 236);
          goto LABEL_36;
        }

        result = rtcv::simCropResizeExtendMean(*a3, *(a3 + 12) >> 2, *(a3 + 8), *(a3 + 16), 0, 0, 0, v26, *(a6 + 112), *(a6 + 116), v28 / fmaxf(*(a6 + 124), 1.0), v27 >> 2, v28, v29, a6 + 1858);
        if ((result & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (!*(a4 + 81))
      {
        return 0;
      }

      *(a4 + 81) = 0;
      if (*(a1 + 244))
      {
        v30 = *(a1 + 256);
        if (v30 == *(a1 + 44) * *(a1 + 36) && *(a1 + 252) == *(a1 + 40))
        {
          v31 = *(a1 + 260);
          if (v31 >= v30 && (v31 & 0x3F) == 0)
          {
            rtcv::simImageChMean(*a3, *(a3 + 12) >> 2, *(a3 + 8), 0, *a5, *(a5 + 8), (a6 + 1858));
            result = rtcv::simCropResizeExtendMean(*a3, *(a3 + 12) >> 2, *(a3 + 8), *(a3 + 16), 0, 0, 0, *(a1 + 244), *(a6 + 96), *(a6 + 100), *(a1 + 252) / fmaxf(*(a6 + 108), 1.0), *(a1 + 256) >> 2, *(a1 + 252), *(a1 + 260), a6 + 1858);
            if (result)
            {
              return 0;
            }

LABEL_34:
            v45 = rtcv::LoggerDevNull::instance(result);
            v46 = rtcv::LoggerDevNull::devNull(v45);
            v47 = fwrite("rtcv::simCropResize failed!\n", 0x1CuLL, 1uLL, v46);
            v48 = rtcv::Logger::instance(v47);
            rtcv::Logger::log<(rtcv::Logger::Severity)3>(v48, "rtcv::simCropResize failed!\n", v49, v50, v51, v52, v53, v54);
            return 4294967288;
          }

          v55 = (a1 + 260);
          v56 = rtcv::LoggerDevNull::instance(result);
          v57 = rtcv::LoggerDevNull::devNull(v56);
          v58 = fprintf(v57, "Invalid output buffer rowBytes (%d)!\n", *v55);
          v38 = rtcv::Logger::instance(v58);
          v44 = v55;
LABEL_36:
          rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &>(v38, "Invalid output buffer rowBytes (%d)!\n", v44, v39, v40, v41, v42, v43);
          return 4294967292;
        }

LABEL_29:
        v32 = rtcv::LoggerDevNull::instance(result);
        v13 = rtcv::LoggerDevNull::devNull(v32);
        v14 = "Output buffer size incorrect!\n";
        v15 = "Output buffer size incorrect!\n";
        v16 = 30;
        goto LABEL_9;
      }

      v34 = rtcv::LoggerDevNull::instance(result);
      v13 = rtcv::LoggerDevNull::devNull(v34);
      v14 = "Invalid exemplarResult buffer!\n";
LABEL_32:
      v15 = v14;
      v16 = 31;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t TtTrkRpnExemplarPostProcess(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6)
{
  if (!a1)
  {
    return 4294967292;
  }

  if (!*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        if (a6)
        {
          result = TtTrkRpnNode::setUpNetBuffers(a3, (a1 + 8), a1 + 220);
          if (!result)
          {
            result = TtTrkRpnNode::exemplarPostProcess(*a1, a1 + 268, 2u, a2, a5);
            if (!result)
            {
              if (*a6 < 3uLL)
              {
                v20 = &a6[20 * *a6];
                *(v20 + 21) = xmmword_1A6036A00;
                *(v20 + 37) = 0;
                v21 = TtTrkRpnNode::config(*a1);
                result = 0;
                v22 = *v21;
                *(v20 + 97) = *(v21 + 16);
                *(v20 + 81) = v22;
                ++*a6;
                return result;
              }

              v11 = rtcv::LoggerDevNull::instance(result);
              v12 = rtcv::LoggerDevNull::devNull(v11);
              v13 = fprintf(v12, "TtResult modelInfo.numModels (%hhu) out of bounds!\n", *a6);
              v14 = rtcv::Logger::instance(v13);
              rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned char &>(v14, "TtResult modelInfo.numModels (%hhu) out of bounds!\n", a6, v15, v16, v17, v18, v19);
              return 4294967292;
            }
          }
        }
      }
    }
  }

  return result;
}

void rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned char &>(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 192) >= 3u)
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    while (v8 != v9)
    {
      v12 = *v8;
      v8 += 2;
      rtcv::Logger::Target::log(v12, 3, a2, a4, a5, a6, a7, a8, *a3);
    }
  }
}

uint64_t TtTrkRpnInstancePostProcess(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6)
{
  if (!a1)
  {
    return 4294967292;
  }

  if (!*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        if (a6)
        {
          result = TtTrkRpnNode::setUpNetBuffers(a3, (a1 + 8), a1 + 220);
          if (!result)
          {
            result = TtTrkRpnNode::instancePostProcess(*a1, a1 + 316, 2u, a2, a5, (a6 + 184), a6 + 45);
            if (!result)
            {
              v11 = *a6;
              if (v11 < 3)
              {
                result = 0;
                *a6 = v11 + 1;
                return result;
              }

              v12 = rtcv::LoggerDevNull::instance(result);
              v13 = rtcv::LoggerDevNull::devNull(v12);
              v14 = fprintf(v13, "TtResult modelInfo.numModels (%hhu) out of bounds!\n", *a6);
              v15 = rtcv::Logger::instance(v14);
              rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned char &>(v15, "TtResult modelInfo.numModels (%hhu) out of bounds!\n", a6, v16, v17, v18, v19, v20);
              return 4294967292;
            }
          }
        }
      }
    }
  }

  return result;
}

char *TtTrkRpnNode::TtTrkRpnNode(char *a1, void *a2)
{
  v4 = a1 + 536;
  bzero(a1, 0x218uLL);
  *a2 = 0x721CC00000001;
  *v4 = 0u;
  return a1;
}

uint64_t TtTrkRpnNode::releaseBuffers(TtTrkRpnNode *this)
{
  v2 = *(this + 55);
  if (v2)
  {
    MEMORY[0x1AC556AE0](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 56);
  if (v3)
  {
    MEMORY[0x1AC556AE0](v3, 0x1000C80451B5BE8);
  }

  v4 = *(this + 57);
  if (v4)
  {
    MEMORY[0x1AC556AE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 58);
  if (v5)
  {
    MEMORY[0x1AC556AE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 59);
  if (v6)
  {
    MEMORY[0x1AC556AE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 60);
  if (v7)
  {
    MEMORY[0x1AC556AE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 67);
  if (v8)
  {
    MEMORY[0x1AC556AE0](v8, 0x1000C8052888210);
  }

  result = *(this + 68);
  if (result)
  {

    JUMPOUT(0x1AC556AE0);
  }

  return result;
}

uint64_t TtTrkRpnNode::init(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*a3 == 1)
  {
    if (a3[1] - 467393 <= 0xB && ((1 << (*(a3 + 4) + 63)) & 0xB01) != 0)
    {
      TtTrkRpnNode::releaseBuffers(a1);
      *(a1 + 20) = 0x800000013;
      *(a1 + 28) = 0x4100000000000001;
      *(a1 + 52) = 5;
      *(a1 + 56) = xmmword_1A6036A40;
      *(a1 + 132) = xmmword_1A6036A50;
      *(a1 + 260) = 0x1400000013;
      *(a1 + 268) = 10;
      *(a1 + 148) = xmmword_1A6036A60;
      *(a1 + 164) = xmmword_1A6036A70;
      *(a1 + 336) = 6;
      *(a1 + 244) = xmmword_1A6036A80;
      *(a1 + 72) = xmmword_1A6036A90;
      *(a1 + 116) = xmmword_1A6036AA0;
      *(a1 + 88) = xmmword_1A6036AB0;
      *(a1 + 104) = 0x3E4CCCCD3BB60B61;
      *(a1 + 112) = 1069547520;
      a3[1] = 467393;
      *(a3 + 928) = 0;
      *(a3 + 459) = 0u;
      *(a3 + 1861) = 0;
      *(a3 + 393) = 0u;
      *(a3 + 397) = 0u;
      *(a3 + 401) = 0u;
      *(a3 + 405) = 0u;
      *(a3 + 409) = 0u;
      *(a3 + 413) = 0u;
      *(a3 + 417) = 0u;
      *(a3 + 421) = 0u;
      *(a3 + 425) = 0u;
      *(a3 + 429) = 0u;
      *(a3 + 433) = 0u;
      *(a3 + 437) = 0u;
      *(a3 + 441) = 0u;
      *(a3 + 445) = 0u;
      *(a3 + 449) = 0u;
      v6 = *(a1 + 20) * *(a1 + 20);
      a3[455] = 1065353216;
      v7 = v6 * *(a1 + 28);
      a3[463] = 0;
      *(a1 + 436) = v7 * *(a1 + 52);
      operator new[]();
    }

    return 4294967292;
  }

  else
  {
    v8 = rtcv::LoggerDevNull::instance(a1);
    v9 = rtcv::LoggerDevNull::devNull(v8);
    v10 = fprintf(v9, "Incorrect trk node state version (%u vs %u)\n", *a3, 1);
    v11 = rtcv::Logger::instance(v10);
    v17 = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v11, "Incorrect trk node state version (%u vs %u)\n", a3, &v17, v12, v13, v14, v15);
    return 4294967289;
  }
}

void rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 192) >= 3u)
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    while (v8 != v9)
    {
      v12 = *v8;
      v8 += 2;
      rtcv::Logger::Target::log(v12, 3, a2, a4, a5, a6, a7, a8, *a3);
    }
  }
}

uint64_t TtTrkRpnNode::PopulateAnchorBoxes(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v5 = *(this + 20);
    v4 = *(this + 24);
    v6 = v5 >> 1;
    v7 = *(this + 28);
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = *(this + 56 + 4 * v2);
        v10.f32[0] = sqrtf((v4 * v4) / v9);
        v10.f32[1] = (v9 * v10.f32[0]);
        do
        {
          if (v5)
          {
            v11 = 0;
            v12 = *(this + 440);
            v13 = vcvt_f32_s32(vcvt_s32_f32(vmul_n_f32(v10, *(this + 32 + 4 * v8))));
            do
            {
              v14 = -(v4 * v6);
              v15 = v5;
              do
              {
                v16 = (v12 + 16 * v3);
                v16->f32[0] = v14;
                v16->f32[1] = ((v11 - v6) * v4);
                v16[1] = v13;
                ++v3;
                v14 += v4;
                --v15;
              }

              while (v15);
              ++v11;
            }

            while (v11 != v5);
          }

          ++v8;
        }

        while (v8 != v7);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return this;
}

uint64_t TtTrkRpnNode::restart(rtcv::LoggerDevNull *a1, unsigned int *a2)
{
  if (*a2 == 1)
  {
    if (a2[1] - 467393 <= 9 && ((1 << (*(a2 + 4) + 63)) & 0x301) != 0)
    {
      result = 0;
      a2[455] = 1065353216;
      *(a2 + 459) = 0u;
      *(a2 + 1861) = 0;
      *(a2 + 928) = 0;
      a2[463] = 0;
      *(a2 + 393) = 0u;
      *(a2 + 397) = 0u;
      *(a2 + 401) = 0u;
      *(a2 + 405) = 0u;
      *(a2 + 409) = 0u;
      *(a2 + 413) = 0u;
      *(a2 + 417) = 0u;
      *(a2 + 421) = 0u;
      *(a2 + 425) = 0u;
      *(a2 + 429) = 0u;
      *(a2 + 433) = 0u;
      *(a2 + 437) = 0u;
      *(a2 + 441) = 0u;
      *(a2 + 445) = 0u;
      *(a2 + 449) = 0u;
      return result;
    }
  }

  else
  {
    v5 = rtcv::LoggerDevNull::instance(a1);
    v6 = rtcv::LoggerDevNull::devNull(v5);
    v7 = fprintf(v6, "Incorrect trk node state version (%u vs %u)\n", *a2, 1);
    v8 = rtcv::Logger::instance(v7);
    v13 = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v8, "Incorrect trk node state version (%u vs %u)\n", a2, &v13, v9, v10, v11, v12);
  }

  return 4294967289;
}

uint64_t TtTrkRpnNode::exemplarPreProcess(uint64_t a1, uint64_t a2, __int128 *a3, int *a4, _DWORD *a5, uint64_t a6)
{
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (*a5 != 1)
  {
    v19 = rtcv::LoggerDevNull::instance(v11.__d_.__rep_);
    v20 = rtcv::LoggerDevNull::devNull(v19);
    v21 = fprintf(v20, "Incorrect trk node state version (%u vs %u)\n", *a5, 1);
    v22 = rtcv::Logger::instance(v21);
    v27 = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v22, "Incorrect trk node state version (%u vs %u)\n", a5, &v27, v23, v24, v25, v26);
    return 4294967289;
  }

  if (a5[1] != 467393)
  {
    return 4294967289;
  }

  v12 = *a4;
  if (*a4)
  {
    v13 = *a3;
    *(a5 + 6) = a3[1];
    *(a5 + 2) = v13;
    v14 = a3[2];
    v15 = a3[3];
    v16 = a3[4];
    *(a5 + 11) = *(a3 + 10);
    *(a5 + 18) = v16;
    *(a5 + 14) = v15;
    *(a5 + 10) = v14;
    LOBYTE(v12) = 1;
    *(a6 + 81) = 1;
    *&v16 = *(a5 + 3);
    v17 = vaddv_f32(*&v16);
    *&v14 = roundf(sqrtf((*&v16 + (*(a1 + 88) * v17)) * (*(&v16 + 1) + (*(a1 + 88) * v17))));
    *(a5 + 12) = vmla_n_f32(vmla_f32(*(a5 + 4), 0x3F0000003F000000, *&v16), 0xBF000000BF000000, *&v14);
    a5[26] = v14;
    a5[27] = v14;
  }

  result = 0;
  *(a5 + 1856) = v12;
  a5[1] = 467402;
  return result;
}

uint64_t TtTrkRpnNode::instancePreProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, uint64_t a6)
{
  v9.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (a5->i32[0] != 1)
  {
    v18 = rtcv::LoggerDevNull::instance(v9.__d_.__rep_);
    v19 = rtcv::LoggerDevNull::devNull(v18);
    v20 = fprintf(v19, "Incorrect trk node state version (%u vs %u)\n", a5->i32[0], 1);
    v21 = rtcv::Logger::instance(v20);
    v26 = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v21, "Incorrect trk node state version (%u vs %u)\n", a5, &v26, v22, v23, v24, v25);
    return 4294967289;
  }

  if (a5->i32[1] != 467393)
  {
    return 4294967289;
  }

  v10 = a5[232].i8[0];
  if (v10)
  {
    v10 = 1;
    *(a6 + 80) = 1;
    v11 = *(a1 + 144);
    v12 = a5[3];
    v13 = vaddv_f32(v12);
    v14 = a5[227].f32[1] * sqrtf((v12.f32[0] + (*(a1 + 88) * v13)) * (v12.f32[1] + (*(a1 + 88) * v13)));
    v15 = v11 / v14;
    v16 = v14 + ((vcvts_n_f32_u32(*(a1 + 132) - v11, 1uLL) / v15) * 2.0);
    a5[14] = vmla_n_f32(vmla_f32(a5[2], 0x3F0000003F000000, v12), 0xBF000000BF000000, v16);
    a5[15].f32[0] = v16;
    a5[15].f32[1] = v16;
    a5[228].f32[0] = v15;
    a5[3] = vmul_n_f32(v12, v15);
  }

  result = 0;
  a5[232].i8[1] = v10;
  a5->i32[1] = 467401;
  return result;
}

uint64_t TtTrkRpnNode::exemplarPostProcess(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  v27 = a3;
  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (*a5 != 1)
  {
    v18 = rtcv::LoggerDevNull::instance(v7.__d_.__rep_);
    v19 = rtcv::LoggerDevNull::devNull(v18);
    v20 = fprintf(v19, "Incorrect trk node state version (%u vs %u)\n", *a5, 1);
    v21 = rtcv::Logger::instance(v20);
    v26 = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v21, "Incorrect trk node state version (%u vs %u)\n", a5, &v26, v22, v23, v24, v25);
    return 4294967289;
  }

  if (a5[1] != 467402)
  {
    return 4294967289;
  }

  if (a3 < 3)
  {
    result = 0;
    a5[1] = 467393;
  }

  else
  {
    v8 = rtcv::LoggerDevNull::instance(v7.__d_.__rep_);
    v9 = rtcv::LoggerDevNull::devNull(v8);
    v10 = fprintf(v9, "Numbers of net outputs (%d) more than limit!\n", a3);
    v11 = rtcv::Logger::instance(v10);
    rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &>(v11, "Numbers of net outputs (%d) more than limit!\n", &v27, v12, v13, v14, v15, v16);
    return 4294967292;
  }

  return result;
}

uint64_t TtTrkRpnNode::instancePostProcess(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5, uint64_t a6, _DWORD *a7)
{
  v155 = *MEMORY[0x1E69E9840];
  v150 = a3;
  v14.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (*a5 != 1)
  {
    v88 = rtcv::LoggerDevNull::instance(v14.__d_.__rep_);
    v89 = rtcv::LoggerDevNull::devNull(v88);
    v90 = fprintf(v89, "Incorrect trk node state version (%u vs %u)\n", *a5, 1);
    v91 = rtcv::Logger::instance(v90);
    LODWORD(v151[0]) = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v91, "Incorrect trk node state version (%u vs %u)\n", a5, v151, v92, v93, v94, v95);
    return 4294967289;
  }

  if (a5[1] != 467401)
  {
    return 4294967289;
  }

  if (a3 != 2)
  {
    v97 = rtcv::LoggerDevNull::instance(v14.__d_.__rep_);
    v98 = rtcv::LoggerDevNull::devNull(v97);
    v99 = fprintf(v98, "Numbers of net outputs (%d) isn't correct!\n", a3);
    v100 = rtcv::Logger::instance(v99);
    rtcv::Logger::log<(rtcv::Logger::Severity)3,rtcv::SimResizePixelFormat &>(v100, "Numbers of net outputs (%d) isn't correct!\n", &v150, v101, v102, v103, v104, v105);
    return 4294967292;
  }

  if (!*(a5 + 1857))
  {
    goto LABEL_74;
  }

  v15 = 0;
  v16 = v151;
  v17 = 1;
  do
  {
    v18 = v17;
    v19 = (a2 + 24 * v15);
    if (*(v19 + 5) == 7)
    {
      v20 = a1 + 488 + 24 * v15;
      v21 = *(v19 + 2);
      if (v21)
      {
        v22 = 0;
        v23 = *v20;
        v24 = *v19;
        v25 = *(v19 + 3);
        v26 = *(v19 + 4);
        v27 = *(v20 + 16);
        while (!v25)
        {
LABEL_24:
          v24 += v26;
          v23 += v27;
          if (++v22 == v21)
          {
            goto LABEL_25;
          }
        }

        v28 = 0;
        while (1)
        {
          v29 = *(v24 + 2 * v28);
          v30 = v29 & 0x80000000;
          v31 = (v29 >> 10) & 0x1F;
          v32 = *(v24 + 2 * v28) << 13;
          v33 = v32 & 0x7FE000;
          if (v31 == 31)
          {
            v36 = v30 | v32 | 0x7FC00000;
            v35 = v30 | 0x7F800000;
            if (v33)
            {
              v35 = v36;
            }
          }

          else
          {
            if (!v31)
            {
              if (!v33)
              {
                if (v30)
                {
                  v37 = -0.0;
                }

                else
                {
                  v37 = 0.0;
                }

                goto LABEL_19;
              }

              v34 = __clz(v33);
              v31 = 9 - v34;
              v33 = (v32 << (v34 - 8)) & 0x7FE000;
            }

            v35 = ((v33 | (v31 << 23)) + 939524096) | v30;
          }

          v37 = *&v35;
LABEL_19:
          *(v23 + 4 * v28++) = v37;
          if (v25 == v28)
          {
            goto LABEL_24;
          }
        }
      }

LABEL_25:
      *v16 = *v20;
      v38 = *(v20 + 16);
    }

    else
    {
      *v16 = *v19;
      v38 = v19[2];
    }

    v16[2] = v38;
    v17 = 0;
    v16 = &v153;
    v15 = 1;
  }

  while ((v18 & 1) != 0);
  v132 = a4;
  v133 = a7;
  v134 = a6;
  v135 = a5;
  v139 = *(a1 + 436);
  if (!v139)
  {
    goto LABEL_49;
  }

  v39 = 0;
  v40 = *(a1 + 20);
  v41 = *(a1 + 52) * v40 * *(a1 + 28);
  v44 = *(a1 + 440);
  v43 = *(a1 + 448);
  v45 = v40 <= 1 ? 1 : v40;
  v42 = &v152;
  v46 = vld1q_dup_f32(v42);
  v137 = vmulq_s32(vdupq_n_s32(v41), xmmword_1A6036AC0);
  v138 = v46;
  v136 = vdupq_n_s64(v151[0]);
  v140 = vdupq_n_s64(4uLL);
  do
  {
    v47 = vaddq_s32(vdupq_n_s32(v41 + v39 / v40), v137);
    v48 = vextq_s8(v47, v47, 0xCuLL);
    v48.i32[0] = v39 / v40;
    v48.i32[3] = v47.i32[2];
    v49 = vmulq_s32(v138, v48);
    v50 = vaddw_high_u32(v136, v49);
    v51 = vaddw_u32(v136, *v49.i8);
    v52 = v45;
    v53 = v39;
    do
    {
      v141 = v51;
      v142 = v50;
      v54 = (v44 + 16 * v53);
      v55 = v54[2];
      v56 = (v43 + 16 * v53);
      *v56 = *v54 + (*v51.i64[0] * v55);
      v57 = v54[3];
      v56[1] = v54[1] + (*v51.i64[1] * v57);
      v56[2] = expf(*v50.i64[0]) * v55;
      v56[3] = expf(*v142.i64[1]) * v57;
      v51 = vaddq_s64(v141, v140);
      v50 = vaddq_s64(v142, v140);
      ++v53;
      --v52;
    }

    while (v52);
    v39 += v40;
  }

  while (v39 < v139);
  v58 = 0;
  v59 = v153;
  v60 = v154;
  LODWORD(v61) = *(a1 + 20);
  do
  {
    v62 = 0;
    v63 = *(a1 + 52) * v61;
    v64 = v58 / v61;
    v65 = (v59 + v60 * (v64 + v63 * *(a1 + 28)));
    v66 = (v59 + v60 * v64);
    v67 = v58;
    do
    {
      v68 = *v66++;
      v69 = v68;
      v70 = *v65++;
      *(*(a1 + 456) + 4 * v67) = bmSoftmax2(v69, v70);
      ++v62;
      v61 = *(a1 + 20);
      ++v67;
    }

    while (v62 < v61);
    v71 = *(a1 + 436);
    v58 += v61;
  }

  while (v58 < v71);
  if (v71)
  {
    v72 = 0;
    v73 = 0;
    v74 = *(a1 + 456);
    v143 = *(a1 + 448);
    v75 = (v143 + 12);
    v76 = *(a1 + 464);
    v77 = *(a1 + 472);
    v78 = *(a1 + 480);
    v79 = -3.4028e38;
    do
    {
      v80 = *(v75 - 1);
      v81 = *(v135 + 24);
      v82 = *(v135 + 28);
      v83 = sqrtf((v80 + ((v80 + *v75) * 0.5)) * (*v75 + ((v80 + *v75) * 0.5))) / sqrtf((v81 + ((v81 + v82) * 0.5)) * (v82 + ((v81 + v82) * 0.5)));
      v84 = expf(-(((fmaxf((v81 / v82) / (v80 / *v75), 1.0 / ((v81 / v82) / (v80 / *v75))) * fmaxf(v83, 1.0 / v83)) + -1.0) * *(a1 + 76)));
      *(v77 + 4 * v72) = v84;
      v85 = *(v74 + 4 * v72) * v84;
      *(v76 + 4 * v72) = v85;
      v86 = (*(a1 + 80) * *(v78 + 4 * v72)) + (v85 * (1.0 - *(a1 + 80)));
      *(v76 + 4 * v72) = v86;
      if (v86 > v79)
      {
        v73 = v72;
        v79 = v86;
      }

      ++v72;
      v75 += 4;
    }

    while (v71 != v72);
    v87 = v143;
  }

  else
  {
LABEL_49:
    v73 = 0;
    v77 = *(a1 + 472);
    v87 = *(a1 + 448);
    v74 = *(a1 + 456);
  }

  a5 = v135;
  v106 = *(v135 + 1824);
  v107 = *(v135 + 24) / v106;
  v108 = *(v135 + 28) / v106;
  v109 = (v87 + 16 * v73);
  v110 = (*(v77 + 4 * v73) * *(v74 + 4 * v73)) * *(a1 + 84);
  v111 = (*(v135 + 20) + (v108 * 0.5)) + (v109[1] / v106);
  v112 = ((v109[2] / v106) * v110) + (v107 * (1.0 - v110));
  v113 = ((v109[3] / v106) * v110) + (v108 * (1.0 - v110));
  v114 = bmClamp((*(v135 + 16) + (v107 * 0.5)) + (*v109 / v106), 0.0, *v132);
  v115 = bmClamp(v111, 0.0, v132[1]);
  v116 = bmClamp(v112, 10.0, *v132);
  v117 = bmClamp(v113, 10.0, v132[1]);
  *(v135 + 16) = v114 - (v116 * 0.5);
  *(v135 + 20) = v115 - (v117 * 0.5);
  *(v135 + 24) = v116;
  *(v135 + 28) = v117;
  v149 = *(v134 + 8);
  *(v134 + 8) = *(v135 + 16);
  *v133 = 1;
  v118 = *(a1 + 456);
  v119 = *(v118 + 4 * v73);
  *(v134 + 24) = (v119 * 1000.0);
  v120 = *(a1 + 20);
  __src[0] = (v118 + 4 * v73 / (v120 * v120) * v120 * v120);
  LODWORD(v148) = 4 * v120;
  HIDWORD(v148) = 6;
  LODWORD(__src[1]) = v120;
  HIDWORD(__src[1]) = v120;
  ttTrkScoreNormalize(__src);
  v146 = 0;
  v145 = 0;
  ttTrkScoreFindMaxScore(__src, &v146 + 1, &v146, &v145);
  if (!*(v135 + 1861))
  {
    *(v135 + 1861) = 1;
    memcpy((v135 + 128), __src[0], (LODWORD(__src[1]) * v148));
    v121 = v145;
    *(v135 + 1828) = v146;
    *(v135 + 1832) = v121;
  }

  v144[1] = __src[1];
  v144[2] = v148;
  v144[0] = v135 + 128;
  v122 = -1.0;
  if (*(a1 + 96) < 1.0 && *(a1 + 100) > 0.0)
  {
    v122 = ttTrkComputeKL(v144, __src, *(v135 + 1828), *(v135 + 1832), v146, v145);
  }

  if (*(v135 + 1862))
  {
    v123 = v149;
    *(v135 + 16) = v149;
    *(v134 + 8) = v123;
    v124 = *(v135 + 1852);
    if (v124 < *(a1 + 128))
    {
      v125 = v124 + 1;
      *(v135 + 1852) = v125;
      if (*(v135 + 1812) < v119)
      {
        v126 = *(v135 + 1848) + 1;
      }

      else
      {
        v126 = 0;
      }

      *(v135 + 1848) = v126;
      if (v126 >= *(a1 + 116))
      {
        *(v135 + 1862) = 0;
        *(v135 + 1852) = 0;
        *(v135 + 1820) = 1065353216;
        *(v135 + 1840) = 0;
        *(v135 + 1836) = 0;
        *(v135 + 1572) = 0u;
        *(v135 + 1588) = 0u;
        *(v135 + 1604) = 0u;
        *(v135 + 1620) = 0u;
        *(v135 + 1636) = 0u;
        *(v135 + 1652) = 0u;
        *(v135 + 1668) = 0u;
        *(v135 + 1684) = 0u;
        *(v135 + 1700) = 0u;
        *(v135 + 1716) = 0u;
        *(v135 + 1732) = 0u;
        *(v135 + 1748) = 0u;
        *(v135 + 1764) = 0u;
        *(v135 + 1780) = 0u;
        *(v135 + 1796) = 0u;
      }

      else
      {
        *(v135 + 1820) = (*(a1 + 104) * v125) + 1.0;
      }

      goto LABEL_70;
    }

    *(v135 + 1856) = 0;
    *(v135 + 1820) = 1065353216;
    *(v135 + 1836) = 0u;
    *(v135 + 1861) = 0;
    *(v135 + 1852) = 0;
    *(v135 + 1572) = 0u;
    *(v135 + 1588) = 0u;
    *(v135 + 1604) = 0u;
    *(v135 + 1620) = 0u;
    *(v135 + 1636) = 0u;
    *(v135 + 1652) = 0u;
    *(v135 + 1668) = 0u;
    *(v135 + 1684) = 0u;
    *(v135 + 1700) = 0u;
    *(v135 + 1716) = 0u;
    *(v135 + 1732) = 0u;
    *(v135 + 1748) = 0u;
    *(v135 + 1764) = 0u;
    *(v135 + 1780) = 0u;
    *(v135 + 1796) = 0u;
    *v133 = 0;
LABEL_72:
    v131 = 1;
  }

  else
  {
    if (TtTrkRpnNode::checkToTerminate(a1, v135, v119, v122))
    {
      *(v135 + 1862) = 1;
      TtTrkRpnNode::terminate(a1, v135, v127);
    }

    else
    {
      v128 = *(v135 + 1836);
      v129 = v135 + 4 * v128;
      *(v129 + 1572) = v119;
      *(v129 + 1692) = v122;
      if ((v128 + 1) < *(a1 + 124))
      {
        v130 = v128 + 1;
      }

      else
      {
        v130 = 0;
      }

      *(v135 + 1836) = v130;
    }

LABEL_70:
    if (!*(v135 + 1862))
    {
      goto LABEL_72;
    }

    v131 = 2;
  }

  *(v134 + 84) = v131;
LABEL_74:
  result = 0;
  a5[1] = 467393;
  return result;
}

BOOL TtTrkRpnNode::checkToTerminate(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 96);
  if (*(a1 + 92) > a3)
  {
    v5 = *(a2 + 1840) + 1;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 1840) = v5;
  if (v4 >= a4 || *(a1 + 100) <= a3)
  {
    v6 = 0;
    *(a2 + 1844) = 0;
  }

  else
  {
    v6 = *(a2 + 1844) + 1;
    *(a2 + 1844) = v6;
  }

  v7 = *(a1 + 120);
  return v5 >= v7 || v6 >= v7;
}

float TtTrkRpnNode::terminate(uint64_t a1, uint64_t a2, float result)
{
  *(a2 + 1848) = 0;
  v3 = *(a1 + 124);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 1572);
    v6 = 0.0;
    v7 = *(a1 + 124);
    do
    {
      v8 = *v5++;
      v9 = v6 + v8;
      if (v8 > 0.0)
      {
        v6 = v9;
        ++v4;
      }

      --v7;
    }

    while (v7);
    if (v4)
    {
      *(a2 + 1812) = v6 / v4;
    }

    v10 = 0;
    v11 = (a2 + 1692);
    result = 0.0;
    do
    {
      v12 = *v11++;
      v13 = result + v12;
      if (v12 > 0.0)
      {
        result = v13;
        ++v10;
      }

      --v3;
    }

    while (v3);
    if (v10)
    {
      result = result / v10;
      *(a2 + 1816) = result;
    }
  }

  return result;
}

uint64_t TtTrkRpnNode::getParams(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    v28 = rtcv::LoggerDevNull::instance(a1);
    v29 = rtcv::LoggerDevNull::devNull(v28);
    v30 = fprintf(v29, "Incorrect trk node state version (%u vs %u)\n", *a2, 1);
    v31 = rtcv::Logger::instance(v30);
    v37 = 1;
    rtcv::Logger::log<(rtcv::Logger::Severity)3,unsigned int &,int>(v31, "Incorrect trk node state version (%u vs %u)\n", a2, &v37, v32, v33, v34, v35);
    return 4294967289;
  }

  v4 = a2[1];
  if (v4 != 467402 && v4 != 467393)
  {
    return 4294967289;
  }

  v6 = 0;
  v7 = (*(a1 + 152) * *(a1 + 144) + 63) & 0xFFFFFFC0;
  v8 = (*(a1 + 140) * *(a1 + 132) + 63) & 0xFFFFFFC0;
  *(a3 + 196) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = 0x100000001;
  v9 = *(a1 + 132);
  *(a3 + 8) = *(a1 + 28);
  *(a3 + 12) = v9;
  v10 = *(a1 + 136);
  *(a3 + 16) = v10;
  v11 = *(a1 + 144);
  *(a3 + 24) = v10 * v8;
  *(a3 + 28) = v11;
  v12 = *(a1 + 148);
  *(a3 + 32) = v12;
  *(a3 + 40) = v12 * v7;
  v13 = a1 + 248;
  v14 = a1 + 256;
  v15 = *(a1 + 336);
  v16 = 1;
  do
  {
    *(a3 + 44 + 4 * v6) = *(v13 + 4 * v6);
    *(a3 + 52 + 4 * v6) = *(v14 + 4 * v6);
    v17 = v16;
    v18 = *(a1 + 264 + 4 * v6);
    *(a3 + 60 + 4 * v6) = v18;
    if (v15 > 7)
    {
      v19 = 0;
    }

    else
    {
      v19 = dword_1A6036AD0[v15];
    }

    v16 = 0;
    *(a3 + 68 + 4 * v6) = v19 * *(v13 + 4 * v6) * *(v14 + 4 * v6) * v18;
    v6 = 1;
  }

  while ((v17 & 1) != 0);
  v20 = 0;
  *(a3 + 76) = v15;
  v21 = a1 + 156;
  v22 = a1 + 164;
  v23 = 1;
  do
  {
    *(a3 + 80 + 4 * v20) = *(v21 + 4 * v20);
    *(a3 + 88 + 4 * v20) = *(v22 + 4 * v20);
    v24 = v23;
    v25 = *(a1 + 172 + 4 * v20);
    *(a3 + 96 + 4 * v20) = v25;
    if (v15 > 7)
    {
      v26 = 0;
    }

    else
    {
      v26 = dword_1A6036AD0[v15];
    }

    v23 = 0;
    *(a3 + 104 + 4 * v20) = v26 * *(v21 + 4 * v20) * *(v22 + 4 * v20) * v25;
    v20 = 1;
  }

  while ((v24 & 1) != 0);
  v27 = 0;
  *(a3 + 112) = *(a1 + 244);
  return v27;
}

uint64_t TtTrkRpnNode::setUpNetBuffers(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 4294967292;
  }

  v5 = *(a1 + 12);
  if (!v5)
  {
    return 4294967292;
  }

  v6 = a1 + 3;
  if (!a1[3] || a1[4] == 0)
  {
    return 4294967292;
  }

  v9 = a1 + 6;
  v10 = a1[6];
  result = 4294967292;
  if (v10 && a1[7] && *(a1 + 2) >= a2[6] && *(a1 + 5) >= a2[10])
  {
    v11 = 0;
    *a3 = v3;
    v12 = a2[5] * a2[3];
    *(a3 + 8) = a2[4];
    *(a3 + 12) = v12;
    v13 = 1;
    *(a3 + 16) = (v12 + 63) & 0xFFFFFFC0;
    *(a3 + 20) = 1;
    *(a3 + 24) = v5;
    v14 = a2[9] * a2[7];
    *(a3 + 32) = a2[8];
    *(a3 + 36) = v14;
    *(a3 + 40) = (v14 + 63) & 0xFFFFFFC0;
    *(a3 + 44) = 1;
    v15 = a2[28];
    do
    {
      v16 = v13;
      v17 = a3 + 48 + 24 * v11;
      *v17 = v6[v11];
      v18 = a2[v11 + 20];
      *(v17 + 12) = v18;
      *(v17 + 8) = a2[v11 + 24] * a2[v11 + 22];
      *(v17 + 20) = v15;
      if (v15 > 7)
      {
        v19 = 0;
      }

      else
      {
        v19 = dword_1A6036AD0[v15];
      }

      v13 = 0;
      *(v17 + 16) = v19 * v18;
      v11 = 1;
    }

    while ((v16 & 1) != 0);
    v20 = 0;
    v21 = a3 + 96;
    v22 = a2 + 11;
    v23 = a2 + 13;
    v24 = a2 + 15;
    v25 = a2[19];
    v26 = 1;
    do
    {
      v27 = v26;
      v28 = v21 + 24 * v20;
      *v28 = v9[v20];
      v29 = v22[v20];
      *(v28 + 12) = v29;
      *(v28 + 8) = v24[v20] * v23[v20];
      *(v28 + 20) = v25;
      if (v25 > 7)
      {
        v30 = 0;
      }

      else
      {
        v30 = dword_1A6036AD0[v25];
      }

      v26 = 0;
      result = 0;
      *(v28 + 16) = v30 * v29;
      v20 = 1;
    }

    while ((v27 & 1) != 0);
  }

  return result;
}

uint64_t *ttTrkScoreFindMaxScore(uint64_t *result, float *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(result + 2);
  v5 = *(result + 3);
  *a2 = -3.4028e38;
  *a3 = 0;
  *a4 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = *result;
    v8 = -3.4028e38;
    do
    {
      if (v5)
      {
        v9 = 0;
        v10 = v7 + (*(result + 4) * v6);
        do
        {
          v11 = *(v10 + 4 * v9);
          if (v11 > v8)
          {
            *a2 = v11;
            *a3 = v9;
            v8 = v11;
            *a4 = v6;
          }

          ++v9;
        }

        while (v5 != v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t *ttTrkScoreNormalize(uint64_t *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0.0;
    v5 = *(result + 3);
    do
    {
      if (v5)
      {
        v6 = (*result + v2);
        v7 = *(result + 3);
        do
        {
          v8 = *v6++;
          v4 = v4 + v8;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v2 += *(result + 4);
    }

    while (v3 != v1);
    if (v4 > 0.0000001)
    {
      v9 = 0;
      v10 = 0;
      v11 = *result;
      v12 = *(result + 4);
      do
      {
        if (v5)
        {
          v13 = (v11 + v9);
          v14 = v5;
          do
          {
            *v13 = *v13 / v4;
            ++v13;
            --v14;
          }

          while (v14);
        }

        ++v10;
        v9 += v12;
      }

      while (v10 != v1);
    }
  }

  return result;
}

float ttTrkComputeKL(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = *(a1 + 4);
  v31 = *a2;
  v32 = *a1;
  v11 = *(a2 + 4);
  v30 = a4 - 9;
  v28 = a6 - 9;
  v29 = v10 * (a4 - 9);
  v27 = v11 * (a6 - 9);
  v12 = -9;
  v13 = 0.0;
  v36 = v8;
  v37 = v6;
  v35 = v9;
  do
  {
    v14 = v12 + a5;
    v38 = v12;
    v15 = v12 + a3;
    v16 = 19;
    v18 = v27;
    v17 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v32 + 4 * (v12 + a3);
    v22 = v31 + 4 * v14;
    do
    {
      if ((v14 & 0x80000000) == 0 && v14 < v7 && (v17 & 0x80000000) == 0 && v17 < v6 && (v15 & 0x80000000) == 0 && v15 < v8 && (v20 & 0x80000000) == 0 && v20 < v9)
      {
        v23 = *(v22 + v18);
        if (v23 >= 0.000001)
        {
          v24 = *(v21 + v19);
          if (v24 >= 0.000001)
          {
            v25 = logf(v24 / v23);
            v22 = v31 + 4 * v14;
            v21 = v32 + 4 * v15;
            v9 = v35;
            v8 = v36;
            v6 = v37;
            v13 = v13 + (v24 * v25);
          }
        }
      }

      ++v20;
      v19 += v10;
      ++v17;
      v18 += v11;
      --v16;
    }

    while (v16);
    v12 = v38 + 1;
  }

  while (v38 != 9);
  return fmaxf(v13, 0.0);
}

void **GeomTransformShared_constructor()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040FDD9F14CuLL);
  v1 = v0;
  if (!v0 || (v0[1] = 2048, v2 = malloc_type_calloc(1uLL, 0x800uLL, 0x100004077774924uLL), (*v1 = v2) == 0))
  {
    GeomTransformShared_destructor(v1);
    return 0;
  }

  return v1;
}

void GeomTransformShared_destructor(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    *a1 = 0;
    a1[1] = 0;

    free(a1);
  }
}

void *GeomTransform_constructor(unsigned int a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0x1080040FC92EF5CuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 4) = xmmword_1A6036B00;
    *(v4 + 20) = xmmword_1A6036B00;
    *(v4 + 36) = xmmword_1A6036B00;
    *(v4 + 52) = xmmword_1A6036B00;
    *v4 = a1;
    if (a1 > 2)
    {
      syslog(3, "GeomTransform_constructor: unknown transform model (%d)", a1);
      free(v5);
      return 0;
    }

    else
    {
      *(v4 + 9) = a2;
    }
  }

  return v5;
}

double GeomTransform_eye(uint64_t a1)
{
  *&result = 1065353216;
  *(a1 + 4) = xmmword_1A6036B00;
  *(a1 + 20) = xmmword_1A6036B00;
  *(a1 + 36) = xmmword_1A6036B00;
  *(a1 + 52) = xmmword_1A6036B00;
  return result;
}

void GeomTransform_destructor(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t GeomTransform_minSupportPoints(int *a1)
{
  v1 = *a1;
  if (*a1 < 3)
  {
    return (v1 + 2);
  }

  syslog(3, "GeomTransform_minSupportPoints: unknown transform model (%d), reset to RIGID", v1);
  return 2;
}

uint64_t GeomTransform_changeCoordinateSystem(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 20);
  v15[0] = *(a1 + 4);
  v15[1] = v3;
  v16 = 1065353216;
  v4 = *(a2 + 20);
  v13[0] = *(a2 + 4);
  v13[1] = v4;
  v14 = 1065353216;
  v5 = *(a2 + 52);
  v11[0] = *(a2 + 36);
  v11[1] = v5;
  v12 = 1065353216;
  mul3x3Matrix(v17, v15, v11, 0);
  v7 = mul3x3Matrix(v17, v13, v17, 0);
  v6 = 0;
  v7.f32[0] = v18;
  if (fabsf(v18) < 1.0e-10)
  {
    syslog(3, "GeomTransform_changeCoordinateSystem failed");
    v6 = 0xFFFFFFFFLL;
    v7.f32[0] = v18;
  }

  v8 = 0;
  v9 = vdupq_lane_s32(*v7.f32, 0);
  do
  {
    v19[v8] = vdivq_f32(v17[v8], v9);
    ++v8;
  }

  while (v8 != 2);
  GeomTransform_setParams(a1, v19);
  return v6;
}

double GeomTransform_setParams(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  v13 = *MEMORY[0x1E69E9840];
  do
  {
    *(a1 + 4 + v3) = *(a2 + v3);
    v3 += 4;
  }

  while (v3 != 32);
  v4 = a2[1];
  v10 = *a2;
  v11 = v4;
  v12 = 1065353216;
  invMatrix(&v10, 3);
  for (i = 0; i != 32; i += 16)
  {
    v6 = &v12;
    v7 = vld1q_dup_f32(v6);
    *(&v10 + i) = vdivq_f32(*(&v10 + i), v7);
  }

  result = *&v10;
  v9 = v11;
  *(a1 + 36) = v10;
  *(a1 + 52) = v9;
  return result;
}

float GeomTransform_deepCopy(uint64_t a1, uint64_t a2)
{
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void GeomTransform_setModel(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1A6036B44;
  v3 = unk_1A6036B54;
  switch(a2)
  {
    case 2:
      *a1 = 2;
      break;
    case 1:
      *a1 = 1;
      v2 = *(a1 + 4);
      *&v3 = *(a1 + 20);
      goto LABEL_6;
    case 0:
      *a1 = 0;
      LODWORD(v2) = *(a1 + 4);
      *(&v2 + 4) = *(a1 + 8);
      *(&v2 + 3) = -*(&v2 + 1);
      LODWORD(v3) = v2;
      DWORD1(v3) = *(a1 + 24);
LABEL_6:
      GeomTransform_setParams(a1, &v2);
      return;
    default:
      syslog(3, "GeomTransform_setModel: unknown new model (%d) use the old model (%d)", a2, *a1);
      break;
  }
}

float *GeomTransform_dirs(float *result, float *a2, float *a3, float *a4, float *a5, unsigned int a6)
{
  if (a6)
  {
    v6 = a6;
    do
    {
      v7 = *a4++;
      v8 = v7;
      v9 = *a5++;
      v10 = ((v9 * result[8]) + (result[7] * v8)) + 1.0;
      *a2 = result[3] + ((v9 * result[2]) + (result[1] * v8));
      *a3 = result[6] + ((v9 * result[5]) + (result[4] * v8));
      *a2 = *a2 / v10;
      ++a2;
      *a3 = *a3 / v10;
      ++a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

float *GeomTransform_invs(float *result, float *a2, float *a3, float *a4, float *a5, unsigned int a6)
{
  if (a6)
  {
    v6 = a6;
    do
    {
      v7 = *a4++;
      v8 = v7;
      v9 = *a5++;
      v10 = ((v9 * result[16]) + (result[15] * v8)) + 1.0;
      *a2 = result[11] + ((v9 * result[10]) + (result[9] * v8));
      *a3 = result[14] + ((v9 * result[13]) + (result[12] * v8));
      *a2 = *a2 / v10;
      ++a2;
      *a3 = *a3 / v10;
      ++a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t GeomTransform_estimate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, int a7)
{
  v182 = *MEMORY[0x1E69E9840];
  v14 = *a1;
  if (*a1 == 2)
  {
    v100 = 0.0;
    v101 = 1.0;
    v98 = 1.0;
    v99 = 0.0;
    v97 = 0;
    v16 = *(a1 + 72);
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = malloc_type_calloc(1uLL, 0x800uLL, 0x100004077774924uLL);
    }

    normalizePoints(&v101, &v100, &v99, a4, a5, a6, a7);
    normalizePoints(&v98, &v97 + 1, &v97, a2, a3, a6, a7);
    v19 = *a6;
    *&v20 = v100 + (v101 * *(a4 + 4 * v19));
    v21 = v99 + (v101 * *(a5 + 4 * v19));
    v22 = *(&v97 + 1) + (v98 * *(a2 + 4 * v19));
    v23 = *&v97 + (v98 * *(a3 + 4 * v19));
    v24 = *&v20 * *&v20;
    *&v25 = *&v20 * v21;
    v108 = *&v20 * *&v20;
    v109 = *&v20 * v21;
    v26 = v21 * v21;
    v117 = v21 * v21;
    v118 = v21;
    v27 = -(*&v20 * *&v20);
    v28 = v27 * v22;
    v110 = v20;
    v113 = v27 * v22;
    v29 = -(v21 * *&v20) * v22;
    v30 = -(*&v20 * v22);
    v31 = v27 * v23;
    v32 = -(*&v20 * v21);
    v33 = v32 * v23;
    v34 = -(*&v20 * v23);
    v35 = v32 * v22;
    v36 = -(v21 * v21);
    v37 = v36 * v22;
    v121 = v29;
    v122 = v36 * v22;
    v38 = -(v21 * v22);
    v137 = v31;
    v138 = v33;
    v39 = v36 * v23;
    v40 = -(v21 * v23);
    v153 = v34;
    v154 = v40;
    v41 = (v22 * ((v21 * v21) * v22)) + (((v21 * v21) * v23) * v23);
    v171 = v41;
    v114 = v35;
    v115 = v30;
    v129 = v30;
    v123 = v38;
    v42 = -v22;
    v130 = v38;
    v131 = -v22;
    v145 = v33;
    v139 = v34;
    v146 = v39;
    v147 = v40;
    v43 = -v23;
    v162 = (v23 * ((*&v20 * *&v20) * v23)) + (((*&v20 * *&v20) * v22) * v22);
    v155 = -v23;
    v44.f32[0] = *&v20 * v21;
    v44.i32[1] = v20;
    v45 = vmla_n_f32(vmul_n_f32(vmul_n_f32(v44, v23), v23), vmul_n_f32(v44, v22), v22);
    v163 = v45;
    v46 = (v23 * (v21 * v23)) + ((v21 * v22) * v22);
    v172 = v46;
    v47 = (v23 * v23) + (v22 * v22);
    v181 = v47;
    if (a7 < 2)
    {
      v58 = -(v21 * v23);
      v57 = v34;
      v74 = v33;
      v55 = -(v21 * v22);
      v52 = -(*&v20 * v22);
    }

    else
    {
      v48 = a7 - 1;
      v49 = a6 + 1;
      v95 = (v23 * ((*&v20 * *&v20) * v23)) + (((*&v20 * *&v20) * v22) * v22);
      v50 = v33;
      v51 = -(*&v20 * v22);
      v52 = v51;
      v53 = v37;
      v54 = v38;
      v55 = v38;
      v56 = -(*&v20 * v23);
      v57 = v56;
      v58 = -(v21 * v23);
      do
      {
        v92 = v58;
        v59 = *v49++;
        v60 = v42;
        v61 = v26;
        v62 = v100 + (v101 * *(a4 + 4 * v59));
        v63 = v99 + (v101 * *(a5 + 4 * v59));
        v64 = *(&v97 + 1) + (v98 * *(a2 + 4 * v59));
        v65 = *&v97 + (v98 * *(a3 + 4 * v59));
        *&v25 = *&v25 + (v62 * v63);
        *&v20 = *&v20 + v62;
        v93 = v25;
        v94 = v20;
        v66 = v24 + (v62 * v62);
        v67 = -(v62 * v62);
        v68 = v28 + (v67 * v64);
        v51 = v51 - (v62 * v64);
        v29 = v29 + (-(v63 * v62) * v64);
        v31 = v31 + (v67 * v65);
        v69 = -(v62 * v63);
        v50 = v50 + (v69 * v65);
        v56 = v56 - (v62 * v65);
        v95 = v95 + ((v65 * ((v62 * v62) * v65)) + (((v62 * v62) * v64) * v64));
        v70 = -(v63 * v63);
        v35 = v35 + (v69 * v64);
        v53 = v53 + (v70 * v64);
        v33 = v33 + (v69 * v65);
        v39 = v39 + (v70 * v65);
        v71.f32[0] = v62 * v63;
        v71.f32[1] = v62;
        v52 = v52 - (v62 * v64);
        v57 = v57 - (v62 * v65);
        v72 = v61;
        v73 = v60;
        v26 = v72 + (v63 * v63);
        v21 = v21 + v63;
        v54 = v54 - (v63 * v64);
        v40 = v40 - (v63 * v65);
        v55 = v55 - (v63 * v64);
        v58 = v92 - (v63 * v65);
        v41 = v41 + ((v64 * ((v63 * v63) * v64)) + (((v63 * v63) * v65) * v65));
        v46 = v46 + ((v65 * (v63 * v65)) + ((v63 * v64) * v64));
        v45 = vadd_f32(v45, vmla_n_f32(vmul_n_f32(vmul_n_f32(v71, v65), v65), vmul_n_f32(v71, v64), v64));
        v28 = v68;
        v42 = v73 - v64;
        v43 = v43 - v65;
        v47 = v47 + ((v65 * v65) + (v64 * v64));
        v24 = v66;
        v25 = v93;
        v20 = v94;
        --v48;
      }

      while (v48);
      v108 = v24;
      v109 = *&v93;
      v117 = v26;
      v118 = v21;
      v110 = v94;
      v113 = v28;
      v121 = v29;
      v122 = v53;
      v137 = v31;
      v74 = v33;
      v138 = v33;
      v153 = v56;
      v154 = v40;
      v171 = v41;
      v114 = v35;
      v115 = v52;
      v30 = v51;
      v129 = v51;
      v123 = v55;
      v38 = v54;
      v130 = v54;
      v131 = v42;
      v33 = v50;
      v145 = v50;
      v139 = v57;
      v146 = v39;
      v147 = v58;
      v162 = v95;
      v155 = v43;
      v163 = v45;
      v172 = v46;
      v181 = v47;
      v37 = v53;
    }

    v116 = v25;
    v173 = v52;
    v124 = v20;
    v125 = v21;
    v132 = 0;
    v140 = 0;
    v148 = 0;
    v165 = v37;
    v174 = v55;
    v126 = a7;
    v141 = 0;
    v149 = 0;
    v157 = v29;
    v158 = v30;
    v166 = v38;
    v175 = v42;
    v167 = v74;
    v176 = v57;
    v111 = 0;
    v119 = 0;
    v127 = 0;
    v134 = v24;
    v135 = v25;
    v142 = v25;
    v143 = v26;
    v150 = v20;
    v151 = v21;
    v159 = v31;
    v160 = v33;
    v168 = v39;
    v177 = v58;
    v112 = 0;
    v120 = 0;
    v133 = 0;
    v128 = 0;
    v136 = v20;
    v144 = v21;
    v156 = v28;
    v152 = a7;
    v164 = v35;
    v161 = v153;
    v169 = v154;
    v178 = v155;
    v179 = v163.i32[1];
    v170 = v163.i32[0];
    v180 = v172;
    qmemcpy(v96, "LIV", sizeof(v96));
    ssyevx_NEWLAPACK();
    _S16 = HIDWORD(v97);
    _S17 = v97;
    _S23 = -(v99 * *(&v97 + 1));
    _S25 = -(v99 * *&v97);
    _V26.S[1] = v106.i32[1];
    __asm { FMLS            S2, S16, V26.S[1] }

    *&v103 = (v105[55] - (*(&v97 + 1) * v106.f32[0])) * (v101 / v98);
    *(&v103 + 1) = _S2 * (v101 / v98);
    __asm { FMLA            S1, S23, V26.S[1] }

    *(&v103 + 2) = ((v105[57] + _S1) - (*(&v97 + 1) * v107)) / v98;
    *(&v103 + 3) = (v105[58] - (*&v97 * v106.f32[0])) * (v101 / v98);
    __asm
    {
      FMLS            S5, S17, V26.S[1]
      FMLA            S1, S25, V26.S[1]
    }

    *&v104 = _S5 * (v101 / v98);
    *(&v104 + 1) = ((v105[60] + _S1) - (*&v97 * v107)) / v98;
    *(&v104 + 1) = vmul_n_f32(v106, v101);
    v105[0] = v107 + (vmuls_lane_f32(v99, v106, 1) + (v100 * v106.f32[0]));
    if (fabs(v105[0]) >= 1.0e-10)
    {
      for (i = 0; i != 32; i += 16)
      {
        v90 = v105;
        v91 = vld1q_dup_f32(v90);
        *(&v103 + i) = vdivq_f32(*(&v103 + i), v91);
      }

      v102[0] = v103;
      v102[1] = v104;
      GeomTransform_setParams(a1, v102);
      v88 = 1;
      if (v16)
      {
LABEL_19:
        if (v88)
        {
          return 0;
        }

LABEL_20:
        AffineTransform_estimate(a1, a2, a3, a4, a5, a6, a7);
        return 0;
      }
    }

    else
    {
      syslog(3, "HomographyTransform_estimate: the 9-th parameter is too small pp[8]=%f \n", v105[0]);
      printf("HomographyTransform_estimate: the 9-th parameter is too small pp[8]=%f \n");
      v88 = 0;
      if (v16)
      {
        goto LABEL_19;
      }
    }

    free(v17);
    goto LABEL_19;
  }

  if (v14 == 1)
  {
    goto LABEL_20;
  }

  if (v14)
  {
    v18 = RigidTransform_estimate(a1, a2, a3, a4, a5, a6, a7);
    syslog(3, "GeomTransform_estimate: unknown transform model (%d) use RIGID", *a1);
    return v18;
  }

  else
  {

    return RigidTransform_estimate(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t RigidTransform_estimate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, int a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = *a6;
  v9 = *(a4 + 4 * v8);
  v10 = *(a5 + 4 * v8);
  v11 = *(a2 + 4 * v8);
  v12 = *(a3 + 4 * v8);
  v13 = (v10 * v10) + (v9 * v9);
  v14 = (v10 * v12) + (v11 * v9);
  v15 = (v9 * v12) - (v11 * v10);
  if (a7 >= 2)
  {
    v16 = a6 + 1;
    v17 = a7 - 1;
    do
    {
      v18 = *v16++;
      v19 = *(a4 + 4 * v18);
      v20 = *(a5 + 4 * v18);
      v21 = *(a2 + 4 * v18);
      v22 = *(a3 + 4 * v18);
      v13 = ((v20 * v20) + (v19 * v19)) + v13;
      v9 = v19 + v9;
      v10 = v20 + v10;
      v14 = ((v20 * v22) + (v21 * v19)) + v14;
      v15 = ((v19 * v22) - (v21 * v20)) + v15;
      v11 = v21 + v11;
      v12 = v22 + v12;
      --v17;
    }

    while (v17);
  }

  v33 = v13;
  v30 = __PAIR64__(LODWORD(v15), LODWORD(v14));
  v31 = v11;
  v32 = v12;
  v37 = 0;
  v34 = 0;
  v45 = v10;
  v46 = v9;
  v38 = v13;
  v39 = -v10;
  v42 = -v10;
  v43 = a7;
  v47 = 0;
  v35 = v9;
  v36 = v10;
  v40 = v9;
  v41 = v9;
  v44 = 0;
  v48 = a7;
  sposv_NEWLAPACK();
  v23 = *&v30;
  if (*&v30 >= 0.95)
  {
    v24 = *(&v30 + 1);
  }

  else
  {
    v30 = 1065353216;
    v23 = 1.0;
    v24 = 0.0;
  }

  *&v26 = v23;
  *(&v26 + 1) = -v24;
  *(&v26 + 1) = __PAIR64__(LODWORD(v24), LODWORD(v31));
  v27 = v23;
  v28 = v32;
  v29 = 0;
  GeomTransform_setParams(a1, &v26);
  return 0;
}

double AffineTransform_estimate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, int a7)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *a6;
  v9 = *(a4 + 4 * v8);
  v10 = *(a5 + 4 * v8);
  v11 = *(a2 + 4 * v8);
  v12 = *(a3 + 4 * v8);
  v13 = v9 * v9;
  v14 = v9 * v10;
  v15 = v10 * v10;
  v16 = v9 * v11;
  v17 = v10 * v11;
  v18 = v9 * v12;
  v19 = v10 * v12;
  if (a7 >= 2)
  {
    v20 = a6 + 1;
    v21 = a7 - 1;
    do
    {
      v22 = *v20++;
      v23 = *(a4 + 4 * v22);
      v24 = *(a5 + 4 * v22);
      v25 = *(a2 + 4 * v22);
      v26 = *(a3 + 4 * v22);
      v13 = v13 + (v23 * v23);
      v14 = v14 + (v23 * v24);
      v15 = v15 + (v24 * v24);
      v9 = v23 + v9;
      v10 = v24 + v10;
      v16 = v16 + (v23 * v25);
      v17 = v17 + (v24 * v25);
      v11 = v25 + v11;
      v18 = v18 + (v23 * v26);
      v19 = v19 + (v24 * v26);
      v12 = v26 + v12;
      --v21;
    }

    while (v21);
  }

  v33 = v13;
  v34 = v14;
  v35 = v9;
  v39 = v15;
  v40 = v10;
  *&v31 = __PAIR64__(LODWORD(v17), LODWORD(v16));
  *(&v31 + 1) = __PAIR64__(LODWORD(v18), LODWORD(v11));
  v32 = __PAIR64__(LODWORD(v12), LODWORD(v19));
  v38 = v14;
  v43 = v9;
  v44 = v10;
  v53 = 0;
  v58 = 0;
  v45 = a7;
  v49 = 0;
  v54 = 0;
  v59 = 0;
  v36 = 0;
  v41 = 0;
  v50 = v13;
  v51 = v14;
  v55 = v14;
  v56 = v15;
  v60 = v9;
  v61 = v10;
  v37 = 0;
  v42 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v52 = v9;
  v57 = v10;
  v62 = a7;
  sposv_NEWLAPACK();
  v28 = v31;
  v29 = v32;
  v30 = 0;
  return GeomTransform_setParams(a1, &v28);
}

float GeomTransform_adjustToUnitySize(float *a1, float *a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = 0;
  v6 = a3;
  v7 = a4;
  if (a3 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  v9 = v6 / v8;
  v10 = v7 / v8;
  v11 = v7 / v6;
  v12 = v6 / v7;
  *a1 = *a2 + (v9 * a2[6]);
  v13 = (v10 * a2[7]) + ((v7 / v6) * a2[1]);
  v14 = -v8;
  v15 = v14 / v6;
  v16 = 1;
  if (a5)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  v18 = 2;
  if (a5)
  {
    v19 = 2;
  }

  else
  {
    v19 = 6;
  }

  if (a5)
  {
    v16 = 3;
  }

  a1[v17] = v13;
  a1[v19] = (((((*a2 + (v9 * a2[6])) + (v11 * a2[1])) + (v10 * a2[7])) + (v15 * a2[2])) + -1.0) * -0.5;
  a1[v16] = (v9 * a2[6]) + (v12 * a2[3]);
  a1[4] = a2[4] + (v10 * a2[7]);
  v20 = (v9 * a2[6]) + (v12 * a2[3]);
  v21 = 5;
  if (a5)
  {
    v22 = 5;
  }

  else
  {
    v22 = 7;
  }

  if (a5)
  {
    v18 = 6;
  }

  a1[v22] = ((((a2[4] + v20) + (v10 * a2[7])) + ((v14 / v7) * a2[5])) + -1.0) * -0.5;
  if (a5)
  {
    v21 = 7;
  }

  a1[v18] = (v9 + v9) * a2[6];
  a1[v21] = (v10 + v10) * a2[7];
  a1[8] = (-(v10 * a2[7]) - (v9 * a2[6])) + 1.0;
  do
  {
    result = a1[v5] / a1[8];
    a1[v5++] = result;
  }

  while (v5 != 9);
  return result;
}

float GeomTransform_adjustfromUnitySize(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t a4, int a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v41[0] = (a3 + a3) / v7;
  v41[1] = 0.0;
  v41[2] = -a3 / v7;
  v41[3] = 0.0;
  v41[4] = (a4 + a4) / v7;
  v41[5] = -a4 / v7;
  v41[6] = 0.0;
  v41[7] = 0.0;
  v41[8] = 1.0;
  v36 = v7 / (2 * a3);
  v37 = 0x3F00000000000000;
  v38 = 0;
  v39 = v7 / (2 * a4);
  v40 = xmmword_1A6036B10;
  v8 = 1;
  if (a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  v10 = a2[v9];
  if (a5)
  {
    v11 = 2;
  }

  else
  {
    v11 = 6;
  }

  if (a5)
  {
    v8 = 3;
  }

  v12 = 5;
  v42[0] = *a2;
  v42[1] = v10;
  if (a5)
  {
    v13 = 5;
  }

  else
  {
    v13 = 7;
  }

  if (a5)
  {
    v12 = 7;
  }

  v14 = a2[v12];
  v15 = a2[8];
  if (a5)
  {
    v16 = 6;
  }

  else
  {
    v16 = 2;
  }

  v17 = a2[v16];
  v18 = a2[v13];
  v19 = a2[4];
  v20 = a2[v8];
  v42[2] = a2[v11];
  v42[3] = v20;
  v42[4] = v19;
  v42[5] = v18;
  v42[6] = v17;
  v42[7] = v14;
  v42[8] = v15;
  mul3x3Matrix(&v43, v42, &v36, 0);
  mul3x3Matrix(&v43, v41, &v43, 0);
  if (fabsf(v45) < 1.0e-10)
  {
    syslog(3, "GeomTransform_changeCoordinateSystem failed");
  }

  for (i = 0; i != 9; ++i)
  {
    v43.f32[i] = v43.f32[i] / v45;
  }

  v22 = 1;
  if (a5)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  v24 = v43.i32[v23];
  v25 = 2;
  if (a5)
  {
    v26 = 2;
  }

  else
  {
    v26 = 6;
  }

  v27 = v43.i32[v26];
  if (a5)
  {
    v22 = 3;
  }

  v28 = v43.i32[v22];
  v29 = v44;
  v30 = 5;
  if (a5)
  {
    v31 = 5;
  }

  else
  {
    v31 = 7;
  }

  v32 = v43.i32[v31];
  if (a5)
  {
    v25 = 6;
  }

  v33 = v43.i32[v25];
  if (a5)
  {
    v30 = 7;
  }

  v34 = v43.i32[v30];
  *a1 = v43.i32[0];
  *(a1 + 4) = v24;
  result = v45;
  *(a1 + 8) = v27;
  *(a1 + 12) = v28;
  *(a1 + 16) = v29;
  *(a1 + 20) = v32;
  *(a1 + 24) = v33;
  *(a1 + 28) = v34;
  *(a1 + 32) = result;
  return result;
}

float GeomTransform_fromUnityToImageSize(_DWORD *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = a3;
  v6 = a4;
  *a1 = *a2;
  v7 = 1;
  if (a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = 2;
  if (a5)
  {
    v10 = 2;
  }

  else
  {
    v10 = 6;
  }

  if (a5)
  {
    v7 = 3;
  }

  v11 = 5;
  if (a5)
  {
    v12 = 5;
  }

  else
  {
    v12 = 7;
  }

  if (a5)
  {
    v9 = 6;
    v11 = 7;
  }

  *&a1[v8] = (a3 / a4) * *(a2 + 4);
  *&a1[v10] = *(a2 + 8) * v5;
  *&a1[v7] = (a4 / a3) * *(a2 + 12);
  a1[4] = *(a2 + 16);
  *&a1[v12] = *(a2 + 20) * v6;
  *&a1[v9] = *(a2 + 24) / v5;
  result = *(a2 + 28) / v6;
  *&a1[v11] = result;
  a1[8] = 1065353216;
  return result;
}

uint64_t GeomTransform_numTestsToDo(_DWORD *a1, int a2, int a3)
{
  v3 = *a1;
  v4 = ((a3 - a2) << 10) / a3;
  if (*a1 == 2)
  {
    v5 = &KNumSamplesToTest_Homography;
  }

  else if (v3 == 1)
  {
    v5 = &KNumSamplesToTest_Affine;
  }

  else
  {
    if (v3)
    {
      v6 = KKNumSamplesToTest_Rigid[v4];
      syslog(3, "GeomTransform_numTestsToDo: unknown transform model (%d) use RIGID", *a1);
      return v6;
    }

    v5 = KKNumSamplesToTest_Rigid;
  }

  return v5[v4];
}

float normalizePoints(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, int a7)
{
  if (a7 <= 0)
  {
    v13 = a7;
    v15 = 0.0;
    v16 = 0.0 / a7;
    v14 = v16;
  }

  else
  {
    v7 = a7;
    v8 = 0.0;
    v9 = a7;
    v10 = a6;
    v11 = 0.0;
    do
    {
      v12 = *v10++;
      v11 = v11 + *(a4 + 4 * v12);
      v8 = v8 + *(a5 + 4 * v12);
      --v9;
    }

    while (v9);
    v13 = a7;
    v14 = v11 / a7;
    v15 = 0.0;
    v16 = v8 / a7;
    do
    {
      v17 = *a6++;
      v18 = *(a4 + 4 * v17) - v14;
      v19 = *(a5 + 4 * v17) - v16;
      v15 = v15 + sqrtf((v19 * v19) + (v18 * v18));
      --v7;
    }

    while (v7);
  }

  v20 = (v13 * 1.4142) / v15;
  v21 = -(v20 * v14);
  *a1 = v20;
  result = -(v20 * v16);
  *a2 = v21;
  *a3 = result;
  return result;
}

_DWORD *IPDetector_constructor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040E37476F1uLL);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  v6[10] = 3;
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 2) = a3;
  v8 = malloc_type_calloc(1uLL, a3 * a2, 0x100004077774924uLL);
  *(v7 + 3) = v8;
  if (!v8)
  {
    syslog(3, "IPDetector_constructor: Cannot allocate mFltImage ");
LABEL_17:
    IPDetector_destructor(v7);
    return 0;
  }

  v10 = *(v7 + 1);
  v9 = *(v7 + 2);
  v11 = boxFilter_uint8_init(v9, *v7, v10, v7[10]);
  if ((v11 & 0x80000000) != 0)
  {
    syslog(3, "IPDetector_constructor: Cannot allocate box filter");
    goto LABEL_17;
  }

  if (2 * v9 * v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 2 * v9 * v10;
  }

  v13 = malloc_type_calloc(1uLL, v12, 0x100004077774924uLL);
  *(v7 + 4) = v13;
  if (!v13)
  {
    syslog(3, "IPDetector_constructor: Cannot allocate mTmpBuffer ");
    goto LABEL_17;
  }

  bzero(v13, v12);
  v14 = malloc_type_calloc(1uLL, 0x960uLL, 0x1000040274DC3F3uLL);
  *(v7 + 6) = v14;
  if (!v14)
  {
    v19 = "IPDetector_constructor: Cannot allocate mCornerVec ";
LABEL_16:
    syslog(3, v19);
    goto LABEL_17;
  }

  bzero(v14, 0x960uLL);
  v15 = 2 * a1;
  *(v7 + 7) = malloc_type_calloc(1uLL, v15, 0x1000040BDFB0063uLL);
  v16 = 2 * a2;
  v17 = malloc_type_calloc(1uLL, v16, 0x1000040BDFB0063uLL);
  *(v7 + 8) = v17;
  v18 = *(v7 + 7);
  v19 = "IPDetector_constructor: Cannot allocate mBX, mBY ";
  if (!v18 || !v17)
  {
    goto LABEL_16;
  }

  bzero(v18, v15);
  bzero(*(v7 + 8), v16);
  return v7;
}

void IPDetector_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[8];
    if (v2)
    {
      free(v2);
      a1[8] = 0;
    }

    v3 = a1[7];
    if (v3)
    {
      free(v3);
      a1[7] = 0;
    }

    v4 = a1[6];
    if (v4)
    {
      free(v4);
      a1[6] = 0;
    }

    v5 = a1[4];
    if (v5)
    {
      free(v5);
      a1[4] = 0;
    }

    v6 = a1[3];
    if (v6)
    {
      free(v6);
    }

    free(a1);
  }
}

uint64_t IPDetector_execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, NSObject *a11)
{
  v11 = 0;
  if (a8 >= 0x18 && a9 >= 0x18)
  {
    if (IPDetector_response(a1, a6, a7, a8, a9, a10, a11) == -1)
    {
      return 0;
    }

    IPDetector_cornerDetect(a1, a8 - 23, a9 - 23, a10, 11, a11);
    if (!a5)
    {
      return 0;
    }

    else
    {
      v11 = 0;
      v19 = a5;
      v20 = (*(a1 + 48) + 2);
      do
      {
        v21 = v20[1];
        if (v21)
        {
          LOWORD(v18) = *(v20 - 1);
          v22 = LODWORD(v18);
          *(a2 + 4 * v11) = v22;
          LOWORD(v22) = *v20;
          v18 = LODWORD(v22);
          *(a3 + 4 * v11) = v18;
          *(a4 + 2 * v11++) = v21;
        }

        v20 += 3;
        --v19;
      }

      while (v19);
    }
  }

  return v11;
}

uint64_t IPDetector_response(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v12 = a3 + a3 * a6;
  v13 = (*(a1 + 24) + v12);
  if (boxFilter_uint8(v13, (a2 + v12), a6, a4, a5, *(a1 + 40), *(a1 + 32)) == -1)
  {
    syslog(3, "IPDetector_response: box filter failed");
    return 0xFFFFFFFFLL;
  }

  else
  {
    *&v23[4] = 0;
    v24 = &v23[4];
    v25 = 0x2000000000;
    v26 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = __IPDetector_response_block_invoke;
    v19[3] = &unk_1E77B0E60;
    v19[5] = v13;
    v19[6] = a6;
    v19[4] = &v23[4];
    v20 = 3 * a6;
    v21 = 2 * a6;
    v22 = a4 >> 3;
    *v23 = a4 & 7;
    if (a7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __IPDetector_response_block_invoke_2;
      block[3] = &unk_1E77B0E88;
      block[4] = v19;
      v18 = a5 >> 1;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __IPDetector_response_block_invoke_3;
      v15[3] = &unk_1E77B0EB0;
      v16 = a5 >> 1;
      v15[4] = v19;
      v15[5] = a5;
      dispatch_async(a7, v15);
      dispatch_async(a7, block);
      dispatch_barrier_sync(a7, &__block_literal_global);
    }

    else
    {
      __IPDetector_response_block_invoke(v19, 0, a5);
    }

    _Block_object_dispose(&v23[4], 8);
    return 0;
  }
}

void IPDetector_cornerDetect(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  bzero(*(a1 + 48), 0x960uLL);
  v12 = a3 / 0x14;
  v13 = 20 * (a3 / 0x14);
  if (a3 >= 0x14)
  {
    v14 = 0;
    v15 = *(a1 + 64);
    do
    {
      *(v15 + 2 * v14) = v14 / v12;
      ++v14;
    }

    while (v13 > v14);
  }

  if (a2 >= 0x14)
  {
    v16 = 0;
    v17 = *(a1 + 56);
    do
    {
      *(v17 + 2 * v16) = v16 / (a2 / 0x14);
      ++v16;
    }

    while (20 * (a2 / 0x14) > v16);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __IPDetector_cornerDetect_block_invoke;
  v22[3] = &__block_descriptor_tmp_11;
  v22[4] = a1;
  v22[5] = a5;
  v22[6] = a4;
  v22[7] = 20 * (a2 / 0x14);
  if (a6)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __IPDetector_cornerDetect_block_invoke_2;
    v20[3] = &unk_1E77B0F18;
    v20[4] = v22;
    v21 = 10 * v12;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __IPDetector_cornerDetect_block_invoke_3;
    block[3] = &unk_1E77B0F40;
    v19 = 10 * v12;
    block[4] = v22;
    block[5] = 20 * (a3 / 0x14);
    dispatch_async(a6, block);
    dispatch_async(a6, v20);
    dispatch_barrier_sync(a6, &__block_literal_global_16);
  }

  else
  {
    __IPDetector_cornerDetect_block_invoke(v22, 0, v13);
  }
}

uint64_t IPDetector_selectCorners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7, unsigned int a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14)
{
  if (a11 < 0x18 || a12 < 0x18)
  {
    return 0;
  }

  v21 = a11 - 23;
  bzero(*(a1 + 48), 0x960uLL);
  if (a11 - 23 < a13 || a12 - 23 < a14)
  {
    return 0;
  }

  if (a8)
  {
    v23 = (a12 - 23) / a14;
    v22 = a11 / a9;
    v24 = a8;
    do
    {
      v25 = *a5++;
      v26 = llroundf(v22 * v25);
      v28 = *a6++;
      v27 = v28;
      v29 = v26 - 11;
      if (((v26 - 11) & 0x80000000) == 0 && v29 < (v21 / a13 * a13))
      {
        v30 = llroundf((a12 / a10) * v27);
        v31 = v30 - 11;
        if (((v30 - 11) & 0x80000000) == 0 && v31 < v23 * a14)
        {
          v32 = *a7;
          v33 = v29 / (v21 / a13) + v31 / v23 * a13;
          v34 = *(a1 + 48);
          v35 = v34 + 6 * v33;
          v37 = *(v35 + 4);
          v36 = (v35 + 4);
          if (v37 < v32)
          {
            *v36 = v32;
            v38 = (v34 + 6 * v33);
            *v38 = v26;
            v38[1] = v30;
          }
        }
      }

      ++a7;
      --v24;
    }

    while (v24);
  }

  v39 = (a14 * a13);
  if (a14 * a13)
  {
    v40 = 0;
    v41 = (*(a1 + 48) + 2);
    do
    {
      v42 = v41[1];
      if (v42)
      {
        LOWORD(v22) = *(v41 - 1);
        v43 = LODWORD(v22);
        *(a2 + 4 * v40) = v43;
        LOWORD(v43) = *v41;
        v22 = LODWORD(v43);
        *(a3 + 4 * v40) = v22;
        *(a4 + 2 * v40++) = v42;
      }

      v41 += 3;
      --v39;
    }

    while (v39);
  }

  else
  {
    return 0;
  }

  return v40;
}

uint64_t IPDetector_distributeCorners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, unsigned __int16 *a7, unsigned int a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14)
{
  if (a11 < 0x18 || a12 < 0x18)
  {
    return 0;
  }

  bzero(*(a1 + 48), 0x960uLL);
  if (a8)
  {
    v22 = a11 / a9;
    v23 = (a12 - 23) / a14;
    v24 = (a11 - 23) / a13;
    v25 = a8;
    do
    {
      v26 = llroundf(v22 * *a5);
      v27 = v26 - 11;
      if (((v26 - 11) & 0x80000000) == 0 && v27 < v24 * a13)
      {
        v28 = llroundf((a12 / a10) * *a6);
        v29 = v28 - 11;
        if (((v28 - 11) & 0x80000000) == 0 && v29 < v23 * a14)
        {
          v30 = *a7;
          v31 = v27 / v24 + v29 / v23 * a13;
          v32 = *(a1 + 48);
          v33 = v32 + 6 * v31;
          v35 = *(v33 + 4);
          v34 = (v33 + 4);
          if (v35 < v30)
          {
            *v34 = v30;
            v36 = (v32 + 6 * v31);
            *v36 = v26;
            v36[1] = v28;
          }
        }
      }

      ++a7;
      ++a6;
      ++a5;
      --v25;
    }

    while (v25);
  }

  v37 = (a14 * a13);
  if (a14 * a13)
  {
    v38 = 0;
    v39 = (*(a1 + 48) + 2);
    do
    {
      v40 = v39[1];
      if (v40)
      {
        LOWORD(v22) = *(v39 - 1);
        v41 = LODWORD(v22);
        *(a2 + 4 * v38) = v41;
        LOWORD(v41) = *v39;
        v22 = LODWORD(v41);
        *(a3 + 4 * v38) = v22;
        *(a4 + 2 * v38++) = v40;
      }

      v39 += 3;
      --v37;
    }

    while (v37);
  }

  else
  {
    return 0;
  }

  return v38;
}

vImage_Error boxFilter_uint8_init(unsigned int a1, unsigned int a2, unsigned int a3, uint32_t kernel_height)
{
  v7 = 0;
  src.data = &v7;
  src.height = a3;
  src.width = a2;
  src.rowBytes = a1;
  dest.data = &v7;
  dest.height = a3;
  dest.width = a2;
  dest.rowBytes = a1;
  result = vImageBoxConvolve_Planar8(&src, &dest, 0, 0, 0, kernel_height, kernel_height, 0, 0x82u);
  if ((result & 0x80000000) != 0)
  {
    syslog(3, "boxFilter_uint8_init: box filter failed when request minimum size err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

vImage_Error boxFilter_uint8(void *a1, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint32_t kernel_width, void *tempBuffer)
{
  src.data = a2;
  src.height = a5;
  src.width = a4;
  src.rowBytes = a3;
  dest.data = a1;
  dest.height = a5;
  dest.width = a4;
  dest.rowBytes = a3;
  result = vImageBoxConvolve_Planar8(&src, &dest, tempBuffer, 0, 0, kernel_width, kernel_width, 0, 2u);
  if (result)
  {
    syslog(3, "boxFilter_uint8: box filter failed err=%d\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t invMatrix(float *a1, int a2)
{
  if (a2 == 3)
  {
    v2 = *a1;
    v3 = a1[1];
    v5 = a1[2];
    v4 = a1[3];
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = a1[7];
    v10 = a1[8];
    v11 = (v10 * v6) - (v9 * v7);
    v12 = (v10 * v3) - (v9 * v5);
    v13 = (v7 * v3) - (v6 * v5);
    v14 = ((*a1 * v11) - (v4 * v12)) + (v8 * v13);
    if (v14 == 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v19 = 0;
      *a1 = v11;
      a1[1] = -v12;
      a1[2] = v13;
      a1[3] = -((v10 * v4) - (v8 * v7));
      a1[4] = (v10 * v2) - (v8 * v5);
      a1[5] = -((v5 * -v4) + (v7 * v2));
      a1[6] = (v9 * v4) - (v8 * v6);
      a1[7] = -((v9 * v2) - (v8 * v3));
      a1[8] = (v3 * -v4) + (v6 * v2);
      do
      {
        a1[v19] = a1[v19] / v14;
        ++v19;
      }

      while (v19 != 9);
      return 0;
    }
  }

  else
  {
    v17 = malloc_type_malloc(4 * a2 + 4, 0x100004052888210uLL);
    v18 = malloc_type_malloc(4 * (a2 * a2), 0x100004052888210uLL);
    sgetrf_NEWLAPACK();
    sgetri_NEWLAPACK();
    v15 = 0;
    free(v17);
    free(v18);
  }

  return v15;
}

float32x4_t mul3x3Matrix(float32x4_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *a3;
  v5 = *(a3 + 16);
  if (a4)
  {
    v26 = *a2;
    v28 = *(a2 + 4);
    v29 = *(a2 + 12);
    v31 = *(a2 + 20);
    v17 = *a3;
    v19 = *(a3 + 4);
    v21 = *(a3 + 12);
    v23 = *(a3 + 20);
    v6 = vextq_s8(v31, v31, 4uLL);
    v7 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v26, v4), *&v29, *&v17, 1), v6, *&v17, 2);
    v8 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_laneq_f32(*&v26, *&v17, 3), *&v29, v21, 1), v6, *v21.f32, 2);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(*&v26, *v21.f32, 3), *&v29, v23, 2), v6, v23, 3);
    v7.i32[3] = v8.i32[0];
    result = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v9, 8uLL);
    *a1 = v7;
    a1[1] = result;
    a1[2].i32[0] = v9.i32[2];
  }

  else
  {
    v11 = *(a3 + 12);
    v27.i32[0] = *a2;
    v27.i32[1] = *(a2 + 12);
    v27.i32[2] = *(a2 + 24);
    v27.i32[3] = *(a2 + 4);
    v30 = *(a2 + 16);
    v32.i32[0] = *(a2 + 28);
    v32.i32[1] = *(a2 + 8);
    v32.i32[2] = *(a2 + 20);
    v32.i32[3] = *(a2 + 32);
    v18 = __PAIR64__(v11, LODWORD(v4));
    v20 = *(a3 + 24);
    v22.i64[0] = __PAIR64__(v5, *(a3 + 4));
    v22.i32[2] = *(a3 + 28);
    v22.i32[3] = *(a3 + 8);
    v24 = *(a3 + 20);
    v25 = *(a3 + 32);
    v12 = vextq_s8(v32, v32, 4uLL);
    v13 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, v4), *(&v27 + 12), __PAIR64__(v11, LODWORD(v4)), 1), v12, *&v18, 2);
    v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_laneq_f32(v27, *&v18, 3), *(&v27 + 12), __PAIR64__(v5, *(a3 + 4)), 1), v12, v22, 2);
    result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v22, 3), *(&v27 + 12), *(&v22 + 8), 2), v12, *(&v22 + 8), 3);
    v13.i32[3] = v14.i32[0];
    v15 = vextq_s8(vextq_s8(v14, v14, 0xCuLL), result, 8uLL);
    v16 = vtrn2q_s32(vextq_s8(v13, v15, 4uLL), v15);
    *a1 = vtrn1q_s32(vuzp1q_s32(v13, result), vextq_s8(v13, v13, 0xCuLL));
    a1[1] = vextq_s8(v16, v16, 8uLL);
    a1[2].i32[0] = result.i32[2];
  }

  return result;
}

void *DigestShared_constructor(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1010040F32E1FD2uLL);
  v5 = v4;
  if (!v4 || ((*v4 = a1, v4[1] = a2, v4[2] = malloc_type_calloc(1uLL, 8 * a1, 0x100004000313F17uLL), v6 = malloc_type_calloc(1uLL, 8 * v5[1], 0x100004000313F17uLL), v5[3] = v6, v5[2]) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    DigestShared_destructor(v5);
    return 0;
  }

  return v5;
}

void DigestShared_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      free(v3);
    }

    *a1 = 0u;
    *(a1 + 1) = 0u;

    free(a1);
  }
}

void *Digest_constructor(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 && (v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x1090040653827A0uLL)) != 0)
  {
    v7 = v6;
    v6[6] = 0;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    if (!Digest_init(v6, a1, a2))
    {
      v7[6] = a3;
      return v7;
    }

    Digest_purgeResources(v7);
    free(v7);
  }

  else
  {
    Digest_purgeResources(0);
  }

  return 0;
}

uint64_t Digest_init(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 == a2 && a1[1] == a3)
  {
    return 0;
  }

  Digest_purgeResources(a1);
  *a1 = a2;
  a1[1] = a3;
  a1[2] = vcvts_n_f32_u64(a2, 2uLL);
  a1[3] = vcvts_n_f32_u64(a3, 2uLL);
  a1[4] = malloc_type_calloc(1uLL, a2, 0x100004077774924uLL);
  v7 = malloc_type_calloc(1uLL, a1[1], 0x100004077774924uLL);
  a1[5] = v7;
  if (a1[4])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (v9 << 31 >> 31);
}

void Digest_destructor(void *a1)
{
  Digest_purgeResources(a1);
  if (a1)
  {

    free(a1);
  }
}

double Digest_purgeResources(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

float Norm_constructor(unint64_t a1, unint64_t a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  if (v4)
  {
    if (a1 <= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = a1;
    }

    *v6.i32 = v7;
    v8 = 2.0 / v7;
    __asm { FMOV            V4.4S, #1.0 }

    _Q4.f32[0] = -a1;
    _Q4.f32[1] = -a2;
    *v4 = v8;
    *(v4 + 1) = v8;
    *&v6.i32[1] = v8;
    *(v4 + 8) = vdivq_f32(_Q4, vzip1q_s32(v6, v6));
    result = vcvts_n_f32_u64(a1, 1uLL);
    *(v4 + 6) = result;
    *(v4 + 7) = vcvts_n_f32_u64(a2, 1uLL);
  }

  return result;
}

float Norm_dir(float *a1, float *a2, float *a3, float a4, float a5)
{
  *a2 = a1[2] + (*a1 * a4);
  result = a1[3] + (a1[1] * a5);
  *a3 = result;
  return result;
}

float Norm_dirs(float *a1, float *a2, float *a3, float *a4, float *a5, unsigned int a6)
{
  if (a6)
  {
    v6 = a6;
    do
    {
      v7 = *a4++;
      v8 = v7;
      v9 = *a5++;
      result = a1[2] + (*a1 * v8);
      v11 = a1[3] + (a1[1] * v9);
      *a2++ = result;
      *a3++ = v11;
      --v6;
    }

    while (v6);
  }

  return result;
}

float *Norm_invs(float *result, float *a2, float *a3, float *a4, float *a5, unsigned int a6)
{
  if (a6)
  {
    v6 = a6;
    do
    {
      v7 = *a4++;
      v8 = v7;
      v9 = *a5++;
      v10 = (result[7] + (result[5] * v9)) + 0.5;
      *a2++ = (result[6] + (result[4] * v8)) + 0.5;
      *a3++ = v10;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *ImageRegistrationCreateContext()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040E880AA40uLL);
  if (!v0)
  {
    NSLog(&cfstr_SCallocFailed.isa, "ImageRegistrationCreateContext");
    goto LABEL_11;
  }

  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 14, 0, 0);
  v0[7] = Mutable;
  if (!Mutable)
  {
    NSLog(&cfstr_SCfdictionaryc.isa, "ImageRegistrationCreateContext");
    goto LABEL_11;
  }

  v3 = CFArrayCreateMutable(v1, 7, 0);
  v0[8] = v3;
  if (!v3)
  {
    NSLog(&cfstr_SCfarraycreate.isa, "ImageRegistrationCreateContext");
    goto LABEL_11;
  }

  v4 = RegistrationEngine_constructor();
  *v0 = v4;
  if (!v4)
  {
    NSLog(&cfstr_SRegistratione.isa, "ImageRegistrationCreateContext");
    goto LABEL_11;
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("imageRegQueue", v5);
  v0[1] = v6;
  if (!v6)
  {
    NSLog(&cfstr_SDispatchQueue.isa, "ImageRegistrationCreateContext");
LABEL_11:
    ImageRegistrationDestroyContext(v0);
    return 0;
  }

  return v0;
}

void ImageRegistrationDestroyContext(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = a1[7];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[8];
    if (v4)
    {
      CFRelease(v4);
    }

    RegistrationEngine_destructor(*a1);

    free(a1);
  }
}

uint64_t ImageRegister(unsigned __int16 ***a1, __CVBuffer *a2, __CVBuffer **a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, void **a8, _WORD *a9, unsigned __int16 *a10, unsigned __int16 *a11, unsigned __int16 *a12, unsigned __int16 a13, unint64_t a14, unint64_t a15, const void **a16, int a17)
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  if (!a1 || !a3)
  {
    NSLog(&cfstr_SNullInputPara.isa, "ImageRegister");
    return 0xFFFFFFFFLL;
  }

  v18 = a7;
  if (*(a1 + 16) == 1)
  {
    if (a4)
    {
      v21 = a4;
      v22 = a7 + 8;
      do
      {
        *(v22 - 2) = xmmword_1A6036B00;
        *(v22 - 1) = xmmword_1A6036B00;
        *v22 = 1065353216;
        v22 += 9;
        --v21;
      }

      while (v21);
    }

    return 0;
  }

  if (!a4)
  {
    NSLog(&cfstr_SNeedAtLeastOn.isa, "ImageRegister");
    return 0xFFFFFFFFLL;
  }

  v28 = a16;
  if (CFArrayGetCount(a1[8]))
  {
    NSLog(&cfstr_SCfarraygetcou.isa, "ImageRegister");
    CFArrayRemoveAllValues(a1[8]);
  }

  if (a16)
  {
    v29 = a17;
    if (a17 >= 1)
    {
      do
      {
        v30 = *v28++;
        CFArrayAppendValue(a1[8], v30);
        --v29;
      }

      while (v29);
    }
  }

  v31 = *a3;
  pixelBuffer = a2;
  v63 = v31;
  if (!a2 || !v31)
  {
    NSLog(&cfstr_SCouldNotLocat.isa, "ImageRegister");
    return 0xFFFFFFFFLL;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
  if (a1[3] == WidthOfPlane && a1[4] == HeightOfPlane && a1[5] == BytesPerRowOfPlane)
  {
    goto LABEL_37;
  }

  a1[3] = WidthOfPlane;
  a1[4] = HeightOfPlane;
  *(a1 + 12) = HeightOfPlane / WidthOfPlane;
  a1[5] = BytesPerRowOfPlane;
  v35 = WidthOfPlane >= HeightOfPlane ? HeightOfPlane : WidthOfPlane;
  if (v35 < 0x7E)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    do
    {
      ++v36;
      v37 = v35 > 0xFB;
      v35 >>= 1;
    }

    while (v37);
  }

  v38 = v36 >= 7 ? 7 : v36;
  *(a1 + 16) = v36 < 2;
  if (!RegistrationEngine_init(*a1, WidthOfPlane, HeightOfPlane, v36 != 0, v38, WidthOfPlane, HeightOfPlane, 0, 0))
  {
LABEL_37:
    v23 = CVPixelBufferLockBaseAddress(a2, 0);
    if (!v23)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
      TemplateImage = RegistrationEngine_loadTemplateImage(*a1, BaseAddressOfPlane, v40, a1[1]);
      if (TemplateImage || a13 && (TemplateImage = RegistrationEngine_loadCorners(*a1, a10, a11, a12, a13, a14, a15), TemplateImage) || (TemplateImage = RegistrationEngine_detectCorners(*a1, a1[1]), TemplateImage))
      {
        v23 = TemplateImage;
      }

      else
      {
        v60 = a4;
        CVPixelBufferUnlockBaseAddress(a2, 0);
        LOBYTE(v61) = 0;
        v42 = *a1;
        v43 = **a1;
        v44 = *(*a1 + *v43 + 20128);
        if (a8)
        {
          *a9 = v44;
          memcpy(*a8, (v42 + 1600 * *v43 + 256), 4 * v44);
          v59 = 4 * v44;
          memcpy(*a8 + 1600, &(*a1)[200 * ***a1 + 2032], 4 * v44);
          if (v44)
          {
            v45 = (*a8 + 3200);
            v46 = &(*a1)[100 * ***a1 + 4032];
            do
            {
              v47 = *v46;
              v46 = (v46 + 2);
              *v45++ = v47;
              --v44;
            }

            while (v44);
          }
        }

        else
        {
          v59 = 4 * v44;
        }

        v48 = 0;
        v57 = a3 + 1;
        v58 = a8 + 1;
        while (1)
        {
          if (v48 < v60 - 1)
          {
            *(&pixelBuffer + (v48 & 1)) = v57[v48];
          }

          v49 = v48 + 1;
          v50 = (v48 + 1) & 1;
          v51 = *(&pixelBuffer + v50);
          InputImage = CVPixelBufferLockBaseAddress(v51, 0);
          if (InputImage)
          {
            break;
          }

          *(&v61 | v50) = 1;
          v53 = CVPixelBufferGetBaseAddressOfPlane(v51, 0);
          v54 = CVPixelBufferGetBytesPerRowOfPlane(v51, 0);
          InputImage = RegistrationEngine_loadInputImage(*a1, v53, v54, a1[1]);
          if (InputImage)
          {
            break;
          }

          if (a6)
          {
            v55 = CVPixelBufferGetWidthOfPlane(v51, 0);
            v56 = CVPixelBufferGetHeightOfPlane(v51, 0);
            GeomTransform_adjustfromUnitySize(v18, v18, v55, v56, 1);
          }

          InputImage = RegistrationEngine_execute(*a1, a6, v18);
          if (InputImage)
          {
            break;
          }

          CVPixelBufferUnlockBaseAddress(v51, 0);
          *(&v61 | v50) = 0;
          GeomTransform_get3x3Matrix((*a1)[3], v18, a1[3], a1[4], 1);
          if (a8)
          {
            memcpy(v58[v48], *a1 + 44276, v59);
            memcpy(v58[v48] + 1600, *a1 + 45876, v59);
            memcpy(v58[v48] + 3200, *a1 + 54676, v59);
          }

          v18 = (v18 + 36);
          ++v48;
          if (v60 == v49)
          {
            v23 = 0;
            goto LABEL_66;
          }
        }

        v23 = InputImage;
LABEL_66:
        if ((v61 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    }
  }

  else
  {
    v23 = 0xFFFFFFFFLL;
  }

LABEL_41:
  if (HIBYTE(v61) == 1)
  {
    CVPixelBufferUnlockBaseAddress(v63, 0);
  }

  CFDictionaryRemoveAllValues(a1[7]);
  CFArrayRemoveAllValues(a1[8]);
  return v23;
}

unint64_t *RansacEngine_constructor(unint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(0x68uLL, 1uLL, 0x10B0040408FBDCFuLL);
  v5 = v4;
  if (v4 && (*v4 = a1, v4[1] = malloc_type_calloc(8 * a1, 1uLL, 0x100004000313F17uLL), v5[2] = malloc_type_calloc(8 * *v5, 1uLL, 0x100004000313F17uLL), v5[4] = malloc_type_calloc(4 * a1, 1uLL, 0x100004052888210uLL), v5[5] = malloc_type_calloc(4 * a1, 1uLL, 0x100004052888210uLL), v5[6] = malloc_type_calloc(4 * a1, 1uLL, 0x100004052888210uLL), v6 = 2 * a1, v5[7] = malloc_type_calloc(v6, 1uLL, 0x1000040BDFB0063uLL), v7 = GeomTransform_constructor(0, a2), v5[9] = v7, v5[1]) && v5[2] && v5[4] && v5[5] && v5[6] && v5[7] && v7 && (v5[11] = malloc_type_calloc(v6, 1uLL, 0x1000040BDFB0063uLL), v8 = GeomTransform_constructor(2u, a2), v5[10] = v8, v5[11]) && v8)
  {
    *(v5 + 6) = 0;
    if (*v5)
    {
      v9 = 0;
      v10 = v5[1];
      do
      {
        *(v10 + 8 * v9) = v9;
        ++v9;
      }

      while (v9 < *v5);
    }
  }

  else
  {
    RansacEngine_destructor(v5);
    return 0;
  }

  return v5;
}

void RansacEngine_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
      a1[1] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
      a1[2] = 0;
    }

    v4 = a1[4];
    if (v4)
    {
      free(v4);
      a1[4] = 0;
    }

    v5 = a1[5];
    if (v5)
    {
      free(v5);
      a1[5] = 0;
    }

    v6 = a1[6];
    if (v6)
    {
      free(v6);
      a1[6] = 0;
    }

    v7 = a1[7];
    if (v7)
    {
      free(v7);
      a1[7] = 0;
    }

    v8 = a1[9];
    if (v8)
    {
      GeomTransform_destructor(v8);
      a1[9] = 0;
    }

    v9 = a1[11];
    if (v9)
    {
      free(v9);
      a1[11] = 0;
    }

    v10 = a1[10];
    if (v10)
    {
      GeomTransform_destructor(v10);
    }

    free(a1);
  }
}

void RansacEngine_init(uint64_t a1)
{
  *(a1 + 24) = 0;
  bzero(*(a1 + 8), 8 * *a1);
  bzero(*(a1 + 16), 8 * *a1);
  bzero(*(a1 + 32), 4 * *a1);
  bzero(*(a1 + 40), 4 * *a1);
  bzero(*(a1 + 48), 4 * *a1);
  bzero(*(a1 + 56), 2 * *a1);
  v2 = *(a1 + 88);
  v3 = 2 * *a1;

  bzero(v2, v3);
}

void RansacEngine_findInliers(uint64_t a1, float *a2, uint64_t a3, unsigned __int16 *a4, float *a5, float *a6, const float *a7, const float *a8, float a9, int a10, int a11)
{
  GeomTransform_dirs(a2, *(a1 + 32), *(a1 + 40), a5, a6, a10);
  vDSP_vpythg(a7, 1, a8, 1, *(a1 + 32), 1, *(a1 + 40), 1, *(a1 + 48), 1, a10);
  if (a11 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = *(a1 + 8);
    v20 = *(a1 + 48);
    do
    {
      v21 = *(v19 + 8 * v18);
      if (*(v20 + 4 * v21) < a9)
      {
        *(a3 + 2 * v17++) = v21;
      }

      ++v18;
    }

    while (a11 > v18);
  }

  *a4 = v17;
}

uint64_t RansacEngine_execute(uint64_t a1, uint64_t a2, void *a3, float *a4, float *a5, const float *a6, const float *a7, const float *__C, float a9, vDSP_Length __N)
{
  v18 = __N;
  v58 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  v19 = *(a1 + 8);
  if (*a1)
  {
    v20 = 0;
    do
    {
      v19[v20] = v20;
      ++v20;
    }

    while (v20 < *a1);
  }

  vDSP_vsorti(__C, v19, 0, __N, -1);
  if (__N < 1)
  {
    goto LABEL_42;
  }

  while (__C[*(*(a1 + 8) - 8 + 8 * v18)] <= 0.3)
  {
    if (v18-- <= 1)
    {
      goto LABEL_42;
    }
  }

  if (v18 < 5)
  {
    goto LABEL_42;
  }

  v49 = a6;
  v50 = a7;
  GeomTransform_setModel(*(a1 + 72), 0);
  GeomTransform_setModel(*(a1 + 80), 2);
  v22 = 0;
  v56 = v18;
  v23 = vdupq_n_s64(v56 - 1);
  v24 = (*(a1 + 16) + 8);
  v25 = xmmword_1A6027760;
  do
  {
    v26 = vmovn_s64(vcgeq_u64(v23, v25));
    if (v26.i8[0])
    {
      *(v24 - 1) = v22;
    }

    if (v26.i8[4])
    {
      *v24 = v22 + 1;
    }

    v22 += 2;
    v25 = vaddq_s64(v25, vdupq_n_s64(2uLL));
    v24 += 2;
  }

  while (((v56 + 1) & 0x1FFFFFFFELL) != v22);
  v27 = 0;
  v47 = 0;
  v28 = 0;
  v29 = 0;
  v52 = 1000;
  v30 = vdupq_n_s64(2uLL);
  v53 = v30;
  v54 = v23;
  do
  {
    v31 = *(a1 + 16);
    if (v27 > v56 - 4)
    {
      v32 = 0;
      v33 = xmmword_1A6027760;
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v23, v33));
        if (v34.i8[0])
        {
          v31[v32] = v32;
        }

        if (v34.i8[4])
        {
          v31[v32 + 1] = v32 + 1;
        }

        v32 += 2;
        v33 = vaddq_s64(v33, v30);
      }

      while (((v56 + 1) & 0x1FFFFFFFELL) != v32);
      v35 = *(a1 + 24);
      if (v35 > 999 - v56)
      {
        v35 = 0;
        *(a1 + 24) = 0;
      }

      vDSP_vsorti(&kRandNumbers[v35], v31, 0, v56, -1);
      v27 = 0;
      ++*(a1 + 24);
      v31 = *(a1 + 16);
    }

    v36 = 0;
    v37 = *(a1 + 8);
    v55 = v27;
    do
    {
      v57[v36] = *(v37 + 8 * v31[v27 + v36]);
      ++v36;
    }

    while (v36 != 4);
    v38 = *(a1 + 72);
    v39 = GeomTransform_minSupportPoints(v38);
    GeomTransform_estimate(v38, v49, v50, a4, a5, v57, v39);
    RansacEngine_findInliers(a1, *(a1 + 72), *(a1 + 56), (a1 + 64), a4, a5, v49, v50, a9, __N, v56);
    v40 = *(a1 + 80);
    v51 = **(a1 + 72);
    v41 = GeomTransform_minSupportPoints(v40);
    GeomTransform_estimate(v40, v49, v50, a4, a5, v57, v41);
    RansacEngine_findInliers(a1, *(a1 + 80), *(a1 + 88), (a1 + 96), a4, a5, v49, v50, a9, __N, v56);
    v42 = *(a1 + 96);
    v43 = *(a1 + 64);
    if (v42 <= v43)
    {
      v30 = v53;
      v23 = v54;
      v44 = v51;
    }

    else
    {
      memcpy(*(a1 + 56), *(a1 + 88), 2 * v42);
      v43 = *(a1 + 96);
      *(a1 + 64) = v43;
      v44 = **(a1 + 80);
      v30 = v53;
      v23 = v54;
    }

    if (v43 > v28)
    {
      memcpy(a3, *(a1 + 56), 2 * v43);
      v45 = GeomTransform_numTestsToDo(*(a1 + 72), v43, v56);
      v30 = v53;
      v23 = v54;
      v52 = v45;
      v28 = v43;
      v47 = v44;
    }

    if (v29 > 0x3E6)
    {
      break;
    }

    v27 = v55 + 1;
    ++v29;
  }

  while (v29 < v52);
  GeomTransform_setModel(*(a1 + 72), v47);
  GeomTransform_setModel(a2, v47);
  if (v28 < 4)
  {
    goto LABEL_42;
  }

  if (GeomTransform_estimate(*(a1 + 72), v49, v50, a4, a5, a3, v28) == -1)
  {
LABEL_41:
    syslog(3, "GeomTransform_estimate failed");
LABEL_42:
    LOWORD(v28) = 0;
    return v28;
  }

  GeomTransform_deepCopy(a2, *(a1 + 72));
  while (1)
  {
    RansacEngine_findInliers(a1, *(a1 + 72), *(a1 + 56), (a1 + 64), a4, a5, v49, v50, a9, __N, v56);
    if (v28 >= *(a1 + 64))
    {
      return v28;
    }

    v28 = *(a1 + 64);
    memcpy(a3, *(a1 + 56), 2 * *(a1 + 64));
    GeomTransform_deepCopy(a2, *(a1 + 72));
    if (GeomTransform_estimate(*(a1 + 72), v49, v50, a4, a5, a3, v28) == -1)
    {
      goto LABEL_41;
    }
  }
}

unsigned __int16 *Pyramid_constructor(unint64_t a1, unint64_t a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  v8 = malloc_type_calloc(0x330uLL, 1uLL, 0x10100403A4E2528uLL);
  v9 = v8;
  if (!v8)
  {
LABEL_26:
    Pyramid_destructor(v9);
    return 0;
  }

  *v8 = v5;
  if (a4 >= 9)
  {
    v10 = 9;
  }

  else
  {
    v10 = a4;
  }

  v8[1] = v10;
  v8[2] = v10 - v5 + 1;
  v8[4] = 26;
  v8[3] = v5;
  *(v8 + 42) = a1;
  *(v8 + 52) = a2;
  if (a4)
  {
    v11 = (v10 + 1);
    v12 = (v8 + 212);
    v13 = a4;
    if (a4 >= 9uLL)
    {
      v13 = 9;
    }

    do
    {
      a1 >>= 1;
      *(v12 - 10) = a1;
      a2 >>= 1;
      *v12++ = a2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v11 = 1;
  }

  v14 = (v8 + 128);
  v15 = (v8 + 88);
  v16 = v8 + 128;
  do
  {
    *v16 = v16[20] + 52;
    *(v16 - 10) = v16[10] + 52;
    ++v16;
    --v11;
  }

  while (v11);
  *(v8 + 1) = 0u;
  v17 = (v8 + 8);
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 2) = 0u;
  for (*(v8 + 3) = 0u; v10 >= v5; v10 = v9[1])
  {
    v5 = v5;
    v18 = malloc_type_calloc(*&v14[8 * v5] * *&v15[8 * v5], 1uLL, 0x100004077774924uLL);
    *&v17[8 * v5] = v18;
    bzero(v18, *&v14[8 * v5] * *&v15[8 * v5]);
    v19 = *&v17[8 * v5];
    if (!v19)
    {
      goto LABEL_26;
    }

    *&v9[4 * v5 + 48] = v19 + v9[4] + *&v15[8 * v5] * v9[4];
    LOWORD(v5) = v5 + 1;
  }

  v20 = *&v9[4 * v10 + 208];
  v21 = v10;
  v22 = v20 >> 1;
  v23 = &v9[4 * v10];
  *(v23 + 62) = v20 >> 1;
  *(v23 + 72) = v20 - (v20 >> 1);
  if (v10)
  {
    v24 = v10 + 1;
    v25 = &v9[4 * v21 + 204];
    do
    {
      v26 = *v25 - 2 * v22;
      v22 *= 2;
      *(v25 + 10) = v22;
      *(v25 + 20) = v26;
      --v24;
      v25 -= 4;
    }

    while (v24 > 1);
  }

  v27 = *v9;
  if (*v9)
  {
    v28 = v9 + 368;
    v29 = *v9;
    do
    {
      *(v28 - 10) = 0;
      *v28++ = 0;
      --v29;
    }

    while (v29);
  }

  if (v27 <= v21)
  {
    v30 = v21 - v27 + 1;
    v31 = &v9[4 * v27];
    do
    {
      *(v31 + 82) = 0;
      *(v31 + 92) = (*(v31 + 62) + 26) * *(v31 + 22);
      v31 += 4;
      --v30;
    }

    while (v30);
  }

  return v9;
}

void Pyramid_destructor(char *a1)
{
  if (a1)
  {
    for (i = 16; i != 96; i += 8)
    {
      v3 = *&a1[i];
      if (v3)
      {
        free(v3);
        *&a1[i] = 0;
      }
    }

    free(a1);
  }
}

uint64_t Pyramid_loadImage(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, NSObject *a8)
{
  v8 = *(a1 + 42);
  v9 = *(a1 + 52);
  if (v8 == a4 && v9 == a5)
  {
    v35 = (a1 + 208);
    LODWORD(v17) = *a1;
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = a1 + 168;
      v33 = a1 + 8;
      v34 = a1 + 88;
      do
      {
        ++v18;
        filterSubsampling1channel(a2, *&v19[4 * v18], *(v35 + 8 * v18), a3, 0, 0, a2, a3, a6, a7);
        if (v18 == a1[3])
        {
          v20 = *(v35 + 8 * v18);
          if (v20 >= 1)
          {
            v21 = *&v19[4 * v18];
            v22 = *&v34[4 * v18];
            v23 = (*&v33[4 * v18] + v22 * a1[4] + a1[4]);
            v24 = a2;
            do
            {
              memcpy(v23, v24, v21);
              v23 += v22;
              v24 += a3;
              --v20;
            }

            while (v20);
          }
        }

        a6 = 0;
        v17 = *a1;
        a7 = 0;
      }

      while (v18 < v17 - 1);
      a7 = 0;
    }

    if (!v17 || !a1[3])
    {
      v25 = *(a1 + 104);
      if (v25 >= 1)
      {
        v26 = *(a1 + 42);
        v27 = *(a1 + 22);
        v28 = (*(a1 + 2) + v27 * a1[4] + a1[4]);
        v29 = &a2[a7 * a3 + a6];
        do
        {
          memcpy(v28, v29, v26);
          v28 += v27;
          v29 += a3;
          --v25;
        }

        while (v25);
      }
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = __Pyramid_loadImage_block_invoke;
    v38[3] = &__block_descriptor_tmp_0;
    v38[4] = a1;
    v38[5] = a2;
    v38[6] = a3;
    v39 = a6;
    v40 = a7;
    if (a8)
    {
      v30 = *a1;
      if (*a1)
      {
        v31 = a1 + 368;
        do
        {
          *v31 = *(v31 - 30) * a3;
          ++v31;
          --v30;
        }

        while (v30);
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 0x40000000;
      v37[2] = __Pyramid_loadImage_block_invoke_2;
      v37[3] = &unk_1E77B0FA8;
      v37[4] = v38;
      v37[5] = a1;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __Pyramid_loadImage_block_invoke_3;
      block[3] = &unk_1E77B0FD0;
      block[4] = v38;
      block[5] = a1;
      dispatch_async(a8, block);
      dispatch_async(a8, v37);
      dispatch_barrier_sync(a8, &__block_literal_global_0);
    }

    else
    {
      __Pyramid_loadImage_block_invoke(v38, v35, (a1 + 328), a1[4], a1[4]);
    }

    return 0;
  }

  else
  {
    syslog(3, "Pyramid_loadImage: incompatible size in pyramid (%lu!=%lu) or (%lu!=%lu)", a4, v8, a5, v9);
    return 0xFFFFFFFFLL;
  }
}

unsigned __int8 *filterSubsampling1channel(unsigned __int8 *result, unint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  if (a3 >= 1)
  {
    v10 = 0;
    v11 = 2 * a8;
    v12 = &result[a6 * a4 + a5];
    v13 = a10 * a8;
    v14 = (a7 + v13);
    v15 = (a7 + v13 + a9);
    v16 = a7 + a8 + v13;
    while (1)
    {
      result = v14;
      v17 = v16;
      v18 = a2 >> 3;
      v19 = v12;
      if (a2 >= 8)
      {
        break;
      }

      v20 = &v15[a8];
      v19 = v12;
      v21 = v15;
      if ((a2 & 7) != 0)
      {
        goto LABEL_8;
      }

LABEL_10:
      v12 = (v12 + a4);
      v15 += v11;
      ++v10;
      v16 += v11;
      v14 += v11;
      if (v10 == a3)
      {
        return result;
      }
    }

    do
    {
      v22 = (v17 + a9);
      v23 = &result[a9];
      v31 = vld2_s8(v23);
      v32 = vld2_s8(v22);
      *v19++ = vqmovn_u16(vrshrq_n_u16(vaddw_u8(vaddw_u8(vaddl_u8(v31.val[0], v31.val[1]), v32.val[1]), v32.val[0]), 2uLL));
      v17 += 16;
      result += 16;
      --v18;
    }

    while (v18);
    v20 = (v17 + a9);
    v21 = &result[a9];
    if ((a2 & 7) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    result = v20 + 1;
    v24 = v21 + 1;
    v25 = a2 & 7;
    do
    {
      v26 = *(v24 - 1);
      v28 = *v24;
      v24 += 2;
      v27 = v28;
      v29 = *(result - 1);
      v30 = *result;
      result += 2;
      v19->i8[0] = (v26 + v27 + v29 + v30 + 2) >> 2;
      v19 = (v19 + 1);
      --v25;
    }

    while (v25);
    goto LABEL_10;
  }

  return result;
}

void *RegistrationEngine_constructor()
{
  v0 = malloc_type_calloc(1uLL, 0xDF20uLL, 0x10A004046220CB8uLL);
  if (v0 && (v1 = GeomTransformShared_constructor(), *(v0 + 2) = v1, v2 = GeomTransform_constructor(2u, v1), (*(v0 + 3) = v2) != 0) && (*(v0 + 4) = GeomTransform_constructor(0, *(v0 + 2)), v3 = GeomTransform_constructor(0, *(v0 + 2)), *(v0 + 5) = v3, *(v0 + 4)) && v3 && (v4 = GeomTransform_constructor(0, *(v0 + 2)), (*(v0 + 6) = v4) != 0) && (FeatureMatcher_constructor(), (*(v0 + 7136) = v5) != 0) && (v6 = RansacEngine_constructor(0x190uLL, *(v0 + 2)), (*(v0 + 7137) = v6) != 0))
  {
    *(v0 + 57112) = 0;
  }

  else
  {
    RegistrationEngine_destructor(v0);
    return 0;
  }

  return v0;
}

void RegistrationEngine_destructor(uint64_t a1)
{
  RegistrationEngine_purgeResources(a1);
  if (a1)
  {
    *(a1 + 57112) = 0;
    RansacEngine_destructor(*(a1 + 57096));
    GeomTransform_destructor(*(a1 + 57088));
    GeomTransform_destructor(*(a1 + 40));
    GeomTransform_destructor(*(a1 + 24));
    GeomTransform_destructor(*(a1 + 32));
    GeomTransform_destructor(*(a1 + 48));
    GeomTransformShared_destructor(*(a1 + 16));
    bzero(a1, 0xDF20uLL);

    free(a1);
  }
}

void RegistrationEngine_purgeResources(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 53248;
    *(a1 + 57112) = 0;
    IPDetector_destructor(*(a1 + 57080));
    *(v2 + 3832) = 0;
    Pyramid_destructor(*a1);
    *a1 = 0;
    Pyramid_destructor(*(a1 + 8));
    *(a1 + 8) = 0;
    Digest_destructor(*(a1 + 184));
    *(a1 + 184) = 0;
    Digest_destructor(*(a1 + 192));
    *(a1 + 192) = 0;
    DigestShared_destructor(*(a1 + 176));
    v3 = 0;
    *(a1 + 176) = 0;
    v4 = a1 + 56;
    do
    {
      GeomTransform_destructor(*(v4 + v3));
      *(v4 + v3) = 0;
      v3 += 8;
    }

    while (v3 != 80);
  }
}

uint64_t RegistrationEngine_init(uint64_t a1, unint64_t a2, unint64_t a3, int a4, int a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v16 = a1;
  v17 = a1 + 53248;
  *(a1 + 57112) = 0;
  if (*(a1 + 200) == a2 && *(a1 + 208) == a3 && *(a1 + 248) == a4 && *(a1 + 252) == a5 && *(a1 + 216) == a6 && *(a1 + 224) == a7 && *(a1 + 232) == a8 && *(a1 + 240) == a9 && *(a1 + 57080) && *a1 && *(a1 + 8) && *(a1 + 176) && *(a1 + 184) && *(a1 + 192) && *(a1 + 56))
  {
    v18 = 0;
    while (v18 != 9)
    {
      if (!*(a1 + 64 + 8 * v18++))
      {
        if ((v18 - 1) > 8)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

LABEL_21:
  RegistrationEngine_purgeResources(a1);
  v16[25] = a2;
  v16[26] = a3;
  v16[29] = a8;
  v16[30] = a9;
  v16[27] = a6;
  v16[28] = a7;
  v20 = Pyramid_constructor(a6, a7, a4, a5);
  *v16 = v20;
  if (v20)
  {
    v21 = Pyramid_constructor(v16[27], v16[28], a4, a5);
    v16[1] = v21;
    if (v21)
    {
      v36 = a8;
      v37 = v17;
      v22 = 136;
      v23 = 42;
      do
      {
        Norm_constructor(*(*v16 + v23 * 8), *(*v16 + v23 * 8 + 80));
        v16[v23 - 35] = v24;
        if (!v24)
        {
          v34 = 4294967293;
          goto LABEL_47;
        }

        v25 = v24;
        v38 = 0;
        v39 = 0;
        Norm_dir(v24, &v39 + 1, &v39, 0.0, 0.0);
        Norm_dir(v25, &v38 + 1, &v38, 1.0, 1.0);
        v26 = *(&v38 + 1) - *(&v39 + 1);
        if ((*(&v38 + 1) - *(&v39 + 1)) <= (*&v38 - *&v39))
        {
          v26 = *&v38 - *&v39;
        }

        *(v16 + v22) = v26;
        v22 += 4;
        ++v23;
      }

      while (v22 != 176);
      v27 = IPDetector_constructor(*(*v16 + 8 * a4 + 336), *(*v16 + 8 * a4 + 256), *(*v16 + 8 * a4 + 176));
      *(v37 + 3832) = v27;
      if (v27)
      {
        v28 = DigestShared_constructor(*(*v16 + 8 * a4 + 336), *(*v16 + 8 * a4 + 416));
        v16[22] = v28;
        if (v28)
        {
          v29 = a5 - 2;
          v30 = Digest_constructor(*(*v16 + 8 * v29 + 336), *(*v16 + 8 * v29 + 416), v28);
          v16[23] = v30;
          if (v30)
          {
            v31 = Digest_constructor(*(*v16 + 8 * v29 + 336), *(*v16 + 8 * v29 + 416), v16[22]);
            v16[24] = v31;
            if (v31)
            {
              if (a6 <= a7)
              {
                v32 = a7;
              }

              else
              {
                v32 = a6;
              }

              if (a2 <= a3)
              {
                v33 = a3;
              }

              else
              {
                v33 = a2;
              }

              *&v40 = v32 / v33;
              DWORD1(v40) = 0x80000000;
              *(&v40 + 2) = ((a6 + (v36 * 2.0)) - a2) / v33;
              HIDWORD(v40) = 0;
              v41 = *&v40;
              v42 = ((a7 + (a9 * 2.0)) - a3) / v33;
              v43 = 0;
              GeomTransform_setParams(v16[6], &v40);
              v16 = 0;
              v34 = 0;
            }

            else
            {
              v34 = 4294967289;
            }
          }

          else
          {
            v34 = 4294967290;
          }
        }

        else
        {
          v34 = 4294967291;
        }
      }

      else
      {
        v34 = 4294967292;
      }
    }

    else
    {
      v34 = 4294967294;
    }
  }

  else
  {
    v34 = 0xFFFFFFFFLL;
  }

LABEL_47:
  RegistrationEngine_purgeResources(v16);
  return v34;
}

uint64_t RegistrationEngine_loadCorners(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned int a5, unint64_t a6, unint64_t a7)
{
  v8 = a1 + 57080;
  v9 = IPDetector_selectCorners(*(a1 + 57080), a1 + 256, a1 + 16256, a1 + 32256, a2, a3, a4, a5, a6, a7, *(a1 + 216), *(a1 + 224), 0x14uLL, 0x14uLL);
  v10 = v9;
  if (v9 > 5)
  {
    result = 0;
    *(a1 + 40256) = v10;
    *(v8 + 24) = v10;
    v11 = 1;
  }

  else
  {
    printf("WARNING: insufficient number of external corners provided (only %hu corners provided but minumum is %d)\n", v9, 6);
    v11 = 0;
    result = 0xFFFFFFFFLL;
  }

  *(v8 + 32) = v11;
  return result;
}

uint64_t RegistrationEngine_detectCorners(unint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  v4 = **a1;
  if (v3 >= v4)
  {
    v6 = a1 + 6656;
    v16 = (a1 + 2032);
    v17 = (a1 + 32);
    v7 = (a1 + 4032);
    v15 = a1 + 5032;
    do
    {
      v8 = v2 + 8 * v3;
      if (v3 <= 1 && (v6[483] & 1) != 0)
      {
        v9 = v3;
        v13 = vcvtas_u32_f32((1.0 / powf(1.25, (v3 - v4))) * 20.0);
        v10 = IPDetector_distributeCorners(v6[479], &v17[400 * v3], &v16[400 * v3], &v7[400 * v3], v17, v16, v7, *(v6 + 1928), a1[27], a1[28], *(v8 + 336), *(v8 + 416), v13, v13);
      }

      else
      {
        v9 = v3;
        v10 = IPDetector_execute(v6[479], &v17[400 * v3], &v16[400 * v3], &v7[400 * v3], 0x190u, *(v8 + 16), 26, *(v8 + 336), *(v8 + 416), *(v8 + 176), a2);
      }

      *(v15 + v9) = v10;
      v2 = *a1;
      v4 = **a1;
    }

    while (v3-- > v4);
  }

  return 0;
}

uint64_t RegistrationEngine_oneLevel(uint64_t a1, int a2)
{
  v4 = (a1 + 40276);
  v5 = a1 + 1600 * a2;
  memcpy((a1 + 40276), (v5 + 256), 0x640uLL);
  memcpy((a1 + 41876), (v5 + 16256), 0x640uLL);
  memcpy((a1 + 43476), (a1 + 800 * a2 + 32256), 0x320uLL);
  v6 = *(a1 + 2 * a2 + 40256);
  if (v6 < kRegistrationMinNumInliers[a2])
  {
    return 0;
  }

  v25 = kRegistrationMinNumInliers[a2];
  Norm_dirs(*(a1 + 56 + 8 * a2), (a1 + 48276), (a1 + 49876), v4, (a1 + 41876), v6);
  v24 = (a1 + 48276);
  GeomTransform_invs(*(a1 + 32), (a1 + 51476), (a1 + 53076), (a1 + 48276), (a1 + 49876), v6);
  v7 = a1 + 44276;
  v8 = a1 + 45876;
  Norm_invs(*(a1 + 56 + 8 * a2), (a1 + 44276), (a1 + 45876), (a1 + 51476), (a1 + 53076), v6);
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = a1 + 47476;
    v12 = (a1 + 49876);
    do
    {
      v13 = *(v7 + 4 * v9);
      if (v13 >= 10.0)
      {
        v14 = *a1 + 8 * a2;
        if (v13 < (*(v14 + 336) - 10))
        {
          v15 = *(v8 + 4 * v9);
          if (v15 >= 10.0 && v15 < (*(v14 + 416) - 10))
          {
            *(v11 + 2 * v10++) = v9;
          }
        }
      }

      ++v9;
    }

    while (v6 != v9);
    if (v10 >= 1)
    {
      v16 = 0;
      v17 = v4;
      do
      {
        v18 = *(v11 + 2 * v16);
        if (v16 != v18)
        {
          v17[1000] = *(v7 + 4 * v18);
          v17[2800] = *(a1 + 51476 + 4 * v18);
          v17[1400] = *(v8 + 4 * v18);
          v17[3200] = *(a1 + 53076 + 4 * v18);
          *v17 = v4[v18];
          v17[2000] = v24[v18];
          v17[400] = *(a1 + 41876 + 4 * v18);
          v17[2400] = *(a1 + 49876 + 4 * v18);
        }

        ++v16;
        ++v17;
      }

      while (v10 != v16);
    }
  }

  else
  {
    LOWORD(v10) = 0;
    v12 = (a1 + 49876);
  }

  if (v25 > v10)
  {
    return 0;
  }

  v20 = *(a1 + 8) + 8 * a2;
  v21 = v4;
  v22 = v12;
  FeatureMatcher_execute(*(a1 + 57088), v21, (a1 + 41876), (a1 + 44276), (a1 + 45876), (a1 + 54676), v10, *(*a1 + 8 * a2 + 96), *(*a1 + 8 * a2 + 176), *(v20 + 96), *(v20 + 176), 2u);
  Norm_dirs(*(a1 + 56 + 8 * a2), (a1 + 51476), (a1 + 53076), (a1 + 44276), (a1 + 45876), v10);
  GeomTransform_deepCopy(*(a1 + 40), *(a1 + 32));
  LOWORD(__N) = v10;
  result = RansacEngine_execute(*(a1 + 57096), *(a1 + 32), (a1 + 56276), (a1 + 51476), (a1 + 53076), v24, v22, (a1 + 54676), *(a1 + 4 * a2 + 136), __N);
  *(a1 + 57076) = result;
  if (result <= v25)
  {
    GeomTransform_deepCopy(*(a1 + 32), *(a1 + 40));
    return *(a1 + 57076);
  }

  return result;
}

uint64_t RegistrationEngine_execute(unsigned __int16 **a1, int a2, __int128 *a3)
{
  v4 = a1 + 6656;
  *(a1 + 28538) = 0;
  if (a2)
  {
    GeomTransform_setParams(a1[3], a3);
    GeomTransform_setParams(a1[4], (a1[3] + 18));
  }

  else
  {
    GeomTransform_eye(a1[4]);
    GeomTransform_eye(a1[3]);
  }

  RansacEngine_init(v4[481]);
  v5 = (*a1)[1];
  if (v5 >= **a1)
  {
    do
    {
      RegistrationEngine_oneLevel(a1, v5);
    }

    while (v5-- > **a1);
  }

  v7 = *(v4 + 1914);
  if (v7 > 5)
  {
    v8 = GeomTransform_estimate(a1[3], a1 + 51476, a1 + 53076, a1 + 48276, a1 + 49876, a1 + 28138, v7);
  }

  else
  {
    syslog(4, "Registration could not detect more that %d inlier corners at the highest resolution.\n", *(v4 + 1914));
    v8 = 0;
  }

  GeomTransform_changeCoordinateSystem(a1[4], a1[6]);
  return v8;
}

int64x2_t FeatureMatcher_constructor()
{
  v0 = malloc_type_calloc(0x2F0uLL, 1uLL, 0x1000040843277B5uLL);
  if (v0)
  {
    result = vdupq_n_s64(0xBuLL);
    *v0 = result;
    v0[1] = vdupq_n_s64(0x17uLL);
    v0[2].i64[0] = 529;
  }

  return result;
}

uint64_t FeatureMatcher_BestMatchByOptimizedNCC(uint64_t a1, float *a2, float *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, unsigned __int16 a11)
{
  v95 = *MEMORY[0x1E69E9840];
  if (a11 != 2)
  {
    FeatureMatcher_BestMatchByOptimizedNCC_cold_1();
  }

  v11 = a4;
  v12 = a3;
  v13 = a2;
  v15 = 0uLL;
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  memset(v92, 0, sizeof(v92));
  v16 = *a3;
  v17 = *a4;
  v18 = *(a1 + 24);
  if (v18)
  {
    v20 = 0;
    v21 = *(a1 + 8);
    v22 = v17 - v21;
    v23 = a7 + (v17 - v21) * a8 + v16 - *a1;
    v24 = (a5 + (a10 - v21) * a6 - *a1 + a9);
    v25 = *(a1 + 16) - 8;
    v26 = -a11;
    v27 = *(a1 + 16) & 7;
    v28 = (a7 + a8 * (v22 - 2) + v16 - *a1 - a11);
    v29 = v28 + 1;
    v30 = 0uLL;
    do
    {
      if (!v25)
      {
        goto LABEL_46;
      }

      v31 = 0;
      v32 = v29;
      v33 = v28;
      v34 = v24;
      do
      {
        LODWORD(v35) = 0;
        v36 = v32;
        v37 = *v34;
        v30 = vaddw_u8(v30, *v34);
        v38 = vmull_u8(v37, v37);
        v15 = vaddw_high_u16(vaddw_u16(v15, *v38.i8), v38);
        v39 = v33;
        v40 = -a11;
        do
        {
          v35 = v35;
          v41 = a11 + 3;
          v42 = v39;
          do
          {
            v43 = *v42;
            v42 = (v42 + 1);
            v94[v35] = vaddw_u8(v94[v35], v43);
            v44 = vmull_u8(v43, v43);
            v93[v35] = vaddw_high_u16(vaddw_u16(v93[v35], *v44.i8), v44);
            v45 = vmull_u8(v37, v43);
            v92[v35] = vaddw_high_u16(vaddw_u16(v92[v35], *v45.i8), v45);
            ++v35;
            --v41;
          }

          while (v41);
          ++v40;
          v39 = (v39 + a8);
        }

        while (v40 != 3);
        v31 += 8;
        ++v34;
        ++v33;
        v32 = v36 + 1;
      }

      while (v31 < v25);
      if (v27 != 7)
      {
LABEL_46:
        FeatureMatcher_BestMatchByOptimizedNCC_cold_2();
      }

      LODWORD(v46) = 0;
      v47 = *v34;
      v47.i8[7] = 0;
      v30 = vaddw_u8(v30, v47);
      v48 = vmull_u8(v47, v47);
      v15 = vaddw_high_u16(vaddw_u16(v15, *v48.i8), v48);
      v49 = -a11;
      do
      {
        v46 = v46;
        v50 = a11 + 3;
        v51 = v36;
        do
        {
          v52 = *v51;
          v51 = (v51 + 1);
          v53 = v52;
          v53.i8[7] = 0;
          v94[v46] = vaddw_u8(v94[v46], v53);
          v54 = vmull_u8(v53, v53);
          v93[v46] = vaddw_high_u16(vaddw_u16(v93[v46], *v54.i8), v54);
          v55 = vmull_u8(v47, v53);
          v92[v46] = vaddw_high_u16(vaddw_u16(v92[v46], *v55.i8), v55);
          ++v46;
          --v50;
        }

        while (v50);
        ++v49;
        v36 = (v36 + a8);
      }

      while (v49 != 3);
      ++v20;
      v24 = (v24 + a6);
      v23 += a8;
      v28 = (v28 + a8);
      v29 = (v29 + a8);
    }

    while (v20 != v18);
    v13 = a2;
    v11 = a4;
    v12 = a3;
  }

  else
  {
    v26 = -2;
    v30 = 0uLL;
  }

  v56 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(v30)));
  v57 = *(a1 + 32);
  v58 = vaddvq_s64(vpaddlq_u32(v15)) - ((v56 * v56) / v57);
  v59 = a1 + 40;
  memset_pattern16((a1 + 40), &unk_1A60383A0, 0x2A4uLL);
  v60 = a1 + 716;
  memset_pattern16((a1 + 716), &unk_1A60383A0, 0x24uLL);
  v61 = 0;
  v62 = v26;
  v63 = 14 * v26;
  v64 = -1.0;
  v65 = v16;
  v66 = v17;
  do
  {
    v67 = 0;
    v68 = v61;
    v69 = &v94[v61];
    v70 = &v93[v61];
    v71 = &v92[v61];
    do
    {
      v72 = vaddvq_s64(vpaddlq_u32(vpaddlq_u16(v69[v67])));
      v73 = v58 * (vaddvq_s64(vpaddlq_u32(v70[v67])) - ((v72 * v72) / v57));
      v74 = 0.0;
      if (v73 > 0.0)
      {
        v74 = (vaddvq_s64(vpaddlq_u32(v71[v67])) - ((v56 * v72) / v57)) / sqrtf(v73);
      }

      if ((v63 + v67 + 84) <= 0xA8u)
      {
        *(v59 + 4 * (v63 + v67 + 84)) = v74;
      }

      if (v74 > v64)
      {
        v64 = v74;
        v66 = v26 + v17;
        v65 = v62 + v67 + v16;
      }

      ++v67;
    }

    while (v62 + v67 != 3);
    ++v26;
    v61 = v68 + v67;
    v63 += 13;
  }

  while (v26 != 3);
  v75 = 0;
  while (2)
  {
    v76 = 0;
    v77 = v65 - v16 + 70 + 13 * (v66 - v17 + v75);
    do
    {
      if ((v77 + v76) >= 0xA9u)
      {
        *(v60 + 4 * v76) = -1027080192;
LABEL_43:
        v85 = 0.0;
        v84 = 0.0;
        goto LABEL_44;
      }

      v78 = *(v59 + 4 * (v77 + v76));
      *(v60 + 4 * v76) = v78;
      if (v78 == -100.0)
      {
        goto LABEL_43;
      }

      ++v76;
    }

    while (v76 != 3);
    ++v75;
    v60 += 12;
    if (v75 != 3)
    {
      continue;
    }

    break;
  }

  v64 = *(a1 + 732);
  v79 = *(a1 + 728);
  v80 = *(a1 + 736);
  v81 = *(a1 + 720);
  v82 = *(a1 + 744);
  v83 = ((v79 + v80) * 0.5) - v64;
  v84 = 0.0;
  v85 = 0.0;
  v86 = v64;
  if (v83 < 0.0)
  {
    v87 = (v80 - v79) * 0.5;
    v85 = -v87 / (v83 + v83);
    v86 = v64 + ((v87 * v87) / (v83 * -4.0));
  }

  v88 = ((v81 + v82) * 0.5) - v64;
  if (v88 < 0.0)
  {
    v89 = (v82 - v81) * 0.5;
    v84 = -v89 / (v88 + v88);
    v64 = v64 + ((v89 * v89) / (v88 * -4.0));
  }

  if (v86 > v64)
  {
    v64 = v86;
  }

LABEL_44:
  *v12 = v85 + v65;
  *v11 = v84 + v66;
  *v13 = v64;
  return 0;
}

uint64_t FeatureMatcher_execute(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12)
{
  if (a7)
  {
    v19 = a7;
    do
    {
      v20 = *a2++;
      v21 = v20;
      v22 = *a3++;
      FeatureMatcher_BestMatchByOptimizedNCC(a1, a6++, a4++, a5++, a8, a9, a10, a11, v21, v22, a12);
      --v19;
    }

    while (v19);
  }

  return 0;
}

void sub_1A5D67608(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void *vision::mod::ImageDescriptorBufferJoint::getRepresentative(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != 1)
  {
    if (v2)
    {
      v3 = malloc_type_realloc(*(a1 + 112), 4 * v2, 0x100004052888210uLL);
      *(a1 + 112) = v3;
      if (v3)
      {
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
      }

      exception = __cxa_allocate_exception(8uLL);
      v7 = 3707;
    }

    else
    {
      syslog(5, "ERROR: Cannot compute the representative of an empty buffer");
      exception = __cxa_allocate_exception(8uLL);
      v7 = 3710;
    }

    *exception = v7;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v4 = (*(*a1 + 24))(a1);
  if (!v4)
  {
    return 0;
  }
}

void sub_1A5D683B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  MEMORY[0x1AC556B00](v10, 0x10B1C408C23EE85);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5D68474(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorBufferJoint::ImageDescriptorBufferJoint(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, char a8)
{
  v12 = vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(a1, a2, a3, a6, a7, a8);
  *v12 = &unk_1F19715F0;
  *(v12 + 104) = 3;
  *(v12 + 144) = 0u;
  v13 = (v12 + 144);
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 160) = 0;
  *(v12 + 96) = a6 >> 2;
  if (v12 + 120 != a4)
  {
    v14 = *(a4 + 8);
    if (v14)
    {
      std::vector<BOOL>::__vallocate[abi:ne200100](v12 + 120, v14);
    }

    *(a1 + 128) = 0;
  }

  if (v13 != a5)
  {
    v15 = *a5;
    v16 = a5[1];
    v17 = &v16[-*a5];
    v18 = *(a1 + 160);
    v19 = *(a1 + 144);
    if (v18 - v19 < v17)
    {
      v20 = v17 >> 4;
      if (v19)
      {
        *(a1 + 152) = v19;
        operator delete(v19);
        v18 = 0;
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
      }

      if (!(v20 >> 60))
      {
        v21 = v18 >> 3;
        if (v18 >> 3 <= v20)
        {
          v21 = v17 >> 4;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        std::vector<vision::mod::DescriptorItemSideInfo>::__vallocate[abi:ne200100](v13, v22);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v23 = *(a1 + 152);
    v24 = v23 - v19;
    if (v23 - v19 >= v17)
    {
      if (v16 != v15)
      {
        memmove(*(a1 + 144), v15, v17);
      }

      v27 = &v19[v17];
    }

    else
    {
      v25 = &v15[v24];
      if (v23 != v19)
      {
        memmove(*(a1 + 144), v15, v24);
        v23 = *(a1 + 152);
      }

      v26 = v16 - v25;
      if (v16 != v25)
      {
        memmove(v23, v25, v26);
      }

      v27 = &v23[v26];
    }

    *(a1 + 152) = v27;
  }

  return a1;
}

void sub_1A5D68674(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 152) = v5;
    operator delete(v5);
  }

  if (*v2)
  {
    operator delete(*v2);
  }

  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v1);
  _Unwind_Resume(a1);
}

unint64_t vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(vision::mod::ImageDescriptorBufferAbstract *this, unint64_t a2)
{
  if (*(this + 9) <= a2)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3692;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return *(this + 7) + *(this + 8) * a2;
}

void vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(void **this)
{
  *this = &unk_1F1975D68;
  if (*(this + 88) == 1)
  {
    free(this[7]);
    this[7] = 0;
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(this[5]);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

void std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*a1);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::vector<vision::mod::DescriptorItemSideInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}