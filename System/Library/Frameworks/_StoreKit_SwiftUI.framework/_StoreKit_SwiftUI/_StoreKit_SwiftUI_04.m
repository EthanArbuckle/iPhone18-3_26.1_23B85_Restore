void sub_23B9CDC64(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(sub_23BBD9848() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = sub_23BBDCDB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= 0xFD)
  {
    v15 = 253;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = v15 - 1;
  if ((v15 - 1) <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v15 - 1;
  }

  v18 = v17 - 1;
  if (v9 <= v17 - 1)
  {
    v19 = v17 - 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = *(v8 + 80);
  v21 = *(v8 + 64) + 7;
  v22 = *(v10 + 80) & 0xF8;
  v23 = ~v22 & 0xFFFFFFFFFFFFFFF8;
  v24 = v22 + 23;
  v25 = *(v13 + 80) & 0xF8 | 7;
  v26 = v11 + v25 + 1;
  v27 = (v26 + ((v22 + 23 + ((v21 + ((v20 + 41) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & v23)) & ~v25;
  v28 = *(*(v12 - 8) + 64);
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v27 + 17;
  v31 = 8 * v30;
  if (a3 <= v19)
  {
    v32 = 0;
  }

  else if (v30 <= 3)
  {
    v37 = ((a3 - v19 + ~(-1 << v31)) >> v31) + 1;
    if (HIWORD(v37))
    {
      v32 = 4;
    }

    else
    {
      if (v37 < 0x100)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      if (v37 >= 2)
      {
        v32 = v38;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 1;
  }

  if (v19 < a2)
  {
    v33 = ~v19 + a2;
    if (v30 < 4)
    {
      v34 = (v33 >> v31) + 1;
      bzero(a1, ((((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v27 + 17);
      if (v30 == 1)
      {
        *a1 = v33;
LABEL_44:
        switch(v32)
        {
          case 1:
            *(a1 + v30) = v34;
            return;
          case 2:
            *(a1 + v30) = v34;
            return;
          case 3:
            goto LABEL_75;
          case 4:
            *(a1 + v30) = v34;
            return;
          default:
            return;
        }
      }

      v33 &= ~(-1 << v31);
    }

    else
    {
      bzero(a1, ((((((v29 + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v27 + 17);
      v34 = 1;
    }

    *a1 = v33;
    goto LABEL_44;
  }

  v35 = v29 + 9;
  v36 = ~v25;
  switch(v32)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_75:
      __break(1u);
      JUMPOUT(0x23B9CE134);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!a2)
      {
        return;
      }

LABEL_34:
      v39 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v20 + 41) & ~v20;
      if (v9 >= v18)
      {
        v41 = a2;
        v14 = v9;
        v12 = v7;
LABEL_38:

        __swift_storeEnumTagSinglePayload(v39, v41, v14, v12);
        return;
      }

      v40 = (v21 + v39) & 0xFFFFFFFFFFFFFFF8;
      if (v19 <= 0x7FFFFFFE)
      {
        *(v40 + 8) = a2;
        return;
      }

      v42 = ((v26 + ((v24 + v40) & v23)) & v36);
      v43 = (((v29 + 17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      if (v18 < a2)
      {
        v44 = (v43 + 31) & 0xFFFFFFF8;
        if (v44 == -8)
        {
          return;
        }

        v45 = a2 - v17;
        bzero(v42, v44 + 8);
        goto LABEL_53;
      }

      v46 = a2 - v17;
      if (a2 >= v17)
      {
        if (v43 == -24)
        {
          return;
        }

        bzero(v42, (v43 + 24));
        goto LABEL_60;
      }

      v47 = a2 + 1;
      if (v15 > 0)
      {
        if (v47 < 0)
        {
          v48 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          v48 = a2;
        }

        *((&v42[v35] & 0xFFFFFFFFFFFFFFF8) + 8) = v48;
        return;
      }

      v46 = a2 - v16;
      if (a2 >= v16)
      {
        bzero(v42, v29 + 9);
        if (v35 <= 3)
        {
          *v42 = v46;
          return;
        }

LABEL_60:
        *v42 = v46;
        return;
      }

      v41 = (a2 + 2);
      if (v41 <= v15)
      {
        if (v14 < 0xFD)
        {
          v49 = &v42[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFB)
          {
            *v49 = 0;
            *(v49 + 8) = 0;
            *v49 = a2 - 252;
          }

          else
          {
            *(v49 + 8) = ((a2 + 2) & 0xFE | a2 & 1) + 2;
          }

          return;
        }

        v39 = v42;
        goto LABEL_38;
      }

      v45 = v47 - v15;
      bzero(v42, v29 + 9);
      if (v35 > 3)
      {
LABEL_53:
        *v42 = v45;
        return;
      }

      *v42 = v45;
      return;
  }
}

void sub_23B9CE15C()
{
  if (!qword_27E199C90)
  {
    sub_23BBD9848();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E199C90);
    }
  }
}

void sub_23B9CE1B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23B9CE218(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23B9CE2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v61 = a2;
  v3 = sub_23BBD98B8();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199D90);
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - v6;
  v49 = *(a1 + 16);
  v52 = sub_23BBDA358();
  v7 = *(a1 + 24);
  v8 = sub_23B97AD88();
  v73 = v7;
  v74 = v8;
  WitnessTable = swift_getWitnessTable();
  sub_23BBDACB8();
  v9 = sub_23BBDA358();
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v40 - v10;
  v48 = v9;
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  v11 = sub_23BBDA358();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v40 - v12;
  v13 = sub_23B9CF720();
  v42 = v13;
  v14 = swift_getWitnessTable();
  v71 = v13;
  v72 = v14;
  v15 = swift_getWitnessTable();
  v45 = v15;
  v16 = sub_23B9A243C();
  v69 = v15;
  v70 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_23B97B518(&qword_27E1999F0, &qword_27E199938);
  v67 = v17;
  v68 = v18;
  v44 = v11;
  v43 = swift_getWitnessTable();
  v65 = v11;
  v66 = v43;
  v46 = MEMORY[0x277D7ED78];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v25 = v41;
  sub_23BBD9898();
  KeyPath = swift_getKeyPath();
  v27 = v25 + *(v5 + 36);
  *v27 = KeyPath;
  *(v27 + 8) = 1;
  v62 = v49;
  v63 = v7;
  v28 = v56;
  v64 = v56;
  sub_23B9C2924();
  v29 = v51;
  sub_23BBDB6B8();
  sub_23B979910(v25, &qword_27E199D90);
  v30 = v50;
  v31 = v48;
  sub_23B9A2228(*(v28 + *(v57 + 36)), v48, v45);
  (*(v55 + 8))(v29, v31);
  v33 = v58;
  v32 = v59;
  v34 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277D7EC68], v60);
  v35 = v44;
  v36 = v43;
  sub_23BBDB688();
  (*(v32 + 8))(v33, v34);
  (*(v54 + 8))(v30, v35);
  v65 = v35;
  v66 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v38 = *(v47 + 8);
  v38(v22, OpaqueTypeMetadata2);
  sub_23B9D2D88(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v38)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_23B9CE954@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23B9CEA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23BBDA358();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_23BBDBB48();
  v11 = sub_23B97AD88();
  v15[0] = a3;
  v15[1] = v11;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_23B9D2D88(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

unint64_t sub_23B9CEBD4()
{
  result = qword_27E199CD8;
  if (!qword_27E199CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199CD8);
  }

  return result;
}

id sub_23B9CEC34(id result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

void sub_23B9CEC50(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

unint64_t sub_23B9CEC6C()
{
  result = qword_27E199CF8;
  if (!qword_27E199CF8)
  {
    type metadata accessor for SubscriptionEntitlementValidator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199CF8);
  }

  return result;
}

uint64_t sub_23B9CECE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionEntitlementValidator.EntitlementConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9CED4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9CEDAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9CEE04()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9CEE7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_23B9CEFF8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B9CF224);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v7 < 0xFE)
        {
          a1[v9] = a2 + 1;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23B9CF24C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CB8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  type metadata accessor for SubscriptionStoreStaticView();
  sub_23BBDACE8();
  sub_23BBDA358();
  sub_23B97AD88();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CC0);
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  type metadata accessor for SubscriptionStoreEntitlementLoadingView.LoadingView();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDACE8();
  sub_23B97B518(&qword_27E199CC8, &qword_27E199CB0);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E199CD0, &qword_27E199CB8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_9();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_6(WitnessTable);
  swift_getWitnessTable();
  sub_23B9CEBD4();
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9A243C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_11();
  sub_23B97B518(v1, &qword_27E199938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_7();
  sub_23B97B518(v2, &qword_27E199CC0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  type metadata accessor for SubscriptionEntitlementValidator(255);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199CE8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_7();
  swift_getWitnessTable();
  sub_23B9CEC6C();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E199D00, &qword_27E199CE8);
  return swift_getWitnessTable();
}

unint64_t sub_23B9CF720()
{
  result = qword_27E199D98;
  if (!qword_27E199D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199D90);
    sub_23B97B518(&qword_27E199DA0, &qword_27E199DA8);
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199D98);
  }

  return result;
}

uint64_t sub_23B9CF818()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199D90);
  sub_23BBDA358();
  sub_23B97AD88();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDACB8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199938);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23B9CF720();
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9A243C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_11();
  sub_23B97B518(v0, &qword_27E199938);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t result)
{
  *(v2 - 152) = v1;
  *(v2 - 144) = result;
  return result;
}

uint64_t sub_23B9CFA7C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a2 & 1;
  v25 = a4 & 1;
  v24 = a6 & 1;
  v23 = a8 & 1;
  v13 = a1;
  v14 = a2 & 1;
  v15 = a3;
  v16 = a4 & 1;
  v17 = a5;
  v18 = a6 & 1;
  v19 = a7;
  v20 = a8 & 1;
  v21 = a9;
  v22 = a10;
  return MEMORY[0x23EEB43C0](&v13, a11, &type metadata for CooperativeFrameModifier, a12);
}

uint64_t sub_23B9CFB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  v5 = *(v2 + 8);
  v15 = *(v2 + 24);
  v14 = *(v2 + 40);
  v13 = *(v2 + 56);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v7;
  *(a2 + 40) = v14;
  *(a2 + 48) = v8;
  *(a2 + 56) = v13;
  *(a2 + 64) = *(v2 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DB0) + 44);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DB8);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2 + v9, a1, v10);
}

uint64_t sub_23B9CFC7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B9CFC9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

unint64_t sub_23B9CFCF0()
{
  result = qword_27E199DC0;
  if (!qword_27E199DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199DB0);
    sub_23B97B518(&qword_27E199DC8, &qword_27E199DD0);
    sub_23B97B518(&qword_27E199DD8, &qword_27E199DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199DC0);
  }

  return result;
}

double sub_23B9CFDD4(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v48 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_23BBD9F58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BAC75E4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v47 = v10;
    (*(v10 + 32))(v12, v8, v9);
    sub_23BBDA098();
    sub_23B9D0F30();
    sub_23BBDD438();
    sub_23BBDD4A8();
    if (sub_23BBDD498() != 1)
    {
      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for SKLogger();
      v46 = __swift_project_value_buffer(v14, qword_27E1BFC88);
      v51 = 0.0;
      v52 = 0xE000000000000000;
      sub_23BBDD768();
      MEMORY[0x23EEB5890](0xD000000000000035, 0x800000023BBE0790);
      sub_23BBDD438();
      sub_23BBDD4A8();
      v50 = sub_23BBDD498();
      v15 = sub_23BBDDA38();
      MEMORY[0x23EEB5890](v15);

      v17 = *&v51;
      v16 = v52;
      v18 = sub_23BBDD5A8();

      v19 = sub_23BBD9988();

      v46 = v19;
      if (os_log_type_enabled(v19, v18))
      {
        v20 = v17;
        v21 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51 = *&v45;
        *v21 = 136446466;
        *(v21 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v51);
        *(v21 + 12) = 2082;
        v22 = sub_23BA5AB90(v20, v16, &v51);
        LOBYTE(v20) = a2;
        v23 = v18;
        v24 = v22;

        *(v21 + 14) = v24;
        v25 = v23;
        a2 = v20;
        v26 = v46;
        _os_log_impl(&dword_23B970000, v46, v25, "%{public}s%{public}s", v21, 0x16u);
        v27 = v45;
        swift_arrayDestroy();
        MEMORY[0x23EEB6DC0](v27, -1, -1);
        MEMORY[0x23EEB6DC0](v21, -1, -1);
      }

      else
      {
      }
    }

    LOBYTE(v51) = a2 & 1;
    LOBYTE(v50) = v48 & 1;
    sub_23B9D03BC(&v51);
    v28 = v51;
    v29 = v52;
    v30 = v54;
    v31 = v55;
    v32 = v56;
    v33 = v53;
    v34 = v58;
    v35 = v57;
    LOBYTE(v50) = a2 & 1;
    v49 = v48 & 1;
    sub_23BBD9F18();
    v13 = v36;
    if ((a2 & 1) == 0)
    {
      v39 = 0;
      v40 = 0;
      v38 = v48;
      goto LABEL_20;
    }

    v38 = v48;
    if ((v29 & 1) != 0 || v36 >= v28)
    {
      v40 = 0;
      v39 = 1;
      if ((v32 & 1) != 0 || v31 >= v36)
      {
LABEL_20:
        v41 = v47;
        if (v38)
        {
          if ((v30 & 1) == 0 && v37 < v33)
          {
            v38 = 0;
            goto LABEL_28;
          }

          if ((v34 & 1) == 0 && v35 < v37)
          {
            v38 = 0;
            goto LABEL_28;
          }
        }

        if (!v40)
        {
LABEL_29:
          (*(v41 + 8))(v12, v9);
          return v13;
        }

LABEL_28:
        LOBYTE(v50) = v39;
        v49 = v38 & 1;
        sub_23BBD9F18();
        v13 = v42;
        goto LABEL_29;
      }

      v39 = 0;
    }

    else
    {
      v39 = 0;
    }

    v40 = 1;
    goto LABEL_20;
  }

  sub_23B9D0EC8(v8);
  if (v4[8])
  {
    return 0.0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_23B9D03BC@<X0>(uint64_t a1@<X8>)
{
  v3 = COERCE_DOUBLE(sub_23BBDA418());
  v5 = v4;
  v7 = v6;
  v30 = v8;
  *&result = COERCE_DOUBLE(sub_23BBDA418());
  v10 = *&result;
  v31 = v11;
  v29 = v12;
  v28 = v13;
  if ((*(v1 + 8) & 1) == 0)
  {
    v14 = v3;
    v3 = *v1;
    v15 = *v1;
    *&result = COERCE_DOUBLE(sub_23BBD9F18());
    if (v16 > v3)
    {
      v3 = v14;
    }

    if (v16 <= v15)
    {
      v5 = 0;
    }
  }

  if ((*(v1 + 24) & 1) == 0)
  {
    v17 = v3;
    v18 = *(v1 + 16);
    v19 = v18;
    *&result = COERCE_DOUBLE(sub_23BBD9F18());
    if (v20 <= v18)
    {
      v10 = v18;
    }

    v3 = v17;
    v21 = v31;
    if (v20 <= v19)
    {
      v21 = 0;
    }

    v31 = v21;
  }

  v22 = v30;
  if ((*(v1 + 40) & 1) == 0)
  {
    v23 = *(v1 + 32);
    *&result = COERCE_DOUBLE(sub_23BBD9F18());
    if (v24 <= v23)
    {
      v7 = v23;
      v22 = 0;
    }
  }

  if ((*(v1 + 56) & 1) != 0 || (v25 = *(v1 + 48), *&result = COERCE_DOUBLE(sub_23BBD9F18()), v26 > v25))
  {
    v25 = v29;
    v27 = v28;
  }

  else
  {
    v27 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v5 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v22 & 1;
  *(a1 + 32) = v10;
  *(a1 + 40) = v31 & 1;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27 & 1;
  return result;
}

uint64_t sub_23B9D059C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_23BBDA228();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_23BBD9F58();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BAC75E4();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    return sub_23B9D0EC8(v17);
  }

  v36 = v19;
  v37 = v8;
  (*(v19 + 32))(v21, v17, v18);
  sub_23BBDA098();
  sub_23B9D0F30();
  sub_23BBDD438();
  sub_23BBDD4A8();
  if (sub_23BBDD498() != 1)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for SKLogger();
    v35 = __swift_project_value_buffer(v23, qword_27E1BFC88);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000035, 0x800000023BBE0790);
    sub_23BBDD438();
    sub_23BBDD4A8();
    v41 = sub_23BBDD498();
    v24 = sub_23BBDDA38();
    MEMORY[0x23EEB5890](v24);

    v25 = v39;
    v26 = v40;
    v27 = sub_23BBDD5A8();

    v28 = sub_23BBD9988();

    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v29 = 136446466;
      *(v29 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v39);
      *(v29 + 12) = 2082;
      v30 = sub_23BA5AB90(v25, v26, &v39);

      *(v29 + 14) = v30;
      _os_log_impl(&dword_23B970000, v28, v27, "%{public}s%{public}s", v29, 0x16u);
      v31 = v35;
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v31, -1, -1);
      MEMORY[0x23EEB6DC0](v29, -1, -1);
    }

    else
    {
    }
  }

  LOBYTE(v39) = 0;
  LOBYTE(v41) = 0;
  sub_23BBD9F08();
  v32 = *(v38 + 72);
  MEMORY[0x23EEB2A20](*(v38 + 64));
  sub_23BBDA208();
  sub_23BA87130();
  MEMORY[0x23EEB2A10](v32);
  sub_23BBDA218();
  sub_23BA87130();
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  CGRectGetMinX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  CGRectGetWidth(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  CGRectGetMinY(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  CGRectGetHeight(v45);
  v33 = v37;
  (*(v9 + 16))(v12, v14, v37);
  sub_23BBDA208();
  sub_23BBDA218();
  v34 = *(v9 + 8);
  v34(v12, v33);
  LOBYTE(v39) = 0;
  LOBYTE(v41) = 0;
  sub_23BBD9F28();
  v34(v14, v33);
  return (*(v36 + 8))(v21, v18);
}

void (*sub_23B9D0DFC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97E318;
}

unint64_t sub_23B9D0E74()
{
  result = qword_27E199DE0;
  if (!qword_27E199DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199DE0);
  }

  return result;
}

uint64_t sub_23B9D0EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9D0F30()
{
  result = qword_27E199DF0;
  if (!qword_27E199DF0)
  {
    sub_23BBDA098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199DF0);
  }

  return result;
}

uint64_t SubscriptionStorePickerOption.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9D1158(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8);
  v4 = a2 + *(v3 + 40);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  v6 = (a2 + *(v3 + 36));
  *v6 = sub_23B9D11BC;
  v6[1] = 0;
  return result;
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8);
  v5 = a2 + *(v4 + 40);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  result = sub_23B9D1158(a1, a2);
  v7 = (a2 + *(v4 + 36));
  *v7 = sub_23B9D11BC;
  v7[1] = 0;
  return result;
}

uint64_t SubscriptionStorePickerOption.init(_:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SubscriptionStorePickerOption();
  v9 = a4 + *(v8 + 40);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  result = sub_23B9D1158(a1, a4);
  v11 = (a4 + *(v8 + 36));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

{
  v8 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  v9 = OUTLINED_FUNCTION_13_0(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D1158(a1, v11);
  return SubscriptionStorePickerOption.init(_:label:)(v11, a2, a3, a4);
}

uint64_t sub_23B9D1158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9D11BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B9D2CE8(a1, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  v3 = type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel();
  v4 = a2 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_23B9D1300(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(a1 + 40));
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23B9D1454()
{
  sub_23B9D2C94();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23B9D1490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9D1454();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B9D14C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9D1454();
  *a1 = result & 1;
  return result;
}

uint64_t SubscriptionStorePickerOption.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v45 = v40 - v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer();
  OUTLINED_FUNCTION_1_13();
  v40[1] = swift_getWitnessTable();
  v10 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v42 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E10);
  v15 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v44 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18);
  v20 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v41 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v43 = v40 - v26;
  v50 = v9;
  v51 = v8;
  v52 = v3;
  sub_23BBDAB48();
  sub_23BBDC068();
  v47 = v9;
  v48 = v8;
  v49 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199E20);
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D1DF8();
  sub_23BBDC318();
  sub_23BBDBB88();
  (*(v42 + 8))(v14, v10);
  v28 = v45;
  sub_23B9D2CE8(v3, v45, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v29 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  OUTLINED_FUNCTION_0_12();
  v31 = sub_23B97B518(v30, &qword_27E199E10);
  v55 = WitnessTable;
  v56 = v31;
  v32 = swift_getWitnessTable();
  v33 = v41;
  sub_23B9D1ED0(v28, v15, v32);
  (*(v44 + 8))(v19, v15);
  OUTLINED_FUNCTION_2_9();
  v35 = sub_23B97B518(v34, &qword_27E199E18);
  v53 = v32;
  v54 = v35;
  swift_getWitnessTable();
  v36 = *(v22 + 16);
  v37 = v43;
  v36(v43, v33, v20);
  v38 = *(v22 + 8);
  v38(v33, v20);
  v36(v46, v37, v20);
  return (v38)(v37, v20);
}

uint64_t sub_23B9D1A34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  sub_23B9D2CE8(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v14 = (a1 + *(type metadata accessor for SubscriptionStorePickerOption() + 36));
  v15 = *v14;
  v16 = v14[1];

  sub_23B9D1C54(v6, v15, v16, v11);
  swift_getWitnessTable();
  v17 = *(v8 + 16);
  v17(v13, v11, v7);
  v18 = *(v8 + 8);
  v18(v11, v7);
  v17(a2, v13, v7);
  return (v18)(v13, v7);
}

uint64_t sub_23B9D1C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23B9D2CE8(a1, a4, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v8 = type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer();
  v9 = (a4 + *(v8 + 36));
  *v9 = a2;
  v9[1] = a3;
  if (*(a1 + *(type metadata accessor for Subscription() + 20) + 8) == 2)
  {
    _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  }

  v10 = sub_23B9D2B98(a1, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  MEMORY[0x28223BE20](v10);
  result = swift_getKeyPath();
  v12 = a4 + *(v8 + 40);
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_23B9D1D74@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionStorePickerOption();
  result = sub_23B9D1300(v2);
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    result = sub_23BBDBF58();
    v5 = v7;
    v6 = v8;
    v4 = 2;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

unint64_t sub_23B9D1DF8()
{
  result = qword_27E199E28;
  if (!qword_27E199E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E20);
    sub_23B9D1E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199E28);
  }

  return result;
}

unint64_t sub_23B9D1E7C()
{
  result = qword_27E199E30;
  if (!qword_27E199E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199E30);
  }

  return result;
}

uint64_t sub_23B9D1ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  sub_23BB1106C(KeyPath, a1, a2, a3);

  return sub_23B9D2AC0(a1);
}

uint64_t sub_23B9D1FF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  v9 = MEMORY[0x28223BE20](v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = (v3 + *(a1 + 36));
  v20 = *v19;
  v31 = v19[1];
  v32 = v20;
  sub_23B9D2CE8(v3, v11, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v21 = v3 + *(a1 + 40);
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {

    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    v29 = v6;
    v24 = a2;
    v25 = v23;
    sub_23BBD9978();

    a2 = v24;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v22, 0);
    (*(v30 + 8))(v8, v29);
    LOBYTE(v22) = v34;
  }

  v11[*(v33 + 20)] = v22 & 1;
  v32(v11);
  sub_23B9D2B98(v11, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  v26 = *(v13 + 16);
  v26(v18, v16, v12);
  v27 = *(v13 + 8);
  v27(v16, v12);
  v26(a2, v18, v12);
  return (v27)(v18, v12);
}

void sub_23B9D2354()
{
  if (!qword_27E197E40)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197E40);
    }
  }
}

uint64_t sub_23B9D23A4()
{
  type metadata accessor for SubscriptionStorePickerOption.LabelBuilderContainer();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E10);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199E18);
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  sub_23B97B518(v0, &qword_27E199E10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_9();
  sub_23B97B518(v1, &qword_27E199E18);
  return swift_getWitnessTable();
}

void sub_23B9D24F4()
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(319);
  if (v0 <= 0x3F)
  {
    sub_23B975E04();
    if (v1 <= 0x3F)
    {
      sub_23B9D2354();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B9D2764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  __swift_allocate_value_buffer(v0, qword_27E199DF8);
  v1 = __swift_project_value_buffer(v0, qword_27E199DF8);
  v2 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_23B9D27E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1976C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  v3 = __swift_project_value_buffer(v2, qword_27E199DF8);

  return sub_23B9D2B28(v3, a1);
}

uint64_t sub_23B9D2864()
{
  sub_23B9D28AC();

  return sub_23BBDA298();
}

unint64_t sub_23B9D28AC()
{
  result = qword_27E199F48;
  if (!qword_27E199F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199F48);
  }

  return result;
}

uint64_t sub_23B9D2900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_8(v4, v6);
  sub_23B9D28AC();
  sub_23BBDA2A8();
  return sub_23B9D2AC0(a1);
}

uint64_t sub_23B9D29B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_8(v3, v5);
  return sub_23B9D2900(v0);
}

uint64_t sub_23B9D2A24()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t sub_23B9D2AC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9D2B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9D2B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_23B9D2C80(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  *a2 = result;
  return result;
}

unint64_t sub_23B9D2C94()
{
  result = qword_27E199F50[0];
  if (!qword_27E199F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E199F50);
  }

  return result;
}

uint64_t sub_23B9D2CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_23B9D2B28(v2, &a2 - a1);
}

unsigned __int8 *sub_23B9D2E20()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_23BBDCE28();
  v3 = sub_23B9F3F0C(0x4C676F4C746E696DLL, 0xEC0000006C657665, v2);
  v5 = v4;

  if (!v5)
  {
    goto LABEL_64;
  }

  v7 = HIBYTE(v5) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_64;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {

    v11 = sub_23B9D33D4(v3, v5, 10);
    v32 = v31;
    result = swift_bridgeObjectRelease_n();
    if (v32)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_23BBDD7C8();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_62;
              }

              v20 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_62;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_74;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v24 = *result - 48;
            if (v24 > 9)
            {
              goto LABEL_62;
            }

            v25 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v11 = 0;
      LOBYTE(v7) = 1;
LABEL_63:
      v34 = v7;
      v29 = v7;

      if (v29)
      {
LABEL_64:
        v30 = 0;
LABEL_70:
        byte_27E1BFC81 = v30;
        return result;
      }

LABEL_67:
      if (v11 >= 3)
      {
        v30 = 0;
      }

      else
      {
        v30 = v11;
      }

      goto LABEL_70;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_62;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_62;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_62;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v7) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v33[0] = v3;
  v33[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v7)
      {
        v11 = 0;
        v26 = v33;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v15 = v33 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_73;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v21 = v33 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_23B9D31D4(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_23B9D31E4(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a2 != 1 || a1 != 2)
    {
      return 1;
    }
  }

  else if (a1 - 1 >= 2)
  {
    return 1;
  }

  return 0;
}

void sub_23B9D322C(unsigned __int8 a1, os_log_type_t a2)
{
  if (qword_27E1976C8 != -1)
  {
    swift_once();
  }

  if (byte_27E1BFC81 >= a1 || sub_23BBDD598() == a2 || sub_23BBDD5A8() == a2)
  {
    log = sub_23BBD9988();
    if (os_log_type_enabled(log, a2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136446466;
      *(v4 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v7);
      *(v4 + 12) = 2082;
      *(v4 + 14) = sub_23BA5AB90(0xD000000000000017, 0x800000023BBE07D0, &v7);
      _os_log_impl(&dword_23B970000, log, a2, "%{public}s%{public}s", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v5, -1, -1);
      MEMORY[0x23EEB6DC0](v4, -1, -1);
    }

    else
    {
    }
  }
}

unsigned __int8 *sub_23B9D33D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23BBDD158();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_23BBA8BB4();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23BBDD7C8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_23B9D3960()
{
  sub_23B9D4B40(319, &qword_27E199FD8, type metadata accessor for SubscriptionOfferViewConfiguration, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      sub_23B9D4B40(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_23B9A389C(319, &qword_27E197E40);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_23B9A389C(319, &qword_27E199FE0);
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_23B9D4BA4(319, &qword_27E199FE8, &qword_27E199FF0, &unk_23BBE9530, MEMORY[0x277CDF468]);
          if (v10 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_23B9D4BA4(319, &qword_27E199FF8, &qword_27E197E38, &unk_23BBE4780, MEMORY[0x277CE10B8]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_23B9D4C08();
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_23B9D3B78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_23BBDCD08() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23BBDCBE8() - 8);
  v8 = *(v7 + 80);
  v71 = v8 | v5;
  v9 = v8 | v5 | 7;
  v10 = (v6 + 7 + ((*(v7 + 64) + v5 + ((v8 + 16) & ~v8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 10;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= 3)
  {
    v12 = 3;
  }

  v13 = v12 + ((((v5 + 16) & ~v5) + v6 + v9) & ~v9);
  if (v13 + 1 > ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v76 = v14 + 1;
  v75 = (v14 + 1 + v9) & ~v9;
  v63 = sub_23BBD96B8();
  v74 = *(v63 - 8);
  v64 = *(v74 + 84);
  if (v64 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v74 + 84);
  }

  v62 = v15;
  v65 = v15 - 1;
  if (v15 - 1 < v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 - 1;
  }

  v61 = sub_23BBDCDB8();
  v17 = *(v61 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v16 > v19)
  {
    v19 = v16;
  }

  v68 = v19;
  v66 = *(a3 + 16);
  v20 = *(v66 - 8);
  v67 = *(v20 + 84);
  v69 = v19 - 1;
  if (v67 <= v19 - 1)
  {
    v21 = v19 - 1;
  }

  else
  {
    v21 = *(v20 + 84);
  }

  v73 = *(sub_23BBDA438() - 8);
  v22 = *(v73 + 64);
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v70 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  v24 = *(v23 - 8);
  v25 = *(v24 + 84);
  if (v21 <= v25)
  {
    v26 = *(v24 + 84);
  }

  else
  {
    v26 = v21;
  }

  v27 = 32;
  if (v75 + v76 > 0x20)
  {
    v27 = v75 + v76;
  }

  v28 = *(v74 + 64);
  v29 = *(v17 + 80);
  if (v18)
  {
    v30 = *(v17 + 64);
  }

  else
  {
    v30 = *(v17 + 64) + 1;
  }

  v31 = *(v20 + 80);
  v32 = *(v24 + 80);
  if (!a2)
  {
    return 0;
  }

  v33 = *(v74 + 80) & 0xF8 | 7;
  v34 = v28 + 7;
  v35 = ((((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = v30 + v31 + ((v35 + v29 + ((v35 + v33 + ((v27 + ((v71 + 32) & ~v9) + v33 + 2) & ~v33)) & ~v33)) & ~v29);
  v37 = *(v73 + 80) & 0xF8 | 7;
  v38 = *(v20 + 64) + v37;
  v39 = v70 + 88;
  v40 = v32 + 24;
  if (a2 > v26)
  {
    v41 = ((v40 + ((v39 + ((v38 + (v36 & ~v31)) & ~v37)) & 0xFFFFFFFFFFFFFFF8)) & ~v32) + *(*(v23 - 8) + 64);
    v42 = 8 * v41;
    if (v41 > 3)
    {
      goto LABEL_36;
    }

    v45 = ((a2 - v26 + ~(-1 << v42)) >> v42) + 1;
    if (HIWORD(v45))
    {
      v43 = *(a1 + v41);
      if (!v43)
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    if (v45 > 0xFF)
    {
      v43 = *(a1 + v41);
      if (!*(a1 + v41))
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    if (v45 >= 2)
    {
LABEL_36:
      v43 = *(a1 + v41);
      if (!*(a1 + v41))
      {
        goto LABEL_54;
      }

LABEL_44:
      v46 = (v43 - 1) << v42;
      if (v41 > 3)
      {
        v46 = 0;
      }

      if (v41)
      {
        if (v41 <= 3)
        {
          v47 = ((v40 + ((v39 + ((v38 + (v36 & ~v31)) & ~v37)) & 0xFFFFFFF8)) & ~v32) + *(*(v23 - 8) + 64);
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 2:
            v48 = *a1;
            break;
          case 3:
            v48 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v48 = *a1;
            break;
          default:
            v48 = *a1;
            break;
        }
      }

      else
      {
        v48 = 0;
      }

      v54 = v26 + (v48 | v46);
      return (v54 + 1);
    }
  }

LABEL_54:
  if (v69 == v26)
  {
    if ((v68 & 0x80000000) == 0)
    {
      v49 = *(a1 + 1);
      if (v49 >= 0xFFFFFFFF)
      {
        LODWORD(v49) = -1;
      }

      EnumTagSinglePayload = v49 + 1;
      goto LABEL_88;
    }

    v55 = (v27 + 1 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9) + v33 + 1) & ~v33;
    if (v65 == v68)
    {
      v56 = v64;
      if (v64 < 0x7FFFFFFF)
      {
        v59 = *((v34 + v55) & 0xFFFFFFFFFFFFFFF8);
        if (v59 >= 0xFFFFFFFF)
        {
          LODWORD(v59) = -1;
        }

        v60 = v59 + 1;
        goto LABEL_85;
      }

      v57 = v63;
    }

    else
    {
      v58 = (v55 + v33 + v35) & ~v33;
      if (v62 == v68)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, v64, v63);
LABEL_88:
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      v55 = (v35 + v29 + v58) & ~v29;
      v56 = v18;
      v57 = v61;
    }

    v60 = __swift_getEnumTagSinglePayload(v55, v56, v57);
LABEL_85:
    if (v60 >= 2)
    {
      EnumTagSinglePayload = v60 - 1;
    }

    else
    {
      EnumTagSinglePayload = 0;
    }

    goto LABEL_88;
  }

  v51 = (a1 + v36) & ~v31;
  if (v67 != v26)
  {
    v52 = (v39 + ((v38 + v51) & ~v37)) & 0xFFFFFFFFFFFFFFF8;
    if (v26 > 0x7FFFFFFE)
    {
      v51 = (v40 + v52) & ~v32;
      goto LABEL_70;
    }

    v53 = *(v52 + 16);
    if (v53 >= 0xFFFFFFFF)
    {
      LODWORD(v53) = -1;
    }

    v54 = v53 - 1;
    if (v54 < 0)
    {
      v54 = -1;
    }

    return (v54 + 1);
  }

  v25 = v67;
  v23 = v66;
LABEL_70:

  return __swift_getEnumTagSinglePayload(v51, v25, v23);
}

void sub_23B9D425C(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_23BBDCD08() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23BBDCBE8() - 8);
  v9 = *(v8 + 80);
  v83 = v9 | v6;
  v10 = v9 | v6 | 7;
  v11 = (v7 + 7 + ((*(v8 + 64) + v6 + ((v9 + 16) & ~v9)) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 10;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  if (v13 <= 3)
  {
    v13 = 3;
  }

  v14 = v13 + ((((v6 + 16) & ~v6) + v7 + v10) & ~v10);
  if (v14 + 1 > ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v79 = v15 + 1;
  v78 = (v15 + 1 + v10) & ~v10;
  v67 = sub_23BBD96B8();
  v82 = *(v67 - 8);
  v68 = *(v82 + 84);
  if (v68 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v82 + 84);
  }

  v69 = v16 - 1;
  v70 = v16;
  if (v16 - 1 < v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 - 1;
  }

  v65 = sub_23BBDCDB8();
  v81 = *(v65 - 8);
  v18 = *(v81 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  v66 = v19;
  if (v17 > v19)
  {
    v19 = v17;
  }

  v74 = v19;
  v72 = *(a4 + 16);
  v20 = *(v72 - 8);
  v73 = *(v20 + 84);
  v75 = v19 - 1;
  if (v73 <= v19 - 1)
  {
    v21 = v19 - 1;
  }

  else
  {
    v21 = *(v20 + 84);
  }

  v77 = *(sub_23BBDA438() - 8);
  v22 = *(v77 + 64);
  if (v22 <= 8)
  {
    v22 = 8;
  }

  v76 = v22;
  v87 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  v23 = *(v71 - 8);
  v24 = *(v23 + 84);
  if (v21 <= v24)
  {
    v25 = *(v23 + 84);
  }

  else
  {
    v25 = v21;
  }

  if (v78 + v79 <= 0x20)
  {
    v26 = 32;
  }

  else
  {
    v26 = v78 + v79;
  }

  v80 = v18;
  v27 = v10;
  v28 = *(v82 + 80) & 0xF8 | 7;
  v29 = *(v82 + 64) + 7;
  v30 = (((v29 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v31 = *(v81 + 80);
  v32 = v30 + v31;
  v33 = *(v81 + 64);
  if (!v18)
  {
    ++v33;
  }

  v34 = ((v30 + v31 + ((v30 + v28 + ((v26 + ((v83 + 32) & ~v10) + v28 + 2) & ~v28)) & ~v28)) & ~v31) + v33;
  v35 = *(v20 + 80);
  v36 = *(v77 + 80) & 0xF8 | 7;
  v37 = *(v20 + 64) + v36;
  v38 = *(v23 + 80);
  v39 = ((v38 + 24 + ((v76 + 88 + ((v37 + ((v34 + v35) & ~v35)) & ~v36)) & 0xFFFFFFFFFFFFFFF8)) & ~v38) + *(*(v71 - 8) + 64);
  v40 = 8 * v39;
  if (a3 > v25)
  {
    if (v39 <= 3)
    {
      v42 = ((a3 - v25 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v41 = v43;
        }

        else
        {
          v41 = 0;
        }
      }
    }

    else
    {
      v41 = 1;
    }

    v87 = v41;
  }

  if (v25 < a2)
  {
    v44 = ~v25 + a2;
    if (v39 < 4)
    {
      v45 = (v44 >> v40) + 1;
      if (v39)
      {
        v50 = v44 & ~(-1 << v40);
        bzero(a1, v39);
        if (v39 == 3)
        {
          *a1 = v50;
          *(a1 + 2) = BYTE2(v50);
        }

        else
        {
          if (v39 != 2)
          {
            v59 = v87;
            *a1 = v44;
            goto LABEL_79;
          }

          *a1 = v50;
        }
      }
    }

    else
    {
      bzero(a1, v39);
      *a1 = v44;
      v45 = 1;
    }

    v59 = v87;
LABEL_79:
    switch(v59)
    {
      case 1:
        *(a1 + v39) = v45;
        return;
      case 2:
        *(a1 + v39) = v45;
        return;
      case 3:
        goto LABEL_119;
      case 4:
        *(a1 + v39) = v45;
        return;
      default:
        return;
    }
  }

  v46 = ~v27;
  v47 = ~v28;
  v48 = v26 + 1;
  v49 = ~v31;
  switch(v87)
  {
    case 1:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    case 2:
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    case 3:
LABEL_119:
      __break(1u);
      JUMPOUT(0x23B9D4AE0);
    case 4:
      *(a1 + v39) = 0;
      goto LABEL_56;
    default:
LABEL_56:
      if (!a2)
      {
        return;
      }

LABEL_57:
      if (v75 != v25)
      {
        v52 = (a1 + v34 + v35) & ~v35;
        if (v73 == v25)
        {
          v53 = a2;
          v24 = v73;
          v54 = v72;
        }

        else
        {
          v58 = (v76 + 88 + ((v37 + v52) & ~v36)) & 0xFFFFFFFFFFFFFFF8;
          if (v25 <= 0x7FFFFFFE)
          {
            *(v58 + 16) = a2;
            return;
          }

          v52 = (v38 + 24 + v58) & ~v38;
          v53 = a2;
          v54 = v71;
        }

        goto LABEL_102;
      }

      if (a2 >= v74)
      {
        if (v34 <= 3)
        {
          v55 = ~(-1 << (8 * v34));
        }

        else
        {
          v55 = -1;
        }

        if (v34)
        {
          v56 = v55 & (a2 - v74);
          if (v34 <= 3)
          {
            v57 = v34;
          }

          else
          {
            v57 = 4;
          }

          bzero(a1, v34);
          switch(v57)
          {
            case 2:
              *a1 = v56;
              break;
            case 3:
              *a1 = v56;
              *(a1 + 2) = BYTE2(v56);
              break;
            case 4:
              *a1 = v56;
              break;
            default:
              *a1 = v56;
              break;
          }
        }
      }

      else
      {
        v51 = a2 + 1;
        if ((v74 & 0x80000000) == 0)
        {
          if ((v51 & 0x80000000) != 0)
          {
            *a1 = a2 - 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = a2;
          }

          return;
        }

        v60 = ((v48 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & v46) + v28 + 1) & v47);
        if (v69 == v74)
        {
          v53 = a2 + 2;
          if (v53 > v70)
          {
            if ((((v29 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
            {
              v61 = v51 - v70;
              bzero(((v48 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & v46) + v28 + 1) & v47), (((v29 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_90:
              *v60 = v61;
            }

            return;
          }

          v24 = v68;
          if (v68 < 0x7FFFFFFF)
          {
            v62 = (&v60[v29] & 0xFFFFFFFFFFFFFFF8);
            if ((v53 & 0x80000000) != 0)
            {
              v51 = a2 - 2147483646;
              v62[1] = 0;
            }

            *v62 = v51;
            return;
          }

          v52 = (v48 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 16) & v46) + v28 + 1) & v47;
          goto LABEL_99;
        }

        v52 = &v60[v28 + v30] & v47;
        if (v70 == v74)
        {
          v53 = a2 + 1;
          v24 = v68;
LABEL_99:
          v54 = v67;
LABEL_102:

          __swift_storeEnumTagSinglePayload(v52, v53, v24, v54);
          return;
        }

        v60 = ((v32 + v52) & v49);
        if (a2 < v66)
        {
          v53 = a2 + 2;
          v52 = (v32 + v52) & v49;
          v24 = v80;
          v54 = v65;
          goto LABEL_102;
        }

        if (v33 <= 3)
        {
          v63 = ~(-1 << (8 * v33));
        }

        else
        {
          v63 = -1;
        }

        if (v33)
        {
          v61 = v63 & (a2 - v66);
          if (v33 <= 3)
          {
            v64 = v33;
          }

          else
          {
            v64 = 4;
          }

          bzero(v60, v33);
          switch(v64)
          {
            case 2:
              *v60 = v61;
              break;
            case 3:
              *v60 = v61;
              v60[2] = BYTE2(v61);
              break;
            case 4:
              goto LABEL_90;
            default:
              *v60 = v61;
              break;
          }
        }
      }

      return;
  }
}

void sub_23B9D4B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23B9D4BA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_23B9D4C08()
{
  if (!qword_27E19A000)
  {
    sub_23B974940();
    v0 = sub_23BBD9D48();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19A000);
    }
  }
}

uint64_t sub_23B9D4CA8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  do
  {
    sub_23BBDD0C8();
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_23BBDCE88();
  }

  while ((v5 & 1) != 0);

  return v4;
}

uint64_t sub_23B9D4D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  sub_23BBD9CF8();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  (*(v5 + 16))(v8, v3, a3);
  sub_23BBD9D08();
  swift_getWitnessTable();
  return sub_23BBDA028();
}

uint64_t sub_23B9D4ED0(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BBE94D0;
  v8 = sub_23B9D5180(a1);
  *(inited + 32) = v8;
  v9 = v1 + *(a1 + 48);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v11 = v10 & 1;
    *(inited + 33) = v10 & 1;
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v4 + 8))(v6, v3);
    v11 = v20;
    v14 = *(inited + 32);
    *(inited + 33) = v20;
    LOBYTE(v10) = v11;
    if ((v14 & 1) == 0)
    {
LABEL_3:

      v12 = MEMORY[0x277D84F90];
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }
  }

  v20 = MEMORY[0x277D84F90];
  sub_23BA92C08();
  v12 = v20;
  v15 = *(v20 + 16);
  if (v15 >= *(v20 + 24) >> 1)
  {
    sub_23BA92C08();
    v12 = v20;
  }

  *(v12 + 16) = v15 + 1;
  *(v12 + v15 + 32) = 1;

  if (v10)
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23BA92C08();
      v12 = v20;
    }

    v17 = *(v12 + 16);
    if (v17 >= *(v12 + 24) >> 1)
    {
      sub_23BA92C08();
      v12 = v20;
    }

    *(v12 + 16) = v17 + 1;
    *(v12 + v17 + 32) = v11;
  }

LABEL_14:
  v18 = *(v12 + 16);

  return v18;
}

BOOL sub_23B9D5180(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_23BBDA928();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v1 + *(a1 + 52);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v14, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(v14) = v20[14];
  }

  if (!v14)
  {
    sub_23B9A721C(v1, v8, &qword_27E19A030);
    v17 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) != 1)
    {
      sub_23B9A721C(&v8[*(v17 + 40)], v5, &qword_27E1987F0);
      v18 = sub_23BBDCDB8();
      v16 = __swift_getEnumTagSinglePayload(v5, 1, v18) != 1;
      sub_23B9846E8(v5, &qword_27E1987F0);
      sub_23B9DC5FC(v8, type metadata accessor for SubscriptionOfferViewConfiguration);
      return v16;
    }

    sub_23B9846E8(v8, &qword_27E19A030);
    return 1;
  }

  return v14 == 1;
}

unint64_t sub_23B9D5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v6 + 8))(v8, v5);
    if (v16[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = sub_23BBDAB58();
    v12 = 0x4010000000000000;
    v13 = MEMORY[0x277CDF5C8];
    result = sub_23B9A7330();
    goto LABEL_6;
  }

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_23BBDA9D8();
  v12 = 0x4024000000000000;
  v13 = MEMORY[0x277CDF570];
  result = sub_23B9A70B0();
LABEL_6:
  *(a2 + 24) = v13;
  *(a2 + 32) = result;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_23B9D5610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v11 = sub_23BBDA9D8();
      *(a2 + 24) = MEMORY[0x277CDF570];
      result = sub_23B9A70B0();
      *(a2 + 32) = result;
      *a2 = v11;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v6 + 8))(v8, v5);
    if (v14[15] != 1)
    {
      goto LABEL_3;
    }
  }

  return sub_23B9D5468(a1, a2);
}

uint64_t sub_23B9D57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v54 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v53 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v52 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D40);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  v69[0] = sub_23BBDA358();
  v69[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008);
  v69[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018);
  OUTLINED_FUNCTION_11_4();
  v11 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v12, &qword_27E198D40);
  v56 = v11;
  v13 = sub_23BBDA018();
  OUTLINED_FUNCTION_7();
  v57 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  type metadata accessor for LayoutMetricsModifier(255);
  v18 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v59 = v19;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v55 = &v51 - v24;
  v58 = a1;
  sub_23B9D5468(a1, v69);
  v25 = __swift_project_boxed_opaque_existential_1(v69, v70);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  (*(v28 + 16))(v27 - v26);
  v29 = sub_23BBDC378();
  v30 = sub_23B9D5DC0(v29, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(v69);
  v62 = v9;
  v63 = v10;
  v64 = v2;
  v30(sub_23B9DA874, v61);

  if (qword_27E197608 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for LayoutMetrics(0);
  v32 = __swift_project_value_buffer(v31, qword_27E1BF7E0);
  v33 = v3 + *(v58 + 44);
  v34 = *v33;
  if (*(v33 + 8) != 1)
  {

    sub_23BBDD5A8();
    v35 = sub_23BBDB338();
    sub_23BBD9978();

    v36 = v52;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v34, 0);
    (*(v53 + 8))(v36, v54);
    LOBYTE(v34) = v69[0];
  }

  OUTLINED_FUNCTION_3_9();
  v39 = sub_23B97B518(v37, v38);
  OUTLINED_FUNCTION_2_5();
  WitnessTable = swift_getWitnessTable();
  v67 = v39;
  v68 = WitnessTable;
  OUTLINED_FUNCTION_1_9();
  v41 = swift_getWitnessTable();
  v42 = sub_23BBDC318();
  sub_23B97462C(v32, v42, v43, (v34 & 1) == 0, v13, v41);
  (*(v57 + 8))(v17, v13);
  OUTLINED_FUNCTION_7_13();
  v46 = sub_23B9DC840(v44, v45);
  v65 = v41;
  v66 = v46;
  OUTLINED_FUNCTION_0();
  v47 = swift_getWitnessTable();
  v48 = v55;
  sub_23B9D2D88(v23, v18, v47);
  v49 = *(v59 + 8);
  v49(v23, v18);
  sub_23B9D2D88(v48, v18, v47);
  return (v49)(v48, v18);
}

uint64_t (*sub_23B9D5DC0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_23B9DC978;
}

uint64_t sub_23B9D5E34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProductViewIconWrapper();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018);
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B9A73C8();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, MEMORY[0x277CE13A0]);
}

uint64_t sub_23B9D5FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a4;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A018);
  v7 = MEMORY[0x28223BE20](v134);
  v137 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = (&v106 - v9);
  v10 = sub_23BBDB588();
  v128 = *(v10 - 8);
  v129 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v126 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v106 - v13;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A010);
  v14 = MEMORY[0x28223BE20](v145);
  v133 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = (&v106 - v16);
  v142 = type metadata accessor for CompactSubscriptionOfferView();
  v123 = *(v142 - 8);
  v121 = *(v123 + 64);
  MEMORY[0x28223BE20](v142);
  v122 = &v106 - v17;
  v18 = sub_23BBDB148();
  v119 = *(v18 - 8);
  v120 = v18;
  MEMORY[0x28223BE20](v18);
  v115 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A020);
  MEMORY[0x28223BE20](v113);
  v114 = (&v106 - v20);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A028);
  MEMORY[0x28223BE20](v118);
  v125 = &v106 - v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A008);
  v22 = MEMORY[0x28223BE20](v143);
  v130 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v124 = &v106 - v25;
  MEMORY[0x28223BE20](v24);
  v144 = &v106 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v112 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v106 - v30;
  v109 = sub_23BBDA438();
  v116 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v33 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ProductViewIconWrapper();
  v107 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v106 - v35;
  WitnessTable = swift_getWitnessTable();
  v167[0] = v34;
  v108 = WitnessTable;
  v167[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v40 = &v106 - v39;
  v117 = v41;
  v141 = sub_23BBDA358();
  v138 = *(v141 - 8);
  v42 = MEMORY[0x28223BE20](v141);
  v140 = &v106 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v106 - v45;
  MEMORY[0x28223BE20](v44);
  v139 = &v106 - v47;
  v148 = a2;
  v149 = a3;
  v150 = a1;
  v146 = a3;
  v147 = a2;
  sub_23BA33338(sub_23B9DA880, v36);
  v131 = a1;
  sub_23B9A721C(a1, v31, &qword_27E19A030);
  v110 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v31, 1, v110);
  sub_23B9846E8(v31, &qword_27E19A030);
  if (a3 == 1)
  {
    sub_23BBDA428();
    v48 = v109;
  }

  else
  {
    v167[0] = MEMORY[0x277D84F90];
    sub_23B9DC840(&qword_27E198E48, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50);
    v49 = v109;
    sub_23BBDD6C8();
    v48 = v49;
  }

  v50 = v108;
  sub_23BBDBC38();
  (*(v116 + 8))(v33, v48);
  (*(v107 + 8))(v36, v34);
  v165 = 1;
  v164 = 1;
  v163 = 1;
  v162 = 1;
  v161 = 0;
  v160 = 0;
  v166 = 0;
  __src = 0;
  v169 = 1;
  v170 = 0;
  v171 = 1;
  v172 = 0;
  v173 = 1;
  v174 = 0;
  v175 = 1;
  v176 = 0x404E000000000000;
  v177 = 0;
  v178 = 0x404E000000000000;
  v179 = 0;
  v167[0] = v34;
  v167[1] = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_23BBDC318();
  v53 = v117;
  sub_23BA19724(&__src, v52, v54, v117, OpaqueTypeConformance2);
  (*(v111 + 8))(v40, v53);
  v55 = sub_23B9A6A40();
  v158 = OpaqueTypeConformance2;
  v159 = v55;
  v56 = v141;
  v111 = swift_getWitnessTable();
  sub_23B9D2D88(v46, v56, v111);
  v116 = *(v138 + 8);
  v117 = v138 + 8;
  (v116)(v46, v56);
  v57 = sub_23BBDAB58();
  v58 = v114;
  *v114 = v57;
  *(v58 + 8) = 0x4010000000000000;
  *(v58 + 16) = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A038);
  v60 = v131;
  v61 = v146;
  v62 = v147;
  sub_23B9D714C(v131, v147, v146, (v58 + *(v59 + 44)));
  KeyPath = swift_getKeyPath();
  v64 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A040) + 36));
  *v64 = KeyPath;
  v64[1] = 0;
  v65 = swift_getKeyPath();
  v66 = v58 + *(v113 + 36);
  *v66 = v65;
  *(v66 + 8) = 0;
  v67 = v115;
  sub_23BBDB128();
  sub_23B9DAEA8();
  v68 = v125;
  sub_23BBDB968();
  (*(v119 + 8))(v67, v120);
  sub_23B9846E8(v58, &qword_27E19A020);
  v70 = v122;
  v69 = v123;
  v71 = v142;
  (*(v123 + 16))(v122, v60, v142);
  v72 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v62;
  *(v73 + 24) = v61;
  v74 = v60;
  (*(v69 + 32))(v73 + v72, v70, v71);
  v75 = (v68 + *(v118 + 36));
  *v75 = sub_23B9DB6B0;
  v75[1] = v73;
  v76 = v112;
  sub_23B9A721C(v60, v112, &qword_27E19A030);
  LODWORD(v69) = __swift_getEnumTagSinglePayload(v76, 1, v110);
  sub_23B9846E8(v76, &qword_27E19A030);
  if (v69 != 1)
  {
    v77 = v60 + *(v71 + 64);
    v78 = *v77;
    v79 = *(v77 + 8);
    v80 = *(v77 + 16);
    v167[0] = v78;
    LOBYTE(v167[1]) = v79;
    v167[2] = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0D8);
    sub_23BBDBF68();
  }

  sub_23BBDC318();
  v81 = v147;
  sub_23BBDA488();
  v82 = v124;
  sub_23B9A71D0(v68, v124, &qword_27E19A028);
  memcpy((v82 + *(v143 + 36)), v167, 0x70uLL);
  v83 = v144;
  sub_23B9A71D0(v82, v144, &qword_27E19A008);
  v84 = swift_getKeyPath();
  v85 = v132;
  *v132 = v84;
  *(v85 + 8) = 0;
  type metadata accessor for SubscriptionOfferViewAXTypeStyleButtonSpacer();
  v87 = v127;
  v86 = v128;
  v88 = v129;
  (*(v128 + 104))(v127, *MEMORY[0x277CE0AA8], v129);
  v156[0] = 0x4024000000000000;
  (*(v86 + 16))(v126, v87, v88);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v86 + 8))(v87, v88);
  *(v85 + *(v145 + 36)) = 0xC000000000000000;
  sub_23B9D5610(v142, v156);
  v89 = __swift_project_boxed_opaque_existential_1(v156, v157);
  MEMORY[0x28223BE20](v89);
  (*(v91 + 16))(&v106 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(v156);
  v93 = v74;
  v94 = v135;
  *v135 = v92;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A080);
  sub_23B9D8A58(v93, v81, v146, (v94 + *(v95 + 44)));
  v96 = v134;
  *(v94 + *(v134 + 36)) = 0xBFF0000000000000;
  v97 = v139;
  v98 = v140;
  v99 = v141;
  (*(v138 + 16))(v140, v139, v141);
  v156[0] = v98;
  v100 = v130;
  sub_23B9A721C(v83, v130, &qword_27E19A008);
  v156[1] = v100;
  v101 = v133;
  sub_23B9A721C(v85, v133, &qword_27E19A010);
  v156[2] = v101;
  v102 = v137;
  sub_23B9A721C(v94, v137, &qword_27E19A018);
  v157 = v102;
  v155[0] = v99;
  v155[1] = v143;
  v155[2] = v145;
  v155[3] = v96;
  v151 = v111;
  v152 = sub_23B9DB750();
  v153 = sub_23B9DB8D0();
  v154 = sub_23B9DB9B8();
  sub_23BB6739C(v156, 4, v155);
  sub_23B9846E8(v94, &qword_27E19A018);
  sub_23B9846E8(v85, &qword_27E19A010);
  sub_23B9846E8(v144, &qword_27E19A008);
  v103 = v97;
  v104 = v116;
  (v116)(v103, v99);
  sub_23B9846E8(v102, &qword_27E19A018);
  sub_23B9846E8(v101, &qword_27E19A010);
  sub_23B9846E8(v100, &qword_27E19A008);
  return v104(v140, v99);
}

uint64_t sub_23B9D7054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompactSubscriptionOfferView();
  sub_23B9D2D88(a1 + *(v9 + 36), a2, a3);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23B9D714C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v154 = a3;
  v153 = a2;
  v172 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v163 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = &v146 - v8;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1B0);
  v9 = MEMORY[0x28223BE20](v168);
  v171 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v167 = &v146 - v12;
  MEMORY[0x28223BE20](v11);
  v170 = &v146 - v13;
  v151 = sub_23BBDA928();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v15 - 8);
  v152 = &v146 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v169 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v182 = &v146 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v161 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v157 = &v146 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v146 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v158 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v146 = &v146 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v148 = &v146 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v146 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = (&v146 - v38);
  v40 = type metadata accessor for ProductViewText(0);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v147 = &v146 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v146 - v46;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E98);
  v48 = MEMORY[0x28223BE20](v181);
  v160 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v146 - v50;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA0);
  v52 = MEMORY[0x28223BE20](v180);
  v159 = &v146 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v146 - v54;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1B8);
  v164 = *(v165 - 8);
  v56 = MEMORY[0x28223BE20](v165);
  v162 = &v146 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v184 = &v146 - v58;
  v179 = a1;
  sub_23B9A721C(a1, v39, &qword_27E19A030);
  v183 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v183) == 1)
  {
    sub_23B9846E8(v39, &qword_27E19A030);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v59 = *v39;
    v60 = v39[1];

    sub_23B9DC5FC(v39, type metadata accessor for SubscriptionOfferViewConfiguration);
  }

  KeyPath = swift_getKeyPath();
  v155 = swift_getKeyPath();
  if (v60)
  {
    *v27 = v59;
    v27[1] = v60;
    v61 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v62 = v27;
    v63 = 0;
    v64 = v61;
  }

  else
  {
    v64 = type metadata accessor for ProductViewText.Storage(0);
    v62 = v27;
    v63 = 1;
  }

  __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for LayoutMetrics(0);
  v178 = __swift_project_value_buffer(v65, &unk_27E1BF7F8);
  sub_23B9DC888(v178, v47, type metadata accessor for LayoutMetrics);
  v66 = type metadata accessor for PlaceholderLayouts(0);
  v67 = *(v66 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v176 = __swift_project_value_buffer(v65, &unk_27E1BF810);
  sub_23B9DC888(v176, &v47[v67], type metadata accessor for LayoutMetrics);
  v177 = v66;
  v68 = *(v66 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v175 = __swift_project_value_buffer(v65, &unk_27E1BF828);
  sub_23B9DC888(v175, &v47[v68], type metadata accessor for LayoutMetrics);
  v69 = &v47[v40[10]];
  v70 = v40[13];
  *&v47[v70] = swift_getKeyPath();
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v71 = v40[14];
  *&v47[v71] = swift_getKeyPath();
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v27, &v47[v40[5]], &qword_27E198E90);
  v47[v40[6]] = 0;
  v47[v40[7]] = 0;
  v47[v40[8]] = 0;
  *v69 = 0;
  *(v69 + 1) = 0;
  v201 = 1;
  v199 = 0;
  v197 = 0;
  v195 = 1;
  v193 = 0;
  v191 = 0;
  v72 = &v47[v40[9]];
  *v72 = 0;
  v72[8] = 1;
  *(v72 + 3) = *&v200[3];
  *(v72 + 9) = *v200;
  *(v72 + 2) = 0x405E000000000000;
  v72[24] = 0;
  *(v72 + 7) = *&v198[3];
  *(v72 + 25) = *v198;
  *(v72 + 4) = 0x405E000000000000;
  v72[40] = 0;
  v73 = *v196;
  *(v72 + 11) = *&v196[3];
  *(v72 + 41) = v73;
  *(v72 + 6) = 0;
  v72[56] = v195;
  v74 = *v194;
  *(v72 + 15) = *&v194[3];
  *(v72 + 57) = v74;
  *(v72 + 8) = 0x4032000000000000;
  v72[72] = v193;
  v75 = *v192;
  *(v72 + 19) = *&v192[3];
  *(v72 + 73) = v75;
  *(v72 + 10) = 0x4032000000000000;
  v72[88] = v191;
  *&v47[v40[11]] = KeyPath;
  *&v47[v40[12]] = v155;
  sub_23B9DC888(v47, v51, type metadata accessor for ProductViewText);
  *&v51[*(v181 + 36)] = 0x3FF0000000000000;
  sub_23B9DC5FC(v47, type metadata accessor for ProductViewText);
  v76 = swift_getKeyPath();
  sub_23B9A71D0(v51, v55, &qword_27E198E98);
  v77 = &v55[*(v180 + 36)];
  *v77 = v76;
  v77[8] = 1;
  sub_23BBDB488();
  sub_23B9DC6A0();
  sub_23BBDB6D8();
  sub_23B9846E8(v55, &qword_27E198EA0);
  v78 = v179;
  sub_23B9A721C(v179, v37, &qword_27E19A030);
  v79 = v183;
  if (__swift_getEnumTagSinglePayload(v37, 1, v183) == 1)
  {
    sub_23B9846E8(v37, &qword_27E19A030);
    v80 = v166;
    v81 = v163;
    v82 = v157;
  }

  else
  {
    v83 = v152;
    sub_23B9A721C(&v37[*(v79 + 40)], v152, &qword_27E1987F0);
    v84 = sub_23BBDCDB8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v84);
    sub_23B9846E8(v83, &qword_27E1987F0);
    sub_23B9DC5FC(v37, type metadata accessor for SubscriptionOfferViewConfiguration);
    v86 = EnumTagSinglePayload == 1;
    v79 = v183;
    v80 = v166;
    v81 = v163;
    v82 = v157;
    if (v86)
    {
      goto LABEL_24;
    }
  }

  v87 = v78 + *(type metadata accessor for CompactSubscriptionOfferView() + 60);
  v88 = *v87;
  if (*(v87 + 8) != 1)
  {

    sub_23BBDD5A8();
    v89 = sub_23BBDB338();
    sub_23BBD9978();

    v79 = v183;
    v90 = v149;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v88, 0);
    (*(v150 + 8))(v90, v151);
    if (v190 == 1)
    {
      goto LABEL_20;
    }

LABEL_24:
    __swift_storeEnumTagSinglePayload(v182, 1, 1, v40);
    goto LABEL_32;
  }

  if ((v88 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v91 = v148;
  sub_23B9A721C(v78, v148, &qword_27E19A030);
  if (__swift_getEnumTagSinglePayload(v91, 1, v79) == 1)
  {
    sub_23B9846E8(v91, &qword_27E19A030);
  }

  else
  {
    v92 = *(v91 + 16);
    v93 = *(v91 + 24);

    sub_23B9DC5FC(v91, type metadata accessor for SubscriptionOfferViewConfiguration);
    if (v93)
    {
      v94 = sub_23B9D4CA8(v92, v93);

      if (v94)
      {
        goto LABEL_24;
      }
    }
  }

  v95 = v146;
  sub_23B9A721C(v78, v146, &qword_27E19A030);
  if (__swift_getEnumTagSinglePayload(v95, 1, v79) == 1)
  {
    sub_23B9846E8(v95, &qword_27E19A030);
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v96 = *(v95 + 16);
    v97 = *(v95 + 24);

    sub_23B9DC5FC(v95, type metadata accessor for SubscriptionOfferViewConfiguration);
  }

  v98 = swift_getKeyPath();
  v99 = swift_getKeyPath();
  if (v97)
  {
    *v82 = v96;
    v82[1] = v97;
    v100 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v101 = v82;
    v102 = 0;
    v103 = v100;
  }

  else
  {
    v103 = type metadata accessor for ProductViewText.Storage(0);
    v101 = v82;
    v102 = 1;
  }

  __swift_storeEnumTagSinglePayload(v101, v102, 1, v103);
  v104 = v147;
  sub_23B9DC888(v178, v147, type metadata accessor for LayoutMetrics);
  v105 = v177;
  sub_23B9DC888(v176, v104 + *(v177 + 20), type metadata accessor for LayoutMetrics);
  sub_23B9DC888(v175, v104 + *(v105 + 24), type metadata accessor for LayoutMetrics);
  v106 = (v104 + v40[10]);
  v107 = v40[13];
  *(v104 + v107) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v108 = v40[14];
  *(v104 + v108) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v82, v104 + v40[5], &qword_27E198E90);
  *(v104 + v40[6]) = 1;
  *(v104 + v40[7]) = 0;
  *(v104 + v40[8]) = 0;
  *v106 = 0;
  v106[1] = 0;
  v190 = 1;
  v189 = 0;
  v188 = 0;
  v187 = 1;
  v186 = 0;
  v185 = 0;
  v109 = v104 + v40[9];
  *v109 = 0;
  *(v109 + 8) = 1;
  *(v109 + 16) = 0x4054000000000000;
  *(v109 + 24) = 0;
  *(v109 + 32) = 0x4054000000000000;
  *(v109 + 40) = 0;
  *(v109 + 48) = 0;
  *(v109 + 56) = 1;
  *(v109 + 64) = 0x4024000000000000;
  *(v109 + 72) = 0;
  *(v109 + 80) = 0x4024000000000000;
  *(v109 + 88) = 0;
  *(v104 + v40[11]) = v98;
  *(v104 + v40[12]) = v99;
  v110 = v104;
  v111 = v182;
  sub_23B9DC8E4(v110, v182, type metadata accessor for ProductViewText);
  __swift_storeEnumTagSinglePayload(v111, 0, 1, v40);
  v78 = v179;
  v79 = v183;
LABEL_32:
  v112 = v158;
  sub_23B9A721C(v78, v158, &qword_27E19A030);
  if (__swift_getEnumTagSinglePayload(v112, 1, v79) == 1)
  {
    sub_23B9846E8(v112, &qword_27E19A030);
    v113 = 1;
  }

  else
  {
    sub_23B9DC888(v112 + *(v79 + 24), v80, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    sub_23B9DC5FC(v112, type metadata accessor for SubscriptionOfferViewConfiguration);
    v113 = 0;
  }

  v114 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  __swift_storeEnumTagSinglePayload(v80, v113, 1, v114);
  v115 = swift_getKeyPath();
  v116 = swift_getKeyPath();
  sub_23B9A721C(v80, v81, &qword_27E19A1A8);
  if (__swift_getEnumTagSinglePayload(v81, 1, v114) == 1)
  {
    v117 = type metadata accessor for ProductViewText.Storage(0);
    v118 = v161;
    v119 = v161;
    v120 = 1;
  }

  else
  {
    v121 = v81;
    v118 = v161;
    sub_23B9DC8E4(v121, v161, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    v122 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v119 = v118;
    v120 = 0;
    v117 = v122;
  }

  __swift_storeEnumTagSinglePayload(v119, v120, 1, v117);
  sub_23B9DC888(v178, v43, type metadata accessor for LayoutMetrics);
  v123 = v177;
  sub_23B9DC888(v176, &v43[*(v177 + 20)], type metadata accessor for LayoutMetrics);
  sub_23B9DC888(v175, &v43[*(v123 + 24)], type metadata accessor for LayoutMetrics);
  sub_23B9846E8(v80, &qword_27E19A1A8);
  v124 = &v43[v40[10]];
  v125 = v40[13];
  *&v43[v125] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v126 = v40[14];
  *&v43[v126] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v118, &v43[v40[5]], &qword_27E198E90);
  v43[v40[6]] = 2;
  v43[v40[7]] = 0;
  v43[v40[8]] = 0;
  *v124 = sub_23B9D8780;
  v124[1] = 0;
  v190 = 1;
  v189 = 0;
  v188 = 0;
  v187 = 1;
  v186 = 0;
  v185 = 0;
  v127 = &v43[v40[9]];
  *v127 = 0;
  v127[8] = 1;
  *(v127 + 2) = 0x4054000000000000;
  v127[24] = 0;
  *(v127 + 4) = 0x4054000000000000;
  v127[40] = 0;
  *(v127 + 6) = 0;
  v127[56] = 1;
  *(v127 + 8) = 0x4024000000000000;
  v127[72] = 0;
  *(v127 + 10) = 0x4024000000000000;
  v127[88] = 0;
  *&v43[v40[11]] = v115;
  *&v43[v40[12]] = v116;
  v128 = v160;
  sub_23B9DC888(v43, v160, type metadata accessor for ProductViewText);
  *(v128 + *(v181 + 36)) = 0x4000000000000000;
  sub_23B9DC5FC(v43, type metadata accessor for ProductViewText);
  v129 = swift_getKeyPath();
  v130 = v128;
  v131 = v159;
  sub_23B9A71D0(v130, v159, &qword_27E198E98);
  v132 = v131 + *(v180 + 36);
  *v132 = v129;
  *(v132 + 8) = 1;
  v133 = v167;
  sub_23B9A71D0(v131, v167, &qword_27E198EA0);
  *(v133 + *(v168 + 36)) = 256;
  v134 = v170;
  sub_23B9A71D0(v133, v170, &qword_27E19A1B0);
  v135 = v164;
  v136 = *(v164 + 16);
  v137 = v162;
  v138 = v165;
  v136(v162, v184, v165);
  v139 = v182;
  v140 = v169;
  sub_23B9A721C(v182, v169, &qword_27E198E88);
  v141 = v171;
  sub_23B9A721C(v134, v171, &qword_27E19A1B0);
  v142 = v172;
  v136(v172, v137, v138);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1E8);
  sub_23B9A721C(v140, &v142[*(v143 + 48)], &qword_27E198E88);
  sub_23B9A721C(v141, &v142[*(v143 + 64)], &qword_27E19A1B0);
  sub_23B9846E8(v134, &qword_27E19A1B0);
  sub_23B9846E8(v139, &qword_27E198E88);
  v144 = *(v135 + 8);
  v144(v184, v138);
  sub_23B9846E8(v141, &qword_27E19A1B0);
  sub_23B9846E8(v140, &qword_27E198E88);
  return (v144)(v137, v138);
}

uint64_t sub_23B9D878C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v23 = a1;
  v6 = sub_23BBD9E98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CompactSubscriptionOfferView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  (*(v11 + 16))(&v20 - v13, v20, v10);
  (*(v7 + 16))(v9, v23, v6);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21;
  *(v17 + 24) = v18;
  (*(v11 + 32))(v17 + v15, v14, v10);
  result = (*(v7 + 32))(v17 + v16, v9, v6);
  *a5 = sub_23B9DC514;
  a5[1] = v17;
  a5[2] = 0;
  a5[3] = 0;
  return result;
}

uint64_t sub_23B9D89B0()
{
  sub_23BBD9E68();
  type metadata accessor for CompactSubscriptionOfferView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0D8);
  return sub_23BBDBF78();
}

uint64_t sub_23B9D8A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0E8);
  v12 = MEMORY[0x28223BE20](v58);
  v59 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = sub_23BBDA928();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  v56 = a3;
  v52 = type metadata accessor for CompactSubscriptionOfferView();
  v53 = v19;
  v22 = a1 + *(v52 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);
  if (v24 == 1)
  {
    v25 = v18;
    if (v23)
    {
      v54 = 1;
LABEL_5:
      v29 = sub_23BBDAB58();
      goto LABEL_8;
    }

    v54 = 0;
  }

  else
  {

    sub_23BBDD5A8();
    v26 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v23, 0);
    v49 = a1;
    v50 = v17;
    v27 = *(v19 + 8);
    v27(v21, v18);
    v54 = v65;

    sub_23BBDD5A8();
    v28 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v23, 0);
    v25 = v18;
    v27(v21, v18);
    a1 = v49;
    v17 = v50;
    if (v64 == 1)
    {
      goto LABEL_5;
    }
  }

  v29 = sub_23BBDAB48();
LABEL_8:
  v30 = v29;
  if (v24)
  {
    v31 = v23;
  }

  else
  {

    sub_23BBDD5A8();
    v32 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v23, 0);
    (*(v53 + 8))(v21, v25);
    v31 = v63;
  }

  v33 = (v31 & 1) == 0;
  v34 = 0x4014000000000000;
  if (!v33)
  {
    v34 = 0x4018000000000000;
  }

  *v11 = v30;
  *(v11 + 1) = v34;
  v11[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0F0);
  sub_23B9D90DC(a1, v55, &v11[*(v35 + 44)]);
  if (v24)
  {
    v36 = 0;
    if (v23)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v37 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v23, 0);
    (*(v53 + 8))(v21, v25);
    v36 = 0;
    if (v62)
    {
      goto LABEL_20;
    }
  }

  if (sub_23B9D4ED0(v52) >= 2)
  {
    v38 = v51;
    sub_23B9A721C(a1, v51, &qword_27E19A030);
    v39 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
    sub_23B9846E8(v38, &qword_27E19A030);
    if (EnumTagSinglePayload != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
      sub_23BBD9D38();
      v36 = v61;
    }
  }

LABEL_20:
  v41 = v54;
  if (v54)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0x4018000000000000;
  }

  v43 = v57;
  sub_23B9A71D0(v11, v57, &qword_27E19A0E0);
  v44 = (v43 + *(v58 + 36));
  *v44 = 0;
  v44[1] = v36;
  sub_23B9A71D0(v43, v17, &qword_27E19A0E8);
  v45 = v59;
  sub_23B9A721C(v17, v59, &qword_27E19A0E8);
  v46 = v60;
  *v60 = v42;
  *(v46 + 8) = 0;
  *(v46 + 9) = v41;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A0F8);
  sub_23B9A721C(v45, v46 + *(v47 + 48), &qword_27E19A0E8);
  sub_23B9846E8(v17, &qword_27E19A0E8);
  return sub_23B9846E8(v45, &qword_27E19A0E8);
}

uint64_t sub_23B9D90DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v5 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v5);
  v94 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SubscriptionOfferViewDetailLink(0);
  MEMORY[0x28223BE20](v118);
  v117 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A100);
  MEMORY[0x28223BE20](v120);
  v110 = &v93 - v8;
  v9 = sub_23BBDA928();
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v106 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A108);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v121 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v93 - v14;
  v15 = type metadata accessor for InAppStoreButtonStyle(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A110);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v93 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v105 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v93 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v109 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v115 = &v93 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v93 - v31;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A118);
  MEMORY[0x28223BE20](v95);
  v34 = (&v93 - v33);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A120);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v93 - v35;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A128);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v93 - v36;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A130);
  v37 = MEMORY[0x28223BE20](v112);
  v97 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v96 = &v93 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A138);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v114 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v113 = &v93 - v43;
  v102 = a2;
  v111 = type metadata accessor for CompactSubscriptionOfferView();
  v44 = sub_23B9D5180(v111);
  v116 = v5;
  v123 = a1;
  if (v44)
  {
    sub_23B9A721C(a1, v25, &qword_27E19A030);
    v45 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v25, 1, v45) == 1)
    {
      sub_23B9846E8(v25, &qword_27E19A030);
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v5);
    }

    else
    {
      sub_23B9A721C(&v25[*(v45 + 32)], v32, &qword_27E198800);
      sub_23B9DC5FC(v25, type metadata accessor for SubscriptionOfferViewConfiguration);
    }

    *v34 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
    swift_storeEnumTagMultiPayload();
    v49 = v95;
    v50 = *(v95 + 56);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A150);
    __swift_storeEnumTagSinglePayload(v34 + v50, 1, 1, v51);
    *(v34 + *(v49 + 60)) = 8;
    sub_23B9DA06C(v123, v20);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v51);
    sub_23B9DBB5C(v20, v34 + v50);
    sub_23B9A71D0(v32, v34 + *(v49 + 52), &qword_27E198800);
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v52 = v15[5];
    *&v17[v52] = swift_getKeyPath();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197E68);
    swift_storeEnumTagMultiPayload();
    v53 = v15[6];
    *&v17[v53] = swift_getKeyPath();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
    swift_storeEnumTagMultiPayload();
    v54 = v15[7];
    *&v17[v54] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730);
    swift_storeEnumTagMultiPayload();
    v17[v15[8]] = 1;
    v55 = sub_23B97B518(&qword_27E19A158, &qword_27E19A118);
    v56 = sub_23B9DC840(&qword_27E19A160, type metadata accessor for InAppStoreButtonStyle);
    v57 = v101;
    sub_23BBDB988();
    sub_23B9DC5FC(v17, type metadata accessor for InAppStoreButtonStyle);
    sub_23B9846E8(v34, &qword_27E19A118);
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v58 = v15[5];
    *&v17[v58] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v59 = v15[6];
    *&v17[v59] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v60 = v15[7];
    *&v17[v60] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v17[v15[8]] = 1;
    v124 = v49;
    v125 = v15;
    v126 = v55;
    v127 = v56;
    swift_getOpaqueTypeConformance2();
    v61 = v98;
    v62 = v104;
    sub_23BBDBA48();
    sub_23B9DC5FC(v17, type metadata accessor for InAppStoreButtonStyle);
    (*(v103 + 8))(v57, v62);
    v63 = v97;
    (*(v99 + 32))(v97, v61, v100);
    v47 = v112;
    *(v63 + *(v112 + 36)) = 1;
    v64 = v96;
    sub_23B9A71D0(v63, v96, &qword_27E19A130);
    v48 = v113;
    a1 = v123;
    sub_23B9A71D0(v64, v113, &qword_27E19A130);
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v47 = v112;
    v48 = v113;
  }

  __swift_storeEnumTagSinglePayload(v48, v46, 1, v47);
  v65 = a1 + *(v111 + 48);
  v66 = *v65;
  v67 = v119;
  v68 = v117;
  v69 = v115;
  if (*(v65 + 8) == 1)
  {
    if ((v66 & 1) == 0)
    {
LABEL_9:
      v70 = 1;
      goto LABEL_18;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v71 = sub_23BBDB338();
    sub_23BBD9978();

    v72 = v106;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v66, 0);
    (*(v107 + 8))(v72, v108);
    if (v124 != 1)
    {
      goto LABEL_9;
    }
  }

  v73 = v105;
  sub_23B9A721C(v123, v105, &qword_27E19A030);
  v74 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v74);
  v76 = v116;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v73, &qword_27E19A030);
    v77 = 1;
  }

  else
  {
    sub_23B9DC888(v73 + *(v74 + 36), v69, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    sub_23B9DC5FC(v73, type metadata accessor for SubscriptionOfferViewConfiguration);
    v77 = 0;
  }

  __swift_storeEnumTagSinglePayload(v69, v77, 1, v76);
  v78 = v118;
  v79 = *(v118 + 20);
  *(v68 + v79) = 0;
  v80 = *(v78 + 24);
  *(v68 + v80) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v81 = sub_23BBDC2A8();
  v82 = v116;
  *(v68 + *(v78 + 28)) = v81 & 1;
  v83 = v109;
  sub_23B9A721C(v69, v109, &qword_27E198800);
  if (__swift_getEnumTagSinglePayload(v83, 1, v82) == 1)
  {
    sub_23B9846E8(v83, &qword_27E198800);
  }

  else
  {
    v84 = v83;
    v85 = v94;
    sub_23B9DC8E4(v84, v94, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    v86 = *(v85 + *(v82 + 24));
    sub_23B9DC5FC(v85, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
    *(v68 + v79) = v86;
  }

  sub_23B9A71D0(v69, v68, &qword_27E198800);
  sub_23B9DC840(&qword_27E19A148, type metadata accessor for SubscriptionOfferViewDetailLink);
  v87 = v110;
  sub_23BBDBC78();
  sub_23B9DC5FC(v68, type metadata accessor for SubscriptionOfferViewDetailLink);
  sub_23B9A71D0(v87, v67, &qword_27E19A100);
  v70 = 0;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v67, v70, 1, v120);
  v88 = v114;
  sub_23B9A721C(v48, v114, &qword_27E19A138);
  v89 = v121;
  sub_23B9A721C(v67, v121, &qword_27E19A108);
  v90 = v122;
  sub_23B9A721C(v88, v122, &qword_27E19A138);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A140);
  sub_23B9A721C(v89, v90 + *(v91 + 48), &qword_27E19A108);
  sub_23B9846E8(v67, &qword_27E19A108);
  sub_23B9846E8(v48, &qword_27E19A138);
  sub_23B9846E8(v89, &qword_27E19A108);
  return sub_23B9846E8(v88, &qword_27E19A138);
}

uint64_t sub_23B9DA06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A168);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A170);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9A721C(a1, v15, &qword_27E19A030);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v19 = &qword_27E19A030;
    v20 = v15;
LABEL_5:
    sub_23B9846E8(v20, v19);
    return __swift_storeEnumTagSinglePayload(v34, 1, 1, v5);
  }

  sub_23B9DC8E4(v15, v18, type metadata accessor for SubscriptionOfferViewConfiguration);
  sub_23B9A721C(&v18[*(v16 + 32)], v9, &qword_27E198800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B9DC5FC(v18, type metadata accessor for SubscriptionOfferViewConfiguration);
    v19 = &qword_27E198800;
    v20 = v9;
    goto LABEL_5;
  }

  v22 = sub_23B9DC8E4(v9, v12, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  if (v18[*(v16 + 28)] != 2)
  {
    v23 = MEMORY[0x28223BE20](v22);
    *(&v29 - 2) = v12;
    MEMORY[0x28223BE20](v23);
    *(&v29 - 16) = v24 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A178);
    sub_23B9DBBEC();
    v25 = v30;
    sub_23BBDBE98();
    sub_23B97B518(&qword_27E19A198, &qword_27E19A168);
    sub_23B9DBD28();
    v26 = v29;
    v27 = v33;
    sub_23BBDB6E8();
    (*(v32 + 8))(v25, v27);
    sub_23B9DC5FC(v18, type metadata accessor for SubscriptionOfferViewConfiguration);
    v28 = v34;
    (*(v31 + 32))(v34, v26, v5);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v5);
    return sub_23B9DC5FC(v12, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  }

  sub_23B9DC5FC(v18, type metadata accessor for SubscriptionOfferViewConfiguration);
  sub_23B9DC5FC(v12, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
  return __swift_storeEnumTagSinglePayload(v34, 1, 1, v5);
}

uint64_t sub_23B9DA5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBD96B8();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_23BBDB668();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_23B9DA6D0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A190);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - v5);
  if (a1)
  {
    v7 = sub_23BBDBE38();
    v8 = (v6 + *(v4 + 36));
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F48) + 28);
    v10 = *MEMORY[0x277CE1050];
    v11 = sub_23BBDBE58();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *v8 = swift_getKeyPath();
    *v6 = v7;
    sub_23B9A71D0(v6, a2, &qword_27E19A190);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

BOOL sub_23B9DA88C()
{
  sub_23B9DC9E8();
  sub_23BBDA958();
  if (v2)
  {
    return v2 == 1;
  }

  sub_23B9DCA3C();
  sub_23BBDA958();
  result = v1;
  if (v1)
  {

    return 1;
  }

  return result;
}

uint64_t sub_23B9DA908()
{
  sub_23B9DC994();
  sub_23BBDA958();
  return sub_23BBD9BD8() & 1;
}

uint64_t sub_23B9DA950@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23BBDA9D8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A208);
  return sub_23B9DA9A8((a1 + *(v2 + 44)));
}

uint64_t sub_23B9DA9A8@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_23BBDAFD8();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_23BBDAFB8();
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_23BBDAFC8();
  sub_23BBDAFE8();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A210) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

uint64_t sub_23B9DAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_23B9D2D88(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_23B9D2D88(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_23B9DAD70()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA618();
  *v0 = v2;
  return result;
}

uint64_t sub_23B9DAD98()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA618();
  *v0 = v2;
  return result;
}

uint64_t sub_23B9DAE10()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA7A8();
  *v0 = result;
  return result;
}

uint64_t sub_23B9DAE38()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA7A8();
  *v0 = result;
  return result;
}

unint64_t sub_23B9DAEA8()
{
  result = qword_27E19A048;
  if (!qword_27E19A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A020);
    sub_23B9DAF60();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A048);
  }

  return result;
}

unint64_t sub_23B9DAF60()
{
  result = qword_27E19A050;
  if (!qword_27E19A050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A040);
    sub_23B9DB018();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A050);
  }

  return result;
}

unint64_t sub_23B9DB018()
{
  result = qword_27E19A058;
  if (!qword_27E19A058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A038);
    sub_23B97B518(&qword_27E19A060, &qword_27E19A068);
    sub_23B97B518(&qword_27E19A070, &qword_27E19A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A058);
  }

  return result;
}

uint64_t sub_23B9DB0FC()
{
  v3 = *(v0 + 16);
  type metadata accessor for CompactSubscriptionOfferView();
  OUTLINED_FUNCTION_17_5();
  v5 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    goto LABEL_19;
  }

  v7 = v5 + v6[6];
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_8:

    goto LABEL_15;
  }

  v8 = _s11PriceStringOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_23BBDCD08();
    OUTLINED_FUNCTION_12_1();
    v24 = *(v25 + 8);
    v23 = v7;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
    }

    goto LABEL_14;
  }

  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_12_1();
  (*(v10 + 8))(v7 + v64);
  v11 = v7 + *(v2 + 24);
  _s22LocalizedPriceResourceV6FormatOMa(0);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 == 3 || v12 == 2)
  {

    v13 = _s15PricePropertiesVMa(0);
    v61 = *(v13 + 20);
    v62 = v13;
    sub_23BBDCBE8();
    OUTLINED_FUNCTION_12_1();
    v15 = (*(v14 + 8))(v11 + v61);
    v23 = OUTLINED_FUNCTION_19_3(v15, v16, v17, v18, v19, v20, v21, v22, v61, v62);
LABEL_13:
    v24(v23);
  }

LABEL_14:
  v26 = v7 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v26, 1, v8))
  {
    v49 = swift_getEnumCaseMultiPayload();
    switch(v49)
    {
      case 2:
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        (*(v59 + 8))(v26, v60);
        break;
      case 1:

        v50 = _s22LocalizedPriceResourceVMa(0);
        v51 = *(v50 + 20);
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        v63 = *(v52 + 8);
        v65 = v53;
        v63(v26 + v51);
        v54 = v26 + *(v50 + 24);
        _s22LocalizedPriceResourceV6FormatOMa(0);
        v55 = swift_getEnumCaseMultiPayload();
        if (v55 == 3 || v55 == 2)
        {

          v56 = _s15PricePropertiesVMa(0);
          v57 = *(v56 + 20);
          sub_23BBDCBE8();
          OUTLINED_FUNCTION_12_1();
          (*(v58 + 8))(v54 + v57);
          (v63)(v54 + *(v56 + 24), v65);
        }

        break;
      case 0:
        goto LABEL_8;
    }
  }

LABEL_15:
  v27 = v5 + v6[8];
  v28 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
  {
    sub_23BBD96B8();
    OUTLINED_FUNCTION_12_1();
    (*(v29 + 8))(v27);
  }

  v30 = v5 + v6[9];
  sub_23BBD96B8();
  OUTLINED_FUNCTION_12_1();
  (*(v31 + 8))(v30);

  v32 = v6[10];
  v33 = sub_23BBDCDB8();
  if (!__swift_getEnumTagSinglePayload(v5 + v32, 1, v33))
  {
    (*(*(v33 - 8) + 8))(v5 + v32, v33);
  }

LABEL_19:
  (*(*(v3 - 8) + 8))(v5 + v1[9], v3);
  v34 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA438();
    OUTLINED_FUNCTION_12_1();
    (*(v35 + 8))(v5 + v34);
  }

  else
  {
  }

  v36 = OUTLINED_FUNCTION_3_12(v1[11]);
  sub_23B97B450(v36, v37);
  v38 = OUTLINED_FUNCTION_3_12(v1[12]);
  sub_23B97B450(v38, v39);
  v40 = OUTLINED_FUNCTION_3_12(v1[13]);
  sub_23B97B450(v40, v41);
  v42 = OUTLINED_FUNCTION_3_12(v1[14]);
  j__swift_release(v42, v43);
  v44 = OUTLINED_FUNCTION_3_12(v1[15]);
  sub_23B97B450(v44, v45);

  v46 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_12_1();
  (*(v47 + 8))(v5 + v46);

  return swift_deallocObject();
}

uint64_t sub_23B9DB6B0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CompactSubscriptionOfferView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23B9D878C(a1, v8, v5, v6, a2);
}

unint64_t sub_23B9DB750()
{
  result = qword_27E19A088;
  if (!qword_27E19A088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008);
    sub_23B9DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A088);
  }

  return result;
}

unint64_t sub_23B9DB7DC()
{
  result = qword_27E19A090;
  if (!qword_27E19A090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A020);
    sub_23B9DAEA8();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E19A098, &qword_27E19A0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A090);
  }

  return result;
}

unint64_t sub_23B9DB8D0()
{
  result = qword_27E19A0A8;
  if (!qword_27E19A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010);
    sub_23B9DC840(&qword_27E19A0B0, type metadata accessor for SubscriptionOfferViewAXTypeStyleButtonSpacer);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A0A8);
  }

  return result;
}

unint64_t sub_23B9DB9B8()
{
  result = qword_27E19A0B8;
  if (!qword_27E19A0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018);
    sub_23B9DBA70();
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A0B8);
  }

  return result;
}

unint64_t sub_23B9DBA70()
{
  result = qword_27E19A0C0;
  if (!qword_27E19A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A080);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40);
    sub_23B97B518(&qword_27E19A0C8, &qword_27E19A0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A0C0);
  }

  return result;
}

uint64_t sub_23B9DBB5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A110);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_17_0();
  v4(v3);
  return a2;
}

unint64_t sub_23B9DBBEC()
{
  result = qword_27E19A180;
  if (!qword_27E19A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A178);
    sub_23B9DBC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A180);
  }

  return result;
}

unint64_t sub_23B9DBC70()
{
  result = qword_27E19A188;
  if (!qword_27E19A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A190);
    sub_23B97B518(&qword_27E198F78, &qword_27E198F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A188);
  }

  return result;
}

unint64_t sub_23B9DBD28()
{
  result = qword_27E19A1A0;
  if (!qword_27E19A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1A0);
  }

  return result;
}

uint64_t sub_23B9DBD7C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA6D8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_23B9DBE14(uint64_t a1)
{
  sub_23BBDBE58();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_23BBDA5B8();
}

uint64_t sub_23B9DBECC()
{
  v2 = *(v0 + 16);
  type metadata accessor for CompactSubscriptionOfferView();
  OUTLINED_FUNCTION_17_5();
  v4 = *(v3 + 80);
  v73 = *(v5 + 64);
  v6 = sub_23BBD9E98();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v0 + ((v4 + 32) & ~v4);
  v11 = type metadata accessor for SubscriptionOfferViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    goto LABEL_19;
  }

  v12 = v10 + v11[6];
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  v72 = v6;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_8:

    goto LABEL_15;
  }

  v69 = _s11PriceStringOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_23BBDCD08();
    OUTLINED_FUNCTION_12_1();
    v28 = *(v29 + 8);
    v27 = v12;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
    }

    goto LABEL_14;
  }

  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_12_1();
  (*(v14 + 8))(v12 + v67);
  v15 = v12 + *(v6 + 24);
  _s22LocalizedPriceResourceV6FormatOMa(0);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 == 3 || v16 == 2)
  {

    v17 = _s15PricePropertiesVMa(0);
    v64 = *(v17 + 20);
    v65 = v17;
    sub_23BBDCBE8();
    OUTLINED_FUNCTION_12_1();
    v19 = (*(v18 + 8))(v15 + v64);
    v27 = OUTLINED_FUNCTION_19_3(v19, v20, v21, v22, v23, v24, v25, v26, v64, v65);
LABEL_13:
    v28(v27);
  }

LABEL_14:
  v30 = v12 + *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v30, 1, v69))
  {
    v53 = swift_getEnumCaseMultiPayload();
    switch(v53)
    {
      case 2:
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        (*(v62 + 8))(v30, v63);
        break;
      case 1:

        v54 = _s22LocalizedPriceResourceVMa(0);
        v70 = *(v54 + 20);
        sub_23BBDCD08();
        OUTLINED_FUNCTION_12_1();
        v56 = v30 + v70;
        v68 = *(v55 + 8);
        v71 = v57;
        v68(v56);
        v58 = v30 + *(v54 + 24);
        _s22LocalizedPriceResourceV6FormatOMa(0);
        v59 = swift_getEnumCaseMultiPayload();
        if (v59 == 3 || v59 == 2)
        {

          v60 = _s15PricePropertiesVMa(0);
          v66 = *(v60 + 20);
          sub_23BBDCBE8();
          OUTLINED_FUNCTION_12_1();
          (*(v61 + 8))(v58 + v66);
          (v68)(v58 + *(v60 + 24), v71);
        }

        break;
      case 0:
        goto LABEL_8;
    }
  }

LABEL_15:
  v31 = v10 + v11[8];
  v32 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  if (!__swift_getEnumTagSinglePayload(v31, 1, v32))
  {
    sub_23BBD96B8();
    OUTLINED_FUNCTION_12_1();
    (*(v33 + 8))(v31);
  }

  v34 = v10 + v11[9];
  sub_23BBD96B8();
  OUTLINED_FUNCTION_12_1();
  (*(v35 + 8))(v34);

  v36 = v11[10];
  v37 = sub_23BBDCDB8();
  v6 = v72;
  if (!__swift_getEnumTagSinglePayload(v10 + v36, 1, v37))
  {
    (*(*(v37 - 8) + 8))(v10 + v36, v37);
  }

LABEL_19:
  (*(*(v2 - 8) + 8))(v10 + v1[9], v2);
  v38 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA438();
    OUTLINED_FUNCTION_12_1();
    (*(v39 + 8))(v10 + v38);
  }

  else
  {
  }

  v40 = OUTLINED_FUNCTION_4_10(v1[11]);
  sub_23B97B450(v40, v41);
  v42 = OUTLINED_FUNCTION_4_10(v1[12]);
  sub_23B97B450(v42, v43);
  v44 = OUTLINED_FUNCTION_4_10(v1[13]);
  sub_23B97B450(v44, v45);
  v46 = OUTLINED_FUNCTION_4_10(v1[14]);
  j__swift_release(v46, v47);
  v48 = OUTLINED_FUNCTION_4_10(v1[15]);
  sub_23B97B450(v48, v49);

  v50 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
  OUTLINED_FUNCTION_12_1();
  (*(v51 + 8))(v10 + v50);
  (*(v8 + 8))(v0 + ((((v4 + 32) & ~v4) + v73 + v9) & ~v9), v6);

  return swift_deallocObject();
}

uint64_t sub_23B9DC514()
{
  type metadata accessor for CompactSubscriptionOfferView();
  sub_23BBD9E98();

  return sub_23B9D89B0();
}

uint64_t sub_23B9DC5FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9DC650()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA6D8();
  *v0 = result & 1;
  return result;
}

unint64_t sub_23B9DC6A0()
{
  result = qword_27E19A1C0;
  if (!qword_27E19A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198EA0);
    sub_23B9DC758();
    sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1C0);
  }

  return result;
}

unint64_t sub_23B9DC758()
{
  result = qword_27E19A1C8;
  if (!qword_27E19A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E98);
    sub_23B9DC840(&qword_27E19A1D0, type metadata accessor for ProductViewText);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1C8);
  }

  return result;
}

uint64_t sub_23B9DC840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B9DC888(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B9DC8E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B9DC940()
{

  return swift_deallocObject();
}

unint64_t sub_23B9DC994()
{
  result = qword_27E19A1F0;
  if (!qword_27E19A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1F0);
  }

  return result;
}

unint64_t sub_23B9DC9E8()
{
  result = qword_27E19A1F8;
  if (!qword_27E19A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A1F8);
  }

  return result;
}

unint64_t sub_23B9DCA3C()
{
  result = qword_27E19A200;
  if (!qword_27E19A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19A200);
  }

  return result;
}

uint64_t sub_23B9DCAA0()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A018);
  OUTLINED_FUNCTION_11_4();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v1, &qword_27E198D40);
  sub_23BBDA018();
  type metadata accessor for LayoutMetricsModifier(255);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v2, &qword_27E198D40);
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_13();
  sub_23B9DC840(v3, v4);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_23BBDCD08();
}

void sub_23B9DCD64()
{
  sub_23B9DD1EC(319, &qword_27E19A2A8, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9DD1EC(319, &qword_27E197E40, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B9DCE3C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 17) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
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

    switch(v13)
    {
      case 1:
        v14 = a1[v9];
        if (!a1[v9])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *&a1[v9];
        if (*&a1[v9])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9DCF9CLL);
      case 4:
        v14 = *&a1[v9];
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v17 = *a1;
        }

        else
        {
          v16 = 0;
          v17 = *a1;
        }

        return v8 + (v17 | v16) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return __swift_getEnumTagSinglePayload(&a1[v7 + 17] & ~v7, v6, v4);
  }

  v18 = *(a1 + 1);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

void sub_23B9DCFB0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 17) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
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

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
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
        goto LABEL_43;
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

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23B9DD1ACLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if ((v8 & 0x80000000) != 0)
        {
          v18 = &a1[v10 + 17] & ~v10;

          __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[16] = 0;
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23B9DD1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B9DD284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A2B0);
  sub_23BBDC118();
  return v1;
}

uint64_t sub_23B9DD2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v84 = a3;
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v70 = v8;
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  v9 = sub_23BBDAE98();
  v10 = *(a2 + 16);
  OUTLINED_FUNCTION_11_1();
  WitnessTable = swift_getWitnessTable();
  v12 = *(a2 + 24);
  v88 = v9;
  v89 = v10;
  v90 = WitnessTable;
  v91 = v12;
  v13 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_3_2();
  v74 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_5();
  v73 = v16;
  MEMORY[0x28223BE20](v17);
  v72 = &v67 - v18;
  v85 = v9;
  v88 = v9;
  v89 = v10;
  v82 = WitnessTable;
  v83 = v10;
  v90 = WitnessTable;
  v91 = v12;
  v75 = v12;
  v19 = OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_3_2();
  v69 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_5();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v68 = &v67 - v25;
  v26 = sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v19;
  v81 = v13;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_3_2();
  v79 = v33;
  v80 = v32;
  MEMORY[0x28223BE20](v32);
  v78 = &v67 - v34;
  v35 = (v3 + *(a2 + 40));
  v36 = *v35;
  if (*(v35 + 8) != 1)
  {

    sub_23BBDD5A8();
    v52 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v36, 0);
    (*(v28 + 8))(v31, v26);
    if (v88 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v53 = sub_23B9DD284();
    MEMORY[0x28223BE20](v53);
    v40 = v83;
    v51 = v75;
    v66 = v75;
    v54 = v23;
    v55 = swift_checkMetadataState();
    v43 = v82;
    sub_23BBDB9C8();

    v88 = v55;
    v89 = v40;
    v90 = v43;
    v91 = v66;
    v56 = OUTLINED_FUNCTION_1_14();
    v57 = v68;
    v58 = v77;
    sub_23B9D2D88(v54, v77, v56);
    v59 = *(v69 + 8);
    v59(v54, v58);
    sub_23B9D2D88(v57, v58, v56);
    v88 = v55;
    v89 = v40;
    v90 = v43;
    v91 = v66;
    OUTLINED_FUNCTION_0_13();
    v49 = v78;
    sub_23BA82D64();
    v59(v54, v58);
    v59(v57, v58);
    goto LABEL_6;
  }

  if (v36)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23B9DD284();
  v37 = v71;
  (*(v6 + 16))(v71, v3, a2);
  v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v39 = swift_allocObject();
  v40 = v83;
  v41 = v75;
  *(v39 + 16) = v83;
  *(v39 + 24) = v41;
  (*(v6 + 32))(v39 + v38, v37, a2);
  v42 = swift_checkMetadataState();
  v43 = v82;
  v44 = v73;
  sub_23BBDBB28();

  v88 = v42;
  v89 = v40;
  v90 = v43;
  v91 = v41;
  v45 = OUTLINED_FUNCTION_0_13();
  v46 = v72;
  v47 = v81;
  sub_23B9D2D88(v44, v81, v45);
  v48 = *(v74 + 8);
  v48(v44, v47);
  sub_23B9D2D88(v46, v47, v45);
  v88 = v42;
  v89 = v40;
  v90 = v43;
  v91 = v41;
  OUTLINED_FUNCTION_1_14();
  v49 = v78;
  sub_23BA82E14();
  v48(v44, v47);
  v50 = v46;
  v51 = v41;
  v48(v50, v47);
LABEL_6:
  v60 = v85;
  v88 = v85;
  v89 = v40;
  v90 = v43;
  v91 = v51;
  v61 = OUTLINED_FUNCTION_1_14();
  v88 = v60;
  v89 = v40;
  v90 = v43;
  v91 = v51;
  v62 = OUTLINED_FUNCTION_0_13();
  v86 = v61;
  v87 = v62;
  OUTLINED_FUNCTION_2_7();
  v63 = v80;
  v64 = swift_getWitnessTable();
  sub_23B9D2D88(v49, v63, v64);
  return (*(v79 + 8))(v49, v63);
}

uint64_t sub_23B9DDA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AutomaticNavigationModifier();
  sub_23B9D2D88(a1 + *(v11 + 36), a2, a3);
  sub_23B9D2D88(v10, a2, a3);
  return (*(v7 + 8))(v10, a2);
}

uint64_t sub_23B9DDB44()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for AutomaticNavigationModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);
  sub_23B97B5C0(*(v3 + v2[12]), *(v3 + v2[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_23B9DDC50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AutomaticNavigationModifier() - 8);
  return sub_23B9DDA50(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1, v2);
}

uint64_t sub_23B9DDCF0()
{
  type metadata accessor for AutomaticNavigationModifier();
  OUTLINED_FUNCTION_5_11();
  swift_getWitnessTable();
  sub_23BBDAE98();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDACE8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_7();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_23B9DDEC4()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v46 = v1;
    v13 = v12;

    sub_23BB02B28(v11, v13);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v14 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v14, v15);
    v16 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v16, v17);
    v18 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v18, v19);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v20 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v20, v21);
    v22 = sub_23BB02FE4(v8);
    v24 = v23;

    v25 = sub_23BBD97D8();
    v27 = v26;
    sub_23B9A940C(v22, v24);
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = sub_23B9D4CA8(v25, v27);

  if (v28)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  type metadata accessor for ProductViewPurchaseEvent();
  sub_23BBC9A58();
  if (!v31)
  {
LABEL_16:

    return 0;
  }

  v32 = v31;
  sub_23BBC9CD8();
  if (!v33)
  {

    goto LABEL_16;
  }

  v34 = v33;
  v35 = sub_23BB024A0(v32, v30, 1);
  v36 = sub_23BB024A0(v34, v35, 1);
  v37 = *(off_27E19A2B8 + 2);
  if (v37)
  {

    v38 = (v46 + 40);
    do
    {
      v39 = *(v38 - 1);
      v40 = *v38;

      v41 = sub_23BB03A88(v39, v40);
      v43 = v42;

      if (v43)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v47 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010);
        sub_23BBDD8D8();
        v36 = v47;

        sub_23B9A9318();
        sub_23BBDD8F8();
      }

      v38 += 2;
      --v37;
    }

    while (v37);
  }

  return v36;
}

uint64_t type metadata accessor for ProductViewPurchaseEvent()
{
  result = qword_27E19A2C0;
  if (!qword_27E19A2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9DE304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = type metadata accessor for MintViewBasePurchaseEvent(0);
      v11 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_23B9DE3F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for ProductViewBaseEvent(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for MintViewBasePurchaseEvent(0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_23B9DE4B8()
{
  result = type metadata accessor for ProductViewBaseEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MintViewBasePurchaseEvent(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_23B9DE54C(void *a1)
{
  v1 = a1;
  v2 = sub_23B9DE590();

  return v2;
}

uint64_t sub_23B9DE590()
{
  v0 = sub_23BBDCE08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23BBDD018();
  v9 = v8;

  sub_23BB02B28(v7, v9);
  sub_23B9A935C();
  sub_23BBDCDE8();
  v10 = OUTLINED_FUNCTION_0_14();
  sub_23B9A93B4(v10, v11);
  v12 = OUTLINED_FUNCTION_0_14();
  sub_23BB05734(v12, v13);
  v14 = OUTLINED_FUNCTION_0_14();
  sub_23B9A940C(v14, v15);
  sub_23BBDCDD8();
  (*(v1 + 8))(v3, v0);
  v16 = OUTLINED_FUNCTION_0_14();
  sub_23B9A940C(v16, v17);
  v18 = sub_23BB02FE4(v6);
  v20 = v19;

  v21 = sub_23BBD97C8();
  sub_23B9A940C(v18, v20);
  return v21;
}

void sub_23B9DE770()
{
  sub_23B9DF2EC(319, &qword_27E198D20, type metadata accessor for ProductViewConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9DF2EC(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23B9D2354();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B9DE888(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_23BBDCD08() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23BBDCBE8() - 8);
  v8 = *(v7 + 80);
  v9 = v5 | v8 | 7;
  v10 = (v6 + 7 + ((*(v7 + 64) + v5 + ((v8 + 16) & ~v8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 10;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= 3)
  {
    v12 = 3;
  }

  v13 = v12 + ((((v5 + 16) & ~v5) + v6 + v9) & ~v9);
  if (v13 + 1 > ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v48 = v14;
  v44 = sub_23BBD96B8();
  v15 = *(v44 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v17 >= 0)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v45 = v19;
  v20 = v19 - 1;
  v46 = *(a3 + 16);
  v21 = *(v46 - 8);
  v22 = *(v21 + 84);
  v47 = v20;
  if (v22 <= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = *(v21 + 84);
  }

  v24 = *(sub_23BBDA438() - 8);
  if (*(v24 + 64) <= 8uLL)
  {
    v25 = 8;
  }

  else
  {
    v25 = *(v24 + 64);
  }

  v26 = *(v15 + 80);
  if (v16)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  v28 = *(v21 + 80);
  if (!a2)
  {
    return 0;
  }

  v29 = v48 + v9 + 1;
  v30 = (((v9 | v26) + 32) & ~(v9 | v26)) + v28 + ((v27 + *(v15 + 64) + ((v26 + 16 + ((v48 + 8 + (v29 & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v23 < a2)
  {
    v31 = *(v24 + 80) & 0xF8 | 7;
    v32 = ((v25 + ((*(v21 + 64) + v31 + (v30 & ~v28)) & ~v31) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v32 <= 3)
    {
      v33 = ((a2 - v23 + 255) >> 8) + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    switch(v35)
    {
      case 1:
        v36 = a1[v32];
        if (!a1[v32])
        {
          break;
        }

        goto LABEL_45;
      case 2:
        v36 = *&a1[v32];
        if (*&a1[v32])
        {
          goto LABEL_45;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9DED38);
      case 4:
        v36 = *&a1[v32];
        if (!v36)
        {
          break;
        }

LABEL_45:
        v38 = v32 > 3;
        if (v32 <= 3)
        {
          v39 = (v36 - 1) << (8 * v32);
        }

        else
        {
          v39 = 0;
        }

        if (v38)
        {
          v43 = *a1;
        }

        else
        {
          v43 = *a1;
        }

        return v23 + (v43 | v39) + 1;
      default:
        break;
    }
  }

  if (v47 >= v22)
  {
    if (v45 == 0x7FFFFFFF)
    {
      v40 = *(a1 + 1);
      if (v40 >= 0xFFFFFFFF)
      {
        LODWORD(v40) = -1;
      }

      v41 = v40 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + 16 + ((v48 + 8 + ((v29 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v9 | v26) + 16) & ~(v9 | v26))) & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26, v16, v44);
      v41 = EnumTagSinglePayload - 1;
      if (EnumTagSinglePayload < 2)
      {
        v41 = 0;
      }
    }

    if (v41 >= 2)
    {
      return v41 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return __swift_getEnumTagSinglePayload(&a1[v30] & ~v28, v22, v46);
  }
}

void sub_23B9DED4C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_23BBDCD08() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23BBDCBE8() - 8);
  v9 = *(v8 + 80);
  v10 = v6 | v9 | 7;
  v11 = (v7 + 7 + ((*(v8 + 64) + v6 + ((v9 + 16) & ~v9)) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 10;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  if (v13 <= 3)
  {
    v13 = 3;
  }

  v14 = v13 + ((((v6 + 16) & ~v6) + v7 + v10) & ~v10);
  if (v14 + 1 > ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v54 = sub_23BBD96B8();
  v17 = *(v54 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= 0)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v55 = v20;
  v56 = v21;
  v22 = v21 - 1;
  v57 = *(a4 + 16);
  v23 = *(v57 - 8);
  v58 = *(v23 + 84);
  v59 = v22;
  if (v58 <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = *(v23 + 84);
  }

  v25 = sub_23BBDA438();
  v26 = v18;
  v27 = 0;
  v28 = *(v25 - 8);
  if (*(v28 + 64) <= 8uLL)
  {
    v29 = 8;
  }

  else
  {
    v29 = *(v28 + 64);
  }

  v30 = *(v17 + 80);
  v31 = v16 + v10 + 1;
  v32 = v16 + 8 + (v31 & ~v10);
  v33 = v30 + 16;
  v34 = *(v17 + 64);
  if (!v26)
  {
    ++v34;
  }

  v35 = v34 + ((v30 + 16 + (v32 & 0xFFFFFFFFFFFFFFF8)) & ~v30) + 7;
  v36 = (((v10 | v30) + 32) & ~(v10 | v30)) + 8;
  v37 = *(v23 + 80);
  v38 = v36 + v37 + (v35 & 0xFFFFFFFFFFFFFFF8);
  v39 = *(v28 + 80) & 0xF8 | 7;
  v40 = ((v29 + ((*(v23 + 64) + v39 + (v38 & ~v37)) & ~v39) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 < a3)
  {
    if (v40 <= 3)
    {
      v41 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v27 = v42;
    }

    else
    {
      v27 = 0;
    }
  }

  if (v24 < a2)
  {
    v43 = ~v24 + a2;
    bzero(a1, v40);
    if (v40 <= 3)
    {
      v44 = (v43 >> 8) + 1;
    }

    else
    {
      v44 = 1;
    }

    if (v40 > 3)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }

    switch(v27)
    {
      case 1:
        *(a1 + v40) = v44;
        return;
      case 2:
        *(a1 + v40) = v44;
        return;
      case 3:
        goto LABEL_77;
      case 4:
        *(a1 + v40) = v44;
        return;
      default:
        return;
    }
  }

  v45 = ~v30;
  v46 = ~v37;
  switch(v27)
  {
    case 1:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    case 2:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    case 3:
LABEL_77:
      __break(1u);
      JUMPOUT(0x23B9DF2ACLL);
    case 4:
      *(a1 + v40) = 0;
      goto LABEL_52;
    default:
LABEL_52:
      if (!a2)
      {
        return;
      }

LABEL_53:
      if (v59 < v58)
      {
        v47 = (a1 + v38) & v46;
        v48 = a2;
        v26 = v58;
        v49 = v57;
LABEL_55:

        __swift_storeEnumTagSinglePayload(v47, v48, v26, v49);
        return;
      }

      v50 = v36 + (v35 & 0xFFFFFFF8);
      if (v59 < a2)
      {
        if (!v50)
        {
          return;
        }

        v51 = a2 - v56;
LABEL_70:
        bzero(a1, v50);
        *a1 = v51;
        return;
      }

      v51 = a2 - v56;
      if (a2 >= v56)
      {
        if (!v50)
        {
          return;
        }

        goto LABEL_70;
      }

      if (v56 == 0x7FFFFFFF)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *a1 = a2 - 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = a2;
        }

        return;
      }

      v52 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v10 | v30) + 16) & ~(v10 | v30));
      if (a2 < v55)
      {
        v47 = (v33 + ((v16 + 8 + ((v52 + v31) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & v45;
        v48 = a2 + 2;
        v49 = v54;
        goto LABEL_55;
      }

      v53 = (((v33 + (v32 & 0xFFFFFFF8)) & v45) + v34 + 7) & 0xFFFFFFF8;
      if (v53 != -8)
      {
        bzero(v52, (v53 + 8));
        *v52 = a2 - v55;
      }

      return;
  }
}

void sub_23B9DF2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23B9DF394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = *(a1 + 24);
  v26 = *(a1 + 16);
  type metadata accessor for ProductViewIconWrapper();
  v34 = v2;
  v35 = OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A350);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E68);
  OUTLINED_FUNCTION_8_9();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v4 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8);
  v10 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v29 = v26;
  v30 = v3;
  v31 = v27;
  sub_23B9BE15C();
  sub_23BBDC068();
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBA08();
  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_1_15();
  v21 = sub_23B97B518(v20, &qword_27E198DF8);
  v32 = WitnessTable;
  v33 = v21;
  OUTLINED_FUNCTION_0();
  v22 = swift_getWitnessTable();
  sub_23B9D2D88(v16, v10, v22);
  v23 = *(v12 + 8);
  v23(v16, v10);
  sub_23B9D2D88(v18, v10, v22);
  return (v23)(v18, v10);
}

uint64_t sub_23B9DF6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v86 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E68);
  v9 = MEMORY[0x28223BE20](v114);
  v116 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = (&v86 - v11);
  v12 = sub_23BBDB148();
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x28223BE20](v12);
  v107 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A358);
  MEMORY[0x28223BE20](v120);
  v106 = (&v86 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A350);
  v111 = *(v15 - 8);
  v112 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v110 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v86 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v105 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - v23;
  v90 = sub_23BBDA438();
  v97 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v92 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ProductViewIconWrapper();
  v88 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  WitnessTable = swift_getWitnessTable();
  __src = v26;
  v148 = WitnessTable;
  v89 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v32 = &v86 - v31;
  v98 = v33;
  v34 = sub_23BBDA358();
  v99 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v91 = &v86 - v35;
  v101 = v36;
  v37 = sub_23BBDA358();
  v100 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v93 = &v86 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  v102 = v37;
  v39 = sub_23BBDA358();
  v118 = *(v39 - 8);
  v119 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  v104 = &v86 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v94 = &v86 - v43;
  MEMORY[0x28223BE20](v42);
  v121 = &v86 - v44;
  v122 = a2;
  v123 = a3;
  v124 = a1;
  v87 = v28;
  v95 = a2;
  sub_23BA33338(sub_23B9E10F0, v28);
  v45 = a1;
  sub_23B99FCE0(a1, v24, &qword_27E198D80);
  v103 = type metadata accessor for ProductViewConfiguration(0);
  LODWORD(a2) = __swift_getEnumTagSinglePayload(v24, 1, v103);
  sub_23B979910(v24, &qword_27E198D80);
  if (a2 == 1)
  {
    v46 = v92;
    sub_23BBDA428();
    v47 = v90;
  }

  else
  {
    __src = MEMORY[0x277D84F90];
    v86 = sub_23B9E10FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50);
    v46 = v92;
    v47 = v90;
    sub_23BBDD6C8();
  }

  v48 = v89;
  v49 = v87;
  sub_23BBDBC38();
  (*(v97 + 8))(v46, v47);
  (*(v88 + 8))(v49, v26);
  v145 = 1;
  v144 = 1;
  v143 = 1;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v146 = 0;
  __src = 0;
  LOBYTE(v148) = 1;
  v149 = 0;
  v150 = 1;
  v151 = 0;
  v152 = 1;
  v153 = 0x4054000000000000;
  v154 = 0;
  v155 = 0x4061800000000000;
  v156 = 0;
  v157 = 0x4061800000000000;
  v158 = 0;
  v131 = v26;
  v132 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v98;
  v52 = sub_23B9DCCD0(v98, OpaqueTypeConformance2);
  v53 = v91;
  sub_23BA19724(&__src, v52, v54, v51, OpaqueTypeConformance2);
  (*(v96 + 8))(v32, v51);
  v55 = sub_23B9A6A40();
  v138 = OpaqueTypeConformance2;
  v139 = v55;
  v56 = v101;
  v57 = swift_getWitnessTable();
  v58 = v93;
  sub_23BBDB718();
  (*(v99 + 8))(v53, v56);
  v136 = v57;
  v137 = MEMORY[0x277CE01B0];
  v59 = v102;
  v60 = swift_getWitnessTable();
  v61 = v94;
  sub_23BBDB858();
  (*(v100 + 8))(v58, v59);
  v62 = sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
  v134 = v60;
  v135 = v62;
  v63 = v119;
  v100 = swift_getWitnessTable();
  sub_23B9D2D88(v61, v63, v100);
  v101 = *(v118 + 1);
  v102 = (v118 + 8);
  v101(v61, v63);
  v64 = sub_23BBDAB48();
  v65 = v106;
  *v106 = v64;
  *(v65 + 8) = 0x4010000000000000;
  *(v65 + 16) = 0;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A360);
  v67 = v45;
  sub_23B9E0550(v45, v95, a3, v65 + *(v66 + 44));
  v68 = v107;
  sub_23BBDB128();
  v99 = sub_23B97B518(&qword_27E19A368, &qword_27E19A358);
  sub_23BBDB968();
  (*(v108 + 8))(v68, v109);
  sub_23B979910(v65, &qword_27E19A358);
  v69 = v105;
  sub_23B99FCE0(v67, v105, &qword_27E198D80);
  v70 = v103;
  if (__swift_getEnumTagSinglePayload(v69, 1, v103) == 1)
  {
    sub_23B979910(v69, &qword_27E198D80);
    v71 = 1;
  }

  else
  {
    sub_23B9E11D4(v69 + *(v70 + 24), v117, type metadata accessor for ProductViewButtonConfiguration);
    sub_23B9A7170(v69, type metadata accessor for ProductViewConfiguration);
    v71 = 0;
  }

  v72 = type metadata accessor for ProductViewButtonConfiguration(0);
  v73 = v117;
  __swift_storeEnumTagSinglePayload(v117, v71, 1, v72);
  v74 = v115;
  sub_23BA7C678(v73, v115);
  v75 = v119;
  v76 = v104;
  (*(v118 + 2))(v104, v121, v119);
  v131 = v76;
  v77 = v110;
  v78 = v111;
  v79 = *(v111 + 16);
  v80 = v19;
  v118 = v19;
  v81 = v112;
  v79(v110, v80, v112);
  v132 = v77;
  v82 = v116;
  sub_23B99FCE0(v74, v116, &qword_27E198E68);
  v133 = v82;
  v130[0] = v75;
  v130[1] = v81;
  v130[2] = v114;
  v125 = v120;
  v126 = v99;
  v127 = v100;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = sub_23B97B518(&qword_27E19A370, &qword_27E198E68);
  sub_23BB6739C(&v131, 3, v130);
  sub_23B979910(v74, &qword_27E198E68);
  v83 = *(v78 + 8);
  v83(v118, v81);
  v84 = v101;
  v101(v121, v75);
  sub_23B979910(v82, &qword_27E198E68);
  v83(v77, v81);
  return v84(v76, v75);
}

uint64_t sub_23B9E0458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LargeProductView();
  sub_23B9D2D88(a1 + *(v9 + 36), a2, a3);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23B9E0550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a2;
  v92 = a3;
  v97 = a4;
  v89 = sub_23BBDA928();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v96 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v86 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (v81 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v85 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v81 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (v81 - v21);
  v23 = type metadata accessor for ProductViewText(0);
  v24 = MEMORY[0x28223BE20](v23);
  v94 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v81 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v81 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v81 - v32;
  v93 = a1;
  sub_23B99FCE0(a1, v22, &qword_27E198D80);
  v90 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v90) == 1)
  {
    sub_23B979910(v22, &qword_27E198D80);
  }

  else
  {
    v35 = *v22;
    v34 = v22[1];

    sub_23B9A7170(v22, type metadata accessor for ProductViewConfiguration);
    if (v34)
    {
      *v14 = v35;
      v14[1] = v34;
      v36 = type metadata accessor for ProductViewText.Storage(0);
      swift_storeEnumTagMultiPayload();
      v37 = v14;
      v38 = 0;
      v39 = v36;
      goto LABEL_6;
    }
  }

  v39 = type metadata accessor for ProductViewText.Storage(0);
  v37 = v14;
  v38 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v37, v38, 1, v39);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for LayoutMetrics(0);
  v84 = __swift_project_value_buffer(v40, &unk_27E1BF7F8);
  sub_23B9E11D4(v84, v31, type metadata accessor for LayoutMetrics);
  v41 = type metadata accessor for PlaceholderLayouts(0);
  v42 = *(v41 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v40, &unk_27E1BF810);
  sub_23B9E11D4(v83, &v31[v42], type metadata accessor for LayoutMetrics);
  v43 = *(v41 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v82 = __swift_project_value_buffer(v40, &unk_27E1BF828);
  sub_23B9E11D4(v82, &v31[v43], type metadata accessor for LayoutMetrics);
  v44 = &v31[v23[10]];
  v45 = v23[13];
  *&v31[v45] = swift_getKeyPath();
  v81[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v46 = v23[14];
  *&v31[v46] = swift_getKeyPath();
  v81[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B9E1164(v14, &v31[v23[5]]);
  v31[v23[6]] = 0;
  v31[v23[7]] = 1;
  v31[v23[8]] = 0;
  *v44 = 0;
  *(v44 + 1) = 0;
  v114 = 1;
  v112 = 0;
  v110 = 0;
  v108 = 1;
  v106 = 0;
  v104 = 0;
  v47 = &v31[v23[9]];
  *v47 = 0;
  v47[8] = 1;
  *(v47 + 3) = *&v113[3];
  *(v47 + 9) = *v113;
  *(v47 + 2) = 0x405E000000000000;
  v47[24] = 0;
  *(v47 + 7) = *&v111[3];
  *(v47 + 25) = *v111;
  *(v47 + 4) = 0x405E000000000000;
  v47[40] = 0;
  v48 = *v109;
  *(v47 + 11) = *&v109[3];
  *(v47 + 41) = v48;
  *(v47 + 6) = 0;
  v47[56] = v108;
  v49 = *v107;
  *(v47 + 15) = *&v107[3];
  *(v47 + 57) = v49;
  *(v47 + 8) = 0x4032000000000000;
  v47[72] = v106;
  v50 = *v105;
  *(v47 + 19) = *&v105[3];
  *(v47 + 73) = v50;
  *(v47 + 10) = 0x4032000000000000;
  v47[88] = v104;
  *&v31[v23[11]] = swift_getKeyPath();
  *&v31[v23[12]] = swift_getKeyPath();
  sub_23B9A7268(v31, v33);
  v51 = type metadata accessor for LargeProductView();
  v52 = v93;
  v53 = v93 + *(v51 + 44);
  v54 = *v53;
  if (*(v53 + 8) == 1)
  {
    v55 = v95;
    if ((v54 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v56 = sub_23BBDB338();
    sub_23BBD9978();

    v57 = v87;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v54, 0);
    (*(v88 + 8))(v57, v89);
    v55 = v95;
    if (v103 != 1)
    {
      goto LABEL_19;
    }
  }

  sub_23B99FCE0(v52, v20, &qword_27E198D80);
  if (__swift_getEnumTagSinglePayload(v20, 1, v90) == 1)
  {
    sub_23B979910(v20, &qword_27E198D80);
    goto LABEL_20;
  }

  v58 = *(v20 + 2);
  v59 = *(v20 + 3);

  sub_23B9A7170(v20, type metadata accessor for ProductViewConfiguration);
  v60 = sub_23B9D4CA8(v58, v59);

  if ((v60 & 1) == 0)
  {
LABEL_20:
    v63 = v85;
    sub_23B99FCE0(v52, v85, &qword_27E198D80);
    if (__swift_getEnumTagSinglePayload(v63, 1, v90) == 1)
    {
      sub_23B979910(v63, &qword_27E198D80);
    }

    else
    {
      v65 = *(v63 + 16);
      v64 = *(v63 + 24);

      sub_23B9A7170(v63, type metadata accessor for ProductViewConfiguration);
      if (v64)
      {
        v66 = v86;
        *v86 = v65;
        v66[1] = v64;
        v67 = v66;
        v68 = type metadata accessor for ProductViewText.Storage(0);
        swift_storeEnumTagMultiPayload();
        v69 = v67;
        v70 = 0;
        v71 = v68;
LABEL_25:
        __swift_storeEnumTagSinglePayload(v69, v70, 1, v71);
        sub_23B9E11D4(v84, v28, type metadata accessor for LayoutMetrics);
        sub_23B9E11D4(v83, &v28[*(v41 + 20)], type metadata accessor for LayoutMetrics);
        sub_23B9E11D4(v82, &v28[*(v41 + 24)], type metadata accessor for LayoutMetrics);
        v72 = &v28[v23[10]];
        v73 = v23[13];
        *&v28[v73] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v74 = v23[14];
        *&v28[v74] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_23B9E1164(v67, &v28[v23[5]]);
        v28[v23[6]] = 1;
        v28[v23[7]] = 1;
        v28[v23[8]] = 0;
        *v72 = 0;
        *(v72 + 1) = 0;
        v103 = 1;
        v102 = 0;
        v101 = 0;
        v100 = 1;
        v99 = 0;
        v98 = 0;
        v75 = &v28[v23[9]];
        *v75 = 0;
        v75[8] = 1;
        *(v75 + 2) = 0x4054000000000000;
        v75[24] = 0;
        *(v75 + 4) = 0x4054000000000000;
        v75[40] = 0;
        *(v75 + 6) = 0;
        v75[56] = 1;
        *(v75 + 8) = 0x4024000000000000;
        v75[72] = 0;
        *(v75 + 10) = 0x4024000000000000;
        v75[88] = 0;
        *&v28[v23[11]] = swift_getKeyPath();
        *&v28[v23[12]] = swift_getKeyPath();
        sub_23B9A7268(v28, v55);
        v61 = v55;
        v62 = 0;
        goto LABEL_26;
      }
    }

    v71 = type metadata accessor for ProductViewText.Storage(0);
    v67 = v86;
    v69 = v86;
    v70 = 1;
    goto LABEL_25;
  }

LABEL_19:
  v61 = v55;
  v62 = 1;
LABEL_26:
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v23);
  v76 = v94;
  sub_23B9E11D4(v33, v94, type metadata accessor for ProductViewText);
  v77 = v96;
  sub_23B99FCE0(v55, v96, &qword_27E198E88);
  v78 = v97;
  sub_23B9E11D4(v76, v97, type metadata accessor for ProductViewText);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A378);
  sub_23B99FCE0(v77, v78 + *(v79 + 48), &qword_27E198E88);
  sub_23B979910(v55, &qword_27E198E88);
  sub_23B9A7170(v33, type metadata accessor for ProductViewText);
  sub_23B979910(v77, &qword_27E198E88);
  return sub_23B9A7170(v76, type metadata accessor for ProductViewText);
}

unint64_t sub_23B9E10FC()
{
  result = qword_27E198E48;
  if (!qword_27E198E48)
  {
    sub_23BBDA438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E48);
  }

  return result;
}

uint64_t sub_23B9E1164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9E11D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9E1234()
{
  type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E20);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A350);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E68);
  OUTLINED_FUNCTION_8_9();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v0, &qword_27E198DF8);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return swift_getTupleTypeMetadata3();
}

uint64_t SubscriptionStoreButton.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionStoreButton();
  v3 = a1 + v2[5];
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 73) = 0;
  v6 = a1 + v2[8];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  return sub_23B9E7210();
}

uint64_t type metadata accessor for SubscriptionStoreButton()
{
  result = qword_27E19A3A0;
  if (!qword_27E19A3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B9E1548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for SubscriptionStoreButton() + 24));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v7 + 32);
  LODWORD(v7) = *(v7 + 33);
  v11 = v9;
  v16 = v9;
  v17 = v8;
  if (v7 == 1)
  {
    result = sub_23B9A165C(v9, *(&v9 + 1), v8);
    v14 = v16;
    v13 = v17;
  }

  else
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9A163C(v11, *(&v16 + 1), v17, *(&v17 + 1), v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v14 = v18;
    v13 = v19;
    LOBYTE(v10) = v20;
  }

  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_23B9E1784(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  memcpy(__srca, __src, 0x49uLL);
  sub_23B9E6BA4(__dst, &v3);
  return sub_23BBD0308(__srca);
}

uint64_t sub_23B9E17F0()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for SubscriptionStoreButton() + 32));
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_23B9E1948()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SubscriptionStoreButton() + 36);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
  }

  else
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9B6460(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_23B9E1AA8()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2FC88();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9E1AD0()
{
  OUTLINED_FUNCTION_13_1();
  v0 = sub_23BB2FC88();
  return OUTLINED_FUNCTION_15_1(v0);
}

uint64_t sub_23B9E1AF8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB2FCEC();
  *v0 = result;
  return result;
}

uint64_t sub_23B9E1B20()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BB2FCEC();
  *v0 = result;
  return result;
}

void *sub_23B9E1B78@<X0>(uint64_t a1@<X8>)
{
  v21 = sub_23BBDA928();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  MEMORY[0x28223BE20](v7 - 8);
  sub_23B9E7268();
  sub_23B9E1548(v26);
  sub_23BB9494C();
  sub_23B9E1548(v27);
  v9 = v28;
  v8 = v29;
  v10 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if (v8 >= 2)
  {
    if (v9 == v10 && v8 == v11)
    {

      sub_23B979910(v27, &qword_27E1988B0);
      v12 = 1;
    }

    else
    {
      v12 = sub_23BBDDA88();

      sub_23B979910(v27, &qword_27E1988B0);
    }
  }

  else
  {

    v12 = 0;
  }

  sub_23B9E1548(v30);
  if (v31 == 1)
  {
    v14 = 0;
  }

  else
  {
    v15 = v30[0];
    sub_23B979910(v30, &qword_27E1988B0);
    v14 = v15 ^ 1;
  }

  v16 = *(type metadata accessor for SubscriptionStoreButton() + 28);
  memcpy(v25, (v1 + v16), 0x4AuLL);
  if (v25[73])
  {
    memcpy(v24, (v1 + v16), sizeof(v24));
    memcpy(v23, (v1 + v16), 0x4AuLL);
    sub_23B9E6BA4(v23, &v22);
  }

  else
  {

    sub_23BBDD5A8();
    v17 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(v25, &qword_27E19A390);
    (*(v3 + 8))(v5, v21);
  }

  memcpy(v23, v24, 0x49uLL);
  sub_23B9E7210();
  v18 = type metadata accessor for SubscriptionOptionButtonModel();
  *(a1 + v18[5]) = v12 & 1;
  *(a1 + v18[6]) = v14 & 1;
  return memcpy((a1 + v18[7]), v23, 0x49uLL);
}

void *sub_23B9E1F20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  MEMORY[0x28223BE20](v8 - 8);
  sub_23B9E7268();
  sub_23B9E1548(v17);
  sub_23BB9494C();
  v9 = *(type metadata accessor for SubscriptionStoreButton() + 28);
  memcpy(__dst, (v1 + v9), 0x4AuLL);
  if ((__dst[9] & 0x100) != 0)
  {
    memcpy(v16, (v1 + v9), sizeof(v16));
    memcpy(v15, (v1 + v9), 0x4AuLL);
    sub_23B9E6BA4(v15, &v14);
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(__dst, &qword_27E19A390);
    (*(v4 + 8))(v6, v3);
  }

  memcpy(v15, v16, 0x49uLL);
  sub_23B9E7210();
  v11 = type metadata accessor for SubscriptionPickerSubscribeButtonModel();
  return memcpy((a1 + *(v11 + 20)), v15, 0x49uLL);
}

uint64_t sub_23B9E21D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3E8);
  MEMORY[0x28223BE20](v1 - 8);
  v568 = v464 - v2;
  v535 = sub_23BBDCBE8();
  v3 = *(v535 - 8);
  v4 = MEMORY[0x28223BE20](v535);
  v521 = v464 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v520 = v464 - v6;
  v7 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v7 - 8);
  v513 = v464 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s11PriceStringOMa(0);
  v10 = MEMORY[0x28223BE20](v9);
  v547 = v464 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v530 = v464 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v542 = v464 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v529 = v464 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v505 = (v464 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v504 = v464 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v503 = (v464 - v23);
  MEMORY[0x28223BE20](v22);
  v502 = v464 - v24;
  v561 = sub_23BBDCD08();
  v25 = *(v561 - 8);
  v26 = MEMORY[0x28223BE20](v561);
  v512 = v464 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v511 = v464 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v488 = v464 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v487 = v464 - v33;
  MEMORY[0x28223BE20](v32);
  v524 = v464 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v528 = v464 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v493 = v464 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v501 = v464 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v546 = v464 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v486 = v464 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v556 = v464 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v500 = v464 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v474 = v464 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v480 = v464 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v522 = v464 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v473 = v464 - v57;
  MEMORY[0x28223BE20](v56);
  v479 = v464 - v58;
  v569 = sub_23BBDCC88();
  v564 = *(v569 - 8);
  v59 = MEMORY[0x28223BE20](v569);
  v485 = v464 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v499 = v464 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v523 = v464 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v498 = v464 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v534 = v464 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v472 = v464 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v478 = v464 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v471 = v464 - v74;
  MEMORY[0x28223BE20](v73);
  v477 = v464 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F0);
  v77 = MEMORY[0x28223BE20](v76 - 8);
  v510 = (v464 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = MEMORY[0x28223BE20](v77);
  v527 = (v464 - v80);
  v81 = MEMORY[0x28223BE20](v79);
  v509 = (v464 - v82);
  v83 = MEMORY[0x28223BE20](v81);
  v526 = (v464 - v84);
  v85 = MEMORY[0x28223BE20](v83);
  v484 = (v464 - v86);
  v87 = MEMORY[0x28223BE20](v85);
  v497 = (v464 - v88);
  v89 = MEMORY[0x28223BE20](v87);
  v483 = (v464 - v90);
  MEMORY[0x28223BE20](v89);
  v496 = (v464 - v91);
  v562 = _s22LocalizedPriceResourceVMa(0);
  v92 = MEMORY[0x28223BE20](v562);
  v482 = v464 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x28223BE20](v92);
  v495 = v464 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v481 = v464 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v494 = v464 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v470 = v464 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v476 = v464 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v469 = v464 - v105;
  MEMORY[0x28223BE20](v104);
  v475 = v464 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  v108 = MEMORY[0x28223BE20](v107 - 8);
  v515 = v464 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x28223BE20](v108);
  v532 = v464 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v514 = v464 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v531 = v464 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v541 = v464 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v540 = v464 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v533 = v464 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v490 = v464 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v508 = v464 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v489 = v464 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v507 = v464 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v519 = v464 - v131;
  MEMORY[0x28223BE20](v130);
  v518 = v464 - v132;
  v554 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v554);
  v557 = (v464 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v555 = *(v134 - 8);
  v135 = MEMORY[0x28223BE20](v134);
  v567 = v464 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v135);
  v566 = v464 - v137;
  v553 = type metadata accessor for SubscriptionPickerSubscribeButtonModel();
  MEMORY[0x28223BE20](v553);
  v570 = v464 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199798);
  v551 = *(v552 - 8);
  MEMORY[0x28223BE20](v552);
  v140 = v464 - v139;
  v141 = type metadata accessor for SubscriptionStoreButton();
  MEMORY[0x28223BE20](v141);
  v143 = v464 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_23BBDA928();
  v145 = MEMORY[0x28223BE20](v144);
  v149 = v464 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v559 = v141;
  v150 = *(v141 + 32);
  v565 = v0;
  v151 = (v0 + v150);
  v152 = *v151;
  LODWORD(v151) = *(v151 + 8);
  v560 = v9;
  v563 = v134;
  v492 = v143;
  v538 = v149;
  v539 = v145;
  v548 = v147;
  if (v151 == 1)
  {
    if ((v152 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v153 = v25;
    v154 = v3;
    v155 = v146;
    v156 = v147;

    sub_23BBDD5A8();
    v157 = sub_23BBDB338();
    v143 = v492;
    sub_23BBD9978();

    v134 = v563;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v152, 0);
    v158 = v155;
    v3 = v154;
    v25 = v153;
    (*(v156 + 8))(v149, v158);
    result = MEMORY[0x277D84F90];
    if (LOBYTE(__dst[0]) != 1)
    {
      return result;
    }
  }

  v160 = sub_23B9E1948();
  sub_23B9E7268();
  v161 = *(v160 + 16);
  if (v161)
  {
    v577 = MEMORY[0x277D84F90];
    sub_23BA92C28();
    v565 = v577;
    v549 = v160 + ((*(v555 + 80) + 32) & ~*(v555 + 80));
    memcpy(__dst, &v143[*(v559 + 28)], 0x4AuLL);
    v162 = 0;
    v536 = (v548 + 8);
    v545 = (v564 + 32);
    v543 = (v25 + 32);
    v516 = (v25 + 8);
    v517 = (v25 + 16);
    v544 = (v564 + 8);
    v506 = (v3 + 8);
    v491 = "ACTION_SUBSCRIBE";
    v464[2] = "k_sha1Hash";
    v464[3] = "LABEL_CROSSGRADE_DOWNGRADE_";
    v464[1] = "ACTION_CROSSGRADE_DOWNGRADE";
    v548 = v161 - 1;
    v163 = v569;
    v558 = v140;
    v550 = v160;
    while (2)
    {
      if (v162 >= *(v160 + 16))
      {
        __break(1u);
        JUMPOUT(0x23B9E5688);
      }

      sub_23B9E7268();
      sub_23B9E7268();
      if ((__dst[9] & 0x100) != 0)
      {
        memcpy(__src, __dst, sizeof(__src));
        memcpy(v572, __dst, 0x4AuLL);
        sub_23B9E6BA4(v572, v571);
      }

      else
      {

        sub_23BBDD5A8();
        v164 = sub_23BBDB338();
        sub_23BBD9978();

        v165 = v538;
        sub_23BBDA918();
        swift_getAtKeyPath();
        sub_23B979910(__dst, &qword_27E19A390);
        (*v536)(v165, v539);
      }

      v166 = v570;
      memcpy(v572, __src, 0x49uLL);
      sub_23B9E7210();
      v167 = &v166[*(v553 + 20)];
      memcpy(v167, v572, 0x49uLL);
      sub_23B9E71B8(v566, type metadata accessor for SubscriptionStoreCopyWriter);
      v168 = *(v167 + 16);
      v564 = v167;
      switch(v168)
      {
        case 0:
        case 2:
          v169 = v533;
          sub_23B979510();
          if (__swift_getEnumTagSinglePayload(v169, 1, v163) == 1)
          {
            sub_23B979910(v169, &unk_27E19FEF0);
            v170 = v557;
LABEL_14:
            v219 = sub_23BBDAA48();
            v221 = v220;
            v223 = v222;
            v225 = v224;
LABEL_37:
            *v170 = v219;
            v170[1] = v221;
            *(v170 + 16) = v223 & 1;
            v170[3] = v225;
            v192 = v556;
            goto LABEL_38;
          }

          (*v545)(v534, v169, v163);
          v177 = v520;
          sub_23BBDCBF8();
          v178 = v521;
          sub_23BBDCBD8();
          sub_23B9E7160();
          sub_23BBDD218();
          sub_23BBDD218();
          if (v571[0] == v573 && v571[1] == v574)
          {

            v204 = *v506;
            v205 = v535;
            (*v506)(v178, v535);
            v204(v177, v205);
            v170 = v557;
          }

          else
          {
            v180 = sub_23BBDDA88();

            v181 = *v506;
            v182 = v535;
            (*v506)(v178, v535);
            v181(v177, v182);
            v170 = v557;
            if ((v180 & 1) == 0)
            {
              (*v544)(v534, v569);
              goto LABEL_14;
            }
          }

          v219 = sub_23BBDAA48();
          v221 = v206;
          v223 = v207;
          v225 = v208;
          (*v544)(v534, v569);
          goto LABEL_37;
        case 1:
          v171 = *&v166[*(v134 + 36)];
          v172 = v557;
          if ((v171 & 8) != 0 || (v171 & 6) != 0)
          {
            sub_23BBDAA28();
            sub_23BBDAA18();
            sub_23BBDAA08();
            sub_23BBDAA18();
            v193 = sub_23BBDAA58();
          }

          else
          {

            v193 = sub_23BBDAA48();
          }

          *v172 = v193;
          v172[1] = v194;
          *(v172 + 16) = v195 & 1;
          v172[3] = v196;
          v192 = v556;
LABEL_38:
          v191 = v568;
          goto LABEL_71;
        case 3:
          v559 = v162;
          v537 = *(v134 + 40);
          v173 = v518;
          sub_23B979510();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v173, 1, v163);
          sub_23B979910(v173, &unk_27E19FEF0);
          v175 = v522;
          if (EnumTagSinglePayload == 1)
          {
            goto LABEL_19;
          }

          v197 = v507;
          sub_23B979510();
          v198 = 1;
          if (__swift_getEnumTagSinglePayload(v197, 1, v163) != 1)
          {
            v199 = v477;
            (*v545)(v477, v507, v163);
            v200 = v570;
            v201 = v163;
            v202 = v479;
            sub_23B979510();
            v203 = v561;
            if (__swift_getEnumTagSinglePayload(v202, 1, v561) == 1)
            {
              (*v544)(v199, v201);
              v198 = 1;
              v163 = v201;
            }

            else
            {
              v226 = v524;
              (*v543)(v524, v202, v203);
              v227 = *(v200 + 7);
              v228 = *(v200 + 8);
              v525 = v227;
              v229 = v562;
              v230 = v496;
              (*v517)(v496 + *(v562 + 20), v226, v203);
              v231 = (v230 + *(v229 + 24));
              v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v233 = *(v232 + 64);
              v467 = *(v232 + 48);
              v468 = v233;

              v234 = v203;
              v235 = sub_23BBDCC18();
              v465 = v236;
              v466 = v235;
              v237 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v238 = sub_23BBDCC08();
              (*v516)(v226, v234);
              v239 = v199;
              v240 = v569;
              (*v544)(v239, v569);
              v241 = v465;
              *v231 = v466;
              v231[1] = v241;
              *(v231 + *(v237 + 28)) = v238;
              *(v231 + v467) = 1;
              *(v231 + v468) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v198 = 0;
              *v230 = v525;
              v230[1] = v228;
              v163 = v240;
            }
          }

          v242 = v198;
          v243 = v496;
          v244 = v562;
          __swift_storeEnumTagSinglePayload(v496, v242, 1, v562);
          if (__swift_getEnumTagSinglePayload(v243, 1, v244) != 1)
          {
            goto LABEL_49;
          }

          sub_23B979910(v243, &qword_27E19A3F0);
          v245 = v489;
          sub_23B979510();
          v246 = 1;
          if (__swift_getEnumTagSinglePayload(v245, 1, v163) != 1)
          {
            v247 = v471;
            (*v545)(v471, v489, v163);
            v248 = v570;
            v249 = v163;
            v250 = v473;
            sub_23B979510();
            v251 = v561;
            if (__swift_getEnumTagSinglePayload(v250, 1, v561) == 1)
            {
              (*v544)(v247, v249);
              v246 = 1;
            }

            else
            {
              v252 = v524;
              (*v543)(v524, v250, v251);
              v253 = *(v248 + 7);
              v254 = *(v248 + 8);
              v525 = v253;
              v255 = v562;
              v256 = v483;
              (*v517)(v483 + *(v562 + 20), v252, v251);
              v257 = (v256 + *(v255 + 24));
              v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v259 = *(v258 + 48);
              v467 = *(v258 + 64);
              v468 = v259;

              v260 = v251;
              v261 = sub_23BBDCC18();
              v465 = v262;
              v466 = v261;
              v263 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v264 = sub_23BBDCC08();
              (*v516)(v252, v260);
              (*v544)(v247, v249);
              v265 = v465;
              *v257 = v466;
              v257[1] = v265;
              *(v257 + *(v263 + 28)) = v264;
              v266 = v467;
              *(v257 + v468) = 0;
              *(v257 + v266) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v246 = 0;
              *v256 = v525;
              v256[1] = v254;
            }
          }

          v267 = v246;
          v268 = v483;
          v269 = v562;
          __swift_storeEnumTagSinglePayload(v483, v267, 1, v562);
          if (__swift_getEnumTagSinglePayload(v268, 1, v269) == 1)
          {
            sub_23B979910(v268, &qword_27E19A3F0);
            v166 = v570;
            v175 = v522;
LABEL_19:
            sub_23B979510();
            v176 = v561;
            if (__swift_getEnumTagSinglePayload(v175, 1, v561) == 1)
            {
              sub_23B979910(v175, &qword_27E198848);
              sub_23BB96960(v503);
            }

            else
            {
              v209 = *v543;
              v210 = v487;
              (*v543)(v487, v175, v176);
              v211 = v166;
              v212 = *(v166 + 7);
              v213 = v176;
              v214 = *(v211 + 8);
              v215 = v562;
              v216 = v503;
              v209(v503 + *(v562 + 20), v210, v213);
              v217 = v216 + *(v215 + 24);
              *v217 = 257;
              v217[2] = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              *v216 = v212;
              v216[1] = v214;
              swift_storeEnumTagMultiPayload();
            }

            v218 = v557;
            sub_23B9E7210();
            sub_23B9E7210();
          }

          else
          {
LABEL_49:
            sub_23B9E7210();
            v218 = v557;
            sub_23B9E7210();
            swift_storeEnumTagMultiPayload();
          }

          v525 = *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
          v270 = v570;
          v271 = v519;
          sub_23B979510();
          v272 = __swift_getEnumTagSinglePayload(v271, 1, v569);
          sub_23B979910(v271, &unk_27E19FEF0);
          if (v272 == 1)
          {
            goto LABEL_51;
          }

          v275 = v508;
          sub_23B979510();
          v276 = 1;
          v277 = __swift_getEnumTagSinglePayload(v275, 1, v569);
          v192 = v556;
          if (v277 != 1)
          {
            v278 = v478;
            v279 = v569;
            (*v545)(v478, v508, v569);
            v280 = v570;
            v281 = v480;
            sub_23B979510();
            v282 = v561;
            if (__swift_getEnumTagSinglePayload(v281, 1, v561) == 1)
            {
              (*v544)(v278, v279);
              v276 = 1;
            }

            else
            {
              v294 = v524;
              (*v543)(v524, v281, v282);
              v295 = *(v280 + 7);
              v296 = *(v280 + 8);
              v468 = v295;
              v297 = v562;
              v298 = v497;
              (*v517)(v497 + *(v562 + 20), v294, v282);
              v299 = (v298 + *(v297 + 24));
              v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v301 = *(v300 + 64);
              v466 = *(v300 + 48);
              v467 = v301;

              v302 = v282;
              v465 = sub_23BBDCC18();
              v464[0] = v303;
              v304 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v305 = sub_23BBDCC08();
              (*v516)(v294, v302);
              (*v544)(v278, v279);
              v306 = v466;
              v307 = v464[0];
              *v299 = v465;
              v299[1] = v307;
              v192 = v556;
              *(v299 + *(v304 + 28)) = v305;
              *(v299 + v306) = 1;
              *(v299 + v467) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v276 = 0;
              *v298 = v468;
              v298[1] = v296;
            }

            v218 = v557;
          }

          v308 = v276;
          v309 = v497;
          v310 = v562;
          __swift_storeEnumTagSinglePayload(v497, v308, 1, v562);
          if (__swift_getEnumTagSinglePayload(v309, 1, v310) != 1)
          {
            goto LABEL_69;
          }

          sub_23B979910(v309, &qword_27E19A3F0);
          v311 = v490;
          sub_23B979510();
          v312 = 1;
          if (__swift_getEnumTagSinglePayload(v311, 1, v569) != 1)
          {
            v313 = v472;
            v314 = v569;
            (*v545)(v472, v490, v569);
            v315 = v570;
            v316 = v474;
            sub_23B979510();
            v317 = v561;
            if (__swift_getEnumTagSinglePayload(v316, 1, v561) == 1)
            {
              (*v544)(v313, v314);
              v312 = 1;
            }

            else
            {
              v318 = v524;
              (*v543)(v524, v316, v317);
              v319 = *(v315 + 7);
              v320 = *(v315 + 8);
              v537 = v319;
              v321 = v562;
              v322 = v484;
              (*v517)(v484 + *(v562 + 20), v318, v317);
              v323 = (v322 + *(v321 + 24));
              v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v325 = *(v324 + 48);
              v467 = *(v324 + 64);
              v468 = v325;

              v326 = v317;
              v327 = sub_23BBDCC18();
              v465 = v328;
              v466 = v327;
              v329 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v330 = sub_23BBDCC08();
              (*v516)(v524, v326);
              (*v544)(v313, v314);
              v331 = v465;
              *v323 = v466;
              v323[1] = v331;
              v192 = v556;
              *(v323 + *(v329 + 28)) = v330;
              v332 = v467;
              *(v323 + v468) = 0;
              *(v323 + v332) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v312 = 0;
              *v322 = v537;
              v322[1] = v320;
            }

            v218 = v557;
          }

          v333 = v312;
          v334 = v484;
          v335 = v562;
          __swift_storeEnumTagSinglePayload(v484, v333, 1, v562);
          if (__swift_getEnumTagSinglePayload(v334, 1, v335) == 1)
          {
            sub_23B979910(v334, &qword_27E19A3F0);
            v270 = v570;
LABEL_51:
            v273 = v500;
            sub_23B979510();
            v274 = v561;
            if (__swift_getEnumTagSinglePayload(v273, 1, v561) == 1)
            {
              sub_23B979910(v273, &qword_27E198848);
              sub_23BB96960(v505);
            }

            else
            {
              v283 = *v543;
              v284 = v488;
              (*v543)(v488, v273, v274);
              v286 = *(v270 + 7);
              v285 = *(v270 + 8);
              v287 = v274;
              v288 = v562;
              v289 = v505;
              v290 = v284;
              v218 = v557;
              v283(v505 + *(v562 + 20), v290, v287);
              v291 = v289 + *(v288 + 24);
              *v291 = 257;
              v291[2] = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              *v289 = v286;
              v289[1] = v285;
              swift_storeEnumTagMultiPayload();
            }

            v191 = v568;
            v162 = v559;
            sub_23B9E7210();
            v292 = v525;
            sub_23B9E7210();
            v293 = v560;
            v192 = v556;
          }

          else
          {
LABEL_69:
            sub_23B9E7210();
            v292 = v525;
            sub_23B9E7210();
            v336 = v560;
            swift_storeEnumTagMultiPayload();
            v191 = v568;
            v293 = v336;
            v162 = v559;
          }

          __swift_storeEnumTagSinglePayload(v218 + v292, 0, 1, v293);
LABEL_71:
          swift_storeEnumTagMultiPayload();
          sub_23B9E7210();
          if (*(v564 + 16) == 3)
          {
            v337 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
            __swift_storeEnumTagSinglePayload(v191, 1, 1, v337);
            v163 = v569;
            v134 = v563;
            v338 = v570;
            goto LABEL_112;
          }

          v559 = v162;
          v134 = v563;
          v339 = v570;
          v340 = v540;
          sub_23B979510();
          v341 = __swift_getEnumTagSinglePayload(v340, 1, v569);
          sub_23B979910(v340, &unk_27E19FEF0);
          v342 = v542;
          v343 = v546;
          if (v341 == 1)
          {
            goto LABEL_74;
          }

          v346 = v531;
          sub_23B979510();
          v347 = 1;
          if (__swift_getEnumTagSinglePayload(v346, 1, v569) != 1)
          {
            v348 = v498;
            v349 = v569;
            (*v545)(v498, v531, v569);
            v350 = v570;
            sub_23B979510();
            v351 = v561;
            if (__swift_getEnumTagSinglePayload(v192, 1, v561) == 1)
            {
              (*v544)(v348, v349);
              v347 = 1;
              v343 = v546;
            }

            else
            {
              v358 = v524;
              (*v543)(v524, v192, v351);
              v359 = *(v350 + 8);
              v564 = *(v350 + 7);
              v537 = v359;
              v360 = v562;
              v361 = v526;
              (*v517)(v526 + *(v562 + 20), v358, v351);
              v362 = (v361 + *(v360 + 24));
              v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v525 = *(v363 + 48);
              v468 = *(v363 + 64);

              v364 = v351;
              v365 = sub_23BBDCC18();
              v466 = v366;
              v467 = v365;
              v367 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v368 = sub_23BBDCC08();
              (*v516)(v358, v364);
              (*v544)(v348, v349);
              v369 = v466;
              *v362 = v467;
              v362[1] = v369;
              v370 = *(v367 + 28);
              v134 = v563;
              *(v362 + v370) = v368;
              *(v362 + v525) = 0;
              *(v362 + v468) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              v343 = v546;
              swift_storeEnumTagMultiPayload();
              v347 = 0;
              v371 = v537;
              *v361 = v564;
              v361[1] = v371;
              v342 = v542;
            }
          }

          v372 = v347;
          v373 = v526;
          v374 = v562;
          __swift_storeEnumTagSinglePayload(v526, v372, 1, v562);
          if (__swift_getEnumTagSinglePayload(v373, 1, v374) != 1)
          {
            goto LABEL_90;
          }

          sub_23B979910(v373, &qword_27E19A3F0);
          v375 = v514;
          sub_23B979510();
          v376 = 1;
          v377 = __swift_getEnumTagSinglePayload(v375, 1, v569);
          v378 = v523;
          if (v377 != 1)
          {
            (*v545)(v523, v514, v569);
            v379 = v570;
            v380 = v486;
            sub_23B979510();
            v381 = v561;
            if (__swift_getEnumTagSinglePayload(v380, 1, v561) == 1)
            {
              (*v544)(v378, v569);
              v376 = 1;
            }

            else
            {
              v382 = v524;
              (*v543)(v524, v380, v381);
              v383 = *(v379 + 8);
              v564 = *(v379 + 7);
              v384 = v562;
              v385 = v509;
              (*v517)(v509 + *(v562 + 20), v382, v381);
              v386 = (v385 + *(v384 + 24));
              v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v537 = *(v387 + 48);
              v525 = *(v387 + 64);

              v388 = v381;
              v468 = sub_23BBDCC18();
              v390 = v389;
              v391 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v392 = sub_23BBDCC08();
              (*v516)(v382, v388);
              (*v544)(v523, v569);
              *v386 = v468;
              v386[1] = v390;
              v393 = *(v391 + 28);
              v134 = v563;
              *(v386 + v393) = v392;
              *(v386 + v537) = 0;
              *(v386 + v525) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              v343 = v546;
              swift_storeEnumTagMultiPayload();
              v376 = 0;
              *v385 = v564;
              v385[1] = v383;
              v342 = v542;
            }
          }

          v394 = v376;
          v395 = v509;
          v396 = v562;
          __swift_storeEnumTagSinglePayload(v509, v394, 1, v562);
          if (__swift_getEnumTagSinglePayload(v395, 1, v396) == 1)
          {
            sub_23B979910(v395, &qword_27E19A3F0);
            v339 = v570;
LABEL_74:
            sub_23B979510();
            v344 = v561;
            v345 = v339;
            if (__swift_getEnumTagSinglePayload(v343, 1, v561) == 1)
            {
              sub_23B979910(v343, &qword_27E198848);
              sub_23BB96960(v342);
            }

            else
            {
              v352 = *v543;
              v353 = v511;
              (*v543)(v511, v343, v344);
              v355 = *(v345 + 7);
              v354 = *(v345 + 8);
              v356 = v562;
              v352(&v342[*(v562 + 20)], v353, v344);
              v357 = *(v356 + 24);
              v134 = v563;
              v342[v357] = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              *v342 = v355;
              *(v342 + 1) = v354;
              swift_storeEnumTagMultiPayload();
            }

            v163 = v569;
            sub_23B9E7210();
            sub_23B9E7210();
            v338 = v570;
          }

          else
          {
LABEL_90:
            sub_23B9E7210();
            sub_23B9E7210();
            swift_storeEnumTagMultiPayload();
            v163 = v569;
            v338 = v570;
          }

          v564 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
          v397 = *(v564 + 20);
          v398 = v541;
          sub_23B979510();
          v399 = __swift_getEnumTagSinglePayload(v398, 1, v163);
          sub_23B979910(v398, &unk_27E19FEF0);
          if (v399 == 1)
          {
            goto LABEL_92;
          }

          v403 = v532;
          sub_23B979510();
          v404 = 1;
          if (__swift_getEnumTagSinglePayload(v403, 1, v163) != 1)
          {
            v405 = v499;
            (*v545)(v499, v532, v163);
            v406 = v163;
            v407 = v501;
            sub_23B979510();
            v408 = v561;
            if (__swift_getEnumTagSinglePayload(v407, 1, v561) == 1)
            {
              (*v544)(v405, v406);
              v404 = 1;
              v163 = v406;
            }

            else
            {
              v419 = v524;
              (*v543)(v524, v407, v408);
              v537 = *(v570 + 7);
              v525 = *(v570 + 8);
              v420 = v562;
              v421 = v527;
              (*v517)(v527 + *(v562 + 20), v419, v408);
              v422 = (v421 + *(v420 + 24));
              v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v424 = *(v423 + 64);
              v467 = *(v423 + 48);
              v468 = v424;

              v425 = sub_23BBDCC18();
              v465 = v426;
              v466 = v425;
              v427 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v428 = sub_23BBDCC08();
              v429 = v419;
              v338 = v570;
              (*v516)(v429, v561);
              v430 = v405;
              v431 = v569;
              (*v544)(v430, v569);
              v432 = v465;
              *v422 = v466;
              v422[1] = v432;
              *(v422 + *(v427 + 28)) = v428;
              *(v422 + v467) = 1;
              *(v422 + v468) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v404 = 0;
              v433 = v525;
              *v421 = v537;
              v421[1] = v433;
              v163 = v431;
            }

            v134 = v563;
          }

          v434 = v404;
          v435 = v527;
          v436 = v562;
          __swift_storeEnumTagSinglePayload(v527, v434, 1, v562);
          if (__swift_getEnumTagSinglePayload(v435, 1, v436) != 1)
          {
            goto LABEL_110;
          }

          sub_23B979910(v435, &qword_27E19A3F0);
          v437 = v515;
          sub_23B979510();
          v438 = 1;
          if (__swift_getEnumTagSinglePayload(v437, 1, v163) != 1)
          {
            v439 = v338;
            v440 = v485;
            (*v545)(v485, v515, v163);
            v441 = v493;
            sub_23B979510();
            v442 = v441;
            v443 = v561;
            if (__swift_getEnumTagSinglePayload(v442, 1, v561) == 1)
            {
              (*v544)(v440, v163);
              v438 = 1;
            }

            else
            {
              v444 = v524;
              (*v543)(v524, v493, v443);
              v445 = *(v439 + 64);
              v537 = *(v439 + 56);
              v525 = v445;
              v446 = v562;
              v447 = v510;
              (*v517)(v510 + *(v562 + 20), v444, v443);
              v448 = (v447 + *(v446 + 24));
              v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
              v450 = *(v449 + 48);
              v467 = *(v449 + 64);
              v468 = v450;

              v451 = sub_23BBDCC18();
              v465 = v452;
              v466 = v451;
              v453 = _s15PricePropertiesVMa(0);
              sub_23BBDCBF8();
              sub_23BBDCC68();
              v454 = sub_23BBDCC08();
              v455 = v444;
              v163 = v569;
              (*v516)(v455, v561);
              (*v544)(v440, v163);
              v456 = v465;
              *v448 = v466;
              v448[1] = v456;
              *(v448 + *(v453 + 28)) = v454;
              v457 = v467;
              *(v448 + v468) = 0;
              *(v448 + v457) = 0;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              swift_storeEnumTagMultiPayload();
              v438 = 0;
              v458 = v525;
              *v447 = v537;
              v447[1] = v458;
              v134 = v563;
            }

            v338 = v439;
          }

          v459 = v510;
          v460 = v438;
          v461 = v562;
          __swift_storeEnumTagSinglePayload(v510, v460, 1, v562);
          if (__swift_getEnumTagSinglePayload(v459, 1, v461) == 1)
          {
            sub_23B979910(v459, &qword_27E19A3F0);
LABEL_92:
            v400 = v338;
            v401 = v528;
            sub_23B979510();
            v402 = v561;
            if (__swift_getEnumTagSinglePayload(v401, 1, v561) == 1)
            {
              sub_23B979910(v401, &qword_27E198848);
              sub_23BB96960(v547);
            }

            else
            {
              v409 = *v543;
              v410 = v512;
              (*v543)(v512, v401, v402);
              v411 = v402;
              v413 = *(v400 + 56);
              v412 = *(v400 + 64);
              v414 = v562;
              v409(&v547[*(v562 + 20)], v410, v411);
              v415 = *(v414 + 24);
              v134 = v563;
              v547[v415] = 1;
              _s22LocalizedPriceResourceV6FormatOMa(0);
              v416 = v547;
              swift_storeEnumTagMultiPayload();
              *v416 = v413;
              v416[1] = v412;
              swift_storeEnumTagMultiPayload();
            }

            v338 = v400;
            sub_23B9E7210();
            v417 = v568;
            sub_23B9E7210();
            v162 = v559;
            v418 = v560;
          }

          else
          {
LABEL_110:
            sub_23B9E7210();
            v417 = v568;
            sub_23B9E7210();
            v418 = v560;
            swift_storeEnumTagMultiPayload();
            v162 = v559;
          }

          __swift_storeEnumTagSinglePayload(v417 + v397, 0, 1, v418);
          __swift_storeEnumTagSinglePayload(v417, 0, 1, v564);
LABEL_112:
          sub_23B979688();
          sub_23B9E71B8(v338, type metadata accessor for SubscriptionPickerSubscribeButtonModel);
          v462 = v565;
          v577 = v565;
          v463 = *(v565 + 16);
          if (v463 >= *(v565 + 24) >> 1)
          {
            sub_23BA92C28();
            v462 = v577;
          }

          *(v462 + 16) = v463 + 1;
          v565 = v462;
          sub_23B979688();
          if (v548 == v162)
          {

            sub_23B9E71B8(v492, type metadata accessor for SubscriptionStoreButton);
            return v565;
          }

          ++v162;
          v160 = v550;
          continue;
        default:
          v183 = v162;
          v184 = *(v167 + 24);
          v185 = *(v167 + 48);
          v186 = *(v167 + 32);
          v187 = *(v167 + 40);
          v188 = *(v167 + 8);

          sub_23B9E711C(v187, v185);
          sub_23B9E67A8(v187, v185);
          v189 = v557;
          *v557 = v188;
          v189[1] = v168;
          v190 = v189;
          LOBYTE(v189) = v184 & 1;
          v162 = v183;
          *(v190 + 16) = v189;
          v190[3] = v186;
          v191 = v568;
          v192 = v556;
          goto LABEL_71;
      }
    }
  }

  sub_23B9E71B8(v143, type metadata accessor for SubscriptionStoreButton);
  return MEMORY[0x277D84F90];
}