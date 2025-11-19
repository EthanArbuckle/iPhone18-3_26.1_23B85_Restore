__n128 GenerateHumanAttributesSegmentationRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateHumanAttributesSegmentationRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5BE6644()
{
  sub_1A5BE6D70();
  result = sub_1A5D4EC2C();
  qword_1EB227BB8 = result;
  return result;
}

uint64_t static GenerateHumanAttributesSegmentationRequest.allSupportedRevisions.getter()
{
  if (qword_1EB227BB0 != -1)
  {
    swift_once();
  }
}

uint64_t GenerateHumanAttributesSegmentationRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BE6D70();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateHumanAttributesSegmentationRequest, v3);
}

uint64_t GenerateHumanAttributesSegmentationRequest.hash(into:)(__int128 *a1)
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

uint64_t GenerateHumanAttributesSegmentationRequest.hashValue.getter()
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

uint64_t sub_1A5BE68A0(uint64_t a1)
{
  v2 = sub_1A5BE6E18();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BE68DC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BE6D70();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BE693C(uint64_t a1)
{
  v2 = sub_1A5B5E364();

  return VisionRequest.description.getter(a1, v2);
}

_OWORD *sub_1A5BE6980@<X0>(void *a1@<X8>)
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
    v6 = sub_1A5BE6DC4();
    v4 = &type metadata for GenerateHumanAttributesSegmentationRequest;
    sub_1A5CC066C(&type metadata for GenerateHumanAttributesSegmentationRequest, v6, v8);
    BYTE5(v8[0]) = 1;
    v5 = sub_1A5BE6D70();
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

uint64_t sub_1A5BE6A54(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E364();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5BE6AA4(uint64_t a1)
{
  *v12 = *v1;
  v12[4] = *(v1 + 4);
  v3 = *(v1 + 5);
  *&v12[6] = *(v1 + 6);
  *v13 = *(v1 + 22);
  *&v13[10] = *(v1 + 32);
  v4 = sub_1A5BE6E18();
  v5 = sub_1A5BDA35C(a1, &type metadata for GenerateHumanAttributesSegmentationRequest, v4);
  v6 = sub_1A5FD3D5C();
  v8 = v7;
  *&v13[2] = MEMORY[0x1E69E6530];
  *v12 = v3 & 1;
  sub_1A5B101C8(v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v11, v6, v8, isUniquelyReferenced_nonNull_native);

  return v5;
}

void sub_1A5BE6C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5BE6DC4();

  sub_1A5CBFC30(a1, a2, a3, v6);
}

unint64_t sub_1A5BE6C74()
{
  result = qword_1EB227BD0;
  if (!qword_1EB227BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227BD0);
  }

  return result;
}

unint64_t sub_1A5BE6CC8()
{
  result = qword_1EB227BD8;
  if (!qword_1EB227BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB227BD8);
  }

  return result;
}

unint64_t sub_1A5BE6D1C()
{
  result = qword_1EB227BE0[0];
  if (!qword_1EB227BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB227BE0);
  }

  return result;
}

unint64_t sub_1A5BE6D70()
{
  result = qword_1EB1F16F0;
  if (!qword_1EB1F16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F16F0);
  }

  return result;
}

unint64_t sub_1A5BE6DC4()
{
  result = qword_1EB1F16F8;
  if (!qword_1EB1F16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F16F8);
  }

  return result;
}

unint64_t sub_1A5BE6E18()
{
  result = qword_1EB1F1700;
  if (!qword_1EB1F1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1700);
  }

  return result;
}

unint64_t sub_1A5BE6E6C()
{
  result = qword_1EB1F1708;
  if (!qword_1EB1F1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1708);
  }

  return result;
}

unint64_t sub_1A5BE6EC8()
{
  result = qword_1EB1F1710;
  if (!qword_1EB1F1710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1710);
  }

  return result;
}

unint64_t sub_1A5BE6F30()
{
  result = qword_1EB1F1720;
  if (!qword_1EB1F1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1720);
  }

  return result;
}

unint64_t sub_1A5BE6F84(uint64_t a1)
{
  result = sub_1A5B5E364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE6FD8()
{
  result = qword_1EB1F1728;
  if (!qword_1EB1F1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1728);
  }

  return result;
}

unint64_t sub_1A5BE7030()
{
  result = qword_1EB1F1730;
  if (!qword_1EB1F1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1730);
  }

  return result;
}

unint64_t sub_1A5BE7088()
{
  result = qword_1EB1F1738;
  if (!qword_1EB1F1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1738);
  }

  return result;
}

uint64_t sub_1A5BE7108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BE7144()
{
  result = qword_1EB1F1740;
  if (!qword_1EB1F1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1740);
  }

  return result;
}

unint64_t sub_1A5BE7198(uint64_t a1)
{
  result = sub_1A5BE6D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE71C0(uint64_t a1)
{
  result = sub_1A5BE71E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BE71E8()
{
  result = qword_1EB1F1748;
  if (!qword_1EB1F1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1748);
  }

  return result;
}

unint64_t sub_1A5BE72C0()
{
  result = qword_1EB228770[0];
  if (!qword_1EB228770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228770);
  }

  return result;
}

unint64_t sub_1A5BE7318()
{
  result = qword_1EB228B80[0];
  if (!qword_1EB228B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228B80);
  }

  return result;
}

unint64_t sub_1A5BE7370()
{
  result = qword_1EB228C90;
  if (!qword_1EB228C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB228C90);
  }

  return result;
}

unint64_t sub_1A5BE73C8()
{
  result = qword_1EB228C98[0];
  if (!qword_1EB228C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228C98);
  }

  return result;
}

unint64_t sub_1A5BE7420()
{
  result = qword_1EB228D20;
  if (!qword_1EB228D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB228D20);
  }

  return result;
}

unint64_t sub_1A5BE7478()
{
  result = qword_1EB228D28[0];
  if (!qword_1EB228D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228D28);
  }

  return result;
}

unint64_t sub_1A5BE74D0()
{
  result = qword_1EB228DB0;
  if (!qword_1EB228DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB228DB0);
  }

  return result;
}

unint64_t sub_1A5BE7528()
{
  result = qword_1EB228DB8[0];
  if (!qword_1EB228DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228DB8);
  }

  return result;
}

unint64_t sub_1A5BE7580()
{
  result = qword_1EB228E40;
  if (!qword_1EB228E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB228E40);
  }

  return result;
}

unint64_t sub_1A5BE75D8()
{
  result = qword_1EB228E48[0];
  if (!qword_1EB228E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228E48);
  }

  return result;
}

unint64_t sub_1A5BE7630()
{
  result = qword_1EB228ED0;
  if (!qword_1EB228ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB228ED0);
  }

  return result;
}

unint64_t sub_1A5BE7688()
{
  result = qword_1EB228ED8[0];
  if (!qword_1EB228ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228ED8);
  }

  return result;
}

__n128 RecognizedObjectObservation.boundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t RecognizedObjectObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecognizedObjectObservation() + 24);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RecognizedObjectObservation()
{
  result = qword_1EB2292F0;
  if (!qword_1EB2292F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 RecognizedObjectObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecognizedObjectObservation() + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t RecognizedObjectObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RecognizedObjectObservation();
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t RecognizedObjectObservation.description.getter()
{
  v1 = type metadata accessor for ClassificationObservation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1A5FD46AC();

  v25 = 0xD000000000000025;
  v26 = 0x80000001A6055DE0;
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = v0;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A5B76AEC(0, v6, 0);
    v7 = v24;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_1A5BEA604(v8, v4, type metadata accessor for ClassificationObservation);
      v11 = *v4;
      v10 = v4[1];

      sub_1A5BEAD5C(v4, type metadata accessor for ClassificationObservation);
      v24 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A5B76AEC((v12 > 1), v13 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF60);
  sub_1A5BE9A40();
  v15 = sub_1A5FD3CDC();
  v17 = v16;

  MEMORY[0x1AC554600](v15, v17);

  MEMORY[0x1AC554600](2108509, 0xE300000000000000);
  v18 = type metadata accessor for RecognizedObjectObservation();
  v19 = sub_1A5C64D80(v18, &protocol witness table for RecognizedObjectObservation);
  MEMORY[0x1AC554600](v19);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v20 = sub_1A5BEAE24(&qword_1EB1F1758, type metadata accessor for RecognizedObjectObservation);
  v21 = sub_1A5C29408(v18, &off_1F195AE98, v20);
  MEMORY[0x1AC554600](v21);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return v25;
}

uint64_t RecognizedObjectObservation.segmentationMask.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecognizedObjectObservation() + 40);

  return sub_1A5BE9AA4(v3, a1);
}

uint64_t RecognizedObjectObservation.objectPrint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecognizedObjectObservation() + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  return sub_1A5B06658(v4, v5, v6, v7, v8);
}

double RecognizedObjectObservation.init(labels:boundingBox:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecognizedObjectObservation();
  sub_1A5FD366C();
  v7 = v6[10];
  v8 = type metadata accessor for PixelBufferObservation();
  v12 = a2[1];
  v13 = *a2;
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a3 + v6[11];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = -16;
  *a3 = a1;
  *(a3 + 24) = v12;
  *(a3 + 8) = v13;
  *(a3 + v6[7]) = 1065353216;
  v10 = a3 + v6[8];
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 48) = 1;
  *(a3 + v6[9]) = -8;
  sub_1A5B066C4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  result = 0.0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = -16;
  return result;
}

uint64_t RecognizedObjectObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for RecognizedObjectObservation();
  sub_1A5BEAE24(&qword_1EB1F1760, type metadata accessor for RecognizedObjectObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BE7D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BEAE24(&qword_1EB1F1758, type metadata accessor for RecognizedObjectObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5BE7E14()
{
  v1 = *v0;
  v2 = 0x746176726573626FLL;
  v3 = 0x736C6562616CLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x72507463656A626FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E69646E756F62;
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

uint64_t sub_1A5BE7EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BEAB9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BE7EF0(uint64_t a1)
{
  v2 = sub_1A5BEA3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BE7F2C(uint64_t a1)
{
  v2 = sub_1A5BEA3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizedObjectObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1768);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BEA3DC();
  sub_1A5FD4CDC();
  *&v23 = *v2;
  v26 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8B8);
  sub_1A5BEA568(&qword_1EB1F1770, &qword_1EB1F1778);
  v11 = v22;
  sub_1A5FD4A5C();
  if (!v11)
  {
    v22 = v4;
    v12 = *(v2 + 24);
    v23 = *(v2 + 8);
    v24 = v12;
    v26 = 1;
    sub_1A5B0A30C();
    sub_1A5FD4A5C();
    v13 = type metadata accessor for RecognizedObjectObservation();
    LOBYTE(v23) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
    sub_1A5BEA430();
    sub_1A5FD4A5C();
    v14 = v2 + *(v13 + 44);
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    *&v23 = *v14;
    *(&v23 + 1) = v15;
    *&v24 = v16;
    *(&v24 + 1) = v17;
    v25 = v18;
    v26 = 4;
    sub_1A5B06658(v23, v15, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1790);
    sub_1A5BEA4E4();
    sub_1A5FD4A5C();
    sub_1A5B066C4(v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
    LOBYTE(v23) = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v19 = sub_1A5BEAE24(&qword_1EB1F1758, type metadata accessor for RecognizedObjectObservation);
    sub_1A5BBD46C(v6, v13, &off_1F195AE98, v19);
    (*(v21 + 8))(v6, v22);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t RecognizedObjectObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1A5FD367C();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F17A0);
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for RecognizedObjectObservation();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 44)];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v55 = v18;
  v56 = a1;
  *(v18 + 16) = -16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BEA3DC();
  v19 = v54;
  sub_1A5FD4CCC();
  if (v19)
  {
    v22 = v55;
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_1A5B066C4(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3), *(v22 + 16));
  }

  else
  {
    v20 = v10;
    v46 = v7;
    v21 = v53;
    v54 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8B8);
    v62 = 2;
    sub_1A5BEA568(&qword_1EB1F17A8, &qword_1EB1F17B0);
    sub_1A5FD497C();
    v23 = v16;
    *v16 = v57;
    v62 = 1;
    sub_1A5B0A400();
    sub_1A5FD497C();
    v24 = v55;
    v25 = v58;
    *(v16 + 8) = v57;
    *(v16 + 24) = v25;
    type metadata accessor for PixelBufferObservation();
    LOBYTE(v57) = 3;
    sub_1A5BEAE24(&qword_1EB1F17B8, type metadata accessor for PixelBufferObservation);
    sub_1A5FD492C();
    sub_1A5BE9B14(v20, &v16[v54[10]]);
    v62 = 4;
    sub_1A5B2E8CC();
    sub_1A5FD492C();
    v26 = v59;
    v27 = *v24;
    v28 = *(v24 + 1);
    v29 = *(v24 + 2);
    v30 = *(v24 + 3);
    v45 = v57;
    v44 = v58;
    sub_1A5B066C4(v27, v28, v29, v30, *(v24 + 16));
    v31 = v44;
    *v24 = v45;
    *(v24 + 1) = v31;
    *(v24 + 16) = v26;
    LOBYTE(v57) = 0;
    sub_1A5B0A360();
    sub_1A5FD48CC();
    *&v45 = v13;
    LOBYTE(v57) = 0;
    sub_1A5BEAE24(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
    v32 = v49;
    v33 = v50;
    sub_1A5FD497C();
    *&v44 = v11;
    v34 = v54;
    (*(v48 + 32))(v23 + v54[6], v33, v32);
    LOBYTE(v57) = 1;
    sub_1A5FD495C();
    *(v23 + v34[7]) = v35;
    v62 = 3;
    sub_1A5B0A454();
    sub_1A5FD492C();
    v36 = v47;
    v37 = v21;
    v38 = v51;
    v39 = v54;
    *(v23 + v54[9]) = v57;
    v40 = v46;
    sub_1A5BBDB04(v60);
    (*(v38 + 8))(v40, v52);
    (*(v37 + 8))(v45, v44);
    v41 = v23 + v39[8];
    v42 = v60[1];
    *v41 = v60[0];
    *(v41 + 16) = v42;
    *(v41 + 32) = v60[2];
    *(v41 + 48) = v61;
    sub_1A5BEA604(v23, v36, type metadata accessor for RecognizedObjectObservation);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_1A5BEAD5C(v23, type metadata accessor for RecognizedObjectObservation);
  }
}

uint64_t sub_1A5BE8C4C@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, double *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a4;
  v69 = a5;
  v8 = type metadata accessor for ClassificationObservation();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v71 = &v67 - v16;
  v73 = *a2;
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v20 = a3[3];
  v70 = a1;
  v21 = [a1 labels];
  sub_1A5BEA66C();
  v22 = sub_1A5FD3F4C();

  v23 = v22;
  if (v22 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v23 = v32)
  {
    v25 = 0;
    v72 = v23 & 0xC000000000000001;
    v26 = v23 & 0xFFFFFFFFFFFFFF8;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = v23;
    while (v72)
    {
      v23 = MEMORY[0x1AC554EE0](v25, v23);
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      LOWORD(v78[0]) = v73;
      *&v75 = v17;
      *(&v75 + 1) = v18;
      *&v76 = v19;
      *(&v76 + 1) = v20;
      sub_1A5C5C324(v23, v78, v74, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1A5BE9B84(0, v27[2] + 1, 1, v27);
      }

      v31 = v27[2];
      v30 = v27[3];
      if (v31 >= v30 >> 1)
      {
        v27 = sub_1A5BE9B84(v30 > 1, v31 + 1, 1, v27);
      }

      v27[2] = v31 + 1;
      sub_1A5BEADBC(v11, v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, type metadata accessor for ClassificationObservation);
      ++v25;
      v23 = v28;
      if (v29 == i)
      {
        goto LABEL_19;
      }
    }

    if (v25 >= *(v26 + 16))
    {
      goto LABEL_16;
    }

    v23 = *(v23 + 8 * v25 + 32);
    v29 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v32 = v23;
    i = sub_1A5FD484C();
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v33 = type metadata accessor for PixelBufferObservation();
  v34 = *(*(v33 - 8) + 56);
  v35 = v71;
  v34(v71, 1, 1, v33);
  v36 = [v70 segmentationMask];
  if (v36)
  {
    LOWORD(v78[0]) = v73;
    *&v75 = v17;
    *(&v75 + 1) = v18;
    *&v76 = v19;
    *(&v76 + 1) = v20;
    v37 = v68;
    sub_1A5BF36E0(v36, v78, v74, v68);
    sub_1A5B10168(v35, &qword_1EB1EF6F8);
    v34(v37, 0, 1, v33);
    sub_1A5BE9B14(v37, v35);
  }

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38 && (v39 = [v38 animalprint]) != 0)
  {
    v40 = v39;
    v41 = [v39 originatingRequestSpecifier];
    sub_1A5C7547C(v78);

    sub_1A5C57118(v40, v78, &v75);
    v68 = *(&v75 + 1);
    v72 = v75;
    v42 = v76;
    v43 = v77;
    v44 = BYTE8(v76) | (HIDWORD(v76) << 32);
  }

  else
  {
    v72 = 0;
    v68 = 0;
    v42 = 0;
    v44 = 0;
    v43 = -16;
  }

  v45 = type metadata accessor for RecognizedObjectObservation();
  v46 = v70;
  [v46 boundingBox];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v46 providesBoundsNormalizedToROI];

  v78[0] = v17;
  v78[1] = v18;
  v78[2] = v19;
  v78[3] = v20;
  sub_1A5BEAE24(&qword_1EB1F0BA8, type metadata accessor for RecognizedObjectObservation);
  sub_1A5BD9138(v55, v78, v48, v50, v52, v54);
  v56 = v46;
  v57 = [v56 uuid];
  v58 = v69;
  sub_1A5FD365C();

  [v56 confidence];
  LODWORD(v48) = v59;

  v60 = v58 + v45[11];
  *v60 = 0u;
  *(v60 + 16) = 0u;
  *(v60 + 32) = -16;
  *v58 = v27;
  v61 = v75;
  *(v58 + 24) = v76;
  *(v58 + 8) = v61;
  *(v58 + v45[7]) = LODWORD(v48);
  v62 = v58 + v45[8];
  v63 = v74;
  v64 = v74[1];
  *v62 = *v74;
  *(v62 + 16) = v64;
  *(v62 + 32) = v63[2];
  *(v62 + 48) = *(v63 + 48);
  *(v58 + v45[9]) = v73;
  sub_1A5BE9B14(v71, v58 + v45[10]);
  result = sub_1A5B066C4(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
  v66 = v68;
  *v60 = v72;
  *(v60 + 8) = v66;
  *(v60 + 16) = v42;
  *(v60 + 24) = v44;
  *(v60 + 32) = v43;
  return result;
}

id sub_1A5BE92A0()
{
  v1 = [objc_opt_self() observationWithBoundingBox_];

  return v1;
}

uint64_t RecognizedObjectObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  v8 = type metadata accessor for ClassificationObservation();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  static NormalizedRect.fullImage.getter(&v70);
  v12 = v70;
  v13 = v71;
  v14 = v72;
  v15 = a1;
  [v15 timeRange];
  v74 = 0;
  v16 = [v15 labels];
  sub_1A5BEA66C();
  v17 = sub_1A5FD3F4C();

  if (v17 >> 62)
  {
    goto LABEL_28;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v60 = v15;
  v62 = v7;
  if (v18)
  {
    v19 = 0;
    v63 = v17 & 0xC000000000000001;
    v20 = v17 & 0xFFFFFFFFFFFFFF8;
    v15 = MEMORY[0x1E69E7CC0];
    v21 = v17;
    v7 = v18;
    while (1)
    {
      if (v63)
      {
        v22 = MEMORY[0x1AC554EE0](v19, v17);
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v19 >= *(v20 + 16))
        {
          goto LABEL_27;
        }

        v22 = *(v17 + 8 * v19 + 32);
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v18 = sub_1A5FD484C();
          goto LABEL_3;
        }
      }

      v67.n128_u16[0] = -8;
      v64 = v12;
      *&v65 = v13;
      *(&v65 + 1) = v14;
      sub_1A5C5C324(v22, &v67, v73, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1A5BE9B84(0, v15[2] + 1, 1, v15);
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        v15 = sub_1A5BE9B84(v23 > 1, v24 + 1, 1, v15);
      }

      v15[2] = v24 + 1;
      sub_1A5BEADBC(v11, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, type metadata accessor for ClassificationObservation);
      ++v19;
      v25 = v17 == v7;
      v17 = v21;
      if (v25)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v26 = type metadata accessor for PixelBufferObservation();
  v27 = *(*(v26 - 8) + 56);
  v28 = v62;
  v27(v62, 1, 1, v26);
  v29 = v60;
  v30 = [v60 segmentationMask];
  if (v30)
  {
    v67.n128_u16[0] = -8;
    v64 = v12;
    *&v65 = v13;
    *(&v65 + 1) = v14;
    v31 = v59;
    sub_1A5BF36E0(v30, &v67, v73, v59);
    sub_1A5B10168(v28, &qword_1EB1EF6F8);
    v27(v31, 0, 1, v26);
    sub_1A5BE9B14(v31, v28);
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32 && (v33 = [v32 animalprint]) != 0)
  {
    v34 = v33;
    v35 = [v33 originatingRequestSpecifier];
    sub_1A5C7547C(&v67);

    sub_1A5C57118(v34, &v67, &v64);
    v59 = v64.n128_i64[1];
    v63 = v64.n128_u64[0];
    v36 = v65;
    v37 = v66;
    v38 = BYTE8(v65) | (HIDWORD(v65) << 32);
  }

  else
  {
    v63 = 0;
    v59 = 0;
    v36 = 0;
    v38 = 0;
    v37 = -16;
  }

  v39 = type metadata accessor for RecognizedObjectObservation();
  v40 = v29;
  [v40 boundingBox];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [v40 providesBoundsNormalizedToROI];

  v67 = v12;
  v68 = v13;
  v69 = v14;
  sub_1A5BEAE24(&qword_1EB1F0BA8, type metadata accessor for RecognizedObjectObservation);
  sub_1A5BD9138(v49, v67.n128_f64, v42, v44, v46, v48);
  v50 = [v40 uuid];
  v51 = v61;
  sub_1A5FD365C();

  [v40 confidence];
  LODWORD(v42) = v52;

  v53 = v51 + v39[11];
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *(v53 + 32) = -16;
  *v51 = v15;
  v54 = v64;
  *(v51 + 24) = v65;
  *(v51 + 8) = v54;
  *(v51 + v39[7]) = LODWORD(v42);
  v55 = v51 + v39[8];
  v56 = v73[1];
  *v55 = v73[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v73[2];
  *(v55 + 48) = v74;
  *(v51 + v39[9]) = -8;
  sub_1A5BE9B14(v62, v51 + v39[10]);
  result = sub_1A5B066C4(*v53, *(v53 + 8), *(v53 + 16), *(v53 + 24), *(v53 + 32));
  v58 = v59;
  *v53 = v63;
  *(v53 + 8) = v58;
  *(v53 + 16) = v36;
  *(v53 + 24) = v38;
  *(v53 + 32) = v37;
  return result;
}

uint64_t sub_1A5BE9A08@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return sub_1A5BE8C4C(a1, &v8, v7, a4, a5);
}

unint64_t sub_1A5BE9A40()
{
  result = qword_1EB1F1750;
  if (!qword_1EB1F1750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EFF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1750);
  }

  return result;
}

uint64_t sub_1A5BE9AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BE9B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1A5BE9B84(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFEE8);
  v10 = *(type metadata accessor for ClassificationObservation() - 8);
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
  v15 = *(type metadata accessor for ClassificationObservation() - 8);
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

BOOL _s6Vision27RecognizedObjectObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PixelBufferObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  if ((sub_1A5B676B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v78.origin = *(a1 + 8);
  v78.size = v14;
  v15 = *(a2 + 24);
  v76.origin = *(a2 + 8);
  v76.size = v15;
  if (!static NormalizedRect.== infix(_:_:)(&v78, &v76))
  {
    return 0;
  }

  v16 = type metadata accessor for RecognizedObjectObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v16[7]) != *(a2 + v16[7]))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = a1 + v17;
  v19 = *(a1 + v17 + 48);
  v20 = a2 + v17;
  if (v19)
  {
    if (!*(v20 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(v20 + 48))
    {
      return 0;
    }

    v21 = *v18;
    v22 = *(v18 + 16);
    v23 = *(v18 + 32);
    v24 = *(v20 + 16);
    v25 = *(v20 + 32);
    v78.origin = *v20;
    v78.size = v24;
    v79 = v25;
    v76.origin = v21;
    v76.size = v22;
    v77 = v23;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v16[9];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 <= 0xFFF7)
  {
    LOWORD(v71) = v27;
    if (v28 > 0xFFF7)
    {
      return 0;
    }

    LOWORD(v65) = v28;
    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28 <= 0xFFF7)
  {
    return 0;
  }

  v29 = v16[10];
  v30 = *(v11 + 48);
  sub_1A5BE9AA4(a1 + v29, v13);
  v31 = a2 + v29;
  v32 = v30;
  sub_1A5BE9AA4(v31, &v13[v30]);
  v33 = *(v5 + 48);
  if (v33(v13, 1, v4) == 1)
  {
    if (v33(&v13[v32], 1, v4) == 1)
    {
      sub_1A5B10168(v13, &qword_1EB1EF6F8);
      goto LABEL_22;
    }

LABEL_20:
    sub_1A5B10168(v13, &qword_1EB1EFDA0);
    return 0;
  }

  sub_1A5BE9AA4(v13, v10);
  if (v33(&v13[v32], 1, v4) == 1)
  {
    sub_1A5BEAD5C(v10, type metadata accessor for PixelBufferObservation);
    goto LABEL_20;
  }

  sub_1A5BEADBC(&v13[v32], v7, type metadata accessor for PixelBufferObservation);
  sub_1A5BEAE24(&qword_1EB1EFDE0, type metadata accessor for PixelBufferObservation);
  v34 = sub_1A5FD3D0C();
  sub_1A5BEAD5C(v7, type metadata accessor for PixelBufferObservation);
  sub_1A5BEAD5C(v10, type metadata accessor for PixelBufferObservation);
  sub_1A5B10168(v13, &qword_1EB1EF6F8);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v35 = v16[11];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = *(a1 + v35 + 16);
  v39 = *(a1 + v35 + 24);
  v40 = *(a1 + v35 + 32);
  v41 = a2 + v35;
  v42 = *v41;
  v43 = *(v41 + 8);
  v45 = *(v41 + 16);
  v44 = *(v41 + 24);
  v46 = *(v41 + 32);
  if ((v40 & 0xFFF8) != 0xFFF0)
  {
    v71 = v36;
    v72 = v37;
    v73 = v38;
    v74 = v39;
    v75 = v40;
    if ((v46 & 0xFFF8) == 0xFFF0)
    {
      v51 = v42;
      v52 = v36;
      v61 = v37;
      v53 = v38;
      v54 = v39;
      sub_1A5B06658(v36, v37, v38, v39, v40);
      v63 = v51;
      sub_1A5B06658(v51, v43, v45, v44, v46);
      v55 = v37;
      v50 = v53;
      v64 = v54;
      sub_1A5B06658(v52, v55, v53, v54, v40);
      v47 = v52;
      v48 = v61;
      sub_1A5B066DC(v52, v61);
      goto LABEL_27;
    }

    v65 = v42;
    v66 = v43;
    v67 = v45;
    v68 = v44;
    v69 = HIDWORD(v44);
    v70 = v46;
    v57 = v36;
    v58 = v38;
    v59 = v39;
    sub_1A5B06658(v36, v37, v38, v39, v40);
    sub_1A5B06658(v42, v43, v45, v44, v46);
    sub_1A5B06658(v57, v37, v58, v59, v40);
    sub_1A5B2F50C();
    v60 = sub_1A5FD3D0C();
    sub_1A5B066DC(v65, v66);
    sub_1A5B066DC(v71, v72);
    sub_1A5B066C4(v57, v37, v58, v59, v40);
    return (v60 & 1) != 0;
  }

  v62 = v46 & 0xFFF8;
  v47 = v36;
  v48 = v37;
  v49 = v37;
  v50 = v38;
  v64 = v39;
  sub_1A5B06658(v36, v49, v38, v39, v40);
  v63 = v42;
  sub_1A5B06658(v42, v43, v45, v44, v46);
  if (v62 != 65520)
  {
LABEL_27:
    sub_1A5B066C4(v47, v48, v50, v64, v40);
    sub_1A5B066C4(v63, v43, v45, v44, v46);
    return 0;
  }

  sub_1A5B066C4(v47, v48, v50, v64, v40);
  return 1;
}

unint64_t sub_1A5BEA3DC()
{
  result = qword_1EB228F60[0];
  if (!qword_1EB228F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB228F60);
  }

  return result;
}

unint64_t sub_1A5BEA430()
{
  result = qword_1EB1F1780;
  if (!qword_1EB1F1780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EF6F8);
    sub_1A5BEAE24(&qword_1EB1F1788, type metadata accessor for PixelBufferObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1780);
  }

  return result;
}

unint64_t sub_1A5BEA4E4()
{
  result = qword_1EB1F1798;
  if (!qword_1EB1F1798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1790);
    sub_1A5B2E794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1798);
  }

  return result;
}

uint64_t sub_1A5BEA568(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EF8B8);
    sub_1A5BEAE24(a2, type metadata accessor for ClassificationObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5BEA604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5BEA66C()
{
  result = qword_1EB1EF088;
  if (!qword_1EB1EF088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EF088);
  }

  return result;
}

uint64_t sub_1A5BEA6B8(void *a1)
{
  a1[1] = sub_1A5BEAE24(&qword_1EB1F17C0, type metadata accessor for RecognizedObjectObservation);
  a1[2] = sub_1A5BEAE24(&qword_1EB1F17C8, type metadata accessor for RecognizedObjectObservation);
  a1[3] = sub_1A5BEAE24(&qword_1EB1F17D0, type metadata accessor for RecognizedObjectObservation);
  result = sub_1A5BEAE24(&qword_1EB1F1760, type metadata accessor for RecognizedObjectObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BEA7D4(uint64_t a1)
{
  result = sub_1A5BEAE24(&qword_1EB1F1758, type metadata accessor for RecognizedObjectObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BEA854()
{
  sub_1A5BEAA20(319, &qword_1EB1F17D8, type metadata accessor for ClassificationObservation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5BEAA20(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5B0BC48(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5BEAA20(319, &qword_1EB1EE698, type metadata accessor for PixelBufferObservation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A5B0BC48(319, &qword_1EB1F17E0, &type metadata for ImagePrint, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A5BEAA20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A5BEAA98()
{
  result = qword_1EB229400[0];
  if (!qword_1EB229400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB229400);
  }

  return result;
}

unint64_t sub_1A5BEAAF0()
{
  result = qword_1EB229510;
  if (!qword_1EB229510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB229510);
  }

  return result;
}

unint64_t sub_1A5BEAB48()
{
  result = qword_1EB229518[0];
  if (!qword_1EB229518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB229518);
  }

  return result;
}

uint64_t sub_1A5BEAB9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A6055E10 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72507463656A626FLL && a2 == 0xEB00000000746E69)
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

uint64_t sub_1A5BEAD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5BEADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BEAE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BEAE98()
{
  if (*v0)
  {
    return 0x6369746E616D6573;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1A5BEAEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697369766572 && a2 == 0xE900000000000031;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369746E616D6573 && a2 == 0xEA00000000003756)
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

uint64_t sub_1A5BEAFC8(uint64_t a1)
{
  v2 = sub_1A5BEB3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEB004(uint64_t a1)
{
  v2 = sub_1A5BEB3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BEB040(uint64_t a1)
{
  v2 = sub_1A5BEB488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEB07C(uint64_t a1)
{
  v2 = sub_1A5BEB488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BEB0B8(uint64_t a1)
{
  v2 = sub_1A5BEB434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEB0F4(uint64_t a1)
{
  v2 = sub_1A5BEB434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratePersonSegmentationRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F17E8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F17F0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F17F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BEB3E0();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5BEB434();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5BEB488();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A5BEB3E0()
{
  result = qword_1EB2295C0;
  if (!qword_1EB2295C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2295C0);
  }

  return result;
}

unint64_t sub_1A5BEB434()
{
  result = qword_1EB2295C8;
  if (!qword_1EB2295C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2295C8);
  }

  return result;
}

unint64_t sub_1A5BEB488()
{
  result = qword_1EB2295D0;
  if (!qword_1EB2295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2295D0);
  }

  return result;
}

uint64_t GeneratePersonSegmentationRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GeneratePersonSegmentationRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1800);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1808);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1810);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BEB3E0();
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
    *v21 = &type metadata for GeneratePersonSegmentationRequest.Revision;
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
    sub_1A5BEB434();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5BEB488();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t GeneratePersonSegmentationRequest.__allocating_init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  GeneratePersonSegmentationRequest.init(_:frameAnalysisSpacing:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t GeneratePersonSegmentationRequest.init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  LOBYTE(v21[0]) = 0;
  DWORD1(v21[0]) = 1278226488;
  static NormalizedRect.fullImage.getter((v21 + 8));
  *(&v22 + 1) = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  LOWORD(v23) = 0;
  HIDWORD(v23) = 1063675494;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1818);
  v11 = swift_allocObject();
  *(v11 + 72) = 0;
  v12 = v21[1];
  *(v11 + 16) = v21[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v22;
  *(v11 + 64) = v23;
  *(v5 + 48) = v11;
  type metadata accessor for GeneratePersonSegmentationRequest.State(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  v14 = OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastResult;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1820);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = v13 + OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastAnalyzedTimeStamp;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = 0;
  *(v16 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1828);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v13;
  *(v5 + 56) = v17;
  sub_1A5FD366C();
  if (v10 == 2 && (sub_1A5BF1604(&qword_1EB1F1830, type metadata accessor for GeneratePersonSegmentationRequest), result = sub_1A5D4E900(), LOBYTE(v10) = v20, v20 == 2))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 40) = v10 & 1;
    if (a5)
    {
      a2 = *MEMORY[0x1E6960CC0];
      LODWORD(a3) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v19) = *(MEMORY[0x1E6960CC0] + 12);
      a4 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v19 = HIDWORD(a3);
    }

    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    *(v5 + 28) = v19;
    *(v5 + 32) = a4;
    return v5;
  }

  return result;
}

uint64_t sub_1A5BEBCC4(uint64_t a1)
{
  v2 = sub_1A5BF15B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEBD00(uint64_t a1)
{
  v2 = sub_1A5BF15B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BEBD3C(uint64_t a1)
{
  v2 = sub_1A5BF155C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEBD78(uint64_t a1)
{
  v2 = sub_1A5BF155C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BEBDB4()
{
  v1 = 0x6465636E616C6162;
  if (*v0 != 1)
  {
    v1 = 1953718630;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574617275636361;
  }
}

uint64_t sub_1A5BEBE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BF16BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BEBE30(uint64_t a1)
{
  v2 = sub_1A5BF14B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEBE6C(uint64_t a1)
{
  v2 = sub_1A5BF14B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BEBEA8(uint64_t a1)
{
  v2 = sub_1A5BF1508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BEBEE4(uint64_t a1)
{
  v2 = sub_1A5BF1508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratePersonSegmentationRequest.QualityLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1838);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1840);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1848);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1850);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BF14B4();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5BF155C();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5BF1508();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5BF15B0();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t GeneratePersonSegmentationRequest.QualityLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GeneratePersonSegmentationRequest.QualityLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1858);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1860);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1868);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1870);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BF14B4();
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
          sub_1A5BF155C();
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
          sub_1A5BF1508();
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
        sub_1A5BF15B0();
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
  *v23 = &type metadata for GeneratePersonSegmentationRequest.QualityLevel;
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

void GeneratePersonSegmentationRequest.qualityLevel.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 72));
}

void sub_1A5BEC954(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

void sub_1A5BEC99C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void GeneratePersonSegmentationRequest.qualityLevel.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void (*GeneratePersonSegmentationRequest.qualityLevel.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 48);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 72));
  *(a1 + 8) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 72));
  return sub_1A5B960E0;
}

uint64_t GeneratePersonSegmentationRequest.outputPixelFormatType.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 18);
  os_unfair_lock_opaque = v1[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 18);
  return os_unfair_lock_opaque;
}

void sub_1A5BECAC8(uint64_t a1@<X0>, uint32_t *a2@<X8>)
{
  v3 = *(*a1 + 48);
  os_unfair_lock_lock(v3 + 18);
  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 18);
  *a2 = os_unfair_lock_opaque;
}

void sub_1A5BECB10(uint32_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 48);
  os_unfair_lock_lock(v3 + 18);
  v3[5]._os_unfair_lock_opaque = v2;

  os_unfair_lock_unlock(v3 + 18);
}

void GeneratePersonSegmentationRequest.outputPixelFormatType.setter(uint32_t a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock(v3 + 18);
  v3[5]._os_unfair_lock_opaque = a1;

  os_unfair_lock_unlock(v3 + 18);
}

void (*GeneratePersonSegmentationRequest.outputPixelFormatType.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 48);
  *a1 = v3;
  os_unfair_lock_lock(v3 + 18);
  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 18);
  *(a1 + 8) = os_unfair_lock_opaque;
  return sub_1A5B962A0;
}

void GeneratePersonSegmentationRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 72));
}

__n128 sub_1A5BECC64@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v5 = *(v3 + 40);
  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 72));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5BECCB8(__int128 *a1, uint64_t a2)
{
  v3 = *(*a2 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void GeneratePersonSegmentationRequest.regionOfInterest.setter(__int128 *a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void (*GeneratePersonSegmentationRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + 48);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 72));
  v6 = *(v5 + 40);
  *v4 = *(v5 + 24);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 72));
  return sub_1A5B964BC;
}

uint64_t GeneratePersonSegmentationRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5BF1604(&qword_1EB1F1878, type metadata accessor for GeneratePersonSegmentationRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5BECF14(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  PersonSegmentationRequest = type metadata accessor for GeneratePersonSegmentationRequest(0);
  v6 = sub_1A5BF1604(&qword_1EB1F1830, type metadata accessor for GeneratePersonSegmentationRequest);
  result = a2(PersonSegmentationRequest, v6);
  *a3 = result;
  return result;
}

uint64_t GeneratePersonSegmentationRequest.useTiling.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 64);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1A5BECFF0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

void sub_1A5BED038(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 64) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void GeneratePersonSegmentationRequest.useTiling.setter(char a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 64) = a1;

  os_unfair_lock_unlock((v3 + 72));
}

void (*GeneratePersonSegmentationRequest.useTiling.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 48);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock((v3 + 72));
  *(a1 + 8) = v4;
  return sub_1A5BED128;
}

void sub_1A5BED128(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 18);
  LOBYTE(v1[16]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 18);
}

uint64_t GeneratePersonSegmentationRequest.keepRawOutputMask.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 65);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1A5BED1A4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 65);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

void sub_1A5BED1EC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 65) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void GeneratePersonSegmentationRequest.keepRawOutputMask.setter(char a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 65) = a1;

  os_unfair_lock_unlock((v3 + 72));
}

void (*GeneratePersonSegmentationRequest.keepRawOutputMask.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 48);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 65);
  os_unfair_lock_unlock((v3 + 72));
  *(a1 + 8) = v4;
  return sub_1A5BED2DC;
}

void sub_1A5BED2DC(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 18);
  BYTE1(v1[16]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 18);
}

float GeneratePersonSegmentationRequest.minimumConfidence.getter()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 18);
  v2 = *&v1[17]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 18);
  return v2;
}

void sub_1A5BED360(uint64_t a1@<X0>, uint32_t *a2@<X8>)
{
  v3 = *(*a1 + 48);
  os_unfair_lock_lock(v3 + 18);
  os_unfair_lock_opaque = v3[17]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 18);
  *a2 = os_unfair_lock_opaque;
}

void sub_1A5BED3A8(uint32_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 48);
  os_unfair_lock_lock(v3 + 18);
  v3[17]._os_unfair_lock_opaque = v2;

  os_unfair_lock_unlock(v3 + 18);
}

void GeneratePersonSegmentationRequest.minimumConfidence.setter(float a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 68) = a1;

  os_unfair_lock_unlock((v3 + 72));
}

void (*GeneratePersonSegmentationRequest.minimumConfidence.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 48);
  *a1 = v3;
  os_unfair_lock_lock(v3 + 18);
  os_unfair_lock_opaque = v3[17]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 18);
  *(a1 + 8) = os_unfair_lock_opaque;
  return sub_1A5BED4A8;
}

void sub_1A5BED4A8(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  os_unfair_lock_lock(*a1 + 18);
  v1[17]._os_unfair_lock_opaque = v2;

  os_unfair_lock_unlock(v1 + 18);
}

uint64_t sub_1A5BED52C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1A5BED608(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1A5BED6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastResult;
  swift_beginAccess();
  return sub_1A5B31A34(v1 + v3, a1, &qword_1EB1F1880);
}

uint64_t sub_1A5BED714(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastResult;
  swift_beginAccess();
  sub_1A5BF164C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A5BED7D4()
{
  v1 = v0 + OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastAnalyzedTimeStamp;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A5BED824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastAnalyzedTimeStamp;
  result = swift_beginAccess();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4 & 1;
  return result;
}

uint64_t sub_1A5BED8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1880);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - v9;
  (*(*v3 + 120))(a2, 0, v8);
  (*(*v3 + 144))(a3, 0);
  sub_1A5BF1B08(a1, v10, type metadata accessor for PixelBufferObservation);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1820);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  return (*(*v3 + 168))(v10);
}

uint64_t sub_1A5BEDA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1880);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  (*(*v0 + 120))(0, 1, v2);
  (*(*v0 + 144))(0, 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1820);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  (*(*v0 + 168))(v4);
  return (*(*v0 + 192))(0, 0, 0, 1);
}

uint64_t sub_1A5BEDBEC()
{
  sub_1A5B10168(v0 + OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastResult, &qword_1EB1F1880);

  return swift_deallocClassInstance();
}

uint64_t sub_1A5BEDC60()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastResult;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1820);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCC6Vision33GeneratePersonSegmentationRequest5State_lastAnalyzedTimeStamp;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = 1;
  return v0;
}

uint64_t (*sub_1A5BEDD64(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 176))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5BEDE58(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 200))();
  return sub_1A5B17040;
}

uint64_t GeneratePersonSegmentationRequest.deinit()
{

  v1 = OBJC_IVAR____TtC6Vision33GeneratePersonSegmentationRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GeneratePersonSegmentationRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6Vision33GeneratePersonSegmentationRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GeneratePersonSegmentationRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5BF1604(&qword_1EB1F1888, type metadata accessor for GeneratePersonSegmentationRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5BEE0B0(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void sub_1A5BEE100(__int128 *a1)
{
  v3 = *(*v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t (*sub_1A5BEE150(uint64_t **a1))()
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
  v2[4] = GeneratePersonSegmentationRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5BEE1C4(uint64_t a1)
{
  v2 = sub_1A5BF1604(&qword_1EB1F18A8, type metadata accessor for GeneratePersonSegmentationRequest);

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BEE230(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BF1604(&qword_1EB1F1878, type metadata accessor for GeneratePersonSegmentationRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BEE2D4(uint64_t a1)
{
  v2 = sub_1A5BF1604(&qword_1EB1EF818, type metadata accessor for GeneratePersonSegmentationRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BEE340(uint64_t a1, uint64_t a2)
{
  sub_1A5BF1604(&qword_1EB1F1920, type metadata accessor for GeneratePersonSegmentationRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5BEE3BC(uint64_t a1, uint64_t a2)
{
  sub_1A5BF1604(&qword_1EB1F1920, type metadata accessor for GeneratePersonSegmentationRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5BEE43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5BF1B08(a1, v8, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 24)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670);
    return sub_1A5BD0E58(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5BF1B70(v8, type metadata accessor for VisionResult);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5BF1604(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1890);
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

uint64_t (*sub_1A5BEE674(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 48);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 72));
  *a1 = v4;
  return sub_1A5BEE6E0;
}

uint64_t sub_1A5BEE6E0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 18);
    sub_1A5BDF760(&v2[4]);
    os_unfair_lock_unlock(v2 + 18);
  }

  else
  {
    os_unfair_lock_lock(v2 + 18);
    sub_1A5BDF760(&v2[4]);
    os_unfair_lock_unlock(v2 + 18);
  }
}

uint64_t sub_1A5BEE790()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  os_unfair_lock_lock((v2 + 72));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 72));
  if ((v1 & 1) != 0 || v3 != 1)
  {
    return sub_1A5FD3D5C();
  }

  v4 = [objc_opt_self() detectorTypeForSemanticSegmentationRequest];
  v5 = sub_1A5FD3D5C();

  return v5;
}

id sub_1A5BEE84C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5BF1B08(a1, v10, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() != 24)
  {
    v22 = type metadata accessor for VisionResult;
    v23 = v10;
    return sub_1A5BF1B70(v23, v22);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670);
  sub_1A5BD0E58(&v10[*(v11 + 48)], v7);
  LOWORD(v25[0]) = *(v2 + 40) | 0xB8;
  result = sub_1A5C752E0();
  if (result)
  {
    v13 = result;
    v14 = [objc_allocWithZone(VNPixelBufferObservation) initWithOriginatingRequestSpecifier:result featureName:0 CVPixelBuffer:*&v7[*(v5 + 36)]];

    v15 = sub_1A5FD3D5C();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1898);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1A5FF36F0;
    *(v18 + 32) = v14;
    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18A0);
    v25[0] = v18;
    v19 = *(*a2 + 208);
    v20 = v14;
    v21 = v19(v24);
    sub_1A5B0DE30(v25, v15, v17);
    v21(v24, 0);

    v22 = type metadata accessor for PixelBufferObservation;
    v23 = v7;
    return sub_1A5BF1B70(v23, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5BEEAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5BF1B08(a2, v11, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 24)
  {

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670);
    v13 = sub_1A5BD0E58(&v11[*(v12 + 48)], v8);
    v14 = (*(*a3 + 192))(v13);
    v15 = sub_1A5C599A8(v14);

    if (v15)
    {
      (*(*a1 + 208))(v8, [v15 width], objc_msgSend(v15, sel_height));
    }

    else
    {
      (*(*a1 + 216))(v16);
    }

    v17 = type metadata accessor for PixelBufferObservation;
    v18 = v8;
  }

  else
  {
    v17 = type metadata accessor for VisionResult;
    v18 = v11;
  }

  return sub_1A5BF1B70(v18, v17);
}

uint64_t sub_1A5BEED1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 48);
  os_unfair_lock_lock((v4 + 72));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 72));
  if (v5)
  {
    v3 = 0;
    result = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v14 = *(v1 + 40);
    v7 = swift_allocObject();
    GeneratePersonSegmentationRequest.init(_:frameAnalysisSpacing:)(&v14, 0, 0, 0, 1);
    v8 = *(v7 + 48);
    os_unfair_lock_lock((v8 + 72));
    *(v8 + 16) = 1;
    os_unfair_lock_unlock((v8 + 72));
    v9 = *(v7 + 48);
    os_unfair_lock_lock(v9 + 18);
    v9[5]._os_unfair_lock_opaque = 1278226534;
    os_unfair_lock_unlock(v9 + 18);
    v10 = *(v7 + 48);
    os_unfair_lock_lock((v10 + 72));
    *(v10 + 65) = 1;
    os_unfair_lock_unlock((v10 + 72));
    os_unfair_lock_lock((v4 + 72));
    v12 = *(v4 + 40);
    v13 = *(v4 + 24);
    os_unfair_lock_unlock((v4 + 72));
    v11 = *(v7 + 48);
    os_unfair_lock_lock((v11 + 72));
    *(v11 + 40) = v12;
    *(v11 + 24) = v13;
    os_unfair_lock_unlock((v11 + 72));
    result = sub_1A5BF1604(&qword_1EB1F1830, type metadata accessor for GeneratePersonSegmentationRequest);
  }

  a1[3] = v3;
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_1A5BEEEAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision33GeneratePersonSegmentationRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5BEEF3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670) + 48);
  *a2 = v2;
  sub_1A5BF1B08(a1, a2 + v5, type metadata accessor for PixelBufferObservation);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5BEEFE0()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 56);

  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

uint64_t sub_1A5BEF024()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock(v1 + 18);
  sub_1A5BDF760(&v1[4]);
  os_unfair_lock_unlock(v1 + 18);
}

uint64_t (*sub_1A5BEF088(void *a1))()
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
  v2[4] = sub_1A5BEE674(v2);
  return sub_1A5B17040;
}

double sub_1A5BEF0FC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5BF19D0(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1A5BEF200@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v3 = swift_allocObject();
  result = GeneratePersonSegmentationRequest.init(_:frameAnalysisSpacing:)(&v5, 0, 0, 0, 1);
  *a2 = v3;
  return result;
}

uint64_t sub_1A5BEF268(uint64_t a1)
{
  v2 = v1;
  v92 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  *&v90 = v1;
  v5 = sub_1A5BF1604(&qword_1EB1F18A8, type metadata accessor for GeneratePersonSegmentationRequest);
  v6 = sub_1A5BDA35C(a1, v4, v5);
  v7 = sub_1A5FD3D5C();
  v9 = v8;
  v10 = v2[6];
  os_unfair_lock_lock((v10 + 72));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 72));
  v91 = MEMORY[0x1E69E6810];
  *&v90 = v11;
  sub_1A5B101C8(&v90, v89);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v89, v7, v9, isUniquelyReferenced_nonNull_native);

  v13 = sub_1A5FD3D5C();
  v15 = v14;
  os_unfair_lock_lock((v10 + 72));
  LOBYTE(v11) = *(v10 + 64);
  os_unfair_lock_unlock((v10 + 72));
  v91 = MEMORY[0x1E69E6370];
  LOBYTE(v90) = v11;
  sub_1A5B101C8(&v90, v89);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v89, v13, v15, v16);

  v17 = v6;
  if (v2[5])
  {
    return v17;
  }

  v18 = objc_opt_self();
  *&v90 = 0;
  v19 = [v18 objectClassOutputNamesForObjectClassIDs:4095 modelVersion:1 error:&v90];
  v20 = v90;
  v86 = v2;
  v87 = v17;
  if (v19)
  {
    v21 = v19;
    v22 = sub_1A5FD3F4C();
    v23 = v20;
  }

  else
  {
    v24 = v90;
    v25 = sub_1A5FD348C();

    swift_willThrow();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1A5BB8DA0(MEMORY[0x1E69E7CC0]);
  v27 = *(v22 + 16);
  v88 = v22;
  if (!v27)
  {
LABEL_20:
    v47 = sub_1A5FD3D5C();
    v49 = v48;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B0);
    *&v90 = v26;
    sub_1A5B101C8(&v90, v89);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v89, v47, v49, v50);

    v51 = sub_1A5BF17D4(MEMORY[0x1E69E7CC0]);
    if (v27)
    {
      v52 = 0;
      v53 = (v22 + 40);
      while (1)
      {
        if (v52 >= *(v22 + 16))
        {
          goto LABEL_39;
        }

        v56 = *(v53 - 1);
        v55 = *v53;

        os_unfair_lock_lock((v10 + 72));
        v57 = *(v10 + 65);
        os_unfair_lock_unlock((v10 + 72));
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *&v90 = v51;
        v59 = sub_1A5B0E2A4(v56, v55);
        v61 = v51[2];
        v62 = (v60 & 1) == 0;
        v39 = __OFADD__(v61, v62);
        v63 = v61 + v62;
        if (v39)
        {
          goto LABEL_40;
        }

        v64 = v60;
        if (v51[3] < v63)
        {
          break;
        }

        if (v58)
        {
          goto LABEL_30;
        }

        v69 = v59;
        sub_1A5BF11A4();
        v59 = v69;
        if (v64)
        {
LABEL_22:
          v54 = v59;

          v51 = v90;
          *(*(v90 + 56) + v54) = v57;
          goto LABEL_23;
        }

LABEL_31:
        v51 = v90;
        *(v90 + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v66 = (v51[6] + 16 * v59);
        *v66 = v56;
        v66[1] = v55;
        *(v51[7] + v59) = v57;
        v67 = v51[2];
        v39 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v39)
        {
          goto LABEL_42;
        }

        v51[2] = v68;
LABEL_23:
        ++v52;
        v53 += 2;
        v22 = v88;
        if (v27 == v52)
        {
          goto LABEL_35;
        }
      }

      sub_1A5BF0C64(v63, v58);
      v59 = sub_1A5B0E2A4(v56, v55);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_43;
      }

LABEL_30:
      if (v64)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

LABEL_35:

    v70 = sub_1A5FD3D5C();
    v72 = v71;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B8);
    *&v90 = v51;
    sub_1A5B101C8(&v90, v89);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v89, v70, v72, v73);

    v74 = sub_1A5FD3D5C();
    v76 = v75;
    v91 = MEMORY[0x1E69E6810];
    *&v90 = 1;
    sub_1A5B101C8(&v90, v89);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v89, v74, v76, v77);

    v78 = sub_1A5FD3D5C();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A5FF36F0;
    *(inited + 32) = sub_1A5FD3D5C();
    *(inited + 40) = v82;
    LOWORD(v90) = *(v86 + 40) | 0xB8;
    *(inited + 48) = sub_1A5C752E0();
    v83 = sub_1A5BF18D0(inited);
    swift_setDeallocating();
    sub_1A5B10168(inited + 32, &qword_1EB1F18C8);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18D0);
    *&v90 = v83;
    sub_1A5B101C8(&v90, v89);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v89, v78, v80, v84);

    return v87;
  }

  v28 = 0;
  v29 = (v22 + 40);
  while (1)
  {
    if (v28 >= *(v22 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    v32 = *(v29 - 1);
    v31 = *v29;

    os_unfair_lock_lock((v10 + 72));
    v33 = *(v10 + 20);
    os_unfair_lock_unlock((v10 + 72));
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v26;
    v35 = sub_1A5B0E2A4(v32, v31);
    v37 = v26[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_38;
    }

    v41 = v36;
    if (v26[3] < v40)
    {
      break;
    }

    if (v34)
    {
      goto LABEL_15;
    }

    v46 = v35;
    sub_1A5BF130C();
    v35 = v46;
    if (v41)
    {
LABEL_7:
      v30 = v35;

      v26 = v90;
      *(*(v90 + 56) + 4 * v30) = v33;
      goto LABEL_8;
    }

LABEL_16:
    v26 = v90;
    *(v90 + 8 * (v35 >> 6) + 64) |= 1 << v35;
    v43 = (v26[6] + 16 * v35);
    *v43 = v32;
    v43[1] = v31;
    *(v26[7] + 4 * v35) = v33;
    v44 = v26[2];
    v39 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v39)
    {
      goto LABEL_41;
    }

    v26[2] = v45;
LABEL_8:
    ++v28;
    v29 += 2;
    v22 = v88;
    if (v27 == v28)
    {
      goto LABEL_20;
    }
  }

  sub_1A5BF0F04(v40, v34);
  v35 = sub_1A5B0E2A4(v32, v31);
  if ((v41 & 1) == (v42 & 1))
  {
LABEL_15:
    if (v41)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_43:
  result = sub_1A5FD4B8C();
  __break(1u);
  return result;
}

uint64_t sub_1A5BEFA20(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v34 = *v2;
  v5 = sub_1A5FD3D5C();
  v7 = v6;
  v8 = v2[6];
  os_unfair_lock_lock(v8 + 18);
  os_unfair_lock_opaque = v8[17]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v8 + 18);
  v37 = MEMORY[0x1E69E6448];
  LODWORD(v36[0]) = os_unfair_lock_opaque;
  v32 = *(*a1 + 208);
  v10 = v32(v35);
  sub_1A5B0DE30(v36, v5, v7);
  v10(v35, 0);
  v11 = a1[2];
  sub_1A5B16F58(0, &qword_1EB1F18D8);
  if (swift_dynamicCastMetatype())
  {
    v29 = sub_1A5FD3D5C();
    v28 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C00);
    v31 = v11;
    inited = swift_initStackObject();
    v30 = xmmword_1A5FF36F0;
    *(inited + 16) = xmmword_1A5FF36F0;
    *(inited + 32) = sub_1A5FD3D5C();
    *(inited + 40) = v14;
    os_unfair_lock_lock(v8 + 18);
    v15 = v8[5]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v8 + 18);
    *(inited + 48) = v15;
    v16 = sub_1A5BB8DA0(inited);
    swift_setDeallocating();
    sub_1A5B10168(inited + 32, &qword_1EB1F0C08);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B0);
    v36[0] = v16;
    v17 = v32;
    v18 = v32(v35);
    sub_1A5B0DE30(v36, v29, v28);
    v18(v35, 0);
    v29 = sub_1A5FD3D5C();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18E8);
    v21 = swift_initStackObject();
    *(v21 + 16) = v30;
    *(v21 + 32) = sub_1A5FD3D5C();
    *(v21 + 40) = v22;
    *(v21 + 48) = 0;
    v23 = sub_1A5BF17D4(v21);
    swift_setDeallocating();
    sub_1A5B10168(v21 + 32, &qword_1EB1F18F0);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B8);
    v36[0] = v23;
    v24 = v17(v35);
    sub_1A5B0DE30(v36, v29, v20);
    v24(v35, 0);
  }

  sub_1A5B16F58(0, &qword_1EB1F18E0);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v27[2] = v33;
    v27[3] = a1;
    v27[4] = v3;
    v26 = sub_1A5BF1604(&qword_1EB1F1878, type metadata accessor for GeneratePersonSegmentationRequest);
    return sub_1A5B17D94(sub_1A5BF1BFC, v27, v34, MEMORY[0x1E69E7CA8] + 8, v26, &v38);
  }

  return result;
}

void sub_1A5BEFE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1820);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v9 = v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1880);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v76 - v11;
  v13 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v76 - v18;
  v20 = (*(**(a2 + 16) + 120))(v17);
  if (!v4)
  {
    v79 = v15;
    v81 = v9;
    v78 = v13;
    v80 = v19;
    v84 = 0;
    v21 = v20;
    v86 = v20;
    v22 = [v20 width];
    v23 = [v21 height];
    v24 = v23 < v22;
    if (v23 >= v22)
    {
      v25 = 0x7469617274726F70;
    }

    else
    {
      v25 = 0x70616373646E616CLL;
    }

    if (v24)
    {
      v26 = 0xE900000000000065;
    }

    else
    {
      v26 = 0xE800000000000000;
    }

    v27 = sub_1A5FD3D5C();
    v83 = a1;
    v29 = v28;
    v91 = MEMORY[0x1E69E6158];
    v90[0] = v25;
    v90[1] = v26;
    v30 = *(*a3 + 184);
    v82 = v26;

    v31 = v30(v89);
    sub_1A5B0DE30(v90, v27, v29);
    v31(v89, 0);
    v32 = sub_1A5FD3D5C();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C00);
    inited = swift_initStackObject();
    v85 = xmmword_1A5FF36F0;
    *(inited + 16) = xmmword_1A5FF36F0;
    *(inited + 32) = sub_1A5FD3D5C();
    *(inited + 40) = v36;
    v37 = *(v92 + 48);
    os_unfair_lock_lock(v37 + 18);
    os_unfair_lock_opaque = v37[5]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v37 + 18);
    *(inited + 48) = os_unfair_lock_opaque;
    v39 = sub_1A5BB8DA0(inited);
    swift_setDeallocating();
    sub_1A5B10168(inited + 32, &qword_1EB1F0C08);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B0);
    v90[0] = v39;
    v40 = *(*a3 + 208);
    v41 = a3;
    v42 = *a3 + 208;
    v43 = v40(v89);
    sub_1A5B0DE30(v90, v32, v34);
    v43(v89, 0);
    v44 = sub_1A5FD3D5C();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18E8);
    v47 = swift_initStackObject();
    *(v47 + 16) = v85;
    *(v47 + 32) = sub_1A5FD3D5C();
    *(v47 + 40) = v48;
    *(v47 + 48) = 0;
    v49 = sub_1A5BF17D4(v47);
    swift_setDeallocating();
    sub_1A5B10168(v47 + 32, &qword_1EB1F18F0);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18B8);
    v90[0] = v49;
    v50 = v86;
    v77 = v40;
    v51 = v40(v89);
    v52 = v46;
    v53 = v83;
    sub_1A5B0DE30(v90, v44, v52);
    v51(v89, 0);
    v54 = v50;
    v55 = [v50 height];
    v56 = [v54 width];
    (*(*v53 + 160))();
    if ((*(v87 + 48))(v12, 1, v88))
    {

      sub_1A5B10168(v12, &qword_1EB1F1880);
      return;
    }

    v76[1] = v41;
    v87 = v42;
    v57 = v81;
    sub_1A5B31A34(v12, v81, &qword_1EB1F1820);
    sub_1A5B10168(v12, &qword_1EB1F1880);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v90[0] = *v57;
      v58 = v90[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
      swift_willThrowTypedImpl();

      return;
    }

    v59 = v57;
    v60 = v79;
    sub_1A5BD0E58(v59, v79);
    v61 = v80;
    v62 = sub_1A5BD0E58(v60, v80);
    v63 = (*(*v53 + 112))(v62);
    if (v64 & 1) != 0 || v63 != v56 || (v65 = (*(*v53 + 136))(), (v66) || v65 != v55)
    {
    }

    else
    {
      LOWORD(v90[0]) = *(v92 + 40) | 0xB8;
      v67 = sub_1A5C752E0();
      if (!v67)
      {
        __break(1u);
        return;
      }

      v68 = v67;

      v69 = [objc_allocWithZone(VNPixelBufferObservation) initWithOriginatingRequestSpecifier:v68 featureName:0 CVPixelBuffer:*(v61 + *(v78 + 36))];

      v70 = sub_1A5FD3D5C();
      v72 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1898);
      v73 = swift_allocObject();
      *(v73 + 16) = v85;
      *(v73 + 32) = v69;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F18A0);
      v90[0] = v73;
      v74 = v69;
      v75 = v77(v89);
      sub_1A5B0DE30(v90, v70, v72);
      v75(v89, 0);
    }

    sub_1A5BF1B70(v61, type metadata accessor for PixelBufferObservation);
  }
}

uint64_t sub_1A5BF0720()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock(v1 + 18);
  os_unfair_lock_opaque = v1[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 18);
  return os_unfair_lock_opaque;
}

void sub_1A5BF075C(uint32_t a1)
{
  v3 = *(*v1 + 48);
  os_unfair_lock_lock(v3 + 18);
  v3[5]._os_unfair_lock_opaque = a1;

  os_unfair_lock_unlock(v3 + 18);
}

uint64_t (*sub_1A5BF07A4(uint64_t *a1))()
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
  *(v2 + 32) = GeneratePersonSegmentationRequest.outputPixelFormatType.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5BF0818()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 65);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1A5BF0854(char a1)
{
  v3 = *(*v1 + 48);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 65) = a1;

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t (*sub_1A5BF089C(uint64_t *a1))()
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
  *(v2 + 32) = GeneratePersonSegmentationRequest.keepRawOutputMask.modify(v2);
  return sub_1A5B17040;
}

void sub_1A5BF0A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 48);
  os_unfair_lock_lock((v7 + 72));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 72));
  if (v8 == 2)
  {
    MEMORY[0x1EEE9AC00](v9);
    v11[2] = a1;
    v11[3] = a2;
    v10 = sub_1A5BF1604(&qword_1EB1F1878, type metadata accessor for GeneratePersonSegmentationRequest);
    sub_1A5B17D94(sub_1A5BF28A4, v11, a3, MEMORY[0x1E69E7CA8] + 8, v10, MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1A5BF0B14()
{
  if (*v0)
  {
    return 3737841665;
  }

  else
  {
    return 1;
  }
}

uint64_t GeneratePersonSegmentationRequest.Revision.isPublic.getter()
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

uint64_t sub_1A5BF0C64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1958);
  v34 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A5BF0F04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C18);
  v34 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();
      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A5BF11A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1958);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1A5BF130C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C18);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

unint64_t sub_1A5BF14B4()
{
  result = qword_1EB2295D8;
  if (!qword_1EB2295D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2295D8);
  }

  return result;
}

unint64_t sub_1A5BF1508()
{
  result = qword_1EB2295E0;
  if (!qword_1EB2295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2295E0);
  }

  return result;
}

unint64_t sub_1A5BF155C()
{
  result = qword_1EB2295E8;
  if (!qword_1EB2295E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2295E8);
  }

  return result;
}

unint64_t sub_1A5BF15B0()
{
  result = qword_1EB2295F0[0];
  if (!qword_1EB2295F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2295F0);
  }

  return result;
}

uint64_t sub_1A5BF1604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BF164C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BF16BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617275636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465636E616C6162 && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953718630 && a2 == 0xE400000000000000)
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

unint64_t sub_1A5BF17D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1958);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 24)
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
      *(v3[7] + result) = v7;
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

unint64_t sub_1A5BF18D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1950);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1A5B0E2A4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_1A5BF19D0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = sub_1A5B9D1A0();
    v9 = sub_1A5B9D1A0();
    LODWORD(v8) = sub_1A5B9D1A8(8, v8, v9);
    v10 = sub_1A5B12998();
    v11 = sub_1A5B9D178(v8, v10);
    v12 = sub_1A5B9D1A0();
    v13 = sub_1A5B9D1A0();
    LODWORD(v12) = sub_1A5B9D1A8(8, v12, v13);
    v14 = sub_1A5B12998();
    sub_1A5B9D178(v12, v14);
    v15 = sub_1A5B9D1A0();
    v16 = sub_1A5B9D1A0();
    LODWORD(v15) = sub_1A5B9D1A8(8, v15, v16);
    v17 = sub_1A5B12998();
    sub_1A5B9D178(v15, v17);
    v18 = sub_1A5B9D1A0();
    v19 = sub_1A5B9D1A0();
    LODWORD(v18) = sub_1A5B9D1A8(8, v18, v19);
    v20 = sub_1A5B12998();
    sub_1A5B9D178(v18, v20);
    result = TtTrkRpnNode::config(v11);
  }

  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1A5BF1B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BF1B70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A5BF1C1C()
{
  result = qword_1EB1F18F8;
  if (!qword_1EB1F18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F18F8);
  }

  return result;
}

unint64_t sub_1A5BF1C78()
{
  result = qword_1EB1F1900;
  if (!qword_1EB1F1900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1900);
  }

  return result;
}

unint64_t sub_1A5BF1CE0()
{
  result = qword_1EB1F1910;
  if (!qword_1EB1F1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1910);
  }

  return result;
}

uint64_t sub_1A5BF1D34(uint64_t a1)
{
  result = sub_1A5BF1604(&qword_1EB1EF818, type metadata accessor for GeneratePersonSegmentationRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BF1E68()
{
  result = qword_1EB1F1928;
  if (!qword_1EB1F1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1928);
  }

  return result;
}

uint64_t sub_1A5BF1EF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5BF1604(a4, type metadata accessor for GeneratePersonSegmentationRequest);
  result = sub_1A5BF1604(a6, type metadata accessor for GeneratePersonSegmentationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5BF1FAC(uint64_t a1)
{
  result = sub_1A5BF1604(&qword_1EB1F1830, type metadata accessor for GeneratePersonSegmentationRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BF2004(uint64_t a1)
{
  result = sub_1A5BF202C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BF202C()
{
  result = qword_1EB1F1938;
  if (!qword_1EB1F1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1938);
  }

  return result;
}

uint64_t sub_1A5BF2088()
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

void sub_1A5BF21A4()
{
  sub_1A5BF2248();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A5BF2248()
{
  if (!qword_1EB1F1940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1820);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F1940);
    }
  }
}

unint64_t sub_1A5BF2320()
{
  result = qword_1EB22A3A0[0];
  if (!qword_1EB22A3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22A3A0);
  }

  return result;
}

unint64_t sub_1A5BF2378()
{
  result = qword_1EB22A8B0[0];
  if (!qword_1EB22A8B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22A8B0);
  }

  return result;
}

unint64_t sub_1A5BF23D0()
{
  result = qword_1EB22A9C0;
  if (!qword_1EB22A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22A9C0);
  }

  return result;
}

unint64_t sub_1A5BF2428()
{
  result = qword_1EB22A9C8[0];
  if (!qword_1EB22A9C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22A9C8);
  }

  return result;
}

unint64_t sub_1A5BF2480()
{
  result = qword_1EB22AA50;
  if (!qword_1EB22AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AA50);
  }

  return result;
}

unint64_t sub_1A5BF24D8()
{
  result = qword_1EB22AA58[0];
  if (!qword_1EB22AA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22AA58);
  }

  return result;
}

unint64_t sub_1A5BF2530()
{
  result = qword_1EB22AAE0;
  if (!qword_1EB22AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AAE0);
  }

  return result;
}

unint64_t sub_1A5BF2588()
{
  result = qword_1EB22AAE8[0];
  if (!qword_1EB22AAE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22AAE8);
  }

  return result;
}

unint64_t sub_1A5BF25E0()
{
  result = qword_1EB22AB70;
  if (!qword_1EB22AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AB70);
  }

  return result;
}

unint64_t sub_1A5BF2638()
{
  result = qword_1EB22AB78;
  if (!qword_1EB22AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AB78);
  }

  return result;
}

unint64_t sub_1A5BF2690()
{
  result = qword_1EB22AC00;
  if (!qword_1EB22AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AC00);
  }

  return result;
}

unint64_t sub_1A5BF26E8()
{
  result = qword_1EB22AC08[0];
  if (!qword_1EB22AC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22AC08);
  }

  return result;
}

unint64_t sub_1A5BF2740()
{
  result = qword_1EB22AC90;
  if (!qword_1EB22AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AC90);
  }

  return result;
}

unint64_t sub_1A5BF2798()
{
  result = qword_1EB22AC98[0];
  if (!qword_1EB22AC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22AC98);
  }

  return result;
}

unint64_t sub_1A5BF27F0()
{
  result = qword_1EB22AD20;
  if (!qword_1EB22AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22AD20);
  }

  return result;
}

unint64_t sub_1A5BF2848()
{
  result = qword_1EB22AD28[0];
  if (!qword_1EB22AD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22AD28);
  }

  return result;
}

double PixelBufferObservation.size.getter()
{
  v1 = *(v0 + *(type metadata accessor for PixelBufferObservation() + 36));
  Width = CVPixelBufferGetWidth(v1);
  CVPixelBufferGetHeight(v1);
  return Width;
}

uint64_t type metadata accessor for PixelBufferObservation()
{
  result = qword_1EB1F9970;
  if (!qword_1EB1F9970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PixelBufferObservation.pixelFormat.getter()
{
  v1 = *(v0 + *(type metadata accessor for PixelBufferObservation() + 36));

  return CVPixelBufferGetPixelFormatType(v1);
}

id PixelBufferObservation.cgImage.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];
  v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  [v1 extent];
  v3 = [v2 createCGImage:v1 fromRect:?];

  if (!v3)
  {
    sub_1A5B16774();
    swift_allocError();
    *v4 = 0xD00000000000001DLL;
    *(v4 + 8) = 0x80000001A6055EB0;
    *(v4 + 16) = 0;
    *(v4 + 20) = 8;
    swift_willThrow();
  }

  return v3;
}

uint64_t PixelBufferObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 PixelBufferObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PixelBufferObservation() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t PixelBufferObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for PixelBufferObservation();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t PixelBufferObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6055ED0);
  v1 = type metadata accessor for PixelBufferObservation();
  v2 = *(v0 + *(v1 + 36));
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
  v6 = sub_1A5BF3F70(&qword_1EB1F1960, type metadata accessor for PixelBufferObservation);
  v7 = sub_1A5C29408(v1, &off_1F195B560, v6);
  MEMORY[0x1AC554600](v7);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t PixelBufferObservation.withUnsafePointer<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + *(type metadata accessor for PixelBufferObservation() + 36));
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

Swift::Float __swiftcall PixelBufferObservation.pixel(at:)(Vision::NormalizedPoint at)
{
  v32 = *v1;
  v3 = type metadata accessor for PixelBufferObservation();
  v4 = *(v2 + *(v3 + 36));
  Width = CVPixelBufferGetWidth(v4);
  *&v6 = CVPixelBufferGetHeight(v4);
  sub_1A5B0BCC4(&v31);
  v30 = v31;
  v7 = NormalizedPoint.toImageCoordinates(_:origin:)(__PAIR128__(v6, Width), &v30);
  v8 = round(v7.x);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = round(v7.y);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = v8;
  if (v8 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = v9;
  if (v9 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = CVPixelBufferGetWidth(v4);
  CVPixelBufferGetHeight(v4);
  v13 = v12;
  if (v12 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v10 >= v13)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  if (Height <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v11 >= Height)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = CVPixelBufferGetWidth(v4);
  CVPixelBufferGetHeight(v4);
  v16 = v15;
  if (v15 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v17 = v11 * v16;
  if ((v11 * v16) >> 64 != v17 >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = v10 + v17;
  if (__OFADD__(v10, v17))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  switch(PixelFormatType)
  {
    case 0x4C303068u:
      v22 = sub_1A5BF3F70(&qword_1EB1EF5B0, type metadata accessor for PixelBufferObservation);
      sub_1A5C5F074(v18, v3, MEMORY[0x1E69E7788], v22, &v32);
      _H0 = v32;
      __asm { FCVT            S0, H0 }

      return result;
    case 0x4C303066u:
      v20 = sub_1A5BF3F70(&qword_1EB1EF5B0, type metadata accessor for PixelBufferObservation);
      sub_1A5C5F074(v18, v3, MEMORY[0x1E69E6448], v20, &v32);
      return *&v32;
    case 0x4C303038u:
      v28 = sub_1A5BF3F70(&qword_1EB1EF5B0, type metadata accessor for PixelBufferObservation);
      sub_1A5C5F074(v18, v3, MEMORY[0x1E69E7508], v28, &v32);
      LOBYTE(v29) = v32;
      return v29;
  }

LABEL_43:
  sub_1A5FD483C();
  __break(1u);
  return result;
}

__n128 PixelBufferObservation.croppedBoundingBox.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PixelBufferObservation() + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1A5BF327C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v13 = *a3;
  v14 = *(a5 + 32);
  v15 = type metadata accessor for PixelBufferObservation();
  *(a6 + v15[9]) = a4;
  v16 = sub_1A5FD367C();
  v21 = *(a5 + 16);
  v22 = *a5;
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *(a6 + v15[5]) = a7;
  v17 = a6 + v15[6];
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 48) = *(a2 + 48);
  *(a6 + v15[7]) = v13;
  v19 = a6 + v15[8];
  result = v22;
  *v19 = v22;
  *(v19 + 16) = v21;
  *(v19 + 32) = v14;
  return result;
}

uint64_t PixelBufferObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for PixelBufferObservation();
  sub_1A5BF3F70(&qword_1EB1F1968, type metadata accessor for PixelBufferObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

__n128 sub_1A5BF3410@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

double sub_1A5BF342C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  Width = CVPixelBufferGetWidth(v2);
  CVPixelBufferGetHeight(v2);
  return Width;
}

__n128 sub_1A5BF3478@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v14 = *a3;
  v15 = *(a5 + 32);
  *(a7 + a6[9]) = a4;
  v16 = sub_1A5FD367C();
  v23 = *(a5 + 16);
  v24 = *a5;
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = a6[6];
  *(a7 + a6[5]) = a8;
  v18 = a7 + v17;
  v19 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a2 + 32);
  *(v18 + 48) = *(a2 + 48);
  v20 = a6[8];
  *(a7 + a6[7]) = v14;
  v21 = a7 + v20;
  result = v24;
  *v21 = v24;
  *(v21 + 16) = v23;
  *(v21 + 32) = v15;
  return result;
}

uint64_t sub_1A5BF3564(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BF3F70(&qword_1EB1F1960, type metadata accessor for PixelBufferObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

__n128 sub_1A5BF36E0@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a2;
  [a1 croppedBoundingBox];
  IsEmpty = CGRectIsEmpty(v25);
  v9 = 0uLL;
  v10 = 0uLL;
  if (!IsEmpty)
  {
    [a1 croppedBoundingBox];
    NormalizedRect.init(normalizedRect:)(v26);
    v9 = v23;
    v10 = v24;
  }

  v21 = v10;
  v22 = v9;
  v11 = a1;
  v12 = [v11 uuid];
  sub_1A5FD365C();

  [v11 confidence];
  v14 = v13;

  v15 = [v11 pixelBuffer];
  v16 = type metadata accessor for PixelBufferObservation();
  *(a4 + v16[9]) = v15;
  *(a4 + v16[5]) = v14;
  v17 = a4 + v16[6];
  v18 = *(a3 + 16);
  *v17 = *a3;
  *(v17 + 16) = v18;
  *(v17 + 32) = *(a3 + 32);
  *(v17 + 48) = *(a3 + 48);
  *(a4 + v16[7]) = v7;
  v19 = a4 + v16[8];
  result = v22;
  *v19 = v22;
  *(v19 + 16) = v21;
  *(v19 + 32) = IsEmpty;
  return result;
}

uint64_t PixelBufferObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 pixelBuffer];
  v10 = sub_1A5B3AB70();

  v11 = a1;
  v12 = [v11 uuid];
  sub_1A5FD365C();

  [v11 confidence];
  v14 = v13;
  [v11 timeRange];
  v15 = v26;
  v16 = v27;
  v22 = v25;
  v23 = v24;

  v17 = type metadata accessor for PixelBufferObservation();
  *(a2 + v17[9]) = v10;
  (*(v5 + 32))(a2, v8, v4);
  *(a2 + v17[5]) = v14;
  v18 = a2 + v17[6];
  v19 = v22;
  *v18 = v23;
  *(v18 + 16) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 0;
  *(a2 + v17[7]) = -8;
  v20 = a2 + v17[8];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 1;
  return (*(*(v17 - 1) + 56))(a2, 0, 1, v17);
}

double sub_1A5BF3AAC@<D0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a2;
  *&result = sub_1A5BF36E0(a1, &v5, a3, a4).n128_u64[0];
  return result;
}

id _s6Vision22PixelBufferObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A5FD367C();
  sub_1A5BF3F70(&qword_1EB1F0490, MEMORY[0x1E69695A8]);
  if ((sub_1A5FD3D0C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PixelBufferObservation();
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

      return [objc_opt_self() isCVPixelBuffer:*(a1 + v4[9]) equalToCVPixelBuffer:*(a2 + v4[9])];
    }

    if (v10 > 0xFFF7)
    {
      return [objc_opt_self() isCVPixelBuffer:*(a1 + v4[9]) equalToCVPixelBuffer:*(a2 + v4[9])];
    }
  }

  return 0;
}

uint64_t sub_1A5BF3C60(void *a1)
{
  a1[1] = sub_1A5BF3F70(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation);
  a1[2] = sub_1A5BF3F70(&qword_1EB1F17B8, type metadata accessor for PixelBufferObservation);
  a1[3] = sub_1A5BF3F70(&qword_1EB1F1788, type metadata accessor for PixelBufferObservation);
  result = sub_1A5BF3F70(&qword_1EB1F1968, type metadata accessor for PixelBufferObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BF3D34(uint64_t a1)
{
  result = sub_1A5BF3F70(&qword_1EB1F1960, type metadata accessor for PixelBufferObservation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5BF3DD4(uint64_t a1)
{
  result = sub_1A5BF3F70(&qword_1EB1F1960, type metadata accessor for PixelBufferObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BF3E54()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5BF3FB8(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5BF3FB8(319, &qword_1EB1EE708, &type metadata for NormalizedRect, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CVBuffer(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A5BF3F70(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A5BF3FB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for SaliencyImageObservation()
{
  result = qword_1EB22B540;
  if (!qword_1EB22B540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SaliencyImageObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaliencyImageObservation() + 24);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 SaliencyImageObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SaliencyImageObservation() + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t SaliencyImageObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000029, 0x80000001A6055F40);
  v0 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A6055F70);
  v1 = type metadata accessor for SaliencyImageObservation();
  type metadata accessor for PixelBufferObservation();
  sub_1A5BF62F8(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation);
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v3 = sub_1A5BF62F8(&qword_1EB1F1970, type metadata accessor for SaliencyImageObservation);
  v4 = sub_1A5C29408(v1, &off_1F195B5B8, v3);
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t SaliencyImageObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SaliencyImageObservation();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SaliencyImageObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for SaliencyImageObservation();
  sub_1A5BF62F8(&qword_1EB1F1978, type metadata accessor for SaliencyImageObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BF4410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BF62F8(&qword_1EB1F1970, type metadata accessor for SaliencyImageObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5BF4494()
{
  v1 = 0x70614D74616568;
  if (*v0 != 1)
  {
    v1 = 0x4F746E65696C6173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5BF4504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BF616C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BF452C(uint64_t a1)
{
  v2 = sub_1A5BF5BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF4568(uint64_t a1)
{
  v2 = sub_1A5BF5BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SaliencyImageObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v6 = *(v5 - 8);
  v18 = v5;
  v19 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BF5BA4();
  sub_1A5FD4CDC();
  v13 = type metadata accessor for SaliencyImageObservation();
  v23 = 1;
  type metadata accessor for PixelBufferObservation();
  sub_1A5BF62F8(&qword_1EB1F1788, type metadata accessor for PixelBufferObservation);
  sub_1A5FD4A5C();
  if (!v2)
  {
    v14 = v19;
    v20 = *v3;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8F0);
    sub_1A5BF5BF8(&qword_1EB1F1310, &qword_1EB1EED60);
    sub_1A5FD4A5C();
    v21 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v15 = sub_1A5BF62F8(&qword_1EB1F1970, type metadata accessor for SaliencyImageObservation);
    sub_1A5BBD46C(v8, v13, &off_1F195B5B8, v15);
    (*(v14 + 8))(v8, v18);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t SaliencyImageObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1A5FD367C();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v32 - v6;
  v41 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v41);
  v42 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1988);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SaliencyImageObservation();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BF5BA4();
  v15 = v43;
  sub_1A5FD4CCC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v7;
  v17 = v39;
  v16 = v40;
  v43 = v12;
  LOBYTE(v47) = 1;
  sub_1A5BF62F8(&qword_1EB1F17B8, type metadata accessor for PixelBufferObservation);
  sub_1A5FD497C();
  sub_1A5BF5C94(v42, v14 + v43[5], type metadata accessor for PixelBufferObservation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8F0);
  v44 = 2;
  sub_1A5BF5BF8(&qword_1EB1F1330, &qword_1EB1EED58);
  sub_1A5FD497C();
  v42 = v14;
  *v14 = v47;
  LOBYTE(v47) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v18 = a1;
  v32 = v11;
  v41 = v9;
  LOBYTE(v47) = 0;
  sub_1A5BF62F8(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v19 = v35;
  v20 = v37;
  v21 = v16;
  sub_1A5FD497C();
  v22 = v43;
  v23 = v19;
  v24 = v42;
  (*(v38 + 32))(v42 + v43[6], v23, v20);
  LOBYTE(v47) = 1;
  sub_1A5FD495C();
  *(v24 + v22[7]) = v25;
  v44 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v27 = v42;
  v26 = v43;
  *(v42 + v43[9]) = v47;
  v28 = v33;
  sub_1A5BBDB04(v45);
  (*(v36 + 8))(v28, v21);
  (*(v17 + 8))(v32, v41);
  v29 = v27 + v26[8];
  v30 = v45[1];
  *v29 = v45[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v45[2];
  *(v29 + 48) = v46;
  sub_1A5BF6290(v27, v34, type metadata accessor for SaliencyImageObservation);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1A5BF6340(v27, type metadata accessor for SaliencyImageObservation);
}

void sub_1A5BF5070(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v43 = a4;
  v9 = type metadata accessor for RectangleObservation();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *a2;
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v17 = a3[3];
  v18 = [a1 salientObjects];
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    goto LABEL_15;
  }

  v20 = v18;
  sub_1A5B1AC0C();
  v21 = sub_1A5FD3F4C();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v22 = sub_1A5FD484C();
  if (!v22)
  {
LABEL_14:

LABEL_15:
    v28 = v44;
    LOWORD(v46) = v44;
    v47 = v14;
    v48 = v15;
    v49 = v16;
    v50 = v17;
    v29 = type metadata accessor for SaliencyImageObservation();
    v30 = v29[5];
    v31 = a1;
    v32 = a5 + v30;
    v33 = v43;
    sub_1A5BF36E0(v31, &v46, v43, v32);
    v34 = v31;
    v35 = [v34 uuid];
    sub_1A5FD365C();

    [v34 confidence];
    v37 = v36;

    *a5 = v19;
    *(a5 + v29[7]) = v37;
    v38 = a5 + v29[8];
    v39 = *(v33 + 16);
    *v38 = *v33;
    *(v38 + 1) = v39;
    *(v38 + 2) = *(v33 + 32);
    v38[48] = *(v33 + 48);
    *(a5 + v29[9]) = v28;
    return;
  }

LABEL_4:
  v46 = v19;
  sub_1A5B694C0(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v41 = a1;
    v42 = a5;
    v23 = 0;
    v19 = v46;
    v24 = v43;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1AC554EE0](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v45 = v44;
      v47 = v14;
      v48 = v15;
      v49 = v16;
      v50 = v17;
      sub_1A5B28024(v25, &v45, &v47, v24, v13);
      v46 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1A5B694C0(v26 > 1, v27 + 1, 1);
        v24 = v43;
        v19 = v46;
      }

      ++v23;
      *(v19 + 16) = v27 + 1;
      sub_1A5BF5C94(v13, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v27, type metadata accessor for RectangleObservation);
    }

    while (v22 != v23);

    a1 = v41;
    a5 = v42;
    goto LABEL_15;
  }

  __break(1u);
}

size_t SaliencyImageObservation.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RectangleObservation();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11 - 8).n128_u64[0];
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 pixelBuffer];
  v17 = sub_1A5B3AB70();
  v49 = v10;
  v51.n128_u64[0] = v17;

  v18 = [a1 salientObjects];
  v19 = MEMORY[0x1E69E7CC0];
  v50 = v5;
  if (!v18)
  {
    goto LABEL_15;
  }

  v20 = v18;
  v47 = v4;
  v48 = a2;
  sub_1A5B1AC0C();
  v21 = sub_1A5FD3F4C();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v22 = sub_1A5FD484C();
  if (!v22)
  {
LABEL_14:

    a2 = v48;
    v4 = v47;
LABEL_15:
    v31 = a1;
    v32 = [v31 uuid];
    sub_1A5FD365C();

    [v31 confidence];
    v34 = v33;
    [v31 timeRange];
    v61 = 0;
    v53[0].n128_u16[0] = -8;
    v57 = 0u;
    v56 = 0u;
    LOBYTE(v58) = 1;
    v35 = v51.n128_u64[0];
    v36 = v49;
    v37 = [v31 uuid];
    sub_1A5FD365C();

    [v31 confidence];
    v39 = v38;
    [v31 timeRange];
    v40 = v58;
    v41 = v59;
    v52 = v56;
    v51 = v57;

    *a2 = v19;
    v42 = type metadata accessor for SaliencyImageObservation();
    sub_1A5BF5C94(v36, a2 + v42[5], type metadata accessor for PixelBufferObservation);
    (*(v50 + 32))(a2 + v42[6], v7, v4);
    *(a2 + v42[7]) = v39;
    v43 = (a2 + v42[8]);
    v44 = v51;
    *v43 = v52;
    v43[1] = v44;
    v43[2].n128_u64[0] = v40;
    v43[2].n128_u64[1] = v41;
    v43[3].n128_u8[0] = 0;
    *(a2 + v42[9]) = -8;
    return (*(*(v42 - 1) + 56))(a2, 0, 1, v42);
  }

LABEL_4:
  v46 = v7;
  v55 = v19;
  result = sub_1A5B694C0(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v19 = v55;
    v25 = v21;
    v52.n128_u64[0] = v21 & 0xC000000000000001;
    v26 = v22;
    do
    {
      if (v52.n128_u64[0])
      {
        v27 = MEMORY[0x1AC554EE0](v24, v25);
      }

      else
      {
        v27 = *(v25 + 8 * v24 + 32);
      }

      v28 = v27;
      v54 = -8;
      static NormalizedRect.fullImage.getter(&v56);
      v53[0] = v56;
      v53[1] = v57;
      [a1 timeRange];
      v62[0] = v60[0];
      v62[1] = v60[1];
      v62[2] = v60[2];
      v63 = 0;
      sub_1A5B28024(v28, &v54, v53, v62, v15);
      v55 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1A5B694C0(v29 > 1, v30 + 1, 1);
        v19 = v55;
      }

      ++v24;
      *(v19 + 16) = v30 + 1;
      sub_1A5BF5C94(v15, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v30, type metadata accessor for RectangleObservation);
      v25 = v21;
    }

    while (v26 != v24);

    a2 = v48;
    v4 = v47;
    v7 = v46;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1A5BF5A20(void *a1@<X0>, unsigned __int16 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  sub_1A5BF5070(a1, &v7, v6, a4, a5);
}

uint64_t _s6Vision24SaliencyImageObservationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1A5B682E0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SaliencyImageObservation();
  if ((static PixelBufferObservation.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_1A5FD364C() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if ((v6 & 1) == 0)
  {
    if ((v7[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v8 = v4[9];
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
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1A5BF5BA4()
{
  result = qword_1EB22B1B0[0];
  if (!qword_1EB22B1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22B1B0);
  }

  return result;
}

uint64_t sub_1A5BF5BF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EF8F0);
    sub_1A5BF62F8(a2, type metadata accessor for RectangleObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5BF5C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BF5CFC(void *a1)
{
  a1[1] = sub_1A5BF62F8(&qword_1EB1EFAA8, type metadata accessor for SaliencyImageObservation);
  a1[2] = sub_1A5BF62F8(&qword_1EB1F1990, type metadata accessor for SaliencyImageObservation);
  a1[3] = sub_1A5BF62F8(&qword_1EB1F1998, type metadata accessor for SaliencyImageObservation);
  result = sub_1A5BF62F8(&qword_1EB1F1978, type metadata accessor for SaliencyImageObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BF5E18(uint64_t a1)
{
  result = sub_1A5BF62F8(&qword_1EB1F1970, type metadata accessor for SaliencyImageObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BF5E98()
{
  sub_1A5BF5FF0(319, &qword_1EB1F19A8, type metadata accessor for RectangleObservation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PixelBufferObservation();
    if (v1 <= 0x3F)
    {
      sub_1A5FD367C();
      if (v2 <= 0x3F)
      {
        sub_1A5BF5FF0(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5B1217C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A5BF5FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A5BF6068()
{
  result = qword_1EB22B650[0];
  if (!qword_1EB22B650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22B650);
  }

  return result;
}

unint64_t sub_1A5BF60C0()
{
  result = qword_1EB22B760;
  if (!qword_1EB22B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B760);
  }

  return result;
}

unint64_t sub_1A5BF6118()
{
  result = qword_1EB22B768[0];
  if (!qword_1EB22B768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22B768);
  }

  return result;
}

uint64_t sub_1A5BF616C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70614D74616568 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F746E65696C6173 && a2 == 0xEE00737463656A62)
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

uint64_t sub_1A5BF6290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BF62F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BF6340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5BF63A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A5FF36F0;
    MEMORY[0x1AC554600](0x203A5453455456, 0xE700000000000000);
    sub_1A5FD481C();
    MEMORY[0x1AC554600](8250, 0xE200000000000000);
    MEMORY[0x1AC554600](a2, a3);
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_1A5FD4BFC();
  }

  return result;
}

unint64_t sub_1A5BF64B8()
{
  result = qword_1EB1F19B0;
  if (!qword_1EB1F19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F19B0);
  }

  return result;
}

uint64_t static DetectFaceRectanglesRequest.Revision.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1A5BC5BB4(*a2, &unk_1F195B708);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F195B730) < v3;
  return (v7 & 1) != 0 || v6;
}

uint64_t sub_1A5BF65B0(uint64_t a1)
{
  v2 = sub_1A5BF717C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF65EC(uint64_t a1)
{
  v2 = sub_1A5BF717C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF6628(uint64_t a1)
{
  v2 = sub_1A5BF7080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF6664(uint64_t a1)
{
  v2 = sub_1A5BF7080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF66A0(uint64_t a1)
{
  v2 = sub_1A5BF7128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF66DC(uint64_t a1)
{
  v2 = sub_1A5BF7128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF6718(uint64_t a1)
{
  v2 = sub_1A5BF70D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF6754(uint64_t a1)
{
  v2 = sub_1A5BF70D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF6790()
{
  v1 = *v0;
  v2 = 0x6E6F697369766572;
  v3 = 0x3576444F4E41;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x416576616C637865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F4E5F33444F4E41;
  if (v1 != 1)
  {
    v5 = 0x6F4E5F34444F4E41;
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

uint64_t sub_1A5BF6868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BF8D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BF6890(uint64_t a1)
{
  v2 = sub_1A5BF6FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF68CC(uint64_t a1)
{
  v2 = sub_1A5BF6FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF6908(uint64_t a1)
{
  v2 = sub_1A5BF702C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF6944(uint64_t a1)
{
  v2 = sub_1A5BF702C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF6980(uint64_t a1)
{
  v2 = sub_1A5BF71D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF69BC(uint64_t a1)
{
  v2 = sub_1A5BF71D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectFaceRectanglesRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19B8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19C0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19C8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19D0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19D8);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19E0);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19E8);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BF6FD8();
  sub_1A5FD4CDC();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A5BF70D4();
      v21 = v33;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A5BF7080();
      v21 = v36;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A5BF702C();
      v21 = v39;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A5BF717C();
      v21 = v27;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A5BF7128();
      v21 = v30;
      v22 = v42;
      sub_1A5FD49EC();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A5BF71D0();
  v22 = v42;
  sub_1A5FD49EC();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1A5BF6FD8()
{
  result = qword_1EB22B910;
  if (!qword_1EB22B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B910);
  }

  return result;
}

unint64_t sub_1A5BF702C()
{
  result = qword_1EB22B918;
  if (!qword_1EB22B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B918);
  }

  return result;
}

unint64_t sub_1A5BF7080()
{
  result = qword_1EB22B920;
  if (!qword_1EB22B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B920);
  }

  return result;
}

unint64_t sub_1A5BF70D4()
{
  result = qword_1EB22B928;
  if (!qword_1EB22B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B928);
  }

  return result;
}

unint64_t sub_1A5BF7128()
{
  result = qword_1EB22B930;
  if (!qword_1EB22B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B930);
  }

  return result;
}

unint64_t sub_1A5BF717C()
{
  result = qword_1EB22B938;
  if (!qword_1EB22B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22B938);
  }

  return result;
}

unint64_t sub_1A5BF71D0()
{
  result = qword_1EB22B940[0];
  if (!qword_1EB22B940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22B940);
  }

  return result;
}

uint64_t DetectFaceRectanglesRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t DetectFaceRectanglesRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19F0);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F19F8);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A00);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v43[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A08);
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v43[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A10);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A18);
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A20);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43[-v21];
  v23 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1A5BF6FD8();
  v24 = v62;
  sub_1A5FD4CCC();
  if (!v24)
  {
    v45 = v16;
    v25 = v15;
    v27 = v60;
    v26 = v61;
    v62 = v20;
    v28 = v22;
    v29 = sub_1A5FD49BC();
    if (*(v29 + 16) != 1 || (v30 = *(v29 + 32), v30 == 6))
    {
      v33 = sub_1A5FD471C();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v35 = &type metadata for DetectFaceRectanglesRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v62 + 8))(v28, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v29 + 32);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          v39 = v59;
          v67 = 3;
          sub_1A5BF70D4();
          sub_1A5FD48CC();
          v40 = v62;
          (*(v52 + 8))(v26, v51);
          (*(v40 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v36 = v39;
        }

        else
        {
          v36 = v59;
          v37 = v62;
          if (v30 == 4)
          {
            v68 = 4;
            sub_1A5BF7080();
            v38 = v57;
            sub_1A5FD48CC();
            (*(v54 + 8))(v38, v53);
          }

          else
          {
            v69 = 5;
            sub_1A5BF702C();
            v41 = v58;
            sub_1A5FD48CC();
            (*(v55 + 8))(v41, v56);
          }

          (*(v37 + 8))(v22, v19);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v30)
        {
          if (v30 == 1)
          {
            v65 = 1;
            sub_1A5BF717C();
            v31 = v25;
            sub_1A5FD48CC();
            v32 = v62;
            (*(v47 + 8))(v31, v48);
          }

          else
          {
            v66 = 2;
            sub_1A5BF7128();
            sub_1A5FD48CC();
            v32 = v62;
            (*(v49 + 8))(v27, v50);
          }
        }

        else
        {
          v64 = 0;
          sub_1A5BF71D0();
          sub_1A5FD48CC();
          (*(v46 + 8))(v18, v45);
          v32 = v62;
        }

        (*(v32 + 8))(v22, v19);
        swift_unknownObjectRelease();
        v36 = v59;
      }

      *v36 = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1A5BF7ADC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1A5BC5BB4(*a2, &unk_1F195B708);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F195B730) < v3;
  return (v7 & 1) != 0 || v6;
}

uint64_t sub_1A5BF7B40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1A5BC5BB4(*a1, &unk_1F195B708);
  if (v4)
  {
    return 1;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F195B730) >= v3;
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1A5BF7BA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1A5BC5BB4(*a2, &unk_1F195B708);
  if (v4)
  {
    return 1;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F195B730) >= v3;
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1A5BF7C00(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1A5BC5BB4(*a1, &unk_1F195B708);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F195B730) < v3;
  return (v7 & 1) != 0 || v6;
}

unint64_t DetectFaceRectanglesRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v7);
  DWORD1(v8) = 0;
  BYTE8(v8) = 1;
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v9 = result;
  if (v3 == 6 && (sub_1A5B0F5B8(), result = sub_1A5D4E900(), LOBYTE(v3) = v6, v6 == 6))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v8) = v3;
    v5 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v5;
    *(a2 + 48) = v9;
    *(a2 + 32) = v8;
  }

  return result;
}

__n128 DetectFaceRectanglesRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DetectFaceRectanglesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5BF7D7C()
{
  sub_1A5B0F5B8();
  result = sub_1A5D4EB30();
  qword_1EB22B8F8 = result;
  return result;
}

uint64_t DetectFaceRectanglesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5B0F5B8();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectFaceRectanglesRequest, v3);
}

uint64_t sub_1A5BF7E28()
{
  sub_1A5B0F5B8();
  result = sub_1A5D4EC2C();
  qword_1EB22B908 = result;
  return result;
}

uint64_t DetectFaceRectanglesRequest.supportsPrecisionRecallThresholdOverride.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v1;
  v16[2] = *(v0 + 32);
  v17 = *(v0 + 48);
  v2 = sub_1A5BF8F90();
  sub_1A5BD9578(0, &type metadata for DetectFaceRectanglesRequest, v2);
  v4 = v3;
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(v4);

  v6 = sub_1A5FD3BDC();

  *&v16[0] = 0;
  v7 = [ObjCClassFromMetadata defaultFilterThresholdsForOptions:v6 error:v16];

  v8 = *&v16[0];
  if (!v7)
  {
    v13 = *&v16[0];
    v14 = sub_1A5FD348C();

    swift_willThrow();
LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  type metadata accessor for VNShotflowDetectorFilterThresholdKey();
  sub_1A5B16F58(0, &qword_1EB1F3E80);
  sub_1A5BF9A90(&qword_1EB1F0F60, type metadata accessor for VNShotflowDetectorFilterThresholdKey);
  v9 = sub_1A5FD3C0C();
  v10 = v8;

  if (!*(v9 + 16))
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1A5BC794C(@"VNShotflowDetectorFilterThresholdKey_HumanFace");
  v12 = v11;

  return v12 & 1;
}

uint64_t DetectFaceRectanglesRequest.precisionRecallThresholdOverride.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t static DetectFaceRectanglesRequest.precisionRecallThresholdOverrideSupportingRevisions.getter()
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EB22B900 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EB22B908 + 16);
  if (v0)
  {
    v1 = (qword_1EB22B908 + 32);
    v22 = MEMORY[0x1E69E7CC0];
    v2 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v4 = *v1++;
      v3 = v4;
      if (v4 != 5)
      {
        static NormalizedRect.fullImage.getter(v23);
        DWORD1(v24) = 0;
        BYTE8(v24) = 1;
        LOBYTE(v24) = v3;
        v27 = v2;
        v26[0] = v23[0];
        v26[1] = v23[1];
        v26[2] = v24;
        v25 = v2;
        v5 = sub_1A5BF8F90();
        sub_1A5BD9578(0, &type metadata for DetectFaceRectanglesRequest, v5);
        v7 = v6;
        sub_1A5B16F58(0, &qword_1EB1F0B70);
        if (swift_dynamicCastMetatype())
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_1A5B37FAC(v7);

          v9 = sub_1A5FD3BDC();

          v23[0].n128_u64[0] = 0;
          v10 = [ObjCClassFromMetadata defaultFilterThresholdsForOptions:v9 error:v23];

          v11 = v23[0].n128_u64[0];
          if (!v10)
          {
            v19 = v23[0].n128_u64[0];
            v20 = sub_1A5FD348C();

            swift_willThrow();
            sub_1A5B673FC(v26);
            goto LABEL_5;
          }

          type metadata accessor for VNShotflowDetectorFilterThresholdKey();
          sub_1A5B16F58(0, &qword_1EB1F3E80);
          sub_1A5BF9A90(&qword_1EB1F0F60, type metadata accessor for VNShotflowDetectorFilterThresholdKey);
          v12 = sub_1A5FD3C0C();
          v13 = v11;

          if (*(v12 + 16))
          {
            sub_1A5BC794C(@"VNShotflowDetectorFilterThresholdKey_HumanFace");
            v15 = v14;

            sub_1A5B673FC(v26);
            if (v15)
            {
              v16 = v22;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1A5BF8C64(0, *(v22 + 16) + 1, 1);
                v16 = v22;
              }

              v18 = *(v16 + 16);
              v17 = *(v16 + 24);
              if (v18 >= v17 >> 1)
              {
                sub_1A5BF8C64((v17 > 1), v18 + 1, 1);
                v16 = v22;
              }

              *(v16 + 16) = v18 + 1;
              v22 = v16;
              *(v16 + v18 + 32) = v3;
            }

            goto LABEL_5;
          }
        }

        sub_1A5B673FC(v26);
      }

LABEL_5:
      if (!--v0)
      {
        return v22;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t DetectFaceRectanglesRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  sub_1A5FD4C3C();
  if (v4 != 1)
  {
    sub_1A5FD4C4C();
  }

  return sub_1A5B0ED0C(a1, v5);
}

uint64_t DetectFaceRectanglesRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectFaceRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BF85EC(uint64_t a1)
{
  v2 = sub_1A5BF8F90();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BF8628(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B0F5B8();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BF868C(uint64_t a1)
{
  v2 = sub_1A5B5EF80();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BF86C8()
{
  sub_1A5FD4C1C();
  DetectFaceRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BF870C()
{
  sub_1A5FD4C1C();
  DetectFaceRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

double sub_1A5BF8748@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5BF8FE4(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1A5BF878C()
{
  if (*(v0 + 32) > 4u)
  {
    return 6;
  }

  else
  {
    return sub_1A5FD3D5C();
  }
}

uint64_t sub_1A5BF87D4(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EF80();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5BF8820@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  DWORD1(v9) = 0;
  BYTE8(v9) = 1;
  v4 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  LOBYTE(v9) = v3;
  result = v8[0].n128_f64[0];
  v6 = v8[1];
  v7 = v9;
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1A5BF8884(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 9);
  v7 = *(v2 + 40);
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v9 = v2[1];
    v17 = *v2;
    v18 = v9;
    v19 = *(v2 + 8);
    v20 = v6;
    v21 = v7;
    v22[0] = *(v2 + 41);
    *(v22 + 7) = *(v2 + 6);
    v10 = sub_1A5BF9124();
    result = sub_1A5D23E14(a1, a2, &type metadata for DetectFaceRectanglesRequest, v10);
    if (!v3)
    {
      v11 = sub_1A5FD3D5C();
      v13 = v12;
      if (v7)
      {
        v14 = 0;
        v17 = 0uLL;
        *&v18 = 0;
      }

      else
      {
        LODWORD(v17) = v6;
        v14 = MEMORY[0x1E69E6448];
      }

      *(&v18 + 1) = v14;
      v15 = (*(*a1 + 208))(v16);
      sub_1A5B0DE30(&v17, v11, v13);
      return v15(v16, 0);
    }
  }

  return result;
}

uint64_t sub_1A5BF8A7C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 3737841668)
  {
    if (result == 3)
    {
      *a2 = 0;
      return result;
    }

    if (result == 3737841668)
    {
      *a2 = 1;
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 3737841671:
        *a2 = 4;
        return result;
      case 3737841670:
        *a2 = 3;
        return result;
      case 3737841669:
        *a2 = 2;
        return result;
    }
  }

  *a2 = 6;
  return result;
}

BOOL DetectFaceRectanglesRequest.Revision.isPublic.getter()
{
  v1 = *v0;
  if (!*v0)
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

  return v1 == 0;
}

char *sub_1A5BF8C64(char *a1, int64_t a2, char a3)
{
  result = sub_1A5BF8C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5BF8C84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A58);
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

uint64_t sub_1A5BF8D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697369766572 && a2 == 0xE900000000000033;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4E5F33444F4E41 && a2 == 0xEC00000041424246 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4E5F34444F4E41 && a2 == 0xEC00000041424246 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3576444F4E41 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A6055F90 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x416576616C637865 && a2 == 0xEB00000000444F4ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A5BF8F90()
{
  result = qword_1EB1F1A28;
  if (!qword_1EB1F1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1A28);
  }

  return result;
}

uint64_t sub_1A5BF8FE4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    result = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = sub_1A5B9D1A0();
    v9 = sub_1A5B9D1A0();
    LODWORD(v8) = sub_1A5B9D1A8(8, v8, v9);
    v10 = sub_1A5B12998();
    v11 = sub_1A5B9D178(v8, v10);
    v12 = sub_1A5B9D1A0();
    v13 = sub_1A5B9D1A0();
    LODWORD(v12) = sub_1A5B9D1A8(8, v12, v13);
    v14 = sub_1A5B12998();
    sub_1A5B9D178(v12, v14);
    v15 = sub_1A5B9D1A0();
    v16 = sub_1A5B9D1A0();
    LODWORD(v15) = sub_1A5B9D1A8(8, v15, v16);
    v17 = sub_1A5B12998();
    sub_1A5B9D178(v15, v17);
    v18 = sub_1A5B9D1A0();
    v19 = sub_1A5B9D1A0();
    LODWORD(v18) = sub_1A5B9D1A8(8, v18, v19);
    v20 = sub_1A5B12998();
    sub_1A5B9D178(v18, v20);
    result = TtTrkRpnNode::config(v11);
  }

  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3 != 0;
  return result;
}

unint64_t sub_1A5BF9124()
{
  result = qword_1EB1F1A30;
  if (!qword_1EB1F1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1A30);
  }

  return result;
}

unint64_t sub_1A5BF9178()
{
  result = qword_1EB1F1A38;
  if (!qword_1EB1F1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1A38);
  }

  return result;
}

unint64_t sub_1A5BF91D0(uint64_t a1)
{
  result = sub_1A5B5EF80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BF9224()
{
  result = qword_1EB1EE690;
  if (!qword_1EB1EE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE690);
  }

  return result;
}

unint64_t sub_1A5BF927C()
{
  result = qword_1EB1EE688;
  if (!qword_1EB1EE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE688);
  }

  return result;
}

unint64_t sub_1A5BF92D4()
{
  result = qword_1EB1F1A40;
  if (!qword_1EB1F1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1A40);
  }

  return result;
}

uint64_t sub_1A5BF9354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BF9390()
{
  result = qword_1EB1F1A48;
  if (!qword_1EB1F1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1A48);
  }

  return result;
}

unint64_t sub_1A5BF942C(uint64_t a1)
{
  result = sub_1A5B0F5B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BF9454(uint64_t a1)
{
  result = sub_1A5BF947C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BF947C()
{
  result = qword_1EB1F1A50;
  if (!qword_1EB1F1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1A50);
  }

  return result;
}

unint64_t sub_1A5BF956C()
{
  result = qword_1EB22C3D0[0];
  if (!qword_1EB22C3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22C3D0);
  }

  return result;
}

unint64_t sub_1A5BF95C4()
{
  result = qword_1EB22C7E0;
  if (!qword_1EB22C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22C7E0);
  }

  return result;
}

unint64_t sub_1A5BF961C()
{
  result = qword_1EB22C7E8[0];
  if (!qword_1EB22C7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22C7E8);
  }

  return result;
}

unint64_t sub_1A5BF9674()
{
  result = qword_1EB22C870;
  if (!qword_1EB22C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22C870);
  }

  return result;
}

unint64_t sub_1A5BF96CC()
{
  result = qword_1EB22C878;
  if (!qword_1EB22C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22C878);
  }

  return result;
}

unint64_t sub_1A5BF9724()
{
  result = qword_1EB22C900;
  if (!qword_1EB22C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22C900);
  }

  return result;
}

unint64_t sub_1A5BF977C()
{
  result = qword_1EB22C908[0];
  if (!qword_1EB22C908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22C908);
  }

  return result;
}

unint64_t sub_1A5BF97D4()
{
  result = qword_1EB22C990;
  if (!qword_1EB22C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22C990);
  }

  return result;
}

unint64_t sub_1A5BF982C()
{
  result = qword_1EB22C998[0];
  if (!qword_1EB22C998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22C998);
  }

  return result;
}

unint64_t sub_1A5BF9884()
{
  result = qword_1EB22CA20;
  if (!qword_1EB22CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22CA20);
  }

  return result;
}

unint64_t sub_1A5BF98DC()
{
  result = qword_1EB22CA28[0];
  if (!qword_1EB22CA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22CA28);
  }

  return result;
}

unint64_t sub_1A5BF9934()
{
  result = qword_1EB22CAB0;
  if (!qword_1EB22CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22CAB0);
  }

  return result;
}

unint64_t sub_1A5BF998C()
{
  result = qword_1EB22CAB8[0];
  if (!qword_1EB22CAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22CAB8);
  }

  return result;
}

unint64_t sub_1A5BF99E4()
{
  result = qword_1EB22CB40;
  if (!qword_1EB22CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22CB40);
  }

  return result;
}

unint64_t sub_1A5BF9A3C()
{
  result = qword_1EB22CB48[0];
  if (!qword_1EB22CB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22CB48);
  }

  return result;
}

uint64_t sub_1A5BF9A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BF9B10(uint64_t a1)
{
  v2 = sub_1A5BFA190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF9B4C(uint64_t a1)
{
  v2 = sub_1A5BFA190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF9B88()
{
  v1 = 0x3576444F4E41;
  if (*v0 != 1)
  {
    v1 = 0x416576616C637865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1A5BF9BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BFB2C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BF9C14(uint64_t a1)
{
  v2 = sub_1A5BFA0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF9C50(uint64_t a1)
{
  v2 = sub_1A5BFA0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF9C8C(uint64_t a1)
{
  v2 = sub_1A5BFA13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF9CC8(uint64_t a1)
{
  v2 = sub_1A5BFA13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BF9D04(uint64_t a1)
{
  v2 = sub_1A5BFA1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BF9D40(uint64_t a1)
{
  v2 = sub_1A5BFA1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectHumanRectanglesRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A60);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A68);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A70);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFA0E8();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5BFA190();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5BFA13C();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5BFA1E4();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1A5BFA0E8()
{
  result = qword_1EB22CBF0;
  if (!qword_1EB22CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22CBF0);
  }

  return result;
}

unint64_t sub_1A5BFA13C()
{
  result = qword_1EB22CBF8;
  if (!qword_1EB22CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22CBF8);
  }

  return result;
}

unint64_t sub_1A5BFA190()
{
  result = qword_1EB22CC00;
  if (!qword_1EB22CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22CC00);
  }

  return result;
}

unint64_t sub_1A5BFA1E4()
{
  result = qword_1EB22CC08[0];
  if (!qword_1EB22CC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22CC08);
  }

  return result;
}

uint64_t DetectHumanRectanglesRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t DetectHumanRectanglesRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A80);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A88);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A90);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1A98);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFA0E8();
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
          sub_1A5BFA190();
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
          sub_1A5BFA13C();
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
        sub_1A5BFA1E4();
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
  *v23 = &type metadata for DetectHumanRectanglesRequest.Revision;
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

unint64_t DetectHumanRectanglesRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 3 && (sub_1A5BAF9EC(), result = sub_1A5D4E900(), LOBYTE(v3) = v7, v7 == 3))
  {
    __break(1u);
  }

  else
  {
    *a2 = 1;
    v6 = v8[1];
    *(a2 + 8) = v8[0];
    *(a2 + 24) = v6;
    *(a2 + 40) = v3;
    *(a2 + 48) = v5;
  }

  return result;
}

__n128 DetectHumanRectanglesRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectHumanRectanglesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5BFA9C0()
{
  sub_1A5BAF9EC();
  result = sub_1A5D4EB30();
  qword_1EB22CBD8 = result;
  return result;
}

uint64_t DetectHumanRectanglesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BAF9EC();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectHumanRectanglesRequest, v3);
}

uint64_t sub_1A5BFAA80()
{
  sub_1A5BAF9EC();
  result = sub_1A5D4EC2C();
  qword_1EB22CBE8 = result;
  return result;
}

uint64_t DetectHumanRectanglesRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A5FD4C3C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t DetectHumanRectanglesRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BFAC1C(uint64_t a1)
{
  v2 = sub_1A5BFB79C();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BFAC58(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BAF9EC();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BFACC0(uint64_t a1)
{
  v2 = sub_1A5B5EF2C();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BFAD00(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A5FD4C3C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t sub_1A5BFAD90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BFAE38()
{
  if (*(v0 + 40) > 1u)
  {
    return 6;
  }

  else
  {
    return sub_1A5FD3D5C();
  }
}

uint64_t sub_1A5BFAE80(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EF2C();

  return sub_1A5D4E6C8(a1, a2);
}

__n128 sub_1A5BFAECC@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v7);
  v4 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  result = v7[0];
  v6 = v7[1];
  *a2 = 1;
  *(a2 + 8) = result;
  *(a2 + 24) = v6;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1A5BFAF30(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  sub_1A5BFB490();
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v8 = *(v2 + 6);
    v9 = v2[40];
    v22[0] = v6;
    v10 = *(v2 + 24);
    v23 = *(v2 + 8);
    v24 = v10;
    v25 = v9;
    v26 = v8;
    v11 = sub_1A5BFB4DC();
    result = sub_1A5D23E14(a1, a2, &type metadata for DetectHumanRectanglesRequest, v11);
    if (!v3)
    {
      v12 = sub_1A5FD3D5C();
      v14 = v13;
      *&v24 = MEMORY[0x1E69E6370];
      v22[0] = v6 ^ 1;
      v15 = *(*a1 + 208);
      v16 = v15(v21);
      sub_1A5B0DE30(v22, v12, v14);
      v16(v21, 0);
      v17 = sub_1A5FD3D5C();
      v19 = v18;
      *&v24 = MEMORY[0x1E69E6370];
      v22[0] = v6;
      v20 = v15(v21);
      sub_1A5B0DE30(v22, v17, v19);
      return v20(v21, 0);
    }
  }

  return result;
}

uint64_t sub_1A5BFB0E4()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 7;
  }
}

BOOL DetectHumanRectanglesRequest.Revision.isPublic.getter()
{
  v1 = *v0;
  if (!*v0)
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

  return v1 == 0;
}

uint64_t sub_1A5BFB2C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697369766572 && a2 == 0xE900000000000032;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3576444F4E41 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416576616C637865 && a2 == 0xEB00000000444F4ELL)
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

uint64_t _s6Vision28DetectHumanRectanglesRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 6);
  v4 = *(a2 + 6);
  v5 = a2[40];
  v6 = a1[40];
  v7 = *(a1 + 24);
  v10.origin = *(a1 + 8);
  v10.size = v7;
  v8 = *(a2 + 24);
  v9.origin = *(a2 + 8);
  v9.size = v8;
  if (!static NormalizedRect.== infix(_:_:)(&v10, &v9) || v6 != v5)
  {
    return 0;
  }

  return sub_1A5B0D3C4(v3, v4);
}

unint64_t sub_1A5BFB490()
{
  result = qword_1EB1F0B70;
  if (!qword_1EB1F0B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F0B70);
  }

  return result;
}

unint64_t sub_1A5BFB4DC()
{
  result = qword_1EB1F1AA0;
  if (!qword_1EB1F1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AA0);
  }

  return result;
}

unint64_t sub_1A5BFB530()
{
  result = qword_1EB1F1AA8;
  if (!qword_1EB1F1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AA8);
  }

  return result;
}

unint64_t sub_1A5BFB588(uint64_t a1)
{
  result = sub_1A5B5EF2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BFB5DC()
{
  result = qword_1EB1F1AB0;
  if (!qword_1EB1F1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AB0);
  }

  return result;
}

unint64_t sub_1A5BFB634()
{
  result = qword_1EB1F1AB8;
  if (!qword_1EB1F1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AB8);
  }

  return result;
}

unint64_t sub_1A5BFB68C()
{
  result = qword_1EB1F1AC0;
  if (!qword_1EB1F1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AC0);
  }

  return result;
}

uint64_t sub_1A5BFB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BFB748()
{
  result = qword_1EB1F1AC8;
  if (!qword_1EB1F1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AC8);
  }

  return result;
}

unint64_t sub_1A5BFB79C()
{
  result = qword_1EB1F1AD0;
  if (!qword_1EB1F1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AD0);
  }

  return result;
}

unint64_t sub_1A5BFB838(uint64_t a1)
{
  result = sub_1A5BAF9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BFB860(uint64_t a1)
{
  result = sub_1A5BFB888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BFB888()
{
  result = qword_1EB1F1AD8;
  if (!qword_1EB1F1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1AD8);
  }

  return result;
}

unint64_t sub_1A5BFB940()
{
  result = qword_1EB22D710[0];
  if (!qword_1EB22D710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22D710);
  }

  return result;
}

unint64_t sub_1A5BFB998()
{
  result = qword_1EB22D820;
  if (!qword_1EB22D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22D820);
  }

  return result;
}

unint64_t sub_1A5BFB9F0()
{
  result = qword_1EB22D828[0];
  if (!qword_1EB22D828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22D828);
  }

  return result;
}

unint64_t sub_1A5BFBA48()
{
  result = qword_1EB22D8B0;
  if (!qword_1EB22D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22D8B0);
  }

  return result;
}

unint64_t sub_1A5BFBAA0()
{
  result = qword_1EB22D8B8[0];
  if (!qword_1EB22D8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22D8B8);
  }

  return result;
}

unint64_t sub_1A5BFBAF8()
{
  result = qword_1EB22D940;
  if (!qword_1EB22D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22D940);
  }

  return result;
}

unint64_t sub_1A5BFBB50()
{
  result = qword_1EB22D948[0];
  if (!qword_1EB22D948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22D948);
  }

  return result;
}

unint64_t sub_1A5BFBBA8()
{
  result = qword_1EB22D9D0;
  if (!qword_1EB22D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB22D9D0);
  }

  return result;
}

unint64_t sub_1A5BFBC00()
{
  result = qword_1EB22D9D8[0];
  if (!qword_1EB22D9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB22D9D8);
  }

  return result;
}

uint64_t sub_1A5BFBC54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImageFingerprintsObservation.FingerprintHash.data.getter()
{
  v1 = *v0;
  sub_1A5B06670(*v0, *(v0 + 8));
  return v1;
}

void ImageFingerprintsObservation.FingerprintHash.string.getter()
{
  v1 = sub_1A5FD361C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v21 = 0;
  v22 = 0xE000000000000000;
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      MEMORY[0x1AC5545A0](0, v3);
      goto LABEL_13;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    goto LABEL_10;
  }

  LODWORD(v9) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v9 = v9;
LABEL_10:
  if (v9 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x1AC5545A0](2 * v9, v3);
LABEL_13:
  sub_1A5B06670(v6, v7);
  sub_1A5FD362C();
  v13 = sub_1A5FD360C();
  if ((v13 & 0x100) == 0)
  {
    v14 = v13;
    v20 = xmmword_1A5FF36F0;
    v15 = MEMORY[0x1E69E7508];
    v16 = MEMORY[0x1E69E7558];
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF1A8);
      v17 = swift_allocObject();
      *(v17 + 16) = v20;
      *(v17 + 56) = v15;
      *(v17 + 64) = v16;
      *(v17 + 32) = v14;
      v18 = sub_1A5FD3D6C();
      MEMORY[0x1AC554600](v18);

      v19 = sub_1A5FD360C();
      v14 = v19;
    }

    while ((v19 & 0x100) == 0);
  }

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_1A5BFBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1A5BFBFB8(uint64_t a1)
{
  v2 = sub_1A5BFDF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BFBFF4(uint64_t a1)
{
  v2 = sub_1A5BFDF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageFingerprintsObservation.FingerprintHash.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1AE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B06670(v7, v8);
  sub_1A5BFDF08();
  sub_1A5FD4CDC();
  v10 = v7;
  v11 = v8;
  sub_1A5B0A6B8();
  sub_1A5FD4A5C();
  sub_1A5B066DC(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t ImageFingerprintsObservation.FingerprintHash.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5FD35EC();
  return sub_1A5FD4C6C();
}

uint64_t ImageFingerprintsObservation.FingerprintHash.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1AE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BFDF08();
  sub_1A5FD4CCC();
  if (!v2)
  {
    sub_1A5B0A8B0();
    sub_1A5FD497C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5BFC388()
{
  sub_1A5FD4C1C();
  sub_1A5FD35EC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BFC3DC()
{
  sub_1A5FD4C1C();
  sub_1A5FD35EC();
  return sub_1A5FD4C6C();
}

uint64_t ImageFingerprintsObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageFingerprintsObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ImageFingerprintsObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageFingerprintsObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ImageFingerprintsObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ImageFingerprintsObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

unint64_t ImageFingerprintsObservation.description.getter()
{
  sub_1A5FD46AC();

  v0 = type metadata accessor for ImageFingerprintsObservation();
  v1 = sub_1A5BFE4D4(&qword_1EB1F1AF0, type metadata accessor for ImageFingerprintsObservation);
  v2 = sub_1A5C29408(v0, &off_1F195BE38, v1);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_1A5BFC640(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_1A5B06670(v5, v6);
      sub_1A5B06670(v8, v7);
      v27 = sub_1A5FD33EC();
      if (v27)
      {
        v34 = sub_1A5FD341C();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      sub_1A5FD340C();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = sub_1A5FD33EC();
        if (v29)
        {
          v55 = sub_1A5FD341C();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = sub_1A5FD340C();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = sub_1A5FD33EC();
        if (v29)
        {
          v35 = sub_1A5FD341C();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = sub_1A5FD340C();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_1A5B066DC(v8, v7);
          sub_1A5B066DC(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_1A5B06670(v5, v6);
      sub_1A5B06670(v8, v7);
      v21 = sub_1A5FD33EC();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = sub_1A5FD341C();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = sub_1A5FD340C();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_1A5B06670(v5, v6);
      sub_1A5B06670(v8, v7);
      v24 = sub_1A5FD33EC();
      if (v24)
      {
        v42 = sub_1A5FD341C();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = sub_1A5FD340C();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_1A5B066DC(v8, v7);
    sub_1A5B066DC(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_1A5B06670(v5, v6);
      sub_1A5B06670(v8, v7);
      v24 = sub_1A5FD33EC();
      if (v24)
      {
        v39 = sub_1A5FD341C();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = sub_1A5FD340C();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_1A5B06670(v5, v6);
      sub_1A5B06670(v8, v7);
      v43 = sub_1A5FD33EC();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = sub_1A5FD341C();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = sub_1A5FD340C();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_1A5B06670(v5, v6);
  sub_1A5B06670(v8, v7);
  v27 = sub_1A5FD33EC();
  if (v27)
  {
    v28 = sub_1A5FD341C();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  sub_1A5FD340C();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = sub_1A5FD33EC();
    if (v29)
    {
      v50 = sub_1A5FD341C();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = sub_1A5FD340C();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = sub_1A5FD33EC();
    if (v29)
    {
      v30 = sub_1A5FD341C();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = sub_1A5FD340C();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_1A5B066DC(v8, v7);
    sub_1A5B066DC(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_1A5FD340C();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = sub_1A5FD340C();
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
  return result;
}