void sub_23BAC4D3C()
{
  if (!qword_27E19F488[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197878);
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, qword_27E19F488);
    }
  }
}

void sub_23BAC4DA0()
{
  sub_23BAC57FC(319, &qword_27E19F480, type metadata accessor for SubscriptionStoreContentConfiguration);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreContainerContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAC4E4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23BBDCDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v11 - 1;
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = v17 | *(v6 + 80);
  v19 = *(v6 + 64) + v17;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v20 = (((-81 - v17) | v17) - (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + (v19 & ~v17)) + ((-9 - v18) | v18) - 12) ^ 0xFFFFFFFFFFFFFFFELL;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_31:
      if ((v14 & 0x80000000) != 0)
      {
        v29 = (a1 + v18 + 8) & ~v18;
        if (v7 >= v13)
        {

          return __swift_getEnumTagSinglePayload(v29, v7, v5);
        }

        else
        {
          v30 = (v17 + ((((((((v19 + v29) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17;
          if (v10 < 0xFD)
          {
            v32 = *(((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v32 >= 2)
            {
              v33 = (v32 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v33 = -1;
            }

            if ((v33 + 1) >= 2)
            {
              EnumTagSinglePayload = v33;
            }

            else
            {
              EnumTagSinglePayload = 0;
            }
          }

          else
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v10, v16);
          }

          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_31;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void sub_23BAC517C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 - 1 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13 - 1;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v16 | 7 | *(v8 + 80);
  v19 = *(v8 + 64) + (v16 | 7);
  v20 = *(*(v10 - 8) + 64);
  v21 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = ((v16 + 87) & ~(v16 | 7)) + v21;
  v23 = v22 + (v19 & ~(v16 | 7)) + ((v18 + 8) & ~v18) + 3;
  v24 = 8 * v23;
  if (a3 <= v15)
  {
    v25 = 0;
  }

  else if (v23 <= 3)
  {
    v29 = ((a3 - v15 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v29))
    {
      v25 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v25 = v30;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v15 < a2)
  {
    v26 = ~v15 + a2;
    if (v23 < 4)
    {
      v27 = (v26 >> v24) + 1;
      if (v22 + (v19 & ~v17) + ((v18 + 8) & ~v18) != -3)
      {
        v31 = v26 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v23 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        a1[v23] = v27;
        return;
      case 2:
        *&a1[v23] = v27;
        return;
      case 3:
        goto LABEL_76;
      case 4:
        *&a1[v23] = v27;
        return;
      default:
        return;
    }
  }

  v28 = ~v17;
  switch(v25)
  {
    case 1:
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_76:
      __break(1u);
      JUMPOUT(0x23BAC55D4);
    case 4:
      *&a1[v23] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v32 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v32 = (a2 - 1);
        }

        *a1 = v32;
        return;
      }

      v33 = &a1[v18 + 8] & ~v18;
      if (v9 >= v14)
      {
        v38 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v34 = ((v19 + v33) & v28);
        if (v14 < a2)
        {
          if (v22 <= 2)
          {
            v35 = ~(-1 << (8 * (v22 + 1)));
          }

          else
          {
            v35 = -1;
          }

          v36 = v35 & (~v14 + a2);
          if (v22 <= 2)
          {
            v37 = v22 + 1;
          }

          else
          {
            v37 = 4;
          }

          bzero(v34, (v22 + 1));
          switch(v37)
          {
            case 2:
              *v34 = v36;
              break;
            case 3:
              *v34 = v36;
              v34[2] = BYTE2(v36);
              break;
            case 4:
              goto LABEL_64;
            default:
              goto LABEL_68;
          }

          return;
        }

        v34 = ((v17 + ((((((v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v28);
        if (v13 - 1 < a2)
        {
          v36 = a2 - v13;
          bzero(v34, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
LABEL_68:
            *v34 = v36;
          }

          else
          {
LABEL_64:
            *v34 = v36;
          }

          return;
        }

        v39 = a2 - v13;
        if (a2 >= v13)
        {
          bzero(v34, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
            *v34 = v39;
          }

          else
          {
            *v34 = v39;
          }

          return;
        }

        v38 = (a2 + 1);
        if (v12 < 0xFD)
        {
          v40 = &v34[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFC)
          {
            *v40 = 0;
            *(v40 + 8) = 0;
            *v40 = a2 - 253;
          }

          else
          {
            *(v40 + 8) = a2 + 3;
          }

          return;
        }

        v33 = v34;
      }

      __swift_storeEnumTagSinglePayload(v33, v38, v12, v10);
      return;
  }
}

void sub_23BAC560C()
{
  sub_23BAC57FC(319, &qword_27E19F590, type metadata accessor for SubscriptionStoreContentConfiguration.Section);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreControlConfiguration();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAC56D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SubscriptionStoreControlConfiguration();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BAC5774(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SubscriptionStoreControlConfiguration();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BAC57FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD2A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23BAC5850()
{
  OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView.LeafView();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0);
  OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView.LinkGroupView();
  OUTLINED_FUNCTION_2_30();
  type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_7_29();
  swift_getWitnessTable();
  sub_23B9ECF44();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_29();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  return swift_getWitnessTable();
}

uint64_t sub_23BAC5ABC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_12_20();
  v2 = type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = v3 + *(v2 + 52);
  (*(*(v1 - 8) + 8))(v4, v1);
  OUTLINED_FUNCTION_12_20();
  v5 = v4 + *(type metadata accessor for SubscriptionStoreContainerContext() + 52);

  if (*(v5 + 48))
  {
  }

  v6 = *(type metadata accessor for SubscriptionStoreControlConfiguration() + 60);
  v7 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 8))(v5 + v6);
  }

  v9 = v3 + *(v2 + 56);
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_23BAC5C80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for NestedSubscriptionOptionContentView.TabGroupView() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_23BAC26C8(v6, v1, v2, v3, v4);
}

unint64_t sub_23BAC5D24()
{
  result = qword_27E19F5D0;
  if (!qword_27E19F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5C0);
    sub_23BAC43BC(&qword_27E19F5D8, &qword_27E19F5E0, &unk_23BBF83B8, sub_23BAC5DDC);
    sub_23BAC5E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5D0);
  }

  return result;
}

unint64_t sub_23BAC5DDC()
{
  result = qword_27E19F5E8;
  if (!qword_27E19F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5E8);
  }

  return result;
}

unint64_t sub_23BAC5E30()
{
  result = qword_27E19F5F0;
  if (!qword_27E19F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5F0);
  }

  return result;
}

unint64_t sub_23BAC5E84()
{
  result = qword_27E19F5F8;
  if (!qword_27E19F5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F5F8);
  }

  return result;
}

unint64_t sub_23BAC5F00()
{
  result = qword_27E19F600;
  if (!qword_27E19F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F600);
  }

  return result;
}

uint64_t sub_23BAC5F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAC6114()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F3E0);
  type metadata accessor for NestedSubscriptionOptionContentView();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B97B518(&qword_27E19F5A8, &qword_27E19F5A0);
  type metadata accessor for StoreContentNavigation();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  return swift_getWitnessTable();
}

uint64_t sub_23BAC6214()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5B0);
  type metadata accessor for NestedSubscriptionOptionContentView();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_28()
{
  *(v4 - 120) = v3;
  *(v4 - 112) = v1;
  *(v4 - 104) = v0;
  *(v4 - 96) = v2;
  return 255;
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_23BAC643C()
{
  sub_23BAA8AEC();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BAC6478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BAC643C();
  *a1 = result;
  return result;
}

uint64_t sub_23BAC650C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F628);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  KeyPath = swift_getKeyPath();
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B620);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_23BAC676C;
    *(v13 + 24) = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F630);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = &v10[*(v8 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_23BAC66C4(v10, a4);
  return sub_23B9794F0(a2);
}

uint64_t sub_23BAC6694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BAC643C();
  *a1 = result;
  return result;
}

uint64_t sub_23BAC66C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F628);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAC6734()
{

  return swift_deallocObject();
}

unint64_t sub_23BAC67A8()
{
  result = qword_27E19F638;
  if (!qword_27E19F638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F628);
    sub_23B97B518(&qword_27E19F640, &qword_27E19F630);
    sub_23B97B518(&qword_27E19B638, &qword_27E19B640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlatterStyleVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAC6958);
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

uint64_t sub_23BAC69A0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197F40);
      sub_23BAC73D4();
    }
  }

  else
  {
    sub_23BBDBD28();
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BAC6A58()
{
  sub_23BAC717C();
  OUTLINED_FUNCTION_1_39();
  return v1 & 1;
}

uint64_t sub_23BAC6A90()
{
  sub_23BAC717C();
  OUTLINED_FUNCTION_1_39();
  return (v1 >> 2) & 1;
}

uint64_t sub_23BAC6AC8(char a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_23BBDB9B8();
}

uint64_t sub_23BAC6B80()
{
  if (sub_23BBDC2A8())
  {
    return 2;
  }

  if (qword_27E1977E0 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  if (byte_27E1A04D0 != 3)
  {
    return byte_27E1A04D0 == 1;
  }

  storekit_dyld_fall_2024_os_versions();
  return dyld_program_sdk_at_least();
}

uint64_t sub_23BAC6BF4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result;
  return result;
}

uint64_t sub_23BAC6C28@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05F40(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6C58@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B9A0014(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6C88@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05F58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6CC0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05F88(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23BAC6CF4@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05FEC(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23BAC6D40@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB0604C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BAC6DA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB05E90(a1);
  *a2 = result;
  return result;
}

unint64_t sub_23BAC6DD4()
{
  result = qword_27E19F650;
  if (!qword_27E19F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F650);
  }

  return result;
}

unint64_t sub_23BAC6E2C()
{
  result = qword_27E19F658;
  if (!qword_27E19F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F658);
  }

  return result;
}

unint64_t sub_23BAC6E84()
{
  result = qword_27E19F660;
  if (!qword_27E19F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F660);
  }

  return result;
}

unint64_t sub_23BAC6EDC()
{
  result = qword_27E19F668;
  if (!qword_27E19F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F668);
  }

  return result;
}

unint64_t sub_23BAC6F34()
{
  result = qword_27E19F670;
  if (!qword_27E19F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F670);
  }

  return result;
}

uint64_t sub_23BAC6F88()
{
  result = sub_23BBDC2A8();
  if (result)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  byte_27E19F648 = v1;
  return result;
}

uint64_t sub_23BAC6FB4@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E1977D0 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E19F648;
  return result;
}

uint64_t sub_23BAC7010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BAC6F34();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BAC7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BAC6DD4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BAC70D8()
{
  sub_23BAC72B4();
  OUTLINED_FUNCTION_1_39();
  return v1;
}

uint64_t sub_23BAC7148()
{
  sub_23BAC717C();
  OUTLINED_FUNCTION_1_39();
  return v1;
}

unint64_t sub_23BAC717C()
{
  result = qword_27E19F678;
  if (!qword_27E19F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F678);
  }

  return result;
}

uint64_t sub_23BAC720C()
{
  sub_23BAC717C();
  OUTLINED_FUNCTION_1_39();
  return (v1 >> 1) & 1;
}

uint64_t sub_23BAC7244()
{
  sub_23BAC717C();
  OUTLINED_FUNCTION_1_39();
  return (v1 >> 3) & 1;
}

uint64_t sub_23BAC727C()
{
  sub_23BAC717C();
  OUTLINED_FUNCTION_1_39();
  return (v1 >> 4) & 1;
}

unint64_t sub_23BAC72B4()
{
  result = qword_27E19F680;
  if (!qword_27E19F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F680);
  }

  return result;
}

uint64_t sub_23BAC7318(uint64_t result)
{
  v1 = result;
  if (qword_27E1977E0 != -1)
  {
    result = OUTLINED_FUNCTION_0_37();
  }

  if (byte_27E1A04D0 == 1 || byte_27E1A04D0 == 3 && (storekit_dyld_fall_2024_os_versions(), result = dyld_program_sdk_at_least(), result))
  {
    *v1 |= 0x10u;
  }

  return result;
}

unint64_t sub_23BAC73D4()
{
  result = qword_27E197F48;
  if (!qword_27E197F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E197F48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return sub_23BBDA958();
}

uint64_t sub_23BAC74C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*v1 != *(v1 + 24))
  {
    goto LABEL_4;
  }

  if (*(v1 + 16))
  {
    if ((*(v1 + 40) & 1) == 0)
    {
LABEL_4:
      v4 = *(v1 + 48);
      v5 = *(v1 + 56);
      v6 = OUTLINED_FUNCTION_27();
      sub_23BAC7DFC(v6, v7, v3, v8);
      v9 = OUTLINED_FUNCTION_27();
      sub_23BA9379C(v9, v10, v3, v4, v5, v11);
      v12 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (*(v1 + 8) == *(v1 + 32))
    {
      v13 = *(v1 + 40);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_4;
    }
  }

  v12 = 1;
LABEL_10:
  v14 = type metadata accessor for SubscriptionStoreControlOption(0);

  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v14);
}

uint64_t sub_23BAC75E4()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA098();
  sub_23BAC98DC(&qword_27E199DF0, MEMORY[0x277CDF7F8]);
  OUTLINED_FUNCTION_27();
  sub_23BBDD438();
  OUTLINED_FUNCTION_27();
  sub_23BBDD4A8();
  if (v10[4] == v10[0])
  {
    v1 = sub_23BBD9F58();
    v2 = v0;
    v3 = 1;
  }

  else
  {
    v4 = sub_23BBDD558();
    v6 = v5;
    v7 = sub_23BBD9F58();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 16))(v0, v6, v7);
    v4(v10, 0);
    v2 = v0;
    v3 = 0;
    v1 = v7;
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, 1, v1);
}

uint64_t sub_23BAC774C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_23BAC987C(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v9);
}

uint64_t sub_23BAC781C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

double sub_23BAC78F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_23B9F4E64(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23BAC7954@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  if (a2() == *(a1 + 16) && (v8 & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    a3();
    v9 = 0;
  }

  v10 = a4(0);

  return __swift_storeEnumTagSinglePayload(a5, v9, 1, v10);
}

uint64_t SubscriptionOfferViewStyleConfiguration.subscriptions.getter()
{
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  result = 0;
  if (*(v0 + *(v1 + 40) + 16) == 1)
  {
  }

  return result;
}

uint64_t SubscriptionOfferViewStyleConfiguration.subscriptionGroupDisplayName.getter()
{
  v1 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_3_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = (v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 40));
  if (*(v12 + 16) == 1)
  {
    v13 = *v12;
    if (*(v13 + 16))
    {
      (*(v3 + 16))(v7, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1);
      sub_23BBDC8F8();
      (*(v3 + 8))(v7, v1);
      v14 = sub_23BBDCB58();
      if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
      {
        v15 = sub_23BBDCA68();
        (*(*(v14 - 8) + 8))(v11, v14);
        return v15;
      }

      sub_23B979910(v11, &qword_27E197B90);
    }
  }

  return 0;
}

double sub_23BAC7C28@<D0>(uint64_t a1@<X8>)
{
  sub_23BAC9698();
  sub_23BBDA958();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_23BAC7CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  (*(v7 + 16))(v10 - v9, a1, a2);
  v11 = sub_23BBDC0D8();
  result = (*(v7 + 8))(a1, a2);
  *a3 = v11;
  return result;
}

uint64_t type metadata accessor for SubscriptionOfferViewStyleConfiguration()
{
  result = qword_27E19F688;
  if (!qword_27E19F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAC7DFC(uint64_t result, uint64_t a2, char a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *a4 <= result;
  if (*a4 == result)
  {
    LOBYTE(v4) = *(a4 + 16);
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (a4[2])
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (v5)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  if (v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a4[1];
  if (v6 > a2)
  {
    goto LABEL_17;
  }

LABEL_9:
  v6 = a4[3];
  v7 = v6 <= result;
  if (v6 == result)
  {
    LOBYTE(v6) = *(a4 + 40);
    if (a3)
    {
LABEL_18:
      if ((v6 & 1) == 0)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_20;
    }

    if (a4[5])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = a4[4];
    v7 = v6 <= a2;
    if (v6 > a2)
    {
      return result;
    }

    __break(1u);
  }

  if (v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t SubscriptionOfferViewStyleConfiguration.activeOffer.getter()
{
  OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  return sub_23B99FCE0(v1 + *(v2 + 32), v0, &unk_27E19FEF0);
}

uint64_t SubscriptionOfferViewStyleConfiguration.icon.getter()
{
  OUTLINED_FUNCTION_40();
  *v0 = *(v1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 36));
}

id SubscriptionOfferViewStyleConfiguration.state.getter()
{
  OUTLINED_FUNCTION_40();
  v2 = v1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 40);
  v3 = *v2;
  v4 = *(v2 + 8);
  *v0 = *v2;
  *(v0 + 8) = v4;
  v5 = *(v2 + 16);
  *(v0 + 16) = v5;

  return sub_23BA1D218(v3, v4, v5);
}

uint64_t SubscriptionOfferViewStyleConfiguration.subscriptionStatus.getter()
{
  type metadata accessor for SubscriptionOfferViewStyleConfiguration();
}

uint64_t SubscriptionOfferViewStyleConfiguration.visibleSubscription.getter()
{
  OUTLINED_FUNCTION_40();
  v2 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  return sub_23B99FCE0(v1 + *(v2 + 48), v0, &qword_27E1987F0);
}

uint64_t SubscriptionOfferViewStyleConfiguration.visibleSubscription.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 48);

  return sub_23B9FF5CC(a1, v3);
}

Swift::Void __swiftcall SubscriptionOfferViewStyleConfiguration.subscribe()()
{
  v1 = (v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 28));
  if (*v1)
  {
    (*v1)();
  }
}

Swift::Void __swiftcall SubscriptionOfferViewStyleConfiguration.displayDetails()()
{
  v1 = (v0 + *(type metadata accessor for SubscriptionOfferViewStyleConfiguration() + 24));
  if (*v1)
  {
    (*v1)();
  }
}

uint64_t sub_23BAC80E0()
{
  sub_23BBDC8A8();
  OUTLINED_FUNCTION_3_2();
  v49 = v2;
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  OUTLINED_FUNCTION_13_0(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v17 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v26 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  sub_23B99FCE0(v0 + v26[12], v16, &qword_27E1987F0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_23B979910(v16, &qword_27E1987F0);
LABEL_19:
    v34 = 0;
    return v34 & 1;
  }

  (*(v19 + 32))(v25, v16, v17);
  if (*(v0 + v26[7]))
  {
    sub_23B99FCE0(v0 + v26[8], v12, &unk_27E19FEF0);
    v27 = sub_23BBDCC88();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v27);
    sub_23B979910(v12, &unk_27E19FEF0);
    if (EnumTagSinglePayload == 1)
    {
      v29 = v51;
      sub_23B99FCE0(v0, v51, qword_27E197A68);
      v30 = type metadata accessor for Subscription();
      v31 = v25;
      if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
      {
        sub_23B979910(v29, qword_27E197A68);
        v32 = 0;
        v33 = 0;
      }

      else
      {
        (*(v19 + 16))(v22, v29, v17);
        sub_23BA1D2DC(v29);
        v32 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v33 = v35;
        (*(v19 + 8))(v22, v17);
      }

      v36 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      if (v33)
      {
        if (v32 == v36 && v33 == v37)
        {

LABEL_22:
          v41 = v47;
          sub_23BBDCD28();
          v42 = v48;
          sub_23BBDC868();
          sub_23BAC98DC(&qword_27E1987F8, MEMORY[0x277CDD168]);
          v43 = v50;
          v44 = sub_23BBDCF38();
          v45 = *(v49 + 8);
          v45(v42, v43);
          v45(v41, v43);
          (*(v19 + 8))(v31, v17);
          v34 = v44 ^ 1;
          return v34 & 1;
        }

        v39 = sub_23BBDDA88();

        if (v39)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    (*(v19 + 8))(v25, v17);
    goto LABEL_19;
  }

  (*(v19 + 8))(v25, v17);
  v34 = 1;
  return v34 & 1;
}

double sub_23BAC8630@<D0>(void *a1@<X8>)
{
  v2 = sub_23BAC97E0();
  v3 = swift_allocObject();
  result = 0.0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *a1 = sub_23BAC97DC;
  a1[1] = 0;
  a1[2] = &type metadata for AutomaticSubscriptionOfferViewStyle;
  a1[3] = v2;
  a1[4] = v3;
  return result;
}

double sub_23BAC869C@<D0>(uint64_t a1@<X8>)
{
  sub_23BAC8630(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t View.subscriptionOfferViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for SubscriptionOfferViewStyleModifier();
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  OUTLINED_FUNCTION_7_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v22 - v19;
  (*(v9 + 16))(v13, a1, a3, v18);
  (*(v9 + 32))(v20, v13, a3);
  MEMORY[0x23EEB43C0](v20, a2, v14, a4);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_23BAC88D4(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850);
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_10_2();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[8];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
    v12 = a3[12];
    goto LABEL_12;
  }

  v15 = *(a1 + a3[9]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_23BAC8A64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[9]) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
        v14 = a4[12];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BAC8BDC()
{
  sub_23BAC8DC8(319, &qword_27E197B28, type metadata accessor for Subscription, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23BAC8DC8(319, &qword_27E19F698, type metadata accessor for SubscriptionComparator.Compared, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23BA55588();
      if (v2 <= 0x3F)
      {
        sub_23BAC8DC8(319, &qword_27E197B58, MEMORY[0x277CDD2B8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23BAC8DC8(319, qword_27E19F6A0, MEMORY[0x277CDD258], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_23BAC8DC8(319, &qword_27E198828, MEMORY[0x277CDD330], MEMORY[0x277D83D88]);
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

void sub_23BAC8DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23BAC8E48()
{
  type metadata accessor for SubscriptionOfferViewStyleModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BAC8EB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BAC9000(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
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

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BAC9204);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_23BAC9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F728);
  v9 = sub_23BBDA358();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  swift_getKeyPath();
  (*(v6 + 16))(v8, v3, v5);
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  sub_23BBAE988(v8, v32, v5, *(a2 + 24), v29);
  v31 = v30;
  v26 = v29[0];
  v27 = v29[1];
  v28 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB748();

  sub_23B979910(&v31, &qword_27E19C2A8);
  v16 = sub_23B97B518(&qword_27E19F730, &qword_27E19F728);
  v24 = WitnessTable;
  v25 = v16;
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v11, v9, v17);
  v18 = *(v21 + 8);
  v18(v11, v9);
  sub_23B9D2D88(v14, v9, v17);
  return (v18)(v14, v9);
}

uint64_t sub_23BAC9594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F748);
  MEMORY[0x28223BE20](v2);
  sub_23BAC987C(a1, &v5 - v3, type metadata accessor for SubscriptionOfferViewStyleConfiguration);
  sub_23BBDAFF8();
  sub_23B97B518(&qword_27E19F750, &qword_27E19F748);
  return sub_23BBDC0D8();
}

unint64_t sub_23BAC9698()
{
  result = qword_27E19F738;
  if (!qword_27E19F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F738);
  }

  return result;
}

uint64_t sub_23BAC96FC()
{
  type metadata accessor for SubscriptionOfferViewStyleModifier();
  OUTLINED_FUNCTION_2_31();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F728);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19F730, &qword_27E19F728);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

unint64_t sub_23BAC97E0()
{
  result = qword_27E19F740;
  if (!qword_27E19F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F740);
  }

  return result;
}

uint64_t sub_23BAC9834()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23BAC987C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BAC98DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BAC9940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9ADC9C();
  *a1 = result;
  return result;
}

void ProminentPickerSubscriptionStoreControlStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198858);
  *(a2 + v7[14]) = 1;
  v8 = v7[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = a2 + v7[16];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v11 = a2 + v7[17];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v7[18];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48));
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  *v13 = sub_23BAC9C84;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v7[13]);
  *v14 = sub_23BAC9D88;
  v14[1] = 0;
  LOBYTE(v7) = sub_23B9ADB38();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F758);
  OUTLINED_FUNCTION_1_25();
  *v16 = KeyPath;
  *(v16 + 8) = v7;
  v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F760);
  OUTLINED_FUNCTION_1_25();
  *v18 = v17;
  v18[1] = sub_23BAC7318;
  v18[2] = 0;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F768);
  OUTLINED_FUNCTION_1_25();
  *v21 = v19;
  v21[1] = sub_23B99B524;
  v21[2] = v20;
  v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F770);
  OUTLINED_FUNCTION_1_25();
  *v23 = v22;
  v23[1] = sub_23BB3EA68;
  v23[2] = 0;
}

uint64_t sub_23BAC9C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8);
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  v10 = (a2 + *(v7 + 36));
  *v10 = sub_23B9D11BC;
  v10[1] = 0;
  return result;
}

uint64_t sub_23BAC9D88(uint64_t a1)
{
  v2 = sub_23BBDABB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SubscriptionStoreButton();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B99B814(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v9 = &v8[v6[5]];
  v9[48] = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = &v8[v6[6]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 16) = 0;
  v11 = &v8[v6[7]];
  KeyPath = swift_getKeyPath();
  v16[15] = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  v13 = &v8[v6[8]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v6[9]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_23BBDABA8();
  sub_23B99B770(&qword_27E1988B8, type metadata accessor for SubscriptionStoreButton);
  sub_23B99B770(&qword_27E1988C0, MEMORY[0x277CDDF40]);
  sub_23BBDB6E8();
  (*(v3 + 8))(v5, v2);
  return sub_23B99B7B8(v8);
}

uint64_t sub_23BACA010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9ADC9C();
  *a1 = result;
  return result;
}

unint64_t sub_23BACA0BC()
{
  result = qword_27E19F778;
  if (!qword_27E19F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProminentPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BACA1ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BACA1E8()
{
  result = qword_27E19F780;
  if (!qword_27E19F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F770);
    sub_23BACA2FC(&qword_27E19F788, &qword_27E19F768, &unk_23BBF8C48, sub_23BACA2CC);
    sub_23B97B518(&qword_27E19F7B0, &qword_27E19F7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F780);
  }

  return result;
}

uint64_t sub_23BACA2FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BACA3AC()
{
  result = qword_27E19F798;
  if (!qword_27E19F798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F758);
    sub_23B97B518(&qword_27E198890, &qword_27E198858);
    sub_23B97B518(&qword_27E19F7A0, &qword_27E19F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F798);
  }

  return result;
}

uint64_t sub_23BACA4AC@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = v1;
  v28 = a1;
  v27 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_23BBD9E48();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  sub_23BACAD84(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v13 + 32);
    v21(v20, v10, v11);
  }

  else
  {
    sub_23BBDD5A8();
    v22 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v27);
    v21 = *(v13 + 32);
  }

  v21(v17, v20, v11);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  result = (v21)(v24 + v23, v17, v11);
  v26 = v28;
  *v28 = sub_23BA064F8;
  v26[1] = v24;
  return result;
}

uint64_t sub_23BACA778()
{
  v1 = *(v0 + OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_EE95366FFCD0D5209ACAB988B114293118UIKitDismissButton11Coordinator_action);

  v1(v2);
}

uint64_t sub_23BACA880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BACA8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19ADF0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EnvironmentActionUIKitDismissButton()
{
  result = qword_27E19F7C8;
  if (!qword_27E19F7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BACA98C()
{
  sub_23BACA9F8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BACA9F8()
{
  if (!qword_27E19AE08)
  {
    sub_23BBD9E48();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19AE08);
    }
  }
}

id sub_23BACAA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIKitDismissButton.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_EE95366FFCD0D5209ACAB988B114293118UIKitDismissButton11Coordinator_action];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_23BACAAE0()
{
  v0 = [objc_opt_self() buttonWithType_];

  return v0;
}

void sub_23BACAB24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F7E0);
  sub_23BBDB158();
  v7 = &v8[OBJC_IVAR____TtCV17_StoreKit_SwiftUIP33_EE95366FFCD0D5209ACAB988B114293118UIKitDismissButton11Coordinator_action];
  *v7 = a3;
  *(v7 + 1) = a4;

  sub_23BBDB158();
  [a1 addTarget:v8 action:sel_didTrigger forControlEvents:0x2000];
}

id sub_23BACAC30@<X0>(void *a1@<X8>)
{
  result = sub_23BACAA6C(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_23BACAC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BACAEE8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23BACACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BACAEE8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23BACAD5C()
{
  sub_23BACAEE8();
  sub_23BBDAC88();
  __break(1u);
}

uint64_t sub_23BACAD84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BACADF4()
{
  v1 = sub_23BBD9E48();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_23BACAE90()
{
  result = qword_27E19F7D8;
  if (!qword_27E19F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F7D8);
  }

  return result;
}

unint64_t sub_23BACAEE8()
{
  result = qword_27E19F7E8[0];
  if (!qword_27E19F7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19F7E8);
  }

  return result;
}

void sub_23BACAF3C()
{
  sub_23BA9B938();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23BA96AC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BACAFE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 33) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
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

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BACB134);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 25) & ~v7, v6, v4);
  }

  v18 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23BACB148(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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
  }

  if (a2 > v9)
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 33) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return;
      case 2:
        *&a1[v11] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
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

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BACB32CLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 25) & ~v10;

          __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *a1 = v18;
        }
      }

      return;
  }
}

uint64_t sub_23BACB3B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = a2[2];
  v11 = *(a2 + 24);
  *a5 = a1;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  v12 = type metadata accessor for ProductChangeCountTracker();
  (*(*(a4 - 8) + 32))(a5 + *(v12 + 40), a3, a4);
  v13 = (a5 + *(v12 + 44));
  result = sub_23BA97E1C();
  *v13 = result;
  v13[1] = v15;
  return result;
}

uint64_t sub_23BACB460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  OUTLINED_FUNCTION_3_2();
  v59 = v5;
  v60 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_3_2();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v15 + 24);
  v16 = type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  OUTLINED_FUNCTION_3_2();
  v61 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v48 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199C88);
  v55 = v21;
  OUTLINED_FUNCTION_6_18();
  WitnessTable = swift_getWitnessTable();
  v54 = WitnessTable;
  v53 = sub_23BACBB24();
  *&v64 = v16;
  *(&v64 + 1) = v21;
  v65 = WitnessTable;
  v66 = v53;
  v56 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v57 = v24;
  MEMORY[0x28223BE20](v25);
  v49 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v52 = &v48 - v28;
  v29 = *v3;
  v64 = *(v3 + *(a1 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960);
  sub_23BBDBF68();
  v30 = sub_23BACB900(v63, v29);
  v31 = *(v3 + 16);
  v32 = *(v3 + 24);
  v33 = *(v3 + 32);
  *&v64 = *(v3 + 8);
  BYTE8(v64) = v31;
  v65 = v32;
  LOBYTE(v66) = v33;
  (*(v51 + 16))(v14, v3 + *(a1 + 40), v10);
  v34 = v50;
  sub_23B9CA3FC(v30, &v64, v14, v10, v20);
  *&v64 = v29;
  v36 = v58;
  v35 = v59;
  (*(v59 + 16))(v58, v3, a1);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v10;
  *(v38 + 24) = v34;
  (*(v35 + 32))(v38 + v37, v36, a1);

  v39 = v48;
  v40 = v49;
  v42 = v54;
  v41 = v55;
  v43 = v53;
  sub_23BBDBC18();

  (*(v61 + 8))(v39, v16);
  *&v64 = v16;
  *(&v64 + 1) = v41;
  v65 = v42;
  v66 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v52;
  sub_23B9D2D88(v40, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v46 = *(v57 + 8);
  v46(v40, OpaqueTypeMetadata2);
  sub_23B9D2D88(v45, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v46)(v45, OpaqueTypeMetadata2);
}

uint64_t sub_23BACB900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Subscription();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];
    sub_23BA92C48();
    v9 = v17;
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = a2 + v10;
    v12 = *(v5 + 72);
    do
    {
      sub_23BA54F2C(v11, v7);
      v13 = &v7[*(v4 + 24)];
      *v13 = a1;
      v13[8] = 0;
      v17 = v9;
      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_23BA92C48();
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      sub_23BA1D1B4(v7, v9 + v10 + v14 * v12);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_23BACBA7C()
{
  type metadata accessor for ProductChangeCountTracker();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960);
  result = sub_23BBDBF68();
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_23BBDBF78();
  }

  return result;
}

unint64_t sub_23BACBB24()
{
  result = qword_27E19F870;
  if (!qword_27E19F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199C88);
    sub_23BACBBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F870);
  }

  return result;
}

unint64_t sub_23BACBBA8()
{
  result = qword_27E19F878;
  if (!qword_27E19F878)
  {
    type metadata accessor for Subscription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F878);
  }

  return result;
}

uint64_t sub_23BACBC00()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ProductChangeCountTracker() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[12], v1);

  return swift_deallocObject();
}

uint64_t sub_23BACBD00()
{
  type metadata accessor for ProductChangeCountTracker();

  return sub_23BACBA7C();
}

uint64_t sub_23BACBD84()
{
  type metadata accessor for SubscriptionStoreEntitlementLoadingView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199C88);
  OUTLINED_FUNCTION_6_18();
  swift_getWitnessTable();
  sub_23BACBB24();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BACBE14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCCC8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_23BBDCCD8();
  v10 = *(v4 + 104);
  v10(v7, *MEMORY[0x277CDD2D0], v3);
  v11 = sub_23BBDCCB8();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  if ((v11 & 1) != 0 && !(sub_23BBDCCE8() % 7))
  {
    v10(v9, *MEMORY[0x277CDD2D8], v3);
    sub_23BBDCCE8();
    sub_23BBDCCF8();
    return (v12)(v9, v3);
  }

  else
  {
    v13 = sub_23BBDCD08();
    return (*(*(v13 - 8) + 16))(a1, v1, v13);
  }
}

void sub_23BACC004()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F890);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = sub_23BBDC298();
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199810);
  OUTLINED_FUNCTION_13_0(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = (&v50 - v21);
  sub_23BA1D88C(v1, &v53);
  if (v54 == 2)
  {
    v30 = _s34StructuredScrollViewBackgroundModeOMa(0);
    if (v5)
    {
LABEL_10:
      OUTLINED_FUNCTION_17_0();
      swift_storeEnumTagMultiPayload();
      v31 = v7;
      v32 = 0;
LABEL_12:
      v33 = v30;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
      goto LABEL_22;
    }

LABEL_11:
    v31 = v7;
    v32 = 1;
    goto LABEL_12;
  }

  if (v54 == 1)
  {
    v30 = _s34StructuredScrollViewBackgroundModeOMa(0);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v54)
  {
    sub_23B98473C(&v53, v52);
    sub_23BA160B0(v52, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19F898);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v12);
      v37 = *(v14 + 32);
      v37(v18, v11, v12);
      v37(v7, v18, v12);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
      sub_23BA0E8F8(v11, &qword_27E19F890);
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_3_1();
      (*(v42 + 16))(v41 - v40);
      *v7 = sub_23BBD9DF8();
    }

    v38 = _s34StructuredScrollViewBackgroundModeOMa(0);
    OUTLINED_FUNCTION_17_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v38);
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_22;
  }

  if ((v5 & 1) == 0)
  {
    v33 = _s34StructuredScrollViewBackgroundModeOMa(0);
    v31 = v7;
    v32 = 1;
    goto LABEL_13;
  }

  if (v3)
  {
    *v22 = v3;
    v23 = _s34StructuredScrollViewBackgroundModeOMa(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    sub_23BAAE44C(v22, v7);
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  }

  else
  {
    v46 = _s34StructuredScrollViewBackgroundModeOMa(0);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v46);
    sub_23BBDC278();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_2();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
    if (__swift_getEnumTagSinglePayload(v22, 1, v46) != 1)
    {
      sub_23BA0E8F8(v22, &qword_27E199810);
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_9_1();
}

double static SubscriptionStoreControlBackground.automatic.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double static SubscriptionStoreControlBackground.gradientMaterial.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_23BBE4070;
  return result;
}

double static SubscriptionStoreControlBackground.gradientMaterialOnScroll.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_23BBE7BC0;
  return result;
}

uint64_t View.subscriptionStoreControlBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8_29(a1, a2, a3, a4, a5, a6, a7, a8, v18, v20[0], v20[1], v20[2], v20[3], v20[4]);
  OUTLINED_FUNCTION_1_4();
  v9 = (*(v8 + 16))();
  v16 = OUTLINED_FUNCTION_16_12(v9, v10, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v11, v12, v13, v14, v15, v19, v20[0]);
  MEMORY[0x23EEB43C0](v16);
  return sub_23BACC510(v20);
}

uint64_t View.subscriptionStoreControlBackground(_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_20_11(a1, a2);
  v9 = OUTLINED_FUNCTION_15_19(v2, v3, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v4, v5, v6, v7, v8, v11, v12[0]);
  MEMORY[0x23EEB43C0](v9);
  return sub_23BACC510(v12);
}

void View.subscriptionStorePickerItemBackground<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  sub_23BACC70C();
  v2 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_27();
  v6 = OUTLINED_FUNCTION_19_15();
  v7(v6);
  sub_23BB8B350(v0);
  v8 = OUTLINED_FUNCTION_17_12();
  MEMORY[0x23EEB43C0](v8);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23BACC70C()
{
  result = qword_27E19F880;
  if (!qword_27E19F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F880);
  }

  return result;
}

void View.subscriptionStorePickerItemBackground<A, B>(_:in:)()
{
  OUTLINED_FUNCTION_10_0();
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v12 = OUTLINED_FUNCTION_10_16(v8, v9, v10, v11);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v33 = v1;
  v34 = v0;
  v35 = v7;
  v36 = v5;
  v20 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v22 = v21;
  OUTLINED_FUNCTION_7_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v31 - v25;
  (*(v15 + 16))(v19, v31[0], v1, v24);
  OUTLINED_FUNCTION_1_4();
  (*(v27 + 16))(v2, v31[1], v0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v0);
  sub_23BB8B3C4(v2, v26);
  MEMORY[0x23EEB43C0](v26, v31[3], v20, v32);
  (*(v22 + 8))(v26, v20);
  OUTLINED_FUNCTION_9_1();
}

uint64_t StoreContent.subscriptionStoreControlBackground<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8_29(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22[0], v22[1], v22[2], v22[3], v22[4]);
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 16))();
  v9 = sub_23BACC9C0();
  v15 = OUTLINED_FUNCTION_16_12(v9, v10, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v11, v9, v12, v13, v14, v21, v22[0]);
  sub_23BB6B068(v15, v16, v17, v18);
  return sub_23BACC510(v22);
}

unint64_t sub_23BACC9C0()
{
  result = qword_27E19F888;
  if (!qword_27E19F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F888);
  }

  return result;
}

uint64_t StoreContent.subscriptionStoreControlBackground(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_11(a1, a2);
  v2 = sub_23BACC9C0();
  v8 = OUTLINED_FUNCTION_15_19(v2, v3, &type metadata for SubscriptionStoreControlBackgroundStyleModifier, v4, v2, v5, v6, v7, v13, v14[0]);
  sub_23BB6B068(v8, v9, v10, v11);
  return sub_23BACC510(v14);
}

void StoreContent.subscriptionStorePickerItemBackground<A>(_:)()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  sub_23BACC70C();
  v2 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_27();
  v6 = OUTLINED_FUNCTION_19_15();
  v7(v6);
  sub_23BB8B350(v0);
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  v8 = OUTLINED_FUNCTION_17_12();
  sub_23BB6B068(v8, v9, v10, v11);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_9_1();
}

void StoreContent.subscriptionStorePickerItemBackground<A, B>(_:in:)()
{
  OUTLINED_FUNCTION_10_0();
  v31[4] = v3;
  v5 = v4;
  v7 = v6;
  v12 = OUTLINED_FUNCTION_10_16(v8, v9, v10, v11);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_3_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v32 = v1;
  v33 = v0;
  v34 = v7;
  v35 = v5;
  v20 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_3_2();
  v22 = v21;
  OUTLINED_FUNCTION_7_0();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v31 - v25;
  (*(v15 + 16))(v19, v31[0], v1, v24);
  OUTLINED_FUNCTION_1_4();
  (*(v27 + 16))(v2, v31[1], v0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v0);
  sub_23BB8B3C4(v2, v26);
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  sub_23BB6B068(v26, v31[3], v20, v31[2]);
  (*(v22 + 8))(v26, v20);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BACCDD0()
{
  sub_23BBDA358();
  sub_23BACC9C0();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCE1C()
{
  sub_23BBDA358();
  sub_23BACC9C0();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCE64()
{
  sub_23BACC70C();
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCED4()
{
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_1_40();
}

uint64_t sub_23BACCF3C()
{
  sub_23BACC9C0();
  OUTLINED_FUNCTION_9_20();
  type metadata accessor for ModifiedStoreContent();
  return OUTLINED_FUNCTION_2_32();
}

uint64_t sub_23BACCF88()
{
  sub_23BACC9C0();
  OUTLINED_FUNCTION_9_20();
  type metadata accessor for ModifiedStoreContent();
  return OUTLINED_FUNCTION_2_32();
}

uint64_t sub_23BACCFD0()
{
  sub_23BACC70C();
  OUTLINED_FUNCTION_9_20();
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_20();
  type metadata accessor for ModifiedStoreContent();
  return OUTLINED_FUNCTION_2_32();
}

uint64_t sub_23BACD044()
{
  OUTLINED_FUNCTION_9_20();
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_20();
  type metadata accessor for ModifiedStoreContent();
  return OUTLINED_FUNCTION_2_32();
}

uint64_t sub_23BACD0B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BACD10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return swift_getWitnessTable();
}

uint64_t *OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a13 = a3;
  a14 = a5;

  return __swift_allocate_boxed_opaque_existential_1(&a10);
}

uint64_t OUTLINED_FUNCTION_10_16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(v4 - 144) = a4;
  *(v4 - 136) = a3;
  *(v4 - 160) = a1;
  *(v4 - 152) = a2;

  return sub_23BBDD648();
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_23BA1D88C(a1, va);
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
}

uint64_t sub_23BACD2D8()
{
  sub_23BA23FE0();
  sub_23BBDA958();
  return v1;
}

uint64_t View.subscriptionStoreOptionGroupStyle<A>(_:)()
{
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v2);
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier();
  OUTLINED_FUNCTION_6_21();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_3_30();
  v7(v6);
  v8 = OUTLINED_FUNCTION_8_30();
  v9(v8);
  v10 = OUTLINED_FUNCTION_5_28();
  MEMORY[0x23EEB43C0](v10);
  return (*(v4 + 8))(v1, v0);
}

uint64_t StoreContent.subscriptionStoreOptionGroupStyle<A>(_:)()
{
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v2);
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier();
  OUTLINED_FUNCTION_6_21();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_3_30();
  v7(v6);
  v8 = OUTLINED_FUNCTION_8_30();
  v9(v8);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_5_28();
  sub_23BB6B068(v10, v11, v12, v13);
  return (*(v4 + 8))(v1, v0);
}

_BYTE *sub_23BACD6AC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BACD748);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BACD788()
{
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier();
  sub_23BBDA358();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BACD7F8()
{
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  type metadata accessor for ModifiedStoreContent();
  return swift_getWitnessTable();
}

_BYTE *sub_23BACD878(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BACD940);
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
          result = OUTLINED_FUNCTION_7_30(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BACD974(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_23BACDAC0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
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

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BACDCC4);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

unint64_t sub_23BACDCF0()
{
  result = qword_27E19F920;
  if (!qword_27E19F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F920);
  }

  return result;
}

uint64_t sub_23BACDD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BACDCF0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BACDDEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F938);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19F940);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_23BACE678;
  v10[2] = v7;
  return result;
}

uint64_t sub_23BACDED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F928);
  v7 = sub_23BBDA358();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  swift_getKeyPath();
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a2 + 16);
  (*(v5 + 32))(v14 + v13, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v16 = sub_23B97B518(&qword_27E19F930, &qword_27E19F928);
  v24 = WitnessTable;
  v25 = v16;
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v9, v7, v17);
  v18 = *(v21 + 8);
  v18(v9, v7);
  sub_23B9D2D88(v12, v7, v17);
  return (v18)(v12, v7);
}

uint64_t sub_23BACE1F4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  result = (*(a4 + 8))(&v6, a3, a4);
  *a1 = v6;
  return result;
}

uint64_t sub_23BACE25C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SubscriptionStoreOptionGroupStyleModifier() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23BACE330(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for SubscriptionStoreOptionGroupStyleModifier() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23BACE1F4(a1, v6, v3, v4);
}

uint64_t sub_23BACE3CC()
{
  type metadata accessor for SubscriptionStoreOptionGroupStyleModifier();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F928);
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19F930, &qword_27E19F928);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreOptionGroupStyleValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 4;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStoreOptionGroupStyleValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x23BACE614);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_23BACE678(_BYTE *result)
{
  v2 = *(v1 + 16);
  if (v2 != 3)
  {
    *result = v2;
  }

  return result;
}

unint64_t sub_23BACE690()
{
  result = qword_27E19F948;
  if (!qword_27E19F948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F940);
    sub_23B97B518(qword_27E19F950, &qword_27E19F938);
    sub_23B97B518(&qword_27E19F930, &qword_27E19F928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19F948);
  }

  return result;
}

uint64_t sub_23BACE83C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(type metadata accessor for StoreListWrapperView() + 36);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  return a1();
}

uint64_t sub_23BACE8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[3] = a2;
  v3 = *(a1 + 24);
  v28[0] = *(a1 + 16);
  sub_23BBDC398();
  v4 = OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_7_31();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v29 = v2;
  v30 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_26();
  v28[12] = OpaqueTypeConformance2;
  v28[13] = sub_23BAD1EA8(v6, v7);
  v28[1] = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v8 = type metadata accessor for AutoEnablingScrollView();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v28 - v21;
  v28[6] = v28[0];
  v28[7] = v3;
  v28[8] = v28[2];
  v23 = sub_23BBDB368();
  sub_23BA75FE8(v23, 1, sub_23BAD1E90, v13);
  OUTLINED_FUNCTION_14_5();
  WitnessTable = swift_getWitnessTable();
  sub_23B9C2924();
  sub_23BBDBB18();
  (*(v10 + 8))(v13, v8);
  v28[10] = WitnessTable;
  v28[11] = MEMORY[0x277CDFC60];
  v24 = swift_getWitnessTable();
  sub_23B9D2D88(v19, v14, v24);
  v25 = *(v16 + 8);
  v25(v19, v14);
  sub_23B9D2D88(v22, v14, v24);
  return (v25)(v22, v14);
}

uint64_t sub_23BACEC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v42 = a1;
  v46 = a4;
  v5 = sub_23BBDB148();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDAE28();
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23BBDC238();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23BBDC398();
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  WitnessTable = swift_getWitnessTable();
  v52 = v12;
  v53 = WitnessTable;
  v38 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v31 - v15;
  sub_23BBDB2B8();
  v17 = sub_23BBDA358();
  v41 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = &v31 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAB0);
  sub_23BBDC248();
  *(swift_allocObject() + 16) = xmmword_23BBE7F10;
  *v11 = xmmword_23BBF9510;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF100], v32);
  sub_23BBDC258();
  sub_23BBDAB58();
  v47 = v33;
  v48 = a3;
  v49 = v42;
  sub_23BACF330();
  sub_23BBDC388();
  v22 = v43;
  sub_23BBDB138();
  v23 = WitnessTable;
  sub_23BBDB968();
  (*(v44 + 8))(v22, v45);
  (*(v40 + 8))(v14, v12);
  swift_getKeyPath();
  v52 = v12;
  v53 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = OpaqueTypeMetadata2;
  sub_23B9968C4();

  (*(v39 + 8))(v16, v25);
  v26 = sub_23BAD1EA8(&qword_27E198368, MEMORY[0x277CDE470]);
  v50 = OpaqueTypeConformance2;
  v51 = v26;
  v27 = swift_getWitnessTable();
  v28 = v37;
  sub_23B9D2D88(v19, v17, v27);
  v29 = *(v41 + 8);
  v29(v19, v17);
  sub_23B9D2D88(v28, v17, v27);
  return (v29)(v28, v17);
}

uint64_t sub_23BACF254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88(v6, v9, v10);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_23BACF330()
{
  sub_23BBDAE28();
  sub_23BAD1EA8(&qword_27E19FAB8, MEMORY[0x277CE0428]);
  return sub_23BBDDC28();
}

uint64_t sub_23BACF3B4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for StoreListItemWrapperView();
  v9 = &a4[v8[11]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &a4[v8[12]];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 0;
  v11 = v8[13];
  *&a4[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  v12 = &a4[v8[14]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &a4[v8[15]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  *a4 = a1;
  result = a3();
  a4[v8[10]] = a2;
  return result;
}

uint64_t sub_23BACF4E0(uint64_t a1)
{
  if (sub_23BACF524(a1))
  {

    return sub_23BBDC318();
  }

  else
  {

    return sub_23BBDC328();
  }
}

BOOL sub_23BACF524(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v12 = *(v7 + 32);
  if (*(v7 + 40) == 1)
  {
    v16[1] = *v7;
    v16[2] = v8;
    v17 = v11;
    v18 = v10;
    v19 = v12;
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9AD3D4(v9, v8, v11, v10, v12, 0);
    (*(v4 + 8))(v6, v3);
  }

  v14 = v17;

  return v14 == &type metadata for LargeProductViewStyle;
}

uint64_t sub_23BACF6E0(uint64_t a1)
{
  if (sub_23BACF524(a1))
  {

    return sub_23BBDAB48();
  }

  else
  {
    sub_23B9A6AA4();

    return sub_23BBDAB78();
  }
}

uint64_t sub_23BACF734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v51 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a1 + 16);
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for ListItemVerticalPaddingModifier();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v52 = *(a1 + 24);
  v74 = v52;
  v75 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v73 = MEMORY[0x277CDF918];
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();
  v10 = sub_23BAD1EA8(v8, v9);
  v70 = v7;
  v71 = v10;
  swift_getWitnessTable();
  v11 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v56 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA60);
  v16 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v57 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA68);
  v21 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v58 = v22;
  MEMORY[0x28223BE20](v23);
  v54 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v55 = &v48 - v26;
  sub_23BACF6E0(a1);
  v60 = v53;
  v61 = v52;
  v62 = v2;
  sub_23BBDC068();
  if (*v2 == 1)
  {
    v27 = &v2[*(a1 + 48)];
    v29 = *v27;
    v28 = *(v27 + 1);
    v30 = *(v27 + 2);
    v31 = *(v27 + 3);
    v32 = *(v27 + 4);
    if (v27[40] == 1)
    {
      *&v63 = *v27;
      *(&v63 + 1) = v28;
      *&v64 = v30;
      *(&v64 + 1) = v31;
      v65 = v32;
    }

    else
    {
      v53 = *(v27 + 2);

      LODWORD(v52) = sub_23BBDD5A8();
      v33 = sub_23BBDB338();
      sub_23BBD9978();

      v34 = v49;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9AD3D4(v29, v28, v53, v31, v32, 0);
      (*(v50 + 8))(v34, v51);
    }

    v76 = v63;
    v77 = v64;
    v78 = v65;
    sub_23BB6BC6C();

    *&v63 = v78;
    sub_23BAD1B40(&v63);
  }

  v35 = swift_getWitnessTable();
  sub_23BAD066C();
  (*(v56 + 8))(v15, v11);
  OUTLINED_FUNCTION_0_12();
  v38 = sub_23B97B518(v36, v37);
  v68 = v35;
  v69 = v38;
  OUTLINED_FUNCTION_8_2();
  v39 = swift_getWitnessTable();
  v40 = v54;
  sub_23BBDBB78();
  (*(v57 + 8))(v20, v16);
  OUTLINED_FUNCTION_3_31();
  v43 = sub_23B97B518(v41, v42);
  v66 = v39;
  v67 = v43;
  v44 = swift_getWitnessTable();
  v45 = v55;
  sub_23B9D2D88(v40, v21, v44);
  v46 = *(v58 + 8);
  v46(v40, v21);
  sub_23B9D2D88(v45, v21, v44);
  return (v46)(v45, v21);
}

uint64_t sub_23BACFDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v72 = a3;
  v71 = sub_23BBDB588();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v55 - v7;
  v57 = sub_23BBDA928();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListItemVerticalPaddingModifier();
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDA358();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = sub_23BBDA358();
  v62 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v64 = v18;
  v67 = v9;
  v60 = sub_23BBDA358();
  v66 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v65 = &v55 - v21;
  v22 = type metadata accessor for StoreListItemWrapperView();
  sub_23BACF4E0(v22);
  sub_23BBDBB18();
  sub_23BBDB388();
  v77 = a2;
  v78 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v61 = v17;
  v58 = WitnessTable;
  sub_23BBDBBB8();
  (*(v12 + 8))(v14, v11);
  v24 = a1 + *(v22 + 48);
  v26 = *(v24 + 8);
  v25 = *(v24 + 16);
  if (*(v24 + 40) == 1)
  {

    v27 = v57;
    v28 = v56;
    v29 = v55;
  }

  else
  {
    v30 = *v24;
    v31 = *(v24 + 32);
    v32 = *(v24 + 24);

    sub_23BBDD5A8();
    v33 = sub_23BBDB338();
    sub_23BBD9978();

    v29 = v55;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9AD3D4(v30, v26, v25, v32, v31, 0);
    v28 = v56;
    v27 = v57;
    (*(v56 + 8))(v29, v57);
  }

  v34 = a1 + *(v22 + 56);
  v35 = v67;
  if ((*(v34 + 8) & 1) == 0)
  {
    v36 = *v34;

    sub_23BBDD5A8();
    v37 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v36, 0);
    (*(v28 + 8))(v29, v27);
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
  v39 = v59;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v38);
  v40 = v39 + *(v35 + 20);
  *v40 = swift_getKeyPath();
  *(v40 + 8) = 0;
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v41 = 0x4024000000000000;
  }

  else if (swift_dynamicCastMetatype())
  {
    v41 = 0x4034000000000000;
  }

  else
  {
    v41 = 0x4014000000000000;
  }

  v42 = v70;
  (*(v69 + 104))(v70, *MEMORY[0x277CE0AA8], v71);
  v43 = v68;
  sub_23BAD0B1C(v41, 0, v42, v68, -INFINITY, INFINITY);

  sub_23B974994(v43, v39);
  v44 = v39 + *(v35 + 24);
  *v44 = v41;
  *(v44 + 8) = 0;
  v75 = v58;
  v76 = MEMORY[0x277CDF918];
  v45 = v64;
  v46 = swift_getWitnessTable();
  v47 = v63;
  v48 = v61;
  MEMORY[0x23EEB43C0](v39, v45, v35, v46);
  sub_23BAD1E34(v39);
  (*(v62 + 8))(v48, v45);
  v49 = sub_23BAD1EA8(&qword_27E19FA58, type metadata accessor for ListItemVerticalPaddingModifier);
  v73 = v46;
  v74 = v49;
  v50 = v60;
  v51 = swift_getWitnessTable();
  v52 = v65;
  sub_23B9D2D88(v47, v50, v51);
  v53 = *(v66 + 8);
  v53(v47, v50);
  sub_23B9D2D88(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_23BAD066C()
{
  sub_23B9A6AA4();
  sub_23BBDAB78();
  sub_23BBDA9C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FA88);
  sub_23BAD1BB0();
  return sub_23BBDBB88();
}

uint64_t sub_23BAD0734@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_23BBDB148();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDC168();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA8);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  if (a1)
  {
    sub_23BBDC158();
    sub_23BBDB118();
    v19 = sub_23BAD1EA8(&qword_27E19CC80, MEMORY[0x277CDF088]);
    sub_23BBDB968();
    (*(v23 + 8))(v5, v24);
    (*(v7 + 8))(v9, v6);
    if (qword_27E197648 != -1)
    {
      swift_once();
    }

    v27 = v6;
    v28 = v19;
    swift_getOpaqueTypeConformance2();
    sub_23BBDBA28();

    (*(v25 + 8))(v12, v10);
    sub_23BBDA338();
    sub_23BAD1D50(v15);
    v20 = v26;
    sub_23BAD1DB8(v18, v26);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v13);
  }

  else
  {
    v22 = v26;

    return __swift_storeEnumTagSinglePayload(v22, 1, 1, v13);
  }
}

uint64_t sub_23BAD0B1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_23BBDB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v26 - v18;
  if (a2)
  {
    (*(v13 + 8))(a3, v12, v17);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
    v21 = v19;
    v22 = 1;
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E8);
    v24 = &v19[*(v23 + 48)];
    v26[1] = a1;
    (*(v13 + 16))(v15, a3, v12);
    sub_23B974940();
    sub_23BBD9D18();
    (*(v13 + 8))(a3, v12);
    *v24 = a5;
    v24[1] = a6;
    v21 = v19;
    v22 = 0;
    v20 = v23;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
  return sub_23B974A04(v19, a4);
}

__n128 sub_23BAD0D28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDB3F8();
  v10 = type metadata accessor for ListItemVerticalPaddingModifier();
  v11 = v2 + *(v10 + 20);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v24.n128_u64[0] = v5;
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v12, 0);
    (*(v6 + 8))(v8, v24.n128_u64[0]);
    if ((v25 & 1) == 0)
    {
LABEL_3:
      if ((*(v2 + *(v10 + 24) + 8) & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  sub_23B975308();
  if ((v14 & 1) == 0)
  {
LABEL_8:
    sub_23BBD9B18();
    v15 = 0;
    *(&v17 + 1) = v16;
    v19.n128_u64[1] = v18;
    v23 = v17;
    v24 = v19;
    goto LABEL_9;
  }

LABEL_7:
  v23 = 0u;
  v24 = 0u;
  v15 = 1;
LABEL_9:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAD0);
  (*(*(v20 - 8) + 16))(a2, a1, v20);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAD8) + 36);
  *v21 = v9;
  result = v24;
  *(v21 + 24) = v23;
  *(v21 + 8) = result;
  *(v21 + 40) = v15;
  return result;
}

uint64_t sub_23BAD0FB8()
{
  v0 = MEMORY[0x277D839B0];
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23BAD216C(319, &qword_27E197E40, v0, MEMORY[0x277CDF468]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_23BAD216C(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle, MEMORY[0x277CDF468]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_23B9C68B0();
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_23BAD216C(319, &qword_27E198D38, &type metadata for InterfaceIdiom, MEMORY[0x277CDF468]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_23BAD1120(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_23BBDA308() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((v12 + ((((v11 + 1) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 65) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
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

    switch(v16)
    {
      case 1:
        v17 = a1[v13];
        if (!a1[v13])
        {
          break;
        }

        goto LABEL_24;
      case 2:
        v17 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_24;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAD1360);
      case 4:
        v17 = *&a1[v13];
        if (!v17)
        {
          break;
        }

LABEL_24:
        v19 = v13 > 3;
        if (v13 <= 3)
        {
          v20 = (v17 - 1) << (8 * v13);
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }

        return v8 + (v24 | v20) + 1;
      default:
        break;
    }
  }

  if (v7 > 0xFE)
  {

    return __swift_getEnumTagSinglePayload(&a1[v11 + 1] & ~v11, v7, v5);
  }

  else
  {
    v21 = *a1;
    v22 = v21 >= 2;
    v23 = (v21 + 2147483646) & 0x7FFFFFFF;
    if (v22)
    {
      return (v23 + 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_23BAD1374(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_23BBDA308() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((v13 + 1) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 65) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
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
  }

  if (v10 < a2)
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v20;
        return;
      case 2:
        *(a1 + v15) = v20;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v15) = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BAD1604);
    case 4:
      *(a1 + v15) = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v9 > 0xFE)
        {

          __swift_storeEnumTagSinglePayload((a1 + v13 + 1) & ~v13, a2, v9, v7);
        }

        else
        {
          *a1 = a2 + 1;
        }
      }

      return;
  }
}

void sub_23BAD162C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BAD216C(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAD16D8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
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

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAD1824);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
        v15 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        return v7 + (v16 | v15) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 40);
  if (v17 > 1)
  {
    return (v17 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_23BAD1838(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41);
    if (v10 <= 3)
    {
      v17 = (v15 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v17;
        return result;
      case 2:
        *&a1[v10] = v17;
        return result;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v17;
        return result;
      default:
        return result;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BAD1A38);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0xFE)
        {
          v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            result = 0.0;
            *(v18 + 24) = 0u;
            *(v18 + 8) = 0u;
            *(v18 + 40) = 0;
            *v18 = (a2 - 255);
          }

          else
          {
            *(v18 + 40) = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return result;
  }
}

uint64_t type metadata accessor for ListItemVerticalPaddingModifier()
{
  result = qword_27E19FAC0;
  if (!qword_27E19FAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAD1B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BAD1BB0()
{
  result = qword_27E19FA90;
  if (!qword_27E19FA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA88);
    sub_23BAD1C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FA90);
  }

  return result;
}

unint64_t sub_23BAD1C34()
{
  result = qword_27E19FA98;
  if (!qword_27E19FA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FAA0);
    sub_23BBDC168();
    sub_23BAD1EA8(&qword_27E19CC80, MEMORY[0x277CDF088]);
    swift_getOpaqueTypeConformance2();
    sub_23BAD1EA8(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FA98);
  }

  return result;
}

uint64_t sub_23BAD1D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD1DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD1E34(uint64_t a1)
{
  v2 = type metadata accessor for ListItemVerticalPaddingModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD1EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BAD1F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23BAD1FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1979E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_23BAD2088()
{
  sub_23B974D48();
  if (v0 <= 0x3F)
  {
    sub_23BAD216C(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23BAD216C(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BAD216C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23BAD21BC()
{
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for ListItemVerticalPaddingModifier();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();
  sub_23BAD1EA8(v0, v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA60);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FA68);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  sub_23B97B518(v2, &qword_27E19FA60);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_31();
  sub_23B97B518(v3, &qword_27E19FA68);
  return swift_getWitnessTable();
}

uint64_t sub_23BAD239C()
{
  sub_23BBDC398();
  OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_7_31();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_4_26();
  sub_23BAD1EA8(v0, v1);
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  type metadata accessor for AutoEnablingScrollView();
  sub_23BBDA358();
  OUTLINED_FUNCTION_14_5();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_23BAD24D8()
{
  result = qword_27E19FAE0;
  if (!qword_27E19FAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FAD8);
    sub_23B97B518(&qword_27E19FAE8, &qword_27E19FAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FAE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_31()
{

  return swift_getWitnessTable();
}

uint64_t sub_23BAD2624@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v3 = *a1;
  v4 = *(*a1 + *MEMORY[0x277D84568]);
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v25 = *(v6 + 16);
  v25(&v22 - v12);
  v14 = *(v6 + 80);
  v26 = v6;
  v23 = (v14 + 48) & ~v14;
  v15 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v24 = *(v3 + *MEMORY[0x277D84568] + 8);
  *(v16 + 4) = v24;
  *(v16 + 5) = v4;
  v17 = *(v6 + 32);
  v17(&v16[(v14 + 48) & ~v14], v13, v4);
  v18 = v27;
  *&v16[v15] = v27;
  (v25)(v11, v29, v4);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v23;
  *(v19 + 4) = v24;
  *(v19 + 5) = v4;
  v17(&v19[v20], v11, v4);
  *&v19[v15] = v18;

  sub_23BBDC128();
  return (*(v26 + 8))(v29, v4);
}

uint64_t sub_23BAD2888@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v39 = a2;
  v35 = a3;
  v36 = a4;
  v34 = a1;
  v37 = a7;
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v31 = *(v10 + 16);
  v31(&v30 - v15, v7, v17);
  v18 = *(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = *(a5 + 16);
  v21 = v38;
  *(v19 + 4) = v20;
  *(v19 + 5) = v21;
  v22 = v39;
  *(v19 + 6) = v34;
  *(v19 + 7) = v22;
  v34 = *(v10 + 32);
  v34(&v19[(v18 + 64) & ~v18], v16, a5);
  v23 = v33;
  v31(v33, v32, a5);
  v24 = (v18 + 48) & ~v18;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v38;
  *(v25 + 4) = v20;
  *(v25 + 5) = v26;
  v34(&v25[v24], v23, a5);
  v27 = &v25[(v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
  v28 = v36;
  *v27 = v35;
  *(v27 + 1) = v28;

  return sub_23BBDC128();
}

uint64_t sub_23BAD2AB8@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a2);
  return v4(&v6, 0);
}

uint64_t sub_23BAD2B7C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - v1);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_23BAD2C74(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDC138();
  MEMORY[0x23EEB48C0](v11);
  a3(v10);
  return (*(v8 + 8))(v10, a6);
}

uint64_t sub_23BAD2D6C()
{
  v1 = *(v0 + 32);
  sub_23BBDC138();
  OUTLINED_FUNCTION_20_1();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_35();
  (*(v4 + 8))(v0 + v3 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BAD2E5C()
{
  v1 = v0[4];
  v2 = *(sub_23BBDC138() - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  return sub_23BAD2C74(v3, v4, v5, v6, v7, v1);
}

uint64_t sub_23BAD2EEC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2(v1);
  sub_23BBDC138();
  return sub_23BBDC0F8();
}

uint64_t sub_23BAD2F88()
{
  v1 = *(v0 + 32);
  sub_23BBDC138();
  OUTLINED_FUNCTION_20_1();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_3_32();

  OUTLINED_FUNCTION_2_35();
  (*(v4 + 8))(v0 + ((v3 + 48) & ~v3) + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_23BAD3070(uint64_t a1)
{
  sub_23BBDC138();

  return sub_23BAD2EEC(a1);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_3_2();
  v3 = v2;
  v4 = *(v2 + 80);
  OUTLINED_FUNCTION_3_32();
  (*(v3 + 8))(v0 + ((v4 + 48) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_3_32()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_23BAD330C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23BAD3368(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BBDC208();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SubscriptionOptionSectionAccessorySubview()
{
  result = qword_27E19FAF0;
  if (!qword_27E19FAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAD3400()
{
  result = sub_23BBDC208();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BAD34B8()
{
  sub_23BA23F8C();
  sub_23BBDA298();
  return v1;
}

uint64_t sub_23BAD34F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC208();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_23BAD3568(uint64_t a1)
{
  *(a1 + 8) = sub_23BAD35EC(&qword_27E19FB00, type metadata accessor for SubscriptionOptionSectionAccessorySubview);
  result = sub_23BAD35EC(qword_27E19E330, type metadata accessor for SubscriptionOptionSectionAccessorySubview);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23BAD35EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BAD3680(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1 & 1;
  sub_23BB1106C(KeyPath, &v8, a2, a3);
}

uint64_t sub_23BAD36F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAD34B8();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionOptionSectionAccessorySubview.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x23BAD3828);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23BAD3864()
{
  result = qword_27E19FB08;
  if (!qword_27E19FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB08);
  }

  return result;
}

uint64_t sub_23BAD38B8(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
  v5 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  v14 = a1;
  sub_23BAD3A20();
  sub_23BBDB768();
  v11 = sub_23BAD3A74();
  v13[1] = a3;
  v13[2] = v11;
  swift_getWitnessTable();
  sub_23BBDBB68();
  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23BAD3A20()
{
  result = qword_27E19FB10;
  if (!qword_27E19FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB10);
  }

  return result;
}

unint64_t sub_23BAD3A74()
{
  result = qword_27E1999D8;
  if (!qword_27E1999D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1999D8);
  }

  return result;
}

uint64_t sub_23BAD3AF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BAD3B10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

void sub_23BAD3B60()
{
  OUTLINED_FUNCTION_31_3();
  v1 = v0;
  v89 = v2;
  v90 = v3;
  v5 = v4;
  v87 = v6;
  v88 = v7;
  v91 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - v11;
  v85 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v83 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v84 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38);
  OUTLINED_FUNCTION_13_0(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  v21 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB30);
  OUTLINED_FUNCTION_13_0(v28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v79 - v30;
  v32 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_1();
  v36 = v35 - v34;
  v86 = *(v23 + 16);
  v86(v27, v5, v21);
  sub_23BAD41EC(v27, v31);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_23B979910(v31, &qword_27E19FB30);
    goto LABEL_34;
  }

  sub_23BAD7C14(v31, v36);
  v81 = *v1;
  if (*(v1 + 8))
  {
    v82 = 1;
    v37 = 0.0;
    v38 = 1;
LABEL_21:
    OUTLINED_FUNCTION_11_18();
    v93 = 0;
    sub_23BBD9F18();
    if (v38 || v62 > v81)
    {
      goto LABEL_28;
    }

    v63 = v81 - v62 + *(v1 + 16);
    sub_23B99FCE0(v36, v12, &qword_27E199DE8);
    v64 = v85;
    if (__swift_getEnumTagSinglePayload(v12, 1, v85) == 1)
    {
      sub_23B979910(v12, &qword_27E199DE8);
      v65 = v63;
    }

    else
    {
      v66 = v12;
      v67 = v83;
      (*(v83 + 32))(v84, v66, v64);
      OUTLINED_FUNCTION_11_18();
      v93 = 0;
      sub_23BBD9F18();
      v65 = v68;
      (*(v67 + 8))(v84, v85);
    }

    if (v65 >= v63 + 0.2)
    {
LABEL_28:
      if (v82)
      {
        OUTLINED_FUNCTION_11_18();
        OUTLINED_FUNCTION_21_13(v73, v74);
        v37 = v75;
      }

      v76 = v37 - *(v1 + 16);
      if (!v38)
      {
        sub_23BAD7C78(v36);
        goto LABEL_34;
      }

      v77 = v90;
      sub_23B9B9CD0(&v92, v76);
      sub_23BAD7C78(v36);
      v78 = *(type metadata accessor for StructuredScrollViewContentLayout.Cache(0) + 20);
      sub_23B979910(v77 + v78, &qword_27E19FB38);
      v86(v77 + v78, v5, v21);
      v71 = v77 + v78;
      v72 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_11_18();
      v93 = 0;
      sub_23BBD9F18();
      sub_23BAD7C78(v36);
      v69 = v90;

      *v69 = MEMORY[0x277D84FA0];
      v70 = *(type metadata accessor for StructuredScrollViewContentLayout.Cache(0) + 20);
      sub_23B979910(v69 + v70, &qword_27E19FB38);
      v71 = v69 + v70;
      v72 = 1;
    }

    __swift_storeEnumTagSinglePayload(v71, v72, 1, v21);
LABEL_34:
    OUTLINED_FUNCTION_30_4();
    return;
  }

  v79 = v12;
  v80 = v5;
  v39 = *(v1 + 16);
  v40 = *(v1 + 32);
  v41 = type metadata accessor for StructuredScrollViewContentLayout.Cache(0);
  v42 = v90;
  sub_23B99FCE0(v90 + *(v41 + 20), v20, &qword_27E19FB38);
  v82 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
  v44 = OUTLINED_FUNCTION_19_16();
  sub_23B979910(v44, v45);
  if (EnumTagSinglePayload == 1)
  {
    v38 = 0;
    v37 = 0.0;
    v5 = v80;
    v12 = v79;
    goto LABEL_21;
  }

  v46 = 0;
  v47 = *v42;
  v48 = *v42;
  v49 = 1 << *(*v42 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v52 = *(v48 + 56);
  v51 = v48 + 56;
  v53 = v81 - (v39 + v40);
  v54 = v50 & v52;
  v55 = (v49 + 63) >> 6;
  v5 = v80;
  v12 = v79;
  while (v54)
  {
    v56 = v46;
LABEL_16:
    v57 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    if (vabdd_f64(*(*(v47 + 48) + ((v56 << 9) | (8 * v57))), v53) < 0.001)
    {
      OUTLINED_FUNCTION_11_18();
      OUTLINED_FUNCTION_21_13(v58, v59);
      v37 = v60;
      v82 = 0;
      v38 = v60 >= v53;
      v61 = v81;
      if (v60 >= v53)
      {
        v61 = 0.0;
      }

      v81 = v61;
      goto LABEL_21;
    }
  }

  while (1)
  {
    v56 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v56 >= v55)
    {
      v38 = 0;
      v82 = 1;
      v37 = 0.0;
      goto LABEL_21;
    }

    v54 = *(v51 + 8 * v56);
    ++v46;
    if (v54)
    {
      v46 = v56;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_23BAD41EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v114 = a2;
  v2 = sub_23BBD9F58();
  v136 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v109 = &v109 - v6;
  MEMORY[0x28223BE20](v7);
  v138 = &v109 - v8;
  v9 = sub_23BBDA098();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E140);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v109 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  MEMORY[0x28223BE20](v17 - 8);
  v127 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v126 = &v109 - v20;
  MEMORY[0x28223BE20](v21);
  v125 = &v109 - v22;
  MEMORY[0x28223BE20](v23);
  v124 = &v109 - v24;
  MEMORY[0x28223BE20](v25);
  v123 = &v109 - v26;
  MEMORY[0x28223BE20](v27);
  v111 = &v109 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v109 - v30;
  v32 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v2);
  v134 = v32[5];
  __swift_storeEnumTagSinglePayload(&v34[v134], 1, 1, v2);
  v133 = v32[7];
  __swift_storeEnumTagSinglePayload(&v34[v133], 1, 1, v2);
  v112 = v32;
  v35 = v32[8];
  v139 = v34;
  v132 = v35;
  __swift_storeEnumTagSinglePayload(&v34[v35], 1, 1, v2);
  v128 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v2);
  v36 = *(v10 + 16);
  v37 = v9;
  v36(v12, v120, v9);
  v36(v16, v12, v9);
  v38 = *(v14 + 44);
  v39 = sub_23BA8955C(&qword_27E199DF0);
  sub_23BBDD438();
  v40 = *(v10 + 8);
  v113 = v10 + 8;
  v110 = v40;
  v41 = (v40)(v12, v9);
  v137 = (v136 + 16);
  v140 = (v136 + 32);
  v119 = " the structured scroll view.";
  v118 = " background components";
  v117 = "ent background components";
  v116 = "cate\nbottom content components";
  v115 = "ground components";
  v122 = (v136 + 8);
  v121 = "11Coordinator";
  v41.n128_u64[0] = 136446466;
  v129 = v41;
  v130 = v9;
  v131 = v4;
  v135 = v39;
  v136 = v38;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v16[v38] == v141)
    {
      break;
    }

    v42 = sub_23BBDD558();
    v43 = v138;
    (*v137)(v138);
    v42(&v141, 0);
    sub_23BBDD4B8();
    v44 = *v140;
    (*v140)(v4, v43, v2);
    sub_23BAD3A20();
    sub_23BBD9F68();
    switch(v141)
    {
      case 1:
        v77 = v124;
        sub_23B99FCE0(&v139[v134], v124, &qword_27E199DE8);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v2);
        sub_23B979910(v77, &qword_27E199DE8);
        if (EnumTagSinglePayload != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v79 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v79, qword_27E1BFC88);
          v80 = sub_23BBDD5A8();
          v81 = sub_23BBD9988();
          if (os_log_type_enabled(v81, v80))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v141 = v83;
            *v82 = v129.n128_u32[0];
            *(v82 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v141);
            *(v82 + 12) = 2082;
            *(v82 + 14) = sub_23BA5AB90(0xD000000000000051, v116 | 0x8000000000000000, &v141);
            _os_log_impl(&dword_23B970000, v81, v80, "%{public}s%{public}s", v82, 0x16u);
            swift_arrayDestroy();
            v84 = v83;
            v4 = v131;
            MEMORY[0x23EEB6DC0](v84, -1, -1);
            v85 = v82;
            v37 = v130;
            MEMORY[0x23EEB6DC0](v85, -1, -1);
          }
        }

        v64 = v139;
        v65 = v134;
        goto LABEL_34;
      case 2:
        v66 = v128;
        v67 = v125;
        sub_23B99FCE0(v128, v125, &qword_27E199DE8);
        if (__swift_getEnumTagSinglePayload(v67, 1, v2) == 1)
        {
          sub_23B979910(v66, &qword_27E199DE8);
          sub_23B979910(v67, &qword_27E199DE8);
          v38 = v136;
        }

        else
        {
          sub_23B979910(v67, &qword_27E199DE8);
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v93, qword_27E1BFC88);
          v94 = sub_23BBDD5A8();
          v95 = sub_23BBD9988();
          v96 = os_log_type_enabled(v95, v94);
          v38 = v136;
          if (v96)
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v141 = v98;
            *v97 = v129.n128_u32[0];
            *(v97 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v141);
            *(v97 + 12) = 2082;
            *(v97 + 14) = sub_23BA5AB90(0xD00000000000004ELL, v117 | 0x8000000000000000, &v141);
            _os_log_impl(&dword_23B970000, v95, v94, "%{public}s%{public}s", v97, 0x16u);
            swift_arrayDestroy();
            v99 = v98;
            v4 = v131;
            MEMORY[0x23EEB6DC0](v99, -1, -1);
            v100 = v97;
            v37 = v130;
            MEMORY[0x23EEB6DC0](v100, -1, -1);
          }

          v66 = v128;
          sub_23B979910(v128, &qword_27E199DE8);
        }

        v44(v66, v4, v2);
        __swift_storeEnumTagSinglePayload(v66, 0, 1, v2);
        continue;
      case 3:
        v68 = v126;
        sub_23B99FCE0(&v139[v133], v126, &qword_27E199DE8);
        v69 = __swift_getEnumTagSinglePayload(v68, 1, v2);
        sub_23B979910(v68, &qword_27E199DE8);
        if (v69 != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v70, qword_27E1BFC88);
          v71 = sub_23BBDD5A8();
          v72 = sub_23BBD9988();
          if (os_log_type_enabled(v72, v71))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v141 = v74;
            *v73 = v129.n128_u32[0];
            *(v73 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v141);
            *(v73 + 12) = 2082;
            *(v73 + 14) = sub_23BA5AB90(0xD000000000000059, v118 | 0x8000000000000000, &v141);
            _os_log_impl(&dword_23B970000, v72, v71, "%{public}s%{public}s", v73, 0x16u);
            swift_arrayDestroy();
            v75 = v74;
            v4 = v131;
            MEMORY[0x23EEB6DC0](v75, -1, -1);
            v76 = v73;
            v37 = v130;
            MEMORY[0x23EEB6DC0](v76, -1, -1);
          }
        }

        v64 = v139;
        v65 = v133;
        goto LABEL_34;
      case 4:
        v55 = v127;
        sub_23B99FCE0(&v139[v132], v127, &qword_27E199DE8);
        v56 = __swift_getEnumTagSinglePayload(v55, 1, v2);
        sub_23B979910(v55, &qword_27E199DE8);
        if (v56 != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v57, qword_27E1BFC88);
          v58 = sub_23BBDD5A8();
          v59 = sub_23BBD9988();
          if (os_log_type_enabled(v59, v58))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v141 = v61;
            *v60 = v129.n128_u32[0];
            *(v60 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v141);
            *(v60 + 12) = 2082;
            *(v60 + 14) = sub_23BA5AB90(0xD000000000000056, v119 | 0x8000000000000000, &v141);
            _os_log_impl(&dword_23B970000, v59, v58, "%{public}s%{public}s", v60, 0x16u);
            swift_arrayDestroy();
            v62 = v61;
            v4 = v131;
            MEMORY[0x23EEB6DC0](v62, -1, -1);
            v63 = v60;
            v37 = v130;
            MEMORY[0x23EEB6DC0](v63, -1, -1);
          }
        }

        v64 = v139;
        v65 = v132;
LABEL_34:
        sub_23B979910(v64 + v65, &qword_27E199DE8);
        v44((v64 + v65), v4, v2);
        __swift_storeEnumTagSinglePayload(v64 + v65, 0, 1, v2);
        v38 = v136;
        break;
      case 5:
        if (qword_27E1976D0 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v86, qword_27E1BFC88);
        v87 = sub_23BBDD5A8();
        v88 = sub_23BBD9988();
        if (os_log_type_enabled(v88, v87))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v141 = v90;
          *v89 = v129.n128_u32[0];
          *(v89 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v141);
          *(v89 + 12) = 2082;
          *(v89 + 14) = sub_23BA5AB90(0xD00000000000006CLL, v121 | 0x8000000000000000, &v141);
          _os_log_impl(&dword_23B970000, v88, v87, "%{public}s%{public}s", v89, 0x16u);
          swift_arrayDestroy();
          v91 = v90;
          v4 = v131;
          MEMORY[0x23EEB6DC0](v91, -1, -1);
          v92 = v89;
          v37 = v130;
          MEMORY[0x23EEB6DC0](v92, -1, -1);
        }

        (*v122)(v4, v2);
        break;
      default:
        v45 = v123;
        sub_23B99FCE0(v139, v123, &qword_27E199DE8);
        v46 = __swift_getEnumTagSinglePayload(v45, 1, v2);
        v38 = v136;
        sub_23B979910(v45, &qword_27E199DE8);
        if (v46 != 1)
        {
          if (qword_27E1976D0 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v47, qword_27E1BFC88);
          v48 = sub_23BBDD5A8();
          v49 = sub_23BBD9988();
          if (os_log_type_enabled(v49, v48))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v141 = v51;
            *v50 = v129.n128_u32[0];
            *(v50 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v141);
            *(v50 + 12) = 2082;
            *(v50 + 14) = sub_23BA5AB90(0xD000000000000046, v115 | 0x8000000000000000, &v141);
            _os_log_impl(&dword_23B970000, v49, v48, "%{public}s%{public}s", v50, 0x16u);
            swift_arrayDestroy();
            v52 = v51;
            v4 = v131;
            MEMORY[0x23EEB6DC0](v52, -1, -1);
            v53 = v50;
            v37 = v130;
            MEMORY[0x23EEB6DC0](v53, -1, -1);
          }
        }

        v54 = v139;
        sub_23B979910(v139, &qword_27E199DE8);
        v44(v54, v4, v2);
        __swift_storeEnumTagSinglePayload(v54, 0, 1, v2);
        break;
    }
  }

  v110(v120, v37);
  sub_23B979910(v16, &qword_27E19E140);
  v101 = v111;
  sub_23BAD7D44(v128, v111);
  if (__swift_getEnumTagSinglePayload(v101, 1, v2) == 1)
  {
    sub_23B979910(v101, &qword_27E199DE8);
    v102 = v139;
    sub_23B979910(v139, &qword_27E199DE8);
    sub_23B979910(v102 + v134, &qword_27E199DE8);
    sub_23B979910(v102 + v133, &qword_27E199DE8);
    sub_23B979910(v102 + v132, &qword_27E199DE8);
    return __swift_storeEnumTagSinglePayload(v114, 1, 1, v112);
  }

  else
  {
    v104 = *v140;
    v105 = v109;
    (*v140)(v109, v101, v2);
    v106 = v112;
    v107 = v139;
    v104(&v139[v112[6]], v105, v2);
    v108 = v114;
    sub_23BAD7DB4(v107, v114);
    __swift_storeEnumTagSinglePayload(v108, 0, 1, v106);
    return sub_23BAD7C78(v107);
  }
}

double sub_23BAD53FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a2;
  v51[1] = a1;
  v6 = sub_23BBD9F58();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51[0] = v51 - v10;
  v11 = sub_23BBDA098();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB40) - 8;
  MEMORY[0x28223BE20](v56);
  v15 = v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB48);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB50);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v51 - v25;
  (*(v12 + 16))(v18, a5, v11, v24);
  v27 = *(v12 + 32);
  v27(v26, v18, v11);
  v28 = &v26[*(v20 + 44)];
  *v28 = sub_23BAD7990;
  v28[1] = 0;
  v55 = v26;
  sub_23B99FCE0(v26, v22, &qword_27E19FB50);
  v27(v53, v22, v11);
  sub_23BA8955C(&qword_27E19E138);
  sub_23BBDD188();
  v29 = &v22[*(v20 + 44)];
  v30 = *v29;
  v31 = v29[1];
  v32 = &v15[*(v56 + 44)];
  v56 = v30;
  *v32 = v30;
  *(v32 + 1) = v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E140) + 36);
  sub_23BA8955C(&qword_27E199DF0);
  v34 = (v54 + 2);
  v35 = (v54 + 1);
  v54 += 4;
  v36 = 0.0;
  v37 = 0.0;
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v15[v33] == v58[0])
    {
      break;
    }

    v38 = sub_23BBDD558();
    (*v34)(v8);
    v38(v58, 0);
    sub_23BBDD4B8();
    if ((v56)(v8))
    {
      v39 = v51[0];
      (*v54)(v51[0], v8, v6);
      sub_23BAD3A20();
      sub_23BBD9F68();
      if (LOBYTE(v58[0]))
      {
        LOBYTE(v58[0]) = v52 & 1;
        v57 = 1;
        sub_23BBD9F18();
        v41 = v40;
        v43 = v42;
        (*v35)(v39, v6);
      }

      else
      {
        LOBYTE(v58[0]) = v52 & 1;
        v57 = 1;
        sub_23BBD9F18();
        v41 = v44;
        v43 = v45;
        LOBYTE(v58[0]) = 0;
        v57 = 0;
        sub_23BBD9F18();
        v47 = v46;
        v49 = v48;
        (*v35)(v39, v6);
        if (v43 < v49)
        {
          v41 = v47;
          v43 = v49;
        }
      }

      if (v36 <= v41)
      {
        v36 = v41;
      }

      v37 = v37 + v43;
    }

    else
    {
      (*v35)(v8, v6);
    }
  }

  sub_23B979910(v55, &qword_27E19FB50);
  sub_23B979910(v15, &qword_27E19FB40);
  return v36;
}

void sub_23BAD59D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_31_3();
  a27 = v29;
  a28 = v30;
  v255 = v28;
  v257 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB20);
  v41 = OUTLINED_FUNCTION_13_0(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_5();
  v260 = *&v42;
  MEMORY[0x28223BE20](v43);
  v45 = v232 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB28);
  v47 = OUTLINED_FUNCTION_13_0(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_20_12(v50);
  v254 = sub_23BBDA228();
  OUTLINED_FUNCTION_7();
  v256 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_3();
  v252 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  v60 = OUTLINED_FUNCTION_13_0(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  v68 = v232 - v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_20_12(v72);
  v73 = sub_23BBD9F58();
  OUTLINED_FUNCTION_7();
  v258 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v81);
  v83 = v232 - v82;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_18_3();
  v259 = v85;
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_20_12(v87);
  v88 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v90 = v89;
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_3_1();
  v94 = v93 - v92;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB30);
  OUTLINED_FUNCTION_13_0(v95);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v96);
  v98 = v232 - v97;
  v99 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_3_1();
  v103 = v102 - v101;
  v105 = *(v90 + 16);
  v104 = v90 + 16;
  v105(v94, *&v257, v88);
  sub_23BAD41EC(v94, v98);
  if (__swift_getEnumTagSinglePayload(v98, 1, v99) != 1)
  {
    sub_23BAD7C14(v98, v103);
    OUTLINED_FUNCTION_24_11(v103 + *(v99 + 32), &qword_27E199DE8, &a18);
    OUTLINED_FUNCTION_6_22(v104);
    v108 = v103;
    v253 = v99;
    if (v228)
    {
      sub_23B979910(v104, &qword_27E199DE8);
      v111 = v255;
    }

    else
    {
      v109 = v258;
      v110 = v244;
      (*(v258 + 32))(v244, v104, v73);
      v111 = v255;
      v112 = *(v255 + 16);
      OUTLINED_FUNCTION_14_18();
      v257 = v39 - v112;
      sub_23BBDC3F8();
      v268.origin.x = OUTLINED_FUNCTION_3_33();
      v268.size.height = v33;
      CGRectGetWidth(v268);
      v269.origin.x = OUTLINED_FUNCTION_3_33();
      v269.size.height = v33;
      CGRectGetHeight(v269);
      v37 = v39;
      v39 = v35;
      v35 = v33;
      OUTLINED_FUNCTION_2_36();
      sub_23BBD9F28();
      (*(v109 + 8))(v110, v73);
    }

    v113 = v250;
    v114 = *(v111 + 8);
    if (v114)
    {
      v115 = 10.0;
    }

    else
    {
      v115 = *v111;
    }

    v270.origin.x = OUTLINED_FUNCTION_0_40();
    Height = CGRectGetHeight(v270);
    v248 = v103;
    if (Height < v115 + 0.2 || (v271.origin.x = OUTLINED_FUNCTION_0_40(), CGRectGetHeight(v271) == round(v115)))
    {
      v117 = *(v111 + 64) | v114;
      sub_23B99FCE0(v108, v113, &qword_27E199DE8);
      OUTLINED_FUNCTION_6_22(v113);
      if (v228)
      {
        sub_23B979910(v113, &qword_27E199DE8);
        v118 = v253;
        v119 = v258;
        (*(v258 + 16))(v245, v108 + *(v253 + 24), v73);
        sub_23B99FCE0(v108 + *(v118 + 28), v246, &qword_27E199DE8);
        if (sub_23BAD742C() == 2)
        {
          v272.origin.x = OUTLINED_FUNCTION_0_40();
          CGRectGetHeight(v272);
          OUTLINED_FUNCTION_27_4();
        }

        else
        {
          OUTLINED_FUNCTION_27_4();
          v131 = OUTLINED_FUNCTION_0_40();
          if (v117)
          {
            CGRectGetHeight(*&v131);
          }

          else
          {
            CGRectGetHeight(*&v131);
          }
        }

        v174 = v111;
        v175 = *(v111 + 48);
        v282.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetWidth(v282);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_22_12();
        v176 = v245;
        sub_23BBD9F08();
        MEMORY[0x23EEB2A20](v175);
        sub_23BBDA208();
        sub_23BA87130();
        OUTLINED_FUNCTION_12_21(v177);
        v283.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetMinX(v283);
        v284.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetWidth(v284);
        v285.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetMaxY(v285);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_22_12();
        sub_23BBD9F28();
        v178 = *(v119 + 8);
        v178(v176, v73);
        v170 = v246;
        OUTLINED_FUNCTION_6_22(v246);
        if (!v228)
        {
          OUTLINED_FUNCTION_14_18();
          v260 = *(v174 + 32);
          v182 = v239;
          (*(v119 + 32))(v239, v170, v73);
          v286.origin.x = v35;
          v286.origin.y = v37;
          v286.size.width = v33;
          v286.size.height = v33;
          CGRectGetMinX(v286);
          v287.origin.x = OUTLINED_FUNCTION_3_33();
          v287.size.height = v33;
          CGRectGetMaxY(v287);
          sub_23BBDC408();
          v288.origin.x = OUTLINED_FUNCTION_3_33();
          v288.size.height = v33;
          CGRectGetWidth(v288);
          sub_23BBDA218();
          OUTLINED_FUNCTION_2_36();
          OUTLINED_FUNCTION_13_23();
          sub_23BBD9F28();
          v178(v182, v73);
          v183 = OUTLINED_FUNCTION_26_7();
          v184(v183);
          goto LABEL_40;
        }

        v179 = OUTLINED_FUNCTION_26_7();
        v180(v179);
      }

      else
      {
        v120 = v113;
        v121 = *(v258 + 32);
        v121(v259, v120, v73);
        v122 = *(v111 + 16);
        v244 = *(v111 + 32);
        v262 = 0u;
        v263 = 0u;
        v264 = v35;
        v265 = v33;
        v266 = v122;
        v123 = sub_23BAD742C();
        if (v123 == 2)
        {
          v267 = 0;
          v261 = 0;
          OUTLINED_FUNCTION_22_12();
          sub_23BBD9F18();
          v125 = v124;
          v127 = v126;
          *&v263 = v124;
          v267 = 0;
          v261 = 0;
          OUTLINED_FUNCTION_22_12();
          sub_23BBD9F18();
          if (v33 - (v128 - v122) >= v127)
          {
            v250 = v125;
            v249 = v127;
          }

          else
          {
            v267 = 0;
            v261 = 0;
            OUTLINED_FUNCTION_22_12();
            sub_23BBD9F18();
            v250 = v129;
            v249 = v130;
          }
        }

        else
        {
          sub_23BAD742C();
          sub_23BAD757C();
          v249 = *(&v263 + 1);
          v250 = v263;
        }

        v139 = v252;
        LOBYTE(v262) = 0;
        v267 = 0;
        sub_23BBD9F08();
        v245 = *(v255 + 48);
        MEMORY[0x23EEB2A20]();
        sub_23BBDA208();
        sub_23BA87130();
        OUTLINED_FUNCTION_12_21(v140);
        v273.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetMinX(v273);
        v274.origin.x = OUTLINED_FUNCTION_0_40();
        CGRectGetWidth(v274);
        v275.origin.x = OUTLINED_FUNCTION_25_7();
        v232[0] = *&v275.size.height;
        CGRectGetMinY(v275);
        v260 = v122;
        v141 = v256;
        v142 = OUTLINED_FUNCTION_9_21();
        v143 = v254;
        v255 = v144;
        v246 = v145;
        v145(v142, v139, v254);
        sub_23BBDA208();
        sub_23BBDA218();
        v146 = *(v141 + 8);
        v256 = v141 + 8;
        v257 = *&v146;
        v146(v139, v143);
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_24_11(v248 + *(v147 + 20), &qword_27E199DE8, &a12);
        v148 = v247;
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v149, v150, v151, v73);
        sub_23BAD7CD4(v139, v148);
        OUTLINED_FUNCTION_2_36();
        v152 = v259;
        sub_23BBD9F18();
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_8_32();
        sub_23BBD9F28();
        OUTLINED_FUNCTION_24_11(v148, &qword_27E19FB28, &a13);
        sub_23BAD7D44(v152, v45);
        for (i = (v258 + 8); ; (*i)(v83, v73))
        {
          sub_23BAD7D44(v45, v68);
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v154, v155, v156, v73);
          OUTLINED_FUNCTION_6_22(v68);
          if (v228)
          {
            break;
          }

          v121(v83, v68, v73);
          OUTLINED_FUNCTION_2_36();
          OUTLINED_FUNCTION_8_32();
          sub_23BBD9F28();
        }

        sub_23B979910(v45, &qword_27E19FB20);
        sub_23B979910(v247, &qword_27E19FB28);
        OUTLINED_FUNCTION_28_4();
        v258 = *(v157 + 24);
        OUTLINED_FUNCTION_2_36();
        v158 = v248;
        v159 = v243;
        sub_23BBD9F08();
        MEMORY[0x23EEB2A20](v245);
        sub_23BBDA208();
        sub_23BA87130();
        v161 = OUTLINED_FUNCTION_12_21(v160);
        if (v228)
        {
          v163 = v161;
        }

        else
        {
          v163 = v162;
        }

        v250 = *&v163;
        v276.origin.x = OUTLINED_FUNCTION_3_33();
        v164 = *v232;
        *&v276.size.height = v232[0];
        CGRectGetMinX(v276);
        v277.origin.x = OUTLINED_FUNCTION_3_33();
        v277.size.height = v164;
        CGRectGetWidth(v277);
        v278.origin.x = OUTLINED_FUNCTION_3_33();
        v278.size.height = v164;
        CGRectGetMinY(v278);
        sub_23BBDA218();
        v165 = v251;
        v166 = v254;
        v246(v251, v159, v254);
        sub_23BBDA208();
        sub_23BBDA218();
        v167 = v257;
        (*&v257)(v165, v166);
        OUTLINED_FUNCTION_2_36();
        sub_23BBD9F28();
        OUTLINED_FUNCTION_28_4();
        v169 = v158 + *(v168 + 28);
        v170 = v242;
        sub_23B99FCE0(v169, v242, &qword_27E199DE8);
        OUTLINED_FUNCTION_6_22(v170);
        if (!v228)
        {
          v121(v241, v170, v73);
          v279.origin.x = OUTLINED_FUNCTION_3_33();
          v279.size.height = v164;
          CGRectGetMinX(v279);
          v280.origin.x = OUTLINED_FUNCTION_3_33();
          v280.size.height = v164;
          CGRectGetMinY(v280);
          v171 = v252;
          sub_23BBDA218();
          sub_23BBDC3F8();
          v281.origin.x = OUTLINED_FUNCTION_3_33();
          v281.size.height = v164;
          CGRectGetWidth(v281);
          sub_23BBDA218();
          OUTLINED_FUNCTION_2_36();
          OUTLINED_FUNCTION_13_23();
          v172 = v241;
          sub_23BBD9F28();
          v173 = *i;
          (*i)(v172, v73);
          (*&v167)(v159, v166);
          (*&v167)(v171, v166);
          v173(v259, v73);
LABEL_40:
          v185 = v248;
LABEL_41:
          sub_23BAD7C78(v185);
          goto LABEL_42;
        }

        (*&v167)(v159, v166);
        (*&v167)(v252, v166);
        (*i)(v259, v73);
      }

      v181 = v248;
LABEL_38:
      sub_23BAD7C78(v181);
      v106 = &qword_27E199DE8;
      v107 = v170;
      goto LABEL_39;
    }

    v135 = v235;
    sub_23B99FCE0(v103, v235, &qword_27E199DE8);
    LODWORD(v259) = __swift_getEnumTagSinglePayload(v135, 1, v73);
    if (v259 == 1)
    {
      sub_23B979910(v135, &qword_27E199DE8);
      v136 = 0;
      v137 = v256;
      v138 = v254;
    }

    else
    {
      v186 = v258 + 32;
      v187 = *(v258 + 32);
      v187();
      v289.origin.x = OUTLINED_FUNCTION_0_40();
      CGRectGetWidth(v289);
      v188 = v236;
      sub_23BAD71F4(0, v236);
      v189 = v188;
      MEMORY[0x23EEB2A20](*(v111 + 48));
      sub_23BBDA208();
      sub_23BA87130();
      OUTLINED_FUNCTION_12_21(v190);
      v290.origin.x = OUTLINED_FUNCTION_0_40();
      CGRectGetMinX(v290);
      v291.origin.x = OUTLINED_FUNCTION_0_40();
      CGRectGetWidth(v291);
      v257 = v39;
      v292.origin.x = OUTLINED_FUNCTION_25_7();
      CGRectGetMinY(v292);
      v191 = v256;
      v192 = OUTLINED_FUNCTION_9_21();
      v193 = v188;
      v194 = v254;
      v195(v192, v193, v254);
      sub_23BBDA208();
      sub_23BBDA218();
      v252 = *(v191 + 8);
      v252(v189, v194);
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_24_11(v103 + *(v196 + 20), &qword_27E199DE8, &a12);
      v197 = v237;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v73);
      sub_23BAD7CD4(v189, v197);
      OUTLINED_FUNCTION_2_36();
      v201 = v240;
      sub_23BBD9F18();
      OUTLINED_FUNCTION_2_36();
      sub_23BBD9F28();
      OUTLINED_FUNCTION_24_11(v197, &qword_27E19FB28, &a13);
      sub_23BAD7D44(v201, *&v260);
      v202 = (v186 - 24);
      v203 = v232[3];
      while (1)
      {
        sub_23BAD7D44(*&v260, v203);
        OUTLINED_FUNCTION_8_1();
        __swift_storeEnumTagSinglePayload(v204, v205, v206, v73);
        OUTLINED_FUNCTION_6_22(v203);
        if (v228)
        {
          break;
        }

        (v187)(v83, v203, v73);
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_8_32();
        sub_23BBD9F28();
        (*v202)(v83, v73);
      }

      sub_23B979910(*&v260, &qword_27E19FB20);
      sub_23B979910(v237, &qword_27E19FB28);
      v207 = v236;
      sub_23BBDA218();
      v136 = v208;
      v138 = v254;
      v252(v207, v254);
      (*v202)(v240, v73);
      v137 = v256;
      v37 = v39;
      v39 = v257;
      v108 = v248;
    }

    v209 = v258;
    v210 = v253;
    v293.origin.x = OUTLINED_FUNCTION_0_40();
    CGRectGetWidth(v293);
    LOBYTE(v262) = 0;
    v267 = 1;
    v211 = v238;
    sub_23BBD9F08();
    v212 = v255;
    MEMORY[0x23EEB2A20](*(v255 + 48));
    sub_23BBDA208();
    sub_23BA87130();
    OUTLINED_FUNCTION_12_21(v213);
    v294.origin.x = OUTLINED_FUNCTION_0_40();
    CGRectGetMinX(v294);
    v295.origin.x = OUTLINED_FUNCTION_0_40();
    CGRectGetWidth(v295);
    *v232 = v33;
    v214 = v39;
    v215 = v37;
    v216 = v35;
    v217 = v33;
    if (v259 == 1)
    {
      CGRectGetMaxY(*&v214);
      v218 = OUTLINED_FUNCTION_9_21();
      v219(v218, v211, v138);
      sub_23BBDA208();
      sub_23BBDA218();
      OUTLINED_FUNCTION_14_18();
      v227 = *(v137 + 8);
      v227(v211, v138);
      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_23_7();
      v170 = v234;
      sub_23B99FCE0(v108 + *(v210 + 28), v234, &qword_27E199DE8);
      OUTLINED_FUNCTION_6_22(v170);
      if (!v228)
      {
        v220 = v232[2];
        v221 = OUTLINED_FUNCTION_19_16();
        v222(v221);
        v296.origin.x = OUTLINED_FUNCTION_3_33();
        v223 = *v232;
        *&v296.size.height = v232[0];
        CGRectGetMinX(v296);
        v297.origin.x = OUTLINED_FUNCTION_3_33();
        v297.size.height = v223;
        CGRectGetMaxY(v297);
        sub_23BBDC408();
        v298.origin.x = OUTLINED_FUNCTION_3_33();
        v298.size.height = v223;
        CGRectGetWidth(v298);
        sub_23BBDA218();
LABEL_54:
        OUTLINED_FUNCTION_2_36();
        OUTLINED_FUNCTION_13_23();
        sub_23BBD9F28();
        (*(v209 + 8))(v220, v73);
        v227(v211, v138);
        v185 = v108;
        goto LABEL_41;
      }
    }

    else
    {
      CGRectGetMinY(*&v214);
      v224 = *(v212 + 32);
      v259 = *(v212 + 16);
      v260 = *&v224;
      v225 = OUTLINED_FUNCTION_9_21();
      v226(v225, v211, v138);
      sub_23BBDA208();
      OUTLINED_FUNCTION_14_18();
      sub_23BBDA218();
      v258 = v136;
      v227 = *(v137 + 8);
      v227(v211, v138);
      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_23_7();
      v170 = v233;
      sub_23B99FCE0(v108 + *(v210 + 28), v233, &qword_27E199DE8);
      OUTLINED_FUNCTION_6_22(v170);
      if (!v228)
      {
        v220 = v232[1];
        v229 = OUTLINED_FUNCTION_19_16();
        v230(v229);
        v299.origin.x = OUTLINED_FUNCTION_3_33();
        v231 = *v232;
        *&v299.size.height = v232[0];
        CGRectGetMinX(v299);
        v300.origin.x = OUTLINED_FUNCTION_3_33();
        v300.size.height = v231;
        CGRectGetMinY(v300);
        sub_23BBDC3F8();
        v301.origin.x = OUTLINED_FUNCTION_3_33();
        v301.size.height = v231;
        CGRectGetWidth(v301);
        sub_23BBDA218();
        goto LABEL_54;
      }
    }

    v227(v211, v138);
    v181 = v108;
    goto LABEL_38;
  }

  v106 = &qword_27E19FB30;
  v107 = v98;
LABEL_39:
  sub_23B979910(v107, v106);
LABEL_42:
  OUTLINED_FUNCTION_30_4();
}

uint64_t sub_23BAD71F4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_23BBDA228();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v23 = a1 & 1;
  v22 = 1;
  sub_23BBD9F08();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  sub_23BBDA208();
  sub_23BBDA218();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v21 = 0;
  v20 = 0;
  sub_23BBD9F18();
  v13 = v12;
  sub_23BBDA218();
  if (v14 >= v13)
  {
    return (*(v4 + 32))(v17, v9, v3);
  }

  v10(v6, v9, v3);
  sub_23BBDA208();
  sub_23BBDA218();
  v11(v6, v3);
  v19 = 0;
  v18 = 0;
  sub_23BBD9F08();
  return (v11)(v9, v3);
}

uint64_t sub_23BAD742C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_23B99FCE0(v1, &v11 - v3, &qword_27E199DE8);
  v5 = sub_23BBD9F58();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_23B979910(v4, &qword_27E199DE8);
    v6 = 0.0;
  }

  else
  {
    sub_23BBD9F48();
    v6 = v7;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  sub_23BBD9F48();
  if (v6 == v8)
  {
    return 0;
  }

  sub_23BBD9F48();
  if (v6 >= v10)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23BAD757C()
{
  v1 = *(v0 + 48);
  sub_23BBD9F18();
  v3 = v2 - v1;
  *v0 = v4;
  *(v0 + 8) = v3;
  v5 = *(v0 + 40);
  v6 = v5 - v3;
  result = sub_23BBD9F18();
  v9 = v8;
  *(v0 + 16) = v10;
  *(v0 + 24) = v8;
  if (v6 < v8)
  {
    result = sub_23BBD9F18();
    v12 = v11 - v1;
    *v0 = v13;
    *(v0 + 8) = v12;
    v6 = v5 - v12;
  }

  if (v6 > v9)
  {
    result = sub_23BBD9F18();
    *v0 = v15;
    *(v0 + 8) = v14 - v1;
  }

  return result;
}

uint64_t sub_23BAD76E0@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84FA0];
  type metadata accessor for StructuredScrollViewContentLayout.Cache(0);
  sub_23BBDA098();
  OUTLINED_FUNCTION_8_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_23BAD773C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = sub_23BBDA098();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for StructuredScrollViewContentLayout.Cache(0) + 20);
  sub_23B99FCE0(a1 + v13, v5, &qword_27E19FB38);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_23B979910(v5, &qword_27E19FB38);
  }

  (*(v8 + 32))(v12, v5, v6);
  sub_23BA8955C(&qword_27E19FB58);
  v15 = sub_23BBDCF38();
  result = (*(v8 + 8))(v12, v6);
  if ((v15 & 1) == 0)
  {

    *a1 = MEMORY[0x277D84FA0];
    sub_23B979910(a1 + v13, &qword_27E19FB38);
    OUTLINED_FUNCTION_8_1();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  }

  return result;
}

uint64_t sub_23BAD7938()
{
  v0 = sub_23BBDA3E8();
  __swift_allocate_value_buffer(v0, qword_27E1BFD70);
  __swift_project_value_buffer(v0, qword_27E1BFD70);
  sub_23BBDA3D8();
  return sub_23BBDA3C8();
}

BOOL sub_23BAD7990()
{
  sub_23BAD3A20();
  sub_23BBD9F68();
  return (v1 & 0xFD) == 0;
}

uint64_t sub_23BAD79E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1977D8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BBDA3E8();
  v3 = __swift_project_value_buffer(v2, qword_27E1BFD70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*sub_23BAD7B1C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

unint64_t sub_23BAD7B94()
{
  result = qword_27E19FB18;
  if (!qword_27E19FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB18);
  }

  return result;
}

uint64_t sub_23BAD7C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7C78(uint64_t a1)
{
  v2 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD7CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StructuredScrollViewContentLayout.Components(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAD7E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23BBD9F58();
    v8 = a1 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BAD7F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23BBD9F58();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BAD7FB8()
{
  sub_23BAD8498(319, &qword_27E19FB70, MEMORY[0x277CDF6F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_23BBD9F58();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for StructuredScrollViewContentLayout.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredScrollViewContentLayout.Component(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x23BAD81C8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BAD8214(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BAD82BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FB38);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BAD8348()
{
  sub_23BAD83E8();
  if (v0 <= 0x3F)
  {
    sub_23BAD8498(319, &qword_27E19FB98, MEMORY[0x277CDF7F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BAD83E8()
{
  if (!qword_27E19FB88)
  {
    sub_23BAD8444();
    v0 = sub_23BBDD3D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19FB88);
    }
  }
}

unint64_t sub_23BAD8444()
{
  result = qword_27E19FB90;
  if (!qword_27E19FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FB90);
  }

  return result;
}

void sub_23BAD8498(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BAD84F0()
{
  result = qword_27E19FBA0;
  if (!qword_27E19FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FBA0);
  }

  return result;
}

double OUTLINED_FUNCTION_21_13(uint64_t a1, int a2)
{
  v6 = *(v4 - 204);
  *(v4 - 160) = v6 & 1;
  v7 = *(v4 - 200);

  return sub_23BAD53FC(v2, a2, v7, v6 & 1, v3);
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return sub_23BBD9F28();
}

uint64_t OUTLINED_FUNCTION_24_11@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_23B99FCE0(a1, v4, a2);
}

uint64_t sub_23BAD8734()
{
  type metadata accessor for PositionProxy();
  result = sub_23BBD9E88();
  if ((v2 & 1) == 0 && v1 > 0.0)
  {
    sub_23BBDAD18();
    return sub_23BBD9E78();
  }

  return result;
}

uint64_t sub_23BAD87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a2;
  *(a4 + 1) = a3;
  v14 = type metadata accessor for PositionReader();
  v15 = v14[9];
  v16 = sub_23BBDAD18();
  result = (*(*(v16 - 8) + 32))(&a4[v15], a1, v16);
  v18 = &a4[v14[10]];
  *v18 = a5;
  v18[1] = a6;
  v19 = &a4[v14[11]];
  *v19 = a7;
  v19[1] = a8;
  return result;
}

uint64_t type metadata accessor for PositionProxy()
{
  result = qword_27E19FBA8;
  if (!qword_27E19FBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAD8924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBD9E98();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_23BBDAD18();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23BAD89D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BBD9E98();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_23BBDAD18();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BAD8A78()
{
  result = sub_23BBD9E98();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDAD18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23BAD8B0C()
{
  result = sub_23B975E04();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDAD18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BAD8BB4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23BBDAD18();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23BAD8C50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23BBDAD18();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23BAD8D14(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  (*(v2 + 32))(v6 + v5, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v12 = sub_23BBDA068();
  v13 = v8;
  v9 = sub_23BBDA078();
  OUTLINED_FUNCTION_0_41();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(&v12, v9, WitnessTable);

  v12 = v14;
  v13 = v15;
  sub_23B9D2D88(&v12, v9, WitnessTable);
}

uint64_t sub_23BAD8EBC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v30 = a5;
  v8 = type metadata accessor for PositionProxy();
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v28 = *a2;
  v18 = sub_23BBD9E98();
  (*(*(v18 - 8) + 16))(v11, a1, v18);
  v19 = type metadata accessor for PositionReader();
  v20 = v19[9];
  v21 = v9[7];
  v22 = sub_23BBDAD18();
  (*(*(v22 - 8) + 16))(&v11[v21], &a2[v20], v22);
  v23 = v19[11];
  *&v11[v9[8]] = *&a2[v19[10]];
  *&v11[v9[9]] = *&a2[v23];
  v28(v11);
  sub_23BAD92A8(v11);
  v24 = v27;
  sub_23B9D2D88(v14, a3, v27);
  v25 = *(v29 + 8);
  v25(v14, a3);
  sub_23B9D2D88(v17, a3, v24);
  return (v25)(v17, a3);
}

uint64_t sub_23BAD9120()
{
  v1 = (type metadata accessor for PositionReader() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[11];
  v4 = sub_23BBDAD18();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_23BAD920C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PositionReader() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_23BAD8EBC(a1, v8, v5, v6, a2);
}

uint64_t sub_23BAD92A8(uint64_t a1)
{
  v2 = type metadata accessor for PositionProxy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAD9304()
{
  sub_23BBDA078();
  OUTLINED_FUNCTION_0_41();

  return swift_getWitnessTable();
}

uint64_t sub_23BAD9368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC38);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23BAD9408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC38);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionStoreDefaultMarketingView()
{
  result = qword_27E19FC40;
  if (!qword_27E19FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BAD94DC()
{
  sub_23B985190(319, &qword_27E19FC50, &qword_27E19FC58);
  if (v0 <= 0x3F)
  {
    sub_23B985190(319, &qword_27E1998F0, qword_27E199868);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BAD9590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_23BAD95D0(uint64_t result, int a2, int a3)
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

uint64_t sub_23BAD961C()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23BADA264(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v10[0];
    if (!v10[1])
    {
LABEL_5:
      v8 = [objc_opt_self() mainBundle];
      v5 = sub_23BAD97BC();
    }
  }

  return v5;
}

uint64_t sub_23BAD97BC()
{
  result = sub_23BADA274(v0, &selRef_localizedInfoDictionary);
  if (result || (result = sub_23BADA274(v0, &selRef_infoDictionary)) != 0)
  {
    v2 = result;
    result = *MEMORY[0x277CBEC40];
    if (*MEMORY[0x277CBEC40])
    {
      v3 = sub_23BBDD018();
      sub_23B9F3F60(v3, v4, v2, &v8);

      if (v9)
      {
        if (OUTLINED_FUNCTION_1_41())
        {

          return v7;
        }
      }

      else
      {
        sub_23B9EA92C(&v8, &unk_27E19FEE0);
      }

      result = *MEMORY[0x277CBED50];
      if (*MEMORY[0x277CBED50])
      {
        v5 = sub_23BBDD018();
        sub_23B9F3F60(v5, v6, v2, &v8);

        if (v9)
        {
          if (OUTLINED_FUNCTION_1_41())
          {
            return v7;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          sub_23B9EA92C(&v8, &unk_27E19FEE0);
          return 0;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23BAD990C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v18 = sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC60);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_23BBDAB48();
  v23 = 0;
  sub_23BAD9C2C(v27);
  memcpy(v25, v27, 0x129uLL);
  memcpy(v26, v27, 0x129uLL);
  sub_23BA9B0D4(v25, v21, &qword_27E19FC68);
  sub_23B9EA92C(v26, &qword_27E19FC68);
  memcpy(&v22[7], v25, 0x129uLL);
  v12 = v23;
  v13 = sub_23BBDB3A8();
  v24 = 1;
  v21[0] = v11;
  v21[1] = 0x4038000000000000;
  LOBYTE(v21[2]) = v12;
  memcpy(&v21[2] + 1, v22, 0x130uLL);
  LOBYTE(v21[41]) = v13;
  memset(&v21[42], 0, 32);
  LOBYTE(v21[46]) = 1;
  sub_23BBDB138();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FC70);
  v15 = sub_23BADA090();
  sub_23BBDB968();
  (*(v2 + 8))(v5, v18);
  memcpy(v27, v21, 0x171uLL);
  sub_23B9EA92C(v27, &qword_27E19FC70);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v21[0] = v14;
  v21[1] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  sub_23BBDBA28();

  return (*(v7 + 8))(v10, v16);
}

uint64_t sub_23BAD9C2C@<X0>(void *a1@<X8>)
{
  sub_23BB6F948(0, 0, __src, 80.0, 80.0);
  v61 = 1;
  v60 = 1;
  v59 = 1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v62 = 0;
  v1 = sub_23BBDC318();
  v25 = v2;
  v26 = v1;
  v3 = sub_23BAD961C();
  if (v4)
  {
    v34[0] = v3;
    v34[1] = v4;
    sub_23B9F6A08();
    v5 = sub_23BBDB678();
    v7 = v6;
    v9 = v8;
    sub_23BBDB418();
    sub_23BBDB448();

    v10 = sub_23BBDB618();
    v22 = v11;
    v23 = v10;
    v13 = v12;
    v21 = v14;

    sub_23BA51C9C(v5, v7, v9 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v34[0]) = v13 & 1;
    v15 = v13 & 1;
    v19 = 1;
    v16 = sub_23BBDB388();
    v18 = 65537;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    KeyPath = 0;
    v21 = 0;
    v19 = 0;
    v16 = 0;
    v18 = 0;
    v15 = 0;
  }

  memcpy(__dst, __src, 0x60uLL);
  __dst[12] = 0;
  LOBYTE(__dst[13]) = 1;
  *(&__dst[13] + 1) = *v69;
  HIDWORD(__dst[13]) = *&v69[3];
  __dst[14] = 0;
  LOBYTE(__dst[15]) = 1;
  *(&__dst[15] + 1) = *v68;
  HIDWORD(__dst[15]) = *&v68[3];
  __dst[16] = 0;
  LOBYTE(__dst[17]) = 1;
  HIDWORD(__dst[17]) = *&v67[3];
  *(&__dst[17] + 1) = *v67;
  __dst[18] = 0x4054000000000000;
  LOBYTE(__dst[19]) = 0;
  *(&__dst[19] + 1) = *v66;
  HIDWORD(__dst[19]) = *&v66[3];
  __dst[20] = 0x4054000000000000;
  LOBYTE(__dst[21]) = 0;
  *(&__dst[21] + 1) = *v65;
  HIDWORD(__dst[21]) = *&v65[3];
  __dst[22] = 0x4054000000000000;
  LOWORD(__dst[23]) = 0;
  *(&__dst[23] + 2) = v63;
  HIWORD(__dst[23]) = v64;
  __dst[24] = v26;
  __dst[25] = v25;
  memcpy(v27, __dst, 0xD0uLL);
  v29[0] = v23;
  v29[1] = v22;
  v29[2] = v15;
  v29[3] = v21;
  v29[4] = KeyPath;
  v29[5] = v18;
  v29[6] = v16;
  memset(&v29[7], 0, 32);
  LOBYTE(v29[11]) = v19;
  memcpy(&v27[208], v29, 0x59uLL);
  memcpy(a1, v27, 0x129uLL);
  v30[0] = v23;
  v30[1] = v22;
  v30[2] = v15;
  v30[3] = v21;
  v30[4] = KeyPath;
  v30[5] = v18;
  v30[6] = v16;
  v31 = 0u;
  v32 = 0u;
  v33 = v19;
  sub_23BA9B0D4(__dst, v34, &qword_27E19FC90);
  sub_23BA9B0D4(v29, v34, &qword_27E19FC98);
  sub_23B9EA92C(v30, &qword_27E19FC98);
  memcpy(v34, __src, 0x60uLL);
  v34[12] = 0;
  v35 = 1;
  *v36 = *v69;
  *&v36[3] = *&v69[3];
  v37 = 0;
  v38 = 1;
  *v39 = *v68;
  *&v39[3] = *&v68[3];
  v40 = 0;
  v41 = 1;
  *&v42[3] = *&v67[3];
  *v42 = *v67;
  v43 = 0x4054000000000000;
  v44 = 0;
  *v45 = *v66;
  *&v45[3] = *&v66[3];
  v46 = 0x4054000000000000;
  v47 = 0;
  *v48 = *v65;
  *&v48[3] = *&v65[3];
  v49 = 0x4054000000000000;
  v50 = 0;
  v51 = 0;
  v52 = v63;
  v53 = v64;
  v54 = v26;
  v55 = v25;
  return sub_23B9EA92C(v34, &qword_27E19FC90);
}

uint64_t sub_23BADA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23BBDDA88();
  }
}

unint64_t sub_23BADA090()
{
  result = qword_27E19FC78;
  if (!qword_27E19FC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC70);
    sub_23BADA11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FC78);
  }

  return result;
}

unint64_t sub_23BADA11C()
{
  result = qword_27E19FC80;
  if (!qword_27E19FC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FC80);
  }

  return result;
}

uint64_t sub_23BADA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BADA40C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BADA1E4()
{
  sub_23BADA2DC();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BADA264(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23BADA274(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23BBDCE28();

  return v4;
}

unint64_t sub_23BADA2DC()
{
  result = qword_27E19FCA0;
  if (!qword_27E19FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCA0);
  }

  return result;
}

unint64_t sub_23BADA344()
{
  result = qword_27E19FCA8;
  if (!qword_27E19FCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC70);
    sub_23BADA090();
    swift_getOpaqueTypeConformance2();
    sub_23BAB2CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCA8);
  }

  return result;
}

unint64_t sub_23BADA40C()
{
  result = qword_27E19FCB8;
  if (!qword_27E19FCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FC58);
    sub_23BADA490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCB8);
  }

  return result;
}

unint64_t sub_23BADA490()
{
  result = qword_27E19FCC0;
  if (!qword_27E19FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_41()
{

  return swift_dynamicCast();
}

id sub_23BADA504()
{
  v0 = sub_23BBDA658();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 scene];

    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v1 = [v3 screen];

        return v1;
      }
    }

    return 0;
  }

  return v1;
}

double sub_23BADA598()
{
  v0 = sub_23BADA504();
  if (!v0)
  {
    v0 = [objc_opt_self() mainScreen];
  }

  v1 = v0;
  [v0 bounds];
  v3 = v2;

  return v3;
}

uint64_t sub_23BADA630()
{
  sub_23BA24088();
  sub_23BBDA958();
  sub_23BA9B0D4(v10, &v7, &qword_27E19FCC8);
  if (v8 || (sub_23B9EA92C(&v7, &qword_27E19FCC8), sub_23BA9B0D4(&v11, &v7, &qword_27E19FCC8), v8))
  {
    sub_23B98473C(&v7, v9);
    v0 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v1 = MEMORY[0x28223BE20](v0);
    (*(v3 + 16))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    v4 = sub_23BBD9DF8();
    sub_23BADA8C4(v10);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_23B9EA92C(&v7, &qword_27E19FCC8);
    sub_23BAC717C();
    sub_23BBDA958();
    if (v9[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FCD8);
      sub_23BADA918();
    }

    else
    {
      sub_23BADA870();
    }

    v4 = sub_23BBD9DF8();
    sub_23BADA8C4(v10);
  }

  return v4;
}

uint64_t sub_23BADA848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BADA630();
  *a1 = result;
  return result;
}

unint64_t sub_23BADA870()
{
  result = qword_27E19FCD0;
  if (!qword_27E19FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCD0);
  }

  return result;
}

unint64_t sub_23BADA918()
{
  result = qword_27E19FCE0;
  if (!qword_27E19FCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19FCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStorePickerStrokeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x23BADAA48);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BADAA80(uint64_t a1, unsigned __int8 a2)
{
  sub_23BA24088();
  sub_23BBDA958();
  sub_23BA9B0D4(&v12, &v13, &qword_27E19FCE8);
  sub_23BADA8C4(v11);
  if (!v14)
  {
    sub_23B9EA92C(&v13, &qword_27E19FCE8);
    if (a2 - 1 >= 2)
    {
      if (a2)
      {
        v11[0] = sub_23BBDBD28();
        return sub_23BBD9DF8();
      }

      v8 = sub_23BBDBD28();
    }

    else
    {
      sub_23BBDBD08();
      v8 = sub_23BBDBD58();
    }

    v11[0] = v8;
    return sub_23BBD9DF8();
  }

  sub_23B98473C(&v13, v15);
  sub_23B98473C(v15, v16);
  v3 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_23BBD9DF8();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v7;
}

uint64_t sub_23BADAC68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BADAA80(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t SubscriptionPeriodGroupSet.init(marketingContent:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v19[0] = a5;
  v19[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = (v19 - v13);
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = (v19 - v16);
  *v17 = a1;
  v17[1] = a2;
  swift_storeEnumTagMultiPayload();
  *v14 = a3;
  v14[1] = a4;
  swift_storeEnumTagMultiPayload();
  return sub_23BADADD8(v17, v14, a7);
}

uint64_t sub_23BADADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
  v6 = type metadata accessor for NullaryOrUnaryValue();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SubscriptionPeriodGroupSet() + 52);
  v8 = type metadata accessor for NullaryOrUnaryValue();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t SubscriptionPeriodGroupSet.init<>(marketingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = (&v16[-1] - v11);
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v16[0] = sub_23BADB064;
  v16[1] = v13;
  v17 = 1;
  sub_23BADB06C();
  return sub_23BADADD8(v12, v16, a5);
}