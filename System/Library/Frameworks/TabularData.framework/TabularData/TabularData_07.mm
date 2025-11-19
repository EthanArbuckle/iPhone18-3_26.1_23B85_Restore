uint64_t sub_21B28E49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!v6[16])
  {
    if (a1 == a2)
    {
      v26 = *v6;
      if (a1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_21B351EA0;
        *(v22 + 32) = v26;
        v27 = v22;
        result = sub_21B270698(a3, a4, a5, a6);
        *v6 = v27;
        goto LABEL_19;
      }

      v6 = sub_21B264038(a3, a4, a5, a6);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_18:
    result = sub_21B264038(a3, a4, a5, a6);
    *v6 = result;
    goto LABEL_19;
  }

  if (v6[16] != 1)
  {
    goto LABEL_18;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = *v6;
  v6 = *(*v6 + 16);
  if (v6 < a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = __OFSUB__(2, v13);
  v15 = 2 - v13;
  if (!v14)
  {
    v16 = &v6[v15];
    if (!__OFADD__(v6, v15))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v16 > *(v12 + 3) >> 1)
      {
        if (v6 <= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v6;
        }

        v12 = sub_21B2356AC(isUniquelyReferenced_nonNull_native, v20, 1, v12);
      }

      result = sub_21B25CE1C(a1, a2, 2, a3, a4, a5, a6);
      *v7 = v12;
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_21B2356AC(0, *(v6 + 2) + 1, 1, v6);
  v6 = result;
LABEL_21:
  v23 = v26;
  v25 = *(v6 + 2);
  v24 = *(v6 + 3);
  if (v25 >= v24 >> 1)
  {
    result = sub_21B2356AC((v24 > 1), v25 + 1, 1, v6);
    v23 = v26;
    v6 = result;
  }

  *(v6 + 2) = v25 + 1;
  *&v6[16 * v25 + 32] = v23;
  *v7 = v6;
LABEL_19:
  *(v7 + 1) = 0;
  v7[16] = 1;
  return result;
}

unint64_t sub_21B28E6D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (!v4[16])
  {
    if (a1 == a2)
    {
      v22 = *v4;
      if (!a1)
      {
        v4 = sub_21B263FC0(a3, a4);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_21:
          v19 = v22;
          v21 = *(v4 + 2);
          v20 = *(v4 + 3);
          if (v21 >= v20 >> 1)
          {
            result = sub_21B2356AC((v20 > 1), v21 + 1, 1, v4);
            v19 = v22;
            v4 = result;
          }

          *(v4 + 2) = v21 + 1;
          *&v4[16 * v21 + 32] = v19;
          *v5 = v4;
          goto LABEL_19;
        }

LABEL_29:
        result = sub_21B2356AC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21B351EA0;
      *(v18 + 32) = v22;
      v23 = v18;
      result = sub_21B2705F8(a3, a4);
      *v4 = v23;
LABEL_19:
      *(v5 + 1) = 0;
      v5[16] = 1;
      return result;
    }

LABEL_18:
    result = sub_21B263FC0(a3, a4);
    *v4 = result;
    goto LABEL_19;
  }

  if (v4[16] != 1)
  {
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = *v4;
  v4 = *(*v4 + 16);
  if (v4 < a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = &v4[v11];
  if (__OFADD__(v4, v11))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v8 + 3) >> 1)
  {
    if (v4 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v4;
    }

    v8 = sub_21B2356AC(isUniquelyReferenced_nonNull_native, v16, 1, v8);
  }

  result = sub_21B25CD54(a1, a2, 1, a3, a4);
  *v5 = v8;
  *(v5 + 1) = 0;
  v5[16] = 1;
  return result;
}

void *sub_21B28E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for PackedOptionalsArray();
  return sub_21B32CCD4(a1, a2, v6);
}

uint64_t sub_21B28E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *a1;
  v10 = v5;
  v11 = v6;
  v12 = v7;

  Column.subscript.setter(&v9, v13, v14, a3);
}

uint64_t sub_21B28EA20(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B28EA5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B28EBB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
    sub_21B25DE24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Order(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Order(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B28EE50()
{
  result = qword_27CD7EA20;
  if (!qword_27CD7EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E760, &unk_21B352380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EA20);
  }

  return result;
}

uint64_t sub_21B28EEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ColumnID.name.getter()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t ColumnID.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ColumnID.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ColumnID.description.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_21B34B634();

  MEMORY[0x21CEED5E0](v3, v4);
  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v5 = *(a1 + 16);
  v6 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v6);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return 0x44496E6D756C6F43;
}

uint64_t sub_21B28F0A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ProcessedRows(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProcessedRows(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

Swift::Bool __swiftcall ColumnSlice.isNil(at:)(Swift::Int at)
{
  v4 = *(v2 + 2);
  v10 = *v2;
  v11 = v4;
  v12 = *(v2 + 24);
  v5 = *(v1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v6 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v9, v6);
  v7 = v9[2];

  LOBYTE(at) = sub_21B32A318(at, v7);

  return at & 1;
}

uint64_t ColumnSlice.name.getter(uint64_t a1)
{
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *(v1 + 4);
  v11 = *v1;
  v12 = v4;
  v13 = v3;
  v14 = v5;

  v6 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v7 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](&v10, v7);

  v8 = sub_21B233AD0();

  return v8;
}

double ColumnSlice.init(base:bounds:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BAE4();
  *a2 = v6;
  *(a2 + 16) = v7;
  result = *&v8;
  *(a2 + 24) = v8;
  return result;
}

uint64_t ColumnSlice.subscript.getter(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 2);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);

  v4 = *(a2 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB64();
}

uint64_t ColumnSlice.slice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
}

__n128 ColumnSlice.slice.setter(__int128 *a1)
{
  v7 = *a1;
  v3 = *(a1 + 2);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);

  *v1 = v7;
  *(v1 + 16) = v3;
  result = *(a1 + 24);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_21B28F544@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = *(a1 + 24);
  v6 = type metadata accessor for ColumnSlice();
  result = ColumnSlice.name.getter(v6);
  *a4 = result;
  a4[1] = v8;
  return result;
}

uint64_t sub_21B28F5A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for ColumnSlice();

  return ColumnSlice.name.setter(v5, v6, v7);
}

uint64_t ColumnSlice.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = *v3;
  v19 = *(v3 + 2);
  v21 = *(v3 + 3);
  v23 = *(v3 + 4);
  v7 = *(a3 + 16);
  type metadata accessor for Column();

  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](&v24);

  Column.name.setter(a1, a2);
  v18 = *v3;
  v20 = *(v3 + 2);
  v22 = *(v3 + 24);

  sub_21B34BAD4();

  v12 = *v3;
  v13 = *(v3 + 2);
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);

  sub_21B34AAC4();

  if (v11 < v16)
  {
    __break(1u);
  }

  else
  {
    sub_21B34BAE4();
    v9 = *(v3 + 3);
    v10 = *(v3 + 4);

    *v4 = v18;
    *(v4 + 2) = v20;
    *(v4 + 24) = v22;
  }

  return result;
}

uint64_t (*ColumnSlice.name.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = ColumnSlice.name.getter(a2);
  a1[1] = v4;
  return sub_21B28F840;
}

uint64_t sub_21B28F840(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if ((a2 & 1) == 0)
  {
    return ColumnSlice.name.setter(*a1, v2, v5);
  }

  v6 = a1[1];

  ColumnSlice.name.setter(v3, v2, v5);
}

uint64_t ColumnSlice.prototype.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v12 = *(v2 + 2);
  v13 = *(v2 + 24);
  v5 = ColumnSlice.name.getter(a1);
  v6 = *(a1 + 16);
  v7 = nullsub_14(v5);
  v9 = v8;
  result = type metadata accessor for ColumnPrototype();
  a2[3] = result;
  a2[4] = &off_282CA94D8;
  *a2 = v7;
  a2[1] = v9;
  return result;
}

__n128 ColumnSlice.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t ColumnSlice.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v10[0] = *a1;
  v10[1] = v4;
  v10[2] = v5;
  v6 = type metadata accessor for Column();
  result = Column.count.getter(v6);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    ColumnSlice.init(base:bounds:)(v10, a2);
    v9 = a1[1];
    v8 = a1[2];
  }

  return result;
}

uint64_t ColumnSlice.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v6;
  v13 = ColumnSlice.name.getter(a3);
  v15 = v14;
  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  v18 = *(v5 + 4);
  v29 = *v5;
  v30 = v17;
  v31 = v16;
  v32 = v18;
  v28[2] = *(a3 + 16);
  v28[3] = a4;
  v28[4] = a1;
  v28[5] = a2;

  type metadata accessor for Column();
  swift_getWitnessTable();
  v19 = sub_21B34BB44();
  v20 = sub_21B34B474();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v23 = sub_21B2FCC28(sub_21B293134, v28, v19, v20, v21, WitnessTable, MEMORY[0x277D84950], &v33);
  if (v7)
  {
  }

  else
  {
    v25 = v23;

    *&v29 = v25;
    v26 = sub_21B34B054();
    v27 = swift_getWitnessTable();
    return Column.init<A>(name:contents:)(v13, v15, &v29, a4, v26, v27, a5);
  }
}

uint64_t sub_21B28FC04(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = a2();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

void ColumnSlice.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v40 = a2;
  v34 = *(a3 + 16);
  v35 = a4;
  v7 = sub_21B34B474();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v31 - v9;
  v66 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_21B34B474();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v31 - v14);
  v16 = *v4;
  v37 = v4[1];
  v38 = v16;
  v17 = v4[2];
  v18 = v4[3];
  v19 = v4[4];
  v63 = 0;
  v64 = 0;
  v65 = 2;
  *&v50 = v16;
  *(&v50 + 1) = v37;
  *&v51 = v17;
  *(&v51 + 1) = v18;
  v52 = v19;
  swift_getWitnessTable();
  sub_21B34B194();
  v58 = *v46;
  v54 = v38;
  *&v55 = v37;
  v32 = v18;
  v33 = v17;
  *(&v55 + 1) = v17;
  v56 = v18;
  v31 = v19;
  v57 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v21 = sub_21B28EBB0(&qword_27CD7E980);
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v50 = v47;
  v51 = v48;
  v52 = *&v49[0];
  v53 = *(v49 + 8);
  *&v44 = v20;
  *(&v44 + 1) = a3;
  v54 = v20;
  *&v55 = a3;
  v42 = WitnessTable;
  v43 = v21;
  *(&v55 + 1) = v21;
  v56 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v41 = TupleTypeMetadata2 - 8;
  v23 = (v36 + 32);
  for (i = (v36 + 8); ; (*i)(v45, v66))
  {
    v47 = v44;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    v25 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      v49[0] = v61;
      v49[1] = v62[0];
      *(&v49[1] + 9) = *(v62 + 9);
      v47 = v59;
      v48 = v60;
      (*(*(v25 - 8) + 8))(&v47, v25);
      *&v50 = v38;
      *(&v50 + 1) = v37;
      *&v51 = v33;
      *(&v51 + 1) = v32;
      v52 = v31;
      type metadata accessor for Column();
      swift_getWitnessTable();
      v30 = sub_21B34BB44();
      MEMORY[0x21CEEE2D0](&v54, v30);
      v46[0] = v54;
      *&v46[1] = v55;
      sub_21B2D3D88(v46, v63, v64, v65, v35);
      return;
    }

    v26 = *v15;
    v27 = v45;
    (*v23)(v45, v15 + *(TupleTypeMetadata2 + 48), v66);
    v28 = v39(v27);
    if (v5)
    {
      (*i)(v45, v66);
      v49[0] = v61;
      v49[1] = v62[0];
      *(&v49[1] + 9) = *(v62 + 9);
      v47 = v59;
      v48 = v60;
      (*(*(v25 - 8) + 8))(&v47, v25);
      sub_21B23A9F4(v63, v64, v65);
      return;
    }

    if ((v28 & 1) == 0)
    {
      continue;
    }

    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 < v26)
    {
      goto LABEL_12;
    }

    sub_21B28DFBC(v26, v29);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t ColumnSlice.eraseToAnyColumn()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *v2;
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = *(v2 + 4);
  a2[3] = a1;
  a2[4] = &off_282CAA478;
  v7 = swift_allocObject();
  *a2 = v7;
  *(v7 + 16) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
}

void (*sub_21B2901AC(uint64_t **a1, uint64_t a2))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = ColumnSlice.name.modify(v4, a2);
  return sub_21B28A810;
}

Swift::Int sub_21B290224@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ColumnSlice.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int __swiftcall ColumnSlice.index(before:)(Swift::Int before)
{
  v3 = v1;
  v6 = *v2;
  v7 = *(v2 + 2);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);

  v4 = *(v3 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB54();

  return v10;
}

Swift::Int sub_21B290334(Swift::Int *a1)
{
  result = ColumnSlice.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B290360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ColumnSlice.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B2903A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ColumnSlice.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B2903E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = *(v2 + 4);
  v12 = *v2;
  v13 = v6;
  v14 = v5;
  v15 = v7;

  v8 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  a2(&v11, v9);

  return v11;
}

void (*sub_21B290498(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B290520(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B290520(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  ColumnSlice.subscript.getter(a2, a3);
  return sub_21B2854A4;
}

double sub_21B2905F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  return ColumnSlice.subscript.getter(a2, a3);
}

double ColumnSlice.subscript.getter@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v10 = *v2;
  v11 = *(v2 + 2);
  v12 = *(v2 + 3);
  v13 = *(v2 + 4);

  v5 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB84();

  *a2 = v7;
  *(a2 + 16) = v8;
  result = *&v9;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_21B290710()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t ColumnSlice.count.getter(uint64_t a1)
{
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v2 = *(a1 + 16);
  type metadata accessor for Column();

  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  v3 = sub_21B34B264();

  return v3;
}

Swift::Int sub_21B290854@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ColumnSlice.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int __swiftcall ColumnSlice.index(after:)(Swift::Int after)
{
  v3 = v1;
  v6 = *v2;
  v7 = *(v2 + 2);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);

  v4 = *(v3 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  sub_21B34BB04();

  return v10;
}

Swift::Int sub_21B290940(Swift::Int *a1)
{
  result = ColumnSlice.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B29096C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;

  v8 = ColumnSlice.startIndex.getter(a1);

  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_21B2909E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B290A3C()
{
  swift_getWitnessTable();
  v1 = sub_21B2DBAB0();
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ColumnSlice.missingCount.getter(uint64_t a1)
{
  swift_getWitnessTable();
  sub_21B34B194();
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  sub_21B28EBB0(&qword_27CD7E980);
  sub_21B34AF24();
  v2 = sub_21B34B004();

  return v2;
}

uint64_t sub_21B290BA0(Swift::Int *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  v5 = *(a2 + 4);
  v9 = *a2;
  v10 = v4;
  v11 = v3;
  v12 = v5;

  type metadata accessor for Column();
  swift_getWitnessTable();
  v6 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](&v8, v6);

  LOBYTE(v5) = Column.isNil(at:)(v2);

  return v5 & 1;
}

uint64_t sub_21B290C80(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *a2;
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 24);
  v5 = type metadata accessor for ColumnSlice();
  return ColumnSlice.subscript.getter(v4, v5);
}

uint64_t ColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B29318C(a1, a2, a3);
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*ColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v11 = sub_21B34B474();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  ColumnSlice.subscript.getter(a2, a3);
  return sub_21B290E94;
}

void sub_21B290E94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_21B29318C(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_21B29318C((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double sub_21B290F8C@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = a2[1];
  v15 = *a1;
  v16 = v6;
  v17 = *(a1 + 24);
  v9 = type metadata accessor for ColumnSlice();
  ColumnSlice.subscript.getter(v9, &v12);
  v10 = v13;
  *a4 = v12;
  *(a4 + 16) = v10;
  result = v14[0];
  *(a4 + 24) = *v14;
  return result;
}

uint64_t sub_21B29101C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v12 = *a1;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = type metadata accessor for ColumnSlice();

  return ColumnSlice.subscript.setter(&v12, v5, v6, v10);
}

uint64_t ColumnSlice.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);

  v5 = *(a4 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B2932D0();
}

void (*ColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  *a1 = v9;
  v9[7] = a4;
  v9[8] = v4;
  v9[5] = a2;
  v9[6] = a3;
  ColumnSlice.subscript.getter(a4, v9);
  return sub_21B291244;
}

void sub_21B291244(__int128 **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 7);
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 5);
  v5 = *(*a1 + 6);
  if (a2)
  {
    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    v9 = *(v2 + 4);
    v12 = *v2;
    v13 = v8;
    v14 = v7;
    v15 = v9;

    ColumnSlice.subscript.setter(&v12, v6, v5, v4);
    v10 = *(v2 + 3);
    v11 = *(v2 + 4);
  }

  else
  {
    ColumnSlice.subscript.setter(*a1, v6, v5, v4);
  }

  free(v2);
}

uint64_t sub_21B2912FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21B29318C(a1, *a2, a3);
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_21B291378(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ColumnSlice.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

void (*sub_21B291410(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ColumnSlice.subscript.modify(v6, *a2, a2[1], a3);
  return sub_21B28EF30;
}

uint64_t static ColumnSlice<A>.== infix(_:_:)(void (***a1)(void), uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v81 = *(a3 - 8);
  v7 = *(v81 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v70 - v10;
  v11 = sub_21B34B474();
  v80 = *(v11 - 8);
  v12 = *(v80 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v86 = v19;
  v87 = &v70 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = sub_21B34B474();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v78 = &v70 - v23;
  v24 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  v27 = a1[4];
  v28 = *a2;
  v29 = a2[1];
  v30 = a2[2];
  v31 = a2[3];
  v32 = a2[4];
  v74 = *a1;
  *&v107 = v74;
  *(&v107 + 1) = v24;
  v82 = v24;
  v70 = v26;
  v71 = v25;
  *&v108 = v25;
  *(&v108 + 1) = v26;
  v84 = v27;
  *&v109 = v27;
  v89 = a3;
  v33 = type metadata accessor for ColumnSlice();
  v34 = ColumnSlice.name.getter(v33);
  v36 = v35;
  v83 = v28;
  *&v90 = v28;
  *(&v90 + 1) = v29;
  *&v91 = v30;
  *(&v91 + 1) = v31;
  *&v92 = v32;
  v85 = v33;
  if (v34 == ColumnSlice.name.getter(v33) && v36 == v37)
  {
  }

  else
  {
    v38 = sub_21B34B9F4();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  *&v97 = v74;
  *(&v97 + 1) = v82;
  *&v98 = v71;
  *(&v98 + 1) = v70;
  *&v99 = v84;
  v102 = v83;
  v103 = v29;
  v104 = v30;
  v105 = v31;
  v106 = v32;
  v40 = v85;
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v99 = v92;
  v100 = v93;
  v101 = v94;
  v97 = v90;
  v98 = v91;
  v102 = v40;
  v103 = v40;
  v104 = WitnessTable;
  v105 = WitnessTable;
  v84 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v42 = TupleTypeMetadata2;
  v82 = (v80 + 32);
  v83 = TupleTypeMetadata2 - 8;
  v43 = (v81 + 48);
  v74 = (v80 + 16);
  v44 = (v81 + 32);
  v71 = (v81 + 8);
  v81 = v80 + 8;
  v45 = v78;
  while (1)
  {
    *&v90 = v85;
    *(&v90 + 1) = v85;
    *&v91 = v84;
    *(&v91 + 1) = v84;
    v47 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(v42 - 8) + 48))(v45, 1, v42) == 1)
    {
      v94 = v111;
      v95 = v112;
      v96 = v113;
      v90 = v107;
      v91 = v108;
      v92 = v109;
      v93 = v110;
      (*(*(v47 - 8) + 8))(&v90, v47);
      return 1;
    }

    v80 = v47;
    v48 = *(v42 + 48);
    v49 = v43;
    v50 = *v82;
    v52 = v86;
    v51 = v87;
    (*v82)(v87, v45, v86);
    v50(v88, &v45[v48], v52);
    v43 = v49;
    v53 = *v49;
    if ((*v49)(v51, 1, v89) == 1 && v53(v88, 1, v89) == 1)
    {
      goto LABEL_6;
    }

    v54 = v44;
    v55 = v52;
    v56 = *v74;
    v57 = v77;
    (*v74)(v77, v87, v52);
    if (v53(v57, 1, v89) == 1)
    {
      v94 = v111;
      v95 = v112;
      v96 = v113;
      v90 = v107;
      v91 = v108;
      v92 = v109;
      v93 = v110;
      (*(*(v80 - 8) + 8))(&v90);
      v68 = *v81;
      (*v81)(v57, v52);
      goto LABEL_17;
    }

    v58 = *v54;
    v59 = v75;
    v60 = v57;
    v61 = v89;
    (*v54)(v75, v60, v89);
    v62 = v76;
    v56();
    if (v53(v62, 1, v61) == 1)
    {
      break;
    }

    v63 = v72;
    v64 = v89;
    v58(v72, v62, v89);
    v65 = sub_21B34AC54();
    v66 = *v71;
    (*v71)(v63, v64);
    v66(v59, v64);
    v52 = v86;
    v45 = v78;
    v44 = v54;
    v42 = TupleTypeMetadata2;
    if ((v65 & 1) == 0)
    {
      v94 = v111;
      v95 = v112;
      v96 = v113;
      v90 = v107;
      v91 = v108;
      v92 = v109;
      v93 = v110;
      (*(*(v80 - 8) + 8))(&v90);
      v67 = *v81;
      (*v81)(v87, v52);
      v67(v88, v52);
      return 0;
    }

LABEL_6:
    v46 = *v81;
    (*v81)(v87, v52);
    v46(v88, v52);
  }

  (*v71)(v59, v89);
  v94 = v111;
  v95 = v112;
  v96 = v113;
  v90 = v107;
  v91 = v108;
  v92 = v109;
  v93 = v110;
  (*(*(v80 - 8) + 8))(&v90);
  v68 = *v81;
  v69 = v62;
  v55 = v86;
  (*v81)(v69, v86);
LABEL_17:
  v68(v87, v55);
  v68(v88, v55);
  return 0;
}

uint64_t ColumnSlice<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v17 = *(a2 + 16);
  v3 = sub_21B34B474();
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[3];
  v15 = v2[2];
  v10 = v2[4];
  v23 = v7;
  v24 = v8;
  v25 = v15;
  v26 = v9;
  v27 = v10;
  ColumnSlice.name.getter(v16);
  sub_21B34AD94();

  v18 = v7;
  v19 = v8;
  v20 = v15;
  v21 = v9;
  v22 = v10;
  v23 = v7;
  v24 = v8;
  v25 = v15;
  v26 = v9;
  v27 = v10;
  type metadata accessor for Column();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_getWitnessTable();
  sub_21B34BB44();
  sub_21B34BAD4();

  sub_21B34AAC4();
  if (v28 != v18)
  {
    v11 = (v14 + 8);
    do
    {
      sub_21B34BB94();
      sub_21B34BB34();
      sub_21B34B484();
      (*v11)(v6, v3);
      sub_21B34AAC4();
    }

    while (v28 != v18);
  }
}

void ColumnSlice<A>.distinct()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  WitnessTable = a2;
  v41 = *(a1 + 16);
  v42 = a3;
  v4 = sub_21B34B474();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_21B34B474();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v39 - v15);
  v18 = *v3;
  v44 = v3[1];
  v17 = v44;
  v45 = v18;
  v19 = v3[3];
  v43 = v3[2];
  v20 = v3[4];
  v71 = WitnessTable;
  WitnessTable = swift_getWitnessTable();
  v72 = sub_21B34A994();
  v68 = 0;
  v69 = 0;
  v70 = 2;
  *&v64 = v18;
  *(&v64 + 1) = v17;
  v21 = v43;
  *&v65 = v43;
  *(&v65 + 1) = v19;
  *&v66 = v20;
  swift_getWitnessTable();
  sub_21B34B194();
  *v55 = v56[0];
  *&v60 = v45;
  *(&v60 + 1) = v44;
  *&v61 = v21;
  *(&v61 + 1) = v19;
  v39 = v20;
  v40 = v19;
  v62 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v23 = sub_21B28EBB0(&qword_27CD7E980);
  v24 = v53;
  v25 = swift_getWitnessTable();
  sub_21B34BA54();
  v60 = v57;
  v61 = v58;
  v62 = *&v59[0];
  v63 = *(v59 + 8);
  *&v64 = v22;
  *(&v64 + 1) = v24;
  *&v65 = v23;
  *(&v65 + 1) = v25;
  sub_21B34B674();
  sub_21B34B644();
  v51 = (v50 + 32);
  v52 = TupleTypeMetadata2 - 8;
  v46 = (v50 + 16);
  v47 = v25;
  v50 += 8;
  while (1)
  {
    while (1)
    {
      *&v57 = v22;
      *(&v57 + 1) = v53;
      *&v58 = v23;
      *(&v58 + 1) = v25;
      v26 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
      {
        v59[0] = v66;
        v59[1] = v67[0];
        *(&v59[1] + 9) = *(v67 + 9);
        v57 = v64;
        v58 = v65;
        (*(*(v26 - 8) + 8))(&v57, v26);

        *&v60 = v45;
        *(&v60 + 1) = v44;
        *&v61 = v43;
        *(&v61 + 1) = v40;
        v62 = v39;
        type metadata accessor for Column();
        swift_getWitnessTable();
        v38 = sub_21B34BB44();
        MEMORY[0x21CEEE2D0](v56, v38);
        v55[0] = *&v56[0];
        *&v55[1] = *(v56 + 8);
        sub_21B2D3D88(v55, v68, v69, v70, v42);
        return;
      }

      v27 = *v16;
      (*v51)(v11, v16 + *(TupleTypeMetadata2 + 48), v4);
      if ((sub_21B34B114() & 1) == 0)
      {
        break;
      }

      (*v50)(v11, v4);
    }

    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 < v27)
    {
      goto LABEL_10;
    }

    sub_21B28DFBC(v27, v28);
    (*v46)(v49, v11, v4);
    sub_21B34B124();
    v29 = v16;
    v30 = v23;
    v31 = v4;
    v32 = v11;
    v33 = TupleTypeMetadata2;
    v34 = v22;
    v35 = v48;
    sub_21B34B104();
    v36 = *v50;
    v37 = v35;
    v22 = v34;
    TupleTypeMetadata2 = v33;
    v11 = v32;
    v4 = v31;
    v23 = v30;
    v16 = v29;
    v25 = v47;
    (*v50)(v37, v4);
    v36(v11, v4);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t ColumnSlice<A>.hashValue.getter(uint64_t a1)
{
  v3 = *(v1 + 2);
  v6 = *v1;
  v7 = v3;
  v8 = *(v1 + 24);
  sub_21B34BBC4();
  ColumnSlice<A>.hash(into:)(v5, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B2925CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  ColumnSlice<A>.hash(into:)(v6, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B292620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v3 + 2);
  v17 = *v3;
  v18 = v12;
  v19 = *(v3 + 24);
  v16[1] = a1;
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB64();
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v11, 1, v6) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v13 + 32))(boxed_opaque_existential_1, v11, v6);
  }

  return result;
}

uint64_t sub_21B292808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v22 = a1;
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(v3 + 2);
  v31 = *v3;
  v32 = v12;
  v33 = *(v3 + 24);
  v13 = type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v34);
  sub_21B2832C0(a2, &v24);
  if (v26)
  {
    sub_21B261720(&v24, &v31);
    sub_21B2616C4(&v31, &v24);
    swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v11, 0, 1, v6);
    sub_21B28E8DC(v11, v22, v13);
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  }

  else
  {
    sub_21B28EEB4(&v24);
    (*(*(v6 - 8) + 56))(v11, 1, 1, v6);
    sub_21B28E8DC(v11, v22, v13);
    (*(v8 + 8))(v11, v7);
  }

  v28 = v34[0];
  v29 = v34[1];
  v30 = v34[2];
  v14 = *(v3 + 2);
  v31 = *v3;
  v32 = v14;
  v33 = *(v3 + 24);

  sub_21B34BAD4();
  v15 = v27;
  v16 = *(v3 + 2);
  v24 = *v3;
  v25 = v16;
  v26 = *(v3 + 24);
  result = sub_21B34AAC4();
  if (v23 < v15)
  {
    __break(1u);
  }

  else
  {
    *&v24 = v15;
    *(&v24 + 1) = v23;
    sub_21B34BAE4();

    v22 = v31;
    v18 = v32;
    v20 = *(v3 + 3);
    v19 = *(v4 + 4);
    v21 = v33;

    *v4 = v22;
    *(v4 + 2) = v18;
    *(v4 + 24) = v21;
  }

  return result;
}

uint64_t sub_21B292B64@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v29[3] = *v4;
  v29[4] = v6;
  v29[5] = v7;
  v29[6] = v8;
  v29[7] = v9;
  v25 = *(a3 + 16);
  v10 = type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v29);
  sub_21B34BAD4();
  result = sub_21B34AAC4();
  if (v27 < v28)
  {
    __break(1u);
  }

  else
  {
    if (v28 == v27)
    {
      v12 = 0;
    }

    else
    {
      v12 = v28;
    }

    if (v28 == v27)
    {
      v13 = 0;
    }

    else
    {
      v13 = v27;
    }

    v14 = a1 == a2;
    if (a1 == a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = a1;
    }

    if (a1 == a2)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2;
    }

    v17 = 2 * v14;
    v18 = sub_21B248CCC(v15, v16, 2 * v14, v12, v13, 2 * (v28 == v27));
    v20 = v19;
    v22 = v21;
    sub_21B23A9F4(v15, v16, v17);
    a4[3] = type metadata accessor for DiscontiguousColumnSlice();
    a4[4] = &off_282CAB618;
    v23 = swift_allocObject();
    *a4 = v23;
    sub_21B28B2B8(v18, v20, v22, v10, v23 + 16);
    sub_21B23A9F4(v18, v20, v22);
  }

  return result;
}

uint64_t sub_21B292D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B233A10(a3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  swift_dynamicCast();
  v5 = *(a4 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B2932D0();
}

uint64_t sub_21B292E5C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5[1];
  v9 = v5[2];
  v8 = v5[3];
  v10 = v5[4];
  v27[3] = *v5;
  v27[4] = v7;
  v27[5] = v9;
  v27[6] = v8;
  v27[7] = v10;
  v24 = *(a4 + 16);
  v11 = type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v27);
  sub_21B34BAD4();
  result = sub_21B34AAC4();
  if (v25 < v26)
  {
    __break(1u);
  }

  else
  {
    if (v26 == v25)
    {
      v13 = 0;
    }

    else
    {
      v13 = v26;
    }

    if (v26 == v25)
    {
      v14 = 0;
    }

    else
    {
      v14 = v25;
    }

    v15 = sub_21B248CCC(a1, a2, a3, v13, v14, 2 * (v26 == v25));
    v17 = v16;
    v19 = v18;
    a5[3] = type metadata accessor for DiscontiguousColumnSlice();
    a5[4] = &off_282CAB618;
    v20 = swift_allocObject();
    *a5 = v20;
    sub_21B28B2B8(v15, v17, v19, v11, v20 + 16);
    sub_21B23A9F4(v15, v17, v19);
  }

  return result;
}

uint64_t sub_21B293018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v16 = *v2;
  v17 = v5;
  v18 = v7;
  v19 = v6;
  v20 = v8;
  v9 = ColumnSlice.name.getter(a1);
  v11 = v10;
  v15[0] = v16;
  v15[1] = v5;
  v15[2] = v7;
  v15[3] = v6;
  v15[4] = v8;
  v12 = *(a1 + 16);
  a2[3] = type metadata accessor for Column();
  a2[4] = &off_282CAA128;

  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v9, v11, v15, v12, a1, WitnessTable, a2);
}

uint64_t sub_21B293134(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_21B29318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(v11 - v8, a1);
  v11[1] = a2;
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  return sub_21B34BB74();
}

uint64_t sub_21B2932D0()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_21B34B934();
}

uint64_t sub_21B29338C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2933C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2934A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2934DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21B293524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PackedOptionalsBuffer.rawBuffer.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t static Alignment.roundToAligment(_:)(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = result + 62;
    }

    v2 = v1 >> 6;
    if ((v2 - 0x1FFFFFFFFFFFFFFLL) >> 58 == 63)
    {
      return (v2 << 6) + 64;
    }
  }

  __break(1u);
  return result;
}

unint64_t static PackedOptionalsBuffer.nilBitmapSize(capacity:)(unint64_t result)
{
  v1 = result + 7;
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    if (v1 < 0)
    {
      v1 = result + 14;
    }

    v2 = v1 >> 3;
    v4 = v2 - 1;
    v3 = v2 < 1;
    v5 = v2 + 62;
    if (!v3)
    {
      v5 = v4;
    }

    return (v5 & 0xFFFFFFFFFFFFFFC0) + 64;
  }

  return result;
}

unint64_t PackedOptionalsBuffer.nilBitmapSize.getter()
{
  if (!*v0)
  {
    goto LABEL_7;
  }

  v1 = **v0;
  v2 = __OFADD__(v1, 7);
  v3 = v1 + 7;
  if (v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = v3 / 8;
  v6 = v4 - 1;
  v5 = v4 < 1;
  v7 = v4 + 62;
  if (!v5)
  {
    v7 = v6;
  }

  return (v7 & 0xFFFFFFFFFFFFFFC0) + 64;
}

uint64_t PackedOptionalsBuffer.capacity.getter()
{
  if (*v0)
  {
    return **v0;
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.headerAddress.getter()
{
  result = *v0;
  if (!*v0)
  {
    __break(1u);
  }

  return result;
}

unint64_t PackedOptionalsBuffer.firstElementAddress.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_9;
  }

  v2 = *v1 + 7;
  if (__OFADD__(*v1, 7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    v2 = *v1 + 14;
  }

  v3 = v2 >> 3;
  v5 = v3 - 1;
  v4 = v3 < 1;
  v6 = v3 + 62;
  if (!v4)
  {
    v6 = v5;
  }

  return v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 128;
}

uint64_t PackedOptionalsBuffer.elementsBuffer.getter(uint64_t result)
{
  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_7;
  }

  if (__OFADD__(*v2, 7))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (*v2 + 7 < 0)
  {
    v3 = *v2 + 14;
  }

  v4 = *(result + 16);
  return sub_21B34B4A4();
}

uint64_t PackedOptionalsBuffer.count.getter()
{
  if (*v0)
  {
    return *(*v0 + 8);
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.count.setter(uint64_t result)
{
  if (*v1)
  {
    *(*v1 + 8) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PackedOptionalsBuffer.count.modify(void *result)
{
  v2 = *v1;
  result[1] = *v1;
  if (v2)
  {
    *result = *(v2 + 8);
    return sub_21B293784;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PackedOptionalsBuffer.nilCount.getter()
{
  if (*v0)
  {
    return *(*v0 + 16);
  }

  __break(1u);
  return result;
}

uint64_t PackedOptionalsBuffer.nilCount.setter(uint64_t result)
{
  if (*v1)
  {
    *(*v1 + 16) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PackedOptionalsBuffer.nilCount.modify(void *result)
{
  v2 = *v1;
  result[1] = *v1;
  if (v2)
  {
    *result = *(v2 + 16);
    return sub_21B293800;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PackedOptionalsBuffer.init(rawBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static PackedOptionalsBuffer.allocate(capacity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = a1 + 14;
  if (v3 >= 0)
  {
    v6 = a1 + 7;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = *(*(a2 - 8) + 72);
  v12 = v11 * a1;
  if ((v11 * a1) >> 64 != (v11 * a1) >> 63)
  {
    goto LABEL_13;
  }

  v13 = v10 & 0xFFFFFFFFFFFFFFC0;
  v14 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v15 = v14 + v12;
  if (__OFADD__(v14, v12))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = swift_slowAlloc();
  v18[0] = a1;
  v17 = type metadata accessor for PackedOptionalsBuffer.Header();
  v18[1] = 0;
  v18[2] = 0;
  (*(*(v17 - 8) + 32))(v16, v18, v17);
  if (v3 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (v13 != -64)
  {
    bzero((v16 + 64), v13 + 64);
  }

  *a3 = v16;
  a3[1] = v16 + v15;
}

uint64_t PackedOptionalsBuffer.Header.init(capacity:count:nilCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void PackedOptionalsBuffer.init(copying:capacity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v51 = a3;
  v6 = *(*(a3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v7;
  if (!*v7)
  {
    goto LABEL_50;
  }

  if (*v11 > a2)
  {
    __break(1u);
    goto LABEL_42;
  }

  v12 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v12 < 0)
  {
    v12 = a2 + 14;
  }

  v13 = v12 >> 3;
  v15 = v13 - 1;
  v14 = v13 < 1;
  v16 = v13 + 62;
  if (!v14)
  {
    v16 = v15;
  }

  v17 = *(v8 + 72);
  v18 = v17 * a2;
  if ((v17 * a2) >> 64 != (v17 * a2) >> 63)
  {
    goto LABEL_43;
  }

  v19 = v16 & 0xFFFFFFFFFFFFFFC0;
  v20 = (v16 & 0xFFFFFFFFFFFFFFC0) + 128;
  v21 = v20 + v18;
  if (__OFADD__(v20, v18))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v48 = v8;
  v22 = swift_slowAlloc();
  *&v54 = v22;
  *(&v54 + 1) = v22 + v21;
  if (!v22)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v23 = v22;
  v52 = a2;
  v53 = *(v11 + 1);
  v24 = type metadata accessor for PackedOptionalsBuffer.Header();
  (*(*(v24 - 8) + 32))(v23, &v52, v24);
  v50 = v54;
  v25 = v54;
  if (!v54)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v26 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (!v26)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v27 = *v11 + 7;
  if (__OFADD__(*v11, 7))
  {
    goto LABEL_45;
  }

  if (v27 < 0)
  {
    v27 = *v11 + 14;
  }

  v28 = v27 >> 3;
  v29 = v28 - 1;
  v14 = v28 < 1;
  v30 = v28 + 62;
  if (!v14)
  {
    v30 = v29;
  }

  memcpy((v25 + 64), v26, (v30 & 0xFFFFFFFFFFFFFFC0) + 64);
  v31 = *v11 + 7;
  v32 = __OFADD__(*v11, 7);
  if (__OFADD__(*v11, 7))
  {
    goto LABEL_46;
  }

  v33 = *v11 + 14;
  if (v31 >= 0)
  {
    v33 = *v11 + 7;
  }

  v34 = v33 >> 3;
  v35 = v34 - 1;
  v36 = v34 + 62;
  if (v35 >= 0)
  {
    v36 = v35;
  }

  v37 = v36 & 0xFFFFFFFFFFFFFFC0;
  if ((v19 - v37) < 0)
  {
    goto LABEL_47;
  }

  if (v19 != v37)
  {
    bzero((v25 + 64 + v37 + 64), v19 - v37);
    v31 = *v11 + 7;
    v32 = __OFADD__(*v11, 7);
  }

  if (v32)
  {
    goto LABEL_48;
  }

  v38 = v31 / 8;
  v39 = v38 - 1;
  v14 = v38 < 1;
  v40 = v38 + 62;
  if (!v14)
  {
    v40 = v39;
  }

  v41 = *(v25 + 8);
  if (v41 < 0)
  {
    goto LABEL_49;
  }

  v49 = a4;
  if (v41)
  {
    v42 = 0;
    v43 = v25 + v20;
    v44 = v11 + (v40 & 0xFFFFFFFFFFFFFFC0) + 128;
    v45 = (v48 + 16);
    v46 = (v48 + 32);
    do
    {
      if ((*(PackedOptionalsBuffer.nilBitmapBuffer.getter() + (v42 >> 3)) >> (v42 & 7)))
      {
        v47 = v51;
        (*v45)(v10, v44, v51);
        (*v46)(v43, v10, v47);
      }

      ++v42;
      v44 += v17;
      v43 += v17;
    }

    while (v41 != v42);
  }

  *v49 = v50;
}

Swift::Bool __swiftcall PackedOptionalsBuffer.isNil(at:)(Swift::Int at)
{
  v2 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v3 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + at / 8);
  v4 = 1 << v2;
  if (v2 < 0)
  {
    v4 = 0;
  }

  return (v4 & v3) == 0;
}

void PackedOptionalsBuffer.init(moving:capacity:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_55;
  }

  if (*v4 > a2)
  {
    __break(1u);
    goto LABEL_46;
  }

  v7 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v7 < 0)
  {
    v7 = a2 + 14;
  }

  v8 = v7 >> 3;
  v10 = v8 - 1;
  v9 = v8 < 1;
  v11 = v8 + 62;
  if (!v9)
  {
    v11 = v10;
  }

  v12 = *(*(a3 - 8) + 72);
  v13 = v12 * a2;
  if ((v12 * a2) >> 64 != (v12 * a2) >> 63)
  {
    goto LABEL_47;
  }

  v14 = v11 & 0xFFFFFFFFFFFFFFC0;
  v15 = (v11 & 0xFFFFFFFFFFFFFFC0) + 128;
  v16 = v15 + v13;
  if (__OFADD__(v15, v13))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v42 = v15;
  v17 = swift_slowAlloc();
  *&v46 = v17;
  *(&v46 + 1) = v17 + v16;
  if (!v17)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v18 = v17;
  v44 = a2;
  v45 = *(v4 + 1);
  v19 = type metadata accessor for PackedOptionalsBuffer.Header();
  (*(*(v19 - 8) + 32))(v18, &v44, v19);
  v43 = v46;
  v20 = v46;
  if (!v46)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v21 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (v21)
  {
    v22 = *v4 + 7;
    if (!__OFADD__(*v4, 7))
    {
      if (v22 < 0)
      {
        v22 = *v4 + 14;
      }

      v23 = v22 >> 3;
      v24 = v23 - 1;
      v9 = v23 < 1;
      v25 = v23 + 62;
      if (!v9)
      {
        v25 = v24;
      }

      memcpy((v20 + 64), v21, (v25 & 0xFFFFFFFFFFFFFFC0) + 64);
      v26 = *v4 + 7;
      v27 = __OFADD__(*v4, 7);
      if (!__OFADD__(*v4, 7))
      {
        v28 = *v4 + 14;
        if (v26 >= 0)
        {
          v28 = *v4 + 7;
        }

        v29 = v28 >> 3;
        v30 = v29 - 1;
        v31 = v29 + 62;
        if (v30 >= 0)
        {
          v31 = v30;
        }

        v32 = v31 & 0xFFFFFFFFFFFFFFC0;
        if ((v14 - v32) >= 0)
        {
          if (v14 != v32)
          {
            bzero((v20 + 64 + v32 + 64), v14 - v32);
            v26 = *v4 + 7;
            v27 = __OFADD__(*v4, 7);
          }

          if (!v27)
          {
            v33 = v26 / 8;
            v34 = v33 - 1;
            v9 = v33 < 1;
            v35 = v33 + 62;
            if (!v9)
            {
              v35 = v34;
            }

            v36 = *(v20 + 8);
            if ((v36 & 0x8000000000000000) == 0)
            {
              if (v36)
              {
                v37 = 0;
                v38 = v20 + v42;
                v39 = v4 + (v35 & 0xFFFFFFFFFFFFFFC0) + 128;
                do
                {
                  if ((*(PackedOptionalsBuffer.nilBitmapBuffer.getter() + (v37 >> 3)) >> (v37 & 7)))
                  {
                    sub_21B34B464();
                  }

                  ++v37;
                  v39 += v12;
                  v38 += v12;
                }

                while (v36 != v37);
              }

              v40 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
              if (!v40)
              {
                goto LABEL_44;
              }

              if ((v41 & 0x8000000000000000) == 0)
              {
                if (v41)
                {
                  bzero(v40, v41);
                }

LABEL_44:
                v4[2] = *(v20 + 8);
                *a4 = v43;
                return;
              }

              goto LABEL_54;
            }

LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_58:
  __break(1u);
}

Swift::Void __swiftcall PackedOptionalsBuffer.setNil(at:)(Swift::Int at)
{
  v2 = at / 8;
  v3 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v4 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (v3 >= 0)
  {
    v5 = ~(1 << v3);
  }

  else
  {
    v5 = -1;
  }

  *(v4 + v2) &= v5;
}

Swift::Void __swiftcall PackedOptionalsBuffer.setNonNil(at:)(Swift::Int at)
{
  v2 = at / 8;
  v3 = at - (v1 & 0xFFFFFFFFFFFFFFF8);
  v4 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  v5 = 1 << v3;
  if (v3 < 0)
  {
    LOBYTE(v5) = 0;
  }

  *(v4 + v2) |= v5;
}

Swift::Void __swiftcall PackedOptionalsBuffer.resize(by:)(Swift::Int by)
{
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_35;
  }

  v4 = *v3 + 7;
  if (__OFADD__(*v3, 7))
  {
    goto LABEL_29;
  }

  if (v4 < 0)
  {
    v4 = *v3 + 14;
  }

  v5 = v4 >> 3;
  v7 = v5 - 1;
  v6 = v5 < 1;
  v8 = v5 + 62;
  if (!v6)
  {
    v8 = v7;
  }

  if ((by & 0x8000000000000000) == 0)
  {
    v9 = v3[2];
    v10 = __OFADD__(v9, by);
    v11 = v9 + by;
    if (v10)
    {
      goto LABEL_31;
    }

    v3[2] = v11;
    goto LABEL_13;
  }

  v12 = v3[1];
  v13 = v12 + by;
  if (__OFADD__(v12, by))
  {
    goto LABEL_32;
  }

  if (v12 < v13)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (v13 != v12)
  {
    if (v13 < v12)
    {
      v16 = v1;
      while (1)
      {
        v19 = v13 - (v8 & 0xFFFFFFFFFFFFFFF8);
        v20 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + v13 / 8);
        if (v19 >= 0)
        {
          v21 = 1 << v19;
        }

        else
        {
          v21 = 0;
        }

        if ((v21 & v20) != 0)
        {
          v17 = *(*(*(v16 + 16) - 8) + 72);
          sub_21B34B454();
          v18 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
          if (v19 >= 0)
          {
            LOBYTE(v8) = ~(1 << v19);
          }

          else
          {
            LOBYTE(v8) = -1;
          }

          *(v18 + v13 / 8) &= v8;
        }

        else
        {
          v22 = v3[2];
          v10 = __OFSUB__(v22, 1);
          v8 = v22 - 1;
          if (v10)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v3[2] = v8;
        }

        if (v12 == ++v13)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_34;
  }

LABEL_13:
  v14 = v3[1];
  v10 = __OFADD__(v14, by);
  v15 = v14 + by;
  if (v10)
  {
    goto LABEL_30;
  }

  v3[1] = v15;
}

Swift::Void __swiftcall PackedOptionalsBuffer.clear(at:)(Swift::Int at)
{
  v4 = v1;
  v5 = at / 8;
  v6 = at - (v2 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + at / 8);
  if (v6 >= 0)
  {
    v8 = 1 << v6;
  }

  else
  {
    v8 = 0;
  }

  if ((v8 & v7) != 0)
  {
    v9 = *v3;
    if (*v3)
    {
      if (__OFADD__(*v9, 7))
      {
        __break(1u);
      }

      else
      {
        if (*v9 + 7 < 0)
        {
          v10 = *v9 + 14;
        }

        v11 = *(*(*(v4 + 16) - 8) + 72);
        sub_21B34B454();
        v12 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
        if (v6 >= 0)
        {
          v13 = ~(1 << v6);
        }

        else
        {
          v13 = -1;
        }

        *(v12 + v5) &= v13;
        v14 = v9[2];
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (!v15)
        {
          v9[2] = v16;
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t PackedOptionalsBuffer.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  (*(v6 + 16))(v10, a1, v5);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    result = (*(v6 + 8))(v10, v5);
    v19 = *v2;
    if (!*v2)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v19[2] = v22;
LABEL_16:
    v36 = v19[1];
    v21 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (!v21)
    {
      v19[1] = v37;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = *(v11 + 32);
  result = v23(v17, v10, v4);
  v19 = *v2;
  if (*v2)
  {
    v24 = *v19 + 7;
    if (__OFADD__(*v19, 7))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v24 < 0)
    {
      v24 = *v19 + 14;
    }

    v25 = v24 >> 3;
    v27 = v25 - 1;
    v26 = v25 < 1;
    v28 = v25 + 62;
    if (!v26)
    {
      v28 = v27;
    }

    v29 = v19 + (v28 & 0xFFFFFFFFFFFFFFC0) + *(v11 + 72) * v19[1];
    (*(v11 + 16))(v15, v17, v4);
    v23((v29 + 128), v15, v4);
    v30 = v19[1];
    v31 = v30 + 7;
    if (v30 >= 0)
    {
      v31 = v19[1];
    }

    v32 = v31 >> 3;
    v33 = v30 - (v31 & 0xFFFFFFFFFFFFFFF8);
    v34 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    v35 = 1 << v33;
    if (v33 < 0)
    {
      LOBYTE(v35) = 0;
    }

    *(v34 + v32) |= v35;
    result = (*(v11 + 8))(v17, v4);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall PackedOptionalsBuffer.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_28;
  }

  if (__OFADD__(*v4, 7))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    MEMORY[0x2821FE280](a1, a2, v2);
    return;
  }

  v5 = a2;
  v6 = a1;
  v28 = v2;
  v7 = (*v4 + 7) / 8;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = v4 + (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = a1 - (v4 & 0xFFFFFFFFFFFFFFF8);
  v27 = a1 / 8;
  LOBYTE(v13) = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + a1 / 8);
  if (v12 >= 0)
  {
    v14 = 1 << v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = (v13 & v14);
  v16 = v5 - (v13 & 0xFFFFFFFFFFFFFFF8);
  v17 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + v5 / 8);
  if (v16 >= 0)
  {
    v18 = 1 << v16;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  v19 = v17 & v18;
  if (v15)
  {
    v20 = *(*(*(v28 + 16) - 8) + 72);
    a2 = v11 + v20 * v6;
    if (v19)
    {
      a1 = v11 + v20 * v5;
      v2 = *(v28 + 16);

      goto LABEL_29;
    }

    sub_21B34B464();
    v26 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    *(v26 + v5 / 8) |= v18;
    v23 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    if (v12 >= 0)
    {
      v24 = ~(1 << v12);
    }

    else
    {
      v24 = -1;
    }

    v25 = v27;
  }

  else
  {
    if (!v19)
    {
      return;
    }

    v21 = *(*(*(v28 + 16) - 8) + 72);
    sub_21B34B464();
    v22 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    *(v22 + v27) |= v14;
    v23 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    if (v16 >= 0)
    {
      v24 = ~(1 << v16);
    }

    else
    {
      v24 = -1;
    }

    v25 = v5 / 8;
  }

  *(v23 + v25) &= v24;
}

Swift::Void __swiftcall PackedOptionalsBuffer.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_29;
  }

  if (__OFADD__(*v4, 7))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v33 = v2;
  v6 = (*v4 + 7) / 8;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  v31 = *v3;
  v10 = from - (v9 & 0xFFFFFFFFFFFFFFF8);
  v32 = from / 8;
  LODWORD(v11) = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + from / 8);
  if (v10 >= 0)
  {
    v12 = 1 << v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 & v11;
  v14 = to - (v11 & 0xFFFFFFFFFFFFFFF8);
  v30 = to / 8;
  v15 = *(PackedOptionalsBuffer.nilBitmapBuffer.getter() + to / 8);
  if (v14 >= 0)
  {
    v16 = 1 << v14;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  LOBYTE(v17) = v15 & v16;
  if (v13)
  {
    v18 = *(*(*(v33 + 16) - 8) + 72);
    if (v10 >= 0)
    {
      v19 = ~(1 << v10);
    }

    else
    {
      v19 = -1;
    }

    if (!v17)
    {
      sub_21B34B464();
      v28 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      *(v28 + v32) &= v19;
      v29 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      *(v29 + v30) |= v16;
      return;
    }

    sub_21B34B444();
    v20 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    v21 = v31;
    *(v20 + v32) &= v19;
    v22 = v31[2];
    v23 = __OFADD__(v22, 1);
    v17 = v22 + 1;
    if (!v23)
    {
LABEL_24:
      v21[2] = v17;
      return;
    }

    __break(1u);
  }

  if (v17)
  {
    v24 = *(*(*(v33 + 16) - 8) + 72);
    sub_21B34B454();
    v25 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
    if (v14 >= 0)
    {
      v26 = ~(1 << v14);
    }

    else
    {
      v26 = -1;
    }

    *(v25 + v30) &= v26;
    v21 = v31;
    v27 = v31[2];
    v23 = __OFADD__(v27, 1);
    v17 = v27 + 1;
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }
}

Swift::Int __swiftcall PackedOptionalsBuffer.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PackedOptionalsBuffer.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall PackedOptionalsBuffer.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

BOOL PackedOptionalsBuffer.isEmpty.getter()
{
  if (*v0)
  {
    return *(*v0 + 8) == 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B294AC4()
{
  if (*v0)
  {
    return *(*v0 + 8);
  }

  __break(1u);
  return result;
}

void *PackedOptionalsBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 / 8;
  v8 = a1 - (a3 & 0xFFFFFFFFFFFFFFF8);
  result = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  v10 = 1 << v8;
  if (v8 < 0)
  {
    LOBYTE(v10) = 0;
  }

  if ((v10 & *(result + v7)) != 0)
  {
    v11 = *v3;
    if (*v3)
    {
      v12 = *v11 + 7;
      if (!__OFADD__(*v11, 7))
      {
        if (v12 < 0)
        {
          v12 = *v11 + 14;
        }

        v13 = v12 >> 3;
        v15 = v13 - 1;
        v14 = v13 < 1;
        v16 = v13 + 62;
        if (!v14)
        {
          v16 = v15;
        }

        v17 = *(a2 + 16);
        v22 = *(v17 - 8);
        (*(v22 + 16))(a3, v11 + (v16 & 0xFFFFFFFFFFFFFFC0) + *(v22 + 72) * a1 + 128, v17);
        v18 = *(v22 + 56);
        v19 = a3;
        v20 = 0;
        v21 = v17;
        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v21 = *(a2 + 16);
  v18 = *(*(v21 - 8) + 56);
  v19 = a3;
  v20 = 1;
LABEL_12:

  return v18(v19, v20, 1, v21);
}

void *sub_21B294C6C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a2;
  v9 = *a1;
  v7 = type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.subscript.getter(v6, v7, a4);
}

void *sub_21B294CD0(uint64_t a1, __int128 *a2, Swift::Int *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 8);
  v8 = sub_21B34B474();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *a3;
  (*(v13 + 16))(&v16 - v10, a1);
  v16 = *a2;
  v14 = type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.subscript.setter(v11, v12, v14);
}

void *PackedOptionalsBuffer.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  (*(v8 + 16))(v12, a1, v7);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    v19 = *(v8 + 8);
    v19(v12, v7);
    PackedOptionalsBuffer.clear(at:)(a2);
    return (v19)(a1, v7);
  }

  v48 = a1;
  v49 = v18;
  v21 = *(v13 + 32);
  v21(v18, v12, v6);
  v23 = a2 - (v22 & 0xFFFFFFFFFFFFFFF8);
  result = PackedOptionalsBuffer.nilBitmapBuffer.getter();
  if (v23 >= 0)
  {
    v24 = 1 << v23;
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  if ((*(result + a2 / 8) & v24) == 0)
  {
    v32 = *v3;
    if (!*v3)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v46 = a2 / 8;
    v47 = v21;
    v33 = *v32 + 7;
    v34 = v49;
    if (!__OFADD__(*v32, 7))
    {
      if (v33 < 0)
      {
        v33 = *v32 + 14;
      }

      v35 = v33 >> 3;
      v36 = v35 - 1;
      v29 = v35 < 1;
      v37 = v35 + 62;
      if (!v29)
      {
        v37 = v36;
      }

      v38 = v32 + (v37 & 0xFFFFFFFFFFFFFFC0) + *(v13 + 72) * a2;
      v39 = *(v13 + 16);
      v40 = v50;
      v45 = v32;
      v39(v50, v49, v6);
      v47(v38 + 128, v40, v6);
      v41 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      *(v41 + v46) |= v24;
      (*(v8 + 8))(v48, v7);
      result = (*(v13 + 8))(v34, v6);
      v42 = v45[2];
      v43 = __OFSUB__(v42, 1);
      v44 = v42 - 1;
      if (!v43)
      {
        v45[2] = v44;
        return result;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = *v3;
  if (!*v3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = *v25 + 7;
  v27 = v48;
  if (__OFADD__(*v25, 7))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v26 < 0)
  {
    v26 = *v25 + 14;
  }

  v28 = v26 >> 3;
  v30 = v28 - 1;
  v29 = v28 < 1;
  v31 = v28 + 62;
  if (!v29)
  {
    v31 = v30;
  }

  (*(v13 + 40))(v25 + (v31 & 0xFFFFFFFFFFFFFFC0) + *(v13 + 72) * a2 + 128, v49, v6);
  return (*(v8 + 8))(v27, v7);
}

void (*PackedOptionalsBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(Swift::Int **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v11 = sub_21B34B474();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  PackedOptionalsBuffer.subscript.getter(a2, a3, v14);
  return sub_21B2952AC;
}

void sub_21B2952AC(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    PackedOptionalsBuffer.subscript.setter(v3, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[2];
    PackedOptionalsBuffer.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_21B295380(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = PackedOptionalsBuffer.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

uint64_t sub_21B295408(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v6 = *a2;
  return sub_21B2DBAB4(v7, &v6, a3, a4);
}

void (*sub_21B295440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_21B2D9394(v8, a2, a3, a4);
  return sub_21B28A810;
}

uint64_t sub_21B29555C@<X0>(uint64_t *a1@<X8>)
{
  result = PackedOptionalsBuffer.underestimatedCount.getter();
  *a1 = result;
  return result;
}

void (*sub_21B295584(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B29560C(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B29560C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  PackedOptionalsBuffer.subscript.getter(a2, a3, v9);
  return sub_21B2854A4;
}

uint64_t sub_21B2956E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B2D9760(a1, a2, WitnessTable, a3);
}

uint64_t sub_21B29574C()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

__n128 sub_21B2957C0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_21B2957D4()
{
  v2 = *v0;
  swift_getWitnessTable();
  return sub_21B2DBAB0();
}

double PackedOptionalsBuffer.init()@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  static PackedOptionalsBuffer.allocate(capacity:)(0, a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void PackedOptionalsBuffer.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, void (**a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21B34B1D4();

  PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, v12, a3, a4, a5, a6);
}

void PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, Swift::Int a2, uint64_t a3, void (**a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = *(a5 + 16);
  v17 = sub_21B34B474();
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  v66 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v22 = *(v64 + 64);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = MEMORY[0x28223BE20](v23);
  v70 = (&v59 - v26);
  v27 = *v8;
  if (!*v8)
  {
    goto LABEL_93;
  }

  v28 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_69;
  }

  v68 = v20;
  v29 = a3 - v28;
  if (__OFSUB__(a3, v28))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (__OFADD__(a2, v29))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v71 = v17;
  v30 = *(v27 + 8);
  if (__OFSUB__(v30, a2))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v60 = a2 + v29;
  v63 = v24;
  if (v29 >= 1)
  {
    PackedOptionalsBuffer.resize(by:)(a3 - v28);
    if (v30 >= a2)
    {
      if (v30 != a2)
      {
        while (v30 > a2)
        {
          if (__OFADD__(--v30, v29))
          {
            goto LABEL_47;
          }

          PackedOptionalsBuffer.swapAt(_:_:)(v30, v30 + v29);
          if (a2 == v30)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_12:
      v61 = a3;
      sub_21B34B1B4();
      v67 = a4;
      v69 = a7;
      v59 = a1;
      if (a1 != a2)
      {
        v32 = v59;
        if (a2 < v59)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        if (v59 >= a2)
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v65 = (v62 + 16);
        do
        {
          v72 = (v32 + 1);
          v33 = sub_21B34B314();
          v34 = v68;
          (*v65)(v68);
          v33(v73, 0);
          PackedOptionalsBuffer.subscript.setter(v34, v32, a5);
          sub_21B34B244();
          v32 = v72;
        }

        while (a2 != v72);
      }

      if (v60 >= a2)
      {
        v35 = v70;
        if (v60 == a2)
        {
LABEL_64:
          (*(v64 + 8))(v35, v63);
          return;
        }

        if (v60 > a2)
        {
          v72 = (v62 + 16);
          v65 = (v61 + v59);
          v36 = v68;
          v37 = v70;
          do
          {
            v38 = sub_21B34B314();
            (*v72)(v36);
            v38(v73, 0);
            PackedOptionalsBuffer.subscript.setter(v36, a2, a5);
            sub_21B34B244();
            ++a2;
          }

          while (v65 != a2);
          v35 = v37;
          goto LABEL_64;
        }

        goto LABEL_88;
      }

      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v65 = (v30 - a2);
  v72 = v25;
  sub_21B34B1B4();
  if (a3 < 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v59 = a1;
  v61 = a3;
  v39 = v66;
  v31 = v72;
  if (a3)
  {
    v67 = (v62 + 16);
    v40 = v61;
    v41 = v59;
    while (1)
    {
      v69 = v40;
      v42 = v39;
      v70 = sub_21B34B314();
      v43 = v68;
      (*v67)(v68);
      (v70)(v73, 0);
      PackedOptionalsBuffer.subscript.setter(v43, v41, a5);
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v41;
      sub_21B34B244();
      v40 = v69 - 1;
      v31 = v72;
      v39 = v42;
      if (v69 == 1)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_28:
  if (!v29)
  {
LABEL_48:
    v35 = v31;
    goto LABEL_64;
  }

  v44 = -v29;
  if (__OFSUB__(0, v29))
  {
    goto LABEL_75;
  }

  v45 = v61;
  if (v44 < v65)
  {
    v46 = a2 - v29;
    if (__OFADD__(a2, v44))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v46 < a2)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v46 != a2)
    {
      if (v46 <= a2)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v47 = a2 - (v61 + v59);
      v48 = a2;
      while (!__OFADD__(v48, v29))
      {
        v49 = v48 + 1;
        PackedOptionalsBuffer.move(from:to:)(v48, v48 + v29);
        v48 = v49;
        if (!--v47)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_66;
    }

LABEL_38:
    v50 = v65 + a2;
    if (__OFADD__(a2, v65))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v50 < v46)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (v46 != v50)
    {
      if (v46 >= v50)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v51 = v30 + v61 + v59 - 2 * a2;
      while (!__OFSUB__(v46, v44))
      {
        PackedOptionalsBuffer.move(from:to:)(v46, v46 + v29);
        ++v46;
        if (!--v51)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_68;
    }

LABEL_63:
    PackedOptionalsBuffer.resize(by:)(v29);
    v35 = v72;
    goto LABEL_64;
  }

  v52 = v65 + a2;
  if (__OFADD__(a2, v65))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v52 < a2)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v52 != a2)
  {
    if (v52 <= a2)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v53 = a2;
    while (!__OFADD__(v53, v29))
    {
      v54 = v53 + 1;
      PackedOptionalsBuffer.move(from:to:)(v53, v53 + v29);
      v53 = v54;
      if (v30 == v54)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_67;
  }

LABEL_56:
  v55 = v65 + v60;
  if (__OFADD__(v60, v65))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v56 = v60 - v29;
  if (__OFADD__(v60, v44))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v56 < v55)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v55 == v56)
  {
    goto LABEL_63;
  }

  if (v55 < v56)
  {
    v57 = 2 * a2 - v30 - v45 - v59;
    do
    {
      v58 = v55 + 1;
      PackedOptionalsBuffer.clear(at:)(v55);
      v55 = v58;
      --v57;
    }

    while (v57);
    goto LABEL_63;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t sub_21B296024(uint64_t *a1, void (**a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  PackedOptionalsBuffer.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_21B2960D0(uint64_t a1, uint64_t a2)
{
  PackedOptionalsBuffer.append(_:)(a1, a2);
  v4 = *(a2 + 16);
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t PackedOptionalsBuffer.customMirror.getter()
{
  v1 = sub_21B34BC44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v10 = *v0;
  v9 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  result = swift_allocObject();
  *(result + 16) = xmmword_21B352090;
  *(result + 32) = 0x7974696361706163;
  *(result + 40) = 0xE800000000000000;
  if (v10)
  {
    v12 = MEMORY[0x277D83B88];
    *(result + 48) = *v10;
    *(result + 72) = v12;
    *(result + 80) = 0x746E756F63;
    *(result + 88) = 0xE500000000000000;
    *(result + 96) = v10[1];
    *(result + 120) = v12;
    *(result + 128) = 0x746E756F436C696ELL;
    *(result + 136) = 0xE800000000000000;
    v13 = v10[2];
    *(result + 168) = v12;
    *(result + 144) = v13;
    v15[0] = v10;
    v15[1] = v9;
    v14 = sub_21B34BC34();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_21B32F190(v4);
    return sub_21B34BC54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B296610()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B29664C(uint64_t a1, int a2)
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

uint64_t sub_21B29666C(uint64_t result, int a2, int a3)
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

uint64_t sub_21B296694()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2966F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v34 = &v33 - v11;
  v39 = *(AssociatedTypeWitness - 8);
  v12 = *(v39 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v38 = sub_21B34AFD4();
  v46 = v38;
  v17 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v18 = sub_21B34AFD4();
  v40 = a3;
  v19 = sub_21B2E97E8(v18, AssociatedTypeWitness, v17, a3);

  v45 = v19;
  sub_21B34B1B4();
  v20 = v44;
  sub_21B34B234();
  if (v20 == v41)
  {
    v21 = v38;
LABEL_13:

    return v21;
  }

  v22 = (v39 + 16);
  v37 = (v39 + 8);
  v38 = a2;
  v39 = v3;
  while (1)
  {
    v43 = v20;
    v23 = sub_21B34B314();
    v24 = *v22;
    (*v22)(v16);
    v23(&v41, 0);
    sub_21B34AA14();
    if (v42)
    {
      break;
    }

    v28 = v41;
    v29 = sub_21B34B054();
    sub_21B34AFC4();
    v30 = v46;
    result = sub_21B305254(v28, v46);
    v31 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_15;
    }

    if (v31 < v20)
    {
      goto LABEL_17;
    }

    v32 = v30 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28 + *(TupleTypeMetadata2 + 48);
    sub_21B28DFBC(v20, v31);
    nullsub_14(v29);
LABEL_4:
    sub_21B34B244();
    (*v37)(v16, AssociatedTypeWitness);
    v20 = v44;
    sub_21B34B234();
    if (v20 == v41)
    {
      v21 = v46;
      goto LABEL_13;
    }
  }

  (v24)(v36, v16, AssociatedTypeWitness);
  v41 = sub_21B34B004();
  v42 = 0;
  sub_21B34AA04();
  result = sub_21B34AA24();
  v26 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    if (v26 < v20)
    {
      goto LABEL_16;
    }

    v27 = &v34[*(TupleTypeMetadata2 + 48)];
    (v24)(v34, v16, AssociatedTypeWitness);
    *v27 = v20;
    *(v27 + 1) = v26;
    v27[16] = 0;
    sub_21B34B054();
    sub_21B34B024();
    goto LABEL_4;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21B296B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v55 - v10;
  v11 = *(a2 + 24);
  v12 = sub_21B34B424();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v55 - v18;
  v67 = *(v6 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v69 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21B34B474();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v70 = v11;
  v28 = type metadata accessor for _RangeSetStorage();
  swift_getWitnessTable();
  v29 = sub_21B34B2B4();
  v68 = v3;
  if ((v29 & 1) == 0)
  {
    v60 = v25;
    swift_getWitnessTable();
    sub_21B34AB34();
    result = (*(v13 + 48))(v27, 1, v12);
    if (result == 1)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v31 = v67;
    v32 = v69;
    (*(v67 + 16))(v69, &v27[*(v12 + 36)], v6);
    (*(v13 + 8))(v27, v12);
    v33 = sub_21B34ABB4();
    result = (*(v31 + 8))(v32, v6);
    v25 = v60;
    if ((v33 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  result = sub_21B34B404();
  if (result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (sub_21B34B2B4())
  {
    goto LABEL_12;
  }

  swift_getWitnessTable();
  sub_21B34AB34();
  result = (*(v13 + 48))(v25, 1, v12);
  if (result != 1)
  {
    v34 = v67;
    v35 = &v25[*(v12 + 36)];
    v36 = v69;
    v60 = *(v67 + 16);
    (v60)(v69, v35, v6);
    v59 = *(v13 + 8);
    v59(v25, v12);
    v37 = *(v70 + 8);
    v38 = sub_21B34AC54();
    v39 = v36;
    v40 = *(v34 + 8);
    v40(v39, v6);
    if (v38)
    {
      v58 = a1;
      result = sub_21B2D9D20(v28);
      if (!__OFSUB__(result, 1))
      {
        v57 = result - 1;
        v41 = sub_21B2D9D20(v28);
        v42 = __OFSUB__(v41, 1);
        result = v41 - 1;
        if (!v42)
        {
          v56 = v40;
          v43 = v65;
          sub_21B2D91CC(result, v28, v65);
          v44 = v69;
          (v60)(v69, v43, v6);
          v59(v43, v12);
          v45 = *(v12 + 36);
          v46 = v58;
          result = sub_21B34ABB4();
          if (result)
          {
            v70 = *(v67 + 32);
            v47 = v61;
            (v70)(v61, v44, v6);
            v48 = TupleTypeMetadata2;
            (v60)(&v47[*(TupleTypeMetadata2 + 48)], v46 + v45, v6);
            v49 = v62;
            v50 = v63;
            (*(v62 + 16))(v63, v47, v48);
            v51 = *(v48 + 48);
            (v70)(v66, v50, v6);
            v52 = &v50[v51];
            v53 = v56;
            v56(v52, v6);
            (*(v49 + 32))(v50, v47, v48);
            v54 = v66;
            (v70)(&v66[*(v12 + 36)], &v50[*(v48 + 48)], v6);
            v53(v50, v6);
            return sub_21B2D9E68(v54, v57, v28);
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_12:
    (*(v13 + 16))(v66, a1, v12);
    swift_getWitnessTable();
    return sub_21B34B374();
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2972F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for _RangeSetStorage();
  swift_getWitnessTable();

  return sub_21B34B2B4();
}

uint64_t sub_21B297350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for _RangeSetStorage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v2, v6);
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t sub_21B297438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v102 = a1;
  v73 = a3;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = *(TupleTypeMetadata2 - 8);
  v7 = *(v98 + 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v86 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v70 - v11;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v91 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v70 - v17;
  MEMORY[0x28223BE20](v16);
  v97 = &v70 - v18;
  v75 = a2;
  v19 = *(a2 + 24);
  v20 = sub_21B34B424();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v100 = &v70 - v27;
  MEMORY[0x28223BE20](v26);
  v79 = &v70 - v28;
  v99 = v19;
  v29 = type metadata accessor for _RangeSetStorage();
  swift_getWitnessTable();
  v30 = sub_21B34B7D4();
  v71 = *(v30 - 8);
  v31 = *(v71 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - v32;
  v104 = sub_21B34AFD4();
  v34 = *(*(v29 - 8) + 16);
  v74 = v4;
  v34(v33, v4, v29);
  v72 = v30;
  v35 = *(v30 + 36);
  *&v33[v35] = 0;
  v36 = v29;
  if (sub_21B2DBB54(v29))
  {
    v37 = 0;
    v78 = (v21 + 32);
    v101 = (v12 + 16);
    v38 = (v21 + 8);
    v39 = 0;
    v95 = v38;
    v96 = (v12 + 8);
    v84 = (v98 + 16);
    v83 = (v12 + 32);
    v82 = (v98 + 32);
    v77 = v33;
    v76 = v35;
    v81 = v20;
    v89 = v36;
    do
    {
      v41 = v36;
      v42 = v79;
      sub_21B2D91CC(v39, v41, v79);
      v103 = v39;
      swift_getWitnessTable();
      sub_21B34B164();
      (*v78)(v100, v42, v20);
      v36 = v41;
      if (v37 >= sub_21B2DBB54(v41))
      {
        v43 = v95;
      }

      else
      {
        v43 = v95;
        do
        {
          sub_21B2D91CC(v37, v36, v25);
          v44 = v97;
          (*v101)(v97, &v25[*(v20 + 36)], v6);
          (*v43)(v25, v20);
          v45 = sub_21B34ABB4();
          (*v96)(v44, v6);
          if ((v45 & 1) == 0)
          {
            break;
          }

          ++v37;
        }

        while (v37 < sub_21B2DBB54(v36));
      }

      v46 = sub_21B2DBB54(v36);
      v80 = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v37 >= v46)
      {
        v90 = *v43;
      }

      else
      {
        do
        {
          sub_21B2D91CC(v37, v36, v25);
          v47 = v97;
          v98 = *v101;
          v98(v97, v25, v6);
          v48 = *v43;
          (*v43)(v25, v20);
          v92 = *(v20 + 36);
          v49 = sub_21B34AB94();
          v93 = *v96;
          v93(v47, v6);
          v90 = v48;
          if ((v49 & 1) == 0)
          {
            break;
          }

          sub_21B2D91CC(v37, v36, v25);
          v50 = v97;
          v98(v97, v25, v6);
          v48(v25, v20);
          v51 = v48;
          v52 = v25;
          sub_21B34BA34();
          v53 = v93;
          v93(v50, v6);
          v88 = v37;
          sub_21B2D91CC(v37, v36, v25);
          v98(v50, &v25[*(v20 + 36)], v6);
          v51(v25, v20);
          sub_21B34BA44();
          v53(v50, v6);
          result = sub_21B34ABB4();
          if ((result & 1) == 0)
          {
            __break(1u);
            return result;
          }

          v55 = v85;
          v56 = v98;
          v98(v85, v94, v6);
          v57 = TupleTypeMetadata2;
          v56(&v55[*(TupleTypeMetadata2 + 48)], v91, v6);
          v58 = v86;
          (*v84)(v86, v55, v57);
          v59 = *(v57 + 48);
          v60 = *v83;
          (*v83)(v52, v58, v6);
          v61 = v93;
          v93(&v58[v59], v6);
          v62 = v55;
          v63 = v97;
          (*v82)(v58, v62, v57);
          v64 = *(v57 + 48);
          v65 = v81;
          v60(v52 + *(v81 + 36), &v58[v64], v6);
          v66 = v88;
          v61(v58, v6);
          sub_21B34B054();
          sub_21B34B024();
          sub_21B2D91CC(v66, v89, v52);
          v98(v63, (v52 + *(v65 + 36)), v6);
          v67 = v65;
          v90(v52, v65);
          LOBYTE(v59) = sub_21B34AB84();
          v61(v63, v6);
          v61(v91, v6);
          v61(v94, v6);
          v36 = v89;
          if ((v59 & 1) == 0)
          {
            v20 = v67;
            v90(v100, v67);
            v25 = v52;
            v37 = v66;
            goto LABEL_5;
          }

          v68 = v66 + 1;
          v69 = v68 < sub_21B2DBB54(v89);
          v20 = v67;
          v25 = v52;
          v37 = v68;
          v43 = v95;
        }

        while (v69);
      }

      v90(v100, v20);
LABEL_5:
      v33 = v77;
      v40 = sub_21B2DBB54(v36);
      v39 = *&v33[v76];
    }

    while (v39 != v40);
  }

  (*(v71 + 8))(v33, v72);
  sub_21B2987A4(v104, v73);
  return (*(*(v75 - 8) + 8))(v74);
}

uint64_t sub_21B297EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21B2D9BF0();
  v4 = sub_21B34B424();
  if (sub_21B34B404())
  {
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  else
  {
    v7 = type metadata accessor for _RangeSetStorage();
    (*(*(v7 - 8) + 8))(a2, v7);

    return sub_21B2D9C3C(a1, a2);
  }
}

uint64_t sub_21B297FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = sub_21B34B424();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v22 = v3;
  v23 = v9;
  v20[1] = a1;
  v24 = a1;
  v15 = type metadata accessor for _RangeSetStorage();
  WitnessTable = swift_getWitnessTable();
  sub_21B2D3090(sub_21B2990B8, v21, v15, WitnessTable, &v25);
  v17 = v25;
  if (v17 == sub_21B2DBB54(v15))
  {
    v18 = 0;
  }

  else
  {
    sub_21B2D91CC(v17, v15, v14);
    (*(v4 + 16))(v7, v14, v3);
    (*(v11 + 8))(v14, v10);
    v18 = sub_21B34ABB4();
    (*(v4 + 8))(v7, v3);
  }

  return v18 & 1;
}

uint64_t sub_21B2981F4(uint64_t a1)
{
  v55 = a1;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = sub_21B34B424();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_21B34B474();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v60 = v2;
  v61 = v1;
  v15 = type metadata accessor for _RangeSet.Ranges();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_21B34BB44();
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v54 = &v44 - v19;
  v56 = *(v15 - 8);
  v20 = *(v56 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v52 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v64 = v15;
  v65 = v16;
  v47 = v15;
  v49 = v16;
  v50 = v26;
  v66 = v25;
  v67 = v26;
  v51 = v25;
  v27 = v26;
  v53 = sub_21B34B674();
  v28 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v48 = &v44 - v29;
  v64 = v15;
  v65 = v16;
  v66 = v25;
  v67 = v27;
  v62 = sub_21B34B664();
  v45 = *(v62 - 8);
  v30 = *(v45 + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v44 - v31;
  v46 = v24;
  v32 = v55;
  sub_21B297350(v55, v24);
  sub_21B297350(v32, v52);
  v33 = v54;
  v34 = v47;
  sub_21B34B2D4();
  v35 = v49;
  sub_21B34BA54();
  (*(v58 + 8))(v33, v35);
  (*(v56 + 8))(v46, v34);
  sub_21B34B644();
  v36 = (v59 + 32);
  v37 = (v59 + 8);
  while (1)
  {
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v45 + 8))(v63, v62);
    }

    v38 = *(TupleTypeMetadata2 + 48);
    v39 = *v36;
    (*v36)(v9, v14, v3);
    v39(v7, &v14[v38], v3);
    result = sub_21B34B404();
    if (result)
    {
      break;
    }

    result = sub_21B34B404();
    if (result)
    {
      goto LABEL_9;
    }

    v41 = *(v3 + 36);
    v42 = sub_21B34AB94();
    v43 = *v37;
    (*v37)(v7, v3);
    v43(v9, v3);
    if ((v42 & 1) == 0)
    {
      __break(1u);
      return (*(v45 + 8))(v63, v62);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21B2987A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21B2D9BF0();
  v4 = type metadata accessor for _RangeSetStorage();
  (*(*(v4 - 8) + 8))(a2, v4);
  sub_21B2D9CD8(a1, a2);
  v5 = type metadata accessor for _RangeSet();
  return sub_21B2981F4(v5);
}

uint64_t sub_21B298854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for _RangeSetStorage();

  return sub_21B2DABCC(a1, v7, a3);
}

uint64_t sub_21B2988AC(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for _RangeSetStorage();
  sub_21B2DABCC(v8, v6, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B29892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B298854(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B298980(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for _RangeSetStorage();

  return sub_21B2DBB54(v3);
}

uint64_t sub_21B2989B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21B298A38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B298980(a1);
  *a2 = result;
  return result;
}

void (*sub_21B298A60(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B298AE8(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B298AE8(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = sub_21B34B424();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v10 = v9;
  a1[2] = v9;
  v11 = type metadata accessor for _RangeSetStorage();
  sub_21B2D91CC(a2, v11, v10);
  return sub_21B2854A4;
}

uint64_t sub_21B298BD8()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t sub_21B298C48()
{
  swift_getWitnessTable();

  return sub_21B34B164();
}

uint64_t sub_21B298CD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_21B298D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_21B34B7D4();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21B298DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B298E28(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_21B2DBAB0();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_21B298EB4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v9[2] = *(a1 + 16);
  v9[3] = v1;
  v2 = type metadata accessor for _RangeSetStorage();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21B2FCC28(sub_21B299128, v9, v2, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  sub_21B299148();
  v5 = sub_21B34AB74();
  v7 = v6;

  v10 = 0x655365676E61525FLL;
  v11 = 0xEA00000000002874;
  MEMORY[0x21CEED5E0](v5, v7);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_21B298FE4@<X0>(void *a1@<X8>)
{
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](3943982, 0xE300000000000000);
  v2 = *(sub_21B34B424() + 36);
  result = sub_21B34B9C4();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_21B2990B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_21B34B424() + 36);
  return sub_21B34AB84() & 1;
}

uint64_t sub_21B299128@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21B298FE4(a1);
}

unint64_t sub_21B299148()
{
  result = qword_27CD7E848;
  if (!qword_27CD7E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E840, &qword_21B352A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E848);
  }

  return result;
}

uint64_t sub_21B2991AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for _RangeSetStorage();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B29921C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_21B299370(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_21B299740(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_21B299788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B299824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_21B29986C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2998F4(uint64_t result)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 27);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v4, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + 26) >= v4 + result)
  {
    v5 = v4 + result;
  }

  else
  {
    v5 = *(v1 + 26);
  }

  v6 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (!v7)
  {
    v9 = v1[3];
    v10 = v1[5];
    v30 = v1[4];
    v31 = v10;
    v11 = v1[1];
    v27[0] = *v1;
    v27[1] = v11;
    v12 = v1[3];
    v14 = *v1;
    v13 = v1[1];
    v28 = v1[2];
    v15 = v28;
    v29 = v12;
    v16 = v1[5];
    v24 = v30;
    v25 = v16;
    v20 = v14;
    v21 = v13;
    *(v1 + 27) = v8;
    v32 = *(v1 + 12);
    v26 = *(v1 + 12);
    v22 = v15;
    v23 = v9;
    v17 = *(v1 + 24);
    sub_21B23325C(v27, v18);
    sub_21B279460(v17, v4, v5, &v20, v1);
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    return sub_21B299E64(v18);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B299A1C(uint64_t result)
{
  v2 = *(v1 + 26);
  v3 = *(v1 + 28);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v4, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + 27) >= v4 + result)
  {
    v5 = v4 + result;
  }

  else
  {
    v5 = *(v1 + 27);
  }

  v6 = v5 - v4;
  if (v5 < v4)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (!v7)
  {
    v9 = v1[3];
    v10 = v1[5];
    v30 = v1[4];
    v31 = v10;
    v11 = v1[1];
    v27[0] = *v1;
    v27[1] = v11;
    v12 = v1[3];
    v14 = *v1;
    v13 = v1[1];
    v28 = v1[2];
    v15 = v28;
    v29 = v12;
    v16 = v1[5];
    v24 = v30;
    v25 = v16;
    v20 = v14;
    v21 = v13;
    *(v1 + 28) = v8;
    v32 = *(v1 + 12);
    v26 = *(v1 + 12);
    v22 = v15;
    v23 = v9;
    v17 = *(v1 + 25);
    sub_21B23325C(v27, v18);
    sub_21B279E98(v17, v4, v5, &v20);
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    return sub_21B299E64(v18);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B299B44(uint64_t result, void (*a2)(uint64_t, uint64_t, uint64_t, __int128 *, __int128 *))
{
  v3 = *(v2 + 23);
  v4 = *(v2 + 25);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v5, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v2 + 24) >= v5 + result)
  {
    v6 = v5 + result;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  v7 = v6 - v5;
  if (v6 < v5)
  {
    goto LABEL_12;
  }

  if (__OFSUB__(v6, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(v4, v7);
  v9 = v4 + v7;
  if (!v8)
  {
    v11 = v2[3];
    v12 = v2[5];
    v32 = v2[4];
    v33 = v12;
    v13 = v2[1];
    v29[0] = *v2;
    v29[1] = v13;
    v14 = v2[3];
    v16 = *v2;
    v15 = v2[1];
    v30 = v2[2];
    v17 = v30;
    v31 = v14;
    v18 = v2[5];
    v26 = v32;
    v27 = v18;
    v22 = v16;
    v23 = v15;
    *(v2 + 25) = v9;
    v34 = *(v2 + 12);
    v28 = *(v2 + 12);
    v24 = v17;
    v25 = v11;
    v19 = *(v2 + 22);
    sub_21B23325C(v29, v20);
    a2(v19, v5, v6, &v22, v2);
    v20[4] = v26;
    v20[5] = v27;
    v21 = v28;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    return sub_21B299E64(v20);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B299CB4@<X0>(void *a1@<X8>)
{
  v4 = v1[28];
  v3 = v1[29];
  v5 = v1[30];
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
  a1[4] = &off_282CAA128;
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
}

uint64_t sub_21B299D28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 232);

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t sub_21B299DCC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = v3[26];
  v5 = v3[27];
  v7 = v3[28];
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  a3[4] = &off_282CAA128;
  *a3 = v6;
  a3[1] = v5;
  a3[2] = v7;
}

uint64_t sub_21B299F44(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21B254034(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B254034((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B29A070(void (*a1)(void *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21B254328(0, v4, 0);
    v5 = v25;
    for (i = a3 + 32; ; i += 40)
    {
      a1(v21, i, &v20);
      if (v3)
      {
        break;
      }

      v9 = v21[0];
      v8 = v21[1];
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v25 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = v23;
        v17 = v22;
        sub_21B254328((v13 > 1), v14 + 1, 1);
        v10 = v17;
        v11 = v18;
        v5 = v25;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 48 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v8;
      *(v15 + 48) = v10;
      *(v15 + 56) = v11;
      *(v15 + 72) = v12;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

TabularData::DataFrame __swiftcall DataFrame.summary()()
{
  v2 = sub_21B29A1B0(*v1, v0);
  result.columnIndicesByName._rawValue = v4;
  result.aliases._rawValue = v3;
  result.columns._rawValue = v2;
  return result;
}

uint64_t sub_21B29A1B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v131 = 0x6E6D756C6F63;
  v132 = 0xE600000000000000;
  v4 = MEMORY[0x277D84F90];
  v133 = sub_21B25DFE0(MEMORY[0x277D84F90]);
  sub_21B2FD5CC(v3);
  v128 = 1851876717;
  v129 = 0xE400000000000000;
  sub_21B25E224(v4);
  v130 = v5;
  sub_21B2FD590(v3);
  v125 = 6583411;
  v126 = 0xE300000000000000;
  sub_21B25E224(v4);
  v127 = v6;
  sub_21B2FD590(v3);
  v122 = 7235949;
  v123 = 0xE300000000000000;
  sub_21B25E224(v4);
  v124 = v7;
  sub_21B2FD590(v3);
  v119 = 7889261;
  v120 = 0xE300000000000000;
  sub_21B25E224(v4);
  v121 = v8;
  sub_21B2FD590(v3);
  v116 = 0x6E616964656DLL;
  v117 = 0xE600000000000000;
  sub_21B25E224(v4);
  v118 = v9;
  sub_21B2FD590(v3);
  v113 = 12625;
  v114 = 0xE200000000000000;
  sub_21B25E224(v4);
  v115 = v10;
  sub_21B2FD590(v3);
  v110 = 13137;
  v111 = 0xE200000000000000;
  sub_21B25E224(v4);
  v112 = v11;
  sub_21B2FD590(v3);
  v107 = 1701080941;
  v108 = 0xE400000000000000;
  v109 = sub_21B25E44C(v4);
  sub_21B2FD4BC(v3);
  v104 = 0x6F43657571696E75;
  v105 = 0xEB00000000746E75;
  sub_21B234EF8(v4);
  v106 = v12;
  sub_21B2351E8(v3);
  v101 = 0x6E756F43656E6F6ELL;
  v102 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v103 = v13;
  sub_21B2351E8(v3);
  v98 = 0x6E756F43656D6F73;
  v99 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v100 = v14;
  sub_21B2351E8(v3);
  if (!v3)
  {
LABEL_31:
    v63 = MEMORY[0x277D84F90];
    *a2 = MEMORY[0x277D84F90];
    a2[1] = v63;
    a2[2] = sub_21B25DC2C(v63);
    v65 = v131;
    v64 = v132;
    v66 = v133;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v88 = &off_282CAA128;
    v84 = v65;
    v85 = v64;
    v86 = v66;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v68 = v128;
    v67 = v129;
    v69 = v130;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v68;
    v85 = v67;
    v86 = v69;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v125;
    v85 = v126;
    v86 = v127;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v122;
    v85 = v123;
    v86 = v124;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v119;
    v85 = v120;
    v86 = v121;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v116;
    v85 = v117;
    v86 = v118;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v113;
    v85 = v114;
    v86 = v115;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v70;
    v88 = &off_282CAA128;
    v84 = v110;
    v85 = v111;
    v86 = v112;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v71 = v107;
    v72 = v108;
    v73 = v109;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBC8, &qword_21B3542A0);
    v88 = &off_282CAA128;
    v84 = v71;
    v85 = v72;
    v86 = v73;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v75 = v104;
    v74 = v105;
    v76 = v106;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v87 = v77;
    v88 = &off_282CAA128;
    v84 = v75;
    v85 = v74;
    v86 = v76;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v77;
    v88 = &off_282CAA128;
    v84 = v101;
    v85 = v102;
    v86 = v103;

    DataFrame.append(column:)(&v84);
    sub_21B233960(&v84);
    v87 = v77;
    v88 = &off_282CAA128;
    v84 = v98;
    v85 = v99;
    v86 = v100;

    DataFrame.append(column:)(&v84);

    return sub_21B233960(&v84);
  }

  v15 = 0;
  v16 = a1 + 32;
  while (1)
  {
    sub_21B233A74(v16, v95);
    v17 = v96;
    v18 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    v19 = (*(*(v18 + 8) + 8))(v17);
    sub_21B22E8E4(v19, v20);

    sub_21B26CA90(&v84);
    v21 = v84;
    v22 = v85;
    v23 = v86;

    sub_21B2FE8E0(v24);

    sub_21B235528(v23, 0);
    sub_21B235528(v22, 0);
    sub_21B235528(v21, 0);

    sub_21B233A10(v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E160, &unk_21B352A10);
    if (swift_dynamicCast())
    {
      v42 = v93;
      result = swift_beginAccess();
      v43 = *(v42 + 16);
      if (!v43)
      {
        goto LABEL_36;
      }

      v44 = *v43 + 7;
      if (__OFADD__(*v43, 7))
      {
        goto LABEL_33;
      }

      if (v44 < 0)
      {
        v44 = *v43 + 14;
      }

      v45 = v44 >> 3;
      v46 = v45 - 1;
      v30 = v45 < 1;
      v47 = v45 + 62;
      if (!v30)
      {
        v47 = v46;
      }

      sub_21B29C5B8(v43 + (v47 & 0xFFFFFFFFFFFFFFC0) + 128, *v43, v42, &v84);
      v48 = v86;
      v49 = *&v87;
      v50 = v88;
      v51 = *&v89;
      sub_21B2FE174(COERCE__INT64(*(&v87 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(*&v50), 0);
      sub_21B2FE174(COERCE__INT64(*(&v50 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v51), 0);
      sub_21B2FE174(COERCE__INT64(*&v48), 0);
      sub_21B2FE174(COERCE__INT64(*(&v48 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v49), 0);

      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      sub_21B2FE174(0, 1);
      goto LABEL_5;
    }

    v52 = v93;
    result = swift_beginAccess();
    v53 = *(v52 + 16);
    if (!v53)
    {
      goto LABEL_37;
    }

    v54 = *v53 + 7;
    if (__OFADD__(*v53, 7))
    {
      goto LABEL_34;
    }

    if (v54 < 0)
    {
      v54 = *v53 + 14;
    }

    v55 = v54 >> 3;
    v56 = v55 - 1;
    v30 = v55 < 1;
    v57 = v55 + 62;
    if (!v30)
    {
      v57 = v56;
    }

    sub_21B29D880(v53 + (v57 & 0xFFFFFFFFFFFFFFC0) + 128, *v53, v52, &v84);
    v83 = v16;
    v58 = v86;
    v79 = v87;
    v81 = v88;
    v59 = v90;
    v60 = v91;
    v61 = v92;
    sub_21B2FE174(v89, 0);
    sub_21B2FE174(v59, 0);
    sub_21B2FE174(v60, 0);
    sub_21B2FE174(v61, 0);
    v62 = v58;
    v16 = v83;
    sub_21B2FE174(v62, 0);
    sub_21B2FE174(v79, 0);
    v41 = v81;
LABEL_3:
    sub_21B2FE174(v41, 0);

LABEL_4:

LABEL_5:
    sub_21B233960(v95);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    v16 += 40;
    if (!--v3)
    {
      goto LABEL_31;
    }
  }

  v25 = v93;
  result = swift_beginAccess();
  v27 = *(v25 + 16);
  if (!v27)
  {
    goto LABEL_35;
  }

  v28 = *v27 + 7;
  if (!__OFADD__(*v27, 7))
  {
    if (v28 < 0)
    {
      v28 = *v27 + 14;
    }

    v29 = v28 >> 3;
    v31 = v29 - 1;
    v30 = v29 < 1;
    v32 = v29 + 62;
    if (!v30)
    {
      v32 = v31;
    }

    sub_21B29C7E0(v27 + (v32 & 0xFFFFFFFFFFFFFFC0) + 128, *v27, v25, &v84);
    v33 = v15;
    v34 = v86;
    v35 = v87;
    v80 = v88;
    v82 = v3;
    v36 = v16;
    v38 = v90;
    v37 = v91;
    v39 = v92;
    sub_21B2FE174(v89, 0);
    sub_21B2FE174(v38, 0);
    v40 = v37;
    v16 = v36;
    v15 = v33;
    sub_21B2FE174(v40, 0);
    sub_21B2FE174(v39, 0);
    sub_21B2FE174(v34, 0);
    sub_21B2FE174(v35, 0);
    v41 = v80;
    v3 = v82;
    goto LABEL_3;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t DataFrame.summary(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = a2;
    v17 = MEMORY[0x277D84F90];
    sub_21B254034(0, v6, 0);
    v7 = v17;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      v12 = sub_21B23AC94(v10, v11);

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B254034((v13 > 1), v14 + 1, 1);
      }

      *(v17 + 16) = v14 + 1;
      *(v17 + 8 * v14 + 32) = v12;
      v9 += 2;
      --v6;
    }

    while (v6);
    a2 = v16;
  }

  sub_21B29AEEC(v7, a2);
}

uint64_t sub_21B29AEEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a2;
    v7 = *v2;
    v19 = MEMORY[0x277D84F90];
    result = sub_21B254088(0, v3, 0);
    v4 = v19;
    v9 = (a1 + 32);
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *(v7 + 16))
      {
        goto LABEL_11;
      }

      result = sub_21B233A74(v7 + 32 + 40 * v10, v17);
      v19 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_21B254088((v12 > 1), v13 + 1, 1);
        v4 = v19;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 40 * v13;
      v15 = v17[0];
      v16 = v17[1];
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (!--v3)
      {
        a2 = v6;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    sub_21B29A1B0(v4, a2);
  }

  return result;
}

uint64_t DataFrame.summary(ofColumns:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 2);
  return sub_21B29AEEC(a1, a2);
}

TabularData::DataFrame __swiftcall DataFrame.Slice.summary()()
{
  v2 = v0;
  v7 = *v1;
  v8 = *(v1 + 2);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v3 = DataFrame.Slice.columns.getter();
  sub_21B29B0B4(v3, v2);

  result.columnIndicesByName._rawValue = v6;
  result.aliases._rawValue = v5;
  result.columns._rawValue = v4;
  return result;
}

uint64_t sub_21B29B0B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v161 = 0x6E6D756C6F63;
  v162 = 0xE600000000000000;
  v4 = MEMORY[0x277D84F90];
  v163 = sub_21B25DFE0(MEMORY[0x277D84F90]);
  sub_21B2FD5CC(v3);
  v158 = 1851876717;
  v159 = 0xE400000000000000;
  sub_21B25E224(v4);
  v160 = v5;
  sub_21B2FD590(v3);
  v155 = 6583411;
  v156 = 0xE300000000000000;
  sub_21B25E224(v4);
  v157 = v6;
  sub_21B2FD590(v3);
  v152 = 7235949;
  v153 = 0xE300000000000000;
  sub_21B25E224(v4);
  v154 = v7;
  sub_21B2FD590(v3);
  v149 = 7889261;
  v150 = 0xE300000000000000;
  sub_21B25E224(v4);
  v151 = v8;
  sub_21B2FD590(v3);
  v146 = 0x6E616964656DLL;
  v147 = 0xE600000000000000;
  sub_21B25E224(v4);
  v148 = v9;
  sub_21B2FD590(v3);
  v143 = 12625;
  v144 = 0xE200000000000000;
  sub_21B25E224(v4);
  v145 = v10;
  sub_21B2FD590(v3);
  v140 = 13137;
  v141 = 0xE200000000000000;
  sub_21B25E224(v4);
  v142 = v11;
  sub_21B2FD590(v3);
  v137 = 1701080941;
  v138 = 0xE400000000000000;
  v139 = sub_21B25E44C(v4);
  sub_21B2FD4BC(v3);
  v134 = 0x6F43657571696E75;
  v135 = 0xEB00000000746E75;
  sub_21B234EF8(v4);
  v136 = v12;
  sub_21B2351E8(v3);
  v131 = 0x6E756F43656E6F6ELL;
  v132 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v133 = v13;
  sub_21B2351E8(v3);
  v128 = 0x6E756F43656D6F73;
  v129 = 0xE900000000000074;
  sub_21B234EF8(v4);
  v130 = v14;
  sub_21B2351E8(v3);
  if (!v3)
  {
LABEL_55:
    v97 = MEMORY[0x277D84F90];
    *a2 = MEMORY[0x277D84F90];
    a2[1] = v97;
    a2[2] = sub_21B25DC2C(v97);
    v98 = v161;
    v99 = v162;
    v100 = v163;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v117 = &off_282CAA128;
    v113 = v98;
    v114 = v99;
    v115 = v100;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v101 = v158;
    v102 = v159;
    v103 = v160;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v101;
    v114 = v102;
    v115 = v103;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v155;
    v114 = v156;
    v115 = v157;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v152;
    v114 = v153;
    v115 = v154;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v149;
    v114 = v150;
    v115 = v151;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v146;
    v114 = v147;
    v115 = v148;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v143;
    v114 = v144;
    v115 = v145;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v104;
    v117 = &off_282CAA128;
    v113 = v140;
    v114 = v141;
    v115 = v142;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v105 = v137;
    v106 = v138;
    v107 = v139;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBC8, &qword_21B3542A0);
    v117 = &off_282CAA128;
    v113 = v105;
    v114 = v106;
    v115 = v107;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v109 = v134;
    v108 = v135;
    v110 = v136;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v116 = v111;
    v117 = &off_282CAA128;
    v113 = v109;
    v114 = v108;
    v115 = v110;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v111;
    v117 = &off_282CAA128;
    v113 = v131;
    v114 = v132;
    v115 = v133;

    DataFrame.append(column:)(&v113);
    sub_21B233960(&v113);
    v116 = v111;
    v117 = &off_282CAA128;
    v113 = v128;
    v114 = v129;
    v115 = v130;

    DataFrame.append(column:)(&v113);

    return sub_21B233960(&v113);
  }

  v15 = a1 + 32;
  while (1)
  {
    sub_21B25EFA4(v15, v125);
    v16 = v126;
    v17 = v127;
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v18 = (*(*(v17 + 8) + 8))(v16);
    sub_21B22E8E4(v18, v19);

    AnyColumnSlice.summary()(&v113);
    v20 = v113;
    v21 = v114;
    v22 = v115;

    sub_21B2FE8E0(v23);

    sub_21B235528(v22, 0);
    sub_21B235528(v21, 0);
    sub_21B235528(v20, 0);

    sub_21B233A10(v125, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E738, &qword_21B352358);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E730, &qword_21B352350);
    if (swift_dynamicCast())
    {
      v166[0] = v122;
      v166[1] = *v123;
      v41 = *&v123[16];
      v167 = *&v123[16];
      result = swift_beginAccess();
      v42 = *(v41 + 16);
      if (!v42)
      {
        goto LABEL_63;
      }

      v43 = *v42 + 7;
      if (__OFADD__(*v42, 7))
      {
        goto LABEL_57;
      }

      if (v43 < 0)
      {
        v43 = *v42 + 14;
      }

      v44 = v43 >> 3;
      v45 = v44 - 1;
      v29 = v44 < 1;
      v46 = v44 + 62;
      if (!v29)
      {
        v46 = v45;
      }

      sub_21B29CA08(v42 + (v46 & 0xFFFFFFFFFFFFFFC0) + 128, v166, &v113);
      v47 = v115;
      v48 = *&v116;
      v49 = v117;
      v50 = *&v118;
      sub_21B2FE174(COERCE__INT64(*(&v116 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(*&v49), 0);
      sub_21B2FE174(COERCE__INT64(*(&v49 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v50), 0);
      sub_21B2FE174(COERCE__INT64(*&v47), 0);
      sub_21B2FE174(COERCE__INT64(*(&v47 + 1)), 0);
      sub_21B2FE174(COERCE__INT64(v48), 0);
      v38 = v166;
      v39 = &qword_27CD7E730;
      v40 = &qword_21B352350;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E720, &qword_21B352340);
      if (swift_dynamicCast())
      {
        v168[0] = v122;
        v168[1] = *v123;
        v51 = *&v123[16];
        v169 = *&v123[16];
        result = swift_beginAccess();
        v52 = *(v51 + 16);
        if (!v52)
        {
          goto LABEL_64;
        }

        v53 = *v52 + 7;
        if (__OFADD__(*v52, 7))
        {
          goto LABEL_58;
        }

        if (v53 < 0)
        {
          v53 = *v52 + 14;
        }

        v54 = v53 >> 3;
        v55 = v54 - 1;
        v29 = v54 < 1;
        v56 = v54 + 62;
        if (!v29)
        {
          v56 = v55;
        }

        sub_21B29DA98(v52 + (v56 & 0xFFFFFFFFFFFFFFC0) + 128, v168, &v113);
        v57 = v115;
        v58 = v116;
        v59 = v117;
        v60 = v119;
        v61 = v120;
        v62 = v121;
        sub_21B2FE174(v118, 0);
        sub_21B2FE174(v60, 0);
        sub_21B2FE174(v61, 0);
        sub_21B2FE174(v62, 0);
        sub_21B2FE174(v57, 0);
        sub_21B2FE174(v58, 0);
        sub_21B2FE174(v59, 0);
        v38 = v168;
        v39 = &qword_27CD7E720;
        v40 = &qword_21B352340;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
        if (swift_dynamicCast())
        {
          v170 = v122;
          v171[0] = *v123;
          *(v171 + 9) = *&v123[9];
          v63 = *v123;
          result = swift_beginAccess();
          v64 = *(v63 + 16);
          if (!v64)
          {
            goto LABEL_65;
          }

          v65 = *v64 + 7;
          if (__OFADD__(*v64, 7))
          {
            goto LABEL_59;
          }

          if (v65 < 0)
          {
            v65 = *v64 + 14;
          }

          v66 = v65 >> 3;
          v67 = v66 - 1;
          v29 = v66 < 1;
          v68 = v66 + 62;
          if (!v29)
          {
            v68 = v67;
          }

          sub_21B29D3FC(v64 + (v68 & 0xFFFFFFFFFFFFFFC0) + 128, &v170, &v113);
          v69 = v115;
          v70 = v116;
          v71 = v117;
          v72 = v119;
          v73 = v120;
          v74 = v121;
          sub_21B2FE174(v118, 0);
          sub_21B2FE174(v72, 0);
          sub_21B2FE174(v73, 0);
          sub_21B2FE174(v74, 0);
          sub_21B2FE174(v69, 0);
          sub_21B2FE174(v70, 0);
          sub_21B2FE174(v71, 0);
          v38 = &v170;
          v39 = &qword_27CD7E6F8;
          v40 = &qword_21B352318;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
          if (swift_dynamicCast())
          {
            v172 = v122;
            v173[0] = *v123;
            *(v173 + 9) = *&v123[9];
            v75 = *v123;
            result = swift_beginAccess();
            v76 = *(v75 + 16);
            if (!v76)
            {
              goto LABEL_66;
            }

            v77 = *v76 + 7;
            if (__OFADD__(*v76, 7))
            {
              goto LABEL_60;
            }

            if (v77 < 0)
            {
              v77 = *v76 + 14;
            }

            v78 = v77 >> 3;
            v79 = v78 - 1;
            v29 = v78 < 1;
            v80 = v78 + 62;
            if (!v29)
            {
              v80 = v79;
            }

            sub_21B29CF78(v76 + (v80 & 0xFFFFFFFFFFFFFFC0) + 128, &v172, &v113);
            v81 = v115;
            v82 = *&v116;
            v83 = v117;
            v84 = *&v118;
            sub_21B2FE174(COERCE__INT64(*(&v116 + 1)), 0);
            sub_21B2FE174(COERCE__INT64(*&v83), 0);
            sub_21B2FE174(COERCE__INT64(*(&v83 + 1)), 0);
            sub_21B2FE174(COERCE__INT64(v84), 0);
            sub_21B2FE174(COERCE__INT64(*&v81), 0);
            sub_21B2FE174(COERCE__INT64(*(&v81 + 1)), 0);
            sub_21B2FE174(COERCE__INT64(v82), 0);
            v38 = &v172;
            v39 = &qword_27CD7E700;
            v40 = &qword_21B352320;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
            if ((swift_dynamicCast() & 1) == 0)
            {
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              sub_21B2FE174(0, 1);
              goto LABEL_52;
            }

            v174 = v122;
            v175[0] = *v123;
            *(v175 + 9) = *&v123[9];
            v85 = *v123;
            result = swift_beginAccess();
            v86 = *(v85 + 16);
            if (!v86)
            {
              goto LABEL_67;
            }

            v87 = *v86 + 7;
            if (__OFADD__(*v86, 7))
            {
              goto LABEL_61;
            }

            if (v87 < 0)
            {
              v87 = *v86 + 14;
            }

            v88 = v87 >> 3;
            v89 = v88 - 1;
            v29 = v88 < 1;
            v90 = v88 + 62;
            if (!v29)
            {
              v90 = v89;
            }

            sub_21B29DD4C(v86 + (v90 & 0xFFFFFFFFFFFFFFC0) + 128, &v174, &v113);
            v91 = v115;
            v92 = v116;
            v93 = v117;
            v94 = v119;
            v95 = v120;
            v96 = v121;
            sub_21B2FE174(v118, 0);
            sub_21B2FE174(v94, 0);
            sub_21B2FE174(v95, 0);
            sub_21B2FE174(v96, 0);
            sub_21B2FE174(v91, 0);
            sub_21B2FE174(v92, 0);
            sub_21B2FE174(v93, 0);
            v38 = &v174;
            v39 = &qword_27CD7E710;
            v40 = &qword_21B352330;
          }
        }
      }
    }

LABEL_51:
    sub_21B261664(v38, v39, v40);
LABEL_52:
    sub_21B25F000(v125);
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    v15 += 40;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  v164[0] = v122;
  v164[1] = *v123;
  v24 = *&v123[16];
  v165 = *&v123[16];
  result = swift_beginAccess();
  v26 = *(v24 + 16);
  if (!v26)
  {
    goto LABEL_62;
  }

  v27 = *v26 + 7;
  if (!__OFADD__(*v26, 7))
  {
    if (v27 < 0)
    {
      v27 = *v26 + 14;
    }

    v28 = v27 >> 3;
    v30 = v28 - 1;
    v29 = v28 < 1;
    v31 = v28 + 62;
    if (!v29)
    {
      v31 = v30;
    }

    sub_21B29CCC0(v26 + (v31 & 0xFFFFFFFFFFFFFFC0) + 128, v164, &v113);
    v32 = v115;
    v33 = v116;
    v34 = v117;
    v35 = v119;
    v36 = v120;
    v37 = v121;
    sub_21B2FE174(v118, 0);
    sub_21B2FE174(v35, 0);
    sub_21B2FE174(v36, 0);
    sub_21B2FE174(v37, 0);
    sub_21B2FE174(v32, 0);
    sub_21B2FE174(v33, 0);
    sub_21B2FE174(v34, 0);
    v38 = v164;
    v39 = &qword_27CD7E738;
    v40 = &qword_21B352358;
    goto LABEL_51;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t DataFrame.Slice.summary(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v18 = *(v2 + 3);
  v19 = *(v2 + 40);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = a2;
    v17 = MEMORY[0x277D84F90];
    sub_21B254034(0, v6, 0);
    v7 = v17;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      v12 = sub_21B23AC94(v10, v11);

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B254034((v13 > 1), v14 + 1, 1);
      }

      *(v17 + 16) = v14 + 1;
      *(v17 + 8 * v14 + 32) = v12;
      v9 += 2;
      --v6;
    }

    while (v6);
    a2 = v16;
  }

  sub_21B29C30C(v7, a2);
}

uint64_t sub_21B29C30C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_17:
    sub_21B29B0B4(v12, a2);
  }

  v29 = a2;
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(v2 + 40);
  v9 = *v2;
  v43 = MEMORY[0x277D84F90];
  result = sub_21B254014(0, v3, 0);
  v11 = 0;
  v32 = a1 + 32;
  v33 = *(v9 + 16);
  v30 = v9 + 32;
  v31 = v3;
  v12 = v43;
  while (1)
  {
    v13 = v33;
    v14 = *(v32 + 8 * v11);
    if (v33)
    {
      break;
    }

    v15 = v4;
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_11:
    if (v14 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    sub_21B25EFA4(v15 + 40 * v14 + 32, &v40);

    v43 = v12;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_21B254014((v24 > 1), v25 + 1, 1);
      v12 = v43;
    }

    ++v11;
    *(v12 + 16) = v25 + 1;
    v26 = v12 + 40 * v25;
    v27 = v40;
    v28 = v41;
    *(v26 + 64) = v42;
    *(v26 + 32) = v27;
    *(v26 + 48) = v28;
    if (v11 == v3)
    {
      a2 = v29;
      goto LABEL_17;
    }
  }

  v34 = *(v32 + 8 * v11);
  v35 = v12;
  v39 = v4;
  sub_21B254014(0, v33, 0);
  v15 = v39;
  v16 = v30;
  do
  {
    sub_21B233A74(v16, v36);
    v18 = v37;
    v17 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    (*(*(v17 + 8) + 160))(&v40, v6, v7, v8, v18);
    result = sub_21B233960(v36);
    v39 = v15;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_21B254014((v19 > 1), v20 + 1, 1);
      v15 = v39;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 40 * v20;
    v22 = v40;
    v23 = v41;
    *(v21 + 64) = v42;
    *(v21 + 32) = v22;
    *(v21 + 48) = v23;
    v16 += 40;
    --v13;
  }

  while (v13);
  v4 = MEMORY[0x277D84F90];
  v3 = v31;
  v12 = v35;
  v14 = v34;
  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t DataFrame.Slice.summary(ofColumns:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  return sub_21B29C30C(a1, a2);
}

uint64_t sub_21B29C5B8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v5 = v4;
    v8 = result;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    while (a2 != v9)
    {
      if (v9 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v13 = *(a3 + 16);
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = *(v13 + (v9 >> 3) + 64);
      v15 = v9++ & 7;
      if ((v14 >> v15))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v5;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v11 + 16) + 1, 1);
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
        }

        *(v11 + 16) = v17 + 1;
        *(v11 + 8 * v17 + 32) = v9 - 1;
        v9 = v12;
        v5 = v24;
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {
      result = sub_21B2542C8(0, v18, 0);
      v19 = 0;
      while (v19 < *(v11 + 16))
      {
        v20 = *(v8 + 4 * *(v11 + 8 * v19 + 32));
        v22 = v10[1].u64[0];
        v21 = v10[1].u64[1];
        if (v22 >= v21 >> 1)
        {
          result = sub_21B2542C8((v21 > 1), v22 + 1, 1);
        }

        ++v19;
        v10[1].i64[0] = v22 + 1;
        v10[2].i32[v22] = v20;
        if (v18 == v19)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B3392C8(v10, a2 - v18, a4, v23);
  }

  return result;
}

uint64_t sub_21B29C7E0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v5 = v4;
    v8 = result;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    while (a2 != v9)
    {
      if (v9 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v13 = *(a3 + 16);
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = *(v13 + (v9 >> 3) + 64);
      v15 = v9++ & 7;
      if ((v14 >> v15))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v5;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v11 + 16) + 1, 1);
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
        }

        *(v11 + 16) = v17 + 1;
        *(v11 + 8 * v17 + 32) = v9 - 1;
        v9 = v12;
        v5 = v24;
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {
      result = sub_21B2542A8(0, v18, 0);
      v19 = 0;
      while (v19 < *(v11 + 16))
      {
        v20 = *(v8 + 8 * *(v11 + 8 * v19 + 32));
        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_21B2542A8((v21 > 1), v22 + 1, 1);
        }

        ++v19;
        *(v10 + 16) = v22 + 1;
        *(v10 + 8 * v22 + 32) = v20;
        if (v18 == v19)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B339014(v10, a2 - v18, a4, v23);
  }

  return result;
}

uint64_t sub_21B29CA08@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2[1];
  v3 = *(a2 + 4);
  v30 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBD8, &qword_21B3542B0);
  result = sub_21B34BB14();
  v5 = MEMORY[0x277D84F90];
  v6 = v28;
LABEL_2:
  if (v6 <= v29)
  {
    v7 = v29;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6;
  while (v29 != v8)
  {
    if (v29 < v28)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v6 < v28)
    {
      goto LABEL_31;
    }

    if (v7 == v8)
    {
      goto LABEL_32;
    }

    result = swift_beginAccess();
    v10 = *(v3 + 16);
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v8 + 1;
    v12 = v8 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v13 = *(v10 + v8 / 8 + 64);
    v14 = 1 << v12;
    if (v12 < 0)
    {
      v14 = 0;
    }

    ++v8;
    if ((v14 & v13) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v5 + 16) + 1, 1);
      }

      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21B254034((v15 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 8 * v16 + 32) = v11 - 1;
      v6 = v11;
      goto LABEL_2;
    }
  }

  result = sub_21B34BB14();
  v17 = v29 - v28;
  if (__OFSUB__(v29, v28))
  {
    goto LABEL_34;
  }

  v18 = *(v5 + 16);
  v19 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v18)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_21B2542C8(0, v18, 0);
    v20 = 0;
    v21 = v31;
    while (v20 < *(v5 + 16))
    {
      v22 = *(a1 + 4 * *(v5 + 8 * v20 + 32));
      v24 = v31[1].u64[0];
      v23 = v31[1].u64[1];
      if (v24 >= v23 >> 1)
      {
        result = sub_21B2542C8((v23 > 1), v24 + 1, 1);
      }

      ++v20;
      v31[1].i64[0] = v24 + 1;
      v31[2].i32[v24] = v22;
      if (v18 == v20)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B3392C8(v21, v19, a3, v25);
}

uint64_t sub_21B29CCC0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2[1];
  v3 = *(a2 + 4);
  v30 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBD0, &qword_21B3542A8);
  result = sub_21B34BB14();
  v5 = MEMORY[0x277D84F90];
  v6 = v28;
LABEL_2:
  if (v6 <= v29)
  {
    v7 = v29;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6;
  while (v29 != v8)
  {
    if (v29 < v28)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v6 < v28)
    {
      goto LABEL_31;
    }

    if (v7 == v8)
    {
      goto LABEL_32;
    }

    result = swift_beginAccess();
    v10 = *(v3 + 16);
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v8 + 1;
    v12 = v8 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v13 = *(v10 + v8 / 8 + 64);
    v14 = 1 << v12;
    if (v12 < 0)
    {
      v14 = 0;
    }

    ++v8;
    if ((v14 & v13) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v5 + 16) + 1, 1);
      }

      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21B254034((v15 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 8 * v16 + 32) = v11 - 1;
      v6 = v11;
      goto LABEL_2;
    }
  }

  result = sub_21B34BB14();
  v17 = v29 - v28;
  if (__OFSUB__(v29, v28))
  {
    goto LABEL_34;
  }

  v18 = *(v5 + 16);
  v19 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v18)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v18, 0);
    v20 = 0;
    v21 = v31;
    while (v20 < *(v5 + 16))
    {
      v22 = *(a1 + 8 * *(v5 + 8 * v20 + 32));
      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_21B2542A8((v23 > 1), v24 + 1, 1);
      }

      ++v20;
      *(v31 + 16) = v24 + 1;
      *(v31 + 8 * v24 + 32) = v22;
      if (v18 == v20)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B339014(v21, v19, a3, v25);
}

uint64_t sub_21B29CF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v47 = *(a2 + 8);
  v4 = *(a2 + 40);
  v48 = *(a2 + 24);
  v51 = *(a2 + 32);
  v5 = sub_21B2FB104(v48, v51, *(a2 + 40));
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {

      if (v4)
      {
        v19 = v48;
        if (v4 == 1 && *(v48 + 16))
        {
          v20 = *(v48 + 32);
LABEL_22:
          v22 = *(v19 + 16);
          goto LABEL_23;
        }

        swift_beginAccess();
        v21 = *(v3 + 16);
        if (!v21)
        {
          goto LABEL_69;
        }

        v20 = *(v21 + 8);
        if (v4 != 2)
        {
          v19 = v48;
          goto LABEL_22;
        }

        v22 = 0;
      }

      else
      {
        v22 = 1;
        v20 = v48;
      }

LABEL_23:
      swift_beginAccess();
      v23 = *(v3 + 16);
      if (!v23)
      {
        goto LABEL_68;
      }

      v50 = *(v23 + 8);
      if (v50 < v20)
      {
        goto LABEL_64;
      }

      if (!v22 && v20 == v50)
      {
        v24 = 0;
LABEL_48:
        sub_21B2615FC(a2, &v52, &qword_27CD7E700, &qword_21B352320);

        sub_21B23A9F4(v48, v51, v4);
        v36 = v8[1].i64[0];
        if (__OFSUB__(v24, v36))
        {
          goto LABEL_65;
        }

        if (v36)
        {
          v52 = MEMORY[0x277D84F90];
          sub_21B2542C8(0, v36, 0);
          v37 = 0;
          v38 = v52;
          while (v37 < v8[1].i64[0])
          {
            v39 = *(a1 + 4 * v8[2].i64[v37]);
            v52 = v38;
            v41 = v38[1].u64[0];
            v40 = v38[1].u64[1];
            if (v41 >= v40 >> 1)
            {
              sub_21B2542C8((v40 > 1), v41 + 1, 1);
              v38 = v52;
            }

            ++v37;
            v38[1].i64[0] = v41 + 1;
            v38[2].i32[v41] = v39;
            if (v36 == v37)
            {

              goto LABEL_57;
            }
          }

          goto LABEL_59;
        }

        v38 = MEMORY[0x277D84F90];
LABEL_57:
        sub_21B3392C8(v38, v24 - v36, a3, v42);
      }

      v25 = 0;
      v26 = 0;
      v27 = v48;
      v28 = v48 + 32;
      while (1)
      {
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_60;
        }

        if (__OFADD__(v20++, 1))
        {
          goto LABEL_61;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            goto LABEL_70;
          }

          if (v26 >= *(v27 + 16))
          {
            goto LABEL_62;
          }

          v31 = (v28 + 16 * v26);
          v32 = *v31;
          v30 = v31[1];
          if (v20 < v32)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v30 = v51;
          if (v26)
          {
            goto LABEL_63;
          }

          if (v20 < v27)
          {
            goto LABEL_39;
          }
        }

        if (v20 < v30)
        {
          goto LABEL_46;
        }

LABEL_39:
        if (!v4)
        {
          v26 = 1;
LABEL_43:
          swift_beginAccess();
          v35 = *(v3 + 16);
          if (!v35)
          {
            goto LABEL_67;
          }

          v34 = (v35 + 8);
          v27 = v48;
          goto LABEL_45;
        }

        v33 = v26 + 1;
        v26 = *(v27 + 16);
        if (v33 >= v26)
        {
          goto LABEL_43;
        }

        v34 = (v28 + 16 * v33);
        v26 = v33;
LABEL_45:
        v20 = *v34;
LABEL_46:
        ++v25;
        if (v26 == v22 && v20 == v50)
        {
          goto LABEL_48;
        }
      }
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v9 = *(v5 + 8 * v6 + 32);
    swift_beginAccess();
    v11 = *(v3 + 16);
    if (!v11)
    {
      goto LABEL_66;
    }

    ++v6;
    v12 = v9 - (v10 & 0xFFFFFFFFFFFFFFF8);
    v13 = *(v11 + v9 / 8 + 64);
    v14 = 1 << v12;
    if (v12 < 0)
    {
      v14 = 0;
    }

    if ((v14 & v13) != 0)
    {
      v52 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B254034(0, v8[1].i64[0] + 1, 1);
        v8 = v52;
      }

      v16 = v8[1].u64[0];
      v15 = v8[1].u64[1];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v18 = v16 + 1;
        v49 = v16;
        sub_21B254034((v15 > 1), v16 + 1, 1);
        v17 = v18;
        v16 = v49;
        v8 = v52;
      }

      v8[1].i64[0] = v17;
      v8[2].i64[v16] = v9;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B29D3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v47 = *(a2 + 8);
  v4 = *(a2 + 40);
  v48 = *(a2 + 24);
  v51 = *(a2 + 32);
  v5 = sub_21B2FB104(v48, v51, *(a2 + 40));
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {

      if (v4)
      {
        v19 = v48;
        if (v4 == 1 && *(v48 + 16))
        {
          v20 = *(v48 + 32);
LABEL_22:
          v22 = *(v19 + 16);
          goto LABEL_23;
        }

        swift_beginAccess();
        v21 = *(v3 + 16);
        if (!v21)
        {
          goto LABEL_69;
        }

        v20 = *(v21 + 8);
        if (v4 != 2)
        {
          v19 = v48;
          goto LABEL_22;
        }

        v22 = 0;
      }

      else
      {
        v22 = 1;
        v20 = v48;
      }

LABEL_23:
      swift_beginAccess();
      v23 = *(v3 + 16);
      if (!v23)
      {
        goto LABEL_68;
      }

      v50 = *(v23 + 8);
      if (v50 < v20)
      {
        goto LABEL_64;
      }

      if (!v22 && v20 == v50)
      {
        v24 = 0;
LABEL_48:
        sub_21B2615FC(a2, v52, &qword_27CD7E6F8, &qword_21B352318);

        sub_21B23A9F4(v48, v51, v4);
        v36 = *(v8 + 16);
        if (__OFSUB__(v24, v36))
        {
          goto LABEL_65;
        }

        if (v36)
        {
          v52[0] = MEMORY[0x277D84F90];
          sub_21B2542A8(0, v36, 0);
          v37 = 0;
          v38 = v52[0];
          while (v37 < *(v8 + 16))
          {
            v39 = *(a1 + 8 * *(v8 + 8 * v37 + 32));
            v52[0] = v38;
            v41 = *(v38 + 16);
            v40 = *(v38 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_21B2542A8((v40 > 1), v41 + 1, 1);
              v38 = v52[0];
            }

            ++v37;
            *(v38 + 16) = v41 + 1;
            *(v38 + 8 * v41 + 32) = v39;
            if (v36 == v37)
            {

              goto LABEL_57;
            }
          }

          goto LABEL_59;
        }

        v38 = MEMORY[0x277D84F90];
LABEL_57:
        sub_21B339014(v38, v24 - v36, a3, v42);
      }

      v25 = 0;
      v26 = 0;
      v27 = v48;
      v28 = v48 + 32;
      while (1)
      {
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_60;
        }

        if (__OFADD__(v20++, 1))
        {
          goto LABEL_61;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            goto LABEL_70;
          }

          if (v26 >= *(v27 + 16))
          {
            goto LABEL_62;
          }

          v31 = (v28 + 16 * v26);
          v32 = *v31;
          v30 = v31[1];
          if (v20 < v32)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v30 = v51;
          if (v26)
          {
            goto LABEL_63;
          }

          if (v20 < v27)
          {
            goto LABEL_39;
          }
        }

        if (v20 < v30)
        {
          goto LABEL_46;
        }

LABEL_39:
        if (!v4)
        {
          v26 = 1;
LABEL_43:
          swift_beginAccess();
          v35 = *(v3 + 16);
          if (!v35)
          {
            goto LABEL_67;
          }

          v34 = (v35 + 8);
          v27 = v48;
          goto LABEL_45;
        }

        v33 = v26 + 1;
        v26 = *(v27 + 16);
        if (v33 >= v26)
        {
          goto LABEL_43;
        }

        v34 = (v28 + 16 * v33);
        v26 = v33;
LABEL_45:
        v20 = *v34;
LABEL_46:
        ++v25;
        if (v26 == v22 && v20 == v50)
        {
          goto LABEL_48;
        }
      }
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v9 = *(v5 + 8 * v6 + 32);
    swift_beginAccess();
    v11 = *(v3 + 16);
    if (!v11)
    {
      goto LABEL_66;
    }

    ++v6;
    v12 = v9 - (v10 & 0xFFFFFFFFFFFFFFF8);
    v13 = *(v11 + v9 / 8 + 64);
    v14 = 1 << v12;
    if (v12 < 0)
    {
      v14 = 0;
    }

    if ((v14 & v13) != 0)
    {
      v52[0] = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B254034(0, *(v8 + 16) + 1, 1);
        v8 = v52[0];
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v18 = v16 + 1;
        v49 = v16;
        sub_21B254034((v15 > 1), v16 + 1, 1);
        v17 = v18;
        v16 = v49;
        v8 = v52[0];
      }

      *(v8 + 16) = v17;
      *(v8 + 8 * v16 + 32) = v9;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B29D880@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    while (a2 != v7)
    {
      if (v7 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_26;
      }

      v12 = *(v11 + (v7 >> 3) + 64);
      v13 = v7++ & 7;
      if ((v12 >> v13))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v9 + 16) + 1, 1);
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_21B254034((v14 > 1), v15 + 1, 1);
        }

        *(v9 + 16) = v15 + 1;
        *(v9 + 8 * v15 + 32) = v7 - 1;
        v7 = v10;
      }
    }

    v16 = *(v9 + 16);
    if (v16)
    {
      result = sub_21B2542A8(0, v16, 0);
      v17 = 0;
      while (v17 < *(v9 + 16))
      {
        v18 = *(v6 + 8 * *(v9 + 8 * v17 + 32));
        v20 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_21B2542A8((v19 > 1), v20 + 1, 1);
        }

        ++v17;
        *(v8 + 16) = v20 + 1;
        *(v8 + 8 * v20 + 32) = v18;
        if (v16 == v17)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B339014(v8, a2 - v16, a4, v21);
  }

  return result;
}

uint64_t sub_21B29DA98@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2[1];
  v3 = *(a2 + 4);
  v30 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBE0, &qword_21B3542B8);
  result = sub_21B34BB14();
  v5 = MEMORY[0x277D84F90];
  v6 = v28;
LABEL_2:
  if (v6 <= v29)
  {
    v7 = v29;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6;
  while (v29 != v8)
  {
    if (v29 < v28)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v6 < v28)
    {
      goto LABEL_31;
    }

    if (v7 == v8)
    {
      goto LABEL_32;
    }

    result = swift_beginAccess();
    v10 = *(v3 + 16);
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v8 + 1;
    v12 = v8 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v13 = *(v10 + v8 / 8 + 64);
    v14 = 1 << v12;
    if (v12 < 0)
    {
      v14 = 0;
    }

    ++v8;
    if ((v14 & v13) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v5 + 16) + 1, 1);
      }

      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21B254034((v15 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 8 * v16 + 32) = v11 - 1;
      v6 = v11;
      goto LABEL_2;
    }
  }

  result = sub_21B34BB14();
  v17 = v29 - v28;
  if (__OFSUB__(v29, v28))
  {
    goto LABEL_34;
  }

  v18 = *(v5 + 16);
  v19 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v18)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v18, 0);
    v20 = 0;
    v21 = v31;
    while (v20 < *(v5 + 16))
    {
      v22 = *(a1 + 8 * *(v5 + 8 * v20 + 32));
      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_21B2542A8((v23 > 1), v24 + 1, 1);
      }

      ++v20;
      *(v31 + 16) = v24 + 1;
      *(v31 + 8 * v24 + 32) = v22;
      if (v18 == v20)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_33;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B339014(v21, v19, a3, v25);
}

uint64_t sub_21B29DD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  v48 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v49 = v4;
  v53 = *(a2 + 32);
  v6 = sub_21B2FB104(v4, v53, v5);
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v7)
    {

      if (v5)
      {
        v20 = v49;
        if (v5 == 1 && *(v49 + 16))
        {
          v21 = *(v49 + 32);
LABEL_22:
          v23 = *(v20 + 16);
          goto LABEL_23;
        }

        swift_beginAccess();
        v22 = *(v3 + 16);
        if (!v22)
        {
          goto LABEL_69;
        }

        v21 = *(v22 + 8);
        if (v5 != 2)
        {
          v20 = v49;
          goto LABEL_22;
        }

        v23 = 0;
      }

      else
      {
        v23 = 1;
        v21 = v49;
      }

LABEL_23:
      swift_beginAccess();
      v24 = *(v3 + 16);
      if (!v24)
      {
        goto LABEL_68;
      }

      v51 = *(v24 + 8);
      if (v51 < v21)
      {
        goto LABEL_64;
      }

      if (!v23 && v21 == v51)
      {
        v25 = 0;
LABEL_48:
        sub_21B2615FC(a2, v52, &qword_27CD7E710, &qword_21B352330);

        sub_21B23A9F4(v49, v53, v5);
        v37 = *(v9 + 16);
        if (__OFSUB__(v25, v37))
        {
          goto LABEL_65;
        }

        if (v37)
        {
          v52[0] = MEMORY[0x277D84F90];
          sub_21B2542A8(0, v37, 0);
          v38 = 0;
          v39 = v52[0];
          while (v38 < *(v9 + 16))
          {
            v40 = *(a1 + 8 * *(v9 + 8 * v38 + 32));
            v52[0] = v39;
            v42 = *(v39 + 16);
            v41 = *(v39 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_21B2542A8((v41 > 1), v42 + 1, 1);
              v39 = v52[0];
            }

            ++v38;
            *(v39 + 16) = v42 + 1;
            *(v39 + 8 * v42 + 32) = v40;
            if (v37 == v38)
            {

              goto LABEL_57;
            }
          }

          goto LABEL_59;
        }

        v39 = MEMORY[0x277D84F90];
LABEL_57:
        sub_21B339014(v39, v25 - v37, a3, v43);
      }

      v26 = 0;
      v27 = 0;
      v28 = v49;
      v29 = v49 + 32;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_60;
        }

        if (__OFADD__(v21++, 1))
        {
          goto LABEL_61;
        }

        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_70;
          }

          if (v27 >= *(v28 + 16))
          {
            goto LABEL_62;
          }

          v32 = (v29 + 16 * v27);
          v33 = *v32;
          v31 = v32[1];
          if (v21 < v33)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v31 = v53;
          if (v27)
          {
            goto LABEL_63;
          }

          if (v21 < v28)
          {
            goto LABEL_39;
          }
        }

        if (v21 < v31)
        {
          goto LABEL_46;
        }

LABEL_39:
        if (!v5)
        {
          v27 = 1;
LABEL_43:
          swift_beginAccess();
          v36 = *(v3 + 16);
          if (!v36)
          {
            goto LABEL_67;
          }

          v35 = (v36 + 8);
          v28 = v49;
          goto LABEL_45;
        }

        v34 = v27 + 1;
        v27 = *(v28 + 16);
        if (v34 >= v27)
        {
          goto LABEL_43;
        }

        v35 = (v29 + 16 * v34);
        v27 = v34;
LABEL_45:
        v21 = *v35;
LABEL_46:
        ++v26;
        if (v27 == v23 && v21 == v51)
        {
          goto LABEL_48;
        }
      }
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v10 = *(v6 + 8 * v7 + 32);
    swift_beginAccess();
    v12 = *(v3 + 16);
    if (!v12)
    {
      goto LABEL_66;
    }

    ++v7;
    v13 = v10 - (v11 & 0xFFFFFFFFFFFFFFF8);
    v14 = *(v12 + v10 / 8 + 64);
    v15 = 1 << v13;
    if (v13 < 0)
    {
      v15 = 0;
    }

    if ((v15 & v14) != 0)
    {
      v52[0] = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B254034(0, *(v9 + 16) + 1, 1);
        v9 = v52[0];
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = v17 + 1;
        v50 = v17;
        sub_21B254034((v16 > 1), v17 + 1, 1);
        v18 = v19;
        v17 = v50;
        v9 = v52[0];
      }

      *(v9 + 16) = v18;
      *(v9 + 8 * v17 + 32) = v10;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.combineColumns<A, B, C>(_:_:into:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v86 = a8;
  v85 = a7;
  v91 = a5;
  v87 = sub_21B34B474();
  v77 = *(v87 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x28223BE20](v87);
  v68 = &v66 - v19;
  v82 = sub_21B34B474();
  v70 = *(v82 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v82);
  v67 = &v66 - v21;
  v96 = a11;
  v79 = sub_21B34B474();
  v69 = *(v79 - 8);
  v22 = *(v69 + 64);
  MEMORY[0x28223BE20](v79);
  v71 = &v66 - v23;
  v24 = v11[2];
  v100 = *v11;
  v101 = v24;
  v73 = a1;
  v74 = a2;
  v83 = a9;
  DataFrame.subscript.getter(&v105, a1, a2, v83, v83);
  v95 = *(&v105 + 1);
  v81 = v105;
  v93 = v106;
  v25 = v11[2];
  v100 = *v11;
  v101 = v25;
  v75 = a3;
  v76 = a4;
  v84 = a10;
  DataFrame.subscript.getter(&v105, a3, a4, v84, v84);
  v94 = *(&v105 + 1);
  v80 = v105;
  v92 = v106;
  v26 = v11[1];
  v27 = v11[2];
  if (*(*v11 + 16))
  {
    sub_21B233A74(*v11 + 32, &v100);
    v28 = v102;
    v29 = v103;
    __swift_project_boxed_opaque_existential_1(&v100, v102);
    v30 = *(v29 + 8);
    v31 = *(v30 + 48);
    v90 = a6;

    v32 = v31(v28, v30);
    result = sub_21B233960(&v100);
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v34 = v90;
    if (v32)
    {
      v35 = 0;
      goto LABEL_7;
    }
  }

  else
  {

    v34 = a6;
  }

  v32 = 0;
  v35 = 2;
LABEL_7:
  v36 = v91;
  v37 = sub_21B2FB1D4(0, v32, v35);

  sub_21B23A9F4(0, v32, v35);
  Column.init(name:capacity:)(v36, v34, v37, v96, &v105);
  v38 = *v12;
  v39 = v12[1];
  v40 = v12[2];
  v41 = *(*v12 + 16);
  v88 = *v12;
  if (!v41)
  {

LABEL_12:
    v47 = 2;
    sub_21B2A6400(0, 0, 2);
    v46 = 0;
    if (v50)
    {
      v48 = 0;
    }

    else
    {
      v48 = v49;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v38 + 32, &v100);
  v42 = v102;
  v43 = v103;
  __swift_project_boxed_opaque_existential_1(&v100, v102);
  v44 = *(v43 + 8);
  v45 = *(v44 + 48);

  v46 = v45(v42, v44);
  result = sub_21B233960(&v100);
  if (v46 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v38 = v88;
  if (!v46)
  {
    goto LABEL_12;
  }

  v47 = 0;
  v48 = 0;
LABEL_15:
  v90 = v40;
  v91 = v39;
  v72 = v12;
  v89 = v47;
  sub_21B2A6400(0, v46, v47);
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51;
  }

  v78 = v53;
  if (v48 == v53)
  {
LABEL_23:

    sub_21B23A9F4(0, v46, v89);
    v100 = v105;
    v101 = v106;

    DataFrame.replaceColumn<A>(_:with:)(v73, v74, &v100);

    DataFrame.removeColumn(_:)(v75, v76, &v100);

    sub_21B233960(&v100);
  }

  else
  {
    v54 = (v77 + 8);
    v77 = v70 + 8;
    v55 = (v69 + 8);
    v56 = v68;
    v57 = v67;
    v58 = v71;
    while (1)
    {
      *&v100 = v38;
      *(&v100 + 1) = v91;
      v101 = v90;
      v102 = 0;
      v59 = v46;
      v103 = v46;
      v104 = v89;
      v60 = DataFrame.Rows.index(after:)(v48);
      *&v100 = v81;
      *(&v100 + 1) = v95;
      v101 = v93;
      v61 = type metadata accessor for Column();
      Column.subscript.getter(v48, v61, v57);
      v97 = v80;
      v98 = v94;
      v99 = v92;
      v62 = type metadata accessor for Column();
      Column.subscript.getter(v48, v62, v56);
      v63 = v107;
      v85(v57, v56);
      if (v63)
      {
        break;
      }

      v107 = 0;
      (*v54)(v56, v87);
      (*v77)(v57, v82);
      v64 = type metadata accessor for Column();
      Column.append(_:)(v58, v64);
      (*v55)(v58, v79);
      v48 = v60;
      v65 = v60 == v78;
      v38 = v88;
      v46 = v59;
      if (v65)
      {
        goto LABEL_23;
      }
    }

    (*v54)(v56, v87);
    (*v77)(v57, v82);

    return sub_21B23A9F4(0, v59, v89);
  }
}

uint64_t DataFrame.combineColumns<A, B, C>(_:_:into:transform:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v83 = a6;
  v82 = a5;
  v91 = a3;
  v84 = sub_21B34B474();
  v67 = *(v84 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v84);
  v70 = &v66 - v17;
  v81 = sub_21B34B474();
  v66 = *(v81 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v81);
  v69 = &v66 - v19;
  v96 = a9;
  v78 = sub_21B34B474();
  v68 = *(v78 - 8);
  v20 = *(v68 + 64);
  MEMORY[0x28223BE20](v78);
  v71 = &v66 - v21;
  v23 = *a1;
  v22 = a1[1];
  v24 = *a2;
  v25 = a2[1];
  v26 = v10[2];
  v100 = *v10;
  v101 = v26;
  v74 = v23;
  v97 = v23;
  v98 = v22;
  v73 = v22;

  v87 = a7;
  DataFrame.subscript.getter(&v97);

  v80 = v105;
  v94 = v106;
  v95 = *(&v105 + 1);
  v27 = v10[2];
  v100 = *v10;
  v101 = v27;
  v76 = v24;
  v97 = v24;
  v98 = v25;
  v75 = v25;

  v88 = a8;
  DataFrame.subscript.getter(&v97);

  v79 = v105;
  v92 = v106;
  v93 = *(&v105 + 1);
  v28 = v10[1];
  v29 = v10[2];
  if (*(*v10 + 16))
  {
    sub_21B233A74(*v10 + 32, &v100);
    v30 = v102;
    v31 = v103;
    __swift_project_boxed_opaque_existential_1(&v100, v102);
    v32 = *(v31 + 8);
    v33 = *(v32 + 48);
    v90 = a4;

    v34 = v33(v30, v32);
    result = sub_21B233960(&v100);
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    a4 = v90;
    if (v34)
    {
      v36 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v34 = 0;
  v36 = 2;
LABEL_7:
  v37 = sub_21B2FB1D4(0, v34, v36);

  sub_21B23A9F4(0, v34, v36);
  Column.init(name:capacity:)(v91, a4, v37, v96, &v105);
  v38 = *v10;
  v39 = v10[1];
  v40 = v10[2];
  v41 = *(*v10 + 16);
  v86 = *v10;
  v85 = v40;
  v91 = v39;
  if (!v41)
  {

LABEL_12:
    v47 = 2;
    sub_21B2A6400(0, 0, 2);
    v46 = 0;
    if (v50)
    {
      v48 = 0;
    }

    else
    {
      v48 = v49;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v38 + 32, &v100);
  v42 = v102;
  v43 = v103;
  __swift_project_boxed_opaque_existential_1(&v100, v102);
  v44 = *(v43 + 8);
  v45 = *(v44 + 48);

  v46 = v45(v42, v44);
  result = sub_21B233960(&v100);
  if (v46 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v38 = v86;
  v40 = v85;
  if (!v46)
  {
    goto LABEL_12;
  }

  v47 = 0;
  v48 = 0;
LABEL_15:
  v72 = v10;
  v90 = v46;
  v89 = v47;
  sub_21B2A6400(0, v46, v47);
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51;
  }

  v77 = v53;
  if (v48 == v53)
  {
LABEL_23:

    sub_21B23A9F4(0, v90, v89);
    v97 = v74;
    v98 = v73;
    v100 = v105;
    v101 = v106;

    DataFrame.replaceColumn<A, B>(_:with:)(&v97, &v100);

    v97 = v76;
    v98 = v75;
    DataFrame.removeColumn<A>(_:)(&v97);
  }

  else
  {
    v54 = (v67 + 8);
    v55 = (v66 + 8);
    v56 = (v68 + 8);
    v57 = v70;
    v58 = v69;
    v59 = v71;
    while (1)
    {
      *&v100 = v38;
      *(&v100 + 1) = v91;
      v101 = v40;
      v102 = 0;
      v103 = v90;
      v104 = v89;
      v60 = DataFrame.Rows.index(after:)(v48);
      *&v100 = v80;
      *(&v100 + 1) = v95;
      v101 = v94;
      v61 = type metadata accessor for Column();
      Column.subscript.getter(v48, v61, v58);
      v97 = v79;
      v98 = v93;
      v99 = v92;
      v62 = type metadata accessor for Column();
      Column.subscript.getter(v48, v62, v57);
      v63 = v107;
      v82(v58, v57);
      if (v63)
      {
        break;
      }

      v107 = 0;
      (*v54)(v57, v84);
      (*v55)(v58, v81);
      v64 = type metadata accessor for Column();
      Column.append(_:)(v59, v64);
      (*v56)(v59, v78);
      v48 = v60;
      v65 = v60 == v77;
      v38 = v86;
      v40 = v85;
      if (v65)
      {
        goto LABEL_23;
      }
    }

    (*v54)(v57, v84);
    (*v55)(v58, v81);

    return sub_21B23A9F4(0, v90, v89);
  }
}

uint64_t DataFrame.combineColumns<A, B, C, D>(_:_:_:into:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v105 = a8;
  v104 = a7;
  v85 = a5;
  v84 = a4;
  v101 = sub_21B34B474();
  v90 = *(v101 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v101);
  v78 = &v73 - v21;
  v100 = sub_21B34B474();
  v89 = *(v100 - 8);
  v22 = *(v89 + 64);
  MEMORY[0x28223BE20](v100);
  v75 = &v73 - v23;
  v96 = sub_21B34B474();
  v74 = *(v96 - 8);
  v24 = *(v74 + 64);
  MEMORY[0x28223BE20](v96);
  v77 = &v73 - v25;
  v112 = a14;
  v92 = sub_21B34B474();
  v73 = *(v92 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x28223BE20](v92);
  v76 = &v73 - v27;
  v28 = v14[2];
  v119 = *v14;
  v120 = v28;
  v80 = a1;
  v81 = a2;
  v97 = a11;
  DataFrame.subscript.getter(&v124, a1, a2, v97, v97);
  v111 = *(&v124 + 1);
  v95 = v124;
  v109 = v125;
  v29 = v14[2];
  v119 = *v14;
  v120 = v29;
  v82 = a3;
  v98 = a12;
  DataFrame.subscript.getter(&v124, a3, v84, v98, v98);
  v110 = *(&v124 + 1);
  v94 = v124;
  v107 = v125;
  v30 = v14[2];
  v119 = *v14;
  v120 = v30;
  v83 = a6;
  v99 = a13;
  DataFrame.subscript.getter(&v124, v85, a6, v99, v99);
  v108 = *(&v124 + 1);
  v93 = v124;
  v106 = v125;
  v31 = *v14;
  v32 = v14[2];
  v33 = *(*v14 + 16);
  v103 = v14[1];
  if (v33)
  {
    sub_21B233A74(v31 + 32, &v119);
    v35 = v121;
    v34 = v122;
    __swift_project_boxed_opaque_existential_1(&v119, v121);
    v36 = *(v34 + 8);
    v37 = *(v36 + 48);
    v38 = v105;

    v39 = v37(v35, v36);
    result = sub_21B233960(&v119);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v39)
    {
      v41 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v38 = v105;
  }

  v39 = 0;
  v41 = 2;
LABEL_7:
  v42 = v104;
  v43 = sub_21B2FB1D4(0, v39, v41);

  sub_21B23A9F4(0, v39, v41);
  Column.init(name:capacity:)(v42, v38, v43, v112, &v124);
  v45 = *v15;
  v44 = v15[1];
  v46 = v15[2];
  v47 = *(*v15 + 16);
  v102 = *v15;
  if (!v47)
  {

LABEL_12:
    v53 = 2;
    sub_21B2A6400(0, 0, 2);
    v52 = 0;
    if (v56)
    {
      v54 = 0;
    }

    else
    {
      v54 = v55;
    }

    goto LABEL_15;
  }

  sub_21B233A74(v45 + 32, &v119);
  v48 = v121;
  v49 = v122;
  __swift_project_boxed_opaque_existential_1(&v119, v121);
  v50 = *(v49 + 8);
  v51 = *(v50 + 48);

  v52 = v51(v48, v50);
  result = sub_21B233960(&v119);
  if (v52 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v45 = v102;
  if (!v52)
  {
    goto LABEL_12;
  }

  v53 = 0;
  v54 = 0;
LABEL_15:
  v104 = v46;
  v105 = v44;
  v79 = v15;
  LODWORD(v103) = v53;
  sub_21B2A6400(0, v52, v53);
  if (v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = v57;
  }

  v91 = v59;
  if (v54 == v59)
  {
LABEL_23:

    sub_21B23A9F4(0, v52, v103);
    v119 = v124;
    v120 = v125;

    DataFrame.replaceColumn<A>(_:with:)(v80, v81, &v119);

    DataFrame.removeColumn(_:)(v82, v84, &v119);
    sub_21B233960(&v119);
    DataFrame.removeColumn(_:)(v85, v83, &v119);

    sub_21B233960(&v119);
  }

  else
  {
    v87 = a10;
    v86 = a9;
    v88 = (v90 + 8);
    v89 += 8;
    v90 = v74 + 8;
    v60 = (v73 + 8);
    v61 = v78;
    v62 = v75;
    v63 = v77;
    v64 = v76;
    while (1)
    {
      *&v119 = v45;
      *(&v119 + 1) = v105;
      v120 = v104;
      v121 = 0;
      v65 = v52;
      v122 = v52;
      v123 = v103;
      v66 = DataFrame.Rows.index(after:)(v54);
      *&v119 = v95;
      *(&v119 + 1) = v111;
      v120 = v109;
      v67 = type metadata accessor for Column();
      Column.subscript.getter(v54, v67, v63);
      v116 = v94;
      v117 = v110;
      v118 = v107;
      v68 = type metadata accessor for Column();
      Column.subscript.getter(v54, v68, v62);
      v113 = v93;
      v114 = v108;
      v115 = v106;
      v69 = type metadata accessor for Column();
      Column.subscript.getter(v54, v69, v61);
      v70 = v126;
      v86(v63, v62, v61);
      v126 = v70;
      if (v70)
      {
        break;
      }

      (*v88)(v61, v101);
      (*v89)(v62, v100);
      (*v90)(v63, v96);
      v71 = type metadata accessor for Column();
      Column.append(_:)(v64, v71);
      (*v60)(v64, v92);
      v54 = v66;
      v72 = v66 == v91;
      v45 = v102;
      v52 = v65;
      if (v72)
      {
        goto LABEL_23;
      }
    }

    (*v88)(v61, v101);
    (*v89)(v62, v100);
    (*v90)(v63, v96);

    return sub_21B23A9F4(0, v65, v103);
  }
}