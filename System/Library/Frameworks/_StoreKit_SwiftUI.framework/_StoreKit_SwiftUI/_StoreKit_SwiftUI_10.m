uint64_t sub_23BA6657C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA5E694();
  *v0 = result;
  return result;
}

uint64_t sub_23BA665A4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA5E694();
  *v0 = result;
  return result;
}

uint64_t sub_23BA66618(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    sub_23B9794F0(a3);
    j__swift_retain_0();
    sub_23BBDD5A8();
    v18 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    (*(v9 + 8))(v11, v8);
    a1 = v21;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v16 = &unk_23BBF2260;
    goto LABEL_8;
  }

  sub_23B9794F0(a3);
  j__swift_retain_0();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = &unk_23BBF2270;
  v15[5] = v14;
  v16 = &unk_23BBF2280;
LABEL_8:
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D308);
  result = swift_allocObject();
  *(result + 16) = v19;
  *(result + 24) = v15;
  return result;
}

uint64_t sub_23BA66864(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  v6[5] = sub_23BBDD308();
  v6[6] = sub_23BBDD2F8();
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_23BA66988;

  return v11(a2);
}

uint64_t sub_23BA66988()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v4 = *(v1 + 24);
  v5 = *v0;
  *v3 = *v0;

  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v5;
  v6[1] = sub_23BA66B40;
  v7 = OUTLINED_FUNCTION_73(*(v1 + 16));

  return v9(v7);
}

uint64_t sub_23BA66B40()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  sub_23BBDD2D8();
  OUTLINED_FUNCTION_119();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BA66C68()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_1_16();

  return v0();
}

uint64_t sub_23BA66CC0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23B9F3414;

  return v7(a2);
}

uint64_t sub_23BA66DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = sub_23BA66F20(a2, a3 & 1, a4, a5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D328);
  (*(*(v14 - 8) + 16))(a6, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D330);
  v16 = (a6 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_23BA66EB0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA5E6B4();
  *v0 = result;
  return result;
}

uint64_t sub_23BA66F20(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    sub_23B9794F0(a3);
    j__swift_retain_0();
    sub_23BBDD5A8();
    v18 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    (*(v9 + 8))(v11, v8);
    a1 = v21;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v16 = &unk_23BBF22E0;
    goto LABEL_8;
  }

  sub_23B9794F0(a3);
  j__swift_retain_0();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = &unk_23BBF22F0;
  v15[5] = v14;
  v16 = &unk_23BBF2300;
LABEL_8:
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D338);
  result = swift_allocObject();
  *(result + 16) = v19;
  *(result + 24) = v15;
  return result;
}

uint64_t sub_23BA6716C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a2;
  v7[3] = a3;
  v7[6] = sub_23BBDD308();
  v7[7] = sub_23BBDD2F8();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_23BA6729C;

  return v13(a2, a3);
}

uint64_t sub_23BA6729C()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  *v3 = *v0;

  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 72) = v6;
  *v6 = v5;
  v6[1] = sub_23BA67468;
  v7 = OUTLINED_FUNCTION_73(*(v1 + 16));

  return v9(v7);
}

uint64_t sub_23BA67468()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  sub_23BBDD2D8();
  OUTLINED_FUNCTION_119();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BA675A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = sub_23BA67B08(a2, a3 & 1, a4, a5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D310);
  (*(*(v14 - 8) + 16))(a6, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D318);
  v16 = (a6 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  return result;
}

uint64_t sub_23BA6768C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA5E6D4();
  *v0 = result;
  return result;
}

uint64_t sub_23BA676B4()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA5E6D4();
  *v0 = result;
  return result;
}

uint64_t sub_23BA67728()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA5E6B4();
  *v0 = result;
  return result;
}

unint64_t sub_23BA67774()
{
  result = qword_27E19D270;
  if (!qword_27E19D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D270);
  }

  return result;
}

unint64_t sub_23BA677E8()
{
  result = qword_27E19D278;
  if (!qword_27E19D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D278);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx010_StoreKit_aB0020OnInAppPurchaseStartC8Modifier33_A7B1F9D9E056EAFD1DCAF2E48FAF0C5CLLVGAaBHPxAaBHD1__AhA0cM0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_23BBDA358();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_23BA678CC()
{
  result = qword_27E19D280;
  if (!qword_27E19D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D280);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17_StoreKit_SwiftUI25IntroductoryOfferProviderVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23BA67944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 89))
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

uint64_t sub_23BA67984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BA67A18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_23BA67A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23BA67B08(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    sub_23B9794F0(a3);
    j__swift_retain_0();
    sub_23BBDD5A8();
    v18 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    (*(v9 + 8))(v11, v8);
    a1 = v21;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v16 = &unk_23BBF22A0;
    goto LABEL_8;
  }

  sub_23B9794F0(a3);
  j__swift_retain_0();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = &unk_23BBF22B0;
  v15[5] = v14;
  v16 = &unk_23BBF22C0;
LABEL_8:
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D320);
  result = swift_allocObject();
  *(result + 16) = v19;
  *(result + 24) = v15;
  return result;
}

uint64_t sub_23BA67D54(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v6[6] = sub_23BBDD308();
  v6[7] = sub_23BBDD2F8();
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_23BA67E78;

  return v11(a2);
}

uint64_t sub_23BA67E78()
{
  OUTLINED_FUNCTION_41_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_7_17();
  *v6 = v5;
  *(v2 + 72) = v7;

  v11 = (v4 + *v4);
  v8 = swift_task_alloc();
  *(v2 + 80) = v8;
  *v8 = v5;
  v8[1] = sub_23BA68038;
  v9 = OUTLINED_FUNCTION_73(*(v1 + 24));

  return v11(v9);
}

uint64_t sub_23BA68038()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;
  *(v6 + 88) = v5;

  sub_23BBDD2D8();
  OUTLINED_FUNCTION_119();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23BA68164()
{
  OUTLINED_FUNCTION_4_11();
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_6_9();
  sub_23BA66104(v2, v3);
  *v1 = v4;
  OUTLINED_FUNCTION_1_16();

  return v5();
}

uint64_t sub_23BA681DC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_23BA682D4;

  return v7(a2);
}

uint64_t sub_23BA682D4()
{
  OUTLINED_FUNCTION_3_13();
  v2 = v1;
  OUTLINED_FUNCTION_21_4();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_1_16();

  return v7();
}

uint64_t sub_23BA68424(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199788);
    OUTLINED_FUNCTION_29_1();
    v2 = sub_23BBDD748();
    v23 = *(v1 + 16);
    if (v23)
    {
      v3 = 0;
      v21 = v1;
      v22 = v1 + 32;
      do
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          JUMPOUT(0x23BA68760);
        }

        v4 = *(v22 + v3++);
        sub_23BBDDBB8();
        sub_23BBDD078();

        v5 = sub_23BBDDBF8();
        v6 = ~(-1 << *(v2 + 32));
        v7 = v5 & v6;
        OUTLINED_FUNCTION_205();
        if ((v10 & v9) != 0)
        {
          while (1)
          {
            v11 = 0xE700000000000000;
            v12 = 0x746E6572727563;
            switch(*(*(v2 + 48) + v7))
            {
              case 1:
                v12 = 0x646172676E776F64;
                v11 = 0xE900000000000065;
                break;
              case 2:
                v12 = 0x61726773736F7263;
                v11 = 0xEA00000000006564;
                break;
              case 3:
                v12 = 0x65646172677075;
                break;
              case 4:
                v11 = 0xE300000000000000;
                v12 = 7105633;
                break;
              default:
                break;
            }

            v13 = 0xE700000000000000;
            v14 = 0x746E6572727563;
            switch(v4)
            {
              case 1:
                v14 = 0x646172676E776F64;
                v13 = 0xE900000000000065;
                break;
              case 2:
                v14 = 0x61726773736F7263;
                v13 = 0xEA00000000006564;
                break;
              case 3:
                v14 = 0x65646172677075;
                break;
              case 4:
                v13 = 0xE300000000000000;
                v14 = 7105633;
                break;
              default:
                break;
            }

            if (v12 == v14 && v11 == v13)
            {
              break;
            }

            v16 = sub_23BBDDA88();

            if (v16)
            {
              goto LABEL_25;
            }

            v7 = (v7 + 1) & v6;
            OUTLINED_FUNCTION_205();
            if ((v9 & v10) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *(v2 + 56 + 8 * v8) = v9 | v10;
          *(*(v2 + 48) + v7) = v4;
          v17 = *(v2 + 16);
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_30;
          }

          *(v2 + 16) = v19;
        }

LABEL_25:
        v1 = v21;
      }

      while (v3 != v23);
    }
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23BA6879C(uint64_t a1)
{
  v2 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_3_2();
  v36 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v31 - v8;
  if (!*(a1 + 16))
  {
    v10 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996E0);
  OUTLINED_FUNCTION_29_1();
  result = sub_23BBDD748();
  v10 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v39 = result + 56;
  v12 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v12 + 32) & ~v12);
  v38 = v36 + 16;
  v13 = (v36 + 8);
  v32 = (v36 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v36 + 72);
    v37 = v11 + 1;
    v15 = *(v36 + 16);
    v15(v40, v34 + v14 * v11, v2);
    OUTLINED_FUNCTION_112();
    sub_23BA68F64(&qword_27E1996E8, v16);
    v17 = sub_23BBDCE58();
    v18 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v39 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v10;
      v15(v6, *(v10 + 48) + v19 * v14, v2);
      OUTLINED_FUNCTION_112();
      sub_23BA68F64(&qword_27E1996F0, v24);
      v25 = sub_23BBDCF38();
      v26 = *v13;
      (*v13)(v6, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v10 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v10 = v23;
    }

    v27 = v40;
    *(v39 + 8 * v20) = v22 | v21;
    result = (*v32)(*(v10 + 48) + v19 * v14, v27, v2);
    v28 = *(v10 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v10 + 16) = v30;
LABEL_12:
    v11 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23BA68AB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_1_4();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BA68B14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v40 = a3;
  v5 = sub_23BBDC9A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v9 = *v3;
  v10 = sub_23BA68F64(&qword_27E1996E8, MEMORY[0x277CDD1B0]);
  v47 = a1;
  v39[1] = v10;
  v11 = sub_23BBDCE58();
  v12 = v9;
  v43 = ~(-1 << *(v9 + 32));
  v44 = v9 + 56;
  v45 = v6 + 8;
  v46 = v6 + 16;
  v13 = 1;
  while (1)
  {
    v14 = v11 & v43;
    v15 = (v11 & v43) >> 6;
    v16 = 1 << (v11 & v43);
    v17 = v16 & *(v44 + 8 * v15);
    if (!v17)
    {
      break;
    }

    v18 = v12;
    (*(v6 + 16))(v8, v12[6] + *(v6 + 72) * v14, v5);
    sub_23BA68F64(&qword_27E1996F0, MEMORY[0x277CDD1B0]);
    v19 = sub_23BBDCF38();
    (*(v6 + 8))(v8, v5);
    if (v19)
    {
      v13 = 0;
      v12 = v18;
      break;
    }

    v11 = v14 + 1;
    v12 = v18;
  }

  v20 = v12[2];
  v21 = v20 + v13;
  if (__OFADD__(v20, v13))
  {
    __break(1u);
  }

  else
  {
    v22 = v12[3];
    v23 = v42;
    if (v22 < v21 || (v41 & 1) == 0)
    {
      if (v41)
      {
        sub_23B9BA2BC();
        goto LABEL_16;
      }

      if (v22 < v21)
      {
        sub_23B9BC090();
LABEL_16:
        v26 = *v23;
        v27 = sub_23BBDCE58();
        v44 = v26 + 56;
        v28 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v14 = v27 & v28;
          v15 = (v27 & v28) >> 6;
          v16 = 1 << (v27 & v28);
          if ((v16 & *(v44 + 8 * v15)) == 0)
          {
            v23 = v42;
            if (v17)
            {
              goto LABEL_29;
            }

            v24 = *(v6 + 72);
            goto LABEL_22;
          }

          v25 = *(v6 + 72) * v14;
          (*(v6 + 16))(v8, *(v26 + 48) + v25, v5);
          sub_23BA68F64(&qword_27E1996F0, MEMORY[0x277CDD1B0]);
          v29 = sub_23BBDCF38();
          (*(v6 + 8))(v8, v5);
          if (v29)
          {
            break;
          }

          v27 = v14 + 1;
        }

        v23 = v42;
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      sub_23B9BB738();
    }

    v24 = *(v6 + 72);
    if (v17)
    {
      v25 = v24 * v14;
LABEL_25:
      v36 = *v23;
      v37 = *(v6 + 32);
      v35 = v40;
      v37(v40, *(*v23 + 48) + v25, v5);
      v37(*(v36 + 48) + v25, v47, v5);
      v34 = 0;
      return __swift_storeEnumTagSinglePayload(v35, v34, 1, v5);
    }

LABEL_22:
    v30 = *v23;
    *(*v23 + 8 * v15 + 56) |= v16;
    (*(v6 + 32))(*(v30 + 48) + v24 * v14, v47, v5);
    v31 = *(v30 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      *(v30 + 16) = v33;
      v34 = 1;
      v35 = v40;
      return __swift_storeEnumTagSinglePayload(v35, v34, 1, v5);
    }
  }

  __break(1u);
LABEL_29:
  result = sub_23BBDDAD8();
  __break(1u);
  return result;
}

uint64_t sub_23BA68F4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23B9EA1E0();
  }

  return result;
}

uint64_t sub_23BA68F64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_29_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BA68FA8()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BA68FE4()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_90();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4_18(v2);
  *v3 = v4;
  v3[1] = sub_23BA69080;
  v5 = OUTLINED_FUNCTION_49_0();

  return sub_23BA5E420(v5, v6, v1, v0);
}

uint64_t sub_23BA69080()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_49_0();

  return v4(v3);
}

uint64_t sub_23BA69178()
{

  OUTLINED_FUNCTION_155();

  return swift_deallocObject();
}

uint64_t sub_23BA691AC()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_211();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_9(v1);

  return v4(v3);
}

uint64_t sub_23BA6923C()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_90();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_49_0();

  return v4(v3);
}

uint64_t sub_23BA692EC()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_211();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_9(v1);

  return v4(v3);
}

uint64_t sub_23BA6937C()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_90();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_66();

  return v4(v3);
}

uint64_t sub_23BA69428()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_212();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23BA027BC;
  v6 = OUTLINED_FUNCTION_66();

  return sub_23BA66864(v6, v7, v8, v1, v2, v0);
}

uint64_t sub_23BA694D0()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_90();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_66();

  return v4(v3);
}

uint64_t sub_23BA69578()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_211();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_9(v1);

  return v4(v3);
}

uint64_t sub_23BA69608()
{
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_212();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_10(v3);
  *v4 = v5;
  v4[1] = sub_23B9F3414;
  v6 = OUTLINED_FUNCTION_66();

  return sub_23BA67D54(v6, v7, v8, v1, v2, v0);
}

uint64_t sub_23BA696AC()
{
  OUTLINED_FUNCTION_41_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_10(v0);
  *v1 = v2;
  v1[1] = sub_23BA027BC;
  v3 = OUTLINED_FUNCTION_181();

  return v4(v3);
}

uint64_t objectdestroy_66Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23BA697A0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_10(v4);
  *v5 = v6;
  v5[1] = sub_23BA027BC;
  v7 = OUTLINED_FUNCTION_181();

  return sub_23BA6716C(v7, v8, v9, v10, v1, v3, v2);
}

unint64_t sub_23BA69860()
{
  result = qword_27E19D340;
  if (!qword_27E19D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D340);
  }

  return result;
}

unint64_t sub_23BA698B4()
{
  result = qword_27E19D348;
  if (!qword_27E19D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D348);
  }

  return result;
}

unint64_t sub_23BA69908()
{
  result = qword_27E19D350;
  if (!qword_27E19D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D350);
  }

  return result;
}

unint64_t sub_23BA69990()
{
  result = qword_27E19D358;
  if (!qword_27E19D358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D300);
    sub_23B9F3964(&qword_27E19D360, &qword_27E19D2F8);
    sub_23B9F3964(&qword_27E19D368, &qword_27E19D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D358);
  }

  return result;
}

unint64_t sub_23BA69A78()
{
  result = qword_27E19D378;
  if (!qword_27E19D378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D318);
    sub_23B9F3964(&qword_27E19D380, &qword_27E19D310);
    sub_23B9F3964(&qword_27E19D388, &qword_27E19D390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D378);
  }

  return result;
}

unint64_t sub_23BA69B60()
{
  result = qword_27E19D398;
  if (!qword_27E19D398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D330);
    sub_23B9F3964(&qword_27E19D3A0, &qword_27E19D328);
    sub_23B9F3964(&qword_27E19D3A8, &qword_27E19D3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D398);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{
}

void OUTLINED_FUNCTION_23_5()
{
  v1 = v0[38];
  v0[106] = *(v1 + 16);
  v0[107] = *(v1 + 24);
}

void OUTLINED_FUNCTION_24_8()
{
  v1 = v0[38];
  v0[111] = *(v1 + 16);
  v0[112] = *(v1 + 24);
}

unint64_t OUTLINED_FUNCTION_36_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = v2;
  *(v3 + 12) = 2082;

  return sub_23BA5AB90(0xD00000000000002ALL, a1 | 0x8000000000000000, va);
}

unint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = v2;
  *(v3 + 12) = 2082;

  return sub_23BA5AB90(0xD00000000000002ALL, a2 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_40_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_48_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_23BA5AB90(0xD00000000000002ALL, a1 | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_49_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_50_1()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 288);

  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_51_2()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 288);

  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

unint64_t OUTLINED_FUNCTION_52_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v17 = a15;
  v18 = a16;

  return sub_23BA5AB90(v17, v18, &a14);
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_55_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_56_2()
{

  JUMPOUT(0x23EEB5890);
}

void OUTLINED_FUNCTION_57_1()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_67()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_75_0()
{
  *(v1 + 216) = v0;
  *(v1 + 840) = v0;

  return v0;
}

void OUTLINED_FUNCTION_77_0()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_85()
{
  v1 = v0[38];
  v0[94] = *(v1 + 48);
  v0[95] = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_86()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_87()
{

  return sub_23BBDDA48();
}

uint64_t OUTLINED_FUNCTION_88()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_89()
{
  **(v1 + 328) = v0;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_93()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_23BA5AB90(v14, v15, &a11);
}

void OUTLINED_FUNCTION_101()
{

  JUMPOUT(0x23EEB5890);
}

void OUTLINED_FUNCTION_105()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_116()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_117()
{

  return sub_23BA68AB4(v0, v1 + 16, v2);
}

uint64_t OUTLINED_FUNCTION_118()
{
  v2 = *(v0 + 584);
  v3 = *(v0 + 344);

  return sub_23B9EA228(v2, v3);
}

void OUTLINED_FUNCTION_121()
{

  JUMPOUT(0x23EEB6DC0);
}

void OUTLINED_FUNCTION_122()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_124(int a1)
{

  return sub_23BA68B14(v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_126()
{
  **(v0 + 320) = v1;

  return swift_storeEnumTagMultiPayload();
}

id OUTLINED_FUNCTION_127@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_128()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_131()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_132()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_133()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_23B9846E8(v0, v1);
}

unint64_t OUTLINED_FUNCTION_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a14;
  v17 = a15;

  return sub_23BA5AB90(v16, v17, &a13);
}

uint64_t OUTLINED_FUNCTION_140()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_141(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_23BA5AB90(0xD00000000000002ALL, a2, a3);
}

void OUTLINED_FUNCTION_142()
{

  JUMPOUT(0x23EEB5890);
}

void OUTLINED_FUNCTION_143()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_144()
{
}

void OUTLINED_FUNCTION_145(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_146()
{

  return sub_23BBDD768();
}

uint64_t OUTLINED_FUNCTION_147()
{

  return sub_23BBDD2D8();
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_23BBDD2F8();
}

void OUTLINED_FUNCTION_149()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_151()
{
}

uint64_t OUTLINED_FUNCTION_154()
{
}

uint64_t OUTLINED_FUNCTION_158()
{

  return sub_23BBDCF38();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_165()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_166()
{
}

uint64_t OUTLINED_FUNCTION_167()
{
}

void *OUTLINED_FUNCTION_168()
{

  return __swift_project_boxed_opaque_existential_1(v1, v0);
}

uint64_t OUTLINED_FUNCTION_169()
{
}

uint64_t OUTLINED_FUNCTION_170()
{
}

uint64_t OUTLINED_FUNCTION_171()
{

  return sub_23BBDC948();
}

BOOL OUTLINED_FUNCTION_173()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_174()
{
}

uint64_t OUTLINED_FUNCTION_182()
{
}

BOOL OUTLINED_FUNCTION_183()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t OUTLINED_FUNCTION_184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_23BA5AB90(v6, v5, va);
}

unint64_t OUTLINED_FUNCTION_185(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v18 = a16;
  v19 = a17;

  return sub_23BA5AB90(v18, v19, &a15);
}

void OUTLINED_FUNCTION_186()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_187()
{
}

uint64_t OUTLINED_FUNCTION_188()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_189()
{

  return sub_23BBD99A8();
}

uint64_t OUTLINED_FUNCTION_190(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
}

void OUTLINED_FUNCTION_191()
{

  JUMPOUT(0x23EEB5890);
}

BOOL OUTLINED_FUNCTION_192()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_193()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_194()
{
}

void OUTLINED_FUNCTION_195(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v1 + a1) = v2;
}

uint64_t OUTLINED_FUNCTION_196()
{
}

uint64_t OUTLINED_FUNCTION_197()
{

  return sub_23BBD9978();
}

void OUTLINED_FUNCTION_198()
{

  JUMPOUT(0x23EEB5890);
}

void OUTLINED_FUNCTION_199()
{

  JUMPOUT(0x23EEB5890);
}

void OUTLINED_FUNCTION_214(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_23BBDCC48();
}

uint64_t OUTLINED_FUNCTION_216()
{
}

void OUTLINED_FUNCTION_217()
{
}

uint64_t OUTLINED_FUNCTION_218()
{
}

void OUTLINED_FUNCTION_219()
{

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_220()
{
}

uint64_t sub_23BA6AFF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BBE94D0;
  v1 = sub_23BBDB368();
  *(inited + 32) = v1;
  v2 = sub_23BBDB348();
  *(inited + 33) = v2;
  v3 = sub_23BBDB358();
  sub_23BBDB358();
  if (sub_23BBDB358() != v1)
  {
    v3 = sub_23BBDB358();
  }

  sub_23BBDB358();
  if (sub_23BBDB358() != v2)
  {
    return sub_23BBDB358();
  }

  return v3;
}

uint64_t sub_23BA6B0D8@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v57 = a4;
  v54 = a3;
  v55 = a2;
  v56 = a1;
  v58 = a7;
  v49[1] = a10;
  OUTLINED_FUNCTION_3_2();
  v52 = v13;
  v53 = v12;
  v49[0] = v14;
  v51 = a8;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v50 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_3_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v28 = v27 - v26;
  v59 = v29;
  v60 = v30;
  v61 = v31;
  v62 = v32;
  v63 = v33;
  v64 = v34;
  v35 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView();
  OUTLINED_FUNCTION_3_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  v40 = v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v49 - v43;
  v45 = (*(v24 + 16))(v28, v53, a5, v42);
  v55(v45);
  (*(v52 + 16))(v17, v56, a6);
  sub_23BA6B828(v28, v22, v17, v57, a5, v50, a6, v40);
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v40, v35, WitnessTable);
  v47 = *(v37 + 8);
  v47(v40, v35);
  sub_23B9D2D88(v44, v35, WitnessTable);
  return (v47)(v44, v35);
}

uint64_t sub_23BA6B3D8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(_OWORD *__return_ptr)@<X2>, uint64_t (*a3)(void)@<X4>, char a4@<W6>, uint64_t a5@<X8>)
{
  if (a4 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B160);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v10 = *(TupleTypeMetadata3 + 48);
    v11 = a5 + *(TupleTypeMetadata3 + 64);
    v12 = a3();
    *(a5 + v10) = a1(v12) & 1;
    a2(v17);
    v13 = v17[1];
    *v11 = v17[0];
    *(v11 + 16) = v13;
    *(v11 + 32) = v18;
  }

  else
  {
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    a3();
    *(a5 + v15) = a4 & 1;
  }

  type metadata accessor for SubscriptionStorePickerLayoutInternal.LayoutView();

  return swift_storeEnumTagMultiPayload();
}

BOOL static SubscriptionStorePickerLayout.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 != 2)
  {
    if (v2 == 2)
    {
      return 0;
    }

    v3 = sub_23BBDB378();
    return v3 == sub_23BBDB378();
  }

  return v2 == 2;
}

BOOL sub_23BA6B5C4(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = sub_23BBDB378();
  return v3 == sub_23BBDB378();
}

uint64_t SubscriptionStorePickerLayout.hash(into:)()
{
  if (*v0 == 2)
  {
    return MEMORY[0x23EEB63A0](1);
  }

  MEMORY[0x23EEB63A0](0);
  sub_23BBDB378();
  return sub_23BBDDBD8();
}

uint64_t SubscriptionStorePickerLayout.hashValue.getter()
{
  v1 = *v0;
  sub_23BBDDBB8();
  if (v1 == 2)
  {
    MEMORY[0x23EEB63A0](1);
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    sub_23BBDB378();
    sub_23BBDDBD8();
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BA6B6F8()
{
  v1 = *v0;
  sub_23BBDDBB8();
  if (v1 == 2)
  {
    MEMORY[0x23EEB63A0](1);
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    sub_23BBDB378();
    sub_23BBDDBD8();
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BA6B764(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    return MEMORY[0x23EEB63A0](1);
  }

  MEMORY[0x23EEB63A0](0);
  sub_23BBDB378();
  return sub_23BBDDBD8();
}

uint64_t sub_23BA6B7B4(unsigned __int8 a1)
{
  v1 = a1;
  sub_23BBDDBB8();
  if (v1 == 2)
  {
    MEMORY[0x23EEB63A0](1);
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    sub_23BBDB378();
    sub_23BBDDBD8();
  }

  return sub_23BBDDBF8();
}

uint64_t sub_23BA6B828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v14 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView();
  (*(*(a6 - 8) + 32))(a8 + v14[17], a2, a6);
  result = (*(*(a7 - 8) + 32))(a8 + v14[18], a3, a7);
  *(a8 + v14[19]) = a4;
  return result;
}

unint64_t sub_23BA6B96C()
{
  result = qword_27E19D3B8;
  if (!qword_27E19D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D3B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionStorePickerLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        v5 = (*a1 | (v4 << 8)) - 3;
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStorePickerLayout(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA6BB24);
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

uint64_t getEnumTagSinglePayload for SubscriptionStorePickerLayoutInternal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 2;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA6BC08);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      default:
        break;
    }
  }

  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStorePickerLayoutInternal(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x23BA6BCF0);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BA6BD18(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23BA6BD2C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_23BA6BD4C()
{
  v1 = *v0;
  sub_23BBDDBB8();
  sub_23BA6B764(v3, v1);
  return sub_23BBDDBF8();
}

unint64_t sub_23BA6BDA0()
{
  result = qword_27E19D3C0;
  if (!qword_27E19D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D3C0);
  }

  return result;
}

uint64_t sub_23BA6BE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for PickerOptionPages();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v86 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v87 = &v77 - v8;
  v9 = type metadata accessor for HorizontalPickerOptionStack();
  v82 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v77 - v12;
  v13 = type metadata accessor for VerticalPickerOptionStack();
  v93 = v9;
  v14 = sub_23BBDACE8();
  v83 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v77 - v15;
  v95 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v97 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v96 = &v77 - v26;
  v27 = *(a1 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v31;
  v92 = sub_23BBDACE8();
  v91 = *(v92 - 8);
  v32 = MEMORY[0x28223BE20](v92);
  v34 = &v77 - v33;
  (*(v27 + 16))(v30, v88, a1, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v90 = v34;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B160);
    v36 = v97;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v38 = v30[*(TupleTypeMetadata3 + 48)];
    v39 = &v30[*(TupleTypeMetadata3 + 64)];
    v40 = *(v39 + 1);
    v109 = *v39;
    v110 = v40;
    v111 = v39[32];
    v41 = v5;
    v42 = v96;
    v21[4](v96, v30, v36);
    v21[2](v24, v42, v36);
    v88 = *(&v109 + 1);
    v112 = v109;
    v113 = v110;
    v114 = v111;
    v43 = v86;
    sub_23BA6CAE8(v24, v38, &v109, v36, v86);
    WitnessTable = swift_getWitnessTable();
    v45 = v87;
    sub_23B9D2D88(v43, v4, WitnessTable);
    sub_23BA6E944(&v112, v108);

    sub_23BA6E9A0(&v113, v108);
    v46 = *(v41 + 8);
    v46(v43, v4);
    sub_23B9D2D88(v45, v4, WitnessTable);
    v47 = swift_getWitnessTable();
    v48 = swift_getWitnessTable();
    v106 = v47;
    v107 = v48;
    swift_getWitnessTable();
    v49 = v90;
    sub_23BA82E14();
    sub_23BA6EA10(&v112);

    sub_23B9EA92C(&v113, &qword_27E19B148);
    v46(v43, v4);
    v46(v45, v4);
  }

  else
  {
    v78 = v20;
    v88 = v4;
    v50 = v97;
    v51 = v30[*(swift_getTupleTypeMetadata2() + 48)];
    v52 = v21[4];
    v53 = v96;
    v52(v96, v30, v50);
    v87 = v21;
    v21[2](v24, v53, v50);
    v86 = (v83 + 8);
    if (v51 == 1)
    {
      v54 = v79;
      sub_23BA6CA58(v24, v97, v79);
      v55 = v95;
      v56 = swift_getWitnessTable();
      v57 = v78;
      sub_23B9D2D88(v54, v55, v56);
      v58 = *(v80 + 8);
      v58(v54, v55);
      sub_23B9D2D88(v57, v55, v56);
      v59 = swift_getWitnessTable();
      v60 = v85;
      sub_23BA82D64();
      v98 = v56;
      v99 = v59;
      v61 = v89;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v49 = v90;
      sub_23BA82D64();
      (*v86)(v60, v61);
      v58(v54, v55);
      v58(v78, v55);
    }

    else
    {
      v62 = v81;
      v52(v81, v24, v97);
      v63 = v93;
      v64 = swift_getWitnessTable();
      v65 = v84;
      sub_23B9D2D88(v62, v63, v64);
      v66 = *(v82 + 8);
      v66(v62, v63);
      sub_23B9D2D88(v65, v63, v64);
      v67 = swift_getWitnessTable();
      v68 = v85;
      sub_23BA82E14();
      v100 = v67;
      v101 = v64;
      v69 = v89;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v49 = v90;
      sub_23BA82D64();
      (*v86)(v68, v69);
      v66(v62, v63);
      v66(v84, v63);
    }

    v21 = v87;
  }

  (v21[1])(v96, v97);
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v104 = v70;
  v105 = v71;
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v102 = v72;
  v103 = v73;
  v74 = v92;
  v75 = swift_getWitnessTable();
  sub_23B9D2D88(v49, v74, v75);
  return (*(v91 + 8))(v49, v74);
}

uint64_t sub_23BA6CA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v4 = a3 + *(type metadata accessor for VerticalPickerOptionStack() + 36);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

__n128 sub_23BA6CAE8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for PickerOptionPages();
  *(a5 + *(v8 + 36)) = a2;
  v9 = a5 + *(v8 + 40);
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  return result;
}

uint64_t sub_23BA6CB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = *(a1 + 24);
  v75 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v74 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = v63 - v6;
  v8 = *(v7 + 16);
  sub_23BBDA358();
  v81 = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v92 = v8;
  v93 = v3;
  v94 = v81;
  v95 = v10;
  v96 = v9;
  v70 = v9;
  type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView.HorizontalContent();
  sub_23BBDA358();
  swift_getTupleTypeMetadata3();
  v11 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v66 = v11;
  v65 = WitnessTable;
  v13 = sub_23BBDBFE8();
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v67 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = v63 - v16;
  v71 = v8;
  sub_23BBDA358();
  sub_23BBDC078();
  sub_23BBDA358();
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v17 = sub_23BBDC078();
  v18 = v13;
  v19 = sub_23BBDACE8();
  v77 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v76 = v63 - v20;
  v64 = *(v17 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v69 = v63 - v25;
  v79 = sub_23BBDACE8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v29 = v63 - v28;
  v30 = *(v27 + *(a1 + 76));
  if (v30 == 2)
  {
    v31 = v73;
    sub_23B9D2D88(v27 + *(a1 + 68), v3, v10);
    v32 = v74;
    sub_23B9D2D88(v31, v3, v10);
    v33 = swift_getWitnessTable();
    v34 = swift_getWitnessTable();
    v90 = v33;
    v91 = v34;
    swift_getWitnessTable();
    sub_23BA82E14();
    v35 = *(v75 + 8);
    v35(v32, v3);
    v35(v31, v3);
  }

  else
  {
    v73 = v17;
    v74 = v29;
    v75 = v19;
    v36 = v18;
    v63[1] = v3;
    if (v30)
    {
      MEMORY[0x28223BE20](v26);
      *&v37 = v71;
      *(&v37 + 1) = v3;
      v38 = v81;
      *&v63[-8] = v37;
      *&v63[-6] = v38;
      v39 = v70;
      v63[-4] = v10;
      v63[-3] = v39;
      v63[-2] = v40;
      sub_23B9BE15C();
      sub_23BBDC068();
      v41 = v73;
      v42 = swift_getWitnessTable();
      v43 = v69;
      sub_23B9D2D88(v23, v41, v42);
      v44 = *(v64 + 8);
      v44(v23, v41);
      sub_23B9D2D88(v43, v41, v42);
      v45 = swift_getWitnessTable();
      v46 = v76;
      sub_23BA82D64();
      v82 = v42;
      v83 = v45;
      v47 = v75;
      swift_getWitnessTable();
      v29 = v74;
      sub_23BA82D64();
      (*(v77 + 8))(v46, v47);
      v44(v23, v41);
      v44(v69, v41);
    }

    else
    {
      if (qword_27E197728 != -1)
      {
        v26 = swift_once();
      }

      MEMORY[0x28223BE20](v26);
      v63[-8] = v71;
      v63[-7] = v48;
      *&v63[-6] = v81;
      v49 = v70;
      v63[-4] = v10;
      v63[-3] = v49;
      v63[-2] = v50;
      sub_23BBDA9D8();
      v51 = v67;
      sub_23BBDBFD8();
      v52 = swift_getWitnessTable();
      v53 = v72;
      sub_23B9D2D88(v51, v36, v52);
      v54 = *(v68 + 8);
      v54(v51, v36);
      sub_23B9D2D88(v53, v36, v52);
      v55 = swift_getWitnessTable();
      v56 = v76;
      sub_23BA82E14();
      v84 = v55;
      v85 = v52;
      v57 = v75;
      swift_getWitnessTable();
      v29 = v74;
      sub_23BA82D64();
      (*(v77 + 8))(v56, v57);
      v54(v51, v36);
      v54(v72, v36);
    }
  }

  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v88 = v58;
  v89 = v59;
  v86 = swift_getWitnessTable();
  v87 = v10;
  v60 = v79;
  v61 = swift_getWitnessTable();
  sub_23B9D2D88(v29, v60, v61);
  return (*(v78 + 8))(v29, v60);
}

uint64_t sub_23BA6D648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X8>)
{
  v71 = a7;
  v77 = a8;
  v69 = a4;
  v76 = sub_23BBDA358();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v58 - v15;
  v63 = a3;
  v67 = a6;
  v79 = sub_23BBDC078();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v58 - v19;
  v20 = sub_23BBDA358();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v58 - v26;
  v68 = a1;
  MEMORY[0x23EEB43C0](v25);
  v28 = sub_23BA6F118();
  v93 = a5;
  v94 = v28;
  WitnessTable = swift_getWitnessTable();
  v80 = v27;
  v62 = WitnessTable;
  sub_23B9D2D88(v23, v20, WitnessTable);
  v64 = v21;
  v30 = *(v21 + 8);
  v82 = v23;
  v70 = v20;
  v66 = v21 + 8;
  v65 = v30;
  v31 = v30(v23, v20);
  if (qword_27E197728 != -1)
  {
    v31 = swift_once();
  }

  MEMORY[0x28223BE20](v31);
  v32 = v63;
  *(&v58 - 8) = a2;
  *(&v58 - 7) = v32;
  v33 = v69;
  *(&v58 - 6) = v69;
  *(&v58 - 5) = a5;
  v58 = a2;
  v34 = v67;
  v35 = v71;
  *(&v58 - 4) = v67;
  *(&v58 - 3) = v35;
  *(&v58 - 2) = v68;
  sub_23B9BE15C();
  sub_23BBDC068();
  v36 = v79;
  v59 = swift_getWitnessTable();
  v37 = v81;
  sub_23B9D2D88(v17, v36, v59);
  v38 = v17;
  v78 = v17;
  v39 = v72;
  v40 = *(v72 + 8);
  v60 = v72 + 8;
  v61 = v40;
  v40(v38, v36);
  v87 = v58;
  v88 = v32;
  v89 = v33;
  v90 = a5;
  v91 = v34;
  v92 = v35;
  type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView();
  v41 = v73;
  MEMORY[0x23EEB43C0]();
  v42 = sub_23BA6F1B8();
  v86[3] = v35;
  v86[4] = v42;
  v43 = v76;
  v44 = swift_getWitnessTable();
  v45 = v74;
  sub_23B9D2D88(v41, v43, v44);
  v46 = v75;
  v47 = v37;
  v71 = *(v75 + 8);
  v71(v41, v43);
  v48 = v82;
  v49 = v70;
  (*(v64 + 16))(v82, v80, v70);
  v87 = v48;
  v50 = v78;
  v51 = v47;
  v52 = v79;
  (*(v39 + 16))(v78, v51, v79);
  v88 = v50;
  (*(v46 + 16))(v41, v45, v43);
  v89 = v41;
  v86[0] = v49;
  v86[1] = v52;
  v86[2] = v43;
  v83 = v62;
  v84 = v59;
  v85 = v44;
  sub_23BB6739C(&v87, 3, v86);
  v53 = v71;
  v71(v45, v43);
  v54 = v52;
  v55 = v61;
  v61(v81, v52);
  v56 = v65;
  v65(v80, v49);
  v53(v41, v43);
  v55(v78, v54);
  return v56(v82, v49);
}

uint64_t sub_23BA6DCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v18 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView();
  sub_23B9D2D88(a1 + *(v18 + 68), a3, a6);
  sub_23B9D2D88(v11, a3, a6);
  return (*(v9 + 8))(v11, a3);
}

uint64_t sub_23BA6DDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a7;
  v60 = a6;
  v72 = a8;
  v70 = sub_23BBDA358();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = v55 - v17;
  v64 = *(a3 - 8);
  MEMORY[0x28223BE20](v18);
  v62 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v74 = type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView.HorizontalContent();
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v76 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = v55 - v22;
  v23 = sub_23BBDA358();
  v58 = *(v23 - 8);
  v24 = v58;
  MEMORY[0x28223BE20](v23);
  v26 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v75 = v55 - v29;
  MEMORY[0x23EEB43C0](v28);
  v56 = sub_23BA6F20C();
  v80[5] = a5;
  v80[6] = v56;
  v55[1] = MEMORY[0x277CDFAD8];
  v57 = v23;
  WitnessTable = swift_getWitnessTable();
  v73 = v26;
  sub_23B9D2D88(v26, v23, WitnessTable);
  v30 = *(v24 + 8);
  v66 = v24 + 8;
  v67 = v30;
  v30(v26, v23);
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v31 = v59;
  v85 = v60;
  v86 = v59;
  v32 = a1 + *(type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView() + 68);
  v33 = v62;
  (*(v64 + 16))(v62, v32, a3);
  v34 = v76;
  v35 = a4;
  sub_23BA6E4A8(v33, a3, v76);
  v36 = v74;
  v62 = swift_getWitnessTable();
  v37 = v61;
  sub_23B9D2D88(v34, v36, v62);
  v38 = v65;
  v64 = *(v65 + 8);
  v39 = (v64)(v34, v36);
  v40 = v68;
  MEMORY[0x23EEB43C0](v39, v35, &type metadata for HStackSectionAccessoryStyle, v31);
  v80[3] = v31;
  v80[4] = v56;
  v41 = v70;
  v59 = swift_getWitnessTable();
  v42 = v69;
  sub_23B9D2D88(v40, v41, v59);
  v43 = v71;
  v60 = *(v71 + 8);
  v60(v40, v41);
  v44 = v73;
  v45 = v57;
  (*(v58 + 16))(v73, v75, v57);
  v81 = v44;
  v46 = *(v38 + 16);
  v47 = v76;
  v48 = v37;
  v49 = v37;
  v50 = v74;
  v46(v76, v49, v74);
  v82 = v47;
  (*(v43 + 16))(v40, v42, v41);
  v83 = v40;
  v80[0] = v45;
  v80[1] = v50;
  v80[2] = v41;
  v77 = WitnessTable;
  v78 = v62;
  v79 = v59;
  sub_23BB6739C(&v81, 3, v80);
  v51 = v60;
  v60(v42, v41);
  v52 = v64;
  (v64)(v48, v50);
  v53 = v67;
  v67(v75, v45);
  v51(v40, v41);
  v52(v76, v50);
  return v53(v73, v45);
}

uint64_t sub_23BA6E4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  v4 = a3 + *(type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView.HorizontalContent() + 68);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_23BA6E564(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 24);
  v6 = sub_23BBDA358();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = (v1 + *(a1 + 68));
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    sub_23BBDD5A8();
    v24 = v3;
    v15 = sub_23BBDB338();
    v25 = v1;
    v16 = v15;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B5C0(v14, 0);
    (*(v26 + 8))(v5, v24);
    LOBYTE(v14) = v30;
  }

  v17 = *(a1 + 48);
  v18 = sub_23BBDAB48();
  sub_23B9E72D4(3, 1, v18, v14 & 1, v27, v17, 0.0, 1.0);
  v19 = sub_23B9949E8();
  v28 = v17;
  v29 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v9, v6, WitnessTable);
  v21 = *(v7 + 8);
  v21(v9, v6);
  sub_23B9D2D88(v12, v6, WitnessTable);
  return (v21)(v12, v6);
}

uint64_t sub_23BA6E838()
{
  sub_23BA6F2B4();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BA6E9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19B148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA6EA64(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_23BBDB038();
  sub_23BBDA358();
  v19 = *(a1 + 24);
  v4 = v19;
  v20 = sub_23BA737CC();
  swift_getWitnessTable();
  v5 = sub_23BBDC078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  v16 = v3;
  v17 = v4;
  v18 = v1;
  sub_23B9BE15C();
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_23B9D2D88(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_23BA6EC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_23BBDA928();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v32 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDB038();
  v9 = sub_23BBDA358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v28[-v14];
  v16 = sub_23BBDB388();
  v17 = a1 + *(type metadata accessor for VerticalPickerOptionStack() + 36);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*(v17 + 9) != 1)
  {

    sub_23BBDD5A8();
    v31 = v10;
    v29 = v16;
    v20 = sub_23BBDB338();
    v30 = a2;
    v21 = v20;
    v10 = v31;
    sub_23BBD9978();

    a2 = v30;
    v22 = v32;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846DC(v18, v19, 0);
    v23 = v22;
    v16 = v29;
    (*(v33 + 8))(v23, v34);
    v18 = v38;
    LOBYTE(v19) = v39;
  }

  sub_23BB2FA54(v16, v18, v19 & 1, a2, a3);
  v24 = sub_23BA737CC();
  v36 = a3;
  v37 = v24;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v12, v9, WitnessTable);
  v26 = *(v10 + 8);
  v26(v12, v9);
  sub_23B9D2D88(v15, v9, WitnessTable);
  return (v26)(v15, v9);
}

uint64_t sub_23BA6EF54()
{
  v1 = v0;
  v2 = sub_23BBDAF68();
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  if ((*(v4 + 88))(v8, v2) == *MEMORY[0x277CE0560])
  {
    return 0x4056000000000000;
  }

  (*(v4 + 8))(v8, v2);
  return 0;
}

uint64_t sub_23BA6F070()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA6EF54();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_23BA6F0A0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA6EF54();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

unint64_t sub_23BA6F118()
{
  result = qword_27E19D3C8;
  if (!qword_27E19D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D3C8);
  }

  return result;
}

unint64_t sub_23BA6F1B8()
{
  result = qword_27E19D3D0;
  if (!qword_27E19D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D3D0);
  }

  return result;
}

unint64_t sub_23BA6F20C()
{
  result = qword_27E19D3D8;
  if (!qword_27E19D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D3D8);
  }

  return result;
}

uint64_t sub_23BA6F260()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA6E838();
  *v0 = result & 1;
  return result;
}

unint64_t sub_23BA6F2B4()
{
  result = qword_27E19D3E0[0];
  if (!qword_27E19D3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19D3E0);
  }

  return result;
}

uint64_t sub_23BA6F318()
{
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B160);
    result = swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BA6F3D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) + 41 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
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
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_23:
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
    goto LABEL_23;
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23BA6F510(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if ((v5 & 0xFFFFFFFFFFFFFFF8) + 41 <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
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
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_38:
        __break(1u);
        JUMPOUT(0x23BA6F6DCLL);
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_26;
      case 3:
        goto LABEL_38;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

void sub_23BA6F71C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BA0D5EC(319, &qword_27E19B140, &qword_27E19B148, &unk_23BBFE400, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BA6F7D8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
    v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 41;
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
        JUMPOUT(0x23BA6F924);
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

  v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_23BA6F938(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 41;
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
    bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 41);
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
        goto LABEL_43;
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
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA6FB28);
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
          v17 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v17 + 24) = 0;
            *(v17 + 32) = 0;
            *(v17 + 40) = 0;
            *(v17 + 8) = a2 & 0x7FFFFFFF;
            *(v17 + 16) = 0;
          }

          else
          {
            *(v17 + 16) = (a2 - 1);
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

void sub_23BA6FB50()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23BA0D5EC(319, &qword_27E197E30, &qword_27E197E38, &unk_23BBE4780, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BA6FC04(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
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
        v13 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *(a1 + v8);
        if (*(a1 + v8))
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA6FD54);
      case 4:
        v13 = *(a1 + v8);
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

  v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v17 > 1)
  {
    return (v17 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_23BA6FD68(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
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
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 10);
    if (v10 <= 3)
    {
      v16 = HIWORD(v15) + 1;
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
        goto LABEL_43;
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
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA6FF60);
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
          v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v17 + 8) = 0;
            *v17 = (a2 - 255);
          }

          else
          {
            *(v17 + 9) = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23BA6FF88()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BA70038(unsigned __int16 *a1, unsigned int a2, void *a3)
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
  v19 = *(*(v8 - 8) + 64);
  if (v15 <= 0xFD)
  {
    v20 = 253;
  }

  else
  {
    v20 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(*(v6 - 8) + 64) + v16;
  v22 = a2 - v20;
  if (a2 <= v20)
  {
    goto LABEL_31;
  }

  v23 = v19 + ((v17 + v18 + (v21 & ~v16)) & ~v18) + 1;
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_13;
  }

  v27 = ((v22 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v27))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_31;
      }

LABEL_13:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_31;
      }

LABEL_21:
      v28 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v28 = 0;
      }

      if (v19 + ((v17 + v18 + (v21 & ~v16)) & ~v18) == -1)
      {
        v30 = 0;
      }

      else
      {
        if (v23 <= 3)
        {
          v29 = v19 + ((v17 + v18 + (v21 & ~v16)) & ~v18) + 1;
        }

        else
        {
          v29 = 4;
        }

        switch(v29)
        {
          case 2:
            v30 = *a1;
            break;
          case 3:
            v30 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v30 = *a1;
            break;
          default:
            v30 = *a1;
            break;
        }
      }

      return v20 + (v30 | v28) + 1;
    }

    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_21;
    }
  }

LABEL_31:
  if (v9 == v20)
  {
    v11 = *(*(v6 - 8) + 84);
LABEL_37:

    return __swift_getEnumTagSinglePayload(a1, v11, v6);
  }

  a1 = ((a1 + v21) & ~v16);
  if (v11 == v20)
  {
    v6 = v7;
    goto LABEL_37;
  }

  a1 = ((a1 + v17 + v18) & ~v18);
  if (v14 == v20)
  {
    v11 = v14;
    v6 = v8;
    goto LABEL_37;
  }

  v31 = *(a1 + v19);
  v32 = v31 >= 2;
  v33 = v31 - 2;
  if (!v32)
  {
    v33 = -1;
  }

  if (v33 + 1 >= 2)
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

void sub_23BA702EC(char *a1, uint64_t a2, unsigned int a3, void *a4)
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

  if (v16 <= 0xFD)
  {
    v17 = 253;
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
  v23 = *(*(v10 - 8) + 64);
  v24 = v23 + v22 + 1;
  v25 = 8 * v24;
  v26 = a3 >= v17;
  v27 = a3 - v17;
  if (v27 != 0 && v26)
  {
    if (v24 <= 3)
    {
      v31 = ((v27 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v31))
      {
        v28 = 4;
      }

      else
      {
        if (v31 < 0x100)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v31 >= 2)
        {
          v28 = v32;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v24 < 4)
    {
      v30 = (v29 >> v25) + 1;
      if (v23 + v22 != -1)
      {
        v33 = v29 & ~(-1 << v25);
        bzero(a1, v23 + v22 + 1);
        if (v24 == 3)
        {
          *v6 = v33;
          v6[2] = BYTE2(v33);
        }

        else if (v24 == 2)
        {
          *v6 = v33;
        }

        else
        {
          *v6 = v29;
        }
      }
    }

    else
    {
      bzero(a1, v23 + v22 + 1);
      *v6 = v29;
      v30 = 1;
    }

    switch(v28)
    {
      case 1:
        v6[v24] = v30;
        return;
      case 2:
        *&v6[v24] = v30;
        return;
      case 3:
        goto LABEL_52;
      case 4:
        *&v6[v24] = v30;
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

      goto LABEL_33;
    case 2:
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_52:
      __break(1u);
      JUMPOUT(0x23BA70620);
    case 4:
      *&a1[v24] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 == v17)
      {
        goto LABEL_41;
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
          a1[v23] = a2 + 2;
          return;
        }

        v8 = v15;
        v7 = v10;
      }

LABEL_41:

      __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
      return;
  }
}

void sub_23BA70648()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23B9D2354();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BA706D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
        JUMPOUT(0x23BA7081CLL);
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

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 > 1)
  {
    return (v17 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_23BA70830(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
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
        goto LABEL_43;
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
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA70A24);
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
          v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v17 + 8) = 0;
            *v17 = (a2 - 255);
          }

          else
          {
            *(v17 + 8) = -a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

uint64_t sub_23BA70A7C()
{
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for VerticalPickerOptionStack();
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for HorizontalPickerOptionStack();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for PickerOptionPages();
  sub_23BBDACE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BA70BA4()
{
  sub_23BBDA358();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDC078();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  sub_23BBDA358();
  type metadata accessor for SubscriptionStorePickerLayoutInternal.SectionView.HorizontalContent();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA358();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFE8();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_17_1();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BA70DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for HorizontalPickerOptionStack.FlexibleContent();
  type metadata accessor for HorizontalPickerOptionStack.ScrollingContent();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v4 = sub_23BBD9DC8();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  sub_23BBDB038();
  v7 = sub_23BBDA358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_23BBDB348();
  v24 = v3;
  v25 = v2;
  v26 = v22;
  sub_23BBD9DB8();
  v14 = sub_23BBDB388();
  WitnessTable = swift_getWitnessTable();
  sub_23BB2FA54(v14, 0, 1, v4, WitnessTable);
  (*(v21 + 8))(v6, v4);
  v16 = sub_23BA737CC();
  v27 = WitnessTable;
  v28 = v16;
  v17 = swift_getWitnessTable();
  sub_23B9D2D88(v10, v7, v17);
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_23B9D2D88(v13, v7, v17);
  return (v18)(v13, v7);
}

uint64_t sub_23BA71098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v39 = a3;
  v5 = type metadata accessor for HorizontalPickerOptionStack.ScrollingContent();
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v31 - v9;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HorizontalPickerOptionStack.FlexibleContent();
  v32 = *(v14 - 8);
  v15 = v32;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v40 = &v31 - v20;
  v21 = *(v10 + 16);
  v21(v13, a1, a2, v19);
  v22 = *(v10 + 32);
  v22(v17, v13, a2);
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v17, v14, WitnessTable);
  v34 = *(v15 + 8);
  v34(v17, v14);
  (v21)(v13, v31, a2);
  v23 = v35;
  v22(v35, v13, a2);
  v24 = v37;
  v25 = swift_getWitnessTable();
  v26 = v36;
  sub_23B9D2D88(v23, v24, v25);
  v27 = v38;
  v28 = *(v38 + 8);
  v28(v23, v24);
  (*(v32 + 16))(v17, v40, v14);
  v44[0] = v17;
  (*(v27 + 16))(v23, v26, v24);
  v44[1] = v23;
  v43[0] = v14;
  v43[1] = v24;
  v41 = WitnessTable;
  v42 = v25;
  sub_23BB6739C(v44, 2, v43);
  v28(v26, v24);
  v29 = v34;
  v34(v40, v14);
  v28(v23, v24);
  return v29(v17, v14);
}

uint64_t sub_23BA7149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v33 = a2;
  v3 = sub_23BBDB148();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8B8);
  v27 = *(a1 + 16);
  sub_23B97B518(&qword_27E19D8C0, &qword_27E19D8B8);
  sub_23BBDA018();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8C8);
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  v24[1] = sub_23BBDC3D8();
  v5 = sub_23BBDBE28();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = sub_23BBDA358();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v24[0] = swift_getWitnessTable();
  v41 = v24[0];
  WitnessTable = swift_getWitnessTable();
  v40 = MEMORY[0x277CDFC48];
  v11 = swift_getWitnessTable();
  v37 = v8;
  v38 = v11;
  v24[2] = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  v19 = *(v28 + 24);
  v34 = v27;
  v35 = v19;
  v36 = v29;
  sub_23BBDBE18();
  sub_23BBDBC78();
  (*(v26 + 8))(v7, v5);
  v20 = v30;
  sub_23BBDB138();
  sub_23BBDB968();
  (*(v31 + 8))(v20, v32);
  (*(v25 + 8))(v10, v8);
  v37 = v8;
  v38 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v22 = *(v13 + 8);
  v22(v15, OpaqueTypeMetadata2);
  sub_23B9D2D88(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v22)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_23BA71990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v45 = sub_23BBDAF68();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8B8);
  sub_23B97B518(&qword_27E19D8C0, &qword_27E19D8B8);
  v10 = sub_23BBDA018();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8C8);
  v11 = sub_23BBDA358();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v42 = &v38 - v15;
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v16);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v38 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v55 = sub_23BA7147C();
  v56 = v23;
  v57 = v24 & 1;
  v49 = a2;
  v50 = a3;
  v51 = a1;
  sub_23B9A70B0();
  v40 = v22;
  sub_23B9D4D38(sub_23BA7467C, v48, MEMORY[0x277CDF570]);
  v54[4] = sub_23B97B518(&qword_27E19D8D0, &qword_27E19D8B8);
  v54[5] = a3;
  v25 = v10;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v22, v10, WitnessTable);
  v27 = v45;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0558], v45);
  v39 = WitnessTable;
  sub_23BB8DF88();
  (*(v7 + 8))(v9, v27);
  v28 = sub_23B97B518(&qword_27E19D8D8, &qword_27E19D8C8);
  v54[2] = WitnessTable;
  v54[3] = v28;
  v29 = v11;
  v30 = swift_getWitnessTable();
  v31 = v42;
  sub_23B9D2D88(v13, v11, v30);
  v32 = v44;
  v33 = *(v44 + 8);
  v33(v13, v11);
  v34 = v43;
  v35 = v41;
  (*(v43 + 16))(v41, v47, v25);
  v55 = v35;
  (*(v32 + 16))(v13, v31, v29);
  v56 = v13;
  v54[0] = v25;
  v54[1] = v29;
  v52 = v39;
  v53 = v30;
  sub_23BB6739C(&v55, 2, v54);
  v33(v31, v29);
  v36 = *(v34 + 8);
  v36(v47, v25);
  v36(v40, v25);
  v33(v13, v29);
  return (v36)(v35, v25);
}

uint64_t sub_23BA71EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88(v6, v9, v10);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_23BA71FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_23BBDB0F8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8B8);
  v35 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  sub_23BBDA358();
  sub_23B97B518(&qword_27E19D8C0, &qword_27E19D8B8);
  sub_23BBDA018();
  sub_23BBDA358();
  v5 = sub_23BBDA358();
  v6 = sub_23B97B518(&qword_27E19D8D0, &qword_27E19D8B8);
  v34 = *(a1 + 24);
  v7 = v34;
  v8 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v52 = v7;
  v53 = v8;
  WitnessTable = swift_getWitnessTable();
  v50 = v6;
  v51 = WitnessTable;
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x277CDFC48];
  v46 = swift_getWitnessTable();
  v47 = v8;
  v32 = v5;
  v31 = swift_getWitnessTable();
  v10 = sub_23BBD9B38();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = swift_getWitnessTable();
  v44 = v10;
  v45 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v29 - v15;
  v44 = v10;
  v45 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = OpaqueTypeMetadata2;
  v45 = OpaqueTypeConformance2;
  v29 = MEMORY[0x277CDE900];
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  sub_23BBDB348();
  v41 = v35;
  v42 = v34;
  v43 = v36;
  sub_23BA6AFDC();
  sub_23BBDB928();
  (*(v33 + 8))(v12, v10);
  v25 = v37;
  sub_23BBDAD38();
  sub_23BA6AFF4();
  sub_23BBDB8E8();
  (*(v38 + 8))(v25, v39);
  (*(v30 + 8))(v16, OpaqueTypeMetadata2);
  v44 = OpaqueTypeMetadata2;
  v45 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v21, v18, v26);
  v27 = *(v19 + 8);
  v27(v21, v18);
  sub_23B9D2D88(v24, v18, v26);
  return (v27)(v24, v18);
}

uint64_t sub_23BA725CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  sub_23BBDA358();
  sub_23B97B518(&qword_27E19D8C0, &qword_27E19D8B8);
  v7 = sub_23BBDA018();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = sub_23BBDA358();
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_23BBDA358();
  v33 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v30 = &v27 - v16;
  v47 = sub_23BA7147C();
  v48 = v17;
  v49 = v18 & 1;
  v36 = a2;
  v37 = a3;
  v38 = a1;
  sub_23B9A70B0();
  v28 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v45 = a3;
  v46 = v28;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D4D38(sub_23BA74694, v35, MEMORY[0x277CDF570]);
  v43 = sub_23B97B518(&qword_27E19D8D0, &qword_27E19D8B8);
  v44 = WitnessTable;
  v20 = swift_getWitnessTable();
  sub_23BBDBC78();
  (*(v31 + 8))(v9, v7);
  v41 = v20;
  v42 = MEMORY[0x277CDFC48];
  v21 = swift_getWitnessTable();
  v22 = v29;
  sub_23BB8DFFC();
  (*(v32 + 8))(v12, v10);
  v39 = v21;
  v40 = v28;
  v23 = swift_getWitnessTable();
  v24 = v30;
  sub_23B9D2D88(v22, v13, v23);
  v25 = *(v33 + 8);
  v25(v22, v13);
  sub_23B9D2D88(v24, v13, v23);
  return (v25)(v24, v13);
}

uint64_t sub_23BA72A78@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v3 = sub_23BBDA358();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v15 = 1;
  sub_23BBDB748();

  v10 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v14[1] = a1;
  v14[2] = v10;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v6, v3, WitnessTable);
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_23B9D2D88(v9, v3, WitnessTable);
  return (v12)(v9, v3);
}

__n128 sub_23BA72C60@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B160);
  sub_23BBDC118();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_23BA72CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = *(a1 + 16);
  v41 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148);
  v44 = *(a1 + 24);
  v8 = v44;
  v43 = sub_23BA73710();
  v57.n128_u64[0] = v3;
  v57.n128_u64[1] = v7;
  v58 = v8;
  v59 = v43;
  v9 = type metadata accessor for PageView();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0);
  v12 = sub_23BBDA358();
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1988A0);
  v14 = sub_23BBDA358();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v39 = &v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v16 = sub_23BBDA358();
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v40 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v42 = &v37 - v20;
  v21 = v46;
  v22 = v41;
  (*(v4 + 16))(v6, v46, v41, v19);
  KeyPath = swift_getKeyPath();
  LOBYTE(v21) = *(v21 + *(a1 + 36));
  sub_23BA72C60(&v57);
  sub_23B98A6D0(v6, KeyPath, v21, &v57, v22, v11);
  WitnessTable = swift_getWitnessTable();
  v25 = v38;
  sub_23B995910(1);
  (*(v45 + 8))(v11, v9);
  v26 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
  v55 = WitnessTable;
  v56 = v26;
  v27 = swift_getWitnessTable();
  v28 = v39;
  sub_23BAC6AC8(8);
  (*(v47 + 8))(v25, v12);
  v29 = sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
  v53 = v27;
  v54 = v29;
  v30 = swift_getWitnessTable();
  v31 = v40;
  sub_23BA50140();
  (*(v48 + 8))(v28, v14);
  v32 = sub_23B97B518(&qword_27E19A1D8, &qword_27E19A1E0);
  v51 = v30;
  v52 = v32;
  v33 = swift_getWitnessTable();
  v34 = v42;
  sub_23B9D2D88(v31, v16, v33);
  v35 = *(v49 + 8);
  v35(v31, v16);
  sub_23B9D2D88(v34, v16, v33);
  return (v35)(v34, v16);
}

uint64_t sub_23BA732C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDB578();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D6F0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D6F8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  LODWORD(a1) = sub_23BBDAEF8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D700);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_23BA7339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDB428();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D708);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D710) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  LODWORD(a1) = sub_23BBDAF28();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D718);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_23BA73470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D720);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_23BBDB438();
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D728);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  sub_23BBDB478();
  sub_23BA73874();
  sub_23BBDB6D8();
  sub_23B9EA92C(v6, &qword_27E19D720);
  LODWORD(v4) = sub_23BBDAEF8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19D740);
  *(a2 + *(result + 36)) = v4;
  return result;
}

unint64_t sub_23BA73710()
{
  result = qword_27E19D6E8;
  if (!qword_27E19D6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148);
    sub_23B9792E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D6E8);
  }

  return result;
}

uint64_t sub_23BA7379C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23B9791E0();
  *v0 = result;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3 & 1;
  return result;
}

unint64_t sub_23BA737CC()
{
  result = qword_27E1985A8;
  if (!qword_27E1985A8)
  {
    sub_23BBDB038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985A8);
  }

  return result;
}

unint64_t sub_23BA73874()
{
  result = qword_27E19D730;
  if (!qword_27E19D730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D720);
    sub_23B97B518(&qword_27E19D738, &qword_27E19D728);
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D730);
  }

  return result;
}

uint64_t sub_23BA73960(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23BA73AAC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
      JUMPOUT(0x23BA73CB0);
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

uint64_t sub_23BA73CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19B148);
  sub_23BA73710();
  type metadata accessor for PageView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1988A0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v0, &qword_27E19A1E0);
  return swift_getWitnessTable();
}

uint64_t sub_23BA73EAC()
{
  sub_23BBDB038();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BA737CC();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  return swift_getWitnessTable();
}

uint64_t sub_23BA73F14()
{
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for HorizontalPickerOptionStack.FlexibleContent();
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for HorizontalPickerOptionStack.ScrollingContent();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_7_15();
  sub_23BBD9DC8();
  sub_23BBDB038();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23BA737CC();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

unint64_t sub_23BA73FDC()
{
  result = qword_27E19D848;
  if (!qword_27E19D848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D850);
    sub_23BA74094(&qword_27E19D858, &qword_27E19D700, &unk_23BBF2B58, sub_23BA74134);
    sub_23BA74218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D848);
  }

  return result;
}

uint64_t sub_23BA74094(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8);
    OUTLINED_FUNCTION_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BA74134()
{
  result = qword_27E19D860;
  if (!qword_27E19D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D6F8);
    sub_23B97B518(&qword_27E19D868, &qword_27E19D6F0);
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D860);
  }

  return result;
}

unint64_t sub_23BA74218()
{
  result = qword_27E19D870;
  if (!qword_27E19D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D870);
  }

  return result;
}

unint64_t sub_23BA74270()
{
  result = qword_27E19D878;
  if (!qword_27E19D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D880);
    sub_23BA74094(&qword_27E19D888, &qword_27E19D718, &unk_23BBF2B70, sub_23BA74328);
    sub_23BA74218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D878);
  }

  return result;
}

unint64_t sub_23BA74328()
{
  result = qword_27E19D890;
  if (!qword_27E19D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D710);
    sub_23B97B518(&qword_27E19D898, &qword_27E19D708);
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D890);
  }

  return result;
}

unint64_t sub_23BA74410()
{
  result = qword_27E19D8A0;
  if (!qword_27E19D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8A8);
    sub_23BA7449C();
    sub_23BA74218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D8A0);
  }

  return result;
}

unint64_t sub_23BA7449C()
{
  result = qword_27E19D8B0;
  if (!qword_27E19D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19D740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D720);
    sub_23BA73874();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D8B0);
  }

  return result;
}

uint64_t sub_23BA74590()
{
  sub_23BBDA358();
  sub_23B9949E8();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_23BA746A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8B8);
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v0, &qword_27E19D8B8);
  OUTLINED_FUNCTION_17_1();
  sub_23BBDA018();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8C8);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  OUTLINED_FUNCTION_7_15();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_18_1();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_7_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23BA747D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  OUTLINED_FUNCTION_18_1();
  sub_23BBDA358();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v0, &qword_27E19D8B8);
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA018();
  sub_23BBDA358();
  OUTLINED_FUNCTION_15_4();
  sub_23BBDA358();
  sub_23B97B518(&qword_27E19D8D0, &qword_27E19D8B8);
  OUTLINED_FUNCTION_1_15();
  sub_23B97B518(v1, &qword_27E19A1E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBD9B38();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return swift_getWitnessTable();
}

uint64_t View.preferredSubscriptionOffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for PreferredSubscriptionOfferModifier);
}

uint64_t sub_23BA74A8C()
{
  sub_23BBDA358();
  sub_23BA74AF0();
  return swift_getWitnessTable();
}

unint64_t sub_23BA74AF0()
{
  result = qword_27E19D8E8;
  if (!qword_27E19D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D8E8);
  }

  return result;
}

uint64_t sub_23BA74B70@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23BBDC318();
  v12 = v11;

  if ((a2 & 1) == 0)
  {
    sub_23BBDD5A8();
    v14 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    result = (*(v7 + 8))(v9, v6);
    a1 = v17[1];
  }

  if (a1)
  {

    v15 = sub_23BBDA388();
    v16 = sub_23BBDB398();
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *a3 = sub_23BA74D34;
  *(a3 + 8) = 0;
  *(a3 + 16) = sub_23BA74E14;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  return result;
}

uint64_t sub_23BA74D34@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23BA74E14@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_23BA74F04()
{
  result = qword_27E19D8F0;
  if (!qword_27E19D8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D8F8);
    sub_23B97B518(&qword_27E19A9F8, &qword_27E19AA00);
    sub_23B97B518(&qword_27E19D900, &qword_27E19D908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D8F0);
  }

  return result;
}

uint64_t sub_23BA75028(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_23BBDB468();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_23BBDB4C8();
  result = sub_23BA752C4(v5);
  *a2 = v7;
  return result;
}

double sub_23BA750EC(uint64_t a1)
{
  v2 = sub_23BBDB588();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE0A50] || v7 == *MEMORY[0x277CE0A70] || v7 == *MEMORY[0x277CE0A80] || v7 == *MEMORY[0x277CE0A90] || v7 == *MEMORY[0x277CE0AC0])
  {
    sub_23BBDB478();
    return v12;
  }

  if (v7 == *MEMORY[0x277CE0A58] || v7 == *MEMORY[0x277CE0A68] || v7 == *MEMORY[0x277CE0A98] || v7 == *MEMORY[0x277CE0AB0] || v7 == *MEMORY[0x277CE0AA0] || v7 == *MEMORY[0x277CE0AA8])
  {
    sub_23BBDB4A8();
    return v12;
  }

  sub_23BBDB478();
  v19 = v18;
  (*(v3 + 8))(v6, v2);
  return v19;
}

uint64_t sub_23BA752C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StoreKitFontViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for StoreKitFontViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_23BA75470(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      sub_23BBDAF28();
      break;
    default:
      sub_23BBDAEF8();
      break;
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BA75520(__int16 a1)
{
  v2 = sub_23BBDB518();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 - 1 < 2)
  {
    if ((a1 & 0x100) != 0)
    {
      sub_23BBDB438();
    }

    else
    {
      sub_23BBDB568();
    }

    sub_23BBDB498();
LABEL_9:
    v8 = sub_23BBDB508();

    return v8;
  }

  if (!a1)
  {
    if ((a1 & 0x100) == 0)
    {
      sub_23BBDB438();
      sub_23BBDB498();
      sub_23BBDB508();

      (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
      v6 = sub_23BBDB548();

      (*(v3 + 8))(v5, v2);
      return v6;
    }

    sub_23BBDB4F8();
    sub_23BBDB4A8();
    goto LABEL_9;
  }

  if (qword_27E197770 != -1)
  {
    swift_once();
  }

  sub_23BBDB498();

  return sub_23BBDB508();
}

uint64_t sub_23BA7570C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_23BA75470(a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D910);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D918) + 36)) = v6;
  v8 = sub_23BA75520(a2 & 0x1FF);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D920);
  v11 = (a3 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v8;
  return result;
}

uint64_t sub_23BA757F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23BA7570C(a1, v3 | *v2, a2);
}

unint64_t sub_23BA75834()
{
  result = qword_27E19D928;
  if (!qword_27E19D928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D920);
    sub_23BA758EC();
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D928);
  }

  return result;
}

unint64_t sub_23BA758EC()
{
  result = qword_27E19D930;
  if (!qword_27E19D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D918);
    sub_23B97B518(&qword_27E19D938, &qword_27E19D910);
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D930);
  }

  return result;
}

uint64_t sub_23BA759D0()
{
  sub_23BA75A48();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23BA75A48()
{
  result = qword_27E19D940;
  if (!qword_27E19D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D940);
  }

  return result;
}

uint64_t sub_23BA75AAC()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t SubscriptionStoreView.init<A>(groupID:visibleRelationships:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(double)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22[1] = a6;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_30();
  v13 = type metadata accessor for SubscriptionStoreContentView();
  OUTLINED_FUNCTION_1_4();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v22 - v16);
  v18 = *a3;
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v18;
  v23 = 1;
  a4(v15);
  sub_23BA83250(v6, a5, v17);
  OUTLINED_FUNCTION_0_30();
  swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_3_20();
  return sub_23BA3B958(v19, v17, 1, v13, v20);
}

uint64_t SubscriptionStoreView.init<A, B>(subscriptions:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22[1] = a6;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_30();
  v13 = type metadata accessor for SubscriptionStoreContentView();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  v17 = sub_23BA52E70(a1, 0, 1, a4, a5);
  v22[3] = 0;
  v22[4] = 0;
  v22[2] = v17;
  v23 = 2;
  a2();
  sub_23BA83250(v6, a3, v16);
  OUTLINED_FUNCTION_0_30();
  swift_getWitnessTable();
  v18 = OUTLINED_FUNCTION_3_20();
  sub_23BA3B958(v18, v16, 1, v13, v19);
  OUTLINED_FUNCTION_1_4();
  return (*(v20 + 8))(a1, a4);
}

uint64_t SubscriptionStoreView.init<A, B>(productIDs:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a3;
  v24 = a2;
  v25 = a6;
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_30();
  v11 = type metadata accessor for SubscriptionStoreContentView();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v12);
  v14 = (v23 - v13);
  v15 = *(a5 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  (*(v15 + 16))(v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v17);
  v19 = sub_23BBDD2B8();
  v27 = 0;
  v28 = 0;
  v26 = v19;
  v29 = 0;
  v24();
  sub_23BA83250(v6, a4, v14);
  OUTLINED_FUNCTION_0_30();
  swift_getWitnessTable();
  v20 = OUTLINED_FUNCTION_3_20();
  sub_23BA3B958(v20, v14, 1, v11, v21);
  return (*(v15 + 8))(a1, a5);
}

uint64_t sub_23BA75FE8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for AutoEnablingScrollView();
  return a3();
}

uint64_t sub_23BA76040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_23BBDAD48();
  OUTLINED_FUNCTION_7();
  v41 = v4;
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = sub_23BBD9B38();
  OUTLINED_FUNCTION_7();
  v38 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  OUTLINED_FUNCTION_2_22();
  WitnessTable = swift_getWitnessTable();
  v51[0] = v9;
  v51[1] = WitnessTable;
  v35 = WitnessTable;
  v36 = MEMORY[0x277CDEB58];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v39 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v40 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v34 - v26;
  v44 = v7;
  v45 = v8;
  v46 = v37;
  sub_23BBD9B48();
  sub_23BBDAD38();
  v28 = v35;
  sub_23BBDB998();
  (*(v41 + 8))(v6, v42);
  (*(v38 + 8))(v13, v9);
  v49 = 1;
  sub_23BBDBF58();
  v49 = v9;
  v50 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EEB43C0](v51, OpaqueTypeMetadata2, &type metadata for StoreViewColumnsTrackingModifier, OpaqueTypeConformance2);

  (*(v39 + 8))(v19, OpaqueTypeMetadata2);
  v30 = sub_23BA77004();
  v47 = OpaqueTypeConformance2;
  v48 = v30;
  OUTLINED_FUNCTION_0();
  v31 = swift_getWitnessTable();
  sub_23B9D2D88(v24, v20, v31);
  v32 = *(v40 + 8);
  v32(v24, v20);
  sub_23B9D2D88(v27, v20, v31);
  return (v32)(v27, v20);
}

uint64_t sub_23BA76428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AutoEnablingScrollView();
  sub_23B9D2D88(a1 + *(v9 + 40), a2, a3);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23BA76524(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_23BA7667C();

  sub_23BBDB918();
}

uint64_t sub_23BA76618()
{

  return swift_deallocObject();
}

unint64_t sub_23BA7667C()
{
  result = qword_27E19D948;
  if (!qword_27E19D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D948);
  }

  return result;
}

uint64_t sub_23BA7670C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D950);
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D958) + 36));
  *v10 = sub_23BA76844;
  v10[1] = 0;
  v10[2] = sub_23BA76980;
  v10[3] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960);
  sub_23BBDBF68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19D968);
  *(a4 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_23BA76844@<X0>(void *a1@<X8>)
{
  result = sub_23BBD9E68();
  *a1 = v3;
  return result;
}

double *sub_23BA76870(double *result)
{
  v1 = *result;
  if (*result <= 400.0)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D960);
    return sub_23BBDBF78();
  }

  else
  {
    v2 = 0;
    v3 = 0.0;
    while (1)
    {
      v3 = v3 + 400.0;
      if (v3 <= v1 && __OFADD__(v2++, 1))
      {
        break;
      }

      if (v3 >= v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_23BA76914(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_23BA76988()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA76A10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v10 = ((v7 + 2) & ~v7) + *(*(v4 - 8) + 64);
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
        return __swift_getEnumTagSinglePayload((a1 + v7 + 2) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      v17 = v16 >= 2;
      v18 = (v16 + 2147483646) & 0x7FFFFFFF;
      if (v17)
      {
        return (v18 + 1);
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

void sub_23BA76BA8(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((v10 + 2) & ~v10) + *(*(v6 - 8) + 64);
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
        goto LABEL_42;
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
LABEL_42:
      __break(1u);
      JUMPOUT(0x23BA76DECLL);
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
          v21 = &a1[v10 + 2] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else
        {
          a1[1] = a2 + 1;
        }
      }

      return;
  }
}

unint64_t sub_23BA76E18()
{
  result = qword_27E19D9F0;
  if (!qword_27E19D9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19D968);
    sub_23BA76ED0();
    sub_23B97B518(&qword_27E19DA18, &qword_27E19DA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D9F0);
  }

  return result;
}

unint64_t sub_23BA76ED0()
{
  result = qword_27E19D9F8;
  if (!qword_27E19D9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D958);
    sub_23B97B518(&qword_27E19DA00, &qword_27E19D950);
    sub_23B97B518(&qword_27E19DA08, &qword_27E19DA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D9F8);
  }

  return result;
}

unint64_t sub_23BA77004()
{
  result = qword_27E19DA28;
  if (!qword_27E19DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DA28);
  }

  return result;
}

uint64_t sub_23BA77058()
{
  sub_23BBD9B38();
  OUTLINED_FUNCTION_2_22();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23BA77004();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for InAppPurchaseIconFrameViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for InAppPurchaseIconFrameViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23BA771F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DA30);
  OUTLINED_FUNCTION_4_1();
  (*(v10 + 16))(a5, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DA38);
  v12 = v11[11];
  v13 = *MEMORY[0x277CE0118];
  sub_23BBDAA88();
  OUTLINED_FUNCTION_4_1();
  result = (*(v14 + 104))(a5 + v12, v13);
  *(a5 + v11[9]) = a2;
  v16 = (a5 + v11[10]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_23BA772F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v3 + 32))(v7 + v6, v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AC0);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB00);
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB08);
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB10);
  sub_23BBDA358();
  v9 = sub_23BA7AF28();
  v39 = v8;
  v40 = v9;
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x277CDF678];
  v10 = swift_getWitnessTable();
  v11 = sub_23B97B518(&qword_27E198B70, &qword_27E198AC0);
  v35 = v10;
  v36 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_23B97B518(&qword_27E19DB20, &qword_27E19DB00);
  v33 = v12;
  v34 = v13;
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x277CDF918];
  v14 = swift_getWitnessTable();
  v15 = sub_23B97B518(&qword_27E19DB28, &qword_27E19DB08);
  v29 = v14;
  v30 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_23B97B518(&qword_27E19DB30, &qword_27E19DB10);
  v27 = v16;
  v28 = v17;
  swift_getWitnessTable();
  v44 = sub_23BBDA068();
  v45 = v18;
  LOBYTE(v25[0]) = 1;
  sub_23BBDA078();
  v19 = swift_getWitnessTable();
  sub_23BA7AF7C();
  sub_23BBDB6F8();

  v25[0] = v41;
  v25[1] = v42;
  v26 = v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB40);
  v20 = sub_23BBDA358();
  v21 = sub_23B97B518(&qword_27E19DB48, &qword_27E19DB40);
  v24[2] = v19;
  v24[3] = v21;
  v22 = swift_getWitnessTable();
  sub_23B9D2D88(v25, v20, v22);

  v41 = v44;
  v42 = v45;
  v43 = v46;
  sub_23B9D2D88(&v41, v20, v22);
}

uint64_t sub_23BA77800@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v83 = a4;
  v67 = sub_23BBDA468();
  MEMORY[0x28223BE20](v67);
  v65 = (v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_23BBDA358();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v61 - v9;
  v63 = sub_23BBDA358();
  v69 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v87 = v61 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AC0);
  v66 = sub_23BBDA358();
  v74 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = v61 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB00);
  v71 = sub_23BBDA358();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v61 - v13;
  v72 = sub_23BBDA358();
  v78 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = v61 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB08);
  v77 = sub_23BBDA358();
  v81 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v73 = v61 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB10);
  v80 = sub_23BBDA358();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = v61 - v18;
  sub_23BBD9E68();
  v20 = v19;
  v61[0] = a2;
  v21 = type metadata accessor for InAppPurchaseIconFrame();
  v22 = 38.0;
  if (*(a1 + *(v21 + 36)))
  {
    v22 = 42.0;
  }

  v23 = v20 / v22;
  v114[0] = v20 / v22 * 4.0;
  v114[1] = v114[0];
  v114[2] = v114[0];
  v114[3] = v114[0];
  v115 = 0;
  v85 = a1;
  v86 = a3;
  sub_23BB6CEC8(v114, a2, a3);
  sub_23BBD9E68();
  sub_23BBD9E68();
  v61[1] = v21;
  v24 = sub_23BA7AF28();
  v112 = a3;
  v113 = v24;
  v25 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBB08();
  (*(v64 + 8))(v10, v8);
  v27 = *(v21 + 44);
  v28 = *(v67 + 20);
  v29 = sub_23BBDAA88();
  v30 = v65;
  v31 = v85;
  (*(*(v29 - 8) + 16))(v65 + v28, v85 + v27, v29);
  *v30 = v23 * 3.0;
  v30[1] = v23 * 3.0;
  v32 = v30;
  v110 = WitnessTable;
  v111 = MEMORY[0x277CDF678];
  v84 = v25;
  v33 = v63;
  v34 = swift_getWitnessTable();
  sub_23BA7AD2C(&qword_27E198168, MEMORY[0x277CDFC08]);
  v35 = v62;
  v36 = v87;
  sub_23BBDBC68();
  sub_23BA7C06C(v32, MEMORY[0x277CDFC08]);
  (*(v69 + 8))(v36, v33);
  v37 = v61[0];
  v96 = v61[0];
  v97 = v86;
  v98 = v31;
  v99 = v23;
  type metadata accessor for InAppPurchaseIconFrameOverlay(0);
  v38 = sub_23B97B518(&qword_27E198B70, &qword_27E198AC0);
  v108 = v34;
  v109 = v38;
  v39 = v66;
  v40 = swift_getWitnessTable();
  sub_23BA7AD2C(&qword_27E19DB50, type metadata accessor for InAppPurchaseIconFrameOverlay);
  sub_23B9C2924();
  v41 = v68;
  sub_23BBDBB88();
  (*(v74 + 8))(v35, v39);
  v42 = v85;
  v87 = MEMORY[0x277CDFC88];
  v43 = sub_23B97B518(&qword_27E19DB20, &qword_27E19DB00);
  v106 = v40;
  v107 = v43;
  v44 = v71;
  v45 = swift_getWitnessTable();
  v46 = v70;
  sub_23BBDBBA8();
  (v75[1])(v41, v44);
  v75 = v61;
  v47 = v86;
  v92 = v37;
  v93 = v86;
  v94 = v42;
  v95 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DB58);
  v104 = v45;
  v105 = MEMORY[0x277CDF918];
  v48 = v72;
  v49 = swift_getWitnessTable();
  sub_23BA7B010();
  sub_23BBDC318();
  v50 = v73;
  sub_23BBDBAD8();
  (*(v78 + 8))(v46, v48);
  sub_23BBDC2E8();
  v88 = v37;
  v89 = v47;
  v90 = v42;
  v91 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DBA8);
  v51 = sub_23B97B518(&qword_27E19DB28, &qword_27E19DB08);
  v102 = v49;
  v103 = v51;
  v52 = v77;
  v53 = swift_getWitnessTable();
  sub_23BA7B2EC();
  v54 = v76;
  sub_23BBDBB88();
  (*(v81 + 8))(v50, v52);
  v55 = sub_23B97B518(&qword_27E19DB30, &qword_27E19DB10);
  v100 = v53;
  v101 = v55;
  v56 = v80;
  v57 = swift_getWitnessTable();
  v58 = v79;
  sub_23B9D2D88(v54, v56, v57);
  v59 = *(v82 + 8);
  v59(v54, v56);
  sub_23B9D2D88(v58, v56, v57);
  return (v59)(v58, v56);
}

uint64_t sub_23BA7830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for InAppPurchaseIconFrame();
  v7 = *(a1 + *(v6 + 36));
  v8 = *(v6 + 44);
  v9 = type metadata accessor for InAppPurchaseIconFrameOverlay(0);
  v10 = v9[6];
  v11 = sub_23BBDAA88();
  (*(*(v11 - 8) + 16))(a2 + v10, a1 + v8, v11);
  *a2 = v7;
  *(a2 + 8) = a3;
  v12 = a2 + v9[7];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v9[8];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_23BA783EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DBD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DBE0);
  MEMORY[0x28223BE20](v8);
  v10 = (v24 - v9);
  if (*(a1 + *(type metadata accessor for InAppPurchaseIconFrame() + 36)) == 1)
  {
    v11 = sub_23BBDC2E8();
    v13 = v12;
    sub_23BA7881C(v28);
    memcpy(v29, v28, sizeof(v29));
    memcpy(__dst, v28, sizeof(__dst));
    sub_23B99FCE0(v29, &v27, &qword_27E19DBE8);
    sub_23B979910(__dst, &qword_27E19DBE8);
    *v10 = v11;
    v10[1] = v13;
    memcpy(v10 + 2, v29, 0x60uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DB70);
    sub_23BA7B0E0();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB98);
    v15 = sub_23BA7B224();
    v28[0] = v14;
    v28[1] = v15;
    swift_getOpaqueTypeConformance2();
    return sub_23BBDACD8();
  }

  else
  {
    v25 = v5;
    v26 = a2;
    v24[0] = sub_23BBDBD18();
    __dst[0] = v24[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D8E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BBE94D0;
    v18 = sub_23BBDB348();
    *(inited + 32) = v18;
    v19 = sub_23BBDB368();
    *(inited + 33) = v19;
    sub_23BBDB358();
    sub_23BBDB358();
    if (sub_23BBDB358() != v18)
    {
      sub_23BBDB358();
    }

    v24[1] = v8;

    sub_23BBDB358();
    v20 = v4;
    if (sub_23BBDB358() != v19)
    {
      sub_23BBDB358();
    }

    sub_23BBDC318();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DB98);
    v22 = sub_23BA7B224();
    sub_23BBDB9E8();

    v23 = v25;
    (*(v25 + 16))(v10, v7, v20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DB70);
    sub_23BA7B0E0();
    __dst[0] = v21;
    __dst[1] = v22;
    swift_getOpaqueTypeConformance2();
    sub_23BBDACD8();
    return (*(v23 + 8))(v7, v20);
  }
}

uint64_t sub_23BA7881C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23BBDBD38();
  type metadata accessor for InAppPurchaseIconFrame();
  sub_23BBDC318();
  sub_23BBD9DE8();
  *&v6[6] = v7;
  *&v6[22] = v8;
  *&v6[38] = v9;
  v3 = sub_23BBDBD18();
  __src[0] = 0x3FF0000000000000;
  LOWORD(__src[1]) = 0;
  *(&__src[1] + 2) = *v6;
  *(&__src[3] + 2) = *&v6[16];
  *(&__src[5] + 2) = *&v6[32];
  __src[7] = *(&v9 + 1);
  __src[8] = v3;
  __src[9] = 0x3FF0000000000000;
  *a1 = v2;
  a1[1] = 0;
  memcpy(a1 + 2, __src, 0x50uLL);
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = *v6;
  v14 = *&v6[16];
  *v15 = *&v6[32];
  *&v15[14] = *&v6[46];
  v16 = v3;
  v17 = 0x3FF0000000000000;

  sub_23B99FCE0(__src, v5, &qword_27E19DBF0);
  sub_23B979910(&v11, &qword_27E19DBF0);
}

void *sub_23BA78980@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + *(type metadata accessor for InAppPurchaseIconFrame() + 36)) == 1)
  {
    sub_23BB6F948(0, 0, __src, a3 * 12.0, a3 * 12.0);
    v12[0] = 0;
    sub_23BBDC318();
    sub_23BBD9DE8();
    *&v6[6] = v9;
    *&v6[22] = v10;
    *&v6[38] = v11;
    memcpy(__dst, __src, 0x60uLL);
    __dst[12] = 0x3FF0000000000000;
    LOWORD(__dst[13]) = 0;
    *(&__dst[13] + 2) = *v6;
    *(&__dst[15] + 2) = *&v6[16];
    *(&__dst[17] + 2) = *&v6[32];
    __dst[19] = *(&v11 + 1);
    nullsub_1(__dst);
    memcpy(v12, __dst, sizeof(v12));
  }

  else
  {
    sub_23BA7B488(v12);
  }

  return memcpy(a2, v12, 0xA0uLL);
}

uint64_t sub_23BA78AAC()
{
  result = MEMORY[0x23EEB2E70]();
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A948);
    sub_23B97B518(&qword_27E19A940, &qword_27E19A948);
    return sub_23BBD9DF8();
  }

  return result;
}

uint64_t sub_23BA78B44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BA78AAC();
  *a1 = result;
  return result;
}

uint64_t sub_23BA78B6C()
{
  sub_23BBDAEE8();
  result = sub_23BBD9DF8();
  qword_27E1BFD30 = result;
  return result;
}

uint64_t sub_23BA78BB0@<X0>(void *a1@<X8>)
{
  if (qword_27E197780 != -1)
  {
    swift_once();
  }

  *a1 = qword_27E1BFD30;
}

uint64_t sub_23BA78C1C()
{
  sub_23BA7B57C();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BA78C94@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_2();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BA78CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BA7BC5C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BA78D24()
{
  sub_23BA7B528();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BA78DA0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1;
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC30);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  v8 = (&v37 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC38);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  v12 = *(v1 + 8);
  v13 = *(type metadata accessor for InAppPurchaseIconFrameOverlay(0) + 24);
  v14 = *(type metadata accessor for InAppPurchaseIconFrameRoundedSquare(0) + 20);
  v15 = sub_23BBDAA88();
  OUTLINED_FUNCTION_4_1();
  v17 = *(v16 + 16);
  v17(v8 + v14, &v5[v13], v15);
  *v8 = v12;
  *(v8 + 8) = 0;
  v18 = sub_23BBDC318();
  v38 = v19;
  v39 = v18;
  v20 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC40) + 36);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC48) + 36)];
  v22 = type metadata accessor for InAppPurchaseIconFrameCenter(0);
  v17(v21 + *(v22 + 20), &v5[v13], v15);
  *v21 = v12;
  LOBYTE(v15) = sub_23BBDB398();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  v23 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC50) + 36));
  *v23 = v15;
  v23[1] = v12 * 4.0;
  *(v23 + 2) = v2;
  *(v23 + 3) = v3;
  *(v23 + 4) = v4;
  *(v23 + 40) = 0;
  v24 = sub_23BBDBD18();
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC58) + 36)) = v24;
  v25 = sub_23BBDBD38();
  LOBYTE(v13) = sub_23BBDB398();
  v26 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC60) + 36);
  *v26 = v25;
  v26[8] = v13;
  v27 = v38;
  *v20 = v39;
  *(v20 + 1) = v27;
  sub_23BBDC2B8();
  v43 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC68);
  sub_23BA7BD48();
  sub_23BA7BEE8();
  v28 = v40;
  sub_23BBDBC58();
  sub_23B979910(v8, &qword_27E19DC30);
  v29 = sub_23BBDC2D8();
  v31 = v30;
  sub_23BA79638(v5, v45);
  memcpy(v46, v45, 0x78uLL);
  v46[15] = v29;
  v46[16] = v31;
  memcpy((v28 + *(v10 + 44)), v46, 0x88uLL);
  memcpy(v47, v45, sizeof(v47));
  v48 = v29;
  v49 = v31;
  sub_23B99FCE0(v46, &v44, &qword_27E19DCB0);
  sub_23B979910(v47, &qword_27E19DCB0);
  if (*v5)
  {
    v32 = v12 + v12;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = sub_23BBDB398();
  sub_23BBD9B18();
  OUTLINED_FUNCTION_2_23();
  v34 = v42;
  sub_23BA7BFA0(v28, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCB8);
  v36 = v34 + *(result + 36);
  *v36 = v33;
  *(v36 + 8) = v32;
  *(v36 + 16) = v2;
  *(v36 + 24) = v3;
  *(v36 + 32) = v4;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_23BA79190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23BBDC318();
  v8 = v7;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC68) + 36);
  sub_23BA79238(a2, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCA8) + 36));
  *v10 = v6;
  v10[1] = v8;
  return sub_23B99FCE0(a1, a3, &qword_27E19DC30);
}

uint64_t sub_23BA79238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_23BBDA928();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseIconFrameRoundedSquare(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = *(a1 + 8);
  v15 = type metadata accessor for InAppPurchaseIconFrameOverlay(0);
  v16 = *(v15 + 24);
  v17 = *(v8 + 28);
  v18 = sub_23BBDAA88();
  (*(*(v18 - 8) + 16))(&v10[v17], a1 + v16, v18);
  *v10 = v14;
  v10[8] = 0;
  sub_23BBDBD08();
  v19 = sub_23BBDBD58();

  v20 = a1 + *(v15 + 32);
  v21 = *v20;
  if (*(v20 + 8) != 1)
  {

    sub_23BBDD5A8();
    v22 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v21, 0);
    (*(v4 + 8))(v6, v38);
  }

  sub_23BBD9C68();
  sub_23BA7C008(v10, v13);
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCC8) + 36)];
  v24 = v40;
  *v23 = v39;
  *(v23 + 1) = v24;
  *(v23 + 4) = v41;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCD0);
  *&v13[*(v25 + 52)] = v19;
  *&v13[*(v25 + 56)] = 256;
  v26 = sub_23BBDC318();
  v28 = v27;
  sub_23BA7C06C(v10, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCD8) + 36)];
  *v29 = v26;
  v29[1] = v28;
  v30 = sub_23BBDBD28();
  sub_23BA7C008(v13, a2);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCE0);
  *(a2 + *(v31 + 52)) = v30;
  *(a2 + *(v31 + 56)) = 256;
  v32 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCE8) + 36);
  sub_23B99FCE0(v13, v32, &qword_27E19DCC0);
  v33 = sub_23BBDC318();
  v35 = v34;
  sub_23B979910(v13, &qword_27E19DCC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DCF0);
  v37 = (v32 + *(result + 36));
  *v37 = v33;
  v37[1] = v35;
  return result;
}

void sub_23BA79638(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDA928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) <= 1.0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    _Q1 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    sub_23BBDC318();
    sub_23BBD9DE8();
    v32 = 0;
    v29 = v34;
    v30 = v36;
    v28 = v35;
    v8 = (a1 + *(type metadata accessor for InAppPurchaseIconFrameOverlay(0) + 28));
    v9 = *v8;
    if (*(v8 + 8) == 1)
    {
      v31 = *v8;
    }

    else
    {

      sub_23BBDD5A8();
      v17 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v9 = v31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AE40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BBE94D0;
    v19 = sub_23BBDB3A8();
    *(inited + 32) = v19;
    v20 = sub_23BBDB3E8();
    *(inited + 33) = v20;
    v21 = sub_23BBDB3D8();
    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v19)
    {
      v21 = sub_23BBDB3D8();
    }

    sub_23BBDB3D8();
    if (sub_23BBDB3D8() != v20)
    {
      v21 = sub_23BBDB3D8();
    }

    sub_23BBD9B18();
    *(&v11 + 1) = v22;
    *(&v12 + 1) = v23;
    v33 = 0;
    v10 = v21;
    __asm { FMOV            V1.2D, #1.0 }

    *(&_Q1 + 1) = 0;
    v14 = v29;
    v16 = v30;
    v15 = v28;
  }

  *a2 = _Q1;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 96) = v12;
  *(a2 + 112) = 0;
}

uint64_t sub_23BA79914()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA78C1C();
  *v0 = result;
  return result;
}

uint64_t sub_23BA79968()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA78D24();
  *v0 = result;
  return result;
}

double sub_23BA799BC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_23BBDB5C8();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidY(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetWidth(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetWidth(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetWidth(v17);
  sub_23BBDB5B8();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMidX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  sub_23BBDB5B8();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

double sub_23BA79B3C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_23BA799BC(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_23BA79B9C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B988098;
}

uint64_t sub_23BA79C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA7C5C0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BA79C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA7C5C0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BA79CD8(uint64_t a1)
{
  v2 = sub_23BA7C5C0();

  return MEMORY[0x282133738](a1, v2);
}

double sub_23BA79D24@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDAA88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDAD28();
  v7 = type metadata accessor for InAppPurchaseIconFrameCenter(0);
  (*(v4 + 16))(v6, v1 + *(v7 + 20), v3);
  sub_23BBDB598();
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v13;
  return result;
}

double sub_23BA79E94@<D0>(uint64_t a1@<X8>)
{
  sub_23BA79D24(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_23BA79EE0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B97DA84;
}

uint64_t sub_23BA79F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA7AD2C(qword_27E19DD68, type metadata accessor for InAppPurchaseIconFrameCenter);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BA79FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA7AD2C(qword_27E19DD68, type metadata accessor for InAppPurchaseIconFrameCenter);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BA7A07C(uint64_t a1)
{
  v2 = sub_23BA7AD2C(qword_27E19DD68, type metadata accessor for InAppPurchaseIconFrameCenter);

  return MEMORY[0x282133738](a1, v2);
}

double sub_23BA7A0F8@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDAA88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseIconFrameRoundedSquare(0);
  (*(v4 + 16))(v6, v1 + *(v7 + 20), v3);
  sub_23BBDB5A8();
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v13;
  return result;
}

void sub_23BA7A2A4()
{
  sub_23B9E6F2C(319, &qword_27E197EF0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23BBDAA88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23BA7A34C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDAA88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BA7A3EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23BBDAA88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 > v12)
  {
    v16 = ((v14 + (v13 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14) + *(*(v8 - 8) + 64);
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_10;
    }

    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v19 >= 2)
    {
LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_25;
      }

LABEL_17:
      v20 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v20 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      v25 = v12 + (v16 | v20);
      return (v25 + 1);
    }
  }

LABEL_25:
  if (v7 != v12)
  {
    v22 = a1 + v13;
    if (v11 > 0xFE)
    {
      v21 = ((v22 & 0xFFFFFFFFFFFFFFF8) + v14 + 24) & ~v14;
      goto LABEL_31;
    }

    v23 = *v22;
    if (v23 < 2)
    {
      return 0;
    }

    v25 = (v23 + 2147483646) & 0x7FFFFFFF;
    return (v25 + 1);
  }

  v21 = a1;
  v10 = v7;
  v15 = v5;
LABEL_31:

  return __swift_getEnumTagSinglePayload(v21, v10, v15);
}

void sub_23BA7A654(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_23BBDAA88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + (v15 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
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
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        return;
      case 2:
        *&a1[v17] = v21;
        return;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v17] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_48:
      __break(1u);
      JUMPOUT(0x23BA7A934);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v9 == v14)
      {
        v25 = a1;
        v26 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v27 = &a1[v15];
        if (v13 <= 0xFE)
        {
          *v27 = a2 + 1;
          return;
        }

        v25 = ((v27 & 0xFFFFFFFFFFFFFFF8) + v16 + 24) & ~v16;
        v26 = a2;
      }

      __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
      return;
  }
}

double sub_23BA7AA40@<D0>(uint64_t a1@<X8>)
{
  sub_23BA7A0F8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t (*sub_23BA7AA84(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23BBD9AA8();
  return sub_23B988098;
}

uint64_t sub_23BA7AAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA7AD2C(&qword_27E19DAF8, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_23BA7AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BA7AD2C(&qword_27E19DAF8, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_23BA7AC20(uint64_t a1)
{
  v2 = sub_23BA7AD2C(&qword_27E19DAF8, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_23BA7AD2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BA7AD74()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for InAppPurchaseIconFrame() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v4 = v2[13];
  sub_23BBDAA88();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v0 + v3 + v4);

  return swift_deallocObject();
}

uint64_t sub_23BA7AE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for InAppPurchaseIconFrame() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23BA77800(v6, v3, v4, a1);
}

unint64_t sub_23BA7AF28()
{
  result = qword_27E19DB18;
  if (!qword_27E19DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DB18);
  }

  return result;
}

unint64_t sub_23BA7AF7C()
{
  result = qword_27E19DB38;
  if (!qword_27E19DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DB38);
  }

  return result;
}

unint64_t sub_23BA7B010()
{
  result = qword_27E19DB60;
  if (!qword_27E19DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB58);
    sub_23BA7B0E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB98);
    sub_23BA7B224();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DB60);
  }

  return result;
}

unint64_t sub_23BA7B0E0()
{
  result = qword_27E19DB68;
  if (!qword_27E19DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB70);
    sub_23BA7B16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DB68);
  }

  return result;
}

unint64_t sub_23BA7B16C()
{
  result = qword_27E19DB78;
  if (!qword_27E19DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB80);
    sub_23B97B518(&qword_27E19DB88, &qword_27E19DB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DB78);
  }

  return result;
}

unint64_t sub_23BA7B224()
{
  result = qword_27E19DBA0;
  if (!qword_27E19DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB98);
    sub_23B97AD34();
    sub_23B97B518(&qword_27E1981A0, &qword_27E198188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DBA0);
  }

  return result;
}

unint64_t sub_23BA7B2EC()
{
  result = qword_27E19DBB0;
  if (!qword_27E19DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DBA8);
    sub_23BA7B370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DBB0);
  }

  return result;
}

unint64_t sub_23BA7B370()
{
  result = qword_27E19DBB8;
  if (!qword_27E19DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DBC0);
    sub_23BA7B3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DBB8);
  }

  return result;
}

unint64_t sub_23BA7B3FC()
{
  result = qword_27E19DBC8;
  if (!qword_27E19DBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DBD0);
    sub_23BA3A7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DBC8);
  }

  return result;
}

double sub_23BA7B488(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t sub_23BA7B4AC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA78C1C();
  *v0 = result;
  return result;
}

uint64_t sub_23BA7B4D8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BA78D24();
  *v0 = result;
  return result;
}

unint64_t sub_23BA7B528()
{
  result = qword_27E19DBF8;
  if (!qword_27E19DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DBF8);
  }

  return result;
}

unint64_t sub_23BA7B57C()
{
  result = qword_27E19DC00;
  if (!qword_27E19DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DC00);
  }

  return result;
}

_BYTE *_s27InAppPurchaseIconFrameStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA7B6BCLL);
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

uint64_t sub_23BA7B718(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_23BBDAA88();
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_23BA7B7B4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_23BBDAA88();
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_23BA7B830()
{
  sub_23BBDAA88();
  if (v0 <= 0x3F)
  {
    sub_23B9E6F2C(319, &qword_27E19DC18, MEMORY[0x277CDF6A8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23B9E6F2C(319, &qword_27E19DC20, &_s27InAppPurchaseIconFrameStyleON, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA7B92C()
{
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AC0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB00);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB08);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB10);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BA7AF28();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E198B70, &qword_27E198AC0);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19DB20, &qword_27E19DB00);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19DB28, &qword_27E19DB08);
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19DB30, &qword_27E19DB10);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDA078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DB40);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getWitnessTable();
  sub_23B97B518(&qword_27E19DB48, &qword_27E19DB40);
  return swift_getWitnessTable();
}

unint64_t sub_23BA7BC5C()
{
  result = qword_27E19DC28;
  if (!qword_27E19DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DC28);
  }

  return result;
}

char *sub_23BA7BCCC(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

unint64_t sub_23BA7BD48()
{
  result = qword_27E19DC70;
  if (!qword_27E19DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DC30);
    sub_23BA7BE00();
    sub_23B97B518(&qword_27E19DC88, &qword_27E19DC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DC70);
  }

  return result;
}

unint64_t sub_23BA7BE00()
{
  result = qword_27E19DC78;
  if (!qword_27E19DC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DC40);
    sub_23BA7AD2C(&qword_27E19DAF0, type metadata accessor for InAppPurchaseIconFrameRoundedSquare);
    sub_23B97B518(&qword_27E19DC80, &qword_27E19DC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DC78);
  }

  return result;
}

unint64_t sub_23BA7BEE8()
{
  result = qword_27E19DC98;
  if (!qword_27E19DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DC68);
    sub_23BA7BD48();
    sub_23B97B518(&qword_27E19DCA0, &qword_27E19DCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DC98);
  }

  return result;
}

uint64_t sub_23BA7BFA0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DC38);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BA7C008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseIconFrameRoundedSquare(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA7C06C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_23BBDAA88();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_23BBDAA88();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_23BA7C1B8()
{
  result = sub_23BBDAA88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23BA7C238()
{
  result = qword_27E19DD08;
  if (!qword_27E19DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DCB8);
    sub_23BA7C2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DD08);
  }

  return result;
}

unint64_t sub_23BA7C2C4()
{
  result = qword_27E19DD10;
  if (!qword_27E19DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DC68);
    sub_23BA7BD48();
    sub_23BA7BEE8();
    swift_getOpaqueTypeConformance2();
    sub_23B97B518(&qword_27E19DD18, &qword_27E19DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DD10);
  }

  return result;
}

unint64_t sub_23BA7C514()
{
  result = qword_27E19DD50;
  if (!qword_27E19DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DD50);
  }

  return result;
}

unint64_t sub_23BA7C56C()
{
  result = qword_27E19DD58;
  if (!qword_27E19DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DD58);
  }

  return result;
}

unint64_t sub_23BA7C5C0()
{
  result = qword_27E19DD60;
  if (!qword_27E19DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19DD60);
  }

  return result;
}

uint64_t sub_23BA7C678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - v5;
  v7 = _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for ProductViewButtonConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E68);
  v21 = a2 + *(v20 + 56);
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v66 = *(v20 + 60);
  *(a2 + v66) = 0;
  v68 = a1;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_23B979910(v15, &qword_27E198E60);
  }

  else
  {
    sub_23BA81828();
    sub_23B979510();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_23B979910(v6, &qword_27E1987C0);
      sub_23BA82768();
      sub_23BAE1C0C();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      sub_23BA81828();
      v65 = v16;
      sub_23BA82768();
      sub_23BAE1C0C();
      v63 = v31;
      v64 = v30;
      v33 = v32;
      v62 = v34;
      sub_23BA827C0(v11, _s11PriceStringOMa);
      sub_23BA82768();
      sub_23BAE1C0C();
      v56 = v36;
      v57 = v35;
      v38 = v37;
      v59 = v39;
      sub_23BA827C0(v11, _s11PriceStringOMa);
      v40 = v56;
      v42 = v63;
      v41 = v64;
      v43 = sub_23BBDB5E8();
      v60 = v44;
      v61 = v43;
      v46 = v45;
      v58 = v47;
      v48 = v38 & 1;
      v16 = v65;
      v49 = v40;
      v27 = v46;
      sub_23BA51C9C(v57, v49, v48);

      v50 = v33 & 1;
      v29 = v58;
      v51 = v41;
      v52 = v42;
      v25 = v60;
      v23 = v61;
      sub_23BA51C9C(v51, v52, v50);

      v11 = v67;
    }

    sub_23BA827C0(v11, _s11PriceStringOMa);
    *v21 = v23;
    *(v21 + 1) = v25;
    *(v21 + 2) = v27 & 1;
    *(v21 + 3) = v29;
    v53 = *&v19[*(v16 + 32)];
    sub_23BA827C0(v19, type metadata accessor for ProductViewButtonConfiguration);
    *(a2 + v66) = v53;
  }

  return sub_23B979688();
}

uint64_t sub_23BA7CB08()
{
  type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
  swift_dynamicCastMetatype();

  return swift_getKeyPath();
}

uint64_t sub_23BA7CB64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  v80 = a2;
  *&v81 = v4;
  sub_23BBDBFC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  v79 = a1;
  *&v82 = a1[3];
  v75 = a1[5];
  type metadata accessor for ProductViewButtonPlaceholder();
  sub_23BBDACE8();
  v5 = sub_23BBDBE28();
  OUTLINED_FUNCTION_3_2();
  v76 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2();
  v73 = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF8);
  OUTLINED_FUNCTION_22_8();
  v69 = v5;
  v9 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v77 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_2();
  v74 = v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAE8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_12_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFC8();
  v13 = sub_23BBDD648();
  OUTLINED_FUNCTION_11_7();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_21();
  v104 = WitnessTable;
  v105 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  v103 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v65 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  v101 = v65;
  v102 = sub_23B97B518(v15, &qword_27E19DDF8);
  OUTLINED_FUNCTION_0();
  v72 = v16;
  v63 = v9;
  v62 = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_18();
  v100 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  v61 = swift_getWitnessTable();
  v96 = v9;
  v97 = v13;
  v98 = v62;
  v99 = v61;
  v66 = MEMORY[0x277CDECE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_3_2();
  v67 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19AAB0);
  OUTLINED_FUNCTION_22_8();
  v60 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v70 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_2();
  v57 = v23;
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_22_8();
  v64 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v71 = v24;
  MEMORY[0x28223BE20](v25);
  v58 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v68 = &v57 - v28;
  *&v29 = v3;
  *(&v29 + 1) = v82;
  *&v30 = v81;
  *(&v30 + 1) = v75;
  v81 = v30;
  v82 = v29;
  v89 = v29;
  v90 = v30;
  v31 = v78;
  v91 = v78;
  v32 = v73;
  sub_23BBDBE18();
  sub_23BBDC308();
  v86 = v82;
  v87 = v81;
  v88 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE08);
  sub_23BA82214(&qword_27E19DE10, &qword_27E19DE08);
  v33 = v74;
  v34 = v69;
  sub_23BBDBB88();
  (*(v76 + 8))(v32, v34);
  v83 = v82;
  v84 = v81;
  v85 = v31;
  v35 = swift_checkMetadataState();
  v36 = v20;
  v37 = v62;
  v38 = v63;
  v39 = v61;
  sub_23BBDBA78();
  (*(v77 + 8))(v33, v38);
  v40 = *(v31 + *(v79 + 15));
  v96 = v38;
  v97 = v35;
  v98 = v37;
  v99 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v57;
  v43 = OpaqueTypeMetadata2;
  sub_23BB4A90C(v40);
  (*(v67 + 8))(v36, v43);
  sub_23BA7CB08();
  OUTLINED_FUNCTION_1_15();
  v45 = sub_23B97B518(v44, &qword_27E19AAB0);
  v94 = OpaqueTypeConformance2;
  v95 = v45;
  v46 = v60;
  v47 = swift_getWitnessTable();
  v48 = v58;
  sub_23B9968C4();

  (*(v70 + 8))(v42, v46);
  OUTLINED_FUNCTION_1_31();
  v51 = sub_23BA82720(v49, v50);
  v92 = v47;
  v93 = v51;
  v52 = v64;
  v53 = swift_getWitnessTable();
  v54 = v68;
  sub_23B9D2D88(v48, v52, v53);
  v55 = *(v71 + 8);
  v55(v48, v52);
  sub_23B9D2D88(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_23BA7D33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a4;
  v90 = a5;
  v82 = a1;
  v88 = a6;
  v8 = type metadata accessor for ProductViewButtonPlaceholder();
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v79 = (v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v80 = v67 - v11;
  sub_23BBDBFC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19DDF0);
  swift_getTupleTypeMetadata2();
  v12 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v67[1] = v12;
  v67[0] = WitnessTable;
  v14 = sub_23BBDC098();
  v70 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = v67 - v17;
  v74 = sub_23BBDA438();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = v67 - v20;
  v21 = sub_23BBDD648();
  v77 = *(v21 - 8);
  v78 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = v67 - v22;
  v76 = *(a3 - 8);
  MEMORY[0x28223BE20](v24);
  v75 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23BBDD648();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v67 - v28;
  v30 = *(a2 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v14;
  v83 = v8;
  v34 = sub_23BBDACE8();
  v85 = *(v34 - 8);
  v86 = v34;
  MEMORY[0x28223BE20](v34);
  v84 = v67 - v35;
  v93 = a2;
  v94 = a3;
  v95 = v89;
  v96 = v90;
  v36 = v82;
  v37 = type metadata accessor for ProductViewButton();
  (*(v27 + 16))(v29, v36 + *(v37 + 56), v26);
  if (__swift_getEnumTagSinglePayload(v29, 1, a2) == 1)
  {
    (*(v27 + 8))(v29, v26);
  }

  else
  {
    (*(v30 + 32))(v33, v29, a2);
    v38 = *(v37 + 52);
    v40 = v77;
    v39 = v78;
    (*(v77 + 16))(v23, v36 + v38, v78);
    if (__swift_getEnumTagSinglePayload(v23, 1, a3) == 1)
    {
      (*(v40 + 8))(v23, v39);
      (*(v30 + 8))(v33, a2);
    }

    else
    {
      v77 = v30;
      v78 = v33;
      v52 = v76;
      v53 = v75;
      (*(v76 + 32))(v75, v23, a3);
      v54 = v71;
      sub_23B9B75DC();
      v55 = v72;
      sub_23BBDA428();
      sub_23BA82720(&qword_27E198E48, MEMORY[0x277CDFB98]);
      v56 = v74;
      v57 = sub_23BBDD6A8();
      v58 = *(v73 + 8);
      v58(v55, v56);
      v59 = (v58)(v54, v56);
      v60 = v87;
      if ((v57 & 1) == 0)
      {
        MEMORY[0x28223BE20](v59);
        v67[-6] = a2;
        v67[-5] = a3;
        v61 = v90;
        v67[-4] = v89;
        v67[-3] = v61;
        v62 = v78;
        v67[-2] = v53;
        v67[-1] = v62;
        sub_23B9C2924();
        v63 = v69;
        sub_23BBDC088();
        v64 = swift_getWitnessTable();
        v65 = v68;
        sub_23B9D2D88(v63, v60, v64);
        v66 = *(v70 + 8);
        v66(v63, v60);
        sub_23B9D2D88(v65, v60, v64);
        swift_getWitnessTable();
        v41 = v84;
        sub_23BA82D64();
        v66(v63, v60);
        v66(v65, v60);
        (*(v76 + 8))(v75, a3);
        (*(v77 + 8))(v78, a2);
        goto LABEL_6;
      }

      (*(v52 + 8))(v53, a3);
      (*(v77 + 8))(v78, a2);
    }
  }

  v41 = v84;
  v42 = v79;
  sub_23BA81318(&qword_27E199730, v79);
  v43 = v83;
  v44 = swift_getWitnessTable();
  v45 = v80;
  sub_23B9D2D88(v42, v43, v44);
  v46 = *(v81 + 8);
  v46(v42, v43);
  sub_23B9D2D88(v45, v43, v44);
  swift_getWitnessTable();
  sub_23BA82E14();
  v46(v42, v43);
  v46(v45, v43);
LABEL_6:
  v47 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v91 = v47;
  v92 = v48;
  v49 = v86;
  v50 = swift_getWitnessTable();
  sub_23B9D2D88(v41, v49, v50);
  return (*(v85 + 8))(v41, v49);
}

uint64_t sub_23BA7DDBC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a2;
  v103 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v78 - v13;
  v83 = type metadata accessor for ProductViewText(0);
  MEMORY[0x28223BE20](v83);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE18);
  MEMORY[0x28223BE20](v81);
  v82 = &v78 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DE20);
  MEMORY[0x28223BE20](v102);
  v80 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = &v78 - v20;
  MEMORY[0x28223BE20](v21);
  v86 = &v78 - v22;
  v85 = sub_23BBD96B8();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v87 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  MEMORY[0x28223BE20](v24 - 8);
  v94 = &v78 - v25;
  v93 = *(a4 - 8);
  MEMORY[0x28223BE20](v26);
  v91 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ProductViewButtonConfiguration(0);
  MEMORY[0x28223BE20](v92);
  v90 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19DDF0);
  MEMORY[0x28223BE20](v99);
  v101 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v100 = &v78 - v31;
  v32 = sub_23BBDBFC8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v78 - v38;
  (*(a6 + 8))(a4, a6, v37);
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v107 = a6;
  v108 = v98;
  sub_23BBDBFA8();
  WitnessTable = swift_getWitnessTable();
  v98 = v39;
  v96 = WitnessTable;
  sub_23B9D2D88(v35, v32, WitnessTable);
  v97 = v33;
  v41 = *(v33 + 8);
  v95 = v32;
  v41(v35, v32);
  v42 = v94;
  (*(v93 + 16))(v91, a1, a4);
  v43 = v92;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
    v47 = &qword_27E198E60;
    v48 = v42;
    goto LABEL_5;
  }

  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  v44 = v90;
  sub_23BA81828();
  v45 = v86;
  sub_23B979510();
  v46 = v85;
  if (__swift_getEnumTagSinglePayload(v45, 1, v85) == 1)
  {
    sub_23BA827C0(v44, type metadata accessor for ProductViewButtonConfiguration);
    v47 = &qword_27E1987C8;
    v48 = v45;
LABEL_5:
    sub_23B979910(v48, v47);
    v49 = v100;
    v50 = v100;
    v51 = 1;
    goto LABEL_16;
  }

  v52 = v88;
  v53 = *(v88 + 32);
  v54 = v87;
  v53(v87, v45, v46);
  v55 = *(v52 + 16);
  v56 = v89;
  v55(v89, v54, v46);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v46);
  v57 = v78;
  sub_23B979510();
  if (__swift_getEnumTagSinglePayload(v57, 1, v46) == 1)
  {
    v58 = type metadata accessor for ProductViewText.Storage(0);
    v59 = v79;
    v60 = 1;
  }

  else
  {
    v61 = v79;
    v53(v79, v57, v46);
    v62 = type metadata accessor for ProductViewText.Storage(0);
    swift_storeEnumTagMultiPayload();
    v59 = v61;
    v60 = 0;
    v58 = v62;
  }

  __swift_storeEnumTagSinglePayload(v59, v60, 1, v58);
  v63 = v84;
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for LayoutMetrics(0);
  __swift_project_value_buffer(v64, &unk_27E1BF7F8);
  sub_23BA82768();
  type metadata accessor for PlaceholderLayouts(0);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v64, &unk_27E1BF810);
  sub_23BA82768();
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v64, &unk_27E1BF828);
  sub_23BA82768();
  sub_23B979910(v89, &qword_27E1987C8);
  (*(v88 + 8))(v87, v46);
  sub_23BA827C0(v90, type metadata accessor for ProductViewButtonConfiguration);
  v65 = v83;
  v66 = (v63 + *(v83 + 40));
  v67 = *(v83 + 52);
  *(v63 + v67) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v68 = v65[14];
  *(v63 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B979688();
  *(v63 + v65[6]) = 3;
  *(v63 + v65[7]) = 0;
  *(v63 + v65[8]) = 0;
  *v66 = 0;
  v66[1] = 0;
  v116 = 1;
  v115 = 0;
  v114 = 0;
  v113 = 1;
  v111 = 0;
  v109 = 0;
  v69 = v63 + v65[9];
  *v69 = 0;
  *(v69 + 8) = 1;
  *(v69 + 12) = *(v120 + 3);
  *(v69 + 9) = v120[0];
  *(v69 + 16) = 0x4059000000000000;
  *(v69 + 24) = 0;
  *(v69 + 28) = *(v119 + 3);
  *(v69 + 25) = v119[0];
  *(v69 + 32) = 0x4059000000000000;
  *(v69 + 40) = 0;
  v70 = v117;
  *(v69 + 44) = *(&v117 + 3);
  *(v69 + 41) = v70;
  *(v69 + 48) = 0;
  *(v69 + 56) = v113;
  v71 = *v112;
  *(v69 + 60) = *&v112[3];
  *(v69 + 57) = v71;
  *(v69 + 64) = 0x402C000000000000;
  *(v69 + 72) = v111;
  v72 = *v110;
  *(v69 + 76) = *&v110[3];
  *(v69 + 73) = v72;
  *(v69 + 80) = 0x402C000000000000;
  *(v69 + 88) = v109;
  *(v63 + v65[11]) = swift_getKeyPath();
  *(v63 + v65[12]) = swift_getKeyPath();
  v73 = v82;
  sub_23BA82768();
  *&v73[*(v81 + 36)] = 257;
  sub_23BA827C0(v63, type metadata accessor for ProductViewText);
  sub_23B979688();
  v49 = v100;
  sub_23B979688();
  v50 = v49;
  v51 = 0;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v50, v51, 1, v102);
  v74 = v98;
  v75 = v95;
  (*(v97 + 16))(v35, v98, v95);
  v120[0] = v35;
  v76 = v101;
  sub_23B979510();
  v120[1] = v76;
  v119[0] = v75;
  v119[1] = v99;
  v117 = v96;
  v118 = sub_23BA820E4();
  sub_23BB6739C(v120, 2, v119);
  sub_23B979910(v49, &qword_27E19DDF0);
  v41(v74, v75);
  sub_23B979910(v76, &qword_27E19DDF0);
  return (v41)(v35, v75);
}