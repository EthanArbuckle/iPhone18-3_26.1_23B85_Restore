uint64_t sub_45924(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_45978()
{
  result = qword_12E180;
  if (!qword_12E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E180);
  }

  return result;
}

uint64_t sub_459CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_45A64@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_45A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_45B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_45B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_45BD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_45C34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_45CA8()
{
  result = qword_12E208;
  if (!qword_12E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E208);
  }

  return result;
}

unint64_t sub_45D48()
{
  result = qword_12E210;
  if (!qword_12E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E210);
  }

  return result;
}

unint64_t sub_45DA0()
{
  result = qword_12E218;
  if (!qword_12E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E218);
  }

  return result;
}

unint64_t sub_45E4C()
{
  result = qword_12E228;
  if (!qword_12E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E228);
  }

  return result;
}

uint64_t sub_45ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WarmupAudioQueueResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_45F1C()
{
  result = qword_12E238;
  if (!qword_12E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E240, qword_EAFA0);
    sub_45ED4(&qword_12E230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E238);
  }

  return result;
}

uint64_t sub_45FBC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_45CA8();
  *v6 = v2;
  v6[1] = sub_5E10;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t LibraryList.init(listType:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = sub_E5944();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  *a2 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  a2[1] = sub_E5434();
  v15[15] = a1;
  sub_E53F4();
  v13 = type metadata accessor for StationEntity();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_47200(v10, v8);
  sub_E53F4();
  return sub_47270(v10);
}

uint64_t LibraryList.init(station:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v14[-v9];
  v11 = sub_E5944();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  *a2 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  a2[1] = sub_E5434();
  v14[15] = 3;
  sub_E53F4();
  sub_47200(a1, v10);
  sub_47200(v10, v8);
  sub_E53F4();
  sub_47270(a1);
  return sub_47270(v10);
}

uint64_t LibraryList.listType.getter()
{
  v1 = *v0;
  sub_E53E4();
  return v3;
}

uint64_t LibraryList.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = sub_E7014();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v39[1] = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v39 - v7;
  v9 = type metadata accessor for StationEntity();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v41 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_E5CE4();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  __chkstk_darwin(v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_E5D04();
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v42);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v46 = v39 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v45 = v39 - v25;
  v26 = sub_E5944();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = v1[1];
  v30 = *v1;
  sub_E53E4();
  if (LOBYTE(v48._countAndFlagsBits) <= 1u)
  {
    if (LOBYTE(v48._countAndFlagsBits))
    {
      sub_E5914();
      (*(v27 + 56))(v45, 1, 1, v26);
      sub_E5C94();
    }

    else
    {
      sub_E5914();
      (*(v27 + 56))(v45, 1, 1, v26);
      sub_E5CC4();
    }

    goto LABEL_7;
  }

  if (LOBYTE(v48._countAndFlagsBits) == 2)
  {
    sub_E5914();
    (*(v27 + 56))(v45, 1, 1, v26);
    sub_E5CA4();
LABEL_7:
    sub_E5CF4();
    (*(v16 + 8))(v19, v42);
    sub_E5CD4();
    (*(v43 + 8))(v15, v44);
    v31 = v46;
    sub_E5654();
    v32 = sub_E5684();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    return sub_E56A4();
  }

  sub_E53E4();
  if ((*(v40 + 48))(v8, 1, v9) == 1)
  {
    sub_47270(v8);
    sub_E5914();
    (*(v27 + 56))(v45, 1, 1, v26);
    v34 = sub_E5684();
    (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
    return sub_E56A4();
  }

  v35 = v41;
  sub_472D8(v8, v41);
  sub_E7004();
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_E6FF4(v49);
  v36 = *(v35 + 40);
  sub_E53E4();
  sub_E6FD4(v48);

  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_E6FF4(v50);
  sub_E5924();
  (*(v27 + 56))(v45, 1, 1, v26);
  sub_E5CB4();
  sub_E5CF4();
  (*(v16 + 8))(v19, v42);
  sub_E5CD4();
  (*(v43 + 8))(v15, v44);
  v37 = v46;
  sub_E5654();
  v38 = sub_E5684();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  sub_E56A4();
  return sub_4733C(v41);
}

uint64_t sub_46C5C()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E248);
  __swift_project_value_buffer(v0, qword_12E248);
  return sub_E57B4();
}

uint64_t static LibraryList.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA50 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LibraryList.id.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for StationEntity();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0[1];
  v11 = *v0;
  sub_E53E4();
  if (v16 > 1u)
  {
    if (v16 == 2)
    {
      return 0x74736574616CLL;
    }

    else
    {
      sub_E53E4();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_47270(v4);
        return 0x4E574F4E4B4E55;
      }

      else
      {
        sub_472D8(v4, v9);
        v14 = *v9;
        v13 = v9[1];

        sub_4733C(v9);
        return v14;
      }
    }
  }

  else if (v16)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6465766173;
  }
}

uint64_t sub_46F50(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;

  sub_E53F4();
}

void (*LibraryList.listType.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_47074(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_47200(a1, &v14 - v9);
  v12 = *a2;
  v11 = a2[1];
  sub_47200(v10, v8);

  sub_E53F4();
  sub_47270(v10);
}

uint64_t LibraryList.station.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + 8);
  sub_47200(a1, &v8 - v6);
  sub_E53F4();
  return sub_47270(a1);
}

uint64_t sub_47200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_472D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4733C(uint64_t a1)
{
  v2 = type metadata accessor for StationEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*LibraryList.station.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t LibraryList.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5944();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  *a1 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  result = sub_E5434();
  a1[1] = result;
  return result;
}

unint64_t sub_47540()
{
  result = qword_12E270;
  if (!qword_12E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E270);
  }

  return result;
}

unint64_t sub_47598()
{
  result = qword_12E278;
  if (!qword_12E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E278);
  }

  return result;
}

unint64_t sub_475F0()
{
  result = qword_12E280;
  if (!qword_12E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E280);
  }

  return result;
}

unint64_t sub_47654()
{
  result = qword_12E288;
  if (!qword_12E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E288);
  }

  return result;
}

unint64_t sub_476AC()
{
  result = qword_12E290;
  if (!qword_12E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E290);
  }

  return result;
}

unint64_t sub_47704()
{
  result = qword_12E298;
  if (!qword_12E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E298);
  }

  return result;
}

uint64_t sub_47764@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryList.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_47790()
{
  result = qword_12E2A0;
  if (!qword_12E2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E2A8, &qword_EB1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2A0);
  }

  return result;
}

uint64_t sub_477F4(uint64_t a1)
{
  v2 = sub_26188();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_47844()
{
  result = qword_12E2B0;
  if (!qword_12E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2B0);
  }

  return result;
}

uint64_t sub_4789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_588C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_47960(uint64_t a1)
{
  v2 = sub_47704();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_479B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_47A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_47A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t LibraryListType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6465766173;
  }

  if (a1 == 1)
  {
    return 0x64616F6C6E776F64;
  }

  return 0x74736574616CLL;
}

uint64_t sub_47B8C()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E2B8);
  __swift_project_value_buffer(v0, qword_12E2B8);
  return sub_E57B4();
}

uint64_t static LibraryListType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA58 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E2B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_47C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E340, &qword_EB5B0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130860, &qword_EB5B8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_EB2E0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_E5644();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_E5644();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_E5644();
  v8 = sub_AFF44(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12E2D0 = v8;
  return result;
}

uint64_t static LibraryListType.caseDisplayRepresentations.getter()
{
  if (qword_12CA60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_47E90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64616F6C6E776F64;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x74736574616CLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465766173;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x64616F6C6E776F64;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x74736574616CLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465766173;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_E7BD4();
  }

  return v11 & 1;
}

Swift::Int sub_47F90()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_48030()
{
  *v0;
  *v0;
  sub_E7124();
}

Swift::Int sub_480BC()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_48158@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15PodcastsActions15LibraryListTypeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_48188(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x64616F6C6E776F64;
  if (v2 != 1)
  {
    v5 = 0x74736574616CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465766173;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_481E4(uint64_t a1)
{
  v2 = sub_25F18();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_48230(uint64_t a1)
{
  v2 = sub_4861C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t EpisodeListSettings.init(libraryListType:)(char a1)
{
  v2 = qword_EB5C0[a1];
  sub_E6244();
  sub_E6254();
  return sub_E63D4();
}

double EpisodeListType.init(libraryListType:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = qword_EB5C0[a1];
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = 10;
  return result;
}

uint64_t _s15PodcastsActions15LibraryListTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11F968;
  v6._object = a2;
  v4 = sub_E7B34(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_483A8()
{
  result = qword_12E2D8;
  if (!qword_12E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2D8);
  }

  return result;
}

unint64_t sub_48400()
{
  result = qword_12E2E0;
  if (!qword_12E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2E0);
  }

  return result;
}

unint64_t sub_48458()
{
  result = qword_12E2E8;
  if (!qword_12E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2E8);
  }

  return result;
}

unint64_t sub_484B0()
{
  result = qword_12E2F0;
  if (!qword_12E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2F0);
  }

  return result;
}

unint64_t sub_48514()
{
  result = qword_12E2F8;
  if (!qword_12E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2F8);
  }

  return result;
}

unint64_t sub_4856C()
{
  result = qword_12E300;
  if (!qword_12E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E300);
  }

  return result;
}

unint64_t sub_485C4()
{
  result = qword_12E308;
  if (!qword_12E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E308);
  }

  return result;
}

unint64_t sub_4861C()
{
  result = qword_12E310;
  if (!qword_12E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E310);
  }

  return result;
}

unint64_t sub_486C4()
{
  result = qword_12E318;
  if (!qword_12E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E318);
  }

  return result;
}

unint64_t sub_4871C()
{
  result = qword_12E320;
  if (!qword_12E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E320);
  }

  return result;
}

unint64_t sub_48774()
{
  result = qword_12E328;
  if (!qword_12E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E328);
  }

  return result;
}

unint64_t sub_487CC()
{
  result = qword_12E330;
  if (!qword_12E330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E338, &qword_EB548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryListType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LibraryListType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AppLocation.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x64616F6C6E776F64;
    v7 = 0x796C746E65636572;
    if (a1 != 10)
    {
      v7 = 0x6979616C50776F6ELL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x7972617262696CLL;
    v9 = 0x686372616573;
    if (a1 != 7)
    {
      v9 = 0x7472616843706F74;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701670760;
    v2 = 0x736C656E6E616863;
    v3 = 0x6465766173;
    if (a1 != 4)
    {
      v3 = 0x704574736574616CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6573776F7262;
    if (a1 != 1)
    {
      v4 = 0x73776F6873;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_48B2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AppLocation.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AppLocation.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

Swift::Int sub_48BB4()
{
  v1 = *v0;
  sub_E7CC4();
  AppLocation.rawValue.getter(v1);
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_48C18()
{
  AppLocation.rawValue.getter(*v0);
  sub_E7124();
}

Swift::Int sub_48C6C()
{
  v1 = *v0;
  sub_E7CC4();
  AppLocation.rawValue.getter(v1);
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_48CCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15PodcastsActions11AppLocationO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_48CFC@<X0>(uint64_t *a1@<X8>)
{
  result = AppLocation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_48D38()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E348);
  __swift_project_value_buffer(v0, qword_12E348);
  return sub_E57B4();
}

uint64_t static AppLocation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA68 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_48E44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v64 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v64 - v6;
  v76 = sub_E5944();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v76);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E3D0, &qword_EB8A8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130850, &unk_EB8B0);
  v13 = *(v12 - 8);
  v75 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v66 = v15;
  *(v15 + 16) = xmmword_EB5E0;
  v16 = v15 + v14;
  v17 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_E5914();
  v68 = *(v8 + 56);
  v69 = v8 + 56;
  v18 = v76;
  v68(v7, 1, 1, v76);
  v74 = sub_E5684();
  v19 = *(v74 - 8);
  v73 = *(v19 + 56);
  v20 = v19 + 56;
  v73(v3, 1, 1, v74);
  v71 = v16;
  v72 = v20;
  v64[1] = v11;
  v21 = v7;
  v22 = v3;
  sub_E56A4();
  v23 = v75;
  v70 = v12;
  v67 = *(v12 + 48);
  *(v16 + v75) = 1;
  sub_E5914();
  v24 = v68;
  v68(v21, 1, 1, v18);
  v25 = v73;
  v26 = v74;
  v73(v22, 1, 1, v74);
  sub_E56A4();
  v67 = 2 * v23;
  v27 = *(v12 + 48);
  *(v71 + 2 * v23) = 8;
  sub_E5914();
  v28 = v76;
  v24(v21, 1, 1, v76);
  v25(v22, 1, 1, v26);
  sub_E56A4();
  v29 = v75;
  v31 = v70;
  v30 = v71;
  v32 = (v71 + v67 + v75);
  v67 = *(v70 + 48);
  *v32 = 6;
  sub_E5914();
  v68(v21, 1, 1, v28);
  v25(v22, 1, 1, v74);
  sub_E56A4();
  v33 = 4 * v29;
  v34 = (v30 + 4 * v29);
  v35 = *(v31 + 48);
  *v34 = 10;
  sub_E5914();
  v36 = v76;
  v37 = v68;
  v68(v21, 1, 1, v76);
  v73(v22, 1, 1, v74);
  sub_E56A4();
  v38 = v75;
  v39 = v70;
  v67 = *(v70 + 48);
  *(v30 + v33 + v75) = 2;
  sub_E5914();
  v37(v21, 1, 1, v36);
  v40 = v73;
  v41 = v74;
  v73(v22, 1, 1, v74);
  sub_E56A4();
  v67 = *(v39 + 48);
  *(v30 + 6 * v38) = 3;
  sub_E5914();
  v42 = v76;
  v43 = v68;
  v68(v21, 1, 1, v76);
  v40(v22, 1, 1, v41);
  sub_E56A4();
  v67 = 8 * v75;
  v44 = v70;
  v65 = *(v70 + 48);
  *(v30 + 7 * v75) = 4;
  sub_E5914();
  v43(v21, 1, 1, v42);
  v45 = v41;
  v46 = v41;
  v47 = v73;
  v73(v22, 1, 1, v45);
  sub_E56A4();
  v65 = *(v44 + 48);
  *(v71 + v67) = 9;
  sub_E5914();
  v43(v21, 1, 1, v42);
  v48 = v47;
  v47(v22, 1, 1, v46);
  sub_E56A4();
  v49 = v75;
  v50 = v71;
  v51 = (v71 + v67 + v75);
  v67 = *(v70 + 48);
  *v51 = 5;
  sub_E5914();
  v52 = v42;
  v53 = v68;
  v68(v21, 1, 1, v52);
  v54 = v74;
  v48(v22, 1, 1, v74);
  sub_E56A4();
  v55 = (v50 + 10 * v49);
  v56 = v50;
  v57 = v70;
  v67 = *(v70 + 48);
  *v55 = 11;
  sub_E5914();
  v53(v21, 1, 1, v76);
  v58 = v54;
  v59 = v73;
  v73(v22, 1, 1, v58);
  sub_E56A4();
  v60 = (v56 + 11 * v75);
  v61 = *(v57 + 48);
  *v60 = 7;
  sub_E5914();
  v53(v21, 1, 1, v76);
  v59(v22, 1, 1, v74);
  sub_E56A4();
  v62 = sub_B012C(v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12E360 = v62;
  return result;
}

uint64_t static AppLocation.caseDisplayRepresentations.getter()
{
  if (qword_12CA70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_49838(uint64_t a1)
{
  v2 = sub_49C94();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_49884(uint64_t a1)
{
  v2 = sub_49BF0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t _s15PodcastsActions11AppLocationO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11FA20;
  v6._object = a2;
  v4 = sub_E7B34(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_49920()
{
  result = qword_12E368;
  if (!qword_12E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E368);
  }

  return result;
}

unint64_t sub_49978()
{
  result = qword_12E370;
  if (!qword_12E370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E378, &qword_EB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E370);
  }

  return result;
}

unint64_t sub_499E0()
{
  result = qword_12E380;
  if (!qword_12E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E380);
  }

  return result;
}

unint64_t sub_49A38()
{
  result = qword_12E388;
  if (!qword_12E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E388);
  }

  return result;
}

unint64_t sub_49A90()
{
  result = qword_12E390;
  if (!qword_12E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E390);
  }

  return result;
}

unint64_t sub_49AE8()
{
  result = qword_12E398;
  if (!qword_12E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E398);
  }

  return result;
}

unint64_t sub_49B40()
{
  result = qword_12E3A0;
  if (!qword_12E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3A0);
  }

  return result;
}

unint64_t sub_49B98()
{
  result = qword_12E3A8;
  if (!qword_12E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3A8);
  }

  return result;
}

unint64_t sub_49BF0()
{
  result = qword_12E3B0;
  if (!qword_12E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3B0);
  }

  return result;
}

unint64_t sub_49C94()
{
  result = qword_12E3B8;
  if (!qword_12E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3B8);
  }

  return result;
}

unint64_t sub_49CF0()
{
  result = qword_12E3C0;
  if (!qword_12E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3C0);
  }

  return result;
}

unint64_t sub_49D48()
{
  result = qword_12E3C8;
  if (!qword_12E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3C8);
  }

  return result;
}

uint64_t sub_49DB4()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E3D8);
  __swift_project_value_buffer(v0, qword_12E3D8);
  return sub_E57B4();
}

uint64_t static AudioEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA78 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E3D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AudioEntity.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E3F0, &qword_EB8C0);
  v12 = *(v14 - 8);
  v1 = *(v12 + 64);
  __chkstk_darwin(v14);
  v3 = &v11 - v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E3F8, &qword_EB8C8);
  v4 = *(v11 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v11);
  v7 = &v11 - v6;
  type metadata accessor for AudioEntity();
  v8 = sub_4A1B4();
  sub_E5804();
  v9 = sub_4A208();
  sub_E5804();
  sub_4A25C();
  sub_E5804();
  sub_4A690(&qword_12E418, type metadata accessor for AudioEntity);
  sub_E5824();
  v19 = v8;
  v20 = &type metadata for AudioEntity.ShowEntityResolver;
  sub_E5814();
  v17 = &type metadata for AudioEntity.ShowEntityResolver;
  v18 = &type metadata for AudioEntity.EpisodeEntityResolver;
  v15 = v8;
  v16 = v9;
  sub_E5814();
  (*(v12 + 8))(v3, v14);
  return (*(v4 + 8))(v7, v11);
}

uint64_t type metadata accessor for AudioEntity()
{
  result = qword_12E4A8;
  if (!qword_12E4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_4A1B4()
{
  result = qword_12E400;
  if (!qword_12E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E400);
  }

  return result;
}

unint64_t sub_4A208()
{
  result = qword_12E408;
  if (!qword_12E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E408);
  }

  return result;
}

unint64_t sub_4A25C()
{
  result = qword_12E410;
  if (!qword_12E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E410);
  }

  return result;
}

uint64_t static AudioEntity.allIntentValueTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E420, &qword_EB8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_EB2E0;
  v1 = type metadata accessor for ShowEntity(0);
  v2 = sub_4A690(&qword_12DE68, type metadata accessor for ShowEntity);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = sub_4A690(&qword_12DD68, type metadata accessor for EpisodeEntity);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for StationEntity();
  v6 = sub_4A690(&qword_12E118, type metadata accessor for StationEntity);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t AudioEntity.asIntentValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AudioEntity();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B090(v2, v7, type metadata accessor for AudioEntity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a1[3] = type metadata accessor for EpisodeEntity(0);
      v9 = sub_4A690(&qword_12DD68, type metadata accessor for EpisodeEntity);
      v10 = type metadata accessor for EpisodeEntity;
    }

    else
    {
      a1[3] = type metadata accessor for StationEntity();
      v9 = sub_4A690(&qword_12E118, type metadata accessor for StationEntity);
      v10 = type metadata accessor for StationEntity;
    }
  }

  else
  {
    a1[3] = type metadata accessor for ShowEntity(0);
    v9 = sub_4A690(&qword_12DE68, type metadata accessor for ShowEntity);
    v10 = type metadata accessor for ShowEntity;
  }

  v11 = v10;
  a1[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_4A598(v7, boxed_opaque_existential_1, v11);
}

uint64_t sub_4A598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4A690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4A73C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4A75C, 0, 0);
}

uint64_t sub_4A75C()
{
  v1 = v0[2];
  sub_4B090(v0[3], v1, type metadata accessor for ShowEntity);
  v2 = type metadata accessor for AudioEntity();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_4A898(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4A8B8, 0, 0);
}

uint64_t sub_4A8B8()
{
  v1 = v0[2];
  sub_4B090(v0[3], v1, type metadata accessor for EpisodeEntity);
  v2 = type metadata accessor for AudioEntity();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_4A988(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4A9A8, 0, 0);
}

uint64_t sub_4A9A8()
{
  v1 = v0[2];
  sub_4B090(v0[3], v1, type metadata accessor for StationEntity);
  v2 = type metadata accessor for AudioEntity();
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_4AA78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B090(v5, v7, type metadata accessor for AudioEntity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a2[3] = type metadata accessor for EpisodeEntity(0);
      v9 = sub_4A690(&qword_12DD68, type metadata accessor for EpisodeEntity);
      v10 = type metadata accessor for EpisodeEntity;
    }

    else
    {
      a2[3] = type metadata accessor for StationEntity();
      v9 = sub_4A690(&qword_12E118, type metadata accessor for StationEntity);
      v10 = type metadata accessor for StationEntity;
    }
  }

  else
  {
    a2[3] = type metadata accessor for ShowEntity(0);
    v9 = sub_4A690(&qword_12DE68, type metadata accessor for ShowEntity);
    v10 = type metadata accessor for ShowEntity;
  }

  v11 = v10;
  a2[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_4A598(v7, boxed_opaque_existential_1, v11);
}

uint64_t sub_4AC88()
{
  result = type metadata accessor for ShowEntity(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EpisodeEntity(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for StationEntity();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_4AD14()
{
  result = qword_12E4E0;
  if (!qword_12E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E4E8, &unk_EBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E4E0);
  }

  return result;
}

unint64_t sub_4ADAC()
{
  result = qword_12E4F0;
  if (!qword_12E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E4F0);
  }

  return result;
}

unint64_t sub_4AE04()
{
  result = qword_12E4F8;
  if (!qword_12E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E4F8);
  }

  return result;
}

unint64_t sub_4AE5C()
{
  result = qword_12E500;
  if (!qword_12E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E500);
  }

  return result;
}

unint64_t sub_4AEB4()
{
  result = qword_12E508;
  if (!qword_12E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E508);
  }

  return result;
}

unint64_t sub_4AF54()
{
  result = qword_12E510;
  if (!qword_12E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E510);
  }

  return result;
}

unint64_t sub_4AFF4()
{
  result = qword_12E518;
  if (!qword_12E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E518);
  }

  return result;
}

uint64_t sub_4B090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for StationEntity();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = type metadata accessor for EpisodeEntity(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v52 = &v51 - v15;
  v16 = sub_E62C4();
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = *(v53 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v51 = (&v51 - v22);
  __chkstk_darwin(v21);
  v24 = (&v51 - v23);
  v25 = type metadata accessor for ShowEntity(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = (&v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for AudioEntity();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_4B78C(a1, v32, type metadata accessor for AudioEntity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v52;
      sub_4A598(v32, v52, type metadata accessor for EpisodeEntity);
      sub_4B78C(v34, v14, type metadata accessor for EpisodeEntity);
      v35 = v14[10];
      if (v35)
      {
        v36 = v14[9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_E87F0;
        *(v37 + 32) = v36;
        *(v37 + 40) = v35;

        sub_4B7F4(v56, type metadata accessor for AudioEntity);
        sub_4B7F4(v14, type metadata accessor for EpisodeEntity);
        sub_4B7F4(v34, type metadata accessor for EpisodeEntity);
        v24 = v51;
        *v51 = v37;
        v38 = &enum case for MediaIdentifier.localEpisodes(_:);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_E87F0;
        *(v45 + 32) = v14[11];
        sub_4B7F4(v56, type metadata accessor for AudioEntity);
        sub_4B7F4(v14, type metadata accessor for EpisodeEntity);
        sub_4B7F4(v34, type metadata accessor for EpisodeEntity);
        v24 = v51;
        *v51 = v45;
        v38 = &enum case for MediaIdentifier.episodes(_:);
      }
    }

    else
    {
      sub_4A598(v32, v9, type metadata accessor for StationEntity);
      sub_4B78C(v9, v7, type metadata accessor for StationEntity);
      v42 = *(v7 + 3);
      if (!v42)
      {
        sub_4B738();
        swift_allocError();
        *v50 = 0;
        swift_willThrow();
        sub_4B7F4(v56, type metadata accessor for AudioEntity);
        sub_4B7F4(v7, type metadata accessor for StationEntity);
        return sub_4B7F4(v9, type metadata accessor for StationEntity);
      }

      v43 = *(v7 + 2);
      v44 = *(v7 + 3);

      sub_4B7F4(v56, type metadata accessor for AudioEntity);
      sub_4B7F4(v7, type metadata accessor for StationEntity);
      sub_4B7F4(v9, type metadata accessor for StationEntity);
      *v20 = v43;
      v20[1] = v42;
      v20[2] = 0;
      v20[3] = 0;
      v24 = v20;
      v38 = &enum case for MediaIdentifier.station(_:);
    }
  }

  else
  {
    sub_4B7F4(v56, type metadata accessor for AudioEntity);
    sub_4A598(v32, v28, type metadata accessor for ShowEntity);
    v39 = v28[6];
    if (v39)
    {
      v40 = v28[5];
      v41 = v28[6];

      sub_4B7F4(v28, type metadata accessor for ShowEntity);
      *v24 = v40;
      v24[1] = v39;
      v38 = &enum case for MediaIdentifier.localPodcast(_:);
    }

    else
    {
      v46 = v28[7];
      sub_4B7F4(v28, type metadata accessor for ShowEntity);
      *v24 = v46;
      v38 = &enum case for MediaIdentifier.podcast(_:);
    }
  }

  v48 = v53;
  v47 = v54;
  (*(v53 + 104))(v24, *v38, v54);
  return (*(v48 + 32))(v55, v24, v47);
}

unint64_t sub_4B738()
{
  result = qword_12E520;
  if (!qword_12E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E520);
  }

  return result;
}

uint64_t sub_4B78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for InvocationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InvocationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int TipGroup.hashValue.getter()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7CD4(v1);
  return sub_E7CF4();
}

Swift::Int sub_4BA40()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7CD4(v1);
  return sub_E7CF4();
}

unint64_t sub_4BA98()
{
  result = qword_12E528;
  if (!qword_12E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E528);
  }

  return result;
}

uint64_t ChannelEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_E5944();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = &v49 - v8;
  v60 = sub_E59C4();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v60);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_E5F74();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v58 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v21 = a1;
  v22 = [a1 artworkURL];
  if (v22)
  {
    v23 = v20;
    v24 = v9;
    v25 = v22;
    sub_E7064();

    v9 = v24;
    v20 = v23;
    v63 = xmmword_EBE00;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));

    sub_E5F64();
    sub_E6104();
    sub_E5FC4();

    v26 = sub_E5FD4();
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  }

  else
  {
    v27 = sub_E5FD4();
    (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  }

  v28 = v21;
  v29 = [v28 objectID];
  v30 = [v29 URIRepresentation];

  sub_E5994();
  v31 = sub_E5974();
  v33 = v32;
  (*(v9 + 8))(v12, v60);
  v34 = [v28 objectID];

  result = [v28 storeId];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v57 = v31;
    v54 = sub_E6814();
    v36 = [v28 name];
    v55 = v34;
    v56 = v33;
    if (v36)
    {
      v37 = v36;
      v53 = sub_E7064();
      v52 = v38;
    }

    else
    {
      v53 = 0;
      v52 = 0xE000000000000000;
    }

    v50 = [v28 subscriptionActive];
    sub_26324(v20, v58, &unk_12DB10, &qword_EAC60);
    v39 = *(v9 + 56);
    v51 = v20;
    v39(v59, 1, 1, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
    sub_E5914();
    *(a2 + 6) = sub_E5474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5B0, &qword_EBE28);
    sub_E5914();
    *(a2 + 7) = sub_E5494();
    v40 = type metadata accessor for ChannelEntity();
    v41 = v40[10];
    v42 = sub_E5FD4();
    (*(*(v42 - 8) + 56))(&a2[v41], 1, 1, v42);
    v43 = &a2[v40[11]];
    v49 = xmmword_EBE10;
    *v43 = xmmword_EBE10;
    v44 = v40[12];
    v39(&a2[v44], 1, 1, v60);
    v45 = v56;
    *a2 = v57;
    *(a2 + 1) = v45;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v47 = v54;
    v46 = v55;
    *(a2 + 4) = v55;
    *(a2 + 5) = v47;
    v61 = v53;
    v62 = v52;
    v48 = v46;
    sub_E53F4();
    LOBYTE(v61) = v50;
    sub_E53F4();

    sub_110AC(v51, &unk_12DB10, &qword_EAC60);
    sub_4DCF4(v58, &a2[v41], &unk_12DB10, &qword_EAC60);
    sub_4DC8C(*v43, *(v43 + 1));
    *v43 = v49;
    return sub_4DCF4(v59, &a2[v44], &unk_12DFA0, &qword_E9B50);
  }

  return result;
}

uint64_t ChannelEntity.prepare(asPartOf:)(uint64_t a1)
{
  v2[103] = v1;
  v2[97] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[104] = v3;
  v4 = *(v3 - 8);
  v2[105] = v4;
  v2[106] = *(v4 + 64);
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v2[110] = v7;
  *v7 = v2;
  v7[1] = sub_4C2CC;

  return BaseObjectGraph.inject<A>(_:)(v2 + 87, v5, v5);
}

uint64_t sub_4C2CC()
{
  v2 = *(*v1 + 880);
  v5 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_4C91C;
  }

  else
  {
    v3 = sub_4C3E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4C3E0()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v19 = *(v0 + 832);
  v20 = *(v0 + 864);
  v5 = *(v0 + 824);
  v6 = *(v0 + 776);
  v18 = *(v5 + 40);
  v7 = type metadata accessor for ChannelEntity();
  *(v0 + 896) = v7;
  v8 = *(v7 + 48);
  *(v0 + 944) = v8;
  sub_26324(v5 + v8, v1, &unk_12DFA0, &qword_E9B50);
  sub_26324(v1, v2, &unk_12DFA0, &qword_E9B50);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 904) = v11;
  sub_CF40(v2, v11 + v9);
  *(v11 + v10) = v18;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;

  swift_asyncLet_begin();
  v12 = *(v7 + 40);
  v13 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
  v14 = swift_task_alloc();
  *(v0 + 912) = v14;
  v15 = sub_1E0E8(&qword_12E5B8);
  *v14 = v0;
  v14[1] = sub_4C5CC;
  v16 = *(v0 + 824);

  return Preparable.artworkData(for:imageProvider:)(v5 + v12, v0 + 696, v7, v15);
}

uint64_t sub_4C5CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 912);
  v10 = *v3;
  *(*v3 + 920) = v2;

  if (v2)
  {
    v8 = v6[108];

    return _swift_asyncLet_finish(v6 + 2, v8, sub_4C9A0, v6 + 82);
  }

  else
  {
    v6[116] = a2;
    v6[117] = a1;

    return _swift_task_switch(sub_4C728, 0, 0);
  }
}

uint64_t sub_4C728()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[103] + *(v0[112] + 44);
  sub_4DC8C(*v3, *(v3 + 8));
  *v3 = v1;
  *(v3 + 8) = v2;
  v4 = v0[108];

  return _swift_asyncLet_get(v0 + 2, v4, sub_4C7B8, v0 + 92);
}

uint64_t sub_4C7D4()
{
  sub_4EB1C(*(v0 + 864), *(v0 + 824) + *(v0 + 944));
  v1 = *(v0 + 864);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_4C84C, v0 + 784);
}

uint64_t sub_4C868()
{
  v1 = v0[113];
  v2 = v0[108];
  v3 = v0[107];
  sub_110AC(v0[109], &unk_12DFA0, &qword_E9B50);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  v4 = v0[1];

  return v4();
}

uint64_t sub_4C91C()
{
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];

  v5 = v0[1];

  return v5();
}

uint64_t sub_4C9BC()
{
  v1 = v0[113];
  sub_110AC(v0[109], &unk_12DFA0, &qword_E9B50);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  v2 = v0[115];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];

  v6 = v0[1];

  return v6();
}

uint64_t sub_4CA6C()
{
  result = sub_E7064();
  qword_12E530 = result;
  *algn_12E538 = v1;
  return result;
}

uint64_t static ChannelEntity.databaseEntityName.getter()
{
  if (qword_12CA80 != -1)
  {
    swift_once();
  }

  v0 = qword_12E530;

  return v0;
}

uint64_t sub_4CB04()
{
  v0 = sub_E6014();
  __swift_allocate_value_buffer(v0, qword_12E540);
  v1 = __swift_project_value_buffer(v0, qword_12E540);
  v2 = enum case for MediaRequest.ContentType.podcastChannel(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_4CBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  qword_12E558 = result;
  return result;
}

uint64_t static ChannelEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CA90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12E558;
}

uint64_t sub_4CCBC()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E560);
  __swift_project_value_buffer(v0, qword_12E560);
  return sub_E57B4();
}

uint64_t sub_4CD58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t ChannelEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_E5944();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_E7014();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_E7004();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_E6FF4(v18);
  v14 = *(v0 + 48);
  sub_E53E4();
  sub_E6FD4(v17);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_E6FF4(v19);
  sub_E5924();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_E5684();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_E56A4();
}

uint64_t ChannelEntity.name.getter()
{
  v1 = *(v0 + 48);
  sub_E53E4();
  return v3;
}

uint64_t (*static ChannelEntity.deviceURLPrefix.modify())()
{
  if (qword_12CAA0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v0, qword_12E578);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_4D1A4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = sub_E59C4();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 1, 1, v5);
}

uint64_t sub_4D264@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return sub_26324(v6, a3, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4D320(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  sub_4EB1C(a1, v6);
  swift_endAccess();
  return sub_110AC(a1, &unk_12DFA0, &qword_E9B50);
}

uint64_t (*static ChannelEntity.catalogURLPrefix.modify())()
{
  if (qword_12CAA8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v0, qword_12E590);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_4D46C@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return sub_26324(v6, a3, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  sub_4EB1C(a1, v9);
  return swift_endAccess();
}

uint64_t TipButton.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TipButton.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TipButton.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TipButton.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *StationEntity.objectID.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void (*ChannelEntity.name.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ChannelEntity.subscribed.getter()
{
  v1 = *(v0 + 56);
  sub_E53E4();
  return v3;
}

void (*ChannelEntity.subscribed.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t ChannelEntity.artworkData.getter()
{
  v1 = v0 + *(type metadata accessor for ChannelEntity() + 44);
  v2 = *v1;
  sub_4EB8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t ChannelEntity.init(id:uuid:objectID:adamID:name:subscribed:artworkModel:artworkData:storeURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = sub_E5944();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  sub_E5914();
  *(a7 + 6) = sub_E5474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5B0, &qword_EBE28);
  sub_E5914();
  *(a7 + 7) = sub_E5494();
  v18 = type metadata accessor for ChannelEntity();
  v19 = v18[10];
  v20 = sub_E5FD4();
  (*(*(v20 - 8) + 56))(&a7[v19], 1, 1, v20);
  v21 = &a7[v18[11]];
  *v21 = xmmword_EBE10;
  v22 = v18[12];
  v23 = sub_E59C4();
  (*(*(v23 - 8) + 56))(&a7[v22], 1, 1, v23);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = a5;
  *(a7 + 5) = a6;
  v24 = a5;
  sub_E53F4();
  sub_E53F4();

  sub_4DCF4(a9, &a7[v19], &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v21, *(v21 + 1));
  *v21 = a10;
  *(v21 + 1) = a11;
  return sub_4DCF4(a12, &a7[v22], &unk_12DFA0, &qword_E9B50);
}

uint64_t type metadata accessor for ChannelEntity()
{
  result = qword_12E670;
  if (!qword_12E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4DC8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4DCA0(a1, a2);
  }

  return a1;
}

uint64_t sub_4DCA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_4DCF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ChannelEntity.init(mediaObject:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_E5944();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v37 - v12;
  v14 = [a1 storeId];
  v15 = sub_E7064();
  v42 = v16;
  v43 = v15;

  v17 = [a1 storeId];
  sub_E7064();

  v41 = sub_E67F4();

  v18 = [a1 name];
  if (v18)
  {
    v19 = v18;
    v20 = sub_E7064();
    v39 = v21;
    v40 = v20;
  }

  else
  {
    v39 = 0xE000000000000000;
    v40 = 0;
  }

  sub_E6144();
  v38 = sub_E6334();

  sub_E6144();
  v22 = sub_E6344();

  if (v22)
  {
    sub_E5F94();
  }

  else
  {
    v23 = sub_E5FD4();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  }

  v24 = [a1 url];
  if (v24)
  {
    v25 = v24;
    sub_E7064();

    sub_E59B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v26 = sub_E59C4();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  sub_E5914();
  *(a2 + 6) = sub_E5474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5B0, &qword_EBE28);
  sub_E5914();
  *(a2 + 7) = sub_E5494();
  v27 = type metadata accessor for ChannelEntity();
  v28 = v27[10];
  v29 = sub_E5FD4();
  (*(*(v29 - 8) + 56))(&a2[v28], 1, 1, v29);
  v30 = &a2[v27[11]];
  v37 = xmmword_EBE10;
  *v30 = xmmword_EBE10;
  v31 = v27[12];
  v32 = sub_E59C4();
  (*(*(v32 - 8) + 56))(&a2[v31], 1, 1, v32);
  v33 = v42;
  *a2 = v43;
  *(a2 + 1) = v33;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v35 = v40;
  v34 = v41;
  *(a2 + 4) = 0;
  *(a2 + 5) = v34;
  v44 = v35;
  v45 = v39;
  sub_E53F4();
  LOBYTE(v44) = v38 & 1;
  sub_E53F4();

  sub_4DCF4(v13, &a2[v28], &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v30, *(v30 + 1));
  *v30 = v37;
  return sub_4DCF4(v9, &a2[v31], &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4E2B4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return sub_26324(v6, a3, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4E354@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_4E360(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_4E3CC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_4E474(uint64_t a1)
{
  v2 = sub_1E0E8(&qword_12E040);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_4E4E0(uint64_t a1)
{
  v2 = sub_1E0E8(&qword_12E5F8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_4E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_4E5E8, 0, 0);
}

uint64_t sub_4E5E8()
{
  v1 = v0[6];
  sub_26324(v0[3], v1, &unk_12DFA0, &qword_E9B50);
  v2 = sub_E59C4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_110AC(v0[6], &unk_12DFA0, &qword_E9B50);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_4E7A4;
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[2];

    return sub_4EBF4(v9, v7, v8);
  }

  else
  {
    v11 = v0[2];
    (*(v3 + 32))(v11, v0[6], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    v12 = v0[6];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_4E7A4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_4E8B8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_E59C4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_4E9EC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_588C;

  return sub_4E548(a1, v1 + v5, v7, v8);
}

uint64_t sub_4EB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_4EB8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4EBA0(a1, a2);
  }

  return a1;
}

uint64_t sub_4EBA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_4EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = sub_E6974();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v9 = swift_task_alloc();
  v3[20] = v9;
  *v9 = v3;
  v9[1] = sub_4ED14;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v7, v7);
}

uint64_t sub_4ED14()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_4F27C;
  }

  else
  {
    v3 = sub_4EE28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4EE28()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E87F0;
  *(v4 + 32) = v1;
  v5 = sub_AF5BC(_swiftEmptyArrayStorage);
  v0[10] = v4;
  v0[11] = v5;
  v6 = async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)[1];
  v7 = swift_task_alloc();
  v0[22] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E718, &unk_EC250);
  v9 = sub_3C2A0(&qword_12E720, &qword_12E718, &unk_EC250);
  *v7 = v0;
  v7[1] = sub_4EF9C;
  v10 = v0[16];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 13, v0 + 10, v10, v8, v9, v2, v3);
}

uint64_t sub_4EF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;
  v2[23] = v0;

  v4 = v2[10];
  v5 = v2[11];

  if (v0)
  {
    v6 = sub_4F494;
  }

  else
  {
    v6 = sub_4F0C4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_4F0C4()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[13];
    }

    result = sub_E7AC4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v9 = v0[14];

    v10 = sub_E59C4();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_13;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 url];

  v6 = v0[14];
  if (v5)
  {
    sub_E7064();

    sub_E59B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v7 = sub_E59C4();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_4F27C()
{
  v25 = v0;
  v1 = v0[21];
  v2 = v0[19];
  sub_E6914();
  swift_errorRetain();
  v3 = sub_E6964();
  v4 = sub_E74B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v23 = v0[19];
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[9];
    v12 = sub_E7C64();
    v14 = sub_23E64(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Failed to prepare channel share URL, but failing silently: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    (*(v5 + 8))(v23, v6);
  }

  else
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[14];
  v19 = sub_E59C4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = v0[19];

  v21 = v0[1];

  return v21();
}

uint64_t sub_4F494()
{
  v25 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[23];
  v2 = v0[19];
  sub_E6914();
  swift_errorRetain();
  v3 = sub_E6964();
  v4 = sub_E74B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v23 = v0[19];
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[9];
    v12 = sub_E7C64();
    v14 = sub_23E64(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Failed to prepare channel share URL, but failing silently: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    (*(v5 + 8))(v23, v6);
  }

  else
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[14];
  v19 = sub_E59C4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = v0[19];

  v21 = v0[1];

  return v21();
}

uint64_t sub_4F6B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ChannelEntity.prepare(asPartOf:)(a1);
}

uint64_t static ChannelEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for ChannelEntity();
  v1 = sub_1E0E8(&qword_12E5C0);
  v2 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_4F7E4, 0, v0, &type metadata for String, v1, v2);
}

uint64_t sub_4F7E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for ChannelEntity();
  sub_26324(a1 + *(v8 + 48), v7, &unk_12DFA0, &qword_E9B50);
  v9 = sub_E59C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_110AC(v7, &unk_12DFA0, &qword_E9B50);
    v11 = *(a1 + 48);
    result = sub_E53E4();
    v13 = v16[0];
    v14 = v16[1];
  }

  else
  {
    v13 = sub_E5974();
    v14 = v15;
    result = (*(v10 + 8))(v7, v9);
  }

  *a2 = v13;
  a2[1] = v14;
  return result;
}

unint64_t sub_4F958()
{
  result = qword_12E5C8;
  if (!qword_12E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E5C8);
  }

  return result;
}

uint64_t sub_4FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_4F7E4, 0, a1, &type metadata for String, a2, v4);
}

uint64_t sub_4FD74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_E53E4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_4FDB0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *a1;
  v5 = a1[1];

  return sub_E53F4();
}

uint64_t sub_4FDEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_4FE28(char *a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_4FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_4FFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_50100()
{
  sub_5041C(319, &qword_12E680);
  if (v0 <= 0x3F)
  {
    sub_50468(319, &qword_12E688, sub_502C8);
    if (v1 <= 0x3F)
    {
      sub_50368(319, &qword_12E690, sub_50314);
      if (v2 <= 0x3F)
      {
        sub_50368(319, &qword_12E6A0, sub_503C8);
        if (v3 <= 0x3F)
        {
          sub_50468(319, &qword_12E6B0, &type metadata accessor for ArtworkModel);
          if (v4 <= 0x3F)
          {
            sub_5041C(319, &unk_12E6B8);
            if (v5 <= 0x3F)
            {
              sub_50468(319, &qword_12D8A0, &type metadata accessor for URL);
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

unint64_t sub_502C8()
{
  result = qword_12E090;
  if (!qword_12E090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12E090);
  }

  return result;
}

unint64_t sub_50314()
{
  result = qword_12E698;
  if (!qword_12E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E698);
  }

  return result;
}

void sub_50368(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_E54C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_503C8()
{
  result = qword_12E6A8;
  if (!qword_12E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E6A8);
  }

  return result;
}

void sub_5041C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_E7814();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_50468(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_50510()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E728);
  __swift_project_value_buffer(v0, qword_12E728);
  return sub_E57B4();
}

uint64_t static ContextualMetadata.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E728);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ContextualMetadata.invocationSource.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_E53F4();
}

void (*ContextualMetadata.invocationSource.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t ContextualMetadata.associatedActivities.getter()
{
  v1 = *(v0 + 8);
  sub_E53E4();
  return v3;
}

void (*ContextualMetadata.associatedActivities.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ContextualMetadata.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v16 - v8;
  v10 = sub_E5944();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E740, &qword_EC270);
  sub_50A18();
  *a1 = sub_E5424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E750, &qword_EC278);
  sub_50A6C();
  a1[1] = sub_E5424();
  v13 = *(type metadata accessor for ContextualMetadata() + 24);
  sub_E5914();
  (*(v11 + 56))(v9, 1, 1, v10);
  v14 = sub_E5684();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_E56A4();
  v16[1] = &_swiftEmptySetSingleton;
  return sub_E53F4();
}

unint64_t sub_50A18()
{
  result = qword_12E748;
  if (!qword_12E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E748);
  }

  return result;
}

unint64_t sub_50A6C()
{
  result = qword_12E758;
  if (!qword_12E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E758);
  }

  return result;
}

uint64_t type metadata accessor for ContextualMetadata()
{
  result = qword_12E828;
  if (!qword_12E828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContextualMetadata.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualMetadata() + 24);
  v4 = sub_E56B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_50CFC(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E8A8, type metadata accessor for ContextualMetadata);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_50EE0(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E8A8, type metadata accessor for ContextualMetadata);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_50FA0(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E760, type metadata accessor for ContextualMetadata);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_51064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_E56B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_510D8(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E7A8, type metadata accessor for ContextualMetadata);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_51154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_51190(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_511C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_51204(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;

  return sub_E53F4();
}

uint64_t sub_51254(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E56B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_51314(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E56B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_513B8()
{
  sub_51584(319, &qword_12E838, &qword_12E840, &qword_EC508, sub_514AC);
  if (v0 <= 0x3F)
  {
    sub_51584(319, &qword_12E858, &qword_12E860, &unk_EC510, sub_515F4);
    if (v1 <= 0x3F)
    {
      sub_E56B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_514AC()
{
  result = qword_12E848;
  if (!qword_12E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E840, &qword_EC508);
    sub_51530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E848);
  }

  return result;
}

unint64_t sub_51530()
{
  result = qword_12E850;
  if (!qword_12E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E850);
  }

  return result;
}

void sub_51584(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_E54C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_515F4()
{
  result = qword_12E868;
  if (!qword_12E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E860, &unk_EC510);
    sub_51678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E868);
  }

  return result;
}

unint64_t sub_51678()
{
  result = qword_12E870;
  if (!qword_12E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E870);
  }

  return result;
}

uint64_t sub_516CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EpisodeEntity.CustomRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_E5DF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_E5E54();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t EpisodeEntity.CustomRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_E5DF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_E5E54();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t EpisodeEntity.CustomRepresentation.__deallocating_deinit()
{
  _s15PodcastsActions13EpisodeEntityV20CustomRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_51A20(uint64_t a1)
{
  v3 = sub_54224(&qword_12E9B8, type metadata accessor for EpisodeEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_51A90()
{
  v1 = sub_54224(&qword_12E9A8, type metadata accessor for EpisodeEntity.CustomRepresentation);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_51B14(uint64_t a1)
{
  v3 = sub_54224(&qword_12E9B8, type metadata accessor for EpisodeEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_51B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5E14();
  *a1 = result;
  return result;
}

uint64_t sub_51BFC()
{
  result = sub_E7064();
  qword_12E8B0 = result;
  *algn_12E8B8 = v1;
  return result;
}

uint64_t static EpisodeEntity.databaseEntityName.getter()
{
  if (qword_12CAB8 != -1)
  {
    swift_once();
  }

  v0 = qword_12E8B0;

  return v0;
}

uint64_t sub_51C94()
{
  v0 = sub_E6014();
  __swift_allocate_value_buffer(v0, qword_12E8C0);
  v1 = __swift_project_value_buffer(v0, qword_12E8C0);
  v2 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static EpisodeEntity.serverContentType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_E6014();
  v3 = __swift_project_value_buffer(v2, qword_12E8C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_51DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC18, &qword_ECC68);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E87F0;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
  v7 = sub_E6014();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC20, &qword_ECC78);
  v8 = sub_E6044();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_EC520;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for MediaRequest.IncludeExtendTypes.transcripts(_:), v8);
  v14(v13 + v10, enum case for MediaRequest.IncludeExtendTypes.editorialArtwork(_:), v8);
  v14(v13 + 2 * v10, enum case for MediaRequest.IncludeExtendTypes.podcast(_:), v8);
  v14(v13 + 3 * v10, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v8);
  *(v4 + v5) = v12;
  v15 = sub_B0314(v3);
  swift_setDeallocating();
  sub_110AC(v4, &unk_1306C0, &qword_ECC70);
  result = swift_deallocClassInstance();
  qword_12E8D8 = v15;
  return result;
}

uint64_t static EpisodeEntity.typedIncludes.getter()
{
  if (qword_12CAC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_520B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  qword_12E8E0 = result;
  return result;
}

uint64_t static EpisodeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CAD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12E8E0;
}

uint64_t EpisodeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v39 = sub_E5944();
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v39);
  __chkstk_darwin(v15);
  v16 = sub_E7014();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v20 = v1;
  v21 = *(v1 + 24);
  sub_E53E4();
  object = v41._object;
  if (v41._object)
  {
    countAndFlagsBits = v41._countAndFlagsBits;
    sub_E7004();
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_E6FF4(v42);
    v24 = *(v20 + 16);
    sub_E53E4();
    sub_E6FD4(v41);

    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_E6FF4(v43);
    sub_E5924();
    sub_E7004();
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_E6FF4(v44);
    v45._countAndFlagsBits = countAndFlagsBits;
    v45._object = object;
    sub_E6FD4(v45);

    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_E6FF4(v46);
    v25 = 1;
    sub_E5924();
    (*(v13 + 56))(v12, 0, 1, v39);
    v26 = v20 + *(type metadata accessor for EpisodeEntity(0) + 100);
    v27 = v38;
    if (*(v26 + 8) >> 60 != 15)
    {
      sub_4EBA0(*v26, *(v26 + 8));
      sub_E5674();
      v25 = 0;
    }

    v28 = sub_E5684();
    (*(*(v28 - 8) + 56))(v27, v25, 1, v28);
  }

  else
  {
    v29 = 1;
    sub_E7004();
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    sub_E6FF4(v47);
    v30 = *(v20 + 16);
    sub_E53E4();
    sub_E6FD4(v41);

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_E6FF4(v48);
    sub_E5924();
    (*(v13 + 56))(v36, 1, 1, v39);
    v31 = v20 + *(type metadata accessor for EpisodeEntity(0) + 100);
    v32 = v37;
    if (*(v31 + 8) >> 60 != 15)
    {
      sub_4EBA0(*v31, *(v31 + 8));
      sub_E5674();
      v29 = 0;
    }

    v33 = sub_E5684();
    (*(*(v33 - 8) + 56))(v32, v29, 1, v33);
  }

  return sub_E56A4();
}

uint64_t sub_526C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12E8E8);
  __swift_project_value_buffer(v0, qword_12E8E8);
  return sub_E59B4();
}

uint64_t (*static EpisodeEntity.deviceURLPrefix.modify())()
{
  if (qword_12CAD8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v0, qword_12E8E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_5281C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12E900);
  __swift_project_value_buffer(v0, qword_12E900);
  return sub_E59B4();
}

uint64_t (*static EpisodeEntity.catalogURLPrefix.modify())()
{
  if (qword_12CAE0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v0, qword_12E900);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_52974()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E918);
  __swift_project_value_buffer(v0, qword_12E918);
  return sub_E57B4();
}

uint64_t static EpisodeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E918);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EpisodeEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E918);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EpisodeEntity.typeDisplayRepresentation.modify())()
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v0 = sub_E57C4();
  __swift_project_value_buffer(v0, qword_12E918);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_52C20(uint64_t a1)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E918);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

void *EpisodeEntity.objectID.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t EpisodeEntity.uuid.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t EpisodeEntity.description.getter()
{
  v1 = *(v0 + 96);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.description.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t EpisodeEntity.category.getter()
{
  v1 = *(v0 + 104);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.category.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.creator.getter()
{
  v1 = *(v0 + 112);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.creator.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_5306C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_26324(a1, &v13 - v9, &qword_131EE0, &unk_F5BE0);
  v11 = *(a2 + 120);
  sub_26324(v10, v8, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(v10, &qword_131EE0, &unk_F5BE0);
}

uint64_t EpisodeEntity.downloadDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + 120);
  sub_26324(a1, &v8 - v6, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(a1, &qword_131EE0, &unk_F5BE0);
}

void (*EpisodeEntity.downloadDate.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.episodeNumber.getter()
{
  v1 = *(v0 + 128);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.episodeNumber.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.isPlayed.getter()
{
  v1 = *(v0 + 136);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.isPlayed.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.isSaved.getter()
{
  v1 = *(v0 + 144);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.isSaved.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.isDownloaded.getter()
{
  v1 = *(v0 + 152);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.isDownloaded.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.isTranscriptAvailable.getter()
{
  v1 = *(v0 + 160);
  sub_E53E4();
  return v3;
}

void (*EpisodeEntity.isTranscriptAvailable.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 160);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.artworkData.getter()
{
  v1 = v0 + *(type metadata accessor for EpisodeEntity(0) + 100);
  v2 = *v1;
  sub_4EB8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t EpisodeEntity.init(id:objectID:uuid:adamID:title:description:category:creator:showName:show:downloadDate:releaseDate:episodeNumber:isPlayed:isSaved:isDownloaded:isTranscriptAvailable:artworkModel:artworkData:shareURL:transcriptInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v84 = a7;
  v85 = a8;
  v80 = a6;
  v78 = a5;
  v77 = a4;
  v76 = a3;
  v75 = a2;
  v74 = a1;
  v101 = a28;
  v102 = a29;
  v99 = a26;
  v100 = a27;
  v97 = a24;
  v98 = a25;
  v95 = a22;
  v96 = a23;
  v93 = a20;
  v94 = a21;
  v92 = a19;
  v89 = a17;
  v90 = a18;
  v87 = a15;
  v88 = a16;
  v86 = a14;
  v83 = a13;
  v82 = a12;
  v81 = a11;
  v79 = a10;
  v103 = a30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v91 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v61 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v73 = &v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v61 - v41;
  v43 = sub_E5944();
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v69 = sub_E5484();
  *(a9 + 2) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  v72 = sub_E5484();
  *(a9 + 3) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E940, &qword_EC558);
  sub_54224(&qword_12DDF0, type metadata accessor for ShowEntity);
  v70 = sub_E5444();
  *(a9 + 4) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_54224(&qword_12E760, type metadata accessor for ContextualMetadata);
  *(a9 + 5) = sub_E5444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  v71 = sub_E5464();
  *(a9 + 6) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E958, &qword_EC570);
  *(a9 + 7) = sub_E54A4();
  sub_E5914();
  *(a9 + 12) = sub_E5474();
  sub_E5914();
  *(a9 + 13) = sub_E5474();
  sub_E5914();
  *(a9 + 14) = sub_E5474();
  sub_E5914();
  v66 = sub_E5454();
  *(a9 + 15) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E960, &qword_EC578);
  sub_E5914();
  v68 = sub_E54B4();
  *(a9 + 16) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v67 = sub_E5494();
  *(a9 + 17) = v67;
  sub_E5914();
  v64 = sub_E5494();
  *(a9 + 18) = v64;
  sub_E5914();
  v62 = sub_E5494();
  *(a9 + 19) = v62;
  sub_E5914();
  v61 = sub_E5494();
  *(a9 + 20) = v61;
  v45 = type metadata accessor for EpisodeEntity(0);
  v46 = v45[24];
  v65 = v46;
  v47 = sub_E5FD4();
  (*(*(v47 - 8) + 56))(&a9[v46], 1, 1, v47);
  v48 = &a9[v45[25]];
  *v48 = xmmword_EBE10;
  v49 = v45[26];
  v63 = v49;
  v50 = sub_E59C4();
  (*(*(v50 - 8) + 56))(&a9[v49], 1, 1, v50);
  v51 = v75;
  *a9 = v74;
  *(a9 + 1) = v51;
  v52 = v76;
  v53 = v77;
  *(a9 + 8) = v76;
  *(a9 + 9) = v53;
  v54 = v80;
  *(a9 + 10) = v78;
  *(a9 + 11) = v54;
  sub_26324(v103, &a9[v45[23]], &qword_12E930, &unk_EC530);
  v104 = v84;
  v105 = v85;
  v85 = v52;
  sub_E53F4();
  v104 = v79;
  v105 = v81;
  sub_E53F4();
  v104 = v82;
  v105 = v83;
  sub_E53F4();
  v104 = v86;
  v105 = v87;
  sub_E53F4();
  v104 = v88;
  v105 = v89;
  sub_E53F4();
  v55 = v90;
  sub_26324(v90, v42, &qword_12DCD8, &unk_EC540);
  sub_26324(v42, v73, &qword_12DCD8, &unk_EC540);
  sub_E53F4();
  sub_110AC(v42, &qword_12DCD8, &unk_EC540);
  v56 = v92;
  sub_26324(v92, v36, &qword_131EE0, &unk_F5BE0);
  v57 = v91;
  sub_26324(v36, v91, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v36, &qword_131EE0, &unk_F5BE0);
  v58 = v93;
  sub_26324(v93, v36, &qword_131EE0, &unk_F5BE0);
  sub_26324(v36, v57, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v36, &qword_131EE0, &unk_F5BE0);
  v104 = v94;
  LOBYTE(v105) = 0;
  sub_E53F4();
  LOBYTE(v104) = v95;
  sub_E53F4();
  LOBYTE(v104) = v96;
  sub_E53F4();
  LOBYTE(v104) = v97;
  sub_E53F4();
  LOBYTE(v104) = v98;
  sub_E53F4();

  sub_110AC(v103, &qword_12E930, &unk_EC530);
  sub_110AC(v58, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v56, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v55, &qword_12DCD8, &unk_EC540);
  sub_4DCF4(v99, &a9[v65], &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v48, *(v48 + 1));
  v59 = v101;
  *v48 = v100;
  *(v48 + 1) = v59;
  return sub_4DCF4(v102, &a9[v63], &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_54224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EpisodeEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v163 = a2;
  v3 = sub_E5944();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v127 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v165 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v164 = &v127 - v14;
  v15 = __chkstk_darwin(v13);
  v174 = &v127 - v16;
  __chkstk_darwin(v15);
  v175 = &v127 - v17;
  v176 = sub_E59C4();
  v172 = *(v176 - 1);
  v18 = *(v172 + 8);
  __chkstk_darwin(v176);
  v161 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E970, &qword_EC588);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v159 = &v127 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v170 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v127 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v171 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  __chkstk_darwin(v33);
  v177 = &v127 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v162 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v169 = &v127 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v127 - v44;
  __chkstk_darwin(v43);
  v47 = &v127 - v46;
  v48 = type metadata accessor for ShowEntity(0);
  v49 = *(*(v48 - 8) + 56);
  v49(v47, 1, 1, v48);
  v50 = [a1 podcast];
  v178 = v28;
  v173 = v45;
  if (v50)
  {
    ShowEntity.init(model:)(v50, v45);
    sub_110AC(v47, &qword_12DCD8, &unk_EC540);
    v49(v173, 0, 1, v48);
    v28 = v178;
    sub_45B04(v173, v47, &qword_12DCD8, &unk_EC540);
  }

  v166 = *(v172 + 7);
  v167 = v172 + 56;
  v166(v177, 1, 1, v176);
  v51 = [a1 podcast];
  v52 = v175;
  v168 = v47;
  if (v51)
  {
    v53 = v51;
    v54 = [v51 storeCollectionId];

    v55 = [objc_opt_self() productURLForStoreCollectionId:v54 storeTrackId:{objc_msgSend(a1, "storeTrackId")}];
    if (v55)
    {
      v56 = v55;
      sub_E5994();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v58 = v177;
    sub_110AC(v177, &unk_12DFA0, &qword_E9B50);
    v166(v35, v57, 1, v176);
    sub_45B04(v35, v58, &unk_12DFA0, &qword_E9B50);
    v28 = v178;
    v47 = v168;
  }

  result = [a1 storeTrackId];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v60 = sub_E6814();
    v61 = [a1 transcriptIdentifier];
    v160 = v60;
    if (v61)
    {
      v62 = v61;
      v158 = sub_E7064();

      v179 = v60;
      sub_10D78();

      v157 = sub_E7854();
      v156 = v63;
      v64 = [a1 title];
      if (v64)
      {
        v65 = v64;
        v155 = sub_E7064();
        v154 = v66;
      }

      else
      {
        v155 = 0;
        v154 = 0;
      }

      v68 = [a1 podcast];
      if (v68 && (v69 = v68, v70 = [v68 title], v69, v70))
      {
        v71 = v8;
        sub_E7064();
      }

      else
      {
        v71 = v8;
      }

      v72 = [a1 transcriptProvider];
      sub_E7064();

      sub_E61D4();
      v28 = v178;
      sub_E67A4();

      v67 = 0;
      v8 = v71;
      v52 = v175;
    }

    else
    {
      v67 = 1;
    }

    v73 = sub_E67B4();
    (*(*(v73 - 8) + 56))(v28, v67, 1, v73);
    v74 = a1;
    v75 = [v74 objectID];
    v76 = [v75 URIRepresentation];

    v77 = v161;
    sub_E5994();

    v159 = sub_E5974();
    v158 = v78;
    (*(v172 + 1))(v77, v176);
    v172 = [v74 objectID];

    v79 = [v74 uuid];
    if (v79)
    {
      v80 = v79;
      v161 = sub_E7064();
      v157 = v81;
    }

    else
    {
      v161 = 0;
      v157 = 0;
    }

    v82 = [v74 title];
    if (v82)
    {
      v83 = v82;
      v156 = sub_E7064();
      v155 = v84;
    }

    else
    {
      v156 = 0;
      v155 = 0xE000000000000000;
    }

    v85 = [v74 description];
    v154 = sub_E7064();
    v153 = v86;

    v87 = [v74 category];
    if (v87)
    {
      v88 = v87;
      v152 = sub_E7064();
      v151 = v89;
    }

    else
    {
      v152 = 0;
      v151 = 0xE000000000000000;
    }

    v90 = [v74 author];
    if (v90)
    {
      v91 = v90;
      v150 = sub_E7064();
      v149 = v92;
    }

    else
    {
      v150 = 0;
      v149 = 0;
    }

    v93 = [v74 podcast];
    if (v93 && (v94 = v93, v95 = [v93 title], v94, v95))
    {
      v148 = sub_E7064();
      v147 = v96;
    }

    else
    {
      v148 = 0;
      v147 = 0;
    }

    sub_26324(v47, v169, &qword_12DCD8, &unk_EC540);
    [v74 downloadDate];
    if (v97 <= 0.0)
    {
      v98 = 1;
    }

    else
    {
      [v74 downloadDate];
      sub_E5A04();
      v98 = 0;
    }

    v99 = sub_E5A54();
    v100 = *(*(v99 - 8) + 56);
    v101 = 1;
    v100(v52, v98, 1, v99);
    [v74 pubDate];
    if (v102 > 0.0)
    {
      [v74 pubDate];
      sub_E5A04();
      v101 = 0;
    }

    v100(v174, v101, 1, v99);
    v146 = [v74 episodeNumber];
    v103 = [v74 playState];
    v145 = [v74 isBookmarked];
    v104 = [v74 assetURL];
    v105 = v104;
    if (v104)
    {
    }

    v106 = [v74 transcriptIdentifier];
    v107 = v106;
    if (v106)
    {
    }

    v108 = [v74 podcast];
    v144 = v8;
    if (v108)
    {
      v109 = v108;
      sub_E77C4();
    }

    else
    {
      v110 = sub_E5FD4();
      (*(*(v110 - 8) + 56))(v8, 1, 1, v110);
    }

    v143 = v107 != 0;
    v142 = v105 != 0;
    v141 = v103 == 0;
    sub_26324(v177, v171, &unk_12DFA0, &qword_E9B50);
    v111 = v170;
    sub_26324(v178, v170, &qword_12E930, &unk_EC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
    v137 = sub_E5484();
    v112 = v163;
    *(v163 + 2) = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
    v139 = sub_E5484();
    *(v112 + 3) = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E940, &qword_EC558);
    sub_54224(&qword_12DDF0, type metadata accessor for ShowEntity);
    v138 = sub_E5444();
    *(v112 + 4) = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
    sub_54224(&qword_12E760, type metadata accessor for ContextualMetadata);
    *(v112 + 5) = sub_E5444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
    v140 = sub_E5464();
    *(v112 + 6) = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E958, &qword_EC570);
    *(v112 + 7) = sub_E54A4();
    sub_E5914();
    *(v112 + 12) = sub_E5474();
    sub_E5914();
    *(v112 + 13) = sub_E5474();
    sub_E5914();
    *(v112 + 14) = sub_E5474();
    sub_E5914();
    *(v112 + 15) = sub_E5454();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E960, &qword_EC578);
    sub_E5914();
    v133 = sub_E54B4();
    *(v112 + 16) = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
    sub_E5914();
    v131 = sub_E5494();
    *(v112 + 17) = v131;
    sub_E5914();
    v130 = sub_E5494();
    *(v112 + 18) = v130;
    sub_E5914();
    v129 = sub_E5494();
    *(v112 + 19) = v129;
    sub_E5914();
    v128 = sub_E5494();
    *(v112 + 20) = v128;
    v113 = type metadata accessor for EpisodeEntity(0);
    v114 = v113[24];
    v134 = v114;
    v115 = sub_E5FD4();
    (*(*(v115 - 8) + 56))(&v112[v114], 1, 1, v115);
    v132 = &v112[v113[25]];
    v135 = xmmword_EBE10;
    *v132 = xmmword_EBE10;
    v136 = v113[26];
    v166(&v112[v136], 1, 1, v176);
    v116 = v158;
    *v112 = v159;
    *(v112 + 1) = v116;
    v117 = v172;
    v118 = v161;
    *(v112 + 8) = v172;
    *(v112 + 9) = v118;
    v119 = v160;
    *(v112 + 10) = v157;
    *(v112 + 11) = v119;
    sub_26324(v111, &v112[v113[23]], &qword_12E930, &unk_EC530);
    v179 = v156;
    v180 = v155;
    v176 = v117;
    sub_E53F4();
    v179 = v154;
    v180 = v153;
    sub_E53F4();
    v179 = v152;
    v180 = v151;
    sub_E53F4();
    v179 = v150;
    v180 = v149;
    sub_E53F4();
    v179 = v148;
    v180 = v147;
    sub_E53F4();
    v120 = v169;
    v121 = v173;
    sub_26324(v169, v173, &qword_12DCD8, &unk_EC540);
    sub_26324(v121, v162, &qword_12DCD8, &unk_EC540);
    sub_E53F4();
    sub_110AC(v121, &qword_12DCD8, &unk_EC540);
    v122 = v175;
    v123 = v164;
    sub_26324(v175, v164, &qword_131EE0, &unk_F5BE0);
    v124 = v165;
    sub_26324(v123, v165, &qword_131EE0, &unk_F5BE0);
    sub_E53F4();
    sub_110AC(v123, &qword_131EE0, &unk_F5BE0);
    v125 = v174;
    sub_26324(v174, v123, &qword_131EE0, &unk_F5BE0);
    sub_26324(v123, v124, &qword_131EE0, &unk_F5BE0);
    sub_E53F4();
    sub_110AC(v123, &qword_131EE0, &unk_F5BE0);
    v179 = v146;
    LOBYTE(v180) = 0;
    sub_E53F4();
    LOBYTE(v179) = v141;
    sub_E53F4();
    LOBYTE(v179) = v145;
    sub_E53F4();
    LOBYTE(v179) = v142;
    sub_E53F4();
    LOBYTE(v179) = v143;
    sub_E53F4();

    sub_110AC(v170, &qword_12E930, &unk_EC530);
    sub_110AC(v125, &qword_131EE0, &unk_F5BE0);
    sub_110AC(v122, &qword_131EE0, &unk_F5BE0);
    sub_110AC(v120, &qword_12DCD8, &unk_EC540);
    sub_110AC(v178, &qword_12E930, &unk_EC530);
    sub_110AC(v177, &unk_12DFA0, &qword_E9B50);
    sub_110AC(v168, &qword_12DCD8, &unk_EC540);
    sub_4DCF4(v144, &v112[v134], &unk_12DB10, &qword_EAC60);
    v126 = v132;
    sub_4DC8C(*v132, *(v132 + 1));
    *v126 = v135;
    return sub_4DCF4(v171, &v112[v136], &unk_12DFA0, &qword_E9B50);
  }

  return result;
}

void *EpisodeEntity.init(mediaObject:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_E5944();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v132 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v131 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v126 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v125 = &v92 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v92 - v19;
  __chkstk_darwin(v18);
  v135 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v124 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v123 = &v92 - v27;
  __chkstk_darwin(v26);
  v133 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v134 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v92 - v34;
  __chkstk_darwin(v33);
  v37 = &v92 - v36;
  sub_E64F4();
  v38 = sub_E67F4();

  v39 = sub_E59C4();
  v40 = *(v39 - 8);
  v128 = *(v40 + 56);
  v129 = v39;
  v127 = v40 + 56;
  v128(v37, 1, 1);
  v41 = sub_E64D4();
  v130 = v20;
  v122 = v38;
  if (v41)
  {
    v42 = v41;
    v43 = sub_E6784();

    if (v43)
    {
      v44 = sub_E6794();

      if (v44 >> 62)
      {
        result = sub_E7AC4();
        if (result)
        {
LABEL_5:
          if ((v44 & 0xC000000000000001) != 0)
          {
            v46 = sub_E79B4();
          }

          else
          {
            if (!*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_36;
            }

            v46 = *(v44 + 32);
          }

          v47 = v46;

          sub_E63B4();

          v48 = sub_E67F4();

          v20 = v130;
          result = objc_opt_self();
          if (((v48 | v38) & 0x8000000000000000) == 0)
          {
            v49 = [result productURLForStoreCollectionId:v48 storeTrackId:v38];
            if (v49)
            {
              v50 = v49;
              sub_E5994();

              v51 = 0;
            }

            else
            {
              v51 = 1;
            }

            sub_110AC(v37, &unk_12DFA0, &qword_E9B50);
            (v128)(v35, v51, 1, v129);
            sub_45B04(v35, v37, &unk_12DFA0, &qword_E9B50);
            goto LABEL_15;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        result = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
          goto LABEL_5;
        }
      }
    }
  }

LABEL_15:
  v52 = sub_E64F4();
  v54 = v53;
  v55 = [a1 title];
  if (v55)
  {
    v56 = v55;
    v57 = sub_E7064();
    v118 = v58;
    v119 = v57;
  }

  else
  {
    v118 = 0xE000000000000000;
    v119 = 0;
  }

  v59 = [a1 itemSummary];
  if (v59)
  {
    v60 = v59;
    v117 = sub_E7064();
    v116 = v61;
  }

  else
  {
    v117 = 0;
    v116 = 0xE000000000000000;
  }

  v62 = [a1 category];
  if (v62)
  {
    v63 = v62;
    v115 = sub_E7064();
    v114 = v64;
  }

  else
  {
    v115 = 0;
    v114 = 0xE000000000000000;
  }

  v65 = [a1 author];
  v120 = v54;
  v121 = v52;
  if (v65)
  {
    v66 = v65;
    v113 = sub_E7064();
    v112 = v67;
  }

  else
  {
    v113 = 0;
    v112 = 0;
  }

  v68 = type metadata accessor for ShowEntity(0);
  v69 = 1;
  (*(*(v68 - 8) + 56))(v133, 1, 1, v68);
  v70 = sub_E5A54();
  v71 = *(*(v70 - 8) + 56);
  v71(v135, 1, 1, v70);
  v72 = [a1 pubDate];
  if (v72)
  {
    v73 = v72;
    sub_E5A34();

    v69 = 0;
  }

  v71(v20, v69, 1, v70);
  v74 = [a1 episodeNumber];
  v75 = sub_E6514();
  v76 = sub_E6504();
  v77 = [a1 freeTranscriptIdentifier];
  v111 = v76;
  v110 = v75;
  v109 = v74;
  if (v77 || (v77 = [a1 entitledTranscriptIdentifier]) != 0)
  {

    v107 = 1;
  }

  else
  {
    v107 = 0;
  }

  v78 = sub_E5FD4();
  v79 = *(v78 - 8);
  *&v100 = *(v79 + 56);
  v101 = v79 + 56;
  (v100)(v131, 1, 1, v78);
  v108 = v37;
  sub_26324(v37, v134, &unk_12DFA0, &qword_E9B50);
  v80 = v132;
  sub_E64E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v102 = sub_E5484();
  a2[2] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  v104 = sub_E5484();
  a2[3] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E940, &qword_EC558);
  sub_54224(&qword_12DDF0, type metadata accessor for ShowEntity);
  v103 = sub_E5444();
  a2[4] = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_54224(&qword_12E760, type metadata accessor for ContextualMetadata);
  a2[5] = sub_E5444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  v106 = a1;
  v105 = sub_E5464();
  a2[6] = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E958, &qword_EC570);
  a2[7] = sub_E54A4();
  sub_E5914();
  a2[12] = sub_E5474();
  sub_E5914();
  a2[13] = sub_E5474();
  sub_E5914();
  a2[14] = sub_E5474();
  sub_E5914();
  v96 = sub_E5454();
  a2[15] = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E960, &qword_EC578);
  sub_E5914();
  v99 = sub_E54B4();
  a2[16] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v97 = sub_E5494();
  a2[17] = v97;
  sub_E5914();
  v95 = sub_E5494();
  a2[18] = v95;
  sub_E5914();
  v94 = sub_E5494();
  a2[19] = v94;
  sub_E5914();
  v93 = sub_E5494();
  a2[20] = v93;
  v81 = type metadata accessor for EpisodeEntity(0);
  v98 = v81[24];
  (v100)(a2 + v98, 1, 1, v78);
  v82 = v80;
  v83 = a2 + v81[25];
  v100 = xmmword_EBE10;
  *v83 = xmmword_EBE10;
  v101 = v81[26];
  (v128)(a2 + v101, 1, 1, v129);
  v84 = v120;
  *a2 = v121;
  a2[1] = v84;
  a2[8] = 0;
  a2[9] = 0;
  v85 = v122;
  a2[10] = 0;
  a2[11] = v85;
  sub_26324(v82, a2 + v81[23], &qword_12E930, &unk_EC530);
  v136 = v119;
  v137 = v118;
  sub_E53F4();
  v136 = v117;
  v137 = v116;
  sub_E53F4();
  v136 = v115;
  v137 = v114;
  sub_E53F4();
  v136 = v113;
  v137 = v112;
  sub_E53F4();
  v136 = 0;
  v137 = 0;
  sub_E53F4();
  v86 = v133;
  v87 = v123;
  sub_26324(v133, v123, &qword_12DCD8, &unk_EC540);
  sub_26324(v87, v124, &qword_12DCD8, &unk_EC540);
  sub_E53F4();
  sub_110AC(v87, &qword_12DCD8, &unk_EC540);
  v88 = v135;
  v89 = v125;
  sub_26324(v135, v125, &qword_131EE0, &unk_F5BE0);
  v90 = v126;
  sub_26324(v89, v126, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v89, &qword_131EE0, &unk_F5BE0);
  v91 = v130;
  sub_26324(v130, v89, &qword_131EE0, &unk_F5BE0);
  sub_26324(v89, v90, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v89, &qword_131EE0, &unk_F5BE0);
  v136 = v109;
  LOBYTE(v137) = 0;
  sub_E53F4();
  LOBYTE(v136) = v110 & 1;
  sub_E53F4();
  LOBYTE(v136) = v111 & 1;
  sub_E53F4();
  LOBYTE(v136) = 0;
  sub_E53F4();
  LOBYTE(v136) = v107;
  sub_E53F4();

  sub_110AC(v132, &qword_12E930, &unk_EC530);
  sub_110AC(v91, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v88, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v86, &qword_12DCD8, &unk_EC540);
  sub_110AC(v108, &unk_12DFA0, &qword_E9B50);
  sub_4DCF4(v131, a2 + v98, &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v83, *(v83 + 1));
  *v83 = v100;
  return sub_4DCF4(v134, a2 + v101, &unk_12DFA0, &qword_E9B50);
}

uint64_t EpisodeEntity.preferredIdentifier()()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 88);
  }

  v3 = v1;
  return v2;
}

uint64_t sub_56734(uint64_t a1)
{
  v2 = sub_54224(&qword_12E000, type metadata accessor for EpisodeEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_567B4(uint64_t a1)
{
  v2 = sub_54224(&qword_12EA10, type metadata accessor for EpisodeEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t EpisodeEntity.mediaRepresentation.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_E54D4();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_56928, 0, 0);
}

uint64_t sub_56928()
{
  v1 = *(v0[8] + 88);
  if (sub_E6804())
  {
    v2 = v0[8];
    if (v2[10])
    {
      v3 = v2[9];
    }

    else
    {
      v4 = *v2;
      v5 = v2[1];
    }
  }

  else
  {
    v0[6] = v1;
    sub_10D78();
    sub_E7854();
    v2 = v0[8];
  }

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v20 = v0[7];
  v10 = v2[2];
  sub_E53E4();
  v11 = v0[2];
  v12 = v0[3];
  (*(v6 + 104))(v7, enum case for IntentMediaItem.ItemType.podcastEpisode(_:), v9);
  v13 = type metadata accessor for EpisodeEntity(0);
  v14 = v2[14];
  sub_4EB8C(*(v2 + *(v13 + 100)), *(v2 + *(v13 + 100) + 8));
  sub_E53E4();
  v15 = v0[4];
  v16 = v0[5];
  v17 = sub_E59C4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_E54E4();

  v18 = v0[1];

  return v18();
}

uint64_t sub_56AF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return EpisodeEntity.mediaRepresentation.getter(a1);
}

uint64_t EpisodeEntity.debugDescription.getter()
{
  v1 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v2 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_E7984(153);
  v31._object = 0x80000000000F6950;
  v31._countAndFlagsBits = 0xD000000000000015;
  sub_E7134(v31);
  sub_E7134(*v0);
  v32._countAndFlagsBits = 0x20202020200ALL;
  v32._object = 0xE600000000000000;
  sub_E7134(v32);
  v28._countAndFlagsBits = *(v0 + 64);
  v11 = v28._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E978, &qword_EC598);
  v33._countAndFlagsBits = sub_E7084();
  sub_E7134(v33);

  v34._countAndFlagsBits = 0x20202020200ALL;
  v34._object = 0xE600000000000000;
  sub_E7134(v34);
  v12 = *(v0 + 80);
  v28._countAndFlagsBits = *(v0 + 72);
  v28._object = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
  v35._countAndFlagsBits = sub_E7084();
  sub_E7134(v35);

  v36._countAndFlagsBits = 0x20202020200ALL;
  v36._object = 0xE600000000000000;
  sub_E7134(v36);
  v28._countAndFlagsBits = *(v0 + 88);
  sub_57150();
  v37._countAndFlagsBits = sub_E7BB4();
  sub_E7134(v37);

  v38._countAndFlagsBits = 0x20202020200ALL;
  v38._object = 0xE600000000000000;
  sub_E7134(v38);
  v13 = *(v0 + 16);
  sub_E53E4();
  sub_E7134(v28);

  v39._countAndFlagsBits = 0x20202020200ALL;
  v39._object = 0xE600000000000000;
  sub_E7134(v39);
  v14 = v1[12];
  sub_E53E4();
  v40._countAndFlagsBits = sub_E7084();
  sub_E7134(v40);

  v41._countAndFlagsBits = 0x20202020200ALL;
  v41._object = 0xE600000000000000;
  sub_E7134(v41);
  v15 = v1[14];
  sub_E53E4();
  v42._countAndFlagsBits = sub_E7084();
  sub_E7134(v42);

  v43._countAndFlagsBits = 0x20202020200ALL;
  v43._object = 0xE600000000000000;
  sub_E7134(v43);
  v16 = v1[13];
  sub_E53E4();
  v44._countAndFlagsBits = sub_E7084();
  sub_E7134(v44);

  v45._countAndFlagsBits = 0x20202020200ALL;
  v45._object = 0xE600000000000000;
  sub_E7134(v45);
  v17 = v1[15];
  sub_E53E4();
  v46._countAndFlagsBits = sub_E7084();
  sub_E7134(v46);

  v47._countAndFlagsBits = 0x20202020200ALL;
  v47._object = 0xE600000000000000;
  sub_E7134(v47);
  v18 = v1[6];
  sub_E53E4();
  v48._countAndFlagsBits = sub_E7084();
  sub_E7134(v48);

  v49._countAndFlagsBits = 0x20202020200ALL;
  v49._object = 0xE600000000000000;
  sub_E7134(v49);
  v19 = v1[16];
  sub_E53E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
  v50._countAndFlagsBits = sub_E7084();
  sub_E7134(v50);

  v51._countAndFlagsBits = 0x20202020200ALL;
  v51._object = 0xE600000000000000;
  sub_E7134(v51);
  v20 = v1[17];
  sub_E53E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E988, &qword_EC5B0);
  v52._countAndFlagsBits = sub_E7084();
  sub_E7134(v52);

  v53._countAndFlagsBits = 0x20202020200ALL;
  v53._object = 0xE600000000000000;
  sub_E7134(v53);
  v21 = v1[18];
  sub_E53E4();
  v54._countAndFlagsBits = sub_E7084();
  sub_E7134(v54);

  v55._countAndFlagsBits = 0x20202020200ALL;
  v55._object = 0xE600000000000000;
  sub_E7134(v55);
  v22 = v1[19];
  sub_E53E4();
  v56._countAndFlagsBits = sub_E7084();
  sub_E7134(v56);

  v57._countAndFlagsBits = 0x20202020200ALL;
  v57._object = 0xE600000000000000;
  sub_E7134(v57);
  v23 = v1[20];
  sub_E53E4();
  v58._countAndFlagsBits = sub_E7084();
  sub_E7134(v58);

  v59._countAndFlagsBits = 0x20202020200ALL;
  v59._object = 0xE600000000000000;
  sub_E7134(v59);
  v24 = type metadata accessor for EpisodeEntity(0);
  sub_26324(v1 + *(v24 + 104), v8, &unk_12DFA0, &qword_E9B50);
  v60._countAndFlagsBits = sub_E7084();
  sub_E7134(v60);

  v61._countAndFlagsBits = 0x20202020200ALL;
  v61._object = 0xE600000000000000;
  sub_E7134(v61);
  sub_26324(v1 + *(v24 + 96), v4, &unk_12DB10, &qword_EAC60);
  v62._countAndFlagsBits = sub_E7084();
  sub_E7134(v62);

  v63._countAndFlagsBits = 32010;
  v63._object = 0xE200000000000000;
  sub_E7134(v63);
  return v29;
}

unint64_t sub_57150()
{
  result = qword_12E980;
  if (!qword_12E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E980);
  }

  return result;
}

uint64_t static EpisodeEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for EpisodeEntity(0);
  v1 = sub_54224(&qword_12E990, type metadata accessor for EpisodeEntity);
  v2 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_57258, 0, v0, &type metadata for String, v1, v2);
}

uint64_t sub_57258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for EpisodeEntity(0);
  sub_26324(a1 + *(v8 + 104), v7, &unk_12DFA0, &qword_E9B50);
  v9 = sub_E59C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_110AC(v7, &unk_12DFA0, &qword_E9B50);
    v11 = *(a1 + 16);
    result = sub_E53E4();
    v13 = v16[0];
    v14 = v16[1];
  }

  else
  {
    v13 = sub_E5974();
    v14 = v15;
    result = (*(v10 + 8))(v7, v9);
  }

  *a2 = v13;
  a2[1] = v14;
  return result;
}

uint64_t sub_573CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_57258, 0, a1, &type metadata for String, a2, v4);
}

uint64_t EpisodeEntity.prepare(asPartOf:)()
{
  *(v1 + 56) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_57504;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_57504()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_578AC, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = type metadata accessor for EpisodeEntity(0);
    v3[10] = v5;
    v6 = *(v5 + 96);
    v7 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
    v8 = swift_task_alloc();
    v3[11] = v8;
    v9 = sub_54224(&qword_12E998, type metadata accessor for EpisodeEntity);
    *v8 = v3;
    v8[1] = sub_576EC;
    v10 = v3[7];

    return Preparable.artworkData(for:imageProvider:)(v4 + v6, v3 + 2, v5, v9);
  }
}

uint64_t sub_576EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = sub_578C4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v9 = sub_57820;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_57820()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 100);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_578C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[12];
  v2 = v0[1];

  return v2();
}

uint64_t sub_57928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_579F0;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v5, v5);
}

uint64_t sub_579F0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_57CB8, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = *(v3[8] + 96);
    v6 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
    v7 = swift_task_alloc();
    v3[12] = v7;
    *v7 = v3;
    v7[1] = sub_57B84;
    v8 = v3[8];
    v9 = v3[9];
    v10 = v3[7];

    return Preparable.artworkData(for:imageProvider:)(v4 + v5, v3 + 2, v8, v9);
  }
}

uint64_t sub_57B84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_57D58;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_57CD0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_57CD0()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 100);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_57D58()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[13];
  v2 = v0[1];

  return v2();
}

uint64_t EpisodeEntity.episodeStateIdentifier.getter()
{
  v1 = v0[11];
  if ((sub_E6804() & 1) != 0 && v0[10])
  {
    v1 = v0[9];
  }

  return v1;
}

uint64_t sub_57E78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_5850C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 96);
  sub_E53E4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_58548(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v4 = *a1;
  v5 = a1[1];

  return sub_E53F4();
}

double sub_58584@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 104);
  sub_E53E4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_585C0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v4 = *a1;
  v5 = a1[1];

  return sub_E53F4();
}

double sub_585FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 112);
  sub_E53E4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_58638(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v4 = *a1;
  v5 = a1[1];

  return sub_E53F4();
}

uint64_t sub_5869C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_E53E4();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_586E0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v4 = *a1;
  v5 = *(a1 + 8);
  return sub_E53F4();
}

uint64_t sub_58720@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_5875C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 136);
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_58794@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_587D0(char *a1, uint64_t a2)
{
  v2 = *(a2 + 144);
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_58808@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 152);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_58844(char *a1, uint64_t a2)
{
  v2 = *(a2 + 152);
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_5887C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 160);
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_588B8(char *a1, uint64_t a2)
{
  v2 = *(a2 + 160);
  v4 = *a1;
  return sub_E53F4();
}

uint64_t sub_58904(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[23];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[24];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[26];

  return v15(v16, a2, v14);
}

uint64_t sub_58AA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[23];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[24];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[26];

  return v15(v16, a2, a2, v14);
}

void sub_58C38()
{
  sub_58F2C();
  if (v0 <= 0x3F)
  {
    sub_58F88();
    if (v1 <= 0x3F)
    {
      sub_5902C(319, &qword_12EAA8, &qword_12DCD8, &unk_EC540, sub_5909C);
      if (v2 <= 0x3F)
      {
        sub_5902C(319, &qword_12EAB8, &qword_12EAC0, &qword_ECC30, sub_59150);
        if (v3 <= 0x3F)
        {
          sub_5902C(319, &qword_12EAD0, &qword_131EE0, &unk_F5BE0, sub_59204);
          if (v4 <= 0x3F)
          {
            sub_592B8();
            if (v5 <= 0x3F)
            {
              sub_595C8(319, &qword_12E688, sub_502C8);
              if (v6 <= 0x3F)
              {
                sub_5041C(319, &qword_12E680);
                if (v7 <= 0x3F)
                {
                  sub_593B0();
                  if (v8 <= 0x3F)
                  {
                    sub_594A8();
                    if (v9 <= 0x3F)
                    {
                      sub_595C8(319, &unk_12EB30, &type metadata accessor for TranscriptRequestInformation);
                      if (v10 <= 0x3F)
                      {
                        sub_595C8(319, &qword_12E6B0, &type metadata accessor for ArtworkModel);
                        if (v11 <= 0x3F)
                        {
                          sub_5041C(319, &unk_12E6B8);
                          if (v12 <= 0x3F)
                          {
                            sub_595C8(319, &qword_12D8A0, &type metadata accessor for URL);
                            if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_58F2C()
{
  if (!qword_12E690)
  {
    sub_50314();
    v0 = sub_E54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_12E690);
    }
  }
}

void sub_58F88()
{
  if (!qword_12EA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E0A0, &qword_EC5A0);
    sub_5954C(&qword_12EAA0, &qword_12E0A0, &qword_EC5A0, sub_50314);
    v0 = sub_E54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_12EA98);
    }
  }
}

void sub_5902C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_E54C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_5909C()
{
  result = qword_12EAB0;
  if (!qword_12EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12DCD8, &unk_EC540);
    sub_54224(&qword_12DE68, type metadata accessor for ShowEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EAB0);
  }

  return result;
}

unint64_t sub_59150()
{
  result = qword_12EAC8;
  if (!qword_12EAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12EAC0, &qword_ECC30);
    sub_54224(&qword_12E7A0, type metadata accessor for ContextualMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EAC8);
  }

  return result;
}

unint64_t sub_59204()
{
  result = qword_12EAD8;
  if (!qword_12EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131EE0, &unk_F5BE0);
    sub_54224(&qword_12EAE0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EAD8);
  }

  return result;
}

void sub_592B8()
{
  if (!qword_12EAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12EAF0, &qword_ECC38);
    sub_5954C(&qword_12EAF8, &qword_12EAF0, &qword_ECC38, sub_5935C);
    v0 = sub_E54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_12EAE8);
    }
  }
}

unint64_t sub_5935C()
{
  result = qword_12EB00;
  if (!qword_12EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EB00);
  }

  return result;
}

void sub_593B0()
{
  if (!qword_12EB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_132180, &qword_EC5A8);
    sub_5954C(&qword_12EB10, &qword_132180, &qword_EC5A8, sub_59454);
    v0 = sub_E54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_12EB08);
    }
  }
}

unint64_t sub_59454()
{
  result = qword_12EB18;
  if (!qword_12EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EB18);
  }

  return result;
}

void sub_594A8()
{
  if (!qword_12EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E988, &qword_EC5B0);
    sub_5954C(&qword_12EB28, &qword_12E988, &qword_EC5B0, sub_503C8);
    v0 = sub_E54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_12EB20);
    }
  }
}

uint64_t sub_5954C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_595C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ShowEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_E5944();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v126 = &v91 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v120 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v91 - v14;
  __chkstk_darwin(v13);
  v124 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v121 = (&v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v125 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v123 = &v91 - v23;
  __chkstk_darwin(v22);
  v122 = &v91 - v24;
  v25 = sub_E59C4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  v28 = __chkstk_darwin(v25);
  v101 = (&v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v31 = &v91 - v30;
  v32 = a1;
  v33 = [v32 objectID];
  v34 = [v33 URIRepresentation];

  sub_E5994();
  v35 = sub_E5974();
  v37 = v36;
  v38 = *(v26 + 1);
  v127 = v25;
  v38(v31, v25);
  v39 = [v32 objectID];

  v40 = [v32 uuid];
  if (v40)
  {
    v41 = v40;
    v42 = sub_E7064();
    v118 = v43;
  }

  else
  {
    v42 = 0;
    v118 = 0;
  }

  result = [v32 storeCollectionId];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v115 = v39;
    v117 = v35;
    v113 = sub_E6814();
    v45 = [v32 feedURL];
    if (v45)
    {
      v46 = v45;
      sub_E7064();

      sub_E59B4();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      (*(v26 + 7))(v122, 1, 1, v127);
    }

    v47 = v125;
    v112 = [v32 isExplicit];
    v48 = [v32 title];
    if (v48)
    {
      v49 = v48;
      v50 = sub_E7064();
      v110 = v51;
      v111 = v50;
    }

    else
    {
      v110 = 0xE000000000000000;
      v111 = 0;
    }

    v52 = [v32 description];
    v109 = sub_E7064();
    v108 = v53;

    v54 = [v32 provider];
    v114 = v42;
    if (v54)
    {
      v55 = v54;
      v107 = sub_E7064();
      v106 = v56;
    }

    else
    {
      v107 = 0;
      v106 = 0xE000000000000000;
    }

    [v32 lastDatePlayed];
    v57 = v124;
    sub_E5A04();
    v58 = sub_E5A54();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v105 = [v32 subscribed];
    v104 = [v32 notifications];
    [v32 hidesPlayedEpisodes];
    v103 = MTPodcastHidesPlayedEpisodesResolved();
    v102 = [v32 deletePlayedEpisodesResolvedValue];
    sub_E77C4();
    v59 = v26;
    v60 = *(v26 + 7);
    v60(v123, 1, 1, v127);
    v61 = [v32 bestAvailableStoreCleanURL];
    v116 = v37;
    if (v61)
    {
      v62 = v101;
      v63 = v61;
      sub_E5994();

      v64 = *(v59 + 4);
      v65 = v121;
      v66 = v62;
      v67 = v127;
      v64(v121, v66, v127);
      v60(v65, 0, 1, v67);
      v64(v47, v65, v67);
      v60(v47, 0, 1, v67);
    }

    else
    {
      v101 = v59;
      v68 = v121;
      v60(v121, 1, 1, v127);
      v69 = [v32 feedURL];
      if (v69)
      {
        v70 = v69;
        sub_E7064();

        v68 = v121;

        sub_E59B4();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v60(v47, 1, 1, v127);
      }

      if (v101[6](v68, 1, v127) != 1)
      {
        sub_110AC(v68, &unk_12DFA0, &qword_E9B50);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
    v121 = sub_E5484();
    *(a2 + 2) = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
    *(a2 + 3) = sub_E5484();
    v71 = type metadata accessor for ShowEntity(0);
    v101 = v71[10];
    v60(v101 + a2, 1, 1, v127);
    v72 = v71[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
    sub_E5914();
    v100 = sub_E5494();
    *&a2[v72] = v100;
    v73 = v71[12];
    sub_E5914();
    v99 = sub_E5474();
    *&a2[v73] = v99;
    v74 = v71[13];
    sub_E5914();
    v98 = sub_E5474();
    *&a2[v74] = v98;
    v75 = v71[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
    sub_E5914();
    v97 = sub_E5454();
    *&a2[v75] = v97;
    v76 = v71[15];
    sub_E5914();
    v96 = sub_E5494();
    *&a2[v76] = v96;
    v77 = v71[16];
    sub_E5914();
    v95 = sub_E5494();
    *&a2[v77] = v95;
    v78 = v71[17];
    sub_E5914();
    v91 = sub_E5494();
    *&a2[v78] = v91;
    v79 = v71[18];
    sub_E5914();
    *&a2[v79] = sub_E5494();
    v80 = v71[19];
    v94 = v80;
    v81 = sub_E5FD4();
    (*(*(v81 - 8) + 56))(&a2[v80], 1, 1, v81);
    v93 = v71[20];
    v82 = v127;
    v60(&a2[v93], 1, 1, v127);
    v92 = v71[21];
    v60(&a2[v92], 1, 1, v82);
    v83 = v116;
    *a2 = v117;
    *(a2 + 1) = v83;
    v85 = v114;
    v84 = v115;
    *(a2 + 4) = v115;
    *(a2 + 5) = v85;
    v86 = v113;
    *(a2 + 6) = v118;
    *(a2 + 7) = v86;
    v87 = v84;
    v88 = v122;
    sub_4EB1C(v122, v101 + a2);
    LOBYTE(v128) = v112;
    sub_E53F4();
    v128 = v111;
    v129 = v110;
    sub_E53F4();
    v128 = v109;
    v129 = v108;
    sub_E53F4();
    v128 = v107;
    v129 = v106;
    sub_E53F4();
    v89 = v124;
    v90 = v119;
    sub_26324(v124, v119, &qword_131EE0, &unk_F5BE0);
    sub_26324(v90, v120, &qword_131EE0, &unk_F5BE0);
    sub_E53F4();
    sub_110AC(v90, &qword_131EE0, &unk_F5BE0);
    LOBYTE(v128) = v105;
    sub_E53F4();
    LOBYTE(v128) = v104;
    sub_E53F4();
    LOBYTE(v128) = v103;
    sub_E53F4();
    LOBYTE(v128) = v102;
    sub_E53F4();

    sub_110AC(v89, &qword_131EE0, &unk_F5BE0);
    sub_110AC(v88, &unk_12DFA0, &qword_E9B50);
    sub_4DCF4(v126, &a2[v94], &unk_12DB10, &qword_EAC60);
    sub_4DCF4(v123, &a2[v93], &unk_12DFA0, &qword_E9B50);
    return sub_4DCF4(v125, &a2[v92], &unk_12DFA0, &qword_E9B50);
  }

  return result;
}

uint64_t ShowEntity.title.getter()
{
  v1 = *(v0 + 16);
  sub_E53E4();
  return v3;
}

uint64_t ShowEntity.provider.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 52));
  sub_E53E4();
  return v3;
}

uint64_t ShowEntity.CustomRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_E5DF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_E5E54();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t ShowEntity.CustomRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_E5DF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_E5E54();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_5A628(uint64_t a1)
{
  v3 = sub_5EC04(&qword_12ECC8, type metadata accessor for ShowEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_5A698()
{
  v1 = sub_5EC04(&qword_12ECB8, type metadata accessor for ShowEntity.CustomRepresentation);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_5A6F8(uint64_t a1)
{
  v3 = sub_5EC04(&qword_12ECC8, type metadata accessor for ShowEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_5A768()
{
  result = sub_E7064();
  qword_12EC28 = result;
  unk_12EC30 = v1;
  return result;
}

uint64_t static ShowEntity.databaseEntityName.getter()
{
  if (qword_12CAF0 != -1)
  {
    swift_once();
  }

  v0 = qword_12EC28;

  return v0;
}

uint64_t sub_5A800()
{
  v0 = sub_E6014();
  __swift_allocate_value_buffer(v0, qword_12EC38);
  v1 = __swift_project_value_buffer(v0, qword_12EC38);
  v2 = enum case for MediaRequest.ContentType.podcast(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_5A8C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  qword_12EC50 = result;
  return result;
}

uint64_t static ShowEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CB00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12EC50;
}

uint64_t sub_5A9B8()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12EC58);
  __swift_project_value_buffer(v0, qword_12EC58);
  return sub_E57B4();
}

uint64_t ShowEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v52 = v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v47 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = v46 - v9;
  v10 = sub_E5944();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  v12 = __chkstk_darwin(v10);
  v46[1] = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46[2] = v46 - v14;
  v15 = sub_E7014();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v46 - v22;
  v24 = sub_E59C4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v46[0] = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v46 - v29;
  v49 = type metadata accessor for ShowEntity(0);
  v31 = v1;
  sub_26324(v1 + *(v49 + 80), v23, &unk_12DFA0, &qword_E9B50);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_110AC(v23, &unk_12DFA0, &qword_E9B50);
    sub_E7004();
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_E6FF4(v55);
    v32 = *(v1 + 16);
    sub_E53E4();
    sub_E6FD4(v54);

    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_E6FF4(v56);
    sub_E5924();
    sub_E7004();
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    sub_E6FF4(v57);
    v33 = *(v31 + *(v49 + 52));
    sub_E53E4();
    if (v54._object)
    {
      v34._countAndFlagsBits = v54._countAndFlagsBits;
    }

    else
    {
      v34._countAndFlagsBits = 0;
    }

    if (v54._object)
    {
      object = v54._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v34._object = object;
    sub_E6FD4(v34);

    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_E6FF4(v58);
    v36 = v47;
    sub_E5924();
    (*(v50 + 56))(v36, 0, 1, v51);
    v37 = sub_E5684();
    (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
    return sub_E56A4();
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    sub_E7004();
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    sub_E6FF4(v59);
    v39 = *(v1 + 16);
    sub_E53E4();
    sub_E6FD4(v54);

    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    sub_E6FF4(v60);
    sub_E5924();
    sub_E7004();
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    sub_E6FF4(v61);
    v40 = *(v31 + *(v49 + 52));
    sub_E53E4();
    if (v54._object)
    {
      v41._countAndFlagsBits = v54._countAndFlagsBits;
    }

    else
    {
      v41._countAndFlagsBits = 0;
    }

    if (v54._object)
    {
      v42 = v54._object;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    v41._object = v42;
    sub_E6FD4(v41);

    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    sub_E6FF4(v62);
    v43 = v48;
    sub_E5924();
    (*(v50 + 56))(v43, 0, 1, v51);
    (*(v25 + 16))(v46[0], v30, v24);
    v44 = v52;
    sub_E5664();
    v45 = sub_E5684();
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    sub_E56A4();
    return (*(v25 + 8))(v30, v24);
  }
}

uint64_t sub_5B114()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12EC70);
  __swift_project_value_buffer(v0, qword_12EC70);
  return sub_E59B4();
}

uint64_t sub_5B1A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12EC88);
  __swift_project_value_buffer(v0, qword_12EC88);
  return sub_E59B4();
}

uint64_t sub_5B23C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_26324(v6, a3, &unk_12DFA0, &qword_E9B50);
}

void (*ShowEntity.title.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.uuid.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ShowEntity.explicit.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 44));
  sub_E53E4();
  return v3;
}

void (*ShowEntity.explicit.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 44));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 48));
  sub_E53E4();
  return v3;
}

uint64_t sub_5B578(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ShowEntity(0) + 48));

  return sub_E53F4();
}

void (*ShowEntity.description.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 48));
  *(v4 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t sub_5B6D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ShowEntity(0) + 52));

  return sub_E53F4();
}

void (*ShowEntity.provider.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 52));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_5B868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_26324(a1, &v13 - v9, &qword_131EE0, &unk_F5BE0);
  v11 = *(a2 + *(type metadata accessor for ShowEntity(0) + 56));
  sub_26324(v10, v8, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(v10, &qword_131EE0, &unk_F5BE0);
}

uint64_t ShowEntity.lastDatePlayed.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ShowEntity(0) + 56));
  sub_26324(a1, v6, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(a1, &qword_131EE0, &unk_F5BE0);
}

void (*ShowEntity.lastDatePlayed.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 56));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.followed.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 60));
  sub_E53E4();
  return v3;
}

void (*ShowEntity.followed.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 60));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.notificationsEnabled.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 64));
  sub_E53E4();
  return v3;
}

void (*ShowEntity.notificationsEnabled.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 64));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.hidePlayedEpisodes.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 68));
  sub_E53E4();
  return v3;
}

void (*ShowEntity.hidePlayedEpisodes.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 68));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.removePlayedDownloads.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShowEntity(0) + 72));
  sub_E53E4();
  return v3;
}

void (*ShowEntity.removePlayedDownloads.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ShowEntity(0) + 72));
  *(v4 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.init(id:objectID:uuid:adamID:feedURL:explicit:title:description:provider:lastDatePlayed:followed:notificationsEnabled:hidePlayedEpisodes:removePlayedDownloads:artworkModel:artworkURL:shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v77 = a8;
  v74 = a7;
  v71 = a6;
  v69 = a5;
  v67 = a4;
  v66 = a3;
  v65 = a2;
  v64 = a1;
  v86 = a22;
  v87 = a23;
  v85 = a21;
  v83 = a19;
  v84 = a20;
  v81 = a17;
  v82 = a18;
  v79 = a15;
  v80 = a16;
  v78 = a14;
  v76 = a13;
  v72 = a11;
  v73 = a12;
  v70 = a10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v75 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v68 = &v53 - v28;
  v29 = sub_E5944();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v63 = sub_E5484();
  *(a9 + 2) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  *(a9 + 3) = sub_E5484();
  v31 = type metadata accessor for ShowEntity(0);
  v32 = v31[10];
  v62 = v32;
  v33 = sub_E59C4();
  v34 = *(*(v33 - 8) + 56);
  v34(&a9[v32], 1, 1, v33);
  v35 = v31[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v61 = sub_E5494();
  *&a9[v35] = v61;
  v36 = v31[12];
  sub_E5914();
  v60 = sub_E5474();
  *&a9[v36] = v60;
  v37 = v31[13];
  sub_E5914();
  v59 = sub_E5474();
  *&a9[v37] = v59;
  v38 = v31[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v58 = sub_E5454();
  *&a9[v38] = v58;
  v39 = v31[15];
  sub_E5914();
  v57 = sub_E5494();
  *&a9[v39] = v57;
  v40 = v31[16];
  sub_E5914();
  v56 = sub_E5494();
  *&a9[v40] = v56;
  v41 = v31[17];
  sub_E5914();
  *&a9[v41] = sub_E5494();
  v42 = v31[18];
  sub_E5914();
  *&a9[v42] = sub_E5494();
  v43 = v31[19];
  v55 = v43;
  v44 = sub_E5FD4();
  (*(*(v44 - 8) + 56))(&a9[v43], 1, 1, v44);
  v54 = v31[20];
  v34(&a9[v54], 1, 1, v33);
  v53 = v31[21];
  v34(&a9[v53], 1, 1, v33);
  v45 = v65;
  *a9 = v64;
  *(a9 + 1) = v45;
  v46 = v66;
  v47 = v67;
  *(a9 + 4) = v66;
  *(a9 + 5) = v47;
  v48 = v71;
  *(a9 + 6) = v69;
  *(a9 + 7) = v48;
  v71 = v46;
  v49 = v74;
  sub_4EB1C(v74, &a9[v62]);
  LOBYTE(v88) = v77;
  sub_E53F4();
  v88 = v70;
  v89 = v72;
  sub_E53F4();
  v88 = v73;
  v89 = v76;
  sub_E53F4();
  v88 = v78;
  v89 = v79;
  sub_E53F4();
  v50 = v80;
  v51 = v68;
  sub_26324(v80, v68, &qword_131EE0, &unk_F5BE0);
  sub_26324(v51, v75, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v51, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v88) = v81;
  sub_E53F4();
  LOBYTE(v88) = v82;
  sub_E53F4();
  LOBYTE(v88) = v83;
  sub_E53F4();
  LOBYTE(v88) = v84;
  sub_E53F4();

  sub_110AC(v50, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v49, &unk_12DFA0, &qword_E9B50);
  sub_4DCF4(v85, &a9[v55], &unk_12DB10, &qword_EAC60);
  sub_4DCF4(v86, &a9[v54], &unk_12DFA0, &qword_E9B50);
  return sub_4DCF4(v87, &a9[v53], &unk_12DFA0, &qword_E9B50);
}

void *ShowEntity.init(mediaObject:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_E5944();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v110 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v112 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v111 = &v86 - v12;
  __chkstk_darwin(v11);
  v113 = &v86 - v13;
  v14 = sub_E5F74();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v116 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v86 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v117 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v115 = &v86 - v27;
  v28 = __chkstk_darwin(v26);
  v114 = &v86 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v86 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v86 - v34;
  __chkstk_darwin(v33);
  v118 = &v86 - v36;
  v37 = [a1 podcastStoreId];
  if (v37)
  {
    v38 = v37;
    sub_E7064();

    v41 = sub_E67F4();
    swift_bridgeObjectRelease_n();
    result = objc_opt_self();
    if (v41 < 0)
    {
      __break(1u);
      return result;
    }

    v43 = [result storeCleanURLForAdamID:v41];
    if (v43)
    {
      v44 = v43;
      sub_E5994();

      v45 = sub_E59C4();
      (*(*(v45 - 8) + 56))(v32, 0, 1, v45);
    }

    else
    {
      v46 = sub_E59C4();
      (*(*(v46 - 8) + 56))(v32, 1, 1, v46);
    }
  }

  else
  {
    v39 = [a1 resolvedFeedURL];
    if (v39)
    {
      v40 = v39;
      sub_E7064();

      sub_E59B4();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v47 = sub_E59C4();
      (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
    }

    v32 = v35;
  }

  sub_CF40(v32, v118);
  v48 = [a1 artworkTemplateURL];
  if (v48)
  {
    v49 = v48;
    sub_E7064();

    v121 = xmmword_EBE00;
    v122 = 0u;
    memset(v123, 0, 25);

    sub_E5F64();
    sub_E6104();
    sub_E5FC4();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = sub_E5FD4();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v108 = v51;
  v107 = v53;
  v106 = v52 + 56;
  (v53)(v21, v50, 1);
  v54 = a1;
  v105 = sub_E63B4();
  v104 = v55;
  sub_E63B4();

  v103 = sub_E67F4();

  v56 = [v54 resolvedFeedURL];
  if (v56)
  {
    v57 = v56;
    sub_E7064();

    sub_E59B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v58 = sub_E59C4();
    (*(*(v58 - 8) + 56))(v114, 1, 1, v58);
  }

  v102 = [v54 isExplicit];
  v59 = [v54 title];
  if (v59)
  {
    v60 = v59;
    v101 = sub_E7064();
    v100 = v61;
  }

  else
  {
    v101 = 0;
    v100 = 0xE000000000000000;
  }

  v62 = [v54 description];
  v98 = sub_E7064();
  v97 = v63;

  v64 = [v54 provider];
  v109 = v54;
  if (v64)
  {
    v65 = v64;
    v96 = sub_E7064();
    v95 = v66;
  }

  else
  {
    v96 = 0;
    v95 = 0xE000000000000000;
  }

  v67 = sub_E5A54();
  (*(*(v67 - 8) + 56))(v113, 1, 1, v67);
  sub_26324(v21, v116, &unk_12DB10, &qword_EAC60);
  v68 = sub_E59C4();
  v69 = *(v68 - 8);
  v99 = v21;
  v70 = *(v69 + 56);
  v70(v115, 1, 1, v68);
  v90 = v70;
  sub_26324(v118, v117, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v94 = sub_E5484();
  a2[2] = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  a2[3] = sub_E5484();
  v71 = type metadata accessor for ShowEntity(0);
  v93 = v71[10];
  v70(a2 + v93, 1, 1, v68);
  v72 = v71[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v92 = sub_E5494();
  *(a2 + v72) = v92;
  v73 = v71[12];
  sub_E5914();
  v91 = sub_E5474();
  *(a2 + v73) = v91;
  v74 = v71[13];
  sub_E5914();
  v89 = sub_E5474();
  *(a2 + v74) = v89;
  v75 = v71[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v88 = sub_E5454();
  *(a2 + v75) = v88;
  v76 = v71[15];
  sub_E5914();
  v87 = sub_E5494();
  *(a2 + v76) = v87;
  v77 = v71[16];
  sub_E5914();
  *(a2 + v77) = sub_E5494();
  v78 = v71[17];
  sub_E5914();
  *(a2 + v78) = sub_E5494();
  v79 = v71[18];
  sub_E5914();
  *(a2 + v79) = sub_E5494();
  v110 = v71[19];
  (v107)(&v110[a2], 1, 1, v108);
  v108 = v71[20];
  v80 = v90;
  v90(a2 + v108, 1, 1, v68);
  v107 = v71[21];
  v80(&v107[a2], 1, 1, v68);
  v81 = v104;
  *a2 = v105;
  a2[1] = v81;
  a2[4] = 0;
  a2[5] = 0;
  v82 = v103;
  a2[6] = 0;
  a2[7] = v82;
  v83 = v114;
  sub_4EB1C(v114, a2 + v93);
  LOBYTE(v119) = v102;
  sub_E53F4();
  v119 = v101;
  v120 = v100;
  sub_E53F4();
  v119 = v98;
  v120 = v97;
  sub_E53F4();
  v119 = v96;
  v120 = v95;
  sub_E53F4();
  v84 = v113;
  v85 = v111;
  sub_26324(v113, v111, &qword_131EE0, &unk_F5BE0);
  sub_26324(v85, v112, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v85, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v119) = 0;
  sub_E53F4();
  LOBYTE(v119) = 0;
  sub_E53F4();
  LOBYTE(v119) = 0;
  sub_E53F4();
  LOBYTE(v119) = 0;
  sub_E53F4();

  sub_110AC(v84, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v83, &unk_12DFA0, &qword_E9B50);
  sub_110AC(v99, &unk_12DB10, &qword_EAC60);
  sub_110AC(v118, &unk_12DFA0, &qword_E9B50);
  sub_4DCF4(v116, &v110[a2], &unk_12DB10, &qword_EAC60);
  sub_4DCF4(v115, a2 + v108, &unk_12DFA0, &qword_E9B50);
  return sub_4DCF4(v117, &v107[a2], &unk_12DFA0, &qword_E9B50);
}

uint64_t ShowEntity.preferredIdentifier()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 56);
  }

  v3 = v1;
  return v2;
}

uint64_t sub_5D6F0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_26324(v6, a3, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_5D7A4(uint64_t a1)
{
  v2 = sub_5EC04(&qword_12DDF0, type metadata accessor for ShowEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_5D824(uint64_t a1)
{
  v2 = sub_5EC04(&qword_12ED20, type metadata accessor for ShowEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ShowEntity.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_E7984(110);
  v20._object = 0x80000000000F6A70;
  v20._countAndFlagsBits = 0xD000000000000012;
  sub_E7134(v20);
  sub_E7134(*v0);
  v21._countAndFlagsBits = 0x20202020200ALL;
  v21._object = 0xE600000000000000;
  sub_E7134(v21);
  v17._countAndFlagsBits = *(v0 + 32);
  v6 = v17._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E978, &qword_EC598);
  v22._countAndFlagsBits = sub_E7084();
  sub_E7134(v22);

  v23._countAndFlagsBits = 0x20202020200ALL;
  v23._object = 0xE600000000000000;
  sub_E7134(v23);
  v7 = *(v0 + 48);
  v17._countAndFlagsBits = *(v0 + 40);
  v17._object = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
  v24._countAndFlagsBits = sub_E7084();
  sub_E7134(v24);

  v25._countAndFlagsBits = 0x20202020200ALL;
  v25._object = 0xE600000000000000;
  sub_E7134(v25);
  v17._countAndFlagsBits = *(v0 + 56);
  sub_57150();
  v26._countAndFlagsBits = sub_E7BB4();
  sub_E7134(v26);

  v27._countAndFlagsBits = 0x20202020200ALL;
  v27._object = 0xE600000000000000;
  sub_E7134(v27);
  v8 = *(v0 + 16);
  sub_E53E4();
  sub_E7134(v17);

  v28._countAndFlagsBits = 0x20202020200ALL;
  v28._object = 0xE600000000000000;
  sub_E7134(v28);
  v9 = type metadata accessor for ShowEntity(0);
  v10 = *(v1 + v9[12]);
  sub_E53E4();
  v29._countAndFlagsBits = sub_E7084();
  sub_E7134(v29);

  v30._countAndFlagsBits = 0x20202020200ALL;
  v30._object = 0xE600000000000000;
  sub_E7134(v30);
  v11 = *(v1 + v9[13]);
  sub_E53E4();
  v31._countAndFlagsBits = sub_E7084();
  sub_E7134(v31);

  v32._countAndFlagsBits = 0x20202020200ALL;
  v32._object = 0xE600000000000000;
  sub_E7134(v32);
  v12 = *(v1 + v9[15]);
  sub_E53E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E988, &qword_EC5B0);
  v33._countAndFlagsBits = sub_E7084();
  sub_E7134(v33);

  v34._countAndFlagsBits = 0x20202020200ALL;
  v34._object = 0xE600000000000000;
  sub_E7134(v34);
  v13 = *(v1 + v9[16]);
  sub_E53E4();
  v35._countAndFlagsBits = sub_E7084();
  sub_E7134(v35);

  v36._countAndFlagsBits = 0x20202020200ALL;
  v36._object = 0xE600000000000000;
  sub_E7134(v36);
  v14 = *(v1 + v9[17]);
  sub_E53E4();
  v37._countAndFlagsBits = sub_E7084();
  sub_E7134(v37);

  v38._countAndFlagsBits = 0x20202020200ALL;
  v38._object = 0xE600000000000000;
  sub_E7134(v38);
  v15 = *(v1 + v9[18]);
  sub_E53E4();
  v39._countAndFlagsBits = sub_E7084();
  sub_E7134(v39);

  v40._countAndFlagsBits = 0x20202020200ALL;
  v40._object = 0xE600000000000000;
  sub_E7134(v40);
  sub_26324(v1 + v9[20], v5, &unk_12DFA0, &qword_E9B50);
  v41._countAndFlagsBits = sub_E7084();
  sub_E7134(v41);

  v42._countAndFlagsBits = 32010;
  v42._object = 0xE200000000000000;
  sub_E7134(v42);
  return v18;
}

uint64_t ShowEntity.mediaRepresentation.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_E54D4();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_E59C4();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5DDE4, 0, 0);
}

uint64_t sub_5DDE4()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  v5 = type metadata accessor for ShowEntity(0);
  sub_26324(v4 + *(v5 + 80), v1, &unk_12DFA0, &qword_E9B50);
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    (*(v0[13] + 32))(v0[14], v0[16], v0[12]);
    sub_E59D4();
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  v6 = *(v0[8] + 56);
  v28 = v5;
  if (sub_E6804())
  {
    v7 = v0[8];
    if (v7[6])
    {
      v8 = v7[5];
    }

    else
    {
      v10 = *v7;
      v9 = v7[1];
    }
  }

  else
  {
    v0[6] = v6;
    sub_10D78();
    sub_E7854();
    v7 = v0[8];
  }

  v11 = v0[15];
  v12 = v0[13];
  v26 = v0[16];
  v27 = v0[14];
  v13 = v0[11];
  v15 = v0[9];
  v14 = v0[10];
  v24 = v0[12];
  v25 = v0[7];
  v16 = v7[2];
  sub_E53E4();
  v18 = v0[2];
  v17 = v0[3];
  (*(v14 + 104))(v13, enum case for IntentMediaItem.ItemType.podcastShow(_:), v15);
  v19 = *(v7 + *(v28 + 52));
  sub_E53E4();
  v20 = v0[4];
  v21 = v0[5];
  (*(v12 + 56))(v11, 1, 1, v24);
  sub_E54E4();

  v22 = v0[1];

  return v22();
}

uint64_t sub_5E098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5E10;

  return ShowEntity.mediaRepresentation.getter(a1);
}

uint64_t ShowEntity.prepare(asPartOf:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_E61A4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_E6404();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_E6734();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = sub_E5FD4();
  v2[15] = v14;
  v15 = *(v14 - 8);
  v2[16] = v15;
  v16 = *(v15 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_5E374, 0, 0);
}

uint64_t sub_5E374()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  v5 = type metadata accessor for ShowEntity(0);
  v0[18] = v5;
  sub_26324(v4 + *(v5 + 76), v3, &unk_12DB10, &qword_EAC60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[14], &unk_12DB10, &qword_EAC60);
    v6 = v0[17];
    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[10];
    v11 = v0[6];
    v10 = v0[7];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[13];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[2];
    sub_16AD0(v0[14], v0[17]);
    (*(v18 + 104))(v16, enum case for NetworkTaskPriority.userInitiated(_:), v17);
    sub_5EC04(&qword_12ECA0, &type metadata accessor for CachingImageContentProvider);
    sub_E6DB4();
    (*(v18 + 8))(v16, v17);
    sub_E5FA4();
    v21 = async function pointer to ImageContentProvider.url(for:)[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_5E5DC;
    v23 = v0[13];
    v24 = v0[11];
    v26 = v0[6];
    v25 = v0[7];

    return ImageContentProvider.url(for:)(v25, v26, v24, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_5E5DC()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_5E880;
  }

  else
  {
    v6 = sub_5E74C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_5E74C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];
  v4 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_16B34(v1);
  v5 = sub_E59C4();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_4DCF4(v3, v4 + *(v2 + 80), &unk_12DFA0, &qword_E9B50);
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[10];
  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_5E880()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_16B34(v1);

  v6 = v0[1];
  v7 = v0[20];

  return v6();
}

uint64_t sub_5E94C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ShowEntity.prepare(asPartOf:)(a1);
}

uint64_t static ShowEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for ShowEntity(0);
  v1 = sub_5EC04(&qword_12ECA8, type metadata accessor for ShowEntity);
  v2 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_5EA90, 0, v0, &type metadata for String, v1, v2);
}

uint64_t sub_5EA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = type metadata accessor for ShowEntity(0);
  sub_26324(a1 + *(v8 + 84), v7, &unk_12DFA0, &qword_E9B50);
  v9 = sub_E59C4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_110AC(v7, &unk_12DFA0, &qword_E9B50);
    v11 = *(a1 + 16);
    result = sub_E53E4();
    v13 = v16[0];
    v14 = v16[1];
  }

  else
  {
    v13 = sub_E5974();
    v14 = v15;
    result = (*(v10 + 8))(v7, v9);
  }

  *a2 = v13;
  a2[1] = v14;
  return result;
}

uint64_t sub_5EC04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5F228(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_5EA90, 0, a1, &type metadata for String, a2, v4);
}

uint64_t sub_5F29C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_E53E4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_5F2D8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *a1;
  v5 = a1[1];

  return sub_E53F4();
}

uint64_t sub_5F314@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 44));
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_5F368(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ShowEntity(0) + 44));
  return sub_E53F4();
}

double sub_5F3B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 48));
  sub_E53E4();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_5F410@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 52));
  sub_E53E4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_5F4B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 60));
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_5F504(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ShowEntity(0) + 60));
  return sub_E53F4();
}

uint64_t sub_5F554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 64));
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_5F5A8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ShowEntity(0) + 64));
  return sub_E53F4();
}

uint64_t sub_5F5F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 68));
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_5F64C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ShowEntity(0) + 68));
  return sub_E53F4();
}

uint64_t sub_5F69C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ShowEntity(0) + 72));
  result = sub_E53E4();
  *a2 = v5;
  return result;
}

uint64_t sub_5F6F0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ShowEntity(0) + 72));
  return sub_E53F4();
}

uint64_t sub_5F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_5F8A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_5F9E0()
{
  sub_58F2C();
  if (v0 <= 0x3F)
  {
    sub_58F88();
    if (v1 <= 0x3F)
    {
      sub_5FCD0(319, &qword_12E688, sub_502C8);
      if (v2 <= 0x3F)
      {
        sub_5FB94();
        if (v3 <= 0x3F)
        {
          sub_5FCD0(319, &qword_12D8A0, &type metadata accessor for URL);
          if (v4 <= 0x3F)
          {
            sub_594A8();
            if (v5 <= 0x3F)
            {
              sub_5FC60();
              if (v6 <= 0x3F)
              {
                sub_5FCD0(319, &qword_12E6B0, &type metadata accessor for ArtworkModel);
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

void sub_5FB94()
{
  if (!qword_12E680)
  {
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12E680);
    }
  }
}

uint64_t sub_5FBE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_5FC60()
{
  if (!qword_12EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131EE0, &unk_F5BE0);
    sub_59204();
    v0 = sub_E54C4();
    if (!v1)
    {
      atomic_store(v0, &qword_12EAD0);
    }
  }
}

void sub_5FCD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t StationEntity.title.getter()
{
  v1 = *(v0 + 40);
  sub_E53E4();
  return v3;
}

uint64_t StationEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v88 = &v80 - v12;
  v13 = sub_E5944();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_E5A54();
  v90 = *(v91 - 8);
  v17 = *(v90 + 64);
  __chkstk_darwin(v91);
  v97 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_E59C4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v87 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_E5FD4();
  v99 = *(v23 - 8);
  v24 = *(v99 + 8);
  __chkstk_darwin(v23);
  v100 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_E5954();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v96 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v80 - v36;
  __chkstk_darwin(v35);
  v39 = &v80 - v38;
  v40 = [a1 podcasts];
  *&v98 = v23;
  v95 = v39;
  if (v40)
  {
    v82 = v27;
    v83 = v20;
    v84 = v19;
    v85 = a1;
    v86 = v16;
    v81 = v40;
    sub_E7464();
    sub_63068(&qword_12EEA8, &type metadata accessor for NSFastEnumerationIterator);
    sub_E7824();
    if (v105)
    {
      v41 = (v99 + 56);
      v42 = (v99 + 48);
      v43 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_61B34(&v104, v103);
        sub_26454(v103, v102);
        sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
        if (swift_dynamicCast())
        {
          v44 = v101;
          sub_E77C4();

          __swift_destroy_boxed_opaque_existential_1(v103);
          if ((*v42)(v37, 1, v23) != 1)
          {
            sub_16AD0(v37, v100);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_230C8(0, v43[2] + 1, 1, v43);
            }

            v46 = v43[2];
            v45 = v43[3];
            if (v46 >= v45 >> 1)
            {
              v43 = sub_230C8(v45 > 1, v46 + 1, 1, v43);
            }

            v43[2] = v46 + 1;
            sub_16AD0(v100, v43 + ((v99[80] + 32) & ~v99[80]) + *(v99 + 9) * v46);
            v23 = v98;
            goto LABEL_6;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v103);
          (*v41)(v37, 1, 1, v23);
        }

        sub_110AC(v37, &unk_12DB10, &qword_EAC60);
LABEL_6:
        sub_E7824();
        if (!v105)
        {
          goto LABEL_15;
        }
      }
    }

    v43 = _swiftEmptyArrayStorage;
LABEL_15:

    (*(v82 + 8))(v30, v26);
    *&v104 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EEB0, &qword_ED330);
    sub_3C2A0(&qword_12EEB8, &qword_12EEB0, &qword_ED330);
    v47 = sub_E7404();
    v20 = v83;
    if (v47)
    {
      v39 = v95;
      sub_E5FB4();
      a1 = v85;
      v19 = v84;
      goto LABEL_19;
    }

    v39 = v95;
    v23 = v98;
    a1 = v85;
    v19 = v84;
  }

  (*(v99 + 7))(v39, 1, 1, v23);
LABEL_19:
  v48 = a1;
  v49 = [v48 objectID];
  v50 = [v49 URIRepresentation];

  v51 = v87;
  sub_E5994();

  v100 = sub_E5974();
  v86 = v52;
  (*(v20 + 8))(v51, v19);
  v53 = [v48 uuid];
  if (v53)
  {
    v54 = v53;
    v87 = sub_E7064();
    v85 = v55;
  }

  else
  {
    v87 = 0;
    v85 = 0;
  }

  v56 = [v48 objectID];

  v57 = [v48 title];
  if (v57)
  {
    v58 = v57;
    v84 = sub_E7064();
    v83 = v59;
  }

  else
  {
    v84 = 0;
    v83 = 0xE000000000000000;
  }

  [v48 generatedDate];
  sub_E5A04();
  v60 = [v48 defaultSettings];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 showPlayedEpisodes];

    v63 = v62 ^ 1;
  }

  else
  {
    v63 = 1;
  }

  LODWORD(v82) = v63;
  v64 = [v48 hidden];
  sub_26324(v39, v96, &unk_12DB10, &qword_EAC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v65 = sub_E5484();
  v66 = v92;
  *(v92 + 5) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_63068(&qword_12E760, type metadata accessor for ContextualMetadata);
  v81 = sub_E5444();
  *(v66 + 6) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v80 = sub_E5454();
  *(v66 + 7) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  *(v66 + 8) = sub_E5494();
  v67 = type metadata accessor for StationEntity();
  v68 = v67[11];
  (*(v99 + 7))(&v66[v68], 1, 1, v98);
  v69 = &v66[v67[12]];
  v98 = xmmword_EBE10;
  *v69 = xmmword_EBE10;
  v70 = v86;
  *v66 = v100;
  *(v66 + 1) = v70;
  v71 = v85;
  *(v66 + 2) = v87;
  *(v66 + 3) = v71;
  *(v66 + 4) = v56;
  v66[v67[13]] = v64;
  *&v104 = v84;
  *(&v104 + 1) = v83;
  v100 = v56;
  sub_E53F4();
  v99 = v48;
  v72 = v90;
  v73 = v88;
  v74 = v91;
  (*(v90 + 16))(v88, v97, v91);
  (*(v72 + 56))(v73, 0, 1, v74);
  sub_26324(v73, v89, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v73, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v104) = v82;
  sub_E53F4();
  v75 = &v66[v68];
  v76 = v96;
  sub_61AC4(v96, v75);
  sub_4DC8C(*v69, *(v69 + 1));
  *v69 = v98;
  v77 = type metadata accessor for ContextualMetadata();
  v78 = v94;
  (*(*(v77 - 8) + 56))(v94, 1, 1, v77);
  sub_26324(v78, v93, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();

  sub_110AC(v78, &qword_12EAC0, &qword_ECC30);
  sub_110AC(v76, &unk_12DB10, &qword_EAC60);
  (*(v72 + 8))(v97, v74);
  return sub_110AC(v95, &unk_12DB10, &qword_EAC60);
}

uint64_t StationEntity.displayRepresentation.getter()
{
  v1 = *(v0 + 40);
  sub_E53E4();
  return sub_E5644();
}

uint64_t sub_60B28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5204();
  qword_12EE70 = result;
  return result;
}

uint64_t static StationEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CB20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12EE70;
}

uint64_t sub_60C38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12EE78);
  __swift_project_value_buffer(v0, qword_12EE78);
  return sub_E59B4();
}

uint64_t static StationEntity.deviceURLPrefix.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB28 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v3 = __swift_project_value_buffer(v2, qword_12EE78);
  return sub_26324(v3, a1, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_60D38()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12EE90);
  __swift_project_value_buffer(v0, qword_12EE90);
  return sub_E57B4();
}

uint64_t static StationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB30 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12EE90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*StationEntity.title.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_60F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_26324(a1, &v13 - v9, &qword_12EAC0, &qword_ECC30);
  v11 = *(a2 + 48);
  sub_26324(v10, v8, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();
  return sub_110AC(v10, &qword_12EAC0, &qword_ECC30);
}

uint64_t StationEntity.contextualMetadata.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + 48);
  sub_26324(a1, &v8 - v6, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();
  return sub_110AC(a1, &qword_12EAC0, &qword_ECC30);
}

void (*StationEntity.contextualMetadata.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_61178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_26324(a1, &v13 - v9, &qword_131EE0, &unk_F5BE0);
  v11 = *(a2 + 56);
  sub_26324(v10, v8, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(v10, &qword_131EE0, &unk_F5BE0);
}

uint64_t StationEntity.dateCreated.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v1 + 56);
  sub_26324(a1, &v8 - v6, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(a1, &qword_131EE0, &unk_F5BE0);
}

void (*StationEntity.dateCreated.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t StationEntity.showUnplayedEpisodes.getter()
{
  v1 = *(v0 + 64);
  sub_E53E4();
  return v3;
}

void (*StationEntity.showUnplayedEpisodes.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t StationEntity.artworkData.getter()
{
  v1 = v0 + *(type metadata accessor for StationEntity() + 48);
  v2 = *v1;
  sub_4EB8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t StationEntity.init(id:uuid:objectID:title:dateCreated:showUnplayedEpisodes:isHidden:artworkModel:artworkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v62 = a8;
  v54 = a4;
  v55 = a6;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v59 = a13;
  v60 = a14;
  v58 = a12;
  v56 = a10;
  v50 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v61 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v57 = &v48 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = sub_E5944();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  *(a9 + 5) = sub_E5484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_63068(&qword_12E760, type metadata accessor for ContextualMetadata);
  v49 = sub_E5444();
  *(a9 + 6) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v48 = sub_E5454();
  *(a9 + 7) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  *(a9 + 8) = sub_E5494();
  v31 = type metadata accessor for StationEntity();
  v32 = v31[11];
  v33 = sub_E5FD4();
  (*(*(v33 - 8) + 56))(&a9[v32], 1, 1, v33);
  v34 = &a9[v31[12]];
  *v34 = xmmword_EBE10;
  v35 = v52;
  *a9 = v51;
  *(a9 + 1) = v35;
  v36 = v54;
  *(a9 + 2) = v53;
  *(a9 + 3) = v36;
  *(a9 + 4) = a5;
  a9[v31[13]] = v50;
  v63 = v55;
  v64 = a7;
  v55 = a5;
  sub_E53F4();
  v37 = sub_E5A54();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v28, v62, v37);
  (*(v38 + 56))(v28, 0, 1, v37);
  sub_26324(v28, v26, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v28, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v63) = v56;
  sub_E53F4();
  v39 = &a9[v32];
  v40 = v58;
  sub_61AC4(v58, v39);
  v41 = *v34;
  v42 = *(v34 + 1);
  v44 = v59;
  v43 = v60;
  sub_4EB8C(v59, v60);
  sub_4DC8C(v41, v42);
  *v34 = v44;
  *(v34 + 1) = v43;
  v45 = type metadata accessor for ContextualMetadata();
  v46 = v57;
  (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
  sub_26324(v46, v61, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();
  sub_4DC8C(v44, v43);

  sub_110AC(v40, &unk_12DB10, &qword_EAC60);
  (*(v38 + 8))(v62, v37);
  return sub_110AC(v46, &qword_12EAC0, &qword_ECC30);
}

uint64_t type metadata accessor for StationEntity()
{
  result = qword_12EF68;
  if (!qword_12EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_OWORD *sub_61B34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_61B48(uint64_t a1)
{
  v2 = sub_63068(&qword_12DC58, type metadata accessor for StationEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_61BC4(uint64_t a1)
{
  v2 = sub_63068(&qword_12EEF0, type metadata accessor for StationEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t StationEntity.mediaRepresentation.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_E54D4();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_61D38, 0, 0);
}

uint64_t sub_61D38()
{
  v1 = v0[5];
  if (v1[3])
  {
    v17 = v1[2];
  }

  else
  {
    v2 = v1[1];
    v18 = *v1;
  }

  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v1[5];

  sub_E53E4();
  v9 = v0[2];
  v10 = v0[3];
  (*(v3 + 104))(v4, enum case for IntentMediaItem.ItemType.podcastStation(_:), v6);
  v11 = (v1 + *(type metadata accessor for StationEntity() + 48));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_E59C4();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_4EB8C(v12, v13);
  sub_E54E4();

  v15 = v0[1];

  return v15();
}

uint64_t sub_61EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return StationEntity.mediaRepresentation.getter(a1);
}

uint64_t StationEntity.prepare(asPartOf:)()
{
  *(v1 + 56) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v1;
  v4[1] = sub_62020;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_62020()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_578AC, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = type metadata accessor for StationEntity();
    v3[10] = v5;
    v6 = *(v5 + 44);
    v7 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
    v8 = swift_task_alloc();
    v3[11] = v8;
    v9 = sub_63068(&qword_12EEC0, type metadata accessor for StationEntity);
    *v8 = v3;
    v8[1] = sub_62208;
    v10 = v3[7];

    return Preparable.artworkData(for:imageProvider:)(v4 + v6, v3 + 2, v5, v9);
  }
}

uint64_t sub_62208(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = sub_578C4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v9 = sub_6233C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_6233C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 48);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_623C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_62490;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v5, v5);
}

uint64_t sub_62490()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_57CB8, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = *(v3[8] + 44);
    v6 = async function pointer to Preparable.artworkData(for:imageProvider:)[1];
    v7 = swift_task_alloc();
    v3[12] = v7;
    *v7 = v3;
    v7[1] = sub_62624;
    v8 = v3[8];
    v9 = v3[9];
    v10 = v3[7];

    return Preparable.artworkData(for:imageProvider:)(v4 + v5, v3 + 2, v8, v9);
  }
}