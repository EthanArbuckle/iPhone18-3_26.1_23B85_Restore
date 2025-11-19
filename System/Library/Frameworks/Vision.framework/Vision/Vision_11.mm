uint64_t ImageFingerprintsObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ImageFingerprintsObservation();
  sub_1A5BFE4D4(&qword_1EB1F1AF8, type metadata accessor for ImageFingerprintsObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BFCF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BFE4D4(&qword_1EB1F1AF0, type metadata accessor for ImageFingerprintsObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

unint64_t sub_1A5BFCFA4(uint64_t a1)
{
  sub_1A5FD46AC();

  v2 = sub_1A5BFE4D4(&qword_1EB1F1AF0, type metadata accessor for ImageFingerprintsObservation);
  v3 = sub_1A5C29408(a1, &off_1F195BE38, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_1A5BFD088()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5BFD0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A6055FD0 == a2)
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

uint64_t sub_1A5BFD1B8(uint64_t a1)
{
  v2 = sub_1A5BFE0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFD1F4(uint64_t a1)
{
  v2 = sub_1A5BFE0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageFingerprintsObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFE0E0();
  sub_1A5FD4CDC();
  v20 = *v3;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B10);
  sub_1A5BFE188(&qword_1EB1F1B18, sub_1A5BFE134);
  sub_1A5FD4A5C();
  if (!v2)
  {
    v18 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v12 = type metadata accessor for ImageFingerprintsObservation();
    v13 = sub_1A5BFE4D4(&qword_1EB1F1AF0, type metadata accessor for ImageFingerprintsObservation);
    sub_1A5BBD46C(v7, v12, &off_1F195BE38, v13);
    (*(v16 + 8))(v7, v17);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ImageFingerprintsObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A5FD367C();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B28);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ImageFingerprintsObservation();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFE0E0();
  v14 = v43;
  sub_1A5FD4CCC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v11;
  v35 = v6;
  v33 = v13;
  v43 = a1;
  v15 = v40;
  v17 = v38;
  v16 = v39;
  LOBYTE(v44) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v32 = v8;
  LOBYTE(v44) = 0;
  sub_1A5BFE4D4(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v18 = v42;
  sub_1A5FD497C();
  v19 = v17;
  v21 = v33;
  v20 = v34;
  (*(v15 + 32))(&v33[*(v34 + 20)], v19, v16);
  LOBYTE(v44) = 1;
  sub_1A5FD495C();
  v38 = v10;
  v22 = v21;
  *(v21 + *(v20 + 24)) = v23;
  v47 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v24 = v43;
  v25 = v18;
  v26 = v34;
  *(v22 + *(v34 + 32)) = v44;
  sub_1A5BBDB04(v45);
  v27 = v22 + *(v26 + 28);
  v28 = v45[1];
  *v27 = v45[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v45[2];
  v27[48] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B10);
  v47 = 1;
  sub_1A5BFE188(&qword_1EB1F1B30, sub_1A5BFE200);
  v29 = v32;
  v30 = v38;
  sub_1A5FD497C();
  (*(v37 + 8))(v25, v35);
  (*(v41 + 8))(v30, v29);
  *v22 = v44;
  sub_1A5BFE254(v22, v36);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1A5BFE2B8(v22);
}

void sub_1A5BFDB58(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 fingerprintHashes];
  sub_1A5BFE314();
  v9 = sub_1A5FD3F4C();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v7;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v22 = a1;
    v23 = [v22 uuid];
    v24 = type metadata accessor for ImageFingerprintsObservation();
    sub_1A5FD365C();

    [v22 confidence];
    v26 = v25;

    *a4 = v12;
    *(a4 + v24[6]) = v26;
    v27 = a4 + v24[7];
    v28 = *(a3 + 16);
    *v27 = *a3;
    *(v27 + 1) = v28;
    *(v27 + 2) = *(a3 + 32);
    v27[48] = *(a3 + 48);
    *(a4 + v24[8]) = v31;
    return;
  }

  v10 = sub_1A5FD484C();
  v31 = v7;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v32 = MEMORY[0x1E69E7CC0];
  sub_1A5BFDDDC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = a3;
    v30 = a4;
    v11 = 0;
    v12 = v32;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1AC554EE0](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 hashData];
      v16 = sub_1A5FD35DC();
      v18 = v17;

      v20 = *(v32 + 16);
      v19 = *(v32 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A5BFDDDC((v19 > 1), v20 + 1, 1);
      }

      ++v11;
      *(v32 + 16) = v20 + 1;
      v21 = v32 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v10 != v11);

    a3 = v29;
    a4 = v30;
    goto LABEL_14;
  }

  __break(1u);
}

char *sub_1A5BFDDDC(char *a1, int64_t a2, char a3)
{
  result = sub_1A5BFDDFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5BFDDFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A5BFDF08()
{
  result = qword_1EB22DA60[0];
  if (!qword_1EB22DA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22DA60);
  }

  return result;
}

uint64_t type metadata accessor for ImageFingerprintsObservation()
{
  result = qword_1EB22E270;
  if (!qword_1EB22E270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s6Vision28ImageFingerprintsObservationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1A5BFC640(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ImageFingerprintsObservation();
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

LABEL_9:
    v8 = v4[8];
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
    }

    else if (v10 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (v7[48])
  {
    goto LABEL_9;
  }

  return 0;
}

unint64_t sub_1A5BFE0E0()
{
  result = qword_1EB1F1B08;
  if (!qword_1EB1F1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B08);
  }

  return result;
}

unint64_t sub_1A5BFE134()
{
  result = qword_1EB1F1B20;
  if (!qword_1EB1F1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B20);
  }

  return result;
}

uint64_t sub_1A5BFE188(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1B10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BFE200()
{
  result = qword_1EB1F1B38;
  if (!qword_1EB1F1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B38);
  }

  return result;
}

uint64_t sub_1A5BFE254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageFingerprintsObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BFE2B8(uint64_t a1)
{
  v2 = type metadata accessor for ImageFingerprintsObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A5BFE314()
{
  result = qword_1EB1F1B40;
  if (!qword_1EB1F1B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F1B40);
  }

  return result;
}

unint64_t sub_1A5BFE364()
{
  result = qword_1EB1F1B48;
  if (!qword_1EB1F1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B48);
  }

  return result;
}

uint64_t sub_1A5BFE3B8(void *a1)
{
  a1[1] = sub_1A5BFE4D4(&qword_1EB1EF9B8, type metadata accessor for ImageFingerprintsObservation);
  a1[2] = sub_1A5BFE4D4(&qword_1EB1F1B50, type metadata accessor for ImageFingerprintsObservation);
  a1[3] = sub_1A5BFE4D4(&qword_1EB1F1B58, type metadata accessor for ImageFingerprintsObservation);
  result = sub_1A5BFE4D4(&qword_1EB1F1AF8, type metadata accessor for ImageFingerprintsObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BFE4D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5BFE520()
{
  result = qword_1EB1F1B68;
  if (!qword_1EB1F1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B68);
  }

  return result;
}

unint64_t sub_1A5BFE578()
{
  result = qword_1EB1F1B70;
  if (!qword_1EB1F1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B70);
  }

  return result;
}

unint64_t sub_1A5BFE5D0()
{
  result = qword_1EB1F1B78;
  if (!qword_1EB1F1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1B78);
  }

  return result;
}

uint64_t sub_1A5BFE624(uint64_t a1)
{
  result = sub_1A5BFE4D4(&qword_1EB1F1AF0, type metadata accessor for ImageFingerprintsObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BFE6A4()
{
  sub_1A5B26D7C(319, &qword_1EB1F1B80, &type metadata for ImageFingerprintsObservation.FingerprintHash, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B0AD5C();
      if (v2 <= 0x3F)
      {
        sub_1A5B26D7C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A5BFE7A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A5BFE7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1A5BFE87C()
{
  result = qword_1EB22E380[0];
  if (!qword_1EB22E380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22E380);
  }

  return result;
}

unint64_t sub_1A5BFE8D4()
{
  result = qword_1EB22E490;
  if (!qword_1EB22E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E490);
  }

  return result;
}

unint64_t sub_1A5BFE92C()
{
  result = qword_1EB22E498[0];
  if (!qword_1EB22E498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22E498);
  }

  return result;
}

uint64_t sub_1A5BFE9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74654E656E656373 && a2 == 0xEA00000000003356)
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

uint64_t sub_1A5BFEA3C(uint64_t a1)
{
  v2 = sub_1A5BFED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFEA78(uint64_t a1)
{
  v2 = sub_1A5BFED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFEAB4(uint64_t a1)
{
  v2 = sub_1A5BFED58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFEAF0(uint64_t a1)
{
  v2 = sub_1A5BFED58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B98);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFED04();
  sub_1A5FD4CDC();
  sub_1A5BFED58();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BFED04()
{
  result = qword_1EB22E530;
  if (!qword_1EB22E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E530);
  }

  return result;
}

unint64_t sub_1A5BFED58()
{
  result = qword_1EB22E538;
  if (!qword_1EB22E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E538);
  }

  return result;
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BA0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BA8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFED04();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BFED58();
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
      *v13 = &type metadata for SVYvzEtX1JlUdu8xx5qhDIRequest.Revision;
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

uint64_t sub_1A5BFF124(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1B98);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFED04();
  sub_1A5FD4CDC();
  sub_1A5BFED58();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

__n128 SVYvzEtX1JlUdu8xx5qhDIRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 SVYvzEtX1JlUdu8xx5qhDIRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5BFF3B8()
{
  sub_1A5C01924();
  result = sub_1A5D4EC2C();
  qword_1EB22E528 = result;
  return result;
}

uint64_t static SVYvzEtX1JlUdu8xx5qhDIRequest.allSupportedRevisions.getter()
{
  if (qword_1EB22E520 != -1)
  {
    swift_once();
  }
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C01924();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for SVYvzEtX1JlUdu8xx5qhDIRequest, v3);
}

uint64_t sub_1A5BFF4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C02BFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BFF518(uint64_t a1)
{
  v2 = sub_1A5C01978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF554(uint64_t a1)
{
  v2 = sub_1A5C01978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF590(uint64_t a1)
{
  v2 = sub_1A5C01B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF5CC(uint64_t a1)
{
  v2 = sub_1A5C01B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF608(uint64_t a1)
{
  v2 = sub_1A5C01B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF644(uint64_t a1)
{
  v2 = sub_1A5C01B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF680(uint64_t a1)
{
  v2 = sub_1A5C01D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF6BC(uint64_t a1)
{
  v2 = sub_1A5C01D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF6F8(uint64_t a1)
{
  v2 = sub_1A5C01A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF734(uint64_t a1)
{
  v2 = sub_1A5C01A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF770(uint64_t a1)
{
  v2 = sub_1A5C01C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF7AC(uint64_t a1)
{
  v2 = sub_1A5C01C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF7E8(uint64_t a1)
{
  v2 = sub_1A5C01CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF824(uint64_t a1)
{
  v2 = sub_1A5C01CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF860(uint64_t a1)
{
  v2 = sub_1A5C01C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF89C(uint64_t a1)
{
  v2 = sub_1A5C01C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF8D8(uint64_t a1)
{
  v2 = sub_1A5C01A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF914(uint64_t a1)
{
  v2 = sub_1A5C01A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF950(uint64_t a1)
{
  v2 = sub_1A5C019CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFF98C(uint64_t a1)
{
  v2 = sub_1A5C019CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFF9C8(uint64_t a1)
{
  v2 = sub_1A5C01BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFFA04(uint64_t a1)
{
  v2 = sub_1A5C01BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BFFA40(uint64_t a1)
{
  v2 = sub_1A5C01AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFFA7C(uint64_t a1)
{
  v2 = sub_1A5C01AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.Category.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BB8);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BC0);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BC8);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BD0);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v46 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BD8);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v46 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BE0);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v46 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BE8);
  v76 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v75 = &v46 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BF0);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v74 = &v46 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1BF8);
  v73 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v72 = &v46 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C00);
  v71 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C08);
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C10);
  v21 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v23 = &v46 - v22;
  v24 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C01978();
  v77 = v23;
  sub_1A5FD4CDC();
  if (v24 > 4)
  {
    if (v24 > 7)
    {
      if (v24 == 8)
      {
        v87 = 8;
        sub_1A5C01A74();
        v37 = v62;
        v27 = v77;
        v26 = v78;
        sub_1A5FD49EC();
        v39 = v63;
        v38 = v64;
      }

      else if (v24 == 9)
      {
        v88 = 9;
        sub_1A5C01A20();
        v37 = v65;
        v27 = v77;
        v26 = v78;
        sub_1A5FD49EC();
        v39 = v66;
        v38 = v67;
      }

      else
      {
        v89 = 10;
        sub_1A5C019CC();
        v37 = v68;
        v27 = v77;
        v26 = v78;
        sub_1A5FD49EC();
        v39 = v69;
        v38 = v70;
      }
    }

    else
    {
      if (v24 == 5)
      {
        v84 = 5;
        sub_1A5C01B70();
        v43 = v53;
        v27 = v77;
        v26 = v78;
        sub_1A5FD49EC();
        (*(v54 + 8))(v43, v55);
        return (*(v21 + 8))(v27, v26);
      }

      if (v24 == 6)
      {
        v85 = 6;
        sub_1A5C01B1C();
        v25 = v56;
        v27 = v77;
        v26 = v78;
        sub_1A5FD49EC();
        (*(v57 + 8))(v25, v58);
        return (*(v21 + 8))(v27, v26);
      }

      v86 = 7;
      sub_1A5C01AC8();
      v37 = v59;
      v27 = v77;
      v26 = v78;
      sub_1A5FD49EC();
      v39 = v60;
      v38 = v61;
    }

    (*(v39 + 8))(v37, v38);
    return (*(v21 + 8))(v27, v26);
  }

  v28 = v20;
  v69 = v18;
  v70 = (v21 + 8);
  v30 = v71;
  v29 = v72;
  v31 = v73;
  v32 = v74;
  v33 = v75;
  v34 = v76;
  if (v24 <= 1)
  {
    if (!v24)
    {
      v79 = 0;
      sub_1A5C01D14();
      v40 = v77;
      v41 = v78;
      sub_1A5FD49EC();
      (*(v47 + 8))(v28, v69);
      return (*v70)(v40, v41);
    }

    v80 = 1;
    sub_1A5C01CC0();
    v45 = v17;
    v36 = v77;
    v35 = v78;
    sub_1A5FD49EC();
    (*(v30 + 8))(v45, v48);
  }

  else if (v24 == 2)
  {
    v81 = 2;
    sub_1A5C01C6C();
    v36 = v77;
    v35 = v78;
    sub_1A5FD49EC();
    (*(v31 + 8))(v29, v49);
  }

  else if (v24 == 3)
  {
    v82 = 3;
    sub_1A5C01C18();
    v36 = v77;
    v35 = v78;
    sub_1A5FD49EC();
    (*(v50 + 8))(v32, v51);
  }

  else
  {
    v83 = 4;
    sub_1A5C01BC4();
    v44 = v33;
    v36 = v77;
    v35 = v78;
    sub_1A5FD49EC();
    (*(v34 + 8))(v44, v52);
  }

  return (*v70)(v36, v35);
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.Category.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C18);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v58[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C20);
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v58[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C28);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v58[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C30);
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v58[-v10];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C38);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v86 = &v58[-v11];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C40);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v85 = &v58[-v12];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C48);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v84 = &v58[-v13];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C50);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v92 = &v58[-v14];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C58);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v91 = &v58[-v15];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C60);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v58[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C68);
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1C70);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58[-v23];
  v25 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A5C01978();
  v26 = v94;
  sub_1A5FD4CCC();
  if (!v26)
  {
    v61 = v20;
    v60 = v18;
    v28 = v91;
    v27 = v92;
    v62 = v22;
    v29 = v93;
    v30 = v21;
    v94 = v24;
    v31 = sub_1A5FD49BC();
    if (*(v31 + 16) == 1)
    {
      v32 = *(v31 + 32);
      if (v32 != 11)
      {
        v59 = *(v31 + 32);
        if (v32 <= 4)
        {
          if (v32 <= 1)
          {
            v92 = v31;
            if (v32)
            {
              v97 = 1;
              sub_1A5C01CC0();
              v57 = v94;
              sub_1A5FD48CC();
              (*(v64 + 8))(v17, v65);
              (*(v62 + 8))(v57, v21);
            }

            else
            {
              v96 = 0;
              sub_1A5C01D14();
              v51 = v61;
              v52 = v94;
              sub_1A5FD48CC();
              (*(v63 + 8))(v51, v60);
              (*(v62 + 8))(v52, v30);
            }

            swift_unknownObjectRelease();
            v44 = v95;
            v34 = v29;
            goto LABEL_35;
          }

          v34 = v29;
          if (v32 == 2)
          {
            v98 = 2;
            sub_1A5C01C6C();
            v53 = v94;
            sub_1A5FD48CC();
            (*(v67 + 8))(v28, v66);
            (*(v62 + 8))(v53, v21);
          }

          else
          {
            v46 = v94;
            if (v32 == 3)
            {
              v99 = 3;
              sub_1A5C01C18();
              sub_1A5FD48CC();
              v47 = v62;
              (*(v69 + 8))(v27, v68);
            }

            else
            {
              v100 = 4;
              sub_1A5C01BC4();
              v56 = v84;
              sub_1A5FD48CC();
              v47 = v62;
              (*(v71 + 8))(v56, v70);
            }

            (*(v47 + 8))(v46, v21);
          }

LABEL_34:
          swift_unknownObjectRelease();
          v44 = v95;
LABEL_35:
          *v34 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v44);
        }

        v33 = v94;
        if (v32 > 7)
        {
          v34 = v29;
          v35 = v62;
          if (v32 == 8)
          {
            v104 = 8;
            sub_1A5C01A74();
            v55 = v88;
            sub_1A5FD48CC();
            (*(v78 + 8))(v55, v79);
LABEL_33:
            (*(v35 + 8))(v33, v21);
            goto LABEL_34;
          }

          if (v32 == 9)
          {
            v105 = 9;
            sub_1A5C01A20();
            v48 = v89;
            sub_1A5FD48CC();
            v50 = v80;
            v49 = v81;
          }

          else
          {
            v106 = 10;
            sub_1A5C019CC();
            v48 = v90;
            sub_1A5FD48CC();
            v50 = v82;
            v49 = v83;
          }
        }

        else
        {
          v34 = v29;
          v35 = v62;
          if (v32 == 5)
          {
            v101 = 5;
            sub_1A5C01B70();
            v54 = v85;
            sub_1A5FD48CC();
            v37 = *(v72 + 8);
            v38 = v54;
            v39 = &v107;
            goto LABEL_23;
          }

          if (v32 == 6)
          {
            v102 = 6;
            sub_1A5C01B1C();
            v36 = v86;
            sub_1A5FD48CC();
            v37 = *(v74 + 8);
            v38 = v36;
            v39 = &v108;
LABEL_23:
            v49 = *(v39 - 32);
LABEL_32:
            v37(v38, v49);
            goto LABEL_33;
          }

          v103 = 7;
          sub_1A5C01AC8();
          v48 = v87;
          sub_1A5FD48CC();
          v50 = v76;
          v49 = v77;
        }

        v37 = *(v50 + 8);
        v38 = v48;
        goto LABEL_32;
      }
    }

    v40 = sub_1A5FD471C();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v42 = &type metadata for SVYvzEtX1JlUdu8xx5qhDIRequest.Category;
    v43 = v94;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v62 + 8))(v43, v21);
    swift_unknownObjectRelease();
  }

  v44 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t SVYvzEtX1JlUdu8xx5qhDIRequest.hashValue.getter()
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

uint64_t sub_1A5C01530(uint64_t a1)
{
  v2 = sub_1A5C01D68();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C0156C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C01924();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C015CC(uint64_t a1)
{
  v2 = sub_1A5B5E01C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C01634(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E01C();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C01680@<D0>(uint64_t a1@<X8>)
{
  static NormalizedRect.fullImage.getter(&v4);
  v2 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *a1 = 2;
  *(a1 + 8) = v4;
  result = v5[0];
  *(a1 + 24) = *v5;
  *(a1 + 40) = v2;
  return result;
}

unint64_t sub_1A5C016E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  LOBYTE(v13) = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 24);
  v16 = v3;
  v4 = sub_1A5C01D68();
  v5 = sub_1A5BDA35C(a1, &type metadata for SVYvzEtX1JlUdu8xx5qhDIRequest, v4);
  v6 = sub_1A5FD3D5C();
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  *&v15 = sub_1A5B16F58(0, &qword_1EB1F3E80);
  v13 = v9;
  sub_1A5B101C8(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v12, v6, v8, isUniquelyReferenced_nonNull_native);

  return v5;
}

void sub_1A5C017F4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorVNVYvzEtX1JlUdu8xx5qhDIConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F1C80);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

unint64_t sub_1A5C01924()
{
  result = qword_1EB1F1BB0;
  if (!qword_1EB1F1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1BB0);
  }

  return result;
}

unint64_t sub_1A5C01978()
{
  result = qword_1EB22E540;
  if (!qword_1EB22E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E540);
  }

  return result;
}

unint64_t sub_1A5C019CC()
{
  result = qword_1EB22E548;
  if (!qword_1EB22E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E548);
  }

  return result;
}

unint64_t sub_1A5C01A20()
{
  result = qword_1EB22E550;
  if (!qword_1EB22E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E550);
  }

  return result;
}

unint64_t sub_1A5C01A74()
{
  result = qword_1EB22E558;
  if (!qword_1EB22E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E558);
  }

  return result;
}

unint64_t sub_1A5C01AC8()
{
  result = qword_1EB22E560;
  if (!qword_1EB22E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E560);
  }

  return result;
}

unint64_t sub_1A5C01B1C()
{
  result = qword_1EB22E568;
  if (!qword_1EB22E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E568);
  }

  return result;
}

unint64_t sub_1A5C01B70()
{
  result = qword_1EB22E570;
  if (!qword_1EB22E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E570);
  }

  return result;
}

unint64_t sub_1A5C01BC4()
{
  result = qword_1EB22E578;
  if (!qword_1EB22E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E578);
  }

  return result;
}

unint64_t sub_1A5C01C18()
{
  result = qword_1EB22E580;
  if (!qword_1EB22E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E580);
  }

  return result;
}

unint64_t sub_1A5C01C6C()
{
  result = qword_1EB22E588;
  if (!qword_1EB22E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E588);
  }

  return result;
}

unint64_t sub_1A5C01CC0()
{
  result = qword_1EB22E590;
  if (!qword_1EB22E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22E590);
  }

  return result;
}

unint64_t sub_1A5C01D14()
{
  result = qword_1EB22E598[0];
  if (!qword_1EB22E598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22E598);
  }

  return result;
}

unint64_t sub_1A5C01D68()
{
  result = qword_1EB1F1C78;
  if (!qword_1EB1F1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1C78);
  }

  return result;
}

unint64_t sub_1A5C01DBC()
{
  result = qword_1EB1F1C88;
  if (!qword_1EB1F1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1C88);
  }

  return result;
}

unint64_t sub_1A5C01E18()
{
  result = qword_1EB1F1C90;
  if (!qword_1EB1F1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1C90);
  }

  return result;
}

unint64_t sub_1A5C01E6C(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B660A0();
  result = sub_1A5C01E9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C01E9C()
{
  result = qword_1EB1F1C98;
  if (!qword_1EB1F1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1C98);
  }

  return result;
}

unint64_t sub_1A5C01EF4()
{
  result = qword_1EB1F1CA0;
  if (!qword_1EB1F1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1CA0);
  }

  return result;
}

unint64_t sub_1A5C01F4C()
{
  result = qword_1EB1F1CA8;
  if (!qword_1EB1F1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1CA8);
  }

  return result;
}

unint64_t sub_1A5C01FA0(uint64_t a1)
{
  result = sub_1A5B5E01C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C01FC8(uint64_t a1)
{
  result = sub_1A5C01924();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C01FF0(uint64_t a1)
{
  result = sub_1A5C01D68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C02018(uint64_t a1)
{
  result = sub_1A5C02040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C02040()
{
  result = qword_1EB1F1CB0;
  if (!qword_1EB1F1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1CB0);
  }

  return result;
}

unint64_t sub_1A5C021B0()
{
  result = qword_1EB22F0A0[0];
  if (!qword_1EB22F0A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22F0A0);
  }

  return result;
}

unint64_t sub_1A5C02208()
{
  result = qword_1EB22FDB0[0];
  if (!qword_1EB22FDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22FDB0);
  }

  return result;
}

unint64_t sub_1A5C02260()
{
  result = qword_1EB22FEC0;
  if (!qword_1EB22FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22FEC0);
  }

  return result;
}

unint64_t sub_1A5C022B8()
{
  result = qword_1EB22FEC8[0];
  if (!qword_1EB22FEC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22FEC8);
  }

  return result;
}

unint64_t sub_1A5C02310()
{
  result = qword_1EB22FF50;
  if (!qword_1EB22FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22FF50);
  }

  return result;
}

unint64_t sub_1A5C02368()
{
  result = qword_1EB22FF58[0];
  if (!qword_1EB22FF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22FF58);
  }

  return result;
}

unint64_t sub_1A5C023C0()
{
  result = qword_1EB22FFE0;
  if (!qword_1EB22FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22FFE0);
  }

  return result;
}

unint64_t sub_1A5C02418()
{
  result = qword_1EB22FFE8[0];
  if (!qword_1EB22FFE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22FFE8);
  }

  return result;
}

unint64_t sub_1A5C02470()
{
  result = qword_1EB230070;
  if (!qword_1EB230070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230070);
  }

  return result;
}

unint64_t sub_1A5C024C8()
{
  result = qword_1EB230078;
  if (!qword_1EB230078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230078);
  }

  return result;
}

unint64_t sub_1A5C02520()
{
  result = qword_1EB230100;
  if (!qword_1EB230100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230100);
  }

  return result;
}

unint64_t sub_1A5C02578()
{
  result = qword_1EB230108[0];
  if (!qword_1EB230108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230108);
  }

  return result;
}

unint64_t sub_1A5C025D0()
{
  result = qword_1EB230190;
  if (!qword_1EB230190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230190);
  }

  return result;
}

unint64_t sub_1A5C02628()
{
  result = qword_1EB230198[0];
  if (!qword_1EB230198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230198);
  }

  return result;
}

unint64_t sub_1A5C02680()
{
  result = qword_1EB230220;
  if (!qword_1EB230220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230220);
  }

  return result;
}

unint64_t sub_1A5C026D8()
{
  result = qword_1EB230228[0];
  if (!qword_1EB230228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230228);
  }

  return result;
}

unint64_t sub_1A5C02730()
{
  result = qword_1EB2302B0;
  if (!qword_1EB2302B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2302B0);
  }

  return result;
}

unint64_t sub_1A5C02788()
{
  result = qword_1EB2302B8[0];
  if (!qword_1EB2302B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2302B8);
  }

  return result;
}

unint64_t sub_1A5C027E0()
{
  result = qword_1EB230340;
  if (!qword_1EB230340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230340);
  }

  return result;
}

unint64_t sub_1A5C02838()
{
  result = qword_1EB230348[0];
  if (!qword_1EB230348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230348);
  }

  return result;
}

unint64_t sub_1A5C02890()
{
  result = qword_1EB2303D0;
  if (!qword_1EB2303D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2303D0);
  }

  return result;
}

unint64_t sub_1A5C028E8()
{
  result = qword_1EB2303D8[0];
  if (!qword_1EB2303D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2303D8);
  }

  return result;
}

unint64_t sub_1A5C02940()
{
  result = qword_1EB230460;
  if (!qword_1EB230460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230460);
  }

  return result;
}

unint64_t sub_1A5C02998()
{
  result = qword_1EB230468[0];
  if (!qword_1EB230468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230468);
  }

  return result;
}

unint64_t sub_1A5C029F0()
{
  result = qword_1EB2304F0;
  if (!qword_1EB2304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2304F0);
  }

  return result;
}

unint64_t sub_1A5C02A48()
{
  result = qword_1EB2304F8[0];
  if (!qword_1EB2304F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2304F8);
  }

  return result;
}

unint64_t sub_1A5C02AA0()
{
  result = qword_1EB230580;
  if (!qword_1EB230580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230580);
  }

  return result;
}

unint64_t sub_1A5C02AF8()
{
  result = qword_1EB230588[0];
  if (!qword_1EB230588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230588);
  }

  return result;
}

unint64_t sub_1A5C02B50()
{
  result = qword_1EB230610;
  if (!qword_1EB230610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB230610);
  }

  return result;
}

unint64_t sub_1A5C02BA8()
{
  result = qword_1EB230618[0];
  if (!qword_1EB230618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB230618);
  }

  return result;
}

uint64_t sub_1A5C02BFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x32366C6562616CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x62396C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x31386C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x66396C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65626C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x32326C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61306C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65656C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x30616C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x39376C6562616CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x63616C6562616CLL && a2 == 0xE700000000000000)
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

uint64_t sub_1A5C02FB0(uint64_t a1)
{
  v2 = sub_1A5C033C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C02FEC(uint64_t a1)
{
  v2 = sub_1A5C033C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C03028(uint64_t a1)
{
  v2 = sub_1A5C03470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C03064(uint64_t a1)
{
  v2 = sub_1A5C03470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C030A0(uint64_t a1)
{
  v2 = sub_1A5C0341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C030DC(uint64_t a1)
{
  v2 = sub_1A5C0341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t S1JC7R3k4455fKQz0dY1VhQRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1CB8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1CC0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1CC8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C033C8();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C0341C();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C03470();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5C033C8()
{
  result = qword_1EB2306B0;
  if (!qword_1EB2306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2306B0);
  }

  return result;
}

unint64_t sub_1A5C0341C()
{
  result = qword_1EB2306B8;
  if (!qword_1EB2306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2306B8);
  }

  return result;
}

unint64_t sub_1A5C03470()
{
  result = qword_1EB2306C0[0];
  if (!qword_1EB2306C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2306C0);
  }

  return result;
}

uint64_t S1JC7R3k4455fKQz0dY1VhQRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t S1JC7R3k4455fKQz0dY1VhQRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1CD0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1CD8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1CE0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C033C8();
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
    *v21 = &type metadata for S1JC7R3k4455fKQz0dY1VhQRequest.Revision;
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
    sub_1A5C0341C();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C03470();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t S1JC7R3k4455fKQz0dY1VhQRequest.init(revision:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 2;
  static NormalizedRect.fullImage.getter((a2 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a2 + 48) = result;
  *(a2 + 40) = v3;
  return result;
}

__n128 S1JC7R3k4455fKQz0dY1VhQRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 S1JC7R3k4455fKQz0dY1VhQRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

Vision::S1JC7R3k4455fKQz0dY1VhQRequest::AdjustmentKey_optional __swiftcall S1JC7R3k4455fKQz0dY1VhQRequest.AdjustmentKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t S1JC7R3k4455fKQz0dY1VhQRequest.AdjustmentKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x4379654B68676948;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0x736143726F6C6F43;
    }

    if (*v0)
    {
      v6 = 0x74736172746E6F43;
    }

    if (*v0 <= 1u)
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
    v2 = 0x79636E6172626956;
    v3 = 0x6867696C68676948;
    if (v1 != 7)
    {
      v3 = 0x79636E6172626956;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (v1 != 4)
    {
      v4 = 0x6867696C68676948;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1A5C03C40@<X0>(unint64_t *a1@<X8>)
{
  result = S1JC7R3k4455fKQz0dY1VhQRequest.AdjustmentKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5C03C74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000049;
  v3 = 0x4379654B68676948;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xD000000000000016;
    v14 = 0x80000001A6056030;
    if (a1 != 2)
    {
      v13 = 0x736143726F6C6F43;
      v14 = 0xEB00000000494374;
    }

    v15 = 0x74736172746E6F43;
    v16 = 0xEA00000000004943;
    if (!a1)
    {
      v15 = 0x4379654B68676948;
      v16 = 0xE900000000000049;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x79636E6172626956;
    v6 = 0xEA00000000004943;
    v7 = 0x6867696C68676948;
    v8 = 0xEF32565F49437374;
    if (a1 != 7)
    {
      v7 = 0x79636E6172626956;
      v8 = 0xED000032565F4943;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x80000001A6056060;
    v10 = 0xD000000000000017;
    if (a1 != 4)
    {
      v10 = 0x6867696C68676948;
      v9 = 0xEC00000049437374;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001A6056060;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEC00000049437374;
        if (v11 != 0x6867696C68676948)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v2 = 0xEF32565F49437374;
        if (v11 != 0x6867696C68676948)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v3 = 0x79636E6172626956;
      v2 = 0xED000032565F4943;
      goto LABEL_45;
    }

    v17 = 0x79636E6172626956;
LABEL_40:
    v2 = 0xEA00000000004943;
    if (v11 != v17)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000001A6056030;
      if (v11 != 0xD000000000000016)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v2 = 0xEB00000000494374;
      if (v11 != 0x736143726F6C6F43)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_46;
  }

  if (a2)
  {
    v17 = 0x74736172746E6F43;
    goto LABEL_40;
  }

LABEL_45:
  if (v11 != v3)
  {
LABEL_49:
    v18 = sub_1A5FD4B0C();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v18 = 1;
LABEL_50:

  return v18 & 1;
}

uint64_t sub_1A5C0403C()
{
  sub_1A5FD4C1C();
  sub_1A5C0408C();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C0408C()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5C0421C()
{
  sub_1A5FD4C1C();
  sub_1A5C0408C();
  return sub_1A5FD4C6C();
}

void S1JC7R3k4455fKQz0dY1VhQRequest.supportedAdjustments.getter()
{
  sub_1A5CD38E8();
  v0 = sub_1A5C04D74();

  sub_1A5BD9578(v1, &type metadata for S1JC7R3k4455fKQz0dY1VhQRequest, v0);

  sub_1A5B16F58(0, &qword_1EB1F1CF0);
  if (swift_dynamicCastMetatype())
  {
    v2 = [objc_opt_self() allPhotosAdjustmentKeys];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1A5FD3F4C();

      v5 = 0;
      v6 = *(v4 + 16);
      v7 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v8 = v4 + 40 + 16 * v5;
      while (v6 != v5)
      {
        if (v5 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        ++v5;
        v9 = v8 + 16;

        v10 = sub_1A5FD48AC();

        v8 = v9;
        if (v10 < 9)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1A5C04C80(0, *(v7 + 2) + 1, 1, v7);
          }

          v12 = *(v7 + 2);
          v11 = *(v7 + 3);
          v13 = v12 + 1;
          if (v12 >= v11 >> 1)
          {
            v14 = sub_1A5C04C80((v11 > 1), v12 + 1, 1, v7);
            v13 = v12 + 1;
            v7 = v14;
          }

          *(v7 + 2) = v13;
          v7[v12 + 32] = v10;
          goto LABEL_6;
        }
      }

LABEL_27:
    }
  }

  else
  {
    sub_1A5B16F58(0, &qword_1EB1F1CF8);
    if (swift_dynamicCastMetatype())
    {
      v15 = [objc_opt_self() supportedAdjustmentKeys];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1A5FD3F4C();

        v18 = 0;
        v19 = *(v17 + 16);
        v20 = MEMORY[0x1E69E7CC0];
LABEL_18:
        v21 = v17 + 40 + 16 * v18;
        while (v19 != v18)
        {
          if (v18 >= *(v17 + 16))
          {
LABEL_29:
            __break(1u);
            return;
          }

          ++v18;
          v22 = v21 + 16;

          v23 = sub_1A5FD48AC();

          v21 = v22;
          if (v23 < 9)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1A5C04C80(0, *(v20 + 2) + 1, 1, v20);
            }

            v25 = *(v20 + 2);
            v24 = *(v20 + 3);
            v26 = v25 + 1;
            if (v25 >= v24 >> 1)
            {
              v27 = sub_1A5C04C80((v24 > 1), v25 + 1, 1, v20);
              v26 = v25 + 1;
              v20 = v27;
            }

            *(v20 + 2) = v26;
            v20[v25 + 32] = v23;
            goto LABEL_18;
          }
        }

        goto LABEL_27;
      }
    }
  }
}

uint64_t sub_1A5C045D4()
{
  sub_1A5C04DC8();
  result = sub_1A5D4EC2C();
  qword_1EB2306A8 = result;
  return result;
}

uint64_t static S1JC7R3k4455fKQz0dY1VhQRequest.allSupportedRevisions.getter()
{
  if (qword_1EB2306A0 != -1)
  {
    swift_once();
  }
}

uint64_t S1JC7R3k4455fKQz0dY1VhQRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C04DC8();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for S1JC7R3k4455fKQz0dY1VhQRequest, v3);
}

uint64_t S1JC7R3k4455fKQz0dY1VhQRequest.hash(into:)(__int128 *a1)
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

uint64_t S1JC7R3k4455fKQz0dY1VhQRequest.hashValue.getter()
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

uint64_t sub_1A5C04830(uint64_t a1)
{
  v2 = sub_1A5C04D74();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C0486C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C04DC8();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C048D8(uint64_t a1)
{
  v2 = sub_1A5B5DEC0();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C04964(uint64_t a1, uint64_t a2)
{
  sub_1A5B5DEC0();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5C049B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  LOBYTE(v19) = *v1;
  v5 = *(v1 + 24);
  v20 = *(v1 + 8);
  v21 = v5;
  v22 = v3;
  v23 = v4;
  v6 = sub_1A5C04D74();
  result = sub_1A5BDA35C(a1, &type metadata for S1JC7R3k4455fKQz0dY1VhQRequest, v6);
  if ((v3 & 1) == 0)
  {
    v8 = result;
    v9 = sub_1A5FD3D5C();
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *&v21 = sub_1A5B16F58(0, &qword_1EB1F3E80);
    v19 = v12;
    sub_1A5B101C8(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v18, v9, v11, isUniquelyReferenced_nonNull_native);

    v14 = sub_1A5FD3D5C();
    v16 = v15;
    *&v21 = MEMORY[0x1E69E6370];
    LOBYTE(v19) = 1;
    sub_1A5B101C8(&v19, v18);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v18, v14, v16, v17);

    return v8;
  }

  return result;
}

void sub_1A5C04B34(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorVN1JC7R3k4455fKQz0dY1VhQConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F1D08);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

uint64_t sub_1A5C04C4C()
{
  if (*v0)
  {
    return 3737841664;
  }

  else
  {
    return 1;
  }
}

char *sub_1A5C04C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D50);
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

unint64_t sub_1A5C04D74()
{
  result = qword_1EB1F1CE8;
  if (!qword_1EB1F1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1CE8);
  }

  return result;
}

unint64_t sub_1A5C04DC8()
{
  result = qword_1EB1F1D00;
  if (!qword_1EB1F1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D00);
  }

  return result;
}

unint64_t sub_1A5C04E1C()
{
  result = qword_1EB1F1D10;
  if (!qword_1EB1F1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D10);
  }

  return result;
}

unint64_t sub_1A5C04E78()
{
  result = qword_1EB1F1D18;
  if (!qword_1EB1F1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D18);
  }

  return result;
}

unint64_t sub_1A5C04ECC(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B65FA4();
  result = sub_1A5C04EFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C04EFC()
{
  result = qword_1EB1F1D20;
  if (!qword_1EB1F1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D20);
  }

  return result;
}

unint64_t sub_1A5C04F54()
{
  result = qword_1EB1F1D28;
  if (!qword_1EB1F1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D28);
  }

  return result;
}

unint64_t sub_1A5C04FAC()
{
  result = qword_1EB1F1D30;
  if (!qword_1EB1F1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D30);
  }

  return result;
}

unint64_t sub_1A5C05000(uint64_t a1)
{
  result = sub_1A5B5DEC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C05070(uint64_t a1)
{
  result = sub_1A5C04DC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C05098(uint64_t a1)
{
  result = sub_1A5C04D74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C050C0(uint64_t a1)
{
  result = sub_1A5C050E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C050E8()
{
  result = qword_1EB1F1D40;
  if (!qword_1EB1F1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D40);
  }

  return result;
}

unint64_t sub_1A5C051A0()
{
  result = qword_1EB231350[0];
  if (!qword_1EB231350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB231350);
  }

  return result;
}

unint64_t sub_1A5C051F8()
{
  result = qword_1EB231460;
  if (!qword_1EB231460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231460);
  }

  return result;
}

unint64_t sub_1A5C05250()
{
  result = qword_1EB231468[0];
  if (!qword_1EB231468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB231468);
  }

  return result;
}

unint64_t sub_1A5C052A8()
{
  result = qword_1EB2314F0;
  if (!qword_1EB2314F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2314F0);
  }

  return result;
}

unint64_t sub_1A5C05300()
{
  result = qword_1EB2314F8[0];
  if (!qword_1EB2314F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2314F8);
  }

  return result;
}

unint64_t sub_1A5C05358()
{
  result = qword_1EB231580;
  if (!qword_1EB231580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231580);
  }

  return result;
}

unint64_t sub_1A5C053B0()
{
  result = qword_1EB231588[0];
  if (!qword_1EB231588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB231588);
  }

  return result;
}

unint64_t sub_1A5C05404()
{
  result = qword_1EB1F1D48;
  if (!qword_1EB1F1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1D48);
  }

  return result;
}

uint64_t sub_1A5C05458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C054A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = v6;
  v47 = &v35 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1A5FD456C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v20 = a1;
  v21 = v11;
  v23 = v22;
  (*(v13 + 16))(v15, v20, v12, v17);
  if ((*(v23 + 48))(v15, 1, v21) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return (*(a3 + 24))(a2, a3);
  }

  v25 = *(v23 + 32);
  v35 = v21;
  v25(v19, v15, v21);
  v26 = (*(a3 + 32))(v19, a2, a3);
  v43 = a3;
  if (!v26)
  {
    v26 = sub_1A5FD3F8C();
  }

  v27 = v26;
  swift_getTupleTypeMetadata2();
  v28 = sub_1A5FD3F8C();
  v42 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = sub_1A5C05C48(v28, AssociatedTypeWitness, &type metadata for Joint, AssociatedConformanceWitness);

  v53 = v29;
  if (sub_1A5FD3FCC())
  {
    v30 = 0;
    v39 = *(v43 + 24);
    v40 = v43 + 24;
    v46 = (v45 + 16);
    v38 = (v45 + 8);
    v37 = v19;
    v31 = v47;
    do
    {
      v32 = sub_1A5FD3FAC();
      sub_1A5FD3F6C();
      if (v32)
      {
        v33 = *(v45 + 16);
        v33(v47, v27 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, AssociatedTypeWitness);
        v19 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_1A5FD46DC();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        *&v51[0] = result;
        v33 = *v46;
        (*v46)(v47, v51, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v19 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      v33(v44, v31, AssociatedTypeWitness);
      v39(v42, v43);
      sub_1A5FD3C8C();

      v48 = v51[0];
      v49 = v51[1];
      v50 = v52;
      sub_1A5FD3C5C();
      sub_1A5FD3C9C();
      (*v38)(v31, AssociatedTypeWitness);
      ++v30;
      v34 = v19 == sub_1A5FD3FCC();
      v19 = v37;
    }

    while (!v34);
  }

  (*(v23 + 8))(v19, v35);
  return v53;
}

unint64_t sub_1A5C05A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5FD3CAC();

  return sub_1A5C05AC0(a1, v6, a2, a3);
}

unint64_t sub_1A5C05AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1A5FD3D0C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1A5C05C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A5FD3FCC())
  {
    sub_1A5FD488C();
    v13 = sub_1A5FD487C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A5FD3FCC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A5FD3FAC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A5FD46DC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A5C05A64(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1A5C05F84(uint64_t a1)
{
  v2 = sub_1A5C06A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C05FC0(uint64_t a1)
{
  v2 = sub_1A5C06A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C05FFC()
{
  v1 = *v0;
  v2 = 0x72437265746E6563;
  v3 = 0x466F54656C616373;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x466F54656C616373;
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

uint64_t sub_1A5C060A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C13CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C060CC(uint64_t a1)
{
  v2 = sub_1A5C06870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C06108(uint64_t a1)
{
  v2 = sub_1A5C06870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C06144(uint64_t a1)
{
  v2 = sub_1A5C0696C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C06180(uint64_t a1)
{
  v2 = sub_1A5C0696C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C061BC(uint64_t a1)
{
  v2 = sub_1A5C068C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C061F8(uint64_t a1)
{
  v2 = sub_1A5C068C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C06234(uint64_t a1)
{
  v2 = sub_1A5C069C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C06270(uint64_t a1)
{
  v2 = sub_1A5C069C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C062AC(uint64_t a1)
{
  v2 = sub_1A5C06918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C062E8(uint64_t a1)
{
  v2 = sub_1A5C06918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageCropAndScaleAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D58);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D60);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D68);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D70);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D78);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D80);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1A5C06870();
  sub_1A5FD4CDC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1A5C069C0();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1A5C06A14();
      v31 = v45;
      sub_1A5FD49EC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1A5C0696C();
      v22 = v33;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1A5C06918();
      v22 = v36;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1A5C068C4();
      v22 = v39;
      v23 = v45;
      sub_1A5FD49EC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_1A5C06870()
{
  result = qword_1EB231610;
  if (!qword_1EB231610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231610);
  }

  return result;
}

unint64_t sub_1A5C068C4()
{
  result = qword_1EB231618;
  if (!qword_1EB231618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231618);
  }

  return result;
}

unint64_t sub_1A5C06918()
{
  result = qword_1EB231620;
  if (!qword_1EB231620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231620);
  }

  return result;
}

unint64_t sub_1A5C0696C()
{
  result = qword_1EB231628;
  if (!qword_1EB231628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231628);
  }

  return result;
}

unint64_t sub_1A5C069C0()
{
  result = qword_1EB231630;
  if (!qword_1EB231630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231630);
  }

  return result;
}

unint64_t sub_1A5C06A14()
{
  result = qword_1EB231638;
  if (!qword_1EB231638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231638);
  }

  return result;
}

uint64_t ImageCropAndScaleAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D88);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D90);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1D98);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DA0);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DA8);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A5C06870();
  v16 = v46;
  sub_1A5FD4CCC();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_1A5FD49BC();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_1A5FD471C();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v26 = &type metadata for ImageCropAndScaleAction;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_1A5C069C0();
          sub_1A5FD48CC();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_1A5C06A14();
          sub_1A5FD48CC();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_1A5C0696C();
          sub_1A5FD48CC();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_1A5C06918();
            v29 = v42;
            sub_1A5FD48CC();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_1A5C068C4();
            sub_1A5FD48CC();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1A5C07220()
{
  if (*v0)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_1A5C07250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
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

uint64_t sub_1A5C07328(uint64_t a1)
{
  v2 = sub_1A5C07740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C07364(uint64_t a1)
{
  v2 = sub_1A5C07740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C073A0(uint64_t a1)
{
  v2 = sub_1A5C077E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C073DC(uint64_t a1)
{
  v2 = sub_1A5C077E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C07418(uint64_t a1)
{
  v2 = sub_1A5C07794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C07454(uint64_t a1)
{
  v2 = sub_1A5C07794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Chirality.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DB8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DC0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DC8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C07740();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C07794();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C077E8();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5C07740()
{
  result = qword_1EB231640;
  if (!qword_1EB231640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231640);
  }

  return result;
}

unint64_t sub_1A5C07794()
{
  result = qword_1EB231648;
  if (!qword_1EB231648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231648);
  }

  return result;
}

unint64_t sub_1A5C077E8()
{
  result = qword_1EB231650;
  if (!qword_1EB231650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231650);
  }

  return result;
}

uint64_t Chirality.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t Chirality.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DD0);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DD8);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DE0);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C07740();
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
    *v21 = &type metadata for Chirality;
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
    sub_1A5C07794();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C077E8();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1A5C07D34(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6969637361;
      break;
    case 2:
      v3 = 1818717797;
      goto LABEL_8;
    case 3:
      result = 0x6873696E6164;
      break;
    case 4:
      result = 0x6863747564;
      break;
    case 5:
      result = 0x68636E657266;
      break;
    case 6:
      result = 0x6E616D726567;
      break;
    case 7:
      result = 0x69646E616C656369;
      break;
    case 8:
      result = 0x6E61696C617469;
      break;
    case 9:
      result = 0x6169676577726F6ELL;
      break;
    case 10:
      result = 0x6575677574726F70;
      break;
    case 11:
      v3 = 1851879539;
LABEL_8:
      result = v3 | 0x68736900000000;
      break;
    case 12:
      result = 0x68736964657773;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5C07E7C(uint64_t a1)
{
  v2 = sub_1A5C09540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C07EB8(uint64_t a1)
{
  v2 = sub_1A5C09540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C07EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C13EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C07F30(uint64_t a1)
{
  v2 = sub_1A5C09150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C07F6C(uint64_t a1)
{
  v2 = sub_1A5C09150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C07FA8(uint64_t a1)
{
  v2 = sub_1A5C09498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C07FE4(uint64_t a1)
{
  v2 = sub_1A5C09498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08020(uint64_t a1)
{
  v2 = sub_1A5C09444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0805C(uint64_t a1)
{
  v2 = sub_1A5C09444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08098(uint64_t a1)
{
  v2 = sub_1A5C094EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C080D4(uint64_t a1)
{
  v2 = sub_1A5C094EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08110(uint64_t a1)
{
  v2 = sub_1A5C093F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0814C(uint64_t a1)
{
  v2 = sub_1A5C093F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08188(uint64_t a1)
{
  v2 = sub_1A5C0939C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C081C4(uint64_t a1)
{
  v2 = sub_1A5C0939C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08200(uint64_t a1)
{
  v2 = sub_1A5C09348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0823C(uint64_t a1)
{
  v2 = sub_1A5C09348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08278(uint64_t a1)
{
  v2 = sub_1A5C092F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C082B4(uint64_t a1)
{
  v2 = sub_1A5C092F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C082F0(uint64_t a1)
{
  v2 = sub_1A5C09594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0832C(uint64_t a1)
{
  v2 = sub_1A5C09594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08368(uint64_t a1)
{
  v2 = sub_1A5C092A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C083A4(uint64_t a1)
{
  v2 = sub_1A5C092A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C083E0(uint64_t a1)
{
  v2 = sub_1A5C0924C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0841C(uint64_t a1)
{
  v2 = sub_1A5C0924C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C08458(uint64_t a1)
{
  v2 = sub_1A5C091F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C08494(uint64_t a1)
{
  v2 = sub_1A5C091F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C084D0(uint64_t a1)
{
  v2 = sub_1A5C091A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0850C(uint64_t a1)
{
  v2 = sub_1A5C091A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextRecognitionCharacterSet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DE8);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DF0);
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1DF8);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E00);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E08);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E10);
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v44 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E18);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v44 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E20);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v44 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E28);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v44 - v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E30);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v44 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E38);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v44 - v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E40);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E48);
  v45 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E50);
  v26 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v28 = &v44 - v27;
  v29 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C09150();
  v81 = v28;
  sub_1A5FD4CDC();
  v30 = (v26 + 8);
  switch(v29)
  {
    case 1:
      v84 = 1;
      sub_1A5C09540();
      v39 = v81;
      v40 = v82;
      sub_1A5FD49EC();
      (*(v46 + 8))(v22, v47);
      return (*v30)(v39, v40);
    case 2:
      v85 = 2;
      sub_1A5C094EC();
      v37 = v48;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      (*(v49 + 8))(v37, v50);
      return (*v30)(v32, v31);
    case 3:
      v86 = 3;
      sub_1A5C09498();
      v38 = v51;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      (*(v52 + 8))(v38, v53);
      return (*v30)(v32, v31);
    case 4:
      v87 = 4;
      sub_1A5C09444();
      v36 = v54;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      (*(v55 + 8))(v36, v56);
      return (*v30)(v32, v31);
    case 5:
      v88 = 5;
      sub_1A5C093F0();
      v42 = v57;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      (*(v58 + 8))(v42, v59);
      return (*v30)(v32, v31);
    case 6:
      v89 = 6;
      sub_1A5C0939C();
      v43 = v60;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      (*(v61 + 8))(v43, v62);
      return (*v30)(v32, v31);
    case 7:
      v90 = 7;
      sub_1A5C09348();
      v33 = v63;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      v35 = v64;
      v34 = v65;
      goto LABEL_15;
    case 8:
      v91 = 8;
      sub_1A5C092F4();
      v33 = v66;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      v35 = v67;
      v34 = v68;
      goto LABEL_15;
    case 9:
      v92 = 9;
      sub_1A5C092A0();
      v33 = v69;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      v35 = v70;
      v34 = v71;
      goto LABEL_15;
    case 10:
      v93 = 10;
      sub_1A5C0924C();
      v33 = v72;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      v35 = v73;
      v34 = v74;
      goto LABEL_15;
    case 11:
      v94 = 11;
      sub_1A5C091F8();
      v33 = v75;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      v35 = v76;
      v34 = v77;
      goto LABEL_15;
    case 12:
      v95 = 12;
      sub_1A5C091A4();
      v33 = v78;
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      v35 = v79;
      v34 = v80;
LABEL_15:
      (*(v35 + 8))(v33, v34);
      break;
    default:
      v83 = 0;
      sub_1A5C09594();
      v32 = v81;
      v31 = v82;
      sub_1A5FD49EC();
      (*(v45 + 8))(v25, v23);
      break;
  }

  return (*v30)(v32, v31);
}

unint64_t sub_1A5C09150()
{
  result = qword_1EB231658;
  if (!qword_1EB231658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231658);
  }

  return result;
}

unint64_t sub_1A5C091A4()
{
  result = qword_1EB231660;
  if (!qword_1EB231660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231660);
  }

  return result;
}

unint64_t sub_1A5C091F8()
{
  result = qword_1EB231668;
  if (!qword_1EB231668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231668);
  }

  return result;
}

unint64_t sub_1A5C0924C()
{
  result = qword_1EB231670;
  if (!qword_1EB231670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231670);
  }

  return result;
}

unint64_t sub_1A5C092A0()
{
  result = qword_1EB231678;
  if (!qword_1EB231678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231678);
  }

  return result;
}

unint64_t sub_1A5C092F4()
{
  result = qword_1EB231680;
  if (!qword_1EB231680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231680);
  }

  return result;
}

unint64_t sub_1A5C09348()
{
  result = qword_1EB231688;
  if (!qword_1EB231688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231688);
  }

  return result;
}

unint64_t sub_1A5C0939C()
{
  result = qword_1EB231690;
  if (!qword_1EB231690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231690);
  }

  return result;
}

unint64_t sub_1A5C093F0()
{
  result = qword_1EB231698;
  if (!qword_1EB231698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231698);
  }

  return result;
}

unint64_t sub_1A5C09444()
{
  result = qword_1EB2316A0;
  if (!qword_1EB2316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316A0);
  }

  return result;
}

unint64_t sub_1A5C09498()
{
  result = qword_1EB2316A8;
  if (!qword_1EB2316A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316A8);
  }

  return result;
}

unint64_t sub_1A5C094EC()
{
  result = qword_1EB2316B0;
  if (!qword_1EB2316B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316B0);
  }

  return result;
}

unint64_t sub_1A5C09540()
{
  result = qword_1EB2316B8;
  if (!qword_1EB2316B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316B8);
  }

  return result;
}

unint64_t sub_1A5C09594()
{
  result = qword_1EB2316C0;
  if (!qword_1EB2316C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316C0);
  }

  return result;
}

uint64_t TextRecognitionCharacterSet.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v102 = a2;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E58);
  v89 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E60);
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v97 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E68);
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v96 = v62 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E70);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v95 = v62 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E78);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v94 = v62 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E80);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v93 = v62 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E88);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v91 = v62 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E90);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v100 = v62 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1E98);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v99 = v62 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EA0);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v92 = v62 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EA8);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v90 = v62 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EB0);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v17 = v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EB8);
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EC0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v62 - v23;
  v25 = a1[3];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A5C09150();
  v26 = v103;
  sub_1A5FD4CCC();
  if (v26)
  {
LABEL_34:
    v60 = v104;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v64 = v20;
  v63 = v18;
  v27 = v99;
  v28 = v100;
  v65 = 0;
  v30 = v101;
  v29 = v102;
  v103 = v22;
  v31 = sub_1A5FD49BC();
  if (*(v31 + 16) != 1 || (v32 = *(v31 + 32), v32 == 13))
  {
    v35 = sub_1A5FD471C();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v37 = &type metadata for TextRecognitionCharacterSet;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v103 + 8))(v24, v21);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v62[1] = v31;
  switch(v32)
  {
    case 1:
      v106 = 1;
      sub_1A5C09540();
      v53 = v65;
      sub_1A5FD48CC();
      if (v53)
      {
        goto LABEL_32;
      }

      (*(v67 + 8))(v17, v68);
      goto LABEL_37;
    case 2:
      v107 = 2;
      sub_1A5C094EC();
      v47 = v90;
      v48 = v65;
      sub_1A5FD48CC();
      if (v48)
      {
        goto LABEL_32;
      }

      (*(v69 + 8))(v47, v70);
      goto LABEL_37;
    case 3:
      v108 = 3;
      sub_1A5C09498();
      v49 = v92;
      v50 = v65;
      sub_1A5FD48CC();
      if (v50)
      {
        goto LABEL_32;
      }

      (*(v71 + 8))(v49, v72);
      goto LABEL_37;
    case 4:
      v109 = 4;
      sub_1A5C09444();
      v42 = v65;
      sub_1A5FD48CC();
      if (v42)
      {
        goto LABEL_32;
      }

      (*(v73 + 8))(v27, v74);
      goto LABEL_37;
    case 5:
      v110 = 5;
      sub_1A5C093F0();
      v54 = v65;
      sub_1A5FD48CC();
      if (v54)
      {
        goto LABEL_32;
      }

      (*(v75 + 8))(v28, v76);
      goto LABEL_37;
    case 6:
      v111 = 6;
      sub_1A5C0939C();
      v55 = v91;
      v56 = v65;
      sub_1A5FD48CC();
      if (v56)
      {
        goto LABEL_32;
      }

      (*(v77 + 8))(v55, v78);
      goto LABEL_37;
    case 7:
      v112 = 7;
      sub_1A5C09348();
      v51 = v93;
      v52 = v65;
      sub_1A5FD48CC();
      if (v52)
      {
        goto LABEL_32;
      }

      (*(v79 + 8))(v51, v80);
      goto LABEL_37;
    case 8:
      v113 = 8;
      sub_1A5C092F4();
      v58 = v94;
      v59 = v65;
      sub_1A5FD48CC();
      if (v59)
      {
        goto LABEL_32;
      }

      (*(v81 + 8))(v58, v82);
      goto LABEL_37;
    case 9:
      v114 = 9;
      sub_1A5C092A0();
      v45 = v95;
      v46 = v65;
      sub_1A5FD48CC();
      if (v46)
      {
        goto LABEL_32;
      }

      (*(v83 + 8))(v45, v84);
      goto LABEL_37;
    case 10:
      v115 = 10;
      sub_1A5C0924C();
      v38 = v96;
      v57 = v65;
      sub_1A5FD48CC();
      if (v57)
      {
        goto LABEL_32;
      }

      v41 = v85;
      v40 = v86;
      goto LABEL_30;
    case 11:
      v116 = 11;
      sub_1A5C091F8();
      v38 = v97;
      v39 = v65;
      sub_1A5FD48CC();
      if (v39)
      {
        goto LABEL_32;
      }

      v41 = v87;
      v40 = v88;
LABEL_30:
      (*(v41 + 8))(v38, v40);
      goto LABEL_37;
    case 12:
      v117 = 12;
      sub_1A5C091A4();
      v43 = v98;
      v44 = v65;
      sub_1A5FD48CC();
      if (v44)
      {
        goto LABEL_32;
      }

      (*(v89 + 8))(v43, v30);
      goto LABEL_37;
    default:
      v105 = 0;
      sub_1A5C09594();
      v33 = v64;
      v34 = v65;
      sub_1A5FD48CC();
      if (v34)
      {
LABEL_32:
        (*(v103 + 8))(v24, v21);
        goto LABEL_33;
      }

      (*(v66 + 8))(v33, v63);
LABEL_37:
      (*(v103 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v60 = v104;
      *v29 = v32;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

void sub_1A5C0A454(void *a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for MRCSymbology(0);
  sub_1A5C142B4(&qword_1EB1F1EC8, type metadata accessor for MRCSymbology);
  if (sub_1A5FD3D0C())
  {
    v4 = 0;
  }

  else if (sub_1A5FD3D0C())
  {
    v4 = 1;
  }

  else if (sub_1A5FD3D0C())
  {
    v4 = 2;
  }

  else if (sub_1A5FD3D0C())
  {
    v4 = 3;
  }

  else if (sub_1A5FD3D0C())
  {
    v4 = 4;
  }

  else if (sub_1A5FD3D0C())
  {
    v4 = 5;
  }

  else if (sub_1A5FD3D0C())
  {
    v4 = 6;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 7;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 8;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 9;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 10;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 11;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 12;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 13;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 14;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 15;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 16;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 17;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 18;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 19;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 20;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 21;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 22;
  }

  else if (sub_1A5FD3D0C())
  {

    v4 = 23;
  }

  else
  {
    v5 = sub_1A5FD3D0C();

    if (v5)
    {
      v4 = 24;
    }

    else
    {
      v4 = 25;
    }
  }

  *a2 = v4;
}

void sub_1A5C0A9FC(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  if (v4 == sub_1A5FD3D5C() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1A5FD4B0C();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = sub_1A5FD3D5C();
  v13 = v12;
  if (v11 == sub_1A5FD3D5C() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = sub_1A5FD4B0C();

    if (v16)
    {

      v10 = 1;
    }

    else
    {
      v17 = sub_1A5FD3D5C();
      v19 = v18;
      if (v17 == sub_1A5FD3D5C() && v19 == v20)
      {

        v10 = 2;
      }

      else
      {
        v21 = sub_1A5FD4B0C();

        if (v21)
        {

          v10 = 2;
        }

        else
        {
          v22 = sub_1A5FD3D5C();
          v24 = v23;
          if (v22 == sub_1A5FD3D5C() && v24 == v25)
          {

            v10 = 3;
          }

          else
          {
            v26 = sub_1A5FD4B0C();

            if (v26)
            {

              v10 = 3;
            }

            else
            {
              v27 = sub_1A5FD3D5C();
              v29 = v28;
              if (v27 == sub_1A5FD3D5C() && v29 == v30)
              {

                v10 = 4;
              }

              else
              {
                v31 = sub_1A5FD4B0C();

                if (v31)
                {

                  v10 = 4;
                }

                else
                {
                  v32 = sub_1A5FD3D5C();
                  v34 = v33;
                  if (v32 == sub_1A5FD3D5C() && v34 == v35)
                  {

                    v10 = 5;
                  }

                  else
                  {
                    v36 = sub_1A5FD4B0C();

                    if (v36)
                    {

                      v10 = 5;
                    }

                    else
                    {
                      v37 = sub_1A5FD3D5C();
                      v39 = v38;
                      if (v37 == sub_1A5FD3D5C() && v39 == v40)
                      {

                        v10 = 6;
                      }

                      else
                      {
                        v41 = sub_1A5FD4B0C();

                        if (v41)
                        {

                          v10 = 6;
                        }

                        else
                        {
                          v42 = sub_1A5FD3D5C();
                          v44 = v43;
                          if (v42 == sub_1A5FD3D5C() && v44 == v45)
                          {

                            v10 = 7;
                          }

                          else
                          {
                            v46 = sub_1A5FD4B0C();

                            if (v46)
                            {

                              v10 = 7;
                            }

                            else
                            {
                              v47 = sub_1A5FD3D5C();
                              v49 = v48;
                              if (v47 == sub_1A5FD3D5C() && v49 == v50)
                              {

                                v10 = 8;
                              }

                              else
                              {
                                v51 = sub_1A5FD4B0C();

                                if (v51)
                                {

                                  v10 = 8;
                                }

                                else
                                {
                                  v52 = sub_1A5FD3D5C();
                                  v54 = v53;
                                  if (v52 == sub_1A5FD3D5C() && v54 == v55)
                                  {

                                    v10 = 9;
                                  }

                                  else
                                  {
                                    v56 = sub_1A5FD4B0C();

                                    if (v56)
                                    {

                                      v10 = 9;
                                    }

                                    else
                                    {
                                      v57 = sub_1A5FD3D5C();
                                      v59 = v58;
                                      if (v57 == sub_1A5FD3D5C() && v59 == v60)
                                      {

                                        v10 = 10;
                                      }

                                      else
                                      {
                                        v61 = sub_1A5FD4B0C();

                                        if (v61)
                                        {

                                          v10 = 10;
                                        }

                                        else
                                        {
                                          v62 = sub_1A5FD3D5C();
                                          v64 = v63;
                                          if (v62 == sub_1A5FD3D5C() && v64 == v65)
                                          {

                                            v10 = 11;
                                          }

                                          else
                                          {
                                            v66 = sub_1A5FD4B0C();

                                            if (v66)
                                            {

                                              v10 = 11;
                                            }

                                            else
                                            {
                                              v67 = sub_1A5FD3D5C();
                                              v69 = v68;
                                              if (v67 == sub_1A5FD3D5C() && v69 == v70)
                                              {

                                                v10 = 12;
                                              }

                                              else
                                              {
                                                v71 = sub_1A5FD4B0C();

                                                if (v71)
                                                {

                                                  v10 = 12;
                                                }

                                                else
                                                {
                                                  v72 = sub_1A5FD3D5C();
                                                  v74 = v73;
                                                  if (v72 == sub_1A5FD3D5C() && v74 == v75)
                                                  {

                                                    v10 = 13;
                                                  }

                                                  else
                                                  {
                                                    v76 = sub_1A5FD4B0C();

                                                    if (v76)
                                                    {

                                                      v10 = 13;
                                                    }

                                                    else
                                                    {
                                                      v77 = sub_1A5FD3D5C();
                                                      v79 = v78;
                                                      if (v77 == sub_1A5FD3D5C() && v79 == v80)
                                                      {

                                                        v10 = 14;
                                                      }

                                                      else
                                                      {
                                                        v81 = sub_1A5FD4B0C();

                                                        if (v81)
                                                        {

                                                          v10 = 14;
                                                        }

                                                        else
                                                        {
                                                          v82 = sub_1A5FD3D5C();
                                                          v84 = v83;
                                                          if (v82 == sub_1A5FD3D5C() && v84 == v85)
                                                          {

                                                            v10 = 15;
                                                          }

                                                          else
                                                          {
                                                            v86 = sub_1A5FD4B0C();

                                                            if (v86)
                                                            {

                                                              v10 = 15;
                                                            }

                                                            else
                                                            {
                                                              v87 = sub_1A5FD3D5C();
                                                              v89 = v88;
                                                              if (v87 == sub_1A5FD3D5C() && v89 == v90)
                                                              {

                                                                v10 = 16;
                                                              }

                                                              else
                                                              {
                                                                v91 = sub_1A5FD4B0C();

                                                                if (v91)
                                                                {

                                                                  v10 = 16;
                                                                }

                                                                else
                                                                {
                                                                  v92 = sub_1A5FD3D5C();
                                                                  v94 = v93;
                                                                  if (v92 == sub_1A5FD3D5C() && v94 == v95)
                                                                  {

                                                                    v10 = 17;
                                                                  }

                                                                  else
                                                                  {
                                                                    v96 = sub_1A5FD4B0C();

                                                                    if (v96)
                                                                    {

                                                                      v10 = 17;
                                                                    }

                                                                    else
                                                                    {
                                                                      v97 = sub_1A5FD3D5C();
                                                                      v99 = v98;
                                                                      if (v97 == sub_1A5FD3D5C() && v99 == v100)
                                                                      {

                                                                        v10 = 18;
                                                                      }

                                                                      else
                                                                      {
                                                                        v101 = sub_1A5FD4B0C();

                                                                        if (v101)
                                                                        {

                                                                          v10 = 18;
                                                                        }

                                                                        else
                                                                        {
                                                                          v102 = sub_1A5FD3D5C();
                                                                          v104 = v103;
                                                                          if (v102 == sub_1A5FD3D5C() && v104 == v105)
                                                                          {

                                                                            v10 = 19;
                                                                          }

                                                                          else
                                                                          {
                                                                            v106 = sub_1A5FD4B0C();

                                                                            if (v106)
                                                                            {

                                                                              v10 = 19;
                                                                            }

                                                                            else
                                                                            {
                                                                              v107 = sub_1A5FD3D5C();
                                                                              v109 = v108;
                                                                              if (v107 == sub_1A5FD3D5C() && v109 == v110)
                                                                              {

                                                                                v10 = 20;
                                                                              }

                                                                              else
                                                                              {
                                                                                v111 = sub_1A5FD4B0C();

                                                                                if (v111)
                                                                                {

                                                                                  v10 = 20;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v112 = sub_1A5FD3D5C();
                                                                                  v114 = v113;
                                                                                  if (v112 == sub_1A5FD3D5C() && v114 == v115)
                                                                                  {

                                                                                    v10 = 21;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v116 = sub_1A5FD4B0C();

                                                                                    if (v116)
                                                                                    {

                                                                                      v10 = 21;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v117 = sub_1A5FD3D5C();
                                                                                      v119 = v118;
                                                                                      if (v117 == sub_1A5FD3D5C() && v119 == v120)
                                                                                      {

                                                                                        v10 = 22;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v121 = sub_1A5FD4B0C();

                                                                                        if (v121)
                                                                                        {

                                                                                          v10 = 22;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v122 = sub_1A5FD3D5C();
                                                                                          v124 = v123;
                                                                                          if (v122 == sub_1A5FD3D5C() && v124 == v125)
                                                                                          {

                                                                                            v10 = 23;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v126 = sub_1A5FD4B0C();

                                                                                            if (v126)
                                                                                            {

                                                                                              v10 = 23;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v127 = sub_1A5FD3D5C();
                                                                                              v129 = v128;
                                                                                              if (v127 == sub_1A5FD3D5C() && v129 == v130)
                                                                                              {

                                                                                                v10 = 24;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v131 = sub_1A5FD4B0C();

                                                                                                if (v131)
                                                                                                {
                                                                                                  v10 = 24;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v10 = 25;
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *a2 = v10;
}

unint64_t sub_1A5C0B7D4(char a1)
{
  result = 0x6365747A61;
  switch(a1)
  {
    case 1:
      result = 0x393365646F63;
      break;
    case 2:
      result = 0x6843393365646F63;
      break;
    case 3:
      result = 0x7546393365646F63;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x333965646F63;
      break;
    case 6:
      result = 0x69333965646F63;
      break;
    case 7:
      result = 0x38323165646F63;
      break;
    case 8:
      result = 0x7274614D61746164;
      break;
    case 9:
      result = 946757989;
      break;
    case 10:
      result = 0x33316E6165;
      break;
    case 11:
      result = 0x35666F3269;
      break;
    case 12:
      result = 0x65684335666F3269;
      break;
    case 13:
      result = 0x3431667469;
      break;
    case 14:
      result = 0x373134666470;
      break;
    case 15:
      result = 29297;
      break;
    case 16:
      result = 1701015669;
      break;
    case 17:
      result = 0x72616261646F63;
      break;
    case 18:
      result = 0x4261746144317367;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x4644506F7263696DLL;
      break;
    case 22:
      result = 0x52516F7263696DLL;
      break;
    case 23:
      result = 0x7373656C5069736DLL;
      break;
    case 24:
      result = 0x4370696C43707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5C0BA68(uint64_t a1)
{
  v2 = sub_1A5C10500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BAA4(uint64_t a1)
{
  v2 = sub_1A5C10500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BAE0(uint64_t a1)
{
  v2 = sub_1A5C10CE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BB1C(uint64_t a1)
{
  v2 = sub_1A5C10CE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BB58(uint64_t a1)
{
  v2 = sub_1A5C1074C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BB94(uint64_t a1)
{
  v2 = sub_1A5C1074C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BBD0(uint64_t a1)
{
  v2 = sub_1A5C10A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BC0C(uint64_t a1)
{
  v2 = sub_1A5C10A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BC48(uint64_t a1)
{
  v2 = sub_1A5C10C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BC84(uint64_t a1)
{
  v2 = sub_1A5C10C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BCC0(uint64_t a1)
{
  v2 = sub_1A5C10C8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BCFC(uint64_t a1)
{
  v2 = sub_1A5C10C8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BD38(uint64_t a1)
{
  v2 = sub_1A5C10B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BD74(uint64_t a1)
{
  v2 = sub_1A5C10B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BDB0(uint64_t a1)
{
  v2 = sub_1A5C10BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BDEC(uint64_t a1)
{
  v2 = sub_1A5C10BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BE28(uint64_t a1)
{
  v2 = sub_1A5C10B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BE64(uint64_t a1)
{
  v2 = sub_1A5C10B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BEA0(uint64_t a1)
{
  v2 = sub_1A5C10AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BEDC(uint64_t a1)
{
  v2 = sub_1A5C10AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C142FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C0BF54(uint64_t a1)
{
  v2 = sub_1A5C104AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0BF90(uint64_t a1)
{
  v2 = sub_1A5C104AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0BFCC(uint64_t a1)
{
  v2 = sub_1A5C10A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C008(uint64_t a1)
{
  v2 = sub_1A5C10A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C044(uint64_t a1)
{
  v2 = sub_1A5C10998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C080(uint64_t a1)
{
  v2 = sub_1A5C10998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C0BC(uint64_t a1)
{
  v2 = sub_1A5C109EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C0F8(uint64_t a1)
{
  v2 = sub_1A5C109EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C134(uint64_t a1)
{
  v2 = sub_1A5C106F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C170(uint64_t a1)
{
  v2 = sub_1A5C106F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C1AC(uint64_t a1)
{
  v2 = sub_1A5C106A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C1E8(uint64_t a1)
{
  v2 = sub_1A5C106A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C224(uint64_t a1)
{
  v2 = sub_1A5C10650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C260(uint64_t a1)
{
  v2 = sub_1A5C10650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C29C(uint64_t a1)
{
  v2 = sub_1A5C108F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C2D8(uint64_t a1)
{
  v2 = sub_1A5C108F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C314(uint64_t a1)
{
  v2 = sub_1A5C10944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C350(uint64_t a1)
{
  v2 = sub_1A5C10944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C38C(uint64_t a1)
{
  v2 = sub_1A5C1089C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C3C8(uint64_t a1)
{
  v2 = sub_1A5C1089C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C404(uint64_t a1)
{
  v2 = sub_1A5C105FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C440(uint64_t a1)
{
  v2 = sub_1A5C105FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C47C(uint64_t a1)
{
  v2 = sub_1A5C105A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C4B8(uint64_t a1)
{
  v2 = sub_1A5C105A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C4F4(uint64_t a1)
{
  v2 = sub_1A5C10554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C530(uint64_t a1)
{
  v2 = sub_1A5C10554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C56C(uint64_t a1)
{
  v2 = sub_1A5C10848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C5A8(uint64_t a1)
{
  v2 = sub_1A5C10848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C5E4(uint64_t a1)
{
  v2 = sub_1A5C107F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C620(uint64_t a1)
{
  v2 = sub_1A5C107F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0C65C(uint64_t a1)
{
  v2 = sub_1A5C107A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0C698(uint64_t a1)
{
  v2 = sub_1A5C107A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BarcodeSymbology.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1ED0);
  v138 = *(v4 - 8);
  v139 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v137 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1ED8);
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EE0);
  v132 = *(v8 - 8);
  v133 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v131 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EE8);
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EF0);
  v126 = *(v12 - 8);
  v127 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1EF8);
  v123 = *(v14 - 8);
  v124 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v68 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F00);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v68 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F08);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v68 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F10);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v68 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F18);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v68 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F20);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v68 - v20;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F28);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v68 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F30);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v68 - v22;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F38);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v68 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F40);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v68 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F48);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v68 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F50);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v68 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F58);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v68 - v27;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F60);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v68 - v28;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F68);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v68 - v29;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F70);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v68 - v30;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F78);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v68 - v31;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F80);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v68 - v32;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F88);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v34 = &v68 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F90);
  v68 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v68 - v36;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1F98);
  v38 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v40 = &v68 - v39;
  v41 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C104AC();
  v140 = v40;
  sub_1A5FD4CDC();
  v42 = (v38 + 8);
  switch(v41)
  {
    case 1:
      v142 = 1;
      sub_1A5C10C8C();
      v58 = v140;
      v59 = v141;
      sub_1A5FD49EC();
      (*(v69 + 8))(v34, v70);
      return (*v42)(v58, v59);
    case 2:
      v142 = 2;
      sub_1A5C10C38();
      v54 = v71;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v72 + 8))(v54, v73);
      return (*v42)(v43, v44);
    case 3:
      v142 = 3;
      sub_1A5C10BE4();
      v56 = v74;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v75 + 8))(v56, v76);
      return (*v42)(v43, v44);
    case 4:
      v142 = 4;
      sub_1A5C10B90();
      v48 = v77;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v78 + 8))(v48, v79);
      return (*v42)(v43, v44);
    case 5:
      v142 = 5;
      sub_1A5C10B3C();
      v62 = v80;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v81 + 8))(v62, v82);
      return (*v42)(v43, v44);
    case 6:
      v142 = 6;
      sub_1A5C10AE8();
      v64 = v83;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v84 + 8))(v64, v85);
      return (*v42)(v43, v44);
    case 7:
      v142 = 7;
      sub_1A5C10A94();
      v57 = v86;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v87 + 8))(v57, v88);
      return (*v42)(v43, v44);
    case 8:
      v142 = 8;
      sub_1A5C10A40();
      v67 = v89;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v90 + 8))(v67, v91);
      return (*v42)(v43, v44);
    case 9:
      v142 = 9;
      sub_1A5C109EC();
      v50 = v92;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v93 + 8))(v50, v94);
      return (*v42)(v43, v44);
    case 10:
      v142 = 10;
      sub_1A5C10998();
      v66 = v95;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v96 + 8))(v66, v97);
      return (*v42)(v43, v44);
    case 11:
      v142 = 11;
      sub_1A5C10944();
      v47 = v98;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v99 + 8))(v47, v100);
      return (*v42)(v43, v44);
    case 12:
      v142 = 12;
      sub_1A5C108F0();
      v49 = v101;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v102 + 8))(v49, v103);
      return (*v42)(v43, v44);
    case 13:
      v142 = 13;
      sub_1A5C1089C();
      v63 = v104;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v105 + 8))(v63, v106);
      return (*v42)(v43, v44);
    case 14:
      v142 = 14;
      sub_1A5C10848();
      v46 = v107;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v108 + 8))(v46, v109);
      return (*v42)(v43, v44);
    case 15:
      v142 = 15;
      sub_1A5C107F4();
      v55 = v110;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v111 + 8))(v55, v112);
      return (*v42)(v43, v44);
    case 16:
      v142 = 16;
      sub_1A5C107A0();
      v45 = v113;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v114 + 8))(v45, v115);
      return (*v42)(v43, v44);
    case 17:
      v142 = 17;
      sub_1A5C1074C();
      v61 = v116;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v117 + 8))(v61, v118);
      return (*v42)(v43, v44);
    case 18:
      v142 = 18;
      sub_1A5C106F8();
      v65 = v119;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v120 + 8))(v65, v121);
      return (*v42)(v43, v44);
    case 19:
      v142 = 19;
      sub_1A5C106A4();
      v51 = v122;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      v53 = v123;
      v52 = v124;
      goto LABEL_27;
    case 20:
      v142 = 20;
      sub_1A5C10650();
      v51 = v125;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      v53 = v126;
      v52 = v127;
      goto LABEL_27;
    case 21:
      v142 = 21;
      sub_1A5C105FC();
      v51 = v128;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      v53 = v129;
      v52 = v130;
      goto LABEL_27;
    case 22:
      v142 = 22;
      sub_1A5C105A8();
      v51 = v131;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      v53 = v132;
      v52 = v133;
      goto LABEL_27;
    case 23:
      v142 = 23;
      sub_1A5C10554();
      v51 = v134;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      v53 = v135;
      v52 = v136;
      goto LABEL_27;
    case 24:
      v142 = 24;
      sub_1A5C10500();
      v51 = v137;
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      v53 = v138;
      v52 = v139;
LABEL_27:
      (*(v53 + 8))(v51, v52);
      break;
    default:
      v142 = 0;
      sub_1A5C10CE0();
      v43 = v140;
      v44 = v141;
      sub_1A5FD49EC();
      (*(v68 + 8))(v37, v35);
      break;
  }

  return (*v42)(v43, v44);
}

uint64_t BarcodeSymbology.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v174 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FA0);
  v149 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v169 = v97 - v3;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FA8);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v168 = v97 - v4;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FB0);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v167 = v97 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FB8);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v166 = v97 - v6;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FC0);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v165 = v97 - v7;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FC8);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v164 = v97 - v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FD0);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v163 = v97 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FD8);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v162 = v97 - v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FE0);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v161 = v97 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FE8);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v160 = v97 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FF0);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v159 = v97 - v13;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1FF8);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v158 = v97 - v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2000);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v157 = v97 - v15;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2008);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v156 = v97 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2010);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v155 = v97 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2018);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v154 = v97 - v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2020);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v153 = v97 - v19;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2028);
  v116 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v172 = v97 - v20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2030);
  v114 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v152 = v97 - v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2038);
  v113 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v171 = v97 - v22;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2040);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v170 = v97 - v23;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2048);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v151 = v97 - v24;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2050);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v150 = v97 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2058);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v27 = v97 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2060);
  v102 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2068);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v97 - v33;
  v35 = a1[3];
  v176 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1A5C104AC();
  v36 = v175;
  sub_1A5FD4CCC();
  if (v36)
  {
LABEL_57:
    v63 = v176;
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v99 = v30;
  v98 = v28;
  v100 = v27;
  v37 = v170;
  v38 = v171;
  v39 = v172;
  v101 = 0;
  v41 = v173;
  v40 = v174;
  v175 = v32;
  v42 = v34;
  v43 = sub_1A5FD49BC();
  if (*(v43 + 16) != 1 || (v44 = *(v43 + 32), v44 == 25))
  {
    v47 = sub_1A5FD471C();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v49 = &type metadata for BarcodeSymbology;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v175 + 8))(v42, v31);
LABEL_56:
    swift_unknownObjectRelease();
    goto LABEL_57;
  }

  v97[1] = v43;
  switch(v44)
  {
    case 1:
      v177 = 1;
      sub_1A5C10C8C();
      v71 = v100;
      v72 = v101;
      sub_1A5FD48CC();
      if (v72)
      {
        goto LABEL_55;
      }

      (*(v103 + 8))(v71, v104);
      goto LABEL_61;
    case 2:
      v177 = 2;
      sub_1A5C10C38();
      v64 = v150;
      v65 = v101;
      sub_1A5FD48CC();
      if (v65)
      {
        goto LABEL_55;
      }

      (*(v105 + 8))(v64, v106);
      goto LABEL_61;
    case 3:
      v177 = 3;
      sub_1A5C10BE4();
      v68 = v151;
      v69 = v101;
      sub_1A5FD48CC();
      if (v69)
      {
        goto LABEL_55;
      }

      (*(v107 + 8))(v68, v108);
      goto LABEL_61;
    case 4:
      v177 = 4;
      sub_1A5C10B90();
      v56 = v101;
      sub_1A5FD48CC();
      if (v56)
      {
        goto LABEL_55;
      }

      (*(v110 + 8))(v37, v111);
      goto LABEL_61;
    case 5:
      v177 = 5;
      sub_1A5C10B3C();
      v77 = v101;
      sub_1A5FD48CC();
      if (v77)
      {
        goto LABEL_55;
      }

      (*(v113 + 8))(v38, v109);
      goto LABEL_61;
    case 6:
      v177 = 6;
      sub_1A5C10AE8();
      v82 = v152;
      v83 = v101;
      sub_1A5FD48CC();
      if (v83)
      {
        goto LABEL_55;
      }

      (*(v114 + 8))(v82, v112);
      goto LABEL_61;
    case 7:
      v177 = 7;
      sub_1A5C10A94();
      v70 = v101;
      sub_1A5FD48CC();
      if (v70)
      {
        goto LABEL_55;
      }

      (*(v116 + 8))(v39, v115);
      goto LABEL_61;
    case 8:
      v177 = 8;
      sub_1A5C10A40();
      v88 = v153;
      v89 = v101;
      sub_1A5FD48CC();
      if (v89)
      {
        goto LABEL_55;
      }

      (*(v117 + 8))(v88, v118);
      goto LABEL_61;
    case 9:
      v177 = 9;
      sub_1A5C109EC();
      v59 = v154;
      v60 = v101;
      sub_1A5FD48CC();
      if (v60)
      {
        goto LABEL_55;
      }

      (*(v119 + 8))(v59, v120);
      goto LABEL_61;
    case 10:
      v177 = 10;
      sub_1A5C10998();
      v86 = v155;
      v87 = v101;
      sub_1A5FD48CC();
      if (v87)
      {
        goto LABEL_55;
      }

      (*(v121 + 8))(v86, v122);
      goto LABEL_61;
    case 11:
      v177 = 11;
      sub_1A5C10944();
      v54 = v156;
      v55 = v101;
      sub_1A5FD48CC();
      if (v55)
      {
        goto LABEL_55;
      }

      (*(v123 + 8))(v54, v124);
      goto LABEL_61;
    case 12:
      v177 = 12;
      sub_1A5C108F0();
      v57 = v157;
      v58 = v101;
      sub_1A5FD48CC();
      if (v58)
      {
        goto LABEL_55;
      }

      (*(v125 + 8))(v57, v126);
      goto LABEL_61;
    case 13:
      v177 = 13;
      sub_1A5C1089C();
      v80 = v158;
      v81 = v101;
      sub_1A5FD48CC();
      if (v81)
      {
        goto LABEL_55;
      }

      (*(v127 + 8))(v80, v128);
      goto LABEL_61;
    case 14:
      v177 = 14;
      sub_1A5C10848();
      v52 = v159;
      v53 = v101;
      sub_1A5FD48CC();
      if (v53)
      {
        goto LABEL_55;
      }

      (*(v129 + 8))(v52, v130);
      goto LABEL_61;
    case 15:
      v177 = 15;
      sub_1A5C107F4();
      v66 = v160;
      v67 = v101;
      sub_1A5FD48CC();
      if (v67)
      {
        goto LABEL_55;
      }

      (*(v131 + 8))(v66, v132);
      goto LABEL_61;
    case 16:
      v177 = 16;
      sub_1A5C107A0();
      v50 = v161;
      v51 = v101;
      sub_1A5FD48CC();
      if (v51)
      {
        goto LABEL_55;
      }

      (*(v133 + 8))(v50, v134);
      goto LABEL_61;
    case 17:
      v177 = 17;
      sub_1A5C1074C();
      v73 = v162;
      v74 = v101;
      sub_1A5FD48CC();
      if (v74)
      {
        goto LABEL_55;
      }

      (*(v135 + 8))(v73, v136);
      goto LABEL_61;
    case 18:
      v177 = 18;
      sub_1A5C106F8();
      v84 = v163;
      v85 = v101;
      sub_1A5FD48CC();
      if (v85)
      {
        goto LABEL_55;
      }

      (*(v137 + 8))(v84, v138);
      goto LABEL_61;
    case 19:
      v177 = 19;
      sub_1A5C106A4();
      v92 = v164;
      v93 = v101;
      sub_1A5FD48CC();
      if (v93)
      {
        goto LABEL_55;
      }

      (*(v139 + 8))(v92, v140);
      goto LABEL_61;
    case 20:
      v177 = 20;
      sub_1A5C10650();
      v75 = v165;
      v76 = v101;
      sub_1A5FD48CC();
      if (v76)
      {
        goto LABEL_55;
      }

      (*(v141 + 8))(v75, v142);
      goto LABEL_61;
    case 21:
      v177 = 21;
      sub_1A5C105FC();
      v78 = v166;
      v79 = v101;
      sub_1A5FD48CC();
      if (v79)
      {
        goto LABEL_55;
      }

      (*(v143 + 8))(v78, v144);
      goto LABEL_61;
    case 22:
      v177 = 22;
      sub_1A5C105A8();
      v90 = v167;
      v91 = v101;
      sub_1A5FD48CC();
      if (v91)
      {
        goto LABEL_55;
      }

      (*(v145 + 8))(v90, v146);
      goto LABEL_61;
    case 23:
      v177 = 23;
      sub_1A5C10554();
      v94 = v168;
      v95 = v101;
      sub_1A5FD48CC();
      if (v95)
      {
        goto LABEL_55;
      }

      (*(v147 + 8))(v94, v148);
      goto LABEL_61;
    case 24:
      v177 = 24;
      sub_1A5C10500();
      v61 = v169;
      v62 = v101;
      sub_1A5FD48CC();
      if (v62)
      {
        (*(v175 + 8))(v42, v31);
        swift_unknownObjectRelease();
        v63 = v176;
        return __swift_destroy_boxed_opaque_existential_1(v63);
      }

      (*(v149 + 8))(v61, v41);
      (*(v175 + 8))(v42, v31);
      swift_unknownObjectRelease();
      v63 = v176;
      goto LABEL_62;
    default:
      v177 = 0;
      sub_1A5C10CE0();
      v45 = v99;
      v46 = v101;
      sub_1A5FD48CC();
      if (v46)
      {
LABEL_55:
        (*(v175 + 8))(v42, v31);
        goto LABEL_56;
      }

      (*(v102 + 8))(v45, v98);
LABEL_61:
      (*(v175 + 8))(v42, v31);
      swift_unknownObjectRelease();
      v63 = v176;
LABEL_62:
      *v40 = v44;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1A5C0F814()
{
  v1 = 0x656C62756F64;
  if (*v0 != 1)
  {
    v1 = 0x363174616F6C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616F6C66;
  }
}

uint64_t sub_1A5C0F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C14AA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C0F890(uint64_t a1)
{
  v2 = sub_1A5C10D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0F8CC(uint64_t a1)
{
  v2 = sub_1A5C10D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0F908(uint64_t a1)
{
  v2 = sub_1A5C10DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0F944(uint64_t a1)
{
  v2 = sub_1A5C10DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0F980(uint64_t a1)
{
  v2 = sub_1A5C10D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0F9BC(uint64_t a1)
{
  v2 = sub_1A5C10D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C0F9F8(uint64_t a1)
{
  v2 = sub_1A5C10E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C0FA34(uint64_t a1)
{
  v2 = sub_1A5C10E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ElementType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2070);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2078);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2080);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2088);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C10D34();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5C10DDC();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5C10D88();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5C10E30();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ElementType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2090);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2098);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F20A0);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F20A8);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C10D34();
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
          sub_1A5C10DDC();
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
          sub_1A5C10D88();
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
        sub_1A5C10E30();
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
  *v23 = &type metadata for ElementType;
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

uint64_t sub_1A5C103FC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1A5C10418()
{
  type metadata accessor for CFString(0);
  sub_1A5C142B4(&qword_1EB1EF390, type metadata accessor for CFString);
  return sub_1A5FD38EC() & 1;
}

id sub_1A5C104A0@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

unint64_t sub_1A5C104AC()
{
  result = qword_1EB2316C8;
  if (!qword_1EB2316C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316C8);
  }

  return result;
}

unint64_t sub_1A5C10500()
{
  result = qword_1EB2316D0;
  if (!qword_1EB2316D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316D0);
  }

  return result;
}

unint64_t sub_1A5C10554()
{
  result = qword_1EB2316D8;
  if (!qword_1EB2316D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316D8);
  }

  return result;
}

unint64_t sub_1A5C105A8()
{
  result = qword_1EB2316E0;
  if (!qword_1EB2316E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316E0);
  }

  return result;
}

unint64_t sub_1A5C105FC()
{
  result = qword_1EB2316E8;
  if (!qword_1EB2316E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316E8);
  }

  return result;
}

unint64_t sub_1A5C10650()
{
  result = qword_1EB2316F0;
  if (!qword_1EB2316F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316F0);
  }

  return result;
}

unint64_t sub_1A5C106A4()
{
  result = qword_1EB2316F8;
  if (!qword_1EB2316F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2316F8);
  }

  return result;
}

unint64_t sub_1A5C106F8()
{
  result = qword_1EB231700;
  if (!qword_1EB231700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231700);
  }

  return result;
}

unint64_t sub_1A5C1074C()
{
  result = qword_1EB231708;
  if (!qword_1EB231708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231708);
  }

  return result;
}

unint64_t sub_1A5C107A0()
{
  result = qword_1EB231710;
  if (!qword_1EB231710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231710);
  }

  return result;
}

unint64_t sub_1A5C107F4()
{
  result = qword_1EB231718;
  if (!qword_1EB231718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231718);
  }

  return result;
}

unint64_t sub_1A5C10848()
{
  result = qword_1EB231720;
  if (!qword_1EB231720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231720);
  }

  return result;
}

unint64_t sub_1A5C1089C()
{
  result = qword_1EB231728;
  if (!qword_1EB231728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231728);
  }

  return result;
}

unint64_t sub_1A5C108F0()
{
  result = qword_1EB231730;
  if (!qword_1EB231730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231730);
  }

  return result;
}

unint64_t sub_1A5C10944()
{
  result = qword_1EB231738;
  if (!qword_1EB231738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231738);
  }

  return result;
}

unint64_t sub_1A5C10998()
{
  result = qword_1EB231740;
  if (!qword_1EB231740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231740);
  }

  return result;
}

unint64_t sub_1A5C109EC()
{
  result = qword_1EB231748;
  if (!qword_1EB231748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231748);
  }

  return result;
}

unint64_t sub_1A5C10A40()
{
  result = qword_1EB231750;
  if (!qword_1EB231750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231750);
  }

  return result;
}

unint64_t sub_1A5C10A94()
{
  result = qword_1EB231758;
  if (!qword_1EB231758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231758);
  }

  return result;
}

unint64_t sub_1A5C10AE8()
{
  result = qword_1EB231760;
  if (!qword_1EB231760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231760);
  }

  return result;
}

unint64_t sub_1A5C10B3C()
{
  result = qword_1EB231768;
  if (!qword_1EB231768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231768);
  }

  return result;
}

unint64_t sub_1A5C10B90()
{
  result = qword_1EB231770;
  if (!qword_1EB231770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231770);
  }

  return result;
}

unint64_t sub_1A5C10BE4()
{
  result = qword_1EB231778;
  if (!qword_1EB231778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231778);
  }

  return result;
}

unint64_t sub_1A5C10C38()
{
  result = qword_1EB231780;
  if (!qword_1EB231780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231780);
  }

  return result;
}

unint64_t sub_1A5C10C8C()
{
  result = qword_1EB231788;
  if (!qword_1EB231788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231788);
  }

  return result;
}

unint64_t sub_1A5C10CE0()
{
  result = qword_1EB231790;
  if (!qword_1EB231790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231790);
  }

  return result;
}

unint64_t sub_1A5C10D34()
{
  result = qword_1EB231798;
  if (!qword_1EB231798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB231798);
  }

  return result;
}

unint64_t sub_1A5C10D88()
{
  result = qword_1EB2317A0;
  if (!qword_1EB2317A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2317A0);
  }

  return result;
}

unint64_t sub_1A5C10DDC()
{
  result = qword_1EB2317A8;
  if (!qword_1EB2317A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2317A8);
  }

  return result;
}

unint64_t sub_1A5C10E30()
{
  result = qword_1EB2317B0[0];
  if (!qword_1EB2317B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2317B0);
  }

  return result;
}

unint64_t sub_1A5C10EB8()
{
  result = qword_1EB1F20C0;
  if (!qword_1EB1F20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F20C0);
  }

  return result;
}

unint64_t sub_1A5C10F10()
{
  result = qword_1EB1F20C8;
  if (!qword_1EB1F20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F20C8);
  }

  return result;
}

unint64_t sub_1A5C10F98()
{
  result = qword_1EB1F20E0;
  if (!qword_1EB1F20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F20E0);
  }

  return result;
}

uint64_t sub_1A5C1101C(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for AnimalBodyPoseObservation.JointName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimalBodyPoseObservation.JointName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A5C11404(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A5C11498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5C116C4()
{
  result = qword_1EB232940[0];
  if (!qword_1EB232940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB232940);
  }

  return result;
}

unint64_t sub_1A5C1171C()
{
  result = qword_1EB232D50[0];
  if (!qword_1EB232D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB232D50);
  }

  return result;
}

unint64_t sub_1A5C11774()
{
  result = qword_1EB233C60[0];
  if (!qword_1EB233C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB233C60);
  }

  return result;
}

unint64_t sub_1A5C117CC()
{
  result = qword_1EB2357F0[0];
  if (!qword_1EB2357F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2357F0);
  }

  return result;
}

unint64_t sub_1A5C11824()
{
  result = qword_1EB235D00[0];
  if (!qword_1EB235D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB235D00);
  }

  return result;
}

unint64_t sub_1A5C1187C()
{
  result = qword_1EB235E10;
  if (!qword_1EB235E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB235E10);
  }

  return result;
}

unint64_t sub_1A5C118D4()
{
  result = qword_1EB235E18[0];
  if (!qword_1EB235E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB235E18);
  }

  return result;
}

unint64_t sub_1A5C1192C()
{
  result = qword_1EB235EA0;
  if (!qword_1EB235EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB235EA0);
  }

  return result;
}

unint64_t sub_1A5C11984()
{
  result = qword_1EB235EA8[0];
  if (!qword_1EB235EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB235EA8);
  }

  return result;
}

unint64_t sub_1A5C119DC()
{
  result = qword_1EB235F30;
  if (!qword_1EB235F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB235F30);
  }

  return result;
}

unint64_t sub_1A5C11A34()
{
  result = qword_1EB235F38[0];
  if (!qword_1EB235F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB235F38);
  }

  return result;
}

unint64_t sub_1A5C11A8C()
{
  result = qword_1EB235FC0;
  if (!qword_1EB235FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB235FC0);
  }

  return result;
}

unint64_t sub_1A5C11AE4()
{
  result = qword_1EB235FC8[0];
  if (!qword_1EB235FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB235FC8);
  }

  return result;
}

unint64_t sub_1A5C11B3C()
{
  result = qword_1EB236050;
  if (!qword_1EB236050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236050);
  }

  return result;
}

unint64_t sub_1A5C11B94()
{
  result = qword_1EB236058[0];
  if (!qword_1EB236058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236058);
  }

  return result;
}

unint64_t sub_1A5C11BEC()
{
  result = qword_1EB2360E0;
  if (!qword_1EB2360E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2360E0);
  }

  return result;
}

unint64_t sub_1A5C11C44()
{
  result = qword_1EB2360E8[0];
  if (!qword_1EB2360E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2360E8);
  }

  return result;
}

unint64_t sub_1A5C11C9C()
{
  result = qword_1EB236170;
  if (!qword_1EB236170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236170);
  }

  return result;
}

unint64_t sub_1A5C11CF4()
{
  result = qword_1EB236178;
  if (!qword_1EB236178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236178);
  }

  return result;
}

unint64_t sub_1A5C11D4C()
{
  result = qword_1EB236200;
  if (!qword_1EB236200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236200);
  }

  return result;
}

unint64_t sub_1A5C11DA4()
{
  result = qword_1EB236208[0];
  if (!qword_1EB236208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236208);
  }

  return result;
}

unint64_t sub_1A5C11DFC()
{
  result = qword_1EB236290;
  if (!qword_1EB236290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236290);
  }

  return result;
}

unint64_t sub_1A5C11E54()
{
  result = qword_1EB236298[0];
  if (!qword_1EB236298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236298);
  }

  return result;
}

unint64_t sub_1A5C11EAC()
{
  result = qword_1EB236320;
  if (!qword_1EB236320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236320);
  }

  return result;
}

unint64_t sub_1A5C11F04()
{
  result = qword_1EB236328[0];
  if (!qword_1EB236328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236328);
  }

  return result;
}

unint64_t sub_1A5C11F5C()
{
  result = qword_1EB2363B0;
  if (!qword_1EB2363B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2363B0);
  }

  return result;
}

unint64_t sub_1A5C11FB4()
{
  result = qword_1EB2363B8[0];
  if (!qword_1EB2363B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2363B8);
  }

  return result;
}

unint64_t sub_1A5C1200C()
{
  result = qword_1EB236440;
  if (!qword_1EB236440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236440);
  }

  return result;
}

unint64_t sub_1A5C12064()
{
  result = qword_1EB236448[0];
  if (!qword_1EB236448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236448);
  }

  return result;
}

unint64_t sub_1A5C120BC()
{
  result = qword_1EB2364D0;
  if (!qword_1EB2364D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2364D0);
  }

  return result;
}

unint64_t sub_1A5C12114()
{
  result = qword_1EB2364D8[0];
  if (!qword_1EB2364D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2364D8);
  }

  return result;
}

unint64_t sub_1A5C1216C()
{
  result = qword_1EB236560;
  if (!qword_1EB236560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236560);
  }

  return result;
}

unint64_t sub_1A5C121C4()
{
  result = qword_1EB236568[0];
  if (!qword_1EB236568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236568);
  }

  return result;
}

unint64_t sub_1A5C1221C()
{
  result = qword_1EB2365F0;
  if (!qword_1EB2365F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2365F0);
  }

  return result;
}

unint64_t sub_1A5C12274()
{
  result = qword_1EB2365F8[0];
  if (!qword_1EB2365F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2365F8);
  }

  return result;
}

unint64_t sub_1A5C122CC()
{
  result = qword_1EB236680;
  if (!qword_1EB236680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236680);
  }

  return result;
}

unint64_t sub_1A5C12324()
{
  result = qword_1EB236688[0];
  if (!qword_1EB236688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236688);
  }

  return result;
}

unint64_t sub_1A5C1237C()
{
  result = qword_1EB236710;
  if (!qword_1EB236710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236710);
  }

  return result;
}

unint64_t sub_1A5C123D4()
{
  result = qword_1EB236718[0];
  if (!qword_1EB236718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236718);
  }

  return result;
}

unint64_t sub_1A5C1242C()
{
  result = qword_1EB2367A0;
  if (!qword_1EB2367A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2367A0);
  }

  return result;
}

unint64_t sub_1A5C12484()
{
  result = qword_1EB2367A8[0];
  if (!qword_1EB2367A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2367A8);
  }

  return result;
}

unint64_t sub_1A5C124DC()
{
  result = qword_1EB236830;
  if (!qword_1EB236830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236830);
  }

  return result;
}

unint64_t sub_1A5C12534()
{
  result = qword_1EB236838[0];
  if (!qword_1EB236838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236838);
  }

  return result;
}

unint64_t sub_1A5C1258C()
{
  result = qword_1EB2368C0;
  if (!qword_1EB2368C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2368C0);
  }

  return result;
}

unint64_t sub_1A5C125E4()
{
  result = qword_1EB2368C8[0];
  if (!qword_1EB2368C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2368C8);
  }

  return result;
}

unint64_t sub_1A5C1263C()
{
  result = qword_1EB236950;
  if (!qword_1EB236950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236950);
  }

  return result;
}

unint64_t sub_1A5C12694()
{
  result = qword_1EB236958[0];
  if (!qword_1EB236958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236958);
  }

  return result;
}

unint64_t sub_1A5C126EC()
{
  result = qword_1EB2369E0;
  if (!qword_1EB2369E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2369E0);
  }

  return result;
}

unint64_t sub_1A5C12744()
{
  result = qword_1EB2369E8[0];
  if (!qword_1EB2369E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2369E8);
  }

  return result;
}

unint64_t sub_1A5C1279C()
{
  result = qword_1EB236A70;
  if (!qword_1EB236A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236A70);
  }

  return result;
}

unint64_t sub_1A5C127F4()
{
  result = qword_1EB236A78;
  if (!qword_1EB236A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236A78);
  }

  return result;
}

unint64_t sub_1A5C1284C()
{
  result = qword_1EB236B00;
  if (!qword_1EB236B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236B00);
  }

  return result;
}

unint64_t sub_1A5C128A4()
{
  result = qword_1EB236B08[0];
  if (!qword_1EB236B08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236B08);
  }

  return result;
}

unint64_t sub_1A5C128FC()
{
  result = qword_1EB236B90;
  if (!qword_1EB236B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236B90);
  }

  return result;
}

unint64_t sub_1A5C12954()
{
  result = qword_1EB236B98[0];
  if (!qword_1EB236B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236B98);
  }

  return result;
}

unint64_t sub_1A5C129AC()
{
  result = qword_1EB236C20;
  if (!qword_1EB236C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236C20);
  }

  return result;
}

unint64_t sub_1A5C12A04()
{
  result = qword_1EB236C28[0];
  if (!qword_1EB236C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236C28);
  }

  return result;
}

unint64_t sub_1A5C12A5C()
{
  result = qword_1EB236CB0;
  if (!qword_1EB236CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236CB0);
  }

  return result;
}

unint64_t sub_1A5C12AB4()
{
  result = qword_1EB236CB8[0];
  if (!qword_1EB236CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236CB8);
  }

  return result;
}

unint64_t sub_1A5C12B0C()
{
  result = qword_1EB236D40;
  if (!qword_1EB236D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236D40);
  }

  return result;
}

unint64_t sub_1A5C12B64()
{
  result = qword_1EB236D48[0];
  if (!qword_1EB236D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236D48);
  }

  return result;
}

unint64_t sub_1A5C12BBC()
{
  result = qword_1EB236DD0;
  if (!qword_1EB236DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236DD0);
  }

  return result;
}

unint64_t sub_1A5C12C14()
{
  result = qword_1EB236DD8[0];
  if (!qword_1EB236DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236DD8);
  }

  return result;
}

unint64_t sub_1A5C12C6C()
{
  result = qword_1EB236E60;
  if (!qword_1EB236E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236E60);
  }

  return result;
}

unint64_t sub_1A5C12CC4()
{
  result = qword_1EB236E68[0];
  if (!qword_1EB236E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB236E68);
  }

  return result;
}

unint64_t sub_1A5C12D1C()
{
  result = qword_1EB236F70;
  if (!qword_1EB236F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236F70);
  }

  return result;
}

unint64_t sub_1A5C12D74()
{
  result = qword_1EB236F78;
  if (!qword_1EB236F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB236F78);
  }

  return result;
}

unint64_t sub_1A5C12DCC()
{
  result = qword_1EB237000;
  if (!qword_1EB237000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237000);
  }

  return result;
}

unint64_t sub_1A5C12E24()
{
  result = qword_1EB237008[0];
  if (!qword_1EB237008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237008);
  }

  return result;
}

unint64_t sub_1A5C12E7C()
{
  result = qword_1EB237090;
  if (!qword_1EB237090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237090);
  }

  return result;
}

unint64_t sub_1A5C12ED4()
{
  result = qword_1EB237098[0];
  if (!qword_1EB237098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237098);
  }

  return result;
}

unint64_t sub_1A5C12F2C()
{
  result = qword_1EB237120;
  if (!qword_1EB237120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237120);
  }

  return result;
}

unint64_t sub_1A5C12F84()
{
  result = qword_1EB237128[0];
  if (!qword_1EB237128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237128);
  }

  return result;
}

unint64_t sub_1A5C12FDC()
{
  result = qword_1EB2371B0;
  if (!qword_1EB2371B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2371B0);
  }

  return result;
}

unint64_t sub_1A5C13034()
{
  result = qword_1EB2371B8[0];
  if (!qword_1EB2371B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2371B8);
  }

  return result;
}

unint64_t sub_1A5C1308C()
{
  result = qword_1EB237240;
  if (!qword_1EB237240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237240);
  }

  return result;
}

unint64_t sub_1A5C130E4()
{
  result = qword_1EB237248[0];
  if (!qword_1EB237248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237248);
  }

  return result;
}

unint64_t sub_1A5C1313C()
{
  result = qword_1EB2372D0;
  if (!qword_1EB2372D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2372D0);
  }

  return result;
}

unint64_t sub_1A5C13194()
{
  result = qword_1EB2372D8[0];
  if (!qword_1EB2372D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2372D8);
  }

  return result;
}

unint64_t sub_1A5C131EC()
{
  result = qword_1EB237360;
  if (!qword_1EB237360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237360);
  }

  return result;
}

unint64_t sub_1A5C13244()
{
  result = qword_1EB237368[0];
  if (!qword_1EB237368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237368);
  }

  return result;
}

unint64_t sub_1A5C1329C()
{
  result = qword_1EB2373F0;
  if (!qword_1EB2373F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2373F0);
  }

  return result;
}

unint64_t sub_1A5C132F4()
{
  result = qword_1EB2373F8[0];
  if (!qword_1EB2373F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2373F8);
  }

  return result;
}

unint64_t sub_1A5C1334C()
{
  result = qword_1EB237480;
  if (!qword_1EB237480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237480);
  }

  return result;
}

unint64_t sub_1A5C133A4()
{
  result = qword_1EB237488[0];
  if (!qword_1EB237488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237488);
  }

  return result;
}

unint64_t sub_1A5C133FC()
{
  result = qword_1EB237510;
  if (!qword_1EB237510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237510);
  }

  return result;
}

unint64_t sub_1A5C13454()
{
  result = qword_1EB237518[0];
  if (!qword_1EB237518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237518);
  }

  return result;
}

unint64_t sub_1A5C134AC()
{
  result = qword_1EB2375A0;
  if (!qword_1EB2375A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2375A0);
  }

  return result;
}

unint64_t sub_1A5C13504()
{
  result = qword_1EB2375A8[0];
  if (!qword_1EB2375A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2375A8);
  }

  return result;
}

unint64_t sub_1A5C1355C()
{
  result = qword_1EB237630;
  if (!qword_1EB237630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237630);
  }

  return result;
}

unint64_t sub_1A5C135B4()
{
  result = qword_1EB237638[0];
  if (!qword_1EB237638[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237638);
  }

  return result;
}

unint64_t sub_1A5C1360C()
{
  result = qword_1EB2376C0;
  if (!qword_1EB2376C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2376C0);
  }

  return result;
}

unint64_t sub_1A5C13664()
{
  result = qword_1EB2376C8[0];
  if (!qword_1EB2376C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2376C8);
  }

  return result;
}

unint64_t sub_1A5C136BC()
{
  result = qword_1EB237750;
  if (!qword_1EB237750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237750);
  }

  return result;
}

unint64_t sub_1A5C13714()
{
  result = qword_1EB237758[0];
  if (!qword_1EB237758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237758);
  }

  return result;
}

unint64_t sub_1A5C1376C()
{
  result = qword_1EB2377E0;
  if (!qword_1EB2377E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2377E0);
  }

  return result;
}

unint64_t sub_1A5C137C4()
{
  result = qword_1EB2377E8[0];
  if (!qword_1EB2377E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2377E8);
  }

  return result;
}

unint64_t sub_1A5C1381C()
{
  result = qword_1EB237870;
  if (!qword_1EB237870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237870);
  }

  return result;
}

unint64_t sub_1A5C13874()
{
  result = qword_1EB237878;
  if (!qword_1EB237878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237878);
  }

  return result;
}

unint64_t sub_1A5C138CC()
{
  result = qword_1EB237900;
  if (!qword_1EB237900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237900);
  }

  return result;
}

unint64_t sub_1A5C13924()
{
  result = qword_1EB237908[0];
  if (!qword_1EB237908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237908);
  }

  return result;
}

unint64_t sub_1A5C1397C()
{
  result = qword_1EB237990;
  if (!qword_1EB237990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237990);
  }

  return result;
}

unint64_t sub_1A5C139D4()
{
  result = qword_1EB237998[0];
  if (!qword_1EB237998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237998);
  }

  return result;
}

unint64_t sub_1A5C13A2C()
{
  result = qword_1EB237A20;
  if (!qword_1EB237A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237A20);
  }

  return result;
}

unint64_t sub_1A5C13A84()
{
  result = qword_1EB237A28[0];
  if (!qword_1EB237A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237A28);
  }

  return result;
}

unint64_t sub_1A5C13ADC()
{
  result = qword_1EB237AB0;
  if (!qword_1EB237AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237AB0);
  }

  return result;
}

unint64_t sub_1A5C13B34()
{
  result = qword_1EB237AB8[0];
  if (!qword_1EB237AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237AB8);
  }

  return result;
}

unint64_t sub_1A5C13B8C()
{
  result = qword_1EB237B40;
  if (!qword_1EB237B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237B40);
  }

  return result;
}

unint64_t sub_1A5C13BE4()
{
  result = qword_1EB237B48[0];
  if (!qword_1EB237B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237B48);
  }

  return result;
}

unint64_t sub_1A5C13C3C()
{
  result = qword_1EB237BD0;
  if (!qword_1EB237BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB237BD0);
  }

  return result;
}

unint64_t sub_1A5C13C94()
{
  result = qword_1EB237BD8[0];
  if (!qword_1EB237BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB237BD8);
  }

  return result;
}

uint64_t sub_1A5C13CE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72437265746E6563 && a2 == 0xEA0000000000706FLL;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x466F54656C616373 && a2 == 0xEA00000000007469 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x466F54656C616373 && a2 == 0xEB000000006C6C69 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A60560B0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A60560D0 == a2)
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

uint64_t sub_1A5C13EA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6969637361 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6873696C676E65 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6873696E6164 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6863747564 && a2 == 0xE500000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x68636E657266 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E616D726567 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69646E616C656369 && a2 == 0xE900000000000063 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E61696C617469 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6169676577726F6ELL && a2 == 0xE90000000000006ELL || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6575677574726F70 && a2 == 0xEA00000000006573 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6873696E617073 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x68736964657773 && a2 == 0xE700000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}