uint64_t ColorResource.init(name:bundle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id sub_237F8C2C0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t ColorResource.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_237F8C374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_237F9C880;
  a2[1] = v5;
}

uint64_t sub_237F8C3E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237F8C420()
{
  v1 = *(v0 + 32);

  sub_237F8E1D4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_237F8C47C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_237F9BBE4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_237F8C5AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_237F9BBE4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237F8C6E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237F8C720()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for PreviewArguments.InhabitedSections() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = type metadata accessor for PreviewSection();
  (*(*(v1 - 8) + 8))(v6 + *(v8 + 28), v1);
  v9 = *(v6 + *(v8 + 32));

  v10 = *(v6 + v2[9]);

  v11 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void *sub_237F8C850@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t LibraryItem.init<A>(_:visible:title:category:matchingSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v7 = *(a6 + 8);
}

double static LibraryContentBuilder.buildExpression(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38D8, &qword_237F9C658);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_237F9C610;
  return result;
}

uint64_t _s21DeveloperToolsSupport21LibraryContentBuilderV10buildBlockySayAA0D4ItemVGAGd_tFZ_0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v5 = result + 32;
LABEL_3:
  v7 = *(v1 + 16);
  if (v3 != v7)
  {
    if (v3 >= v7)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v8 = *(v5 + 8 * v3);

        if (v8)
        {
          v6 = *(v8 + 16);
          if (v6)
          {
            break;
          }
        }

        ++v3;
        v9 = *(v1 + 16);
        if (v3 == v9)
        {
          goto LABEL_25;
        }

        if (v3 >= v9)
        {
          goto LABEL_29;
        }
      }

      v10 = 0;
      ++v3;
      while (v10 < v6)
      {
        if (!v2)
        {
          v11 = *(v4 + 3);
          if (((v11 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
          if (v12 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v12;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38D8, &qword_237F9C658);
          v14 = swift_allocObject();
          v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
          *(v14 + 2) = v13;
          *(v14 + 3) = v15;
          v16 = *(v4 + 3) >> 1;
          if (*(v4 + 2))
          {
            v17 = v14 + 32;
            v18 = v4 + 32;
            if (v14 != v4 || v17 >= &v18[v16])
            {
              memmove(v17, v18, v16);
            }

            *(v4 + 2) = 0;
          }

          v2 = (v15 >> 1) - v16;

          v4 = v14;
        }

        v19 = __OFSUB__(v2--, 1);
        if (v19)
        {
          goto LABEL_31;
        }

        ++v10;
        v6 = *(v8 + 16);
        if (v10 == v6)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v20 = *(v4 + 3);
  if (v20 < 2)
  {
    return v4;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v2);
  v22 = v21 - v2;
  if (!v19)
  {
    *(v4 + 2) = v22;
    return v4;
  }

LABEL_33:
  __break(1u);
  return result;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_237F8CBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237F8CC44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for _PlaygroundUnavailable(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _PlaygroundUnavailable(_WORD *result, int a2, int a3)
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

uint64_t sub_237F8CDB8(uint64_t a1, int a2)
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

uint64_t sub_237F8CDD8(uint64_t result, int a2, int a3)
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

void sub_237F8CE28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _Playground.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _Playground.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_237F8CF04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_237F8CFEC;

  return v6();
}

uint64_t sub_237F8CFEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_237F8D0E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 24);

  *(a2 + 16) = &unk_237F9C870;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_237F8D150(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237F8D55C;

  return v5();
}

uint64_t _Playground.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _Playground.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _Playground.init(_:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_237F8D2EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_237F8D334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237F8D3F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_237F8D55C;

  return sub_237F8D150(v2);
}

uint64_t sub_237F8D4A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_237F8CFEC;

  return sub_237F8CF04(a1, v5);
}

uint64_t Preview.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Preview.init<A, B>(displayName:source:traits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 16));
  v10 = *(a4 - 8);
  (*(v10 + 16))(boxed_opaque_existential_1, a3, a4);
  *(a6 + 56) = 0;
  swift_getKeyPath();
  type metadata accessor for PreviewTrait();
  sub_237F9BD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38F8, &qword_237F9C8B0);
  swift_getWitnessTable();
  sub_237F8D828();
  v11 = sub_237F9BCC4();

  (*(v10 + 8))(a3, a4);

  *(a6 + 64) = v11;
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

uint64_t sub_237F8D7D0(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;

  swift_getAtKeyPath();
}

unint64_t sub_237F8D828()
{
  result = qword_27DEE3900;
  if (!qword_27DEE3900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE38F8, &qword_237F9C8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3900);
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

uint64_t sub_237F8D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 16));
  v12 = *(a4 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a3, a4);
  *(a7 + 56) = a6;
  result = (*(v12 + 8))(a3, a4);
  *(a7 + 64) = MEMORY[0x277D84F90];
  return result;
}

uint64_t Preview.value<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237F9BE04();
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v38 = *(v3 + 64);
  v36 = a1;
  v37 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38F8, &qword_237F9C8B0);
  sub_237F8D828();
  v17 = sub_237F9BC94();

  v38 = v17;
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 56))(v14, 1, 1, AssociatedTypeWitness);
  v34 = a1;
  v35 = a2;
  v28 = a1;
  v29 = a2;
  v19 = v30;
  sub_237F9BD34();
  swift_getWitnessTable();
  v20 = v31;
  sub_237F9BCB4();
  v21 = v32;
  v22 = *(v32 + 8);
  v23 = v14;
  v24 = v20;
  v22(v23, v20);

  v25 = v16;
  (*(v21 + 16))(v19, v16, v24);
  v26 = *(v18 + 48);
  if (v26(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v29 + 24))();
    v22(v25, v24);
    result = v26(v19, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (v22)(v19, v24);
    }
  }

  else
  {
    v22(v25, v24);
    return (*(v18 + 32))(v33, v19, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_237F8DD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_237F8E41C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3910, &qword_237F9CA08);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_237F8DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a2;
  v27 = a5;
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_237F9BE04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v13, v8);
    v21 = v27;
    (*(a4 + 16))(v26, a4);
  }

  else
  {
    (*(v14 + 32))(v20, v13, AssociatedTypeWitness);
    v22 = v26;
    (*(a4 + 16))(v26, a4);
    v21 = v27;
    (*(a4 + 32))(v20, v18, v22, a4);
    v23 = *(v14 + 8);
    v23(v18, AssociatedTypeWitness);
    v23(v20, AssociatedTypeWitness);
  }

  return (*(v14 + 56))(v21, 0, 1, AssociatedTypeWitness);
}

uint64_t Preview.source.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_237F8D59C(v1 + 16, v4);
  if (v5)
  {
    sub_237F8E18C(v4);
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3908, &qword_237F9C8B8);
    a1[4] = &protocol witness table for DefaultPreviewSource<A>;
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0;
    *(result + 24) = 0x726F727245;
    *(result + 32) = 0xE500000000000000;
    *(result + 40) = 257;
    *(result + 48) = sub_237F8E1BC;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 81) = 0u;
  }

  else
  {
    sub_237F8E244(v4, v6);
    return sub_237F8E244(v6, a1);
  }

  return result;
}

uint64_t sub_237F8E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }

  else if (!a7)
  {
  }

  return result;
}

uint64_t sub_237F8E244(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_237F8E28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237F8E2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237F8E348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237F8E384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_237F8E3D0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_237F8E41C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237F8E480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + *(a2 + 28));
  v7 = *(a2 + 16);
  v8 = type metadata accessor for PreviewSection();
  if (sub_237F9BD04() >= a1)
  {
    if (a1)
    {
      result = a1 - 1;
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
        return result;
      }

      sub_237F9BD54();
      v13 = *(v8 - 8);
    }

    else
    {
      v13 = *(v8 - 8);
      (*(v13 + 16))(a3, v3, v8);
    }

    v9 = *(v13 + 56);
    v10 = a3;
    v11 = 0;
  }

  else
  {
    v9 = *(*(v8 - 8) + 56);
    v10 = a3;
    v11 = 1;
  }

  return v9(v10, v11, 1, v8);
}

uint64_t sub_237F8E5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PreviewSection();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PreviewArguments.InhabitedSections();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_237F8E634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PreviewArguments.InhabitedSections();
  v7 = sub_237F9BE04();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v30 - v9;
  v33 = a2;
  v10 = type metadata accessor for PreviewSection();
  v11 = sub_237F9BE04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  v17 = *(v10 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v31 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - v21;
  v23 = *(v6 - 8);
  v24 = *(v23 + 56);
  v39 = a3;
  v35 = v24;
  v36 = v6;
  v34 = v23 + 56;
  v24(a3, 1, 1, v6);
  *&v42 = a1;
  sub_237F9BD34();
  swift_getWitnessTable();
  sub_237F9BD94();
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    (*(v12 + 8))(v16, v11);

    v25 = v39;
    (*(v37 + 8))(v39, v38);
    return v35(v25, 1, 1, v36);
  }

  else
  {
    (*(v17 + 32))(v22, v16, v10);
    v27 = v31;
    (*(v17 + 16))(v31, v22, v10);
    *&v40 = a1;
    sub_237F9BDA4();
    v40 = v42;
    v41 = v43;
    sub_237F9BE24();
    swift_getWitnessTable();
    v28 = sub_237F9BD44();
    (*(v17 + 8))(v22, v10);
    v29 = v32;
    sub_237F8E5AC(v27, v28, v32);
    v35(v29, 0, 1, v36);
    return (*(v37 + 40))(v39, v29, v38);
  }
}

uint64_t PreviewSection.init(_:arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PreviewSection();
  v11 = sub_237F9BE04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  v17 = a3(v14);
  sub_237F8EC10(a1, a2, v17, a4, v16);
  v18 = *(v10 - 8);
  if ((*(v18 + 48))(v16, 1, v10))
  {
    (*(v12 + 8))(v16, v11);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a5, v16, v10);
    v19 = 0;
  }

  return (*(v18 + 56))(a5, v19, 1, v10);
}

uint64_t sub_237F8EC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  v30 = a5;
  v7 = sub_237F9BE04();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PreviewSection();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v29 = a3;
  *&v33 = a3;
  sub_237F9BD34();
  swift_getWitnessTable();
  sub_237F9BD94();
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {

    (*(v25 + 8))(v11, v26);

    return (*(v17 + 56))(v30, 1, 1, v16);
  }

  else
  {
    (*(v12 + 32))(v15, v11, a4);
    v22 = v28;
    *v20 = v27;
    *(v20 + 1) = v22;
    (*(v12 + 16))(&v20[*(v16 + 28)], v15, a4);
    *&v31 = v29;
    sub_237F9BDA4();
    v31 = v33;
    v32 = v34;
    sub_237F9BE24();
    swift_getWitnessTable();
    v23 = sub_237F9BD44();
    (*(v12 + 8))(v15, a4);
    *&v20[*(v16 + 32)] = v23;
    v24 = v30;
    (*(v17 + 16))(v30, v20, v16);
    (*(v17 + 56))(v24, 0, 1, v16);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_237F8EFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(a2 + 32));
  v8 = *(a2 + 16);
  if (sub_237F9BD04() >= a1)
  {
    if (a1)
    {
      result = a1 - 1;
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
        return result;
      }

      sub_237F9BD54();
      v13 = *(v8 - 8);
    }

    else
    {
      v13 = *(v8 - 8);
      (*(v13 + 16))(a3, v3 + *(a2 + 28), v8);
    }

    v9 = *(v13 + 56);
    v10 = a3;
    v11 = 0;
  }

  else
  {
    v9 = *(*(v8 - 8) + 56);
    v10 = a3;
    v11 = 1;
  }

  return v9(v10, v11, 1, v8);
}

uint64_t _s21DeveloperToolsSupport23PreviewArgumentsBuilderV15buildExpressionyAC9ComponentVyx_GxFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for PreviewArgumentsBuilder.Component.Item();
  sub_237F9BF04();
  v7 = *(*(v6 - 8) + 72);
  v8 = *(*(v6 - 8) + 80);
  swift_allocObject();
  v9 = sub_237F9BCE4();
  (*(*(a2 - 8) + 16))(v10, a1, a2);
  swift_storeEnumTagMultiPayload();
  result = sub_237F9BD34();
  *a3 = v9;
  return result;
}

uint64_t sub_237F8F1F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PreviewArgumentsBuilder.Component.Item();
  sub_237F9BF04();
  v5 = *(*(v4 - 8) + 72);
  v6 = *(*(v4 - 8) + 80);
  swift_allocObject();
  v7 = sub_237F9BCE4();
  v9 = v8;
  v10 = type metadata accessor for PreviewSection();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  swift_storeEnumTagMultiPayload();
  result = sub_237F9BD34();
  *a2 = v7;
  return result;
}

uint64_t _s21DeveloperToolsSupport23PreviewArgumentsBuilderV10buildArrayyAC9ComponentVyx_GSayAGGFZ_0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for PreviewArgumentsBuilder.Component();
  sub_237F9BD34();
  type metadata accessor for PreviewArgumentsBuilder.Component.Item();
  sub_237F9BD34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v2 = sub_237F9BCC4();

  *a1 = v2;
  return result;
}

uint64_t sub_237F8F410(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t static PreviewArgumentsBuilder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X1>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v7 = type metadata accessor for PreviewArgumentsBuilder.Component();
  sub_237F8F548(sub_237F8F51C, v10, a2, v7, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v8);
  _s21DeveloperToolsSupport23PreviewArgumentsBuilderV10buildArrayyAC9ComponentVyx_GSayAGGFZ_0(a4);
}

uint64_t sub_237F8F548(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_237F9BE04();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_237F9BC84();
  v70 = sub_237F9BE74();
  v65 = sub_237F9BE84();
  sub_237F9BE54();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_237F9BC74();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_237F9BE14();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_237F9BE64();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_237F9BE14();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_237F9BE64();
      sub_237F9BE14();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t static PreviewArgumentsBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v6[2] = a1;
  type metadata accessor for PreviewSection();
  sub_237F9BE04();
  v3 = type metadata accessor for PreviewArgumentsBuilder.Component();
  sub_237F8FD3C(sub_237F8FD10, v6, MEMORY[0x277D84A98], v3, v4, &v7);
  result = v7;
  if (!v7)
  {
    type metadata accessor for PreviewArgumentsBuilder.Component.Item();
    result = sub_237F9BCF4();
  }

  *a2 = result;
  return result;
}

uint64_t sub_237F8FD3C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t static PreviewArgumentsBuilder.buildOptional(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for PreviewArgumentsBuilder.Component.Item();
    v4 = sub_237F9BCF4();
  }

  *a2 = v4;
}

uint64_t static PreviewArgumentsBuilder.buildFinalResult(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for PreviewSection();
  v6 = sub_237F9BE04();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = *a1;

  v30 = sub_237F9BCF4();
  v28 = v18;
  v27 = sub_237F9BCF4();
  v25 = a2;
  v26 = &v30;
  type metadata accessor for PreviewArgumentsBuilder.Component.Item();
  sub_237F9BD34();
  sub_237F9BD34();
  swift_getWitnessTable();
  sub_237F9BCA4();

  v19 = v30;

  sub_237F8EC10(0, 0, v19, a2, v10);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v22 + 8))(v10, v23);
  }

  else
  {
    (*(v11 + 32))(v17, v10, v5);
    (*(v11 + 16))(v15, v17, v5);
    sub_237F9BD14();
    (*(v11 + 8))(v17, v5);
  }

  sub_237F8E634(v29, a2, v24);
}

uint64_t sub_237F90354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v5 = type metadata accessor for PreviewSection();
  v6 = sub_237F9BE04();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v42 = *(v5 - 8);
  v11 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v38 = &v38 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - v24;
  v26 = type metadata accessor for PreviewArgumentsBuilder.Component.Item();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v38 - v28;
  (*(v30 + 16))(&v38 - v28, v44, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v42;
    v32 = *(v42 + 32);
    v32(v18, v29, v5);
    v33 = *v45;

    sub_237F8EC10(0, 0, v33, a4, v10);
    if ((*(v31 + 48))(v10, 1, v5) == 1)
    {
      (*(v39 + 8))(v10, v40);
      (*(v31 + 16))(v41, v18, v5);
    }

    else
    {
      v35 = v38;
      v32(v38, v10, v5);
      v36 = *(v31 + 16);
      v37 = v41;
      v36(v41, v35, v5);
      sub_237F9BD34();
      sub_237F9BD14();
      (*(v31 + 8))(v35, v5);
      v36(v37, v18, v5);
    }

    sub_237F9BD34();
    sub_237F9BD14();
    sub_237F9BD34();
    sub_237F9BD24();
    return (*(v31 + 8))(v18, v5);
  }

  else
  {
    (*(v19 + 32))(v25, v29, a4);
    (*(v19 + 16))(v23, v25, a4);
    sub_237F9BD34();
    sub_237F9BD14();
    return (*(v19 + 8))(v25, a4);
  }
}

uint64_t static PreviewSectionArgumentsBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_237F90A9C(a2, a2);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = *(a2 - 8);
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  swift_allocObject();
  v10 = sub_237F9BCE4();
  (*(v7 + 16))(v11, a1, a2);
  sub_237F9BD34();
  return v10;
}

uint64_t static PreviewSectionArgumentsBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_237F9BD44();
}

uint64_t static PreviewSectionArgumentsBuilder.buildArray(_:)()
{
  sub_237F9BD34();
  sub_237F9BD34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_237F9BCC4();
}

uint64_t sub_237F90A9C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3CA0, &qword_237F9CB80);
  }

  else
  {

    return sub_237F9BF04();
  }
}

uint64_t sub_237F90B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for PreviewArguments.InhabitedSections();
  result = sub_237F9BE04();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237F90BAC(_DWORD *a1, unsigned int a2, uint64_t a3)
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
  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  v12 = v10 + 2;
  if ((v9 & 0xFFFFFFF8) != 0)
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 < 0x7FFFFFFF)
    {
      v20 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v19 = v20 + 1;
    }

    else
    {
      v19 = (*(v4 + 48))(v18);
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + v9);
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_23:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return (v11 | v17) + v7;
}

unsigned int *sub_237F90D34(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = v7 - 1;
  v9 = *(v5 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 - 1 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = a3 - v7 + 2;
    if (((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
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

    if (v8 >= a2)
    {
LABEL_16:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *(result + v11) = 0;
      }

      else if (v14)
      {
        *(result + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      result = ((result + v9 + 16) & ~v9);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((result + v10) & 0xFFFFFFFFFFFFFFF8);
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v21 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v21 = a2;
        }

        *v20 = v21;
      }

      else
      {
        v18 = *(v5 + 56);
        v19 = a2 + 1;

        return v18(result, v19);
      }

      return result;
    }
  }

  v15 = a2 - v7;
  if (((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 1;
  }

  if (((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = result;
    bzero(result, ((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v15;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v11) = v16;
    }

    else
    {
      *(result + v11) = v16;
    }
  }

  else if (v14)
  {
    *(result + v11) = v16;
  }

  return result;
}

void sub_237F90F64(uint64_t a1)
{
  sub_237F9133C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_237F9BD34();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237F91008(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    v18 = (a1 + v6 + 16) & ~v6;
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

_BYTE *sub_237F91160(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      result = (&result[v8 + 16] & ~v8);
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

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
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

void sub_237F9133C()
{
  if (!qword_27DEE3A18[0])
  {
    v0 = sub_237F9BE04();
    if (!v1)
    {
      atomic_store(v0, qword_27DEE3A18);
    }
  }
}

uint64_t sub_237F913A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237F913F8(uint64_t *a1, int a2)
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

uint64_t sub_237F91440(uint64_t result, int a2, int a3)
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

uint64_t sub_237F91494(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for PreviewSection();
  if (v3 <= 0x3F)
  {
    result = sub_237F9BD34();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237F91520(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    v18 = (a1 + v6 + 16) & ~v6;
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

_BYTE *sub_237F91680(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      result = (&result[v8 + 16] & ~v8);
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

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

uint64_t sub_237F91864(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for PreviewSection();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237F918E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_237F91A3C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void static PreviewMacroBodyBuilder.buildBlock(_:)()
{
  sub_237F9BEA4();
  __break(1u);
}

{
  sub_237F9BEA4();
  __break(1u);
}

uint64_t previewImage(category:description:file:line:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  if (sub_237F96240())
  {
    if (qword_27DEE38D0 != -1)
    {
      swift_once();
    }

    v11 = v8;

    v9 = sub_237F92138(&v11, a7);

    return v9;
  }

  else
  {
    result = sub_237F9BEA4();
    __break(1u);
  }

  return result;
}

uint64_t sub_237F92138(char *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - v7;
  v8 = sub_237F9BBE4();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v20 = type metadata accessor for PreviewImageProvider.State.Entry();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v60 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v65 = (&v59 - v26);
  MEMORY[0x28223BE20](v25);
  v28 = (&v59 - v27);
  v29 = *a1;
  v72[0] = *a1;
  v64 = a2;
  v30 = sub_237F968C0(v72);
  v32 = v31;
  sub_237F9BBD4();
  v61 = v2;
  v33 = *(v2 + 2);
  v69 = v30;
  v70 = v32;
  v71 = v11;

  os_unfair_lock_lock((v33 + 24));
  sub_237F9785C((v33 + 16), v19);
  os_unfair_lock_unlock((v33 + 24));

  v34 = v20;

  (*(v67 + 1))(v11, v68);
  v68 = v21;
  v35 = *(v21 + 48);
  if (v35(v19, 1, v20) != 1)
  {
    v56 = v19;
LABEL_8:
    sub_237F97070(v56, v28);
    v57 = *v28;
    sub_237F970D4(v28);
    return v57;
  }

  sub_237F97130(v19, &qword_27DEE3DD8, &qword_237F9CDD0);
  v72[0] = v29;
  v36 = v64;
  v37 = sub_237F968C0(v72);
  v39 = v38;
  v72[0] = v29;
  v40 = sub_237F96CB0(v72, v36);
  if (v40)
  {
    v41 = v40;
    v64 = v37;
    v42 = *(v61 + 2);

    os_unfair_lock_lock((v42 + 24));
    v43 = sub_237F9BB64();
    v44 = *(v43 - 8);
    v59 = v39;
    v45 = *(v44 + 56);
    v67 = v35;
    v46 = v63;
    v45(v63, 1, 1, v43);
    v47 = v60;
    v48 = v60 + *(v20 + 24);
    sub_237F9BBD4();
    v49 = *(v20 + 20);
    v45(v47 + v49, 1, 1, v43);
    *v47 = v41;
    v61 = v41;
    sub_237F97190(v46, v47 + v49);
    v50 = v66;
    sub_237F97070(v47, v66);
    v51 = *(v42 + 16);
    v52 = v62;
    sub_237F97200(v50, v62);
    v53 = *(v68 + 56);
    v53(v52, 0, 1, v20);
    swift_beginAccess();
    v54 = v59;

    v55 = v52;
    v35 = v67;
    sub_237F94910(v55, v64, v54);
    swift_endAccess();
    v34 = v20;
    sub_237F934FC();
    v53(v50, 0, 1, v20);
    os_unfair_lock_unlock((v42 + 24));
  }

  else
  {
    v50 = v66;
    (*(v68 + 56))(v66, 1, 1, v20);
  }

  if (v35(v50, 1, v34) != 1)
  {
    v56 = v50;
    v28 = v65;
    goto LABEL_8;
  }

  sub_237F97130(v50, &qword_27DEE3DD8, &qword_237F9CDD0);
  result = sub_237F9BEA4();
  __break(1u);
  return result;
}

uint64_t previewImage(category:description:file:line:)@<X0>(char *a1@<X0>, unsigned int (*a2)(void, void, void)@<X6>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (sub_237F96240())
  {
    if (qword_27DEE38D0 != -1)
    {
      swift_once();
    }

    v7 = v5;

    sub_237F92818(&v7, a2, a3);
  }

  else
  {
    result = sub_237F9BEA4();
    __break(1u);
  }

  return result;
}

uint64_t sub_237F92818@<X0>(char *a1@<X0>, unsigned int (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v106 = a3;
  v112[3] = *MEMORY[0x277D85DE8];
  v6 = sub_237F9BB64();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = v107[8];
  v8 = MEMORY[0x28223BE20](v6);
  v92 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v101 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v97 = v91 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v94 = v91 - v18;
  MEMORY[0x28223BE20](v17);
  v98 = v91 - v19;
  v20 = sub_237F9BBE4();
  v103 = *(v20 - 8);
  v104 = v20;
  v21 = *(v103 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v96 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v100 = v91 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v91 - v30;
  v32 = type metadata accessor for PreviewImageProvider.State.Entry();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v95 = (v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v99 = v91 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = v91 - v39;
  v41 = *a1;
  LOBYTE(v112[0]) = *a1;
  v105 = a2;
  v42 = sub_237F968C0(v112);
  v44 = v43;
  sub_237F9BBD4();
  v102 = v3;
  v45 = *(v3 + 16);
  v109 = v42;
  v110 = v44;
  v111 = v23;

  os_unfair_lock_lock((v45 + 24));
  sub_237F969D8((v45 + 16), v31);
  v46 = v32;
  os_unfair_lock_unlock((v45 + 24));

  (*(v103 + 8))(v23, v104);
  v104 = v33;
  v47 = *(v33 + 48);
  if (v47(v31, 1, v46) == 1)
  {
    v48 = v108;
    sub_237F97130(v31, &qword_27DEE3DD8, &qword_237F9CDD0);
    LOBYTE(v112[0]) = v41;
    v49 = v105;
    v103 = sub_237F968C0(v112);
    v51 = v50;
    LOBYTE(v112[0]) = v41;
    v52 = sub_237F96CB0(v112, v49);
    if (v52)
    {
      v53 = v52;
      v91[1] = v33 + 48;
      v105 = v47;
      v98 = v46;
      v54 = *(v102 + 16);

      os_unfair_lock_lock((v55 + 24));
      v56 = [objc_opt_self() defaultManager];
      v112[0] = 0;
      v57 = [v56 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v112];

      v58 = v112[0];
      v94 = v51;
      if (v57)
      {
        v59 = v92;
        sub_237F9BB54();
        v60 = v58;

        v61 = v93;
        sub_237F9BB44();
        (v107[1])(v59, v48);
        v69 = sub_237F9471C();
        v71 = v70;
        sub_237F9BB84();
        v88 = v107;
        v89 = v97;
        (v107[4])(v97, v61, v48);
        sub_237F97264(v69, v71);
        v90 = 0;
      }

      else
      {
        v67 = v112[0];
        v68 = sub_237F9BB24();

        swift_willThrow();
        v90 = 1;
        v88 = v107;
        v89 = v97;
      }

      v72 = v88[7];
      v72(v89, v90, 1, v48);
      v73 = v98;
      v74 = v48;
      v75 = v95;
      v76 = v95 + *(v98 + 24);
      sub_237F9BBD4();
      v77 = *(v73 + 20);
      v72(v75 + v77, 1, 1, v74);
      *v75 = v53;
      v107 = v53;
      sub_237F97190(v89, v75 + v77);
      v66 = v100;
      sub_237F97070(v75, v100);
      v78 = *(v55 + 16);
      v79 = v96;
      sub_237F97200(v66, v96);
      v80 = *(v104 + 56);
      v80(v79, 0, 1, v73);
      swift_beginAccess();
      v81 = v94;

      sub_237F94910(v79, v103, v81);
      swift_endAccess();
      sub_237F934FC();
      v46 = v73;
      v80(v66, 0, 1, v73);
      os_unfair_lock_unlock((v55 + 24));

      v47 = v105;
    }

    else
    {
      v66 = v100;
      (*(v104 + 56))(v100, 1, 1, v46);

      v88 = v107;
    }

    if (v47(v66, 1, v46) == 1)
    {
      v84 = &qword_27DEE3DD8;
      v85 = &qword_237F9CDD0;
    }

    else
    {
      v82 = v99;
      sub_237F97070(v66, v99);
      v83 = *(v46 + 20);
      v84 = &qword_27DEE3DB0;
      v85 = &qword_237F9CD18;
      v63 = v101;
      sub_237F977E0(v82 + v83, v101, &qword_27DEE3DB0, &qword_237F9CD18);
      sub_237F970D4(v82);
      v64 = v108;
      if ((v88[6])(v63, 1, v108) != 1)
      {
        goto LABEL_13;
      }

      v100 = v63;
    }

    sub_237F97130(v100, v84, v85);
  }

  else
  {
    v62 = v105;
    sub_237F97070(v31, v40);
    v63 = v98;
    sub_237F977E0(&v40[*(v46 + 20)], v98, &qword_27DEE3DB0, &qword_237F9CD18);
    v88 = v107;
    v64 = v108;
    v65 = v107[6];
    if (v65(v63, 1, v108) != 1 || (sub_237F97130(v63, &qword_27DEE3DB0, &qword_237F9CD18), LOBYTE(v112[0]) = v41, v63 = v94, sub_237F93A38(v112, v62, v94), v65(v63, 1, v64) != 1))
    {
      sub_237F970D4(v40);
LABEL_13:
      result = (v88[4])(v106, v63, v64);
      v87 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_237F97130(v63, &qword_27DEE3DB0, &qword_237F9CD18);
  }

  result = sub_237F9BEA4();
  __break(1u);
  return result;
}

uint64_t sub_237F93254()
{
  v1 = *v0;
  sub_237F9BF74();
  sub_237F9BC54();

  return sub_237F9BFA4();
}

uint64_t sub_237F932D0()
{
  *v0;
  sub_237F9BC54();
}

uint64_t sub_237F93338()
{
  v1 = *v0;
  sub_237F9BF74();
  sub_237F9BC54();

  return sub_237F9BFA4();
}

uint64_t sub_237F933B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_237F9BEE4();

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

void sub_237F93410(uint64_t *a1@<X8>)
{
  v2 = 0x726174617661;
  if (*v1)
  {
    v2 = 0x6F746F6870;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_237F93448(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F746F6870;
  }

  else
  {
    v4 = 0x726174617661;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6F746F6870;
  }

  else
  {
    v6 = 0x726174617661;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_237F9BF14();
  }

  return v9 & 1;
}

void sub_237F934FC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (*(*(v0 + 16) + 16))
  {
    if (v1)
    {
      return;
    }

    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_237F9739C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_237F936D0;
    aBlock[3] = &block_descriptor;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:180.0];
    _Block_release(v4);
    v6 = *(v0 + 40);
    *(v0 + 40) = v5;
  }

  else
  {
    if (v1)
    {
      [v1 invalidate];
      v6 = *(v0 + 40);
    }

    else
    {
      v6 = 0;
    }

    *(v0 + 40) = 0;
  }
}

uint64_t sub_237F93658()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 24);
    v1 = *(result + 32);

    v2(v3);
  }

  return result;
}

void sub_237F936D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_237F93738()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_237F93780()
{
  type metadata accessor for PreviewImageProvider();
  swift_allocObject();
  result = sub_237F937C0();
  qword_27DEE3DA8 = result;
  return result;
}

uint64_t sub_237F937C0()
{
  type metadata accessor for PreviewImageProvider.State();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v1[2] = sub_237F966EC(MEMORY[0x277D84F90]);
  v1[5] = 0;
  v3 = sub_237F966EC(v2);
  swift_beginAccess();
  v4 = v1[2];
  v1[2] = v3;

  v5 = v1[5];
  v1[5] = 0;

  v1[3] = nullsub_1;
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DF0, &qword_237F9CDE8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = (v6 + 24);
  *(v6 + 16) = v1;
  v8 = (v6 + 16);
  *(v0 + 16) = v6;

  os_unfair_lock_lock(v7);
  sub_237F97440(v8);
  os_unfair_lock_unlock(v7);

  return v0;
}

uint64_t sub_237F938D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = *(v1 + 32);
  *(v1 + 24) = sub_237F9745C;
  *(v1 + 32) = v2;
}

uint64_t sub_237F9394C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_237F939A4();
  }

  return result;
}

uint64_t sub_237F939A4()
{
  v1 = *v0;
  v2 = v0[2];

  os_unfair_lock_lock((v2 + 24));
  sub_237F9431C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_237F93A38@<X0>(char *a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v103 = a3;
  v107[3] = *MEMORY[0x277D85DE8];
  v94 = *v4;
  v7 = sub_237F9BB64();
  v8 = *(v7 - 8);
  v99 = v7;
  v100 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v87 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v87 - v15;
  v101 = sub_237F9BBE4();
  v16 = *(v101 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v101);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v98 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v87 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v97 = &v87 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  v30 = type metadata accessor for PreviewImageProvider.State.Entry();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v89 = (&v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v93 = &v87 - v35;
  v36 = *a1;
  LOBYTE(v107[0]) = *a1;
  v95 = a2;
  v37 = sub_237F968C0(v107);
  v39 = v38;
  sub_237F9BBD4();
  v102 = v4;
  v40 = v4[2];
  v92 = v37;
  v104 = v37;
  v105 = v39;
  v106 = v19;

  os_unfair_lock_lock((v40 + 24));
  sub_237F9785C((v40 + 16), v29);
  os_unfair_lock_unlock((v40 + 24));

  (*(v16 + 8))(v19, v101);
  v96 = v31;
  v41 = *(v31 + 48);
  v101 = v30;
  if (v41(v29, 1, v30) != 1)
  {
    v57 = v93;
    v58 = sub_237F97070(v29, v93);
    v59 = *(v102 + 16);
    MEMORY[0x28223BE20](v58);
    v60 = v92;
    *(&v87 - 4) = v57;
    *(&v87 - 3) = v60;
    v61 = v94;
    *(&v87 - 2) = v39;
    *(&v87 - 1) = v61;

    os_unfair_lock_lock((v59 + 24));
    sub_237F97328((v59 + 16), v103);
    os_unfair_lock_unlock((v59 + 24));

    v62 = v57;
LABEL_12:
    result = sub_237F970D4(v62);
    goto LABEL_13;
  }

  v42 = v102;

  sub_237F97130(v29, &qword_27DEE3DD8, &qword_237F9CDD0);
  LOBYTE(v107[0]) = v36;
  v43 = v95;
  v44 = sub_237F968C0(v107);
  v46 = v45;
  LOBYTE(v107[0]) = v36;
  v47 = sub_237F96CB0(v107, v43);
  if (v47)
  {
    v48 = v47;
    v95 = v41;
    v49 = *(v42 + 16);

    os_unfair_lock_lock((v102 + 24));
    v50 = [objc_opt_self() defaultManager];
    v107[0] = 0;
    v51 = [v50 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v107];

    v52 = v107[0];
    v53 = v99;
    v93 = v46;
    v94 = v44;
    if (v51)
    {
      v54 = v87;
      sub_237F9BB54();
      v55 = v52;

      v56 = v88;
      sub_237F9BB44();
      (*(v100 + 8))(v54, v53);
      v67 = sub_237F9471C();
      v69 = v68;
      sub_237F9BB84();
      v85 = v91;
      (*(v100 + 32))(v91, v56, v53);
      sub_237F97264(v67, v69);
      v86 = 0;
    }

    else
    {
      v65 = v107[0];
      v66 = sub_237F9BB24();

      swift_willThrow();
      v86 = 1;
      v85 = v91;
    }

    v70 = *(v100 + 56);
    v70(v85, v86, 1, v53);
    v64 = v101;
    v71 = v89;
    v72 = v89 + *(v101 + 24);
    sub_237F9BBD4();
    v73 = *(v64 + 20);
    v70(v71 + v73, 1, 1, v53);
    *v71 = v48;
    v92 = v48;
    sub_237F97190(v85, v71 + v73);
    v74 = v71;
    v63 = v97;
    sub_237F97070(v74, v97);
    v75 = v102;
    v76 = *(v102 + 16);
    v77 = v90;
    sub_237F97200(v63, v90);
    v78 = *(v96 + 56);
    v78(v77, 0, 1, v64);
    swift_beginAccess();
    v79 = v93;

    sub_237F94910(v77, v94, v79);
    swift_endAccess();
    sub_237F934FC();
    v78(v63, 0, 1, v64);
    os_unfair_lock_unlock(v75 + 6);

    v41 = v95;
  }

  else
  {
    v63 = v97;
    v64 = v101;
    (*(v96 + 56))(v97, 1, 1, v101);
  }

  v80 = v98;
  sub_237F972B8(v63, v98);
  v81 = v41(v80, 1, v64);
  v82 = v103;
  if (v81 != 1)
  {
    sub_237F977E0(v80 + *(v64 + 20), v103, &qword_27DEE3DB0, &qword_237F9CD18);
    v62 = v80;
    goto LABEL_12;
  }

  sub_237F97130(v80, &qword_27DEE3DD8, &qword_237F9CDD0);
  result = (*(v100 + 56))(v82, 1, 1, v99);
LABEL_13:
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237F9431C(uint64_t *a1)
{
  v2 = sub_237F9BBE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-v6];
  sub_237F9BBC4();
  sub_237F9BB94();
  v8 = *a1;
  swift_beginAccess();
  v9 = *(v8 + 16);
  v15 = v7;

  v11 = sub_237F97660(v10, sub_237F97464);

  v12 = *(v8 + 16);
  *(v8 + 16) = v11;

  sub_237F934FC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_237F94498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24[-v6];
  v8 = sub_237F9BB64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for PreviewImageProvider.State.Entry();
  v14 = *(v13 + 24);
  v15 = sub_237F9BBA4();
  if ((v15 & 1) == 0)
  {
    sub_237F977E0(a3 + *(v13 + 20), v7, &qword_27DEE3DB0, &qword_237F9CD18);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_237F97130(v7, &qword_27DEE3DB0, &qword_237F9CD18);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v16 = [objc_opt_self() defaultManager];
      v17 = sub_237F9BB34();
      v25[0] = 0;
      v18 = [v16 removeItemAtURL:v17 error:v25];

      if (v18)
      {
        v19 = v25[0];
      }

      else
      {
        v20 = v25[0];
        v21 = sub_237F9BB24();

        swift_willThrow();
      }

      (*(v9 + 8))(v12, v8);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

__CFData *sub_237F9471C()
{
  v1 = v0;
  v2 = sub_237F9BC24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_237F9BC14();
  sub_237F9BC04();
  (*(v3 + 8))(v6, v2);
  v8 = sub_237F9BC44();

  v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

  if (!v9)
  {
    sub_237F97348();
    swift_allocError();
    swift_willThrow();
    v9 = v7;
LABEL_6:

    return v7;
  }

  CGImageDestinationAddImage(v9, v1, 0);
  if (!CGImageDestinationFinalize(v9))
  {
    sub_237F97348();
    swift_allocError();
    swift_willThrow();

    goto LABEL_6;
  }

  v10 = v7;
  v7 = sub_237F9BB74();

  return v7;
}

uint64_t sub_237F94910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PreviewImageProvider.State.Entry();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_237F97130(a1, &qword_27DEE3DD8, &qword_237F9CDD0);
    sub_237F95AD0(a2, a3, v10);

    return sub_237F97130(v10, &qword_27DEE3DD8, &qword_237F9CDD0);
  }

  else
  {
    sub_237F97070(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_237F95E14(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_237F94AD0@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v48 = a1;
  v55 = a5;
  v56[3] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v48 - v11;
  v12 = sub_237F9BB64();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = *a2;
  v24 = [objc_opt_self() defaultManager];
  v56[0] = 0;
  v25 = [v24 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v56];

  v26 = v56[0];
  v54 = v13;
  if (!v25)
  {
    v32 = v56[0];
    v33 = sub_237F9BB24();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_237F9BB54();
  v27 = v26;

  sub_237F9BB44();
  v28 = *(v13 + 8);
  v28(v17, v12);
  v29 = v51;
  v30 = sub_237F9471C();
  if (v29)
  {

    v28(v20, v12);
LABEL_6:
    result = (*(v54 + 56))(v55, 1, 1, v12);
    goto LABEL_7;
  }

  v34 = v30;
  v35 = v31;
  sub_237F9BB84();
  sub_237F97264(v34, v35);
  v37 = v54;
  v38 = *(v54 + 32);
  v38(v22, v20, v12);
  v39 = v55;
  v38(v55, v22, v12);
  v40 = v49;
  v51 = *v48;
  (*(v37 + 16))(v49, v39, v12);
  v41 = *(v37 + 56);
  v41(v40, 0, 1, v12);
  v42 = type metadata accessor for PreviewImageProvider.State.Entry();
  v43 = *(v42 + 24);

  v44 = v23;
  v45 = v50;
  sub_237F9BBD4();
  v46 = *(v42 + 20);
  v41(v45 + v46, 1, 1, v12);
  *v45 = v44;
  sub_237F97190(v40, v45 + v46);
  (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
  swift_beginAccess();
  sub_237F94910(v45, v52, v53);
  swift_endAccess();
  sub_237F934FC();
  result = (v41)(v55, 0, 1, v12);
LABEL_7:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237F94F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for PreviewImageProvider.State.Entry();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = *a1;
  swift_beginAccess();
  v21 = *(v20 + 16);
  if (*(v21 + 16) && (v22 = sub_237F952C4(a2, a3), (v23 & 1) != 0))
  {
    v31 = a2;
    sub_237F97200(*(v21 + 56) + v13[9] * v22, v17);
    sub_237F97070(v17, v19);
    swift_endAccess();
    v24 = *(v12 + 24);
    v25 = v32;
    if (sub_237F9BBB4())
    {
      v26 = sub_237F9BBE4();
      (*(*(v26 - 8) + 24))(&v19[v24], v25, v26);
      sub_237F97200(v19, v11);
      v27 = v13[7];
      v27(v11, 0, 1, v12);
      swift_beginAccess();

      sub_237F94910(v11, v31, a3);
      swift_endAccess();
      sub_237F934FC();
      v28 = v33;
      sub_237F97200(v19, v33);
      v27(v28, 0, 1, v12);
    }

    else
    {
      v30 = v33;
      sub_237F97200(v19, v33);
      (v13[7])(v30, 0, 1, v12);
    }

    return sub_237F970D4(v19);
  }

  else
  {
    swift_endAccess();
    return (v13[7])(v33, 1, 1, v12);
  }
}

uint64_t sub_237F9528C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_237F952C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_237F9BF74();
  sub_237F9BC54();
  v6 = sub_237F9BFA4();

  return sub_237F9533C(a1, a2, v6);
}

unint64_t sub_237F9533C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_237F9BF14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_237F953F4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewImageProvider.State.Entry();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
  v44 = a2;
  result = sub_237F9BEC4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_237F97070(v31, v45);
      }

      else
      {
        sub_237F97200(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_237F9BF74();
      sub_237F9BC54();
      result = sub_237F9BFA4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_237F97070(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_237F95730(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_237F9746C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_237F957C0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PreviewImageProvider.State.Entry();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
  result = sub_237F9BED4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_237F97200(v23 + v45 * v22, v42);
    sub_237F97070(v27, v18);
    v28 = *(v14 + 40);
    sub_237F9BF74();

    sub_237F9BC54();
    result = sub_237F9BFA4();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_237F97070(v18, *(v14 + 56) + v32 * v45);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237F95AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_237F952C4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_237F96010();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for PreviewImageProvider.State.Entry();
    v22 = *(v15 - 8);
    sub_237F97070(v14 + *(v22 + 72) * v9, a3);
    sub_237F95C28(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PreviewImageProvider.State.Entry();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_237F95C28(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_237F9BE34() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_237F9BF74();

      sub_237F9BC54();
      v13 = sub_237F9BFA4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for PreviewImageProvider.State.Entry() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_237F95E14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_237F952C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_237F96010();
      goto LABEL_7;
    }

    sub_237F953F4(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_237F952C4(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_237F9BF24();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PreviewImageProvider.State.Entry() - 8) + 72) * v12;

    return sub_237F973BC(a1, v20);
  }

LABEL_13:
  sub_237F95F78(v12, a2, a3, a1, v18);
}

uint64_t sub_237F95F78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PreviewImageProvider.State.Entry();
  result = sub_237F97070(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_237F96010()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewImageProvider.State.Entry();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
  v5 = *v0;
  v6 = sub_237F9BEB4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_237F97200(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_237F97070(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_237F96240()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_237F9BC34();
  if (*(v2 + 16) && (v3 = sub_237F952C4(0xD00000000000001ALL, 0x8000000237F9DE10), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 49 && v6 == 0xE100000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_237F9BF14();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for PreviewImageProvider.State.Entry()
{
  result = qword_27DEE3DB8;
  if (!qword_27DEE3DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237F9643C()
{
  type metadata accessor for CGImage(319);
  if (v0 <= 0x3F)
  {
    sub_237F964D8();
    if (v1 <= 0x3F)
    {
      sub_237F9BBE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237F964D8()
{
  if (!qword_27DEE3DC8)
  {
    sub_237F9BB64();
    v0 = sub_237F9BE04();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEE3DC8);
    }
  }
}

uint64_t sub_237F96530(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssistiveAccessTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237F96698()
{
  result = qword_27DEE3DD0;
  if (!qword_27DEE3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3DD0);
  }

  return result;
}

unint64_t sub_237F966EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DF8, &unk_237F9CDF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
    v8 = sub_237F9BED4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_237F977E0(v10, v6, &qword_27DEE3DF8, &unk_237F9CDF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_237F952C4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for PreviewImageProvider.State.Entry();
      result = sub_237F97070(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_237F968C0(char *a1)
{
  v1 = *a1;
  sub_237F9BE44();
  MEMORY[0x2383E3DF0](0x4977656976657250, 0xED00005F6567616DLL);
  sub_237F9BE94();
  MEMORY[0x2383E3DF0](95, 0xE100000000000000);
  v2 = sub_237F9BEF4();
  MEMORY[0x2383E3DF0](v2);

  MEMORY[0x2383E3DF0](1735290926, 0xE400000000000000);
  return 0;
}

void sub_237F969F8(double a1)
{
  v1 = floor(a1 / 60.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

CGGradientRef sub_237F96B14(unint64_t a1)
{
  v1 = fmod((15 * (a1 % 0x24)), 360.0);
  sub_237F969F8(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_237F969F8(v1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  SRGB = CGColorCreateSRGB(v3, v5, v7, 1.0);
  v15 = CGColorCreateSRGB(v9, v11, v13, 1.0);
  v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3CA0, &qword_237F9CB80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237F9CC70;
  *(v17 + 32) = SRGB;
  *(v17 + 40) = v15;
  type metadata accessor for CGColor(0);
  v18 = SRGB;
  v19 = v15;
  v20 = sub_237F9BCD4();

  v21 = CGGradientCreateWithColors(v16, v20, 0);

  return v21;
}

CGImageRef sub_237F96CB0(_BYTE *a1, unint64_t a2)
{
  v4 = sub_237F9BBF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      v11 = __CGBitmapContextCreate(0x7D0uLL, 0x3E8uLL, 0x1F40uLL, v9);

      if (v11)
      {
        v12 = sub_237F96B14(a2);
        if (v12)
        {
          v13 = v12;
          v26.x = 2000.0;
          v26.y = 1000.0;
          v24.x = 0.0;
          v24.y = 0.0;
          CGContextDrawLinearGradient(v11, v12, v24, v26, 0);
        }

        Image = CGBitmapContextCreateImage(v11);

        return Image;
      }
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v16 = __CGBitmapContextCreate(0xC8uLL, 0xC8uLL, 0x320uLL, v9);

  if (!v16)
  {
    return 0;
  }

  v17 = sub_237F96B14(a2);
  if (v17)
  {
    v18 = v17;
    v27.x = 200.0;
    v25.x = 0.0;
    v25.y = 0.0;
    v27.y = 200.0;
    CGContextDrawLinearGradient(v16, v17, v25, v27, 0);
  }

  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  CGContextSetFillColorWithColor(v16, SRGB);

  v23[1] = 0x4044000000000000;
  v28.origin.x = 80.0;
  v28.origin.y = 95.0;
  v28.size.width = 40.0;
  v28.size.height = 50.0;
  CGContextFillEllipseInRect(v16, v28);
  v29.origin.x = 80.0;
  v29.origin.y = 95.0;
  v29.size.width = 40.0;
  v29.size.height = 50.0;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = 80.0;
  v30.origin.y = 95.0;
  v30.size.width = 40.0;
  v30.size.height = 50.0;
  v21 = CGRectGetMinY(v30) + -40.0 + -6.25;
  atan2(v21 + 5.71428571 - (v21 + 5.0), MidX + -39.5897327 - (MidX + -34.6410162));
  v23[0] = atan2(v21 - (v21 + 5.0), MidX + -34.6410162 - (MidX + -34.6410162));
  atan2(v21 + 5.71428571 - (v21 + 5.0), MidX + 39.5897327 - (MidX + 34.6410162));
  atan2(v21 - (v21 + 5.0), MidX + 34.6410162 - (MidX + 34.6410162));
  sub_237F9BDC4();
  sub_237F9BDC4();
  sub_237F9BDC4();
  CGContextClosePath(v16);
  (*(v5 + 104))(v8, *MEMORY[0x277CBF258], v4);
  sub_237F9BDD4();
  (*(v5 + 8))(v8, v4);
  v22 = CGBitmapContextCreateImage(v16);

  return v22;
}

uint64_t sub_237F97070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewImageProvider.State.Entry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F970D4(uint64_t a1)
{
  v2 = type metadata accessor for PreviewImageProvider.State.Entry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237F97130(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_237F97190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F97200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewImageProvider.State.Entry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F97264(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_237F972B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237F97348()
{
  result = qword_27DEE3DE0;
  if (!qword_27DEE3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3DE0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237F973BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewImageProvider.State.Entry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F9746C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v30 = a4;
  v27 = a1;
  v5 = type metadata accessor for PreviewImageProvider.State.Entry();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = (v31[6] + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    sub_237F97200(v31[7] + *(v29 + 72) * v21, v9);

    LOBYTE(v23) = v30(v23, v24, v9);
    sub_237F970D4(v9);

    if (v23)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_237F957C0(v27, v26, v28, v31);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_237F957C0(v27, v26, v28, v31);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237F97660(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_237F9746C(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_237F95730(v11, v6, v4, a2);
  result = MEMORY[0x2383E4690](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237F977E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double DefaultPreviewSource.init(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:body:)@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  *a7 = *a1;
  *(a7 + 8) = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = a3;
  *(a7 + 25) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  result = 0.0;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0;
  return result;
}

uint64_t DefaultPreviewSource.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t DefaultPreviewSource.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t DefaultPreviewSource.structure.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  return sub_237F97AC8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_237F97AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }
  }
}

__n128 DefaultPreviewSource.structure.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_237F8E1D4(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return result;
}

uint64_t DefaultPreviewSource.init<A>(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:arguments:body:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 *a9@<X8>, uint64_t a10)
{
  v47 = a8;
  v48 = a6;
  v52 = a1;
  v53 = a7;
  v54 = a4;
  v55 = a3;
  v50 = a10;
  v13 = type metadata accessor for PreviewArguments.InhabitedSections();
  v14 = sub_237F9BE04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  v20 = *(v13 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v46 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v51 = *v52;
  v25 = a2[1];
  v52 = *a2;
  v49 = v25;
  (*(v15 + 16))(v19, a5, v14);
  if ((*(v20 + 48))(v19, 1, v13) == 1)
  {
    v26 = type metadata accessor for PreviewArguments();
    (*(*(v26 - 8) + 8))(a5, v26);

    result = (*(v15 + 8))(v19, v14);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0uLL;
    v33 = 2;
  }

  else
  {
    v34 = *(v20 + 32);
    v34(v24, v19, v13);
    sub_237F97F58(v13, &v56);
    v35 = v50;
    v36 = type metadata accessor for PreviewArguments();
    (*(*(v36 - 8) + 8))(a5, v36);
    v45 = v56;
    v28 = v57;
    v44 = v58;
    v37 = v46;
    v34(v46, v24, v13);
    v38 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v47;
    *(v31 + 24) = v35;
    result = (v34)(v31 + v38, v37, v13);
    v32 = v45;
    v29 = v44;
    v39 = (v31 + ((v21 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    v40 = v53;
    *v39 = v48;
    v39[1] = v40;
    v33 = 1;
    v30 = sub_237F981AC;
  }

  v41 = v54 & 1;
  a9->n128_u8[0] = v51;
  v42 = v55 & 1;
  a9->n128_u64[1] = v52;
  a9[1].n128_u64[0] = v49;
  a9[1].n128_u8[8] = v42;
  a9[1].n128_u8[9] = v41;
  a9[2] = v32;
  a9[3].n128_u64[0] = v28;
  a9[3].n128_u64[1] = v29;
  a9[4].n128_u64[0] = v30;
  a9[4].n128_u64[1] = v31;
  a9[5].n128_u8[0] = v33;
  return result;
}

__n128 sub_237F97F58@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for PreviewSection();
  sub_237F98798(v6, &v16);
  v14 = v16;
  v7 = v17;
  v15 = *(v2 + *(a1 + 28));
  KeyPath = swift_getKeyPath();
  v9 = sub_237F9BD34();

  WitnessTable = swift_getWitnessTable();
  v12 = sub_237F98854(sub_237F9A014, KeyPath, v9, &type metadata for PreviewGroupMetadata.Section, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  result = v14;
  *a2 = v14;
  a2[1].n128_u64[0] = v7;
  a2[1].n128_u64[1] = v12;
  return result;
}

uint64_t sub_237F98080(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(v15 + 16);
  v20 = *v15;
  v21 = v13;
  v16 = type metadata accessor for PreviewArguments.InhabitedSections();
  sub_237F9827C(v14, v22, &v20, v16);
  v17 = v22[0];
  v18 = v22[1];
  a5(v14);
  result = (*(v11 + 8))(v14, a8);
  *a2 = v17;
  a2[1] = v18;
  return result;
}

uint64_t sub_237F981AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for PreviewArguments.InhabitedSections() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_237F98080(a1, a2, a3, v3 + v10, v12, v13, v7, v8);
}

uint64_t sub_237F9827C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v10 = sub_237F9BE04();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v35 = &v30 - v12;
  v13 = type metadata accessor for PreviewSection();
  v14 = sub_237F9BE04();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v30 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v24 = &v30 - v23;
  if (*(a3 + 16))
  {
    goto LABEL_4;
  }

  v32 = v21;
  v25 = *a3;
  v26 = *(a3 + 8);
  v30 = v22;
  v31 = v25;
  sub_237F8E480(v25, a4, v18);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v30 + 8))(v18, v14);
    v21 = v32;
LABEL_4:
    result = (*(*(v9 - 8) + 16))(v21, v4 + *(v13 + 28), v9);
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  (*(v19 + 32))(v24, v18, v13);
  v28 = v35;
  sub_237F8EFB4(v26, v13, v35);
  v29 = *(v9 - 8);
  if ((*(v29 + 48))(v28, 1, v9) == 1)
  {
    (*(v33 + 8))(v28, v34);
    (*(v29 + 16))(v32, &v24[*(v13 + 28)], v9);
    result = (*(v19 + 8))(v24, v13);
    *a2 = v31;
    a2[1] = 0;
  }

  else
  {
    (*(v19 + 8))(v24, v13);
    result = (*(v29 + 32))(v32, v28, v9);
    *a2 = v31;
    a2[1] = v26;
  }

  return result;
}

uint64_t PreviewSourceContentDomain.hashValue.getter()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

uint64_t sub_237F986B0()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

uint64_t sub_237F98724()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

uint64_t PreviewSourceContentCategory.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_237F98798@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(v2 + *(a1 + 32));
  v7 = *(a1 + 16);

  result = sub_237F9BD04();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = result + 1;
  }

  return result;
}

double sub_237F98800@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for PreviewSection();
  sub_237F98798(v5, &v8);
  v6 = v9;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_237F98854(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_237F9BD74();
  if (!v26)
  {
    return sub_237F9BCF4();
  }

  v48 = v26;
  v52 = sub_237F9BE74();
  v39 = sub_237F9BE84();
  sub_237F9BE54();
  result = sub_237F9BD64();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_237F9BDB4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_237F9BE64();
      result = sub_237F9BD84();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

DeveloperToolsSupport::PreviewGroupMetadata __swiftcall PreviewGroupMetadata.init(firstSection:moreSections:)(DeveloperToolsSupport::PreviewGroupMetadata::Section firstSection, Swift::OpaquePointer moreSections)
{
  v3 = *(firstSection.title.value._countAndFlagsBits + 16);
  *v2 = *firstSection.title.value._countAndFlagsBits;
  *(v2 + 16) = v3;
  *(v2 + 24) = firstSection.title.value._object;
  result.firstSection = firstSection;
  result.moreSections = moreSections;
  return result;
}

DeveloperToolsSupport::PreviewGroupIndex __swiftcall PreviewGroupIndex.init(section:preview:)(Swift::Int section, Swift::Int preview)
{
  *v2 = section;
  v2[1] = preview;
  result.preview = preview;
  result.section = section;
  return result;
}

DeveloperToolsSupport::PreviewGroupMetadata::Section __swiftcall PreviewGroupMetadata.Section.init(title:previewCount:)(Swift::String_optional title, Swift::Int previewCount)
{
  *v2 = title;
  v2[1].value._countAndFlagsBits = previewCount;
  result.title = title;
  result.previewCount = previewCount;
  return result;
}

uint64_t PreviewGroupMetadata.Section.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PreviewGroupMetadata.Section.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PreviewGroupMetadata.Section.hash(into:)()
{
  v1 = v0[2];
  if (v0[1])
  {
    v2 = *v0;
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  return MEMORY[0x2383E4110](v1);
}

uint64_t PreviewGroupMetadata.Section.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v3);
  return sub_237F9BFA4();
}

uint64_t sub_237F98E3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v3);
  return sub_237F9BFA4();
}

uint64_t sub_237F98EBC()
{
  v1 = v0[2];
  if (v0[1])
  {
    v2 = *v0;
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  return MEMORY[0x2383E4110](v1);
}

uint64_t sub_237F98F20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v3);
  return sub_237F9BFA4();
}

uint64_t PreviewGroupMetadata.firstSection.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

__n128 PreviewGroupMetadata.firstSection.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1->n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t PreviewGroupMetadata.moreSections.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_237F99074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v5)
      {
        if (!v7)
        {
          return 0;
        }

        if (*(v3 - 2) == *(v4 - 2) && v5 == v7)
        {
          if (v6 != v8)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v10 = *(v4 - 1);
        v11 = sub_237F9BF14();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }
      }

      else
      {

        result = 0;
        if (v7)
        {
          return result;
        }
      }

      if (v6 != v8)
      {
        return result;
      }

LABEL_6:
      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t PreviewGroupMetadata.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    v5 = *v1;
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  MEMORY[0x2383E4110](v3);

  return sub_237F9966C(a1, v4);
}

uint64_t PreviewGroupMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v4);
  sub_237F9966C(v6, v3);
  return sub_237F9BFA4();
}

uint64_t sub_237F99274()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v4);
  sub_237F9966C(v6, v3);
  return sub_237F9BFA4();
}

uint64_t sub_237F99308(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    v5 = *v1;
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  MEMORY[0x2383E4110](v3);

  return sub_237F9966C(a1, v4);
}

uint64_t sub_237F99398()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v4);
  sub_237F9966C(v6, v3);
  return sub_237F9BFA4();
}

uint64_t PreviewGroupIndex.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2383E4110](*v0);
  return MEMORY[0x2383E4110](v1);
}

uint64_t PreviewGroupIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F99550()
{
  v1 = *v0;
  v2 = v0[1];
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F995AC()
{
  v1 = v0[1];
  MEMORY[0x2383E4110](*v0);
  return MEMORY[0x2383E4110](v1);
}

uint64_t sub_237F995E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F9966C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2383E4110](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *v5;
      if (*(v5 - 1))
      {
        v6 = *(v5 - 2);
        sub_237F9BF94();

        sub_237F9BC54();
      }

      else
      {
        sub_237F9BF94();
      }

      v5 += 3;
      MEMORY[0x2383E4110](v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s21DeveloperToolsSupport20PreviewGroupMetadataV7SectionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_237F9BF14() & 1) != 0)
      {
        return v4 == v6;
      }
    }
  }

  else if (!v5)
  {
    return v4 == v6;
  }

  return 0;
}

uint64_t _s21DeveloperToolsSupport20PreviewGroupMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (!v3)
  {
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v4 == v7;
    }

    if (v11)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = *a1 == *a2 && v3 == v6;
  if (!v9 && (sub_237F9BF14() & 1) == 0 || v4 != v7)
  {
    return 0;
  }

LABEL_9:

  return sub_237F99074(v5, v8);
}

unint64_t sub_237F99814()
{
  result = qword_27DEE3E00;
  if (!qword_27DEE3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E00);
  }

  return result;
}

unint64_t sub_237F9986C()
{
  result = qword_27DEE3E08;
  if (!qword_27DEE3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E08);
  }

  return result;
}

unint64_t sub_237F998D0()
{
  result = qword_27DEE3E10;
  if (!qword_27DEE3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E10);
  }

  return result;
}

unint64_t sub_237F99940()
{
  result = qword_27DEE3E18;
  if (!qword_27DEE3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E18);
  }

  return result;
}

unint64_t sub_237F99998()
{
  result = qword_27DEE3E20;
  if (!qword_27DEE3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E20);
  }

  return result;
}

unint64_t sub_237F999F0()
{
  result = qword_27DEE3E28[0];
  if (!qword_27DEE3E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEE3E28);
  }

  return result;
}

uint64_t sub_237F99A94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_21DeveloperToolsSupport20DefaultPreviewSourceV9StructureOyx_G(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237F99B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_237F99B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237F99BC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237F99C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_237F99C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_237F99CBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewSourceContentDomain(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewSourceContentDomain(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237F99E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_237F99EAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237F99EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_237F99F58(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewGroupIndex(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewGroupIndex(uint64_t result, int a2, int a3)
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

uint64_t PreviewTrait.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(a1, v4 + 32);
  *a2 = v4;
  return result;
}

uint64_t PreviewTrait.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for PreviewTrait();
  sub_237F9BD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38F8, &qword_237F9C8B0);
  swift_getWitnessTable();
  sub_237F8D828();
  v2 = sub_237F9BCC4();

  *a1 = v2;
  return result;
}

__n128 PreviewLayoutTrait.value.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

void static PreviewLayoutTrait.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

__n128 static PreviewLayoutTrait.combine(_:_:)@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_237F9A21C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

void sub_237F9A238(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

__n128 sub_237F9A24C@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_237F9A2A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for PreviewLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTagSinglePayload for PreviewInterfaceOrientation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewInterfaceOrientation(uint64_t result, unsigned int a2, unsigned int a3)
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

DeveloperToolsSupport::PreviewCamera::Point __swiftcall PreviewCamera.Point.init(x:y:z:)(Swift::Float x, Swift::Float y, Swift::Float z)
{
  *v3 = x;
  v3[1] = y;
  v3[2] = z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

uint64_t PreviewCamera.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return sub_237F9A56C();
}

__n128 PreviewCamera.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return result;
}

uint64_t static PreviewCameraBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3FB8, &unk_237F9D610);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237F9C610;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v5;
  *(v7 + 72) = v6;
  sub_237F9A56C();
  return v7;
}

uint64_t static PreviewCameraBuilder.buildArray(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_237F9AA40(result, v9, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_237F9A790()
{

  sub_237F9A948(v0);
}

uint64_t sub_237F9A7F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v7 = *a1;

  result = sub_237F9A948(v5);
  *a3 = v7;
  return result;
}

uint64_t static PreviewTrait<A>.camera(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3FB8, &unk_237F9D610);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F9C610;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  v13 = &type metadata for PreviewCameraTrait;
  v14 = &protocol witness table for PreviewCameraTrait;
  *&v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_237F9C610;
  sub_237F8E244(&v12, v10 + 32);
  *a2 = v10;
  return sub_237F9A56C();
}

uint64_t sub_237F9A948(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_237F9AA40(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_237F9AA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3FB8, &unk_237F9D610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewCamera.Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreviewCamera.Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_237F9ABE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_237F9AC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t static PreviewTrait<A>.assistiveAccess.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = &type metadata for AssistiveAccessTrait;
  v6 = &protocol witness table for AssistiveAccessTrait;
  LOBYTE(v4) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v4, v2 + 32);
  *a1 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistiveAccessTrait(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t static PreviewTrait<A>.defaultLayout.getter@<X0>(uint64_t *a1@<X8>)
{
  v6 = &type metadata for PreviewLayoutTrait;
  v7 = &protocol witness table for PreviewLayoutTrait;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v5, v3 + 32);
  *a1 = v3;
  return result;
}

uint64_t static PreviewTrait<A>.sizeThatFitsLayout.getter@<X0>(uint64_t *a1@<X8>)
{
  v6 = &type metadata for PreviewLayoutTrait;
  v7 = &protocol witness table for PreviewLayoutTrait;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 1;
  *(v2 + 40) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v5, v3 + 32);
  *a1 = v3;
  return result;
}

uint64_t static PreviewTrait<A>.fixedLayout(width:height:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v10 = &type metadata for PreviewLayoutTrait;
  v11 = &protocol witness table for PreviewLayoutTrait;
  v6 = swift_allocObject();
  *&v9 = v6;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v9, v7 + 32);
  *a1 = v7;
  return result;
}

uint64_t static PreviewTrait<A>.fixedLayout(width:height:depth:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v12 = &type metadata for PreviewLayoutTrait;
  v13 = &protocol witness table for PreviewLayoutTrait;
  v8 = swift_allocObject();
  *&v11 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v11, v9 + 32);
  *a1 = v9;
  return result;
}

uint64_t sub_237F9B0F4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v6 = &type metadata for PreviewInterfaceOrientationTrait;
  v7 = &protocol witness table for PreviewInterfaceOrientationTrait;
  LOBYTE(v5) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v5, v3 + 32);
  *a2 = v3;
  return result;
}

uint64_t PreviewInterfaceOrientation.hashValue.getter()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

unint64_t sub_237F9B210()
{
  result = qword_27DEE3FC0;
  if (!qword_27DEE3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FC0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PreviewLayout(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_237F9B294(uint64_t a1)
{
  if (*(a1 + 24) <= 1u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_237F9B2AC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t static NamedResource.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_237F9BF14() & 1) == 0)
  {
    return 0;
  }

  sub_237F9B364();
  return sub_237F9BDE4() & 1;
}

unint64_t sub_237F9B364()
{
  result = qword_27DEE3FC8;
  if (!qword_27DEE3FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE3FC8);
  }

  return result;
}

uint64_t NamedResource.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BC54();
  return sub_237F9BDF4();
}

uint64_t NamedResource.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B444()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B4A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BC54();
  return sub_237F9BDF4();
}

uint64_t sub_237F9B4D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B534(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_237F9BF14() & 1) == 0)
  {
    return 0;
  }

  sub_237F9B364();
  return sub_237F9BDE4() & 1;
}

__n128 _s21DeveloperToolsSupport13ColorResourceV9referenceAA0E9ReferenceOvs_0(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 8);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  return result;
}

BOOL _s21DeveloperToolsSupport17ResourceReferenceO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v5 = a1[1];
    if ((sub_237F9BF14() & 1) == 0)
    {
      return 0;
    }
  }

  sub_237F9B364();

  v6 = v2;

  v7 = v3;
  v8 = sub_237F9BDE4();

  return (v8 & 1) != 0;
}

uint64_t _s21DeveloperToolsSupport13ColorResourceV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x2383E4110](0);
  sub_237F9BC54();
  return sub_237F9BDF4();
}

uint64_t _s21DeveloperToolsSupport13ColorResourceV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  MEMORY[0x2383E4110](0);
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B7DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_237F9BF74();
  MEMORY[0x2383E4110](0);
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B848(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v12[0] = *a1;
  v12[1] = v2;
  v13 = v3;
  v10[0] = v4;
  v10[1] = v5;
  v11 = v6;

  v7 = v3;

  v8 = v6;
  LOBYTE(v5) = _s21DeveloperToolsSupport17ResourceReferenceO2eeoiySbAC_ACtFZ_0(v12, v10);

  return v5 & 1;
}

unint64_t sub_237F9B8E4()
{
  result = qword_27DEE3FD0;
  if (!qword_27DEE3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FD0);
  }

  return result;
}

unint64_t sub_237F9B93C()
{
  result = qword_27DEE3FD8;
  if (!qword_27DEE3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FD8);
  }

  return result;
}

unint64_t sub_237F9B994()
{
  result = qword_27DEE3FE0;
  if (!qword_27DEE3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FE0);
  }

  return result;
}

unint64_t sub_237F9B9EC()
{
  result = qword_27DEE3FE8;
  if (!qword_27DEE3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FE8);
  }

  return result;
}

uint64_t sub_237F9BA60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237F9BAA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}