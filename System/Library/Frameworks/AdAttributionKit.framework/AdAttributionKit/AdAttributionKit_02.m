char *sub_236A211C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61548, &qword_236A33E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_236A212F0()
{
  result = qword_27DE61510;
  if (!qword_27DE61510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61510);
  }

  return result;
}

unint64_t sub_236A21344()
{
  result = qword_27DE61518;
  if (!qword_27DE61518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61518);
  }

  return result;
}

unint64_t sub_236A21398()
{
  result = qword_2813163D8;
  if (!qword_2813163D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813163D8);
  }

  return result;
}

unint64_t sub_236A213EC()
{
  result = qword_27DE61538;
  if (!qword_27DE61538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE61530, &qword_236A33D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61538);
  }

  return result;
}

uint64_t sub_236A21450(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_236A2F334() & 1;
  }
}

unint64_t sub_236A214C4()
{
  result = qword_27DE61540;
  if (!qword_27DE61540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61540);
  }

  return result;
}

uint64_t sub_236A21530(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_236A215CC(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_236A217A4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = (&result[v15] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v27 = a2 & 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            v27[1] = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t sub_236A21A38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseDetails() + 28);
  v4 = sub_236A2EDB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InAppPurchaseDetails()
{
  result = qword_27DE615D0;
  if (!qword_27DE615D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236A21B24()
{
  v1 = (v0 + *(type metadata accessor for InAppPurchaseDetails() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_236A21B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v15 = type metadata accessor for InAppPurchaseDetails();
  v16 = v15[7];
  v17 = sub_236A2EDB4();
  result = (*(*(v17 - 8) + 32))(a9 + v16, a7, v17);
  *(a9 + v15[8]) = a8;
  v19 = (a9 + v15[9]);
  *v19 = a10;
  v19[1] = a11;
  *(a9 + v15[10]) = a12;
  return result;
}

uint64_t sub_236A21C48(uint64_t a1)
{
  v2 = sub_236A22444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A21C84(uint64_t a1)
{
  v2 = sub_236A22444();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_236A21CC0()
{
  v1 = 0x62616D75736E6F63;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x75736E6F436E6F6ELL;
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

uint64_t sub_236A21D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A22FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A21D80(uint64_t a1)
{
  v2 = sub_236A2239C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A21DBC(uint64_t a1)
{
  v2 = sub_236A2239C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A21DF8(uint64_t a1)
{
  v2 = sub_236A224EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A21E34(uint64_t a1)
{
  v2 = sub_236A224EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A21E70(uint64_t a1)
{
  v2 = sub_236A22498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A21EAC(uint64_t a1)
{
  v2 = sub_236A22498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A21EE8(uint64_t a1)
{
  v2 = sub_236A223F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A21F24(uint64_t a1)
{
  v2 = sub_236A223F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A21F60(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61550, &qword_236A33E20);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61558, &qword_236A33E28);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61560, &qword_236A33E30);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61568, &qword_236A33E38);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61570, &qword_236A33E40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2239C();
  sub_236A2F404();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_236A22444();
      v12 = v29;
      sub_236A2F234();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_236A223F0();
      v12 = v32;
      sub_236A2F234();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_236A22498();
    sub_236A2F234();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_236A224EC();
  sub_236A2F234();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_236A2239C()
{
  result = qword_27DE61578;
  if (!qword_27DE61578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61578);
  }

  return result;
}

unint64_t sub_236A223F0()
{
  result = qword_27DE61580;
  if (!qword_27DE61580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61580);
  }

  return result;
}

unint64_t sub_236A22444()
{
  result = qword_27DE61588;
  if (!qword_27DE61588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61588);
  }

  return result;
}

unint64_t sub_236A22498()
{
  result = qword_27DE61590;
  if (!qword_27DE61590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61590);
  }

  return result;
}

unint64_t sub_236A224EC()
{
  result = qword_27DE61598;
  if (!qword_27DE61598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61598);
  }

  return result;
}

void *sub_236A22558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_236A23150(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_236A225A0()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x707954726566666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x797469746E617571;
  if (v1 != 1)
  {
    v4 = 0x79636E6572727563;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_236A22698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A23FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A226C0(uint64_t a1)
{
  v2 = sub_236A23790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A226FC(uint64_t a1)
{
  v2 = sub_236A23790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A22738(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE615A0, &qword_236A33E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A23790();
  sub_236A2F404();
  v22 = *v3;
  v23 = *(v3 + 4);
  v21 = 0;
  type metadata accessor for Decimal();
  sub_236A1E7F8(&qword_27DE614A8, type metadata accessor for Decimal);
  sub_236A2F304();
  if (!v2)
  {
    v11 = *(v3 + 3);
    LOBYTE(v22) = 1;
    sub_236A2F2E4();
    v12 = *(v3 + 4);
    v13 = *(v3 + 5);
    LOBYTE(v22) = 2;
    sub_236A2F2C4();
    v14 = type metadata accessor for InAppPurchaseDetails();
    v15 = v14[7];
    LOBYTE(v22) = 3;
    sub_236A2EDB4();
    sub_236A1E7F8(&qword_27DE614B0, MEMORY[0x277CC9578]);
    sub_236A2F304();
    LOBYTE(v22) = *(v3 + v14[8]);
    v21 = 4;
    sub_236A237E4();
    sub_236A2F304();
    v16 = (v3 + v14[9]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v22) = 5;
    sub_236A2F244();
    LOBYTE(v22) = *(v3 + v14[10]);
    v21 = 6;
    sub_236A1E37C();
    sub_236A2F284();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_236A22A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_236A2EDB4();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE615B8, &qword_236A33E50);
  v29 = *(v31 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v27 - v9;
  v11 = type metadata accessor for InAppPurchaseDetails();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_236A23790();
  v32 = v10;
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v27 = v7;
  v17 = v29;
  v18 = v30;
  type metadata accessor for Decimal();
  v38 = 0;
  sub_236A1E7F8(&qword_27DE614C8, type metadata accessor for Decimal);
  v19 = v31;
  sub_236A2F1F4();
  v20 = v14;
  *v14 = v34;
  *(v14 + 4) = v35;
  v37 = 1;
  *(v14 + 3) = sub_236A2F1D4();
  v37 = 2;
  *(v14 + 4) = sub_236A2F1B4();
  *(v14 + 5) = v21;
  v37 = 3;
  sub_236A1E7F8(&qword_27DE614D0, MEMORY[0x277CC9578]);
  v22 = v27;
  sub_236A2F1F4();
  (*(v18 + 32))(v20 + v11[7], v22, v4);
  v36 = 4;
  sub_236A23838();
  sub_236A2F1F4();
  *(v20 + v11[8]) = v37;
  v37 = 5;
  v23 = sub_236A2F134();
  v24 = (v20 + v11[9]);
  *v24 = v23;
  v24[1] = v25;
  v36 = 6;
  sub_236A1E840();
  sub_236A2F174();
  (*(v17 + 8))(v32, v19);
  *(v20 + v11[10]) = v37;
  sub_236A2388C(v20, v28);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_2369FE0EC(v20);
}

uint64_t sub_236A22FD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62616D75736E6F63 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75736E6F436E6F6ELL && a2 == 0xED0000656C62616DLL || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000236A37190 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000236A371B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_236A2F334();

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

void *sub_236A23150(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61650, &qword_236A344F8);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61658, &qword_236A34500);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61660, &qword_236A34508);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61668, &qword_236A34510);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61670, &qword_236A34518);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_236A2239C();
  v21 = v50;
  sub_236A2F3F4();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_236A2F214();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_236A2A304();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_236A22498();
        v36 = v40;
        sub_236A2F114();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_236A224EC();
        v29 = v40;
        sub_236A2F114();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_236A22444();
      v35 = v40;
      sub_236A2F114();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_236A223F0();
      v37 = v40;
      sub_236A2F114();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_236A2F0E4();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40) + 48);
  *v15 = &type metadata for InAppPurchaseDetails.InAppPurchaseType;
  sub_236A2F124();
  sub_236A2F0D4();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_236A23790()
{
  result = qword_27DE615A8;
  if (!qword_27DE615A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615A8);
  }

  return result;
}

unint64_t sub_236A237E4()
{
  result = qword_27DE615B0;
  if (!qword_27DE615B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615B0);
  }

  return result;
}

unint64_t sub_236A23838()
{
  result = qword_27DE615C0;
  if (!qword_27DE615C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615C0);
  }

  return result;
}

uint64_t sub_236A2388C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_236A238F4()
{
  result = qword_27DE615C8;
  if (!qword_27DE615C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615C8);
  }

  return result;
}

void sub_236A23970()
{
  type metadata accessor for Decimal();
  if (v0 <= 0x3F)
  {
    sub_236A2EDB4();
    if (v1 <= 0x3F)
    {
      sub_2369FE33C(319, &qword_27DE60D50);
      if (v2 <= 0x3F)
      {
        sub_2369FE33C(319, &qword_27DE614F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_236A23AD8()
{
  result = qword_27DE615E0;
  if (!qword_27DE615E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615E0);
  }

  return result;
}

unint64_t sub_236A23B30()
{
  result = qword_27DE615E8;
  if (!qword_27DE615E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615E8);
  }

  return result;
}

unint64_t sub_236A23B88()
{
  result = qword_27DE615F0;
  if (!qword_27DE615F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615F0);
  }

  return result;
}

unint64_t sub_236A23BE0()
{
  result = qword_27DE615F8;
  if (!qword_27DE615F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615F8);
  }

  return result;
}

unint64_t sub_236A23C38()
{
  result = qword_27DE61600;
  if (!qword_27DE61600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61600);
  }

  return result;
}

unint64_t sub_236A23C90()
{
  result = qword_27DE61608;
  if (!qword_27DE61608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61608);
  }

  return result;
}

unint64_t sub_236A23CE8()
{
  result = qword_27DE61610;
  if (!qword_27DE61610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61610);
  }

  return result;
}

unint64_t sub_236A23D40()
{
  result = qword_27DE61618;
  if (!qword_27DE61618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61618);
  }

  return result;
}

unint64_t sub_236A23D98()
{
  result = qword_27DE61620;
  if (!qword_27DE61620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61620);
  }

  return result;
}

unint64_t sub_236A23DF0()
{
  result = qword_27DE61628;
  if (!qword_27DE61628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61628);
  }

  return result;
}

unint64_t sub_236A23E48()
{
  result = qword_27DE61630;
  if (!qword_27DE61630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61630);
  }

  return result;
}

unint64_t sub_236A23EA0()
{
  result = qword_27DE61638;
  if (!qword_27DE61638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61638);
  }

  return result;
}

unint64_t sub_236A23EF8()
{
  result = qword_27DE61640;
  if (!qword_27DE61640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61640);
  }

  return result;
}

unint64_t sub_236A23F50()
{
  result = qword_27DE61648;
  if (!qword_27DE61648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61648);
  }

  return result;
}

uint64_t sub_236A23FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954 || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000236A371D0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_236A2420C()
{
  v0 = sub_236A2F104();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236A24260(char a1)
{
  if (a1)
  {
    return 0x6B63696C63;
  }

  else
  {
    return 2003134838;
  }
}

unint64_t sub_236A24290()
{
  result = qword_27DE61678;
  if (!qword_27DE61678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61678);
  }

  return result;
}

uint64_t sub_236A242E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_236A24404()
{
  result = qword_27DE61680;
  if (!qword_27DE61680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61680);
  }

  return result;
}

uint64_t sub_236A24458()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_236A2EE64();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &unk_2849A80F8;
  v5 = [v3 interfaceWithProtocol_];

  [v2 setExportedInterface_];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject_];

  v7 = &unk_2849A8B30;
  v8 = [v3 interfaceWithProtocol_];

  [v2 setRemoteObjectInterface_];
  v16 = sub_236A02084;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_12;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler_];
  _Block_release(v9);
  v16 = sub_236A020D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_6_2;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler_];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for ImpressionIntakeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_27DE6C350 = result;
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A2471C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DevelopmentPostbackConfiguration() + 20);
  v4 = sub_236A2ED44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DevelopmentPostbackConfiguration()
{
  result = qword_27DE616E8;
  if (!qword_27DE616E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236A247E4()
{
  v1 = (v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_236A24848()
{
  v1 = (v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_236A248D0()
{
  v1 = *(v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 44));
}

uint64_t sub_236A24904()
{
  v1 = (v0 + *(type metadata accessor for DevelopmentPostbackConfiguration() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_236A24930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for DevelopmentPostbackConfiguration();
  v20 = v19[5];
  v21 = sub_236A2ED44();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  v23 = &a9[v19[6]];
  *v23 = a4;
  *(v23 + 1) = a5;
  *&a9[v19[7]] = a6;
  v24 = &a9[v19[8]];
  *v24 = a7;
  *(v24 + 1) = a8;
  a9[v19[9]] = a10 & 1;
  a9[v19[10]] = a11;
  *&a9[v19[11]] = a12;
  v25 = &a9[v19[12]];
  *v25 = a13;
  v25[8] = a14 & 1;
  return result;
}

uint64_t sub_236A24A5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x6C7074656B72616DLL;
    if (a1 != 2)
    {
      v6 = 0x4449656372756F73;
    }

    if (a1)
    {
      v5 = 0x6B63616274736F70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69737265766E6F63;
    v2 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0x7463617265746E69;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_236A24BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A25B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A24BF8(uint64_t a1)
{
  v2 = sub_236A24FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A24C34(uint64_t a1)
{
  v2 = sub_236A24FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A24C70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61688, "L@");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A24FE8();
  sub_236A2F404();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_236A2F2C4();
  if (!v2)
  {
    v13 = type metadata accessor for DevelopmentPostbackConfiguration();
    v14 = v13[5];
    LOBYTE(v26) = 1;
    sub_236A2ED44();
    sub_236A25730(&qword_27DE61698);
    sub_236A2F304();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v26) = 2;
    sub_236A2F2C4();
    v18 = *(v3 + v13[7]);
    LOBYTE(v26) = 3;
    sub_236A2F2F4();
    v19 = (v3 + v13[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v26) = 4;
    sub_236A2F2C4();
    LOBYTE(v26) = *(v3 + v13[9]);
    v27 = 5;
    sub_236A11730();
    sub_236A2F304();
    LOBYTE(v26) = *(v3 + v13[10]);
    v27 = 6;
    sub_236A2503C();
    sub_236A2F304();
    v26 = *(v3 + v13[11]);
    v27 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE616A8, &qword_236A346A8);
    sub_236A257C8(&qword_27DE616B0, sub_236A25090);
    sub_236A2F304();
    v22 = v3 + v13[12];
    v23 = *v22;
    v24 = v22[8];
    LOBYTE(v26) = 8;
    sub_236A2F2B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_236A24FE8()
{
  result = qword_27DE61690;
  if (!qword_27DE61690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61690);
  }

  return result;
}

unint64_t sub_236A2503C()
{
  result = qword_27DE616A0;
  if (!qword_27DE616A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616A0);
  }

  return result;
}

unint64_t sub_236A25090()
{
  result = qword_27DE616B8;
  if (!qword_27DE616B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616B8);
  }

  return result;
}

uint64_t sub_236A250E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_236A2ED44();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE616C0, qword_236A346B0);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v36 - v9;
  v11 = type metadata accessor for DevelopmentPostbackConfiguration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_236A24FE8();
  v41 = v10;
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v17 = v7;
  v18 = v38;
  v19 = v39;
  v36 = v11;
  LOBYTE(v43) = 0;
  *v14 = sub_236A2F1B4();
  v14[1] = v20;
  LOBYTE(v43) = 1;
  sub_236A25730(&qword_27DE616C8);
  sub_236A2F1F4();
  v21 = v36;
  (*(v19 + 32))(v14 + *(v36 + 20), v17, v4);
  LOBYTE(v43) = 2;
  v22 = sub_236A2F1B4();
  v23 = (v14 + v21[6]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v43) = 3;
  v25 = v21;
  v26 = v18;
  *(v14 + v25[7]) = sub_236A2F1E4();
  LOBYTE(v43) = 4;
  v27 = v40;
  v28 = sub_236A2F1B4();
  v29 = (v14 + v25[8]);
  *v29 = v28;
  v29[1] = v30;
  v44 = 5;
  sub_236A12058();
  sub_236A2F1F4();
  *(v14 + v25[9]) = v43;
  v44 = 6;
  sub_236A25774();
  sub_236A2F1F4();
  *(v14 + v25[10]) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE616A8, &qword_236A346A8);
  v44 = 7;
  sub_236A257C8(&qword_27DE616D8, sub_236A25840);
  sub_236A2F1F4();
  *(v14 + v25[11]) = v43;
  LOBYTE(v43) = 8;
  v31 = sub_236A2F1A4();
  LOBYTE(v25) = v32;
  (*(v26 + 8))(v41, v27);
  v33 = v37;
  v34 = v14 + *(v36 + 48);
  *v34 = v31;
  v34[8] = v25 & 1;
  sub_236A25894(v14, v33);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_236A0096C(v14);
}

uint64_t sub_236A25730(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_236A2ED44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_236A25774()
{
  result = qword_27DE616D0;
  if (!qword_27DE616D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616D0);
  }

  return result;
}

uint64_t sub_236A257C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE616A8, &qword_236A346A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_236A25840()
{
  result = qword_27DE616E0;
  if (!qword_27DE616E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616E0);
  }

  return result;
}

uint64_t sub_236A25894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevelopmentPostbackConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_236A25950()
{
  sub_236A2ED44();
  if (v0 <= 0x3F)
  {
    sub_236A010FC(319, &qword_27DE616F8, &type metadata for MeasurementWindowConfiguration, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_236A010FC(319, &qword_27DE60E28, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_236A25A7C()
{
  result = qword_27DE61700;
  if (!qword_27DE61700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61700);
  }

  return result;
}

unint64_t sub_236A25AD4()
{
  result = qword_27DE61708;
  if (!qword_27DE61708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61708);
  }

  return result;
}

unint64_t sub_236A25B2C()
{
  result = qword_27DE61710;
  if (!qword_27DE61710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61710);
  }

  return result;
}

uint64_t sub_236A25B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEB000000004C5255 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000236A37270 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_236A25EA0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_236A25F8C@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_236A25FC4()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_236A0516C;
  v2 = *(v0 + 16);

  return sub_236A03D68(v2, sub_236A25EA0, 0);
}

unint64_t sub_236A260BC()
{
  v1 = 0x74736F506B636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x69737265766E6F63;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_236A2617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A26520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A261A4(uint64_t a1)
{
  v2 = sub_236A2646C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A261E0(uint64_t a1)
{
  v2 = sub_236A2646C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2621C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61718, &qword_236A34878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2646C();
  sub_236A2F404();
  v11 = *v3;
  v21 = 0;
  sub_236A2F2E4();
  if (!v2)
  {
    v20 = *(v3 + 8);
    v19 = 1;
    sub_236A1A9D0();
    sub_236A2F284();
    v12 = *(v3 + 9);
    v18 = 2;
    sub_236A2F2D4();
    v17 = v3[2];
    v16[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61728, qword_236A34880);
    sub_236A26AF4(&qword_27DE61730, sub_236A2503C);
    sub_236A2F284();
    v13 = v3[3];
    v14 = v3[4];
    v16[14] = 4;
    sub_236A2F244();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_236A2646C()
{
  result = qword_27DE61720;
  if (!qword_27DE61720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61720);
  }

  return result;
}

double sub_236A264C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_236A266EC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_236A26520(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000236A37030 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000236A37050 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEF73657079546E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_236A2F334();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_236A266EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61750, &unk_236A34A48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2646C();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_236A2F1D4();
  v25 = 1;
  sub_236A1B164();
  sub_236A2F174();
  v12 = v26;
  v24 = 2;
  v20 = sub_236A2F1C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61728, qword_236A34880);
  v23 = 3;
  sub_236A26AF4(&qword_27DE61758, sub_236A25774);
  sub_236A2F174();
  v19 = v21;
  v22 = 4;
  v13 = sub_236A2F134();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 9) = v20 & 1;
  *(a2 + 16) = v19;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

unint64_t sub_236A269F0()
{
  result = qword_27DE61738;
  if (!qword_27DE61738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61738);
  }

  return result;
}

unint64_t sub_236A26A48()
{
  result = qword_27DE61740;
  if (!qword_27DE61740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61740);
  }

  return result;
}

unint64_t sub_236A26AA0()
{
  result = qword_27DE61748;
  if (!qword_27DE61748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61748);
  }

  return result;
}

uint64_t sub_236A26AF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE61728, qword_236A34880);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A26B84@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for ServiceResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  sub_236A083C8();
  sub_236A2F3E4();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_236A26C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_236A26D54(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_236A26D84(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_236A2F334();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_236A26DF4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_236A19714(*a1, *a2);
}

uint64_t sub_236A26E0C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_236A19B04(*v1);
}

uint64_t sub_236A26E20(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_236A19ADC(a1, *v2);
}

uint64_t sub_236A26E34(uint64_t a1, void *a2)
{
  sub_236A2F3B4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_236A19ADC(v8, *v2);
  return sub_236A2F3D4();
}

uint64_t sub_236A26E80(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_236A26D54(*v1);
}

uint64_t sub_236A26E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_236A26C88(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_236A26EC8@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_236A28374();
  *a2 = result;
  return result;
}

uint64_t sub_236A26EFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_236A26F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_236A26FB0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_2369FEDE0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_236A26FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_236A2703C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_236A27090(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_236A270E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_236A27138(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v47 = v7;
  v8 = sub_236A2F324();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = v40 - v10;
  v11 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v42 = v11;
  v40[1] = v12;
  v13 = sub_236A2F324();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v41 = v40 - v16;
  v43 = *(v4 - 8);
  v17 = *(v43 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v40[0] = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v52 = v4;
  type metadata accessor for ServiceResult.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_236A2F324();
  v54 = *(v24 - 8);
  v55 = v24;
  v25 = *(v54 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v40 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2F404();
  (*(v20 + 16))(v23, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v58 = 1;
    v30 = v48;
    v31 = v55;
    sub_236A2F234();
    v57 = v29;
    sub_236A27694();
    v32 = v50;
    sub_236A2F304();
    (*(v49 + 8))(v30, v32);
    return (*(v54 + 8))(v27, v31);
  }

  else
  {
    v34 = v43;
    v35 = v40[0];
    v36 = v52;
    (*(v43 + 32))(v40[0], v23, v52);
    v56 = 0;
    v37 = v41;
    v38 = v55;
    sub_236A2F234();
    v39 = v45;
    sub_236A2F304();
    (*(v44 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    return (*(v54 + 8))(v27, v38);
  }
}

unint64_t sub_236A27694()
{
  result = qword_27DE61760;
  if (!qword_27DE61760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61760);
  }

  return result;
}

uint64_t sub_236A276E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v70 = a4;
  v6 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v60 = sub_236A2F224();
  v59 = *(v60 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v68 = &v55 - v8;
  v9 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v63 = swift_getWitnessTable();
  v64 = v9;
  v58 = sub_236A2F224();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v65 = &v55 - v11;
  type metadata accessor for ServiceResult.CodingKeys();
  v73 = swift_getWitnessTable();
  v12 = sub_236A2F224();
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v61 = a2;
  v62 = a3;
  v17 = type metadata accessor for ServiceResult();
  v69 = *(v17 - 8);
  v18 = *(v69 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v55 - v25;
  v27 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v28 = v74;
  sub_236A2F3F4();
  if (!v28)
  {
    v74 = v24;
    v56 = v21;
    v73 = v26;
    v29 = v71;
    v30 = v16;
    *&v75 = sub_236A2F214();
    sub_236A2EF74();
    swift_getWitnessTable();
    *&v77 = sub_236A2F094();
    *(&v77 + 1) = v31;
    *&v78 = v32;
    *(&v78 + 1) = v33;
    sub_236A2F084();
    swift_getWitnessTable();
    sub_236A2EFF4();
    v34 = v75;
    if (v75 == 2 || (v55 = v77, v75 = v77, v76 = v78, (sub_236A2F004() & 1) == 0))
    {
      v43 = sub_236A2F0E4();
      swift_allocError();
      v45 = v44;
      v46 = v29;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40) + 48);
      *v45 = v17;
      sub_236A2F124();
      sub_236A2F0D4();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v72 + 8))(v16, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v75) = 1;
        v35 = v68;
        v36 = v30;
        sub_236A2F114();
        v37 = v70;
        v38 = v72;
        sub_236A27EAC();
        v39 = v60;
        sub_236A2F1F4();
        (*(v59 + 8))(v35, v39);
        (*(v38 + 8))(v36, v29);
        swift_unknownObjectRelease();
        v40 = v56;
        *v56 = v75;
        swift_storeEnumTagMultiPayload();
        v41 = *(v69 + 32);
        v42 = v73;
        v41(v73, v40, v17);
      }

      else
      {
        LOBYTE(v75) = 0;
        v48 = v65;
        v49 = v30;
        sub_236A2F114();
        v50 = v72;
        v51 = v69;
        v52 = v58;
        sub_236A2F1F4();
        (*(v57 + 8))(v48, v52);
        (*(v50 + 8))(v49, v29);
        swift_unknownObjectRelease();
        v54 = v74;
        swift_storeEnumTagMultiPayload();
        v41 = *(v51 + 32);
        v42 = v73;
        v41(v73, v54, v17);
        v37 = v70;
      }

      v41(v37, v42, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

unint64_t sub_236A27EAC()
{
  result = qword_27DE61768;
  if (!qword_27DE61768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61768);
  }

  return result;
}

uint64_t sub_236A27F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_236A27FB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_236A280C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
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

void sub_236A283AC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = *a1;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = a6;
  v9 = _Block_copy(v10);

  [v8 *a7];
  _Block_release(v9);
}

uint64_t sub_236A28480()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369F54B4;

  return sub_236A0418C(sub_236A28398, 0);
}

uint64_t sub_236A2858C()
{
  if (qword_27DE60E68 != -1)
  {
    swift_once();
  }

  if (qword_27DE6C208)
  {
    sub_236A0F198(sub_236A28384);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_236A28660(uint64_t a1)
{
  v2 = sub_236A287EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2869C(uint64_t a1)
{
  v2 = sub_236A287EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A286D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61770, qword_236A34E90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A287EC();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_236A287EC()
{
  result = qword_27DE61778;
  if (!qword_27DE61778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61778);
  }

  return result;
}

unint64_t sub_236A28864()
{
  result = qword_27DE61780;
  if (!qword_27DE61780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61780);
  }

  return result;
}

unint64_t sub_236A288BC()
{
  result = qword_27DE61788;
  if (!qword_27DE61788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61788);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_236A28944(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_20_0;
  v9 = _Block_copy(v10);

  [v7 createDevelopmentPostbacksWithConfigurationData:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_236A28A64()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_236A28B54;

  return sub_236A04530(sub_236A28930, 0);
}

uint64_t sub_236A28B54(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_236A28C7C()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = sub_236A29064;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_236A28DB0;

  return sub_236A04858(sub_236A0CA04, v3);
}

uint64_t sub_236A28DB0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_236A28F30;
  }

  else
  {
    v3 = sub_236A28EC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236A28EC4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_236A28F30()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];
  v4 = v0[5];

  return v3();
}

void sub_236A28F9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_236A2E344;
  v9[3] = &block_descriptor_26_0;
  v8 = _Block_copy(v9);

  [a1 setDeveloperModeEnabled:a6 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t sub_236A2906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_236A29090, 0, 0);
}

uint64_t sub_236A29090()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = sub_236A293F4;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_236A291D0;
  v6 = v0[2];

  return (sub_236A04A70)(v6, sub_236A0CC90, v4);
}

uint64_t sub_236A291D0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236A0C1B0, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

void sub_236A29318(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_236A2EE64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_23;
  v9 = _Block_copy(v10);

  [a1 retrieveDeveloperPostbackURLForBundleID:v8 reply:v9];
  _Block_release(v9);
}

void sub_236A293F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_236A29318(a1, a2, a3, a4, a5);
}

uint64_t sub_236A2941C()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_236A0516C;
  v2 = *(v0 + 16);

  return sub_236A04DFC(v2, sub_236A28944, 0);
}

uint64_t sub_236A29530()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369F64E4;

  return sub_236A04858(sub_236A28A20, 0);
}

uint64_t sub_236A2963C()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369F54B4;

  return sub_236A04858(sub_236A28A34, 0);
}

uint64_t sub_236A2972C(uint64_t a1)
{
  v2 = sub_236A298B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A29768(uint64_t a1)
{
  v2 = sub_236A298B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A297A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61790, qword_236A34FF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A298B8();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_236A298B8()
{
  result = qword_27DE61798;
  if (!qword_27DE61798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61798);
  }

  return result;
}

unint64_t sub_236A29930()
{
  result = qword_27DE617A0;
  if (!qword_27DE617A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE617A0);
  }

  return result;
}

unint64_t sub_236A29988()
{
  result = qword_27DE617A8;
  if (!qword_27DE617A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE617A8);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_236A29A1C()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_236A29A70()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_236A29B2C()
{
  ObjectType = swift_getObjectType();
  sub_236A2EDC4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_236A29BD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_236A29C78()
{
  v0 = sub_236A2ECC4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_236A2ECB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61000, &unk_236A35160);
  sub_236A2A0EC();
  sub_236A2ECA4();

  v11 = v23;
  v12 = v23[2];
  if (v12)
  {
    v13 = 0;
    v14 = v23 + 5;
    v15 = MEMORY[0x277D837D0];
    while (v13 < *(v11 + 16))
    {
      v18 = *v14;
      if (*v14)
      {
        v16 = *(v14 - 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617B0, qword_236A35170);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_236A311D0;
        *(v17 + 56) = v15;
        *(v17 + 32) = v16;
        *(v17 + 40) = v18;

        sub_236A2F3A4();
      }

      else
      {
        if (qword_281315F10 != -1)
        {
          swift_once();
        }

        v19 = sub_236A2EE14();
        __swift_project_value_buffer(v19, qword_2813177A0);
        v20 = sub_236A2EDF4();
        v21 = sub_236A2F034();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_2369F3000, v20, v21, "Connection established", v22, 2u);
          MEMORY[0x2383B5900](v22, -1, -1);
        }
      }

      ++v13;
      v14 += 2;
      if (v12 == v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v3 = sub_236A2EE14();
    __swift_project_value_buffer(v3, qword_2813177A0);
    MEMORY[0x2383B5800](v15);
    v4 = sub_236A2EDF4();
    v5 = sub_236A2F024();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136446210;
      MEMORY[0x2383B5800](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60E48, &qword_236A31230);
      v8 = sub_236A2EEA4();
      v10 = sub_236A09E30(v8, v9, &v23);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2369F3000, v4, v5, "Error decoding XPC client message: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x2383B5900](v7, -1, -1);
      MEMORY[0x2383B5900](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
LABEL_15:
  }
}

uint64_t type metadata accessor for XPCClient()
{
  result = qword_281315F18;
  if (!qword_281315F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236A2A05C()
{
  result = sub_236A2EDD4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_236A2A0EC()
{
  result = qword_281315F08;
  if (!qword_281315F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE61000, &unk_236A35160);
    sub_236A2A170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281315F08);
  }

  return result;
}

unint64_t sub_236A2A170()
{
  result = qword_2813160E0;
  if (!qword_2813160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160E0);
  }

  return result;
}

uint64_t sub_236A2A1C4()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_236A02614();
  v0 = sub_236A2EDE4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_236A2A228()
{
  result = qword_27DE617B8;
  if (!qword_27DE617B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE617B8);
  }

  return result;
}

BOOL sub_236A2A2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_236A2A2D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_236A2A304()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_236A2A338(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6165627472616568;
      break;
    case 2:
      result = 0x6F68747541746F6ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD00000000000002ELL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_236A2A510(uint64_t a1)
{
  v2 = sub_236A2BB30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A54C(uint64_t a1)
{
  v2 = sub_236A2BB30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A588(uint64_t a1)
{
  v2 = sub_236A2BADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A5C4(uint64_t a1)
{
  v2 = sub_236A2BADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A2C028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A2A63C(uint64_t a1)
{
  v2 = sub_236A2BA88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A678(uint64_t a1)
{
  v2 = sub_236A2BA88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A6B4(uint64_t a1)
{
  v2 = sub_236A2BC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A6F0(uint64_t a1)
{
  v2 = sub_236A2BC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A72C(uint64_t a1)
{
  v2 = sub_236A2BBD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A768(uint64_t a1)
{
  v2 = sub_236A2BBD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A7A4(uint64_t a1)
{
  v2 = sub_236A2BB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A7E0(uint64_t a1)
{
  v2 = sub_236A2BB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A81C(uint64_t a1)
{
  v2 = sub_236A2BE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A858(uint64_t a1)
{
  v2 = sub_236A2BE24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A894(uint64_t a1)
{
  v2 = sub_236A2BF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A8D0(uint64_t a1)
{
  v2 = sub_236A2BF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A90C(uint64_t a1)
{
  v2 = sub_236A2BD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A948(uint64_t a1)
{
  v2 = sub_236A2BD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A984(uint64_t a1)
{
  v2 = sub_236A2BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A9C0(uint64_t a1)
{
  v2 = sub_236A2BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A9FC(uint64_t a1)
{
  v2 = sub_236A2BD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AA38(uint64_t a1)
{
  v2 = sub_236A2BD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AA74(uint64_t a1)
{
  v2 = sub_236A2BCD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AAB0(uint64_t a1)
{
  v2 = sub_236A2BCD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AAEC(uint64_t a1)
{
  v2 = sub_236A2BDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AB28(uint64_t a1)
{
  v2 = sub_236A2BDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AB64(uint64_t a1)
{
  v2 = sub_236A2BECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2ABA0(uint64_t a1)
{
  v2 = sub_236A2BECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2ABDC(uint64_t a1)
{
  v2 = sub_236A2BE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AC18(uint64_t a1)
{
  v2 = sub_236A2BE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AC54(uint64_t a1)
{
  v2 = sub_236A2BF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AC90(uint64_t a1)
{
  v2 = sub_236A2BF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2ACCC(void *a1, uint64_t a2)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617C0, &qword_236A35240);
  v107 = *(v3 - 8);
  v108 = v3;
  v4 = *(v107 + 64);
  MEMORY[0x28223BE20](v3);
  v106 = &v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617C8, &qword_236A35248);
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  MEMORY[0x28223BE20](v6);
  v103 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617D0, &qword_236A35250);
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9);
  v100 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617D8, &qword_236A35258);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v12);
  v97 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617E0, &qword_236A35260);
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v15);
  v94 = &v67 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617E8, &qword_236A35268);
  v92 = *(v93 - 8);
  v18 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v67 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617F0, &qword_236A35270);
  v89 = *(v90 - 8);
  v20 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v67 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617F8, &qword_236A35278);
  v86 = *(v87 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v67 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61800, &qword_236A35280);
  v83 = *(v84 - 8);
  v24 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v67 - v25;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61808, &qword_236A35288);
  v80 = *(v81 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v67 - v27;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61810, &qword_236A35290);
  v77 = *(v78 - 8);
  v28 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v67 - v29;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61818, &qword_236A35298);
  v74 = *(v75 - 8);
  v30 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v67 - v31;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61820, &qword_236A352A0);
  v71 = *(v72 - 8);
  v32 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v67 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61828, &qword_236A352A8);
  v69 = *(v34 - 8);
  v35 = *(v69 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v67 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61830, &qword_236A352B0);
  v68 = *(v38 - 8);
  v39 = *(v68 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v67 - v40;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61838, &qword_236A352B8);
  v42 = *(v111 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v111);
  v45 = &v67 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2BA88();
  v110 = v45;
  sub_236A2F404();
  v47 = (v42 + 8);
  switch(v109)
  {
    case 1:
      v112[2] = 1;
      sub_236A2BF20();
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      (*(v69 + 8))(v37, v34);
      goto LABEL_19;
    case 2:
      v112[3] = 2;
      sub_236A2BECC();
      v61 = v70;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v71 + 8);
      v58 = v61;
      v59 = &v104;
      goto LABEL_18;
    case 3:
      v112[4] = 3;
      sub_236A2BE78();
      v62 = v73;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v74 + 8);
      v58 = v62;
      v59 = &v107;
      goto LABEL_18;
    case 4:
      v112[5] = 4;
      sub_236A2BE24();
      v56 = v76;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v77 + 8);
      v58 = v56;
      v59 = &v110;
      goto LABEL_18;
    case 5:
      v112[6] = 5;
      sub_236A2BDD0();
      v64 = v79;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v80 + 8);
      v58 = v64;
      v59 = v112;
      goto LABEL_18;
    case 6:
      v112[7] = 6;
      sub_236A2BD7C();
      v65 = v82;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v83 + 8);
      v58 = v65;
      v59 = v113;
      goto LABEL_18;
    case 7:
      v113[0] = 7;
      sub_236A2BD28();
      v63 = v85;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v86 + 8);
      v58 = v63;
      v59 = &v114;
      goto LABEL_18;
    case 8:
      v113[1] = 8;
      sub_236A2BCD4();
      v66 = v88;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v57 = *(v89 + 8);
      v58 = v66;
      v59 = &v115;
LABEL_18:
      v57(v58, *(v59 - 32));
      goto LABEL_19;
    case 9:
      v113[2] = 9;
      sub_236A2BC80();
      v60 = v91;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      (*(v92 + 8))(v60, v93);
      goto LABEL_19;
    case 10:
      v113[3] = 10;
      sub_236A2BC2C();
      v51 = v94;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v55 = v95;
      v54 = v96;
      goto LABEL_16;
    case 11:
      v113[4] = 11;
      sub_236A2BBD8();
      v51 = v97;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v55 = v98;
      v54 = v99;
      goto LABEL_16;
    case 12:
      v113[5] = 12;
      sub_236A2BB84();
      v51 = v100;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v55 = v101;
      v54 = v102;
      goto LABEL_16;
    case 13:
      v113[6] = 13;
      sub_236A2BB30();
      v51 = v103;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v55 = v104;
      v54 = v105;
      goto LABEL_16;
    case 14:
      v113[7] = 14;
      sub_236A2BADC();
      v51 = v106;
      v53 = v110;
      v52 = v111;
      sub_236A2F234();
      v55 = v107;
      v54 = v108;
LABEL_16:
      (*(v55 + 8))(v51, v54);
LABEL_19:
      result = (*v47)(v53, v52);
      break;
    default:
      v112[1] = 0;
      sub_236A2BF74();
      v48 = v110;
      v49 = v111;
      sub_236A2F234();
      (*(v68 + 8))(v41, v38);
      result = (*v47)(v48, v49);
      break;
  }

  return result;
}

unint64_t sub_236A2BA88()
{
  result = qword_27DE61840;
  if (!qword_27DE61840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61840);
  }

  return result;
}

unint64_t sub_236A2BADC()
{
  result = qword_27DE61848;
  if (!qword_27DE61848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61848);
  }

  return result;
}

unint64_t sub_236A2BB30()
{
  result = qword_27DE61850;
  if (!qword_27DE61850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61850);
  }

  return result;
}

unint64_t sub_236A2BB84()
{
  result = qword_27DE61858;
  if (!qword_27DE61858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61858);
  }

  return result;
}

unint64_t sub_236A2BBD8()
{
  result = qword_27DE61860;
  if (!qword_27DE61860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61860);
  }

  return result;
}

unint64_t sub_236A2BC2C()
{
  result = qword_27DE61868;
  if (!qword_27DE61868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61868);
  }

  return result;
}

unint64_t sub_236A2BC80()
{
  result = qword_27DE61870;
  if (!qword_27DE61870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61870);
  }

  return result;
}

unint64_t sub_236A2BCD4()
{
  result = qword_27DE61878;
  if (!qword_27DE61878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61878);
  }

  return result;
}

unint64_t sub_236A2BD28()
{
  result = qword_27DE61880;
  if (!qword_27DE61880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61880);
  }

  return result;
}

unint64_t sub_236A2BD7C()
{
  result = qword_27DE61888;
  if (!qword_27DE61888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61888);
  }

  return result;
}

unint64_t sub_236A2BDD0()
{
  result = qword_27DE61890;
  if (!qword_27DE61890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61890);
  }

  return result;
}

unint64_t sub_236A2BE24()
{
  result = qword_27DE61898;
  if (!qword_27DE61898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61898);
  }

  return result;
}

unint64_t sub_236A2BE78()
{
  result = qword_27DE618A0;
  if (!qword_27DE618A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618A0);
  }

  return result;
}

unint64_t sub_236A2BECC()
{
  result = qword_27DE618A8;
  if (!qword_27DE618A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618A8);
  }

  return result;
}

unint64_t sub_236A2BF20()
{
  result = qword_27DE618B0;
  if (!qword_27DE618B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618B0);
  }

  return result;
}

unint64_t sub_236A2BF74()
{
  result = qword_27DE618B8;
  if (!qword_27DE618B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618B8);
  }

  return result;
}

uint64_t sub_236A2BFE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_236A2C4CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_236A2C028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165627472616568 && a2 == 0xE900000000000074 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000236A37310 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000236A37330 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000236A37350 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000236A37370 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000236A37390 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000236A373B0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000236A373D0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000236A373F0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000236A37410 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000236A37430 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000236A37460 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000236A37480 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_236A2C4CC(uint64_t *a1)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619D0, &qword_236A360E0);
  v97 = *(v111 - 8);
  v2 = *(v97 + 64);
  MEMORY[0x28223BE20](v111);
  v107 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619D8, &qword_236A360E8);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v106 = &v66 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619E0, &qword_236A360F0);
  v93 = *(v94 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v105 = &v66 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619E8, &qword_236A360F8);
  v91 = *(v92 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v104 = &v66 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619F0, &qword_236A36100);
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v103 = &v66 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619F8, &qword_236A36108);
  v87 = *(v88 - 8);
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v102 = &v66 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A00, &qword_236A36110);
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v101 = &v66 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A08, &qword_236A36118);
  v83 = *(v84 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v100 = &v66 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A10, &qword_236A36120);
  v81 = *(v82 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v110 = &v66 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A18, &qword_236A36128);
  v80 = *(v79 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v109 = &v66 - v22;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A20, &qword_236A36130);
  v77 = *(v78 - 8);
  v23 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v108 = &v66 - v24;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A28, &qword_236A36138);
  v75 = *(v76 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v99 = &v66 - v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A30, &qword_236A36140);
  v73 = *(v74 - 8);
  v27 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v98 = &v66 - v28;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A38, &qword_236A36148);
  v71 = *(v72 - 8);
  v29 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v31 = &v66 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A40, &qword_236A36150);
  v70 = *(v32 - 8);
  v33 = *(v70 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v66 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A48, &qword_236A36158);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v66 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_236A2BA88();
  v43 = v112;
  sub_236A2F3F4();
  if (v43)
  {
    goto LABEL_7;
  }

  v67 = v35;
  v66 = v32;
  v68 = v31;
  v44 = v108;
  v45 = v109;
  v47 = v110;
  v46 = v111;
  v69 = v37;
  v112 = sub_236A2F214();
  if (*(v112 + 16) != 1 || (v48 = *(v112 + 32), v48 == 15))
  {
    v50 = sub_236A2F0E4();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40) + 48);
    *v52 = &type metadata for AttributionKitError;
    sub_236A2F124();
    sub_236A2F0D4();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    (*(v69 + 8))(v40, v36);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v113);
    return 0;
  }

  switch(*(v112 + 32))
  {
    case 1:
      v115 = 1;
      sub_236A2BF20();
      v62 = v68;
      sub_236A2F114();
      (*(v71 + 8))(v62, v72);
      break;
    case 2:
      v116 = 2;
      sub_236A2BECC();
      v59 = v98;
      sub_236A2F114();
      (*(v73 + 8))(v59, v74);
      break;
    case 3:
      v117 = 3;
      sub_236A2BE78();
      v60 = v99;
      sub_236A2F114();
      (*(v75 + 8))(v60, v76);
      break;
    case 4:
      v118 = 4;
      sub_236A2BE24();
      sub_236A2F114();
      (*(v77 + 8))(v44, v78);
      break;
    case 5:
      v119 = 5;
      sub_236A2BDD0();
      sub_236A2F114();
      (*(v80 + 8))(v45, v79);
      break;
    case 6:
      v120 = 6;
      sub_236A2BD7C();
      sub_236A2F114();
      (*(v81 + 8))(v47, v82);
      break;
    case 7:
      v121 = 7;
      sub_236A2BD28();
      v61 = v100;
      sub_236A2F114();
      (*(v83 + 8))(v61, v84);
      break;
    case 8:
      v122 = 8;
      sub_236A2BCD4();
      v65 = v101;
      sub_236A2F114();
      (*(v85 + 8))(v65, v86);
      break;
    case 9:
      v123 = 9;
      sub_236A2BC80();
      v58 = v102;
      sub_236A2F114();
      (*(v87 + 8))(v58, v88);
      break;
    case 0xA:
      v124 = 10;
      sub_236A2BC2C();
      v64 = v103;
      sub_236A2F114();
      (*(v89 + 8))(v64, v90);
      break;
    case 0xB:
      v125 = 11;
      sub_236A2BBD8();
      v56 = v104;
      sub_236A2F114();
      (*(v91 + 8))(v56, v92);
      break;
    case 0xC:
      v126 = 12;
      sub_236A2BB84();
      v57 = v105;
      sub_236A2F114();
      (*(v93 + 8))(v57, v94);
      break;
    case 0xD:
      v127 = 13;
      sub_236A2BB30();
      v63 = v106;
      sub_236A2F114();
      (*(v95 + 8))(v63, v96);
      break;
    case 0xE:
      v128 = 14;
      sub_236A2BADC();
      v55 = v107;
      sub_236A2F114();
      (*(v97 + 8))(v55, v46);
      break;
    default:
      v114 = 0;
      sub_236A2BF74();
      v49 = v67;
      sub_236A2F114();
      (*(v70 + 8))(v49, v66);
      break;
  }

  (*(v69 + 8))(v40, v36);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v113);
  return v48;
}

unint64_t sub_236A2D484()
{
  result = qword_27DE618C0;
  if (!qword_27DE618C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618C0);
  }

  return result;
}

uint64_t sub_236A2D4E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_236A2D578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_236A2D72C()
{
  result = qword_27DE618C8;
  if (!qword_27DE618C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618C8);
  }

  return result;
}

unint64_t sub_236A2D784()
{
  result = qword_27DE618D0;
  if (!qword_27DE618D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618D0);
  }

  return result;
}

unint64_t sub_236A2D7DC()
{
  result = qword_27DE618D8;
  if (!qword_27DE618D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618D8);
  }

  return result;
}

unint64_t sub_236A2D834()
{
  result = qword_27DE618E0;
  if (!qword_27DE618E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618E0);
  }

  return result;
}

unint64_t sub_236A2D88C()
{
  result = qword_27DE618E8;
  if (!qword_27DE618E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618E8);
  }

  return result;
}

unint64_t sub_236A2D8E4()
{
  result = qword_27DE618F0;
  if (!qword_27DE618F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618F0);
  }

  return result;
}

unint64_t sub_236A2D93C()
{
  result = qword_27DE618F8;
  if (!qword_27DE618F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618F8);
  }

  return result;
}

unint64_t sub_236A2D994()
{
  result = qword_27DE61900;
  if (!qword_27DE61900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61900);
  }

  return result;
}

unint64_t sub_236A2D9EC()
{
  result = qword_27DE61908;
  if (!qword_27DE61908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61908);
  }

  return result;
}

unint64_t sub_236A2DA44()
{
  result = qword_27DE61910;
  if (!qword_27DE61910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61910);
  }

  return result;
}

unint64_t sub_236A2DA9C()
{
  result = qword_27DE61918;
  if (!qword_27DE61918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61918);
  }

  return result;
}

unint64_t sub_236A2DAF4()
{
  result = qword_27DE61920;
  if (!qword_27DE61920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61920);
  }

  return result;
}

unint64_t sub_236A2DB4C()
{
  result = qword_27DE61928;
  if (!qword_27DE61928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61928);
  }

  return result;
}

unint64_t sub_236A2DBA4()
{
  result = qword_27DE61930;
  if (!qword_27DE61930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61930);
  }

  return result;
}

unint64_t sub_236A2DBFC()
{
  result = qword_27DE61938;
  if (!qword_27DE61938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61938);
  }

  return result;
}

unint64_t sub_236A2DC54()
{
  result = qword_27DE61940;
  if (!qword_27DE61940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61940);
  }

  return result;
}

unint64_t sub_236A2DCAC()
{
  result = qword_27DE61948;
  if (!qword_27DE61948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61948);
  }

  return result;
}

unint64_t sub_236A2DD04()
{
  result = qword_27DE61950;
  if (!qword_27DE61950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61950);
  }

  return result;
}

unint64_t sub_236A2DD5C()
{
  result = qword_27DE61958;
  if (!qword_27DE61958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61958);
  }

  return result;
}

unint64_t sub_236A2DDB4()
{
  result = qword_27DE61960;
  if (!qword_27DE61960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61960);
  }

  return result;
}

unint64_t sub_236A2DE0C()
{
  result = qword_27DE61968;
  if (!qword_27DE61968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61968);
  }

  return result;
}

unint64_t sub_236A2DE64()
{
  result = qword_27DE61970;
  if (!qword_27DE61970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61970);
  }

  return result;
}

unint64_t sub_236A2DEBC()
{
  result = qword_27DE61978;
  if (!qword_27DE61978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61978);
  }

  return result;
}

unint64_t sub_236A2DF14()
{
  result = qword_27DE61980;
  if (!qword_27DE61980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61980);
  }

  return result;
}

unint64_t sub_236A2DF6C()
{
  result = qword_27DE61988;
  if (!qword_27DE61988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61988);
  }

  return result;
}

unint64_t sub_236A2DFC4()
{
  result = qword_27DE61990;
  if (!qword_27DE61990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61990);
  }

  return result;
}

unint64_t sub_236A2E01C()
{
  result = qword_27DE61998;
  if (!qword_27DE61998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61998);
  }

  return result;
}

unint64_t sub_236A2E074()
{
  result = qword_27DE619A0;
  if (!qword_27DE619A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619A0);
  }

  return result;
}

unint64_t sub_236A2E0CC()
{
  result = qword_27DE619A8;
  if (!qword_27DE619A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619A8);
  }

  return result;
}

unint64_t sub_236A2E124()
{
  result = qword_27DE619B0;
  if (!qword_27DE619B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619B0);
  }

  return result;
}

unint64_t sub_236A2E17C()
{
  result = qword_27DE619B8;
  if (!qword_27DE619B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619B8);
  }

  return result;
}

unint64_t sub_236A2E1D4()
{
  result = qword_27DE619C0;
  if (!qword_27DE619C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619C0);
  }

  return result;
}

unint64_t sub_236A2E22C()
{
  result = qword_27DE619C8;
  if (!qword_27DE619C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619C8);
  }

  return result;
}

void sub_236A2E28C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_236A2E344;
  v7[3] = &block_descriptor_16;
  v6 = _Block_copy(v7);

  [v5 fetchReengagementTokensWithReply_];
  _Block_release(v6);
}

uint64_t sub_236A2E344(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_236A2ED84();
  v8 = v7;

  v4(v6, v8);
  sub_236A08300(v6, v8);
}

uint64_t sub_236A2E3CC()
{
  if (qword_27DE60E68 != -1)
  {
    result = swift_once();
  }

  if (qword_27DE6C208)
  {
    return sub_236A0F538(sub_236A2E28C);
  }

  return result;
}

uint64_t sub_236A2E448(uint64_t a1)
{
  v2 = sub_236A2E5D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2E484(uint64_t a1)
{
  v2 = sub_236A2E5D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2E4C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A50, qword_236A36160);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2E5D4();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_236A2E5D4()
{
  result = qword_27DE61A58;
  if (!qword_27DE61A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A58);
  }

  return result;
}

unint64_t sub_236A2E64C()
{
  result = qword_27DE61A60;
  if (!qword_27DE61A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A60);
  }

  return result;
}

unint64_t sub_236A2E6A4()
{
  result = qword_27DE61A68;
  if (!qword_27DE61A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A68);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A2E710()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_236A2EE64();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &unk_2849A80F8;
  v5 = [v3 interfaceWithProtocol_];

  [v2 setExportedInterface_];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject_];

  v7 = &unk_2849A8AD0;
  v8 = [v3 interfaceWithProtocol_];

  [v2 setRemoteObjectInterface_];
  v16 = sub_236A02084;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_17;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler_];
  _Block_release(v9);
  v16 = sub_236A020D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_6_3;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler_];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for PostbackProxyServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_27DE6C358 = result;
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A2E9D8(char a1)
{
  if (!a1)
  {
    return 1751607656;
  }

  if (a1 == 1)
  {
    return 7827308;
  }

  return 0x6D756964656DLL;
}

uint64_t sub_236A2EA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_236A2EAFC();
  *a2 = result;
  return result;
}

uint64_t sub_236A2EAFC()
{
  v0 = sub_236A2F104();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_236A2EB4C()
{
  result = qword_27DE61A70;
  if (!qword_27DE61A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A70);
  }

  return result;
}

unint64_t sub_236A2EBB0()
{
  result = qword_27DE61A78;
  if (!qword_27DE61A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A78);
  }

  return result;
}