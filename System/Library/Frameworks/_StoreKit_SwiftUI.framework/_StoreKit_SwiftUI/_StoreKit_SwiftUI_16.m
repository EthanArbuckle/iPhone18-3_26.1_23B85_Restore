void *sub_23BAF7448(void *result, uint64_t a2, BOOL a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, void (*a9)(void *__return_ptr, unint64_t))
{
  v9 = a8;
  v11 = a4;
  v13 = result;
  v14 = a4 >> 63;
  if (a4 >> 63 < 0)
  {
    v16 = a3;
    result = sub_23BAF70E0(*(a8 + 16), a4 >> 63, 0);
    v17 = __OFSUB__(0, v11);
    v11 = -v11;
    if (v17)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return result;
    }

    a3 = v16;
    if (v11 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_6:
    v18 = 0;
    v41 = v14;
    v37 = a5;
    v38 = v9;
    v36 = v11;
    while (1)
    {
      v17 = __OFADD__(v18++, 1);
      if (v17)
      {
        break;
      }

      if (v13 == a5)
      {
        if (a3)
        {
          if (a7)
          {
            return 0;
          }
        }

        else if ((a7 & 1) == 0 && a2 == a6)
        {
          return 0;
        }
      }

      if (v14 < 0)
      {
        v22 = *(v9 + 16);
        v23 = v13 == v22;
        if (v13 == v22)
        {
          v24 = -1;
        }

        else
        {
          v24 = 0;
        }

        v15 = v13 - v23;
        if (v13 - v23 >= v22)
        {
          goto LABEL_50;
        }

        v40 = a3;
        v25 = *(type metadata accessor for SubscriptionStoreControlConfigurationSection(0) - 8);
        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = v9 + v26;
        v28 = *(v25 + 72);
        a9(v42, v27 + v28 * v15);
        if (v40)
        {
          a2 = *(v42[0] + 16);
        }

        if (!a2)
        {
          v29 = v38 + v26 + v28 * (v13 + v24 - 1);
          while (--v15 < v22)
          {
            a9(v42, v29);
            a2 = *(v42[0] + 16);

            v29 -= v28;
            if (a2)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
          break;
        }

LABEL_31:
        v17 = __OFSUB__(a2--, 1);
        a5 = v37;
        v9 = v38;
        v11 = v36;
        v14 = v41;
        if (v17)
        {
          goto LABEL_51;
        }

        a3 = 0;
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(v9 + 16);
        if (v13 >= v15)
        {
          goto LABEL_48;
        }

        v19 = a3;
        v20 = *(type metadata accessor for SubscriptionStoreControlConfigurationSection(0) - 8);
        result = (a9)(v42, v9 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v13);
        if (v19)
        {
          goto LABEL_55;
        }

        v17 = __OFADD__(a2++, 1);
        if (v17)
        {
          goto LABEL_49;
        }

        v21 = *(v42[0] + 16);

        if (a2 == v21)
        {
          v30 = (v13 + 1);
          v14 = v41;
          while (1)
          {
            a3 = v30 == v15;
            if (v30 == v15)
            {
              a2 = 0;
              goto LABEL_33;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197BE8);
            sub_23B979874();
            v31 = sub_23BA93AF8();
            v33 = *v32;

            (v31)(v42, 0);
            v34 = *(v33 + 16);

            if (v34)
            {
              break;
            }

            v17 = __OFADD__(v30++, 1);
            v14 = v41;
            if (v17)
            {
              goto LABEL_54;
            }
          }

          a2 = 0;
          v15 = v30;
          v14 = v41;
          a3 = 0;
        }

        else
        {
          a3 = 0;
          v15 = v13;
          v14 = v41;
        }
      }

LABEL_33:
      v13 = v15;
      if (v18 == v11)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (a4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23BAF7804@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BB3F480(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_23BAF78C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  OUTLINED_FUNCTION_57();
  v5 = v0 + ((*(v4 + 80) + 80) & ~*(v4 + 80));
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 8))(v5, v1);
  v7 = v5 + v3[17];
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 8))(v7, v2);
  v9 = v7 + *(type metadata accessor for SubscriptionStoreContainerContext() + 52);

  if (*(v9 + 48))
  {
  }

  v10 = *(type metadata accessor for SubscriptionStoreControlConfiguration() + 60);
  v11 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v9 + v10, 1, v11))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v12 + 8))(v9 + v10);
  }

  OUTLINED_FUNCTION_61_2(v5 + v3[19]);
  v13 = v5 + v3[20];
  v14 = *(v13 + 48);

  if (v14 == 1 && *(v13 + 32) >= 6uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v13 + 8);
  }

  OUTLINED_FUNCTION_61_2(v5 + v3[22]);
  v15 = v5 + v3[23];
  if (*(v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return swift_deallocObject();
}

uint64_t sub_23BAF7CD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BAF7D10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF9 && *(a1 + 41))
    {
      v2 = *a1 + 2147483641;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 6;
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

uint64_t sub_23BAF7D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_23BAF7DC4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_23BBDD648();
    if (v2 <= 0x3F)
    {
      sub_23BAF82C4(319, qword_27E1A0238, &qword_27E197E38, &unk_23BBE4780, type metadata accessor for IdiomValue);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_23BAF7EAC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 64);
  if (v8)
  {
    v12 = *(v6 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v7 + 80);
  v14 = v11 + v13;
  if (v10 < a2)
  {
    v15 = ((v12 + (v14 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 17;
    v16 = (a2 - v10 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    switch(v19)
    {
      case 1:
        v20 = a1[v15];
        if (!a1[v15])
        {
          break;
        }

        goto LABEL_27;
      case 2:
        v20 = *&a1[v15];
        if (*&a1[v15])
        {
          goto LABEL_27;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAF8064);
      case 4:
        v20 = *&a1[v15];
        if (!v20)
        {
          break;
        }

LABEL_27:
        v21 = (v20 - 1) << (8 * v15);
        if (v15 <= 3)
        {
          v22 = *a1;
        }

        else
        {
          v21 = 0;
          v22 = *a1;
        }

        v27 = v10 + (v22 | v21);
        return (v27 + 1);
      default:
        break;
    }
  }

  if (v8 >= 0xFE)
  {

    return __swift_getEnumTagSinglePayload(a1, v8, v5);
  }

  v24 = &a1[v14] & ~v13;
  if (v9 == v10)
  {
    if (v8 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, v8, v5);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v26 = *(v12 + v24);
  if (v26 < 2)
  {
    return 0;
  }

  v27 = (v26 + 2147483646) & 0x7FFFFFFF;
  return (v27 + 1);
}

void sub_23BAF8078(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a1;
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v9 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(v7 - 8) + 64);
  v13 = *(v8 + 80);
  v14 = v12 + v13;
  v15 = (v12 + v13) & ~v13;
  if (!v9)
  {
    ++v12;
  }

  v16 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v11 < a3)
  {
    v17 = (a3 - v11 + 255) >> 8;
    if (v16 <= 3)
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
      v6 = v19;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v11 < a2)
  {
    v20 = ~v11 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v16 > 3)
    {
      *v5 = v20;
    }

    else
    {
      *v5 = v20;
    }

    switch(v6)
    {
      case 1:
        *(v5 + v16) = v21;
        return;
      case 2:
        *(v5 + v16) = v21;
        return;
      case 3:
        goto LABEL_46;
      case 4:
        *(v5 + v16) = v21;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_46:
      __break(1u);
      JUMPOUT(0x23BAF8284);
    case 4:
      *&a1[v16] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 >= 0xFE)
      {
        goto LABEL_37;
      }

      a1 = (&a1[v14] & ~v13);
      if (v10 == v11)
      {
        a2 = (a2 + 1);
LABEL_37:

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      else
      {
        a1[v12] = a2 + 1;
      }

      return;
  }
}

void sub_23BAF82C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23BAF8328()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BAF83C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 1) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *&a1[v16];
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0xFE)
      {
        v27 = &a1[v11 + 1] & ~v11;
        if (v7 != v14)
        {
          v27 = (v27 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v27, v7, v5);
      }

      else
      {
        v24 = *a1;
        v25 = v24 >= 2;
        v26 = (v24 + 2147483646) & 0x7FFFFFFF;
        if (v25)
        {
          return (v26 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = a1[v16];
  if (!a1[v16])
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (a1[2] << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_23BAF85F0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 1) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        a1[v18] = v24;
        return;
      case 2:
        *&a1[v18] = v24;
        return;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v18] = v24;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_47:
      __break(1u);
      JUMPOUT(0x23BAF88C0);
    case 4:
      *&a1[v18] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (a2)
      {
LABEL_30:
        if (v13 > 0xFE)
        {
          v28 = &a1[v15 + 1] & ~v15;
          if (v9 != v14)
          {
            v28 = (v28 + v16 + v17) & ~v17;
            v9 = v12;
            v7 = v10;
          }

          __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
        }

        else
        {
          *a1 = a2 + 1;
        }
      }

      return;
  }
}

uint64_t sub_23BAF88E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BAF8998(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFF9)
  {
    v14 = 2147483641;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 > v14)
  {
    v16 = ((v12 + v13 + ((v11 + 51) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_10;
    }

    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 >= 2)
    {
LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 <= 3)
        {
          v22 = v16;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 2:
            v23 = *a1;
            break;
          case 3:
            v23 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v23 = *a1;
            break;
          default:
            v23 = *a1;
            break;
        }
      }

      else
      {
        v23 = 0;
      }

      v26 = v14 + (v23 | v21);
      return (v26 + 1);
    }
  }

LABEL_28:
  v24 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v10 <= 0x7FFFFFF9)
  {
    v25 = *(v24 + 32);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 - 6;
    if (v26 < 0)
    {
      v26 = -1;
    }

    return (v26 + 1);
  }

  v27 = (v24 + v11 + 51) & ~v11;
  if (v7 != v14)
  {
    v27 = (v27 + v12 + v13) & ~v13;
    v7 = *(v9 + 84);
    v5 = v8;
  }

  return __swift_getEnumTagSinglePayload(v27, v7, v5);
}

void sub_23BAF8BD8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFF9)
  {
    v14 = 2147483641;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 51) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          *(a1 + 2) = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v24;
        return;
      case 2:
        *(a1 + v18) = v24;
        return;
      case 3:
        goto LABEL_49;
      case 4:
        *(a1 + v18) = v24;
        return;
      default:
        return;
    }
  }

  switch(v22)
  {
    case 1:
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_49:
      __break(1u);
      JUMPOUT(0x23BAF8ED4);
    case 4:
      *(a1 + v18) = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (a2)
      {
LABEL_30:
        v28 = a1 & 0xFFFFFFFFFFFFFFF8;
        if (v13 >= 0x7FFFFFFA)
        {
          v29 = (v28 + v15 + 51) & ~v15;
          if (v9 != v14)
          {
            v29 = (v29 + v16 + v17) & ~v17;
            v9 = v12;
            v7 = v10;
          }

          __swift_storeEnumTagSinglePayload(v29, a2, v9, v7);
        }

        else if (a2 >= 0x7FFFFFFA)
        {
          *(v28 + 16) = 0u;
          *(v28 + 32) = 0u;
          *(v28 + 8) = (a2 - 2147483642);
        }

        else
        {
          *(v28 + 32) = (a2 + 5);
        }
      }

      return;
  }
}

void sub_23BAF8EFC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_23BAD216C(319, &qword_27E198818, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23BAF8FF0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v9 = *(*(v6 - 8) + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v8 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(*(v7 - 8) + 64);
  v18 = *(v13 + 80);
  if (v15 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v6 - 8) + 64) + v16;
  v21 = *(*(v8 - 8) + 64) + 7;
  if (v19 < a2)
  {
    v22 = ((v21 + ((v17 + v18 + (v20 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 10;
    v23 = (a2 - v19 + 0xFFFF) >> 16;
    if (v22 <= 3)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      LODWORD(v25) = 4;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    if (v24 < 0x100)
    {
      LODWORD(v25) = 1;
    }

    if (v24 >= 2)
    {
      v25 = v25;
    }

    else
    {
      v25 = 0;
    }

    switch(v25)
    {
      case 1:
        v26 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          break;
        }

        goto LABEL_27;
      case 2:
        v26 = *(a1 + v22);
        if (*(a1 + v22))
        {
          goto LABEL_27;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAF9274);
      case 4:
        v26 = *(a1 + v22);
        if (!v26)
        {
          break;
        }

LABEL_27:
        v27 = (v26 - 1) << (8 * v22);
        if (v22 <= 3)
        {
          v28 = *a1;
        }

        else
        {
          v27 = 0;
          v28 = *a1;
        }

        v30 = v19 + (v28 | v27);
        return (v30 + 1);
      default:
        break;
    }
  }

  if (v9 == v19)
  {
    v11 = *(*(v6 - 8) + 84);
LABEL_37:

    return __swift_getEnumTagSinglePayload(a1, v11, v6);
  }

  a1 = ((a1 + v20) & ~v16);
  if (v11 == v19)
  {
    v6 = v7;
    goto LABEL_37;
  }

  a1 = ((a1 + v17 + v18) & ~v18);
  if (v14 == v19)
  {
    v11 = v14;
    v6 = v8;
    goto LABEL_37;
  }

  v31 = *(((a1 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v31 < 2)
  {
    return 0;
  }

  v30 = (v31 + 2147483646) & 0x7FFFFFFF;
  return (v30 + 1);
}

void sub_23BAF9288(char *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v6 = a1;
  v7 = a4[2];
  v8 = *(*(v7 - 8) + 84);
  v9 = a4[3];
  v10 = a4[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v8)
  {
    v13 = *(*(v7 - 8) + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64) + v18;
  v20 = *(*(v9 - 8) + 64);
  v21 = *(v14 + 80);
  v22 = (v20 + v21 + (v19 & ~v18)) & ~v21;
  v23 = *(*(v10 - 8) + 64) + 7;
  v24 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v17 >= a3)
  {
    v28 = 0;
  }

  else
  {
    v25 = (a3 - v17 + 0xFFFF) >> 16;
    if (v24 <= 3)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    bzero(a1, ((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + 10);
    if (v24 <= 3)
    {
      v30 = HIWORD(v29) + 1;
    }

    else
    {
      v30 = 1;
    }

    if (v24 > 3)
    {
      *v6 = v29;
    }

    else
    {
      *v6 = v29;
    }

    switch(v28)
    {
      case 1:
        *(v6 + v24) = v30;
        return;
      case 2:
        *(v6 + v24) = v30;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *(v6 + v24) = v30;
        return;
      default:
        return;
    }
  }

  switch(v28)
  {
    case 1:
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    case 2:
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x23BAF9574);
    case 4:
      *&a1[v24] = 0;
      goto LABEL_36;
    default:
LABEL_36:
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v8 == v17)
      {
        goto LABEL_46;
      }

      a1 = (&a1[v19] & ~v18);
      if (v12 == v17)
      {
        v8 = v12;
        v7 = v9;
      }

      else
      {
        a1 = (&a1[v20 + v21] & ~v21);
        if (v15 != v17)
        {
          *((&a1[v23] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
          return;
        }

        v8 = v15;
        v7 = v10;
      }

LABEL_46:

      __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      return;
  }
}

void sub_23BAF959C()
{
  OUTLINED_FUNCTION_10_0();
  v0 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_36_2(&qword_27E1A0068);
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for CombinedMarketingContent();
  OUTLINED_FUNCTION_26_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for SubscriptionStoreStaticViewContainer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_23_9();
  sub_23BBDA358();
  OUTLINED_FUNCTION_55_2();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for SubscriptionStoreMainContainerContent();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  v1 = OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1);
  OUTLINED_FUNCTION_4_29();
  sub_23B9A8CB4(v2, &qword_27E19F5A0);
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for StoreContentNavigation();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDD648();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_46();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for BottomContentContainer();
  OUTLINED_FUNCTION_48_5();
  sub_23BBDD648();
  sub_23BBDD648();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for MagicPocketContainer();
  sub_23BBDD648();
  sub_23BAF69D4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  sub_23BBDA358();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_32_4();
  swift_getWitnessTable();
  sub_23B97AD88();
  swift_getWitnessTable();
  sub_23BA3D77C();
  OUTLINED_FUNCTION_51_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080);
  OUTLINED_FUNCTION_10_17();
  sub_23B9A8CB4(v3, &qword_27E1A0080);
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for CombinedMarketingContent();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  OUTLINED_FUNCTION_48();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  OUTLINED_FUNCTION_48_5();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for BottomContentContainer();
  sub_23BBDD648();
  sub_23BBDACE8();
  sub_23BAF6A40();
  OUTLINED_FUNCTION_51_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for MagicPocketContainer();
  OUTLINED_FUNCTION_38_3();
  sub_23BBDD648();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  v4 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_42_5();
  sub_23B9A8CB4(v5, v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_38_3();
  sub_23BBDBE28();
  sub_23B9C7F48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_15();
  type metadata accessor for FeatureView();
  type metadata accessor for StoreKitProminentButtonStyle(255);
  OUTLINED_FUNCTION_28_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_27_6();
  sub_23BAF9FDC(v7, v8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_8_34();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B9A8CB4(v9, &qword_27E19A1E0);
  swift_getWitnessTable();
  sub_23B9ECF44();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_23BAC5F00();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAF9FDC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_23BAFA03C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAFA108);
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

uint64_t sub_23BAFA148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C0);
  OUTLINED_FUNCTION_23_9();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8);
  OUTLINED_FUNCTION_16_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_15();
  sub_23BBDC078();
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  sub_23BBDB038();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v0 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  OUTLINED_FUNCTION_10_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_42_5();
  sub_23B9A8CB4(v1, v2);
  return swift_getWitnessTable();
}

uint64_t sub_23BAFA314()
{
  sub_23BBDC078();
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  v0 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_42_5();
  sub_23B9A8CB4(v1, v2);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t sub_23BAFA438()
{
  sub_23BBDC1E8();
  sub_23BBDC208();
  sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8]);
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B690);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  sub_23BBDB038();
  OUTLINED_FUNCTION_16_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_48();
  sub_23BBDD648();
  OUTLINED_FUNCTION_18_1();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_36_2(unint64_t *a1)
{

  return sub_23B9A8CB4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_44_3@<Q0>(uint64_t a1@<X8>)
{
  *(a1 - 80) = v1;
  result = v3[30];
  *(a1 - 72) = result;
  *(a1 - 56) = v2;
  *(a1 - 48) = v6;
  *(a1 - 40) = v7;
  *(a1 - 32) = v8;
  *(a1 - 24) = v5;
  *(a1 - 16) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_61_2@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return sub_23B97B450(v2, v3);
}

double sub_23BAFA848@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_23BBE7BC0;
  return result;
}

uint64_t sub_23BAFA864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAC70D8();
  *a1 = result;
  return result;
}

double PickerSubscriptionStoreControlStyle.Placement.init(rawValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9AF0F0(a1, v10);
  memset(v9, 0, sizeof(v9));
  v4 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v9, v10);
  sub_23B97B104(v9);
  if (v4)
  {
    sub_23B97B104(v10);
  }

  else
  {
    memset(v9, 0, 24);
    *&v9[24] = xmmword_23BBE7BC0;
    v5 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v9, v10);
    sub_23B97B104(v9);
    sub_23B97B104(v10);
    if ((v5 & 1) == 0)
    {
      sub_23B97B104(a1);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *&v6 = 6;
      *(a2 + 24) = xmmword_23BBE8BF0;
      return *&v6;
    }
  }

  v6 = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(a1 + 32);
  return *&v6;
}

unint64_t static PickerSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E61FB8;
  result = sub_23BAFA9D0();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23BAFA9D0()
{
  result = qword_27E1A0460;
  if (!qword_27E1A0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0460);
  }

  return result;
}

double static PickerSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double static PickerSubscriptionStoreControlStyle.Placement.buttonsInBottomBar.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_23BBE7BC0;
  return result;
}

void PickerSubscriptionStoreControlStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  *v13 = sub_23BAFAD24;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v7[13]);
  *v14 = sub_23BAFAE28;
  v14[1] = 0;
  LOBYTE(v7) = sub_23BAC6B80();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0468);
  OUTLINED_FUNCTION_1_25();
  *v16 = KeyPath;
  *(v16 + 8) = v7;
  LOBYTE(v7) = sub_23B9ADB38();
  v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0470);
  OUTLINED_FUNCTION_1_25();
  *v18 = v17;
  *(v18 + 8) = v7;
  v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0478);
  OUTLINED_FUNCTION_1_25();
  *v20 = v19;
  v20[1] = sub_23BAC7318;
  v20[2] = 0;
  v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0480);
  OUTLINED_FUNCTION_1_25();
  *v22 = v21;
  v22[1] = sub_23BB3EA68;
  v22[2] = 0;
}

uint64_t sub_23BAFAD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_23BAFAE28(uint64_t a1)
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

uint64_t sub_23BAFB0B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BAC70D8();
  *a1 = result;
  return result;
}

unint64_t sub_23BAFB134(uint64_t a1)
{
  result = sub_23BAFB15C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BAFB15C()
{
  result = qword_27E1A0488;
  if (!qword_27E1A0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0488);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23BAFB268);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23BAFB2AC()
{
  result = qword_27E1A0490;
  if (!qword_27E1A0490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0480);
    sub_23BAFB364();
    sub_23B97B518(&qword_27E19F7B0, &qword_27E19F7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0490);
  }

  return result;
}

unint64_t sub_23BAFB364()
{
  result = qword_27E1A0498;
  if (!qword_27E1A0498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0478);
    sub_23BAFB41C();
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0498);
  }

  return result;
}

unint64_t sub_23BAFB41C()
{
  result = qword_27E1A04A0;
  if (!qword_27E1A04A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0470);
    sub_23BAFB4D4();
    sub_23B97B518(&qword_27E19F7A0, &qword_27E19F7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A04A0);
  }

  return result;
}

unint64_t sub_23BAFB4D4()
{
  result = qword_27E1A04A8;
  if (!qword_27E1A04A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0468);
    sub_23B97B518(&qword_27E198890, &qword_27E198858);
    sub_23B97B518(&qword_27E1A04B0, &qword_27E1A04B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A04A8);
  }

  return result;
}

unint64_t sub_23BAFB5C8()
{
  result = qword_27E1A04C0;
  if (!qword_27E1A04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A04C0);
  }

  return result;
}

unint64_t sub_23BAFB61C(uint64_t a1)
{
  result = sub_23BAFB644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BAFB644()
{
  result = qword_27E1A04C8;
  if (!qword_27E1A04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A04C8);
  }

  return result;
}

uint64_t sub_23BAFB6B4()
{
  result = sub_23BAFB6D4();
  byte_27E1A04D0 = result;
  return result;
}

uint64_t sub_23BAFB6D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_23BAFB81C();
  if (v1 != 3)
  {
    v3 = v1;
    if (qword_27E1977E8 != -1)
    {
      swift_once();
    }

    v2 = byte_27E1A04D1;

    v4 = 1.0;
    switch(v2)
    {
      case 1:
        v4 = 2.0;
        goto LABEL_10;
      case 2:
        v4 = 2.2;
        goto LABEL_10;
      case 3:
        return v3;
      default:
LABEL_10:
        if (v3)
        {
          if (v3 == 1 && v4 > 2.0)
          {
            return v2;
          }
        }

        else if (v4 > 1.0)
        {
          return v2;
        }

        return v3;
    }
  }

  if (qword_27E1977E8 != -1)
  {
    swift_once();
  }

  v2 = byte_27E1A04D1;

  return v2;
}

uint64_t sub_23BAFB81C()
{
  v1 = sub_23BBDCFE8();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23BBDD698();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_23B9F4DFC(v7);
    return 3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v4 < 2.0)
  {
    return 0;
  }

  if (v4 < 2.2)
  {
    return 1;
  }

  return 2;
}

void sub_23BAFB924()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_23BAFB978();

  byte_27E1A04D1 = v1;
}

uint64_t sub_23BAFB978()
{
  v1 = sub_23BBDCFE8();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23BBDD698();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_23B9F4DFC(v7);
    return 3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v4 < 2.0)
  {
    return 0;
  }

  if (v4 < 2.2)
  {
    return 1;
  }

  return 2;
}

uint64_t static SubscriptionItemBaseConfigurationCurrentOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_23BBDC778();
  OUTLINED_FUNCTION_7();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v61 = v13;
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v55 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v58 = &v55 - v17;
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v59 = v19;
  v60 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  v23 = type metadata accessor for SubscriptionItemBaseConfigurationCurrentOption();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = (&v55 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A04D8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v55 - v31;
  v34 = (&v55 + *(v33 + 56) - v31);
  sub_23BAFBFE0(a1, &v55 - v31);
  sub_23BAFBFE0(a2, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23BAFBFE0(v32, v26);
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A04E0) + 48);
      if (OUTLINED_FUNCTION_3_36() != 1)
      {
        (*(v61 + 8))(v26 + v36, v62);
        (*(v59 + 8))(v26, v60);
        goto LABEL_13;
      }

      (*(v59 + 32))(v22, v34, v60);
      v37 = v62;
      v38 = *(v61 + 32);
      v38(v58, v26 + v36, v62);
      v39 = v34 + v36;
      v40 = v55;
      v38(v55, v39, v37);
      sub_23BBDCD88();
      sub_23BBDCD88();
      v41 = sub_23BBDC768();
      v42 = v57;
      v43 = *(v56 + 8);
      v44 = v8;
      v45 = v59;
      v43(v44, v57);
      v43(v11, v42);
      v46 = v60;
      v47 = *(v45 + 8);
      v47(v26, v60);
      if (v41)
      {
        v48 = v58;
        v35 = sub_23BBDCAC8();
        v49 = *(v61 + 8);
        v50 = v40;
        v51 = v62;
        v49(v50, v62);
        v49(v48, v51);
        v47(v22, v46);
        goto LABEL_11;
      }

      v53 = v62;
      v54 = *(v61 + 8);
      v54(v40, v62);
      v54(v58, v53);
      v47(v22, v46);
      sub_23BAFC0AC(v32);
      goto LABEL_14;
    case 2u:
      if (OUTLINED_FUNCTION_3_36() != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    case 3u:
      if (OUTLINED_FUNCTION_3_36() != 3)
      {
        goto LABEL_13;
      }

LABEL_7:
      sub_23BAFC0AC(v32);
      v35 = 1;
      break;
    default:
      sub_23BAFBFE0(v32, v29);
      if (OUTLINED_FUNCTION_3_36())
      {
LABEL_13:
        sub_23BAFC044(v32);
LABEL_14:
        v35 = 0;
      }

      else
      {
        v35 = *v29 == *v34;
LABEL_11:
        sub_23BAFC0AC(v32);
      }

      break;
  }

  return v35 & 1;
}

uint64_t type metadata accessor for SubscriptionItemBaseConfigurationCurrentOption()
{
  result = qword_27E1A0580;
  if (!qword_27E1A0580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BAFBFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionItemBaseConfigurationCurrentOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BAFC044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A04D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BAFC0AC(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionItemBaseConfigurationCurrentOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SubscriptionItemBaseConfigurationCurrentOption.hash(into:)()
{
  v1 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for SubscriptionItemBaseConfigurationCurrentOption();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = (v17 - v16);
  sub_23BAFBFE0(v0, v17 - v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A04E0) + 48);
      (*(v10 + 32))(v14, v18, v8);
      (*(v3 + 32))(v7, v18 + v22, v1);
      MEMORY[0x23EEB63A0](3);
      sub_23BAFC4C4(&qword_27E1A04E8, MEMORY[0x277CDD330]);
      sub_23BBDCE68();
      sub_23BAFC4C4(&qword_27E1A04F0, MEMORY[0x277CDD268]);
      sub_23BBDCE68();
      (*(v3 + 8))(v7, v1);
      return (*(v10 + 8))(v14, v8);
    case 2u:
      v20 = 0;
      return MEMORY[0x23EEB63A0](v20);
    case 3u:
      v20 = 1;
      return MEMORY[0x23EEB63A0](v20);
    default:
      v19 = *v18;
      MEMORY[0x23EEB63A0](2);
      v20 = v19;
      return MEMORY[0x23EEB63A0](v20);
  }
}

uint64_t SubscriptionItemBaseConfigurationCurrentOption.hashValue.getter()
{
  sub_23BBDDBB8();
  SubscriptionItemBaseConfigurationCurrentOption.hash(into:)();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAFC440()
{
  sub_23BBDDBB8();
  SubscriptionItemBaseConfigurationCurrentOption.hash(into:)();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAFC4C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23BAFC510()
{
  sub_23BBDCDB8();
  if (v0 <= 0x3F)
  {
    sub_23BBDCB58();
    if (v1 <= 0x3F)
    {
      sub_23BAFCF44(319, &qword_27E197B58, MEMORY[0x277CDD2B8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23BAFCF44(319, &qword_27E197B40, type metadata accessor for SubscriptionStoreControlOption, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SubscriptionItemBaseConfigurationCurrentOption();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
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

uint64_t sub_23BAFC660(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v51 = sub_23BBDCDB8();
  v5 = *(v51 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v49 = sub_23BBDCB58();
  v8 = *(v49 - 8);
  v50 = *(v8 + 84);
  if (v50 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = sub_23BBDCC88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(v5 + 64) + v15;
  v17 = *(v8 + 64);
  v18 = (v16 & ~v15) + v17;
  if (v18 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = (v16 & ~v15) + v17;
  }

  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 84);
  if (v14 <= v22)
  {
    v23 = *(v21 + 84);
  }

  else
  {
    v23 = v14;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v11 + 80);
  if (v12)
  {
    v26 = *(v11 + 64);
  }

  else
  {
    v26 = *(v11 + 64) + 1;
  }

  v27 = *(v6 + 80);
  v28 = *(v21 + 80);
  v29 = *(v21 + 64);
  if (!a2)
  {
    return 0;
  }

  v30 = v10;
  v31 = v26 + 7;
  v32 = (v27 | v15) & 0xF8 | 7u;
  v33 = v19 + v28 + 2;
  v34 = a1;
  if (a2 > v24)
  {
    v35 = (v33 + ((v32 + ((v31 + ((v18 + v25) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v32)) & ~v28;
    v36 = v35 + v29;
    v37 = 8 * (v35 + v29);
    if ((v35 + v29) > 3)
    {
      goto LABEL_25;
    }

    v39 = ((a2 - v24 + ~(-1 << v37)) >> v37) + 1;
    if (HIWORD(v39))
    {
      v38 = *(a1 + v36);
      if (v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v39 <= 0xFF)
      {
        if (v39 < 2)
        {
          goto LABEL_42;
        }

LABEL_25:
        v38 = *(a1 + v36);
        if (!*(a1 + v36))
        {
          goto LABEL_42;
        }

LABEL_32:
        v40 = (v38 - 1) << v37;
        if (v36 > 3)
        {
          v40 = 0;
        }

        if (v36)
        {
          if (v36 <= 3)
          {
            v41 = v36;
          }

          else
          {
            v41 = 4;
          }

          switch(v41)
          {
            case 2:
              v42 = *a1;
              break;
            case 3:
              v42 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v42 = *a1;
              break;
            default:
              v42 = *a1;
              break;
          }
        }

        else
        {
          v42 = 0;
        }

        return v24 + (v42 | v40) + 1;
      }

      v38 = *(a1 + v36);
      if (*(a1 + v36))
      {
        goto LABEL_32;
      }
    }
  }

LABEL_42:
  if (v7 == v24)
  {
    v43 = v7;
    v20 = v51;
LABEL_46:

    return __swift_getEnumTagSinglePayload(v34, v43, v20);
  }

  v34 = (a1 + v16) & ~v15;
  if (v50 == v24)
  {
    v43 = v50;
    v20 = v49;
    goto LABEL_46;
  }

  v45 = (v34 + v17 + v25) & ~v25;
  if (v13 == v24)
  {
    if (v12 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v12, v30);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v46 = ((v31 + v45) & 0xFFFFFFFFFFFFFFF8);
  if ((v23 & 0x80000000) != 0)
  {
    v34 = (v33 + ((v46 + v32 + 8) & ~v32)) & ~v28;
    v43 = v22;
    goto LABEL_46;
  }

  v47 = *v46;
  if (v47 >= 0xFFFFFFFF)
  {
    LODWORD(v47) = -1;
  }

  return (v47 + 1);
}

uint64_t sub_23BAFCA80(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v48 = sub_23BBDCDB8();
  v5 = *(v48 - 8);
  v6 = *(v5 + 84);
  v47 = sub_23BBDCB58();
  v7 = *(v47 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_23BBDCC88();
  result = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
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

  v16 = *(v7 + 80);
  v17 = v16;
  v18 = *(v5 + 64) + v16;
  v19 = *(v7 + 64);
  v20 = (v18 & ~v16) + v19;
  if (v20 <= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = (v18 & ~v16) + v19;
  }

  v22 = *(a4 + 16);
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  if (v15 <= v24)
  {
    v25 = *(v23 + 84);
  }

  else
  {
    v25 = v15;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v12 + 80);
  v28 = (v20 + v27) & ~v27;
  v29 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v29;
  }

  v30 = v29 + 7;
  v31 = (*(v5 + 80) | v16) & 0xF8 | 7u;
  v32 = *(v23 + 80);
  v33 = v21 + v32 + 2;
  v34 = ((v33 + ((v31 + ((v30 + v28) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v31)) & ~v32) + *(v23 + 64);
  v35 = 8 * v34;
  if (a3 > v26)
  {
    if (v34 <= 3)
    {
      v36 = ((a3 - v26 + ~(-1 << v35)) >> v35) + 1;
      if (HIWORD(v36))
      {
        result = 4;
      }

      else
      {
        if (v36 < 0x100)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= 2)
        {
          result = v37;
        }

        else
        {
          result = 0;
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  v38 = a2;
  if (v26 < a2)
  {
    v39 = ~v26 + a2;
    if (v34 < 4)
    {
      v41 = (v39 >> v35) + 1;
      if (v34)
      {
        v43 = result;
        v44 = v39 & ~(-1 << v35);
        bzero(a1, v34);
        if (v34 == 3)
        {
          *a1 = v44;
          a1[2] = BYTE2(v44);
          result = v43;
        }

        else
        {
          result = v43;
          if (v34 == 2)
          {
            *a1 = v44;
          }

          else
          {
            *a1 = v39;
          }
        }
      }
    }

    else
    {
      v40 = result;
      bzero(a1, v34);
      result = v40;
      *a1 = v39;
      v41 = 1;
    }

    switch(result)
    {
      case 1:
        a1[v34] = v41;
        return result;
      case 2:
        *&a1[v34] = v41;
        return result;
      case 3:
        goto LABEL_68;
      case 4:
        *&a1[v34] = v41;
        return result;
      default:
        return result;
    }
  }

  v42 = result;
  result = a1;
  switch(v42)
  {
    case 1:
      a1[v34] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_44;
    case 2:
      *&a1[v34] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_44;
    case 3:
LABEL_68:
      __break(1u);
      JUMPOUT(0x23BAFCF04);
    case 4:
      *&a1[v34] = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return result;
      }

LABEL_44:
      if (v6 == v26)
      {
        v13 = v6;
        v22 = v48;
      }

      else
      {
        result = &a1[v18] & ~v17;
        if (v8 == v26)
        {
          v13 = v8;
          v22 = v47;
        }

        else
        {
          result = (result + v19 + v27) & ~v27;
          if (v14 == v26)
          {
            v38 = a2 + 1;
            v22 = v10;
          }

          else
          {
            v45 = ((v30 + result) & 0xFFFFFFFFFFFFFFF8);
            if ((v25 & 0x80000000) == 0)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v46 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v46 = a2 - 1;
              }

              *v45 = v46;
              return result;
            }

            result = (v33 + ((v45 + v31 + 8) & ~v31)) & ~v32;
            v13 = v24;
          }
        }
      }

      return __swift_storeEnumTagSinglePayload(result, v38, v13, v22);
  }
}

void sub_23BAFCF44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23BAFCFA8()
{
  sub_23BAFD014();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_23BAFD014()
{
  if (!qword_27E1A0590)
  {
    sub_23BBDCDB8();
    sub_23BBDCB58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1A0590);
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_23BAFD0B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0598);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05A0);
      v11 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_23BAFD1A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0598);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05A0);
      v11 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BAFD2A0()
{
  sub_23B9DD1EC(319, &qword_27E19A2A8, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_23BAFD394();
    if (v1 <= 0x3F)
    {
      sub_23BAFD3F8();
      if (v2 <= 0x3F)
      {
        sub_23B9DD1EC(319, &qword_27E197E40, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BAFD394()
{
  if (!qword_27E1A05B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A05C0);
    v0 = sub_23BBDC138();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A05B8);
    }
  }
}

void sub_23BAFD3F8()
{
  if (!qword_27E1A05C8)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration(255);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A05C8);
    }
  }
}

uint64_t sub_23BAFD46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v3 = type metadata accessor for PolicyDestinationModifier(0);
  v25 = *(v3 - 8);
  v24 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05D0);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-v6];
  v8 = *v2;
  v20 = v2[1];
  v19 = *(v2 + 16);
  v29 = v8;
  v30 = v20;
  v31 = v19;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  v10 = v27[0];
  v11 = v27[1];
  v12 = v28;
  v13 = &v7[*(v5 + 36)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05D8);
  sub_23BAFD76C(&v13[*(v14 + 36)]);
  *v13 = v10;
  *(v13 + 1) = v11;
  v13[16] = v12;
  v15 = &v13[*(v14 + 40)];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05E0);
  (*(*(v16 - 8) + 16))(v7, v23, v16);
  v29 = v8;
  v30 = v20;
  v31 = v19;
  MEMORY[0x23EEB48C0](v27, v9);
  LOBYTE(v29) = v27[0];
  sub_23BB00EF8();
  swift_allocObject();
  sub_23BB00F50();
  sub_23BAFF1D4();
  sub_23BBDBC08();

  return sub_23B979910(v7, &qword_27E1A05D0);
}

uint64_t sub_23BAFD76C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_23BBDA928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0600);
  MEMORY[0x28223BE20](v6 - 8);
  sub_23BAFDB74(&v23 - v7);
  v8 = (v1 + *(type metadata accessor for PolicyDestinationModifier(0) + 32));
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v9, 0);
    (*(v3 + 8))(v5, v2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v23 = 0;
    v11 = 0;
    v10 = 0;
    v24 = 1;
    goto LABEL_6;
  }

  v33 = v9 & 1;
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = 0;
  v31 = 1;
  v30 = 0;
  v29 = 1;
  v28 = 0;
  v27 = 1;
  v26 = 0;
  v10 = 1;
  v11 = 1;
  v23 = 1;
  v12 = 0x4089A00000000000;
  v13 = 0x4083600000000000;
  v14 = 0x4083800000000000;
  v32 = 0;
LABEL_6:
  v16 = sub_23BBDC318();
  v18 = v17;
  v19 = v25;
  sub_23B979688();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0608);
  v21 = v19 + *(result + 36);
  *v21 = 0;
  *(v21 + 8) = v10;
  *(v21 + 16) = v14;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 40) = v11;
  *(v21 + 48) = v13;
  *(v21 + 56) = 0;
  v22 = v23;
  *(v21 + 64) = 0;
  *(v21 + 72) = v22;
  *(v21 + 80) = v12;
  *(v21 + 88) = 0;
  *(v21 + 89) = v24;
  *(v21 + 96) = v16;
  *(v21 + 104) = v18;
  return result;
}

void sub_23BAFDA34(_BYTE *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05C0);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v8 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    type metadata accessor for PolicyDestinationModifier(0);
    sub_23B979510();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0598);
    sub_23BBDC0F8();
    sub_23B979910(v7, &qword_27E1A05C0);
  }
}

uint64_t sub_23BAFDB74@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0610);
  MEMORY[0x28223BE20](v36);
  v31 = &v28 - v1;
  v32 = sub_23BBD9728();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0618);
  MEMORY[0x28223BE20](v37);
  v4 = &v28 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0620);
  MEMORY[0x28223BE20](v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0628);
  MEMORY[0x28223BE20](v38);
  v35 = &v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0630);
  MEMORY[0x28223BE20](v33);
  v28 = &v28 - v6;
  v7 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - v12);
  type metadata accessor for PolicyDestinationModifier(0);
  sub_23B9B79E0();
  sub_23BB00EF8();
  sub_23BB01804(v9, type metadata accessor for SubscriptionStorePolicyConfiguration);
  sub_23BB00F50();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v13;
      KeyPath = swift_getKeyPath();
      *v4 = v15;
      *(v4 + 1) = KeyPath;
      v4[16] = 0;
      swift_storeEnumTagMultiPayload();
      sub_23BB00FA8();
      sub_23BB014EC();
      return sub_23BBDACD8();
    }

    else
    {
      v26 = v28;
      sub_23BAFE1EC(v28);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB01034();
      sub_23BB01430();
      v27 = v35;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB00FA8();
      sub_23BB014EC();
      sub_23BBDACD8();
      sub_23B979910(v27, &qword_27E1A0628);
      return sub_23B979910(v26, &qword_27E1A0630);
    }
  }

  else
  {
    v18 = v29;
    v19 = v30;
    v20 = v32;
    (*(v30 + 32))(v29, v13, v32);
    v21 = v31;
    (*(v19 + 16))(v31, v18, v20);
    v22 = sub_23BBDA398();
    v23 = sub_23BBDB398();
    v24 = v21 + *(v36 + 36);
    *v24 = v22;
    *(v24 + 8) = v23;
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    sub_23BB01034();
    sub_23BB01430();
    v25 = v35;
    sub_23BBDACD8();
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    sub_23BB00FA8();
    sub_23BB014EC();
    sub_23BBDACD8();
    sub_23B979910(v25, &qword_27E1A0628);
    sub_23B979910(v21, &qword_27E1A0610);
    return (*(v19 + 8))(v18, v20);
  }
}

uint64_t sub_23BAFE1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0660);
  MEMORY[0x28223BE20](v63);
  v70 = &v51 - v3;
  v60 = type metadata accessor for TermsOfService(0);
  MEMORY[0x28223BE20](v60);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A06B0);
  MEMORY[0x28223BE20](v56);
  v58 = &v51 - v5;
  v57 = type metadata accessor for PrivacyPolicy(0);
  MEMORY[0x28223BE20](v57);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0680);
  MEMORY[0x28223BE20](v69);
  v59 = &v51 - v7;
  v8 = sub_23BBDC7F8();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A06B8);
  MEMORY[0x28223BE20](v66);
  v68 = &v51 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A06C0);
  MEMORY[0x28223BE20](v64);
  v12 = &v51 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0650);
  MEMORY[0x28223BE20](v65);
  v14 = &v51 - v13;
  v15 = sub_23BBDA928();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PolicyDestinationModifier(0);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A05C0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v51 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0598);
  MEMORY[0x23EEB48C0](v22);
  v23 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v70 = v14;
    v41 = *v21;
    sub_23BB00EF8();
    v42 = swift_allocObject();
    sub_23BB00F50();
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    v44 = v2 + *(v18 + 32);
    v45 = *v44;
    if (*(v44 + 8) == 1)
    {
      v46 = v41;
    }

    else
    {
      v48 = v41;
      sub_23BA52D18(v45, 0);
      sub_23BBDD5A8();
      v49 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v45, 0);
      (*(v61 + 8))(v17, v62);
      LOBYTE(v45) = v71;
    }

    *v12 = sub_23BB0185C;
    *(v12 + 1) = v42;
    *(v12 + 2) = sub_23BB01920;
    *(v12 + 3) = v43;
    v12[32] = (v45 & 1) == 0;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
    sub_23BB0114C();
    sub_23BB01204();
    v50 = v70;
    sub_23BBDACD8();
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    sub_23BB010C0();
    sub_23BB012BC();
    sub_23BBDACD8();

    v38 = v50;
    v39 = &qword_27E1A0650;
    return sub_23B979910(v38, v39);
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:
    sub_23BB00EF8();
    swift_allocObject();
    sub_23BB00F50();
    sub_23BBD9898();
    v33 = (v1 + *(v18 + 32));
    v34 = *v33;
    if (*(v33 + 8) != 1)
    {

      sub_23BBDD5A8();
      v35 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v34, 0);
      (*(v61 + 8))(v17, v62);
      LOBYTE(v34) = v72;
    }

    v36 = (v34 & 1) == 0;
    v37 = v70;
    v70[*(v63 + 36)] = v36;
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
    sub_23BB0114C();
    sub_23BB01204();
    sub_23BBDACD8();
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    sub_23BB010C0();
    sub_23BB012BC();
    sub_23BBDACD8();
    sub_23B979910(v14, &qword_27E1A0650);
    v38 = v37;
    v39 = &qword_27E1A0660;
    return sub_23B979910(v38, v39);
  }

  v26 = v53;
  v25 = v54;
  v27 = v55;
  (*(v54 + 32))(v53, v21, v55);
  v28 = *(v25 + 16);
  if (*(v1 + *(v18 + 24)) == 1)
  {
    v29 = v51;
    v28(v51, v26, v27);
    v30 = v29 + *(v57 + 20);
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0;
    sub_23BB00EF8();
    swift_storeEnumTagMultiPayload();
    sub_23BB013C8(&qword_27E1A0688, type metadata accessor for PrivacyPolicy);
    sub_23BB013C8(&qword_27E1A0690, type metadata accessor for TermsOfService);
    v31 = v59;
    sub_23BBDACD8();
    v32 = type metadata accessor for PrivacyPolicy;
  }

  else
  {
    v29 = v52;
    v28(v52, v26, v27);
    v47 = v29 + *(v60 + 20);
    *v47 = swift_getKeyPath();
    *(v47 + 8) = 0;
    sub_23BB00EF8();
    swift_storeEnumTagMultiPayload();
    sub_23BB013C8(&qword_27E1A0688, type metadata accessor for PrivacyPolicy);
    sub_23BB013C8(&qword_27E1A0690, type metadata accessor for TermsOfService);
    v31 = v59;
    sub_23BBDACD8();
    v32 = type metadata accessor for TermsOfService;
  }

  sub_23BB01804(v29, v32);
  sub_23B979510();
  swift_storeEnumTagMultiPayload();
  sub_23BB010C0();
  sub_23BB012BC();
  sub_23BBDACD8();
  sub_23B979910(v31, &qword_27E1A0680);
  return (*(v25 + 8))(v26, v27);
}

uint64_t sub_23BAFEE88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A9E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_23B979910(v24, &qword_27E19A9E8);
LABEL_8:
    swift_getErrorValue();
    v27[0] = sub_23BBDDB28();
    v27[1] = v20;
    sub_23B9F6A08();
    result = sub_23BBDB678();
    v12 = result;
    v14 = v21;
    v16 = v22;
    v18 = v23;
    goto LABEL_9;
  }

  sub_23B98473C(v24, v27);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v4 = sub_23BBD95A8();
  if (!v5)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v27);
    goto LABEL_8;
  }

  v6 = v4;
  v7 = v5;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v8 = sub_23BBD95C8();
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  *&v24[0] = v6;
  *(&v24[0] + 1) = v7;

  MEMORY[0x23EEB5890](32, 0xE100000000000000);

  MEMORY[0x23EEB5890](v10, v11);

  sub_23B9F6A08();
  v12 = sub_23BBDB678();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_9:
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_23BAFF0A0()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for PolicyDestinationModifier(0);
  v0(*(v1 + *(v5 + 24)));
  result = sub_23BBDB668();
  *v3 = result;
  *(v3 + 8) = v7;
  *(v3 + 16) = v8 & 1;
  *(v3 + 24) = v9;
  return result;
}

void sub_23BAFF154(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for PolicyDestinationModifier(0);

  sub_23BAFDA34(a1, a2);
}

unint64_t sub_23BAFF1D4()
{
  result = qword_27E1A05E8;
  if (!qword_27E1A05E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A05D0);
    sub_23B97B518(&qword_27E1A05F0, &qword_27E1A05E0);
    sub_23B97B518(&qword_27E1A05F8, &qword_27E1A05D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A05E8);
  }

  return result;
}

uint64_t sub_23BAFF2C0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23BBDA928();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A06E8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0610);
  MEMORY[0x28223BE20](v27);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_23BBD9728();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDC7D8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B979910(v12, &qword_27E19C308);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (sub_23BAFF774())
    {
      (*(v14 + 16))(v9, v16, v13);
      v17 = sub_23BBDA398();
      v18 = sub_23BBDB398();
      v19 = &v9[*(v27 + 36)];
      *v19 = v17;
      v19[8] = v18;
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
      sub_23BB01430();
      sub_23BB01204();
      sub_23BBDACD8();
      sub_23B979910(v9, &qword_27E1A0610);
      return (*(v14 + 8))(v16, v13);
    }

    (*(v14 + 8))(v16, v13);
  }

  v21 = (v1 + *(type metadata accessor for PrivacyPolicy(0) + 20));
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {

    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v22, 0);
    (*(v25 + 8))(v4, v26);
    LOBYTE(v22) = v29;
  }

  *v7 = sub_23BB0240C;
  *(v7 + 1) = 0;
  *(v7 + 2) = sub_23BB02410;
  *(v7 + 3) = 0;
  v7[32] = (v22 & 1) == 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
  sub_23BB01430();
  sub_23BB01204();
  return sub_23BBDACD8();
}

uint64_t sub_23BAFF774()
{
  v0 = sub_23BBD9708();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v0 == 0x7370747468 && v1 == 0xE500000000000000)
  {
    goto LABEL_14;
  }

  v3 = sub_23BBDDA88();

  if ((v3 & 1) == 0)
  {
LABEL_8:
    v5 = sub_23BBD9708();
    if (!v6)
    {
      v4 = 0;
      return v4 & 1;
    }

    if (v5 != 1886680168 || v6 != 0xE400000000000000)
    {
      v4 = sub_23BBDDA88();
LABEL_15:

      return v4 & 1;
    }

LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_23BAFF84C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_23BBDA928();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A06F0);
  MEMORY[0x28223BE20](v51);
  v53 = (&v42 - v4);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A06F8);
  MEMORY[0x28223BE20](v47);
  v6 = &v42 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0700);
  MEMORY[0x28223BE20](v52);
  v49 = &v42 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0610);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C308);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_23BBD9728();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0708);
  MEMORY[0x28223BE20](v16);
  v50 = &v42 - v17;
  v18 = sub_23BBDC7E8();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v46 = v16;
    sub_23BBD9718();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_23B979910(v11, &qword_27E19C308);
    }

    else
    {
      v24 = v13;
      (*(v13 + 32))(v15, v11, v12);
      if (sub_23BAFF774())
      {

        v25 = *(v13 + 16);
        v26 = v45;
        v25(v45, v15, v12);
        v27 = sub_23BBDA398();
        v28 = sub_23BBDB398();
        v29 = v26 + *(v48 + 36);
        *v29 = v27;
        *(v29 + 8) = v28;
        sub_23B979510();
        swift_storeEnumTagMultiPayload();
        sub_23BB01430();
        sub_23BB01CD4();
        v30 = v24;
        v31 = v49;
        sub_23BBDACD8();
        sub_23B979510();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
        sub_23BB01D28();
        sub_23BB01204();
        sub_23BBDACD8();
        sub_23B979910(v31, &qword_27E1A0700);
        sub_23B979910(v26, &qword_27E1A0610);
        (*(v30 + 8))(v15, v12);
        goto LABEL_15;
      }

      (*(v13 + 8))(v15, v12);
    }

    if (sub_23B9D4CA8(v20, v21))
    {

      v32 = (v1 + *(type metadata accessor for TermsOfService(0) + 20));
      v33 = *v32;
      if (*(v32 + 8) != 1)
      {

        sub_23BBDD5A8();
        v34 = sub_23BBDB338();
        sub_23BBD9978();

        v35 = v42;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B97B5C0(v33, 0);
        (*(v43 + 8))(v35, v44);
        LOBYTE(v33) = v55;
      }

      v37 = v53;
      v36 = v54;
      v38 = v46;
      *v53 = sub_23BB0240C;
      v37[1] = 0;
      v37[2] = sub_23BB02410;
      v37[3] = 0;
      *(v37 + 32) = (v33 & 1) == 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
      sub_23BB01D28();
      sub_23BB01204();
      sub_23BBDACD8();
      goto LABEL_16;
    }

    KeyPath = swift_getKeyPath();
    v40 = swift_getKeyPath();
    *v6 = v20;
    *(v6 + 1) = v21;
    v6[16] = 0;
    *(v6 + 3) = KeyPath;
    v6[32] = 0;
    *(v6 + 5) = v40;
    v6[48] = 0;
    swift_storeEnumTagMultiPayload();
    sub_23BB01430();
    sub_23BB01CD4();

    v41 = v49;
    sub_23BBDACD8();
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0670);
    sub_23BB01D28();
    sub_23BB01204();
    sub_23BBDACD8();

    sub_23B979910(v41, &qword_27E1A0700);
LABEL_15:
    v36 = v54;
    v38 = v46;
LABEL_16:
    sub_23B979688();
    return __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
  }

  v22 = v54;

  return __swift_storeEnumTagSinglePayload(v22, 1, 1, v16);
}

uint64_t sub_23BB00094()
{
  sub_23BBDAA48();
  OUTLINED_FUNCTION_6_25();
  if (qword_27E197628 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v0 = qword_27E1BF840;
  v1 = OUTLINED_FUNCTION_1_47();
  return OUTLINED_FUNCTION_7_34(v1, v2, v3, v4);
}

uint64_t sub_23BB00120()
{
  sub_23BBDAA48();
  OUTLINED_FUNCTION_6_25();
  if (qword_27E197628 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v0 = qword_27E1BF840;
  v1 = OUTLINED_FUNCTION_1_47();
  return OUTLINED_FUNCTION_7_34(v1, v2, v3, v4);
}

double sub_23BB001B0()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 48);
  v5 = *(v0 + 40);
  v9 = v5;
  if (v10 != 1)
  {

    sub_23BBDD5A8();
    v6 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v9, &qword_27E1A07A8);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return dbl_23BBFB7E8[v5];
}

double sub_23BB0031C()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 32);
  v5 = *(v0 + 24);
  v9 = v5;
  if (v10 != 1)
  {

    sub_23BBDD5A8();
    v6 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v9, &qword_27E19CC48);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  result = 56.0;
  if (v5)
  {
    return 24.0;
  }

  return result;
}

uint64_t sub_23BB0048C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDB368();
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0768);
  sub_23BB02130();
  sub_23BBD9B48();
  v14 = *(v1 + 32);
  v7 = *(v1 + 24);
  v13 = v7;
  if (v14 != 1)
  {

    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v13, &qword_27E19CC48);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v7) = v12;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0798);
  *(a1 + *(result + 36)) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_23BB00670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0780);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &__src[-v9];
  *v6 = sub_23BBDAB58();
  *(v6 + 1) = 0x4034000000000000;
  v6[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07A0);
  sub_23BB00880(a1, &v6[*(v11 + 44)]);
  sub_23BBDC318();
  sub_23BBDA488();
  sub_23B979688();
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  v12 = sub_23BBDB388();
  sub_23BB001B0();
  sub_23BBD9B18();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_23B979688();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0768);
  v22 = a2 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_23BB00880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = sub_23BBDB0B8();
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07B0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v12 - 8);
  sub_23BBA9D6C();
  v13 = sub_23BBDB668();
  v50 = v14;
  v51 = v13;
  v16 = v15;
  v52 = v17;
  KeyPath = swift_getKeyPath();
  sub_23BBDB418();
  v49 = sub_23BBDB448();

  v47 = swift_getKeyPath();
  v56 = v16 & 1;
  LOBYTE(v62[0]) = v16 & 1;
  v58 = 0;
  v57 = sub_23BBDB3A8();
  sub_23BB0031C();
  sub_23BBD9B18();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v63) = 0;
  v26 = *a1;
  v27 = a1[1];
  v63 = v26;
  v64 = v27;
  sub_23B9F6A08();

  v28 = sub_23BBDB678();
  v30 = v29;
  v63 = v28;
  v64 = v29;
  v32 = v31 & 1;
  v65 = v31 & 1;
  v67 = v33;
  sub_23BBDB0A8();
  sub_23BBDB828();
  (*(v54 + 8))(v5, v3);
  sub_23BA51C9C(v28, v30, v32);

  v34 = swift_getKeyPath();
  v35 = *(v7 + 44);
  v46 = v11;
  v36 = &v11[v35];
  *v36 = v34;
  v36[8] = 0;
  v37 = v53;
  sub_23BB0228C();
  v39 = v50;
  v38 = v51;
  v62[0] = v51;
  v62[1] = v50;
  LOBYTE(v62[2]) = v56;
  *(&v62[2] + 1) = *v61;
  HIDWORD(v62[2]) = *&v61[3];
  v40 = v52;
  v41 = v47;
  v42 = KeyPath;
  v62[3] = v52;
  v62[4] = KeyPath;
  v62[5] = 2;
  LOBYTE(v62[6]) = 0;
  *(&v62[6] + 1) = *v60;
  HIDWORD(v62[6]) = *&v60[3];
  v43 = v49;
  v62[7] = v47;
  v62[8] = v49;
  LOBYTE(v62[9]) = v57;
  HIDWORD(v62[9]) = *&v59[3];
  *(&v62[9] + 1) = *v59;
  v62[10] = v19;
  v62[11] = v21;
  v62[12] = v23;
  v62[13] = v25;
  LOBYTE(v62[14]) = 0;
  memcpy(v55, v62, 0x71uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07B8);
  sub_23BB0228C();
  sub_23B979510();
  sub_23BB022EC(v46);
  sub_23BB022EC(v37);
  v63 = v38;
  v64 = v39;
  v65 = v56;
  *v66 = *v61;
  *&v66[3] = *&v61[3];
  v67 = v40;
  v68 = v42;
  v69 = 2;
  v70 = 0;
  *v71 = *v60;
  *&v71[3] = *&v60[3];
  v72 = v41;
  v73 = v43;
  v74 = v57;
  *&v75[3] = *&v59[3];
  *v75 = *v59;
  v76 = v19;
  v77 = v21;
  v78 = v23;
  v79 = v25;
  v80 = 0;
  return sub_23B979910(&v63, &qword_27E1A07C0);
}

void *sub_23BB00D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDC318();
  sub_23BBDA488();

  if ((a3 & 1) == 0)
  {
    sub_23BA52D18(a2, 0);
    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(a2, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a2) = v14[15];
  }

  *a4 = a1;
  result = memcpy((a4 + 8), __src, 0x70uLL);
  *(a4 + 120) = (a2 & 1) == 0;
  return result;
}

uint64_t sub_23BB00EF8()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB00F50()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

unint64_t sub_23BB00FA8()
{
  result = qword_27E1A0638;
  if (!qword_27E1A0638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0628);
    sub_23BB01034();
    sub_23BB01430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0638);
  }

  return result;
}

unint64_t sub_23BB01034()
{
  result = qword_27E1A0640;
  if (!qword_27E1A0640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0630);
    sub_23BB010C0();
    sub_23BB012BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0640);
  }

  return result;
}

unint64_t sub_23BB010C0()
{
  result = qword_27E1A0648;
  if (!qword_27E1A0648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0650);
    sub_23BB0114C();
    sub_23BB01204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0648);
  }

  return result;
}

unint64_t sub_23BB0114C()
{
  result = qword_27E1A0658;
  if (!qword_27E1A0658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0660);
    sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8);
    sub_23BA05EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0658);
  }

  return result;
}

unint64_t sub_23BB01204()
{
  result = qword_27E1A0668;
  if (!qword_27E1A0668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0670);
    sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00);
    sub_23BA05EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0668);
  }

  return result;
}

unint64_t sub_23BB012BC()
{
  result = qword_27E1A0678;
  if (!qword_27E1A0678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0680);
    sub_23BB013C8(&qword_27E1A0688, type metadata accessor for PrivacyPolicy);
    sub_23BB013C8(&qword_27E1A0690, type metadata accessor for TermsOfService);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0678);
  }

  return result;
}

uint64_t sub_23BB013C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BB01430()
{
  result = qword_27E1A0698;
  if (!qword_27E1A0698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0610);
    sub_23BB013C8(&qword_27E1A06A0, type metadata accessor for StoreKitSafariView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0698);
  }

  return result;
}

unint64_t sub_23BB014EC()
{
  result = qword_27E1A06A8;
  if (!qword_27E1A06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A06A8);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for PolicyDestinationModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0598) + 32);
  v5 = type metadata accessor for SubscriptionStorePolicySection.PolicyState(0);
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_23BBDC7F8();
      OUTLINED_FUNCTION_4_1();
      (*(v17 + 8))(v3 + v4);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  v6 = v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SubscriptionStorePolicyConfiguration.Destination(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 == 1)
    {
    }

    else if (!v7)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v8 + 8))(v6);
    }

    v10 = type metadata accessor for SubscriptionStorePolicyConfiguration(0);
    v11 = v10[5];
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 == 1)
    {
    }

    else if (!v12)
    {
      sub_23BBD9728();
      OUTLINED_FUNCTION_4_1();
      (*(v13 + 8))(v6 + v11);
    }

    v14 = v6 + v10[6];
    if (*(v14 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    v15 = v6 + v10[7];
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  sub_23B97B5C0(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BB01804(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB018E8()
{

  return swift_deallocObject();
}

uint64_t sub_23BB01928(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23BB01968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBDC7F8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 > 1)
    {
      return (v9 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23BBDC7F8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }
}

void sub_23BB01B64()
{
  sub_23BBDC7F8();
  if (v0 <= 0x3F)
  {
    sub_23B9DD1EC(319, &qword_27E197E40, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB01C04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A05D0);
  sub_23BAFF1D4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BB01CD4()
{
  result = qword_27E1A0710;
  if (!qword_27E1A0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0710);
  }

  return result;
}

unint64_t sub_23BB01D28()
{
  result = qword_27E1A0718;
  if (!qword_27E1A0718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0700);
    sub_23BB01430();
    sub_23BB01CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0718);
  }

  return result;
}

uint64_t sub_23BB01DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_23BB01DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23BB01E58()
{
  result = qword_27E1A0720;
  if (!qword_27E1A0720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0728);
    sub_23BB01430();
    sub_23BB01204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0720);
  }

  return result;
}

unint64_t sub_23BB01EE8()
{
  result = qword_27E1A0730;
  if (!qword_27E1A0730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0738);
    sub_23BB01F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0730);
  }

  return result;
}

unint64_t sub_23BB01F6C()
{
  result = qword_27E1A0740;
  if (!qword_27E1A0740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0708);
    sub_23BB01D28();
    sub_23BB01204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0740);
  }

  return result;
}

unint64_t sub_23BB01FFC()
{
  result = qword_27E1A0748;
  if (!qword_27E1A0748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0750);
    sub_23BB02088();
    sub_23BA05EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0748);
  }

  return result;
}

unint64_t sub_23BB02088()
{
  result = qword_27E1A0758;
  if (!qword_27E1A0758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0758);
  }

  return result;
}

unint64_t sub_23BB02130()
{
  result = qword_27E1A0770;
  if (!qword_27E1A0770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0768);
    sub_23BB021BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0770);
  }

  return result;
}

unint64_t sub_23BB021BC()
{
  result = qword_27E1A0778;
  if (!qword_27E1A0778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0780);
    sub_23B97B518(&qword_27E1A0788, &qword_27E1A0790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0778);
  }

  return result;
}

uint64_t sub_23BB0228C()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07B0);
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_17_0();
  v2(v1);
  return v0;
}

uint64_t sub_23BB022EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07B0);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_23BB02350()
{
  result = qword_27E1A07C8;
  if (!qword_27E1A07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0798);
    sub_23B97B518(&qword_27E1A07D0, &qword_27E1A07D8);
    sub_23BA05EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A07C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return sub_23BBDB648();
}

uint64_t OUTLINED_FUNCTION_7_34(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

uint64_t sub_23BB024A0(uint64_t a1, uint64_t a2, char a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = a2;
  sub_23BB0351C(a1, sub_23BB05CA8, 0, isUniquelyReferenced_nonNull_native, &v10, a3 & 1);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

uint64_t sub_23BB025A0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    default:
      break;
  }

  sub_23BBDD078();
}

uint64_t sub_23BB02694(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_3_37();
      break;
    default:
      break;
  }

  sub_23BBDD078();
}

uint64_t sub_23BB027F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_23BBDD078();
}

uint64_t sub_23BB02848()
{
  sub_23BBDD078();
}

uint64_t sub_23BB02928()
{
  sub_23BBDDBB8();
  sub_23BBDDBD8();
  return sub_23BBDDBF8();
}

uint64_t sub_23BB02988(uint64_t a1, char a2)
{
  sub_23BBDDBB8();
  sub_23BB025A0(v4, a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB02A18(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a2);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB02A8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_23BBDDBB8();
  a3(a2);
  OUTLINED_FUNCTION_2_39();

  return sub_23BBDDBF8();
}

uint64_t sub_23BB02AE0(uint64_t a1, unsigned __int8 a2)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a2 + 1);
  return sub_23BBDDBF8();
}

uint64_t sub_23BB02B28(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  *&v45 = a1;
  *(&v45 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07E8);
  if (swift_dynamicCast())
  {
    sub_23B98473C(v43, &v46);
    __swift_project_boxed_opaque_existential_1(&v46, v47);
    OUTLINED_FUNCTION_0_44();
    sub_23BBD95E8();
    v43[0] = v45;
    __swift_destroy_boxed_opaque_existential_1(&v46);
    goto LABEL_59;
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_23BB05B78(v43);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v43[0] = a1;
    *(&v43[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v43;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_23BBDD7C8();
  }

  sub_23BB051CC(v4, v5, &v46);
  v6 = *(&v46 + 1);
  v7 = v46;
  if (*(&v46 + 1) >> 60 != 15)
  {
    v43[0] = v46;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v43[0] = MEMORY[0x23EEB1F80](v8);
  *(&v43[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v43[0]);
  v10 = sub_23BB052E8(sub_23BB05C18);
  v12 = *(&v43[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v43[0]);
  switch(*(&v43[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v43[0]) - LODWORD(v43[0]);
      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v43[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v43[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v43[0] + 16);
      v20 = *(*&v43[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_23BBD9798();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v45 + 7) = 0;
      *&v45 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v43[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_1_48();
      v27 = sub_23BBA8FC4(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_23BBDD0D8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_23BBDD108();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v46 = v13;
      *(&v46 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v46 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_23BBDD7C8();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = OUTLINED_FUNCTION_1_48();
      v17 = sub_23BBA8FC4(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1_48();
    v17 = sub_23BBDD0E8();
LABEL_46:
    *(&v45 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_4_30();
      sub_23BBD97B8();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_4_30();
    sub_23BBD97B8();
    sub_23BB05C34(v42, v6);
    goto LABEL_58;
  }

  sub_23BB05C34(v42, v6);
LABEL_59:
  v37 = OUTLINED_FUNCTION_48_1();
  sub_23B9A93B4(v37, v38);

  v39 = OUTLINED_FUNCTION_48_1();
  sub_23B9A940C(v39, v40);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_23BB02FE4(uint64_t a1)
{
  v2 = sub_23BBDCDF8();
  v7 = v2;
  v8 = sub_23BB057E0(&qword_27E1A07E0, MEMORY[0x277CC5578]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  OUTLINED_FUNCTION_0_44();
  sub_23BBD95E8();
  __swift_destroy_boxed_opaque_existential_1(v6);
  (*(v4 + 8))(a1, v2);
  return OUTLINED_FUNCTION_48_1();
}

uint64_t sub_23BB03110()
{
  v1 = sub_23BBDCE08();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = sub_23BBDD018();
    v42 = v0;
    v12 = v11;

    sub_23BB02B28(v10, v12);
    sub_23BB057E0(&qword_27E199020, MEMORY[0x277CC5598]);
    sub_23BBDCDE8();
    v13 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v13, v14);
    v15 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v15, v16);
    v17 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v17, v18);
    sub_23BBDCDD8();
    (*(v2 + 8))(v4, v1);
    v19 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v19, v20);
    v21 = sub_23BB02FE4(v7);
    v23 = v22;
    v0 = v42;

    v24 = sub_23BBD97D8();
    v26 = v25;
    sub_23B9A940C(v21, v23);
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = sub_23B9D4CA8(v24, v26);

  if (v27)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v28)
  {
    return 0;
  }

  v29 = v28;
  v30 = *(v0 + 40);
  v44 = *(v0 + 24);
  v45 = v30;
  v46 = *(v0 + 56);
  v47 = *(v0 + 72);
  v31 = sub_23BBCA150();
  if (!v31)
  {

    return 0;
  }

  v32 = sub_23BB024A0(v31, v29, 1);
  v33 = &off_284E57028;
  v34 = 4;
  do
  {
    v35 = *(v33 - 1);
    v36 = *v33;

    v37 = sub_23BB03A88(v35, v36);
    v39 = v38;

    if (v39)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v43 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010);
      sub_23BBDD8D8();
      v32 = v43;

      sub_23B9A9318();
      sub_23BBDD8F8();
    }

    v33 += 2;
    --v34;
  }

  while (v34);
  return v32;
}

uint64_t sub_23BB034D4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_23BB0351C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, char a6)
{
  v50 = a5;
  sub_23BB05988(a1, a2, a3, v49);
  v7 = v49[1];
  v8 = v49[3];
  v9 = v49[4];
  v42 = v49[5];
  v43 = v49[0];
  v10 = (v49[2] + 64) >> 6;

  v41 = v7;
  if (v9)
  {
    while (1)
    {
      v44 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v43 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v43 + 56) + 8 * v13);
      v48[0] = *v14;
      v48[1] = v15;
      v48[2] = v16;

      v17 = v16;
      v42(&v45, v48);

      v19 = v45;
      v18 = v46;
      v20 = v47;
      v21 = *v50;
      v23 = sub_23BB03A88(v45, v46);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010);
          sub_23BBDD8E8();
        }
      }

      else
      {
        sub_23BB037E8(v26, v44 & 1);
        v28 = sub_23BB03A88(v19, v18);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_26;
        }

        v23 = v28;
      }

      v9 &= v9 - 1;
      v30 = *v50;
      if (v27)
      {
        v31 = *(v30[7] + 8 * v23);
        if (a6)
        {
          v31 = v20;
        }

        v32 = v31;

        v33 = v30[7];
        v34 = *(v33 + 8 * v23);
        *(v33 + 8 * v23) = v32;
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v35 = (v30[6] + 16 * v23);
        *v35 = v19;
        v35[1] = v18;
        *(v30[7] + 8 * v23) = v20;
        v36 = v30[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_25;
        }

        v30[2] = v38;
      }

      a4 = 1;
      v8 = v11;
      v7 = v41;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_23BA98DEC();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_23BBDDAE8();
  __break(1u);
  return result;
}

uint64_t sub_23BB037E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07F8);
  v35 = a2;
  result = sub_23BBDD948();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_23B9B89EC(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    sub_23BBDDBB8();
    sub_23BBDD078();
    result = sub_23BBDDBF8();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_23BB03A88(uint64_t a1, uint64_t a2)
{
  sub_23BBDDBB8();
  sub_23BBDD078();
  v4 = sub_23BBDDBF8();

  return sub_23BB03D14(a1, a2, v4);
}

unint64_t sub_23BB03B58(char a1)
{
  sub_23BBDDBB8();
  sub_23BB025A0(v4, a1);
  v2 = sub_23BBDDBF8();

  return sub_23BB04364(a1, v2);
}

uint64_t sub_23BB03C48(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_23BBDDBB8();
  a2(a1);
  OUTLINED_FUNCTION_2_39();

  v5 = sub_23BBDDBF8();

  return a3(a1, v5);
}

unint64_t sub_23BB03CD0(uint64_t a1)
{
  v2 = sub_23BBDD6D8();

  return sub_23BB05108(a1, v2);
}

unint64_t sub_23BB03D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23BBDDA88() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_23BB03DC8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE004449656C646ELL;
      v8 = 0x7542646568736168;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7250646568736168;
          v7 = 0xEF4449746375646FLL;
          break;
        case 2:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000023BBDF670;
          break;
        case 3:
          v8 = 0xD000000000000018;
          v7 = 0x800000023BBDF650;
          break;
        case 4:
          v8 = 0xD000000000000016;
          v7 = 0x800000023BBDF630;
          break;
        default:
          break;
      }

      v9 = 0x7542646568736168;
      v10 = 0xEE004449656C646ELL;
      switch(a1)
      {
        case 1:
          v9 = 0x7250646568736168;
          v10 = 0xEF4449746375646FLL;
          break;
        case 2:
          v9 = 0xD00000000000001BLL;
          v10 = 0x800000023BBDF670;
          break;
        case 3:
          v9 = 0xD000000000000018;
          v10 = 0x800000023BBDF650;
          break;
        case 4:
          v9 = 0xD000000000000016;
          v10 = 0x800000023BBDF630;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_23BBDDA88();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23BB04040(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB0000000072657ALL;
      v8 = 0x696C616974696E69;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0xD000000000000016;
          v7 = 0x800000023BBDF750;
          break;
        case 3:
          v8 = 0x73746375646F7270;
          v7 = 0xEE00646564616F4CLL;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x800000023BBDF7B0;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x656C797473;
          break;
        case 6:
          v8 = 0x49796E4173657375;
          v7 = 0xEB000000006E6F63;
          break;
        case 7:
          v8 = 0xD000000000000018;
          v7 = 0x800000023BBDF7D0;
          break;
        default:
          v8 = 0xD000000000000018;
          v7 = 0x800000023BBDF790;
          break;
      }

      v9 = 0x696C616974696E69;
      v10 = 0xEB0000000072657ALL;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v9 = 0xD000000000000016;
          v10 = 0x800000023BBDF750;
          break;
        case 3:
          v9 = 0x73746375646F7270;
          v10 = 0xEE00646564616F4CLL;
          break;
        case 4:
          v9 = 0xD000000000000011;
          v10 = 0x800000023BBDF7B0;
          break;
        case 5:
          v10 = 0xE500000000000000;
          v9 = 0x656C797473;
          break;
        case 6:
          v9 = 0x49796E4173657375;
          v10 = 0xEB000000006E6F63;
          break;
        case 7:
          v9 = 0xD000000000000018;
          v10 = 0x800000023BBDF7D0;
          break;
        default:
          v9 = 0xD000000000000018;
          v10 = 0x800000023BBDF790;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_23BBDDA88();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23BB04364(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF64657472617453;
      v8 = 0x6573616863727570;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x800000023BBDF6E0;
          break;
        case 2:
          v8 = 0x6E657053656D6974;
          v7 = 0xEF776569566E4974;
          break;
        case 3:
          v8 = 0x6573616863727570;
          v7 = 0xEE00746C75736552;
          break;
        default:
          break;
      }

      v9 = 0x6573616863727570;
      v10 = 0xEF64657472617453;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000011;
          v10 = 0x800000023BBDF6E0;
          break;
        case 2:
          v9 = 0x6E657053656D6974;
          v10 = 0xEF776569566E4974;
          break;
        case 3:
          v9 = 0x6573616863727570;
          v10 = 0xEE00746C75736552;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_23BBDDA88();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23BB04590(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x65707954706169;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000017;
          v7 = 0x800000023BBDF720;
          break;
        case 2:
          break;
        case 3:
          v8 = 0x696C616974696E69;
          v7 = 0xEB0000000072657ALL;
          break;
        case 4:
          v8 = 0xD000000000000016;
          v7 = 0x800000023BBDF750;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x656C797473;
          break;
        case 6:
          v8 = 0xD000000000000015;
          v7 = 0x800000023BBDF770;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F634973657375;
          break;
        default:
          v8 = 0xD000000000000011;
          v7 = 0x800000023BBDF610;
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x65707954706169;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000017;
          v9 = 0x800000023BBDF720;
          break;
        case 2:
          break;
        case 3:
          v10 = 0x696C616974696E69;
          v9 = 0xEB0000000072657ALL;
          break;
        case 4:
          v10 = 0xD000000000000016;
          v9 = 0x800000023BBDF750;
          break;
        case 5:
          v9 = 0xE500000000000000;
          v10 = 0x656C797473;
          break;
        case 6:
          v10 = 0xD000000000000015;
          v9 = 0x800000023BBDF770;
          break;
        case 7:
          v9 = 0xE800000000000000;
          v10 = 0x6E6F634973657375;
          break;
        default:
          v10 = 0xD000000000000011;
          v9 = 0x800000023BBDF610;
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_23BBDDA88();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23BB04870(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF4449746375646FLL;
      v8 = 0x7250646568736168;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0x64657463656C6573;
          v7 = 0xED00007865646E49;
          break;
        case 3:
          v8 = 0x6573616863727570;
          v7 = 0xEE00746C75736552;
          break;
        case 4:
          v8 = 0x6E657053656D6974;
          v7 = 0xEF776569566E4974;
          break;
        case 5:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000023BBDF670;
          break;
        case 6:
          v8 = 0xD000000000000018;
          v7 = 0x800000023BBDF650;
          break;
        case 7:
          v8 = 0xD000000000000016;
          v7 = 0x800000023BBDF630;
          break;
        default:
          v8 = 0xD000000000000018;
          v7 = 0x800000023BBDF7F0;
          break;
      }

      v9 = 0x7250646568736168;
      v10 = 0xEF4449746375646FLL;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v9 = 0x64657463656C6573;
          v10 = 0xED00007865646E49;
          break;
        case 3:
          v9 = 0x6573616863727570;
          v10 = 0xEE00746C75736552;
          break;
        case 4:
          v9 = 0x6E657053656D6974;
          v10 = 0xEF776569566E4974;
          break;
        case 5:
          v9 = 0xD00000000000001BLL;
          v10 = 0x800000023BBDF670;
          break;
        case 6:
          v9 = 0xD000000000000018;
          v10 = 0x800000023BBDF650;
          break;
        case 7:
          v9 = 0xD000000000000016;
          v10 = 0x800000023BBDF630;
          break;
        default:
          v9 = 0xD000000000000018;
          v10 = 0x800000023BBDF7F0;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_23BBDDA88();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23BB04BC0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC000000656C7974;
      v8 = 0x536C6F72746E6F63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x800000023BBDF840;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD000000000000012;
          v7 = 0x800000023BBDF860;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x800000023BBDF880;
          break;
        case 5:
          v8 = 0xD000000000000018;
          v7 = 0x800000023BBDF790;
          break;
        case 6:
          v8 = 0x7379616C70736964;
          v10 = 0x6E496E676953;
          goto LABEL_20;
        case 7:
          v8 = 0xD000000000000019;
          v7 = 0x800000023BBDF690;
          break;
        case 8:
          v8 = 0x7469746E45736168;
          v10 = 0x746E656D656CLL;
          goto LABEL_20;
        case 9:
          v8 = 0x696C616974696E69;
          v7 = 0xEB0000000072657ALL;
          break;
        case 0xA:
          v8 = 0x736944736E616C70;
          v9 = 2036427888;
          goto LABEL_18;
        case 0xB:
          v8 = 0x716552736E616C70;
          v9 = 1953719669;
LABEL_18:
          v10 = v9 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
LABEL_20:
          v7 = v10 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x800000023BBDF8C0;
          break;
        case 0xD:
          v8 = 0xD000000000000012;
          v7 = 0x800000023BBDF8E0;
          break;
        case 0xE:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000023BBDF900;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x800000023BBDF920;
          break;
        default:
          v8 = 0xD000000000000012;
          v7 = 0x800000023BBDF820;
          break;
      }

      v11 = 0x536C6F72746E6F63;
      v12 = 0xEC000000656C7974;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000011;
          v12 = 0x800000023BBDF840;
          break;
        case 2:
          break;
        case 3:
          v11 = 0xD000000000000012;
          v12 = 0x800000023BBDF860;
          break;
        case 4:
          v11 = 0xD000000000000010;
          v12 = 0x800000023BBDF880;
          break;
        case 5:
          v11 = 0xD000000000000018;
          v12 = 0x800000023BBDF790;
          break;
        case 6:
          v11 = 0x7379616C70736964;
          v14 = 0x6E496E676953;
          goto LABEL_38;
        case 7:
          v11 = 0xD000000000000019;
          v12 = 0x800000023BBDF690;
          break;
        case 8:
          v11 = 0x7469746E45736168;
          v14 = 0x746E656D656CLL;
          goto LABEL_38;
        case 9:
          v11 = 0x696C616974696E69;
          v12 = 0xEB0000000072657ALL;
          break;
        case 10:
          v11 = 0x736944736E616C70;
          v13 = 2036427888;
          goto LABEL_36;
        case 11:
          v11 = 0x716552736E616C70;
          v13 = 1953719669;
LABEL_36:
          v14 = v13 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
LABEL_38:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 12:
          v11 = 0xD000000000000016;
          v12 = 0x800000023BBDF8C0;
          break;
        case 13:
          v11 = 0xD000000000000012;
          v12 = 0x800000023BBDF8E0;
          break;
        case 14:
          v11 = 0xD00000000000001ALL;
          v12 = 0x800000023BBDF900;
          break;
        case 15:
          v11 = 0xD000000000000014;
          v12 = 0x800000023BBDF920;
          break;
        default:
          v11 = 0xD000000000000012;
          v12 = 0x800000023BBDF820;
          break;
      }

      if (v8 == v11 && v7 == v12)
      {
        break;
      }

      v16 = sub_23BBDDA88();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23BB05108(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_23B97933C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x23EEB5EC0](v8, a1);
    sub_23BAC5FF8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23BB051CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_23BBD9748();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_23BBD9598();
      swift_allocObject();
      v8 = sub_23BBD9558();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_23BBD9788();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_23BB05294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_23BB05870(sub_23BB05C88, v5, a1, a2);
}

uint64_t sub_23BB052E8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_23B9A940C(v6, v5);
      *v4 = xmmword_23BBFB8B0;
      sub_23B9A940C(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_23BBD9568() && __OFSUB__(v6, sub_23BBD9588()))
      {
        goto LABEL_24;
      }

      sub_23BBD9598();
      swift_allocObject();
      v13 = sub_23BBD9548();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_23BB058D4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_23B9A940C(v6, v5);
      v16 = v6;
      v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_23BBFB8B0;
      sub_23B9A940C(0, 0xC000000000000000);
      sub_23BBD9758();
      v6 = v16;
      v9 = sub_23BB058D4(*(v16 + 16), *(v16 + 24), a1);
      if (v2)
      {
        v10 = v17 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v17 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v2)
      {
        return v16;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_23B9A940C(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        v3 = v16;
      }

      v8 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v4 = v18[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_23BB056BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_23BBD9748();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23EEB1F40]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23EEB1F50]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_23BB05734(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_23BB05A98(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x23BB057D0);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_23BB059C4();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_23BB057E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BB05828(uint64_t result)
{
  if (result)
  {
    result = sub_23BBDD778();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23BB05870(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_23BB058D4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_23BBD9568();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_23BBD9588();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_23BBD9578();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_23BB05988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_23BB059C4()
{
  sub_23BBDCE08();
  sub_23BB057E0(&qword_27E199020, MEMORY[0x277CC5598]);
  return sub_23BBDCDC8();
}

uint64_t sub_23BB05A98(uint64_t a1, uint64_t a2)
{
  result = sub_23BBD9568();
  if (!result || (result = sub_23BBD9588(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23BBD9578();
      sub_23BBDCE08();
      sub_23BB057E0(&qword_27E199020, MEMORY[0x277CC5598]);
      return sub_23BBDCDC8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BB05B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A07F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_23BB05BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_23BB05294(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_23BB05C34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B9A940C(a1, a2);
  }

  return a1;
}

uint64_t sub_23BB05C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB05828(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_23BB05CA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB034D4(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_23BB05CEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_23BB05D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return sub_23BBDD078();
}

uint64_t sub_23BB05E38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_23BB05E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_23BB05EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_23BB05F68(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_6_26(a1);
}

uint64_t sub_23BB05F88(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return OUTLINED_FUNCTION_3_38((v2 & a1));
}

uint64_t sub_23BB05FB0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_23BB05FEC(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return OUTLINED_FUNCTION_3_38((v2 & a1));
}

uint64_t sub_23BB0600C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_23BB0607C(unint64_t a1)
{
  if ((a1 & 5) != 0)
  {
    return (a1 >> 1) & 1;
  }

  else
  {
    return 1;
  }
}

void sub_23BB06090()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199938);
  OUTLINED_FUNCTION_7_35();

  JUMPOUT(0x23EEB43C0);
}

void sub_23BB060E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199928);
  OUTLINED_FUNCTION_7_35();

  JUMPOUT(0x23EEB43C0);
}

uint64_t sub_23BB06140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  sub_23BBDBF58();
  v9 = v11;
  v8 = v12;
  v11 = a1;
  v12 = a2;
  v13 = v9;
  v14 = v8;
  KeyPath = swift_getKeyPath();
  v16 = 0;
  MEMORY[0x23EEB43C0](&v11, a3, &type metadata for SubscriptionStoreBackgroundStateModifier, a4);
}

uint64_t sub_23BB06280(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_23BB062C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BB06324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB05F48(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BB06354@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB05F50(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BB06384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BB05FB0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23BB063B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BB0600C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23BB063F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB06054(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BB06434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB05EE4(a1);
  *a2 = result;
  return result;
}

unint64_t sub_23BB0645C()
{
  result = qword_27E1A0800;
  if (!qword_27E1A0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0800);
  }

  return result;
}

unint64_t sub_23BB064B4()
{
  result = qword_27E1A0808;
  if (!qword_27E1A0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0808);
  }

  return result;
}

unint64_t sub_23BB06510()
{
  result = qword_27E1A0810;
  if (!qword_27E1A0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0810);
  }

  return result;
}

unint64_t sub_23BB06568()
{
  result = qword_27E1A0818;
  if (!qword_27E1A0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0818);
  }

  return result;
}

uint64_t sub_23BB065BC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_23B9B7B8C();
  v2 = v3;
  if (*(v3 + 16) >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_31();
    v2 = v14;
  }

  OUTLINED_FUNCTION_8_35();
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = v4;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_31();
      v2 = v15;
    }

    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_31();
      v2 = v16;
    }

    OUTLINED_FUNCTION_8_35();
    *(v7 + 32) = 0xD000000000000017;
    *(v7 + 40) = v6;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_31();
      v2 = v17;
    }

    v8 = *(v2 + 16);
    if (v8 >= *(v2 + 24) >> 1)
    {
      sub_23B9B7B8C();
      v2 = v18;
    }

    *(v2 + 16) = v8 + 1;
    v9 = v2 + 16 * v8;
    *(v9 + 32) = 0xD000000000000012;
    *(v9 + 40) = 0x800000023BBE2330;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B730);
  sub_23B97B518(qword_27E1A0890, qword_27E19B730);
  v10 = sub_23BBDCEA8();
  v12 = v11;

  MEMORY[0x23EEB5890](v10, v12);

  MEMORY[0x23EEB5890](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_23BB067E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  type metadata accessor for SubscriptionStoreBackgroundReaderModifier();
  swift_getWitnessTable();
  v4 = sub_23BBDAE98();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0920);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_23BB07AD4();
  v22 = v4;
  v23 = a2;
  v24 = v5;
  v25 = WitnessTable;
  v26 = v7;
  v18[1] = MEMORY[0x277CDEC58];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  *(swift_allocObject() + 16) = a2;
  v14 = swift_checkMetadataState();
  sub_23BBDBA38();

  v22 = v14;
  v23 = a2;
  v24 = v5;
  v25 = WitnessTable;
  v26 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v10, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v16 = *(v19 + 8);
  v16(v10, OpaqueTypeMetadata2);
  sub_23B9D2D88(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v16)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_23BB06A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0938);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  if (a1)
  {

    v7 = sub_23BBDA398();
    v8 = sub_23BBDB398();
    v10[1] = a1;
    v10[2] = v7;
    v11 = v8;
    swift_dynamicCastMetatype();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0948);
    sub_23BB07BE4();
    sub_23BBDBA68();

    sub_23BB07C80(v6, a2);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

unint64_t sub_23BB06BD0()
{
  v1 = v0;
  v2 = sub_23BBDA928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D8);
  sub_23BBDBF68();
  v6 = v11;
  v7 = *(v0 + 32);
  *&v12 = v7;
  BYTE8(v12) = *(v1 + 40);
  LOBYTE(v1) = BYTE8(v12);

  if ((v1 & 1) == 0)
  {
    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v12, &qword_27E1A0848);
    (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  if (!v7)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  return v6 | 4;
}

uint64_t sub_23BB06D78@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0820);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0828);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0830);
  sub_23B97B518(&qword_27E1A0838, &qword_27E1A0830);
  sub_23BB07454();
  sub_23BBDBAA8();
  v21 = *(v1 + 16);
  v19 = *(v1 + 32);
  v20 = *(v1 + 40);
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  v8[1] = *v1;
  v8[2] = v9;
  *(v8 + 41) = *(v1 + 25);
  v10 = &v4[*(v2 + 36)];
  *v10 = sub_23BB074AC;
  v10[1] = v8;

  sub_23B99FCE0(&v21, v18, &qword_27E19C4D8);
  sub_23B99FCE0(&v19, v18, &qword_27E1A0848);
  sub_23BB074B4();
  sub_23BB075FC();
  sub_23BBDBAA8();
  sub_23B979910(v4, &qword_27E1A0820);
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  v11[1] = *v1;
  v11[2] = v12;
  *(v11 + 41) = *(v1 + 25);
  v13 = &v7[*(v5 + 36)];
  *v13 = sub_23BB07650;
  v13[1] = v11;

  sub_23B99FCE0(&v21, v18, &qword_27E19C4D8);
  sub_23B99FCE0(&v19, v18, &qword_27E1A0848);
  v17[1] = sub_23BB06BD0();
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  v14[1] = *v1;
  v14[2] = v15;
  *(v14 + 41) = *(v1 + 25);

  sub_23B99FCE0(&v21, v18, &qword_27E19C4D8);
  sub_23B99FCE0(&v19, v18, &qword_27E1A0848);
  sub_23BB076D0();
  sub_23BB0645C();
  sub_23BBDBC08();

  return sub_23B979910(v7, &qword_27E1A0828);
}

uint64_t sub_23BB07130(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3[1] = *(a2 + 16);
  v5 = *(&v4 + 1);
  sub_23B99FCE0(&v5, v3, &qword_27E1A0888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D8);
  sub_23BBDBF68();
  v3[0] = v4;
  sub_23BBDBF78();
  return sub_23B979910(&v4, &qword_27E19C4D8);
}

uint64_t sub_23BB07268(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3[1] = *(a2 + 16);
  v5 = *(&v4 + 1);
  sub_23B99FCE0(&v5, v3, &qword_27E1A0888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4D8);
  sub_23BBDBF68();
  v3[0] = v4;
  sub_23BBDBF78();
  return sub_23B979910(&v4, &qword_27E19C4D8);
}

unint64_t sub_23BB07454()
{
  result = qword_27E1A0840;
  if (!qword_27E1A0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0840);
  }

  return result;
}

unint64_t sub_23BB074B4()
{
  result = qword_27E1A0850;
  if (!qword_27E1A0850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0830);
    sub_23B97B518(&qword_27E1A0838, &qword_27E1A0830);
    sub_23BB07454();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A0858, &qword_27E1A0860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0850);
  }

  return result;
}

unint64_t sub_23BB075FC()
{
  result = qword_27E1A0868;
  if (!qword_27E1A0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0868);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{

  j__swift_release(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_23BB076D0()
{
  result = qword_27E1A0870;
  if (!qword_27E1A0870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0820);
    sub_23BB074B4();
    sub_23BB075FC();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A0878, &qword_27E1A0880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0870);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStoreBackgroundState.PolicyLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB07900);
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

uint64_t sub_23BB07938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0828);
  sub_23BB076D0();
  sub_23BB0645C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23BB079B4()
{
  result = qword_27E1A0918;
  if (!qword_27E1A0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0918);
  }

  return result;
}

unint64_t sub_23BB07A08(uint64_t a1)
{
  result = sub_23BB07454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BB07A30(uint64_t a1)
{
  result = sub_23BB075FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23BB07AD4()
{
  result = qword_27E1A0928;
  if (!qword_27E1A0928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0920);
    sub_23BB07B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0928);
  }

  return result;
}

unint64_t sub_23BB07B58()
{
  result = qword_27E1A0930;
  if (!qword_27E1A0930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0938);
    sub_23BB07BE4();
    sub_23BAB2CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0930);
  }

  return result;
}

unint64_t sub_23BB07BE4()
{
  result = qword_27E1A0940;
  if (!qword_27E1A0940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0940);
  }

  return result;
}

uint64_t sub_23BB07C80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB07CF0()
{
  type metadata accessor for SubscriptionStoreBackgroundReaderModifier();
  swift_getWitnessTable();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0920);
  swift_getWitnessTable();
  sub_23BB07AD4();
  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_4_31()
{

  sub_23B9B7B8C();
}

void OUTLINED_FUNCTION_5_31()
{

  sub_23B9B7B8C();
}

void sub_23BB07E90(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCB38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) != 1)
  {
    v9 = *(v1 + 8);
    v10 = *(*v1 + 16);
    if (v9 != v10)
    {
      if (v9 >= v10)
      {
        __break(1u);
      }

      else
      {
        v11 = *(v4 + 16);
        v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v13 = *(v4 + 72);
        v14 = *v1 + v12 + v13 * v9;
        *(v1 + 8) = v9 + 1;
        v11(v7, v14, v3, v5);
        v15 = *(v1 + 16);
        v16 = *(v1 + 24);
        v17 = *(v15 + 16);
        if (v16 == v17)
        {
          (*(v4 + 8))(v7, v3);
          goto LABEL_9;
        }

        if (v16 < v17)
        {
          v21 = v15 + v12 + v16 * v13;
          *(v1 + 24) = v16 + 1;
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B8);
          v23 = *(v22 + 48);
          (*(v4 + 32))(a1, v7, v3);
          (v11)(a1 + v23, v21, v3);
          v19 = a1;
          v20 = 0;
          v18 = v22;
          goto LABEL_12;
        }
      }

      __break(1u);
      return;
    }

LABEL_9:
    *(v1 + 32) = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B8);
    v19 = a1;
    v20 = 1;
LABEL_12:
    __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
    return;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B8);

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
}

uint64_t View.subscriptionStatusTask(for:priority:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v13 = _s16TaskViewModifierVMa_0();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDD368();
  OUTLINED_FUNCTION_4_1();
  (*(v17 + 16))(v16, a3);
  v18 = v13[7];
  v19 = *MEMORY[0x277CDD0B0];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_4_1();
  (*(v20 + 104))(&v16[v18], v19);
  v21 = &v16[v13[5]];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v16[v13[6]];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &v16[v13[8]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;

  MEMORY[0x23EEB43C0](v16, a6, v13, v25);
  return sub_23BB082AC(v16);
}

uint64_t _s16TaskViewModifierVMa_0()
{
  result = qword_27E1A0970;
  if (!qword_27E1A0970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB082AC(uint64_t a1)
{
  v2 = _s16TaskViewModifierVMa_0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB08308()
{
  _s16TaskViewModifierVMa_0();
  sub_23BBDA358();
  sub_23BB0C724(&qword_27E1A0968, _s16TaskViewModifierVMa_0);
  return swift_getWitnessTable();
}

uint64_t sub_23BB083B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDD368();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_23BBDC5F8();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_23BB084A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDD368();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_23BBDC5F8();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_23BB0858C()
{
  v0 = type metadata accessor for SKLogger();
  __swift_allocate_value_buffer(v0, qword_27E1A0950);
  __swift_project_value_buffer(v0, qword_27E1A0950);
  return sub_23BBD9998();
}

uint64_t sub_23BB0860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s16TaskViewModifierVMa_0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (v3 + *(v9 + 28));
  v12 = *v10;
  v11 = v10[1];
  sub_23BB0C200(v3, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_23BB0C268(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0980) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A690);
  v17 = *(v16 + 36);
  v18 = sub_23BBDD368();
  (*(*(v18 - 8) + 16))(&v15[v17], v3, v18);
  v19 = &v15[*(v16 + 40)];
  *v19 = v12;
  *(v19 + 1) = v11;
  *v15 = &unk_23BBFC098;
  *(v15 + 1) = v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0988);
  (*(*(v20 - 8) + 16))(a2, a1, v20);
}

uint64_t sub_23BB087F4(uint64_t a1)
{
  v1[118] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A710);
  v1[119] = swift_task_alloc();
  sub_23BBDCB18();
  v1[120] = swift_task_alloc();
  v2 = _s16TaskViewModifierVMa_0();
  v1[121] = v2;
  v3 = *(v2 - 8);
  v1[122] = v3;
  v1[123] = *(v3 + 64);
  v1[124] = swift_task_alloc();
  v1[125] = sub_23BBDCB28();
  v1[126] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0990);
  v1[127] = v4;
  v1[128] = *(v4 - 8);
  v1[129] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A718);
  v1[130] = v5;
  v1[131] = *(v5 - 8);
  v1[132] = swift_task_alloc();
  v6 = sub_23BBDA928();
  v1[133] = v6;
  v1[134] = *(v6 - 8);
  v1[135] = swift_task_alloc();
  sub_23BBDD308();
  v1[136] = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();
  v1[137] = v8;
  v1[138] = v7;

  return MEMORY[0x2822009F8](sub_23BB08AB4, v8, v7);
}

uint64_t sub_23BB08AB4()
{
  v41 = v0;
  if (qword_27E1977F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 968);
  v2 = *(v0 + 944);
  v3 = type metadata accessor for SKLogger();
  *(v0 + 1112) = __swift_project_value_buffer(v3, qword_27E1A0950);
  sub_23B9EAEFC();
  *(v0 + 1120) = v4;
  *(v0 + 1128) = v5;
  v6 = v2 + *(v1 + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {
    v8 = *(v0 + 1080);
    v9 = *(v0 + 1072);
    v10 = *(v0 + 1064);

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v7, 0);
    (*(v9 + 8))(v8, v10);
    LOBYTE(v7) = *(v0 + 817);
  }

  if (v7 == 2 || (v7 & 1) == 0)
  {
    v25 = *(v0 + 1032);
    v26 = *(v0 + 1024);
    v27 = *(v0 + 1016);
    v28 = *(v0 + 992);
    v29 = *(v0 + 976);
    v30 = *(v0 + 944);
    v38 = v30;
    sub_23BBDCB08();
    sub_23BB0C200(v30, v28);
    v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v32 = swift_allocObject();
    sub_23BB0C268(v28, v32 + v31);
    sub_23BB0C724(&qword_27E1A0998, MEMORY[0x277CDD248]);
    sub_23BBDD9A8();
    MEMORY[0x23EEB6140](v27);
    sub_23BBDD3A8();
    sub_23BBDD958();
    (*(v26 + 8))(v25, v27);
    sub_23BBDD998();
    v33 = swift_task_alloc();
    *(v0 + 1144) = v33;
    *(v33 + 16) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E578);
    swift_asyncLet_begin();
    if (qword_27E1977B8 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 968);
    v35 = *(v0 + 944);
    v36 = qword_27E1BFD68;
    *(v0 + 1152) = qword_27E1BFD68;
    v37 = (v35 + *(v34 + 20));
    *(v0 + 1160) = *v37;
    *(v0 + 1168) = v37[1];

    return MEMORY[0x2822009F8](sub_23BB092A4, v36, 0);
  }

  else
  {
    v12 = sub_23BBDD578();

    v13 = sub_23BBD9988();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v40[0] = v15;
      v40[1] = 91;
      v40[2] = 0xE100000000000000;
      v16 = OUTLINED_FUNCTION_49_0();
      MEMORY[0x23EEB5890](v16);
      MEMORY[0x23EEB5890](8285, 0xE200000000000000);
      v17 = sub_23BA5AB90(91, 0xE100000000000000, v40);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_23BA5AB90(0xD000000000000046, 0x800000023BBE23F0, v40);
      _os_log_impl(&dword_23B970000, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EEB6DC0](v14, -1, -1);
    }

    v18 = sub_23BBDC608();
    sub_23BB0C724(&qword_27E19BE90, MEMORY[0x277CDD0D0]);
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277CDD0C0], v18);
    *(v0 + 920) = v19;
    *(v0 + 928) = 0;
    OUTLINED_FUNCTION_9_10();
    v39 = v21;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1136) = v22;
    *v22 = v23;
    v22[1] = sub_23BB090D8;

    return v39(v0 + 920);
  }
}

uint64_t sub_23BB090D8()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 920), *(v0 + 928));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB09200, v6, v5);
}

uint64_t sub_23BB09200()
{

  OUTLINED_FUNCTION_21_16();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BB092A4()
{
  OUTLINED_FUNCTION_4_11();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_17_0();
  v0[147] = sub_23B9F3FC4(v1, v2, v3);
  swift_endAccess();
  v4 = v0[138];
  v5 = v0[137];

  return MEMORY[0x2822009F8](sub_23BB09340, v5, v4);
}

uint64_t sub_23BB09340()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 1176);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  if (v1)
  {
    v4 = (v3 + *(v2 + 24));
    *(v0 + 1184) = *v4;
    *(v0 + 1192) = v4[1];
    *(v0 + 904) = v1;
    *(v0 + 912) = 1;

    OUTLINED_FUNCTION_9_10();
    v14 = v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1200) = v6;
    *v6 = v7;
    v6[1] = sub_23BB094F0;
    v8 = v0 + 904;
  }

  else
  {
    v9 = (v3 + *(v2 + 24));
    v10 = *v9;
    *(v0 + 1208) = *v9;
    *(v0 + 1216) = v9[1];
    *(v0 + 808) = 0;
    *(v0 + 816) = 2;
    v14 = (v10 + *v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1224) = v11;
    *v11 = v12;
    v11[1] = sub_23BB0981C;
    v8 = v0 + 808;
  }

  return v14(v8);
}

uint64_t sub_23BB094F0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 904), *(v0 + 912));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB09618, v6, v5);
}

uint64_t sub_23BB09618()
{
  v18 = v0;
  sub_23BBDD768();

  v16 = 0xD000000000000028;
  v17 = 0x800000023BBE23C0;
  v1 = OUTLINED_FUNCTION_49_0();
  MEMORY[0x23EEB5890](v1);

  v2 = sub_23BBDD578();

  v3 = sub_23BBD9988();

  v4 = os_log_type_enabled(v3, v2);
  v5 = *(v0 + 1128);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_14_20(4.8752e-34);
    MEMORY[0x23EEB5890](v8, v5);
    MEMORY[0x23EEB5890](8285, 0xE200000000000000);
    sub_23BA5AB90(v16, v17, &v15);

    v9 = OUTLINED_FUNCTION_22_15();
    v11 = sub_23BA5AB90(v9, 0x800000023BBE23C0, v10);

    *(v6 + 14) = v11;
    OUTLINED_FUNCTION_55_0(&dword_23B970000, v12, v13, "%{public}s%{public}s");
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v7, -1, -1);
    OUTLINED_FUNCTION_57_1();
  }

  else
  {
  }

  *(v0 + 1232) = *(v0 + 1184);
  OUTLINED_FUNCTION_11_21();

  return MEMORY[0x282200930](v0 + 16, v0 + 936);
}

uint64_t sub_23BB0981C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = v1;
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;

  *(v2 + 1232) = *(v2 + 1208);
  OUTLINED_FUNCTION_11_21();

  return MEMORY[0x282200930](v2 + 16, v2 + 936);
}

uint64_t sub_23BB09908()
{
  OUTLINED_FUNCTION_3_13();
  v1[156] = v0;
  if (v0)
  {

    v2 = v1[138];
    v3 = v1[137];
    v4 = sub_23BB0A8D8;
  }

  else
  {
    v2 = v1[138];
    v3 = v1[137];
    v4 = sub_23BB0998C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23BB0998C()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 936);
  *(v0 + 1256) = v1;

  v2 = OUTLINED_FUNCTION_49_0();
  if (sub_23BB0B228(v2, v3))
  {
    *(v0 + 888) = v1;
    *(v0 + 896) = 1;

    OUTLINED_FUNCTION_0_46();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1264) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_19_19(v4);
    OUTLINED_FUNCTION_15_21();

    return v6();
  }

  else
  {
    v8 = *(v0 + 1232);

    *(v0 + 1280) = v1;
    *(v0 + 1272) = v8;
    OUTLINED_FUNCTION_12_23();
    v9 = OUTLINED_FUNCTION_17_0();

    return MEMORY[0x2822009F8](v9, v10, 0);
  }
}

uint64_t sub_23BB09AD8()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 888), *(v0 + 896));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB09C00, v6, v5);
}

uint64_t sub_23BB09C00()
{
  v21 = v0;
  if (v0[147])
  {
    v1 = v0[146];
    v2 = v0[145];

    v19 = 0;
    v20 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000026, 0x800000023BBE2390);
    MEMORY[0x23EEB5890](v2, v1);
    MEMORY[0x23EEB5890](0xD00000000000001ALL, 0x800000023BBE09C0);
    LOBYTE(v2) = sub_23BBDD578();

    v3 = sub_23BBD9988();

    v4 = os_log_type_enabled(v3, v2);
    v5 = v0[141];
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_14_20(4.8752e-34);
      MEMORY[0x23EEB5890](v8, v5);
      MEMORY[0x23EEB5890](8285, 0xE200000000000000);
      sub_23BA5AB90(v19, v20, &v18);

      v9 = OUTLINED_FUNCTION_22_15();
      v11 = sub_23BA5AB90(v9, 0xE000000000000000, v10);

      *(v6 + 14) = v11;
      OUTLINED_FUNCTION_55_0(&dword_23B970000, v12, v13, "%{public}s%{public}s");
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v7, -1, -1);
      OUTLINED_FUNCTION_57_1();
    }

    else
    {
    }
  }

  else
  {
  }

  v14 = v0[154];
  v0[160] = v0[157];
  v0[159] = v14;
  OUTLINED_FUNCTION_12_23();
  v15 = OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2822009F8](v15, v16, 0);
}

uint64_t sub_23BB09E44()
{
  OUTLINED_FUNCTION_25_8();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_14();
  *(v1 + 120) = v9;
  swift_endAccess();
  v2 = v0[160];
  v0[161] = v0[159];
  v0[162] = v2;
  OUTLINED_FUNCTION_13_25(&unk_23BBEA738);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[163] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_49(v4);

  return v8(v6);
}

void sub_23BB09F14()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 1104);
    v8 = *(v3 + 1096);

    MEMORY[0x2822009F8](sub_23BB0A034, v8, v7);
  }
}

uint64_t sub_23BB0A034()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[119];
  v2 = sub_23BBDCB38();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {

    sub_23B979910(v1, &qword_27E19A710);

    return MEMORY[0x282200920](v0 + 2);
  }

  else
  {
    sub_23B979910(v1, &qword_27E19A710);
    v3 = swift_task_alloc();
    v0[164] = v3;
    *v3 = v0;
    v3[1] = sub_23BB0A164;
    v4 = v0[146];
    v5 = v0[145];

    return MEMORY[0x28212C730](v5, v4);
  }
}

uint64_t sub_23BB0A164()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  OUTLINED_FUNCTION_21_4();
  v5 = v4;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v8 = v7;
  v5[165] = v0;

  if (v0)
  {
    v9 = v5[138];
    v10 = v5[137];
    v11 = sub_23BB0AB58;
  }

  else
  {
    v5[166] = v3;
    v9 = v5[138];
    v10 = v5[137];
    v11 = sub_23BB0A280;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_23BB0A280()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 1328);
  v2 = OUTLINED_FUNCTION_49_0();
  v4 = sub_23BB0B228(v2, v3);

  if (v4)
  {
    *(v0 + 872) = v1;
    *(v0 + 880) = 1;

    OUTLINED_FUNCTION_0_46();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1336) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_19_19(v5);
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    OUTLINED_FUNCTION_0_46();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_4();
    *(v0 + 1344) = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_10_18(v7);
  }

  OUTLINED_FUNCTION_15_21();

  return v9();
}

uint64_t sub_23BB0A3CC()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 872), *(v0 + 880));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0A4F4, v6, v5);
}

uint64_t sub_23BB0A4F4()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_0_46();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1344) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_10_18(v1);
  OUTLINED_FUNCTION_15_21();

  return v3();
}

uint64_t sub_23BB0A590()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 856), *(v0 + 864));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0A6B8, v6, v5);
}

uint64_t sub_23BB0A6B8()
{
  OUTLINED_FUNCTION_3_13();

  v0 = OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2822009F8](v0, v1, 0);
}

uint64_t sub_23BB0A720()
{
  OUTLINED_FUNCTION_25_8();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_20_14();
  *(v1 + 120) = v8;
  swift_endAccess();
  v0[162] = v0[166];
  OUTLINED_FUNCTION_13_25(&unk_23BBEA738);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  v0[163] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_49();

  return v7(v5);
}

uint64_t sub_23BB0A804()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_21_16();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BB0A8D8()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 1248);
  *(v0 + 824) = v1;
  *(v0 + 832) = 0;
  v2 = v1;
  OUTLINED_FUNCTION_0_46();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1352) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_19_19(v3);
  OUTLINED_FUNCTION_15_21();

  return v5();
}

uint64_t sub_23BB0A9A0()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 824), *(v0 + 832));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0AAC8, v6, v5);
}

uint64_t sub_23BB0AAC8()
{
  OUTLINED_FUNCTION_3_13();

  v1 = *(v0 + 1176);
  *(v0 + 1288) = *(v0 + 1232);
  *(v0 + 1296) = v1;
  OUTLINED_FUNCTION_13_25(&unk_23BBEA738);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1304) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_49(v3);

  return v7(v5);
}

uint64_t sub_23BB0AB58()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 1320);
  *(v0 + 840) = v1;
  *(v0 + 848) = 0;
  v2 = v1;
  OUTLINED_FUNCTION_0_46();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1360) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_19_19(v3);
  OUTLINED_FUNCTION_15_21();

  return v5();
}

uint64_t sub_23BB0AC20()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_1_18();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_43_0();
  sub_23B9CEC50(*(v3 + 840), *(v0 + 848));
  OUTLINED_FUNCTION_43_0();
  v5 = *(v4 + 1104);
  v6 = *(v0 + 1096);

  return MEMORY[0x2822009F8](sub_23BB0AD48, v6, v5);
}

uint64_t sub_23BB0AD48()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_13_25(&unk_23BBEA738);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v0 + 1304) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_49();

  return v6(v4);
}

uint64_t sub_23BB0ADC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23BBDC758();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB0AEC4, 0, 0);
}

uint64_t sub_23BB0AEC4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_23BBDCAE8();
  sub_23BBDC798();
  sub_23B979910(v1, &qword_27E19A5D8);
  v6 = sub_23BBDC738();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v9 = _s16TaskViewModifierVMa_0();
  if (v8)
  {
    v10 = (v5 + *(v9 + 20));
    if (v6 == *v10 && v8 == v10[1])
    {
      v12 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_17_0();
      v12 = sub_23BBDDA88();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v0[1];

  return v13(v12 & 1);
}

uint64_t sub_23BB0B000(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23BB0B020, 0, 0);
}

uint64_t sub_23BB0B020()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *(v0 + 24);
  v2 = (v1 + *(_s16TaskViewModifierVMa_0() + 20));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_23BB0B0CC;

  return MEMORY[0x28212C730](v4, v3);
}

uint64_t sub_23BB0B0CC()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  OUTLINED_FUNCTION_21_4();
  v5 = v4;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;

    return MEMORY[0x2822009F8](sub_23BB0B204, 0, 0);
  }
}

uint64_t sub_23BB0B228(uint64_t a1, char *a2)
{
  v127 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09A0);
  MEMORY[0x28223BE20](v133);
  v4 = &v117 - v3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09A8);
  MEMORY[0x28223BE20](v136);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v117 - v8;
  MEMORY[0x28223BE20](v9);
  v135 = &v117 - v10;
  MEMORY[0x28223BE20](v11);
  v134 = &v117 - v12;
  v13 = sub_23BBDCA18();
  v132 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v117 - v17;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A6F8);
  MEMORY[0x28223BE20](v141);
  v143 = &v117 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A5D8);
  MEMORY[0x28223BE20](v20);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v120 = &v117 - v24;
  MEMORY[0x28223BE20](v25);
  v140 = &v117 - v26;
  MEMORY[0x28223BE20](v27);
  v139 = &v117 - v28;
  v142 = sub_23BBDC758();
  v129 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v117 - v31;
  v146 = sub_23BBDCA48();
  v130 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v144 = &v117 - v35;
  v148 = sub_23BBDCB38();
  v36 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v150 = &v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v149 = &v117 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B0);
  MEMORY[0x28223BE20](a1);
  v147 = &v117 - v41;
  if (!a1 || *(v40 + 16) != *(v127 + 2))
  {
    return 1;
  }

  v118 = v22;
  v122 = v18;
  v123 = v15;
  v117 = v6;
  v125 = v13;
  v138 = v4;
  v151 = v40;
  v152 = 0;
  v131 = (v36 + 32);
  ++v130;
  v128 = (v129 + 4);
  ++v129;
  v153 = v127;
  v154 = 0;
  v121 = (v132 + 4);
  v126 = (v132 + 1);
  v132 = (v36 + 8);
  v155 = 0;

  v124 = v20;
  v127 = v32;
  v42 = v149;
  while (1)
  {
    v43 = v147;
    sub_23BB07E90(v147);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09B8);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {

      return 0;
    }

    v45 = *(v44 + 48);
    v46 = *v131;
    v47 = v148;
    (*v131)(v42, v43, v148);
    v48 = v150;
    v46(v150, v43 + v45, v47);
    v49 = v144;
    sub_23BBDCAF8();
    v50 = v145;
    sub_23BBDCAF8();
    sub_23BB0C724(&qword_27E1A09C0, MEMORY[0x277CDD1F8]);
    v51 = v146;
    LOBYTE(v45) = sub_23BBDCF38();
    v52 = *v130;
    (*v130)(v50, v51);
    v52(v49, v51);
    if ((v45 & 1) == 0)
    {
      v100 = *v132;
      v101 = v148;
      (*v132)(v48, v148);
      v100(v42, v101);
LABEL_22:

      return 1;
    }

    v53 = v139;
    sub_23BBDCAE8();
    v54 = v140;
    sub_23BBDCAE8();
    v55 = v143;
    v56 = v143 + *(v141 + 48);
    sub_23B9A71D0(v53, v143, &qword_27E19A5D8);
    sub_23B9A71D0(v54, v56, &qword_27E19A5D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = v120;
      sub_23B9A721C(v55, v120, &qword_27E19A5D8);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v59 = v142;
      if (EnumCaseMultiPayload == 1)
      {
        v60 = *v128;
        (*v128)(v32, v57, v142);
        v61 = v137;
        v60(v137, v56, v59);
        goto LABEL_11;
      }

      v107 = *v132;
      v108 = v148;
      (*v132)(v150, v148);
      v107(v42, v108);

LABEL_25:
      (*v129)(v57, v59);
      v109 = &qword_27E19A6F8;
      v110 = v55;
      goto LABEL_29;
    }

    v57 = v118;
    sub_23B9A721C(v55, v118, &qword_27E19A5D8);
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A700) + 48);
    v63 = swift_getEnumCaseMultiPayload();
    v59 = v142;
    if (v63 == 1)
    {
      v104 = *v132;
      v105 = v148;
      (*v132)(v150, v148);
      v104(v42, v105);

      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A708);
      (*(*(v106 - 8) + 8))(v57 + v62, v106);
      goto LABEL_25;
    }

    v64 = *v128;
    (*v128)(v32, v57, v142);
    v61 = v137;
    v64(v137, v56, v59);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A708);
    v66 = *(*(v65 - 8) + 8);
    v66(v56 + v62, v65);
    v32 = v127;
    v66(v57 + v62, v65);
LABEL_11:
    sub_23B979910(v55, &qword_27E19A5D8);
    v67 = sub_23BBDC718();
    v69 = v68;
    v70 = *v129;
    (*v129)(v32, v59);
    v71 = sub_23BBDC718();
    v73 = v72;
    v70(v61, v59);
    LOBYTE(v70) = MEMORY[0x23EEB1FC0](v67, v69, v71, v73);
    sub_23B9A940C(v71, v73);
    sub_23B9A940C(v67, v69);
    if ((v70 & 1) == 0)
    {
      v102 = *v132;
      v103 = v148;
      (*v132)(v150, v148);
      v102(v149, v103);
      goto LABEL_22;
    }

    v74 = v134;
    sub_23BBDCAD8();
    v75 = v135;
    v76 = v150;
    sub_23BBDCAD8();
    v77 = v138;
    v78 = &v138[*(v133 + 48)];
    sub_23B9A71D0(v74, v138, &qword_27E1A09A8);
    sub_23B9A71D0(v75, v78, &qword_27E1A09A8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v79 = v119;
    sub_23B9A721C(v77, v119, &qword_27E1A09A8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v111 = *v132;
      v112 = v76;
      v113 = v148;
      (*v132)(v112, v148);
      v111(v149, v113);
      v84 = v119;

      goto LABEL_28;
    }

    v80 = *v121;
    v81 = v122;
    v82 = v125;
    (*v121)(v122, v79, v125);
    v83 = v123;
    v80(v123, v78, v82);
LABEL_17:
    sub_23B979910(v77, &qword_27E1A09A8);
    v90 = sub_23BBDC9E8();
    v92 = v91;
    v93 = *v126;
    (*v126)(v81, v82);
    v94 = sub_23BBDC9E8();
    v96 = v95;
    v93(v83, v82);
    LOBYTE(v93) = MEMORY[0x23EEB1FC0](v90, v92, v94, v96);
    sub_23B9A940C(v94, v96);
    sub_23B9A940C(v90, v92);
    v97 = *v132;
    v98 = v148;
    (*v132)(v150, v148);
    v42 = v149;
    v97(v149, v98);
    if ((v93 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v84 = v117;
  sub_23B9A721C(v77, v117, &qword_27E1A09A8);
  v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09C8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v86 = *v121;
    v81 = v122;
    v82 = v125;
    (*v121)(v122, v84, v125);
    v83 = v123;
    v86(v123, v78, v82);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09D0);
    v88 = *(*(v87 - 8) + 8);
    v88(v78 + v85, v87);
    v89 = v84 + v85;
    v32 = v127;
    v88(v89, v87);
    v77 = v138;
    goto LABEL_17;
  }

  v114 = *v132;
  v115 = v148;
  (*v132)(v150, v148);
  v114(v149, v115);

  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A09D0);
  (*(*(v116 - 8) + 8))(v84 + v85, v116);
LABEL_28:
  (*v126)(v84, v125);
  v109 = &qword_27E1A09A0;
  v110 = v77;
LABEL_29:
  sub_23B979910(v110, v109);
  return 1;
}

uint64_t sub_23BB0C200(uint64_t a1, uint64_t a2)
{
  v4 = _s16TaskViewModifierVMa_0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB0C268(uint64_t a1, uint64_t a2)
{
  v4 = _s16TaskViewModifierVMa_0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB0C2CC()
{
  OUTLINED_FUNCTION_3_13();
  v2 = *(_s16TaskViewModifierVMa_0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_4();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_23BB0C390;

  return sub_23BB087F4(v0 + v3);
}

uint64_t sub_23BB0C390()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t objectdestroyTm_10()
{
  v1 = (_s16TaskViewModifierVMa_0() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_23BBDD368();
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v2);

  v4 = v1[9];
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v2 + v4);
  sub_23B97B450(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}