unint64_t sub_1A5BA0620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A5BA076C(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > v7[3] >> 1)
  {
    if (v8 <= v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = v8;
    }

    v7 = sub_1A5B9FEF4(isUniquelyReferenced_nonNull_native, v16, 1, v7, a3, a4, a5);
    *v5 = v7;
  }

  result = sub_1A5BA0620(v9, a2, 0, a5);
  *v5 = v7;
  return result;
}

uint64_t sub_1A5BA0858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5BA08C4()
{
  result = qword_1EB1F0880;
  if (!qword_1EB1F0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuildVersionAvailabilityRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BuildVersionAvailabilityRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A5BA0A50()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A5FD3FFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A5BA0AF4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 9) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1A5BA0C4C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 9] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_1A5BA0E78()
{
  result = qword_1EB1F08A0;
  if (!qword_1EB1F08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F08A0);
  }

  return result;
}

void sub_1A5BA0F3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void))
{
  sub_1A5BA0FF4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    type metadata accessor for FaceObservation(319);
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

void sub_1A5BA0FF4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for GazeState();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A5BA1054()
{
  result = qword_1EB1F08B0;
  if (!qword_1EB1F08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F08B0);
  }

  return result;
}

uint64_t sub_1A5BA10A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  result = sub_1A5FD456C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A5BA11B8()
{
  result = qword_1EB1F08B8;
  if (!qword_1EB1F08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F08B8);
  }

  return result;
}

unint64_t sub_1A5BA120C()
{
  result = qword_1EB1F08C8;
  if (!qword_1EB1F08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F08C8);
  }

  return result;
}

uint64_t sub_1A5BA1260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double DetectedObjectObservation.init(boundingBox:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for DetectedObjectObservation();
  sub_1A5FD366C();
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  *(a2 + v4[6]) = 1065353216;
  v6 = a2 + v4[7];
  result = 0.0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  v6[48] = 1;
  *(a2 + v4[8]) = -8;
  return result;
}

uint64_t type metadata accessor for DetectedObjectObservation()
{
  result = qword_1EB1F9960;
  if (!qword_1EB1F9960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DetectedObjectObservation.boundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DetectedObjectObservation.boundingBox.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t DetectedObjectObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DetectedObjectObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 DetectedObjectObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DetectedObjectObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t DetectedObjectObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for DetectedObjectObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DetectedObjectObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x203A64697575, 0xE600000000000000);
  type metadata accessor for DetectedObjectObservation();
  sub_1A5FD367C();
  sub_1A5BA29AC(&qword_1EB1EE738, MEMORY[0x1E69695A8]);
  v0 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0x69646E756F62203BLL, 0xEF203A786F42676ELL);
  sub_1A5B06A88();
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x6469666E6F63202CLL, 0xEE00203A65636E65);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0x6152656D6974203BLL, 0xED0000203A65676ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE748);
  v2 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0xD000000000000026, 0x80000001A6055240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
  v3 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v3);

  return 0;
}

uint64_t DetectedObjectObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for DetectedObjectObservation();
  sub_1A5BA29AC(&qword_1EB1F08D8, type metadata accessor for DetectedObjectObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BA1828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BA29AC(&qword_1EB1F08E8, type metadata accessor for DetectedObjectObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5BA18AC()
{
  if (*v0)
  {
    return 0x676E69646E756F62;
  }

  else
  {
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5BA18F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42)
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

uint64_t sub_1A5BA19DC(uint64_t a1)
{
  v2 = sub_1A5BA277C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA1A18(uint64_t a1)
{
  v2 = sub_1A5BA277C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectedObjectObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F08E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA277C();
  sub_1A5FD4CDC();
  v12 = v3[1];
  v18 = *v3;
  v19 = v12;
  v20 = 1;
  sub_1A5B0A30C();
  sub_1A5FD4A5C();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v13 = type metadata accessor for DetectedObjectObservation();
    v14 = sub_1A5BA29AC(&qword_1EB1F08E8, type metadata accessor for DetectedObjectObservation);
    sub_1A5BBD46C(v7, v13, &off_1F19560F0, v14);
    (*(v16 + 8))(v7, v17);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t DetectedObjectObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = sub_1A5FD367C();
  v36 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F08F0);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for DetectedObjectObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA277C();
  v13 = v42;
  sub_1A5FD4CCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v40;
  v33 = v6;
  v32 = v10;
  v34 = v12;
  v42 = a1;
  v15 = v39;
  v16 = v41;
  v47 = 1;
  sub_1A5B0A400();
  sub_1A5FD497C();
  v17 = v7;
  v18 = v44;
  v19 = v34;
  *v34 = v43;
  v19[1] = v18;
  LOBYTE(v43) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v31 = v9;
  LOBYTE(v43) = 0;
  sub_1A5BA29AC(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v20 = v14;
  sub_1A5FD497C();
  v21 = v32;
  v22 = v34;
  (*(v36 + 32))(v34 + v32[5], v20, v16);
  LOBYTE(v43) = 1;
  sub_1A5FD495C();
  *(v22 + v21[6]) = v23;
  v47 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v24 = v37;
  v25 = v42;
  v27 = v33;
  v26 = v34;
  *(v34 + v21[8]) = v43;
  sub_1A5BBDB04(v45);
  (*(v24 + 8))(v27, v38);
  (*(v15 + 8))(v31, v17);
  v28 = v26 + v21[7];
  v29 = v45[1];
  *v28 = v45[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v45[2];
  *(v28 + 48) = v46;
  sub_1A5BA27D0(v26, v35);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1A5BA2834(v26);
}

__n128 sub_1A5BA22C4@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for DetectedObjectObservation();
  [a1 boundingBox];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [a1 providesBoundsNormalizedToROI];
  v20 = a3[1];
  v29[0] = *a3;
  v29[1] = v20;
  sub_1A5BA29AC(&qword_1EB1F0560, type metadata accessor for DetectedObjectObservation);
  sub_1A5BD9138(v19, v29, v12, v14, v16, v18);
  v27 = v29[3];
  v28 = v29[2];
  v21 = a1;
  v22 = [v21 uuid];
  sub_1A5FD365C();

  [v21 confidence];
  LODWORD(v12) = v23;

  *a5 = v28;
  a5[1] = v27;
  *(a5 + v10[6]) = LODWORD(v12);
  v24 = a5 + v10[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 1) = v25;
  result = *(a4 + 32);
  *(v24 + 2) = result;
  v24[48] = *(a4 + 48);
  *(a5 + v10[8]) = v9;
  return result;
}

__n128 DetectedObjectObservation.init(_:)@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v30);
  v4 = a1;
  [v4 timeRange];
  v5 = v28;
  v6 = v29;
  v7 = type metadata accessor for DetectedObjectObservation();
  v23 = v27;
  v24 = v26;
  [v4 boundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v4 providesBoundsNormalizedToROI];
  v25[0] = v30[0];
  v25[1] = v30[1];
  sub_1A5BA29AC(&qword_1EB1F0560, type metadata accessor for DetectedObjectObservation);
  sub_1A5BD9138(v16, v25, v9, v11, v13, v15);
  v21 = v27;
  v22 = v26;
  v17 = [v4 uuid];
  sub_1A5FD365C();

  [v4 confidence];
  LODWORD(v9) = v18;

  *a2 = v22;
  a2[1] = v21;
  *(a2->n128_u32 + v7[6]) = LODWORD(v9);
  v19 = (a2 + v7[7]);
  result = v24;
  *v19 = v24;
  v19[1] = v23;
  v19[2].n128_u64[0] = v5;
  v19[2].n128_u64[1] = v6;
  v19[3].n128_u8[0] = 0;
  *(a2->n128_u16 + v7[8]) = -8;
  return result;
}

double sub_1A5BA25FC@<D0>(void *a1@<X0>, __int16 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  *&result = sub_1A5BA22C4(a1, &v8, v7, a4, a5).n128_u64[0];
  return result;
}

uint64_t _s6Vision25DetectedObjectObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v22.origin = *a1;
  v22.size = v4;
  v5 = *(a2 + 16);
  v20.origin = *a2;
  v20.size = v5;
  if (!static NormalizedRect.== infix(_:_:)(&v22, &v20))
  {
    return 0;
  }

  v6 = type metadata accessor for DetectedObjectObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v6[6]) != *(a2 + v6[6]))
  {
    return 0;
  }

  v7 = v6[7];
  v8 = a1 + v7;
  v9 = *(a1 + v7 + 48);
  v10 = a2 + v7;
  if ((v9 & 1) == 0)
  {
    if (*(v10 + 48))
    {
      return 0;
    }

    v11 = *v8;
    v12 = *(v8 + 16);
    v13 = *(v8 + 32);
    v14 = *(v10 + 16);
    v15 = *(v10 + 32);
    v22.origin = *v10;
    v22.size = v14;
    v23 = v15;
    v20.origin = v11;
    v20.size = v12;
    v21 = v13;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v16 = v6[8];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    if (v17 <= 0xFFF7)
    {
      if (v18 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (*(v10 + 48))
  {
    goto LABEL_9;
  }

  return 0;
}

unint64_t sub_1A5BA277C()
{
  result = qword_1EB2169D0[0];
  if (!qword_1EB2169D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2169D0);
  }

  return result;
}

uint64_t sub_1A5BA27D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedObjectObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BA2834(uint64_t a1)
{
  v2 = type metadata accessor for DetectedObjectObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5BA2890(void *a1)
{
  a1[1] = sub_1A5BA29AC(&qword_1EB1F08F8, type metadata accessor for DetectedObjectObservation);
  a1[2] = sub_1A5BA29AC(&qword_1EB1F0900, type metadata accessor for DetectedObjectObservation);
  a1[3] = sub_1A5BA29AC(&qword_1EB1F0908, type metadata accessor for DetectedObjectObservation);
  result = sub_1A5BA29AC(&qword_1EB1F08D8, type metadata accessor for DetectedObjectObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BA29AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BA29F4(uint64_t a1)
{
  result = sub_1A5BA29AC(&qword_1EB1F08E8, type metadata accessor for DetectedObjectObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BA2A74()
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

unint64_t sub_1A5BA2B60()
{
  result = qword_1EB216E60[0];
  if (!qword_1EB216E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB216E60);
  }

  return result;
}

unint64_t sub_1A5BA2BB8()
{
  result = qword_1EB216F70;
  if (!qword_1EB216F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB216F70);
  }

  return result;
}

unint64_t sub_1A5BA2C10()
{
  result = qword_1EB216F78;
  if (!qword_1EB216F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB216F78);
  }

  return result;
}

uint64_t sub_1A5BA2C90(uint64_t a1)
{
  v2 = sub_1A5BA3280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA2CCC(uint64_t a1)
{
  v2 = sub_1A5BA3280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BA2D08()
{
  if (*v0)
  {
    return 0x416576616C637865;
  }

  else
  {
    return 0x444D347652464E41;
  }
}

uint64_t sub_1A5BA2D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444D347652464E41 && a2 == 0xE900000000000032;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x416576616C637865 && a2 == 0xEB0000000052464ELL)
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

uint64_t sub_1A5BA2E38(uint64_t a1)
{
  v2 = sub_1A5BA31D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA2E74(uint64_t a1)
{
  v2 = sub_1A5BA31D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BA2EB0(uint64_t a1)
{
  v2 = sub_1A5BA322C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA2EEC(uint64_t a1)
{
  v2 = sub_1A5BA322C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateFacePrintRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0910);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0918);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0920);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA31D8();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BA322C();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BA3280();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5BA31D8()
{
  result = qword_1EB217000;
  if (!qword_1EB217000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB217000);
  }

  return result;
}

unint64_t sub_1A5BA322C()
{
  result = qword_1EB217008;
  if (!qword_1EB217008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB217008);
  }

  return result;
}

unint64_t sub_1A5BA3280()
{
  result = qword_1EB217010[0];
  if (!qword_1EB217010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB217010);
  }

  return result;
}

uint64_t GenerateFacePrintRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GenerateFacePrintRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0928);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0930);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0938);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA31D8();
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
    *v21 = &type metadata for GenerateFacePrintRequest.Revision;
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
    sub_1A5BA322C();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BA3280();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t GenerateFacePrintRequest.init(revision:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  static NormalizedRect.fullImage.getter((a2 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a2 + 48) = result;
  *(a2 + 40) = v3;
  return result;
}

uint64_t GenerateFacePrintRequest.inputFaceObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 GenerateFacePrintRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateFacePrintRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

float GenerateFacePrintRequest.highConfidenceThreshold.getter()
{
  result = 0.47;
  if (!*(v0 + 40))
  {
    return 0.0;
  }

  return result;
}

uint64_t GenerateFacePrintRequest.computeStageDeviceAssignments.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t GenerateFacePrintRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BA41CC();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateFacePrintRequest, v3);
}

uint64_t sub_1A5BA3984@<X0>(uint64_t *a1@<X8>)
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
    v8 = 3;
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

uint64_t GenerateFacePrintRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v15 = *(v1 + 3);
  v16 = v8;
  v9 = *(v1 + 40);
  v10 = v1[6];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v11 = *(v7 + 16);
    if (v11)
    {
      v12 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v13 = *(v4 + 72);
      do
      {
        sub_1A5B0F60C(v12, v6);
        sub_1A5B102F8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
        sub_1A5FD3CBC();
        sub_1A5B0F670(v6);
        v12 += v13;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  v17 = v16;
  v18 = v15;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v9);
  return sub_1A5B0ED0C(a1, v10);
}

uint64_t GenerateFacePrintRequest.hashValue.getter()
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
  GenerateFacePrintRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BA3C64()
{
  if (*(v0 + 40))
  {
    return 10;
  }

  else
  {
    return sub_1A5FD3D5C();
  }
}

uint64_t sub_1A5BA3CA8(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E748();

  return sub_1A5D4E6C8(a1, a2);
}

uint64_t sub_1A5BA3CF8(uint64_t a1)
{
  v2 = sub_1A5BA4960();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BA3D34(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BA41CC();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BA3DA0(uint64_t a1)
{
  v2 = sub_1A5B5E748();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BA3DDC()
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
  GenerateFacePrintRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BA3E48()
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
  GenerateFacePrintRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BA3EB0(uint64_t a1, id a2)
{
  v4 = *(v2 + 40);
  result = [a2 faceprint];
  if (result)
  {
    v6 = result;
    result = [v6 descriptorData];
    if (result)
    {
      v7 = result;
      v8 = sub_1A5FD35DC();
      v10 = v9;

      result = [v6 elementCount];
      if ((result & 0x8000000000000000) == 0)
      {
        v11 = result;
        result = sub_1A5C103FC([v6 elementType], &v24);
        if (v24 != 3)
        {
          v23 = v24;
          [v6 confidence];
          v13 = v12;
          v14 = [v6 confidenceScoreType];

          sub_1A5C35034(v14, &v22);
          LOBYTE(v21) = v4 | 0x20;
          HIBYTE(v21) = 1;
          FaceObservation.FacePrint.init(with:_:_:confidence:confidenceScoreType:requestDescriptor:)(v8, v10, v11, &v23, &v22, &v21, &v25, v13);

          v20 = v25;
          v15 = v26;
          v16 = v29;
          v17 = v30;
          v18 = v27 | (v28 << 32);
          v19 = a1 + *(type metadata accessor for FaceObservation(0) + 76);
          result = sub_1A5B066C4(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32));
          *v19 = v20;
          *(v19 + 16) = v15;
          *(v19 + 24) = v18;
          *(v19 + 34) = v17;
          *(v19 + 32) = v16;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1A5BA4088()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 3737841669;
  }
}

uint64_t _s6Vision24GenerateFacePrintRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v16 = *(a1 + 24);
    v17 = *(a1 + 8);
    v14 = *(a2 + 24);
    v15 = *(a2 + 8);

    v12 = sub_1A5B0E074(v2, v7);

    v9 = v14;
    v8 = v15;
    v4 = v16;
    v3 = v17;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v19.origin = v3;
  v19.size = v4;
  v18.origin = v8;
  v18.size = v9;
  if (!static NormalizedRect.== infix(_:_:)(&v19, &v18) || ((v5 ^ v10) & 1) != 0)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v6, v11);
}

unint64_t sub_1A5BA41CC()
{
  result = qword_1EB1F0940;
  if (!qword_1EB1F0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0940);
  }

  return result;
}

id sub_1A5BA4220(uint64_t a1)
{
  v3 = *v1;
  v26 = *(v1 + 40);
  v18 = v1[6];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  *&v22 = MEMORY[0x1E69E6370];
  LOBYTE(v20) = 1;
  v7 = *(*a1 + 208);
  v8 = v7(v25);
  v16 = *(v1 + 3);
  v17 = *(v1 + 1);
  sub_1A5B0DE30(&v20, v4, v6);
  v8(v25, 0);
  v9 = sub_1A5FD3D5C();
  v11 = v10;
  v20 = v3;
  v22 = v16;
  v21 = v17;
  v23 = v26;
  v24 = v18;
  v12 = sub_1A5BA4960();
  result = sub_1A5BD9FC4(&type metadata for GenerateFacePrintRequest, v12);
  if (result)
  {
    v14 = result;
    v25[3] = sub_1A5B1011C();
    v25[0] = v14;
    v15 = v7(v19);
    sub_1A5B0DE30(v25, v9, v11);
    return v15(v19, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A5BA43CC()
{
  result = qword_1EB1F0948;
  if (!qword_1EB1F0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0948);
  }

  return result;
}

unint64_t sub_1A5BA4424(uint64_t a1)
{
  *(a1 + 16) = sub_1A5BA4454();
  result = sub_1A5BA41CC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1A5BA4454()
{
  result = qword_1EB1F0950;
  if (!qword_1EB1F0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0950);
  }

  return result;
}

unint64_t sub_1A5BA44AC()
{
  result = qword_1EB1F0958;
  if (!qword_1EB1F0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0958);
  }

  return result;
}

unint64_t sub_1A5BA4500(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B669D0();
  result = sub_1A5BA4530();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BA4530()
{
  result = qword_1EB1F0960;
  if (!qword_1EB1F0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0960);
  }

  return result;
}

unint64_t sub_1A5BA4588()
{
  result = qword_1EB1F0968;
  if (!qword_1EB1F0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0968);
  }

  return result;
}

unint64_t sub_1A5BA45DC(uint64_t a1)
{
  result = sub_1A5B5E748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BA4604(uint64_t a1)
{
  result = sub_1A5BA41CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BA462C(uint64_t a1)
{
  result = sub_1A5BA4654();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BA4654()
{
  result = qword_1EB1F0970;
  if (!qword_1EB1F0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0970);
  }

  return result;
}

unint64_t sub_1A5BA46FC()
{
  result = qword_1EB217AA0[0];
  if (!qword_1EB217AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB217AA0);
  }

  return result;
}

unint64_t sub_1A5BA4754()
{
  result = qword_1EB217BB0;
  if (!qword_1EB217BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB217BB0);
  }

  return result;
}

unint64_t sub_1A5BA47AC()
{
  result = qword_1EB217BB8[0];
  if (!qword_1EB217BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB217BB8);
  }

  return result;
}

unint64_t sub_1A5BA4804()
{
  result = qword_1EB217C40;
  if (!qword_1EB217C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB217C40);
  }

  return result;
}

unint64_t sub_1A5BA485C()
{
  result = qword_1EB217C48[0];
  if (!qword_1EB217C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB217C48);
  }

  return result;
}

unint64_t sub_1A5BA48B4()
{
  result = qword_1EB217CD0;
  if (!qword_1EB217CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB217CD0);
  }

  return result;
}

unint64_t sub_1A5BA490C()
{
  result = qword_1EB217CD8[0];
  if (!qword_1EB217CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB217CD8);
  }

  return result;
}

unint64_t sub_1A5BA4960()
{
  result = qword_1EB1F0978;
  if (!qword_1EB1F0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0978);
  }

  return result;
}

uint64_t sub_1A5BA49E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A60552A0 == a2)
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

uint64_t sub_1A5BA4A7C(uint64_t a1)
{
  v2 = sub_1A5BA4D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA4AB8(uint64_t a1)
{
  v2 = sub_1A5BA4D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BA4AF4(uint64_t a1)
{
  v2 = sub_1A5BA4D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA4B30(uint64_t a1)
{
  v2 = sub_1A5BA4D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectDeviceGazeRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0980);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0988);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA4D44();
  sub_1A5FD4CDC();
  sub_1A5BA4D98();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BA4D44()
{
  result = qword_1EB217D60;
  if (!qword_1EB217D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB217D60);
  }

  return result;
}

unint64_t sub_1A5BA4D98()
{
  result = qword_1EB217D68[0];
  if (!qword_1EB217D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB217D68);
  }

  return result;
}

uint64_t DetectDeviceGazeRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectDeviceGazeRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0990);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0998);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA4D44();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BA4D98();
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
      *v13 = &type metadata for DetectDeviceGazeRequest.Revision;
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

uint64_t sub_1A5BA5164(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0980);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0988);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA4D44();
  sub_1A5FD4CDC();
  sub_1A5BA4D98();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DetectDeviceGazeRequest.__allocating_init(revision:)()
{
  v0 = swift_allocObject();
  DetectDeviceGazeRequest.init(revision:)();
  return v0;
}

uint64_t DetectDeviceGazeRequest.init(revision:)()
{
  v1 = sub_1A5FD3B5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  sub_1A5FD366C();
  v10 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
  v11 = sub_1A5C3D794();
  swift_beginAccess();
  v42 = v11;
  v12 = sub_1A5BA132C(*v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  v43 = v0;
  *(v0 + v10) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  v41 = inited;
  *(inited + 32) = 0;
  v40 = inited + 32;
  result = MEMORY[0x1AC554330]();
  v52 = *(result + 16);
  if (v52)
  {
    v51 = v4;
    v16 = 0;
    v48 = v2 + 16;
    v47 = v2 + 88;
    v46 = *MEMORY[0x1E695FD08];
    v17 = v2 + 8;
    v45 = v2;
    v44 = (v2 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    v50 = v9;
    v49 = result;
    while (v16 < *(result + 16))
    {
      v19 = v45;
      v54 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v20 = *(v45 + 72);
      v21 = *(v45 + 16);
      v21(v9, result + v54 + v20 * v16, v1);
      v22 = v17;
      v23 = v53;
      v21(v53, v9, v1);
      LODWORD(v21) = (*(v19 + 88))(v23, v1);
      v24 = v9;
      v25 = *(v19 + 8);
      v26 = v23;
      v17 = v22;
      v25(v26, v1);
      if (v21 == v46)
      {
        v27 = *v44;
        (*v44)(v51, v24, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A5B53F20(0, *(v18 + 16) + 1, 1);
          v18 = v60;
        }

        v30 = *(v18 + 16);
        v29 = *(v18 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1A5B53F20(v29 > 1, v30 + 1, 1);
          v18 = v60;
        }

        *(v18 + 16) = v30 + 1;
        v27((v18 + v54 + v30 * v20), v51, v1);
        v17 = v22;
      }

      else
      {
        v25(v24, v1);
      }

      ++v16;
      v9 = v50;
      result = v49;
      if (v52 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v31 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_supportedComputeStageDevices;
    v32 = v41;
    *(v41 + 40) = v18;
    v33 = sub_1A5B54118(v32);
    swift_setDeallocating();
    sub_1A5B5420C(v40);
    v34 = v43;
    *(v43 + v31) = v33;
    v35 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration;
    *&v55[0] = 0;
    static NormalizedRect.fullImage.getter((v55 + 8));
    *(&v56 + 1) = 0;
    v36 = v42;
    swift_beginAccess();
    v57 = *v36;
    v58 = 0uLL;
    v59 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09B0);
    v37 = swift_allocObject();
    *(v37 + 104) = 0;
    v38 = v57;
    *(v37 + 48) = v56;
    *(v37 + 64) = v38;
    *(v37 + 80) = v58;
    *(v37 + 96) = v59;
    v39 = v55[1];
    *(v37 + 16) = v55[0];
    *(v37 + 32) = v39;
    *(v34 + v35) = v37;
    return v34;
  }

  return result;
}

uint64_t DetectDeviceGazeRequest.inputFaceObservations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA58C4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA591C(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v2 + 104));
  sub_1A5B54B00((v2 + 16));
  os_unfair_lock_unlock((v2 + 104));
}

uint64_t DetectDeviceGazeRequest.inputFaceObservations.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  sub_1A5B54274((v1 + 16));
  os_unfair_lock_unlock((v1 + 104));
}

uint64_t (*DetectDeviceGazeRequest.inputFaceObservations.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA5A5C;
}

uint64_t sub_1A5BA5A5C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock((v2 + 104));
    sub_1A5B54B00((v2 + 16));
    os_unfair_lock_unlock((v2 + 104));
  }

  else
  {
    os_unfair_lock_lock((v2 + 104));
    sub_1A5B54B00((v2 + 16));
    os_unfair_lock_unlock((v2 + 104));
  }
}

void DetectDeviceGazeRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 104));
}

__n128 sub_1A5BA5B60@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v5 = *(v3 + 40);
  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 104));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5BA5BBC(__int128 *a1, void *a2)
{
  v3 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void DetectDeviceGazeRequest.regionOfInterest.setter(__int128 *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void (*DetectDeviceGazeRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 40);
  *v4 = *(v5 + 24);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 104));
  return sub_1A5BA5D00;
}

void sub_1A5BA5D00(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = (*a1)[1];
  v4 = **a1;
  os_unfair_lock_lock((v2 + 104));
  *(v2 + 40) = v3;
  *(v2 + 24) = v4;
  os_unfair_lock_unlock((v2 + 104));

  free(v1);
}

uint64_t DetectDeviceGazeRequest.minimumLatencyFrameCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA5DB4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA5E04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  *(v3 + 56) = v2;

  os_unfair_lock_unlock((v3 + 104));
}

void DetectDeviceGazeRequest.minimumLatencyFrameCount.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  *(v3 + 56) = a1;

  os_unfair_lock_unlock((v3 + 104));
}

void (*DetectDeviceGazeRequest.minimumLatencyFrameCount.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA5F0C;
}

void sub_1A5BA5F0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  os_unfair_lock_lock((v1 + 104));
  *(v1 + 56) = v2;

  os_unfair_lock_unlock((v1 + 104));
}

uint64_t DetectDeviceGazeRequest.temporalSmoothingFrameCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 64);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA5F8C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA5FDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = *a2;
    v4 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
    os_unfair_lock_lock((v4 + 104));
    *(v4 + 64) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v5 = sub_1A5BA132C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_state;
    swift_beginAccess();
    *(v3 + v7) = v6;

    os_unfair_lock_unlock((v4 + 104));
  }
}

void DetectDeviceGazeRequest.temporalSmoothingFrameCount.setter(uint64_t a1)
{
  if (a1 >= 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
    os_unfair_lock_lock((v3 + 104));
    *(v3 + 64) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v4 = v1;
    v5 = sub_1A5BA132C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_state;
    swift_beginAccess();
    *(v4 + v7) = v6;

    os_unfair_lock_unlock((v3 + 104));
  }
}

void (*DetectDeviceGazeRequest.temporalSmoothingFrameCount.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  *(v3 + 64) = v5;
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock((v5 + 104));
  *(v4 + 48) = v6;
  return sub_1A5BA6220;
}

void sub_1A5BA6220(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 >= 1)
  {
    v4 = v1[7];
    v3 = v1[8];
    os_unfair_lock_lock((v3 + 104));
    *(v3 + 64) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v5 = sub_1A5BA132C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_state;
    swift_beginAccess();
    *(v4 + v7) = v6;

    os_unfair_lock_unlock((v3 + 104));
  }

  free(v1);
}

uint64_t DetectDeviceGazeRequest.frameAnalysisSpacing.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 72);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA6368(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v5;
}

void sub_1A5BA63D0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v5 + 104));
  *(v5 + 72) = v3;
  *(v5 + 80) = a1[1];
  *(v5 + 88) = v4;

  os_unfair_lock_unlock((v5 + 104));
}

void DetectDeviceGazeRequest.frameAnalysisSpacing.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = *(v3 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v8 + 104));
  *(v8 + 72) = a1;
  *(v8 + 80) = v5;
  *(v8 + 84) = v7;
  *(v8 + 88) = a3;

  os_unfair_lock_unlock((v8 + 104));
}

void (*DetectDeviceGazeRequest.frameAnalysisSpacing.modify(void *a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 104));
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1A5BA6530;
}

void sub_1A5BA6530(os_unfair_lock_s **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  os_unfair_lock_lock(*a1 + 26);
  *&v2[18]._os_unfair_lock_opaque = v3;
  *&v2[20]._os_unfair_lock_opaque = a1[2];
  *&v2[22]._os_unfair_lock_opaque = v4;

  os_unfair_lock_unlock(v2 + 26);
}

uint64_t DetectDeviceGazeRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5BA796C(&qword_1EB1F09B8, type metadata accessor for DetectDeviceGazeRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t DetectDeviceGazeRequest.computeStageDeviceAssignments.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 96);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA667C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 96);

  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA66D4(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock(v2 + 26);
  sub_1A5BA7DC0(&v2[4]);
  os_unfair_lock_unlock(v2 + 26);
}

uint64_t DetectDeviceGazeRequest.computeStageDeviceAssignments.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock(v1 + 26);
  sub_1A5BA7704(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t (*DetectDeviceGazeRequest.computeStageDeviceAssignments.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 96);

  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA6814;
}

uint64_t sub_1A5BA6814(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 26);
    sub_1A5BA7DC0(&v2[4]);
    os_unfair_lock_unlock(v2 + 26);
  }

  else
  {
    os_unfair_lock_lock(v2 + 26);
    sub_1A5BA7DC0(&v2[4]);
    os_unfair_lock_unlock(v2 + 26);
  }
}

uint64_t sub_1A5BA6994(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t DetectDeviceGazeRequest.deinit()
{
  v1 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DetectDeviceGazeRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DetectDeviceGazeRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5BA796C(&qword_1EB1F09C0, type metadata accessor for DetectDeviceGazeRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5BA6BE8(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void sub_1A5BA6C40(__int128 *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

uint64_t (*sub_1A5BA6C98(uint64_t **a1))()
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
  v2[4] = DetectDeviceGazeRequest.regionOfInterest.modify(v2);
  return sub_1A5B15448;
}

uint64_t sub_1A5BA6D0C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BA6D50()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 72);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BA6DA8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BA6E40(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BA796C(&qword_1EB1F09B8, type metadata accessor for DetectDeviceGazeRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BA6ED4(uint64_t a1)
{
  v2 = sub_1A5BA796C(&qword_1EB1EF7B8, type metadata accessor for DetectDeviceGazeRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BA6F40(uint64_t a1, uint64_t a2)
{
  sub_1A5BA796C(&qword_1EB1EFDF8, type metadata accessor for DetectDeviceGazeRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5BA6FBC(uint64_t a1, uint64_t a2)
{
  sub_1A5BA796C(&qword_1EB1EFDF8, type metadata accessor for DetectDeviceGazeRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5BA703C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 35)
  {
    v7 = *(v6 + 1);
  }

  else
  {
    sub_1A5B16718(v6);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v13, "VisionResult ");
    HIWORD(v13[1]) = -4864;
    sub_1A5BA796C(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v8 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v8);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v13[3] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09C8);
    v9 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v9);

    v7 = v13[0];
    v10 = v13[1];
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(v7, v10, v11);

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1A5BA7230@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5BA7300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A5BA703C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A5BA732C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  a2[1] = v3;
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5BA73A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  if (v4)
  {

    v5 = 0;
    v6 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v11 = 3;
    DetectFaceRectanglesRequest.init(_:)(&v11, &v12);
    os_unfair_lock_lock((v3 + 104));
    v9 = *(v3 + 40);
    v10 = *(v3 + 24);
    os_unfair_lock_unlock((v3 + 104));
    v13 = v9;
    v12 = v10;
    v6 = sub_1A5B0F5B8();
    result = swift_allocObject();
    v8 = v13;
    *(result + 16) = v12;
    *(result + 32) = v8;
    *(result + 48) = v14;
    *(result + 64) = v15;
    v5 = &type metadata for DetectFaceRectanglesRequest;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t sub_1A5BA74A4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 96);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BA74F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectDeviceGazeRequest_configuration);
  os_unfair_lock_lock(v1 + 26);
  sub_1A5BA7DC0(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t (*sub_1A5BA755C(void *a1))()
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
  v2[4] = DetectDeviceGazeRequest.computeStageDeviceAssignments.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5BA767C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = DetectDeviceGazeRequest.init(revision:)();
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for DetectDeviceGazeRequest()
{
  result = qword_1EB2184F0;
  if (!qword_1EB2184F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A5BA771C()
{
  result = qword_1EB1F09D0;
  if (!qword_1EB1F09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F09D0);
  }

  return result;
}

uint64_t sub_1A5BA77F8(uint64_t a1)
{
  result = sub_1A5BA796C(&qword_1EB1EF7B8, type metadata accessor for DetectDeviceGazeRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BA7860()
{
  result = qword_1EB1F09E0;
  if (!qword_1EB1F09E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F09A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F09E0);
  }

  return result;
}

uint64_t sub_1A5BA7900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5BA796C(a4, type metadata accessor for DetectDeviceGazeRequest);
  result = sub_1A5BA796C(a6, type metadata accessor for DetectDeviceGazeRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5BA796C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5BA79B4(uint64_t a1)
{
  result = sub_1A5BA79DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BA79DC()
{
  result = qword_1EB1F09F0;
  if (!qword_1EB1F09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F09F0);
  }

  return result;
}

unint64_t sub_1A5BA7A34()
{
  result = qword_1EB1F09F8;
  if (!qword_1EB1F09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F09F8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A5BA7AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5BA7B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A5BA7BC0()
{
  result = qword_1EB218700[0];
  if (!qword_1EB218700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB218700);
  }

  return result;
}

unint64_t sub_1A5BA7C18()
{
  result = qword_1EB218810;
  if (!qword_1EB218810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB218810);
  }

  return result;
}

unint64_t sub_1A5BA7C70()
{
  result = qword_1EB218818[0];
  if (!qword_1EB218818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB218818);
  }

  return result;
}

unint64_t sub_1A5BA7CC8()
{
  result = qword_1EB2188A0;
  if (!qword_1EB2188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2188A0);
  }

  return result;
}

unint64_t sub_1A5BA7D20()
{
  result = qword_1EB2188A8[0];
  if (!qword_1EB2188A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2188A8);
  }

  return result;
}

uint64_t sub_1A5BA7D74(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 80) = v3;
  return result;
}

unint64_t sub_1A5BA7E0C()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1A5BA7E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001A6055310 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A6055330 == a2)
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

uint64_t sub_1A5BA7F2C(uint64_t a1)
{
  v2 = sub_1A5BA8344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA7F68(uint64_t a1)
{
  v2 = sub_1A5BA8344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BA7FA4(uint64_t a1)
{
  v2 = sub_1A5BA83EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA7FE0(uint64_t a1)
{
  v2 = sub_1A5BA83EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BA801C(uint64_t a1)
{
  v2 = sub_1A5BA8398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BA8058(uint64_t a1)
{
  v2 = sub_1A5BA8398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalculateFaceLivelinessScoreRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A00);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A08);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA8344();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BA8398();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BA83EC();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5BA8344()
{
  result = qword_1EB218930;
  if (!qword_1EB218930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB218930);
  }

  return result;
}

unint64_t sub_1A5BA8398()
{
  result = qword_1EB218938;
  if (!qword_1EB218938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB218938);
  }

  return result;
}

unint64_t sub_1A5BA83EC()
{
  result = qword_1EB218940[0];
  if (!qword_1EB218940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB218940);
  }

  return result;
}

uint64_t CalculateFaceLivelinessScoreRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t CalculateFaceLivelinessScoreRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A18);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A20);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A28);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BA8344();
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
    *v21 = &type metadata for CalculateFaceLivelinessScoreRequest.Revision;
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
    sub_1A5BA8398();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BA83EC();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t CalculateFaceLivelinessScoreRequest.__allocating_init(revision:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  CalculateFaceLivelinessScoreRequest.init(revision:)(a1);
  return v2;
}

uint64_t CalculateFaceLivelinessScoreRequest.init(revision:)(unsigned __int8 *a1)
{
  v3 = sub_1A5FD3B5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v42 = *a1;
  sub_1A5FD366C();
  v12 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
  v13 = sub_1A5C48E08();
  swift_beginAccess();
  v14 = sub_1A5BA132C(*v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  v43 = v1;
  *(v1 + v12) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  v41 = inited;
  *(inited + 32) = 0;
  v40 = inited + 32;
  result = MEMORY[0x1AC554330]();
  v52 = *(result + 16);
  if (v52)
  {
    v51 = v6;
    v18 = 0;
    v49 = v4 + 16;
    v48 = v4 + 88;
    v47 = *MEMORY[0x1E695FD08];
    v46 = v4 + 8;
    v45 = (v4 + 32);
    v19 = MEMORY[0x1E69E7CC0];
    v44 = v11;
    v50 = result;
    while (v18 < *(result + 16))
    {
      v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v21 = *(v4 + 72);
      v22 = *(v4 + 16);
      v22(v11, result + v20 + v21 * v18, v3);
      v23 = v11;
      v24 = v53;
      v22(v53, v23, v3);
      LODWORD(v22) = (*(v4 + 88))(v24, v3);
      v25 = *(v4 + 8);
      v25(v24, v3);
      if (v22 == v47)
      {
        v26 = *v45;
        (*v45)(v51, v23, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A5B53F20(0, *(v19 + 16) + 1, 1);
          v19 = v59;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1A5B53F20(v28 > 1, v29 + 1, 1);
          v19 = v59;
        }

        *(v19 + 16) = v29 + 1;
        v26((v19 + v20 + v29 * v21), v51, v3);
        v11 = v44;
      }

      else
      {
        v25(v23, v3);
        v11 = v23;
      }

      ++v18;
      result = v50;
      if (v52 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v30 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_supportedComputeStageDevices;
    v31 = v41;
    *(v41 + 40) = v19;
    v32 = sub_1A5B54118(v31);
    swift_setDeallocating();
    sub_1A5B5420C(v40);
    v33 = v43;
    *(v43 + v30) = v32;
    v34 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration;
    *&v54[0] = 0;
    static NormalizedRect.fullImage.getter((v54 + 8));
    *(&v55 + 1) = 0;
    v35 = sub_1A5C4B100();
    swift_beginAccess();
    v56 = *v35;
    v57 = 0uLL;
    v58 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A30);
    v36 = swift_allocObject();
    *(v36 + 104) = 0;
    v37 = v56;
    *(v36 + 48) = v55;
    *(v36 + 64) = v37;
    *(v36 + 80) = v57;
    *(v36 + 96) = v58;
    v38 = v54[1];
    *(v36 + 16) = v54[0];
    *(v36 + 32) = v38;
    *(v33 + v34) = v36;
    *(v33 + 16) = v42;
    return v33;
  }

  return result;
}

uint64_t CalculateFaceLivelinessScoreRequest.inputFaceObservations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA8EC0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA8F18(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v2 + 104));
  sub_1A5B54B00((v2 + 16));
  os_unfair_lock_unlock((v2 + 104));
}

uint64_t CalculateFaceLivelinessScoreRequest.inputFaceObservations.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  sub_1A5B54274((v1 + 16));
  os_unfair_lock_unlock((v1 + 104));
}

uint64_t (*CalculateFaceLivelinessScoreRequest.inputFaceObservations.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA5A5C;
}

void CalculateFaceLivelinessScoreRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 104));
}

__n128 sub_1A5BA90AC@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v5 = *(v3 + 40);
  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 104));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5BA9108(__int128 *a1, void *a2)
{
  v3 = *(*a2 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void CalculateFaceLivelinessScoreRequest.regionOfInterest.setter(__int128 *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void (*CalculateFaceLivelinessScoreRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 40);
  *v4 = *(v5 + 24);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 104));
  return sub_1A5BA5D00;
}

uint64_t CalculateFaceLivelinessScoreRequest.minimumLatencyFrameCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA92B0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA9300(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  *(v3 + 56) = v2;

  os_unfair_lock_unlock((v3 + 104));
}

void CalculateFaceLivelinessScoreRequest.minimumLatencyFrameCount.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  *(v3 + 56) = a1;

  os_unfair_lock_unlock((v3 + 104));
}

void (*CalculateFaceLivelinessScoreRequest.minimumLatencyFrameCount.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA5F0C;
}

uint64_t CalculateFaceLivelinessScoreRequest.temporalSmoothingFrameCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 64);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA9448(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BA9498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = *a2;
    v4 = *(*a2 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
    os_unfair_lock_lock((v4 + 104));
    *(v4 + 64) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v5 = sub_1A5BA132C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_state;
    swift_beginAccess();
    *(v3 + v7) = v6;

    os_unfair_lock_unlock((v4 + 104));
  }
}

void CalculateFaceLivelinessScoreRequest.temporalSmoothingFrameCount.setter(uint64_t a1)
{
  if (a1 >= 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
    os_unfair_lock_lock((v3 + 104));
    *(v3 + 64) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v4 = v1;
    v5 = sub_1A5BA132C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_state;
    swift_beginAccess();
    *(v4 + v7) = v6;

    os_unfair_lock_unlock((v3 + 104));
  }
}

void (*CalculateFaceLivelinessScoreRequest.temporalSmoothingFrameCount.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  *(v3 + 64) = v5;
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock((v5 + 104));
  *(v4 + 48) = v6;
  return sub_1A5BA96DC;
}

void sub_1A5BA96DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 >= 1)
  {
    v4 = v1[7];
    v3 = v1[8];
    os_unfair_lock_lock((v3 + 104));
    *(v3 + 64) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v5 = sub_1A5BA132C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_state;
    swift_beginAccess();
    *(v4 + v7) = v6;

    os_unfair_lock_unlock((v3 + 104));
  }

  free(v1);
}

uint64_t CalculateFaceLivelinessScoreRequest.frameAnalysisSpacing.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 72);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BA9824(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v5;
}

void sub_1A5BA988C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *(*a2 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v5 + 104));
  *(v5 + 72) = v3;
  *(v5 + 80) = a1[1];
  *(v5 + 88) = v4;

  os_unfair_lock_unlock((v5 + 104));
}

void CalculateFaceLivelinessScoreRequest.frameAnalysisSpacing.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = *(v3 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v8 + 104));
  *(v8 + 72) = a1;
  *(v8 + 80) = v5;
  *(v8 + 84) = v7;
  *(v8 + 88) = a3;

  os_unfair_lock_unlock((v8 + 104));
}

void (*CalculateFaceLivelinessScoreRequest.frameAnalysisSpacing.modify(void *a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 104));
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1A5BA6530;
}

uint64_t CalculateFaceLivelinessScoreRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5BAAB10(&qword_1EB1F0A38, type metadata accessor for CalculateFaceLivelinessScoreRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t (*sub_1A5BA9B5C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 96);

  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA6814;
}

uint64_t CalculateFaceLivelinessScoreRequest.deinit()
{
  v1 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CalculateFaceLivelinessScoreRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t CalculateFaceLivelinessScoreRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5BAAB10(&qword_1EB1F0A40, type metadata accessor for CalculateFaceLivelinessScoreRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5BA9DD8(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void sub_1A5BA9E30(__int128 *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

uint64_t (*sub_1A5BA9E88(uint64_t **a1))()
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
  v2[4] = CalculateFaceLivelinessScoreRequest.regionOfInterest.modify(v2);
  return sub_1A5B15448;
}

uint64_t sub_1A5BA9EFC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BA9F40()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 72);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BA9F98()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BAA030(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BAAB10(&qword_1EB1F0A38, type metadata accessor for CalculateFaceLivelinessScoreRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BAA0D4(uint64_t a1)
{
  v2 = sub_1A5BAAB10(&qword_1EB1EF798, type metadata accessor for CalculateFaceLivelinessScoreRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BAA140(uint64_t a1, uint64_t a2)
{
  sub_1A5BAAB10(&qword_1EB1EFDE8, type metadata accessor for CalculateFaceLivelinessScoreRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5BAA1BC(uint64_t a1, uint64_t a2)
{
  sub_1A5BAAB10(&qword_1EB1EFDE8, type metadata accessor for CalculateFaceLivelinessScoreRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5BAA23C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  if (v4)
  {

    v5 = 0;
    v6 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v11 = 3;
    DetectFaceRectanglesRequest.init(_:)(&v11, &v12);
    os_unfair_lock_lock((v3 + 104));
    v9 = *(v3 + 40);
    v10 = *(v3 + 24);
    os_unfair_lock_unlock((v3 + 104));
    v13 = v9;
    v12 = v10;
    v6 = sub_1A5B0F5B8();
    result = swift_allocObject();
    v8 = v13;
    *(result + 16) = v12;
    *(result + 32) = v8;
    *(result + 48) = v14;
    *(result + 64) = v15;
    v5 = &type metadata for DetectFaceRectanglesRequest;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t sub_1A5BAA338(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 39)
  {
    v7 = *(v6 + 1);
  }

  else
  {
    sub_1A5B16718(v6);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v13, "VisionResult ");
    HIWORD(v13[1]) = -4864;
    sub_1A5BAAB10(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v8 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v8);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v13[3] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A48);
    v9 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v9);

    v7 = v13[0];
    v10 = v13[1];
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(v7, v10, v11);

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1A5BAA52C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5BAA5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A5BAA338(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A5BAA628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  a2[1] = v3;
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5BAA69C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 96);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BAA6E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision35CalculateFaceLivelinessScoreRequest_configuration);
  os_unfair_lock_lock(v1 + 26);
  sub_1A5BA7DC0(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t (*sub_1A5BAA754(void *a1))()
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
  v2[4] = sub_1A5BA9B5C(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5BAA874@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v3 = swift_allocObject();
  result = CalculateFaceLivelinessScoreRequest.init(revision:)(&v5);
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for CalculateFaceLivelinessScoreRequest()
{
  result = qword_1EB2190D0;
  if (!qword_1EB2190D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A5BAA928()
{
  result = qword_1EB1F0A50;
  if (!qword_1EB1F0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0A50);
  }

  return result;
}

uint64_t sub_1A5BAAA04(uint64_t a1)
{
  result = sub_1A5BAAB10(&qword_1EB1EF798, type metadata accessor for CalculateFaceLivelinessScoreRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5BAAAA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5BAAB10(a4, type metadata accessor for CalculateFaceLivelinessScoreRequest);
  result = sub_1A5BAAB10(a6, type metadata accessor for CalculateFaceLivelinessScoreRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5BAAB10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5BAAB5C()
{
  result = qword_1EB1F0A68;
  if (!qword_1EB1F0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0A68);
  }

  return result;
}

unint64_t sub_1A5BAABB0(uint64_t a1)
{
  result = sub_1A5BAABD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BAABD8()
{
  result = qword_1EB1F0A70;
  if (!qword_1EB1F0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0A70);
  }

  return result;
}

uint64_t sub_1A5BAAC34()
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

unint64_t sub_1A5BAAD6C()
{
  result = qword_1EB2193E0[0];
  if (!qword_1EB2193E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2193E0);
  }

  return result;
}

unint64_t sub_1A5BAADC4()
{
  result = qword_1EB2194F0;
  if (!qword_1EB2194F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2194F0);
  }

  return result;
}

unint64_t sub_1A5BAAE1C()
{
  result = qword_1EB2194F8[0];
  if (!qword_1EB2194F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2194F8);
  }

  return result;
}

unint64_t sub_1A5BAAE74()
{
  result = qword_1EB219580;
  if (!qword_1EB219580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB219580);
  }

  return result;
}

unint64_t sub_1A5BAAECC()
{
  result = qword_1EB219588[0];
  if (!qword_1EB219588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB219588);
  }

  return result;
}

unint64_t sub_1A5BAAF24()
{
  result = qword_1EB219610;
  if (!qword_1EB219610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB219610);
  }

  return result;
}

unint64_t sub_1A5BAAF7C()
{
  result = qword_1EB219618[0];
  if (!qword_1EB219618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB219618);
  }

  return result;
}

uint64_t sub_1A5BAB004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A6055380 == a2)
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

uint64_t sub_1A5BAB098(uint64_t a1)
{
  v2 = sub_1A5BAB360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BAB0D4(uint64_t a1)
{
  v2 = sub_1A5BAB360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BAB110(uint64_t a1)
{
  v2 = sub_1A5BAB3B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BAB14C(uint64_t a1)
{
  v2 = sub_1A5BAB3B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectCameraGazeRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BAB360();
  sub_1A5FD4CDC();
  sub_1A5BAB3B4();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BAB360()
{
  result = qword_1EB2196A0;
  if (!qword_1EB2196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2196A0);
  }

  return result;
}

unint64_t sub_1A5BAB3B4()
{
  result = qword_1EB2196A8[0];
  if (!qword_1EB2196A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2196A8);
  }

  return result;
}

uint64_t DetectCameraGazeRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectCameraGazeRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A88);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A90);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BAB360();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BAB3B4();
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
      *v13 = &type metadata for DetectCameraGazeRequest.Revision;
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

uint64_t sub_1A5BAB780(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BAB360();
  sub_1A5FD4CDC();
  sub_1A5BAB3B4();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DetectCameraGazeRequest.__allocating_init(revision:)()
{
  v0 = swift_allocObject();
  DetectCameraGazeRequest.init(revision:)();
  return v0;
}

uint64_t DetectCameraGazeRequest.init(revision:)()
{
  v1 = sub_1A5FD3B5C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  sub_1A5FD366C();
  v10 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
  v11 = sub_1A5C4B100();
  swift_beginAccess();
  v42 = v11;
  v12 = sub_1A5BA132C(*v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  v43 = v0;
  *(v0 + v10) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  v41 = inited;
  *(inited + 32) = 0;
  v40 = inited + 32;
  result = MEMORY[0x1AC554330]();
  v52 = *(result + 16);
  if (v52)
  {
    v51 = v4;
    v16 = 0;
    v48 = v2 + 16;
    v47 = v2 + 88;
    v46 = *MEMORY[0x1E695FD08];
    v17 = v2 + 8;
    v45 = v2;
    v44 = (v2 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    v50 = v9;
    v49 = result;
    while (v16 < *(result + 16))
    {
      v19 = v45;
      v54 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v20 = *(v45 + 72);
      v21 = *(v45 + 16);
      v21(v9, result + v54 + v20 * v16, v1);
      v22 = v17;
      v23 = v53;
      v21(v53, v9, v1);
      LODWORD(v21) = (*(v19 + 88))(v23, v1);
      v24 = v9;
      v25 = *(v19 + 8);
      v26 = v23;
      v17 = v22;
      v25(v26, v1);
      if (v21 == v46)
      {
        v27 = *v44;
        (*v44)(v51, v24, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A5B53F20(0, *(v18 + 16) + 1, 1);
          v18 = v60;
        }

        v30 = *(v18 + 16);
        v29 = *(v18 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1A5B53F20(v29 > 1, v30 + 1, 1);
          v18 = v60;
        }

        *(v18 + 16) = v30 + 1;
        v27((v18 + v54 + v30 * v20), v51, v1);
        v17 = v22;
      }

      else
      {
        v25(v24, v1);
      }

      ++v16;
      v9 = v50;
      result = v49;
      if (v52 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v31 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_supportedComputeStageDevices;
    v32 = v41;
    *(v41 + 40) = v18;
    v33 = sub_1A5B54118(v32);
    swift_setDeallocating();
    sub_1A5B5420C(v40);
    v34 = v43;
    *(v43 + v31) = v33;
    v35 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration;
    *&v55[0] = 0;
    static NormalizedRect.fullImage.getter((v55 + 8));
    *(&v56 + 1) = 0;
    v36 = v42;
    swift_beginAccess();
    v57 = *v36;
    v58 = 0uLL;
    v59 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0A98);
    v37 = swift_allocObject();
    *(v37 + 104) = 0;
    v38 = v57;
    *(v37 + 48) = v56;
    *(v37 + 64) = v38;
    *(v37 + 80) = v58;
    *(v37 + 96) = v59;
    v39 = v55[1];
    *(v37 + 16) = v55[0];
    *(v37 + 32) = v39;
    *(v34 + v35) = v37;
    return v34;
  }

  return result;
}

uint64_t DetectCameraGazeRequest.inputFaceObservations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BABEE0(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BABF38(uint64_t a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v2 + 104));
  sub_1A5B54B00((v2 + 16));
  os_unfair_lock_unlock((v2 + 104));
}

uint64_t DetectCameraGazeRequest.inputFaceObservations.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  sub_1A5B54274((v1 + 16));
  os_unfair_lock_unlock((v1 + 104));
}

uint64_t (*DetectCameraGazeRequest.inputFaceObservations.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA5A5C;
}

void DetectCameraGazeRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 104));
}

__n128 sub_1A5BAC0CC@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v5 = *(v3 + 40);
  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 104));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5BAC128(__int128 *a1, void *a2)
{
  v3 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void DetectCameraGazeRequest.regionOfInterest.setter(__int128 *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void (*DetectCameraGazeRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 40);
  *v4 = *(v5 + 24);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 104));
  return sub_1A5BA5D00;
}

uint64_t DetectCameraGazeRequest.minimumLatencyFrameCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BAC2BC(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BAC30C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  *(v3 + 56) = v2;

  os_unfair_lock_unlock((v3 + 104));
}

void DetectCameraGazeRequest.minimumLatencyFrameCount.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  *(v3 + 56) = a1;

  os_unfair_lock_unlock((v3 + 104));
}

void (*DetectCameraGazeRequest.minimumLatencyFrameCount.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA5F0C;
}

uint64_t DetectCameraGazeRequest.temporalSmoothingFrameCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 64);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BAC454(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
}

void sub_1A5BAC4A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = *a2;
    v4 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
    os_unfair_lock_lock((v4 + 104));
    *(v4 + 64) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v5 = sub_1A5BA132C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_state;
    swift_beginAccess();
    *(v3 + v7) = v6;

    os_unfair_lock_unlock((v4 + 104));
  }
}

void DetectCameraGazeRequest.temporalSmoothingFrameCount.setter(uint64_t a1)
{
  if (a1 >= 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
    os_unfair_lock_lock((v3 + 104));
    *(v3 + 64) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v4 = v1;
    v5 = sub_1A5BA132C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_state;
    swift_beginAccess();
    *(v4 + v7) = v6;

    os_unfair_lock_unlock((v3 + 104));
  }
}

void (*DetectCameraGazeRequest.temporalSmoothingFrameCount.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  *(v3 + 64) = v5;
  os_unfair_lock_lock((v5 + 104));
  v6 = *(v5 + 64);
  os_unfair_lock_unlock((v5 + 104));
  *(v4 + 48) = v6;
  return sub_1A5BAC6E8;
}

void sub_1A5BAC6E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 >= 1)
  {
    v4 = v1[7];
    v3 = v1[8];
    os_unfair_lock_lock((v3 + 104));
    *(v3 + 64) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A0);
    v5 = sub_1A5BA132C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F09A8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = v5;
    v7 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_state;
    swift_beginAccess();
    *(v4 + v7) = v6;

    os_unfair_lock_unlock((v3 + 104));
  }

  free(v1);
}

uint64_t DetectCameraGazeRequest.frameAnalysisSpacing.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 72);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

void sub_1A5BAC830(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 104));
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v5;
}

void sub_1A5BAC898(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *(*a2 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v5 + 104));
  *(v5 + 72) = v3;
  *(v5 + 80) = a1[1];
  *(v5 + 88) = v4;

  os_unfair_lock_unlock((v5 + 104));
}

void DetectCameraGazeRequest.frameAnalysisSpacing.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = *(v3 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v8 + 104));
  *(v8 + 72) = a1;
  *(v8 + 80) = v5;
  *(v8 + 84) = v7;
  *(v8 + 88) = a3;

  os_unfair_lock_unlock((v8 + 104));
}

void (*DetectCameraGazeRequest.frameAnalysisSpacing.modify(void *a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 72);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  os_unfair_lock_unlock((v3 + 104));
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1A5BA6530;
}

uint64_t DetectCameraGazeRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5BADA90(&qword_1EB1F0AA0, type metadata accessor for DetectCameraGazeRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t (*sub_1A5BACB68(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 96);

  os_unfair_lock_unlock((v3 + 104));
  *a1 = v4;
  return sub_1A5BA6814;
}

uint64_t DetectCameraGazeRequest.deinit()
{
  v1 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DetectCameraGazeRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DetectCameraGazeRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5BADA90(&qword_1EB1F0AA8, type metadata accessor for DetectCameraGazeRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5BACDE4(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 104));
}

void sub_1A5BACE3C(__int128 *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 104));
}

uint64_t (*sub_1A5BACE94(uint64_t **a1))()
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
  v2[4] = DetectCameraGazeRequest.regionOfInterest.modify(v2);
  return sub_1A5B15448;
}

uint64_t sub_1A5BACF08()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BACF4C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 72);
  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BACFA4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BAD03C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BADA90(&qword_1EB1F0AA0, type metadata accessor for DetectCameraGazeRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BAD0D0(uint64_t a1)
{
  v2 = sub_1A5BADA90(&qword_1EB1EF7B0, type metadata accessor for DetectCameraGazeRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BAD13C(uint64_t a1, uint64_t a2)
{
  sub_1A5BADA90(&qword_1EB1EFDF0, type metadata accessor for DetectCameraGazeRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5BAD1B8(uint64_t a1, uint64_t a2)
{
  sub_1A5BADA90(&qword_1EB1EFDF0, type metadata accessor for DetectCameraGazeRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5BAD238(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 36)
  {
    v7 = *(v6 + 1);
  }

  else
  {
    sub_1A5B16718(v6);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v13, "VisionResult ");
    HIWORD(v13[1]) = -4864;
    sub_1A5BADA90(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v8 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v8);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v13[3] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AB0);
    v9 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v9);

    v7 = v13[0];
    v10 = v13[1];
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D2869C(v7, v10, v11);

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1A5BAD42C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5BAD4FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A5BAD238(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A5BAD528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = v2;
  a2[1] = v3;
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5BAD5A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v3 + 104));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 104));
  if (v4)
  {

    v5 = 0;
    v6 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v11 = 3;
    DetectFaceRectanglesRequest.init(_:)(&v11, &v12);
    os_unfair_lock_lock((v3 + 104));
    v9 = *(v3 + 40);
    v10 = *(v3 + 24);
    os_unfair_lock_unlock((v3 + 104));
    v13 = v9;
    v12 = v10;
    v6 = sub_1A5B0F5B8();
    result = swift_allocObject();
    v8 = v13;
    *(result + 16) = v12;
    *(result + 32) = v8;
    *(result + 48) = v14;
    *(result + 64) = v15;
    v5 = &type metadata for DetectFaceRectanglesRequest;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = result;
  return result;
}

uint64_t sub_1A5BAD6A0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock((v1 + 104));
  v2 = *(v1 + 96);

  os_unfair_lock_unlock((v1 + 104));
  return v2;
}

uint64_t sub_1A5BAD6EC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC6Vision23DetectCameraGazeRequest_configuration);
  os_unfair_lock_lock(v1 + 26);
  sub_1A5BA7DC0(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t (*sub_1A5BAD758(void *a1))()
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
  v2[4] = sub_1A5BACB68(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5BAD878@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = DetectCameraGazeRequest.init(revision:)();
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for DetectCameraGazeRequest()
{
  result = qword_1EB219E30;
  if (!qword_1EB219E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A5BAD900()
{
  result = qword_1EB1F0AB8;
  if (!qword_1EB1F0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0AB8);
  }

  return result;
}

uint64_t sub_1A5BADA24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5BADA90(a4, type metadata accessor for DetectCameraGazeRequest);
  result = sub_1A5BADA90(a6, type metadata accessor for DetectCameraGazeRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5BADA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BADAD8(uint64_t a1)
{
  result = sub_1A5BADA90(&qword_1EB1EF7B0, type metadata accessor for DetectCameraGazeRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BADB30(uint64_t a1)
{
  result = sub_1A5BADB58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BADB58()
{
  result = qword_1EB1F0AD0;
  if (!qword_1EB1F0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0AD0);
  }

  return result;
}

unint64_t sub_1A5BADBB0()
{
  result = qword_1EB1F0AD8;
  if (!qword_1EB1F0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0AD8);
  }

  return result;
}

unint64_t sub_1A5BADC7C()
{
  result = qword_1EB21A040[0];
  if (!qword_1EB21A040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21A040);
  }

  return result;
}

unint64_t sub_1A5BADCD4()
{
  result = qword_1EB21A150;
  if (!qword_1EB21A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21A150);
  }

  return result;
}

unint64_t sub_1A5BADD2C()
{
  result = qword_1EB21A158[0];
  if (!qword_1EB21A158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21A158);
  }

  return result;
}

unint64_t sub_1A5BADD84()
{
  result = qword_1EB21A1E0;
  if (!qword_1EB21A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21A1E0);
  }

  return result;
}

unint64_t sub_1A5BADDDC()
{
  result = qword_1EB21A1E8[0];
  if (!qword_1EB21A1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21A1E8);
  }

  return result;
}

uint64_t sub_1A5BADE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A60553A0 == a2)
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

uint64_t sub_1A5BADEF8(uint64_t a1)
{
  v2 = sub_1A5BAE1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BADF34(uint64_t a1)
{
  v2 = sub_1A5BAE1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BADF70(uint64_t a1)
{
  v2 = sub_1A5BAE214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BADFAC(uint64_t a1)
{
  v2 = sub_1A5BAE214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateTorsoPrintRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BAE1C0();
  sub_1A5FD4CDC();
  sub_1A5BAE214();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BAE1C0()
{
  result = qword_1EB21A270;
  if (!qword_1EB21A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21A270);
  }

  return result;
}

unint64_t sub_1A5BAE214()
{
  result = qword_1EB21A278[0];
  if (!qword_1EB21A278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21A278);
  }

  return result;
}

uint64_t GenerateTorsoPrintRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateTorsoPrintRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AF0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AF8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BAE1C0();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BAE214();
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
      *v13 = &type metadata for GenerateTorsoPrintRequest.Revision;
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

uint64_t sub_1A5BAE5E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0AE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BAE1C0();
  sub_1A5FD4CDC();
  sub_1A5BAE214();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t GenerateTorsoPrintRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5FD3B5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v33 - v9;
  v49 = 0;
  static NormalizedRect.fullImage.getter(v50);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  v13 = inited + 32;
  result = MEMORY[0x1AC554330]();
  v45 = *(result + 16);
  if (v45)
  {
    v34 = inited + 32;
    v35 = inited;
    v36 = a1;
    v44 = v5;
    v15 = 0;
    v42 = v3 + 16;
    v41 = v3 + 88;
    v40 = *MEMORY[0x1E695FD08];
    v16 = v3 + 8;
    v39 = v3;
    v38 = (v3 + 32);
    v17 = v37;
    v43 = result;
    while (v15 < *(result + 16))
    {
      v18 = v10;
      v19 = v39;
      v47 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v20 = *(v39 + 72);
      v21 = *(v39 + 16);
      v21(v17, result + v47 + v20 * v15, v2);
      v22 = v16;
      v23 = v46;
      v21(v46, v17, v2);
      v24 = v17;
      v25 = (*(v19 + 88))(v23, v2);
      v26 = *(v19 + 8);
      v27 = v23;
      v16 = v22;
      v26(v27, v2);
      if (v25 == v40)
      {
        v28 = *v38;
        (*v38)(v44, v24, v2);
        v10 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A5B53F20(0, *(v18 + 16) + 1, 1);
          v10 = v48;
        }

        v31 = *(v10 + 16);
        v30 = *(v10 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1A5B53F20(v30 > 1, v31 + 1, 1);
          v10 = v48;
        }

        *(v10 + 16) = v31 + 1;
        v28((v10 + v47 + v31 * v20), v44, v2);
        v17 = v37;
        v16 = v22;
      }

      else
      {
        v26(v24, v2);
        v17 = v24;
        v10 = v18;
      }

      ++v15;
      result = v43;
      if (v45 == v15)
      {
        v11 = v51;
        a1 = v36;
        inited = v35;
        v13 = v34;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *(inited + 40) = v10;
    v32 = sub_1A5B54118(inited);
    swift_setDeallocating();
    result = sub_1A5B5420C(v13);
    *a1 = v49;
    *(a1 + 8) = v50[0];
    *(a1 + 24) = v50[1];
    *(a1 + 40) = v11;
    *(a1 + 48) = v32;
  }

  return result;
}

uint64_t GenerateTorsoPrintRequest.inputHumanObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 GenerateTorsoPrintRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateTorsoPrintRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t GenerateTorsoPrintRequest.computeStageDeviceAssignments.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t GenerateTorsoPrintRequest.supportedComputeStageDevices.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t GenerateTorsoPrintRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BAF998();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateTorsoPrintRequest, v3);
}

void sub_1A5BAED48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5FD3B5C();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = 0;
    v10 = *(a1 + 64);
    v33 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v10;
    v14 = (v11 + 63) >> 6;
    v39 = (v43 + 8);
    v40 = v43 + 16;
    v34 = v14;
    v35 = a1;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v16 = (v13 - 1) & v13;
LABEL_14:
      v19 = v15 | (v9 << 6);
      v20 = *(*(a1 + 48) + v19);
      v21 = *(*(a1 + 56) + 8 * v19);

      if (!v21)
      {
        return;
      }

      v36 = v16;
      v22 = sub_1A5B0E238(v20);
      if ((v23 & 1) == 0 || (v42 = *(*(a2 + 56) + 8 * v22), v24 = *(v42 + 16), v24 != *(v21 + 16)))
      {
LABEL_27:

        return;
      }

      if (v24 && v42 != v21)
      {
        v32 = a2;
        v25 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v37 = v21 + v25;
        v38 = v42 + v25;

        v26 = 0;
        while (v26 < *(v42 + 16))
        {
          v27 = *(v43 + 72) * v26;
          v28 = *(v43 + 16);
          v28(v8, v38 + v27, v4);
          if (v26 >= *(v21 + 16))
          {
            goto LABEL_31;
          }

          v29 = v41;
          v28(v41, v37 + v27, v4);
          sub_1A5BAFEFC(&unk_1EB1F3020, MEMORY[0x1E695FD20]);
          v30 = sub_1A5FD3D0C();
          v31 = *v39;
          (*v39)(v29, v4);
          v31(v8, v4);
          if ((v30 & 1) == 0)
          {

            goto LABEL_27;
          }

          if (v24 == ++v26)
          {

            a2 = v32;
            goto LABEL_6;
          }
        }

        goto LABEL_30;
      }

LABEL_6:

      v14 = v34;
      a1 = v35;
      v13 = v36;
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        return;
      }

      v18 = *(v33 + 8 * v9);
      ++v17;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v16 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

uint64_t GenerateTorsoPrintRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for HumanObservation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v15 = *(v1 + 3);
  v16 = v8;
  v10 = v1[5];
  v9 = v1[6];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v11 = *(v7 + 16);
    if (v11)
    {
      v12 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v13 = *(v4 + 72);
      do
      {
        sub_1A5B0A4A8(v12, v6);
        sub_1A5BAFEFC(&qword_1EB1EE760, type metadata accessor for HumanObservation);
        sub_1A5FD3CBC();
        sub_1A5B0A50C(v6);
        v12 += v13;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  v17 = v16;
  v18 = v15;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(a1, v10);
  return sub_1A5BAF5F8(a1, v9);
}

uint64_t GenerateTorsoPrintRequest.hashValue.getter()
{
  v4 = *v0;
  v1 = *(v0 + 3);
  v5 = *(v0 + 1);
  v6 = v1;
  v7 = *(v0 + 5);
  sub_1A5FD4C1C();
  GenerateTorsoPrintRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BAF2F0(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A5BAF31C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BAF998();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BAF37C(uint64_t a1)
{
  v2 = sub_1A5B5E6F4();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BAF3B8()
{
  v4 = *v0;
  v1 = *(v0 + 3);
  v5 = *(v0 + 1);
  v6 = v1;
  v7 = *(v0 + 5);
  sub_1A5FD4C1C();
  GenerateTorsoPrintRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BAF41C()
{
  v4 = *v0;
  v1 = *(v0 + 3);
  v5 = *(v0 + 1);
  v6 = v1;
  v7 = *(v0 + 5);
  sub_1A5FD4C1C();
  GenerateTorsoPrintRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BAF47C@<X0>(uint64_t *a1@<X8>)
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
    v10 = 1;
    DetectHumanRectanglesRequest.init(_:)(&v10, v11);
    v6 = v11[0];
    v7 = v11[40];
    v8 = v12;
    v4 = sub_1A5BAF9EC();
    result = swift_allocObject();
    *(result + 16) = v6;
    v9 = *(v1 + 8);
    *(result + 40) = *(v1 + 24);
    *(result + 24) = v9;
    *(result + 56) = v7;
    *(result + 64) = v8;
    v3 = &type metadata for DetectHumanRectanglesRequest;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A5BAF548(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E6F4();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5BAF598@<D0>(uint64_t a1@<X8>)
{
  GenerateTorsoPrintRequest.init(revision:)(v5);
  v2 = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
  result = v7[0];
  *(a1 + 40) = *v7;
  return result;
}

uint64_t sub_1A5BAF5F8(__int128 *a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_1A5FD3B5C();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v27 = v4;
  v28 = v4 + 16;
  v12 = (v4 + 8);
  v32 = a2;

  v14 = 0;
  v15 = 0;
  v29 = v11;
  v30 = a2 + 64;
  while (v10)
  {
LABEL_10:
    v17 = *(*(v32 + 48) + (__clz(__rbit64(v10)) | (v15 << 6)));

    if (!v18)
    {
LABEL_15:

      return MEMORY[0x1AC555420](v14);
    }

    v33 = v10;
    v34 = v14;
    v41 = v17;
    v19 = v31[3];
    v38 = v31[2];
    v39 = v19;
    v40 = *(v31 + 8);
    v20 = v31[1];
    v36 = *v31;
    v37 = v20;
    v21 = v18;
    sub_1A5B102A4();
    sub_1A5FD3CBC();
    MEMORY[0x1AC555420](*(v21 + 16));
    v35 = v21;
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v35 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v24 = *(v27 + 72);
      v25 = *(v27 + 16);
      do
      {
        v25(v6, v23, v3);
        sub_1A5BAFEFC(&unk_1EB1F1680, MEMORY[0x1E695FD20]);
        sub_1A5FD3CBC();
        (*v12)(v6, v3);
        v23 += v24;
        --v22;
      }

      while (v22);
    }

    v10 = (v33 - 1) & v33;

    result = sub_1A5FD4C6C();
    v14 = result ^ v34;
    v11 = v29;
    v7 = v30;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_15;
    }

    v10 = *(v7 + 8 * v16);
    ++v15;
    if (v10)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void _s6Vision25GenerateTorsoPrintRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1)
  {
    if (!v7)
    {
      return;
    }

    v15 = *(a1 + 24);
    v16 = *(a1 + 8);
    v13 = *(a2 + 24);
    v14 = *(a2 + 8);

    v12 = sub_1A5B674A8(v2, v7);

    v9 = v13;
    v8 = v14;
    v4 = v15;
    v3 = v16;
    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

  v18.origin = v3;
  v18.size = v4;
  v17.origin = v8;
  v17.size = v9;
  if (static NormalizedRect.== infix(_:_:)(&v18, &v17) && (sub_1A5B0D3C4(v6, v11) & 1) != 0)
  {

    sub_1A5BAED48(v5, v10);
  }
}

unint64_t sub_1A5BAF998()
{
  result = qword_1EB1F0B00;
  if (!qword_1EB1F0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B00);
  }

  return result;
}

unint64_t sub_1A5BAF9EC()
{
  result = qword_1EB1F0B08;
  if (!qword_1EB1F0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B08);
  }

  return result;
}

unint64_t sub_1A5BAFA40()
{
  result = qword_1EB1F0B10;
  if (!qword_1EB1F0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B10);
  }

  return result;
}

unint64_t sub_1A5BAFA98(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6697C();
  result = sub_1A5BAFAC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BAFAC8()
{
  result = qword_1EB1F0B18;
  if (!qword_1EB1F0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B18);
  }

  return result;
}

unint64_t sub_1A5BAFB20()
{
  result = qword_1EB1F0B20;
  if (!qword_1EB1F0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B20);
  }

  return result;
}

unint64_t sub_1A5BAFB74(uint64_t a1)
{
  result = sub_1A5B5E6F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BAFBA0()
{
  result = qword_1EB1F0B28;
  if (!qword_1EB1F0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B28);
  }

  return result;
}

unint64_t sub_1A5BAFBF4(uint64_t a1)
{
  result = sub_1A5BAFC1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BAFC1C()
{
  result = qword_1EB1F0B30;
  if (!qword_1EB1F0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B30);
  }

  return result;
}

uint64_t sub_1A5BAFC70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A5BAFCB8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1A5BAFD48()
{
  result = qword_1EB21AB00[0];
  if (!qword_1EB21AB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21AB00);
  }

  return result;
}

unint64_t sub_1A5BAFDA0()
{
  result = qword_1EB21AC10;
  if (!qword_1EB21AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21AC10);
  }

  return result;
}

unint64_t sub_1A5BAFDF8()
{
  result = qword_1EB21AC18[0];
  if (!qword_1EB21AC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21AC18);
  }

  return result;
}

unint64_t sub_1A5BAFE50()
{
  result = qword_1EB21ACA0;
  if (!qword_1EB21ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21ACA0);
  }

  return result;
}

unint64_t sub_1A5BAFEA8()
{
  result = qword_1EB21ACA8[0];
  if (!qword_1EB21ACA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21ACA8);
  }

  return result;
}

uint64_t sub_1A5BAFEFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BAFF5C(uint64_t a1)
{
  v2 = sub_1A5BB0310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BAFF98(uint64_t a1)
{
  v2 = sub_1A5BB0310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BAFFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x3576444F4E41 && a2 == 0xE600000000000000)
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

uint64_t sub_1A5BB006C(uint64_t a1)
{
  v2 = sub_1A5BB02BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BB00A8(uint64_t a1)
{
  v2 = sub_1A5BB02BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizeFoodAndDrinkRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0B38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0B40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BB02BC();
  sub_1A5FD4CDC();
  sub_1A5BB0310();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BB02BC()
{
  result = qword_1EB21AD30;
  if (!qword_1EB21AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21AD30);
  }

  return result;
}

unint64_t sub_1A5BB0310()
{
  result = qword_1EB21AD38[0];
  if (!qword_1EB21AD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21AD38);
  }

  return result;
}

uint64_t RecognizeFoodAndDrinkRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t RecognizeFoodAndDrinkRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0B48);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0B50);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BB02BC();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BB0310();
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
      *v13 = &type metadata for RecognizeFoodAndDrinkRequest.Revision;
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

uint64_t sub_1A5BB06DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0B38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0B40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BB02BC();
  sub_1A5FD4CDC();
  sub_1A5BB0310();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t RecognizeFoodAndDrinkRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(a1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[2].n128_u64[0] = result;
  return result;
}

uint64_t RecognizeFoodAndDrinkRequest.supportedIdentifiers.getter()
{
  v0 = sub_1A5BB0E58();
  sub_1A5BD9578(0, &type metadata for RecognizeFoodAndDrinkRequest, v0);

  sub_1A5B16F58(0, &qword_1EB1F0B60);
  if (!swift_dynamicCastMetatype())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [swift_getObjCClassFromMetadata() knownFoodAndDrinkIdentifiers];
  v3 = sub_1A5FD3F4C();

  return v3;
}

__n128 RecognizeFoodAndDrinkRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 RecognizeFoodAndDrinkRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t RecognizeFoodAndDrinkRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BB0EAC();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizeFoodAndDrinkRequest, v3);
}

uint64_t static RecognizeFoodAndDrinkRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t RecognizeFoodAndDrinkRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t RecognizeFoodAndDrinkRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BB0BBC(uint64_t a1)
{
  v2 = sub_1A5BB0E58();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BB0BF8(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BB0EAC();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BB0C58(uint64_t a1)
{
  v2 = sub_1A5B5E16C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BB0CBC(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E16C();

  return sub_1A5D4E6C8(a1, a2);
}

id sub_1A5BB0D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = sub_1A5BB0F00();
    return sub_1A5D23E14(a1, a2, a3, v7);
  }

  return result;
}

unint64_t sub_1A5BB0E58()
{
  result = qword_1EB1F0B58;
  if (!qword_1EB1F0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B58);
  }

  return result;
}

unint64_t sub_1A5BB0EAC()
{
  result = qword_1EB1F0B68;
  if (!qword_1EB1F0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B68);
  }

  return result;
}

unint64_t sub_1A5BB0F00()
{
  result = qword_1EB1F0B78;
  if (!qword_1EB1F0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B78);
  }

  return result;
}

unint64_t sub_1A5BB0F54()
{
  result = qword_1EB1F0B80;
  if (!qword_1EB1F0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B80);
  }

  return result;
}

unint64_t sub_1A5BB0FAC(uint64_t a1)
{
  result = sub_1A5B5E16C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BB1000()
{
  result = qword_1EB1F0B88;
  if (!qword_1EB1F0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B88);
  }

  return result;
}

unint64_t sub_1A5BB1058()
{
  result = qword_1EB1F0B90;
  if (!qword_1EB1F0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B90);
  }

  return result;
}

unint64_t sub_1A5BB10B0()
{
  result = qword_1EB1F0B98;
  if (!qword_1EB1F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0B98);
  }

  return result;
}

uint64_t sub_1A5BB1130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BB116C()
{
  result = qword_1EB1F0BA0;
  if (!qword_1EB1F0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0BA0);
  }

  return result;
}

unint64_t sub_1A5BB1208(uint64_t a1)
{
  result = sub_1A5BB0EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BB1230(uint64_t a1)
{
  result = sub_1A5BB1258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BB1258()
{
  result = qword_1EB1F0BB0;
  if (!qword_1EB1F0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0BB0);
  }

  return result;
}

unint64_t sub_1A5BB12F0()
{
  result = qword_1EB21B640[0];
  if (!qword_1EB21B640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21B640);
  }

  return result;
}

unint64_t sub_1A5BB1348()
{
  result = qword_1EB21B750;
  if (!qword_1EB21B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21B750);
  }

  return result;
}

unint64_t sub_1A5BB13A0()
{
  result = qword_1EB21B758[0];
  if (!qword_1EB21B758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21B758);
  }

  return result;
}

unint64_t sub_1A5BB13F8()
{
  result = qword_1EB21B7E0;
  if (!qword_1EB21B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21B7E0);
  }

  return result;
}

unint64_t sub_1A5BB1450()
{
  result = qword_1EB21B7E8[0];
  if (!qword_1EB21B7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21B7E8);
  }

  return result;
}

uint64_t sub_1A5BB14A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DistanceMeasure.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

void sub_1A5BB157C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v8 = *a2;
  sub_1A5BB15FC(a1, a3, a4);
  if (!v4)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        sub_1A5BB1C18(a1, a3, a4);
      }

      else
      {
        sub_1A5BB21C4(a1, a3, a4);
      }
    }

    else
    {
      sub_1A5BB1A78(a1, a3, a4);
    }
  }
}

uint64_t sub_1A5BB15FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[1];
  v6 = *(v5 + 8);
  v6((&v49 + 5), a2, v5);
  v7 = *(&v49 + 5);
  v6((&v49 + 3), a2, v5);
  if (v7 <= 0xFFF7)
  {
    if (*(&v49 + 3) > 0xFFF7u)
    {
      goto LABEL_11;
    }

    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(&v49 + 3) <= 0xFFF7u)
  {
LABEL_11:
    sub_1A5B16774();
    swift_allocError();
    v18 = v17;
    v19 = 0xD00000000000002FLL;
    v20 = 0x80000001A60553C0;
LABEL_12:
    sub_1A5D286BC(v19, v20, v18);
    return swift_willThrow();
  }

  v8 = a3[4];
  v8((&v49 + 2), a2, a3);
  BYTE1(v49) = BYTE2(v49);
  v8(&v49, a2, a3);
  sub_1A5BB23D8();
  if ((sub_1A5FD3D0C() & 1) == 0)
  {
    goto LABEL_34;
  }

  v9 = a3[3];
  v10 = v9(a2, a3);
  if (v10 != v9(a2, a3))
  {
    goto LABEL_34;
  }

  v11 = a3[2];
  v12 = v11(a2, a3);
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v13);
      sub_1A5B066DC(v12, v13);
      v16 = v15;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v14 != 2)
  {
    sub_1A5B066DC(v12, v13);
    v16 = 0;
    goto LABEL_20;
  }

  v22 = *(v12 + 16);
  v21 = *(v12 + 24);
  v12 = sub_1A5B066DC(v12, v13);
  v16 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_17:
    v23 = HIDWORD(v12);
    v24 = v12;
    result = sub_1A5B066DC(v12, v13);
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
      goto LABEL_53;
    }

    v16 = v23 - v24;
  }

LABEL_20:
  v26 = v11(a2, a3);
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
      sub_1A5B066DC(v26, v27);
      if (!v16)
      {
        goto LABEL_27;
      }

LABEL_34:
      sub_1A5B16774();
      swift_allocError();
      sub_1A5D286AC(0xD00000000000004BLL, 0x80000001A60553F0, v39);
      return swift_willThrow();
    }

    v31 = *(v26 + 16);
    v30 = *(v26 + 24);
    result = sub_1A5B066DC(v26, v27);
    if (!__OFSUB__(v30, v31))
    {
      if (v16 == v30 - v31)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v28)
  {
    v37 = HIDWORD(v26);
    v38 = v26;
    result = sub_1A5B066DC(v26, v27);
    if (!__OFSUB__(v37, v38))
    {
      if (v16 != v37 - v38)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

LABEL_54:
    __break(1u);
    return result;
  }

  v29 = BYTE6(v27);
  sub_1A5B066DC(v26, v27);
  if (v16 != v29)
  {
    goto LABEL_34;
  }

LABEL_27:
  v32 = v11(a2, a3);
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_48;
    }

    v41 = *(v32 + 16);
    v40 = *(v32 + 24);
    sub_1A5B066DC(v32, v33);
  }

  else
  {
    if (!v34)
    {
      v35 = v33;
      sub_1A5B066DC(v32, v33);
      v36 = (v35 & 0xFF000000000000) == 0;
      goto LABEL_41;
    }

    v42 = v32;
    sub_1A5B066DC(v32, v33);
    v41 = v42;
    v40 = v42 >> 32;
  }

  v36 = v41 == v40;
LABEL_41:
  if (v36)
  {
    goto LABEL_51;
  }

  v32 = v11(a2, a3);
  v43 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v43 == 2)
    {
      v46 = *(v32 + 16);
      v45 = *(v32 + 24);
      result = sub_1A5B066DC(v32, v33);
      goto LABEL_50;
    }

LABEL_48:
    sub_1A5B066DC(v32, v33);
    goto LABEL_51;
  }

  if (v43)
  {
    v47 = v32;
    result = sub_1A5B066DC(v32, v33);
    v46 = v47;
    v45 = v47 >> 32;
LABEL_50:
    if (v46 != v45)
    {
      return result;
    }

LABEL_51:
    sub_1A5B16774();
    swift_allocError();
    v18 = v48;
    v20 = 0x80000001A6055440;
    v19 = 0xD00000000000002CLL;
    goto LABEL_12;
  }

  v44 = v33;
  result = sub_1A5B066DC(v32, v33);
  if ((v44 & 0xFF000000000000) == 0)
  {
    goto LABEL_51;
  }

  return result;
}

double sub_1A5BB1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(&v23, a2, a3);
  v6 = v23;
  v7 = *(a3 + 16);
  v8 = v7(a2, a3);
  v22 = v9;
  v10 = v7(a2, a3);
  v12 = v11;
  v13 = (*(a3 + 24))(a2, a3);
  v14 = v8;
  v15 = v8;
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1A5B39CD4(v8, v22, v10, v12, v13);
      v3 = v16;
      sub_1A5B066DC(v10, v12);
      sub_1A5B066DC(v8, v22);
      return v3;
    }

    v17 = v21;
    v18 = v22;
    v19 = sub_1A5B39AB4(v15, v22, v10, v12, v13);
  }

  else
  {
    v17 = v21;
    v18 = v22;
    sub_1A5B39A3C(v15, v22, v10, v12, v13);
  }

  *&v3 = v19;
  sub_1A5B066DC(v10, v12);
  sub_1A5B066DC(v14, v18);
  if (!v17)
  {
    return *&v3;
  }

  return v3;
}

void sub_1A5BB1C18(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[4];
  v6(&v64, a2, a3);
  if (v64)
  {
    if (v64 == 1)
    {
      v34 = a3[2];
      v35 = v34(a2, a3);
      v37 = v36;
      v38 = v34(a2, a3);
      v40 = v39;
      v60 = a3[3];
      v41 = v60(a2, a3);
      sub_1A5B39E50(v35, v37, v38, v40, v41);
      if (v3)
      {
        sub_1A5B066DC(v38, v40);
        sub_1A5B066DC(v35, v37);
        return;
      }

      v32 = v42;
      sub_1A5B066DC(v38, v40);
      sub_1A5B066DC(v35, v37);
      v57 = v34(a2, a3);
      v44 = v43;
      v45 = v34(a2, a3);
      v47 = v46;
      v48 = v60(a2, a3);
      sub_1A5B39E50(v57, v44, v45, v47, v48);
      v33 = v49;
      sub_1A5B066DC(v45, v47);
      sub_1A5B066DC(v57, v44);
      v58 = v34(a2, a3);
      v51 = v50;
      v52 = v34(a2, a3);
      v54 = v53;
      v55 = v60(a2, a3);
      sub_1A5B39E50(v58, v51, v52, v54, v55);
      sub_1A5B066DC(v52, v54);
      sub_1A5B066DC(v58, v51);
      goto LABEL_9;
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    sub_1A5FD46AC();
    v6(&v61, a2, a3);
    sub_1A5FD481C();
    MEMORY[0x1AC554600](0x70757320746F6E20, 0xEE00646574726F70);
    sub_1A5FD483C();
    __break(1u);
  }

  else
  {
    v7 = a3[2];
    v8 = v7(a2, a3);
    v10 = v9;
    v11 = v7(a2, a3);
    v13 = v12;
    v59 = a3[3];
    v14 = v59(a2, a3);
    sub_1A5B39D34(v8, v10, v11, v13, v14);
    v16 = v15;
    sub_1A5B066DC(v11, v13);
    sub_1A5B066DC(v8, v10);
    if (!v3)
    {
      v56 = v7(a2, a3);
      v18 = v17;
      v19 = v7(a2, a3);
      v21 = v20;
      v22 = v59(a2, a3);
      sub_1A5B39D34(v56, v18, v19, v21, v22);
      v24 = v23;
      sub_1A5B066DC(v19, v21);
      sub_1A5B066DC(v56, v18);
      v25 = v7(a2, a3);
      v27 = v26;
      v28 = v7(a2, a3);
      v30 = v29;
      v31 = v59(a2, a3);
      sub_1A5B39D34(v25, v27, v28, v30, v31);
      sub_1A5B066DC(v28, v30);
      v32 = v16;
      v33 = v24;
      sub_1A5B066DC(v25, v27);
LABEL_9:
      sqrt(v32);
      sqrt(v33);
    }
  }
}

uint64_t sub_1A5BB21C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v5((&v19 + 1), a2, a3);
  if (BYTE1(v19) == 2)
  {
    v6 = *(a3 + 16);
    v7 = v6(a2, a3);
    v9 = v8;
    v10 = v6(a2, a3);
    v12 = v11;
    v13 = sub_1A5B3A074();
    v14 = sub_1A5B3A07C();
    sub_1A5B3A084();
    v15 = sub_1A5B3A08C();
    v16 = sub_1A5B3A09C();
    v17 = sub_1A5B3A0A8();
    sub_1A5B3A0B8(v7, v9, v10, v12, v13, v14, v15, v16, v17);
    sub_1A5B066DC(v10, v12);
    return sub_1A5B066DC(v7, v9);
  }

  else
  {
    sub_1A5FD46AC();
    v5(&v19, a2, a3);
    sub_1A5FD481C();
    MEMORY[0x1AC554600](0x70757320746F6E20, 0xEE00646574726F70);
    result = sub_1A5FD483C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A5BB23D8()
{
  result = qword_1EB1F0BB8;
  if (!qword_1EB1F0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0BB8);
  }

  return result;
}

unint64_t sub_1A5BB2430()
{
  result = qword_1EB1F0BC0;
  if (!qword_1EB1F0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0BC0);
  }

  return result;
}

uint64_t static VideoProcessor.Cadence.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[3])
  {
    if (v3 == v4)
    {
      return *(a2 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (a2[3])
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE6C5F0](v3, a1[1], a1[2], v4, a2[1], a2[2]);
  }
}

uint64_t VideoProcessor.Cadence.hash(into:)()
{
  v1 = *v0;
  if (v0[3])
  {
    MEMORY[0x1AC555420](1);
    return MEMORY[0x1AC555420](v1);
  }

  else
  {
    MEMORY[0x1AC555420](0);

    return sub_1A5FD443C();
  }
}

uint64_t VideoProcessor.Cadence.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_1A5FD4C1C();
  if (v2)
  {
    MEMORY[0x1AC555420](1);
    MEMORY[0x1AC555420](v1);
  }

  else
  {
    MEMORY[0x1AC555420](0);
    sub_1A5FD443C();
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BB25F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[3])
  {
    if (v3 == v4)
    {
      return *(a2 + 24);
    }

    else
    {
      return 0;
    }
  }

  else if (a2[3])
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE6C5F0](v3, a1[1], a1[2], v4, a2[1], a2[2]);
  }
}

uint64_t sub_1A5BB262C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_1A5FD4C1C();
  if (v2)
  {
    MEMORY[0x1AC555420](1);
    MEMORY[0x1AC555420](v1);
  }

  else
  {
    MEMORY[0x1AC555420](0);
    sub_1A5FD443C();
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BB26B8()
{
  v1 = *v0;
  if (v0[3])
  {
    MEMORY[0x1AC555420](1);
    return MEMORY[0x1AC555420](v1);
  }

  else
  {
    MEMORY[0x1AC555420](0);

    return sub_1A5FD443C();
  }
}

uint64_t sub_1A5BB274C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_1A5FD4C1C();
  if (v2)
  {
    MEMORY[0x1AC555420](1);
    MEMORY[0x1AC555420](v1);
  }

  else
  {
    MEMORY[0x1AC555420](0);
    sub_1A5FD443C();
  }

  return sub_1A5FD4C6C();
}

uint64_t VideoProcessor.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC6Vision14VideoProcessor_url;
  v4 = sub_1A5FD353C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2 + v3, a1, v4);
  type metadata accessor for VideoProcessor.State();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  (*(v5 + 8))(a1, v4);
  *(v6 + 120) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC6Vision14VideoProcessor_state) = v6;
  return v2;
}

uint64_t VideoProcessor.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Vision14VideoProcessor_url;
  v4 = sub_1A5FD353C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1 + v3, a1, v4);
  type metadata accessor for VideoProcessor.State();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  (*(v5 + 8))(a1, v4);
  *(v6 + 120) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC6Vision14VideoProcessor_state) = v6;
  return v1;
}

uint64_t sub_1A5BB29B8()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t VideoProcessor.addRequest<A>(_:cadence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 48) = a1;
  *(v6 + 88) = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD417C();
  *(v6 + 96) = swift_task_alloc();
  v8 = sub_1A5FD41BC();
  *(v6 + 104) = v8;
  *(v6 + 112) = *(v8 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = sub_1A5FD41AC();
  v9 = sub_1A5FD456C();
  *(v6 + 136) = v9;
  *(v6 + 144) = *(v9 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = *a3;
  *(v6 + 184) = *(a3 + 16);
  *(v6 + 41) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1A5BB2C28, 0, 0);
}

uint64_t sub_1A5BB2C28()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(v0 + 136);
  v6 = *(v4 - 8);
  v7 = v6;
  *(v0 + 192) = v6;
  v18 = *(v0 + 64);
  (*(v6 + 56))(v2, 1, 1, v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v18;
  *(v8 + 32) = v2;
  sub_1A5BB31A4(v5);
  sub_1A5FD41CC();

  v9 = *(v19 + OBJC_IVAR____TtC6Vision14VideoProcessor_state);
  (*(v3 + 16))(v1, v2, v20);
  result = (*(v7 + 48))(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 41);
    v12 = *(v0 + 184);
    *(v0 + 16) = *(v0 + 168);
    *(v0 + 32) = v12;
    *(v0 + 40) = v11;
    v21 = (*(*v9 + 160) + **(*v9 + 160));
    v13 = swift_task_alloc();
    *(v0 + 200) = v13;
    *v13 = v0;
    v13[1] = sub_1A5BB2EB8;
    v14 = *(v0 + 152);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = *(v0 + 56);

    return v21(v17, v14, v0 + 16, v15, v16);
  }

  return result;
}

uint64_t sub_1A5BB2EB8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1A5BB30B4;
  }

  else
  {
    (*(v2[24] + 8))(v2[19], v2[16]);
    v3 = sub_1A5BB2FE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A5BB2FE8()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  (*(v0[14] + 32))(v0[6], v0[15], v0[13]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A5BB30B4()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v1 + 8))(v2, v6);
  (*(v5 + 8))(v3, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A5BB31A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v3 = sub_1A5FD417C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t VideoProcessor.removeRequest(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5BB3268, 0, 0);
}

uint64_t sub_1A5BB3268()
{
  v4 = (*(**(v0[3] + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 168) + **(**(v0[3] + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 168));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A5BB3394;
  v2 = v0[2];

  return v4(v2, 0);
}

uint64_t sub_1A5BB3394(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A5BB34B0()
{
  v3 = (*(**(*(v0 + 16) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 192) + **(**(*(v0 + 16) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 192));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A5BB35D0;

  return v3();
}

uint64_t sub_1A5BB35D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall VideoProcessor.startAnalysis(of:)(__C::CMTimeRange_optional *of)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1A5FD40AC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v1;
  v8 = *&of->value.start.epoch;
  *(v7 + 40) = *&of->value.start.value;
  *(v7 + 56) = v8;
  *(v7 + 72) = *&of->value.duration.timescale;
  *(v7 + 88) = of->is_nil;

  sub_1A5BB62AC(0, 0, v5, &unk_1A6001C40, v7);
}

uint64_t sub_1A5BB37EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *(v5 + 232) = *a5;
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  *(v5 + 248) = v6;
  *(v5 + 264) = a5[2];

  return MEMORY[0x1EEE6DFA0](sub_1A5BB3894, 0, 0);
}

uint64_t sub_1A5BB3894()
{
  v1 = objc_allocWithZone(MEMORY[0x1E6988170]);
  v2 = sub_1A5FD34EC();
  v3 = [v1 initWithURL:v2 options:0];
  v0[35] = v3;

  v4 = objc_allocWithZone(MEMORY[0x1E6987E70]);
  v0[25] = 0;
  v5 = v3;
  v6 = [v4 initWithAsset:v5 error:v0 + 25];
  v0[36] = v6;
  v7 = v0[25];
  if (v6)
  {
    v8 = v7;

    v9 = *MEMORY[0x1E6987600];
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1A5BB3BD4;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0BF8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A5BB4AD0;
    v0[13] = &block_descriptor;
    v0[14] = v10;
    [v5 loadTracksWithMediaType:v9 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v11 = v7;
    v12 = sub_1A5FD348C();

    swift_willThrow();
    v0[44] = v12;
    v13 = *(**(v0[27] + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200);
    v14 = v12;
    v17 = (v13 + *v13);
    v15 = swift_task_alloc();
    v0[45] = v15;
    *v15 = v0;
    v15[1] = sub_1A5BB45F0;

    return v17(v12);
  }
}

uint64_t sub_1A5BB3BD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_1A5BB47C0;
  }

  else
  {
    v2 = sub_1A5BB3D10;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5BB3D10()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    if (sub_1A5FD484C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1AC554EE0](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v2 = *(v1 + 32);
    }

    v3 = v2;
    v0[38] = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A5FF36F0;
    *(inited + 32) = sub_1A5FD3D5C();
    *(inited + 40) = v5;
    *(inited + 48) = 875704422;
    v6 = sub_1A5BB8DA0(inited);
    swift_setDeallocating();
    sub_1A5B10168(inited + 32, &qword_1EB1F0C08);
    v7 = v3;
    sub_1A5BB4BB0(v6);

    v8 = objc_allocWithZone(MEMORY[0x1E6987EB0]);
    v9 = sub_1A5FD3BDC();

    v0[39] = [v8 initWithTrack:v7 outputSettings:v9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C10);
    v10 = sub_1A5FD37BC();
    v0[40] = v10;
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_1A5BB4114;

    return MEMORY[0x1EEE68140](v0 + 46, v10, 0, 0);
  }

  v13 = v0[35];
  v12 = v0[36];

  sub_1A5B16774();
  v14 = swift_allocError();
  *v15 = 0xD00000000000001FLL;
  *(v15 + 8) = 0x80000001A6055550;
  *(v15 + 16) = 0;
  *(v15 + 20) = 2;
  swift_willThrow();

  v0[44] = v14;
  v16 = *(**(v0[27] + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200);
  v17 = v14;
  v20 = (v16 + *v16);
  v18 = swift_task_alloc();
  v0[45] = v18;
  *v18 = v0;
  v18[1] = sub_1A5BB45F0;

  return v20(v14);
}

uint64_t sub_1A5BB4114()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1A5BB493C;
  }

  else
  {

    v2 = sub_1A5BB4264;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A5BB4264()
{
  v25 = v0;
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v13 = *(v0 + 400);
  v14 = *(v0 + 408);
  if (*(*(v0 + 224) + 48))
  {
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v5 = *(v0 + 392);
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
  }

  *(v0 + 416) = v8;
  *(v0 + 424) = v7;
  *(v0 + 432) = v6;
  *(v0 + 440) = v5;
  *(v0 + 448) = v4;
  *(v0 + 456) = v3;
  *(v0 + 464) = v9;
  *(v0 + 472) = v10;
  *(v0 + 480) = v12;
  *(v0 + 488) = v11;
  *(v0 + 496) = v13;
  *(v0 + 504) = v14;
  CMTimeRangeGetIntersection(&v23, (v0 + 416), (v0 + 464));
  value = v23.start.value;
  epoch = v23.start.epoch;
  *(v0 + 536) = v23.duration;
  timescale = v23.start.timescale;
  flags = v23.start.flags;
  *(v0 + 512) = value;
  *(v0 + 520) = timescale;
  *(v0 + 524) = flags;
  *(v0 + 528) = epoch;
  [v2 setTimeRange_];
  [v2 addOutput_];
  [v2 startReading];
  v19 = swift_task_alloc();
  *(v0 + 344) = v19;
  *v19 = v0;
  v19[1] = sub_1A5BB4424;
  v20 = *(v0 + 312);
  v21 = *(v0 + 288);

  return sub_1A5BB4DF8(v21, v20, value, timescale | (flags << 32), epoch);
}

uint64_t sub_1A5BB4424()
{

  return MEMORY[0x1EEE6DFA0](sub_1A5BB454C, 0, 0);
}

uint64_t sub_1A5BB454C()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A5BB45F0()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1A5BB4734, 0, 0);
}

uint64_t sub_1A5BB4734()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5BB47C0()
{
  v1 = v0[36];
  v2 = v0[35];
  swift_willThrow();

  v3 = v0[37];
  v0[44] = v3;
  v4 = *(**(v0[27] + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200);
  v5 = v3;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_1A5BB45F0;

  return v8(v3);
}

uint64_t sub_1A5BB493C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);

  v4 = *(v0 + 336);
  *(v0 + 352) = v4;
  v5 = *(**(*(v0 + 216) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200);
  v6 = v4;
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  v7[1] = sub_1A5BB45F0;

  return v9(v4);
}

uint64_t sub_1A5BB4AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1A5BB8E9C();
    **(*(v4 + 64) + 40) = sub_1A5FD3F4C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

unint64_t sub_1A5BB4BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F13A0);
    v2 = sub_1A5FD487C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1A5B101C8(&v22, v24);
        sub_1A5B101C8(v24, v25);
        sub_1A5B101C8(v25, &v23);
        result = sub_1A5B0E2A4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1A5B101C8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1A5B101C8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A5BB4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a5;
  v6[21] = v5;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  v7 = type metadata accessor for VisionResult(0);
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA88);
  v6[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04C8);
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04D0);
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5BB4FD4, 0, 0);
}

uint64_t sub_1A5BB4FD4()
{
  v1 = [*(v0 + 136) copyNextSampleBuffer];
  if (v1)
  {
    v2 = *(*(v0 + 168) + OBJC_IVAR____TtC6Vision14VideoProcessor_state);
    *(v0 + 264) = v2;
    v4 = *v2 + 184;
    v3 = *v4;
    *(v0 + 272) = *v4;
    *(v0 + 280) = v4 & 0xFFFFFFFFFFFFLL | 0xA39B000000000000;
    *(v0 + 288) = 0;
    *(v0 + 296) = v1;
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    *v5 = v0;
    v5[1] = sub_1A5BB5218;

    return v8();
  }

  else
  {
    *(v0 + 384) = 0;
    v9 = (*(**(*(v0 + 168) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200) + **(**(*(v0 + 168) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200));
    v7 = swift_task_alloc();
    *(v0 + 392) = v7;
    *v7 = v0;
    v7[1] = sub_1A5BB610C;

    return v9(0);
  }
}

uint64_t sub_1A5BB5218(char a1)
{
  *(*v1 + 544) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A5BB5318, 0, 0);
}

opaqueCMSampleBuffer *sub_1A5BB5318()
{
  if (*(v0 + 544) == 1)
  {
    [*(v0 + 128) cancelReading];
LABEL_8:
    *(v0 + 384) = *(v0 + 296);
    v14 = (*(**(*(v0 + 168) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200) + **(**(*(v0 + 168) + OBJC_IVAR____TtC6Vision14VideoProcessor_state) + 200));
    v12 = swift_task_alloc();
    *(v0 + 392) = v12;
    *v12 = v0;
    v12[1] = sub_1A5BB610C;

    return v14(0);
  }

  result = [*(v0 + 136) copyNextSampleBuffer];
  *(v0 + 312) = result;
  if (!result)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 288);
  *(v0 + 320) = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *(v0 + 264);
    CMSampleBufferGetPresentationTimeStamp((v0 + 448), *(v0 + 296));
    v5 = *(v0 + 448);
    v6 = *(v0 + 464);
    v7 = *(v0 + 456);
    CMSampleBufferGetPresentationTimeStamp((v0 + 472), v3);
    v8 = *(v0 + 472);
    v9 = *(v0 + 488);
    v10 = *(v0 + 480);
    *(v0 + 496) = v5;
    *(v0 + 504) = v7;
    *(v0 + 512) = v6;
    *(v0 + 520) = v8;
    *(v0 + 528) = v10;
    *(v0 + 536) = v9;
    CMTimeRangeFromTimeToTime((v0 + 400), (v0 + 496), (v0 + 520));
    v13 = (*(*v4 + 176) + **(*v4 + 176));
    v11 = swift_task_alloc();
    *(v0 + 328) = v11;
    *v11 = v0;
    v11[1] = sub_1A5BB5600;

    return v13();
  }

  return result;
}

uint64_t sub_1A5BB5600(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A5BB5700, 0, 0);
}

uint64_t sub_1A5BB5700()
{
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = v0[40];
      v8 = v0[19];
      v7 = v0[20];
      v9 = v0[18];
      sub_1A5B180A0(v3, (v0 + 2));
      v10 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
      if ((*(v11 + 24))(v0 + 50, v9, v8, v7, v6, v10, v11))
      {
        v12 = v0[5];
        v13 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
        (*(v13 + 8))(v12, v13);
        v14 = v0[10];
        v34 = v0[11];
        v15 = __swift_project_boxed_opaque_existential_1(v0 + 7, v14);
        v16 = *(v14 - 8);
        v17 = swift_task_alloc();
        v33 = *(v16 + 16);
        v33(v17, v15, v14);
        v18 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[14] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1A5BB83C8(0, v35[2] + 1, 1, v35, &qword_1EB1EEB18, &unk_1A6022D00, &qword_1EB1EEA80);
          v0[14] = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v35 = sub_1A5BB83C8((v20 > 1), v21 + 1, 1, v18, &qword_1EB1EEB18, &unk_1A6022D00, &qword_1EB1EEA80);
          v0[14] = v35;
        }

        else
        {
          v35 = v18;
        }

        v5 = swift_task_alloc();
        v33(v5, v17, v14);
        sub_1A5BB8558(v21, v5, v0 + 14, v14, *(v34 + 8), sub_1A5B063D4);

        (*(v16 + 8))(v17, v14);

        __swift_destroy_boxed_opaque_existential_1((v0 + 7));
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      v3 += 40;
      --v2;
    }

    while (v2);
    v4 = v35;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v0[43] = v4;
  v22 = v0[37];
  v23 = v0[31];
  v24 = v0[32];
  v26 = v0[29];
  v25 = v0[30];
  type metadata accessor for ImageRequestHandler();
  v27 = v22;

  v0[44] = ImageRequestHandler.__allocating_init(_:depthData:orientation:)(v27, 0, 0x100000000uLL);
  v0[15] = v4;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB50);
  v29 = sub_1A5B8B9FC();
  ImageRequestHandler.performAll<A>(_:)((v0 + 15), v28, v29, v24);

  (*(v25 + 16))(v23, v24, v26);
  v0[12] = v28;
  v0[13] = v29;
  v0[45] = swift_getOpaqueTypeConformance2();
  sub_1A5FD415C();
  swift_getAssociatedConformanceWitness();
  v30 = swift_task_alloc();
  v0[46] = v30;
  *v30 = v0;
  v30[1] = sub_1A5BB5B8C;
  v31 = v0[25];

  return MEMORY[0x1EEE6D8D0](v31, 0, 0);
}

uint64_t sub_1A5BB5B8C()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A5BB5C9C, 0, 0);
  }

  return result;
}

uint64_t sub_1A5BB5C9C()
{
  v1 = v0[25];
  if ((*(v0[23] + 48))(v1, 1, v0[22]) == 1)
  {
    v2 = v0[37];
    v3 = v0[32];
    v4 = v0[29];
    v5 = v0[30];
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[26];

    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v3, v4);

    v9 = v0[39];
    v0[36] = v0[40];
    v0[37] = v9;
    v15 = (v0[34] + *v0[34]);
    v10 = swift_task_alloc();
    v0[38] = v10;
    *v10 = v0;
    v10[1] = sub_1A5BB5218;

    return v15();
  }

  else
  {
    v12 = v0[33];
    sub_1A5B20B18(v1, v0[24]);
    v16 = (*(*v12 + 152) + **(*v12 + 152));
    v13 = swift_task_alloc();
    v0[47] = v13;
    *v13 = v0;
    v13[1] = sub_1A5BB5F3C;
    v14 = v0[24];

    return v16(v14);
  }
}

uint64_t sub_1A5BB5F3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A5BB6038, 0, 0);
}

uint64_t sub_1A5BB6038()
{
  sub_1A5B16718(v0[24]);
  swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_1A5BB5B8C;
  v2 = v0[25];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1A5BB610C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A5BB6208, 0, 0);
}

uint64_t sub_1A5BB6208()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5BB62AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A5BB8B94(a3, v25 - v10);
  v12 = sub_1A5FD40AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A5B10168(v11, &unk_1EB1F30E0);
  }

  else
  {
    sub_1A5FD409C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A5FD404C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A5FD3D8C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A5B10168(a3, &unk_1EB1F30E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A5B10168(a3, &unk_1EB1F30E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A5BB65D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_1A5BB6698(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_1A5BB6730(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = type metadata accessor for VisionResult(0);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5BB67C4, v1, 0);
}

uint64_t sub_1A5BB67C4()
{
  sub_1A5B166B4(*(v0 + 136), *(v0 + 160));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = *(v1 + 40);
    *(v0 + 168) = v3;
    __swift_destroy_boxed_opaque_existential_1(v1);
    sub_1A5B5C574((v0 + 96));
    v4 = *(*v2 + 168);
    v5 = v3;
    v16 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_1A5BB6A60;

    return v16(v0 + 96, v3);
  }

  else
  {
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = sub_1A5B16718(*(v0 + 160));
    v11 = (*(*v8 + 128))(v10);
    *(swift_task_alloc() + 16) = v9;
    sub_1A5BB6C04(sub_1A5BB8600, v11, v0 + 56);

    if (*(v0 + 80))
    {
      v12 = *(v0 + 136);
      sub_1A5B063D4((v0 + 56), v0 + 16);
      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
      (*(v14 + 32))(v12, v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
      sub_1A5B10168(v0 + 56, &qword_1EB1F0BC8);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1A5BB6A60()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 144);

  __swift_destroy_boxed_opaque_existential_1(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1A5BB6B9C, v3, 0);
}

uint64_t sub_1A5BB6B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5BB6C04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1A5B180A0(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      if (v8)
      {
        return sub_1A5B063D4(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A5BB6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 192) = a5;
  *(v6 + 200) = v5;
  *(v6 + 176) = a2;
  *(v6 + 184) = a4;
  *(v6 + 168) = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v9 = sub_1A5FD41AC();
  *(v6 + 208) = v9;
  *(v6 + 216) = *(v9 - 8);
  *(v6 + 224) = swift_task_alloc();
  v10 = *(a4 - 8);
  *(v6 + 232) = v10;
  *(v6 + 240) = v10;
  *(v6 + 248) = swift_task_alloc();
  v11 = type metadata accessor for VideoProcessor.Request();
  *(v6 + 256) = v11;
  *(v6 + 264) = *(v11 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = *a3;
  *(v6 + 312) = *(a3 + 16);
  *(v6 + 320) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1A5BB6ED4, v5, 0);
}

uint64_t sub_1A5BB6ED4()
{
  v51 = v1;
  v3 = (*(**(v1 + 200) + 128))();
  v4 = *(v3 + 16);
  v45 = v3;
  v5 = v3 + 32;
  v43 = -v4;
  v6 = -1;
  while (v43 + v6 != -1)
  {
    if (++v6 >= *(v45 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v0 = (v5 + 40);
    v2 = *(v1 + 232);
    v7 = *(v1 + 168);
    v46 = *(v1 + 184);
    v8 = *(v1 + 184);
    sub_1A5B180A0(v5, v1 + 96);
    v9 = *(v1 + 120);
    v10 = *(v1 + 128);
    __swift_project_boxed_opaque_existential_1((v1 + 96), v9);
    (*(v10 + 8))(v9, v10);
    v11 = *(v1 + 40);
    v12 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v11);
    *(v1 + 80) = v46;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 56));
    (v2[2])(boxed_opaque_existential_1, v7, v8);
    v14 = (*(v12 + 88))(v1 + 56, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v1 + 56);
    __swift_destroy_boxed_opaque_existential_1(v1 + 16);
    __swift_destroy_boxed_opaque_existential_1(v1 + 96);
    v5 = v0;
    if (v14)
    {

      sub_1A5B16774();
      swift_allocError();
      *v15 = 0xD000000000000028;
      *(v15 + 8) = 0x80000001A6055490;
      *(v15 + 16) = 0;
      *(v15 + 20) = 2;
      swift_willThrow();

      v16 = *(v1 + 8);
      goto LABEL_10;
    }
  }

  v41 = *(v1 + 320);
  v39 = *(v1 + 296);
  v42 = *(v1 + 288);
  v47 = *(v1 + 280);
  v17 = *(v1 + 264);
  v44 = *(v1 + 256);
  v18 = *(v1 + 240);
  v19 = *(v1 + 248);
  v20 = *(v1 + 216);
  v21 = *(v1 + 224);
  v22 = *(v1 + 200);
  v38 = *(v1 + 208);
  v23 = *(v1 + 184);
  v40 = *(v1 + 312);
  v24 = *(v1 + 168);
  v25 = *(v1 + 176);

  (*(v18 + 16))(v19, v24, v23);
  (*(v20 + 16))(v21, v25, v38);
  v48 = v39;
  v49 = v40;
  v50 = v41;
  sub_1A5BB73CC(v21, &v48, v42);
  v26 = v44;
  v43 = *(v17 + 16);
  (v43)(v47, v42, v26);
  v45 = (*(*v22 + 144))(v1 + 136);
  v0 = v27;
  v2 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_14:
  v2 = sub_1A5BB83C8(0, v2[2] + 1, 1, v2, &qword_1EB1F0BE8, &unk_1A6001DC8, &qword_1EB1F0BF0);
  *v0 = v2;
LABEL_7:
  v30 = v2[2];
  v29 = v2[3];
  if (v30 >= v29 >> 1)
  {
    *v0 = sub_1A5BB83C8((v29 > 1), v30 + 1, 1, v2, &qword_1EB1F0BE8, &unk_1A6001DC8, &qword_1EB1F0BF0);
  }

  v32 = *(v1 + 280);
  v31 = *(v1 + 288);
  v33 = *(v1 + 264);
  v34 = *(v1 + 272);
  v35 = *(v1 + 256);
  (v43)(v34, v32, v35);
  sub_1A5BB8558(v30, v34, v0, v35, &off_1F19575D0, sub_1A5B72510);
  v36 = *(v33 + 8);
  v36(v32, v35);
  (v45)();
  v36(v31, v35);

  v16 = *(v1 + 8);
LABEL_10:

  return v16();
}

uint64_t sub_1A5BB73CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *a3 = *a2;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
  swift_dynamicCast();
  v7 = *(type metadata accessor for VideoProcessor.Request() + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v8 = sub_1A5FD41AC();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a1, v8);
}

uint64_t sub_1A5BB74F4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A5BB7518, v2, 0);
}

uint64_t sub_1A5BB7518()
{
  v1 = *(v0 + 88);
  v2 = (*(**(v0 + 104) + 128))();
  *(swift_task_alloc() + 16) = v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (1)
    {
      v6 = sub_1A5BB86E4(v5);
      if (v6)
      {
        break;
      }

      ++v4;
      v5 += 5;
      if (v3 == v4)
      {
        v4 = 0;
        break;
      }
    }

    v7 = v6 ^ 1;
  }

  else
  {
    v4 = 0;
    v7 = 1;
  }

  v8 = v7 & 1;

  if ((v8 & 1) == 0)
  {
    v9 = *(v0 + 96);
    v10 = (*(**(v0 + 104) + 144))(v0 + 56);
    sub_1A5BB76C4(v4, v0 + 16);
    v10(v0 + 56, 0);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    (*(v12 + 16))(v9, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  v13 = *(v0 + 8);

  return v13((v8 & 1) == 0);
}

uint64_t sub_1A5BB76C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A5BB8510(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_1A5B063D4(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A5BB7780()
{
  v1 = (*(**(v0 + 16) + 128))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A5BB7820()
{
  v1 = (*(**(v0 + 16) + 104))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1A5BB78C4()
{
  (*(**(v0 + 16) + 112))(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A5BB7948(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A5BB7968, v1, 0);
}

uint64_t sub_1A5BB7968()
{
  v1 = (*(**(v0 + 64) + 128))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = *(v0 + 56);
      sub_1A5B180A0(v3, v0 + 16);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
      (*(v6 + 16))(v4, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v7 = (*(**(v0 + 64) + 144))(v0 + 16);
  *v8 = MEMORY[0x1E69E7CC0];

  v7(v0 + 16, 0);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A5BB7AD0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A5BB7B08(uint64_t a1)
{
  v3 = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v4 = sub_1A5FD41AC();
  v5 = sub_1A5FD456C();
  (*(*(v5 - 8) + 8))(v3, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(v3, a1, v4);
  v6 = *(v8 + 56);

  return v6(v3, 0, 1, v4);
}

uint64_t sub_1A5BB7C40()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A5B0CE78;

  return sub_1A5BB37EC(v3, v4, v5, v2, (v0 + 40));
}

uint64_t sub_1A5BB7CE4(void *a1)
{
  v1 = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD41AC();
  return sub_1A5FD419C();
}

void sub_1A5BB7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 24);
  if (v6 != 255)
  {
    v7 = *v5;
    if (v6)
    {
      if (v7)
      {
        if (a5 != 0x8000000000000000 || v7 != -1)
        {
          return;
        }

LABEL_16:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else
    {
      v8 = *(v5 + 8);
      v9 = *(v5 + 16);
      time.value = sub_1A5FD440C();
      time.timescale = v10;
      time.flags = v11;
      time.epoch = v12;
      Seconds = CMTimeGetSeconds(&time);
      time.value = v7;
      *&time.timescale = v8;
      time.epoch = v9;
      v14 = ceil(Seconds / CMTimeGetSeconds(&time));
      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v14 > -2147483650.0)
        {
          if (v14 < 2147483650.0)
          {
            time.value = v7;
            *&time.timescale = v8;
            time.epoch = v9;
            CMTimeMultiply(&v15, &time, v14);
            sub_1A5FD43FC();
            sub_1A5FD42CC();
            sub_1A5FD43EC();
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_1A5BB7F24()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v0 = sub_1A5FD416C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - v2;
  v4 = swift_checkMetadataState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1A5B5EFD4(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2E50);
  swift_dynamicCast();
  (*(v5 + 16))(v7, v10, v4);
  sub_1A5FD41AC();
  sub_1A5FD418C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v10, v4);
}

uint64_t VideoProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC6Vision14VideoProcessor_url;
  v2 = sub_1A5FD353C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VideoProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC6Vision14VideoProcessor_url;
  v2 = sub_1A5FD353C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A5BB82D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A5B60C88;

  return v6(a1);
}

void *sub_1A5BB83C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1A5BB8558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t sub_1A5BB8600(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v8, v1, v2);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1A5B5C574(v7);
  v5 = (*(v4 + 88))(v7, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5 & 1;
}

uint64_t sub_1A5BB86E4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 88))(v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7 & 1;
}

unint64_t sub_1A5BB879C()
{
  result = qword_1EB1F0BD0;
  if (!qword_1EB1F0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0BD0);
  }

  return result;
}

uint64_t type metadata accessor for VideoProcessor()
{
  result = qword_1EB21BAF0;
  if (!qword_1EB21BAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5BB8844()
{
  result = sub_1A5FD353C();
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

uint64_t initializeBufferWithCopyOfBuffer for VideoProcessor.Cadence(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoProcessor.Cadence(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoProcessor.Cadence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1A5BB8A04()
{
  sub_1A5BB8EE8(319, &qword_1EB1F0BD8, &type metadata for VideoProcessor.Cadence, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5BB8B30();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
      sub_1A5FD41AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A5BB8B30()
{
  result = qword_1EB1F0BE0;
  if (!qword_1EB1F0BE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1F0BE0);
  }

  return result;
}

uint64_t sub_1A5BB8B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BB8C04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B10404;

  return sub_1A5BB82D0(a1, v4);
}

uint64_t sub_1A5BB8CBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5BB82D0(a1, v4);
}

unint64_t sub_1A5BB8DA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C18);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A5B0E2A4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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