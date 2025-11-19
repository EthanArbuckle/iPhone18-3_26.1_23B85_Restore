uint64_t sub_223B4C078()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_223B4C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223BF430C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_223B4C174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_223BF430C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_223B4C240()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223B4C298()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_223B4C2E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(*(v4 - 8) + 8);
  v8 = type metadata accessor for FailureTracked();
  return sub_223B5F4B0(v8, a3);
}

__n128 sub_223B4C334(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_223B4C348@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(*(v4 - 8) + 8);
  v8 = type metadata accessor for FailureTracked();
  result = sub_223B5F658(v8);
  *a3 = result;
  return result;
}

uint64_t sub_223B4C398()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223B4C40C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_223B4C458()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223B4C490()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL sub_223B4C4E0@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_223B73184(*(a1 + a2 - 24), *(*(a1 + a2 - 16) + 8));
  *a3 = result;
  return result;
}

__n128 sub_223B4C528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_223B4C53C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223B4C574(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_223B4C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_223BF430C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_223B4C5F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223B4C634()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223B4C66C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_223B4C6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_223BF430C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B4C710(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_223BF430C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_223B4C988(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for CFString()
{
  if (!qword_27D0B0B78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D0B0B78);
    }
  }
}

uint64_t sub_223B4CA14()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_223BF434C();
}

uint64_t sub_223B4CA60()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_223BF433C();
}

uint64_t sub_223B4CAB8()
{
  sub_223BF4E8C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_223BF433C();
  return sub_223BF4EBC();
}

uint64_t sub_223B4CB20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_223BF432C();
}

uint64_t sub_223B4CBF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223B4CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v52 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = v51 - v17;
  v61 = a3;
  v62 = a4;
  v51[1] = a4;
  v51[2] = a6;
  v63 = a5;
  v64 = a6;
  v18 = type metadata accessor for AsyncAsymDebounceSequence.Rate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v56 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v54 = v51 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v51 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  v28 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = v51 - v30;
  v55 = v29;
  v32 = *(v29 + 48);
  v60 = v19;
  v33 = *(v19 + 16);
  v58 = a1;
  v33(v51 - v30, a1, v18);
  v59 = a2;
  v33(&v31[v32], a2, v18);
  v34 = *(v13 + 48);
  if (v34(v31, 1, AssociatedTypeWitness) == 1)
  {
    if (v34(&v31[v32], 1, AssociatedTypeWitness) == 1)
    {
LABEL_10:
      v44 = 0;
      v45 = v60;
      goto LABEL_16;
    }
  }

  else
  {
    v33(v26, v31, v18);
    if (v34(&v31[v32], 1, AssociatedTypeWitness) != 1)
    {
      v37 = v13;
      v38 = *(v13 + 32);
      v39 = v53;
      v38(v53, v26, AssociatedTypeWitness);
      v40 = v52;
      v38(v52, &v31[v32], AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v42 = *(*(AssociatedConformanceWitness + 8) + 8);
      if ((sub_223BF452C() & 1) == 0)
      {
        v49 = *(AssociatedConformanceWitness + 16);
        v44 = sub_223BF44CC();
        v50 = *(v37 + 8);
        v50(v40, AssociatedTypeWitness);
        v50(v39, AssociatedTypeWitness);
        v45 = v60;
        goto LABEL_16;
      }

      v43 = *(v37 + 8);
      v43(v40, AssociatedTypeWitness);
      v43(v39, AssociatedTypeWitness);
      goto LABEL_10;
    }

    (*(v13 + 8))(v26, AssociatedTypeWitness);
  }

  v35 = v54;
  v33(v54, v58, v18);
  if (v34(v35, 1, AssociatedTypeWitness) == 1)
  {
    v36 = 0;
  }

  else
  {
    (*(v60 + 8))(v35, v18);
    v36 = 1;
  }

  v46 = v56;
  v33(v56, v59, v18);
  if (v34(v46, 1, AssociatedTypeWitness) == 1)
  {
    v47 = 0;
  }

  else
  {
    (*(v60 + 8))(v46, v18);
    v47 = 1;
  }

  v45 = v57;
  v44 = v36 < v47;
  v18 = v55;
LABEL_16:
  (*(v45 + 8))(v31, v18);
  return v44 & 1;
}

uint64_t sub_223B4D1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = a4;
  v36 = &v35 - v14;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v37 = a6;
  v15 = type metadata accessor for AsyncAsymDebounceSequence.Rate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v40 = &v35 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v35 - v23;
  v25 = *(v22 + 48);
  v38 = v16;
  v26 = *(v16 + 16);
  v26(&v35 - v23, v39, v15);
  v26(&v24[v25], a2, v15);
  v39 = v12;
  v27 = *(v12 + 48);
  if (v27(v24, 1, AssociatedTypeWitness) == 1)
  {
    v28 = 1;
    if (v27(&v24[v25], 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26(v40, v24, v15);
    if (v27(&v24[v25], 1, AssociatedTypeWitness) != 1)
    {
      v29 = v39;
      v30 = v36;
      (*(v39 + 32))(v36, &v24[v25], AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v31 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      v32 = v40;
      v28 = sub_223BF452C();
      v33 = *(v29 + 8);
      v33(v30, AssociatedTypeWitness);
      v33(v32, AssociatedTypeWitness);
LABEL_8:
      v20 = v38;
      goto LABEL_9;
    }

    (*(v39 + 8))(v40, AssociatedTypeWitness);
  }

  v28 = 0;
  v15 = TupleTypeMetadata2;
LABEL_9:
  (*(v20 + 8))(v24, v15);
  return v28 & 1;
}

uint64_t sub_223B4D5EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 60));
  result = sub_223BF43AC();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_223B4D61C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CEF748] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 32);
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v9 = sub_223BF43DC();
  *v6 = v2;
  v6[1] = sub_223B4D6F4;

  return MEMORY[0x282141C88](a1, v9);
}

uint64_t sub_223B4D6F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_223B4D810(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B4D8B8;

  return sub_223B4D61C(a1, a2);
}

uint64_t sub_223B4D8B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_223B4D9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_223B4DA7C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_223B4DA7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_223B4DB94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_223B4D5EC(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t sub_223B4DBFC(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = sub_223B4E1B0();
      if (v7 <= 0x3F)
      {
        v8 = a1[4];
        swift_getAssociatedTypeWitness();
        result = sub_223BF43FC();
        if (v9 <= 0x3F)
        {
          v10 = a1[5];
          swift_getAssociatedTypeWitness();
          result = type metadata accessor for AsyncSingleCellChannel();
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_223B4DD28(int *a1, unsigned int a2, uint64_t a3)
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

  v13 = ((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *sub_223B4DF10(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v16 = ((((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
            *v27 = a2 - 1;
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

unint64_t sub_223B4E1B0()
{
  result = qword_27D0B0C10[0];
  if (!qword_27D0B0C10[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D0B0C10);
  }

  return result;
}

uint64_t sub_223B4E208(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_223B4E278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v10)
  {
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((a2 - v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_26;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          if (v11 > 2)
          {
            if (v11 == 3)
            {
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v11) = *a1;
            }
          }

          else if (v11 == 1)
          {
            LODWORD(v11) = *a1;
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        return v10 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v9 < 2)
  {
    return 0;
  }

  v17 = (*(v8 + 48))(a1);
  if (v17 >= 2)
  {
    return v17 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_223B4E41C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

uint64_t sub_223B4E670()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_223B4E6C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B4E714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_223B4E768(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_223B4E780(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_223B4E7B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_223B4E7F4(uint64_t *a1, int a2)
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

uint64_t sub_223B4E83C(uint64_t result, int a2, int a3)
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

uint64_t sub_223B4E898(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[5];
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B4E93C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = a3[5];
  v10 = a3[3];
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_26:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_26;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void sub_223B4EACC(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = a4[5];
  v12 = a4[3];
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_39:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_223B4ECF8(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for AsyncSingleCellChannel.Storage.State();
  result = sub_223BF4A0C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B4EDA8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *(*v1 + 80);
  v2[11] = type metadata accessor for AsyncSingleCellChannel.Storage.State();
  v3 = sub_223BF4A0C();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B4EE9C, v1, 0);
}

uint64_t sub_223B4EE9C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = *(*v5 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5 + v6, v2);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    (*(*(v0[10] - 8) + 56))(v0[8], 1, 1);
LABEL_6:
    v17 = v0[14];
    v16 = v0[15];

    v18 = v0[1];

    return v18();
  }

  v8 = v0[15];
  v9 = v0[11];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_223BF4BEC();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[10];
    v14 = v0[8];
    v26 = v14;
    v27 = v0[12];
    v15 = *(v13 - 8);
    (*(v15 + 32))();
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v12, 0, 1, v9);
    swift_beginAccess();
    (*(v11 + 40))(v5 + v6, v12, v27);
    swift_endAccess();
    (*(v15 + 56))(v26, 0, 1, v13);
    goto LABEL_6;
  }

  v21 = v0[9];
  v20 = v0[10];
  type metadata accessor for AsyncSingleCellChannel.Storage();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_task_alloc();
  v0[16] = v23;
  sub_223BF4A0C();
  *v23 = v0;
  v23[1] = sub_223B4F270;
  v24 = v0[8];
  v25 = v0[9];

  return sub_223B4F584(v24, v21, WitnessTable, sub_223B4FED8, v25);
}

uint64_t sub_223B4F270()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_223B4F380, v2, 0);
}

uint64_t sub_223B4F380()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_223B4F3E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = type metadata accessor for AsyncSingleCellChannel.Storage.State();
  v6 = sub_223BF4A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v13 - v9);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v10, 0, 1, v5);
  v11 = *(*a2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(a2 + v11, v10, v6);
  return swift_endAccess();
}

uint64_t sub_223B4F584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_223BF47AC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_223B4F618, v6, v8);
}

uint64_t sub_223B4F618()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_223B4F6C0;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_223B4F6C0()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_223B4F798()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  type metadata accessor for AsyncSingleCellChannel.Storage.State();
  v3 = sub_223BF4A0C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_223B4F830()
{
  sub_223B4F798();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_223B4F894(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_223BF4A0C();
  result = sub_223BF480C();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B4F930(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_25;
  }

LABEL_14:
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

  return (v5 | v10) + 254;
}

void sub_223B4FA48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
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

uint64_t sub_223B4FC5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_223B4FC7C, 0, 0);
}

uint64_t sub_223B4FC7C()
{
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_223B4FD18;
  v3 = *(v0 + 16);

  return sub_223B4EDA8(v3);
}

uint64_t sub_223B4FD18()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_223B4FE0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223B4D8B8;

  return sub_223B4FC5C(a1);
}

uint64_t sub_223B4FEA4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  j__swift_retain();

  *a1 = v3;
  return result;
}

uint64_t sub_223B4FF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v44 = a2;
  v45 = a3;
  v6 = type metadata accessor for ModelAssetLocation();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v40 - v8;
  v9 = sub_223BF425C();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223BF430C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CanonicalLocationResolver();
  (*(v14 + 16))(v17, v4 + *(v18 + 20), v13);
  v48 = a1;
  v49 = v6;
  v19 = (a1 + *(v6 + 36));
  if (v19[2] != 1)
  {
    v43 = v19[2];
    v21 = v19;
    v20 = *v19;
    v41 = v21[1];
    v42 = v20;
    v22 = v17;
    if ((v20 & 0x100) != 0)
    {
      v25 = (v4 + *(v18 + 24));
      v24 = *v25;
      v23 = v25[1];
    }

    else
    {
      v23 = 0xE700000000000000;
      v24 = 0x636972656E6547;
    }

    v52 = v24;
    v53 = v23;
    v26 = *MEMORY[0x277CC91C0];
    v27 = v51;
    v28 = v51 + 104;
    v29 = *(v51 + 104);
    v29(v12, v26, v9);
    v30 = sub_223B50954();
    v31 = v22;
    sub_223BF42DC();
    v32 = *(v27 + 8);
    v32(v12, v9);
    v17 = v31;

    v33 = 5063745;
    if (v42)
    {
      v33 = 4473174;
    }

    v52 = v33;
    v53 = 0xE300000000000000;
    v40 = v28;
    v29(v12, v26, v9);
    v42 = v30;
    sub_223BF42DC();
    v32(v12, v9);

    if (v43)
    {
      v52 = v41;
      v53 = v43;
      v29(v12, v26, v9);
      sub_223BF42DC();
      v32(v12, v9);
    }
  }

  v34 = v48;
  v52 = (*(v45 + 16))(v44);
  v53 = v35;
  v36 = v51;
  (*(v51 + 104))(v12, *MEMORY[0x277CC91D0], v9);
  sub_223B50954();
  sub_223BF42CC();
  (*(v36 + 8))(v12, v9);

  v37 = v47;
  v38 = v49;
  (*(v46 + 16))(v47, v34, v49);
  swift_getWitnessTable();
  return sub_223B5E64C(v17, v37, v38, v50);
}

uint64_t sub_223B503A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = a1;
  v63 = a6;
  v10 = type metadata accessor for ModelAssetLocation();
  swift_getWitnessTable();
  v11 = type metadata accessor for ConcreteLocation();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v49 - v14;
  v50 = *(v10 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = sub_223BF425C();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v18);
  v49 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ConcreteLocation();
  v21 = *(v61 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v61);
  v24 = &v49 - v23;
  v65 = a2;
  v66 = a3;
  v56 = a3;
  v57 = a5;
  v67 = a4;
  v68 = a5;
  v25 = type metadata accessor for MixedAssetLocation();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v62 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v49 - v30;
  v32 = sub_223BF430C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v60 = &v49 - v38;
  v58 = *(v26 + 16);
  v59 = v26 + 16;
  v58(v31, v64, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v50;
    (*(v50 + 32))(v17, v31, v10);
    v40 = v53;
    sub_223B4FF2C(v17, v56, v57, v53);
    (*(v39 + 8))(v17, v10);
    (*(v33 + 16))(v37, v40, v32);
    (*(v54 + 8))(v40, v55);
  }

  else
  {
    v57 = v32;
    v41 = v21;
    (*(v21 + 32))(v24, v31, v61);
    v65 = sub_223BF42BC();
    v66 = v42;
    v43 = v51;
    v44 = v52;
    v45 = v49;
    (*(v51 + 104))(v49, *MEMORY[0x277CC91D8], v52);
    sub_223B50954();
    sub_223BF42EC();
    (*(v43 + 8))(v45, v44);

    (*(v41 + 8))(v24, v61);
    v32 = v57;
  }

  v46 = v60;
  (*(v33 + 32))(v60, v37, v32);
  v47 = v62;
  v58(v62, v64, v25);
  swift_getWitnessTable();
  return sub_223B5E64C(v46, v47, v25, v63);
}

unint64_t sub_223B50954()
{
  result = qword_281339340;
  if (!qword_281339340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339340);
  }

  return result;
}

uint64_t type metadata accessor for CanonicalLocationResolver()
{
  result = qword_281339520;
  if (!qword_281339520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223B50A1C()
{
  result = sub_223BF430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223B50A98@<X0>(uint64_t a1@<X0>, id *a2@<X1>, void (*a3)(__int128 *__return_ptr, char *)@<X2>, void (*a4)(__int128 *__return_ptr, char *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v115 = a6;
  v123 = a2;
  v125 = a5;
  v126 = a1;
  v129 = a3;
  v130 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v110 = *(v8 - 1);
  v112 = *(v110 + 64);
  MEMORY[0x28223BE20](v8);
  v113 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v111 = &v104 - v12;
  v13 = v8[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1068, &qword_223BF76B8);
  swift_allocObject();
  v118 = sub_223BF43EC();
  *(a7 + v13) = v118;
  v14 = v8[16];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1070, &qword_223BF76C0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 96);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1078, &qword_223BF76C8);
  swift_storeEnumTagMultiPayload();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 0, 1, v20);
  v117 = v18;
  *(a7 + v14) = v18;
  v22 = a7;
  v23 = v123;
  v24 = v8[17];
  v25 = *(v15 + 48);
  v26 = *(v15 + 52);
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  v28 = *(*v27 + 96);
  swift_storeEnumTagMultiPayload();
  v21(v27 + v28, 0, 1, v20);
  v116 = v27;
  *(v22 + v24) = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  v120 = *(v29 - 8);
  v30 = *(v120 + 16);
  v124 = v29;
  v30(v22, v126);
  v109 = v8;
  v31 = v8[13];
  v32 = sub_223BF4BBC();
  v119 = *(v32 - 8);
  v33 = *(v119 + 16);
  v121 = v22;
  v114 = v31;
  v127 = v32;
  v33(v22 + v31, v125);
  v34 = *(v23 + 16);
  v135 = MEMORY[0x277D84F90];

  sub_223B57C74(0, v34, 0);
  v35 = v135;
  if (v34)
  {
    v27 = 0;
    *&v128 = *(v23 + 16);
    v36 = v23;
    v37 = (v23 + 32);
    do
    {
      if (v128 == v27)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (v27 >= *(v36 + 16))
      {
        goto LABEL_76;
      }

      v131 = *(v37 + v27);
      v129(&v132, &v131);
      v38 = v132;
      v39 = v133;
      v135 = v35;
      v23 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v23 >= v40 >> 1)
      {
        v108 = v132;
        sub_223B57C74((v40 > 1), v23 + 1, 1);
        v38 = v108;
        v35 = v135;
      }

      ++v27;
      *(v35 + 16) = v23 + 1;
      v41 = v35 + 24 * v23;
      *(v41 + 32) = v38;
      *(v41 + 48) = v39;
    }

    while (v34 != v27);
  }

  else
  {
    v36 = v23;
  }

  v42 = *(v36 + 16);
  if (v34 != v42)
  {
    v27 = v36 + 32;
    do
    {
      if (v34 >= v42)
      {
        goto LABEL_79;
      }

      v131 = *(v27 + v34);
      v129(&v132, &v131);
      v50 = v132;
      v51 = v133;
      v135 = v35;
      v23 = *(v35 + 16);
      v52 = *(v35 + 24);
      if (v23 >= v52 >> 1)
      {
        v128 = v132;
        sub_223B57C74((v52 > 1), v23 + 1, 1);
        v50 = v128;
        v35 = v135;
      }

      ++v34;
      *(v35 + 16) = v23 + 1;
      v53 = v35 + 24 * v23;
      *(v53 + 32) = v50;
      *(v53 + 48) = v51;
      v42 = *(v36 + 16);
    }

    while (v34 != v42);
  }

  *&v132 = v35;

  v43 = v122;
  sub_223B5559C(&v132);
  v44 = &v134;
  *&v108 = v43;
  if (v43)
  {
LABEL_88:

    __break(1u);
    return result;
  }

  v45 = v132;
  v36 = *(v132 + 16);
  v34 = v127;
  if (!v36)
  {

    v23 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v34 = v132 + 32;
  v46 = *(v132 + 32);
  v47 = *(v132 + 48);
  v48 = *(v132 + 40);
  swift_retain_n();
  v107 = v36 - 1;
  *&v128 = v45;
  if (v36 == 1)
  {
    v49 = v45;

    v27 = 0;
    v23 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v106 = v34;
  v27 = 0;
  v54 = v45 + 48;
  v23 = MEMORY[0x277D84F90];
  v55 = 1;
  v105 = v45 + 48;
  do
  {
    v122 = v23;
    v123 = v27;
    v23 = v54 + 24 * v55;
    v27 = v55;
    v34 = (2 * v55) | 1;
    while (1)
    {
      if (v55 < 1 || v27 >= v36)
      {
        goto LABEL_80;
      }

      v44 = *(v45 + 16);
      if (v27 >= v44)
      {
        goto LABEL_81;
      }

      v57 = *(v23 - 16);
      v56 = *(v23 - 8);
      v58 = *v23;
      if ((v47 & 1) == 0)
      {
        break;
      }

      if ((*v23 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_25:
      ++v27;
      v34 += 2;
      v23 += 24;
      v47 = v58;
      if (v36 == v27)
      {
        v23 = v122;
        v27 = v123;
        goto LABEL_44;
      }
    }

    if ((*v23 & 1) == 0)
    {
      v59 = *(v23 - 16);
      v60 = *(v23 - 8);
      v61 = sub_223BF4EFC();
      v45 = v128;
      if ((v61 & 1) == 0)
      {
LABEL_32:
        v47 = 0;
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v47 = 1;
LABEL_34:
    v23 = v122;
    if (v27 < v123)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v44 = *(v45 + 16);
    if (v44 < v123 || v44 < v27)
    {
      goto LABEL_86;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_223B7BC38(0, *(v23 + 16) + 1, 1, v23);
    }

    v63 = *(v23 + 16);
    v62 = *(v23 + 24);
    v64 = v63 + 1;
    v45 = v128;
    if (v63 >= v62 >> 1)
    {
      v67 = sub_223B7BC38((v62 > 1), v63 + 1, 1, v23);
      v64 = v63 + 1;
      v45 = v128;
      v23 = v67;
    }

    v55 = v27 + 1;
    *(v23 + 16) = v64;
    v65 = (v23 + 32 * v63);
    v66 = v106;
    v65[4] = v45;
    v65[5] = v66;
    v65[6] = v123;
    v65[7] = v34;
    v54 = v105;
  }

  while (v107 != v27);
LABEL_44:
  v49 = v45;

  if (v27 == v36)
  {

    goto LABEL_53;
  }

  v44 = &v133;
  v34 = v106;
  if (v36 < v27)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_47:
  v68 = *(v49 + 16);
  if (v68 < v27 || v68 < v36)
  {
    goto LABEL_83;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v70 = *(v23 + 16);
    v69 = *(v23 + 24);
    v71 = v128;
    if (v70 >= v69 >> 1)
    {
      v103 = sub_223B7BC38((v69 > 1), v70 + 1, 1, v23);
      v71 = v128;
      v23 = v103;
    }

    v72 = v71;

    *(v23 + 16) = v70 + 1;
    v73 = (v23 + 32 * v70);
    v73[4] = v72;
    v73[5] = v34;
    v73[6] = v27;
    v73[7] = (2 * v36) | 1;
LABEL_53:
    v34 = v127;
LABEL_54:
    v74 = *(v23 + 16);
    v36 = v124;
    if (v74)
    {
      *&v132 = MEMORY[0x277D84F90];
      sub_223B57C74(0, v74, 0);
      v75 = v132;
      v27 = v23 + 56;
      while (1)
      {
        v76 = *(v27 - 8);
        v77 = *v27 >> 1;
        if (v76 == v77)
        {
          break;
        }

        if (v76 >= v77)
        {
          goto LABEL_78;
        }

        v78 = *(v27 - 16) + 24 * v76;
        v79 = *v78;
        v34 = *(v78 + 16);
        *&v132 = v75;
        v81 = *(v75 + 16);
        v80 = *(v75 + 24);
        if (v81 >= v80 >> 1)
        {
          v128 = v79;
          sub_223B57C74((v80 > 1), v81 + 1, 1);
          v79 = v128;
          v75 = v132;
        }

        v27 += 32;
        *(v75 + 16) = v81 + 1;
        v82 = v75 + 24 * v81;
        *(v82 + 32) = v79;
        *(v82 + 48) = v34;
        if (!--v74)
        {

          v34 = v127;
          v83 = *(v75 + 16);
          if (!v83)
          {
            goto LABEL_67;
          }

          goto LABEL_62;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v75 = MEMORY[0x277D84F90];
    v83 = *(MEMORY[0x277D84F90] + 16);
    if (!v83)
    {
      break;
    }

LABEL_62:
    v84 = 0;
    v85 = (v75 + 48);
    while ((*v85 & 1) != 0)
    {
      ++v84;
      v85 += 24;
      if (v83 == v84)
      {
        goto LABEL_70;
      }
    }

    if (v83 >= v84)
    {
      goto LABEL_69;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v23 = sub_223B7BC38(0, *(v23 + 16) + 1, 1, v23);
  }

LABEL_67:
  v84 = 0;
LABEL_69:
  v86 = v83 - v84;
  if (!v86)
  {
LABEL_70:
    v87 = v115;
    *v115 = 0xD000000000000016;
    v87[1] = 0x8000000223C03DA0;
    *&v132 = 0xD000000000000016;
    *(&v132 + 1) = 0x8000000223C03DA0;
    goto LABEL_73;
  }

  if (v86 <= 1)
  {
    v93 = v121;
    v94 = (v121 + v109[14]);
    v95 = v130;
    *v94 = v129;
    v94[1] = v95;
    v96 = sub_223BF47EC();
    v97 = *(v96 - 8);
    v129 = *(v97 + 56);
    v130 = (v97 + 56);
    v98 = v111;
    (v129)(v111, 1, 1, v96);
    v99 = v113;
    sub_223B568F8(v93, v113, &qword_27D0B1020, &qword_223BF7688);
    v100 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    *(v101 + 24) = 0;
    sub_223B56890(v99, v101 + v100, &qword_27D0B1020, &qword_223BF7688);
    sub_223B525E8(0, 0, v98, &unk_223BF76D8, v101);

    (v129)(v98, 1, 1, v96);
    sub_223B568F8(v93, v99, &qword_27D0B1020, &qword_223BF7688);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    sub_223B56890(v99, v102 + v100, &qword_27D0B1020, &qword_223BF7688);
    sub_223B525E8(0, 0, v98, &unk_223BF76E8, v102);

    (*(v119 + 8))(v125, v127);
    return (*(v120 + 8))(v126, v124);
  }

  else
  {
    v88 = v115;
    *v115 = 0;
    v88[1] = 0;
    v132 = 0uLL;
LABEL_73:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1080, &qword_223BF76F0);
    sub_223B569C0(&qword_27D0B1088, &qword_27D0B1080, &qword_223BF76F0);
    swift_willThrowTypedImpl();

    v89 = *(v119 + 8);
    v89(v125, v34);
    v90 = *(v120 + 8);
    v90(v126, v36);
    v91 = v121;
    v90(v121, v36);
    v89(v91 + v114, v34);
  }
}

uint64_t sub_223B51728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = sub_223BF4B9C();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1098, &qword_223BF7700) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1090, &qword_223BF76F8) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B51888, 0, 0);
}

uint64_t sub_223B51888()
{
  v1 = v0[31];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v0[41] = v2;
  v3 = *(v1 + *(v2 + 64));
  v0[42] = v3;
  v0[43] = *(*v3 + 96);

  swift_beginAccess();
  v4 = v0[42];

  return MEMORY[0x2822009F8](sub_223B51940, v4, 0);
}

uint64_t sub_223B51940()
{
  v1 = v0[37];
  sub_223B568F8(v0[42] + v0[43], v1, &qword_27D0B1098, &qword_223BF7700);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1078, &qword_223BF76C8);
  v0[44] = v2;
  v3 = *(v2 - 8);
  v0[45] = v3;
  v4 = *(v3 + 48);
  v0[46] = v4;
  v0[47] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[33] + 56))(v0[40], 1, 1, v0[32]);
  }

  else
  {
    v5 = v0[37];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      return sub_223BF4BEC();
    }

    if (EnumCaseMultiPayload != 1)
    {
      v16 = v0[42];
      sub_223B569C0(&qword_27D0B1128, &qword_27D0B1070, &qword_223BF76C0);
      swift_getObjectType();
      v17 = sub_223BF47AC();
      v19 = v18;
      v13 = sub_223B51E18;
      v14 = v17;
      v15 = v19;
      goto LABEL_7;
    }

    v8 = v0[42];
    v7 = v0[43];
    v9 = v0[40];
    v10 = v0[36];
    v11 = v0[32];
    v12 = v0[33];
    (*(v12 + 32))(v9, v5, v11);
    swift_storeEnumTagMultiPayload();
    (*(v3 + 56))(v10, 0, 1, v2);
    swift_beginAccess();
    sub_223B56820(v10, v8 + v7);
    swift_endAccess();
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v13 = sub_223B51C1C;
  v14 = 0;
  v15 = 0;
LABEL_7:

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_223B51C1C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 336);
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 328);
    v14 = *(v0 + 248);
    (*(v3 + 32))(*(v0 + 272), v1, v2);
    v15 = *(v13 + 52);
    *(v0 + 232) = 0;
    *(v0 + 224) = 0;
    *(v0 + 240) = 1;
    v16 = sub_223BF4BBC();
    v17 = sub_223B56AAC(&qword_27D0B1108, MEMORY[0x277D85960]);
    v18 = *(MEMORY[0x277D85A58] + 4);
    v19 = swift_task_alloc();
    *(v0 + 384) = v19;
    *v19 = v0;
    v19[1] = sub_223B520B4;
    v20 = *(v0 + 272);

    return MEMORY[0x2822008C8](v20, v0 + 224, v16, v17);
  }
}

uint64_t sub_223B51E18()
{
  v1 = v0[42];
  v2 = v0[39];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_223B51F64;
  v3 = swift_continuation_init();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    v4 = v0[42];
    swift_task_reportUnexpectedExecutor();
  }

  v5 = v0[44];
  v6 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[36];
  *v9 = v3;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  sub_223B56820(v9, v8 + v7);
  swift_endAccess();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_223B51F64()
{
  v1 = *(*v0 + 336);
  v3 = *v0;
  sub_223B56890(*(*v0 + 312), *(*v0 + 320), &qword_27D0B1090, &qword_223BF76F8);

  return MEMORY[0x2822009F8](sub_223B52098, v1, 0);
}

uint64_t sub_223B520B4()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_223B52500;
  }

  else
  {
    v3 = sub_223B521C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223B521C8()
{
  v1 = *(v0[31] + *(v0[41] + 68));
  v0[50] = v1;
  return MEMORY[0x2822009F8](sub_223B521F4, v1, 0);
}

uint64_t sub_223B521F4()
{
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v5 = v0[35];
  v6 = *(*v1 + 96);
  swift_beginAccess();
  sub_223B568F8(v1 + v6, v5, &qword_27D0B1098, &qword_223BF7700);
  if (v3(v5, 1, v4) != 1)
  {
    v7 = v0[44];
    v8 = v0[35];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_223B56960(v8, &qword_27D0B1078, &qword_223BF76C8);
        v7 = v0[44];
      }

      v10 = v0[45];
      v11 = v0[36];
      (*(v0[33] + 16))(v11, v0[34], v0[32]);
      swift_storeEnumTagMultiPayload();
      (*(v10 + 56))(v11, 0, 1, v7);
      swift_beginAccess();
      sub_223B56820(v11, v1 + v6);
      swift_endAccess();
    }

    else
    {
      v12 = v0[45];
      v13 = v0[38];
      v14 = v0[36];
      v15 = v0[33];
      v19 = v0[34];
      v16 = v0[32];
      v17 = *v8;
      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v14, 0, 1, v7);
      swift_beginAccess();
      sub_223B56820(v14, v1 + v6);
      swift_endAccess();
      (*(v15 + 16))(v13, v19, v16);
      (*(v15 + 56))(v13, 0, 1, v16);
      sub_223B56890(v13, *(*(v17 + 64) + 40), &qword_27D0B1090, &qword_223BF76F8);
      swift_continuation_resume();
    }
  }

  return MEMORY[0x2822009F8](sub_223B52488, 0, 0);
}

uint64_t sub_223B52488()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1 = v0[42];

  return MEMORY[0x2822009F8](sub_223B51940, v1, 0);
}

uint64_t sub_223B52500()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];
  v12 = v0[49];

  return v11();
}

uint64_t sub_223B525E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_223B568F8(a3, v24 - v10, &qword_27D0B1060, &qword_223BF76B0);
  v12 = sub_223BF47EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_223B56960(v11, &qword_27D0B1060, &qword_223BF76B0);
  }

  else
  {
    sub_223BF47DC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_223BF47AC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_223BF455C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_223B52894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1090, &qword_223BF76F8) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1098, &qword_223BF7700) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A0, &qword_223BF7708);
  v4[24] = v7;
  v8 = *(v7 - 8);
  v4[25] = v8;
  v9 = *(v8 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v10 = sub_223BF4B9C();
  v4[28] = v10;
  v11 = *(v10 - 8);
  v4[29] = v11;
  v12 = *(v11 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A8, &qword_223BF7710);
  v4[33] = v13;
  v14 = *(v13 - 8);
  v4[34] = v14;
  v15 = *(v14 + 64) + 15;
  v4[35] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10B0, &qword_223BF7718) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10B8, &qword_223BF7720);
  v4[37] = v17;
  v18 = *(v17 - 8);
  v4[38] = v18;
  v19 = *(v18 + 64) + 15;
  v4[39] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  v4[40] = v20;
  v21 = *(v20 - 8);
  v4[41] = v21;
  v22 = *(v21 + 64) + 15;
  v4[42] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10C0, &qword_223BF7728);
  v4[43] = v23;
  v24 = *(v23 - 8);
  v4[44] = v24;
  v25 = *(v24 + 64) + 15;
  v4[45] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10C8, &qword_223BF7730);
  v4[46] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10D0, &qword_223BF7738) - 8) + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B52CB4, 0, 0);
}

uint64_t sub_223B52CB4()
{
  v1 = v0[49];
  v23 = v0[47];
  v24 = v0[46];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[38];
  v8 = v0[39];
  v21 = v0[37];
  v22 = v0[43];
  v9 = v0[33];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[20];
  v13 = *(v11 + 56);
  v0[50] = v13;
  v0[51] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v1, 1, 1, v10);
  (*(v6 + 16))(v4, v12, v5);
  sub_223B569C0(&qword_27D0B1058, &qword_27D0B1018, &qword_223BF7680);
  sub_223BF4BDC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v0[52] = v14;
  v0[17] = *(v12 + *(v14 + 68));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10D8, &qword_223BF7750);
  sub_223B569C0(&qword_27D0B10E0, &qword_27D0B10D8, &qword_223BF7750);
  sub_223BF4BDC();
  sub_223B569C0(&qword_27D0B10E8, &qword_27D0B10C0, &qword_223BF7728);
  sub_223B569C0(&qword_27D0B10F0, &qword_27D0B10B8, &qword_223BF7720);
  sub_223BF440C();
  (*(v7 + 8))(v8, v21);
  (*(v3 + 8))(v2, v22);
  v15 = sub_223BF438C();
  v0[53] = v15;
  sub_223B56960(v23, &qword_27D0B10C8, &qword_223BF7730);
  v0[16] = v15;
  v16 = *(MEMORY[0x277CEF6F0] + 4);
  v17 = swift_task_alloc();
  v0[54] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v17 = v0;
  v17[1] = sub_223B52FE0;
  v19 = v0[36];

  return MEMORY[0x282141C10](v19, v18);
}

uint64_t sub_223B52FE0()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_223B53914;
  }

  else
  {
    v3 = sub_223B530F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_223B530F4()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 272) + 48))(v1, 1, *(v0 + 264)) == 1)
  {
    v2 = *(v0 + 424);
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v5 = *(v0 + 376);
    v6 = *(v0 + 360);
    v7 = *(v0 + 336);
    v8 = *(v0 + 312);
    v9 = *(v0 + 280);
    v10 = *(v0 + 256);
    v70 = *(v0 + 248);
    v71 = *(v0 + 240);
    v73 = *(v0 + 216);
    v75 = *(v0 + 208);
    v77 = *(v0 + 184);
    v79 = *(v0 + 176);
    v82 = *(v0 + 168);

    sub_223B56960(v3, &qword_27D0B10D0, &qword_223BF7738);

    v11 = *(v0 + 8);

    return v11();
  }

  sub_223B56890(v1, *(v0 + 280), &qword_27D0B10A8, &qword_223BF7710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v0 + 384);
    v14 = *(v0 + 392);
    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    (*(*(v0 + 232) + 32))(*(v0 + 256), *(v0 + 280), *(v0 + 224));
    sub_223B568F8(v14, v13, &qword_27D0B10D0, &qword_223BF7738);
    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      v17 = *(v0 + 384);
      (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
      sub_223B56960(v17, &qword_27D0B10D0, &qword_223BF7738);
LABEL_8:
      v18 = *(MEMORY[0x277CEF6F0] + 4);
      v19 = swift_task_alloc();
      *(v0 + 432) = v19;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
      *v19 = v0;
      v19[1] = sub_223B52FE0;
      v21 = *(v0 + 288);

      return MEMORY[0x282141C10](v21, v20);
    }

    v37 = *(v0 + 416);
    v39 = *(v0 + 232);
    v38 = *(v0 + 240);
    v40 = *(v0 + 224);
    v41 = *(v0 + 192);
    v42 = *(v0 + 160);
    sub_223B56890(*(v0 + 384), *(v0 + 216), &qword_27D0B10A0, &qword_223BF7708);
    v43 = *(v37 + 52);
    sub_223BF4BBC();
    sub_223B56AAC(&qword_27D0B1108, MEMORY[0x277D85960]);
    sub_223BF4DFC();
    v44 = *(v41 + 48);
    sub_223B56AAC(&qword_27D0B1110, MEMORY[0x277D85938]);
    LOBYTE(v43) = sub_223BF44DC();
    v45 = *(v39 + 8);
    *(v0 + 504) = v45;
    *(v0 + 512) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v38, v40);
    if ((v43 & 1) == 0)
    {
      v46 = *(v0 + 256);
      v47 = *(v0 + 224);
      sub_223B56AAC(&qword_27D0B1118, MEMORY[0x277D85938]);
      if ((sub_223BF452C() & 1) == 0)
      {
        v68 = *(v0 + 256);
        v69 = *(v0 + 224);
        sub_223B56960(*(v0 + 216), &qword_27D0B10A0, &qword_223BF7708);
        v45(v68, v69);
        goto LABEL_8;
      }
    }

    v80 = *(v0 + 408);
    v83 = *(v0 + 416);
    v48 = *(v0 + 392);
    v49 = *(v0 + 400);
    v51 = *(v0 + 216);
    v50 = *(v0 + 224);
    v52 = *(v0 + 208);
    v53 = *(v0 + 192);
    v54 = *(v0 + 160);
    sub_223B56960(v48, &qword_27D0B10D0, &qword_223BF7738);
    sub_223B568F8(v51, v52, &qword_27D0B10A0, &qword_223BF7708);
    v55 = *(v53 + 48);
    *(v0 + 105) = *v52;
    v45(&v52[v55], v50);
    v49(v48, 1, 1, v53);
    v56 = *(v54 + *(v83 + 60));
    v57 = *(MEMORY[0x277CEF740] + 4);
    v58 = swift_task_alloc();
    *(v0 + 520) = v58;
    *v58 = v0;
    v58[1] = sub_223B54084;
    v36 = v0 + 105;
    goto LABEL_16;
  }

  v22 = *(v0 + 416);
  v23 = *(v0 + 160);
  v24 = **(v0 + 280);
  *(v0 + 106) = v24;
  v25 = v23 + *(v22 + 56);
  v26 = *(v25 + 8);
  (*v25)(v0 + 106);
  if (*(v0 + 104))
  {
    v28 = *(v0 + 408);
    v27 = *(v0 + 416);
    v29 = *(v0 + 392);
    v30 = *(v0 + 400);
    v31 = *(v0 + 192);
    v32 = *(v0 + 160);
    sub_223B56960(v29, &qword_27D0B10D0, &qword_223BF7738);
    v30(v29, 1, 1, v31);
    v33 = *(v32 + *(v27 + 60));
    v34 = *(MEMORY[0x277CEF740] + 4);
    v35 = swift_task_alloc();
    *(v0 + 496) = v35;
    *v35 = v0;
    v35[1] = sub_223B53ED4;
    v36 = v0 + 106;
LABEL_16:

    return MEMORY[0x282141C80](v36);
  }

  v84 = *(v0 + 408);
  v59 = *(v0 + 392);
  v78 = *(v0 + 416);
  v81 = *(v0 + 400);
  v60 = *(v0 + 240);
  v62 = *(v0 + 224);
  v61 = *(v0 + 232);
  v76 = *(v0 + 192);
  v72 = *(v0 + 248);
  v74 = *(v0 + 160);
  *(v0 + 112) = *(v0 + 88);
  v63 = *(v78 + 52);
  sub_223BF4BBC();
  sub_223B56AAC(&qword_27D0B1108, MEMORY[0x277D85960]);
  sub_223BF4DFC();
  sub_223B56AAC(&qword_27D0B1120, MEMORY[0x277D85938]);
  sub_223BF4B8C();
  v64 = *(v61 + 8);
  *(v0 + 456) = v64;
  *(v0 + 464) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v64(v60, v62);
  sub_223B56960(v59, &qword_27D0B10D0, &qword_223BF7738);
  v65 = *(v76 + 48);
  *v59 = v24;
  v66 = *(v61 + 16);
  *(v0 + 472) = v66;
  *(v0 + 480) = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66(&v59[v65], v72, v62);
  v81(v59, 0, 1, v76);
  v67 = *(v74 + *(v78 + 64));
  *(v0 + 488) = v67;

  return MEMORY[0x2822009F8](sub_223B53B54, v67, 0);
}

uint64_t sub_223B53914()
{
  v0[18] = v0[55];
  v0[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_223B539AC, 0, 0);
}

uint64_t sub_223B539AC()
{
  *(v0 + 152) = *(v0 + 440);
  v1 = *(v0 + 448);
  if (sub_223BF4D9C())
  {
  }

  else
  {
    v3 = *(v0 + 440);
    v2 = *(v0 + 448);
    swift_allocError();
    *v4 = v3;
  }

  v5 = *(v0 + 424);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);
  v9 = *(v0 + 360);
  v10 = *(v0 + 336);
  v11 = *(v0 + 312);
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 256);
  v17 = *(v0 + 248);
  v18 = *(v0 + 240);
  v19 = *(v0 + 216);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 176);
  v23 = *(v0 + 168);

  sub_223B56960(v6, &qword_27D0B10D0, &qword_223BF7738);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_223B53B54()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 184);
  v3 = *(*v1 + 96);
  swift_beginAccess();
  sub_223B568F8(v1 + v3, v2, &qword_27D0B1098, &qword_223BF7700);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1078, &qword_223BF76C8);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v6 = *(v0 + 184);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_223B56960(v6, &qword_27D0B1078, &qword_223BF76C8);
      }

      v8 = *(v0 + 480);
      v9 = *(v0 + 176);
      (*(v0 + 472))(v9, *(v0 + 248), *(v0 + 224));
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v9, 0, 1, v4);
      swift_beginAccess();
      sub_223B56820(v9, v1 + v3);
      swift_endAccess();
    }

    else
    {
      v17 = *(v0 + 472);
      v18 = *(v0 + 480);
      v16 = *(v0 + 248);
      v11 = *(v0 + 224);
      v10 = *(v0 + 232);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      v14 = *v6;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v13, 0, 1, v4);
      swift_beginAccess();
      sub_223B56820(v13, v1 + v3);
      swift_endAccess();
      v17(v12, v16, v11);
      (*(v10 + 56))(v12, 0, 1, v11);
      sub_223B56890(v12, *(*(v14 + 64) + 40), &qword_27D0B1090, &qword_223BF76F8);
      swift_continuation_resume();
    }
  }

  return MEMORY[0x2822009F8](sub_223B53E10, 0, 0);
}

uint64_t sub_223B53E10()
{
  v1 = *(v0 + 464);
  (*(v0 + 456))(*(v0 + 248), *(v0 + 224));
  v2 = *(MEMORY[0x277CEF6F0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 432) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v3 = v0;
  v3[1] = sub_223B52FE0;
  v5 = *(v0 + 288);

  return MEMORY[0x282141C10](v5, v4);
}

uint64_t sub_223B53ED4()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_223B53FD0, 0, 0);
}

uint64_t sub_223B53FD0()
{
  v1 = *(MEMORY[0x277CEF6F0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 432) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v2 = v0;
  v2[1] = sub_223B52FE0;
  v4 = *(v0 + 288);

  return MEMORY[0x282141C10](v4, v3);
}

uint64_t sub_223B54084()
{
  v1 = *(*v0 + 520);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_223B54180, 0, 0);
}

uint64_t sub_223B54180()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[32];
  v4 = v0[28];
  sub_223B56960(v0[27], &qword_27D0B10A0, &qword_223BF7708);
  v2(v3, v4);
  v5 = *(MEMORY[0x277CEF6F0] + 4);
  v6 = swift_task_alloc();
  v0[54] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v6 = v0;
  v6[1] = sub_223B52FE0;
  v8 = v0[36];

  return MEMORY[0x282141C10](v8, v7);
}

uint64_t sub_223B54268(uint64_t a1, uint64_t a2)
{
  v5 = sub_223BF4B9C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A8, &qword_223BF7710);
  swift_storeEnumTagMultiPayload();
  v6 = *(v2 + 8);

  return v6();
}

uint64_t sub_223B54330()
{
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](0);
  return sub_223BF4EBC();
}

uint64_t sub_223B54374()
{
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](0);
  return sub_223BF4EBC();
}

uint64_t sub_223B543B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_223BF435C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B54480, 0, 0);
}

uint64_t sub_223B54480()
{
  v35 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 24), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277D29E10] || v5 == *MEMORY[0x277D29E18])
  {
    v7 = v5 == *MEMORY[0x277D29E10];
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    **(v0 + 16) = v7;

    v10 = *(v0 + 8);
  }

  else
  {
    if (qword_27D0B0B70 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = sub_223BF442C();
    __swift_project_value_buffer(v14, qword_27D0B97F8);
    v4(v11, v13, v12);
    v15 = sub_223BF441C();
    v16 = sub_223BF49DC();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    v20 = *(v0 + 32);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v21 = 136315138;
      sub_223B56AAC(&qword_27D0B1148, MEMORY[0x277D29E20]);
      v22 = sub_223BF4D6C();
      v24 = v23;
      v25 = v20;
      v26 = *(v19 + 8);
      v26(v18, v25);
      v27 = sub_223B54FF0(v22, v24, &v34);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_223B4A000, v15, v16, "Unsupported case in inference notification transformation: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DF4FD0](v33, -1, -1);
      MEMORY[0x223DF4FD0](v21, -1, -1);
    }

    else
    {

      v28 = v20;
      v26 = *(v19 + 8);
      v26(v18, v28);
    }

    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    v31 = *(v0 + 32);
    sub_223B56A58();
    swift_allocError();
    swift_willThrow();
    v26(v30, v31);

    v10 = *(v0 + 8);
  }

  return v10();
}

double sub_223B547A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_223BF4BBC();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v19 = *(*(v36 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v36);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v35 = &v35 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1028, &qword_223BF7690);
  v38 = *(v24 - 8);
  v39 = v24;
  v25 = *(v38 + 64);
  MEMORY[0x28223BE20](v24);
  v37 = &v35 - v26;
  v27 = *(*(sub_223BF437C() - 8) + 64);
  if (a1 == MEMORY[0x28223BE20](0x636E657265666E69) && a2 == 0xE900000000000065 || (sub_223BF4DAC() & 1) != 0)
  {
    *(a3 + 24) = v12;
    *(a3 + 32) = sub_223B569C0(&qword_27D0B1058, &qword_27D0B1018, &qword_223BF7680);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_223BF436C();
    sub_223B56AAC(&qword_27D0B1030, MEMORY[0x277D29E30]);
    sub_223BF4D8C();
  }

  else
  {
    if ((a1 != 0xD000000000000014 || 0x8000000223C03D80 != a2) && (sub_223BF4DAC() & 1) == 0)
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 2;
      return result;
    }

    sub_223BF436C();
    sub_223B56AAC(&qword_27D0B1030, MEMORY[0x277D29E30]);
    sub_223BF4D8C();
    sub_223BF4BAC();
    v29 = v41;
    (*(v41 + 16))(v16, v18, v12);
    v31 = v42;
    v30 = v43;
    v32 = v40;
    (*(v42 + 16))(v40, v11, v43);
    sub_223B50A98(v16, qword_283717000, sub_223B54E8C, 0, v32, &v44, v22);
    (*(v31 + 8))(v11, v30);
    (*(v29 + 8))(v18, v12);
    sub_223B56890(v22, v35, &qword_27D0B1020, &qword_223BF7688);
    sub_223B569C0(&qword_27D0B1038, &qword_27D0B1020, &qword_223BF7688);
    v33 = v37;
    sub_223BF4D8C();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1040, &qword_223BF76A8);
    *(a3 + 32) = sub_223B569C0(&qword_27D0B1048, &qword_27D0B1040, &qword_223BF76A8);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_223B569C0(&qword_27D0B1050, &qword_27D0B1028, &qword_223BF7690);
    v34 = v39;
    sub_223BF482C();
    (*(v38 + 8))(v33, v34);
  }

  *(a3 + 40) = 0;
  return result;
}

char *sub_223B54E8C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = 5000000000000000000;
  if (*result)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_223B54EB0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_223B54ED8, 0, 0);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_223B54FF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_223B550BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_223B56B40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_223B550BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_223B551C8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_223BF4ADC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_223B551C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_223B55214(a1, a2);
  sub_223B55344(&unk_283716FD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_223B55214(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_223B55430(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_223BF4ADC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_223BF45CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_223B55430(v10, 0);
        result = sub_223BF4A7C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_223B55344(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_223B554A4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_223B55430(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1150, &qword_223BF7778);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_223B554A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1150, &qword_223BF7778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_223B5559C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223B56A08(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_223B55608(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_223B55608(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_223BF4D5C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1130, &qword_223BF7768);
        v5 = sub_223BF46DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_223B55834(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_223B55710(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_223B55710(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v19 = a3;
    v7 = v6;
    v18 = v5;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 - 24);
      v8 -= 24;
      v10 = *(v5 - 8);
      if (*(v5 + 16) == 1)
      {
        if (*(v5 - 8))
        {
          goto LABEL_4;
        }
      }

      else if (*(v5 - 8) & 1) != 0 || (v11 = *v5, v12 = *(v5 + 8), v13 = *(v5 - 16), result = sub_223BF4EFC(), (result) || (result = sub_223BF4EEC(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 24;
        --v6;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *(v5 + 16);
      v15 = *v5;
      *v5 = *v8;
      *(v5 + 16) = *(v8 + 16);
      *(v5 - 24) = v15;
      *(v5 - 8) = v14;
      v5 = v8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223B55834(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8++;
      v114 = v9;
      v109 = v10;
      if (v8 < v7)
      {
        break;
      }

LABEL_37:
      v40 = a3[1];
      if (v8 >= v40)
      {
        goto LABEL_60;
      }

      if (__OFSUB__(v8, v10))
      {
        goto LABEL_140;
      }

      if (v8 - v10 >= a4)
      {
        goto LABEL_60;
      }

      v41 = (v10 + a4);
      if (__OFADD__(v10, a4))
      {
        goto LABEL_142;
      }

      if (v41 >= v40)
      {
        v41 = a3[1];
      }

      if (v41 < v10)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v8 == v41)
      {
        goto LABEL_60;
      }

      v106 = v6;
      v42 = *a3;
      v43 = *a3 + 24 * v8;
      v44 = (v10 - v8);
      v110 = v41;
      while (2)
      {
        v111 = v43;
        v112 = v8;
        v45 = v44;
        v46 = v43;
        v47 = v43;
        while (1)
        {
          v48 = *(v47 - 24);
          v47 -= 24;
          v49 = *(v46 - 8);
          if (*(v46 + 16) == 1)
          {
            if (*(v46 - 8))
            {
              goto LABEL_47;
            }

            goto LABEL_55;
          }

          if (*(v46 - 8))
          {
            goto LABEL_47;
          }

          v5 = *v46;
          v50 = *(v46 + 8);
          v51 = *(v46 - 16);
          result = sub_223BF4EFC();
          if (result)
          {
            break;
          }

          result = sub_223BF4EEC();
          v9 = v114;
          if ((result & 1) == 0)
          {
            goto LABEL_47;
          }

LABEL_55:
          if (!v42)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v52 = *(v46 + 16);
          v53 = *v46;
          *v46 = *v47;
          *(v46 + 16) = *(v47 + 16);
          *(v46 - 24) = v53;
          *(v46 - 8) = v52;
          v46 = v47;
          if (__CFADD__(v45++, 1))
          {
            goto LABEL_47;
          }
        }

        v9 = v114;
LABEL_47:
        v8 = (v112 + 1);
        v43 = v111 + 24;
        --v44;
        if (v112 + 1 != v110)
        {
          continue;
        }

        break;
      }

      v8 = v110;
      v6 = v106;
      v10 = v109;
LABEL_60:
      if (v8 < v10)
      {
        goto LABEL_139;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223B56324(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v56 = *(v9 + 2);
      v55 = *(v9 + 3);
      v57 = v56 + 1;
      if (v56 >= v55 >> 1)
      {
        result = sub_223B56324((v55 > 1), v56 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v57;
      v58 = &v9[16 * v56];
      *(v58 + 4) = v10;
      *(v58 + 5) = v8;
      v59 = *v108;
      if (!*v108)
      {
        goto LABEL_149;
      }

      if (v56)
      {
        while (2)
        {
          v5 = v57 - 1;
          if (v57 >= 4)
          {
            v64 = &v9[16 * v57 + 32];
            v65 = *(v64 - 64);
            v66 = *(v64 - 56);
            v70 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            if (v70)
            {
              goto LABEL_126;
            }

            v69 = *(v64 - 48);
            v68 = *(v64 - 40);
            v70 = __OFSUB__(v68, v69);
            v62 = v68 - v69;
            v63 = v70;
            if (v70)
            {
              goto LABEL_127;
            }

            v71 = &v9[16 * v57];
            v73 = *v71;
            v72 = *(v71 + 1);
            v70 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v70)
            {
              goto LABEL_129;
            }

            v70 = __OFADD__(v62, v74);
            v75 = v62 + v74;
            if (v70)
            {
              goto LABEL_132;
            }

            if (v75 >= v67)
            {
              v93 = &v9[16 * v5 + 32];
              v95 = *v93;
              v94 = *(v93 + 1);
              v70 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v70)
              {
                goto LABEL_136;
              }

              if (v62 < v96)
              {
                v5 = v57 - 2;
              }
            }

            else
            {
LABEL_80:
              if (v63)
              {
                goto LABEL_128;
              }

              v76 = &v9[16 * v57];
              v78 = *v76;
              v77 = *(v76 + 1);
              v79 = __OFSUB__(v77, v78);
              v80 = v77 - v78;
              v81 = v79;
              if (v79)
              {
                goto LABEL_131;
              }

              v82 = &v9[16 * v5 + 32];
              v84 = *v82;
              v83 = *(v82 + 1);
              v70 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v70)
              {
                goto LABEL_134;
              }

              if (__OFADD__(v80, v85))
              {
                goto LABEL_135;
              }

              if (v80 + v85 < v62)
              {
                goto LABEL_94;
              }

              if (v62 < v85)
              {
                v5 = v57 - 2;
              }
            }
          }

          else
          {
            if (v57 == 3)
            {
              v60 = *(v9 + 4);
              v61 = *(v9 + 5);
              v70 = __OFSUB__(v61, v60);
              v62 = v61 - v60;
              v63 = v70;
              goto LABEL_80;
            }

            v86 = &v9[16 * v57];
            v88 = *v86;
            v87 = *(v86 + 1);
            v70 = __OFSUB__(v87, v88);
            v80 = v87 - v88;
            v81 = v70;
LABEL_94:
            if (v81)
            {
              goto LABEL_130;
            }

            v89 = &v9[16 * v5];
            v91 = *(v89 + 4);
            v90 = *(v89 + 5);
            v70 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v70)
            {
              goto LABEL_133;
            }

            if (v92 < v80)
            {
              break;
            }
          }

          v97 = v5 - 1;
          if (v5 - 1 >= v57)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
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
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v10 = v8;
          v98 = *&v9[16 * v97 + 32];
          v99 = *&v9[16 * v5 + 40];
          sub_223B55F84((*a3 + 24 * v98), (*a3 + 24 * *&v9[16 * v5 + 32]), *a3 + 24 * v99, v59);
          if (v6)
          {
          }

          if (v99 < v98)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_223B56310(v9);
          }

          if (v97 >= *(v9 + 2))
          {
            goto LABEL_125;
          }

          v100 = &v9[16 * v97];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          result = sub_223B56284(v5);
          v57 = *(v9 + 2);
          v8 = v10;
          if (v57 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_112;
      }
    }

    v11 = *a3;
    v12 = *a3 + 24 * v8;
    v13 = *(v12 + 16);
    v14 = *a3 + 24 * v10;
    v15 = *(v14 + 16);
    if (v13 == 1)
    {
      if (v15)
      {
        v16 = 0;
LABEL_10:
        v8 = v10 + 2;
        if (v10 + 2 < v7)
        {
          v17 = v11 + 24 * v10 + 32;
          v18 = v17;
          while (1)
          {
            v19 = *(v18 + 24);
            v18 += 24;
            v5 = v19;
            v20 = *(v17 + 32);
            v21 = *(v17 + 8);
            if (v20 != 1)
            {
              break;
            }

            if ((v21 & 1) == 0)
            {
              goto LABEL_18;
            }

            if (v16)
            {
              goto LABEL_30;
            }

LABEL_13:
            ++v8;
            v17 = v18;
            if (v7 == v8)
            {
              v8 = v7;
              goto LABEL_29;
            }
          }

          if (v21)
          {
LABEL_18:
            result = v20 & (v21 ^ 1u);
          }

          else
          {
            v22 = v8;
            v23 = v6;
            v24 = *(v17 + 16);
            v26 = *(v17 - 8);
            v25 = *v17;
            result = sub_223BF4EFC();
            if (result)
            {
              v6 = v23;
              v9 = v114;
              v8 = v22;
              v10 = v109;
              if (v16)
              {
                goto LABEL_30;
              }

              goto LABEL_13;
            }

            result = sub_223BF4EEC();
            v6 = v23;
            v9 = v114;
            v8 = v22;
            v10 = v109;
          }

          if ((v16 ^ result))
          {
            goto LABEL_29;
          }

          goto LABEL_13;
        }

LABEL_29:
        if (v16)
        {
LABEL_30:
          if (v8 < v10)
          {
            goto LABEL_141;
          }

          if (v10 < v8)
          {
            v30 = 0;
            v31 = 24 * v8;
            v32 = 24 * v10;
            v33 = v10;
            while (1)
            {
              if (v33 != (v8 + v30 - 1))
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v35 = (v34 + v32);
                v36 = v34 + v31;
                v37 = *(v35 + 16);
                v38 = *v35;
                v39 = *(v36 - 8);
                *v35 = *(v36 - 24);
                *(v35 + 2) = v39;
                *(v36 - 24) = v38;
                *(v36 - 8) = v37;
              }

              ++v33;
              --v30;
              v31 -= 24;
              v32 += 24;
              if (v33 >= v8 + v30)
              {
                goto LABEL_37;
              }
            }
          }
        }

        goto LABEL_37;
      }
    }

    else if ((v15 & 1) == 0)
    {
      v27 = *v12;
      v5 = *(v12 + 8);
      v29 = *v14;
      v28 = *(v14 + 8);
      result = sub_223BF4EFC();
      if (result)
      {
        v16 = 0;
      }

      else
      {
        result = sub_223BF4EEC();
        v16 = result;
      }

      v9 = v114;
      goto LABEL_10;
    }

    v16 = v13 & (v15 ^ 1);
    goto LABEL_10;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_112:
  v5 = a3;
  v10 = *v108;
  if (!*v108)
  {
    goto LABEL_150;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_144:
    result = sub_223B56310(v9);
    v9 = result;
  }

  v101 = *(v9 + 2);
  if (v101 < 2)
  {
  }

  while (*v5)
  {
    v102 = v9;
    v9 = (v101 - 1);
    v103 = *&v102[16 * v101];
    v104 = *&v102[16 * v101 + 24];
    sub_223B55F84((*v5 + 24 * v103), (*v5 + 24 * *&v102[16 * v101 + 16]), *v5 + 24 * v104, v10);
    if (v6)
    {
    }

    if (v104 < v103)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_223B56310(v102);
    }

    if (v101 - 2 >= *(v102 + 2))
    {
      goto LABEL_138;
    }

    v105 = &v102[16 * v101];
    *v105 = v103;
    *(v105 + 1) = v104;
    result = sub_223B56284(v101 - 1);
    v9 = v102;
    v101 = *(v102 + 2);
    if (v101 <= 1)
    {
    }
  }

LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_223B55F84(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  v43 = a3;
  if (v8 >= v10)
  {
    v24 = 24 * v10;
    if (a4 != __dst || &__dst[v24] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
      a3 = v43;
    }

    v12 = &v4[v24];
    if (v9 < 24 || v5 <= v6)
    {
LABEL_40:
      v23 = v5;
      goto LABEL_41;
    }

    while (1)
    {
      v25 = 0;
      v26 = v12;
      v40 = v5 - 24;
      while (1)
      {
        v27 = &v26[v25];
        v28 = *&v26[v25 - 24];
        v29 = *(v5 - 8);
        if (v26[v25 - 8] != 1)
        {
          break;
        }

        if ((*(v5 - 8) & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_33:
        if ((a3 + v25) != v27)
        {
          v34 = a3 + v25 - 24;
          v35 = *&v26[v25 - 24];
          *(v34 + 16) = *&v26[v25 - 8];
          *v34 = v35;
        }

        v25 -= 24;
        v12 = &v26[v25];
        if (&v26[v25] <= v4)
        {
          goto LABEL_40;
        }
      }

      if (*(v5 - 8))
      {
        goto LABEL_33;
      }

      v30 = *&v26[v25 - 24];
      v44 = *(v27 - 2);
      v31 = a3;
      v41 = *(v5 - 2);
      v42 = *(v5 - 3);
      v32 = sub_223BF4EFC();
      a3 = v31;
      if (v32)
      {
        goto LABEL_33;
      }

      v33 = sub_223BF4EEC();
      a3 = v31;
      if ((v33 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_35:
      v36 = (a3 + v25);
      a3 = a3 + v25 - 24;
      v23 = v5 - 24;
      if (v36 != v5)
      {
        v37 = *v40;
        *(a3 + 16) = *(v5 - 1);
        *a3 = v37;
      }

      v12 = &v26[v25];
      if (&v26[v25] > v4)
      {
        v5 -= 24;
        if (v40 > v6)
        {
          continue;
        }
      }

      v12 = &v26[v25];
      goto LABEL_41;
    }
  }

  v11 = 24 * v8;
  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, v11);
    a3 = v43;
  }

  v12 = &v4[v11];
  if (v7 >= 24 && v5 < a3)
  {
    do
    {
      v13 = v4[16];
      if (v5[16] == 1)
      {
        if (v4[16])
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v4[16])
        {
          goto LABEL_15;
        }

        v16 = *v5;
        v17 = *(v5 + 1);
        v18 = *v4;
        v19 = *(v4 + 1);
        v20 = sub_223BF4EFC();
        a3 = v43;
        if ((v20 & 1) != 0 || (v21 = sub_223BF4EEC(), a3 = v43, (v21 & 1) == 0))
        {
LABEL_15:
          v14 = v4;
          v15 = v6 == v4;
          v4 += 24;
          if (v15)
          {
            goto LABEL_17;
          }

LABEL_16:
          v22 = *v14;
          *(v6 + 2) = *(v14 + 2);
          *v6 = v22;
          goto LABEL_17;
        }
      }

      v14 = v5;
      v15 = v6 == v5;
      v5 += 24;
      if (!v15)
      {
        goto LABEL_16;
      }

LABEL_17:
      v6 += 24;
    }

    while (v4 < v12 && v5 < a3);
  }

  v23 = v6;
LABEL_41:
  v38 = 24 * ((v12 - v4) / 24);
  if (v23 != v4 || v23 >= &v4[v38])
  {
    memmove(v23, v4, v38);
  }

  return 1;
}

uint64_t sub_223B56284(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_223B56310(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_223B56324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1138, &qword_223BF7770);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_223B5642C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_223B56CF0;

  return sub_223B51728(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[15];
  v8 = sub_223BF4BBC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[16] + 8);

  v10 = *(v0 + v3 + v1[17]);

  v11 = *(v0 + v3 + v1[18]);

  v12 = *(v0 + v3 + v1[19]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_223B5669C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_223B4D6F4;

  return sub_223B52894(a1, v6, v7, v1 + v5);
}

uint64_t sub_223B56798(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A8, &qword_223BF7710);
  swift_storeEnumTagMultiPayload();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_223B56820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1098, &qword_223BF7700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223B56890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_223B568F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_223B56960(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_223B569C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_223B56A58()
{
  result = qword_27D0B1140;
  if (!qword_27D0B1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1140);
  }

  return result;
}

uint64_t sub_223B56AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_223B56B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for CanonicalNotificationStreamBuilder.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CanonicalNotificationStreamBuilder.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_223B56C9C()
{
  result = qword_27D0B1158;
  if (!qword_27D0B1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1158);
  }

  return result;
}

uint64_t sub_223B56CF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    sub_223B57C94(0, v2, 0);
    v28 = v30;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = sub_223BF4A3C();
    v6 = result;
    v7 = 0;
    v29 = *(a1 + 36);
    v26 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v10 = (*(a1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(*(a1 + 56) + 8 * v6);

      v27 = sub_223BF453C();
      v14 = sub_223B579B8();

      v15 = v28;
      v17 = *(v28 + 16);
      v16 = *(v28 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_223B57C94((v16 > 1), v17 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v27;
      *(v18 + 40) = v14;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v15;
      if (v29 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (a1 + 72 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_223B5AC98(v6, v29, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_223B5AC98(v6, v29, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v26)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B56F7C(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v6);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v19, v3);
    v22 = a2[7];
    sub_223BF449C();
    return (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v11 + 32))(v15, v19, v10);
    v24 = a2[5];
    sub_223BF449C();
    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_223B57214@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a8;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v10 = type metadata accessor for TaglessUnion();
  v19 = *(v10 - 8);
  v11 = *(v19 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  sub_223B57430(a1, v20);
  sub_223BF486C();
  if (v8)
  {

    sub_223B57430(a1, v20);
    sub_223BF486C();
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_storeEnumTagMultiPayload();
    v14 = v16;
  }

  return (*(v19 + 32))(v21, v14, v10);
}

uint64_t sub_223B57430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_223B57494()
{
  result = qword_27D0B1160;
  if (!qword_27D0B1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1160);
  }

  return result;
}

uint64_t sub_223B57514()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v9 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      return sub_223BF479C();
    }

    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v2 == 4)
    {
      sub_223B5A61C();

      sub_223BF472C();
    }

    else
    {
      sub_223B5A61C();

      sub_223BF446C();
    }
  }

  if (!v2)
  {
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);

    sub_223BF45BC();
  }

  v3 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v2 == 1)
  {
    v4 = *(v3 + 16);
    return sub_223BF48BC();
  }

  else
  {
    v10 = *(v3 + 16);
    return sub_223BF485C();
  }
}

uint64_t sub_223B5766C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  sub_223B57430(a1, v13);
  v6 = sub_223BF457C();
  if (v2)
  {
    swift_deallocUninitializedObject();

    v8 = swift_allocObject();
    sub_223B57430(a1, v13);
    v11 = sub_223BF48AC();
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    *(v8 + 16) = v11;
    *a2 = v8 | 0x2000000000000000;
  }

  else
  {
    v9 = v6;
    v10 = v7;
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    *(v5 + 16) = v9;
    *(v5 + 24) = v10;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_223B579B8(__n128 a1)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 <= 2)
  {
    if (v3)
    {
      v4 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      if (v3 == 1)
      {
        v5 = *(v4 + 16);

        return sub_223BF489C();
      }

      else
      {
        a1.n128_u64[0] = *(v4 + 16);

        return MEMORY[0x28211EAC0](a1);
      }
    }

    v14 = *(v2 + 16);
    v15 = *(v2 + 24);

    v13 = sub_223BF453C();
LABEL_15:
    v16 = v13;

    return v16;
  }

  v7 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 != 3)
  {
    if (v3 != 4)
    {
      v18 = *(v7 + 16);

      v20 = sub_223B56CF4(v19);

      if (*(v20 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1188, &unk_223BF7C10);
        v21 = sub_223BF4C1C();
      }

      else
      {
        v21 = MEMORY[0x277D84F98];
      }

      v25 = v21;

      sub_223B5A0F4(v22, 1, &v25);

      type metadata accessor for CFString();
      sub_223B5AC4C();
      sub_223B4CBF4(&qword_27D0B0B80);
      v23 = sub_223BF444C();

      return v23;
    }

    v8 = *(v7 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      v25 = MEMORY[0x277D84F90];

      v10 = sub_223BF4B2C();
      v11 = 32;
      do
      {
        v24 = *(v8 + v11);
        sub_223B579B8(v10);
        sub_223BF4AFC();
        v12 = *(v25 + 16);
        sub_223BF4B3C();
        sub_223BF4B4C();
        v10 = sub_223BF4B0C();
        v11 += 8;
        --v9;
      }

      while (v9);
    }

    sub_223B5AC4C();
    v13 = sub_223BF467C();
    goto LABEL_15;
  }

  v17 = *(v7 + 16);

  return sub_223BF477C();
}

char *sub_223B57C74(char *a1, int64_t a2, char a3)
{
  result = sub_223B57F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223B57C94(void *a1, int64_t a2, char a3)
{
  result = sub_223B580A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223B57CB4(void *a1, int64_t a2, char a3)
{
  result = sub_223B581E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57CD4(char *a1, int64_t a2, char a3)
{
  result = sub_223B5832C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57CF4(char *a1, int64_t a2, char a3)
{
  result = sub_223B58450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_223B57D14(size_t a1, int64_t a2, char a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B11D0, &qword_223BF7C58, &qword_27D0B11D8, &qword_223BF7C60);
  *v3 = result;
  return result;
}

size_t sub_223B57D54(size_t a1, int64_t a2, char a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B11E0, &qword_223BF7C68, &qword_27D0B11E8, &qword_223BF7C70);
  *v3 = result;
  return result;
}

size_t sub_223B57D94(size_t a1, int64_t a2, char a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B11F0, &qword_223BF7C78, &qword_27D0B11F8, &qword_223BF7C80);
  *v3 = result;
  return result;
}

void *sub_223B57DD4(void *a1, int64_t a2, char a3)
{
  result = sub_223B58560(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_223B57DF4(size_t a1, int64_t a2, char a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B1238, &unk_223BF7CC0, &qword_27D0B1240, &qword_223BFA860);
  *v3 = result;
  return result;
}

size_t sub_223B57E34(size_t a1, int64_t a2, char a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B1248, &unk_223BF7CD0, &qword_27D0B1250, &unk_223BF7F40);
  *v3 = result;
  return result;
}

size_t sub_223B57E74(size_t a1, int64_t a2, char a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B1258, &unk_223BF7CE0, &qword_27D0B1260, &qword_223BFA7F0);
  *v3 = result;
  return result;
}

void *sub_223B57EB4(void *a1, int64_t a2, char a3)
{
  result = sub_223B58884(a1, a2, a3, *v3, &qword_27D0B1218, &qword_223BF7CA0, &qword_27D0B1220, &qword_223BF7CA8);
  *v3 = result;
  return result;
}

void *sub_223B57EF4(void *a1, int64_t a2, char a3)
{
  result = sub_223B58884(a1, a2, a3, *v3, &qword_27D0B1200, &qword_223BF7C88, &qword_27D0B1208, &qword_223BF7C90);
  *v3 = result;
  return result;
}

char *sub_223B57F34(char *a1, int64_t a2, char a3)
{
  result = sub_223B589BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57F54(char *a1, int64_t a2, char a3)
{
  result = sub_223B58ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57F74(char *a1, int64_t a2, char a3)
{
  result = sub_223B58BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1270, &qword_223BF7CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
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

void *sub_223B580A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1198, &qword_223BF7C20);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A0, &qword_223BF7C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223B581E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12C0, &qword_223BF7D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12C8, &qword_223BF7D48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223B5832C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12D0, &qword_223BF7D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223B58450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1210, &qword_223BF7C98);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_223B58560(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12A8, &qword_223BF7D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B0, &unk_223BF7D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_223B58698(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_223B58884(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_223B589BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12A0, &qword_223BF7D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_223B58ADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12D8, &qword_223BF7D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_223B58BE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12E0, &unk_223BF7D60);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_223B58CE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1188, &unk_223BF7C10);
  v35 = a2;
  result = sub_223BF4C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_223BF4E8C();
      type metadata accessor for CFString();
      sub_223B4CBF4(&qword_27D0B1190);
      sub_223BF433C();
      result = sub_223BF4EBC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_223B58FAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
  v37 = a2;
  result = sub_223BF4C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_223B59254(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1268, &qword_223BF7CF0);
  result = sub_223BF4C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_223BF4E7C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_223B594E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A8, &unk_223BF7C30);
  v38 = a2;
  result = sub_223BF4C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_223B597D8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v47 = a3;
  v48 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - v14;
  v16 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v17 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v46 = a2;
  result = sub_223BF4C0C();
  v19 = result;
  if (*(v16 + 16))
  {
    v44 = v9;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = v28 | (v20 << 6);
      v32 = *(*(v16 + 48) + 4 * v31);
      v33 = *(v45 + 72);
      v34 = *(v16 + 56) + v33 * v31;
      if (v46)
      {
        sub_223B56890(v34, v15, v47, v48);
      }

      else
      {
        sub_223B568F8(v34, v15, v47, v48);
      }

      result = MEMORY[0x223DF36A0](*(v19 + 40), v32, 4);
      v35 = -1 << *(v19 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v26 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v26 + 8 * v37);
          if (v41 != -1)
          {
            v27 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v36) & ~*(v26 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v19 + 48) + 4 * v27) = v32;
      result = sub_223B56890(v15, *(v19 + 56) + v33 * v27, v47, v48);
      ++*(v19 + 16);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v16 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero((v16 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v42;
    }

    *(v16 + 16) = 0;
  }

LABEL_36:
  *v9 = v19;
  return result;
}

uint64_t sub_223B59B40(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v52 = a3;
  v53 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v50 = a2;
  result = sub_223BF4C0C();
  v18 = result;
  if (*(v15 + 16))
  {
    v47 = v9;
    v48 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v49 + 72);
      v37 = v32 + v36 * v31;
      if (v50)
      {
        sub_223B56890(v37, v51, v52, v53);
      }

      else
      {
        sub_223B568F8(v37, v51, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v34;
      v27[1] = v35;
      result = sub_223B56890(v51, *(v18 + 56) + v36 * v26, v52, v53);
      ++*(v18 + 16);
      v15 = v48;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v9 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v47;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_223B59E8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1298, &unk_223BFAF60);
  result = sub_223BF4C0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      result = MEMORY[0x223DF36A0](*(v8 + 40), v21, 4);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_223B5A0F4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_223B6F894(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_223B58CE8(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_223B6F894(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for CFString();
    v11 = sub_223BF4DEC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_223B6F9A4();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v10;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_223BF4AAC();
    MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
    type metadata accessor for CFString();
    sub_223BF4BCC();
    MEMORY[0x223DF2DE0](39, 0xE100000000000000);
    sub_223BF4BEC();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v27 = *v6;
      v28 = *a3;
      v9 = *(v6 - 1);
      v10 = v27;
      v29 = sub_223B6F894(v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_223B58CE8(v33, 1);
        v34 = *a3;
        v29 = sub_223B6F894(v9);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v9;
      *(v36[7] + 8 * v29) = v10;
      v37 = v36[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_223B5A45C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v3 >> 61 != 4)
        {
          goto LABEL_26;
        }

        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_223B5AEC4(v6, v7);
      }

      else
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_26;
        }

        v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_223B5B03C(v11, v12);
      }

      v13 = v8;

      return v13 & 1;
    }

    if (v3 >> 61 == 3)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
      return v5 & 1;
    }

LABEL_26:
    v5 = 0;
    return v5 & 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        return v5 & 1;
      }

      goto LABEL_26;
    }

    if (v3 >> 61 != 2 || *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_22:
    v5 = 1;
    return v5 & 1;
  }

  if (v3 >> 61)
  {
    goto LABEL_26;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    goto LABEL_22;
  }

  return sub_223BF4DAC();
}

unint64_t sub_223B5A61C()
{
  result = qword_27D0B1168;
  if (!qword_27D0B1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1168);
  }

  return result;
}

unint64_t sub_223B5A670()
{
  result = qword_281339630;
  if (!qword_281339630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339630);
  }

  return result;
}

unint64_t sub_223B5A6C4()
{
  result = qword_27D0B1170;
  if (!qword_27D0B1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1170);
  }

  return result;
}

unint64_t sub_223B5A71C()
{
  result = qword_27D0B1178;
  if (!qword_27D0B1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1178);
  }

  return result;
}

uint64_t sub_223B5A780(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B5A7FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
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
      if (v10 >= 2)
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

  return (v4 | v9) + 255;
}

void sub_223B5A924(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
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

uint64_t sub_223B5AB04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_223B5AB60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_223B5ABF8()
{
  result = qword_27D0B1180;
  if (!qword_27D0B1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1180);
  }

  return result;
}

unint64_t sub_223B5AC4C()
{
  result = qword_2813392E0;
  if (!qword_2813392E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813392E0);
  }

  return result;
}

uint64_t sub_223B5AC98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_223B5ACC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v17 - v7);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v19 = MEMORY[0x277D84F90];
    sub_223B57D94(0, v9, 0);
    v10 = v19;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0) - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      sub_223B7B440(v12, &v18, v8);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v19 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_223B57D94(v14 > 1, v15 + 1, 1);
        v10 = v19;
      }

      *(v10 + 16) = v15 + 1;
      sub_223B56890(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, &qword_27D0B11F8, &qword_223BF7C80);
      v12 += v13;
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_223B5AEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = sub_223B57510(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_223B5AF84(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B5AFE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223B5B03C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_223B6F81C(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = sub_223B57510(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223B5B1C4()
{

  v0 = sub_223B5E000(4);
  v2 = v1;
  v4 = v3;
  v6 = v5;

  v8 = v2 >> 14;
  v9 = v0 >> 14;
  if (v0 >> 14 == v2 >> 14)
  {

    return 0;
  }

  LODWORD(v10) = 0;
  v11 = (v4 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v6) & 0xF;
  }

  v22 = v13;
  while (1)
  {
    v14 = v0 & 0xC;
    v15 = (v0 & 1) == 0 || v14 == v12;
    v16 = v15;
    if (v15)
    {
      break;
    }

    if (v0 >> 14 < v9)
    {
      goto LABEL_53;
    }

    result = v0;
    if (v0 >> 14 >= v8)
    {
      goto LABEL_53;
    }

LABEL_26:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = sub_223BF4A9C();
      v17 = result;
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v23 = v4;
        v24 = v6 & 0xFFFFFFFFFFFFFFLL;
      }

      else if ((v4 & 0x1000000000000000) == 0)
      {
        sub_223BF4ADC();
      }

      result = sub_223BF4AEC();
      v17 = result;
      if (!v16)
      {
LABEL_31:
        if (v22 <= v0 >> 16)
        {
          goto LABEL_55;
        }

LABEL_39:
        if ((v6 & 0x1000000000000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_8;
      }
    }

    if (v14 == v12)
    {
      result = sub_223B80840(v0, v4, v6);
      v0 = result;
    }

    if (v22 <= v0 >> 16)
    {
      goto LABEL_54;
    }

    if (v0)
    {
      goto LABEL_39;
    }

    result = sub_223B808BC(v0, v4, v6);
    v0 = v0 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v6 & 0x1000000000000000) == 0)
    {
LABEL_40:
      v18 = v0 >> 16;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v23 = v4;
        v24 = v6 & 0xFFFFFFFFFFFFFFLL;
        v19 = *(&v23 + v18);
      }

      else
      {
        result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v4 & 0x1000000000000000) == 0)
        {
          result = sub_223BF4ADC();
        }

        v19 = *(result + v18);
      }

      v20 = v19;
      v21 = __clz(v19 ^ 0xFF) - 24;
      if (v20 >= 0)
      {
        LOBYTE(v21) = 1;
      }

      v0 = ((v18 + v21) << 16) | 5;
      goto LABEL_9;
    }

LABEL_8:
    result = sub_223BF456C();
    v0 = result;
LABEL_9:
    v10 = v17 | (v10 << 8);
    if (v8 == v0 >> 14)
    {

      return v10;
    }
  }

  result = v0;
  if (v14 == v12)
  {
    result = sub_223B80840(v0, v4, v6);
  }

  if (result >> 14 >= v9 && result >> 14 < v8)
  {
    if ((result & 1) == 0)
    {
      sub_223B808BC(result, v4, v6);
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_223B5B488()
{
  v1 = *v0;
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](v1);
  return sub_223BF4EBC();
}

uint64_t sub_223B5B4D0()
{
  v1 = *v0;
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](v1);
  return sub_223BF4EBC();
}

unint64_t sub_223B5B518()
{
  result = qword_27D0B12E8;
  if (!qword_27D0B12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B12E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphFlavor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphFlavor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_223B5B6C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  sub_223B568F8(a1, &v16 - v11, &qword_27D0B1228, &unk_223BF7CB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a2 = *v12;
      }

      else
      {
        *a2 = *v12;
      }

      goto LABEL_15;
    }

    *a2 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *v12;
    }

    else
    {
      *a2 = *v12;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    v15 = *(v12 + 1);
    *a2 = *v12;
    a2[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
    return swift_storeEnumTagMultiPayload();
  }

  sub_223B56890(v12, v8, &qword_27D0B1260, &qword_223BFA7F0);
  sub_223B7B440(v8, &v17, a2);
  result = sub_223B56960(v8, &qword_27D0B1260, &qword_223BFA7F0);
  if (!v2)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_223B5B9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v67 = *(a3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](a1);
  v62[0] = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[1] = v6;
  v68 = v7;
  v8 = type metadata accessor for GraphPropertyValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v66 = (v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v65 = (v62 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (v62 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v63 = (v62 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v62 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v62 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v62 - v27);
  MEMORY[0x28223BE20](v26);
  v64 = v62 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  v31 = *(v70 + 64);
  v32 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v34 = v62 - v33;
  v71 = v32;
  v35 = (v62 + *(v32 + 48) - v33);
  v69 = v9;
  v36 = *(v9 + 16);
  v36(v62 - v33, a1, v8);
  v37 = v35;
  v36(v35, v72, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v44 = v65;
        v36(v65, v34, v8);
        v45 = *v44;
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_34;
        }

        v46 = sub_223B5B03C(v45, *v35);
      }

      else
      {
        v54 = v66;
        v36(v66, v34, v8);
        v55 = *v54;
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_34;
        }

        v46 = sub_223B5AFE0(v55, *v35);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v40 = v63;
        v36(v63, v34, v8);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_35;
        }

        v41.n128_u32[0] = *v40;
        v42 = *v40 == *v37;
        goto LABEL_13;
      }

      v36(v17, v34, v8);
      v52 = *v17;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      v46 = sub_223B5AF84(v52, *v35);
    }

    v43 = v46;

LABEL_33:
    (*(v69 + 8))(v34, v8, v41);
    return v43 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v39 = v64;
      v36(v64, v34, v8);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v67 + 8))(v39, v68);
LABEL_35:
        (*(v70 + 8))(v34, v71);
        goto LABEL_36;
      }

      v57 = v67;
      v58 = v68;
      v59 = v62[0];
      (*(v67 + 32))(v62[0], v35, v68);
      v43 = sub_223BF452C();
      v60 = *(v57 + 8);
      v60(v59, v58);
      v60(v39, v58);
      goto LABEL_33;
    }

    v36(v28, v34, v8);
    v48 = *v28;
    v47 = v28[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v48 == *v35 && v47 == v35[1])
      {
        v61 = v35[1];
      }

      else
      {
        v50 = v35[1];
        v51 = sub_223BF4DAC();

        if ((v51 & 1) == 0)
        {
          (*(v69 + 8))(v34, v8);
LABEL_36:
          v43 = 0;
          return v43 & 1;
        }
      }

      (*(v69 + 8))(v34, v8);
      v43 = 1;
      return v43 & 1;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36(v25, v34, v8);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_35;
    }

    v42 = *v25 == *v35;
LABEL_13:
    v43 = v42;
    goto LABEL_33;
  }

  v36(v22, v34, v8);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_35;
  }

  v53 = *v22 ^ *v35;
  (*(v69 + 8))(v34, v8);
  v43 = v53 ^ 1;
  return v43 & 1;
}

uint64_t sub_223B5C084(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_223BF4DAC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for DSPGraphBasicConfiguration.AUPresetOverrideConfig() + 36);
  return sub_223BF452C() & 1;
}

uint64_t sub_223B5C110(uint64_t a1, uint64_t a2)
{
  if ((sub_223BF452C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DSPGraphBasicConfiguration();
  if (*(a1 + *(v4 + 36)) != *(a2 + *(v4 + 36)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_223BF474C() & 1) == 0)
  {
    return 0;
  }

  v9 = v5[11];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if ((sub_223BF474C() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[12];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  type metadata accessor for DSPGraphBasicConfiguration.AUPresetOverrideConfig();
  swift_getWitnessTable();
  if ((sub_223BF474C() & 1) == 0)
  {
    return 0;
  }

  v15 = v5[13];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  v18 = type metadata accessor for GraphPropertyValue();
  WitnessTable = swift_getWitnessTable();
  v20 = MEMORY[0x277D84CC0];
  v21 = MEMORY[0x277D84CD0];

  return MEMORY[0x2821FB928](v16, v17, v20, v18, v21, WitnessTable);
}