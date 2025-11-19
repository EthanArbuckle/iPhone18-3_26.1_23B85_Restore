__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CodableCoordinate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableCoordinate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_27DF48790)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DF48790);
    }
  }
}

uint64_t sub_238A0DF48(void *a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v12];
  v4 = v12[0];
  if (v3)
  {
    v5 = sub_238A12000();
    v7 = v6;

    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_238A121D0();
    __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_238A0E17C();
    sub_238A12170();
    sub_238A0E1D0(v5, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = v4;
    sub_238A11FF0();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_238A0E0A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_238A0E270(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_238A0E17C()
{
  result = qword_27DF48798;
  if (!qword_27DF48798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48798);
  }

  return result;
}

uint64_t sub_238A0E1D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_238A0E270(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A121B0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_238A0E470();
    sub_238A12150();
    sub_238A0E4C4(0, &qword_27DF487A8, 0x277CCAAC8);
    sub_238A0E4C4(0, &qword_27DF487B0, 0x277CE41F8);
    v5 = sub_238A12020();
    v4 = v5;
    if (v5)
    {
      sub_238A0E1D0(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v4;
    }

    sub_238A12060();
    v4 = swift_allocError();
    sub_238A12040();
    swift_willThrow();
    sub_238A12060();
    swift_allocError();
    sub_238A12040();
    swift_willThrow();

    sub_238A0E1D0(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_238A0E470()
{
  result = qword_27DF487A0;
  if (!qword_27DF487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487A0);
  }

  return result;
}

uint64_t sub_238A0E4C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t PlaceDescriptor.address.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 + 48);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2;
    v2 += 24;
    if (!v5)
    {
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);

      return v6;
    }
  }

  return 0;
}

uint64_t PlaceDescriptor.coordinate.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 + 48);
  v3 = *(v1 + 16) + 1;
  while (1)
  {
    if (!--v3)
    {
      return 0;
    }

    v4 = v2 + 24;
    v5 = *v2;
    if (v5 == 1)
    {
      break;
    }

    v2 += 24;
    if (v5 == 2)
    {
      [*(v4 - 5) coordinate];
      return v6;
    }
  }

  result = *(v2 - 2);
  v8 = *(v2 - 1);
  return result;
}

Swift::String_optional __swiftcall PlaceDescriptor.serviceIdentifier(for:)(Swift::String a1)
{
  v2 = *(v1 + 24);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 32);
  if (!*(v3 + 16))
  {
    goto LABEL_6;
  }

  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;

  v6 = sub_238A0E688(countAndFlagsBits, object);
  if ((v7 & 1) == 0)
  {

LABEL_6:
    v12 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v8 = (*(v3 + 56) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];

  v11 = v9;
  v12 = v10;
LABEL_7:
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_238A0E688(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_238A12180();
  sub_238A12010();
  v6 = sub_238A121A0();

  return sub_238A0E700(a1, a2, v6);
}

unint64_t sub_238A0E700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_238A12130())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t PlaceDescriptor.PlaceRepresentation.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v4 = a1[4];
    if (*(v1 + 16) == 1)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_238A121D0();
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      sub_238A0E9BC();
      sub_238A12170();
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v3;
      sub_238A121D0();
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      sub_238A0E948();
      sub_238A12170();
      sub_238A0E99C(v3, v2, 2);
    }
  }

  else
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_238A121D0();
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_238A12160();
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

unint64_t sub_238A0E948()
{
  result = qword_27DF487B8;
  if (!qword_27DF487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487B8);
  }

  return result;
}

void sub_238A0E99C(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_238A0E9BC()
{
  result = qword_27DF487C0;
  if (!qword_27DF487C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487C0);
  }

  return result;
}

uint64_t PlaceDescriptor.PlaceRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A121B0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_238A12140();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_238A0EBF0()
{
  result = qword_27DF487C8;
  if (!qword_27DF487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487C8);
  }

  return result;
}

unint64_t sub_238A0EC44()
{
  result = qword_27DF487D0;
  if (!qword_27DF487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487D0);
  }

  return result;
}

uint64_t sub_238A0ECDC(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
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
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_238A0E688(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_238A12130();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238A0EED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000238A133F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_238A12130();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_238A0EF80(uint64_t a1)
{
  v2 = sub_238A108A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238A0EFBC(uint64_t a1)
{
  v2 = sub_238A108A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238A0EFF8()
{
  sub_238A12180();
  MEMORY[0x23EE6CCA0](0);
  return sub_238A121A0();
}

uint64_t sub_238A0F03C()
{
  sub_238A12180();
  MEMORY[0x23EE6CCA0](0);
  return sub_238A121A0();
}

uint64_t sub_238A0F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238A12130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238A0F108(uint64_t a1)
{
  v2 = sub_238A108FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238A0F144(uint64_t a1)
{
  v2 = sub_238A108FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaceDescriptor.SupportingPlaceRepresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF487D8, &qword_238A12500);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF487E0, &qword_238A12508);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A108A8();
  sub_238A121E0();
  sub_238A108FC();
  sub_238A120E0();
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF487F8, &qword_238A12510);
  sub_238A10998(&qword_27DF48800);
  v15 = v18;
  sub_238A12120();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t PlaceDescriptor.SupportingPlaceRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48808, &qword_238A12518);
  v24 = *(v4 - 8);
  v5 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v22 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48810, &qword_238A12520);
  v8 = *(v25 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A108A8();
  sub_238A121C0();
  if (!v2)
  {
    v13 = v24;
    v14 = v8;
    v15 = sub_238A120D0();
    if (*(v15 + 16) == 1)
    {
      sub_238A108FC();
      sub_238A12070();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF487F8, &qword_238A12510);
      sub_238A10998(&qword_27DF48820);
      sub_238A120C0();
      (*(v13 + 8))(v7, v4);
      (*(v14 + 8))(v11, v25);
      swift_unknownObjectRelease();
      *v23 = v26;
    }

    else
    {
      v16 = sub_238A12060();
      swift_allocError();
      v24 = v15;
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48818, &qword_238A12528) + 48);
      *v18 = &type metadata for PlaceDescriptor.SupportingPlaceRepresentation;
      v20 = v25;
      sub_238A12080();
      sub_238A12050();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
      swift_willThrow();
      (*(v14 + 8))(v11, v20);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double PlaceDescriptor.init(representations:commonName:supportingRepresentations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = 0.0;
  *(a5 + 32) = xmmword_238A124E0;
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static PlaceDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_238A12130() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_238A0F868(v4, v7);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  return sub_238A0FB38(v5, v8);
}

void sub_238A0F868(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    if (!*i)
    {
      if (*v3)
      {
        sub_238A1167C(*(v3 - 2), *(v3 - 1), *v3);
        v20 = v6;
        v21 = v5;
        v22 = 0;
        goto LABEL_27;
      }

      if (v6 == v9 && v5 == v8)
      {
        sub_238A1167C(*(i - 2), *(i - 1), 0);
        sub_238A1167C(v6, v5, 0);
        sub_238A0E99C(v6, v5, 0);
        sub_238A0E99C(v6, v5, 0);
        goto LABEL_6;
      }

      v14 = *(v3 - 2);
      v15 = *(v3 - 1);
      v16 = sub_238A12130();
      sub_238A1167C(v9, v8, 0);
      sub_238A1167C(v6, v5, 0);
      sub_238A0E99C(v6, v5, 0);
      v17 = v9;
      v18 = v8;
      v19 = 0;
      goto LABEL_21;
    }

    if (v7 == 1)
    {
      break;
    }

    if (v10 != 2)
    {
      sub_238A1167C(*(v3 - 2), *(v3 - 1), *v3);
      v20 = v6;
      v21 = v5;
      v22 = 2;
      goto LABEL_27;
    }

    sub_238A1169C();
    sub_238A1167C(v9, v8, 2);
    sub_238A1167C(v6, v5, 2);
    sub_238A1167C(v9, v8, 2);
    sub_238A1167C(v6, v5, 2);
    v16 = sub_238A12030();
    sub_238A0E99C(v6, v5, 2);
    sub_238A0E99C(v9, v8, 2);
    sub_238A0E99C(v9, v8, 2);
    v17 = v6;
    v18 = v5;
    v19 = 2;
LABEL_21:
    sub_238A0E99C(v17, v18, v19);
    if ((v16 & 1) == 0)
    {
      return;
    }

LABEL_6:
    v3 += 24;
    if (!--v2)
    {
      return;
    }
  }

  if (v10 != 1)
  {
    v20 = *(v3 - 2);
    v21 = *(v3 - 1);
    v22 = *v3;
LABEL_27:
    sub_238A1167C(v20, v21, v22);
    goto LABEL_29;
  }

  v11 = *(v3 - 2);
  if (vabdd_f64(*&v6, *&v9) < 0.000001)
  {
    v12 = *(v3 - 1);
    sub_238A0E99C(*(i - 2), *(i - 1), 1);
    sub_238A0E99C(v9, v8, 1);
    if (vabdd_f64(*&v5, *&v8) >= 0.000001)
    {
      return;
    }

    goto LABEL_6;
  }

  LOBYTE(v10) = 1;
LABEL_29:
  sub_238A0E99C(v6, v5, v7);
  sub_238A0E99C(v9, v8, v10);
}

uint64_t sub_238A0FB38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_238A0ECDC(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t PlaceDescriptor.commonName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlaceDescriptor._placemarkData.getter()
{
  v1 = *(v0 + 32);
  sub_238A10A04(v1, *(v0 + 40));
  return v1;
}

uint64_t PlaceDescriptor._placemarkData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_238A10A6C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_238A0FCD4()
{
  v1 = *v0;
  sub_238A12180();
  MEMORY[0x23EE6CCA0](v1);
  return sub_238A121A0();
}

uint64_t sub_238A0FD48()
{
  v1 = *v0;
  sub_238A12180();
  MEMORY[0x23EE6CCA0](v1);
  return sub_238A121A0();
}

unint64_t sub_238A0FD8C()
{
  v1 = 0x614E6E6F6D6D6F63;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x616D6563616C705FLL;
  }

  if (*v0)
  {
    v1 = 0x6E65736572706572;
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

uint64_t sub_238A0FE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238A114F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238A0FE5C(uint64_t a1)
{
  v2 = sub_238A10A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238A0FE98(uint64_t a1)
{
  v2 = sub_238A10A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaceDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48828, &qword_238A12530);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v11 = v1[4];
  v19 = v1[5];
  v20 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A10A80();
  sub_238A121E0();
  LOBYTE(v24) = 0;
  v13 = v23;
  sub_238A120F0();
  if (!v13)
  {
    v14 = v20;
    v15 = v21;
    v16 = v19;
    v24 = v22;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48838, &qword_238A12538);
    sub_238A10BF4(&qword_27DF48840, sub_238A10AD4);
    sub_238A12120();
    v24 = v15;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48850, &qword_238A12540);
    sub_238A10B28(&qword_27DF48858, sub_238A10BA0);
    sub_238A12120();
    v24 = v14;
    v25 = v16;
    v26 = 3;
    sub_238A10A04(v14, v16);
    sub_238A0E17C();
    sub_238A12100();
    sub_238A10A6C(v24, v25);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PlaceDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48868, &qword_238A12548);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A10A80();
  sub_238A121C0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_238A12090();
    v14 = v13;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48838, &qword_238A12538);
    v27 = 1;
    sub_238A10BF4(&qword_27DF48870, sub_238A10C6C);
    sub_238A120C0();
    v23 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF48850, &qword_238A12540);
    v27 = 2;
    sub_238A10B28(&qword_27DF48880, sub_238A10CC0);
    sub_238A120C0();
    v22 = v25;
    v27 = 3;
    sub_238A0E470();
    sub_238A120A0();
    (*(v6 + 8))(v9, v5);
    v15 = v25;
    v16 = v26;
    sub_238A10A6C(0, 0xF000000000000000);
    v17 = v23;
    *a2 = v24;
    a2[1] = v14;
    v18 = v22;
    a2[2] = v17;
    a2[3] = v18;
    a2[4] = v15;
    a2[5] = v16;

    sub_238A10A04(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v19 = v15;
    v20 = v16;
  }

  return sub_238A10A6C(v19, v20);
}

uint64_t sub_238A10594(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_238A12130() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_238A0F868(v4, v7);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  return sub_238A0FB38(v5, v8);
}

BOOL _s10GeoToolbox15PlaceDescriptorV0C14RepresentationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        v8 = *a2;
        if (vabdd_f64(*&v3, *&v6) < 0.000001)
        {
          v9 = *(a1 + 8);
          v10 = *(a2 + 8);
          sub_238A0E99C(*a1, v2, 1);
          sub_238A0E99C(v6, v5, 1);
          return vabdd_f64(*&v2, *&v5) < 0.000001;
        }

        sub_238A0E99C(*a1, v2, 1);
        v18 = v6;
        v19 = v5;
        v20 = 1;
        goto LABEL_12;
      }

LABEL_11:
      sub_238A1167C(v6, v5, v7);
      sub_238A0E99C(v3, v2, v4);
      v18 = v6;
      v19 = v5;
      v20 = v7;
LABEL_12:
      sub_238A0E99C(v18, v19, v20);
      return 0;
    }

    if (v7 != 2)
    {
      v17 = v3;
      goto LABEL_11;
    }

    sub_238A1169C();
    sub_238A1167C(v6, v5, 2);
    sub_238A1167C(v3, v2, 2);
    v13 = sub_238A12030();
    sub_238A0E99C(v3, v2, 2);
    v14 = v6;
    v15 = v5;
    v16 = 2;
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v12 = *(a1 + 8);

    goto LABEL_11;
  }

  v21 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v13 = sub_238A12130();
    sub_238A1167C(v6, v5, 0);
    sub_238A1167C(v3, v2, 0);
    sub_238A0E99C(v3, v2, 0);
    v14 = v6;
    v15 = v5;
    v16 = 0;
LABEL_18:
    sub_238A0E99C(v14, v15, v16);
    return v13 & 1;
  }

  sub_238A1167C(v21, v2, 0);
  sub_238A1167C(v3, v2, 0);
  sub_238A0E99C(v3, v2, 0);
  sub_238A0E99C(v3, v2, 0);
  return 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_238A108A8()
{
  result = qword_27DF487E8;
  if (!qword_27DF487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487E8);
  }

  return result;
}

unint64_t sub_238A108FC()
{
  result = qword_27DF487F0;
  if (!qword_27DF487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF487F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_238A10998(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF487F8, &qword_238A12510);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238A10A04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238A10A18(a1, a2);
  }

  return a1;
}

uint64_t sub_238A10A18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_238A10A6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238A0E1D0(a1, a2);
  }

  return a1;
}

unint64_t sub_238A10A80()
{
  result = qword_27DF48830;
  if (!qword_27DF48830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48830);
  }

  return result;
}

unint64_t sub_238A10AD4()
{
  result = qword_27DF48848;
  if (!qword_27DF48848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48848);
  }

  return result;
}

uint64_t sub_238A10B28(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF48850, &qword_238A12540);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238A10BA0()
{
  result = qword_27DF48860;
  if (!qword_27DF48860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48860);
  }

  return result;
}

uint64_t sub_238A10BF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF48838, &qword_238A12538);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238A10C6C()
{
  result = qword_27DF48878;
  if (!qword_27DF48878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48878);
  }

  return result;
}

unint64_t sub_238A10CC0()
{
  result = qword_27DF48888;
  if (!qword_27DF48888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48888);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_238A10D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238A10DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A10E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_238A10E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_238A10EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_238A10F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238A11104(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_238A11154(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_238A111E4()
{
  result = qword_27DF48890;
  if (!qword_27DF48890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48890);
  }

  return result;
}

unint64_t sub_238A1123C()
{
  result = qword_27DF48898;
  if (!qword_27DF48898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48898);
  }

  return result;
}

unint64_t sub_238A11294()
{
  result = qword_27DF488A0;
  if (!qword_27DF488A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488A0);
  }

  return result;
}

unint64_t sub_238A112EC()
{
  result = qword_27DF488A8;
  if (!qword_27DF488A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488A8);
  }

  return result;
}

unint64_t sub_238A11344()
{
  result = qword_27DF488B0;
  if (!qword_27DF488B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488B0);
  }

  return result;
}

unint64_t sub_238A1139C()
{
  result = qword_27DF488B8;
  if (!qword_27DF488B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488B8);
  }

  return result;
}

unint64_t sub_238A113F4()
{
  result = qword_27DF488C0;
  if (!qword_27DF488C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488C0);
  }

  return result;
}

unint64_t sub_238A1144C()
{
  result = qword_27DF488C8;
  if (!qword_27DF488C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488C8);
  }

  return result;
}

unint64_t sub_238A114A4()
{
  result = qword_27DF488D0;
  if (!qword_27DF488D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488D0);
  }

  return result;
}

uint64_t sub_238A114F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6E6F6D6D6F63 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_238A12130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174 || (sub_238A12130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000238A13410 == a2 || (sub_238A12130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616D6563616C705FLL && a2 == 0xEE00617461446B72)
  {

    return 3;
  }

  else
  {
    v6 = sub_238A12130();

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

id sub_238A1167C(id result, id a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t sub_238A1169C()
{
  result = qword_27DF488D8;
  if (!qword_27DF488D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF488D8);
  }

  return result;
}

uint64_t PlaceDescriptor.wellKnownName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double PlaceDescriptor.init(placeRepresentations:wellKnownName:supportingPlaceRepresentations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a1;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = xmmword_238A124E0;
  return result;
}

Swift::String_optional __swiftcall PlaceDescriptor.serviceIdentifierFor(serviceProvider:)(Swift::String serviceProvider)
{
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v4 = PlaceDescriptor.serviceIdentifier(for:)(serviceProvider);
  object = v4.value._object;
  countAndFlagsBits = v4.value._countAndFlagsBits;
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t sub_238A117F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF488E0, &qword_238A12C98);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A11B88();
  sub_238A121E0();
  v12 = 0;
  sub_238A12110();
  if (!v1)
  {
    v11 = 1;
    sub_238A12110();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_238A11998()
{
  if (*v0)
  {
    result = 0x64757469676E6F6CLL;
  }

  else
  {
    result = 0x656475746974616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_238A119D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_238A12130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238A12130();

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

uint64_t sub_238A11AC8(uint64_t a1)
{
  v2 = sub_238A11B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238A11B04(uint64_t a1)
{
  v2 = sub_238A11B88();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_238A11B40(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238A11BDC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_238A11B6C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_238A117F8(a1);
}

unint64_t sub_238A11B88()
{
  result = qword_27DF488E8;
  if (!qword_27DF488E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488E8);
  }

  return result;
}

double sub_238A11BDC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF488F0, &qword_238A12CA0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238A11B88();
  sub_238A121C0();
  v11[15] = 0;
  sub_238A120B0();
  v9 = v8;
  v11[14] = 1;
  sub_238A120B0();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t getEnumTagSinglePayload for CodableCoordinate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CodableCoordinate.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238A11EEC()
{
  result = qword_27DF488F8;
  if (!qword_27DF488F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF488F8);
  }

  return result;
}

unint64_t sub_238A11F44()
{
  result = qword_27DF48900;
  if (!qword_27DF48900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48900);
  }

  return result;
}

unint64_t sub_238A11F9C()
{
  result = qword_27DF48908;
  if (!qword_27DF48908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF48908);
  }

  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}