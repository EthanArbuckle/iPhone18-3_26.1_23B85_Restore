uint64_t AAFTestableEnvironment.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + *MEMORY[0x29EDC9E18]);
  v4 = *v3;
  v5 = *(*v3 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v8 = &v19 - v7;
  v10 = *(v9 + 8);
  v11 = (*(*(sub_29EB32938() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v13 = &v19 - v12;
  v14 = sub_29EB32828();
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v17 = &v19 - v16;

  sub_29EB32838();
  sub_29EB328B8();
  swift_getAtKeyPath();
  (*(v5 + 8))(v8, v4);
  (*(*(v10 - 8) + 56))(v13, 0, 1, v10);
  swift_getWitnessTable();
  sub_29EB30F14(v17, v13, v14, a2);
}

uint64_t AAFTestableEnvironment.init<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v7 = 0;
  v8 = sub_29EB32848();
  v9 = v2 & 1;
  v3 = sub_29EB32828();
  swift_getWitnessTable();
  result = sub_29EB30F14(&v8, &v7, v3, &v10);
  v5 = v11;
  v6 = v12;
  *a1 = v10;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t AAFTestableEnvironment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_29EB32828();
  swift_getWitnessTable();
  v4 = type metadata accessor for OverridableProperty();

  return sub_29EB310E4(v4, a2);
}

uint64_t sub_29EB2F5D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for AAFTestableEnvironment();
  return AAFTestableEnvironment.wrappedValue.getter(v5, a3);
}

uint64_t sub_29EB2F614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for AAFTestableEnvironment();
  return sub_29EB2F8D0(a1, v6);
}

uint64_t AAFTestableEnvironment.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_29EB2F8D0(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AAFTestableEnvironment.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AAFTestableEnvironment.wrappedValue.getter(a2, v11);
  return sub_29EB2F7CC;
}

void sub_29EB2F7CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_29EB2F8D0(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_29EB2F8D0((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_29EB2F8D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v7, v2);
  sub_29EB32828();
  swift_getWitnessTable();
  v8 = type metadata accessor for OverridableProperty();
  return sub_29EB31198(v5, v8);
}

uint64_t sub_29EB2F9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_29EB32828();
  swift_getWitnessTable();
  result = type metadata accessor for OverridableProperty();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EB2FA90(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v5 = v4 & 0xFFFFFFF8;
  v6 = a2 - 2147483645;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + v4);
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_23:
    v12 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if ((v12 + 1) >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  if (v8 != 2)
  {
    v9 = *(a1 + v4);
    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v9 = *(a1 + v4);
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_19:
  v11 = v9 - 1;
  if (v5)
  {
    v11 = 0;
    LODWORD(v5) = *a1;
  }

  return (v5 | v11) + 0x7FFFFFFF;
}

unsigned int *sub_29EB2FB78(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v8 = 0;
  }

  else
  {
    v6 = a3 - 2147483645;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v6 = 2;
    }

    if (v6 >= 0x10000)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v6 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = a2 - 2147483646;
    }

    else
    {
      v9 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v10 = a2 - 0x7FFFFFFF;
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v10;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v5) = v9;
      }

      else
      {
        *(result + v5) = v9;
      }
    }

    else if (v8)
    {
      *(result + v5) = v9;
    }
  }

  else
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        *(result + v5) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_29:
        *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
        return result;
      }

LABEL_28:
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

    if (v8 == 2)
    {
      *(result + v5) = 0;
      goto LABEL_28;
    }

    *(result + v5) = 0;
    if (a2)
    {
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t sub_29EB2FD18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EB2FD38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2A1881390[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_2A1881390);
    }
  }
}

double AAFTestableEnvironmentObject.init()@<D0>(uint64_t a1@<X8>)
{
  v7[0] = sub_29EB32898();
  v7[1] = v2;
  v6 = 0;
  v3 = sub_29EB328A8();
  swift_getWitnessTable();
  sub_29EB30F14(v7, &v6, v3, &v8);
  v4 = v9;
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v4;
  return result;
}

uint64_t AAFTestableEnvironmentObject.wrappedValue.getter(uint64_t a1)
{
  v2 = *(v1 + 2);
  v8 = *v1;
  v9 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_29EB328A8();
  swift_getWitnessTable();
  v5 = type metadata accessor for OverridableProperty();
  sub_29EB310E4(v5, &v7);
  return v7;
}

uint64_t sub_29EB2FECC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v10 = *a1;
  v11 = *(a1 + 2);
  v8 = type metadata accessor for AAFTestableEnvironmentObject();
  result = AAFTestableEnvironmentObject.wrappedValue.getter(v8);
  *a4 = result;
  return result;
}

uint64_t sub_29EB2FF20(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  v6 = *a1;
  v10 = a2[2];
  v7 = *a2;
  v8 = type metadata accessor for AAFTestableEnvironmentObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  AAFTestableEnvironmentObject.wrappedValue.setter(v6, v8);

  return swift_unknownObjectRelease();
}

uint64_t AAFTestableEnvironmentObject.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2);
  v9 = *v2;
  v10 = v3;
  v8 = a1;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_29EB328A8();
  swift_getWitnessTable();
  v6 = type metadata accessor for OverridableProperty();
  return sub_29EB31198(&v8, v6);
}

void (*AAFTestableEnvironmentObject.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v6 = *v2;
  v7 = v2[1];
  v5[4] = a2;
  v5[5] = v6;
  v8 = v2[2];
  v5[6] = v7;
  v5[7] = v8;
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = AAFTestableEnvironmentObject.wrappedValue.getter(a2);
  return sub_29EB300E8;
}

void sub_29EB300E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    AAFTestableEnvironmentObject.wrappedValue.setter(v3, v5);
    swift_unknownObjectRelease();

    v6 = v2[3];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRetain();
    AAFTestableEnvironmentObject.wrappedValue.setter(v3, v5);
    swift_unknownObjectRelease();
  }

  free(v2);
}

uint64_t AAFTestableEnvironmentObject.projectedValue.getter(uint64_t a1)
{
  v2 = *(v1 + 2);
  v8 = *v1;
  v9 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_29EB328A8();
  swift_getWitnessTable();
  v5 = type metadata accessor for OverridableProperty();
  sub_29EB3150C(v5, &v7);
  return v7;
}

__n128 sub_29EB30264(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_29EB30270()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29EB302CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29EB30328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t AAFTestableState.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29EB32938();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v10 = &v21 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29EB328F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v21 - v17;
  v19 = *(v11 + 16);
  v19(v14, a1, a2);
  sub_29EB328C8();
  v19(v10, a1, a2);
  (*(v11 + 56))(v10, 0, 1, a2);
  swift_getWitnessTable();
  sub_29EB30F14(v18, v10, v15, a3);
  return (*(v11 + 8))(a1, a2);
}

uint64_t AAFTestableState.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_29EB308B0(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AAFTestableState.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AAFTestableState.wrappedValue.getter(a2);
  return sub_29EB30720;
}

void sub_29EB30720(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_29EB308B0(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_29EB308B0((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_29EB30824(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  sub_29EB328F8();
  swift_getWitnessTable();
  v3 = type metadata accessor for OverridableProperty();

  return a2(v3);
}

uint64_t sub_29EB308B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v7, v2);
  sub_29EB328F8();
  swift_getWitnessTable();
  v8 = type metadata accessor for OverridableProperty();
  return sub_29EB31198(v5, v8);
}

uint64_t sub_29EB309B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = type metadata accessor for AAFTestableState();
  return AAFTestableState.wrappedValue.getter(v4);
}

uint64_t sub_29EB309EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for AAFTestableState();
  return sub_29EB308B0(a1, v6);
}

uint64_t sub_29EB30A44(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_29EB328F8();
  swift_getWitnessTable();
  result = type metadata accessor for OverridableProperty();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EB30AE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_29EB30C30(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_29EB30E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = sub_29EB30EAC(*v2);

  return swift_unknownObjectRetain();
}

uint64_t sub_29EB30E6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EB30EAC(uint64_t result)
{
  if (!result)
  {
    result = sub_29EB32888();
    __break(1u);
  }

  return result;
}

uint64_t sub_29EB30F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = sub_29EB32938();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v12 = &v16 - v11;
  v13 = *(a3 - 8);
  (*(v13 + 16))(a4, a1, a3);
  type metadata accessor for OverridableProperty.Override();
  (*(v9 + 16))(v12, a2, v8);
  swift_allocObject();
  v14 = sub_29EB31AB8(v12);
  (*(v9 + 8))(a2, v8);
  (*(v13 + 8))(a1, a3);
  result = type metadata accessor for OverridableProperty();
  *(a4 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_29EB310E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 36)))
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();

    sub_29EB31BF0(AssociatedTypeWitness, a2);
  }

  else
  {
    v9 = a1 + 16;
    v8 = *(a1 + 16);
    v10 = *(*(v9 + 8) + 16);

    return v10(v8);
  }
}

uint64_t sub_29EB31198(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x2A1C7C4A8])();
  v10 = &v27 - v9;
  v28 = *(v5 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14;
  v16 = sub_29EB32938();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v27 - v19;
  if (*(v2 + *(a2 + 36)))
  {
    v21 = v29;
    (*(v6 + 16))(v20, v29, v15);
    (*(v6 + 56))(v20, 0, 1, v15);

    sub_29EB326BC();
    (*(v17 + 8))(v20, v16);

    return (*(v6 + 8))(v21, v15);
  }

  v23 = v29;
  (*(v28 + 16))(v13);
  v30 = v15;
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    sub_29EB32660(&v31, v34);
    v24 = v35;
    v25 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v6 + 16))(v10, v23, v15);
    (*(v25 + 16))(v10, v24, v25);
    (*(v6 + 8))(v23, v15);
    v26 = v34;
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    result = (*(v6 + 8))(v23, v15);
    if (!*(&v32 + 1))
    {
      return result;
    }

    v26 = &v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_29EB3150C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](a1);
  v19 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v15 - v6;
  v17 = *(v3 + 16);
  v17(&v15 - v6);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v10 = *(a1 + 24);
  v16 = *(a1 + 16);
  *(v9 + 4) = v16;
  *(v9 + 5) = v10;
  v15 = *(v3 + 32);
  v15(&v9[v8], v7, a1);
  v11 = v19;
  (v17)(v19, v18, a1);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v13 = v15;
  *(v12 + 4) = v16;
  *(v12 + 5) = v10;
  v13(&v12[v8], v11, a1);
  swift_getAssociatedTypeWitness();
  return sub_29EB32908();
}

uint64_t sub_29EB31754(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1);
  v7 = type metadata accessor for OverridableProperty();
  return sub_29EB31198(v5, v7);
}

void sub_29EB31858(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  sub_29EB32938();
  v4 = *(*v3 + *MEMORY[0x29EDC9DE8] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_29EB32404(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_29EB31954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_29EB32938();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_29EB319EC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_29EB32938();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, a2, v4);
}

uint64_t *sub_29EB31AB8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29EB32808();
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_29EB32938();
  if (v4)
  {
    v8 = v7;
    v9 = sub_29EB322F0();
    (*(*(v8 - 8) + 8))(a1, v8);
    v1[2] = v9;
  }

  else
  {
    (*(*(v7 - 8) + 8))(a1);
    type metadata accessor for OverridableProperty.Override();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_29EB31BF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_29EB32938();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = v22 - v9;
  v11 = *(v5 + 88);
  v12 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v13 = (*(*(sub_29EB32938() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  sub_29EB31858(v22 - v14);
  v15 = swift_dynamicCast();
  v16 = *(*(a1 - 8) + 56);
  if (v15)
  {
    v17 = *(a1 - 8);
    v16(v10, 0, 1, a1);
    return (*(v17 + 32))(a2, v10, a1);
  }

  else
  {
    v16(v10, 1, 1, a1);
    (*(v7 + 8))(v10, v6);
    v22[0] = a1;
    swift_getMetatypeMetadata();
    v19 = sub_29EB32918();
    v21 = v20;
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_29EB32948();
    MEMORY[0x29EDA8370](0xD000000000000039, 0x800000029EB33470);
    MEMORY[0x29EDA8370](v19, v21);
    MEMORY[0x29EDA8370](0xD000000000000048, 0x800000029EB334B0);
    result = sub_29EB32978();
    __break(1u);
  }

  return result;
}

uint64_t sub_29EB31EBC()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_29EB31EDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C73398](v0, 24, 7);
}

uint64_t sub_29EB31F34(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    type metadata accessor for OverridableProperty.Override();
    result = sub_29EB32938();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EB31FD0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_29EB32114(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_29EB322F0()
{
  type metadata accessor for os_unfair_lock_s();
  sub_29EB32968();
  return sub_29EB32958();
}

uint64_t sub_29EB3236C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x29EDC9DE8]) - 8) + 16))(a2, v3);
}

uint64_t sub_29EB32404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_29EB31954(a1, a2);
}

uint64_t sub_29EB32424@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for OverridableProperty();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80));
  return sub_29EB310E4(v5, a1);
}

uint64_t objectdestroyTm()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for OverridableProperty() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(*(v2 - 8) + 8))(&v0[v5], v2);
  v8 = *&v0[v5 + v3[11]];

  return MEMORY[0x2A1C733A0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_29EB32584(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(*(type metadata accessor for OverridableProperty() - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];

  return sub_29EB31754(a1);
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

uint64_t sub_29EB32660(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_29EB326BC()
{
  v1 = v0[2];
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 88);
  swift_getAssociatedTypeWitness();
  sub_29EB32938();
  v2 = *(*v1 + *MEMORY[0x29EDC9DE8] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_29EB327A8(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_29EB327A8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_29EB319EC(a1, v1[4]);
}