void sub_23BA950FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 64) + v16;
  v18 = v17 & ~v16;
  if (v13)
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v19 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        return;
      case 2:
        *&a1[v20] = v25;
        return;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v20] = v25;
        return;
      default:
        return;
    }
  }

  switch(v11)
  {
    case 1:
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_60:
      __break(1u);
      JUMPOUT(0x23BA95454);
    case 4:
      *&a1[v20] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v9 >= v14)
      {
        v31 = a1;
        v32 = a2;
        v13 = v9;
        AssociatedTypeWitness = v7;
      }

      else
      {
        v27 = (&a1[v17] & ~v16);
        if (v14 < a2)
        {
          if (v19 <= 3)
          {
            v28 = ~(-1 << (8 * v19));
          }

          else
          {
            v28 = -1;
          }

          if (v19)
          {
            v29 = v28 & (~v14 + a2);
            if (v19 <= 3)
            {
              v30 = v19;
            }

            else
            {
              v30 = 4;
            }

            bzero(v27, v19);
            switch(v30)
            {
              case 2:
                *v27 = v29;
                break;
              case 3:
                *v27 = v29;
                v27[2] = BYTE2(v29);
                break;
              case 4:
                *v27 = v29;
                break;
              default:
                *v27 = v29;
                break;
            }
          }

          return;
        }

        v32 = (a2 + 1);
        v31 = v27;
      }

      __swift_storeEnumTagSinglePayload(v31, v32, v13, AssociatedTypeWitness);
      return;
  }
}

uint64_t (*sub_23BA95500(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *)))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v8[5] = v4;
    v8[6] = v5;
    v8[0] = *(a3 + 8 * a2 + 32);

    a4(v8);

    return sub_23BA95F34;
  }

  __break(1u);
  return result;
}

void (*sub_23BA95598(void (**a1)(void **a1), unint64_t a2, uint64_t a3, void (*a4)(uint64_t *)))(void **a1)
{
  result = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v9 = *(a3 + 8 * a2 + 32);

    a4(&v9);

    return sub_23BA95654;
  }

  __break(1u);
  return result;
}

void sub_23BA95654(void **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t sub_23BA956BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - v8;
  if (a2 >= a1)
  {
    if (a1 == a2)
    {
      return 0;
    }

    v18 = a2;
    v19 = 1;
    a2 = a1;
  }

  else
  {
    v18 = a1;
    v19 = -1;
  }

  result = 0;
  v11 = *v2;
  v21 = v2[1];
  v12 = v2[3];
  v13 = v11;
  v14 = *(v11 + 16);
  while (2)
  {
    v15 = __OFADD__(result, v19);
    result += v19;
    if (v15)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (a2 == v14)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v20 = result;
    while (1)
    {
      v16 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v16 == v14)
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_19;
      }

      v21(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v7);
      v17 = v12(v9);
      result = sub_23B979910(v9, &qword_27E199760);
      ++a2;
      if (v17)
      {
        a2 = v16;
        goto LABEL_16;
      }
    }

    a2 = v14;
LABEL_16:
    result = v20;
    if (a2 != v18)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_23BA95884()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v13 - v4;
  v6 = 0;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[3];
  v10 = *(*v0 + 16);
  while (v10 != v6)
  {
    v7(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6, v3);
    v11 = v9(v5);
    sub_23B979910(v5, &qword_27E199760);
    if (v11)
    {
      return v6;
    }

    ++v6;
  }

  return v10;
}

unint64_t sub_23BA959C0()
{
  result = qword_27E19E3D8;
  if (!qword_27E19E3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3D0);
    sub_23B97B518(&qword_27E19E3E0, &qword_27E19E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E3D8);
  }

  return result;
}

uint64_t sub_23BA95B18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA95B58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23BA95BB4()
{
  type metadata accessor for SubscriptionStoreControlPropertiesModifier();
  OUTLINED_FUNCTION_6_17();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3B8);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19E3C8, &qword_27E19E3B8);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI17EnvironmentValuesV010_StoreKit_aB0E012SubscriptionE17ControlPropertiesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BA95CB0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BA95D04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23BA95DC8()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 48) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 24);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_23BA95E24()
{
  result = qword_27E19E408;
  if (!qword_27E19E408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E3F8);
    sub_23B97B518(qword_27E19E410, &qword_27E19E3F0);
    sub_23B97B518(&qword_27E199998, &qword_27E199960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E408);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return sub_23BA93D8C();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{
  v5 = v1 + *(a1 + 20);

  return sub_23B9A721C(v5, v2, v3);
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{
  v5 = v1 + *(a1 + 20);

  return sub_23B9A721C(v5, v2, v3);
}

void OUTLINED_FUNCTION_65_1()
{

  sub_23BA8D4D0();
}

void OUTLINED_FUNCTION_74(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v3 - 112) = a3;
  *(v3 - 104) = a2;
  *(v3 - 120) = a1;
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_81()
{

  return sub_23BBDCE68();
}

_BYTE *storeEnumTagSinglePayload for DefaultSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23BA964E4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23BA96528()
{
  sub_23BA969B0();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23BA96A60();
      if (v2 <= 0x3F)
      {
        sub_23BA96AC4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BA965E8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 < a2)
  {
    v10 = ((((v9 + ((v7 + 49) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v16 = *(a1 + v10);
        if (v16)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA96754);
      case 4:
        v16 = *(a1 + v10);
        if (!v16)
        {
          break;
        }

LABEL_22:
        v18 = v16 - 1;
        if (v12)
        {
          v18 = 0;
          LODWORD(v12) = *a1;
        }

        v19 = v8 + (v12 | v18);
        return (v19 + 1);
      default:
        break;
    }
  }

  v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v7 + 49) & ~v7;
  if (v6 >= 0x7FFFFFFE)
  {
    return __swift_getEnumTagSinglePayload(v20, v6, v4);
  }

  v21 = *(((v9 + v20) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v21 >= 0xFFFFFFFF)
  {
    LODWORD(v21) = -1;
  }

  v19 = v21 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

void sub_23BA96768(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v12) = v17;
        return;
      case 2:
        *(a1 + v12) = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v12) = v17;
        return;
      default:
        return;
    }
  }

  switch(v16)
  {
    case 1:
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BA96970);
    case 4:
      *(a1 + v12) = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 49) & ~v10;
        if (v8 < 0x7FFFFFFE)
        {
          v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            v20[1] = 0;
            v20[2] = 0;
            *v20 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            v20[2] = a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }
      }

      return;
  }
}

void sub_23BA969B0()
{
  if (!qword_27E19E498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B730);
    sub_23B97B518(&qword_27E19E230, qword_27E19B730);
    sub_23BA8C250();
    v0 = _s6TaskIDOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E498);
    }
  }
}

void sub_23BA96A60()
{
  if (!qword_27E19B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B720);
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19B718);
    }
  }
}

void sub_23BA96AC4()
{
  if (!qword_27E19E4A0)
  {
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E4A0);
    }
  }
}

uint64_t sub_23BA96B58(uint64_t a1, uint64_t a2, char a3)
{
  v171 = a2;
  v5 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v165 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v185 = v9 - v8;
  OUTLINED_FUNCTION_5_3();
  v191 = sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v163 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_5();
  v193 = v12;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_3();
  v192 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  v16 = OUTLINED_FUNCTION_13_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_5();
  v181 = v17;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_3();
  v175 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_5();
  v184 = v22;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_3();
  v183 = v24;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  v28 = v162 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  v30 = OUTLINED_FUNCTION_13_0(v29);
  MEMORY[0x28223BE20](v30);
  i = v162 - v31;
  OUTLINED_FUNCTION_5_3();
  v190 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_7();
  v188 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_3();
  v189 = v36;
  OUTLINED_FUNCTION_5_3();
  v37 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_3();
  v196 = v44;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v45);
  v48 = v162 - v47;
  v49 = *(a1 + 16);
  v187 = v5;
  v194 = a1;
  v195 = v49;
  v174 = MEMORY[0x277D84F90];
  if (!v49)
  {
    v186 = MEMORY[0x277D84F90];
LABEL_17:
    v86 = v186;
    v50 = v195;
    if (*(v186 + 16) != v195)
    {
      v87 = qword_27E1976D0;

      if (v87 != -1)
      {
        goto LABEL_77;
      }

      goto LABEL_19;
    }

    goto LABEL_52;
  }

  v169 = v46;
  v50 = (v39 + 16);
  v51 = *(v39 + 16);
  OUTLINED_FUNCTION_23_2();
  v53 = a1 + v52;
  v186 = MEMORY[0x277D84F90];
  v180 = (v39 + 8);
  v179 = *(v39 + 72);
  v166 = a3 & 1;
  v54 = v49;
  v56 = v55;
  v57 = v196;
  v182 = (v39 + 16);
  v168 = v28;
  v167 = v48;
  while (1)
  {
    v197 = v54;
    v51(v48, v53, v37);
    v51(v57, v48, v37);
    sub_23BBDC8F8();
    if (__swift_getEnumTagSinglePayload(v28, 1, v56) != 1)
    {
      break;
    }

    v58 = v56;
    v59 = *v180;
    (*v180)(v57, v37);
    v60 = OUTLINED_FUNCTION_70();
    (v59)(v60);
    sub_23B9EA92C(v28, &qword_27E197B90);
    v61 = v190;
    __swift_storeEnumTagSinglePayload(i, 1, 1, v190);
LABEL_7:
    if (__swift_getEnumTagSinglePayload(i, 1, v61) == 1)
    {
      sub_23B9EA92C(i, qword_27E197A68);
      v56 = v58;
      v57 = v196;
    }

    else
    {
      sub_23BA1D1B4(i, v189);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v196;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23B9B7FB8();
        v186 = v84;
      }

      v79 = *(v186 + 16);
      if (v79 >= *(v186 + 24) >> 1)
      {
        sub_23B9B7FB8();
        v186 = v85;
      }

      *(v186 + 16) = v79 + 1;
      OUTLINED_FUNCTION_23_2();
      sub_23BA1D1B4(v83, v81 + v80 + *(v82 + 72) * v79);
      v56 = v58;
    }

    v53 += v179;
    v54 = v197 - 1;
    v50 = v182;
    if (v197 == 1)
    {
      goto LABEL_17;
    }
  }

  v178 = v53;
  sub_23B9EA92C(v28, &qword_27E197B90);
  v62 = v169;
  v51(v169, v57, v37);
  v63 = v172;
  sub_23BBDC8F8();
  v64 = v51;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v56);
  v61 = v190;
  v66 = *(v190 + 24);
  sub_23B9EA92C(v63, &qword_27E197B90);
  if (EnumTagSinglePayload != 1)
  {
    v67 = v170;
    v68 = v170 + v66;
    v64(v170, v62, v37);
    v69 = sub_23BBDCD78();
    sub_23BBA7C04(v69, v70);
    v177 = v71;
    v176 = v72;
    v73 = *v180;
    (*v180)(v62, v37);
    v74 = OUTLINED_FUNCTION_70();
    v73(v74);
    v48 = v167;
    v75 = OUTLINED_FUNCTION_70();
    v73(v75);
    v58 = v187;
    v76 = v67 + *(v61 + 20);
    *v76 = v177;
    *(v76 + 8) = v176;
    *v68 = v171;
    *(v68 + 8) = v166;
    v77 = i;
    sub_23BA1D1B4(v67, i);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v61);
    v28 = v168;
    v51 = v64;
    v53 = v178;
    goto LABEL_7;
  }

LABEL_75:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_77:
    OUTLINED_FUNCTION_0_6();
LABEL_19:
    v88 = type metadata accessor for SKLogger();
    v179 = __swift_project_value_buffer(v88, qword_27E1BFC88);
    v200 = 0;
    v201 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000076, 0x800000023BBE1250);
    v190 = v39 + 16;
    v189 = (v163 + 8);
    v197 = (v39 + 8);
    v180 = (v39 + 32);

    v89 = 0;
    v90 = 0;
    v182 = (MEMORY[0x277D84F90] + 32);
    v91 = v162[1];
LABEL_20:
    for (i = v89; ; v89 = i)
    {
      if (v50 == v90)
      {
        v102 = 1;
        v90 = v50;
        v103 = v175;
        goto LABEL_28;
      }

      if (v90 >= v50)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_23_2();
      (*(v39 + 16))(v91, v194 + v92 + *(v39 + 72) * v90, v37);
      if (__OFADD__(v90, 1))
      {
        goto LABEL_72;
      }

      v196 = v90 + 1;
      v93 = v90;
      v94 = v39;
      v95 = v37;
      v96 = v192;
      sub_23BBDCD28();
      v97 = v193;
      sub_23BBDC878();
      sub_23B99835C();
      v98 = v191;
      v99 = sub_23BBDCF38();
      v100 = v91;
      v101 = *v189;
      (*v189)(v97, v98);
      v101(v96, v98);
      if ((v99 & 1) == 0)
      {
        break;
      }

      v37 = v95;
      (*v197)(v100, v95);
      v90 = v93 + 1;
      v39 = v94;
      v91 = v100;
      v50 = v195;
    }

    v103 = v175;
    v37 = v95;
    (*v180)(v175, v100, v95);
    v102 = 0;
    v39 = v94;
    v91 = v100;
    v50 = v195;
    v90 = v196;
    v89 = i;
LABEL_28:
    __swift_storeEnumTagSinglePayload(v103, v102, 1, v37);
    v104 = v103;
    v105 = v181;
    sub_23BA989AC(v104, v181);
    if (__swift_getEnumTagSinglePayload(v105, 1, v37) != 1)
    {
      v106 = v173;
      (*v180)(v173, v181, v37);
      v107 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v109 = v108;
      (*v197)(v106, v37);
      if (!v89)
      {
        v110 = v174;
        v111 = v174[3];
        if (((v111 >> 1) + 0x4000000000000000) < 0)
        {
          continue;
        }

        i = v109;
        v112 = v111 & 0xFFFFFFFFFFFFFFFELL;
        if (v112 <= 1)
        {
          v113 = 1;
        }

        else
        {
          v113 = v112;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
        v114 = swift_allocObject();
        v115 = (_swift_stdlib_malloc_size_0(v114) - 32) / 16;
        v114[2] = v113;
        v114[3] = 2 * v115;
        v116 = (v114 + 4);
        v117 = v110[3];
        v118 = v117 >> 1;
        if (v110[2])
        {
          v119 = v110 + 4;
          if (v114 != v110 || v116 >= &v110[2 * v118 + 4])
          {
            v196 = v115;
            v121 = v117;
            memmove(v114 + 4, v119, 16 * v118);
            v117 = v121;
            v115 = v196;
          }

          v174[2] = 0;
        }

        v182 = (v116 + 16 * v118);
        v89 = (v115 & 0x7FFFFFFFFFFFFFFFLL) - (v117 >> 1);

        v174 = v114;
        v109 = i;
      }

      v122 = __OFSUB__(v89--, 1);
      if (!v122)
      {
        v123 = v182;
        *v182 = v107;
        v123[1] = v109;
        v182 = v123 + 2;
        goto LABEL_20;
      }

      goto LABEL_74;
    }

    break;
  }

  v124 = v174;
  v125 = v174[3];
  if (v125 < 2)
  {
LABEL_48:

    v128 = MEMORY[0x23EEB5A30](v124, MEMORY[0x277D837D0]);
    v130 = v129;

    MEMORY[0x23EEB5890](v128, v130);

    v132 = v200;
    v131 = v201;
    v133 = sub_23BBDD598();

    v134 = sub_23BBD9988();

    if (os_log_type_enabled(v134, v133))
    {
      v135 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *v135 = 136446466;
      *(v135 + 4) = OUTLINED_FUNCTION_12_17();
      *(v135 + 12) = 2082;
      v136 = sub_23BA5AB90(v132, v131, &v200);

      *(v135 + 14) = v136;
      _os_log_impl(&dword_23B970000, v134, v133, "%{public}s%{public}s", v135, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    v86 = v186;
LABEL_52:
    v37 = 0;
    v199 = MEMORY[0x277D84FA0];
    v39 = *(v86 + 16);
    v137 = (v165 + 32);
    v50 = (v165 + 8);
    v138 = v164;
    while (v39 != v37)
    {
      if (v37 >= *(v86 + 16))
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_23_2();
      v139 = v86;
      sub_23BA54F2C(v86 + v140 + *(v141 + 72) * v37, v138);
      v142 = v183;
      sub_23BBDC8F8();
      v89 = v184;
      sub_23BA98A1C(v142, v184);
      v143 = v187;
      if (__swift_getEnumTagSinglePayload(v89, 1, v187) == 1)
      {
        goto LABEL_79;
      }

      ++v37;
      sub_23B9EA92C(v142, &qword_27E197B90);
      v144 = v185;
      (*v137)(v185, v89, v143);
      sub_23BBDCAA8();
      (*v50)(v144, v143);
      sub_23B9B9680();

      sub_23BA1D2DC(v138);
      v86 = v139;
    }

    v145 = v199;
    v146 = *(v199 + 16);
    if (v146 > 1)
    {
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v147 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v147, qword_27E1BFC88);
      v200 = 0;
      v201 = 0xE000000000000000;
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000083, 0x800000023BBE1320);
      sub_23BA98AE4(v145, sub_23B9B865C, sub_23BA98C90);
      v148 = MEMORY[0x23EEB5A30]();
      v150 = v149;

      MEMORY[0x23EEB5890](v148, v150);

      v152 = v200;
      v151 = v201;
      v153 = sub_23BBDD598();

      v154 = sub_23BBD9988();

      if (os_log_type_enabled(v154, v153))
      {
        v155 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *v155 = 136446466;
        *(v155 + 4) = OUTLINED_FUNCTION_12_17();
        *(v155 + 12) = 2082;
        v156 = sub_23BA5AB90(v152, v151, &v200);

        *(v155 + 14) = v156;
        _os_log_impl(&dword_23B970000, v154, v153, "%{public}s%{public}s", v155, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }

      else
      {
      }

      v146 = *(v145 + 16);
    }

    if (!v146)
    {
      if (qword_27E1976D0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v157 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v157, qword_27E1BFC88);
      v158 = sub_23BBDD598();
      v159 = sub_23BBD9988();
      if (os_log_type_enabled(v159, v158))
      {
        v160 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *v160 = 136446466;
        *(v160 + 4) = OUTLINED_FUNCTION_12_17();
        *(v160 + 12) = 2082;
        *(v160 + 14) = sub_23BA5AB90(0xD00000000000004BLL, 0x800000023BBE12D0, &v200);
        _os_log_impl(&dword_23B970000, v159, v158, "%{public}s%{public}s", v160, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
      }
    }

    return v86;
  }

  v126 = v125 >> 1;
  v122 = __OFSUB__(v126, v89);
  v127 = v126 - v89;
  if (!v122)
  {
    v174[2] = v127;
    goto LABEL_48;
  }

  __break(1u);
LABEL_79:
  result = sub_23B9EA92C(v89, &qword_27E197B90);
  __break(1u);
  return result;
}

uint64_t sub_23BA97CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = a4[2];
  v13 = *(a4 + 24);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = v10;
  *(a7 + 32) = v11;
  *(a7 + 40) = v12;
  *(a7 + 48) = v13;
  v14 = type metadata accessor for SubscriptionStoreDynamicView();
  (*(*(a6 - 8) + 32))(a7 + v14[10], a5, a6);
  v15 = a7 + v14[11];
  sub_23BA97DC0();
  *v15 = v19;
  *(v15 + 8) = v20;
  *(v15 + 16) = v21;
  v16 = (a7 + v14[12]);
  result = sub_23BA97E1C();
  *v16 = result;
  v16[1] = v18;
  return result;
}

uint64_t sub_23BA97E54()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_23BA97E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v84 = v6;
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v83 = v8 - v7;
  OUTLINED_FUNCTION_3_2();
  v78 = v9;
  v80 = *(v10 + 64);
  MEMORY[0x28223BE20](v11);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_3();
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v76 = v14;
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v73 = v16 - v15;
  v17 = *(a1 + 16);
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;
  v24 = *(a1 + 24);
  v72 = type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  OUTLINED_FUNCTION_3_2();
  v81 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v70 = &v66 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70);
  v75 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v82 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_3();
  v79 = v32;
  v33 = v2 + *(a1 + 44);
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v89 = v34;
  v90 = v35;
  v91 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
  sub_23BBDBF68();
  v93 = v95;
  v94 = v96;
  v37 = sub_23BA97E54();
  v39 = v38;
  v40 = *(v3 + 32);
  v41 = *(v3 + 40);
  v42 = *(v3 + 48);
  v89 = *(v3 + 24);
  v90 = v40;
  v91 = v41;
  v92 = v42;
  (*(v19 + 16))(v23, v3 + *(a1 + 40), v17);
  sub_23B9CA59C(&v93, v37, v39, &v89, v23, v17, v28);
  v43 = *(v3 + 8);
  v69 = *v3;
  v68 = v43;
  HIDWORD(v67) = *(v3 + 16);
  v45 = v76;
  v44 = v77;
  v46 = v73;
  (*(v76 + 104))(v73, *MEMORY[0x277CDD088], v77);
  v47 = v78;
  v48 = v74;
  (*(v78 + 16))(v74, v3, a1);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v17;
  *(v50 + 24) = v24;
  (*(v47 + 32))(v50 + v49, v48, a1);
  OUTLINED_FUNCTION_6_18();
  v51 = v72;
  WitnessTable = swift_getWitnessTable();
  v53 = v83;
  sub_23BBDD348();
  v54 = v71;
  v55 = v46;
  v56 = v46;
  v57 = v70;
  sub_23BA275D8(v69, v68, HIDWORD(v67), v56, v53, &unk_23BBF5318, v50, v51, WitnessTable, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);

  (*(v84 + 8))(v53, v85);
  (*(v45 + 8))(v55, v44);
  (*(v81 + 8))(v57, v51);
  OUTLINED_FUNCTION_3_22();
  v59 = sub_23B97B518(v58, &qword_27E19BE70);
  v87 = WitnessTable;
  v88 = v59;
  OUTLINED_FUNCTION_0();
  v60 = v75;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_23B9D2D88(v54, v60, v61);
  v63 = *(v82 + 8);
  v63(v54, v60);
  sub_23B9D2D88(v62, v60, v61);
  return (v63)(v62, v60);
}

uint64_t sub_23BA984B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = a4;
  *(v4 + 72) = a2;
  *(v4 + 96) = *a1;
  *(v4 + 120) = *(a1 + 16);
  sub_23BBDD308();
  *(v4 + 112) = sub_23BBDD2F8();
  v6 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA98560, v6, v5);
}

uint64_t sub_23BA98560()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *(v0 + 96);
      v3 = *(v0 + 72);
      v4 = type metadata accessor for SubscriptionStoreDynamicView();
      *(v0 + 16) = *(v3 + *(v4 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960);
      sub_23BBDBF68();
      v5 = sub_23BA96B58(v2, *(v0 + 40), 0);
      v6 = v3 + *(v4 + 44);
      v7 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 8);
      *(v0 + 16) = *v6;
      *(v0 + 24) = v9;
      *(v0 + 32) = v8;
      *(v0 + 40) = v5;
      *(v0 + 48) = 1;
      v10 = v7;
    }

    else
    {
      v17 = v1 + *(OUTLINED_FUNCTION_11_16() + 44);
      v10 = *v17;
      v18 = *(v17 + 16);
      v9 = *(v17 + 8);
      *(v0 + 16) = *v17;
      *(v0 + 24) = v9;
      *(v0 + 32) = v18;
      *(v0 + 40) = 0;
      *(v0 + 48) = 2;
    }
  }

  else
  {
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = v1 + *(OUTLINED_FUNCTION_11_16() + 44);
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 8);
    *(v0 + 16) = *v13;
    *(v0 + 24) = v16;
    *(v0 + 32) = v15;
    *(v0 + 40) = v12;
    *(v0 + 48) = 0;
    sub_23BA1D218(v12, v11, 0);
    v10 = v14;
    v9 = v16;
  }

  sub_23B9CEC34(v10, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B7C0);
  sub_23BBDBF78();
  v19 = *(v0 + 32);
  sub_23B9CEC50(*(v0 + 16), *(v0 + 24));

  v20 = (v19 + *(OUTLINED_FUNCTION_11_16() + 48));
  v22 = *v20;
  v21 = v20[1];
  *(v0 + 16) = *v20;
  *(v0 + 24) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960);
  result = sub_23BBDBF68();
  v24 = *(v0 + 56);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v22;
    *(v0 + 48) = v21;
    *(v0 + 64) = v26;
    sub_23BBDBF78();

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_23BA98790()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for SubscriptionStoreDynamicView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  sub_23BA988B0();
  (*(*(v1 - 8) + 8))(v3 + v2[12], v1);
  sub_23B9CEC50(*(v3 + v2[13]), *(v3 + v2[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BA988BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = type metadata accessor for SubscriptionStoreDynamicView();
  OUTLINED_FUNCTION_13_0(v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23BA984B4(a1, v1 + v8, v4, v5);
}

uint64_t sub_23BA989AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA98A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA98AE4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  OUTLINED_FUNCTION_70();
  sub_23BA98DEC();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_23BA98BAC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BA98C90(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BA98DF4()
{
  type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BE70);
  sub_23BBDA358();
  OUTLINED_FUNCTION_6_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_22();
  sub_23B97B518(v0, &qword_27E19BE70);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return type metadata accessor for SubscriptionStoreDynamicView();
}

unint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_23BA5AB90(0, 0xE000000000000000, (v0 - 104));
}

uint64_t sub_23BA98F14()
{
  v0 = type metadata accessor for SKLogger();
  __swift_allocate_value_buffer(v0, qword_27E1BFD50);
  __swift_project_value_buffer(v0, qword_27E1BFD50);
  return sub_23BBD9998();
}

uint64_t sub_23BA98F9C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StorefrontLocaleViewModifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  if (qword_27E1977A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for StorefrontObserver(0);
  sub_23BA9B590(&qword_27E19C0D0, type metadata accessor for StorefrontObserver);

  *(v8 + 1) = sub_23BBDA0E8();
  *(v8 + 2) = v9;
  v10 = *(v6 + 24);
  *&v8[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEB43C0](v8, a2, v6, a3);
  return sub_23BA9B13C(v8);
}

uint64_t sub_23BA99128@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_23BBD9848();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    v20 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23BBD9A58();

    v15 = sub_23BBDC678();
    if (__swift_getEnumTagSinglePayload(v10, 1, v15) != 1)
    {
      MEMORY[0x23EEB4E20]();
      (*(*(v15 - 8) + 8))(v10, v15);
      return (*(v12 + 32))(v20, v14, v11);
    }

    sub_23BA9B06C(v10);
    a1 = v20;
  }

  v16 = type metadata accessor for StorefrontLocaleViewModifier(0);
  sub_23BA9B0D4(&v1[*(v16 + 24)], v7, &qword_27E1996A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v12 + 32))(a1, v7, v11);
  }

  sub_23BBDD5A8();
  v18 = sub_23BBDB338();
  sub_23BBD9978();

  v19 = v21;
  sub_23BBDA918();
  swift_getAtKeyPath();

  return (*(v22 + 8))(v19, v23);
}

uint64_t sub_23BA994B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BBD9A58();
}

uint64_t sub_23BA99528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E518) + 36));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CE8);
  sub_23BA99128(v5 + *(v6 + 28));
  *v5 = KeyPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E520);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_23BA99604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23BA9B0D4(a1, &v6 - v3, &qword_27E19E4F0);
  return sub_23BA996B0(v4);
}

uint64_t sub_23BA996B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BA9B0D4(a1, v4, &qword_27E19E4F0);

  sub_23BBD9A68();
  return sub_23BA9B06C(a1);
}

uint64_t sub_23BA99798()
{
  type metadata accessor for StorefrontObserver(0);
  swift_allocObject();
  result = sub_23BA99854();
  qword_27E19E4A8 = result;
  return result;
}

uint64_t sub_23BA997D8()
{
  v0 = type metadata accessor for SKLogger();
  __swift_allocate_value_buffer(v0, qword_27E19E4B0);
  __swift_project_value_buffer(v0, qword_27E19E4B0);
  return sub_23BBD9998();
}

uint64_t sub_23BA99854()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E528);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver__currentStorefront;
  v15 = sub_23BBDC678();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  sub_23BA9B0D4(v13, v10, &qword_27E19E4F0);
  sub_23BBD9A48();
  sub_23BA9B06C(v13);
  (*(v5 + 32))(v1 + v14, v7, v4);
  v16 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver_observerTask;
  *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver_observerTask) = 0;
  v17 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v17);
  sub_23BBDD308();

  v18 = sub_23BBDD2F8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = &unk_23BBF5508;
  v19[5] = v1;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  v21[4] = &unk_23BBF5510;
  v21[5] = v19;
  swift_unknownObjectRetain();
  sub_23BB5D2B8();

  sub_23BA9A0E0();
  *(v1 + v16) = v22;

  return v1;
}

uint64_t sub_23BA99B58()
{
  v0[2] = sub_23BBDD308();
  v0[3] = sub_23BBDD2F8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BA99C04;

  return sub_23BA99D34();
}

uint64_t sub_23BA99C04()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9E8CAC, v4, v3);
}

uint64_t sub_23BA99D34()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  v3 = sub_23BBDC678();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_23BBDD308();
  v1[9] = sub_23BBDD2F8();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_23BA99E8C;

  return MEMORY[0x28212C4B8](v2);
}

uint64_t sub_23BA99E8C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v4 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BA99FBC, v4, v3);
}

uint64_t sub_23BA99FBC()
{
  OUTLINED_FUNCTION_41_0();
  v1 = v0[4];
  v2 = v0[5];

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_23BA9B06C(v0[4]);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];
    v6 = v0[3];
    (*(v4 + 32))(v3, v0[4], v5);
    (*(v4 + 16))(v6, v3, v5);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
    sub_23BA996B0(v6);
    v7 = OUTLINED_FUNCTION_35_0();
    v8(v7);
  }

  OUTLINED_FUNCTION_1_16();

  return v9();
}

void sub_23BA9A0E0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_23BBDD308();

  v7 = sub_23BBDD2F8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = v1;

  sub_23BB5D2B8();
}

uint64_t sub_23BA9A238()
{
  if (*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver_observerTask))
  {

    sub_23BBDD378();
  }

  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUIP33_1BFA2179251C0AFA10AFA4B4C120CBE318StorefrontObserver__currentStorefront;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E528);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_23BA9A2F4()
{
  v0 = sub_23BA9A238();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_23BA9A370()
{
  sub_23BA9A408();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23BA9A408()
{
  if (!qword_27E19E4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E4F0);
    v0 = sub_23BBD9A78();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E4E8);
    }
  }
}

uint64_t sub_23BA9A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BA9A528(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA9A5D4()
{
  sub_23BA9A668();
  if (v0 <= 0x3F)
  {
    sub_23B9CE15C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA9A668()
{
  if (!qword_27E19E510)
  {
    type metadata accessor for StorefrontObserver(255);
    sub_23BA9B590(&qword_27E19C0D0, type metadata accessor for StorefrontObserver);
    v0 = sub_23BBDA0F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E510);
    }
  }
}

uint64_t sub_23BA9A718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_23BBDC678();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_23BBDC638();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_23BBDC618();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_23BBDD308();
  v4[19] = sub_23BBDD2F8();
  v9 = sub_23BBDD2D8();
  v4[20] = v9;
  v4[21] = v8;

  return MEMORY[0x2822009F8](sub_23BA9A90C, v9, v8);
}

uint64_t sub_23BA9A90C()
{
  OUTLINED_FUNCTION_41_0();
  v1 = sub_23BBDC668();
  MEMORY[0x23EEB4E00](v1);
  v2 = OUTLINED_FUNCTION_35_0();
  v3(v2);
  swift_beginAccess();
  *(v0 + 176) = sub_23BBDD2F8();
  OUTLINED_FUNCTION_1_34();
  sub_23BA9B590(v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 184) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_33(v6);

  return MEMORY[0x282200308](v8);
}

uint64_t sub_23BA9AA0C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_23BBDD2D8();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = sub_23BA9AFB4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_23BBDD2D8();
      v6 = v7;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = sub_23BA9AB98;
  }

  return MEMORY[0x2822009F8](v8, v4, v6);
}

uint64_t sub_23BA9AB98()
{
  OUTLINED_FUNCTION_3_13();

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_23BA9ABF8, v1, v2);
}

uint64_t sub_23BA9ABF8()
{
  v31 = v0;
  v1 = v0[11];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

LABEL_12:

    OUTLINED_FUNCTION_1_16();

    return v26();
  }

  (*(v0[8] + 32))(v0[9], v1, v2);
  if (!swift_weakLoadStrong())
  {

    if (qword_27E1977A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v14, qword_27E19E4B0);
    v15 = sub_23BBDD598();
    v16 = sub_23BBD9988();
    v17 = os_log_type_enabled(v16, v15);
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    if (v17)
    {
      v29 = v0[17];
      v28 = v0[15];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v30);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_23BA5AB90(0xD000000000000049, 0x800000023BBE17E0, &v30);
      _os_log_impl(&dword_23B970000, v16, v15, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v25, -1, -1);
      MEMORY[0x23EEB6DC0](v24, -1, -1);

      (*(v21 + 8))(v22, v23);
      (*(v19 + 8))(v29, v28);
    }

    else
    {

      (*(v21 + 8))(v22, v23);
      (*(v19 + 8))(v18, v20);
    }

    goto LABEL_12;
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = OUTLINED_FUNCTION_35_0();
  v8(v7);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  sub_23BA996B0(v3);

  (*(v6 + 8))(v4, v5);
  v0[22] = sub_23BBDD2F8();
  OUTLINED_FUNCTION_1_34();
  sub_23BA9B590(v9, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[23] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_0_33();

  return MEMORY[0x282200308](v13);
}

uint64_t sub_23BA9AFB4()
{
  OUTLINED_FUNCTION_3_13();
  *(v0 + 40) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23BA9B06C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA9B0D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BA9B13C(uint64_t a1)
{
  v2 = type metadata accessor for StorefrontLocaleViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA9B198()
{
  OUTLINED_FUNCTION_3_13();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23BA9B6C4;

  return sub_23BA99B58();
}

uint64_t sub_23BA9B228()
{
  OUTLINED_FUNCTION_41_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23BA9B6C4;
  v2 = OUTLINED_FUNCTION_35_0();

  return v3(v2);
}

uint64_t sub_23BA9B2E0()
{
  OUTLINED_FUNCTION_41_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_23BA9B6C4;
  v3 = OUTLINED_FUNCTION_3_24();

  return v4(v3);
}

uint64_t sub_23BA9B390()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23BA9B3C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BA9B408()
{
  OUTLINED_FUNCTION_41_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_23BA9B4AC;
  v3 = OUTLINED_FUNCTION_3_24();

  return sub_23BA9A718(v3, v4, v5, v6);
}

uint64_t sub_23BA9B4AC()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  OUTLINED_FUNCTION_1_16();

  return v3();
}

uint64_t sub_23BA9B590(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BA9B5DC()
{
  result = qword_27E19E538;
  if (!qword_27E19E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E518);
    sub_23B97B518(&qword_27E19E540, &qword_27E19E520);
    sub_23B97B518(&qword_27E199D00, &qword_27E199CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E538);
  }

  return result;
}

uint64_t sub_23BA9B744(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BA9B7E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionStaticViewConfiguration()
{
  result = qword_27E19E560;
  if (!qword_27E19E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BA9B8AC()
{
  sub_23BA9B938();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BA9B938()
{
  if (!qword_27E19B388)
  {
    type metadata accessor for Subscription();
    v0 = sub_23BBDD2A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19B388);
    }
  }
}

uint64_t sub_23BA9B990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  swift_getKeyPath();
  sub_23BA9BDB8(a1, v4);
  v5 = type metadata accessor for SubscriptionStaticViewConfiguration();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_23BBDB748();

  return sub_23BA9BD38(v4);
}

uint64_t sub_23BA9BA84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  __swift_allocate_value_buffer(v0, qword_27E19E548);
  v1 = __swift_project_value_buffer(v0, qword_27E19E548);
  v2 = type metadata accessor for SubscriptionStaticViewConfiguration();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BA9BB00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  v3 = __swift_project_value_buffer(v2, qword_27E19E548);

  return sub_23BA9BC74(v3, a1);
}

uint64_t sub_23BA9BB84()
{
  sub_23BA9BCE4();

  return sub_23BBDA958();
}

uint64_t sub_23BA9BBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BA9BC74(a1, &v5 - v3);
  sub_23BA9BCE4();
  sub_23BBDA968();
  return sub_23BA9BD38(a1);
}

uint64_t sub_23BA9BC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BA9BCE4()
{
  result = qword_27E19E570;
  if (!qword_27E19E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E570);
  }

  return result;
}

uint64_t sub_23BA9BD38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19DF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA9BDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStaticViewConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA9BE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (*(v7 + 16) && (v8 = sub_23BB03A88(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
    sub_23BA9C1A0(v11 + *(*(v12 - 8) + 72) * v10, a3);
    v13 = a3;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
    v13 = a3;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  return swift_endAccess();
}

uint64_t sub_23BA9BF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_23BA9C1A0(a3, &v11 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  swift_beginAccess();

  sub_23BBC8CE0(v8, a1, a2);
  return swift_endAccess();
}

void *sub_23BA9C004()
{
  type metadata accessor for EntitlementCache();
  swift_allocObject();
  result = sub_23BA9C040();
  qword_27E1BFD68 = result;
  return result;
}

void *sub_23BA9C040()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  v0[14] = sub_23BBDCE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E578);
  v0[15] = sub_23BBDCE38();
  v0[16] = sub_23BBDCE38();
  return v0;
}

uint64_t sub_23BA9C0FC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23BA9C134()
{
  sub_23BA9C0FC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23BA9C1A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AutomaticSubscriptionStoreControlPlacement.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t static AutomaticSubscriptionStoreControlPlacement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AutomaticSubscriptionStoreControlPlacement.ContextualPlacementKey;
  result = sub_23BA9C264();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BA9C264()
{
  result = qword_27E19E580;
  if (!qword_27E19E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E580);
  }

  return result;
}

double static AutomaticSubscriptionStoreControlPlacement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static AutomaticSubscriptionStoreControlPlacement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

void static AutomaticSubscriptionStoreControlPlacement.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

void static AutomaticSubscriptionStoreControlPlacement.leading.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBEDA30);
}

void static AutomaticSubscriptionStoreControlPlacement.trailing.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4740);
}

void static AutomaticSubscriptionStoreControlPlacement.bottom.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBF4750);
}

uint64_t sub_23BA9C32C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = result & 1;
  a2[4] = 0;
  return result;
}

unint64_t sub_23BA9C348(uint64_t a1)
{
  result = sub_23BA9C370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA9C370()
{
  result = qword_27E19E588;
  if (!qword_27E19E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E588);
  }

  return result;
}

unint64_t sub_23BA9C404()
{
  result = qword_27E19E590;
  if (!qword_27E19E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E590);
  }

  return result;
}

unint64_t sub_23BA9C458(uint64_t a1)
{
  result = sub_23BA9C480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BA9C480()
{
  result = qword_27E19E598;
  if (!qword_27E19E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E598);
  }

  return result;
}

void sub_23BA9C4D4()
{
  sub_23BBDD768();
  sub_23BBDD798();

  MEMORY[0x23EEB5890](0xD000000000000019, 0x800000023BBE18F0);
  v0 = sub_23BBDDC38();
  MEMORY[0x23EEB5890](v0);

  sub_23BBDD908();
  __break(1u);
}

uint64_t sub_23BA9C5B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v32[2] = v5;
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5F8);
  v8 = OUTLINED_FUNCTION_13_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v33 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E600);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v32 - v13;
  sub_23BA9C904(v2, v10);
  v15 = v2[4];
  v16 = v2[5];
  if (!v16)
  {
    v15 = 0;
  }

  v32[0] = v15;
  v32[3] = type metadata accessor for SubscriptionOfferViewNoCodeSheet;
  sub_23BAA271C(v2, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v32[1] = type metadata accessor for SubscriptionOfferViewNoCodeSheet;
  sub_23BAA2A60(v6, v18 + v17);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_23BAA22B4;
  *(v19 + 24) = v18;
  v20 = &v14[*(v12 + 44)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E608);

  sub_23BBDD328();
  v22 = &v20[*(v21 + 40)];
  *v22 = v32[0];
  *(v22 + 1) = v16;
  *v20 = &unk_23BBF5A10;
  *(v20 + 1) = v19;
  sub_23B9A71D0(v33, v14, &qword_27E19E5F8);
  v24 = *v2;
  v23 = v2[1];
  sub_23BAA271C(v2, v6);
  v25 = swift_allocObject();
  sub_23BAA2A60(v6, v25 + v17);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E610);
  v27 = v34;
  v28 = (v34 + *(v26 + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A690);

  sub_23BBDD328();
  v30 = (v28 + *(v29 + 40));
  *v30 = v24;
  v30[1] = v23;
  *v28 = &unk_23BBF5A28;
  v28[1] = v25;
  return sub_23B9A71D0(v14, v27, &qword_27E19E600);
}

uint64_t sub_23BA9C904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v96 = type metadata accessor for NoCodeOfferView(0);
  MEMORY[0x28223BE20](v96);
  v87 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = sub_23BBDCDB8();
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x28223BE20](v15);
  v90 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v79 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E630);
  MEMORY[0x28223BE20](v93);
  v94 = &v79 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E638);
  MEMORY[0x28223BE20](v101);
  v95 = &v79 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E640);
  MEMORY[0x28223BE20](v104);
  v103 = &v79 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E648);
  MEMORY[0x28223BE20](v100);
  v23 = &v79 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E650);
  MEMORY[0x28223BE20](v105);
  v102 = &v79 - v24;
  v25 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v79 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  v34 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  v35 = a1;
  sub_23BBDBF68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23BAA271C(v33, v27);
      v46 = v97;
      v47 = v98;
      v48 = *(v98 + 32);
      v49 = v27;
      v50 = v99;
      v48(v97, v49, v99);
      sub_23BBDC8F8();
      v86 = sub_23BBDCB58();
      if (__swift_getEnumTagSinglePayload(v14, 1, v86) == 1)
      {
        (*(v47 + 8))(v46, v50);
        v51 = &qword_27E197B90;
        v52 = v14;
      }

      else
      {
        v85 = v48;
        sub_23B9846E8(v14, &qword_27E197B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0);
        v53 = v92;
        sub_23BBDBF68();
        v54 = sub_23BBDCC88();
        if (__swift_getEnumTagSinglePayload(v53, 1, v54) != 1)
        {
          sub_23B9846E8(v53, &unk_27E19FEF0);
          (*(v98 + 16))(v90, v97, v99);
          v55 = v91;
          sub_23BBDC8F8();
          if (__swift_getEnumTagSinglePayload(v55, 1, v86) == 1)
          {
            __break(1u);
          }

          else
          {
            v56 = v89;
            sub_23BBDBF68();
            if (__swift_getEnumTagSinglePayload(v56, 1, v54) != 1)
            {
              v57 = v54;
              v58 = *(v35 + 72);
              v92 = *(v35 + 64);
              v84 = v58;
              v83 = *(v35 + 80);
              v59 = (v35 + v34[11]);
              v60 = *v59;
              v61 = *(v59 + 2);
              v109 = v60;
              v110 = v61;
              v62 = *(v35 + 32);
              v82 = *(v35 + 48);
              v81 = v62;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628);
              sub_23BBDBF68();
              v80 = v107;
              v79 = v108;
              v63 = v34[7];
              v64 = (v35 + v34[8]);
              v66 = *v64;
              v65 = v64[1];
              v67 = v96;
              v68 = v87;
              sub_23B9A721C(v35 + v63, &v87[*(v96 + 40)], &qword_27E19E5B8);
              v85(v68, v90, v99);
              (*(*(v86 - 8) + 32))(v68 + v67[5], v91);
              (*(*(v57 - 8) + 32))(v68 + v67[6], v56, v57);
              v69 = v68 + v67[7];
              v70 = v82;
              *v69 = v81;
              *(v69 + 16) = v70;
              v71 = v84;
              *(v69 + 32) = v92;
              *(v69 + 40) = v71;
              *(v69 + 48) = v83;
              v72 = (v68 + v67[8]);
              v73 = v79;
              *v72 = v80;
              v72[1] = v73;
              v74 = (v68 + v67[9]);
              *v74 = v66;
              v74[1] = v65;
              v75 = v67[11];
              *(v68 + v75) = swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750);
              swift_storeEnumTagMultiPayload();
              v76 = v88;
              sub_23BAA2A60(v68, v88);
              sub_23BAA271C(v76, v94);
              swift_storeEnumTagMultiPayload();
              sub_23BAA2A08();
              sub_23BAA416C(&qword_27E19E680, type metadata accessor for NoCodeOfferView);

              v77 = v95;
              sub_23BBDACD8();
              sub_23B9A721C(v77, v23, &qword_27E19E638);
              swift_storeEnumTagMultiPayload();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668);
              sub_23BAA2894();
              sub_23BAA294C();
              v78 = v102;
              sub_23BBDACD8();
              sub_23B9846E8(v77, &qword_27E19E638);
              sub_23B9A721C(v78, v103, &qword_27E19E650);
              swift_storeEnumTagMultiPayload();
              sub_23BAA2808();
              sub_23B9CEBD4();
              sub_23BBDACD8();
              sub_23B9846E8(v78, &qword_27E19E650);
              sub_23BAA2AB8(v76, type metadata accessor for NoCodeOfferView);
              (*(v98 + 8))(v97, v99);
              return sub_23BAA2AB8(v33, type metadata accessor for Product.TaskState);
            }
          }

          __break(1u);
          JUMPOUT(0x23BA9D840);
        }

        (*(v98 + 8))(v97, v99);
        v51 = &unk_27E19FEF0;
        v52 = v53;
      }

      sub_23B9846E8(v52, v51);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23B9CEBD4();
      sub_23BBDACD8();
      return sub_23BAA2AB8(v33, type metadata accessor for Product.TaskState);
    case 2u:
      swift_storeEnumTagMultiPayload();
      sub_23BAA2A08();
      sub_23BAA416C(&qword_27E19E680, type metadata accessor for NoCodeOfferView);
      v41 = v95;
      sub_23BBDACD8();
      sub_23B9A721C(v41, v23, &qword_27E19E638);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668);
      sub_23BAA2894();
      sub_23BAA294C();
      v42 = v102;
      sub_23BBDACD8();
      sub_23B9846E8(v41, &qword_27E19E638);
      sub_23B9A721C(v42, v103, &qword_27E19E650);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23B9CEBD4();
      sub_23BBDACD8();
      v40 = v42;
      goto LABEL_5;
    case 3u:
      v107 = 0;
      LOBYTE(v108) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CC0);
      sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
      sub_23B9CEBD4();
      sub_23BBDACD8();
      v43 = BYTE8(v109);
      *v23 = v109;
      v23[8] = v43;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668);
      sub_23BAA2894();
      sub_23BAA294C();
      v44 = v102;
      sub_23BBDACD8();
      sub_23B9A721C(v44, v103, &qword_27E19E650);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23BBDACD8();
      v40 = v44;
      goto LABEL_5;
    default:
      sub_23BAA271C(v33, v30);
      v107 = *v30;
      v36 = v107;
      LOBYTE(v108) = 0;
      v37 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199CC0);
      sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
      sub_23B9CEBD4();
      sub_23BBDACD8();
      v38 = BYTE8(v109);
      *v23 = v109;
      v23[8] = v38;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E668);
      sub_23BAA2894();
      sub_23BAA294C();
      v39 = v102;
      sub_23BBDACD8();
      sub_23B9A721C(v39, v103, &qword_27E19E650);
      swift_storeEnumTagMultiPayload();
      sub_23BAA2808();
      sub_23BBDACD8();

      v40 = v39;
LABEL_5:
      sub_23B9846E8(v40, &qword_27E19E650);
      return sub_23BAA2AB8(v33, type metadata accessor for Product.TaskState);
  }
}

void sub_23BA9D850(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    sub_23BAA27A4();

    v3 = sub_23BA9F100(v2, v1, 0);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 localizedName];
      sub_23BBDD018();

      type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E628);
      sub_23BBDBF78();
    }
  }
}

uint64_t sub_23BA9D990(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_23BA9D9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23B9F3414;

  return sub_23BA9DA84();
}

uint64_t sub_23BA9DA84()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for Product.TaskState(0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v2 = sub_23BBDCC88();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v1[20] = swift_task_alloc();
  v3 = sub_23BBDCB58();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  v1[24] = swift_task_alloc();
  v4 = sub_23BBDCDB8();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v5 = sub_23BBDC5F8();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_23BBDD308();
  v1[32] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();
  v1[33] = v7;
  v1[34] = v6;

  return MEMORY[0x2822009F8](sub_23BA9DD94, v7, v6);
}

uint64_t sub_23BA9DD94()
{
  v1 = v0[10];
  v2 = v0[28];
  v3 = v0[29];
  if (v1[5])
  {
    v4 = v0[31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
    v5 = swift_allocObject();
    v0[35] = v5;
    *(v5 + 16) = xmmword_23BBE7F10;
    v6 = *v1;
    v7 = v1[1];
    v0[9] = v5;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    (*(v3 + 104))(v4, *MEMORY[0x277CDD0A8], v2);

    v8 = swift_task_alloc();
    v0[36] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
    OUTLINED_FUNCTION_13_19();
    sub_23B97B518(v9, qword_27E19B730);
    *v8 = v0;
    v8[1] = sub_23BA9E04C;
    v10 = OUTLINED_FUNCTION_17_0();

    return MEMORY[0x28212C670](v10);
  }

  else
  {
    v11 = v0[30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
    v12 = swift_allocObject();
    v0[38] = v12;
    *(v12 + 16) = xmmword_23BBE7F10;
    v13 = *v1;
    v14 = v1[1];
    v0[8] = v12;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    (*(v3 + 104))(v11, *MEMORY[0x277CDD0A8], v2);

    v15 = swift_task_alloc();
    v0[39] = v15;
    v16 = OUTLINED_FUNCTION_31_1();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_13_19();
    v19 = sub_23B97B518(v18, qword_27E19B730);
    *v15 = v0;
    v15[1] = sub_23BA9E6B0;
    v20 = v0[30];

    return MEMORY[0x28212C740](v0 + 8, v20, v17, v19);
  }
}

uint64_t sub_23BA9E04C()
{
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  v3[37] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_70();
    v8(v7);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9ED14;
  }

  else
  {
    (*(v3[29] + 8))(v3[31], v3[28]);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9E1C0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23BA9E1C0()
{
  v6 = v0[37];
  v7 = v0[3];

  v8 = v0[25];
  if (!v7)
  {
    v26 = OUTLINED_FUNCTION_20_9();
    __swift_storeEnumTagSinglePayload(v26, v27, 1, v8);
    goto LABEL_6;
  }

  sub_23BAC74B0(v7, v0[24]);

  v9 = OUTLINED_FUNCTION_20_9();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
  {
LABEL_6:
    v28 = OUTLINED_FUNCTION_19_12();
    sub_23B9846E8(v28, &qword_27E1987F0);
    sub_23BAA26C8();
    v29 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_8_25(v29, v30);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v31 = OUTLINED_FUNCTION_31_1();
    sub_23BAA271C(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v6, v33);
    v34 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_26_5(v34, v35);
    v25 = v6;
    goto LABEL_7;
  }

  v12 = v0[20];
  v11 = v0[21];
  v13 = OUTLINED_FUNCTION_24_9();
  v14(v13);
  sub_23BBDC8F8();
  v15 = OUTLINED_FUNCTION_20_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v11);
  v18 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    v19 = OUTLINED_FUNCTION_23_6();
    sub_23B9846E8(v19, &qword_27E197B90);
    sub_23BAA26C8();
    v20 = OUTLINED_FUNCTION_16_11();
    *v21 = v6;
    *v1 = v20;
    OUTLINED_FUNCTION_33_3();
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    sub_23BAA271C(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v1, v22);
    v23 = OUTLINED_FUNCTION_16_11();
    *v24 = v6;
    sub_23BA9EE88(v23);
    (*(v5 + 8))(v62, v12);
    v25 = v23;
LABEL_7:

    goto LABEL_8;
  }

  v39 = v0[16];
  v38 = v0[17];
  v40 = OUTLINED_FUNCTION_24_9();
  v41(v40);
  sub_23BBDCA58();
  v42 = swift_task_alloc();
  OUTLINED_FUNCTION_10_15(v42);

  __swift_getEnumTagSinglePayload(v39, 1, v38);
  OUTLINED_FUNCTION_21_11();
  if (v43)
  {
    v44 = v0[13];
    sub_23B9846E8(v0[16], &unk_27E19FEF0);
    sub_23BAA26C8();
    v45 = OUTLINED_FUNCTION_15_17();
    *v46 = 0;
    *v44 = v45;
    OUTLINED_FUNCTION_33_3();
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v47 = OUTLINED_FUNCTION_70();
    sub_23BAA271C(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v44, v49);
    v50 = OUTLINED_FUNCTION_15_17();
    *v51 = 0;
    sub_23BA9EE88(v50);
    (*(v5 + 8))();
    (*(v2 + 8))();
    v25 = v50;
    goto LABEL_7;
  }

  v52 = OUTLINED_FUNCTION_12_18();
  v53(v52);
  v54 = OUTLINED_FUNCTION_35_4();
  v55(v54);
  OUTLINED_FUNCTION_39_2();
  sub_23B9A721C(v39, v18, &unk_27E19FEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  sub_23B9846E8(v39, &unk_27E19FEF0);
  v56 = OUTLINED_FUNCTION_30_3();
  v57(v56);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_35();
  sub_23BAA271C(v4, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  OUTLINED_FUNCTION_0_34();
  sub_23BAA2AB8(v4, v58);
  (*(v38 + 8))(v61, v3);
  (*(v60 + 8))();
  (*(v2 + 8))(v18, v39);
LABEL_8:
  OUTLINED_FUNCTION_5_24();

  OUTLINED_FUNCTION_1_16();

  return v36();
}

uint64_t sub_23BA9E6B0()
{
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_70();
    v8(v7);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9ED14;
  }

  else
  {
    (*(v3[29] + 8))(v3[30], v3[28]);

    v9 = v3[33];
    v10 = v3[34];
    v11 = sub_23BA9E824;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23BA9E824()
{
  v6 = v0[40];
  v7 = v0[6];

  v8 = v0[25];
  if (!v7)
  {
    v26 = OUTLINED_FUNCTION_20_9();
    __swift_storeEnumTagSinglePayload(v26, v27, 1, v8);
    goto LABEL_6;
  }

  sub_23BAC74B0(v7, v0[24]);

  v9 = OUTLINED_FUNCTION_20_9();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
  {
LABEL_6:
    v28 = OUTLINED_FUNCTION_19_12();
    sub_23B9846E8(v28, &qword_27E1987F0);
    sub_23BAA26C8();
    v29 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_8_25(v29, v30);
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v31 = OUTLINED_FUNCTION_31_1();
    sub_23BAA271C(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v6, v33);
    v34 = OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_26_5(v34, v35);
    v25 = v6;
    goto LABEL_7;
  }

  v12 = v0[20];
  v11 = v0[21];
  v13 = OUTLINED_FUNCTION_24_9();
  v14(v13);
  sub_23BBDC8F8();
  v15 = OUTLINED_FUNCTION_20_9();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v11);
  v18 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    v19 = OUTLINED_FUNCTION_23_6();
    sub_23B9846E8(v19, &qword_27E197B90);
    sub_23BAA26C8();
    v20 = OUTLINED_FUNCTION_16_11();
    *v21 = v6;
    *v1 = v20;
    OUTLINED_FUNCTION_33_3();
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    sub_23BAA271C(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    OUTLINED_FUNCTION_27_3();
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v1, v22);
    v23 = OUTLINED_FUNCTION_16_11();
    *v24 = v6;
    sub_23BA9EE88(v23);
    (*(v5 + 8))(v62, v12);
    v25 = v23;
LABEL_7:

    goto LABEL_8;
  }

  v39 = v0[16];
  v38 = v0[17];
  v40 = OUTLINED_FUNCTION_24_9();
  v41(v40);
  sub_23BBDCA58();
  v42 = swift_task_alloc();
  OUTLINED_FUNCTION_10_15(v42);

  __swift_getEnumTagSinglePayload(v39, 1, v38);
  OUTLINED_FUNCTION_21_11();
  if (v43)
  {
    v44 = v0[13];
    sub_23B9846E8(v0[16], &unk_27E19FEF0);
    sub_23BAA26C8();
    v45 = OUTLINED_FUNCTION_15_17();
    *v46 = 0;
    *v44 = v45;
    OUTLINED_FUNCTION_33_3();
    type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
    OUTLINED_FUNCTION_1_35();
    v47 = OUTLINED_FUNCTION_70();
    sub_23BAA271C(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    sub_23BBDBF78();
    OUTLINED_FUNCTION_0_34();
    sub_23BAA2AB8(v44, v49);
    v50 = OUTLINED_FUNCTION_15_17();
    *v51 = 0;
    sub_23BA9EE88(v50);
    (*(v5 + 8))();
    (*(v2 + 8))();
    v25 = v50;
    goto LABEL_7;
  }

  v52 = OUTLINED_FUNCTION_12_18();
  v53(v52);
  v54 = OUTLINED_FUNCTION_35_4();
  v55(v54);
  OUTLINED_FUNCTION_39_2();
  sub_23B9A721C(v39, v18, &unk_27E19FEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  sub_23B9846E8(v39, &unk_27E19FEF0);
  v56 = OUTLINED_FUNCTION_30_3();
  v57(v56);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_35();
  sub_23BAA271C(v4, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  OUTLINED_FUNCTION_43_3();
  sub_23BBDBF78();
  OUTLINED_FUNCTION_0_34();
  sub_23BAA2AB8(v4, v58);
  (*(v38 + 8))(v61, v3);
  (*(v60 + 8))();
  (*(v2 + 8))(v18, v39);
LABEL_8:
  OUTLINED_FUNCTION_5_24();

  OUTLINED_FUNCTION_1_16();

  return v36();
}

uint64_t sub_23BA9ED14()
{

  __swift_storeEnumTagSinglePayload(*(v1 + 192), 1, 1, *(v1 + 200));
  v2 = OUTLINED_FUNCTION_19_12();
  sub_23B9846E8(v2, &qword_27E1987F0);
  sub_23BAA26C8();
  v3 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_8_25(v3, v4);
  type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_1_35();
  v5 = OUTLINED_FUNCTION_31_1();
  sub_23BAA271C(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  OUTLINED_FUNCTION_27_3();
  sub_23BBDBF78();
  OUTLINED_FUNCTION_0_34();
  sub_23BAA2AB8(v0, v7);
  v8 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_26_5(v8, v9);

  OUTLINED_FUNCTION_5_24();

  OUTLINED_FUNCTION_1_16();

  return v10();
}

void sub_23BA9EE88(uint64_t a1)
{
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_27E1BFC88);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_23BBDD768();
  MEMORY[0x23EEB5890](0xD00000000000001FLL, 0x800000023BBE1910);
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450);
  sub_23BBDD8B8();
  v4 = (v1 + *(type metadata accessor for SubscriptionOfferViewNoCodeSheet(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_23BBDD5A8();

  v8 = sub_23BBD9988();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v13 = v10;
    v14 = 91;
    v15 = 0xE100000000000000;
    MEMORY[0x23EEB5890](v5, v6);
    MEMORY[0x23EEB5890](8285, 0xE200000000000000);
    v11 = sub_23BA5AB90(91, 0xE100000000000000, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = sub_23BA5AB90(0, 0xE000000000000000, &v13);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_23B970000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v10, -1, -1);
    MEMORY[0x23EEB6DC0](v9, -1, -1);
  }

  else
  {
  }
}

id sub_23BA9F100(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23BBDCFE8();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_23BBD9668();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_23BA9F1F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBDCC38();
  v5 = *(a2 + 24);
  v6 = v5 == 0;
  if (v4)
  {
    if (v5)
    {
      if (v3 == *(a2 + 16) && v4 == v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_23BBDDA88();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_23BA9F280()
{
  v0 = sub_23BBD98B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_23BBD9898();
  KeyPath = swift_getKeyPath();
  v8 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199D90) + 36)];
  *v8 = KeyPath;
  v8[8] = 1;
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6D8) + 36)] = 1;
  (*(v1 + 104))(v3, *MEMORY[0x277D7EC68], v0);
  sub_23BAA3480();
  sub_23BBDB688();
  (*(v1 + 8))(v3, v0);
  return sub_23B9846E8(v6, &qword_27E19E6D0);
}

uint64_t sub_23BA9F48C()
{
  v0 = type metadata accessor for SKLogger();
  __swift_allocate_value_buffer(v0, qword_27E19E5A0);
  __swift_project_value_buffer(v0, qword_27E19E5A0);
  return sub_23BBD9998();
}

uint64_t sub_23BA9F50C()
{
  if (sub_23BBDC2A8())
  {
    sub_23BBDBD38();
    sub_23BBDBD18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270);
    sub_23BBDBDE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7C8);
    sub_23B97B518(&qword_27E19E7D0, &qword_27E19E7C8);
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BA9F630@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197898);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6F0);
  sub_23BAA35CC();
  v33 = v5;
  sub_23BBDA368();
  v6 = type metadata accessor for NoCodeOfferView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_23BAA271C(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BBDD308();
  v9 = sub_23BBDD2F8();
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_23BAA2A60(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v13 = sub_23BBDD368();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v27 - v16;
  sub_23BBDD328();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v31 = sub_23BBDA268();
    v32 = &v27;
    v30 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v29 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_23BBDD768();

    v37 = 0xD000000000000045;
    v38 = 0x800000023BBE1930;
    v36 = 277;
    v19 = sub_23BBDDA38();
    MEMORY[0x23EEB5890](v19);

    v28 = v3;
    v21 = MEMORY[0x28223BE20](v20);
    (*(v14 + 16))(&v27 - v16, &v27 - v16, v13, v21);
    v22 = v29;
    sub_23BBDA258();
    (*(v14 + 8))(v17, v13);
    (*(v34 + 32))(a1, v33, v28);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A0);
    return (*(v30 + 32))(a1 + *(v23 + 36), v22, v31);
  }

  else
  {
    v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1978A8) + 36));
    v26 = sub_23BBDA008();
    (*(v14 + 32))(&v25[*(v26 + 20)], &v27 - v16, v13);
    *v25 = &unk_23BBF5D20;
    *(v25 + 1) = v11;
    return (*(v34 + 32))(a1, v33, v3);
  }
}

uint64_t sub_23BA9FB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for NoCodeOfferView(0);
  v4 = (v3 - 8);
  v62 = *(v3 - 8);
  v64 = *(v62 + 8);
  MEMORY[0x28223BE20](v3);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionOfferViewNoCodeMarketingContent();
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E700);
  MEMORY[0x28223BE20](v61);
  v11 = &v56 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199748);
  v12 = sub_23BBDCDB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v59 = xmmword_23BBE7F10;
  *(v15 + 16) = xmmword_23BBE7F10;
  v16 = *(v13 + 16);
  v16(v15 + v14, a1, v12);
  *&v58 = sub_23BA96B58(v15, 0, 1);
  swift_setDeallocating();
  sub_23BBD27AC();
  v16(v9 + v7[7], a1, v12);
  v17 = v4[7];
  v18 = v7[8];
  v19 = sub_23BBDCB58();
  (*(*(v19 - 8) + 16))(v9 + v18, a1 + v17, v19);
  v20 = v4[8];
  v21 = v7[9];
  v22 = sub_23BBDCC88();
  (*(*(v22 - 8) + 16))(v9 + v21, a1 + v20, v22);
  v23 = v4[10];
  v24 = a1 + v4[9];
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);
  LOBYTE(v4) = *(v24 + 48);
  v28 = *(a1 + v23);
  v27 = *(a1 + v23 + 8);
  v29 = *v24;
  v56 = *(v24 + 16);
  v57 = v29;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  v30 = v9 + v7[10];
  v31 = v56;
  *v30 = v57;
  *(v30 + 1) = v31;
  *(v30 + 4) = v25;
  *(v30 + 5) = v26;
  v30[48] = v4;
  v32 = (v9 + v7[11]);
  *v32 = v28;
  v32[1] = v27;

  sub_23BA3B664(v58, 0, 0, 2, v9, 0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E798);
  v33 = swift_allocObject();
  *(v33 + 16) = v59;
  *(v33 + 32) = swift_getKeyPath();
  v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E750) + 36)];
  *v34 = 2;
  *(v34 + 1) = v33;
  v35 = sub_23BA9F50C();
  LOBYTE(v27) = sub_23BBDB398();
  v36 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E740) + 36)];
  *v36 = v35;
  v36[8] = v27;
  v37 = *(v24 + 32);
  v38 = *(v24 + 40);
  LOBYTE(v26) = *(v24 + 48);
  v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E730) + 36)];
  *(v39 + 11) = 0;
  *(v39 + 72) = 0u;
  *(v39 + 56) = 0u;
  v40 = *(v24 + 16);
  v58 = *v24;
  *v39 = v58;
  *(v39 + 1) = v40;
  *(v39 + 4) = v37;
  *(v39 + 5) = v38;
  v39[48] = v26;
  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  v43 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E720) + 36)];
  *v43 = KeyPath;
  v43[1] = sub_23BAA3D68;
  v43[2] = v42;
  *&v59 = type metadata accessor for NoCodeOfferView;
  v44 = a1;
  v45 = a1;
  v46 = v60;
  sub_23BAA271C(v45, v60);
  v47 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v48 = swift_allocObject();
  v62 = type metadata accessor for NoCodeOfferView;
  sub_23BAA2A60(v46, v48 + v47);
  v49 = swift_getKeyPath();
  v50 = &v11[*(v61 + 36)];
  *v50 = v49;
  v50[8] = 0;
  *(v50 + 2) = &unk_23BBF5DC8;
  *(v50 + 3) = v48;
  v65 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E708);
  sub_23BAA36F4();
  sub_23B97B518(&qword_27E19E790, &qword_27E19E708);
  v51 = v63;
  sub_23BBDBBC8();
  sub_23B9846E8(v11, &qword_27E19E700);
  sub_23BAA271C(v44, v46);
  v52 = swift_allocObject();
  sub_23BAA2A60(v46, v52 + v47);
  v53 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E6F0);
  v55 = v51 + *(result + 36);
  *v55 = v53;
  *(v55 + 8) = 0;
  *(v55 + 16) = &unk_23BBF5E00;
  *(v55 + 24) = v52;
  return result;
}

uint64_t sub_23BAA01E4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_23BBDC928();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_23BBDCBA8();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  v2[15] = swift_task_alloc();
  v5 = sub_23BBDCC88();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_23BBDD308();
  v2[19] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BAA0400, v7, v6);
}

void sub_23BAA0400()
{

  v1 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v3 = v2;
  if (v1 == _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_23BBDDA88();

    if ((v6 & 1) == 0)
    {
      if (qword_27E1977C0 != -1)
      {
        OUTLINED_FUNCTION_3_25();
      }

      v7 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v7, qword_27E19E5A0);
      OUTLINED_FUNCTION_42_3();
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000040, 0x800000023BBE19F0);
      v8 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      MEMORY[0x23EEB5890](v8);

      MEMORY[0x23EEB5890](0x6C6175746341202ELL, 0xEA0000000000203ALL);
      v9 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      MEMORY[0x23EEB5890](v9);

      v11 = v57;
      v10 = v58;
      type metadata accessor for NoCodeOfferView(0);
      v12 = sub_23BBDD5A8();

      v13 = sub_23BBD9988();

      if (os_log_type_enabled(v13, v12))
      {
        v14 = OUTLINED_FUNCTION_132();
        OUTLINED_FUNCTION_131();
        *v14 = 136446466;
        OUTLINED_FUNCTION_40_4();
        OUTLINED_FUNCTION_133();
        sub_23BA5AB90(v57, v58, &v56);

        OUTLINED_FUNCTION_45_2();
        v16 = sub_23BA5AB90(v11, v10, v15);

        *(v14 + 14) = v16;
        v17 = v12;
LABEL_18:
        _os_log_impl(&dword_23B970000, v13, v17, "%{public}s%{public}s", v14, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_3();
        OUTLINED_FUNCTION_15_3();
LABEL_22:

LABEL_23:

        OUTLINED_FUNCTION_113();

        __asm { BRAA            X2, X16 }
      }

      goto LABEL_21;
    }
  }

  v18 = v0[14];
  sub_23BBDC8F8();
  v19 = sub_23BBDCB58();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v0[14], &qword_27E197B90);
    v24 = OUTLINED_FUNCTION_20_9();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v21);
  }

  else
  {
    v26 = v0[7];
    v27 = sub_23BBDCA58();
    OUTLINED_FUNCTION_1_4();
    (*(v28 + 8))(v23, v19);
    *(swift_task_alloc() + 16) = v26;
    sub_23B9FC890(sub_23BAA41B4, v27, v22);

    v29 = OUTLINED_FUNCTION_20_9();
    if (__swift_getEnumTagSinglePayload(v29, v30, v21) != 1)
    {
      v44 = v0[17];
      v43 = v0[18];
      v45 = v0[16];
      v47 = v0[9];
      v46 = v0[10];
      v48 = v0[8];
      v49 = OUTLINED_FUNCTION_24_9();
      v50(v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2B0);
      sub_23BBDC9A8();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_23BBE94D0;
      sub_23BBDC948();
      (*(v47 + 104))(v46, *MEMORY[0x277CDD1A8], v48);
      sub_23BBDC938();
      v52 = OUTLINED_FUNCTION_31_1();
      v53(v52);
      sub_23BA6879C(v51);
      (*(v44 + 8))(v43, v45);
      goto LABEL_23;
    }
  }

  sub_23B9846E8(v0[15], &unk_27E19FEF0);
  if (qword_27E1977C0 != -1)
  {
    OUTLINED_FUNCTION_3_25();
  }

  v31 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v31, qword_27E19E5A0);
  OUTLINED_FUNCTION_42_3();
  sub_23BBDD768();
  v32 = v58;
  v0[2] = v57;
  v0[3] = v32;
  MEMORY[0x23EEB5890](0xD000000000000015, 0x800000023BBE1A40);
  type metadata accessor for NoCodeOfferView(0);
  sub_23BBDCC48();
  sub_23BBDD8B8();
  v33 = OUTLINED_FUNCTION_70();
  v34(v33);
  MEMORY[0x23EEB5890](32, 0xE100000000000000);
  v0[4] = sub_23BBDCC38();
  v0[5] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2C0);
  v36 = sub_23BBDD038();
  MEMORY[0x23EEB5890](v36);

  MEMORY[0x23EEB5890](0x20726F6620, 0xE500000000000000);
  v37 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  MEMORY[0x23EEB5890](v37);

  v39 = v0[2];
  v38 = v0[3];
  v40 = sub_23BBDD5A8();

  v13 = sub_23BBD9988();

  if (os_log_type_enabled(v13, v40))
  {
    v14 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_131();
    *v14 = 136446466;
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_133();
    sub_23BA5AB90(v57, v58, &v56);

    OUTLINED_FUNCTION_45_2();
    v42 = sub_23BA5AB90(v39, v38, v41);

    *(v14 + 14) = v42;
    v17 = v40;
    goto LABEL_18;
  }

LABEL_21:

  goto LABEL_22;
}

uint64_t sub_23BAA0B78()
{
  v0 = sub_23BBDCC38();
  v2 = v1;
  type metadata accessor for NoCodeOfferView(0);
  v3 = sub_23BBDCC38();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v6 = 1;
      }

      else
      {
        v6 = sub_23BBDDA88();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_23BAA0C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7A0);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7A8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = sub_23BBDADE8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7B0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  sub_23BBDADC8();
  v17[4] = a1;
  sub_23BAA4118();
  sub_23BBD9C78();
  sub_23BBDADD8();
  type metadata accessor for EnvironmentActionUIKitDismissButton();
  sub_23BAA416C(&qword_27E19E7C0, type metadata accessor for EnvironmentActionUIKitDismissButton);
  sub_23BBD9C78();
  v15 = *(v3 + 48);
  (*(v12 + 16))(v5, v14, v11);
  (*(v7 + 16))(&v5[v15], v9, v6);
  sub_23BBDABC8();
  (*(v7 + 8))(v9, v6);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_23BAA0F68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = type metadata accessor for NoCodeOfferView(0);
  v5 = a1 + *(result + 28);
  if (*(v5 + 8))
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = 3;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_23BAA0FB4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BAA1014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_23BBD9E48();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v5 = sub_23BBDC9B8();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D288);
  v3[12] = swift_task_alloc();
  sub_23BBDD308();
  v3[13] = sub_23BBDD2F8();
  v7 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BAA11AC, v7, v6);
}

uint64_t sub_23BAA11AC()
{
  v1 = v0[12];
  v2 = v0[2];

  sub_23B9A721C(v2, v1, &qword_27E19D288);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9846E8(v0[12], &qword_27E19D288);
  }

  else
  {
    v3 = v0[9];
    v4 = v0[7];
    v5 = v0[8];
    (*(v5 + 32))(v0[10], v0[12], v4);
    v6 = OUTLINED_FUNCTION_17_0();
    v7(v6);
    v8 = (*(v5 + 88))(v3, v4);
    v9 = v0[10];
    if (v8 == *MEMORY[0x277CDD1C8])
    {
      (*(v0[8] + 8))(v0[10], v0[7]);
    }

    else
    {
      v10 = v0[8];
      v12 = v0[6];
      v11 = v0[7];
      v13 = v0[4];
      v14 = v0[5];
      type metadata accessor for NoCodeOfferView(0);
      sub_23B9B762C();
      sub_23BBD9E38();
      (*(v14 + 8))(v12, v13);
      v15 = *(v10 + 8);
      v15(v9, v11);
      v16 = OUTLINED_FUNCTION_31_1();
      (v15)(v16);
    }
  }

  OUTLINED_FUNCTION_1_16();

  return v17();
}

uint64_t sub_23BAA13A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_23BBDD308();
  v3[3] = sub_23BBDD2F8();
  v5 = *(type metadata accessor for NoCodeOfferView(0) + 24);
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_23BA31378;

  return sub_23BAA1460(a3 + v5);
}

uint64_t sub_23BAA1460(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8);
  v2[5] = swift_task_alloc();
  v3 = sub_23BBDC838();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_23BBDD308();
  v2[9] = sub_23BBDD2F8();
  v5 = sub_23BBDD2D8();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_23BAA158C, v5, v4);
}

uint64_t sub_23BAA158C()
{
  v41 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for NoCodeOfferView(0);
  sub_23B9A721C(v3 + v4[10], v2, &qword_27E19E5B8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 40);

    sub_23B9846E8(v5, &qword_27E19E5B8);
    if (qword_27E1977C0 != -1)
    {
      OUTLINED_FUNCTION_3_25();
    }

    v6 = *(v0 + 32);
    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_27E19E5A0);
    v8 = (v6 + v4[9]);
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_23BBDD598();

    v12 = sub_23BBD9988();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = OUTLINED_FUNCTION_132();
      v14 = OUTLINED_FUNCTION_131();
      *v13 = 136446466;
      v38 = v14;
      v39 = 91;
      v40 = 0xE100000000000000;
      MEMORY[0x23EEB5890](v9, v10);
      OUTLINED_FUNCTION_133();
      v15 = sub_23BA5AB90(91, 0xE100000000000000, &v38);

      *(v13 + 4) = v15;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_23BA5AB90(0xD00000000000002BLL, 0x800000023BBE1980, &v38);
      _os_log_impl(&dword_23B970000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    OUTLINED_FUNCTION_1_16();
    OUTLINED_FUNCTION_113();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  if (qword_27E1977C0 != -1)
  {
    OUTLINED_FUNCTION_3_25();
  }

  v18 = *(v0 + 32);
  v19 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v19, qword_27E19E5A0);
  sub_23BBDD768();

  v39 = 0xD00000000000001ELL;
  v40 = 0x800000023BBE19B0;
  *(v0 + 16) = sub_23BBDC828();
  v20 = sub_23BBDDA38();
  MEMORY[0x23EEB5890](v20);

  v21 = v40;
  v22 = (v18 + v4[9]);
  v24 = *v22;
  v23 = v22[1];
  v25 = sub_23BBDD5B8();

  v26 = sub_23BBD9988();

  if (os_log_type_enabled(v26, v25))
  {
    v37 = v39;
    v27 = OUTLINED_FUNCTION_132();
    v38 = OUTLINED_FUNCTION_131();
    *v27 = 136446466;
    v39 = 91;
    v40 = 0xE100000000000000;
    MEMORY[0x23EEB5890](v24, v23);
    OUTLINED_FUNCTION_133();
    v28 = sub_23BA5AB90(91, 0xE100000000000000, &v38);

    *(v27 + 4) = v28;
    *(v27 + 12) = 2082;
    v29 = sub_23BA5AB90(v37, v21, &v38);

    *(v27 + 14) = v29;
    _os_log_impl(&dword_23B970000, v26, v25, "%{public}s%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  else
  {
  }

  v30 = *(v0 + 32) + v4[7];
  v31 = *(v30 + 8);
  *(v0 + 96) = v31;
  if (v31)
  {
    v32 = *(v30 + 16);
    v33 = *(v30 + 32);
  }

  else
  {
    v32 = 0uLL;
    v33 = 0uLL;
  }

  *(v0 + 112) = v32;
  *(v0 + 128) = v33;
  *(v0 + 144) = v31 == 0;

  v34 = swift_task_alloc();
  *(v0 + 104) = v34;
  *v34 = v0;
  v34[1] = sub_23BAA1AC0;
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_113();

  return MEMORY[0x28212C590]();
}

uint64_t sub_23BAA1AC0()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23BAA1BF8, v5, v4);
}

uint64_t sub_23BAA1BF8()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_1_16();

  return v4();
}

uint64_t sub_23BAA1C8C(char a1)
{
  if ((a1 & 0xFC) != 0)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_23BAA1CD4@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BAA1C8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23BAA1D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA9F1E8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_23BAA1D40(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[9];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0);
      v10 = a3[10];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_23BAA1E74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
      OUTLINED_FUNCTION_10_2();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0);
        v11 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BAA1FBC()
{
  sub_23BAA21DC(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23BAA21DC(319, &qword_27E19A3B0, &type metadata for ClientOverrideValues, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23BAA30F0(319, &qword_27E19E5D8, MEMORY[0x277CDD160], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23BAA30F0(319, &qword_27E199198, type metadata accessor for Product.TaskState, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_23BAA2178();
          if (v4 <= 0x3F)
          {
            sub_23BAA21DC(319, &qword_27E19E5E8, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
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

void sub_23BAA2178()
{
  if (!qword_27E19E5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E19FEF0);
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19E5E0);
    }
  }
}

void sub_23BAA21DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23BAA2240()
{
  result = qword_27E19E5F0;
  if (!qword_27E19E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E5F0);
  }

  return result;
}

void sub_23BAA22B4()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_23BA9D850(v3);
}

uint64_t sub_23BAA2310()
{

  return swift_deallocObject();
}

uint64_t sub_23BAA2348()
{
  OUTLINED_FUNCTION_4_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_17_0();

  return v4(v3);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_57();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v1[7];
  v5 = sub_23BBDC838();
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = (v3 + v1[9]);
  type metadata accessor for Product.TaskState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_12_1();
    (*(v9 + 8))(v7);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);

  v10 = v3 + v1[10];
  v11 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5C0);

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BAA2608()
{
  OUTLINED_FUNCTION_3_13();
  v0 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  OUTLINED_FUNCTION_13_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4_18(v1);
  *v2 = v3;
  v2[1] = sub_23BA027BC;

  return sub_23BA9D9F4();
}

unint64_t sub_23BAA26C8()
{
  result = qword_27E19E618;
  if (!qword_27E19E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E618);
  }

  return result;
}

uint64_t sub_23BAA271C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

unint64_t sub_23BAA27A4()
{
  result = qword_27E19E620;
  if (!qword_27E19E620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19E620);
  }

  return result;
}

unint64_t sub_23BAA2808()
{
  result = qword_27E19E658;
  if (!qword_27E19E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E650);
    sub_23BAA2894();
    sub_23BAA294C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E658);
  }

  return result;
}

unint64_t sub_23BAA2894()
{
  result = qword_27E19E660;
  if (!qword_27E19E660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E668);
    sub_23B97B518(&qword_27E199CE0, &qword_27E199CC0);
    sub_23B9CEBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E660);
  }

  return result;
}

unint64_t sub_23BAA294C()
{
  result = qword_27E19E670;
  if (!qword_27E19E670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E638);
    sub_23BAA2A08();
    sub_23BAA416C(&qword_27E19E680, type metadata accessor for NoCodeOfferView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E670);
  }

  return result;
}

unint64_t sub_23BAA2A08()
{
  result = qword_27E19E678;
  if (!qword_27E19E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E678);
  }

  return result;
}

uint64_t sub_23BAA2A60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23BAA2AB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_23BAA2B14(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23BAA2BE0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BAA2C2C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_23BBDCB58();
    OUTLINED_FUNCTION_10_2();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_23BBDCC88();
      OUTLINED_FUNCTION_10_2();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_18_0(*(v3 + a3[8] + 8));
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8);
        OUTLINED_FUNCTION_10_2();
        if (*(v17 + 84) == a2)
        {
          v8 = v16;
          v12 = a3[10];
        }

        else
        {
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0);
          v12 = a3[11];
        }
      }
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_23BAA2DD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_12_3();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_23BBDCB58();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_23BBDCC88();
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[8] + 8) = (a2 - 1);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8);
        OUTLINED_FUNCTION_10_2();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[10];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0);
          v14 = a4[11];
        }
      }
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BAA2F78()
{
  sub_23BBDCDB8();
  if (v0 <= 0x3F)
  {
    sub_23BBDCB58();
    if (v1 <= 0x3F)
    {
      sub_23BBDCC88();
      if (v2 <= 0x3F)
      {
        sub_23BAA21DC(319, &qword_27E19A3B0, &type metadata for ClientOverrideValues, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23BAA30F0(319, &qword_27E19E5D8, MEMORY[0x277CDD160], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23BAA30F0(319, &qword_27E19AE08, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
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

void sub_23BAA30F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_23BAA3168()
{
  result = qword_27E19E698;
  if (!qword_27E19E698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E610);
    sub_23BAA3220();
    sub_23B97B518(qword_27E19A738, &qword_27E19A690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E698);
  }

  return result;
}

unint64_t sub_23BAA3220()
{
  result = qword_27E19E6A0;
  if (!qword_27E19E6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E600);
    sub_23BAA32D8();
    sub_23B97B518(&qword_27E19E6C0, &qword_27E19E608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6A0);
  }

  return result;
}

unint64_t sub_23BAA32D8()
{
  result = qword_27E19E6A8;
  if (!qword_27E19E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E5F8);
    sub_23BAA335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6A8);
  }

  return result;
}

unint64_t sub_23BAA335C()
{
  result = qword_27E19E6B0;
  if (!qword_27E19E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6B8);
    sub_23BAA2808();
    sub_23B9CEBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6B0);
  }

  return result;
}

unint64_t sub_23BAA33EC()
{
  result = qword_27E19E6C8;
  if (!qword_27E19E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6C8);
  }

  return result;
}

unint64_t sub_23BAA3480()
{
  result = qword_27E19E6E0;
  if (!qword_27E19E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6D0);
    sub_23BAA3538();
    sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6E0);
  }

  return result;
}

unint64_t sub_23BAA3538()
{
  result = qword_27E19E6E8;
  if (!qword_27E19E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6D8);
    sub_23B9CF720();
    sub_23B9A243C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6E8);
  }

  return result;
}

unint64_t sub_23BAA35CC()
{
  result = qword_27E19E6F8;
  if (!qword_27E19E6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E708);
    sub_23BAA36F4();
    sub_23B97B518(&qword_27E19E790, &qword_27E19E708);
    swift_getOpaqueTypeConformance2();
    sub_23BA678CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E6F8);
  }

  return result;
}

unint64_t sub_23BAA36F4()
{
  result = qword_27E19E710;
  if (!qword_27E19E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E700);
    sub_23BAA3780();
    sub_23BA677E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E710);
  }

  return result;
}

unint64_t sub_23BAA3780()
{
  result = qword_27E19E718;
  if (!qword_27E19E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E720);
    sub_23BAA3838();
    sub_23B97B518(&qword_27E19E780, &qword_27E19E788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E718);
  }

  return result;
}

unint64_t sub_23BAA3838()
{
  result = qword_27E19E728;
  if (!qword_27E19E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E730);
    sub_23BAA38F0();
    sub_23B97B518(&qword_27E19E770, &qword_27E19E778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E728);
  }

  return result;
}

unint64_t sub_23BAA38F0()
{
  result = qword_27E19E738;
  if (!qword_27E19E738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E740);
    sub_23BAA39A8();
    sub_23B97B518(&qword_27E19E760, &qword_27E19E768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E738);
  }

  return result;
}

unint64_t sub_23BAA39A8()
{
  result = qword_27E19E748;
  if (!qword_27E19E748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E750);
    sub_23B97B518(&qword_27E19E758, &qword_27E19C4E0);
    sub_23B97B518(qword_27E19B460, &qword_27E19B458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E748);
  }

  return result;
}

uint64_t sub_23BAA3A8C()
{
  v1 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v0 + ((v3 + 32) & ~v3);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v4);
  v6 = v1[5];
  sub_23BBDCB58();
  OUTLINED_FUNCTION_12_1();
  (*(v7 + 8))(v4 + v6);
  v8 = v1[6];
  sub_23BBDCC88();
  OUTLINED_FUNCTION_12_1();
  (*(v9 + 8))(v4 + v8);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  v10 = v1[10];
  v11 = sub_23BBDC838();
  if (!OUTLINED_FUNCTION_47_2(v11))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v4 + v10, v8);
  }

  v13 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9E48();
    OUTLINED_FUNCTION_12_1();
    (*(v14 + 8))(v4 + v13);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BAA3C78()
{
  OUTLINED_FUNCTION_4_11();
  v1 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_13_0(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_18(v6);
  *v7 = v8;
  v7[1] = sub_23BA027BC;

  return sub_23BAA13A0(v4, v5, v0 + v3);
}

uint64_t sub_23BAA3D74()
{
  OUTLINED_FUNCTION_4_11();
  v2 = v1;
  v3 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_13_0(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_18(v6);
  *v7 = v8;
  v7[1] = sub_23B9F36B4;

  return sub_23BAA01E4(v2, v0 + v5);
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_57();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v3);
  v5 = v1[5];
  sub_23BBDCB58();
  OUTLINED_FUNCTION_12_1();
  (*(v6 + 8))(v3 + v5);
  v7 = v1[6];
  sub_23BBDCC88();
  OUTLINED_FUNCTION_12_1();
  (*(v8 + 8))(v3 + v7);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_38_2();
  v9 = v1[10];
  v10 = sub_23BBDC838();
  if (!OUTLINED_FUNCTION_47_2(v10))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v11 + 8))(v3 + v9, v7);
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBD9E48();
    OUTLINED_FUNCTION_12_1();
    (*(v13 + 8))(v3 + v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23BAA4034()
{
  OUTLINED_FUNCTION_4_11();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for NoCodeOfferView(0);
  OUTLINED_FUNCTION_13_0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_18(v8);
  *v9 = v10;
  v9[1] = sub_23B9F3414;

  return sub_23BAA1014(v4, v2, v0 + v7);
}

unint64_t sub_23BAA4118()
{
  result = qword_27E19E7B8;
  if (!qword_27E19E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E7B8);
  }

  return result;
}

uint64_t sub_23BAA416C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BAA41D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E6D0);
  sub_23BAA3480();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BAA4238()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_23B97B518(&qword_27E19E7D8, &qword_27E197898);
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;
  *v2 = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_23B9FC890(sub_23BAA2774, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_16_11()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_26_5(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  sub_23BA9EE88(a1);
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
}

void OUTLINED_FUNCTION_40_4()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_23BAA4628@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDB038();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((a1 & 1) == 0)
  {
    sub_23BBD9B18();
    *(&v10 + 1) = v12;
    *(&v11 + 1) = v13;
  }

  v17[0] = v10;
  v17[1] = v11;
  v18 = a1 & 1;
  sub_23BBDB028();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E898);
  (*(*(v14 - 8) + 16))(a2, v3, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8A0);
  return (*(v7 + 32))(a2 + *(v15 + 36), v9, v6);
}

uint64_t sub_23BAA47A4@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDB038();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  if ((a1 & 1) == 0)
  {
    sub_23BBD9B18();
  }

  sub_23BBDB028();
  sub_23B9A721C(v3, a2, &qword_27E19E9C8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9D0);
  return (*(v8 + 32))(a2 + *(v13 + 36), v12, v6);
}

uint64_t sub_23BAA48E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  return a1();
}

uint64_t sub_23BAA4958@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v4 = sub_23BBDA928();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E980);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  (*(v8 + 16))(v11, v2 + *(a1 + 36), v7, v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E988);
  v19 = sub_23BBDC208();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E990);
  v21 = sub_23BAA89FC();
  *&v65 = v19;
  *(&v65 + 1) = MEMORY[0x277CE1350];
  *&v66 = v19;
  *(&v66 + 1) = v20;
  *&v67 = MEMORY[0x277CE12C8];
  *(&v67 + 1) = MEMORY[0x277CE1340];
  *&v68 = MEMORY[0x277CE12C8];
  *(&v68 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEB4950](v11, sub_23BAA5010, 0, v18, v7, OpaqueTypeConformance2, *(a1 + 24));
  sub_23BAA50D4(&v88);
  KeyPath = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v23 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v23, 0);
    (*(v53 + 8))(v6, v54);
    if (v80 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    *&v61[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9B8);
    sub_23BBDBF58();
    v24 = *(&v65 + 1);
    v26 = v65;
    v48 = swift_getKeyPath();
    v47 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    v28 = swift_getKeyPath();
    LOBYTE(v65) = 0;
    LOBYTE(v61[0]) = 0;
    LOBYTE(v63[0]) = 0;
    LOBYTE(v62[0]) = 0;
    v53 = 0;
    v25 = 1;
    v49 = 0;
    v50 = v28;
    goto LABEL_6;
  }

  v80 = v23 & 1;
  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = 0;
  v47 = 0;
  v48 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v25 = 0;
  v26 = 1;
LABEL_6:
  v45 = 0;
  v46 = v17;
  v29 = v58;
  v30 = *(v59 + 16);
  v31 = v17;
  v32 = v60;
  v30(v58, v31, v60);
  v33 = v51;
  v30(v51, v29, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9A0);
  v35 = *(v34 + 48);
  v61[0] = v88;
  v61[1] = v89;
  v61[2] = v90;
  v61[3] = v91;
  *&v61[4] = KeyPath;
  BYTE8(v61[4]) = 0;
  *(&v61[4] + 9) = *v87;
  HIDWORD(v61[4]) = *&v87[3];
  *&v61[5] = v57;
  BYTE8(v61[5]) = 0;
  HIDWORD(v61[5]) = *&v86[3];
  *(&v61[5] + 9) = *v86;
  *&v61[6] = v56;
  BYTE8(v61[6]) = 0;
  *(&v61[6] + 9) = *v85;
  HIDWORD(v61[6]) = *&v85[3];
  *&v61[7] = v55;
  BYTE8(v61[7]) = 0;
  memcpy(&v33[v35], v61, 0x79uLL);
  v36 = *(v34 + 64);
  v44 = v25;
  v62[0] = v25;
  v62[1] = v26;
  v37 = v47;
  v38 = v48;
  v62[2] = v24;
  v62[3] = v48;
  v62[4] = v53;
  v62[5] = v47;
  v62[6] = 0;
  v62[7] = v54;
  v39 = v49;
  v40 = v50;
  v62[8] = v49;
  v62[9] = v50;
  LOBYTE(v62[10]) = 0;
  memcpy(&v33[v36], v62, 0x51uLL);
  sub_23B9A721C(v61, &v65, &qword_27E19E9A8);
  sub_23B9A721C(v62, &v65, &qword_27E19E9B0);
  v41 = *(v59 + 8);
  v41(v46, v60);
  v63[0] = v44;
  v63[1] = v26;
  v63[2] = v24;
  v63[3] = v38;
  v63[4] = v53;
  v63[5] = v37;
  v63[6] = v45;
  v63[7] = v54;
  v63[8] = v39;
  v63[9] = v40;
  v64 = 0;
  sub_23B979910(v63, &qword_27E19E9B0);
  v65 = v88;
  v66 = v89;
  v67 = v90;
  v68 = v91;
  v69 = KeyPath;
  v70 = 0;
  *v71 = *v87;
  *&v71[3] = *&v87[3];
  v72 = v57;
  v73 = 0;
  *&v74[3] = *&v86[3];
  *v74 = *v86;
  v75 = v56;
  v76 = 0;
  *v77 = *v85;
  *&v77[3] = *&v85[3];
  v78 = v55;
  v79 = 0;
  sub_23B979910(&v65, &qword_27E19E9A8);
  return (v41)(v58, v60);
}

uint64_t sub_23BAA5010()
{
  sub_23BBDC2B8();
  sub_23BBDC208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E990);
  sub_23BAA89FC();
  return sub_23BBDBC48();
}

uint64_t sub_23BAA50D4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_23BBDBF58();
  v4 = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  j__swift_retain_1();
  sub_23BA52D18(v3, 0);

  sub_23BA52D18(v4, 0);

  sub_23B97B5C0(v4, 0);
  j__swift_release(KeyPath, 0);
  return sub_23B97B5C0(v3, 0);
}

uint64_t sub_23BAA51DC(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  KeyPath = swift_getKeyPath();
  v6 = 0;
  v7 = swift_getKeyPath();
  v8 = 0;
  v9 = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x23EEB43C0](&KeyPath, a1, &type metadata for AuxiliaryButtonsStyleModifier, a2);
}

void sub_23BAA52D0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v43 = v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E908);
  OUTLINED_FUNCTION_7();
  v40 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E910);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = *(v2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E918);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E920);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 == 1 || byte_27E1A04D0 == 3 && (storekit_dyld_fall_2024_os_versions(), dyld_program_sdk_at_least()))
  {
    sub_23BAA4958(v2, v16);
    (*(v11 + 16))(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v2);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = *(v2 + 16);
    (*(v11 + 32))(v21 + v20, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E958);
    OUTLINED_FUNCTION_4_21();
    sub_23B97B518(v22, v23);
    sub_23BAA8898();
    sub_23BBDBE08();
    sub_23B9A721C(v19, v10, &qword_27E19E920);
    swift_storeEnumTagMultiPayload();
    sub_23BAA8658();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E948);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10);
    OUTLINED_FUNCTION_3_26();
    v27 = sub_23B97B518(v26, &qword_27E19E948);
    OUTLINED_FUNCTION_1_36();
    v29 = sub_23B97B518(v28, &qword_27E198F10);
    v45 = v24;
    v46 = v25;
    v47 = v27;
    v48 = v29;
    OUTLINED_FUNCTION_6_19();
    sub_23BBDACD8();
    sub_23B979910(v19, &qword_27E19E920);
  }

  else
  {
    sub_23BAA4958(v2, v16);
    OUTLINED_FUNCTION_4_21();
    sub_23B97B518(v30, &qword_27E19E918);
    sub_23BAA59A4();
    sub_23B979910(v16, &qword_27E19E918);
    v31 = v40;
    v32 = v44;
    (*(v40 + 16))(v10, v7, v44);
    swift_storeEnumTagMultiPayload();
    v41 = sub_23BAA8658();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E948);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10);
    OUTLINED_FUNCTION_3_26();
    v36 = sub_23B97B518(v35, &qword_27E19E948);
    OUTLINED_FUNCTION_1_36();
    v38 = sub_23B97B518(v37, &qword_27E198F10);
    v45 = v33;
    v46 = v34;
    v47 = v36;
    v48 = v38;
    OUTLINED_FUNCTION_6_19();
    sub_23BBDACD8();
    (*(v31 + 8))(v7, v32);
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAA5830@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E978);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  if (sub_23BA20C8C())
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }

  else
  {
    type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
    sub_23BBDAA98();
    sub_23BAA59A4();
    (*(v3 + 32))(a1, v5, v2);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }
}

void sub_23BAA59A4()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v23[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  sub_23BBDC2A8();
  v18 = *(v5 + 24);
  v23[4] = *(v5 + 16);
  v23[5] = v3;
  v23[6] = v18;
  v23[7] = v1;
  v23[8] = v7;
  sub_23B9BE15C();
  sub_23BBDC068();
  v19 = *MEMORY[0x277CDF9A8];
  v20 = sub_23BBDA308();
  OUTLINED_FUNCTION_4_1();
  (*(v21 + 104))(v11, v19, v20);
  sub_23BAA91C4(&qword_27E198F50, MEMORY[0x277CDFA28]);
  if (sub_23BBDCF38())
  {
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_36();
    sub_23B97B518(v22, &qword_27E198F10);
    sub_23BBDB898();
    sub_23B979910(v11, &qword_27E198F10);
    (*(v14 + 8))(v17, v12);
    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23BAA5C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88(v8, v11, v12);
  sub_23B9D2D88(v10, a3, a5);
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_23BAA5D18()
{
  v0 = sub_23BBDAD08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDA568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E7E0);
  sub_23B97B518(qword_27E19E7E8, &qword_27E19E7E0);
  sub_23BAA91C4(&qword_27E197F30, MEMORY[0x277CDDFF8]);
  sub_23BBDB758();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23BAA5E94()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23BBDC2A8())
  {
    v13 = *(v0 + 24);
    v5 = v0[2];
    v12 = v5;
    if (v13 == 1)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v6 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v12, &qword_27E19CC48);
      (*(v2 + 8))(v4, v1);
      if (v10 != 1)
      {
        return 0;
      }
    }

    v11 = *(v0 + 8);
    v10 = *v0;
    if (v11 != 1)
    {

      sub_23BBDD5A8();
      v7 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v10, &qword_27E19E900);
      (*(v2 + 8))(v4, v1);
    }
  }

  return 0;
}

uint64_t sub_23BAA60DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a1;
  v75 = a2;
  v58 = sub_23BBDA928();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E870);
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v56 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E878);
  MEMORY[0x28223BE20](v65);
  v66 = &v56 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E880);
  MEMORY[0x28223BE20](v74);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v56 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E888);
  MEMORY[0x28223BE20](v72);
  v73 = &v56 - v11;
  v12 = sub_23BBDB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for StoreKitProminentButtonStyle(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E890);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E898);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v25 = &v56 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8A0);
  MEMORY[0x28223BE20](v71);
  v62 = &v56 - v26;
  v27 = sub_23BBDC2A8();
  v70 = v3;
  if ((v27 & 1) == 0)
  {
    v63 = v5;
    v80 = *(v3 + 40);
    v36 = *(v3 + 32);
    v79 = v36;
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8B0);
      sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0);
      sub_23BBDBAB8();
      v37 = v36;
    }

    else
    {

      sub_23BBDD5A8();
      v38 = sub_23BBDB338();
      sub_23BBD9978();

      v39 = v56;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v79, &qword_27E19E8A8);
      v40 = *(v57 + 8);
      v41 = v58;
      v40(v39, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8B0);
      sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0);
      sub_23BBDBAB8();

      sub_23BBDD5A8();
      v42 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B979910(&v79, &qword_27E19E8A8);
      v40(v39, v41);
      v37 = v77;
    }

    if ((v37 & 0xFE) == 2)
    {
      v78 = *(v70 + 56);
      v43 = *(v70 + 48);
      v77 = v43;
      v44 = v78;

      if ((v44 & 1) == 0)
      {
        sub_23BBDD5A8();
        v45 = sub_23BBDB338();
        sub_23BBD9978();

        v46 = v56;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B979910(&v77, &qword_27E19E8F8);
        (*(v57 + 8))(v46, v58);
        v43 = v76;
      }

      KeyPath = swift_getKeyPath();
      if (!v43)
      {
        v48 = 0;
LABEL_15:
        v49 = v60;
        v50 = v66;
        v51 = v69;
        v52 = v63;
        (*(v60 + 16))(v66, v69, v63);

        v53 = (v50 + *(v65 + 36));
        *v53 = KeyPath;
        v53[1] = v48;
        (*(v49 + 8))(v51, v52);
        v54 = v64;
        sub_23B9A71D0(v50, v64, &qword_27E19E878);
        v35 = &qword_27E19E880;
        v34 = v67;
        sub_23B9A71D0(v54, v67, &qword_27E19E880);
        sub_23B9A721C(v34, v73, &qword_27E19E880);
        goto LABEL_16;
      }
    }

    else
    {
      v43 = sub_23BBDBD68();
      KeyPath = swift_getKeyPath();
    }

    v76 = v43;

    v48 = sub_23BBD9DF8();
    goto LABEL_15;
  }

  v28 = sub_23BBDB578();
  v29 = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E8B0);
  (*(*(v30 - 8) + 16))(v23, v68, v30);
  v31 = &v23[*(v21 + 36)];
  *v31 = v29;
  v31[1] = v28;
  v32 = swift_getKeyPath();
  LOBYTE(v77) = 0;
  *v20 = v32;
  v20[73] = 0;
  (*(v13 + 104))(v17, *MEMORY[0x277CE0AC0], v12);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v79 = qword_27E1BFCB0;
  (*(v13 + 16))(v59, v17, v12);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v13 + 8))(v17, v12);
  v20[*(v18 + 24)] = 1;
  v20[*(v18 + 28)] = 0;
  sub_23BAA835C();
  sub_23BAA91C4(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle);
  sub_23BBDB738();
  sub_23B9A1B00(v20);
  sub_23B979910(v23, &qword_27E19E890);
  sub_23BBDB388();
  sub_23BAA5E94();
  v34 = v62;
  sub_23BAA4628(v33 & 1, v62);
  (*(v61 + 8))(v25, v63);
  v35 = &qword_27E19E8A0;
  sub_23B9A721C(v34, v73, &qword_27E19E8A0);
LABEL_16:
  swift_storeEnumTagMultiPayload();
  sub_23BAA8214();
  sub_23BAA8440();
  sub_23BBDACD8();
  return sub_23B979910(v34, v35);
}

uint64_t sub_23BAA6C3C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E9F8);
  sub_23B97B518(&qword_27E19EA00, &qword_27E19E9F8);
  sub_23B9898BC();
  sub_23BBDB728();
}

void sub_23BAA6D50()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v46 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA08);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1983A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - v14;
  v15 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v43 = v9;
  if (v1)
  {
    if ((v3 & 1) == 0)
    {
LABEL_3:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA10);
      v23 = v46;
      v24 = 1;
      goto LABEL_10;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    OUTLINED_FUNCTION_17_0();
    swift_getAtKeyPath();
    sub_23B97B5C0(v3, 0);
    (*(v17 + 8))(v21, v15);
    if (v47 != 1)
    {
      goto LABEL_3;
    }
  }

  v26 = swift_allocObject();
  v27 = v7 & 1;
  *(v26 + 16) = v7 & 1;
  *(v26 + 24) = v5;
  *(v26 + 32) = v3;
  *(v26 + 40) = v1 & 1;
  sub_23BA52D18(v3, v1 & 1);

  sub_23BBDBFA8();
  LOBYTE(v47) = v7 & 1;
  v48 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF68();
  v28 = v50[0];
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA18) + 36)];
  *v31 = KeyPath;
  v31[1] = sub_23B989418;
  v31[2] = v30;
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA20) + 36)];
  if (qword_27E197748 != -1)
  {
    swift_once();
  }

  type metadata accessor for CanMakePaymentsCache(0);
  sub_23BAA91C4(&qword_27E1982E8, type metadata accessor for CanMakePaymentsCache);

  *v32 = sub_23BBDA0E8();
  v32[1] = v33;
  v34 = *(type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier(0) + 20);
  *(v32 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982F0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v50[0]) = v27;
  v51 = v5;
  sub_23BBDBF88();
  v35 = v47;
  v36 = v48;
  v37 = v49;
  v38 = swift_getKeyPath();
  v53 = 0;
  v52 = 0;
  v39 = &v12[*(v43 + 36)];
  *v39 = v38;
  v39[8] = 0;
  *(v39 + 9) = v47;
  *(v39 + 3) = *(&v47 + 3);
  *(v39 + 2) = v35;
  *(v39 + 3) = v36;
  v39[32] = v37;
  *(v39 + 33) = v50[0];
  *(v39 + 9) = *(v50 + 3);
  *(v39 + 5) = nullsub_1;
  *(v39 + 6) = 0;
  *(v39 + 7) = sub_23BA4293C;
  *(v39 + 8) = 0;
  v39[72] = v52;
  if (qword_27E197648 != -1)
  {
    OUTLINED_FUNCTION_8_26();
  }

  sub_23BAA8EDC();

  v40 = v44;
  sub_23BBDBA28();

  sub_23B979910(v12, &qword_27E19EA08);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA40);
  sub_23BAA9108();
  sub_23BAA920C();
  v41 = v46;
  sub_23BBDBC48();
  sub_23B979910(v40, &qword_27E1983A0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA10);
  v23 = v41;
  v24 = 0;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAA7394@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_23BAA7484()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v36 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1982A0);
  OUTLINED_FUNCTION_7();
  v33 = v10;
  v34 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1983A8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = v22 - v21;

  if ((v5 & 1) == 0)
  {
    sub_23BBDD5A8();
    v24 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_17();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(v7, 0);
    (*(v19 + 8))(v23, v17);
    v7 = v38;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  if (v1)
  {
    if ((v3 & 1) == 0)
    {
LABEL_6:

LABEL_7:
      v25 = 1;
      v26 = v36;
      goto LABEL_12;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_17();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v3, 0);
    (*(v19 + 8))(v23, v17);
    if (v37 != 1)
    {
      goto LABEL_6;
    }
  }

  v29 = *(v7 + 16);
  v28 = *(v7 + 24);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;

  sub_23BBDBFA8();
  if (qword_27E197648 != -1)
  {
    OUTLINED_FUNCTION_8_26();
  }

  sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0);

  v31 = v34;
  sub_23BBDBA28();

  (*(v33 + 8))(v13, v31);
  sub_23BBDC2B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA60);
  sub_23BAA92D8();
  sub_23BAA93C0();
  v26 = v36;
  sub_23BBDBC48();

  sub_23B979910(v16, qword_27E1983A8);
  v25 = 0;
LABEL_12:
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA58);
  __swift_storeEnumTagSinglePayload(v26, v25, 1, v32);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAA78F8@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

BOOL sub_23BAA7A00()
{
  sub_23BA17678();
  sub_23BBDA958();
  return v1 == 1;
}

BOOL sub_23BAA7A44()
{
  sub_23BA17678();
  sub_23BBDA958();
  return v1 == 1;
}

BOOL sub_23BAA7A88()
{
  sub_23BA17678();
  sub_23BBDA958();
  if (v2)
  {
    return v2 == 1;
  }

  sub_23BAA8AEC();
  sub_23BBDA958();
  result = v1;
  if (v1)
  {

    return 1;
  }

  return result;
}

BOOL sub_23BAA7B1C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAA7A00();
  *v0 = result;
  return result;
}

uint64_t sub_23BAA7B60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BAA7BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_23BAA7C04()
{
  sub_23B9D2354();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAA7C8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFE)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
      }

      v16 = *(a1 + 8);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_23BAA7E1C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 9) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BAA8074);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v8 > 0xFE)
        {
          v21 = &a1[v10 + 9] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if (a2 > 0xFE)
        {
          a1[8] = 0;
          *a1 = (a2 - 255);
        }

        else
        {
          a1[8] = -a2;
        }
      }

      return;
  }
}

uint64_t sub_23BAA809C()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_23BBDAD08();
  OUTLINED_FUNCTION_5_25(qword_27E19E7E8);
  sub_23BAA91C4(&qword_27E197F30, MEMORY[0x277CDDFF8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BAA81BC()
{
  OUTLINED_FUNCTION_13_1();
  result = MEMORY[0x23EEB3000]();
  *v0 = result;
  return result;
}

unint64_t sub_23BAA8214()
{
  result = qword_27E19E8C0;
  if (!qword_27E19E8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E890);
    type metadata accessor for StoreKitProminentButtonStyle(255);
    sub_23BAA835C();
    sub_23BAA91C4(&qword_27E198BD8, type metadata accessor for StoreKitProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_23BAA91C4(&qword_27E1985A8, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8C0);
  }

  return result;
}

unint64_t sub_23BAA835C()
{
  result = qword_27E19E8C8;
  if (!qword_27E19E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E890);
    sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0);
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8C8);
  }

  return result;
}

unint64_t sub_23BAA8440()
{
  result = qword_27E19E8D0;
  if (!qword_27E19E8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E880);
    sub_23BAA84CC();
    sub_23BAA85F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8D0);
  }

  return result;
}

unint64_t sub_23BAA84CC()
{
  result = qword_27E19E8D8;
  if (!qword_27E19E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E8B0);
    sub_23B97B518(&qword_27E19E8B8, &qword_27E19E8B0);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E19E8E0, &qword_27E19E8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8D8);
  }

  return result;
}

unint64_t sub_23BAA85F4()
{
  result = qword_27E19E8F0;
  if (!qword_27E19E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E8F0);
  }

  return result;
}

unint64_t sub_23BAA8658()
{
  result = qword_27E19E930;
  if (!qword_27E19E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E920);
    sub_23B97B518(&qword_27E19E938, &qword_27E19E940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E930);
  }

  return result;
}

uint64_t sub_23BAA8708()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for SubscriptionStoreStandardButtonsSectionView() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  sub_23B97B5C0(*(v0 + v3), *(v0 + v3 + 8));
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_23BAA87FC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView();

  return sub_23BAA5830(a1);
}

unint64_t sub_23BAA8898()
{
  result = qword_27E19E960;
  if (!qword_27E19E960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10);
    sub_23B97B518(&qword_27E19E970, &qword_27E19E968);
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E960);
  }

  return result;
}

unint64_t sub_23BAA89FC()
{
  result = qword_27E19E998;
  if (!qword_27E19E998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E990);
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E998);
  }

  return result;
}

BOOL sub_23BAA8A90()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAA7A88();
  *v0 = result;
  return result;
}

BOOL sub_23BAA8ABC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAA7A44();
  *v0 = result;
  return result;
}

unint64_t sub_23BAA8AEC()
{
  result = qword_27E19E9C0;
  if (!qword_27E19E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E9C0);
  }

  return result;
}

uint64_t sub_23BAA8B50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BAA8BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23BAA8C20()
{
  result = qword_27E19E9D8;
  if (!qword_27E19E9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E9E0);
    sub_23BAA8214();
    sub_23BAA8440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E9D8);
  }

  return result;
}

unint64_t sub_23BAA8CB0()
{
  result = qword_27E19E9E8;
  if (!qword_27E19E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E9F0);
    sub_23BAA8658();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19E948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10);
    sub_23B97B518(&qword_27E19E950, &qword_27E19E948);
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19E9E8);
  }

  return result;
}

uint64_t sub_23BAA8E60()
{

  sub_23B97B5C0(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_23BAA8EDC()
{
  result = qword_27E19EA28;
  if (!qword_27E19EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA08);
    sub_23BAA8F68();
    sub_23BA44198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA28);
  }

  return result;
}

unint64_t sub_23BAA8F68()
{
  result = qword_27E19EA30;
  if (!qword_27E19EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA20);
    sub_23BAA9024();
    sub_23BAA91C4(&qword_27E198318, type metadata accessor for DisabledWhenInAppPurchaseIsDisabledModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA30);
  }

  return result;
}

unint64_t sub_23BAA9024()
{
  result = qword_27E19EA38;
  if (!qword_27E19EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA18);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0);
    sub_23B97B518(&qword_27E198308, &qword_27E198310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA38);
  }

  return result;
}

unint64_t sub_23BAA9108()
{
  result = qword_27E19EA48;
  if (!qword_27E19EA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1983A0);
    sub_23BAA8EDC();
    sub_23BAA91C4(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA48);
  }

  return result;
}

uint64_t sub_23BAA91C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BAA920C()
{
  result = qword_27E19EA50;
  if (!qword_27E19EA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA40);
    sub_23BAA9108();
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA50);
  }

  return result;
}

uint64_t sub_23BAA9298()
{

  return swift_deallocObject();
}

unint64_t sub_23BAA92D8()
{
  result = qword_27E19EA68;
  if (!qword_27E19EA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1983A8);
    sub_23B97B518(&qword_27E1982C8, &qword_27E1982A0);
    sub_23BAA91C4(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA68);
  }

  return result;
}

unint64_t sub_23BAA93C0()
{
  result = qword_27E19EA70;
  if (!qword_27E19EA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA60);
    sub_23BAA92D8();
    sub_23B9892EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA70);
  }

  return result;
}

uint64_t sub_23BAA944C()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_5_25(&qword_27E19EA00);
  sub_23B9898BC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BAA94DC()
{
  result = qword_27E19EA78;
  if (!qword_27E19EA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1983A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA40);
    sub_23BAA9108();
    sub_23BAA920C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA78);
  }

  return result;
}

unint64_t sub_23BAA95E4()
{
  result = qword_27E19EA88;
  if (!qword_27E19EA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1983A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA60);
    sub_23BAA92D8();
    sub_23BAA93C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EA88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_25(unint64_t *a1)
{

  return sub_23B97B518(a1, v1);
}

uint64_t OUTLINED_FUNCTION_6_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_17()
{

  return sub_23BBD9978();
}

uint64_t LargeProductViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ProductViewStyleConfiguration();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BA0EFA4(a1, v7);
  sub_23B998028(v7, 0, a2);
  v8 = *(a1 + *(v5 + 36));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EA98);
  *(a2 + v9[9]) = v8;
  v10 = v9[10];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + v9[11];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EAA0) + 36);
  sub_23BA0EFA4(a1, v12);
  v13 = *(type metadata accessor for ConfigureProductViewEnvironmentViewModifier() + 20);
  *(v12 + v13) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
}

_BYTE *storeEnumTagSinglePayload for LargeProductViewStyle(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x23BAA9A38);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BAA9A74()
{
  result = qword_27E19EAA8;
  if (!qword_27E19EAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EAA0);
    sub_23BAA9B00();
    sub_23B9AABBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EAA8);
  }

  return result;
}

unint64_t sub_23BAA9B00()
{
  result = qword_27E19EAB0;
  if (!qword_27E19EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EAB0);
  }

  return result;
}

char *sub_23BAA9BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_2_27();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GradientBlurView.PlatformViewType();
  (*(v5 + 16))(v8, v2, v3);
  return sub_23BAA9C94(v8);
}

void sub_23BAA9D0C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v15 - v2, v1);
  sub_23BBD9EE8();
  v4 = sub_23BBD9EA8();
  if (v4)
  {
    v5 = v4;
    v6 = sub_23BAAA584();
    if (v6)
    {

      v7 = sub_23BAAA584();
      if (v7)
      {
        v8 = v7;
        sub_23BAAA820();
      }

      v9 = sub_23BAAA584();
      if (v9)
      {
        v10 = v9;
        v11 = v5;
        sub_23BAAA890(v5);
      }

      sub_23BAAA904();
    }

    else
    {
      type metadata accessor for VariableBlurFilter();
      v5 = v5;
      v14 = sub_23BAAA664(v5);
      sub_23BAAA708(v14);
    }
  }

  else
  {
    v12 = sub_23BAAA584();
    if (v12)
    {
      v13 = v12;
      sub_23BAAA820();
    }

    sub_23BAAA904();
  }
}

uint64_t sub_23BAA9F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_23BAA9F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_23BAAA008()
{
  swift_getWitnessTable();
  sub_23BBDAC88();
  __break(1u);
}

char *sub_23BAAA048(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  OUTLINED_FUNCTION_2_27();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  *&v2[qword_27E19EAC0] = 0;
  sub_23BBD9EF8();
  (*(v7 + 16))(v10, a1, v5);
  *&v2[qword_27E19EAB8] = MEMORY[0x23EEB26B0](v10);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = [v11 layer];
  [v12 setMasksToBounds_];

  sub_23BAA9D0C(a1);
  sub_23BAAA230();
  v14 = v13;
  (*(v7 + 8))(a1, v5);
  *&v11[qword_27E19EAC0] = v14;

  return v11;
}

void sub_23BAAA230()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23BBDD308();

  v8 = sub_23BBDD2F8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = *((v2 & v1) + 0x58);
  v9[5] = *((v2 & v1) + 0x60);
  v9[6] = v7;

  sub_23BB5D2B8();
}

uint64_t sub_23BAAA3A8(void *a1)
{
  swift_getObjectType();

  *(v1 + qword_27E19EAC0) = 0;
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_23BAAA430()
{
}

id sub_23BAAA470()
{
  ObjectType = swift_getObjectType();
  v2 = qword_27E19EAC0;
  if (*&v0[qword_27E19EAC0])
  {

    sub_23BBDD378();
  }

  *&v0[v2] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23BAAA538()
{
}

uint64_t sub_23BAAA584()
{
  v1 = [v0 layer];
  v2 = [v1 filters];

  if (!v2)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  v3 = sub_23BBDD248();

  sub_23BAC78F4(v3, &v6);

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_23B9F4DFC(&v6);
    return 0;
  }

  type metadata accessor for VariableBlurFilter();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id sub_23BAAA664(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [v3 initWithType_];
  sub_23BAAA820();
  v5 = a1;
  sub_23BAAA890(a1);
  sub_23BAAB324();
  sub_23BAAB394();

  return v4;
}

void sub_23BAAA708(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = [v2 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23BBE7F10;
    *(v5 + 56) = type metadata accessor for VariableBlurFilter();
    *(v5 + 32) = a1;
    v6 = a1;
    v7 = sub_23BBDD238();

    [v4 setFilters_];
  }

  else
  {
    v7 = [v1 layer];
    [v7 setFilters_];
  }
}

void sub_23BAAA820()
{
  sub_23BBD9878();
  OUTLINED_FUNCTION_1_37();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v1, sel_setValue_forKey_);
}

void sub_23BAAA890(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_1_37();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v3, sel_setValue_forKey_);
}

void sub_23BAAA904()
{
  v1 = sub_23BAAA584();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 layer];
    [v3 setFilters_];

    v4 = [v0 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A438);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23BBE7F10;
    *(v5 + 56) = type metadata accessor for VariableBlurFilter();
    *(v5 + 32) = v2;
    v6 = v2;
    v7 = sub_23BBDD238();

    [v4 setFilters_];
  }
}

uint64_t sub_23BAAAA34()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];

  sub_23BBD9EC8();
  [v0 frame];
  if (v3 == 0.0 && v2 == 0.0)
  {
    sub_23BBDA418();
  }

  else
  {
    [v0 frame];
  }

  return sub_23BBD9EB8();
}

uint64_t sub_23BAAAB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19EBD0);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_23BBDD308();
  v6[15] = sub_23BBDD2F8();
  v9 = sub_23BBDD2D8();
  v6[16] = v9;
  v6[17] = v8;

  return MEMORY[0x2822009F8](sub_23BAAAC24, v9, v8);
}

uint64_t sub_23BAAAC24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[11];
    v6 = v0[12];

    v7 = sub_23BBD9EF8();
    WitnessTable = swift_getWitnessTable();
    sub_23BA2183C(v7, WitnessTable, v4);

    (*(v6 + 32))(v3, v4, v5);
    swift_beginAccess();
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_0_35(v9);

    return MEMORY[0x28210E838](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_23BAAADE0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_23BAAAF00, v3, v2);
}

uint64_t sub_23BAAAF00()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);

    (*(v3 + 8))(v1, v2);
LABEL_13:

    v20 = *(v0 + 8);

    return v20();
  }

  if ((sub_23BBDD388() & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));

    goto LABEL_13;
  }

  v5 = Strong;
  sub_23BAAAA34();
  v6 = sub_23BBD9EA8();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v9 = sub_23BAAA584();

    if (v9)
    {
      v10 = v7;
      sub_23BAAA890(v7);
    }

    v5 = v7;
  }

  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_0_35();

  return MEMORY[0x28210E838](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_23BAAB118()
{
  sub_23BAAB140();

  return swift_getObjCClassFromMetadata();
}

id sub_23BAAB148(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for BackdropFilterView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23BAAB1F8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BackdropFilterView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23BAAB2B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropFilterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23BAAB324()
{
  v0 = sub_23BBDD2C8();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v1, sel_setValue_forKey_);
}

void sub_23BAAB394()
{
  sub_23BBDD2C8();
  OUTLINED_FUNCTION_1_37();
  sub_23BBDCFE8();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_4_22(v1, sel_setValue_forKey_);
}

id sub_23BAAB44C(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_23BBDCFE8();

  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, *a3, v6);

  return v7;
}

id sub_23BAAB528(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t sub_23BAAB5E0()
{
  result = qword_27E19EBC8;
  if (!qword_27E19EBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E19EBC8);
  }

  return result;
}

uint64_t sub_23BAAB624()
{
  MEMORY[0x23EEB6E70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_23BAAB65C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23BAAB69C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B9897C0;

  return sub_23BAAAB14(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_23BAAB764()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BAAB7DC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(a1 + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      case 2:
        v12 = *(a1 + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAAB8E0);
      case 4:
        v12 = *(a1 + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *a1;
        }

        return v5 + (v8 | v13) + 1;
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(a1, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(a1, v5, v4);
}

void sub_23BAAB8F4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
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
  }

  if (a2 > v7)
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        return;
      case 2:
        *&a1[v8] = v13;
        return;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_34:
      __break(1u);
      JUMPOUT(0x23BAABA8CLL);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

id OUTLINED_FUNCTION_4_22(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

unint64_t sub_23BAABB78()
{
  result = qword_27E19EC58;
  if (!qword_27E19EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19EC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC58);
  }

  return result;
}

double sub_23BAABBDC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDAA88();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0118]);
  sub_23BBDB5A8();
  result = *&v8;
  v6 = v9;
  *a1 = v8;
  *(a1 + 16) = v6;
  *(a1 + 32) = v10;
  return result;
}

double sub_23BAABD0C@<D0>(uint64_t a1@<X8>)
{
  sub_23BAABBDC(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_23BAABD54(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

uint64_t sub_23BAABDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BAABF8C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BAABE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BAABF8C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BAABE90(uint64_t a1)
{
  v2 = sub_23BAABF8C();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_23BAABEE0()
{
  result = qword_27E19EC68;
  if (!qword_27E19EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC68);
  }

  return result;
}

unint64_t sub_23BAABF38()
{
  result = qword_27E19EC70;
  if (!qword_27E19EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC70);
  }

  return result;
}

unint64_t sub_23BAABF8C()
{
  result = qword_27E19EC78;
  if (!qword_27E19EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19EC78);
  }

  return result;
}

void sub_23BAAC000()
{
  sub_23BAAC074();
  if (v0 <= 0x3F)
  {
    sub_23BBDC298();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23BAAC074()
{
  if (!qword_27E19ECA8)
  {
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19ECA8);
    }
  }
}

uint64_t sub_23BAAC0C4()
{
  sub_23BAAC1CC();

  return sub_23BBDA958();
}

uint64_t sub_23BAAC10C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  sub_23BAAE9D4(a1, &v7 - v3, &qword_27E199810);
  sub_23BAAC1CC();
  sub_23BBDA968();
  OUTLINED_FUNCTION_18_13();
  return sub_23B979910(v4, v5);
}

unint64_t sub_23BAAC1CC()
{
  result = qword_27E19ECB0;
  if (!qword_27E19ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ECB0);
  }

  return result;
}

uint64_t sub_23BAAC230@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECD8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v106 - v3;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECE0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v6);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECE8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2();
  v119 = v8;
  v117 = type metadata accessor for StructuredScrollViewMaterialBackground(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v11 - v10);
  v111 = sub_23BBDC298();
  OUTLINED_FUNCTION_7();
  v109 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v15 - v14);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2();
  v128 = v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECF8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2();
  v123 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v21);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED08);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v23);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED10);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  v125 = v25;
  v112 = type metadata accessor for StructuredScrollViewGradientMaterialBackground(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v29 = (v28 - v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED18);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_2();
  v129 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v106 - v34;
  v36 = _s34StructuredScrollViewBackgroundModeOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v37);
  v39 = (&v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v42 = &v106 - v41;
  sub_23B9B7858();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_23B979910(v35, &qword_27E199810);
    *v4 = swift_getKeyPath();
    v4[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_23BAAE010();
    sub_23BAAE3F8();
    return sub_23BBDACD8();
  }

  else
  {
    v108 = v30;
    v120 = v4;
    sub_23BAAE44C(v35, v42);
    sub_23BAAE558(v42, v39, _s34StructuredScrollViewBackgroundModeOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45 = v120;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        *&v114 = v1;
        v66 = v109;
        v67 = v115;
        v68 = v111;
        (*(v109 + 32))(v115, v39, v111);
        v69 = v110;
        (*(v66 + 16))(v110, v67, v68);
        v113 = type metadata accessor for StructuredScrollViewMaterialBackground;
        sub_23BAAE558(v69, v118, type metadata accessor for StructuredScrollViewMaterialBackground);
        swift_storeEnumTagMultiPayload();
        v107 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED68);
        OUTLINED_FUNCTION_5_26();
        v72 = sub_23BAAE2F8(v70, v71);
        OUTLINED_FUNCTION_4_23();
        OUTLINED_FUNCTION_18_13();
        sub_23BAAE8FC(v73, v74, v75, v76);
        v39 = v119;
        sub_23BBDACD8();
        sub_23BAAE9D4(v39, v123, &qword_27E19ECE8);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        OUTLINED_FUNCTION_11_17();
        sub_23BBDACD8();
        OUTLINED_FUNCTION_18_13();
        sub_23B979910(v77, v78);
        sub_23BAAE9D4(v72, v128, &qword_27E19ED10);
        OUTLINED_FUNCTION_21_12();
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        OUTLINED_FUNCTION_18_13();
        v42 = v107;
        sub_23B979910(v79, v80);
        sub_23BAAE5B4(v69, v113);
        (*(v66 + 8))(v115, v68);
        break;
      case 2:
        swift_storeEnumTagMultiPayload();
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        break;
      case 3:
        *v29 = 0x3FF0000000000000;
        v58 = *(v112 + 20);
        *(v29 + v58) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
        swift_storeEnumTagMultiPayload();
        v119 = type metadata accessor for StructuredScrollViewGradientMaterialBackground;
        sub_23BAAE558(v29, v113, type metadata accessor for StructuredScrollViewGradientMaterialBackground);
        swift_storeEnumTagMultiPayload();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED48);
        OUTLINED_FUNCTION_2_28();
        sub_23BAAE2F8(v60, v61);
        OUTLINED_FUNCTION_6_20();
        sub_23B97B518(v62, &qword_27E19ED48);
        v63 = v114;
        v45 = v120;
        sub_23BBDACD8();
        v39 = v123;
        sub_23BAAE9D4(v63, v123, &qword_27E19ED08);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        OUTLINED_FUNCTION_11_17();
        sub_23BBDACD8();
        v64 = OUTLINED_FUNCTION_17_0();
        sub_23B979910(v64, v65);
        sub_23BAAE9D4(v59, v128, &qword_27E19ED10);
        OUTLINED_FUNCTION_21_12();
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        sub_23B979910(v59, &qword_27E19ED10);
        sub_23BAAE5B4(v29, v119);
        break;
      case 4:
        v47 = v113;
        *v113 = sub_23BAAD100;
        *(v47 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        v48 = OUTLINED_FUNCTION_17_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48);
        OUTLINED_FUNCTION_2_28();
        sub_23BAAE2F8(v49, v50);
        OUTLINED_FUNCTION_6_20();
        OUTLINED_FUNCTION_4_8();
        sub_23B97B518(v51, v52);
        v39 = v114;
        sub_23BBDACD8();
        sub_23BAAE9D4(v39, v123, &qword_27E19ED08);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        v53 = v125;
        sub_23BBDACD8();
        OUTLINED_FUNCTION_4_8();
        sub_23B979910(v54, v55);
        sub_23BAAE9D4(v53, v128, &qword_27E19ED10);
        OUTLINED_FUNCTION_21_12();
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        OUTLINED_FUNCTION_4_8();
        sub_23B979910(v56, v57);
        break;
      default:
        v46 = *v39;
        v107 = v42;
        if (v46)
        {
          KeyPath = swift_getKeyPath();
          v132 = 0;
          v133 = v46;
          v134 = 0;
          v115 = v46;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED78);
          sub_23BAAE340();
          sub_23BAAE3F8();
          sub_23BBDACD8();
        }

        else
        {
          v83 = swift_getKeyPath();
          v132 = 0;
          v133 = 0;
          KeyPath = v83;
          v134 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED78);
          sub_23BAAE340();
          sub_23BAAE3F8();
          sub_23BBDACD8();
          v115 = 0;
        }

        v84 = v136;
        v85 = v137;
        v114 = v135;
        v86 = v118;
        *v118 = v135;
        *(v86 + 2) = v84;
        *(v86 + 24) = v85;
        v130 = v84;
        swift_storeEnumTagMultiPayload();
        v88 = BYTE8(v114);
        v87 = v114;
        v89 = OUTLINED_FUNCTION_7_28();
        sub_23BAAE4B0(v89, v90, v91, v92);
        v93 = OUTLINED_FUNCTION_7_28();
        sub_23BAAE4B0(v93, v94, v95, v96);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ED68);
        OUTLINED_FUNCTION_5_26();
        sub_23BAAE2F8(v97, v98);
        OUTLINED_FUNCTION_4_23();
        sub_23BAAE8FC(v99, &qword_27E19ED68, &unk_23BBF6D98, v100);
        v101 = v119;
        sub_23BBDACD8();
        v39 = &qword_27E19ECE8;
        sub_23BAAE9D4(v101, v123, &qword_27E19ECE8);
        swift_storeEnumTagMultiPayload();
        sub_23BAAE128();
        sub_23BAAE210();
        OUTLINED_FUNCTION_11_17();
        sub_23BBDACD8();
        sub_23B979910(v101, &qword_27E19ECE8);
        sub_23BAAE9D4(v86, v128, &qword_27E19ED10);
        OUTLINED_FUNCTION_21_12();
        sub_23BAAE09C();
        OUTLINED_FUNCTION_13_20();
        sub_23BBDACD8();
        sub_23BAAE504(v87, v88, v130, v85);
        v102 = OUTLINED_FUNCTION_7_28();
        sub_23BAAE504(v102, v103, v104, v105);

        sub_23B979910(v86, &qword_27E19ED10);
        v45 = v120;
        v42 = v107;
        break;
    }

    sub_23BAAE9D4(v39, v45, &qword_27E19ED18);
    swift_storeEnumTagMultiPayload();
    sub_23BAAE010();
    sub_23BAAE3F8();
    sub_23BBDACD8();
    OUTLINED_FUNCTION_4_8();
    sub_23B979910(v81, v82);
    return sub_23BAAE5B4(v42, _s34StructuredScrollViewBackgroundModeOMa);
  }
}

uint64_t sub_23BAAD100@<X0>(double *a1@<X8>)
{
  *a1 = sub_23BAAD178();
  v2 = *(type metadata accessor for StructuredScrollViewGradientMaterialBackground(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);

  return swift_storeEnumTagMultiPayload();
}

double sub_23BAAD178()
{
  v0 = sub_23BBDAD18();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  sub_23BBDAF98();
  sub_23BBD9E88();
  v7 = *(v2 + 8);
  v7(v6, v0);
  MinY = 0.0;
  if ((v14 & 1) == 0)
  {
    v16.origin.x = OUTLINED_FUNCTION_19_13();
    CGRectGetMinX(v16);
    v17.origin.x = OUTLINED_FUNCTION_19_13();
    MinY = CGRectGetMinY(v17);
  }

  sub_23B9C7290();
  sub_23BBDAFA8();
  sub_23BBD9E88();
  v7(v6, v0);
  v9 = 1.0;
  if ((v15 & 1) == 0)
  {
    v18.origin.x = OUTLINED_FUNCTION_15_18();
    CGRectGetMinX(v18);
    v19.origin.x = OUTLINED_FUNCTION_15_18();
    v10 = CGRectGetMinY(v19);
    if ((v14 & 1) == 0)
    {
      v11 = MinY - v10;
      if (v11 <= 50.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 50.0;
      }

      if (v11 >= 0.0)
      {
        return v12 / 50.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v9;
}

uint64_t sub_23BAAD30C()
{
  v0 = sub_23BBD9BF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StructuredScrollViewGradientMaterialBackground(0);
  sub_23B9B6F84();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CDF3D0])
  {
    return sub_23BBDBD38();
  }

  if (v4 != *MEMORY[0x277CDF3C0])
  {
    v7 = [objc_opt_self() systemBackgroundColor];
    v6 = sub_23BBDBCA8();
    (*(v1 + 8))(v3, v0);
    return v6;
  }

  return sub_23BBDBD18();
}

void *sub_23BAAD460@<X0>(uint64_t a1@<X8>)
{
  sub_23BAAD558(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_23BBDA388();
  v7 = sub_23BBDB398();
  v8 = sub_23BBDB3B8();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  __src[0] = 0;
  v9 = sub_23BBDB3A8();
  sub_23BBD9B18();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = memcpy(a1, __dst, 0x110uLL);
  *(a1 + 272) = v6;
  *(a1 + 280) = v7;
  *(a1 + 288) = v8;
  *(a1 + 296) = v1;
  *(a1 + 304) = v2;
  *(a1 + 312) = v3;
  *(a1 + 320) = v4;
  *(a1 + 328) = 0;
  *(a1 + 336) = v9;
  *(a1 + 344) = v11;
  *(a1 + 352) = v13;
  *(a1 + 360) = v15;
  *(a1 + 368) = v17;
  *(a1 + 376) = 0;
  return result;
}

uint64_t sub_23BAAD558@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 * 25.0;
  v4 = sub_23BBDAB48();
  LOBYTE(v26[0]) = 0;
  sub_23BAAD8E4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, sizeof(v23));
  sub_23BAAE9D4(__dst, v27, &qword_27E19EDC8);
  sub_23B979910(v23, &qword_27E19EDC8);
  memcpy(&v16[7], __dst, 0x58uLL);
  v18[0] = v4;
  v18[1] = 0;
  v19 = v26[0];
  memcpy(v20, v16, sizeof(v20));
  v21 = v3;
  sub_23BAAD30C();
  v5 = sub_23BBDBD58();

  v6 = sub_23BBDC2F8();
  v8 = v7;
  v9 = sub_23BBDAB48();
  LOBYTE(v26[0]) = 0;
  sub_23BAAD8E4(__src);
  memcpy(v24, __src, sizeof(v24));
  memcpy(v25, __src, sizeof(v25));
  sub_23BAAE9D4(v24, v27, &qword_27E19EDC8);
  sub_23B979910(v25, &qword_27E19EDC8);
  memcpy(&v14[7], v24, 0x58uLL);
  v10 = v26[0];
  v26[0] = v6;
  v26[1] = v8;
  v26[2] = v9;
  v26[3] = 0;
  LOBYTE(v26[4]) = v10;
  memcpy(&v26[4] + 1, v14, 0x5FuLL);
  memcpy(v15, v26, sizeof(v15));
  v27[0] = v6;
  v27[1] = v8;
  v27[2] = v9;
  v27[3] = 0;
  v28 = v10;
  memcpy(v29, v14, sizeof(v29));
  sub_23BAAE9D4(v26, __src, &qword_27E19EDD0);
  sub_23B979910(v27, &qword_27E19EDD0);
  __src[0] = v5;
  memcpy(&__src[1], v15, 0x80uLL);
  v11 = sub_23BBDC318();
  sub_23BAAD7EC(__src, v11, v12, a1);
  sub_23B979910(__src, &qword_27E19EDD8);
  return sub_23B979910(v18, &qword_27E19EDE0);
}

uint64_t sub_23BAAD7EC@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, 0x88uLL);
  __srca[17] = a2;
  __srca[18] = a3;
  memcpy(a4, v4, 0x78uLL);
  memcpy((a4 + 120), __srca, 0x98uLL);
  v13 = a2;
  v14 = a3;
  sub_23BAAE9D4(__src, v10, &qword_27E19EDD8);
  sub_23BAAE9D4(v4, v10, &qword_27E19EDE0);
  sub_23BAAE9D4(__srca, v10, &qword_27E19EDE8);
  return sub_23B979910(__dst, &qword_27E19EDE8);
}

uint64_t sub_23BAAD8E4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EDF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23BBF6BE0;
  *(v2 + 32) = sub_23BBDBD28();
  sub_23BBDBD38();
  v3 = sub_23BBDBD58();

  *(v2 + 40) = v3;
  sub_23BBDBD38();
  v4 = sub_23BBDBD58();

  *(v2 + 48) = v4;
  sub_23BBDBD38();
  v5 = sub_23BBDBD58();

  *(v2 + 56) = v5;
  sub_23BBDC418();
  sub_23BBDC428();
  MEMORY[0x23EEB4A00](v2);
  sub_23BBDA0A8();
  sub_23BBDC318();
  sub_23BBD9DE8();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a1, __src, 0x58uLL);
  memcpy(v10, __src, sizeof(v10));
  sub_23BAAE9D4(__dst, &v7, &qword_27E19EDF8);
  return sub_23B979910(v10, &qword_27E19EDF8);
}

uint64_t sub_23BAADA90@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;

  if ((a2 & 1) == 0)
  {
    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    (*(v8 + 8))(v12, v6);
    a1 = v18;
  }

  if (a1)
  {

    result = sub_23BBDC318();
    v16 = sub_23BAAEA30;
    v17 = 256;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    result = 0;
    v15 = 0;
  }

  *a3 = a1;
  a3[1] = v17;
  a3[2] = v16;
  a3[3] = a1;
  a3[4] = result;
  a3[5] = v15;
  return result;
}

uint64_t sub_23BAADC0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_23BBDC438();
  v5 = v4;
  v7 = v6;

  result = sub_23BBD9E68();
  *a2 = a1;
  *(a2 + 8) = 256;
  *(a2 + 16) = 0x400921FB54442D18;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_23BAADC98@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDC298();
  OUTLINED_FUNCTION_4_1();
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  v8 = sub_23BBDB3B8();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19EE00);
  v10 = a1 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = v1;
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  return result;
}

uint64_t sub_23BAADD40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810);
  __swift_allocate_value_buffer(v0, qword_27E19EC80);
  v1 = __swift_project_value_buffer(v0, qword_27E19EC80);
  v2 = _s34StructuredScrollViewBackgroundModeOMa(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23BAADDBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810);
  v3 = __swift_project_value_buffer(v2, qword_27E19EC80);
  return sub_23BAAE9D4(v3, a1, &qword_27E199810);
}

uint64_t sub_23BAADE60()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECB8);
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_23BAADEC0()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ECB8);
  v1 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v1, v2, v0, v3);
}

void sub_23BAADF48()
{
  if (!qword_27E19ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199810);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19ECD0);
    }
  }
}

unint64_t sub_23BAAE010()
{
  result = qword_27E19ED20;
  if (!qword_27E19ED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ED18);
    sub_23BAAE09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED20);
  }

  return result;
}

unint64_t sub_23BAAE09C()
{
  result = qword_27E19ED28;
  if (!qword_27E19ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19ED10);
    sub_23BAAE128();
    sub_23BAAE210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19ED28);
  }

  return result;
}