uint64_t sub_23BB879CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for InAppPurchaseButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23BB87624(v4, v1, v2);
}

uint64_t sub_23BB87A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D288);
  v6[6] = swift_task_alloc();
  type metadata accessor for PurchaseAction();
  v6[7] = swift_task_alloc();
  v7 = sub_23BBDC9B8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BB87B7C, 0, 0);
}

uint64_t sub_23BB87B7C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = v0[2];
  v2 = type metadata accessor for InAppPurchaseButton();
  v0[11] = v2;
  v5 = (*(v1 + *(v2 + 40)) + **(v1 + *(v2 + 40)));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_23BB87C7C;

  return v5();
}

uint64_t sub_23BB87C7C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BB87D60()
{
  OUTLINED_FUNCTION_3_13();
  sub_23BBDD308();
  *(v0 + 104) = sub_23BBDD2F8();
  v2 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BB87DF0, v2, v1);
}

uint64_t sub_23BB87DF0()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  sub_23BB86D94(v1, v2);
  v3 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BB87E6C()
{
  OUTLINED_FUNCTION_3_13();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_23BB87F1C;

  return PurchaseAction.callAsFunction(_:options:)();
}

uint64_t sub_23BB87F1C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_23BB89664(v3);
  if (v0)
  {
    v7 = sub_23BB88304;
  }

  else
  {
    v7 = sub_23BB8803C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23BB8803C()
{
  v1 = *(v0[2] + *(v0[11] + 44));
  (*(v0[9] + 16))(v0[6], v0[10], v0[8]);
  swift_storeEnumTagMultiPayload();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_13_32(v2);

  return v5(v3);
}

uint64_t sub_23BB88168()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B9846E8(v2, &qword_27E19D288);
  v5 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BB88278()
{
  OUTLINED_FUNCTION_4_11();
  (*(v0[9] + 8))(v0[10], v0[8]);
  OUTLINED_FUNCTION_16_24();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23BB88304()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 16) + *(*(v0 + 88) + 44));
  **(v0 + 48) = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_13_32(v4);

  return v7(v5);
}

uint64_t sub_23BB88418()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B9846E8(v2, &qword_27E19D288);
  v5 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BB88528()
{
  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_16_24();

  OUTLINED_FUNCTION_1_16();

  return v1();
}

uint64_t sub_23BB885A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InAppPurchaseButton();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  sub_23BBDD328();
  v13 = sub_23BBDD368();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  sub_23BBDD308();
  v14 = sub_23BBDD2F8();
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  (*(v7 + 32))(&v16[v15], v9, v6);
  sub_23BB5D2B8();
}

uint64_t sub_23BB88788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *(a1 + *(type metadata accessor for InAppPurchaseButton() + 48));
  v13 = sub_23BB86CE8();
  if (v13)
  {
  }

  v12(v13 != 0);
  sub_23B9D2D88(v8, a2, a3);
  v14 = *(v6 + 8);
  v14(v8, a2);
  sub_23B9D2D88(v11, a2, a3);
  return (v14)(v11, a2);
}

unint64_t sub_23BB88904()
{
  result = qword_27E198308;
  if (!qword_27E198308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198308);
  }

  return result;
}

uint64_t InAppPurchaseButton<>.init(_:titleKey:options:onTap:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v20 = v19;
  (*(v21 + 16))(a9, a1, v18);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2E40);
  v24 = v23[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0);
  sub_23BBDBF58();
  (*(v20 + 8))(a1, v18);
  *(a9 + v24) = v33;
  v25 = v23[14];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  swift_storeEnumTagMultiPayload();
  v26 = a9 + v23[15];
  result = swift_getKeyPath();
  *v26 = result;
  *(v26 + 8) = 0;
  *(a9 + v23[9]) = a6;
  v28 = (a9 + v23[10]);
  *v28 = a7;
  v28[1] = a8;
  v29 = (a9 + v23[11]);
  *v29 = a10;
  v29[1] = a11;
  v30 = (a9 + v23[12]);
  *v30 = sub_23BB88C38;
  v30[1] = v22;
  return result;
}

uint64_t sub_23BB88B60@<X0>(uint64_t a1@<X8>)
{

  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23BB88BF8()
{

  return swift_deallocObject();
}

uint64_t InAppPurchaseButton<>.init<A>(_:title:options:onTap:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = sub_23BBDCDB8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a9, a1, v16);
  (*(v14 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a8);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  *(v19 + 24) = a10;
  (*(v14 + 32))(v19 + v18, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2E40);
  v21 = v20[13];
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B2F0);
  sub_23BBDBF58();
  (*(v14 + 8))(v31, a8);
  (*(v17 + 8))(v32, v16);
  *(a9 + v21) = v39;
  v22 = v20[14];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v20[15];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  v25 = v34;
  *(a9 + v20[9]) = v33;
  v26 = (a9 + v20[10]);
  v28 = v35;
  v27 = v36;
  *v26 = v25;
  v26[1] = v28;
  v29 = (a9 + v20[11]);
  *v29 = v27;
  v29[1] = v37;
  v30 = (a9 + v20[12]);
  *v30 = sub_23BB89048;
  v30[1] = v19;
  return result;
}

uint64_t sub_23BB88EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_23BBDB678();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_23BB88FC8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

void sub_23BB890C8()
{
  sub_23BBDCDB8();
  if (v0 <= 0x3F)
  {
    sub_23BB89390();
    if (v1 <= 0x3F)
    {
      sub_23B975E04();
      if (v2 <= 0x3F)
      {
        sub_23BB8944C();
        if (v3 <= 0x3F)
        {
          sub_23BB894B0();
          if (v4 <= 0x3F)
          {
            sub_23B9D2354();
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

uint64_t sub_23BB891C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDCDB8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A2E48);
    v8 = a1 + *(a3 + 56);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_23BB892B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDCDB8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A2E48);
    v10 = a1 + *(a4 + 56);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_23BB89390()
{
  if (!qword_27E1A2ED0[0])
  {
    sub_23BBDC9A8();
    sub_23BB893F4();
    v0 = sub_23BBDD3D8();
    if (!v1)
    {
      atomic_store(v0, qword_27E1A2ED0);
    }
  }
}

unint64_t sub_23BB893F4()
{
  result = qword_27E1996E8;
  if (!qword_27E1996E8)
  {
    sub_23BBDC9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1996E8);
  }

  return result;
}

void sub_23BB8944C()
{
  if (!qword_27E19B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B2F0);
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19B3C8);
    }
  }
}

void sub_23BB894B0()
{
  if (!qword_27E19B3C0)
  {
    type metadata accessor for PurchaseAction();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19B3C0);
    }
  }
}

uint64_t sub_23BB89508()
{
  sub_23BBDBFC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_44();
  swift_getWitnessTable();
  sub_23BB88904();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB89590()
{
  OUTLINED_FUNCTION_14_29();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_35(v1);

  return sub_23BB87A50(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_23BB89664(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BB896C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23BBDD308();
  v6[5] = sub_23BBDD2F8();
  v8 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23BB8975C, v8, v7);
}

uint64_t sub_23BB8975C()
{
  OUTLINED_FUNCTION_4_11();

  type metadata accessor for InAppPurchaseButton();
  sub_23BB86D3C();
  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t objectdestroy_12Tm()
{
  type metadata accessor for InAppPurchaseButton();
  OUTLINED_FUNCTION_19_0();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + ((v3 + 48) & ~v3);
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v4);

  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_11_29();

  v6 = v4 + *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDB328();
    OUTLINED_FUNCTION_12_1();
    (*(v7 + 8))(v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_27();

  return swift_deallocObject();
}

uint64_t sub_23BB89964()
{
  OUTLINED_FUNCTION_14_29();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_35(v1);

  return sub_23BB896C0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_23BB89A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB89AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_29()
{
}

uint64_t OUTLINED_FUNCTION_16_24()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_23BB885A4(v4, v2, v3);
}

uint64_t sub_23BB89BF8@<X0>(char a1@<W0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2();
  result = type metadata accessor for StructuredScrollViewBottomInset();
  *(a3 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_23BB89C70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23BB89DEC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
      JUMPOUT(0x23BB8A018);
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

uint64_t sub_23BB8A084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_23BBDC268();
  sub_23BBDBD18();
  sub_23BBDBD58();

  sub_23BBD9C38();

  if (*(v2 + *(a1 + 36)))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  sub_23B97A69C(v7, a2, &qword_27E1A2FF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FE0);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_23BB8A1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  sub_23BBDA538();
  OUTLINED_FUNCTION_7();
  v61 = v5;
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v52 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v53 = v14;
  MEMORY[0x28223BE20](v15);
  v51 = &v49 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F58);
  v17 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v58 = v18;
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F60);
  v54 = v17;
  v55 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v59 = v21;
  MEMORY[0x28223BE20](v22);
  v56 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v57 = &v49 - v26;
  v50 = a1;
  v27 = *(a1 + 24);
  MEMORY[0x23EEB43C0](v25);
  v28 = sub_23BB8AA68();
  v75 = v27;
  v76 = v28;
  WitnessTable = swift_getWitnessTable();
  sub_23B9C2924();
  v29 = v51;
  sub_23BBDBB18();
  (*(v52 + 8))(v12, v8);
  v65 = v7;
  v66 = v27;
  v67 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2F70);
  v73 = WitnessTable;
  v74 = MEMORY[0x277CDFC60];
  v30 = swift_getWitnessTable();
  sub_23BB8AAC8();
  sub_23B9C2924();
  sub_23BBDB6B8();
  (*(v53 + 8))(v29, v13);
  if ((sub_23BBDC2A8() & 1) != 0 || *(v2 + *(v50 + 36)) != 1)
  {
    v72 = MEMORY[0x277D84F90];
    sub_23BB8AC90();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FB8);
    sub_23B97B518(&qword_27E1A2FC0, &qword_27E1A2FB8);
    v31 = v60;
    v32 = v62;
    sub_23BBDD6C8();
  }

  else
  {
    v31 = v60;
    sub_23BBDA528();
    v32 = v62;
  }

  OUTLINED_FUNCTION_1_59();
  v35 = sub_23B97B518(v33, v34);
  v70 = v30;
  v71 = v35;
  v36 = v54;
  v37 = swift_getWitnessTable();
  sub_23BB8ACE8();
  OUTLINED_FUNCTION_0_2();
  v38 = v56;
  v39 = v64;
  sub_23BBDB7F8();
  (*(v61 + 8))(v31, v32);
  (*(v58 + 8))(v39, v36);
  OUTLINED_FUNCTION_2_45();
  v42 = sub_23B97B518(v40, v41);
  v68 = v37;
  v69 = v42;
  v43 = v55;
  v44 = swift_getWitnessTable();
  v45 = v57;
  sub_23B9D2D88(v38, v43, v44);
  v46 = *(v59 + 8);
  v46(v38, v43);
  sub_23B9D2D88(v45, v43, v44);
  return (v46)(v45, v43);
}

uint64_t sub_23BB8A888@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2F88);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  if (sub_23BBDC2A8())
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }

  else
  {
    v6 = type metadata accessor for StructuredScrollViewBottomInset();
    sub_23BB8A084(v6, v4);
    sub_23BB8ACE8();
    sub_23B97B518(&qword_27E1A2FE8, &qword_27E1A2FE0);
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FA8) + 56)] = 256;
    sub_23B97B518(&qword_27E1A2FA0, &qword_27E1A2FA8);
    v7 = sub_23BBDA388();
    v8 = sub_23BBDB398();
    v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2F98) + 36)];
    *v9 = v7;
    v9[8] = v8;
    v4[*(v2 + 36)] = 0;
    sub_23B97A69C(v4, a1, &qword_27E1A2F88);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }
}

unint64_t sub_23BB8AA68()
{
  result = qword_27E1A2F68;
  if (!qword_27E1A2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F68);
  }

  return result;
}

unint64_t sub_23BB8AAC8()
{
  result = qword_27E1A2F78;
  if (!qword_27E1A2F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F70);
    sub_23BB8AB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F78);
  }

  return result;
}

unint64_t sub_23BB8AB4C()
{
  result = qword_27E1A2F80;
  if (!qword_27E1A2F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F88);
    sub_23BB8ABD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F80);
  }

  return result;
}

unint64_t sub_23BB8ABD8()
{
  result = qword_27E1A2F90;
  if (!qword_27E1A2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F98);
    sub_23B97B518(&qword_27E1A2FA0, &qword_27E1A2FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2F90);
  }

  return result;
}

unint64_t sub_23BB8AC90()
{
  result = qword_27E1A2FB0;
  if (!qword_27E1A2FB0)
  {
    sub_23BBDA538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2FB0);
  }

  return result;
}

unint64_t sub_23BB8ACE8()
{
  result = qword_27E1A2FD0;
  if (!qword_27E1A2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A2FD0);
  }

  return result;
}

uint64_t sub_23BB8AD4C()
{
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F58);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A2F60);
  sub_23BBDA358();
  sub_23BB8AA68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_59();
  sub_23B97B518(v0, &qword_27E1A2F58);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_45();
  sub_23B97B518(v1, &qword_27E1A2F60);
  return swift_getWitnessTable();
}

uint64_t sub_23BB8AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDC318();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A2FF8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3000);
  v9 = (a2 + *(result + 36));
  *v9 = sub_23BB8AF98;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v6;
  return result;
}

uint64_t sub_23BB8AF98@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = sub_23BBD9E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_23BB8B180;
  a2[1] = v9;
  return result;
}

uint64_t sub_23BB8B0C4(uint64_t a1)
{
  result = sub_23BBD9E68();
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_23BB8B0F8()
{
  v1 = sub_23BBD9E98();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_23BB8B180(uint64_t a1)
{
  sub_23BBD9E98();

  return sub_23BB8B0C4(a1);
}

unint64_t sub_23BB8B1F4()
{
  result = qword_27E1A3008;
  if (!qword_27E1A3008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3000);
    sub_23B97B518(&qword_27E1A3010, &qword_27E1A2FF8);
    sub_23B97B518(&qword_27E199AE8, &qword_27E199AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3008);
  }

  return result;
}

uint64_t sub_23BB8B308()
{
  sub_23BA24088();

  return sub_23BBDA958();
}

uint64_t sub_23BB8B350@<X0>(uint64_t a1@<X8>)
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  sub_23BACC70C();
  return sub_23BB8B3C4(v3, a1);
}

uint64_t sub_23BB8B3C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 32))(a2);
  v5 = *(type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier() + 52);
  sub_23BBDD648();
  OUTLINED_FUNCTION_1_4();
  return (*(v6 + 32))(a2 + v5, a1);
}

uint64_t sub_23BB8B490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a3;
  OUTLINED_FUNCTION_3_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  v27 = sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18);
  v11 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  swift_getKeyPath();
  (*(v7 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = *(a2 + 32);
  *(v20 + 16) = *(a2 + 16);
  *(v20 + 32) = v21;
  (*(v7 + 32))(v20 + v19, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  OUTLINED_FUNCTION_11_1();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDB9B8();

  v23 = sub_23BB8C374();
  v31 = WitnessTable;
  v32 = v23;
  OUTLINED_FUNCTION_0();
  v24 = swift_getWitnessTable();
  sub_23B9D2D88(v15, v11, v24);
  v25 = *(v28 + 8);
  v25(v15, v11);
  sub_23B9D2D88(v18, v11, v24);
  return (v25)(v18, v11);
}

uint64_t sub_23BB8B7AC(uint64_t a1)
{
  sub_23BA24CBC(a1, v3);
  sub_23BA24088();
  sub_23BBDA968();
  return sub_23BADA8C4(a1);
}

uint64_t sub_23BB8B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23BBDD648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  *(&v21 + 1) = a3;
  v22 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_23BB8CCFC(&v20, a1, &qword_27E19FCC8);
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v17 = type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  (*(v13 + 16))(v15, a2 + *(v17 + 52), v12);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = a4;
    v22 = a6;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(*(a4 - 8) + 32))(v18, v15, a4);
  }

  return sub_23BB8CCFC(&v20, a1 + 80, &qword_27E197E28);
}

BOOL sub_23BB8BA00()
{
  sub_23BB8CF48(v0, v3, &qword_27E19FCC8);
  v1 = v4 == 0;
  sub_23BA0E8F8(v3, &qword_27E19FCC8);
  return v1;
}

uint64_t sub_23BB8BA80@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197828 != -1)
  {
    swift_once();
  }

  return sub_23BA24CBC(&unk_27E1A3018, a1);
}

uint64_t View.automaticSubscriptionStorePickerItemBackgroundInternal<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v21 = a5;
  v10 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  swift_getKeyPath();
  (*(v12 + 16))(v15, a1, v10);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v18 = v21;
  *(v17 + 4) = a4;
  *(v17 + 5) = v18;
  (*(v12 + 32))(&v17[v16], v15, v10);
  sub_23BBDB9B8();
}

uint64_t sub_23BB8BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_23BBDD648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - v12;
  v14 = *(a4 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10, v16);
  if (__swift_getEnumTagSinglePayload(v13, 1, a4) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v20 = *(v14 + 32);
  v20(v18, v13, a4);
  v23[3] = a4;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v20(boxed_opaque_existential_1, v18, a4);
  return sub_23BB8CCFC(v23, a1 + 40, &qword_27E19FCC8);
}

uint64_t sub_23BB8BE80()
{
  v1 = *(v0 + 24);
  v2 = *(sub_23BBDD648() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_23BB8BF64()
{
  sub_23BBDD648();
  v0 = OUTLINED_FUNCTION_4_42();

  return sub_23BB8BC9C(v0, v1, v2, v3, v4, v5);
}

uint64_t View.subscriptionStorePickerOptionStrokeInternal<A>(style:lineWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v21 = a6;
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  swift_getKeyPath();
  (*(v14 + 16))(&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  (*(v14 + 32))(&v19[v18], &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *&v19[(v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a7;
  sub_23BBDB9B8();
}

uint64_t sub_23BB8C174(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[3] = a5;
  v13[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  *&v13[5] = a3;
  return sub_23BB8CCFC(v13, a1 + 120, &qword_27E19FCE8);
}

uint64_t sub_23BB8C214()
{
  OUTLINED_FUNCTION_1_4();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23BB8C29C()
{
  OUTLINED_FUNCTION_3_2();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  return sub_23BB8C174(v4, v0 + v2, *(v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6, v7, v8);
}

uint64_t sub_23BB8C310()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BB8C374();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23BB8C374()
{
  result = qword_27E19BD10;
  if (!qword_27E19BD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19BD10);
  }

  return result;
}

uint64_t sub_23BB8C3E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_23BB8C434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_23BB8C4C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDD648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BB8C54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(v6 - 8) + 64) + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v17 = v14 + (v15 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v12)
      {
LABEL_31:
        if (v7 >= v11)
        {

          return __swift_getEnumTagSinglePayload(a1, v7, v6);
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v15) & ~v13, v10, v8);
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

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_20:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
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

  return v12 + (v23 | v21) + 1;
}

void sub_23BB8C768(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(*(v8 - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  v21 = a3 >= v14;
  v22 = a3 - v14;
  if (v22 != 0 && v21)
  {
    if (v19 <= 3)
    {
      v23 = ((v22 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v23))
      {
        v7 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v7 = v24;
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
  }

  if (v14 < a2)
  {
    v25 = ~v14 + a2;
    if (v19 < 4)
    {
      v26 = (v25 >> v20) + 1;
      if (v19)
      {
        v27 = v25 & ~(-1 << v20);
        bzero(a1, v17 + v18);
        if (v19 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v19 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v17 + v18);
      *a1 = v25;
      v26 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v19] = v26;
        return;
      case 2:
        *&a1[v19] = v26;
        return;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v19] = v26;
        return;
      default:
        return;
    }
  }

  switch(v7)
  {
    case 1:
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_60:
      __break(1u);
      JUMPOUT(0x23BB8CA98);
    case 4:
      *&a1[v19] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v9 >= v13)
      {
        v32 = a1;
      }

      else
      {
        v28 = (&a1[v16] & ~v15);
        if (v13 < a2)
        {
          if (v18 <= 3)
          {
            v29 = ~(-1 << (8 * v18));
          }

          else
          {
            v29 = -1;
          }

          if (v18)
          {
            v30 = v29 & (~v13 + a2);
            if (v18 <= 3)
            {
              v31 = v18;
            }

            else
            {
              v31 = 4;
            }

            bzero(v28, v18);
            switch(v31)
            {
              case 2:
                *v28 = v30;
                break;
              case 3:
                *v28 = v30;
                v28[2] = BYTE2(v30);
                break;
              case 4:
                *v28 = v30;
                break;
              default:
                *v28 = v30;
                break;
            }
          }

          return;
        }

        a2 = (a2 + 1);
        v32 = v28;
        v9 = v12;
        v8 = v10;
      }

      __swift_storeEnumTagSinglePayload(v32, a2, v9, v8);
      return;
  }
}

uint64_t sub_23BB8CB2C()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v2 = (type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(v3, v1);
  v5 = v2[15];
  if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v8))
  {
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v3 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_23BB8CC6C()
{
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  v0 = OUTLINED_FUNCTION_4_42();

  return sub_23BB8B800(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_23BB8CCFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_23BB8CD60()
{
  type metadata accessor for SubscriptionStorePickerItemBackgroundStyleModifier();
  OUTLINED_FUNCTION_2_46();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDAE98();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19BD18);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_11_1();
  swift_getWitnessTable();
  sub_23BB8C374();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BB8CDFC(uint64_t a1, uint64_t a2)
{
  sub_23BB8CF48(a2, v4, &qword_27E1A3140);
  if (v4[3] == 1)
  {
    return sub_23BA0E8F8(v4, &qword_27E1A3140);
  }

  memcpy(__dst, v4, sizeof(__dst));
  sub_23BB8CED8(__dst, a1);
  sub_23BA0E8F8(a1 + 80, &qword_27E197E28);
  sub_23BB8CF48(&__dst[80], a1 + 80, &qword_27E197E28);
  return sub_23BADA8C4(__dst);
}

uint64_t sub_23BB8CED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FCC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB8CF48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_1_4();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_23BB8CFD8()
{
  result = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(319);
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

uint64_t sub_23BB8D070(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v7 | 7;
  v12 = v7 | 7 | v10;
  v13 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = v13 + 10;
  if (v15 <= v14)
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 + ((((v7 + 16) & ~v7) + v8 + v12) & ~v12);
  v17 = v16 + 1;
  v18 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 16;
  if (v16 + 1 > v18 + 16)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = v18 + 16;
  }

  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + 1;
  v22 = v20 & 0xFFFFFFFFFFFFFFF8;
  v23 = *(sub_23BBD96B8() - 8);
  v24 = ((*(v23 + 64) + v12 + ((*(v23 + 80) + v22 + 24) & ~*(v23 + 80))) & ~v12) + v21;
  v25 = ((v24 + v11) & ~v11) + v19;
  if (v25 <= v24)
  {
    v25 = v24;
  }

  v26 = v21 + ((v17 + v12) & ~v12);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  if (v26 <= v25)
  {
    v26 = v25;
  }

  v29 = *(v28 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = *(v28 + 84);
  }

  v31 = *(v28 + 80);
  v32 = *(v28 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v30)
  {
    goto LABEL_36;
  }

  v33 = v32 + ((v31 + (v26 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v31) + 1;
  v34 = 8 * v33;
  if (v33 <= 3)
  {
    v37 = ((a2 - v30 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v37))
    {
      v35 = *(a1 + v33);
      if (!v35)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v37 > 0xFF)
    {
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v37 < 2)
    {
LABEL_36:
      v39 = (a1 + v26 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v29 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v31 + v39 + 16) & ~v31, v29, v27);
      }

      else
      {
        v40 = *(v39 + 8);
        if (v40 >= 0xFFFFFFFF)
        {
          LODWORD(v40) = -1;
        }

        return (v40 + 1);
      }
    }
  }

  v35 = *(a1 + v33);
  if (!*(a1 + v33))
  {
    goto LABEL_36;
  }

LABEL_28:
  v38 = (v35 - 1) << v34;
  if (v33 > 3)
  {
    v38 = 0;
  }

  if (v33)
  {
    if (v33 > 3)
    {
      LODWORD(v33) = 4;
    }

    switch(v33)
    {
      case 2:
        LODWORD(v33) = *a1;
        break;
      case 3:
        LODWORD(v33) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v33) = *a1;
        break;
      default:
        LODWORD(v33) = *a1;
        break;
    }
  }

  return v30 + (v33 | v38) + 1;
}

void sub_23BB8D428(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v9 | 7;
  v14 = v9 | 7 | v12;
  v15 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 10;
  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v17 = 3;
  }

  v18 = v17 + ((((v9 + 16) & ~v9) + v10 + v14) & ~v14);
  v19 = v18 + 1;
  v20 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v20 + 16;
  if (v18 + 1 > v20 + 16)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v20 + 16;
  }

  if (v22 <= 0x10)
  {
    v22 = 16;
  }

  v23 = v22 + 1;
  v24 = v22 & 0xFFFFFFFFFFFFFFF8;
  v25 = *(sub_23BBD96B8() - 8);
  v26 = ((*(v25 + 64) + v14 + ((*(v25 + 80) + v24 + 24) & ~*(v25 + 80))) & ~v14) + v23;
  if (((v26 + v13) & ~v13) + v21 > v26)
  {
    v26 = ((v26 + v13) & ~v13) + v21;
  }

  v27 = v23 + ((v19 + v14) & ~v14);
  if (v27 <= v26)
  {
    v27 = v26;
  }

  v28 = *(a4 + 16);
  v29 = *(v28 - 8);
  v30 = *(v29 + 84);
  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = *(v29 + 84);
  }

  v32 = *(v29 + 80);
  v33 = *(v29 + 64) + ((v32 + (v27 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v32) + 1;
  v34 = 8 * v33;
  if (a3 <= v31)
  {
    v35 = 0;
  }

  else if (v33 <= 3)
  {
    v38 = ((a3 - v31 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v38))
    {
      v35 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v35 = v39;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    v35 = 1;
  }

  if (v31 < a2)
  {
    v36 = ~v31 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> v34) + 1;
      if (v33)
      {
        v40 = v36 & ~(-1 << v34);
        bzero(a1, v33);
        if (v33 == 3)
        {
          *a1 = v40;
          a1[2] = BYTE2(v40);
        }

        else if (v33 == 2)
        {
          *a1 = v40;
        }

        else
        {
          *a1 = v36;
        }
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v36;
      v37 = 1;
    }

    switch(v35)
    {
      case 1:
        a1[v33] = v37;
        return;
      case 2:
        *&a1[v33] = v37;
        return;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v33] = v37;
        return;
      default:
        return;
    }
  }

  switch(v35)
  {
    case 1:
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 2:
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 3:
LABEL_57:
      __break(1u);
      JUMPOUT(0x23BB8D858);
    case 4:
      *&a1[v33] = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (a2)
      {
LABEL_40:
        v41 = (&a1[v27 + 8] & 0xFFFFFFFFFFFFFFF8);
        if ((v30 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v41 + v32 + 16) & ~v32, a2, v30, v28);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v41 = a2 & 0x7FFFFFFF;
          v41[1] = 0;
        }

        else
        {
          v41[1] = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23BB8D8B8()
{
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(319);
  if (v0 <= 0x3F)
  {
    sub_23BB8D9D0(319, &qword_27E1A31F0, type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard, _s20LocalizationResourceVMa);
    if (v1 <= 0x3F)
    {
      sub_23BB8D9D0(319, &qword_27E1A31F8, _s22LocalizedPriceResourceVMa, _s11PriceStringOMa);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23BB8D9D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_23BB8DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_40_3();
  _s11PriceStringOMa(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_23_17();
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_0(*(v4 + *(a3 + 20) + 8));
    }

    sub_23BBD96B8();
    v8 = OUTLINED_FUNCTION_28_11();
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v9);
}

void sub_23BB8DB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40_3();
  _s11PriceStringOMa(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 - 1);
      return;
    }

    sub_23BBD96B8();
    OUTLINED_FUNCTION_28_11();
  }

  OUTLINED_FUNCTION_27_11();

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_23BB8DBF0()
{
  v0 = _s11PriceStringOMa(319);
  if (v1 <= 0x3F)
  {
    v2 = sub_23BBD96B8();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_23BB8DC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  OUTLINED_FUNCTION_13_0(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for SubscriptionStoreControlOption(0);
  v11 = OUTLINED_FUNCTION_13_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v12 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  sub_23BB92780();
  sub_23BA8CE68();
  sub_23BB95980();
  sub_23BB95E08();
  v18 = *(v16 + 24);
  v17 = *(v16 + 32);
  v19 = *(a2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 20));
  if (v19)
  {
    v31 = a1;
    v20 = a2 + *(type metadata accessor for Subscription() + 20);
    v21 = *(v20 + 8);
    if (v21 == 2)
    {

      v22 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v24 = v23;
    }

    else
    {
      v22 = *v20;
      v24 = v21 & 1;
    }

    v26 = v21 == 2;
    v25 = v19(v22, v24, v26);
    sub_23B979A38(v22, v24, v26);
    a1 = v31;
  }

  else
  {

    v25 = 0;
  }

  sub_23BB926D0(a1, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  sub_23BB926D0(v16, type metadata accessor for SubscriptionStoreCopyWriter);
  v27 = *(a2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0) + 20));
  sub_23BB926D0(a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3260);
  *(a3 + v28[10]) = v25;
  result = sub_23BB92728();
  v30 = (a3 + v28[9]);
  *v30 = v18;
  v30[1] = v17;
  *(a3 + v28[11]) = v27;
  return result;
}

uint64_t sub_23BB8DF88()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t sub_23BB8DFFC()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

void sub_23BB8E070()
{
  OUTLINED_FUNCTION_19();
  sub_23BAE2194();
  if (v2)
  {
    v3 = *(type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0) + 20);
    v4 = *(v1 + v3);
    v5 = *(v1 + v3 + 8);
    v6 = (v0 + v3);
    v7 = v4 == *v6 && v5 == v6[1];
    if (v7 || (sub_23BBDDA88() & 1) != 0)
    {
      v8 = OUTLINED_FUNCTION_28_11();
      if (MEMORY[0x23EEB1E70](v8, v0 + v9))
      {

        sub_23BAE2194();
      }
    }
  }
}

uint64_t sub_23BB8E118()
{
  v0 = _s11PriceStringOMa(0);
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_5();
  v88 = v2;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v3);
  v89 = &v81 - v4;
  v83 = _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v87 = (v7 - v6);
  v82 = _s20LocalizationResourceVMa();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_5();
  v86 = v9;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v10);
  v85 = &v81 - v11;
  v90 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_5();
  v84 = v13;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  v19 = (&v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3248);
  OUTLINED_FUNCTION_13_0(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  sub_23BB92780();
  sub_23BB92780();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_0_58();
    sub_23BB92780();
    OUTLINED_FUNCTION_19_29();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_9_30();
      sub_23BB92728();
      sub_23BAE2194();
      v69 = v90;
      if (v70)
      {
        v71 = *(v90 + 20);
        v72 = *&v25[v71];
        v73 = *&v25[v71 + 8];
        v74 = &v16[v71];
        v75 = v72 == *v74 && v73 == *(v74 + 1);
        if (v75 || (sub_23BBDDA88()) && (MEMORY[0x23EEB1E70](&v25[*(v69 + 24)], &v16[*(v69 + 24)]))
        {
          sub_23BAE2194();
          if (v76)
          {
            OUTLINED_FUNCTION_1_60();
            sub_23BB926D0(v16, v77);
            sub_23BB926D0(v25, v69);
LABEL_41:
            OUTLINED_FUNCTION_4_43();
            v62 = 1;
            return v62 & 1;
          }
        }
      }

      v78 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
      v34 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
      v79 = v16;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_11_30();
    v52 = v25;
LABEL_29:
    sub_23BB926D0(v52, v51);
    sub_23B9A8E20(v29, &qword_27E1A3248);
LABEL_47:
    v62 = 0;
    return v62 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_0_58();
    sub_23BB92780();
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3258) + 48);
    OUTLINED_FUNCTION_19_29();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_9_30();
      v32 = v84;
      sub_23BB92728();
      v25 = v85;
      sub_23BB92728();
      v33 = v86;
      sub_23BB92728();
      sub_23BAE2194();
      v34 = v90;
      if ((v35 & 1) == 0 || ((v36 = *(v90 + 20), v37 = *&v22[v36], v38 = *&v22[v36 + 8], v39 = (v32 + v36), v37 == *v39) ? (v40 = v38 == v39[1]) : (v40 = 0), !v40 && (sub_23BBDDA88() & 1) == 0 || (MEMORY[0x23EEB1E70](&v22[v34[6]], v32 + v34[6]) & 1) == 0 || (sub_23BAE2194(), (v41 & 1) == 0)))
      {
        OUTLINED_FUNCTION_1_60();
        sub_23BB926D0(v22, v65);
        sub_23BB926D0(v33, _s20LocalizationResourceVMa);
        sub_23BB926D0(v25, _s20LocalizationResourceVMa);
        v66 = v32;
LABEL_44:
        v68 = v34;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_1_60();
      sub_23BB926D0(v22, v42);
      v43 = sub_23BBDCCA8();
      sub_23BB926D0(v32, v34);
      if (v43)
      {
        v44 = v82;
        v45 = &v25[*(v82 + 20)];
        v47 = *v45;
        v46 = *(v45 + 1);
        sub_23BB926D0(v25, _s20LocalizationResourceVMa);
        v48 = (v33 + *(v44 + 20));
        v50 = *v48;
        v49 = v48[1];
        sub_23BB926D0(v33, _s20LocalizationResourceVMa);
        if (v47 == 6)
        {
          if (v50 != 6)
          {
            goto LABEL_46;
          }
        }

        else if (v50 == 6 || v50 != v47 || v46 != v49)
        {
          goto LABEL_46;
        }

        goto LABEL_41;
      }

      v78 = _s20LocalizationResourceVMa;
      v34 = _s20LocalizationResourceVMa;
      v79 = v33;
LABEL_43:
      sub_23BB926D0(v79, v78);
      v66 = v25;
      goto LABEL_44;
    }

    sub_23BB926D0(&v22[v31], _s20LocalizationResourceVMa);
    OUTLINED_FUNCTION_11_30();
    v52 = v22;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_0_58();
  sub_23BB92780();
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3250) + 48);
  OUTLINED_FUNCTION_19_29();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_23BB926D0(v19 + v53, _s11PriceStringOMa);
    v51 = _s22LocalizedPriceResourceVMa;
    v52 = v19;
    goto LABEL_29;
  }

  v54 = v87;
  sub_23BB92728();
  v55 = v89;
  sub_23BB92728();
  v56 = v88;
  sub_23BB92728();
  v57 = *v19 == *v54 && v19[1] == v54[1];
  v58 = v83;
  if (!v57 && (sub_23BBDDA88() & 1) == 0 || (OUTLINED_FUNCTION_16_25(), (sub_23BBDCCA8() & 1) == 0) || (OUTLINED_FUNCTION_28_11(), sub_23BAE3C9C(), (v59 & 1) == 0))
  {
    OUTLINED_FUNCTION_12_31();
    sub_23BB926D0(v19, v67);
    sub_23BB926D0(v56, _s11PriceStringOMa);
    sub_23BB926D0(v55, _s11PriceStringOMa);
    v66 = v54;
    v68 = v58;
LABEL_45:
    sub_23BB926D0(v66, v68);
LABEL_46:
    OUTLINED_FUNCTION_4_43();
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_12_31();
  sub_23BB926D0(v19, v60);
  sub_23BAE2194();
  v62 = v61;
  sub_23BB926D0(v56, _s11PriceStringOMa);
  v63 = OUTLINED_FUNCTION_29_5();
  sub_23BB926D0(v63, v64);
  sub_23BB926D0(v54, v58);
  OUTLINED_FUNCTION_4_43();
  return v62 & 1;
}

uint64_t sub_23BB8E904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v64 = *(a1 + 16);
  v65 = a1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3210);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3218);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  v2 = sub_23BBDC078();
  OUTLINED_FUNCTION_3_2();
  v56 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  __src = v2;
  v85 = WitnessTable;
  v57 = MEMORY[0x277CE0C08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v55 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v62 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v53 = &v53 - v16;
  v60 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v66 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v54 = &v53 - v19;
  v61 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v68 = v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v58 = &v53 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v69 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_5();
  v59 = v25;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v26);
  v63 = &v53 - v27;
  v28 = *(v65 + 24);
  v71 = v64;
  v72 = v28;
  v73 = v67;
  sub_23B9BE15C();
  sub_23BBDC068();
  sub_23BBDB4A8();
  sub_23BBDB6D8();
  (*(v56 + 8))(v6, v2);
  v102 = 0;
  v101 = 1;
  v100 = 1;
  v99 = 1;
  v98 = 1;
  v97 = 1;
  v103 = 0;
  __src = 0x404E000000000000;
  LOBYTE(v85) = 0;
  v86 = 0;
  v87 = 1;
  v88 = 0;
  v89 = 1;
  v90 = 0;
  v91 = 1;
  v92 = 0;
  v93 = 1;
  v94 = 0;
  v95 = 1;
  v96 = 0;
  KeyPath = v2;
  v83 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_23B9DCCD0(OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v31 = v53;
  sub_23BA19724(&__src, v30, v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v55 + 8))(v12, OpaqueTypeMetadata2);
  KeyPath = swift_getKeyPath();
  LOWORD(v83) = 0;
  v33 = sub_23B9A6A40();
  v80 = OpaqueTypeConformance2;
  v81 = v33;
  v34 = swift_getWitnessTable();
  v35 = v54;
  MEMORY[0x23EEB43C0](&KeyPath, v13, &type metadata for CompactPickerLabelMaxWidthModifier, v34);

  (*(v62 + 8))(v31, v13);
  sub_23BBDC2F8();
  v36 = sub_23BB925AC();
  v78 = v34;
  v79 = v36;
  v51 = v60;
  v52 = swift_getWitnessTable();
  v37 = v58;
  sub_23BBDBB18();
  (*(v66 + 8))(v35, v51);
  v76 = v52;
  v77 = MEMORY[0x277CDFC60];
  v38 = v61;
  v39 = swift_getWitnessTable();
  sub_23BBDBA08();
  (*(v68 + 8))(v37, v38);
  OUTLINED_FUNCTION_1_15();
  v41 = sub_23B9A8CB4(v40, &qword_27E198DF8);
  v74 = v39;
  v75 = v41;
  v42 = swift_getWitnessTable();
  v43 = OUTLINED_FUNCTION_19_29();
  sub_23B9D2D88(v43, v44, v42);
  v45 = *(v69 + 8);
  v46 = OUTLINED_FUNCTION_19_29();
  v45(v46);
  v47 = OUTLINED_FUNCTION_29_5();
  sub_23B9D2D88(v47, v48, v42);
  v49 = OUTLINED_FUNCTION_29_5();
  return (v45)(v49);
}

uint64_t sub_23BB8F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v41 = a2;
  v55 = a4;
  v56 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3218);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = (&v41 - v6);
  v50 = sub_23BBDA1E8();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v41 - v9;
  v10 = sub_23BBDB588();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v14 = sub_23BBDBFE8();
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390);
  v17 = sub_23BBDA358();
  v46 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v43 = &v41 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3210);
  v19 = sub_23BBDA358();
  v47 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v45 = &v41 - v23;
  sub_23BBDA998();
  v57 = v41;
  v58 = v48;
  v59 = v56;
  sub_23BBDBFD8();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0AA8], v10);
  v24 = sub_23BBDB468();
  v25 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v24);
  sub_23BA750EC(v13);
  sub_23BBDB4D8();
  sub_23B9A8E20(v25, &qword_27E198F18);
  (*(v11 + 8))(v13, v10);
  WitnessTable = swift_getWitnessTable();
  v27 = v43;
  sub_23BBDBAC8();

  (*(v44 + 8))(v16, v14);
  v28 = v49;
  sub_23BBDA1D8();
  v29 = sub_23B9A8CB4(&qword_27E198388, &qword_27E198390);
  v63[4] = WitnessTable;
  v63[5] = v29;
  v30 = swift_getWitnessTable();
  v31 = v50;
  sub_23BBDB8A8();
  (*(v51 + 8))(v28, v31);
  (*(v46 + 8))(v27, v17);
  v32 = sub_23B9A8CB4(&qword_27E1A3230, &qword_27E1A3210);
  v63[2] = v30;
  v63[3] = v32;
  v33 = swift_getWitnessTable();
  v34 = v45;
  sub_23B9D2D88(v21, v19, v33);
  v35 = v47;
  v36 = *(v47 + 8);
  v36(v21, v19);
  v37 = sub_23BBDAB48();
  v38 = v52;
  *v52 = v37;
  *(v38 + 8) = 0x4008000000000000;
  *(v38 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3238);
  sub_23BB92780();
  (*(v35 + 16))(v21, v34, v19);
  v63[0] = v21;
  v39 = v53;
  sub_23BB92660(v38, v53);
  v63[1] = v39;
  v62[0] = v19;
  v62[1] = v54;
  v60 = v33;
  v61 = sub_23B9A8CB4(&qword_27E1A3240, &qword_27E1A3218);
  sub_23BB6739C(v63, 2, v62);
  sub_23B9A8E20(v38, &qword_27E1A3218);
  v36(v34, v19);
  sub_23B9A8E20(v39, &qword_27E1A3218);
  return (v36)(v21, v19);
}

uint64_t sub_23BB8F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for CompactSubscriptionPickerOptionLabel();
  sub_23B9D2D88(a1 + *(v13 + 40), a2, a3);
  v14 = (a1 + *(v13 + 36));
  v15 = v14[1];
  v27 = *v14;
  v28 = v15;
  sub_23B9F6A08();

  v16 = sub_23BBDB678();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v7 + 16))(v9, v12, a2);
  v27 = v16;
  v28 = v18;
  v20 &= 1u;
  v29 = v20;
  v30 = v22;
  v31[0] = v9;
  v31[1] = &v27;
  sub_23BA51B84(v16, v18, v20);

  v26[0] = a2;
  v26[1] = MEMORY[0x277CE0BD8];
  v25[2] = a3;
  v25[3] = MEMORY[0x277CE0BC8];
  sub_23BB6739C(v31, 2, v26);
  sub_23BA51C9C(v16, v18, v20);

  v23 = *(v7 + 8);
  v23(v12, a2);
  sub_23BA51C9C(v27, v28, v29);

  return (v23)(v9, a2);
}

uint64_t sub_23BB8FAF8@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v86 = sub_23BBDB148();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CompactOptionLowerLabel.OtherOffer(0);
  MEMORY[0x28223BE20](v88);
  v82 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3288);
  v91 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v90 = &v75 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3290);
  MEMORY[0x28223BE20](v106);
  v92 = &v75 - v4;
  v5 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v75 - v8;
  v9 = _s22LocalizedPriceResourceVMa(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3298);
  MEMORY[0x28223BE20](v100);
  v94 = &v75 - v12;
  v79 = sub_23BBD96B8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v75 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32A0);
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v75 - v19;
  v20 = _s20LocalizationResourceVMa();
  MEMORY[0x28223BE20](v20);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = &v75 - v24;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32A8);
  MEMORY[0x28223BE20](v104);
  v105 = &v75 - v25;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32B0);
  MEMORY[0x28223BE20](v97);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32B8);
  MEMORY[0x28223BE20](v103);
  v99 = &v75 - v26;
  v102 = type metadata accessor for CompactOptionLowerLabel.Standard(0);
  MEMORY[0x28223BE20](v102);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  v32 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
  MEMORY[0x28223BE20](v32 - 8);
  v96 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v75 - v35;
  v37 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  MEMORY[0x28223BE20](v37);
  sub_23BB92780();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3258);
      sub_23BB92728();
      sub_23BB92728();
      sub_23BB92780();
      v39 = *(v102 + 20);
      *&v28[v39] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997F0);
      swift_storeEnumTagMultiPayload();
      sub_23BB92780();
      if (v22[*(v20 + 20)] == 6)
      {
        sub_23BB74064();
      }

      else
      {
        sub_23BB72A48();
      }

      (*(v78 + 32))(v77, v14, v79);
      v60 = sub_23BBDB668();
      v62 = v61;
      v64 = v63;
      v101 = _s20LocalizationResourceVMa;
      sub_23BB926D0(v22, _s20LocalizationResourceVMa);
      v65 = v95;
      sub_23BB90B0C(v60, v62, v64 & 1);
      sub_23BA51C9C(v60, v62, v64 & 1);

      sub_23BB92780();
      v66 = v84;
      v67 = *(v84 + 16);
      v68 = v80;
      v69 = v65;
      v70 = v87;
      v67(v80, v69, v87);
      v71 = v94;
      sub_23BB92780();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32E8);
      v67((v71 + *(v72 + 48)), v68, v70);
      v93 = *(v66 + 8);
      v93(v68, v70);
      sub_23BB926D0(v31, type metadata accessor for CompactOptionLowerLabel.Standard);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB92CEC(&qword_27E1A32D0, type metadata accessor for CompactOptionLowerLabel.Standard);
      sub_23B9A8CB4(&qword_27E1A32D8, &qword_27E1A3298);
      v73 = v99;
      sub_23BBDACD8();
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB92C04();
      sub_23BB92D34();
      sub_23BBDACD8();
      sub_23B9A8E20(v73, &qword_27E1A32B8);
      sub_23B9A8E20(v71, &qword_27E1A3298);
      v93(v95, v70);
      sub_23BB926D0(v28, type metadata accessor for CompactOptionLowerLabel.Standard);
      sub_23BB926D0(v98, v101);
      v42 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
      v43 = v96;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3250);
      v76 = v11;
      sub_23BB92728();
      v44 = v89;
      sub_23BB92728();
      v45 = v82;
      sub_23BB92780();
      v46 = v88;
      v47 = *(v88 + 20);
      *(v45 + v47) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996A8);
      swift_storeEnumTagMultiPayload();
      v48 = v83;
      sub_23BBDB118();
      v49 = sub_23BB92CEC(&qword_27E1A32C0, type metadata accessor for CompactOptionLowerLabel.OtherOffer);
      v50 = v90;
      sub_23BBDB968();
      (*(v85 + 8))(v48, v86);
      sub_23BB926D0(v45, type metadata accessor for CompactOptionLowerLabel.OtherOffer);
      v51 = v81;
      sub_23BB92780();
      sub_23BAE1C0C();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      sub_23BB926D0(v51, _s11PriceStringOMa);
      v108 = v46;
      v109 = v49;
      swift_getOpaqueTypeConformance2();
      v59 = v92;
      v58 = v93;
      sub_23BBDB908();
      sub_23BA51C9C(v53, v55, v57 & 1);

      (*(v91 + 8))(v50, v58);
      sub_23B979510();
      swift_storeEnumTagMultiPayload();
      sub_23BB92C04();
      sub_23BB92D34();
      sub_23BBDACD8();
      sub_23B9A8E20(v59, &qword_27E1A3290);
      sub_23BB926D0(v44, _s11PriceStringOMa);
      v42 = _s22LocalizedPriceResourceVMa;
      v43 = v76;
    }
  }

  else
  {
    sub_23BB92728();
    sub_23BB92780();
    v40 = *(v102 + 20);
    *&v31[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997F0);
    swift_storeEnumTagMultiPayload();
    sub_23BB92780();
    swift_storeEnumTagMultiPayload();
    sub_23BB92CEC(&qword_27E1A32D0, type metadata accessor for CompactOptionLowerLabel.Standard);
    sub_23B9A8CB4(&qword_27E1A32D8, &qword_27E1A3298);
    v41 = v99;
    sub_23BBDACD8();
    sub_23B979510();
    swift_storeEnumTagMultiPayload();
    sub_23BB92C04();
    sub_23BB92D34();
    sub_23BBDACD8();
    sub_23B9A8E20(v41, &qword_27E1A32B8);
    sub_23BB926D0(v31, type metadata accessor for CompactOptionLowerLabel.Standard);
    v42 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard;
    v43 = v36;
  }

  return sub_23BB926D0(v43, v42);
}

uint64_t sub_23BB90B0C(uint64_t a1, uint64_t a2, char a3)
{
  sub_23BBDAF28();
  sub_23BBDB538();
  swift_getKeyPath();
  sub_23BA51B84(a1, a2, a3 & 1);

  sub_23BBDB498();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32F0);
  sub_23BB93934(&qword_27E1A32F8, &qword_27E1A32F0, &unk_23BC035B8, sub_23BB9321C);
  sub_23BBDB6D8();
  sub_23BA51C9C(a1, a2, a3 & 1);
}

uint64_t sub_23BB90C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDB148();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_23BBDB588();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3378);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3380);
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v35 - v21;
  sub_23BB91100(v2, v18);
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A68], v12);
  v23 = sub_23BBDB468();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
  sub_23BA750EC(v15);
  v24 = sub_23BBDB4D8();
  sub_23B9A8E20(v11, &qword_27E198F18);
  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v26 = &v18[*(v16 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_23BBDB118();
  v27 = sub_23BB93934(&qword_27E1A3388, &qword_27E1A3378, &unk_23BC03728, sub_23BB939D0);
  sub_23BBDB968();
  (*(v38 + 8))(v8, v39);
  sub_23B9A8E20(v18, &qword_27E1A3378);
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
  sub_23BB92780();
  sub_23BAE1C0C();
  v29 = v28;
  v31 = v30;
  LOBYTE(v8) = v32;
  sub_23BB926D0(v5, _s11PriceStringOMa);
  v41 = v16;
  v42 = v27;
  swift_getOpaqueTypeConformance2();
  v33 = v36;
  sub_23BBDB908();
  sub_23BA51C9C(v29, v31, v8 & 1);

  return (*(v37 + 8))(v22, v33);
}

uint64_t sub_23BB91100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a2;
  v33[0] = type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel(0);
  MEMORY[0x28223BE20](v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A33B8);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDAF68();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompactOptionLowerLabel.Standard(0);
  sub_23B9B7B64();
  v15 = (*(v12 + 88))(v14, v11);
  v16 = *MEMORY[0x277CE0558];
  (*(v12 + 8))(v14, v11);
  if (v15 == v16)
  {
    v17 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
    v18 = *(v17 + 24);
    v19 = (a1 + *(v17 + 20));
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v33[0] + 20);
    v23 = sub_23BBD96B8();
    (*(*(v23 - 8) + 16))(&v4[v22], a1 + v18, v23);
    *v4 = v21;
    *(v4 + 1) = v20;
    sub_23BB92780();
    swift_storeEnumTagMultiPayload();
    sub_23BB92CEC(&qword_27E1A33B0, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel);

    sub_23BBDACD8();
    return sub_23BB926D0(v4, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel);
  }

  else
  {
    sub_23BB92780();
    sub_23BAE1C0C();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_23BB926D0(v10, _s11PriceStringOMa);
    *v7 = v26;
    *(v7 + 1) = v28;
    v7[16] = v30 & 1;
    *(v7 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_23BB92CEC(&qword_27E1A33B0, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel);
    return sub_23BBDACD8();
  }
}

uint64_t sub_23BB914E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_23BBDB588();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277CE0A68], v13, v15);
  v18 = sub_23BBDB468();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  sub_23BA750EC(v17);
  v19 = sub_23BBDB4D8();
  sub_23B9A8E20(v12, &qword_27E198F18);
  (*(v14 + 8))(v17, v13);
  KeyPath = swift_getKeyPath();
  a3 &= 1u;
  sub_23BA51B84(a1, a2, a3);

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = v19;
  return result;
}

uint64_t sub_23BB916CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBD96B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDAB48();
  v29 = 1;
  v8 = *(v1 + 1);
  v27 = *v1;
  v28 = v8;
  sub_23B9F6A08();

  v9 = sub_23BBDB678();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel(0);
  (*(v4 + 16))(v6, &v1[*(v16 + 20)], v3);
  v17 = sub_23BBDB668();
  v19 = v18;
  v21 = v20;
  v13 &= 1u;
  v26 = v13;
  LOBYTE(v27) = v13;
  LOBYTE(v4) = v22 & 1;
  v30 = v22 & 1;
  sub_23BA51B84(v9, v11, v13);

  sub_23BA51B84(v17, v19, v4);

  sub_23BA51C9C(v17, v19, v4);

  sub_23BA51C9C(v9, v11, v26);

  v24 = v29;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19;
  *(a1 + 72) = v4;
  *(a1 + 80) = v21;
  return result;
}

uint64_t sub_23BB918B0()
{
  sub_23BB932D4();

  return sub_23BBDA958();
}

uint64_t sub_23BB918F8(uint64_t a1)
{
  v2 = sub_23BBDAF68();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_23BB919C0(v5);
}

uint64_t sub_23BB919C0(uint64_t a1)
{
  v2 = sub_23BBDAF68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_23BB932D4();
  sub_23BBDA968();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23BB91AC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BBD9848();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBD96B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  sub_23BAE1EA0(v10);
  type metadata accessor for CompactOptionLowerLabel.OtherOffer(0);
  sub_23B9B75B4();
  sub_23BBD96A8();
  v11 = *(v4 + 16);
  v36 = v3;
  v11(v6, v9, v3);
  v12 = sub_23BBDD028();
  v39[0] = 10;
  v39[1] = 0xE100000000000000;
  v38 = v39;
  v14 = sub_23BB92E78(1, 1, sub_23B9AE380, v37, v12, v13);
  v15 = v14[2];
  if (v15 == 1)
  {
    v22 = v14[4];
    v18 = v14[5];
    v21 = v14[7];
    v35 = v14[6];

    v16 = v22;
  }

  else
  {
    if (v15)
    {
      v30 = v14[6];
      v21 = v14[7];
      v31 = v14[4];
      v34 = v14[5];
      v35 = v30;
      v23 = v14[8];
      v25 = v14[9];
      v27 = v14[10];
      v29 = v14[11];

      v16 = v31;
      v18 = v34;

      goto LABEL_7;
    }

    v16 = sub_23BBDD678();
    v18 = v17;
    v35 = v19;
    v21 = v20;
  }

  v23 = sub_23BBDD678();
  v25 = v24;
  v27 = v26;
  v29 = v28;
LABEL_7:
  result = (*(v4 + 8))(v9, v36);
  *a1 = v16;
  a1[1] = v18;
  a1[2] = v35;
  a1[3] = v21;
  a1[4] = v23;
  a1[5] = v25;
  a1[6] = v27;
  a1[7] = v29;
  return result;
}

uint64_t sub_23BB91D60@<X0>(_OWORD *a1@<X8>)
{
  v36 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A32A0);
  v33 = *(v38 - 8);
  v1 = v33;
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  sub_23BB91AC4(&v42);
  v34 = v45;
  v7 = v46;
  v6 = v47;
  sub_23BB938E0();
  v8 = sub_23BBDB678();
  v10 = v9;
  v12 = v11;
  sub_23BB914E4(v8, v9, v11 & 1, v13, &v42);
  sub_23BA51C9C(v8, v10, v12 & 1);

  v39 = v34;
  v40 = v7;
  v41 = v6;
  v14 = sub_23BBDB678();
  v16 = v15;
  LOBYTE(v8) = v17;
  v35 = v5;
  sub_23BB90B0C(v14, v15, v17 & 1);
  sub_23BA51C9C(v14, v16, v8 & 1);

  v18 = v42;
  v19 = v44;
  v20 = *(&v45 + 1);
  v32 = v45;
  v21 = *(v1 + 16);
  v22 = v43;
  v23 = v37;
  v24 = v38;
  v21(v37, v5, v38);
  v25 = v36;
  *v36 = v18;
  v22 &= 1u;
  *(v25 + 16) = v22;
  *&v34 = v19;
  v26 = v32;
  *(v25 + 3) = v19;
  *(v25 + 4) = v26;
  *(v25 + 5) = v20;
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3370);
  v21(&v27[*(v28 + 48)], v23, v24);
  sub_23BA51B84(v18, *(&v18 + 1), v22);
  v29 = *(v33 + 8);

  v29(v35, v24);
  v29(v23, v24);
  sub_23BA51C9C(v18, *(&v18 + 1), v22);
}

uint64_t sub_23BB9205C()
{
  v0 = sub_23BBDAF68();
  __swift_allocate_value_buffer(v0, qword_27E1A3148);
  v1 = __swift_project_value_buffer(v0, qword_27E1A3148);
  v2 = *MEMORY[0x277CE0560];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_23BB920E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E197830 != -1)
  {
    swift_once();
  }

  v2 = sub_23BBDAF68();
  v3 = __swift_project_value_buffer(v2, qword_27E1A3148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23BB9218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BB92CEC(&qword_27E1999B0, MEMORY[0x277CE0570]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BB92220()
{
  sub_23BB92600();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BB92298()
{
  sub_23BB92600();
  sub_23BBDA958();
  if (v1)
  {
    return 0x4064000000000000;
  }

  else
  {
    return 0x7FF0000000000000;
  }
}

void *sub_23BB922E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = __src - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) == 0)
  {

    sub_23BBDD5A8();
    v12 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846DC(a2, a3, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_23BBDC318();
  sub_23BBDA488();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3278);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3280);
  return memcpy((a4 + *(v14 + 36)), __src, 0x70uLL);
}

uint64_t sub_23BB92578@<X0>(uint64_t a1@<X8>)
{
  result = sub_23BB92298();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_23BB925AC()
{
  result = qword_27E1A3220;
  if (!qword_27E1A3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3220);
  }

  return result;
}

unint64_t sub_23BB92600()
{
  result = qword_27E1A3228;
  if (!qword_27E1A3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3228);
  }

  return result;
}

uint64_t sub_23BB92660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BB926D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB92728()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB92780()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB9280C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(v1);
  v2 = OUTLINED_FUNCTION_23_17();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_23BB9285C()
{
  v0 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(v0);
  OUTLINED_FUNCTION_27_11();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_23BB928BC()
{
  result = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB92928()
{
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_41();
  sub_23BBDBFE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198390);
  OUTLINED_FUNCTION_8_41();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3210);
  OUTLINED_FUNCTION_8_41();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3218);
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_41();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23B9A6A40();
  swift_getWitnessTable();
  sub_23BB925AC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B9A8CB4(v0, &qword_27E198DF8);
  return swift_getWitnessTable();
}

unint64_t sub_23BB92C04()
{
  result = qword_27E1A32C8;
  if (!qword_27E1A32C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A32B8);
    sub_23BB92CEC(&qword_27E1A32D0, type metadata accessor for CompactOptionLowerLabel.Standard);
    sub_23B9A8CB4(&qword_27E1A32D8, &unk_27E1A3298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A32C8);
  }

  return result;
}

uint64_t sub_23BB92CEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BB92D34()
{
  result = qword_27E1A32E0;
  if (!qword_27E1A32E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3290);
    type metadata accessor for CompactOptionLowerLabel.OtherOffer(255);
    sub_23BB92CEC(&qword_27E1A32C0, type metadata accessor for CompactOptionLowerLabel.OtherOffer);
    swift_getOpaqueTypeConformance2();
    sub_23BB92CEC(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A32E0);
  }

  return result;
}

uint64_t sub_23BB92E78(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_23BBDD168();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_23B9B84B4();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_23B9B84B4();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_23BBDD148();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_23BBDD098();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_23BBDD168();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B9B84B4();
      v47 = v27;
    }

    v12 = *(v47 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v47 + 24) >> 1)
    {
      sub_23B9B84B4();
      v47 = v28;
    }

    *(v47 + 16) = v11;
    v26 = (v47 + 32 * v12);
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_23BBDD098();
    if ((v22 & 1) == 0 && *(v47 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_23BBDD168();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_23B9B84B4();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23BB9321C()
{
  result = qword_27E1A3300;
  if (!qword_27E1A3300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3308);
    sub_23B9A8CB4(&qword_27E19CDC0, &qword_27E19CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3300);
  }

  return result;
}

unint64_t sub_23BB932D4()
{
  result = qword_27E1A3310;
  if (!qword_27E1A3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3310);
  }

  return result;
}

uint64_t sub_23BB9334C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  _s22LocalizedPriceResourceVMa(v1);
  OUTLINED_FUNCTION_10_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_23_17();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E4F8);
    v3 = OUTLINED_FUNCTION_16_25();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_23BB93464()
{
  v1 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(v1);
  OUTLINED_FUNCTION_10_2();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_23_17();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3328);
    v3 = OUTLINED_FUNCTION_16_25();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = OUTLINED_FUNCTION_40_3();
  v9(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v10 + 84) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    OUTLINED_FUNCTION_16_25();
  }

  OUTLINED_FUNCTION_27_11();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_23BB93610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(319);
  if (v8 <= 0x3F)
  {
    sub_23BB936B0(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB936B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBD9C18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BB93708()
{
  result = qword_27E1A3348;
  if (!qword_27E1A3348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3280);
    sub_23B9A8CB4(&qword_27E1A3350, &qword_27E1A3278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3348);
  }

  return result;
}

unint64_t sub_23BB937C4()
{
  result = qword_27E1A3358;
  if (!qword_27E1A3358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3360);
    sub_23BB92C04();
    sub_23BB92D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3358);
  }

  return result;
}

uint64_t sub_23BB93888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB92220();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23BB938E0()
{
  result = qword_27E1A3368;
  if (!qword_27E1A3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3368);
  }

  return result;
}

uint64_t sub_23BB93934(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_1_15();
    sub_23B9A8CB4(v8, v9);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BB939D0()
{
  result = qword_27E1A3390;
  if (!qword_27E1A3390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3398);
    sub_23BB93A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3390);
  }

  return result;
}

unint64_t sub_23BB93A54()
{
  result = qword_27E1A33A0;
  if (!qword_27E1A33A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A33A8);
    sub_23BB92CEC(&qword_27E1A33B0, type metadata accessor for CompactOptionLowerLabel.Standard.MultilineLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A33A0);
  }

  return result;
}

uint64_t sub_23BB93B44(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  sub_23BBD96B8();
  v4 = OUTLINED_FUNCTION_16_25();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_23BB93BD0(uint64_t result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_23BBD96B8();
    OUTLINED_FUNCTION_16_25();
    OUTLINED_FUNCTION_27_11();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_23BB93C48()
{
  result = sub_23BBD96B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23BB93D0C()
{
  result = qword_27E1A33E0;
  if (!qword_27E1A33E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A33E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3378);
    sub_23BB93934(&qword_27E1A3388, &qword_27E1A3378, &unk_23BC03728, sub_23BB939D0);
    swift_getOpaqueTypeConformance2();
    sub_23BB92CEC(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A33E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return sub_23BB926D0(v0, type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration);
}

uint64_t sub_23BB93FAC()
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB9404C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_23BB94104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
    v11 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BB941B0()
{
  _s11PriceStringOMa(319);
  if (v0 <= 0x3F)
  {
    sub_23BB94548(319, &qword_27E1987E0, _s11PriceStringOMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BB94264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
      v11 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_23BB94358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 32);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
      v11 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23BB94454()
{
  sub_23B975EA0();
  if (v0 <= 0x3F)
  {
    sub_23BB94548(319, &qword_27E1A3430, MEMORY[0x277CDD300]);
    if (v1 <= 0x3F)
    {
      sub_23BB94548(319, &qword_27E197B58, MEMORY[0x277CDD2B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BB94548(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_23BB9459C()
{
  OUTLINED_FUNCTION_10_0();
  v34 = v2;
  v3 = sub_23BBD9848();
  v4 = OUTLINED_FUNCTION_13_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_6();
  v33 = v5;
  OUTLINED_FUNCTION_5_3();
  v6 = sub_23BBDCFC8();
  v7 = OUTLINED_FUNCTION_13_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v32 = v8;
  OUTLINED_FUNCTION_5_3();
  v30 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_28_12();
  v20 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v24 = OUTLINED_FUNCTION_19_30();
  type metadata accessor for SubscriptionStoreCopyWriter(v24);
  v31 = v1;
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v0, 1, v20);
  if (v25)
  {
    sub_23B979910(v0, &unk_27E19FEF0);
LABEL_7:
    sub_23BBDCFD8();
    sub_23BBD9838();
    sub_23BB73D2C();
    goto LABEL_8;
  }

  (*(v22 + 32))(v1, v0, v20);
  sub_23BBDCBF8();
  sub_23BBDCBD8();
  v26 = sub_23B9A0684(v17, v14);
  v27 = *(v10 + 8);
  v28 = v30;
  v27(v14, v30);
  v27(v17, v28);
  if ((v26 & 1) == 0)
  {
    (*(v22 + 8))(v1, v20);
    goto LABEL_7;
  }

  sub_23BBDCFD8();
  sub_23BBD9838();
  sub_23BB73D2C();
  (*(v22 + 8))(v1, v20);
LABEL_8:
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB9494C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v104 = v5;
  v6 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v102 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_2();
  v99 = v11;
  OUTLINED_FUNCTION_5_3();
  v106 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_27_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_2();
  v107 = v20;
  v21 = OUTLINED_FUNCTION_5_3();
  v98 = type metadata accessor for SubscriptionStoreControlOption(v21);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v100 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v101 = &v88 - v31;
  OUTLINED_FUNCTION_16_26();
  v32 = sub_23BB9860C();
  v33 = *(v2 + 16);
  v105 = v4;
  v89 = v0;
  if (v33 == 1)
  {
    v34 = 0;
    v35 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    *(&v88 - 2) = v4;
    *(&v88 - 1) = v2;
    v34 = sub_23BBB6F10(sub_23BB98760, (&v88 - 4), v37, v36 & 1);
    v35 = v38;
  }

  v39 = v25 + *(v6 + 20);
  v40 = *(v39 + 8);
  if (v40 == 2)
  {
    v41 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v96 = v42;
    v97 = v41;
  }

  else
  {
    v43 = *v39;
    v96 = v40 & 1;
    v97 = v43;
  }

  v44 = sub_23BBDC8C8();
  v94 = v45;
  v95 = v44;
  v46 = sub_23BBDC8B8();
  v48 = sub_23B9D4CA8(v46, v47);

  v103 = v2;
  if (v48)
  {
    v92 = 0;
    v93 = 0;
  }

  else
  {
    v49 = sub_23BBDC8B8();
    v92 = v50;
    v93 = v49;
  }

  v51 = sub_23BBDC8E8();
  v90 = v52;
  v91 = v51;
  sub_23B9787A8(v17);
  v53 = v107;
  sub_23BBDCA98();
  v54 = *(v13 + 8);
  v54(v17, v106);
  v55 = sub_23BBDCD08();
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v55);
  v56 = 0;
  if ((v35 & 1) == 0)
  {
    v57 = v89;
    sub_23B9787A8(v89);
    v58 = sub_23BBDCA28();
    v59 = v106;
    v60 = v58;
    v54(v57, v106);
    if (v60 >= v34)
    {
      v88 = v34;
      sub_23B9787A8(v57);
      v61 = sub_23BBDCA28();
      v54(v57, v59);
      if (v88 == v61)
      {
        v56 = 4;
      }

      else
      {
        v56 = 2;
      }
    }

    else
    {
      v56 = 8;
    }
  }

  OUTLINED_FUNCTION_35_9();
  sub_23B979510();
  OUTLINED_FUNCTION_0_59();
  sub_23BB98664(v25, v62);
  v63 = v100;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v55);
  v67 = *(v63 + 36);
  *(v29 + v67) = 0;
  sub_23BBDCC88();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = v96;
  *v29 = v97;
  *(v29 + 8) = v72;
  *(v29 + 16) = v40 == 2;
  v73 = v94;
  *(v29 + 24) = v95;
  *(v29 + 32) = v73;
  v74 = v92;
  *(v29 + 40) = v93;
  *(v29 + 48) = v74;
  v75 = v90;
  *(v29 + 56) = v91;
  *(v29 + 64) = v75;
  sub_23B99A974();
  *(v29 + v67) = v56;
  OUTLINED_FUNCTION_35_9();
  sub_23B99A974();
  OUTLINED_FUNCTION_17_18();
  v76 = v101;
  sub_23BB986BC();
  v77 = v105;
  v78 = v102;
  sub_23BB9860C();
  v79 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v81 = v80;
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v82 + 8))(v78);
  v83 = v103;
  v84 = *(v103 + 16);
  if (!v84)
  {
    sub_23B979910(v103, &qword_27E1988B0);
    goto LABEL_25;
  }

  if (v84 == 1)
  {
LABEL_25:

    goto LABEL_28;
  }

  if (v79 == *(v103 + 8) && v84 == v81)
  {
    sub_23B979910(v103, &qword_27E1988B0);
  }

  else
  {
    v86 = sub_23BBDDA88();
    sub_23B979910(v83, &qword_27E1988B0);

    if ((v86 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  *&v76[*(v63 + 36)] = 1;
LABEL_28:
  OUTLINED_FUNCTION_17_18();
  sub_23BB986BC();
  OUTLINED_FUNCTION_0_59();
  sub_23BB98664(v77, v87);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB94F68()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  sub_23BAE1C0C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23B979510();
  v12 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_11_0(v5, 1, v12);
  if (v13)
  {
    sub_23B979910(v5, &qword_27E1987C0);
  }

  else
  {
    sub_23BAE1C0C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    OUTLINED_FUNCTION_3_45();
    sub_23BB98664(v5, v20);
    sub_23BBDB5E8();
    v26 = v22;
    v27 = v21;
    v25[1] = v23;
    sub_23BA51C9C(v15, v17, v19 & 1);

    sub_23BA51C9C(v7, v9, v11 & 1);
  }

  OUTLINED_FUNCTION_8_42();
  sub_23BB98664(v1, v24);
  OUTLINED_FUNCTION_9_1();
}

void sub_23BB95108()
{
  OUTLINED_FUNCTION_10_0();
  v79 = v1;
  LODWORD(v72) = v2;
  v76 = v3;
  v80 = v4;
  v74 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v77 = v6;
  OUTLINED_FUNCTION_5_3();
  sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v70 = v8;
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v69 = v9 - v10;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v11);
  v68 = &v62[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F0);
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v73 = v15 - v16;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_3();
  v75 = v18;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_3();
  v66 = v20;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v62[-v22];
  v78 = _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v67 = v25 - v26;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_3();
  v65 = v28;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_3();
  v64 = v30;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19_30();
  v34 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v40 = v39 - v38;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  v41 = v0;
  sub_23B979510();
  OUTLINED_FUNCTION_35_3(v0);
  if (v42)
  {
    sub_23B979910(v0, &unk_27E19FEF0);
    v43 = v79;
  }

  else
  {
    (*(v36 + 32))(v40, v0, v34);
    v43 = v79;
    v44 = v78;
    if (v79 == 4)
    {
      sub_23BB96D38();
      OUTLINED_FUNCTION_11_0(v23, 1, v44);
      if (!v42)
      {
        v58 = OUTLINED_FUNCTION_21_19();
        v59(v58);
        sub_23BB986BC();
LABEL_28:
        sub_23BB986BC();
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      sub_23B979910(v23, &qword_27E19A3F0);
    }

    v45 = v73;
    v46 = v75;
    if (v72)
    {
      v47 = v68;
      sub_23BBDCBF8();
      v48 = v69;
      sub_23BBDCBD8();
      OUTLINED_FUNCTION_18_22();
      sub_23BB98714(v49, v50);
      v51 = v71;
      v63 = sub_23BBDCF38();
      v72 = v41;
      v52 = *(v70 + 8);
      v53 = v48;
      v44 = v78;
      v52(v53, v51);
      v54 = v47;
      v46 = v75;
      v52(v54, v51);
      if ((v63 & 1) == 0)
      {
        v55 = v66;
        sub_23BB970DC(v66);
        OUTLINED_FUNCTION_11_0(v55, 1, v44);
        if (!v42)
        {
          goto LABEL_18;
        }

        sub_23B979910(v55, &qword_27E19A3F0);
      }
    }

    if (v43 != 4)
    {
      sub_23BB96D38();
      OUTLINED_FUNCTION_11_0(v46, 1, v44);
      if (!v42)
      {
LABEL_18:
        v60 = OUTLINED_FUNCTION_21_19();
        v61(v60);
LABEL_27:
        sub_23BB986BC();
        goto LABEL_28;
      }

      sub_23B979910(v46, &qword_27E19A3F0);
    }

    sub_23BB96D38();
    v56 = OUTLINED_FUNCTION_21_19();
    v57(v56);
    OUTLINED_FUNCTION_11_0(v45, 1, v44);
    if (!v42)
    {
      goto LABEL_27;
    }

    sub_23B979910(v45, &qword_27E19A3F0);
  }

  if (v43 == 4)
  {
    if (v76)
    {
      goto LABEL_24;
    }

LABEL_25:
    sub_23BB96BA8();
    goto LABEL_26;
  }

  if ((v76 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  sub_23BB967C4();
LABEL_26:
  OUTLINED_FUNCTION_2_47();
  sub_23BB986BC();
LABEL_29:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB95790(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_27_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_7_44();
  sub_23BB9860C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_15_28();
    sub_23BB986BC();
    sub_23BB9860C();
    sub_23BB94F68();
    v9 = v8;
    OUTLINED_FUNCTION_9_31();
    sub_23BB98664(a1, v10);
    OUTLINED_FUNCTION_8_42();
    v12 = v6;
  }

  else
  {
    if (qword_27E197628 != -1)
    {
      swift_once();
    }

    v13 = qword_27E1BF840;
    v9 = sub_23BBDB648();
    OUTLINED_FUNCTION_9_31();
    v12 = a1;
  }

  sub_23BB98664(v12, v11);
  return v9;
}

void sub_23BB95980()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_2();
  v79 = v9;
  OUTLINED_FUNCTION_5_3();
  v74 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v19);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v76 = type metadata accessor for SubscriptionStoreControlOption(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_16_26();
  sub_23BB9860C();
  v77 = v2;
  v78 = v4;
  v65 = sub_23BB963C4(v4);
  v66 = v25;
  v26 = v24 + *(type metadata accessor for Subscription() + 20);
  v27 = *(v26 + 8);
  if (v27 == 2)
  {
    v75 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v73 = v28;
  }

  else
  {
    v75 = *v26;
    v73 = v27 & 1;
  }

  v29 = sub_23BBDC8C8();
  v71 = v30;
  v72 = v29;
  v31 = sub_23BBDC8B8();
  v33 = sub_23B9D4CA8(v31, v32);

  if (v33)
  {
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v34 = sub_23BBDC8B8();
    v69 = v35;
    v70 = v34;
  }

  v36 = sub_23BBDC8E8();
  v67 = v37;
  v68 = v36;
  sub_23B9787A8(v18);
  sub_23BBDCA98();
  v38 = *(v11 + 8);
  v39 = v74;
  v38(v18, v74);
  v40 = sub_23BBDCD08();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v40);
  if (v66)
  {
    sub_23B979910(v77, qword_27E197A68);
    OUTLINED_FUNCTION_0_59();
    sub_23BB98664(v78, v41);
    v42 = 0;
  }

  else
  {
    sub_23B9787A8(v15);
    v43 = sub_23BBDCA28();
    v38(v15, v39);
    if (v43 >= v65)
    {
      sub_23B9787A8(v15);
      v45 = sub_23BBDCA28();
      sub_23B979910(v77, qword_27E197A68);
      OUTLINED_FUNCTION_0_59();
      sub_23BB98664(v78, v46);
      v38(v15, v39);
      if (v65 == v45)
      {
        v42 = 4;
      }

      else
      {
        v42 = 2;
      }
    }

    else
    {
      sub_23B979910(v77, qword_27E197A68);
      OUTLINED_FUNCTION_0_59();
      sub_23BB98664(v78, v44);
      v42 = 8;
    }
  }

  sub_23B979510();
  OUTLINED_FUNCTION_0_59();
  sub_23BB98664(v24, v47);
  v48 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v40);
  v52 = *(v48 + 36);
  *(v6 + v52) = 0;
  sub_23BBDCC88();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v58 = v72;
  v57 = v73;
  *v6 = v75;
  *(v6 + 8) = v57;
  *(v6 + 16) = v27 == 2;
  v60 = v70;
  v59 = v71;
  *(v6 + 24) = v58;
  *(v6 + 32) = v59;
  v62 = v68;
  v61 = v69;
  *(v6 + 40) = v60;
  *(v6 + 48) = v61;
  v63 = v67;
  *(v6 + 56) = v62;
  *(v6 + 64) = v63;
  sub_23B99A974();
  *(v6 + v52) = v42;
  sub_23B99A974();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB95DDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDC8E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_23BB95E08()
{
  OUTLINED_FUNCTION_10_0();
  v67 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F0);
  OUTLINED_FUNCTION_13_0(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_22_2();
  v64 = v4;
  v5 = OUTLINED_FUNCTION_5_3();
  v63 = _s22LocalizedPriceResourceVMa(v5);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_6();
  v62 = v7;
  OUTLINED_FUNCTION_5_3();
  v8 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v65 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_6();
  v66 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_30();
  v22 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_6();
  v68 = v26;
  v27 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SubscriptionStoreCopyWriter(v27);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v0, 1, v22);
  if (v28)
  {
    sub_23B979910(v0, &unk_27E19FEF0);
    v29 = v67;
    sub_23BB967C4();
    v31 = *(v0 + 56);
    v30 = *(v0 + 64);
    v32 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
    v33 = *(v32 + 24);

    sub_23BB97344(v29 + v33);
    sub_23BB967C4();
    v34 = (v29 + *(v32 + 20));
    *v34 = v31;
    v34[1] = v30;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v60 = v0;
    v61 = v17;
    (*(v24 + 32))(v68, v0, v22);
    sub_23BBDCBF8();
    sub_23BBDCBD8();
    OUTLINED_FUNCTION_18_22();
    sub_23BB98714(v35, v36);
    v37 = sub_23BBDCF38();
    v38 = *(v65 + 8);
    v38(v13, v8);
    v38(v16, v8);
    v39 = v24;
    if (v37)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3258);
      v41 = v66;
      v42 = v66 + *(v40 + 48);
      v43 = v60;
      sub_23BB967C4();
      v44 = *(v43 + 56);
      v45 = *(v43 + 64);
      v46 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
      v47 = *(v46 + 24);

      sub_23BB97344(v41 + v47);
      sub_23BB967C4();
      v48 = (v41 + *(v46 + 20));
      *v48 = v44;
      v48[1] = v45;
      v49 = v68;
      sub_23BBDCC68();
      (*(v39 + 8))(v49, v22);
      *(v42 + *(_s20LocalizationResourceVMa() + 20)) = xmmword_23BBE8BF0;
    }

    else
    {
      v50 = v64;
      v51 = v60;
      sub_23BB970DC(v64);
      OUTLINED_FUNCTION_11_0(v50, 1, v63);
      v52 = v66;
      if (v28)
      {
        sub_23B979910(v50, &qword_27E19A3F0);
        sub_23BB967C4();
        v54 = *(v51 + 56);
        v53 = *(v51 + 64);
        v55 = type metadata accessor for CompactSubscriptionPickerOptionLabelConfiguration.Standard(0);
        v56 = *(v55 + 24);

        sub_23BB97344(v52 + v56);
        sub_23BB967C4();
        (*(v39 + 8))(v68, v22);
        v57 = (v52 + *(v55 + 20));
        *v57 = v54;
        v57[1] = v53;
      }

      else
      {
        v58 = v62;
        sub_23BB986BC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3250);
        OUTLINED_FUNCTION_31_1();
        sub_23BB9860C();
        sub_23BB95108();
        sub_23BB98664(v58, _s22LocalizedPriceResourceVMa);
        (*(v39 + 8))(v68, v22);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_23BB986BC();
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB963C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Subscription();
  v9 = a1 + *(v8 + 20);
  v10 = *(v9 + 8);
  if (v10 == 2)
  {
    v11 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
    v13 = v12;
  }

  else
  {
    v11 = *v9;
    v13 = v10 & 1;
  }

  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_23B979910(v7, qword_27E197A68);
    sub_23B979A38(v11, v13, v10 == 2);
  }

  else
  {
    v14 = &v7[*(v8 + 20)];
    v15 = v14[8];
    if (v15 == 2)
    {
      v16 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v18 = v17;
    }

    else
    {
      v16 = *v14;
      v18 = v15 & 1;
    }

    v19 = v15 == 2;
    v20 = v10 == 2;
    sub_23BB98664(v7, type metadata accessor for Subscription);
    v21 = sub_23BBA7A24(v11, v13, v20, v16, v18, v19);
    sub_23B979A38(v16, v18, v19);
    sub_23B979A38(v11, v13, v20);
    if (v21)
    {
      return 0;
    }
  }

  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) != 1)
  {
    swift_getKeyPath();
    sub_23B9FCC2C();
    v22 = v23;

    sub_23BB98664(v4, type metadata accessor for Subscription);
    return v22;
  }

  sub_23B979910(v4, qword_27E197A68);
  return 0;
}

uint64_t sub_23BB9665C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Subscription();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_23BB9860C();
  v10 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  v12 = v11;
  v13 = sub_23BBDCDB8();
  (*(*(v13 - 8) + 8))(v8, v13);
  v14 = *(a2 + 16);
  if (v14 >= 2)
  {
    if (v10 == *(a2 + 8) && v14 == v12)
    {
    }

    else
    {
      v18 = sub_23BBDDA88();

      if ((v18 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v9 = 0;
    v16 = 1;
    goto LABEL_12;
  }

LABEL_3:
  v16 = 0;
LABEL_12:
  *a3 = v9;
  *(a3 + 8) = v16;
  return result;
}

void sub_23BB967C4()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_35_3(v1);
  if (v15)
  {
    sub_23B979910(v1, &qword_27E198848);
    sub_23BB96960(v5);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v14, v1, v8);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = _s22LocalizedPriceResourceVMa(0);
    v20 = OUTLINED_FUNCTION_30_8(v19);
    (v16)(v20);
    v21 = v5 + *(v1 + 24);
    *v21 = v3;
    *(v21 + 1) = 1;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
    *v5 = v18;
    v5[1] = v17;
    _s11PriceStringOMa(0);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB96960@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_27E1BFC88);
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_23BBDD768();
  v16 = v14;
  MEMORY[0x23EEB5890](0xD000000000000071, 0x800000023BBE3400);
  v5 = *(v1 + 16);
  v14 = *v1;
  v15 = v5;
  sub_23BBDD8B8();
  v6 = v16;
  v7 = sub_23BBDD5A8();

  v8 = sub_23BBD9988();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v14 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v14);
    *(v9 + 12) = 2082;
    v11 = sub_23BA5AB90(v6, *(&v6 + 1), &v14);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_23B970000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB6DC0](v10, -1, -1);
    MEMORY[0x23EEB6DC0](v9, -1, -1);
  }

  else
  {
  }

  v12 = *(v2 + 8);
  *a1 = *(v2 + 7);
  a1[1] = v12;
  _s11PriceStringOMa(0);
  swift_storeEnumTagMultiPayload();
}

void sub_23BB96BA8()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v6);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = v13 - v12;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_35_3(v1);
  if (v15)
  {
    sub_23B979910(v1, &qword_27E198848);
    sub_23BB96960(v5);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v14, v1, v8);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = _s22LocalizedPriceResourceVMa(0);
    v20 = OUTLINED_FUNCTION_30_8(v19);
    (v16)(v20);
    *(v5 + *(v1 + 24)) = v3;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
    *v5 = v18;
    v5[1] = v17;
    _s11PriceStringOMa(0);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23BB96D38()
{
  OUTLINED_FUNCTION_10_0();
  v53 = v1;
  v3 = v2;
  v54 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v52 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_6();
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v21, 1, v11);
  if (v22)
  {
    goto LABEL_5;
  }

  (*(v13 + 32))(v17, v21, v11);
  sub_23B979510();
  OUTLINED_FUNCTION_11_0(v10, 1, v54);
  if (v22)
  {
    (*(v13 + 8))(v17, v11);
LABEL_5:
    _s22LocalizedPriceResourceVMa(0);
    v41 = OUTLINED_FUNCTION_32_9();
    goto LABEL_6;
  }

  v24 = v51;
  v23 = v52;
  v25 = v54;
  (*(v52 + 32))(v51, v10, v54);
  v26 = *(v0 + 56);
  v27 = *(v0 + 64);
  v50 = v26;
  v48 = v27;
  v28 = _s22LocalizedPriceResourceVMa(0);
  v29 = *(v28 + 20);
  v30 = v28;
  v49 = v28;
  (*(v23 + 16))(&v3[v29], v24, v25);
  v31 = &v3[*(v30 + 24)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
  v33 = *(v32 + 64);
  v46 = *(v32 + 48);
  v47 = v33;

  v34 = sub_23BBDCC18();
  v44 = v35;
  v45 = v34;
  v36 = _s15PricePropertiesVMa(0);
  sub_23BBDCBF8();
  sub_23BBDCC68();
  v37 = sub_23BBDCC08();
  (*(v23 + 8))(v24, v25);
  (*(v13 + 8))(v17, v11);
  v38 = v44;
  *v31 = v45;
  v31[1] = v38;
  *(v31 + *(v36 + 28)) = v37;
  *(v31 + v46) = v53;
  *(v31 + v47) = 0;
  _s22LocalizedPriceResourceV6FormatOMa(0);
  swift_storeEnumTagMultiPayload();
  v39 = v49;
  v40 = v48;
  *v3 = v50;
  *(v3 + 1) = v40;
  v41 = v3;
  v42 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v41, v42, 1, v39);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB970DC@<X0>(char *a1@<X8>)
{
  v3 = sub_23BBDCD08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    v10 = _s22LocalizedPriceResourceVMa(0);
    v11 = a1;
    v12 = 1;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v13 = *(v1 + 56);
    v23 = *(v1 + 64);
    v24 = v13;
    v14 = _s22LocalizedPriceResourceVMa(0);
    (*(v4 + 16))(&a1[*(v14 + 20)], v6, v3);
    v15 = &a1[*(v14 + 24)];

    v16 = sub_23BBDCC18();
    v18 = v17;
    v19 = _s15PricePropertiesVMa(0);
    sub_23BBDCBF8();
    sub_23BBDCC68();
    v20 = sub_23BBDCC08();
    (*(v4 + 8))(v6, v3);
    *v15 = v16;
    v15[1] = v18;
    *(v15 + *(v19 + 28)) = v20;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
    v21 = v23;
    *a1 = v24;
    *(a1 + 1) = v21;
    v11 = a1;
    v12 = 0;
    v10 = v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t sub_23BB97344@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_23BBD9848();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCD08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23B979510();
  v13 = 1;
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_23BB72A48();
    (*(v4 + 8))(v6, v3);
    v13 = 0;
  }

  v14 = sub_23BBD96B8();
  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(v17, v12, v14);
  }

  sub_23BBDCF48();
  sub_23BBD9838();
  sub_23BB73D2C();
  result = __swift_getEnumTagSinglePayload(v12, 1, v14);
  if (result != 1)
  {
    return sub_23B979910(v12, &qword_27E1987C8);
  }

  return result;
}

void sub_23BB97680()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v59 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  OUTLINED_FUNCTION_13_0(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_2();
  v60 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v14 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v62 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_28_12();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3450);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v27 = *v4;
  v26 = v4[1];
  v28 = *v2;
  v29 = v2[1];
  if ((v4[2] & 1) == 0)
  {
    if (v2[2] & 1) != 0 || v27 != v28 || ((v29 ^ v26))
    {
      goto LABEL_52;
    }

LABEL_12:
    v31 = v4[3] == v2[3] && v4[4] == v2[4];
    if (!v31 && (sub_23BBDDA88() & 1) == 0)
    {
      goto LABEL_52;
    }

    v32 = v4[6];
    v33 = v2[6];
    if (v32)
    {
      if (!v33)
      {
        goto LABEL_52;
      }

      v34 = v4[5] == v2[5] && v32 == v33;
      if (!v34 && (sub_23BBDDA88() & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (v33)
    {
      goto LABEL_52;
    }

    v35 = v4[7] == v2[7] && v4[8] == v2[8];
    if (!v35 && (sub_23BBDDA88() & 1) == 0)
    {
      goto LABEL_52;
    }

    v57 = v5;
    v58 = type metadata accessor for SubscriptionStoreCopyWriter(0);
    v36 = *(v22 + 48);
    sub_23B979510();
    v37 = v36;
    sub_23B979510();
    OUTLINED_FUNCTION_11_0(v25, 1, v14);
    if (v30)
    {
      OUTLINED_FUNCTION_11_0(&v25[v36], 1, v14);
      if (v30)
      {
        sub_23B979910(v25, &qword_27E198848);
LABEL_42:
        if (*(v4 + *(v58 + 36)) != *(v2 + *(v58 + 36)))
        {
          goto LABEL_52;
        }

        v46 = *(v12 + 48);
        OUTLINED_FUNCTION_35_9();
        sub_23B979510();
        OUTLINED_FUNCTION_35_9();
        sub_23B979510();
        v47 = OUTLINED_FUNCTION_32_9();
        v48 = v57;
        OUTLINED_FUNCTION_11_0(v47, v49, v57);
        if (v30)
        {
          OUTLINED_FUNCTION_11_0(v0 + v46, 1, v48);
          if (v30)
          {
            sub_23B979910(v0, &unk_27E19FEF0);
            goto LABEL_52;
          }
        }

        else
        {
          v50 = v60;
          sub_23B979510();
          OUTLINED_FUNCTION_11_0(v0 + v46, 1, v48);
          if (!v51)
          {
            v52 = v61;
            (*(v61 + 32))(v59, v0 + v46, v48);
            sub_23BB98714(&qword_27E197B88, MEMORY[0x277CDD2B8]);
            sub_23BBDCF38();
            v53 = *(v52 + 8);
            v54 = OUTLINED_FUNCTION_31_1();
            v53(v54);
            (v53)(v50, v48);
            sub_23B979910(v0, &unk_27E19FEF0);
            goto LABEL_52;
          }

          (*(v61 + 8))(v50, v48);
        }

        v41 = &qword_27E197B80;
        v42 = v0;
        goto LABEL_40;
      }
    }

    else
    {
      sub_23B979510();
      OUTLINED_FUNCTION_11_0(&v25[v36], 1, v14);
      if (!v38)
      {
        v43 = v62;
        (*(v62 + 32))(v19, &v25[v37], v14);
        sub_23BB98714(&qword_27E19CE68, MEMORY[0x277CDD300]);
        v56 = sub_23BBDCF38();
        v44 = *(v43 + 8);
        v44(v19, v14);
        v45 = OUTLINED_FUNCTION_17_0();
        (v44)(v45);
        sub_23B979910(v25, &qword_27E198848);
        if ((v56 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }

      v39 = OUTLINED_FUNCTION_17_0();
      v40(v39);
    }

    v41 = &qword_27E1A3450;
    v42 = v25;
LABEL_40:
    sub_23B979910(v42, v41);
    goto LABEL_52;
  }

  if (v2[2])
  {
    v30 = v27 == v28 && v26 == v29;
    if (v30 || (sub_23BBDDA88() & 1) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_52:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB97CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_23B9BDCD4(v2, v3, v4);
}

void sub_23BB97CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v20;
  a20 = v21;
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  OUTLINED_FUNCTION_13_0(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3448);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  sub_23BAE2194();
  if (v34)
  {
    type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
    v35 = *(v30 + 48);
    sub_23B979510();
    sub_23B979510();
    OUTLINED_FUNCTION_35_3(v33);
    if (!v36)
    {
      sub_23B979510();
      OUTLINED_FUNCTION_35_3(&v33[v35]);
      if (!v36)
      {
        OUTLINED_FUNCTION_2_47();
        sub_23BB986BC();
        sub_23BAE2194();
        sub_23BB98664(v25, _s11PriceStringOMa);
        v38 = OUTLINED_FUNCTION_31_1();
        sub_23BB98664(v38, v39);
        sub_23B979910(v33, &qword_27E1987C0);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_3_45();
      sub_23BB98664(v29, v37);
LABEL_10:
      sub_23B979910(v33, &qword_27E1A3448);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_35_3(&v33[v35]);
    if (!v36)
    {
      goto LABEL_10;
    }

    sub_23B979910(v33, &qword_27E1987C0);
  }

LABEL_11:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BB97F2C()
{
  v0 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  sub_23BAE2584();
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23B979510();
  v7 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_11_0(v7, v8, v0);
  if (v9)
  {
    return sub_23BBDDBD8();
  }

  OUTLINED_FUNCTION_2_47();
  sub_23BB986BC();
  sub_23BBDDBD8();
  sub_23BAE2584();
  OUTLINED_FUNCTION_3_45();
  return sub_23BB98664(v4, v10);
}

uint64_t sub_23BB98064()
{
  v0 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  sub_23BBDDBB8();
  sub_23BAE2584();
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23B979510();
  v7 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_11_0(v7, v8, v0);
  if (v9)
  {
    sub_23BBDDBD8();
  }

  else
  {
    OUTLINED_FUNCTION_2_47();
    sub_23BB986BC();
    sub_23BBDDBD8();
    sub_23BAE2584();
    OUTLINED_FUNCTION_3_45();
    sub_23BB98664(v4, v10);
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BB98428()
{
  v0 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_23BBDDBB8();
  sub_23BAE2584();
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v5, 1, v0) == 1)
  {
    sub_23BBDDBD8();
  }

  else
  {
    sub_23BB986BC();
    sub_23BBDDBD8();
    sub_23BAE2584();
    sub_23BB98664(v2, _s11PriceStringOMa);
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BB9860C()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB98664(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BB986BC()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BB98714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_23B979510();
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return sub_23BBDCD08();
}

uint64_t sub_23BB98928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA759D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BB98980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 16);
  v13 = type metadata accessor for StorePlaceholderView();
  v14 = a6 + v13[12];
  *v14 = sub_23B9BE5CC() & 1;
  *(v14 + 8) = v15;
  v16 = a6 + v13[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0;
  v17 = a6 + v13[14];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a6 + v13[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = *(a5 - 8);
  (*(v19 + 16))(a6, a1, a5);
  v20 = sub_23BB9A0C8(a2);

  result = (*(v19 + 8))(a1, a5);
  *(a6 + v13[9]) = v20;
  v22 = a6 + v13[10];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  *(a6 + v13[11]) = a4;
  return result;
}

uint64_t sub_23BB98B44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  sub_23BA0EFA4(a1, &v11 - v9);
  sub_23BBDAFF8();
  sub_23B97B518(a5, a2);
  return sub_23BBDC0D8();
}

uint64_t sub_23BB98C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA759D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BB98C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v22 = sub_23BBDA928();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BB98F10(v3, v15);
  (*(v9 + 16))(v12, v3, v8);
  v16 = *(v3 + *(a1 + 44));
  v17 = v3 + *(a1 + 60);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v18, 0);
    (*(v5 + 8))(v7, v22);
    LODWORD(v18) = v24;
  }

  return sub_23BBBF6CC(v15, 0, v12, v16, v18, v8, v23);
}

id sub_23BB98F10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for StorePlaceholderView() + 40);
  if (*(v3 + 16))
  {
    if (*(v3 + 16) == 1)
    {
      if (qword_27E1976D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v4, qword_27E1BFC88);
      v5 = sub_23BBDD5A8();
      v6 = sub_23BBD9988();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v11 = v8;
        *v7 = 136446466;
        *(v7 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v11);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_23BA5AB90(0xD00000000000002FLL, 0x800000023BBE3480, &v11);
        _os_log_impl(&dword_23B970000, v6, v5, "%{public}s%{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB6DC0](v8, -1, -1);
        MEMORY[0x23EEB6DC0](v7, -1, -1);
      }

      type metadata accessor for Product.TaskState(0);
    }

    else
    {
      type metadata accessor for Product.TaskState(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v9 = *v3;
    *a2 = *v3;
    type metadata accessor for Product.TaskState(0);
    swift_storeEnumTagMultiPayload();

    return v9;
  }
}

uint64_t sub_23BB99128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v89 = a1;
  v4 = a1 - 8;
  v88 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v86 = v5;
  OUTLINED_FUNCTION_13_3(v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A34F8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v7);
  v8 = type metadata accessor for ProductViewStyleConfiguration();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3500);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = v77 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3508);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v77 - v19;
  v21 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3510);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_2();
  v91 = v28;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3518);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v30);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3520);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v32);
  v33 = *(v4 + 44);
  v90 = v3;
  v34 = *(*(v3 + v33) + 16);
  if (v34 == 1)
  {
    v81 = v10;
    v80 = v20;
    v41 = v90 + *(v89 + 52);
    v42 = *v41;
    v43 = *(v41 + 8);
    v45 = *(v41 + 16);
    v44 = *(v41 + 24);
    v46 = *(v41 + 32);
    if (*(v41 + 40) == 1)
    {
      __src[0] = *v41;
      __src[1] = v43;
      __src[2] = v45;
      __src[3] = v44;
      __src[4] = v46;
    }

    else
    {
      v79 = *(v41 + 24);
      v78 = v45;

      v77[3] = sub_23BBDD5A8();
      v47 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9AD3D4(v42, v43, v78, v79, v46, 0);
      (*(v23 + 8))(v26, v21);
    }

    v48 = __src[2];

    if (v48 == &type metadata for AutomaticProductViewStyle)
    {
      sub_23BB98C88(v89, v81);
      ProductView.init<>(_:)();
      v66 = sub_23BB10684();
      v67 = swift_allocObject();
      *(v67 + 16) = 0u;
      *(v67 + 32) = 0u;
      *(v67 + 48) = 0;
      v68 = &v14[*(v11 + 36)];
      *v68 = sub_23BB9AF50;
      v68[1] = 0;
      v68[2] = &type metadata for LargeProductViewStyle;
      v68[3] = v66;
      v68[4] = v67;
      sub_23BBDC318();
      sub_23BBDA488();
      sub_23B989918(v14, v17, &qword_27E1A3500);
      memcpy(&v17[*(v84 + 36)], __src, 0x70uLL);
      v36 = &qword_27E1A3508;
      v69 = v80;
      OUTLINED_FUNCTION_35_9();
      sub_23B989918(v70, v71, v72);
      OUTLINED_FUNCTION_35_9();
      sub_23B989ECC(v73, v74, v75);
      swift_storeEnumTagMultiPayload();
      sub_23BB9ACD4();
      v76 = v83;
      sub_23BBDACD8();
      sub_23B989ECC(v76, v91, &qword_27E1A3520);
      swift_storeEnumTagMultiPayload();
      sub_23BB9AC48();
      sub_23BB9AE6C();
      OUTLINED_FUNCTION_6_36();
      sub_23BBDACD8();
      sub_23B979910(v76, &qword_27E1A3520);
      v40 = v69;
      return sub_23B979910(v40, v36);
    }

    goto LABEL_8;
  }

  if (v34)
  {
LABEL_8:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3528);
    v50 = v85;
    v51 = v85 + *(v49 + 36);
    *v51 = swift_getKeyPath();
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 0;
    v53 = v89;
    v52 = v90;
    v54 = *(v89 + 16);
    v55 = *(v89 + 24);
    sub_23BB999EC(v90, v54, v55, v50);
    v56 = v88;
    v57 = v87;
    (*(v88 + 16))(v87, v52, v53);
    v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v54;
    *(v59 + 24) = v55;
    (*(v56 + 32))(v59 + v58, v57, v53);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_23BB9AB7C;
    *(v60 + 24) = v59;
    v61 = (v50 + *(v94 + 36));
    *v61 = sub_23BB9AC40;
    v61[1] = v60;
    v36 = &qword_27E1A34F8;
    OUTLINED_FUNCTION_35_9();
    sub_23B989ECC(v62, v63, v64);
    swift_storeEnumTagMultiPayload();
    sub_23BB9AC48();
    sub_23BB9AE6C();
    sub_23BBDACD8();
    v40 = v50;
    return sub_23B979910(v40, v36);
  }

  swift_storeEnumTagMultiPayload();
  sub_23BB9ACD4();
  v35 = v83;
  sub_23BBDACD8();
  v36 = &qword_27E1A3520;
  OUTLINED_FUNCTION_35_9();
  sub_23B989ECC(v37, v38, v39);
  swift_storeEnumTagMultiPayload();
  sub_23BB9AC48();
  sub_23BB9AE6C();
  OUTLINED_FUNCTION_6_36();
  sub_23BBDACD8();
  v40 = v35;
  return sub_23B979910(v40, v36);
}

uint64_t sub_23BB999EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for StorePlaceholderView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v23 = *(a1 + *(v11 + 36));
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3580);
  sub_23B97B518(&qword_27E1A3588, &qword_27E1A3578);
  sub_23B97B518(&qword_27E1A3590, &qword_27E1A3580);
  v14 = v21;
  sub_23BBDC188();
  v15 = (a1 + *(v7 + 48));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v23) = v16;
  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF68();
  LOBYTE(a1) = v22;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3598);
  v20 = v14 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = a1;
  return result;
}

uint64_t sub_23BB99C8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StorePlaceholderView();
  v7 = *a1 != *(*(a2 + *(v6 + 36)) + 16) - 1;
  v8 = *(a2 + *(v6 + 44));
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3580);
  v10 = v9[13];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v9[14];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a3 + v9[15];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *a3 = v7;
  result = sub_23BB99DDC(a2, (a3 + 8));
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_23BB99DDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ProductViewStyleConfiguration();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDA928();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StorePlaceholderView();
  v12 = a1 + *(v11 + 52);
  v14 = *v12;
  v13 = *(v12 + 8);
  v15 = *(v12 + 32);
  if (*(v12 + 40) == 1)
  {
  }

  else
  {
    v16 = *(v12 + 16);
    v23 = *(v12 + 24);
    v24 = v16;

    sub_23BBDD5A8();
    v25 = v11;
    v17 = sub_23BBDB338();
    v22 = v7;
    v18 = v17;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9AD3D4(v14, v13, v24, v23, v15, 0);
    (*(v8 + 8))(v10, v22);
    v11 = v25;
    v14 = v26;
  }

  sub_23BB98C88(v11, v6);
  v19 = v14(v6);

  result = sub_23BB9B1D4(v6);
  *a2 = v19;
  return result;
}

uint64_t sub_23BB9A030()
{
  type metadata accessor for StorePlaceholderView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  return sub_23BBDBF78();
}

uint64_t sub_23BB9A0C8(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = (MEMORY[0x277D84F90] + 32);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v2)
    {
      v18 = v3[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_27;
        }

        v3[2] = v20;
      }

      return v3;
    }

    v7 = *(i - 1);
    v8 = *i;
    if (v1)
    {

      v9 = v3;
    }

    else
    {
      v10 = v3[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v12 = v11 <= 1 ? 1 : v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A3458);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size_0(v9) - 32) / 24;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v3[3] >> 1;
      v5 = &v9[3 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v3[2])
      {
        if (v9 != v3 || v14 >= &v3[3 * v15 + 4])
        {
          memmove(v14, v3 + 4, 24 * v15);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5[2] = v8;
    v5 += 3;
    ++v2;
    v3 = v9;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_23BB9A258()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BB9A78C();
    if (v1 <= 0x3F)
    {
      sub_23BB9A7F0(319, &qword_27E199908, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_23BB9A7F0(319, &qword_27E1991A0, &type metadata for AnyProductViewStyle, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23BB9A7F0(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23BB9A7F0(319, &qword_27E1991B8, MEMORY[0x277CDF388], MEMORY[0x277CDF468]);
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

uint64_t sub_23BB9A3E0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
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
        JUMPOUT(0x23BB9A54CLL);
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

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_23BB9A560(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
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
    bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
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
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_44;
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

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23BB9A764);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v18 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v18 = (a2 - 1);
          }

          *v17 = v18;
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

void sub_23BB9A78C()
{
  if (!qword_27E1A34E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A34E8);
    v0 = sub_23BBDD2A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1A34E0);
    }
  }
}

void sub_23BB9A7F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23BB9A884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0B48);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = v8;
  v41 = &v36 - v7;
  v9 = 0;
  v10 = 0;
  v37 = *(v8 + 80);
  v11 = MEMORY[0x277D84F90];
  v38 = (v37 + 32) & ~v37;
  v12 = MEMORY[0x277D84F90] + v38;
  v39 = *(a1 + 16);
  while (v39 != v10)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    v14 = *(v13 + 16);
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10;
    v16 = *(v2 + 48);
    *v5 = v10;
    v14(&v5[v16], v15);
    sub_23B989918(v5, v41, &qword_27E1A0B48);
    if (v9)
    {
      v17 = v11;
    }

    else
    {
      v18 = v11[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v19 = a1;
      v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A34F0);
      v22 = *(v40 + 72);
      v23 = v38;
      v17 = swift_allocObject();
      v24 = _swift_stdlib_malloc_size_0(v17);
      if (!v22)
      {
        goto LABEL_33;
      }

      v25 = v24 - v23;
      if (v24 - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_34;
      }

      v27 = v25 / v22;
      v17[2] = v21;
      v17[3] = 2 * (v25 / v22);
      v28 = v17 + v23;
      v29 = v11[3];
      v30 = (v29 >> 1) * v22;
      if (v11[2])
      {
        if (v17 < v11 || v28 >= v11 + v38 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v28[v30];
      v9 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - (v29 >> 1);

      a1 = v19;
    }

    v32 = __OFSUB__(v9--, 1);
    if (v32)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_23B989918(v41, v12, &qword_27E1A0B48);
    v12 += *(v40 + 72);
    ++v10;
    v11 = v17;
  }

  v33 = v11[3];
  if (v33 < 2)
  {
    return;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v9);
  v35 = v34 - v9;
  if (!v32)
  {
    v11[2] = v35;
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_23BB9AB7C()
{
  type metadata accessor for StorePlaceholderView();

  return sub_23BB9A030();
}

uint64_t sub_23BB9AC08()
{

  return swift_deallocObject();
}

unint64_t sub_23BB9AC48()
{
  result = qword_27E1A3530;
  if (!qword_27E1A3530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3520);
    sub_23BB9ACD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3530);
  }

  return result;
}

unint64_t sub_23BB9ACD4()
{
  result = qword_27E1A3538;
  if (!qword_27E1A3538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3508);
    sub_23BB9AD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3538);
  }

  return result;
}

unint64_t sub_23BB9AD60()
{
  result = qword_27E1A3540;
  if (!qword_27E1A3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3500);
    sub_23B97B518(&qword_27E1A3548, &qword_27E1A0CD8);
    sub_23BB9AE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3540);
  }

  return result;
}

unint64_t sub_23BB9AE18()
{
  result = qword_27E1A3550;
  if (!qword_27E1A3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3550);
  }

  return result;
}

unint64_t sub_23BB9AE6C()
{
  result = qword_27E1A3558;
  if (!qword_27E1A3558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A34F8);
    sub_23B97B518(&qword_27E1A3560, &qword_27E1A3528);
    sub_23B97B518(&qword_27E1A0B40, &qword_27E1A0B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3558);
  }

  return result;
}

uint64_t sub_23BB9AF88()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for StorePlaceholderView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  sub_23B99A808(*(v3 + v2[12]), *(v3 + v2[12] + 8), *(v3 + v2[12] + 16));

  v4 = v3 + v2[15];
  sub_23B9AD3D4(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40));
  sub_23B97B450(*(v3 + v2[16]), *(v3 + v2[16] + 8));
  sub_23B97B450(*(v3 + v2[17]), *(v3 + v2[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BB9B128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StorePlaceholderView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23BB99C8C(a1, v6, a2);
}

uint64_t sub_23BB9B1D4(uint64_t a1)
{
  v2 = type metadata accessor for ProductViewStyleConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BB9B234()
{
  result = qword_27E1A35B0;
  if (!qword_27E1A35B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35B8);
    sub_23BB9AC48();
    sub_23BB9AE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A35B0);
  }

  return result;
}

uint64_t sub_23BB9B2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionOptionButtonModel() + 28);
  v4 = *(v3 + 16);
  if (v4 >= 4)
  {
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = *(v3 + 8);

    v12 = OUTLINED_FUNCTION_1_61();
    sub_23B9E711C(v12, v13);
    v14 = OUTLINED_FUNCTION_1_61();
    sub_23B9E67A8(v14, v15);
    *a1 = v11;
    *(a1 + 8) = v4;
    *(a1 + 16) = v9 & 1;
    *(a1 + 24) = v10;
    goto LABEL_5;
  }

  if (v4 <= 2)
  {
    v5 = sub_23BB9B60C();
    OUTLINED_FUNCTION_7_34(v5, v6, v7, v8);
LABEL_5:
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_2();
  sub_23BB95108();
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  sub_23BB95108();
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
LABEL_7:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BB9B410@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SubscriptionOptionButtonModel();
  v4 = (v1 + *(v3 + 28));
  v5 = v4[2];
  if (v5 < 4)
  {
    if (*(v1 + *(v3 + 20)) == 1)
    {
      v6 = sub_23BBDAA48();
      OUTLINED_FUNCTION_7_34(v6, v7, v8, v9);
      v10 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
LABEL_11:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_2();
      v19 = v10;
      goto LABEL_12;
    }

    if (v5 != 3)
    {
      sub_23BB95108();
      type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
      sub_23BB95108();
      _s11PriceStringOMa(0);
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      v10 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      goto LABEL_11;
    }

LABEL_9:
    v19 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    v20 = a1;
    v21 = 1;
    v22 = 1;
LABEL_12:

    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  }

  v11 = v4[6];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v4[7];
  v13 = v4[8];
  *a1 = v4[5];
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  v14 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
}

uint64_t type metadata accessor for SubscriptionOptionButtonModel()
{
  result = qword_27E1A35C0;
  if (!qword_27E1A35C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BB9B60C()
{
  v1 = v0;
  v2 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCBE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  v13 = sub_23BBDCC88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SubscriptionOptionButtonModel();
  if (*(v0 + v17[7] + 16) != 2 || (*(v0 + v17[5]) & 1) != 0 || (*(v0 + v17[6]) & 1) != 0)
  {
    v18 = *(v0 + *(type metadata accessor for SubscriptionStoreCopyWriter(0) + 36));
    if ((v18 & 8) != 0)
    {
      sub_23BBDAA28();
      sub_23BBDAA18();
      sub_23BBDAA08();
      sub_23BBDAA18();
      return sub_23BBDAA58();
    }

    if ((v18 & 6) != 0)
    {
      return sub_23BB747BC();
    }

    return sub_23BBDAA48();
  }

  v20 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  sub_23BA41848(v1 + *(v20 + 40), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23B9C8F9C(v12);
    return sub_23BBDAA48();
  }

  v25[1] = v20;
  (*(v14 + 32))(v16, v12, v13);
  sub_23BBDCBF8();
  sub_23BBDCBD8();
  v21 = sub_23B9A0684(v9, v7);
  v22 = *(v4 + 8);
  v22(v7, v3);
  v22(v9, v3);
  if ((v21 & 1) == 0)
  {
    (*(v14 + 8))(v16, v13);
    return sub_23BBDAA48();
  }

  v23 = sub_23BBDAA48();
  (*(v14 + 8))(v16, v13);
  return v23;
}

uint64_t sub_23BB9BA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 4;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23BB9BB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 + 3);
  }

  return result;
}

uint64_t sub_23BB9BC0C()
{
  result = type metadata accessor for SubscriptionStoreCopyWriter(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BB9BCB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 73);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v6 = OUTLINED_FUNCTION_15_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_23BB9BD50()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 254)
  {
    *(v1 + 73) = -v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_23BB9BDF0()
{
  sub_23BB9EEC8(319, &qword_27E19A3B8, &type metadata for SubscriptionStoreButtonLabel, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23B9D4C08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23BB9BEC8()
{
  result = qword_27E1A35E0;
  if (!qword_27E1A35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A35E0);
  }

  return result;
}

double sub_23BB9BF1C()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[*(type metadata accessor for StoreKitProminentButtonStyle(0) + 28)] != 1)
  {
    goto LABEL_7;
  }

  memcpy(__dst, v0, 0x4AuLL);
  if ((__dst[9] & 0x100) != 0)
  {
    memcpy(v9, v0, sizeof(v9));
    memcpy(v8, v0, 0x4AuLL);
    sub_23B9E6BA4(v8, v7);
  }

  else
  {

    sub_23BBDD5A8();
    v5 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(__dst, &qword_27E19A390);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v8, v9, 0x49uLL);
  sub_23B9E64A4(v8);
  if (v8[0] == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    sub_23BBD9D38();
    return *v7;
  }

  else
  {
LABEL_7:
    if (qword_27E197700 != -1)
    {
      swift_once();
    }

    return *&qword_27E1BFCA8;
  }
}

uint64_t sub_23BB9C15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v41 = sub_23BBDB588();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A35E8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A35F0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v39 = a1;
  sub_23BBDB078();
  KeyPath = swift_getKeyPath();
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A1CD0) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = swift_getKeyPath();
  v22 = &v14[*(v11 + 36)];
  *v22 = v21;
  v22[1] = 0x3FB999999999999ALL;
  sub_23BBDB4A8();
  sub_23BB9E584();
  sub_23BBDB6D8();
  sub_23B979910(v14, &qword_27E1A35E8);
  sub_23BBDB388();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3600);
  OUTLINED_FUNCTION_1_62(v23);
  sub_23BBDB3F8();
  v38 = v3;
  sub_23BB9BF1C();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3608);
  OUTLINED_FUNCTION_1_62(v24);
  v25 = &v18[*(v15 + 36)];
  v26 = &v25[*(type metadata accessor for DynamicButtonHeightModifier(0) + 20)];
  v42 = 0x4049000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AC0], v41);
  sub_23B974940();
  sub_23BBD9D18();
  *v26 = 0x4049000000000000;
  v26[8] = 0;
  v27 = *MEMORY[0x277CDF9A8];
  v28 = sub_23BBDA308();
  OUTLINED_FUNCTION_4_1();
  (*(v29 + 104))(v7, v27, v28);
  sub_23BB9E65C(&qword_27E198F50, MEMORY[0x277CDFA28]);
  result = sub_23BBDCF38();
  if (result)
  {
    sub_23BB9E6A4();
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10);
    v31 = v40;
    sub_23BBDB898();
    sub_23B979910(v7, &qword_27E198F10);
    sub_23B979910(v18, &qword_27E1A35F0);
    v32 = sub_23BBDC318();
    v34 = v33;
    v48 = 1;
    v47 = 1;
    v46 = 0;
    v45 = 1;
    v44 = 1;
    v43 = 1;
    v49 = 0;
    v35 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3630) + 36);
    *v35 = 0;
    *(v35 + 8) = 1;
    *(v35 + 16) = 0;
    *(v35 + 24) = 1;
    *(v35 + 32) = 0x4076800000000000;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 1;
    *(v35 + 64) = 0;
    *(v35 + 72) = 1;
    *(v35 + 80) = 0;
    *(v35 + 88) = 1;
    *(v35 + 90) = v42;
    *(v35 + 94) = WORD2(v42);
    *(v35 + 96) = v32;
    *(v35 + 104) = v34;
    LOBYTE(v32) = *(v38 + *(type metadata accessor for StoreKitProminentButtonStyle(0) + 24));
    LOBYTE(v34) = sub_23BBDB088();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3638);
    return sub_23BB9C6B8(v32, v34 & 1, (v31 + *(v36 + 36)));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BB9C6B8@<X0>(char a1@<W0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for ProminentButtonStyleApplierModifier(0);
  v7 = v6[6];
  *&a3[v7] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199730);
  swift_storeEnumTagMultiPayload();
  v8 = &a3[v6[7]];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = &a3[v6[8]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &a3[v6[9]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  result = sub_23BBDC2A8();
  a3[v6[10]] = result & 1;
  *a3 = a1 & 1;
  a3[1] = a2;
  return result;
}

uint64_t sub_23BB9C7A4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA588();
  *v0 = result;
  return result;
}

uint64_t sub_23BB9C7F8()
{
  v28 = sub_23BBDA468();
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_23BBDC148();
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BBDA508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  type metadata accessor for ProminentButtonStyleApplierModifier(0);
  sub_23B9B7604();
  sub_23BBDA4F8();
  v11 = sub_23BBDA4D8();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  v13 = sub_23BBDC2A8();
  if ((v11 & 1) == 0)
  {
    if ((v13 & 1) != 0 || (sub_23B9B7604(), sub_23BBDA4C8(), v16 = sub_23BBDA4D8(), v12(v7, v4), v12(v10, v4), (v16 & 1) == 0))
    {
      sub_23B9B7604();
      sub_23BB9E65C(&qword_27E1A37C0, MEMORY[0x277CDDBB8]);
      return sub_23BBDC218();
    }

    goto LABEL_6;
  }

  if ((v13 & 1) == 0)
  {
LABEL_6:
    v17 = *(v28 + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_23BBDAA88();
    v20 = v27;
    (*(*(v19 - 8) + 104))(&v27[v17], v18, v19);
    __asm { FMOV            V0.2D, #14.0 }

    *v20 = _Q0;
    sub_23BB9E65C(&qword_27E198168, MEMORY[0x277CDFC08]);
    return sub_23BBDC218();
  }

  v14 = *MEMORY[0x277CE0128];
  v15 = sub_23BBDAA88();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_23BB9E65C(&qword_27E1A37C8, MEMORY[0x277CE1260]);
  return sub_23BBDC218();
}

double sub_23BB9CBAC()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for ProminentButtonStyleApplierModifier(0) + 32));
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
      return 0.6;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v6, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      return 0.6;
    }
  }

  result = 0.8;
  if (!*(v0 + 1))
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_23BB9CD38@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    result = sub_23BBDAEF8();
    v4 = MEMORY[0x277CE04E8];
    *(a1 + 24) = MEMORY[0x277CE04F8];
    *(a1 + 32) = v4;
    *a1 = result;
  }

  else
  {
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FF0);
    *(a1 + 32) = sub_23B97B518(&qword_27E1A1D50, &qword_27E198FF0);
    v5 = swift_allocObject();
    *a1 = v5;
    v6 = sub_23BBD356C();
    v7 = sub_23BBDA1E8();
    v8 = MEMORY[0x277CDF8D0];
    *(v5 + 48) = v7;
    *(v5 + 56) = v8;
    __swift_allocate_boxed_opaque_existential_1((v5 + 24));
    sub_23BBDA1D8();
    result = sub_23BBDBCB8();
    *(v5 + 64) = result;
    *(v5 + 72) = 1;
    *(v5 + 16) = v6;
  }

  return result;
}

uint64_t sub_23BB9CE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3698);
  v90 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v89 = &v78 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36A0);
  MEMORY[0x28223BE20](v101);
  v6 = &v78 - v5;
  v102 = sub_23BBDA328();
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_23BBDA928();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36A8);
  MEMORY[0x28223BE20](v83);
  v10 = &v78 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36B0);
  MEMORY[0x28223BE20](v87);
  v12 = &v78 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36B8);
  MEMORY[0x28223BE20](v86);
  v14 = &v78 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36C0);
  MEMORY[0x28223BE20](v85);
  v16 = &v78 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36C8);
  MEMORY[0x28223BE20](v84);
  v88 = &v78 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36D0);
  MEMORY[0x28223BE20](v92);
  v93 = &v78 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36D8);
  MEMORY[0x28223BE20](v91);
  v94 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36E0);
  MEMORY[0x28223BE20](v20);
  v95 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36E8);
  v97 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v96 = &v78 - v23;
  v24 = type metadata accessor for ProminentButtonStyleApplierModifier(0);
  if (*(v2 + *(v24 + 40)))
  {
    MEMORY[0x28223BE20](v24);
    *(&v78 - 2) = v100;
    *(&v78 - 1) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36F0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36F8);
    v26 = sub_23BB9F198();
    v27 = sub_23BB9F44C();
    v104 = v25;
    v105 = MEMORY[0x277CE12F0];
    v106 = v26;
    v107 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v89;
    sub_23BBDAE68();
    v29 = v90;
    (*(v90 + 16))(v6, v28, v3);
    swift_storeEnumTagMultiPayload();
    v30 = sub_23BB9F4A0();
    v31 = sub_23BB9E65C(&qword_27E1A1D48, MEMORY[0x277CDD9F8]);
    v104 = v20;
    v105 = v102;
    v106 = v30;
    v107 = v31;
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A37B8, &qword_27E1A3698);
    sub_23BBDACD8();
    return (*(v29 + 8))(v28, v3);
  }

  else
  {
    v33 = v24;
    v78 = v20;
    v79 = v22;
    v89 = v6;
    v90 = v3;
    sub_23BB9CD38(&v104);
    v34 = __swift_project_boxed_opaque_existential_1(&v104, v107);
    v35 = MEMORY[0x28223BE20](v34);
    (*(v37 + 16))(&v78 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
    v38 = sub_23BBD9DF8();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3730);
    (*(*(v39 - 8) + 16))(v10, v100, v39);
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3718) + 36)] = v38;
    __swift_destroy_boxed_opaque_existential_1(&v104);
    v40 = &v10[*(v83 + 36)];
    sub_23BBDA1D8();
    v41 = sub_23BB9C7F8();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3790);
    *&v40[*(v42 + 52)] = v41;
    *&v40[*(v42 + 56)] = 256;
    v43 = *(v2 + 1);
    sub_23BB9F9DC(v10, v12, &qword_27E1A36A8);
    v44 = 0.8;
    if (!v43)
    {
      v44 = 1.0;
    }

    *&v12[*(v87 + 36)] = v44;
    if (v43)
    {
      v45 = 0.2;
    }

    else
    {
      v45 = 0.0;
    }

    if (v43)
    {
      v46 = 0.97;
    }

    else
    {
      v46 = 1.0;
    }

    sub_23BB9F9DC(v12, v14, &qword_27E1A36B0);
    *&v14[*(v86 + 36)] = v45;
    sub_23BBDC438();
    v48 = v47;
    v50 = v49;
    sub_23BB9F9DC(v14, v16, &qword_27E1A36B8);
    v51 = &v16[*(v85 + 36)];
    *v51 = v46;
    *(v51 + 1) = v46;
    *(v51 + 2) = v48;
    *(v51 + 3) = v50;
    v52 = sub_23BBDC368();
    v53 = v88;
    sub_23BB9F9DC(v16, v88, &qword_27E1A36C0);
    v54 = v53 + *(v84 + 36);
    *v54 = v52;
    *(v54 + 8) = v43;
    v55 = sub_23BBDBD18();
    v104 = sub_23BBDBD38();
    v105 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270);
    sub_23BBDBDE8();
    v56 = (v2 + *(v33 + 32));
    v57 = *v56;
    if (*(v56 + 8) != 1)
    {

      sub_23BBDD5A8();
      v58 = sub_23BBDB338();
      sub_23BBD9978();

      v59 = v80;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B5C0(v57, 0);
      (*(v81 + 8))(v59, v82);
    }

    v60 = v89;
    v61 = v102;
    v62 = v79;
    v63 = v78;
    v64 = sub_23BBDBD58();

    v65 = sub_23BB9C7F8();
    v66 = v93;
    sub_23BB9F9DC(v53, v93, &qword_27E1A36C8);
    v67 = v66 + *(v92 + 36);
    *v67 = v64;
    *(v67 + 8) = v65;
    *(v67 + 16) = 256;
    v68 = sub_23BB9C7F8();
    v69 = v94;
    sub_23BB9F9DC(v66, v94, &qword_27E1A36D0);
    v70 = v69 + *(v91 + 36);
    *v70 = v68;
    *(v70 + 8) = 0;
    v71 = v95;
    v72 = &v95[*(v63 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A37B0);
    sub_23BBDA518();
    *v72 = sub_23BB9C7F8();
    v72[8] = 0;
    sub_23BB9F9DC(v69, v71, &qword_27E1A36D8);
    v73 = v98;
    sub_23BBDA548();
    v74 = sub_23BB9F4A0();
    v75 = sub_23BB9E65C(&qword_27E1A1D48, MEMORY[0x277CDD9F8]);
    v76 = v96;
    sub_23BBDB758();
    (*(v99 + 8))(v73, v61);
    sub_23B979910(v71, &qword_27E1A36E0);
    v77 = v97;
    (*(v97 + 16))(v60, v76, v62);
    swift_storeEnumTagMultiPayload();
    v104 = v63;
    v105 = v61;
    v106 = v74;
    v107 = v75;
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A37B8, &qword_27E1A3698);
    sub_23BBDACD8();
    return (*(v77 + 8))(v76, v62);
  }
}

uint64_t sub_23BB9DC04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v52 = a1;
  v56 = a3;
  v3 = sub_23BBDA928();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDC0C8();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v46 - v8;
  v9 = sub_23BBDB188();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3718);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A36F8);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  sub_23BB9CD38(v57);
  v19 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v20 = MEMORY[0x28223BE20](v19);
  (*(v22 + 16))(&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = sub_23BBD9DF8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3730);
  (*(*(v24 - 8) + 16))(v15, v52, v24);
  *&v15[*(v13 + 36)] = v23;
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_23BBDB178();
  sub_23BB9F368();
  sub_23BB9E65C(&qword_27E1A3738, MEMORY[0x277CDE400]);
  sub_23BBDB728();
  v25 = v12;
  v26 = v50;
  v27 = v51;
  (*(v10 + 8))(v25, v9);
  sub_23B979910(v15, &qword_27E1A3718);
  v28 = sub_23BB9CBAC();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3710) + 36)] = v28;
  v29 = sub_23BB9C7F8();
  v30 = &v18[*(v16 + 36)];
  *v30 = v29;
  v30[8] = 0;
  sub_23BBDC0A8();
  if ((*v26 & 1) == 0)
  {
    v31 = type metadata accessor for ProminentButtonStyleApplierModifier(0);
    v32 = &v26[*(v31 + 36)];
    v33 = *v32;
    v34 = v32[8];

    if ((v34 & 1) == 0)
    {
      sub_23BBDD5A8();
      v35 = sub_23BBDB338();
      sub_23BBD9978();

      v36 = v47;
      sub_23BBDA918();
      swift_getAtKeyPath();
      j_j__swift_release(v33, 0);
      (*(v48 + 8))(v36, v49);
      v33 = v57[0];
    }

    if (!v33)
    {
      v37 = &v26[*(v31 + 28)];
      v38 = *v37;
      v39 = v37[8];

      if ((v39 & 1) == 0)
      {
        sub_23BBDD5A8();
        v40 = sub_23BBDB338();
        sub_23BBD9978();

        v41 = v47;
        sub_23BBDA918();
        swift_getAtKeyPath();
        j_j__swift_release(v38, 0);
        (*(v48 + 8))(v41, v49);
      }
    }
  }

  v42 = v53;
  sub_23BBDC0B8();

  v43 = v55;
  v44 = *(v54 + 8);
  v44(v27, v55);
  v57[0] = sub_23BB9C7F8();
  sub_23BB9F198();
  sub_23BB9F44C();
  sub_23BBDB7D8();

  v44(v42, v43);
  return sub_23B979910(v18, &qword_27E1A36F8);
}

uint64_t sub_23BB9E2A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_23BBDDBB8();
  a4(v8, v6);
  return sub_23BBDDBF8();
}

void *sub_23BB9E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(v2 + *(type metadata accessor for DynamicButtonHeightModifier(0) + 20) + 8) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);
    sub_23BBD9D38();
  }

  sub_23BBDC318();
  sub_23BBDA488();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3688);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3690);
  return memcpy((a2 + *(v6 + 36)), __src, 0x70uLL);
}

uint64_t sub_23BB9E4A0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA8D8();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_23BB9E4D0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA8D8();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_23BB9E534()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA748();
  *v0 = v2;
  return result;
}

unint64_t sub_23BB9E584()
{
  result = qword_27E1A35F8;
  if (!qword_27E1A35F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35E8);
    sub_23BB4DAA8();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A35F8);
  }

  return result;
}

uint64_t sub_23BB9E65C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BB9E6A4()
{
  result = qword_27E1A3610;
  if (!qword_27E1A3610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35F0);
    sub_23BB9E760();
    sub_23BB9E65C(&qword_27E1A3628, type metadata accessor for DynamicButtonHeightModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3610);
  }

  return result;
}

unint64_t sub_23BB9E760()
{
  result = qword_27E1A3618;
  if (!qword_27E1A3618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3608);
    sub_23BB9E7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3618);
  }

  return result;
}

unint64_t sub_23BB9E7EC()
{
  result = qword_27E1A3620;
  if (!qword_27E1A3620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35E8);
    sub_23BB9E584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3620);
  }

  return result;
}

uint64_t sub_23BB9E8D8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA908();
  *v0 = result;
  return result;
}

uint64_t sub_23BB9E908()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA588();
  *v0 = result;
  return result;
}

uint64_t sub_23BB9E948(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    if (v3 >= 2)
    {
      return v3 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28);
    v6 = OUTLINED_FUNCTION_15_0(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_23BB9E9E4()
{
  OUTLINED_FUNCTION_19();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB28);
    v5 = OUTLINED_FUNCTION_15_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_23BB9EA64()
{
  sub_23BB9EB94();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_23BB9EBEC();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_23BB9EEC8(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_23BB9EEC8(319, &qword_27E1A3650, &type metadata for ProminentButtonStyleApplierModifier.Variant, type metadata accessor for IdiomValue);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_23BB9EB94()
{
  if (!qword_27E19AB48)
  {
    sub_23BBDA508();
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19AB48);
    }
  }
}

void sub_23BB9EBEC()
{
  if (!qword_27E197EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197F00);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E197EF8);
    }
  }
}

_BYTE *sub_23BB9EC50(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BB9ED1CLL);
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

uint64_t sub_23BB9ED68()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BB9EDCC()
{
  OUTLINED_FUNCTION_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_23BB9EE20()
{
  sub_23B9D4C08();
  if (v0 <= 0x3F)
  {
    sub_23BB9EEC8(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BB9EEC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_23BB9EF1C()
{
  result = qword_27E1A3668;
  if (!qword_27E1A3668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3638);
    sub_23BB9EFD8();
    sub_23BB9E65C(&qword_27E1A3678, type metadata accessor for ProminentButtonStyleApplierModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3668);
  }

  return result;
}

unint64_t sub_23BB9EFD8()
{
  result = qword_27E1A3670;
  if (!qword_27E1A3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A35F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10);
    sub_23BB9E6A4();
    sub_23B97B518(&qword_27E198F80, &qword_27E198F10);
    swift_getOpaqueTypeConformance2();
    sub_23B9A6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3670);
  }

  return result;
}

unint64_t sub_23BB9F104()
{
  result = qword_27E1A3680;
  if (!qword_27E1A3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3680);
  }

  return result;
}

unint64_t sub_23BB9F198()
{
  result = qword_27E1A3700;
  if (!qword_27E1A3700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36F8);
    sub_23BB9F250();
    sub_23B97B518(&qword_27E1A1CA0, &qword_27E1A1CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3700);
  }

  return result;
}

unint64_t sub_23BB9F250()
{
  result = qword_27E1A3708;
  if (!qword_27E1A3708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3718);
    sub_23BBDB188();
    sub_23BB9F368();
    sub_23BB9E65C(&qword_27E1A3738, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3708);
  }

  return result;
}

unint64_t sub_23BB9F368()
{
  result = qword_27E1A3720;
  if (!qword_27E1A3720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3718);
    sub_23B97B518(&qword_27E1A3728, &qword_27E1A3730);
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3720);
  }

  return result;
}

unint64_t sub_23BB9F44C()
{
  result = qword_27E1A3740;
  if (!qword_27E1A3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3740);
  }

  return result;
}

unint64_t sub_23BB9F4A0()
{
  result = qword_27E1A3748;
  if (!qword_27E1A3748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36E0);
    sub_23BB9F558();
    sub_23B97B518(&qword_27E1A37A8, &qword_27E1A37B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3748);
  }

  return result;
}

unint64_t sub_23BB9F558()
{
  result = qword_27E1A3750;
  if (!qword_27E1A3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36D8);
    sub_23BB9F610();
    sub_23B97B518(&qword_27E1A1CA0, &qword_27E1A1CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3750);
  }

  return result;
}

unint64_t sub_23BB9F610()
{
  result = qword_27E1A3758;
  if (!qword_27E1A3758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36D0);
    sub_23BB9F6C8();
    sub_23B97B518(&qword_27E1A3798, &qword_27E1A37A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3758);
  }

  return result;
}

unint64_t sub_23BB9F6C8()
{
  result = qword_27E1A3760;
  if (!qword_27E1A3760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36C8);
    sub_23BB9F780();
    sub_23B97B518(&qword_27E1A1D38, &qword_27E1A1D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3760);
  }

  return result;
}

unint64_t sub_23BB9F780()
{
  result = qword_27E1A3768;
  if (!qword_27E1A3768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36C0);
    sub_23BB9F80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3768);
  }

  return result;
}

unint64_t sub_23BB9F80C()
{
  result = qword_27E1A3770;
  if (!qword_27E1A3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36B8);
    sub_23BB9F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3770);
  }

  return result;
}

unint64_t sub_23BB9F898()
{
  result = qword_27E1A3778;
  if (!qword_27E1A3778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36B0);
    sub_23BB9F924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3778);
  }

  return result;
}

unint64_t sub_23BB9F924()
{
  result = qword_27E1A3780;
  if (!qword_27E1A3780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36A8);
    sub_23BB9F368();
    sub_23B97B518(&qword_27E1A3788, &qword_27E1A3790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A3780);
  }

  return result;
}

uint64_t sub_23BB9F9DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BB9FA3C()
{

  if (*(v0 + 72) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

unint64_t sub_23BB9FA98()
{
  result = qword_27E1A37D0;
  if (!qword_27E1A37D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3690);
    sub_23B97B518(&qword_27E1A37D8, &qword_27E1A3688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A37D0);
  }

  return result;
}

unint64_t sub_23BB9FB54()
{
  result = qword_27E1A37E0;
  if (!qword_27E1A37E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E1A37E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A36E0);
    sub_23BBDA328();
    sub_23BB9F4A0();
    sub_23BB9E65C(&qword_27E1A1D48, MEMORY[0x277CDD9F8]);
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E1A37B8, &qword_27E1A3698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A37E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_62(uint64_t result)
{
  v7 = v2 + *(result + 36);
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

void sub_23BB9FCB8()
{
  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
  if (v0 <= 0x3F)
  {
    sub_23BBA0524();
    if (v1 <= 0x3F)
    {
      sub_23B975E04();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_23BBA057C(319, &qword_27E1A3870, &qword_27E199798, &unk_23BC04110, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_23BBA057C(319, &qword_27E19BE68, &qword_27E199218, &unk_23BBFA470, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_23B9A389C(319, &qword_27E1998F8);
              if (v6 <= 0x3F)
              {
                sub_23B9A389C(319, &qword_27E197E40);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23BB9FE50(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v7 | v10 | 7;
  v12 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 8;
  v14 = v12 + 10;
  if (v14 <= v13)
  {
    v14 = v13;
  }

  if (v14 <= 3)
  {
    v14 = 3;
  }

  v15 = v14 + ((((v7 + 16) & ~v7) + v8 + v11) & ~v11);
  if (v15 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v16 <= 0x10)
  {
    v16 = 16;
  }

  v17 = v16 + 1;
  v18 = (v16 + 1 + v11) & ~v11;
  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v23 = v18 + v17;
  v24 = 32;
  if (v23 > 0x20)
  {
    v24 = v23;
  }

  v25 = *(v20 + 80);
  v26 = *(v20 + 64);
  if (!a2)
  {
    return 0;
  }

  v27 = v24 + v11 + 1;
  v28 = v24 + 8;
  v29 = v25 + 16;
  if (v22 < a2)
  {
    v30 = ((((((v29 + ((v28 + (v27 & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + v26) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v30 <= 3)
    {
      v31 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      LODWORD(v32) = 4;
    }

    else
    {
      LODWORD(v32) = 2;
    }

    if (v31 < 0x100)
    {
      LODWORD(v32) = 1;
    }

    if (v31 >= 2)
    {
      v32 = v32;
    }

    else
    {
      v32 = 0;
    }

    switch(v32)
    {
      case 1:
        v33 = a1[v30];
        if (!a1[v30])
        {
          break;
        }

        goto LABEL_33;
      case 2:
        v33 = *&a1[v30];
        if (*&a1[v30])
        {
          goto LABEL_33;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BBA0160);
      case 4:
        v33 = *&a1[v30];
        if (!v33)
        {
          break;
        }

LABEL_33:
        v35 = (v33 - 1) << (8 * v30);
        if (v30 <= 3)
        {
          v36 = *a1;
        }

        else
        {
          v35 = 0;
          v36 = *a1;
        }

        return v22 + (v36 | v35) + 1;
      default:
        break;
    }
  }

  v37 = ((v28 + (&a1[v27] & ~v11)) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v37 + v29) & ~v25, v21, v19);
  }

  else
  {
    v38 = *v37;
    if (*v37 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}

void sub_23BBA0174(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v9 | v12 | 7;
  v14 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 8;
  v16 = v14 + 10;
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (v16 <= 3)
  {
    v16 = 3;
  }

  v17 = v16 + ((((v9 + 16) & ~v9) + v10 + v13) & ~v13);
  if (v17 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v18 <= 0x10)
  {
    v18 = 16;
  }

  v19 = v18 + 1;
  v20 = (v18 + 1 + v13) & ~v13;
  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = v20 + v19;
  v26 = 32;
  if (v25 > 0x20)
  {
    v26 = v25;
  }

  v27 = v26 + v13 + 1;
  v28 = v26 + 8;
  v29 = *(v22 + 80);
  v30 = ((((((v29 + 16 + ((v28 + (v27 & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(v22 + 64)) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 >= a3)
  {
    v33 = 0;
  }

  else
  {
    if (v30 <= 3)
    {
      v31 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  if (v24 < a2)
  {
    v34 = ~v24 + a2;
    bzero(a1, v30);
    if (v30 <= 3)
    {
      v35 = (v34 >> 8) + 1;
    }

    else
    {
      v35 = 1;
    }

    if (v30 > 3)
    {
      *a1 = v34;
    }

    else
    {
      *a1 = v34;
    }

    switch(v33)
    {
      case 1:
        *(a1 + v30) = v35;
        return;
      case 2:
        *(a1 + v30) = v35;
        return;
      case 3:
        goto LABEL_55;
      case 4:
        *(a1 + v30) = v35;
        return;
      default:
        return;
    }
  }

  v36 = ~v13;
  switch(v33)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    case 3:
LABEL_55:
      __break(1u);
      JUMPOUT(0x23BBA04E4);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (a2)
      {
LABEL_42:
        v37 = ((v28 + ((a1 + v27) & v36)) & 0xFFFFFFFFFFFFFFF8);
        if ((v23 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v37 + v29 + 16) & ~v29, a2, v23, v21);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v38 = a2 & 0x7FFFFFFF;
            v37[1] = 0;
          }

          else
          {
            v38 = (a2 - 1);
          }

          *v37 = v38;
        }
      }

      return;
  }
}

void sub_23BBA0524()
{
  if (!qword_27E19EFA8)
  {
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(255);
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19EFA8);
    }
  }
}

void sub_23BBA057C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23BBA0624(int *a1)
{
  v2 = v1;
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v1 + a1[12]) == 2)
  {
    return 0;
  }

  v9 = v1 + a1[14];
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v10, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v10) = v16[0];
  }

  if (v10 != 2 && (v10 & 1) != 0)
  {
    sub_23B9B6E40();
    if ((v17 - 1) <= 1)
    {
      return 1;
    }

    sub_23B9C9290(v16);
  }

  v12 = v2 + a1[16];
  v13 = *v12;
  if (*(v12 + 8) != 1)
  {

    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v13, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v13) = v16[0];
  }

  if (v13)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23BBA0888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  sub_23BBDAB18();
  OUTLINED_FUNCTION_7();
  v67 = v5;
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_6();
  v66 = v6;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v64 = v8;
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_6();
  v62 = v9;
  type metadata accessor for MultilineButtonLabel();
  v10 = *(a1 + 24);
  v61 = *(a1 + 16);
  v60 = v10;
  type metadata accessor for SingleLineLabel();
  OUTLINED_FUNCTION_15_29();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_9_32();
  sub_23BBA424C(v11, v12);
  v79 = v2;
  v80 = OUTLINED_FUNCTION_13_33();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDBFC8();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_29();
  type metadata accessor for SubscribeButtonTopCaptionModifier();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_29();
  sub_23BBDB2B8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A3880);
  OUTLINED_FUNCTION_7_15();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v13 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v58 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v18 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v57 = v19;
  MEMORY[0x28223BE20](v20);
  v53 = &v50 - v21;
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  v77 = WitnessTable;
  v78 = MEMORY[0x277CE03F0];
  v59 = MEMORY[0x277CDFAD8];
  v52 = swift_getWitnessTable();
  v75 = v18;
  v76 = v52;
  v54 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v55 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v50 = &v50 - v34;
  MEMORY[0x28223BE20](v35);
  v56 = &v50 - v36;
  v70 = v61;
  v71 = v60;
  v72 = v63;
  sub_23B9BE15C();
  sub_23BBDC068();
  v37 = v53;
  sub_23BBDB7C8();
  (*(v58 + 8))(v17, v13);
  v38 = v62;
  sub_23BBDB128();
  v39 = v52;
  sub_23BBDB968();
  (*(v64 + 8))(v38, v65);
  (*(v57 + 8))(v37, v18);
  swift_getKeyPath();
  v75 = v18;
  v76 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9968C4();

  (*(v55 + 8))(v26, OpaqueTypeMetadata2);
  v41 = v66;
  sub_23BBDAB08();
  v42 = v50;
  sub_23BBDA348();
  (*(v67 + 8))(v41, v68);
  v43 = *(v29 + 8);
  v43(v32, v27);
  OUTLINED_FUNCTION_11_31();
  v46 = sub_23BBA424C(v44, v45);
  v73 = OpaqueTypeConformance2;
  v74 = v46;
  v47 = swift_getWitnessTable();
  v48 = v56;
  sub_23B9D2D88(v42, v27, v47);
  v43(v42, v27);
  sub_23B9D2D88(v48, v27, v47);
  return (v43)(v48, v27);
}

uint64_t sub_23BBA0FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  v98 = a3;
  v85 = a1;
  v100 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v100);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v73 - v7;
  v8 = sub_23BBDAB18();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v92 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A1A8);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = (&v73 - v13);
  v14 = type metadata accessor for SubscriptionStoreButtonInternal();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  type metadata accessor for MultilineButtonLabel();
  type metadata accessor for SingleLineLabel();
  sub_23BBDACE8();
  v18 = sub_23BBA424C(&qword_27E1A3878, type metadata accessor for MultilineButtonLabel);
  WitnessTable = swift_getWitnessTable();
  v108[8] = v18;
  v108[9] = WitnessTable;
  swift_getWitnessTable();
  v82 = sub_23BBDC098();
  v79 = swift_getWitnessTable();
  v20 = sub_23BBDBFC8();
  v84 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v77 = &v73 - v21;
  v81 = sub_23BBDA358();
  v88 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v73 - v22;
  type metadata accessor for SubscribeButtonTopCaptionModifier();
  v86 = sub_23BBDA358();
  v89 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v73 - v23;
  sub_23BBDB2B8();
  v99 = sub_23BBDA358();
  v90 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v83 = &v73 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v87 = &v73 - v29;
  v30 = v85;
  v31 = v14;
  (*(v15 + 16))(v17, v85, v14, v28);
  v32 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v33 = swift_allocObject();
  v34 = a2;
  v76 = a2;
  *(v33 + 16) = a2;
  v35 = v98;
  *(v33 + 24) = v98;
  (*(v15 + 32))(v33 + v32, v17, v31);
  v102[8] = v34;
  v102[9] = v35;
  v102[10] = v30;
  v36 = v77;
  sub_23BBDBFA8();
  v82 = v31[9];
  v37 = v91;
  sub_23B99FCE0(v30 + v82, v91, &qword_27E19A1A8);
  LOBYTE(v32) = __swift_getEnumTagSinglePayload(v37, 1, v100) != 1;
  sub_23B9846E8(v37, &qword_27E19A1A8);
  LOBYTE(v104) = v32;
  v38 = swift_getWitnessTable();
  v39 = v78;
  MEMORY[0x23EEB43C0](&v104, v20, &type metadata for PrimaryButtonViewModifier, v38);
  (*(v84 + 8))(v36, v20);
  v102[2] = v76;
  v102[3] = v98;
  v102[4] = v30;
  v101[2] = v76;
  v101[3] = v98;
  v101[4] = v30;
  v91 = v31;
  v40 = v30;
  LOBYTE(v36) = sub_23BBA0624(v31) == 1;
  v41 = sub_23BBA3138();
  v108[6] = v38;
  v108[7] = v41;
  v42 = v81;
  v43 = swift_getWitnessTable();
  v44 = v80;
  sub_23BAB2114(sub_23BBA3120, v102, sub_23BBA312C, v101, v36, v42, v43);
  (*(v88 + 8))(v39, v42);
  v45 = v92;
  sub_23BBDAB08();
  v46 = sub_23BBA424C(&qword_27E1A3890, type metadata accessor for SubscribeButtonTopCaptionModifier);
  v108[4] = v43;
  v108[5] = v46;
  v47 = v86;
  v48 = swift_getWitnessTable();
  v49 = v83;
  sub_23BBDBA58();
  v50 = v40;
  (*(v95 + 8))(v45, v96);
  v51 = v47;
  v52 = v93;
  (*(v89 + 8))(v44, v51);
  v53 = sub_23BBA424C(&qword_27E198368, MEMORY[0x277CDE470]);
  v108[2] = v48;
  v108[3] = v53;
  v54 = v99;
  v55 = swift_getWitnessTable();
  v56 = v87;
  v98 = v55;
  sub_23B9D2D88(v49, v54, v55);
  v57 = v90;
  v58 = *(v90 + 8);
  v58(v49, v54);
  sub_23B99FCE0(v50 + v82, v52, &qword_27E19A1A8);
  if (__swift_getEnumTagSinglePayload(v52, 1, v100) == 1)
  {
    sub_23B9846E8(v52, &qword_27E19A1A8);
LABEL_6:
    v61 = 0;
    v63 = 0;
    v68 = 0;
    v67 = 0;
    goto LABEL_7;
  }

  v59 = v75;
  sub_23BBA3E50(v52, v75, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
  if (sub_23BBA0624(v91) != 2)
  {
    sub_23BBA4294(v59, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
    goto LABEL_6;
  }

  v60 = v74;
  sub_23BB77FC4(v59, v74);
  v61 = sub_23BB95790(v60);
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_23BBA4294(v59, type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource);
  v68 = v65 & 1;
  sub_23BA51B84(v61, v63, v68);

LABEL_7:
  v69 = *(v57 + 16);
  v70 = v94;
  v71 = v99;
  v69(v94, v56, v99);
  v104 = v61;
  v105 = v63;
  v106 = v68;
  v107 = v67;
  v108[0] = v70;
  v108[1] = &v104;
  v103[0] = v71;
  v103[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A3880);
  v102[11] = v98;
  v102[12] = sub_23BBA318C();
  sub_23BB6739C(v108, 2, v103);
  sub_23BA82038(v61, v63, v68, v67);
  v58(v56, v71);
  sub_23BA82038(v104, v105, v106, v107);
  return (v58)(v70, v71);
}